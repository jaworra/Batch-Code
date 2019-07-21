@echo
:: variables
set sourcedrive=pushd "%~dp0"
set backupdrive=\\Mkydnw03\DATA1\Temp\GISData\Isaac_Council_2010_(Tropical_Coast_Project)\DEM_xyz
set backupdrive=pushd "%~dp0"
set logfile=G:\Geospatial\GIS\JohnW\Request\StephenC\Isaac Lidar\BackupLog.txt


echo %Date% # # # Moving files >> %logfile%

%backupcmd% "%sourcedrive%\directory_to_backup" ::"%backupdrive%\directory_to_store_backup" >> %logfile%

echo %Date% # # Moveing Complete! >> %logfile%

Pause
