
@echo off
setlocal
REM Create virtual environment and install requirements, then launch the GUI.

REM Resolve script directory
set "SCRIPT_DIR=%~dp0"
pushd "%SCRIPT_DIR%"

REM Try Python via `py` launcher first, then `python`
where py >nul 2>nul
if %ERRORLEVEL%==0 (
    set "PY=py"
) else (
    where python >nul 2>nul
    if %ERRORLEVEL%==0 (
        set "PY=python"
    ) else (
        echo.
        echo ERROR: Python 3 is not installed or not on PATH.
        echo Please install Python from https://www.python.org/downloads/ and rerun install.bat
        pause
        exit /b 1
    )
)

echo Creating virtual environment...
%PY% -m venv .venv
if %ERRORLEVEL% NEQ 0 (
    echo ERROR: Failed to create virtual environment.
    pause
    exit /b 1
)

echo Upgrading pip...
".venv\Scripts\python.exe" -m pip install --upgrade pip

echo Installing requirements...
".venv\Scripts\python.exe" -m pip install -r requirements.txt
if %ERRORLEVEL% NEQ 0 (
    echo ERROR: Failed to install dependencies.
    pause
    exit /b 1
)

echo Launching MP3 Downloader GUI...
start "" ".venv\Scripts\pythonw.exe" "mp3_downloader_gui.pyw"

echo Done. You can run the app later via run_gui.bat
popd
endlocal
