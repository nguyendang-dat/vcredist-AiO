@echo off
title "Microsoft Visual C++ Redistributable All-in-One  -  fb.com/nguyendangdat.spt"
CD /d %~dp0

echo.
echo Microsoft Visual C++ Redistributable All-in-One
https://github.com/nguyendang-dat/vcredist-AiO
echo.
echo Installing packages...

set IS_X64=0 && if "%PROCESSOR_ARCHITECTURE%"=="AMD64" (set IS_X64=1) else (if "%PROCESSOR_ARCHITEW6432%"=="AMD64" (set IS_X64=1))

if "%IS_X64%" == "1" goto X64

echo Installing vcredist_2005_x86...
start /wait vcredist_x86_2005.exe /q
echo.

echo Installing vcredist_2008_x86...
start /wait vcredist_x86_2008.exe /qb
echo.

echo Installing vcredist_2010_x86...
start /wait vcredist_x86_2010.exe /passive /norestart
echo.

echo Installing vcredist_2012_x86...
start /wait vcredist_x86_2012.exe /passive /norestart
echo.

echo Installing vcredist_2013_x86...
start /wait vcredist_x86_2013.exe /passive /norestart
echo.

echo Installing vcredist_2015-2022_x86...
start /wait VC_redist.x86_2015-2022.exe /passive /norestart

goto END

:X64

echo Installing vcredist_2005_x86...
start /wait vcredist_x86_2005.exe /q
echo.

echo Installing vcredist_2005_x64...
start /wait vcredist_x64_2005.exe /q
echo.

echo Installing vcredist_2008_x86...
start /wait vcredist_x86_2008.exe /qb
echo.

echo Installing vcredist_2008_x64...
start /wait vcredist_x64_2008.exe /qb
echo.

echo Installing vcredist_2010_x86...
start /wait vcredist_x86_2010.exe /passive /norestart
echo.

echo Installing vcredist_2010_x64...
start /wait vcredist_x64_2010.exe /passive /norestart
echo.

echo Installing vcredist_2012_x86...
start /wait vcredist_x86_2012.exe /passive /norestart
echo.

echo Installing vcredist_2012_x64...
start /wait vcredist_x64_2012.exe /passive /norestart
echo.

echo Installing vcredist_2013_x86...
start /wait vcredist_x86_2013.exe /passive /norestart
echo.

echo Installing vcredist_2013_x64...
start /wait vcredist_x64_2013.exe /passive /norestart
echo.

echo Installing vcredist_2015-2022_x86...
start /wait VC_redist.x86_2015-2022.exe /passive /norestart
echo.

echo Installing vcredist_2015-2022_x64...
start /wait VC_redist.x64_2015-2022.exe /passive /norestart

goto END

:END

echo.
echo Installation completed successfully
echo Exit in 3s
timeout /t 3 /nobreak > NUL

exit
