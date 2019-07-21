:: Batch file for distributing startup.wor with win 7 transfer
:: Requires directory location of startup.wor

:: map a temporary drive letter. If needed, change the path to the location of the startup.wor
pushd "\\Corp.tmr.qld.gov.au\Shares\SHRSEDAT2\mapinfo\DMR_Apps\"

::DO not edit the following line
copy startup.wor "%appdata%\MapInfo\MapInfo"

:: disconnect temporary drive mapping
popd

::FYI 
::pushd maps a drive temporarily to the next available letter starting from Z. 
::popd should disconnect that mapped drive