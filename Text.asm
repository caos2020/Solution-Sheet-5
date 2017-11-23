.586
.MODEL FLAT
INCLUDE io.h
.STACK 4096
.DATA
l dword ?
w dword ?

prompt1 BYTE  "Enter the length ",0 
val BYTE 40 DUP (?)
prompt2 BYTE  "Enter the Width ",0 

dis BYTE "The Result ",0
result BYTE 11 DUP (?)


.code
_MainProc PRoc
  input prompt1 ,val,40
  atod val
  mov l,eax
   input prompt2 ,val,40
  atod val
  mov w,eax
 
  mov eax,l
  add eax,w
  imul eax,2
  
  
  dtoa result,eax
  output dis,result
  mov eax,0

ret
_MainProc ENDP
END
