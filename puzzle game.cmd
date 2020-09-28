@echo off
title puzzle game
set lvl=0
:start
echo level=%lvl%
set a=%random%
set b=%random%
set /p c=%a% + %b% =
set /a a+=%b%
if %c% equ %a% goto win
if NOT %c% equ %a% goto gameover

:win
set /a lvl+=1
echo you won. rady for next round? [Y/n]
set /p RFNR=
if NOT %RFNR% equ n goto start
if %RFNR% equ n exit

:gameover
set lvl=0
echo you died. wanna try again? [Y/n]
set /p RFNR=
if NOT %RFNR% equ n goto start
if %RFNR% equ n exit