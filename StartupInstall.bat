:: Batch file replaces old startup.wor with file
:: Required due to server migration

IF NOT EXIST "C:\progra~1\MapInfo\Professional\startupBk201310101.wor" (
	Rename C:\progra~1\MapInfo\Professional\startup.wor startupBk201310101.wor
	echo f | xcopy "\\Corp.tmr.qld.gov.au\Shares\SHRSEDAT2\mapinfo\DMR_Apps\StartupNewServer.wor.txt" "C:\progra~1\MapInfo\Professional\startup.wor"
)
