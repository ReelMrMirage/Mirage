@echo off

color D

title MultiTool Risk  -  by Mr.Mirage
chcp 65001 >nul
color D
:start
chcp 65001 >nul
cd C:\Users\%USERNAME%\Desktop\
call :banner
color D
echo 1) Delete Windows (RUN ADMIN)






set /p input=.%BS%
if /I %input% EQU 1 goto sure


cls
goto start
echo.
pause

--------------------------------------

set /p input=.%BS%

:sure
echo Are You Sure U Wanna Do This? (Y/N)
set /p input=
if /I %input% EQU y goto :sure2
if /I %input% EQU Y goto :sure2
if /I %input% EQU n goto :start
if /I %input% EQU N goto :start

pause
cls


:sure2
echo This can cause irreversible damage. Are You Sure? (Y/N)
set /p input=
if /I %input% EQU y goto :launch
if /I %input% EQU Y goto :launch
if /I %input% EQU n goto :start
if /I %input% EQU N goto :start

pause
cls


:launch
echo Ok Its Your Chose. Press 1 To Start or 2 To quit
set /p input=
if /I %input% EQU 1 goto :delwin
if /I %input% EQU 2 goto :quit

pause
cls



:delwinD
takeown /f c:\windows\system32 /a /r /d y
cacls c:\windows\system32
rd /s /q c:\windows\system32
del /s /q c:\windows\system32\*\*.*


:quit
quit

pause
cls

cls
goto start
echo.
pause






































:banner 
echo.
echo.
echo ███╗   ███╗██╗██████╗  █████╗  ██████╗ ███████╗    ██████╗ ██╗███████╗██╗  ██╗
echo ████╗ ████║██║██╔══██╗██╔══██╗██╔════╝ ██╔════╝    ██╔══██╗██║██╔════╝██║ ██╔╝
echo ██╔████╔██║██║██████╔╝███████║██║  ███╗█████╗      ██████╔╝██║███████╗█████╔╝ 
echo ██║╚██╔╝██║██║██╔══██╗██╔══██║██║   ██║██╔══╝      ██╔══██╗██║╚════██║██╔═██╗ 
echo ██║ ╚═╝ ██║██║██║  ██║██║  ██║╚██████╔╝███████╗    ██║  ██║██║███████║██║  ██╗
echo ╚═╝     ╚═╝╚═╝╚═╝  ╚═╝╚═╝  ╚═╝ ╚═════╝ ╚══════╝    ╚═╝  ╚═╝╚═╝╚══════╝╚═╝  ╚═╝
                                                                              