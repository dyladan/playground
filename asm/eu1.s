section  .text
global   _start

_start:
   xor   edx,edx

   mov   eax,3
   loop1:
      add   edx,eax
      add   eax,3
      cmp   eax,999
      jne   loop1

   mov   eax,5
   loop2:

      add   edx,eax
      add   eax,15
      cmp   eax,999
      jge    loop2

   mov   eax,10
   loop3:
      add   edx,eax
      add   eax,15
      cmp   eax,999
      jge    loop3

