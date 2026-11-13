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
function Find-Button($procId, $label) {
  foreach ($w in Windows $procId) {
    $c = New-Object System.Windows.Automation.PropertyCondition($AE::ControlTypeProperty,
           [System.Windows.Automation.ControlType]::Button)
    foreach ($b in $w.FindAll($TS::Descendants, $c)) {
      if (($b.Current.Name -replace '&', '') -eq $label -and $b.Current.IsEnabled) { return $b }
    }
  }
  $null
}
function Press($procId, $label, $secs = 60) {
  $t = [DateTime]::Now.AddSeconds($secs)
  while ([DateTime]::Now -lt $t) {
    $b = Find-Button $procId $label
    if ($b) {
      $b.GetCurrentPattern([System.Windows.Automation.InvokePattern]::Pattern).Invoke()
      "[$Tag] pressed '$label'"; Start-Sleep -Milliseconds 800; return $true
    }
    Start-Sleep -Milliseconds 300
  }
  "[$Tag] no '$label' button after $secs s"; $false
}
function AllText($procId) { (Windows $procId | ForEach-Object { Texts $_ }) -join ' | ' }

"[$Tag] $Exe from $WorkDir"
$p = Start-Process -FilePath $Exe -WorkingDirectory $WorkDir -PassThru
$procId = $p.Id
Press $procId 'Next >' 90 | Out-Host
Press $procId 'I Agree' | Out-Host

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
  Press $procId 'Cancel' 10 | Out-Host
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
