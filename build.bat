echo @off 

set PATH=%PATH%;C:\Program Files\CMake 2.8\bin

set PROCESSOR_ARCHITECTURE=AMD64
set VSSHELL2010INSTALLDIR=C:\Program Files\Microsoft Visual Studio 10.0\
set VS100COMNTOOLS=%VSSHELL2010INSTALLDIR%\Common7\Tools\
set VS100COMNTOOLSDIR=%VS100COMNTOOLS%
set VSINSTALLDIR=%VSSHELL2010INSTALLDIR%
set WindowsSdkDir=C:\Program Files\Microsoft SDKs\Windows\v7.0A\
rem  call "%VSSHELL2010INSTALLDIR%VC\vcvarsall.bat"
set DevEnvDir=%VSINSTALLDIR%Common7\IDE\
set INCLUDE=%VSINSTALLDIR%VC\INCLUDE;%INCLUDE%
set INCLUDE=%WindowsSdkDir%\Include;%INCLUDE%
set LIB=%VSINSTALLDIR%VC\LIB;%LIB%
set LIB=%WindowsSdkDir%Lib;%LIB%
set PATH=%VSINSTALLDIR%Common7\Tools;%PATH%
set PATH=%VSINSTALLDIR%VC\bin;%PATH%
set PATH=%DevEnvDir%;%PATH%
set PATH=%WindowsSdkDir%bin;%PATH%

echo "%PATH%"
rem start mspdbsrv.exe -start -spawn -shutdowntime -1
cmake -G "NMake Makefiles" .

nmake
hello.exe

