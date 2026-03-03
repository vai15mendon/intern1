# Portfolio - Push to GitHub (PowerShell Script)

Write-Host "========================================" -ForegroundColor Cyan
Write-Host "   Portfolio - Push to GitHub" -ForegroundColor Cyan
Write-Host "========================================" -ForegroundColor Cyan
Write-Host ""

# Check if Git is installed
try {
    $gitVersion = git --version 2>&1
    Write-Host "✓ Git is installed: $gitVersion" -ForegroundColor Green
    Write-Host ""
} catch {
    Write-Host "✗ ERROR: Git is not installed!" -ForegroundColor Red
    Write-Host ""
    Write-Host "Please install Git from: https://git-scm.com/download/win" -ForegroundColor Yellow
    Write-Host ""
    Read-Host "Press Enter to exit"
    exit 1
}

# Initialize Git repository if not already initialized
if (-not (Test-Path ".git")) {
    Write-Host "Initializing Git repository..." -ForegroundColor Yellow
    git init
    Write-Host ""
}

# Add all files
Write-Host "Adding all files to Git..." -ForegroundColor Yellow
git add .
Write-Host ""

# Commit changes
Write-Host "Committing changes..." -ForegroundColor Yellow
$commitMessage = "Initial commit: Stunning portfolio website with React, TypeScript, and Tailwind CSS"
git commit -m $commitMessage
Write-Host ""

# Check if remote exists
$remoteExists = git remote get-url origin 2>&1
if ($LASTEXITCODE -ne 0) {
    Write-Host "Adding remote repository..." -ForegroundColor Yellow
    git remote add origin https://github.com/vai15mendon/intern.git
    Write-Host ""
} else {
    Write-Host "✓ Remote repository already exists" -ForegroundColor Green
    Write-Host ""
}

# Rename branch to main
Write-Host "Setting branch to main..." -ForegroundColor Yellow
git branch -M main
Write-Host ""

# Push to GitHub
Write-Host "Pushing to GitHub..." -ForegroundColor Yellow
Write-Host ""
Write-Host "You may be prompted for your GitHub credentials:" -ForegroundColor Cyan
Write-Host "Username: vai15mendon" -ForegroundColor White
Write-Host "Password: [Use Personal Access Token]" -ForegroundColor White
Write-Host ""
Write-Host "To generate a token: https://github.com/settings/tokens" -ForegroundColor Yellow
Write-Host ""

git push -u origin main

if ($LASTEXITCODE -eq 0) {
    Write-Host ""
    Write-Host "========================================" -ForegroundColor Green
    Write-Host "   SUCCESS! Portfolio pushed to GitHub" -ForegroundColor Green
    Write-Host "========================================" -ForegroundColor Green
    Write-Host ""
    Write-Host "Your repository: https://github.com/vai15mendon/intern" -ForegroundColor Cyan
    Write-Host ""
    Write-Host "Next steps:" -ForegroundColor Yellow
    Write-Host "1. Visit your repository on GitHub" -ForegroundColor White
    Write-Host "2. Deploy to Vercel or Netlify" -ForegroundColor White
    Write-Host "3. Share your portfolio URL!" -ForegroundColor White
    Write-Host ""
} else {
    Write-Host ""
    Write-Host "========================================" -ForegroundColor Red
    Write-Host "   ERROR: Push failed" -ForegroundColor Red
    Write-Host "========================================" -ForegroundColor Red
    Write-Host ""
    Write-Host "Common solutions:" -ForegroundColor Yellow
    Write-Host "1. Make sure the repository exists on GitHub" -ForegroundColor White
    Write-Host "2. Use Personal Access Token instead of password" -ForegroundColor White
    Write-Host "3. Check your internet connection" -ForegroundColor White
    Write-Host ""
    Write-Host "See DEPLOYMENT_GUIDE.md for detailed help" -ForegroundColor Cyan
    Write-Host ""
}

Read-Host "Press Enter to exit"