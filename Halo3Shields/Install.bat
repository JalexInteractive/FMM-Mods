@echo off
cls
:start
if exist ..\..\..\maps\tags.dat (
	GOTO Label0
) else (
	GOTO Label1
)

:Label0
color 03

Type Halo3Shields.cmds | TagTool.exe ../../../maps/tags.dat

copy fonts\font_package.bin ..\..\..\maps\fonts

ECHO Installation Complete

GOTO End

:Label1
ECHO WARNING Mod is not in the correct location.
ECHO Install at: /mods/tagmods/Halo3Shields