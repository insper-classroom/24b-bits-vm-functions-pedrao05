; Inicialização para VM
leaw $Main.main, %A
jmp
nop
pow:
leaw $0,%A
movw %A,%D
leaw $SP,%A
movw (%A),%A
movw %D,(%A)
leaw $SP,%A
movw (%A),%D
incw %D
movw %D,(%A)
;; push constant 1 - 1
leaw $1,%A
movw %A,%D
leaw $SP,%A
movw (%A),%A
movw %D,(%A)
leaw $SP,%A
movw (%A),%D
incw %D
movw %D,(%A)
;; pop local 0 - 2
leaw $SP,%A
movw (%A),%D
decw %D
movw %D,(%A)
leaw $0,%A
movw %A,%D
leaw $LCL,%A
addw (%A),%D,%D
leaw $R15,%A
movw %D,(%A)
leaw $SP,%A
movw (%A),%A
movw (%A),%D
leaw $R15,%A
movw (%A),%A
movw %D,(%A)
; Label
pow.LOOP_START:
;; push argument 1 - 3
leaw $1,%A
movw %A,%D
leaw $ARG,%A
addw (%A),%D,%A
movw (%A),%D
leaw $SP,%A
movw (%A),%A
movw %D,(%A)
leaw $SP,%A
movw (%A),%D
incw %D
movw %D,(%A)
;; push constant 0 - 4
leaw $0,%A
movw %A,%D
leaw $SP,%A
movw (%A),%A
movw %D,(%A)
leaw $SP,%A
movw (%A),%D
incw %D
movw %D,(%A)
;; eq - 5
leaw $SP,%A
movw (%A),%D
decw %D
movw %D,(%A)
movw (%A),%A
movw (%A),%D
leaw $SP,%A
subw (%A),$1,%A
subw (%A),%D,%D
leaw $EQpow1,%A
je %D
nop
leaw $SP,%A
subw (%A),$1,%A
movw $0,(%A)
leaw $EQ2pow1,%A
jmp
nop
EQpow1:
leaw $SP,%A
subw (%A),$1,%A
movw $-1,(%A)
EQ2pow1:
; IF
leaw $SP,%A
movw (%A),%D
decw %D
movw %D,(%A)
movw (%A),%A
movw (%A),%D
leaw $pow.LOOP_END,%A
jne %D
nop
;; push local 0 - 6
leaw $0,%A
movw %A,%D
leaw $LCL,%A
addw (%A),%D,%A
movw (%A),%D
leaw $SP,%A
movw (%A),%A
movw %D,(%A)
leaw $SP,%A
movw (%A),%D
incw %D
movw %D,(%A)
;; push argument 0 - 7
leaw $0,%A
movw %A,%D
leaw $ARG,%A
addw (%A),%D,%A
movw (%A),%D
leaw $SP,%A
movw (%A),%A
movw %D,(%A)
leaw $SP,%A
movw (%A),%D
incw %D
movw %D,(%A)
; chamada de funcao: mult
leaw $mult-ret-13727561,%A
movw %A,%D
leaw $SP,%A
movw (%A),%A
movw %D,(%A)
leaw $SP,%A
movw (%A),%D
incw %D
movw %D,(%A)
leaw $LCL,%A
movw (%A),%D
leaw $SP,%A
movw (%A),%A
movw %D,(%A)
leaw $SP,%A
movw (%A),%D
incw %D
movw %D,(%A)
leaw $ARG,%A
movw (%A),%D
leaw $SP,%A
movw (%A),%A
movw %D,(%A)
leaw $SP,%A
movw (%A),%D
incw %D
movw %D,(%A)
leaw $THIS,%A
movw (%A),%D
leaw $SP,%A
movw (%A),%A
movw %D,(%A)
leaw $SP,%A
movw (%A),%D
incw %D
movw %D,(%A)
leaw $THAT,%A
movw (%A),%D
leaw $SP,%A
movw (%A),%A
movw %D,(%A)
leaw $SP,%A
movw (%A),%D
incw %D
movw %D,(%A)
leaw $7,%A
movw %A,%D
leaw $SP,%A
movw (%A),%A
subw %A,%D,%D
leaw $ARG,%A
movw %D,(%A)
leaw $SP,%A
movw (%A),%D
leaw $LCL,%A
movw %D,(%A)
leaw $mult,%A
jmp
nop
mult-ret-13727561:
;; pop local 0 - 8
leaw $SP,%A
movw (%A),%D
decw %D
movw %D,(%A)
leaw $0,%A
movw %A,%D
leaw $LCL,%A
addw (%A),%D,%D
leaw $R15,%A
movw %D,(%A)
leaw $SP,%A
movw (%A),%A
movw (%A),%D
leaw $R15,%A
movw (%A),%A
movw %D,(%A)
;; push argument 1 - 9
leaw $1,%A
movw %A,%D
leaw $ARG,%A
addw (%A),%D,%A
movw (%A),%D
leaw $SP,%A
movw (%A),%A
movw %D,(%A)
leaw $SP,%A
movw (%A),%D
incw %D
movw %D,(%A)
;; push constant 1 - 10
leaw $1,%A
movw %A,%D
leaw $SP,%A
movw (%A),%A
movw %D,(%A)
leaw $SP,%A
movw (%A),%D
incw %D
movw %D,(%A)
;; sub - 11
leaw $SP,%A
movw (%A),%D
decw %D
movw %D,(%A)
movw (%A),%A
movw (%A),%D
leaw $SP,%A
subw (%A),$1,%A
subw (%A),%D,%D
movw %D,(%A)
;; pop argument 1 - 12
leaw $SP,%A
movw (%A),%D
decw %D
movw %D,(%A)
leaw $1,%A
movw %A,%D
leaw $ARG,%A
addw (%A),%D,%D
leaw $R15,%A
movw %D,(%A)
leaw $SP,%A
movw (%A),%A
movw (%A),%D
leaw $R15,%A
movw (%A),%A
movw %D,(%A)
; Goto Incondicional
leaw $pow.LOOP_START,%A
jmp
nop
; Label
pow.LOOP_END:
;; push local 0 - 13
leaw $0,%A
movw %A,%D
leaw $LCL,%A
addw (%A),%D,%A
movw (%A),%D
leaw $SP,%A
movw (%A),%A
movw %D,(%A)
leaw $SP,%A
movw (%A),%D
incw %D
movw %D,(%A)
; Retorno de função 
leaw $LCL,%A
movw (%A),%D
leaw $R13,%A
movw %D,(%A)
leaw $5,%A
subw %D,%A,%A
movw (%A),%D
leaw $R14,%A
movw %D,(%A)
leaw $ARG,%A
movw (%A),%D
leaw $R15,%A
movw %D,(%A)
leaw $SP,%A
movw (%A),%D
decw %D
movw %D,(%A)
movw %D,%A
movw (%A),%D
leaw $R15,%A
movw (%A),%A
movw %D,(%A)
leaw $ARG,%A
movw (%A),%D
leaw $SP,%A
addw %D,$1,(%A)
leaw $R13,%A
subw (%A),$1,%D
movw %D,(%A)
movw %D,%A
movw (%A),%D
leaw $THAT,%A
movw %D,(%A)
leaw $R13,%A
subw (%A),$1,%D
movw %D,(%A)
movw %D,%A
movw (%A),%D
leaw $THIS,%A
movw %D,(%A)
leaw $R13,%A
subw (%A),$1,%D
movw %D,(%A)
movw %D,%A
movw (%A),%D
leaw $ARG,%A
movw %D,(%A)
leaw $R13,%A
subw (%A),$1,%D
movw %D,(%A)
movw %D,%A
movw (%A),%D
leaw $LCL,%A
movw %D,(%A)
leaw $R14,%A
movw (%A),%A
jmp
nop
mult:
leaw $0,%A
movw %A,%D
leaw $SP,%A
movw (%A),%A
movw %D,(%A)
leaw $SP,%A
movw (%A),%D
incw %D
movw %D,(%A)
leaw $0,%A
movw %A,%D
leaw $SP,%A
movw (%A),%A
movw %D,(%A)
leaw $SP,%A
movw (%A),%D
incw %D
movw %D,(%A)
;; push constant 0 - 14
leaw $0,%A
movw %A,%D
leaw $SP,%A
movw (%A),%A
movw %D,(%A)
leaw $SP,%A
movw (%A),%D
incw %D
movw %D,(%A)
;; pop local 0 - 15
leaw $SP,%A
movw (%A),%D
decw %D
movw %D,(%A)
leaw $0,%A
movw %A,%D
leaw $LCL,%A
addw (%A),%D,%D
leaw $R15,%A
movw %D,(%A)
leaw $SP,%A
movw (%A),%A
movw (%A),%D
leaw $R15,%A
movw (%A),%A
movw %D,(%A)
;; push argument 1 - 16
leaw $1,%A
movw %A,%D
leaw $ARG,%A
addw (%A),%D,%A
movw (%A),%D
leaw $SP,%A
movw (%A),%A
movw %D,(%A)
leaw $SP,%A
movw (%A),%D
incw %D
movw %D,(%A)
;; pop local 1 - 17
leaw $SP,%A
movw (%A),%D
decw %D
movw %D,(%A)
leaw $1,%A
movw %A,%D
leaw $LCL,%A
addw (%A),%D,%D
leaw $R15,%A
movw %D,(%A)
leaw $SP,%A
movw (%A),%A
movw (%A),%D
leaw $R15,%A
movw (%A),%A
movw %D,(%A)
; Label
mult.loop:
;; push constant 0 - 18
leaw $0,%A
movw %A,%D
leaw $SP,%A
movw (%A),%A
movw %D,(%A)
leaw $SP,%A
movw (%A),%D
incw %D
movw %D,(%A)
;; push local 1 - 19
leaw $1,%A
movw %A,%D
leaw $LCL,%A
addw (%A),%D,%A
movw (%A),%D
leaw $SP,%A
movw (%A),%A
movw %D,(%A)
leaw $SP,%A
movw (%A),%D
incw %D
movw %D,(%A)
;; eq - 20
leaw $SP,%A
movw (%A),%D
decw %D
movw %D,(%A)
movw (%A),%A
movw (%A),%D
leaw $SP,%A
subw (%A),$1,%A
subw (%A),%D,%D
leaw $EQmult3,%A
je %D
nop
leaw $SP,%A
subw (%A),$1,%A
movw $0,(%A)
leaw $EQ2mult3,%A
jmp
nop
EQmult3:
leaw $SP,%A
subw (%A),$1,%A
movw $-1,(%A)
EQ2mult3:
; IF
leaw $SP,%A
movw (%A),%D
decw %D
movw %D,(%A)
movw (%A),%A
movw (%A),%D
leaw $mult.end,%A
jne %D
nop
;; push local 0 - 21
leaw $0,%A
movw %A,%D
leaw $LCL,%A
addw (%A),%D,%A
movw (%A),%D
leaw $SP,%A
movw (%A),%A
movw %D,(%A)
leaw $SP,%A
movw (%A),%D
incw %D
movw %D,(%A)
;; push argument 0 - 22
leaw $0,%A
movw %A,%D
leaw $ARG,%A
addw (%A),%D,%A
movw (%A),%D
leaw $SP,%A
movw (%A),%A
movw %D,(%A)
leaw $SP,%A
movw (%A),%D
incw %D
movw %D,(%A)
;; add - 23
leaw $SP,%A
movw (%A),%D
decw %D
movw %D,(%A)
movw (%A),%A
movw (%A),%D
leaw $SP,%A
subw (%A),$1,%A
addw (%A),%D,%D
movw %D,(%A)
;; pop local 0 - 24
leaw $SP,%A
movw (%A),%D
decw %D
movw %D,(%A)
leaw $0,%A
movw %A,%D
leaw $LCL,%A
addw (%A),%D,%D
leaw $R15,%A
movw %D,(%A)
leaw $SP,%A
movw (%A),%A
movw (%A),%D
leaw $R15,%A
movw (%A),%A
movw %D,(%A)
;; push local 1 - 25
leaw $1,%A
movw %A,%D
leaw $LCL,%A
addw (%A),%D,%A
movw (%A),%D
leaw $SP,%A
movw (%A),%A
movw %D,(%A)
leaw $SP,%A
movw (%A),%D
incw %D
movw %D,(%A)
;; push constant 1 - 26
leaw $1,%A
movw %A,%D
leaw $SP,%A
movw (%A),%A
movw %D,(%A)
leaw $SP,%A
movw (%A),%D
incw %D
movw %D,(%A)
;; sub - 27
leaw $SP,%A
movw (%A),%D
decw %D
movw %D,(%A)
movw (%A),%A
movw (%A),%D
leaw $SP,%A
subw (%A),$1,%A
subw (%A),%D,%D
movw %D,(%A)
;; pop local 1 - 28
leaw $SP,%A
movw (%A),%D
decw %D
movw %D,(%A)
leaw $1,%A
movw %A,%D
leaw $LCL,%A
addw (%A),%D,%D
leaw $R15,%A
movw %D,(%A)
leaw $SP,%A
movw (%A),%A
movw (%A),%D
leaw $R15,%A
movw (%A),%A
movw %D,(%A)
; Goto Incondicional
leaw $mult.loop,%A
jmp
nop
; Label
mult.end:
;; push local 0 - 29
leaw $0,%A
movw %A,%D
leaw $LCL,%A
addw (%A),%D,%A
movw (%A),%D
leaw $SP,%A
movw (%A),%A
movw %D,(%A)
leaw $SP,%A
movw (%A),%D
incw %D
movw %D,(%A)
; Retorno de função 
leaw $LCL,%A
movw (%A),%D
leaw $R13,%A
movw %D,(%A)
leaw $5,%A
subw %D,%A,%A
movw (%A),%D
leaw $R14,%A
movw %D,(%A)
leaw $ARG,%A
movw (%A),%D
leaw $R15,%A
movw %D,(%A)
leaw $SP,%A
movw (%A),%D
decw %D
movw %D,(%A)
movw %D,%A
movw (%A),%D
leaw $R15,%A
movw (%A),%A
movw %D,(%A)
leaw $ARG,%A
movw (%A),%D
leaw $SP,%A
addw %D,$1,(%A)
leaw $R13,%A
subw (%A),$1,%D
movw %D,(%A)
movw %D,%A
movw (%A),%D
leaw $THAT,%A
movw %D,(%A)
leaw $R13,%A
subw (%A),$1,%D
movw %D,(%A)
movw %D,%A
movw (%A),%D
leaw $THIS,%A
movw %D,(%A)
leaw $R13,%A
subw (%A),$1,%D
movw %D,(%A)
movw %D,%A
movw (%A),%D
leaw $ARG,%A
movw %D,(%A)
leaw $R13,%A
subw (%A),$1,%D
movw %D,(%A)
movw %D,%A
movw (%A),%D
leaw $LCL,%A
movw %D,(%A)
leaw $R14,%A
movw (%A),%A
jmp
nop
Main.main:
;; push temp 0 - 30
leaw $5,%A
movw (%A),%D
leaw $SP,%A
movw (%A),%A
movw %D,(%A)
leaw $SP,%A
movw (%A),%D
incw %D
movw %D,(%A)
;; push temp 1 - 31
leaw $6,%A
movw (%A),%D
leaw $SP,%A
movw (%A),%A
movw %D,(%A)
leaw $SP,%A
movw (%A),%D
incw %D
movw %D,(%A)
; chamada de funcao: pow
leaw $pow-ret-26542101,%A
movw %A,%D
leaw $SP,%A
movw (%A),%A
movw %D,(%A)
leaw $SP,%A
movw (%A),%D
incw %D
movw %D,(%A)
leaw $LCL,%A
movw (%A),%D
leaw $SP,%A
movw (%A),%A
movw %D,(%A)
leaw $SP,%A
movw (%A),%D
incw %D
movw %D,(%A)
leaw $ARG,%A
movw (%A),%D
leaw $SP,%A
movw (%A),%A
movw %D,(%A)
leaw $SP,%A
movw (%A),%D
incw %D
movw %D,(%A)
leaw $THIS,%A
movw (%A),%D
leaw $SP,%A
movw (%A),%A
movw %D,(%A)
leaw $SP,%A
movw (%A),%D
incw %D
movw %D,(%A)
leaw $THAT,%A
movw (%A),%D
leaw $SP,%A
movw (%A),%A
movw %D,(%A)
leaw $SP,%A
movw (%A),%D
incw %D
movw %D,(%A)
leaw $7,%A
movw %A,%D
leaw $SP,%A
movw (%A),%A
subw %A,%D,%D
leaw $ARG,%A
movw %D,(%A)
leaw $SP,%A
movw (%A),%D
leaw $LCL,%A
movw %D,(%A)
leaw $pow,%A
jmp
nop
pow-ret-26542101:
;; pop temp 2 - 32
leaw $SP,%A
movw (%A),%D
decw %D
movw %D,(%A)
movw (%A),%A
movw (%A),%D
leaw $7,%A
movw %D,(%A)
; Label
Main.while:
; Goto Incondicional
leaw $Main.while,%A
jmp
nop
