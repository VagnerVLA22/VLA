                                                                                                        WIDTH 40
OPEN "COM1:9600,N,8,1,CD0,CS0,DS0" FOR OUTPUT AS #1
PRINT #1, ; CHR$(13);
PRINT #1, ; CHR$(254); CHR$(1);
PRINT #1, ; CHR$(254); CHR$(12);
PRINT #1, ; CHR$(254); CHR$(253); CHR$(5);
CLS
velh! = 100
    dvag! = 0
    acc! = 37660

OPEN "TESTE.TXT" FOR INPUT AS #2
       INPUT #2, vell!
      INPUT #2, rotac!
     INPUT #2, continu!
    INPUT #2, continu2!
   INPUT #2, delay!
  INPUT #2, contb!
 CLOSE #2
 GOTO part2
inic:
FOR y = 1 TO 200000: NEXT
CLS
LOCATE 11, 11: PRINT "FERRAMENTARIA FERRAVE"
                DO
                i$ = INKEY$
                OUT 888, 0
                entr! = INP(890)
                entr2! = INP(889)
FOR x = 1 TO 150000: NEXT
PRINT #1, ; CHR$(254); CHR$(1);
FOR x = 1 TO 150000: NEXT
PRINT #1, ; CHR$(254); CHR$(128); "!!!EMERGENCIA!!!";
PRINT #1, ; CHR$(254); CHR$(168); "****ACIONADA*****";
                IF i$ = CHR$(27) OR entr2! = 40 THEN GOTO zeramaq
                LOOP UNTIL entr! < 14
z = 128
FOR z = 128 TO 144
PRINT #1, ; CHR$(254); CHR$(z); "0";
PRINT #1, ; CHR$(254); CHR$(z + 40); "0";
NEXT
FOR y = 1 TO 200000: NEXT
'novo parametro

DO
entr! = INP(890)
entr2! = INP(889)
FOR x = 1 TO 50000: NEXT
'IF entr! = 12 THEN GOTO inic
i$ = INKEY$
IF entr2! = 136 THEN delay! = delay! + 10000
IF entr2! = 56 THEN delay! = delay! - 10000
IF delay! < 10000 THEN delay! = 10000
IF delay! > 1000000 THEN delay! = 1000000
PRINT #1, ; CHR$(254); CHR$(128); "PARAMETRO=(0)___";
PRINT #1, ; CHR$(254); CHR$(168); "DELAY----->"; delay! / 10000; "  ";
IF entr2! = 152 THEN GOTO part2
LOOP UNTIL i$ = CHR$(13) OR entr2! = 40
z = 128
FOR z = 128 TO 144
PRINT #1, ; CHR$(254); CHR$(z); "1";
PRINT #1, ; CHR$(254); CHR$(z + 39); "1";
NEXT
FOR y = 1 TO 200000: NEXT

DO
entr! = INP(890)
entr2! = INP(889)
FOR x = 1 TO 50000: NEXT
'IF entr! = 12 THEN GOTO inic
i$ = INKEY$
IF entr2! = 136 THEN vell! = vell! + 10
IF entr2! = 56 THEN vell! = vell! - 10
IF entr2! = 200 THEN vell! = vell! + 1
IF entr2! = 72 THEN vell! = vell! - 1
IF vell! < 10 THEN vell! = 10
IF vell! > 100 THEN vell! = 100
PRINT #1, ; CHR$(254); CHR$(128); "PARAMETRO=(1)___";
PRINT #1, ; CHR$(254); CHR$(168); "VELOCIDADE->"; vell!; " ";
IF entr2! = 152 THEN GOTO part2
LOOP UNTIL i$ = CHR$(13) OR entr2! = 40
z = 128
FOR z = 128 TO 144
PRINT #1, ; CHR$(254); CHR$(z); "2";
PRINT #1, ; CHR$(254); CHR$(z + 39); "2";
NEXT
FOR y = 1 TO 200000: NEXT
DO
entr! = INP(890)
entr2! = INP(889)
FOR x = 1 TO 50000: NEXT
'IF entr! = 12 THEN GOTO inic
i$ = INKEY$
IF entr2! = 136 THEN rotac! = rotac! + 10
IF entr2! = 56 THEN rotac! = rotac! - 10
IF entr2! = 200 THEN rotac! = rotac! + 1
IF entr2! = 72 THEN rotac! = rotac! - 1
PRINT #1, ; CHR$(254); CHR$(128); "PARAMETRO==(2)__";
PRINT #1, ; CHR$(254); CHR$(168); "MM C/SOLDA->"; rotac!; " ";
IF entr2! = 152 THEN GOTO part2
LOOP UNTIL i$ = CHR$(13) OR entr2! = 40
z = 128
FOR z = 128 TO 144
PRINT #1, ; CHR$(254); CHR$(z); "3";
PRINT #1, ; CHR$(254); CHR$(z + 39); "3";
NEXT
FOR y = 1 TO 200000: NEXT

