
include 'emu8086.inc'

org 100h


CALL SCAN_NUM
PRINTN ""
MOV AX,CX

NUM DW ?
MOV NUM,AX

TWO DW ?
MOV TWO,2
DIV TWO 

MOV CHECK, AX
;CALL PRINT_NUM

CHECK DW ?
VAR DW ?
FLAG DW ?

MOV VAR,2


 
MOV BX,VAR 
MOV AX,NUM

CMP AX,BX
JMP TWOIS


FOR:
MOV AX,NUM
;CALL PRINT_NUM 
MOV DX,0

DIV BX

CMP DX,0
JE EQUAL 

INC BX
CMP BX,CHECK
JLE FOR
JMP PP


EQUAL:
PRINT "NOT PRIME"
JMP STOP

PP:
MOV AX,NUM
CMP BX,AX
JE PRIME 

PRIME:
PRINTN "PRIME"
JMP STOP

TWOIS:
PRINTN "PRIME"
JMP STOP

STOP:

ret

DEFINE_SCAN_NUM
DEFINE_PRINT_NUM
DEFINE_PRINT_NUM_UNS
DEFINE_PTHIS
END



