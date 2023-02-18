RMDIR "%appdata%\.minecraft\mods" /S /Q
RMDIR "%appdata%\.minecraft\config" /S /Q
RMDIR "%appdata%\.minecraft\scripts" /S /Q
xcopy ".\*" "%appdata%\.minecraft\" /S /Q