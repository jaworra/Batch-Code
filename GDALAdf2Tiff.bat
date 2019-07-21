::===========
:: Converts all ADF DEM files(w001001x.adf) to GTiff 
:: GDAL Switches
::       [-ot {Byte/Int16/UInt16/UInt32/Int32/Float32/Float64/
::             CInt16/CInt32/CFloat32/CFloat64}] [-strict]
::       [-of format] [-b band] [-mask band] [-expand {gray|rgb|rgba}]
::       [-outsize xsize[%] ysize[%]]
::       [-unscale] [-scale [src_min src_max [dst_min dst_max]]]
::       [-srcwin xoff yoff xsize ysize] [-projwin ulx uly lrx lry] [-epo] [-eco]
::      [-a_srs srs_def] [-a_ullr ulx uly lrx lry] [-a_nodata value]
::       [-gcp pixel line easting northing [elevation]]*
::       [-mo "META-TAG=VALUE"]* [-q] [-sds]
::       [-co "NAME=VALUE"]* [-stats]
::       src_dataset dst_dataset
	   
:: EPSG 4326 = Geographic Coordinate System WGS 1984.

@echo off

pushd %MYPATH%
set MYPATH  = %CD%
set "str1=%CD%"
set "str2=\"
set "CD=%CD%%str2%"

dir w001001x.adf /A:-D /B /w  > ADFFiles.txt
:: Generate csv list of shp files and converts
for /f "delims= " %%b in (ADFFiles.txt) do (
gdal_translate -of GTiff -a_srs EPSG:4326 %%b %%b.tif
)
pause
DEL "%CD%ADFFiles.txt" 
@pause
::============end 

