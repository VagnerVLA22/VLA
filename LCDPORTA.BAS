CLS
OPEN "COM1:9600,N,8,1,CD0,CS0,DS0" FOR OUTPUT AS #1
PRINT #1, CHR$(13);
PRINT #1, CHR$(254); CHR$(1);
PRINT #1, CHR$(254); CHR$(12);
SLEEP 1
PRINT #1, CHR$(254); CHR$(253); CHR$(8);
b! = 6
DO
i$ = INKEY$
IF b! < 1 THEN b! = 1
IF b! > 15 THEN b! = 15
PRINT #1, CHR$(254); CHR$(253); CHR$(b!);
IF i$ = "+" THEN b! = b! + 1
IF i$ = "-" THEN b! = b! - 1
porten! = INP(890)
porten2! = INP(889)
PRINT #1, CHR$(254); CHR$(128); "porta (890)"; porten!; "";
PRINT #1, CHR$(254); CHR$(168); "porta (889)"; porten2!; "";
LOOP



