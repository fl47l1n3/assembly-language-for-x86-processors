TITLE Шаблон программы

INCLUDE Irvine32.inc

.data
val1    WORD    1000h
val2    WORD    2000h
arrayB  BYTE    10h,20h,30h,40h,50h
arrayW  WORD    100h,200h,300h
arrayD  DWORD   10000h,20000h

.code
main PROC

; MOVZX
mov     bx,0A69Bh
movzx   eax,bx      ; EAX = 0000A68Bh
movzx   edx,bl      ; EDX = 0000009Bh
movzx   cx,bl       ; CX = 009Bh

; MOVSX
mov     bx,0A69Bh
movsx   eax,bx      ; EAX = FFFFA68Bh
movsx   edx,bl      ; EDX = FFFFFF9Bh
movsx   cx,bl       ; CX = FF9Bh

; Обмен содержимого двух ячеек памяти
mov     ax,val1     ; AX = 1000h
xchg    ax,val2     ; AX = 2000h, val2 = 1000h
mov     val1,ax     ; val1 = 2000h, val2 = 1000h

; Адресация с непосредственно заданным смещением
mov     al,[arrayB]     ; AL = 10h
mov     al,[arrayB+1]   ; AL = 20h
mov     al,[arrayB+2]   ; AL = 30h

mov     ax,[arrayW]     ; AX = 100h
mov     ax,[arrayW+2]   ; AX = 200h

mov     eax,[arrayD]    ; EAX = 10000h
mov     eax,[arrayD+4]  ; EAX = 20000h

exit
main ENDP

END main
