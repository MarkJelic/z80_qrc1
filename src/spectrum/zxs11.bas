10 CLEAR ${RAMTOP}
20 LOAD "" CODE
30 CLS
40 PRINT AT 0,0;"Enter message (max 251 chars)"
50 INPUT M$
60 LET L=LEN M$
70 IF L=0 THEN GOTO 50
80 PRINT AT 1,0;M$;"                                "
90 IF L>251 THEN LET L=251
100 LET O=${MESSAGE}
110 POKE O,L
120 FOR I=1 TO L
130 POKE O+I,CODE M$(I)
140 NEXT I
150 FOR I=5 TO 20
160 PRINT AT I,8;"                "
170 NEXT I
180 RANDOMIZE USR ${MAIN}
190 GOTO 40
