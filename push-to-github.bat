@echo off
git init
git branch -M main
git add .gitignore index.html package.json vite.config.js README.md
git commit -m "Project setup"
git add src/data
git commit -m "Add product data"
git add src/components
git commit -m "Add ProductCard component"
git add .
git commit -m "Add callback, cart message, and styling"
git remote add origin https://github.com/Sauce2882/laboratory-3-.git
git push -u origin main
pause
