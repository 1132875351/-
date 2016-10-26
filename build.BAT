@echo off
rem
rem Root of Visual C++ installed files.
rem
set MSVCDir=e:\Èí¼þ\VC6

rem
echo Setting environment for using Microsoft Visual C++ tools.
rem

if "%OS%" == "Windows_NT" set PATH=%MSVCDir%\VC98\Bin;%MSVCDir%\BIN;%MSVCDir%\Common\MSDev98\Bin\;%PATH%
if "%OS%" == "" set PATH=%MSVCDir%\VC98\Bin;"%windir%\SYSTEM";"%windir%\SYSTEM32";"%PATH%"
set INCLUDE=%MSVCDir%\VC98\ATL\INCLUDE;%MSVCDir%\VC98\INCLUDE;%MSVCDir%\VC98\MFC\INCLUDE;%INCLUDE%;
set LIB=%MSVCDir%\VC98\LIB;%MSVCDir%\MFC\LIB;%LIB%;

set VcOsDir=
set VSCommonDir=
nmake
@echo off
del *.idb
del *.ilk
del *.obj
del *.pch
del *.pdb