@echo off
Setlocal EnableDelayedExpansion
REM convert dd-mm-yyyy to mm-dd-yy
set "name=%date:~3,2%-%date:~0,2%-%date:~8,2%.txt"
echo File name :!name!
REM Change src ,dest to your own directory
set "src="D:\Sample File Source\"
set "dest="D:\Sample File Dest\"
REM slist=names of Folder in src
set "slist[0]=A""
set "slist[1]=B""
set "slist[2]=C""
set "slist[3]=D""
set "slist[4]=E""
set "slist[5]=F""
set "slist[6]=G""
set "slist[7]=H""
set "slist[8]=I""
REM slist=names of Folder in dest
set "dlist[0]=A""
set "dlist[1]=B""
set "dlist[2]=C""
set "dlist[3]=D""
set "dlist[4]=E""
set "dlist[5]=F""
set "dlist[6]=G""
set "dlist[7]=H""
set "dlist[8]=I""
for /L %%a in (0,1,8) do (
	set "temp_src=%src%!slist[%%a]!"

	set "temp_dest=%dest%!dlist[%%a]!"

	call robocopy !temp_src! !temp_dest! !name!
)	

exit /B
