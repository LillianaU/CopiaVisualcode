@echo off
setlocal enabledelayedexpansion

title 💾 Instalador de Plugins para VS Code

echo ==========================================
echo     💡 Instalador de Plugins de VS Code
echo ==========================================
echo.

REM Verificar si existe el archivo con las extensiones
if not exist extensiones_vscode.txt (
    echo ❌ No se encontró el archivo 'extensiones_vscode.txt'.
    echo Asegúrate de exportar primero las extensiones.
    pause
    exit /b
)

REM Rutas comunes del ejecutable 'code.cmd'
set RUTAS_POSIBLES="%LocalAppData%\Programs\Microsoft VS Code\bin\code.cmd" "%ProgramFiles%\Microsoft VS Code\bin\code.cmd" "%UserProfile%\AppData\Local\Programs\Microsoft VS Code\bin\code.cmd"

set CODECMD=""
for %%R in (%RUTAS_POSIBLES%) do (
    if exist %%~R (
        set CODECMD=%%~R
        goto encontrado
    )
)

:fallo
echo ❌ No se encontró el ejecutable 'code.cmd'.
echo Asegúrate de tener instalado Visual Studio Code desde la web.
pause
exit /b

:encontrado
echo ✅ VS Code encontrado en: !CODECMD!
echo.

REM Leer el archivo e instalar extensiones
echo 🔧 Instalando extensiones listadas en 'extensiones_vscode.txt'...
for /f "tokens=* delims=" %%E in (extensiones_vscode.txt) do (
    echo 📦 Instalando: %%E
    call "!CODECMD!" --install-extension %%E
)

echo.
echo ✅ ¡Todas las extensiones han sido procesadas!
pause
