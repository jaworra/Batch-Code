:: Batch file to transfer specific files for list.txt
::call set PARENT_DIR=%CD%
::set PARENT_DIR=%PARENT_DIR:\= %
echo on 


for /f "delims= " %%b in (a.txt) do (
:: echo %%b
copy /V 2A_1m_DEM_ASCII_XYZ\%%b C:\Z\a\
)

echo Completed Transfer At:
time /t 
pause

del a.txt
