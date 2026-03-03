@echo off
echo ========================================
echo   Portfolio - Push to GitHub
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

REM Initialize Git repository if not already initialized
if not exist .git (
    echo Initializing Git repository...
    git init
    echo.
)

REM Add all files
echo Adding all files to Git...
git add .
echo.

REM Commit changes
echo Committing changes...
git commit -m "Initial commit: Stunning portfolio website with React, TypeScript, and Tailwind CSS"
echo.

REM Check if remote exists
git remote get-url origin >nul 2>&1
if %errorlevel% neq 0 (
    echo Adding remote repository...
    git remote add origin https://github.com/vai15mendon/intern.git
    echo.
) else (
    echo Remote repository already exists.
    echo.
)

REM Rename branch to main
echo Setting branch to main...
git branch -M main
echo.

REM Push to GitHub
echo Pushing to GitHub...
echo.
echo You may be prompted for your GitHub credentials:
echo Username: vai15mendon
echo Password: [Use Personal Access Token]
echo.
echo To generate a token: https://github.com/settings/tokens
echo.

git push -u origin main

if %errorlevel% equ 0 (
    echo.
    echo ========================================
    echo   SUCCESS! Portfolio pushed to GitHub
    echo ========================================
    echo.
    echo Your repository: https://github.com/vai15mendon/intern
    echo.
    echo Next steps:
    echo 1. Visit your repository on GitHub
    echo 2. Deploy to Vercel or Netlify
    echo 3. Share your portfolio URL!
    echo.
) else (
    echo.
    echo ========================================
    echo   ERROR: Push failed
    echo ========================================
    echo.
    echo Common solutions:
    echo 1. Make sure the repository exists on GitHub
    echo 2. Use Personal Access Token instead of password
    echo 3. Check your internet connection
    echo.
    echo See DEPLOYMENT_GUIDE.md for detailed help
    echo.
)

pause