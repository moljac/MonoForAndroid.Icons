@echo off
setlocal EnableDelayedExpansion


FOR /F "tokens=*" %%s IN ('dir /s /b .\original\*.png') DO (

	echo =======================================================================
	set FILENAME_PATH_PNG=%%s
	echo FILENAME_PATH_PNG=!FILENAME_PATH_PNG!
	set FILENAME=%%~ns
	echo FILENAME=!FILENAME!
	set FILENAME_W_EXT=%%~nxs
	echo FILENAME_W_EXT=!FILENAME_W_EXT!
	::set DIRNAME=!FILENAME_PATH:.svg=!  No renaming
	::echo DIRNAME="!DIRNAME!"

	:: set PREFIX=!FILENAME:~0,2!
	:: echo PREFIX=!PREFIX!
	
	set FILENAME_NETFX=android_!FILENAME_W_EXT!
	echo FILENAME_NETFX=!FILENAME_NETFX!
	
	copy /b .\original\!FILENAME_W_EXT! .\renamed\!FILENAME_NETFX!


)

pause
@IF %ERRORLEVEL% NEQ 0 PAUSE	




::	xcopy /y /q /I .\original\!FILENAME_W_EXT! .\renamed\!FILENAME_NETFX!
