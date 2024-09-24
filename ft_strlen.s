global ft_strlen

ft_strlen:
    mov rax, 0
    jmp cnt_char

cnt_char:
    cmp BYTE [rdi + rax], 0 ; rdi pointe vers le premier char de la chaine de caractère
    je  exit
    inc rax
    jmp cnt_char

exit:
    ret ; //Renvoie rax

section .note.GNU-stack noalloc noexec nowrite progbits
;Désactive la "pile executable" pour suppr un warning du compilateur