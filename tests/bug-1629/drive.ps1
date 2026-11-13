# Drives an ooRexx NSIS installer through Welcome and License, from a given
# folder, and reports what comes next: the "is locked" warning of bug #1629
# or the Components page. Then it answers Cancel to the warning, if any,
# reports whether the installer quit, and kills what is left.
param([string]$Exe, [string]$WorkDir, [string]$Tag, [string]$ShotDir)

Add-Type -AssemblyName UIAutomationClient, UIAutomationTypes, System.Windows.Forms, System.Drawing
$AE = [System.Windows.Automation.AutomationElement]
$TS = [System.Windows.Automation.TreeScope]

function Shot($name) {
  $b = [System.Windows.Forms.Screen]::PrimaryScreen.Bounds
  $bmp = New-Object System.Drawing.Bitmap $b.Width, $b.Height
  $g = [System.Drawing.Graphics]::FromImage($bmp)
  $g.CopyFromScreen($b.Location, [System.Drawing.Point]::Empty, $b.Size)
  $bmp.Save((Join-Path $ShotDir "$Tag-$name.png"))
  $g.Dispose(); $bmp.Dispose()
}
function Windows($procId) {
  $c = New-Object System.Windows.Automation.PropertyCondition($AE::ProcessIdProperty, $procId)
  $AE::RootElement.FindAll($TS::Children, $c)
}
function Texts($w) {
  $w.FindAll($TS::Descendants, [System.Windows.Automation.Condition]::TrueCondition) |
    ForEach-Object { $_.Current.Name } | Where-Object { $_ }
}
Add-Type -Namespace W -Name U -MemberDefinition @'
[DllImport("user32.dll")] public static extern bool PostMessage(IntPtr h, uint m, IntPtr w, IntPtr l);
'@
# NSIS: the Next / I Agree button is control 1, Cancel is 2 (also in a
# MB_RETRYCANCEL message box)
function Post($w, $id) {
  [void][W.U]::PostMessage([IntPtr]$w.Current.NativeWindowHandle, 0x111, [IntPtr]$id, [IntPtr]::Zero)
}
function Wizard($procId) {
  Windows $procId | Where-Object { (Texts $_) -match 'Setup|License|Welcome|Components' } | Select-Object -First 1
}
function Press($procId, $what, $page, $secs = 60) {
  $t = [DateTime]::Now.AddSeconds($secs)
  while ([DateTime]::Now -lt $t) {
    $w = Wizard $procId
    if ($w -and ((Texts $w) -join ' ') -match $page) {
      Post $w 1
      Write-Output "[$Tag] pressed $what on the '$page' page"
      Start-Sleep -Seconds 2; return
    }
    Start-Sleep -Milliseconds 500
  }
  Write-Output "[$Tag] no '$page' page after $secs s"
}
function AllText($procId) { (Windows $procId | ForEach-Object { Texts $_ }) -join ' | ' }

"[$Tag] $Exe from $WorkDir"
$p = Start-Process -FilePath $Exe -WorkingDirectory $WorkDir -PassThru
$procId = $p.Id
Press $procId 'Next' 'Welcome to' 90
Press $procId 'I Agree' 'License Agreement'

# what follows the License page
$verdict = 'none'
$t = [DateTime]::Now.AddSeconds(45)
while ([DateTime]::Now -lt $t -and $verdict -eq 'none') {
  $all = AllText $procId
  if ($all -match 'is locked') { $verdict = 'LOCKED-WARNING' }
  elseif ($all -match 'Choose Components') { $verdict = 'COMPONENTS-PAGE' }
  else { Start-Sleep -Milliseconds 500 }
}
Shot 'after-license'
"[$Tag] RESULT after License: $verdict"
"[$Tag] text: $(AllText $procId)"

if ($verdict -eq 'LOCKED-WARNING') {
  $mb = Windows $procId | Where-Object { ((Texts $_) -join ' ') -match 'is locked' } | Select-Object -First 1
  Post $mb 2
  Write-Output "[$Tag] pressed Cancel on the warning"
  Start-Sleep -Seconds 3
  $p.Refresh()
  if ($p.HasExited) { "[$Tag] after Cancel on the warning: installer QUIT" }
  else {
    $all = AllText $procId
    $where = if ($all -match 'Choose Components') { 'Components page' } else { 'other' }
    "[$Tag] after Cancel on the warning: installer GOES ON ($where)"
    Shot 'after-cancel'
  }
}
if (-not $p.HasExited) { Stop-Process -Id $procId -Force }
