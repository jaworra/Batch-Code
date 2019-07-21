:: Convert from a set of Geotiff rasters to a set of TIF+TFW rasters removing also the Geotiff tags
::The source_folder is the folder where (include subfolders) there is the source TIF. The target_folder is the destination for raster outputs.
::Also EPSG:3003 is the source SRS and also EPSG:3003 is the target SRS.

for /R F:/folder1/source_folder %f IN (*.tif) do gdalwarp.exe -co PROFILE=BASELINE -co TFW=YES -s_srs EPSG:3003 -t_srs EPSG:3003 -r near -ot Byte -srcnodata "0" -of GTiff %f F:/folder1/target_folder/%~nf.tif

Pause
Exit
