echo @off 

set PATH=%PATH%;C:\Program Files\CMake 2.8\bin

set PROCESSOR_ARCHITECTURE=AMD64 
set VSSHELL2010INSTALLDIR=C:\Program Files\Microsoft Visual Studio 10.0\
set VS100COMNTOOLS=C:\Program Files\Microsoft Visual Studio 10.0\Common7\Tools\
set VS100COMNTOOLSDIR=%VS100COMNTOOLS%
set VSINSTALLDIR=%VSSHELL2010INSTALLDIR%
set WindowsSdkDir=C:\Program Files\Microsoft SDKs\Windows/v7.0A\

#call "%VSSHELL2010INSTALLDIR%VC\vcvarsall.bat"
set DevEnvDir=%VSINSTALLDIR%Common7\IDE\
set INCLUDE=%VSINSTALLDIR%VC\INCLUDE;%INCLUDE%
set LIB=%VSINSTALLDIR%VC\LIB;%LIB%
set LIB=%WindowsSdkDir%Lib;%LIB%
set PATH=%VSINSTALLDIR%Common7\Tools;%PATH%
set PATH=%VSINSTALLDIR%VC\bin;%PATH%
set PATH=%DevEnvDir%;%PATH%
set PATH=%WindowsSdkDir%bin;%PATH%

echo "%PATH%"
cmake -G "NMake Makefiles" .

set MAKEFLAGS=
nmake VERBOSE=1
hello.exe

