::===========
:: Display directory Contents
:: 

@echo off

pushd %MYPATH%
set MYPATH  = %CD%

set "str1=%CD%"
set "str2=\"
set "CD=%CD%%str2%"

dir *.* /A:-D /B /w  > Contents.txt
Echo "Succesfully Completed"
pause
::============end 

