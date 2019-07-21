::===========
:: Converts all GTiff DEM files to GTiff hillshades in directory  
:: GDAL Switches
::                [-z ZFactor (default=1)] [-s scale* (default=1)]"
::                [-az Azimuth (default=315)] [-alt Altitude (default=45)]
::                [-alg ZevenbergenThorne] [-combined]
::                [-compute_edges] [-b Band (default=1)] [-of format] [-co "NAME=VALUE"]* [-q]

 
:: gdaldem hillshade -of GTiff %%b Hillshade_%%b.tif   // Default - the light source is placed in a top left position (azimuth = 315 degrees)
:: gdaldem hillshade -of GTiff -az 135 %%b Hillshade_%%b.tif  //Light source to a bottom right position (azimuth = 135 degrees) , has the opposite effect to the above cmd.
:: gdaldem hillshade %%b Hillshade_%%b.tif -z 5 -s 111120 -az 90

@echo off

pushd %MYPATH%
set MYPATH  = %CD%
set "str1=%CD%"
set "str2=\"
set "CD=%CD%%str2%"

dir *.tif /A:-D /B /w  > TiffFiles.txt
:: Generate csv list of shp files and converts
for /f "delims= " %%b in (TiffFiles.txt) do ( 
gdaldem hillshade -of GTiff -z 5 -s 111120 -az 90 %%b Hillshade_%%b.tif
)
pause
DEL "%CD%TiffFiles.txt" 
@pause
::============end 

