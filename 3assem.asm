format ELF64

public findigit

section '.findigit' executable
findigit: 
        mov rcx, rdi               ;ukazatel' na 1 element -> rcx
        mov rbx, rsi               ;kolichestvo iteratsii tsikla iter
        mov rax, [rcx]             ;1 element stanovitsya max/min 
        .iter:
                xor r10, r10
                mov r10, [rcx]     ;hranit tekuchshit element massiva
                
                cmp rdx, 0x1       ;yesli rdx=1, to ichshem max, inache min
                je .greater

                cmp r10, rax
                jl .main
                jmp .end 
        .greater: 
                cmp r10, rax
                jg .main
                jmp .end
        .main:
                mov rax, r10       ;vypolnyaet perezapis max/min elementa
        .end:
                add rcx, 8         ;peremechshayem ukazatel' na sled element
                dec rbx 
                jnz .iter 
        ret