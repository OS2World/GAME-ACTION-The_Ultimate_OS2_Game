# IBM Developer's Workframe/2 Make File Creation run at 17:18:32 on 03/17/93

# Make File Creation run in directory:
#   C:\GAME\VOL1N8;

.SUFFIXES:

.SUFFIXES: .c .rc

ALL: GAME.EXE \
     game.RES

game.exe:  \
  bitmap.OBJ \
  dialog.res \
  files.OBJ \
  game.OBJ \
  game.RES \
  hexes.OBJ \
  mech.OBJ \
  menu.OBJ \
  target.OBJ \
  terrain.OBJ \
  window.OBJ \
  GAME.MAK
   @REM @<<GAME.@0
     /CO /ST:8192 /NOL /BAT /PM:PM +
     bitmap.OBJ +
     files.OBJ +
     game.OBJ +
     hexes.OBJ +
     mech.OBJ +
     menu.OBJ +
     target.OBJ +
     terrain.OBJ +
     window.OBJ
     game.exe
     
     
     ;
<<
   LINK386.EXE @GAME.@0
   RC dialog.res game.exe
   RC game.RES game.exe

{.}.rc.res:
   RC -r .\$*.RC

{.}.c.obj:
   ICC.EXE /Ss /Q /Kbcap /V"Volume 1, Issue 8" /Ti /O /Gm /Gs /C .\$*.c

!include GAME.DEP
