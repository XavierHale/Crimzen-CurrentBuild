@echo off
:top
:verifyinstall
::This section checks the instalation to mkae sure all critical files are present
call verify.bat
call initialize.bat
title Crimzen Version %ver%
echo Note that this project is discontinued. I do not intend to update this anymore
echo Succesfuly loaded, welcome to Crimzen!
echo Copyright 2021 CSBX inc.
echo If you paid for this, you got scammed! This is freeware, and can be downloaded at
echo https://github.com/XavierHale/Crimzen-Client
type changelog.crm
echo.
echo Loaded Succesfuly>errmsg.crm
pause
cls
:: The main section of Crimzen, has the main menu and all links to other menus
:home
echo l-----------------------------------------------------------------------------------------------------------------------------------------l
ping 0.0.0.0.0 >nul  
echo l       ::::::::       :::::::::       :::::::::::         :::   :::       :::::::::       ::::::::::       ::::    :::                   l 
ping 0.0.0.0.0 >nul  
echo l     :+:    :+:      :+:    :+:          :+:            :+:+: :+:+:           :+:        :+:              :+:+:   :+:                    l
ping 0.0.0.0.0 >nul  
echo l    +:+             +:+    +:+          +:+           +:+ +:+:+ +:+         +:+         +:+              :+:+:+  +:+                     l
ping 0.0.0.0.0 >nul  
echo l   +#+             +#++:++#:           +#+           +#+  +:+  +#+        +#+          +#++:++#         +#+ +:+ +#+                      l
ping 0.0.0.0.0 >nul  
echo l  +#+             +#+    +#+          +#+           +#+       +#+       +#+           +#+              +#+  +#+#+#                       l
ping 0.0.0.0.0 >nul  
echo l #+#    #+#      #+#    #+#          #+#           #+#       #+#      #+#            #+#              #+#   #+#+#                        l
ping 0.0.0.0.0 >nul  
echo l ########       ###    ###      ###########       ###       ###     #########       ##########       ###    ####                         l
ping 0.0.0.0.0 >nul  
echo l Copyright 2021                                                                                                                          l
ping 0.0.0.0.0 >nul  
echo l V%ver% by CSBX inc.                                                                                                                     l
ping 0.0.0.0.0 >nul  
echo l Welcome, %user%!                                                                                                                        
echo l-----------------------------------------------------------------------------------------------------------------------------------------l
echo l                                                                                                                                         l
echo l     l-------Terminals------l    l-----Accounts------l                                                                                   l
echo l     l (1) CMD              l    l (10) Log out      l                                                                                   l
echo l     l (2) Powershell       l    l (11) New Account  l                                                                                   l
echo l     l (?) CSBXterm         l    l                   l                                                                                   l
echo l     l----------------------l    l-------------------l                                                                                   l
echo l                                                                                                                                         l
echo l     l-------Utilites-------l    l---Servers (ALPHA TESING)-----l                                                                        l
echo l     l (3) Notepad          l    l (12) Enter server wizard     l                                                                        l
echo l     l (4) Autoclicker      l    l------------------------------l                                                                        l
echo l     l (5) QDoS             l                                                                                                            l
echo l     l (6) Iexpress Wizard  l                                                                                                            l
echo l     l----------------------l                                                                                                            l
echo l                                                                                                                                         l
echo l     l-------Customize------l                                                                                                            l
echo l     l (7) Change color     l                                                                                                            l
echo l     l (8) Online Shop      l                                                                                                            l
echo l     l----------------------l                                                                                                            l
echo l                                                                                                                                         l
echo l     l---------Games--------l                                                                                                            l
echo l     l (9) More Games       l                                                                                                            l
echo l     l----------------------l                                                                                                            l
echo l                                                                                                                                         l
echo l                                                                                                                                         l
echo l                                                                                                                                         l
echo l                                                                                                                                         l
echo l-----------------------------------------------------------------------------------------------------------------------------------------l
set /p homemenu=What would you like to do?
if %homemenu%==1 start cmd.exe
if %homemenu%==2 start powershell.exe
if %homemenu%==3 Notepad.exe
if %homemenu%==4 goto :autoclick
if %homemenu%==5 goto :QDOS
if %homemenu%==6 iexpress.exe
if %homemenu%==7 goto :color
if %homemenu%==8 goto :shop
if %homemenu%==9 goto :morgame
if %homemenu%==exit goto :exit
if %homemenu%==10 goto :logout
if %homemenu%==11 goto :newacc
if %homemenu%==dev goto :end
if %homemenu%==12 goto :servers

