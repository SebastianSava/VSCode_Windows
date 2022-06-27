@echo off

:: install extensions
cd "C:\Users\Asus\Desktop"
wget -O "extensions.ps1" "https://sava-sebastian.dev/VSCode/extensions.txt"
Powershell.exe - < extensions.ps1
del extensions.ps1

:: go to VSCode installation folder
cd "C:\Users\Asus\AppData\Roaming\Code\User"

:: download 'settings' file
wget -O "settings.json" "https://sava-sebastian.dev/VSCode/settings.json"

:: download 'keybindings' file
wget -O "keybindings.json" "https://sava-sebastian.dev/VSCode/keyboard.json"

:: go to 'snippets' folder
if not exist "snippets" mkdir "snippets"
cd "./snippets"

:: download 'snippets' file
wget -O "global.code-snippets" "https://sava-sebastian.dev/VSCode/snippets.json"

:: exit
exit
