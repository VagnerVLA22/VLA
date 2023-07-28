i = 254
CLR = 1
LINE1 = 128
LINE2 = 192
CLS
OPEN "COM1:2400,N,8,1,CD0,CS0,DS0" FOR OUTPUT AS #1
PRINT #1, CHR$(254), 255; CHR$(1);
ini:
PRINT #1, CHR$(254); CHR$(1); "velocidade="; "                               solda tig:";
count = 0
DO
i$ = INKEY$
IF i$ = "+" THEN count1 = count1 + 1
IF i$ = "-" THEN count1 = count1 - 1
FOR x = 1 TO 20000: NEXT
IF count = 1000 THEN count = 0
PRINT #1, ; CHR$(254); CHR$(LINE1 + 12); count1; "";
IF count = 100 THEN LINE1 = 128
IF UCASE$(x$) = "F" THEN END
LOOP UNTIL i$ = CHR$(13)
PRINT #1, CHR$(254); CHR$(1); "M1com Solda="; "";
DO
i$ = INKEY$
IF i$ = "+" THEN count2 = count2 + 1
IF i$ = "-" THEN count2 = count2 - 1
FOR x = 1 TO 20000: NEXT
IF count = 1000 THEN count = 0
PRINT #1, ; CHR$(254); CHR$(LINE1 + 12); count2; "";
IF count = 100 THEN LINE1 = 128
IF UCASE$(x$) = "F" THEN END
LOOP UNTIL i$ = CHR$(13)
PRINT #1, CHR$(254); CHR$(1); "Msem solda="; "";
DO
i$ = INKEY$
IF i$ = "+" THEN count3 = count3 + 1
IF i$ = "-" THEN count3 = count3 - 1
FOR x = 1 TO 20000: NEXT
IF count = 1000 THEN count = 0
PRINT #1, ; CHR$(254); CHR$(LINE1 + 12); count3; "";
IF count = 100 THEN LINE1 = 128
IF UCASE$(x$) = "F" THEN END
LOOP UNTIL i$ = CHR$(13)
PRINT #1, CHR$(254); CHR$(1); "M2com Solda="; "";
DO
i$ = INKEY$
IF i$ = "+" THEN count4 = count4 + 1
IF i$ = "-" THEN count4 = count4 - 1
FOR x = 1 TO 20000: NEXT
IF count = 1000 THEN count = 0
PRINT #1, ; CHR$(254); CHR$(LINE1 + 12); count4; "";
IF count = 100 THEN LINE1 = 128
IF UCASE$(x$) = "F" THEN END
LOOP UNTIL i$ = CHR$(13)
GOTO ini

