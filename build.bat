@echo off

set CommonCompilerFlags=-Od -FC -GR- -Oi -MP -WL -Z7 -nologo -EHsc -Fobin/ 
set CommonLinkerFlags=-incremental:no -opt:ref "User32.lib" "Gdi32.lib" "kernel32.lib" "ws2_32.lib" "winmm.lib"

cl %CommonCompilerFlags% enet_test.cpp /Febin/enet_test /Fdbin/enet_test /link %CommonLinkerFlags%
echo done.
