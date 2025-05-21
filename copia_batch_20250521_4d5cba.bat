@echo off
setlocal enabledelayedexpansion

REM Título bonito
title 🧩 Exportador de Extensiones VS Code

echo ==========================================
echo     🚀 Exportador de Plugins de VS Code
echo ==========================================
echo.

REM Rutas comunes del ejecutable 'code.cmd'
set RUTAS_POSIBLES="%LocalAppData%\Programs\Microsoft VS Code\bin\code.cmd" "%ProgramFiles%\Microsoft VS Code\bin\code.cmd" "%UserProfile%\AppData\Local\Programs\Microsoft VS Code\bin\code.cmd"

REM Buscar el ejecutable
set CODECMD=""
for %%R in (%RUTAS_POSIBLES%) do (
    if exist %%~R (
        set CODECMD=%%~R
        goto encontrado
    )
)

:fallo
echo ❌ No se encontró VS Code ni el comando 'code.cmd'.
echo Asegúrate de que esté instalado desde la web oficial.
pause
exit /b

:encontrado
echo ✅ VS Code encontrado en: !CODECMD!
echo.

echo 📤 Exportando extensiones instaladas...
call "!CODECMD!" --list-extensions > extensiones_vscode.txt

if exist extensiones_vscode.txt (
    echo ✅ Extensiones exportadas en: extensiones_vscode.txt
    echo.
    start extensiones_vscode.txt
) else (
    echo ❌ Error al exportar extensiones.
)

pause