DO
entr! = INP(890)
entr2! = INP(889)
FOR x = 1 TO 50000: NEXT
'IF entr! = 12 THEN GOTO inic
i$ = INKEY$
IF entr2! = 136 THEN continu! = continu! + 10
IF entr2! = 56 THEN continu! = continu! - 10
IF entr2! = 200 THEN continu! = continu! + 1
IF entr2! = 72 THEN continu! = continu! - 1
PRINT #1, ; CHR$(254); CHR$(128); "PARAMETRO===(3)_";
PRINT #1, ; CHR$(254); CHR$(168); "MM S/SOLDA->"; continu!; " ";
IF entr2! = 152 THEN GOTO part2
LOOP UNTIL i$ = CHR$(13) OR entr2! = 40
z = 128
FOR z = 128 TO 144
PRINT #1, ; CHR$(254); CHR$(z); "4";
PRINT #1, ; CHR$(254); CHR$(z + 39); "4";
NEXT
FOR y = 1 TO 200000: NEXT
DO
entr! = INP(890)
entr2! = INP(889)
FOR x = 1 TO 50000: NEXT
'IF entr! = 12 THEN GOTO inic
i$ = INKEY$
IF entr2! = 136 THEN continu2! = continu2! + 10
IF entr2! = 56 THEN continu2! = continu2! - 10
IF entr2! = 200 THEN continu2! = continu2! + 1
IF entr2! = 72 THEN continu2! = continu2! - 1

IF i$ = CHR$(27) OR entr2! = 152 THEN GOTO inic
PRINT #1, ; CHR$(254); CHR$(128); "PARAMETRO====(4)";
PRINT #1, ; CHR$(254); CHR$(168); "MM C/SOLDA->"; continu2!; " ";
IF entr2! = 152 THEN GOTO part2
LOOP UNTIL i$ = CHR$(13) OR entr2! = 40
PRINT #1, CHR$(254); CHR$(1);


part2:
       IF vell! < 10 THEN GOTO inic
       IF rotac! < 5 THEN GOTO inic
       IF continu! < 0 THEN continu! = 0
       IF continu2! < 0 THEN continu2! = 0

OPEN "TESTE.TXT" FOR OUTPUT AS #2
     PRINT #2, vell!
      PRINT #2, rotac!
       PRINT #2, continu!
        PRINT #2, continu2!
         PRINT #2, delay!
          PRINT #2, contb!
        CLOSE #2

conta! = 0
retorno! = 1
acc2! = 100
dzac! = 0
dvag! = 1

PRINT #1, CHR$(254); CHR$(1);
DO
i$ = INKEY$
entr! = INP(890)
entr2! = INP(889)
IF entr2! = 168 THEN contb! = 0
IF entr2! = 56 THEN GOTO solda4
PRINT #1, ; CHR$(254); CHR$(128); "Bi.Manual/Inicia";
PRINT #1, ; CHR$(254); CHR$(168); ; "Prod.=("; contb!; ")";
IF i$ = CHR$(27) OR entr2! = 152 THEN GOTO zeramaq
LOOP UNTIL i$ = CHR$(13) OR entr2! = 184
PRINT #1, ; CHR$(254); CHR$(1);
PRINT #1, ; CHR$(254); CHR$(128); "Soldando.......";
FOR z = 168 TO 184
PRINT #1, ; CHR$(254); CHR$(z); CHR$(255);
NEXT
OUT 888, 32
FOR x = 1 TO delay!: NEXT
                  r! = 0
                 acl! = 2000
                 dvag! = 0
DO
entr2! = INP(889)
LOCATE 10, 10: PRINT dvag!
                  dvag! = dvag! + .022
                  entr! = INP(890)
                  IF acl! < 0 THEN acl! = 0
                  acl! = acl! - 35
                  FOR atraso! = 1 TO acl!: NEXT
'IF entr! = 12 THEN GOTO inic
conta! = conta! + 1
 i$ = INKEY$
     OUT 888, 160
      FOR x = 1 TO acc! / vell! + dvag!: NEXT
      OUT 888, 32
      FOR x1 = 1 TO acc! / vell! + dvag!: NEXT
           LOOP UNTIL conta! > rotac! * 21.1 OR entr2! = 88
          OUT 888, 0

