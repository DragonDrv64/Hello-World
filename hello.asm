section .rodata
    msg db "Hello, World!", 0x0A
    len equ $ - msg

section .text
    global _start

_start:
    mov rax, 1        ; syscall: sys_write
    mov rdi, 1        ; file descriptor: stdout
    mov rsi, msg      ; endereço da string
    mov rdx, len      ; tamanho da string
    syscall

    exit:
      mov rax, 60       ; syscall: sys_exit
      xor rdi, rdi      ; código de saída 0
      syscall
    
    call exit
