Set WshShell = CreateObject("WScript.Shell")
Directory = CurrentDirectory & "\start.bat"
WshShell.Run chr(34) & "C:\Users\suinan\Desktop\BFAR TEAM\setup-sys\start.bat" & Chr(34), 0
Set WshShell = Nothing