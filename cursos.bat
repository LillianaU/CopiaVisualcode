@echo off
setlocal enabledelayedexpansion

title 🚀 Instalador de Extensiones para Cursor AI

echo ==============================================
echo        🔧 Instalador de Plugins en Cursor
echo ==============================================
echo.

REM RUTA FIJA A cursor.cmd (ajustar si lo tienes en otro lugar)
set CURSORCMD="C:\Users\LILLYU\AppData\Local\Programs\cursor\cursor.exe"

REM Verificar si cursor.cmd existe en la ruta definida
if not exist %CURSORCMD% (
    echo ❌ No se encontró Cursor en la ruta esperada:
    echo %CURSORCMD%
    echo Verifica que Cursor esté instalado correctamente.
    pause
    exit /b
)

REM LISTA DE EXTENSIONES
set EXT[0]=aaron-bond.better-comments
set EXT[1]=almenon.arepl
set EXT[2]=amiralizadeh9480.laravel-extra-intellisense
set EXT[3]=anbuselvanrocky.bootstrap5-vscode
set EXT[4]=askia.askia-qexml-generator-extension
set EXT[5]=astore-team.astore
set EXT[6]=austenc.tailwind-docs
set EXT[7]=blackboxapp.blackbox
set EXT[8]=blackboxapp.blackboxagent
set EXT[9]=bmewburn.vscode-intelephense-client
set EXT[10]=bourhaouta.tailwindshades
set EXT[11]=bradlc.vscode-tailwindcss
set EXT[12]=celianriboulet.webvalidator
set EXT[13]=codingyu.laravel-goto-view
set EXT[14]=damms005.devdb
set EXT[15]=dbaeumer.vscode-eslint
set EXT[16]=devsense.composer-php-vscode
set EXT[17]=devsense.intelli-php-vscode
set EXT[18]=devsense.phptools-vscode
set EXT[19]=devsense.profiler-php-vscode
set EXT[20]=dsznajder.es7-react-js-snippets
set EXT[21]=editorconfig.editorconfig
set EXT[22]=esbenp.prettier-vscode
set EXT[23]=formulahendry.auto-close-tag
set EXT[24]=formulahendry.vscode-mysql
set EXT[25]=foxundermoon.shell-format
set EXT[26]=github.copilot
set EXT[27]=github.copilot-chat
set EXT[28]=glitchbl.laravel-create-view
set EXT[29]=hediet.vscode-drawio
set EXT[30]=hollowtree.vue-snippets
set EXT[31]=ihunte.laravel-blade-wrapper
set EXT[32]=isacdav.icono-emojicode
set EXT[33]=jakebathman.mysql-syntax
set EXT[34]=jebbs.plantuml
set EXT[35]=jock.svg
set EXT[36]=jzmstrjp.color-the-tag-name
set EXT[37]=kevinrose.vsc-python-indent
set EXT[38]=kisstkondoros.vscode-gutter-preview
set EXT[39]=laravel.vscode-laravel
set EXT[40]=loczek.next-js-ts-snippets
set EXT[41]=mads-hartmann.bash-ide-vscode
set EXT[42]=mikestead.dotenv
set EXT[43]=ms-azure-load-testing.microsoft-testing
set EXT[44]=ms-azuretools.azure-dev
set EXT[45]=ms-azuretools.vscode-azure-github-copilot
set EXT[46]=ms-azuretools.vscode-azureappservice
set EXT[47]=ms-azuretools.vscode-azurecontainerapps
set EXT[48]=ms-azuretools.vscode-azurefunctions
set EXT[49]=ms-azuretools.vscode-azureresourcegroups
set EXT[50]=ms-azuretools.vscode-azurestaticwebapps
set EXT[51]=ms-azuretools.vscode-azurestorage
set EXT[52]=ms-azuretools.vscode-azurevirtualmachines
set EXT[53]=ms-azuretools.vscode-cosmosdb
set EXT[54]=ms-ceintl.vscode-language-pack-es
set EXT[55]=ms-dotnettools.vscode-dotnet-runtime
set EXT[56]=ms-iot.vscode-ros
set EXT[57]=ms-python.debugpy
set EXT[58]=ms-python.python
set EXT[59]=ms-python.vscode-pylance
set EXT[60]=ms-vscode.cmake-tools
set EXT[61]=ms-vscode.cpptools
set EXT[62]=ms-vscode.cpptools-extension-pack
set EXT[63]=ms-vscode.cpptools-themes
set EXT[64]=ms-vscode.js-debug-nightly
set EXT[65]=ms-vscode.vscode-node-azure-pack
set EXT[66]=naoray.laravel-goto-components
set EXT[67]=onecentlin.laravel-blade
set EXT[68]=onecentlin.laravel-extension-pack
set EXT[69]=onecentlin.laravel5-snippets
set EXT[70]=pgl.laravel-jump-controller
set EXT[71]=pkief.material-icon-theme
set EXT[72]=rangav.vscode-thunder-client
set EXT[73]=ritwickdey.liveserver
set EXT[74]=rvest.vs-code-prettier-eslint
set EXT[75]=ryannaddy.laravel-artisan
set EXT[76]=sdras.vue-vscode-snippets
set EXT[77]=shufo.vscode-blade-formatter
set EXT[78]=tabnine.tabnine-vscode
set EXT[79]=teamsdevapp.vscode-ai-foundry
set EXT[80]=timonwong.shellcheck
set EXT[81]=tomoki1207.pdf
set EXT[82]=usernamehw.errorlens
set EXT[83]=vue.volar
set EXT[84]=wmorellato.babel
set EXT[85]=xabikos.javascriptsnippets
set EXT[86]=xdebug.php-debug
set EXT[87]=youssef.viow
set EXT[88]=zarifprogrammer.tailwind-snippets

REM Iterar sobre todas las extensiones y ejecutar instalación
for /L %%i in (0,1,88) do (
    set NOMBRE=!EXT[%%i]!
    echo 🔧 Instalando: !NOMBRE!
    call %CURSORCMD% --install-extension !NOMBRE!
)

echo.
echo ✅ Todas las extensiones han sido instaladas correctamente en Cursor.
pause

