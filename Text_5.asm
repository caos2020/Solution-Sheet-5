.586
.MODEL FLAT
INCLUDE io.h
.STACK 4096
.DATA
num1 word ?
num2 word ?
num3 word ?
num4 word ?
sum word ?

prompt1 BYTE  "Enter the number ",0 
val BYTE 40 DUP (?)

dis BYTE "The Result ",0
result BYTE 11 DUP (?)
.code
_MainProc PRoc
  input prompt1 ,val,40
  atod val
  mov num1,ax
   input prompt1 ,val,40
  atod val
  mov num2,ax
 input prompt1 ,val,40
  atod val
  mov num3,ax
   input prompt1 ,val,40
  atod val
  mov num4,ax

   mov ax,num1
  add ax,num2
  add ax,num3
  add ax,num4
  

  dtoa result,eax
  output dis,result
  
  mov bx,4
  cwd 
  idiv bx
 
 
  dtoa result,eax
  output dis,result
  mov ax,0

ret
_MainProc ENDP
END
