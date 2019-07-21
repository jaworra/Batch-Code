call set PARENT_DIR=%CD%
set PARENT_DIR=%PARENT_DIR:\= %
set LAST_WORD=
for %%i in (%PARENT_DIR%) do set LAST_WORD=%%i
echo %LAST_WORD%
pause
