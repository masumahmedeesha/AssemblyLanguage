
include 'emu8086.inc'

org 100h

CALL SCAN_NUM
PRINTN ""
MOV AX,CX
 
CALL SCAN_NUM
PRINTN ""

HCF DW ?


NUM1 DW ?
NUM2 DW ?

MOV NUM1, AX
MOV NUM2, CX

GCD:     

MOV BX,CX
MOV DX,0
DIV CX
MOV CX, DX
MOV AX,BX

CMP CX,0
JNE GCD


CALL PRINT_NUM
PRINT " is GCD"

MOV HCF, AX


MOV CX, NUM2
MOV AX, NUM1
MUL CX
MOV DX,0
DIV HCF

PRINTN ""
CALL PRINT_NUM
PRINT " is LCM"
JMP stop



stop:

ret

DEFINE_SCAN_NUM
DEFINE_PRINT_NUM
DEFINE_PRINT_NUM_UNS
END



