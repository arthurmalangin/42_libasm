global ft_strcpy

ft_strcpy:
    mov rax, 0
    jmp cpy_src


cpy_src:
    cmp BYTE [rdi + rax], 0 ; rdi pointe vers le premier char de la chaine de caractère
    mov r10b, BYTE [rdi + rax] ; r10b car on deplace octet par octet, le registre r10 fait 8 octets donc il y'aura l'erreur: mismatch in operand sizes
    mov BYTE [rsi + rax], r10b
    je  exit
    inc rax
    jmp cpy_src

exit:
    mov rax, rsi ; comme ret renvoie FORCEMENT RAX, on définit rax à rsi
    ret ; //Renvoie rax

section .note.GNU-stack noalloc noexec nowrite progbits
;Désactive la "pile executable" pour suppr un warning du compilateur