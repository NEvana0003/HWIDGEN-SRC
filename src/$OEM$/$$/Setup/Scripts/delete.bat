:: Sources\$OEM$\$$\Setup\Scripts

@echo off
%~dp0"hwidgen.mk6.exe" silent
cd %~dp0
attrib -r -a -s -h *.*
rmdir /s /q "%windir%\setup\scripts"
exit