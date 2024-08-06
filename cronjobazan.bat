@echo off
REM Navigasi ke direktori tempat repository Git berada
cd /d "C:\apiazan"

pip install requests lxml pytz

py botscrap.py

for /f "tokens=2 delims==" %%I in ('wmic os get localdatetime /value') do set %%I
set datetime=%localdatetime%
set year=%datetime:~0,4%
set month=%datetime:~4,2%

REM Tambahkan semua perubahan ke staging area
git add .

REM Buat commit dengan pesan

git commit -m "Pesan commit Azan by bot !month!-!year!"

REM Push perubahan ke remote repository
git push origin main

REM Tahan jendela cmd terbuka agar Anda dapat melihat output


exit
