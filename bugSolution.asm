mov eax, [ebp+8]
cmp eax, [ebp-4+10] ;check for potential buffer overflow
je overflow_handler ;jump to overflow handler if buffer is overflowed
add eax, 10
mov [ebp-4], eax
jmp end_of_code
overflow_handler:
;handle overflow error
end_of_code: