'programma con sensori qrb1134 e subroutines 7/10/11
'aggiunta microswitch 10/10/11

gosub fermo
pause 1000
do
 if pin3=0 then
  gosub avanti
 else
  gosub fermo
  pause 1000
  gosub indietro 
  pause 1500
  gosub destra
  pause 1000
 end if 
loop

'subroutines motori 

avanti:
 high 1 low 0 
 high 2 low 4
return

indietro:
 high 0 low 1
 high 4 low 2
return

destra: 
 high 0 low 1 
 high 2 low 4
return

sinistra:
 high 1 low 0
 high 4 low 2
return

fermo:
 low 1 low 0 
 low 2 low 4
return
