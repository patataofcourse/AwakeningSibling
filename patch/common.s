.arm.little

.open "code." + region + ".bin", "edited." + region + ".bin", 0x00100000

check_ret_a equ check_func + 0x14
check_ret_b equ check_func + 0x1c

.org always_true
    mov r0, #1

.org check_func
    cmpne r3, #0
    beq check_ret_b
    cmp r1, r3
    beq check_ret_a
    b check_ret_b

.close