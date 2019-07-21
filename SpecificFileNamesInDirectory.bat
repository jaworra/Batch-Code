:: Sets Directroy to location of batch file and produces a list for (.xyz) .

pushd %~dp0
cd /d G:\Geospatial
echo off
del C:\Log\GGeospatialStringFindlog.txt

::######################################################
::    REPORT ON TAB FILENAMES WITH REGION CODE 
::######################################################    

for /r %%a in (*CWR*.tab *DDR*.tab *FNR*.tab *FTR*.tab *MTR*.tab *MWR*.tab *NCR*.tab *NTR*.tab *NWR*.tab *SCR*.tab *SWR*.tab *WBR*.tab) do (
echo %%a >> C:\Log\GGeospatialStringFindlog.txt
)

Echo "Succesfully Completed"
Pause 
::del SpecificFileNamesInDirectory.bat
Exit

              
              
              
              
              
              
              
              
              
              