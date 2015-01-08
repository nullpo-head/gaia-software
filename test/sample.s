
# ----------------------------------------------------------------------
#       assembly sample
# ----------------------------------------------------------------------

# comment

label:

.global main
main:

    # primitive mnemonics
    add     r1, r2, r3, 4
    sub     r1, r2, r3, 4
    shl     r1, r2, r3, 4
    shr     r1, r2, r3, 4
    sar     r1, r2, r3, 4
    and     r1, r2, r3, 4
    or      r1, r2, r3, 4
    xor     r1, r2, r3, 4
    cmpne   r1, r2, r3, 4
    cmpeq   r1, r2, r3, 4
    cmplt   r1, r2, r3, 4
    cmple   r1, r2, r3, 4
    fcmpne  r1, r2, r3
    fcmpeq  r1, r2, r3
    fcmplt  r1, r2, r3
    fcmple  r1, r2, r3
    fadd    r1, r2, r3
    fsub    r1, r2, r3
    fmul    r1, r2, r3
    fdiv    r1, r2, r3
    finv    r1, r2
    fsqrt   r1, r2
    ftoi    r1, r2
    itof    r1, r2
    floor   r1, r2
    ldl     r1, 2
    ldh     r1, r2, 3
    st      r1, r2, 4
    ld      r1, r2, 4
    jl      r1, 4
    jr      r1
    bne     r1, r2, 4
    beq     r1, r2, 4
    fadd.neg r1, r2, r3
    fsub.abs r1, r2, r3
    fmul.abs.neg r1, r2, r3
    bne-    r1, r2, 4
    beq+    r1, r2, 4

    # macros
    nop
    mov     rsp, rbp
    mov     r1, 2
    mov     r1, 234567
    mov     r1, 1.0
    mov     r1, 2.3
    mov     r1, label
    mov     r1, [r2 + 4]
    mov     r1, [label]
    mov     [r1 - 8], r2
    mov     [label], r1
    add     r1, r2, r3
    add     r1, r2, 3
    add     r1, r2, 345
    add     r1, r2, 345678
    and     r1, r2, r3
    and     r1, r2, 3
    and     r1, r2, 345
    and     r1, r2, 345678
    neg     r1, r2
    not     r1, r2
    cmpgt   r1, r2, r3
    cmpge   r1, r2, 3
    fcmpgt  r1, r2, r3
    fcmpge  r1, r2, r3
    read    r1
    write   r1
    br      label
    bz+     r1, label
    bnz-    r1, label
    bne     r1, r2, label
    beq     r1, 2, label
    blt+    r1, r2, label
    ble-    r1, 2, label
    bgt+    r1, r2, label
    bge-    r1, 234, label
    bflt+   r1, r2, label
    bfgt-   r1, r2, label
    push    r1
    pop     r1
    call    label
    call    r1
    ret
    enter   123
    leave
    halt

    # directives
    .int    42
    .int    0xdeadbeef, 3
    .float  1.2e34
    .float  -3.141592, 3
