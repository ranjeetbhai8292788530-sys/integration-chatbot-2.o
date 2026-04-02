@echo off
echo ============================================
echo   Integration Solver - EXE Builder
echo ============================================
echo.

:: Check Python
python --version >nul 2>&1
if errorlevel 1 (
    echo [ERROR] Python nahi mila! python.org se install karo.
    pause
    exit /b
)

:: Install PyInstaller
echo [1/3] PyInstaller install kar raha hoon...
pip install pyinstaller --quiet

:: Build EXE
echo [2/3] EXE bana raha hoon... (1-2 min lagenge)
pyinstaller --onefile --noconsole --name "IntegrationSolver" integration_solver_v2.py

:: Done
echo.
echo [3/3] Done! 
echo.
echo Teri EXE file yahan milegi:
echo   dist\IntegrationSolver.exe
echo.
echo Double click karo aur run karo! No Python needed!
echo ============================================
pause
