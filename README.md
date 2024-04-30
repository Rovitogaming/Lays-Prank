Funny prank "virus" that I made for my cousin.
It's an inside joke where once we accidentally ruined a TV by burning a google image page of just lays chips into it.
Since then me and my other cousin have been taunting him with it and as a joke I created this program that will pretend to take over your computer to burn lays into your monitor

**Requirements:**
- Google Chrome
- Windows 10
- Powershell execution policy needs to be remotesigned

**What it does:**
- Some popup dialog boxes explaining to the user whats happening "your computer's been infected", "Lays will be burned into your monitor", "Just let it happen"
- It will then open chrome in fullscreen on a google image search of lays chips
- *IF* you close chrome, the program will disable any connected computer mice and relaunch chrome
- *IF* you close chrome a second time, the program will fake a bluescreen using a hta application (This is not a real bluescreen, just a fullscreen application)

**How to return your computer back to normal:**
- Close the fake BSOD application by hitting the windows key and hitting the close button on the window
- Open task manager and find the process "Microsoft Windows Based Script Host" (RGB Cube Icon) (WScript.exe) and end the task, OR Simply restart your computer to end the task but thats kinda overkill
- Now you can close chrome with nothing happening
- Re-enable your mouse via device manager, you can plug in a second mouse and that will work, or just use the keyboard, alternatively you can run the powershell command to enable the mouse found in UsefulCommands.txt
- If you want you can delete the Lays.vbs file and delete the C:\Lays folder, but this is not super nesessary

**IMPORTANT NOTICE:**
This software is completely harmless other than the annoyance of disabling your mouse, even though it can be easily re-enabled
If you follow the above instructions, there should be no lasting damage or traces on your system
Your antivirus may be triggered by this software since it's not typical to run powershell/visual basic scripts on your machine. I just used these languages since it's what I'm familiar with.
If you are not comfortable running this, just don't lol, or read the entire source code and realise it's not harmful!
With any code you run on your machine, there is the possibity for errors/damage so obviously, I'm not responsible however, that shouldn't be a problem since this software was created without any malicious intent, and purely for fun/education/entertainment reasons!
