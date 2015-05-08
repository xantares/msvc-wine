#!/bin/sh

# script ot install msvc
set -e

# sudo pacman -S wine winetricks wine-mono wine_gecko

export WINEPREFIX=$HOME/wine-msvc-10
export WINEARCH=win32
rm -rf $WINEPREFIX
winetricks --no-isolate cmake vc2010express

