; Probe for ooRexx bug #1629 ("rexx.dll locked" when installing from a
; read-only share).
;
; On a machine with no previous ooRexx install, $RegVal_uninstallLocation is
; empty, and Components_Page_pre() calls CheckLockedFiles() anyway, which then
; asks LockedList::IsFileLocked about "\rexx.dll", "\rexx.exe", ... : paths
; relative to the root of the drive (or UNC share) of the current directory.
; This probe makes the same calls, with the same plugin, and logs the results
; and the error CreateFile gives for the same access the plugin asks for
; (GENERIC_READ|GENERIC_WRITE, no sharing, OPEN_EXISTING).

!include LogicLib.nsh

Name "probe1629"
OutFile "probe1629.exe"
RequestExecutionLevel admin
SilentInstall silent

Var out
Var RegVal_uninstallLocation   ; empty, as on a machine with no ooRexx

Function probe
  ; $0 = path
  System::Call 'kernel32::GetCurrentDirectory(i ${NSIS_MAX_STRLEN}, t .r4)'
  LockedList::IsFileLocked $0
  Pop $1
  System::Call 'kernel32::CreateFile(t r0, i 0xC0000000, i 0, p 0, i 3, i 0x80, p 0) p .r2 ?e'
  Pop $3
  ${If} $2 != -1
    System::Call 'kernel32::CloseHandle(p r2)'
    StrCpy $3 "0 (opened)"
  ${EndIf}
  FileWrite $out "  cwd=[$4] path=[$0] IsFileLocked=$1 CreateFile.LastError=$3$\r$\n"
FunctionEnd

Section
  FileOpen $out "$TEMP\probe1629.txt" a
  FileWrite $out "exedir=[$EXEDIR]$\r$\n"
  StrCpy $0 "$RegVal_uninstallLocation\rexx.dll"
  Call probe
  StrCpy $0 "$RegVal_uninstallLocation\rexx.exe"
  Call probe
  StrCpy $0 "$RegVal_uninstallLocation\ooDialog.dll"
  Call probe
  FileClose $out
SectionEnd
