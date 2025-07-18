@echo off
chcp 65001 >nul
cd /d "%~dp0"

echo ========================================
echo           自动更新笔记脚本
echo ========================================

REM 获取当前日期和时间
for /f "tokens=1-4 delims=/ " %%a in ('date /t') do (
    set yyyy=%%d
    set mm=%%b
    set dd=%%c
    set weekday=%%a
)

for /f "tokens=1-2 delims=: " %%a in ('time /t') do (
    set hh=%%a
    set mm_time=%%b
)

REM 获取完整时间戳
for /f "tokens=*" %%a in ('echo %time%') do set current_time=%%a

REM 构建提交信息
set commit_msg=自动更新笔记 - %weekday% %yyyy%/%mm%/%dd% %current_time%

echo 当前时间: %weekday% %yyyy%/%mm%/%dd% %current_time%
echo 提交信息: %commit_msg%
echo.

echo [1/3] 添加所有文件到Git暂存区...
git add .
if %errorlevel% neq 0 (
    echo 错误: 添加文件失败！
    pause
    exit /b 1
)
echo ✓ 文件添加成功

echo.
echo [2/3] 提交更改...
git commit -m "%commit_msg%"
if %errorlevel% neq 0 (
    echo 提示: 没有新的更改需要提交，或提交失败
    echo 检查是否有文件修改...
    git status
    pause
    exit /b 0
)
echo ✓ 提交成功

echo.
echo [3/3] 推送到GitHub...
git push origin master
if %errorlevel% neq 0 (
    echo 错误: 推送失败！可能的原因：
    echo - 网络连接问题
    echo - GitHub认证问题
    echo - 远程仓库冲突
    pause
    exit /b 1
)
echo ✓ 推送成功

echo.
echo ========================================
echo     所有操作完成！笔记已更新到GitHub
echo ========================================
echo.
echo 按任意键关闭窗口...
pause >nul
