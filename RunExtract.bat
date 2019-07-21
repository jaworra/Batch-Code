::Extracts all commpressed files with the extension .gz .rar .zip
::Will not process folders with spacing in names.

@echo off

FOR /D /r %%G in (*) DO if exist %%G\*.gz C:\progra~1\WinRAR\Winrar.exe e %%G\*.gz %%G\ 
FOR /D /r %%G in (*) DO if exist %%G\*.rar C:\progra~1\WinRAR\Winrar.exe e %%G\*.rar %%G\
FOR /D /r %%G in (*) DO if exist %%G\*.zip C:\progra~1\WinRAR\Winrar.exe e %%G\*.zip %%G\

pause
exit 