solda2:
IF continu! <= 1 THEN GOTO solda4
IF continu2! <= 1 THEN GOTO solda4
lentd! = 30
dvag! = 1
DO
entr! = INP(890)
'IF entr! = 12 THEN GOTO inic
conta! = conta! + 1
acc2! = acc2! - 1
IF acc2! < -100 THEN acc2! = -100
IF rotac! * 21.1 + continu! * 21.1 - conta! < 60 THEN dvag! = dvag! + 15
 i$ = INKEY$
     OUT 888, 128
      FOR x = 1 TO acc! / velh! + acc2! + dvag!: NEXT
       OUT 888, 0
      FOR x1 = 1 TO acc! / velh! + acc2! + dvag!: NEXT
           LOOP UNTIL conta! > rotac! * 21.1 + continu! * 21.1
      
solda3:
IF continu2! <= 1 THEN GOTO solda4
OUT 888, 32
FOR x = 1 TO delay!: NEXT
                   acl! = 2000
DO
                 
                 ' IF acl! < 0 THEN acl! = 0
                 ' acl! = acl! - 35
                 ' FOR atraso! = 1 TO acl!: NEXT

entr! = INP(890)
'IF entr! = 12 THEN GOTO inic
conta! = conta! + 1
 i$ = INKEY$
     OUT 888, 160
      FOR x = 1 TO acc! / vell!: NEXT
      OUT 888, 32
      FOR x1 = 1 TO acc! / vell!: NEXT
           LOOP UNTIL conta! > rotac! * 21.1 + continu! * 21.1 + continu2! * 21.1
            OUT 888, 0
            

solda4:
SLEEP 1
IF r! = 0 THEN contb! = contb! + 1
FOR x = 1 TO delay! / 4: NEXT
PRINT #1, ; CHR$(254); CHR$(1);
PRINT #1, ; CHR$(254); CHR$(128); ; "Retornando..";
r! = 1
troca:
DO
retorno! = retorno! - 1
IF retorno! < -220 THEN retorno! = -220
entr2! = INP(889)
entr! = INP(890)
'IF entr! = 12 THEN GOTO inic
conta! = conta! - 1
IF conta! < -3163 THEN dzac! = dzac! + 10
  i$ = INKEY$
     OUT 888, 64
      FOR x = 1 TO acc! / velh! + dzac! + retorno!: NEXT
       OUT 888, 0
      FOR x1 = 1 TO acc! / velh! + dzac! + retorno!: NEXT
          LOOP UNTIL entr2! = 248 OR conta! < -3193
         SLEEP 1

PRINT #1, ; CHR$(254); CHR$(1);
PRINT #1, ; CHR$(254); CHR$(128); "retornar ao zero";
PRINT #1, ; CHR$(254); CHR$(168); "qualquer tecla";

DO
i$ = INKEY$
entr2! = INP(889)
FOR x = 1 TO 10000: NEXT
LOOP UNTIL entr2! <> 120 OR i$ = CHR$(27)
SLEEP 1
dvag! = 330
DO
entr! = INP(890)
'IF entr! = 12 THEN GOTO inic
conta! = conta! + 1
acc2! = acc2! - 5
IF acc2! < -550 THEN acc2! = -550
IF conta! > -30 THEN dvag! = dvag! + 10
 i$ = INKEY$
     OUT 888, 128
      FOR x = 1 TO acc! / velh! + acc2! + dvag!: NEXT
       OUT 888, 0
      FOR x1 = 1 TO acc! / velh! + acc2! + dvag!: NEXT
           LOOP UNTIL conta! > -1
          GOTO part2
          SLEEP 1
              
zeramaq:
PRINT #1, ; CHR$(254); CHR$(1);
PRINT #1, ; CHR$(254); CHR$(131); "ZERAMENTO";
PRINT #1, ; CHR$(254); CHR$(170); "MESA MANUAL";
speed! = 350
DO
LOCATE 12, 10: PRINT "MM"; INT(conta! * .047);
i$ = INKEY$
entr2! = INP(889)
  IF entr2! = 56 THEN conta! = conta! - 1
  IF entr2! = 136 THEN conta! = conta! + 1
IF entr2! = 72 THEN speed! = speed! + 50
IF entr2! = 200 THEN speed! = speed! - 50
IF speed! < 350 THEN speed! = 350
IF speed! > 1200 THEN speed! = 1200
  
   FOR x = 1 TO speed!: NEXT
IF entr2! = 56 THEN OUT 888, 64
IF entr2! = 136 THEN OUT 888, 128
   FOR x1 = 1 TO speed!: NEXT

OUT 888, 0
IF i$ = CHR$(27) THEN END
IF entr2! = 184 THEN GOTO inic
IF i$ = CHR$(13) OR entr2! = 40 THEN GOTO part2
LOOP

