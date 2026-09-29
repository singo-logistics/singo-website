@echo off
cd /d "%~dp0"
echo ========================================
echo  Singo 网站部署到 GitHub
echo ========================================
echo.
echo [1/6] 删除 git 锁文件...
if exist .git\index.lock del /f .git\index.lock
echo [2/6] 添加文件...
git add .
echo [3/6] 提交...
git commit -m "Initial commit: Singo website"
echo [4/6] 设置分支为 main...
git branch -M main
echo [5/6] 配置远程仓库...
git remote remove origin 2>nul
git remote add origin https://github.com/singo-logistics/singo-website.git
echo [6/6] 推送到 GitHub...
echo.
echo 提示：用户名输入 singo-logistics，密码粘贴你的 token
echo.
git push -u origin main
echo.
echo ========================================
echo  执行完毕，请查看上方输出
echo ========================================
pause