goto :home
:autoclick
cd Resources\applets
start AutoClicker.exe
timeout 1 /nobreak >nul
cd ..
cd ..
goto :home
:QDoS
cd Resources\applets
start QDOS.bat
timeout 1 /nobreak >nul
cd ..
cd ..
goto :home
:cs
echo Coming Soon!
pause
goto :home
:express
start iexpress.exe
echo Iexpress wizard started
timeout 1 /nobreak >nul
goto :home
:help
::Help Section for Crimzen
echo               - Help Menu -
echo Crimzen is a hub for computer applications that are usualy hard to get to.
echo Home Menu and Game Menu:
echo To start a program, type the number in the parnthises next to it. (Ex. Type 0 for this menu)
echo Shop:
echo Similar to Home Menu, but you can type "e" after the number to get more information about the software.
echo Press a key to continue...
timeout 280  >nul
goto :home
:color
echo 0	=	Black	 	8	=	Gray
echo 1	=	Blue	 	9	=	Light Blue
echo 2	=	Green	 	A	=	Light Green
echo 3	=	Aqua	 	B	=	Light Aqua
echo 4	=	Red	 	    C	=	Light Red
echo 5	=	Purple	 	D	=	Light Purple
echo 6	=	Yellow	 	E	=	Light Yellow
echo 7	=	White	 	F	=	Bright White
set /p color=Select a color form the table above. First digit is background, seccond is text. (Ex, for a white background and blue text, enter 71)
color %color%
goto :home
:newacc
cls
echo Welcome to the Accout setup wizard!
set /p newaccname=What will the name of your new account be?:
echo [%newaccname%]>>users.ini
echo user=%newaccname%>>users.ini
set /p newaccpass=What will your password be?:
echo password=%newaccpass%>>users.ini
goto :home
:logout
cls 
call initialize.bat
goto :top
:morgame
cls
echo l-----------------------------------------------------------------------------------------------------------------------------------------l
ping 0.0.0.0.0 >nul  
echo l       ::::::::       :::::::::       :::::::::::         :::   :::       :::::::::       ::::::::::       ::::    :::                   l 
ping 0.0.0.0.0 >nul  
echo l     :+:    :+:      :+:    :+:          :+:            :+:+: :+:+:           :+:        :+:              :+:+:   :+:                    l
ping 0.0.0.0.0 >nul  
echo l    +:+             +:+    +:+          +:+           +:+ +:+:+ +:+         +:+         +:+              :+:+:+  +:+                     l
ping 0.0.0.0.0 >nul  
echo l   +#+             +#++:++#:           +#+           +#+  +:+  +#+        +#+          +#++:++#         +#+ +:+ +#+                      l
ping 0.0.0.0.0 >nul  
echo l  +#+             +#+    +#+          +#+           +#+       +#+       +#+           +#+              +#+  +#+#+#                       l
ping 0.0.0.0.0 >nul  
echo l #+#    #+#      #+#    #+#          #+#           #+#       #+#      #+#            #+#              #+#   #+#+#                        l
ping 0.0.0.0.0 >nul  
echo l ########       ###    ###      ###########       ###       ###     #########       ##########       ###    ####                         l
ping 0.0.0.0.0 >nul                       
echo l Copyright 2021                                                                                                                          l
ping 0.0.0.0.0 >nul  
echo l V%ver% by CSBX inc.                                                                                                                       l
ping 0.0.0.0.0 >nul  
echo l-----------------------------------------------------------------------------------------------------------------------------------------l
echo l
echo l     l---------More Games supported by CRIMZEN-------------l
echo l     l (1) Snake                                           l
echo l     l (2) Flappy Bird                                     l
echo l     l (3) War!                                            l
echo l     l (4) Dragon Fight                                    l
echo l     l (5) Back to Main Menu                               l
echo l     l-----------------------------------------------------l
echo l     
echo l          
echo l     
echo l     
echo l     
echo l
echo l     
echo l     
echo l     
echo l     
echo l
echo l    
echo l     
echo l     
echo l
echo l
echo l
echo l
echo l-----------------------------------------------------------------------------------------------------------------------------------------l
set /p gamemenu=What game do you want to load?
cd Resources\applets\BatchGames
if %gamemenu% ==1 start snake.bat
if %gamemenu% ==2 start goto :flap
if %gamemenu% ==3 start war.bat
if %gamemenu% ==4 start drag.bat
if %gamemenu% ==5 (
    cd..
    cd..
    goto :home
)
goto :morgame
:flap
cd batch-game-flappy-bird-master
start Flappy_Bird.bat
cd..
goto :morgame
:shop
cls
Echo Loading shop
timeout 1 /nobreak >nul
echo Loaded!
pause
cls
:loadedshop
echo l-----------------------------------------------------------------------------------------------------------------------------------------l
ping 0.0.0.0.0 >nul  
echo l       ::::::::       :::::::::       :::::::::::         :::   :::       :::::::::       ::::::::::       ::::    :::                   l 
ping 0.0.0.0.0 >nul  
echo l     :+:    :+:      :+:    :+:          :+:            :+:+: :+:+:           :+:        :+:              :+:+:   :+:                    l
ping 0.0.0.0.0 >nul  
echo l    +:+             +:+    +:+          +:+           +:+ +:+:+ +:+         +:+         +:+              :+:+:+  +:+                     l
ping 0.0.0.0.0 >nul  
echo l   +#+             +#++:++#:           +#+           +#+  +:+  +#+        +#+          +#++:++#         +#+ +:+ +#+                      l
ping 0.0.0.0.0 >nul  
echo l  +#+             +#+    +#+          +#+           +#+       +#+       +#+           +#+              +#+  +#+#+#                       l
ping 0.0.0.0.0 >nul  
echo l #+#    #+#      #+#    #+#          #+#           #+#       #+#      #+#            #+#              #+#   #+#+#                        l
ping 0.0.0.0.0 >nul  
echo l ########       ###    ###      ###########       ###       ###     #########       ##########       ###    ####                         l
ping 0.0.0.0.0 >nul                       
echo l Copyright 2021                                                                                                                          l
ping 0.0.0.0.0 >nul  
echo l V%ver% by CSBX inc.                                                                                                                       l
ping 0.0.0.0.0 >nul  
echo l-----------------------------------------------------------------------------------------------------------------------------------------l
echo l
echo l       l---------Welcome!---------l    l------------------------l
echo l       l Use just like the home   l    l Git (not GitHub) is    l
echo l       l menu, exept you can type l    l required to use this.  l
echo l       l 'e' after the number to  l    l------------------------l
echo l       l get info about that      l
echo l       l peice of software        l
echo l       l--------------------------l
echo l     
echo l       l--------------------------l
echo l       l (1) Vibrant Venture      l
echo l       l (2) Visual Studio code   l
echo l       l (3) WifiCracker          l   
echo l       l--------------------------l     
echo l
echo l     
echo l     
echo l     
echo l     
echo l
echo l   
echo l
echo l
echo l
echo l
echo l-----------------------------------------------------------------------------------------------------------------------------------------l
set /p shopmenu=Please enter the number of the program you would like to download:
if %shopmenu%==1 git clone https://github.com/XavierHale/Shop-vibvent
if %shopmenu%==1e ( echo A platformer where you have to switch between characters to succeed
pause
goto :loadedshop
)
if %shopmenu%==2 git clone https://github.com/XavierHale/Shop-vscode 
if %shopmenu%==2e ( echo A easy to use and expandable editor {We actauly used this to program Crimzen!}
pause
goto :loadedshop
)
if %shopmenu%==3 git clone https://github.com/XavierHale/Shop-WifiCracker
if %shopmenu%==3e ( echo A wifi password cracker developed by TUX
pause
goto :loadedshop
)
goto :loadedshop
:servers
cls
echo Welcome to the server wizard!
echo What do you want to do?
echo (1) Connect to a server 
echo (2) Grab latest from a server
echo (3) Make a server (exprimental)
echo (4) Push files to server
echo (5) Back to home
set /p servermenu=
if %servermenu%==1 goto :getserver
if %servermenu%==2 goto :grabserver
if %servermenu%==3 goto :makeserver
if %servermenu%==4 goto :pushserver
if %servermenu%==5 goto :homemenu
:getserver
set /p getserverid=What server would you like to make a conection to? (ex {domain}/{server}.com)
git clone https://github.com/%getserverid%
goto :servers





:exit