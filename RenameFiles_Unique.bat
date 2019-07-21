::Renames all ecw files in bat folder with prefix 

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
set x=%%b
set u=!y:~0,7!
set v=!x:~-8!
rename "%%b" "!u!-!v!"
echo !u!
)
DEL "ECWFiles.txt" 
pause
exit
