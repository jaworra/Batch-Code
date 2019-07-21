::===========
:: For conversion of multiple shp files to Tabs batch directroy
:: Call to Universal Translator

@echo off
pushd %MYPATH%
set MYPATH  = %CD%

set "str1=%CD%"
set "str2=\"
set "CD=%CD%%str2%"

dir *.shp /A:-D /B /w  > ContoursFiles.txt
:: Generate csv list of shp files and converts
for /f "delims= " %%b in (ContoursFiles.txt) do (
cd /d C:\PROGRA~2\PITNEY~2\MAPINF~1.2\UT\
fme.EXE CFGenerate SHAPE MAPINFO "%CD%%%b" "C:\temp\mapping_1.fme" LOG_STANDARDOUT YES LOG_FILENAME "%CD%log.txt" LOG_APPEND "NO"
fme.EXE "C:\Temp\mapping_1.fme" --SourceDataset "%CD%%%b" --DestDataset "%str1%" --_EXTENSION shp --_BASENAME Regions --_FULLBASENAME Regions
)


DEL "%CD%ContoursFiles.txt" 
@pause
::============end 

