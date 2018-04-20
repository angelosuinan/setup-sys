Set WshShell = CreateObject("WScript.Shell")
Directory = CurrentDirectory & "\start.bat"
WshShell.Run chr(34) & "E:\BFAR TEAM DATABASE\setup-sys\server.bat" & Chr(34), 0
Set WshShell = Nothing