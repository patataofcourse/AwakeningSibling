.arm.little

.ifdef eu
    .open "code.eu.bin", "edited.eu.bin", 0x00100000
    .definelabel always_true, 0x0022fc50
    .definelabel check_func, 0x002b6070
.elseifdef us
    .open "code.us.bin", "edited.us.bin", 0x00100000
    .definelabel always_true, 0x0022f3d4
    .definelabel check_func, 0x002b5b88
.else
    .ifdef jp
        .error "JP not supported yet, contact patataofcourse#5556 for help"
    .elseifdef kr
        .error "KR not supported yet, contact patataofcourse#5556 for help"
    .else
        .error "You must define the region!"
    .endif

    ; avoid a shitton more errors
    .open "README.md", "_", 0
    .definelabel always_true, 0
    .definelabel check_func, 0
.endif

check_ret_a     equ check_func + 0x14
check_ret_b     equ check_func + 0x1c

.org always_true
    mov r0, #1

.org check_func
    cmpne r3, #0
    beq check_ret_b
    cmp r1, r3
    beq check_ret_a
    b check_ret_b

.close