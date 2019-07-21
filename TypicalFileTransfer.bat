::===========
:: Transfer files from file txt
:: 

::@echo off
cd /d G:\Geospatial\GIS\JohnW\Request\ChandraN\

:: Send LiDAR Contours
for /f "delims= " %%b in (Extended20130426.txt) do (
Xcopy /E /I /V F:\Somerset_2009\9a_TAB_Contours\%%b.tab  T:\GeoffFisherBridge\LiDAR\
Xcopy /E /I /V F:\Somerset_2009\9a_TAB_Contours\%%b.dat  T:\GeoffFisherBridge\LiDAR\
Xcopy /E /I /V F:\Somerset_2009\9a_TAB_Contours\%%b.id  T:\GeoffFisherBridge\LiDAR\
Xcopy /E /I /V F:\Somerset_2009\9a_TAB_Contours\%%b.map  T:\GeoffFisherBridge\LiDAR\
)

:: Send IMAGERY
for /f "delims= " %%b in (Extended20130426_IMAGERY.txt) do (
Xcopy /E /I /V R:\images\%%b.tab T:\GeoffFisherBridge\Imagery\
Xcopy /E /I /V R:\images\%%b.ecw T:\GeoffFisherBridge\Imagery\
Xcopy /E /I /V R:\images\%%b.ers T:\GeoffFisherBridge\Imagery\
)

pause
Echo Successfull Completion
Exit

::============end 
