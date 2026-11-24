# bench.ps1 BUILDS_ROOT OUT REPS
# Runs each workload with the clean and the patched build, alternating, and
# writes "name variant rep seconds peakMB lastline" lines to OUT.
param([string]$Root, [string]$Out, [int]$Reps = 3, [string]$Sizes = "normal")
$here = Split-Path -Parent $MyInvocation.MyCommand.Path
Set-Location $here
if ($Sizes -eq "small") {
  $work = @(
    "repro100k|repro.rex 100000", "repro200k|repro.rex 200000",
    "reprostr|repro-str.rex 100000", "reprowide50k|repro-wide.rex 50000",
    "parser3751|parse.rex big1.rex",
    "strings|strings.rex 4000000", "arrays|arrays.rex 500000", "objects|objects.rex 2000000",
    "churn|churn.rex 300000 2000", "churnbig|churn.rex 300000 20000", "large|large.rex 40000",
    "bigheap|bigheap.rex 300000 3000", "sort|sort.rex 500000")
} else {
  $work = @(
    "repro100k|repro.rex 100000", "repro200k|repro.rex 200000", "repro400k|repro.rex 400000",
    "reprostr|repro-str.rex 100000", "reprowide100k|repro-wide.rex 100000",
    "parser3751|parse.rex big1.rex", "parser7501|parse.rex big2.rex",
    "strings|strings.rex 4000000", "arrays|arrays.rex 1000000", "objects|objects.rex 2000000",
    "churn|churn.rex 300000 2000", "churnbig|churn.rex 300000 20000", "large|large.rex 40000",
    "bigheap|bigheap.rex 1000000 3000", "sort|sort.rex 1000000")
}
Set-Content $Out ""
foreach ($w in $work) {
  $name, $cmd = $w -split '\|', 2
  for ($r = 1; $r -le $Reps; $r++) {
    foreach ($v in "clean", "patched") {
      $bin = Join-Path $Root "build-$v\bin"
      $env:PATH = "$bin;" + $env:PATH_ORIG
      $sw = [Diagnostics.Stopwatch]::StartNew()
      $p = Start-Process -FilePath (Join-Path $bin "rexx.exe") -ArgumentList $cmd -WorkingDirectory $here -NoNewWindow -PassThru `
             -RedirectStandardOutput o.txt -RedirectStandardError e.txt
      $peak = 0
      while (-not $p.HasExited) {
        try { $p.Refresh(); if ($p.PeakWorkingSet64 -gt $peak) { $peak = $p.PeakWorkingSet64 } } catch {}
        if ($sw.Elapsed.TotalSeconds -gt 900) { $p.Kill(); break }
        Start-Sleep -Milliseconds 100
      }
      $p.WaitForExit()
      $sec = [Math]::Round($sw.Elapsed.TotalSeconds, 2)
      $last = ((Get-Content o.txt, e.txt) | Select-Object -Last 1) -replace '\s+', '_'
      $line = "$name $v $r $sec $([Math]::Round($peak / 1MB)) $last"
      Write-Output $line
      Add-Content $Out $line
    }
  }
}
