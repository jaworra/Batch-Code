::===========
:: Call to Universal Translator- For conversion of multiple shp files to Tabs
:: Moves log files to selected destinateion and copys directory to new location

@echo off

cd /d J:\Lidar_DO_NOT_TOUCH\Cassowary_Coast_2010\Contours\
dir *.shp /A:-D /B /w  > ContoursFiles.txt

:: Generate csv list of shp files and converts
for /f "delims= " %%b in (ContoursFiles.txt) do (
cd /d C:\Program Files\MapInfo\Professional\UT\
Imut.exe CFGenerate SHAPE MAPINFO "J:\Lidar_DO_NOT_TOUCH\Cassowary_Coast_2010\Contours\%%b" "C:\temp\mapping_1.fme" LOG_STANDARDOUT YES LOG_FILENAME "\\shocnc03_shrsedat2pool_server\SHRSEDAT2\GROUPS\Geospatial\GIS\JohnW\Request\MathewE\Transferred_Logs\250512_CassowaryCoast.txt" LOG_APPEND "NO"
Imut.exe "C:\Temp\mapping_1.fme" --SourceDataset "J:\Lidar_DO_NOT_TOUCH\Cassowary_Coast_2010\Contours\%%b" --DestDataset "J:\Lidar_DO_NOT_TOUCH\Cassowary_Coast_2010\Contours" --_EXTENSION shp --_BASENAME Regions --_FULLBASENAME Regions
)

Move /y J:\Lidar_DO_NOT_TOUCH\Cassowary_Coast_2010\Contours\ContoursFiles.txt \\shocnc03_shrsedat2pool_server\SHRSEDAT2\GROUPS\Geospatial\GIS\JohnW\Request\MathewE\Transferred_Logs\
xcopy J:\Lidar_DO_NOT_TOUCH\Cassowary_Coast_2010 E:\Cassowary_Coast_2010\  /E /V
pause

@pause
::============end 
