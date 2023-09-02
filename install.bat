@echo off

:: variables
set baseDir="C:\Users\ASUS"
set baseUrl="https://sebastiansava.github.io/VSCode_Windows"

:: install extensions
curl -o "%baseDir%\Desktop\extensions.ps1" "%baseUrl%/extensions.txt"
Powershell.exe - < "%baseDir%\Desktop\extensions.ps1"
del "%baseDir%\Desktop\extensions.ps1"

:: download 'settings' file
curl -o "%baseDir%\AppData\Roaming\Code\User\settings.json" --create-dirs "%baseUrl%/settings.json"

:: download 'keybindings' file
curl -o "%baseDir%\AppData\Roaming\Code\User\keybindings.json" --create-dirs "%baseUrl%/keyboard.json"

:: download 'snippets' file
curl -o "%baseDir%\AppData\Roaming\Code\User\snippets\global.code-snippets" --create-dirs "%baseUrl%/snippets.json"

:: exit
exit
