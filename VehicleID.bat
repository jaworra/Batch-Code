@ECHO OFF
dir *.* /A:D /B /w  > VehicleID.txt
pause
for /f "delims= " %%a in (VehicleID.txt) do (
set veh =!veh!%%a
::set veh = %veh%%%a
::set veh
::echo %veh%
)


pause


DEL "VehicleID.txt" 
exit
