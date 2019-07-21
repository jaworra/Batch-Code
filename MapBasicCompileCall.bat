
@echo off
setlocal enabledelayedexpansion enableextensions

rem Link_MBP.bat
rem This file is used to link a MapBasic Project File from within Notepad++
rem Before linking the project all the source files which are part of the project will be compiled
rem After linking the resulting application will be run  

set MBExecPath="C:\Program Files\MapInfo\MapBasic\MAPBASIC.EXE"
set NPPExecPath="C:\Program Files\Programmer's Notepad\pn.exe"

echo.
echo MapBasic Project File ^(^*.mbp^) Linker
echo.

if not exist !MBExecPath! (
    echo Cannot find MapBasic, expecting it to be here:
    echo !MBExecPath!
    pause
    goto :EOF
)

if not exist !NPPExecPath! (
    echo Cannot find Notepad++, expecting it to be here:
    echo !NPPExecPath!
    pause
    goto :EOF
)

rem Check that the file is a MapBasic Project File
if /i "%~x1" NEQ ".mbp" (
    echo Error: file %~dpnx1 is not a MapBasic Project File ^(^*.mbp^)
    echo.
    pause
    goto :EOF
)

echo   First, all the source files will be compiled:
echo.

for /f "usebackq skip=1 delims== tokens=2" %%j in (%1) do (
    if /i %%~xj EQU .mbo (
        rem Check that source code exists
        if exist "%~dp1%%~nj.mb" (
            echo   Compiling %%~nj.mb
            !MBExecPath! -server -D "%~dp1%%~nj.mb"
            if exist "%~dp1%%~nj.err" (
                echo Errors in compilation
                echo Press a key to open error log: %~dp1%%~nj.err.
                pause
                !NPPExecPath! "%~dp1%%~nj.err"
                goto :EOF
            )
        ) else (
            echo.
            echo      Source file not present:
            echo      %%~nj.mb
            echo.
            echo      Using previously compiled object file instead:
            echo      %~dp1%%j
            if not exist "%~dp1%%j" (
                echo.
                echo      Error: cannot find source code ^(^*.mb^)
                echo      or object file ^(^*.mbo^) for %%~nj
                echo.
                pause
                goto :EOF
            )
            echo.
        )
    )
)


echo.
echo   Ready to link the MapBasic Project File:
echo.
echo      Linking %~1
!MBExecPath! -server -L "%~dpnx1"
if exist "%~dpn1.err" (
    echo Errors in linking
    echo Press a key to open error log: %~dpn1.err.
    pause
    !NPPExecPath! "%~dpn1.err"
    goto :EOF
)

echo.
echo   Completed
echo.
echo Ready to run %~n1.mbx
echo.
echo Press Ctrl-C if you do not want to run the application
echo.
pause
"%~dpn1.mbx"