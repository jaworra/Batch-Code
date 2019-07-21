:: Batch file to include Vehicle ID in IAP files 
::call set PARENT_DIR=%CD%
::set PARENT_DIR=%PARENT_DIR:\= %



dir C:\IAP\00004\data\*.pos /A:-D /B /w  > VehiclePosN.txt
:: Read in file folders until the end of line

for /f "delims= " %%b in (VehiclePosN.txt) do (
echo %%b





)


:: Loops through text file
::FOR /F "eol=x tokens=* delims= <tab>" %i in ("filenames.txt") do @echo %i %j %k 
::FOR /F "eol=; tokens=2,3* delims=, " %i in ("filenames.txt") do 

::pause
::for /f "tokens=* delims= " %%a in (filenames.txt) do (
::set /a N+=1
::set v!N!=%%a
::echo v!N!
::)

::for /f %%a in filenames.txt do set hostname=%%a echo %hostname%
pause
::for /f "delims= " %%a in (filenames.txt) do ECHO %%a

::or /f "delims= " %%a in (filenames.txt) do (
::set /a N+=1
::set v!N!=%%a
::set v!N!=%%a
::echo v!N!
)

pause
DEL "filenames.txt" 
exit




::set /p var= <filenames.txt
::echo %var%






::DEL "filenames.txt" 
