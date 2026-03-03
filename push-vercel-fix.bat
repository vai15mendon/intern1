@echo off
echo ========================================
echo   Pushing Vercel Fix to GitHub
echo ========================================
echo.

REM Check if Git is installed
git --version >nul 2>&1
if %errorlevel% neq 0 (
    echo ERROR: Git is not installed!
    echo.
    echo Please install Git from: https://git-scm.com/download/win
    echo.
    pause
    exit /b 1
)

echo Git is installed. Proceeding...
echo.

REM Add all files
echo Adding fixed files to Git...
git add index.html vite.config.ts vercel.json .gitattributes VERCEL_FIX.md
echo.

REM Commit changes
echo Committing Vercel deployment fix...
git commit -m "Fix: Update paths for Vercel deployment - resolve build error"
echo.

REM Push to GitHub
echo Pushing to GitHub...
git push origin main

if %errorlevel% equ 0 (
    echo.
    echo ========================================
    echo   SUCCESS! Fix pushed to GitHub
    echo ========================================
    echo.
    echo Vercel will automatically redeploy your site.
    echo.
    echo Check your Vercel dashboard in 2-3 minutes:
    echo https://vercel.com/dashboard
    echo.
    echo Your portfolio will be live soon!
    echo.
) else (
    echo.
    echo ========================================
    echo   ERROR: Push failed
    echo ========================================
    echo.
    echo If you haven't pushed to GitHub yet, run:
    echo push-to-github.bat
    echo.
    echo Then run this script again.
    echo.
)

pause