
@echo off
setlocal
set "SCRIPT_DIR=%~dp0"
pushd "%SCRIPT_DIR%"
if not exist ".venv\Scripts\pythonw.exe" (
    echo No virtual environment found. Run install.bat first.
    pause
    exit /b 1
)
start "" ".venv\Scripts\pythonw.exe" "mp3_downloader_gui.pyw"
popd
endlocal
