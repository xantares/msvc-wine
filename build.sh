rm -rf CMakeFiles CMakeCache.txt hello.* *vcxproj*

export WINEPREFIX=$HOME/wine-msvc-10
export WINEARCH=win32

WINEDEBUG=-all wine cmd.exe /C build.bat
