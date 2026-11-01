# Does the test suite's rexx.exe exit when its output goes to a pipe?
#
# The Windows VMs of the ooRexx Jenkins print the whole summary of
# testOORexx.rex and then hang until the job times out. Jenkins reads the
# output through a pipe; the windows.yml workflow redirects it to a file
# (and stdin from NUL), and never hangs. This runs the full suite through a
# pipe with three kinds of stdin and records, for each run, when the summary
# appears, when the last rexx.exe exits and when the pipe reaches end of file
# (a process that inherited the pipe keeps it open). If something is still
# running after the limit, the stacks of every thread of every rexx.exe are
# dumped with cdb.
#
# Usage: exit-hang.ps1 <test directory> <bin directory> <minutes per run>

param([string]$TestDir, [string]$BinDir, [int]$Minutes = 25)

$env:PATH = "$BinDir;$env:PATH"
$out = Join-Path $env:GITHUB_WORKSPACE "exit-hang"
New-Item -ItemType Directory -Force $out | Out-Null
$cdb = Get-ChildItem "C:\Program Files (x86)\Windows Kits\10\Debuggers\x64\cdb.exe" -ErrorAction SilentlyContinue | Select-Object -First 1

function Show-Processes([string]$label) {
    Write-Output "  processes ($label):"
    Get-CimInstance Win32_Process |
        Where-Object { $_.Name -match '^(rexx|rxapi|cmd|conhost|rxqueue|rxsubcom|rexxc)\.exe$' } |
        ForEach-Object { Write-Output ("    {0,6} parent {1,6} {2}: {3}" -f $_.ProcessId, $_.ParentProcessId, $_.Name, $_.CommandLine) }
}

function Run-Suite([string]$name, [string]$stdin) {
    Get-Process rexx, rxapi -ErrorAction SilentlyContinue | Stop-Process -Force -ErrorAction SilentlyContinue
    Start-Sleep -Seconds 2

    $command = "/c rexx testOORexx.rex -s 2>&1"
    if ($stdin -eq 'nul') { $command = "/c rexx testOORexx.rex -s < NUL 2>&1" }

    $psi = [System.Diagnostics.ProcessStartInfo]::new("cmd.exe", $command)
    $psi.WorkingDirectory = $TestDir
    $psi.UseShellExecute = $false
    $psi.RedirectStandardOutput = $true
    $psi.RedirectStandardInput = ($stdin -ne 'nul')

    $start = Get-Date
    $p = [System.Diagnostics.Process]::Start($psi)
    if ($stdin -eq 'closed') { $p.StandardInput.Close() }
    $read = $p.StandardOutput.ReadToEndAsync()

    $rexxSeen = $false; $rexxGone = $null; $cmdGone = $null; $eof = $null
    $limit = $start.AddMinutes($Minutes)
    while ((Get-Date) -lt $limit) {
        Start-Sleep -Seconds 5
        $now = Get-Date
        $rexx = @(Get-Process rexx -ErrorAction SilentlyContinue)
        if ($rexx.Count -gt 0) { $rexxSeen = $true }
        if ($rexxSeen -and $rexx.Count -eq 0 -and $rexxGone -eq $null) { $rexxGone = $now }
        if ($p.HasExited -and $cmdGone -eq $null) { $cmdGone = $now }
        if ($read.IsCompleted -and $eof -eq $null) { $eof = $now }
        if ($rexxGone -and $cmdGone -and $eof) { break }
    }

    function Secs($t) { if ($t -eq $null) { "never" } else { "{0:N0}s" -f ($t - $start).TotalSeconds } }
    Write-Output "== $name (stdin: $stdin)"
    Write-Output ("  last rexx.exe gone: {0}; cmd gone: {1}; pipe EOF: {2}" -f (Secs $rexxGone), (Secs $cmdGone), (Secs $eof))

    if (-not ($rexxGone -and $cmdGone -and $eof)) {
        Write-Output "  HANG: still waiting after $Minutes minutes"
        Show-Processes "hung"
        foreach ($r in @(Get-Process rexx -ErrorAction SilentlyContinue)) {
            Write-Output ("  rexx.exe {0}: {1} threads" -f $r.Id, $r.Threads.Count)
            if ($cdb) {
                $stacks = Join-Path $out "$name-stacks-$($r.Id).txt"
                & $cdb.FullName -p $r.Id -y "$BinDir" -c "~*k 30; qd" > $stacks 2>&1
                Write-Output "  stacks in $stacks"
            }
        }
        Get-Process rexx, rxapi -ErrorAction SilentlyContinue | Stop-Process -Force -ErrorAction SilentlyContinue
        if (-not $p.HasExited) { $p.Kill() }
        Start-Sleep -Seconds 2
    } else {
        Show-Processes "after"
    }

    if (-not $read.Wait(10000)) { Write-Output "  (output not complete)" ; return }
    $text = $read.Result
    Set-Content -Path (Join-Path $out "$name.log") -Value $text
    $text -split "`n" | Where-Object { $_ -match '^(Tests ran|Failures|Errors|Total time)' } | Select-Object -Unique | ForEach-Object { Write-Output "  $($_.Trim())" }
}

Run-Suite "pipe-stdin-nul" "nul"
Run-Suite "pipe-stdin-open" "open"
Run-Suite "pipe-stdin-closed" "closed"
