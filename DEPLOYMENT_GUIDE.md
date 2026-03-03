# 🚀 Deployment Guide - Push to GitHub

## Prerequisites

You need to install Git first. Here's how:

### Install Git on Windows

1. **Download Git**
   - Visit: https://git-scm.com/download/win
   - Download the latest version for Windows
   - Run the installer and follow the setup wizard
   - Use default settings (recommended)

2. **Verify Installation**
   ```bash
   git --version
   ```

## 📤 Push to GitHub Repository

Once Git is installed, follow these steps:

### Method 1: Using Command Line (Recommended)

1. **Open Terminal/Command Prompt** in your project folder
   ```bash
   cd C:\Users\ADMIN\Downloads\intteeerrrrrnnnnn
   ```

2. **Initialize Git Repository**
   ```bash
   git init
   ```

3. **Add All Files**
   ```bash
   git add .
   ```

4. **Commit Changes**
   ```bash
   git commit -m "Initial commit: Stunning portfolio website with animations"
   ```

5. **Add Remote Repository**
   ```bash
   git remote add origin https://github.com/vai15mendon/intern.git
   ```

6. **Push to GitHub**
   ```bash
   git branch -M main
   git push -u origin main
   ```

### Method 2: Using the Provided Batch Script

1. **Install Git** (see above)

2. **Run the batch script**
   - Double-click `push-to-github.bat`
   - Or run in terminal: `.\push-to-github.bat`

3. **Enter your GitHub credentials** when prompted

### Method 3: Using GitHub Desktop (Easiest)

1. **Download GitHub Desktop**
   - Visit: https://desktop.github.com/
   - Install and sign in with your GitHub account

2. **Add Repository**
   - File → Add Local Repository
   - Choose your project folder
   - Click "Create Repository"

3. **Publish to GitHub**
   - Click "Publish repository"
   - Repository name: `intern`
   - Click "Publish Repository"

## 🔐 Authentication

If you're prompted for credentials:

### Using Personal Access Token (Recommended)

1. **Generate Token**
   - Go to: https://github.com/settings/tokens
   - Click "Generate new token (classic)"
   - Select scopes: `repo` (full control)
   - Generate and copy the token

2. **Use Token as Password**
   - Username: `vai15mendon`
   - Password: `[your-personal-access-token]`

### Using SSH (Alternative)

1. **Generate SSH Key**
   ```bash
   ssh-keygen -t ed25519 -C "vaishnavimendonj5@gmail.com"
   ```

2. **Add SSH Key to GitHub**
   - Copy the public key: `cat ~/.ssh/id_ed25519.pub`
   - Go to: https://github.com/settings/keys
   - Click "New SSH key" and paste

3. **Change Remote URL**
   ```bash
   git remote set-url origin git@github.com:vai15mendon/intern.git
   ```

## 📝 Common Issues & Solutions

### Issue: "Repository not found"
**Solution**: Make sure the repository exists on GitHub
- Visit: https://github.com/vai15mendon/intern
- If it doesn't exist, create it first on GitHub

### Issue: "Permission denied"
**Solution**: Use Personal Access Token instead of password

### Issue: "Remote already exists"
**Solution**: Remove and re-add remote
```bash
git remote remove origin
git remote add origin https://github.com/vai15mendon/intern.git
```

### Issue: "Branch main doesn't exist"
**Solution**: Create and switch to main branch
```bash
git checkout -b main
```

## 🌐 Deploy to Vercel (Bonus)

After pushing to GitHub, deploy your portfolio:

1. **Visit Vercel**
   - Go to: https://vercel.com
   - Sign in with GitHub

2. **Import Repository**
   - Click "New Project"
   - Select `vai15mendon/intern`
   - Click "Import"

3. **Configure & Deploy**
   - Framework Preset: Vite
   - Build Command: `npm run build`
   - Output Directory: `dist`
   - Click "Deploy"

Your portfolio will be live at: `https://intern-[random].vercel.app`

## 📱 Deploy to Netlify (Alternative)

1. **Visit Netlify**
   - Go to: https://netlify.com
   - Sign in with GitHub

2. **Import Repository**
   - Click "Add new site" → "Import an existing project"
   - Select `vai15mendon/intern`

3. **Configure & Deploy**
   - Build command: `npm run build`
   - Publish directory: `dist`
   - Click "Deploy site"

## 🎉 Success!

Once deployed, your stunning portfolio will be live and accessible worldwide!

### Next Steps:
1. Share your portfolio URL
2. Add it to your resume
3. Link it on LinkedIn
4. Share on social media

---

**Need Help?** 
- GitHub Docs: https://docs.github.com
- Git Tutorial: https://git-scm.com/docs/gittutorial
- Contact: vaishnavimendonj5@gmail.com