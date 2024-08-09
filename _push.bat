@echo off
chcp 65001>nul

    git pull origin main
    if %errorlevel% equ 0 (
        git add .
        git commit -m "Update"
        git push -u origin main
        if %errorlevel% equ 0 (
            echo Git commands completed successfully!
        ) else (
            echo Đã xảy ra lỗi khi đẩy mã nguồn.
            msg * "Đã xảy ra lỗi khi đẩy mã nguồn."
        )
    ) else (
        echo Đã xảy ra lỗi khi pull từ Git.
        msg * "Đã xảy ra lỗi khi pull từ Git."
    )

pause
