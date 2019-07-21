::Renames all ecw files in bat folder with prefix 

:: Use this to rename files from that have to many characters
:: Trims from right 13 characters
@echo off
pushd %MYPATH%
set MYPATH  = %CD%
set "str1=%CD%"
set "str2=\"
set "CD=%CD%%str2%"
setlocal enabledelayedexpansion

dir *.ecw /A:-D /B /w  > ECWFiles.txt
for /f "delims= " %%b in (ECWFiles.txt) do ( 
set y=%%b
set y=!y:~-13!
rename "%%b" "GT_!y!"
echo !y!
)
DEL "ECWFiles.txt" 
pause
exit
