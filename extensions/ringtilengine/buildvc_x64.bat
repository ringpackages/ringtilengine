cls
setlocal enableextensions enabledelayedexpansion
call ../../language/src/locatevc.bat x64
cl /c %ringcflags% /DEBUG ring_tilengine.c -I "..\..\extensions\libdepwin\tilengine_x64\include" -I"..\..\language\include"
link %ringldflags% ring_tilengine.obj  ..\..\lib\ring.lib ..\..\extensions\libdepwin\tilengine_x64\lib\tilengine.lib /DLL /OUT:..\..\bin\ring_tilengine.dll
del ring_tilengine.obj
endlocal

