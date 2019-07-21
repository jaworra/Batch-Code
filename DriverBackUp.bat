echo off
echo This driver backup batch file It will back up the folders containing your
echo hardware drivers to a folder called driverback inside My Documents.
pause
%homedrive%
cd "%homepath%\my documents"
md driverback
cd driverback
xcopy %windir%\help /y
xcopy %windir%\inf /r /y
xcopy %windir%\system /r /y
xcopy %windir%\system32 /r /y
xcopy %windir%\system32\drivers /r /y
cd ..
attrib -h driverback
echo The folders are backed up. You should now copy the contents of the
echo driverback folder to a CD.
pause
cls


:: To restore your drivers to a fresh XP installation, connect or insert the media containing your driverback backup. Select Start, Run, type sysdm.cpl, and press ENTER. Click the Hardware tab, then the Device Manager button. 
::