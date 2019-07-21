::===========
:: Transfer files from file txt
:: 

::@echo off
cd /d C:\Documents and Settings\jaworra\Desktop\New Folder\

:: Generate csv list of shp files and converts
for /f "delims= " %%b in (Request1.txt) do (
 
Find

Xcopy /E /I /V J:\SISP\%%b F:\OlderImagery\%%b
)

pause
Echo Successfull Completion
Exit

::============end 
