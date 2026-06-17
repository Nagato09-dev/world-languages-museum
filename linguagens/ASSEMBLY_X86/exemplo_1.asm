section .data
  msg db "Olá Mundo", 0xA
section .text
  global _start
_start:
  mov eax, 4
  mov ebx, 1
  mov ecx, msg
  mov edx, 11
  int 0x80
  mov eax, 1
  xor ebx, ebx
  int 0x80