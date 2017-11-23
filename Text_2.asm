.586
.MODEL FLAT
INCLUDE io.h
.STACK 4096
.DATA
x dword ?
y dword ?
z dword ?

prompt1 BYTE  "Enter the Values ",0 
val BYTE 40 DUP (?)


dis BYTE "The Result ",0
result BYTE 11 DUP (?)


.code
_MainProc PRoc
  input prompt1 ,val,40
  atod val
  mov x,eax
   input prompt1 ,val,40
  atod val
  mov y,eax
  input prompt1 ,val,40
  atod val
  mov z,eax
 
  mov eax,x
  add eax,y
  imul eax,2
  add eax,z
  
  
  dtoa result,eax
  output dis,result
  mov eax,0

ret
_MainProc ENDP
END
