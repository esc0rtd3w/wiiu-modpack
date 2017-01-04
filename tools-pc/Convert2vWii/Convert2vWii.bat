@echo off
:: This batch file looks pretty messy, and quite a bit of it is.
:: Part of it is from testing different things and not removing the code afterwards,
:: and part of it is just dirty code to work around a few bugs in Sharpii

:: Set the size and title of the window
mode con cols=90 lines=30
:: Set the title that is displayed for the window
TITLE Convert2vWii
::Remove the __channel directory if it was left behind
if exist __channel rd /S /Q __channel
::Make sure Sharpii is installed or in directory
set workingdirectory=%~dp0
:: Check working directory
%workingdirectory%sharpii.exe>NUL 2>&1
if "%ERRORLEVEL%" == "0" (
set "sharpiidir=%workingdirectory%sharpii.exe"
goto sharpii
)
:: Check environment variables
sharpii.exe>NUL
if not "%ERRORLEVEL%" == "0" goto nosharpii
set "sharpiidir=sharpii.exe"

:sharpii
:: Make sure that a file was dragged and the batch wasn't just double clicked
if [%1]==[] goto error
:: Make sure it is a wad file
if not "%~x1" == ".wad" goto error
:: The dragged wad will now be called %wadfile%
set wadfile=%*
:: Strips quotation marks from %wadfile%
for /f "useback tokens=*" %%a in ('%wadfile%') do set wadfile=%%~a
set foldername=%wadfile:~0,-4%

:start
COLOR 0A
cls
echo Convert2vWii by JoostinOnline - HacksDen.com
echo Thanks to person66 for creating Sharpii
echo Thanks to FIX94 for creating the vWii NAND loader
echo.
echo.
sleep 1

:build
%sharpiidir% wad -u "%wadfile%" __channel
COPY %workingdirectory%00000001.app __channel\00000001.app
%sharpiidir% wad -p __channel __temp.wad
set "inputfile=%CD%\__temp.wad"
set "outputfile=%foldername% - vWii.wad"
MOVE "%inputfile%" "%outputfile%"
rd /S /Q __channel
goto eof

:error
:: Change the font to red
COLOR 0C
echo Drag and drop a channel wad onto this bat file
:: Just a friendly threat :)
echo Mess up again and I'll show you the back of my hand!
goto eof

:nosharpii
cls
:: Change the font to red
COLOR 0C
echo Make sure Sharpii is either installed or in the same directory as this batch file
:: Just a friendly threat :)
echo Mess up again and I'll make you walk the plank!

:eof
echo.
echo Press any key to exit...
pause>NUL