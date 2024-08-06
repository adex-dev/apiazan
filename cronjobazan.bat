@echo off
REM Navigasi ke direktori tempat repository Git berada
cd /d "C:\apiazan"

pip install requests lxml pytz

py botscrap.py

for /f "tokens=2 delims==" %%I in ('wmic os get localdatetime /value') do set %%I
set datetime=%localdatetime%
set year=%datetime:~0,4%
set month=%datetime:~4,2%



pause
