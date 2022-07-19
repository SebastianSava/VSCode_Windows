@echo off

:: install extensions
cd "C:\Users\ASUS\Desktop"
wget -O "extensions.ps1" "https://sebastiansava.github.io/VSCode_Windows/extensions.txt"
Powershell.exe - < extensions.ps1
del extensions.ps1

:: go to VSCode installation folder
cd "C:\Users\ASUS\AppData\Roaming\Code\User"

:: download 'settings' file
wget -O "settings.json" "https://sebastiansava.github.io/VSCode_Windows/settings.json"

:: download 'keybindings' file
wget -O "keybindings.json" "https://sebastiansava.github.io/VSCode_Windows/keyboard.json"

:: go to 'snippets' folder
if not exist "snippets" mkdir "snippets"
cd "./snippets"

:: download 'snippets' file
wget -O "global.code-snippets" "https://sebastiansava.github.io/VSCode_Windows/snippets.json"

:: exit
exit
