.586
.model flat
.stack 4096
include io.h
.data
prompt1 BYTE  "Enter the number ",0
mes   byte   "The Result",0

res  dword ?
num1 dword ?
num2 dword ?
num3 dword ?
mu    dword 2
sum   dword ?
multi dword ?
.code
_MainProc PRoc
  input prompt1 ,num1,40
  atod num1
  mov res ,eax
  input prompt1 ,num2,40
  atod num2
  add eax ,res
  mov sum,eax
  input prompt1 ,num3,40
  atod num3
  mul mu
  mov multi,eax
  mov eax ,sum
  sub eax ,multi
  inc eax
  neg eax
  dtoa sum  ,eax
  output mes ,sum

ret
_MainProc ENDP
END
