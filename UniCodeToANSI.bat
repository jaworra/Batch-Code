::Renames all ecw files in bat folder with prefix 

@echo off
pushd %MYPATH%
set MYPATH  = %CD%
set "str1=%CD%"
set "str2=\"
set "CD=%CD%%str2%"
setlocal enabledelayedexpansion

mkdir "ANSI"
dir *.kml /A:-D /B /w  > KMLFiles.txt
for /f "delims=" %%b in (KMLFiles.txt) do ( 
set y=%%b
type "%%b">"ANSI\%!y!"

)
DEL "KMLFiles.txt
pause
exit
::rename "%%b" "GT_!y!"