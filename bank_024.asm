; Disassembly of "bluekaizo.gb"
; This file was created with:
; mgbdis v1.4 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

SECTION "ROM Bank $024", ROMX[$4000], BANK[$24]

    nop
    sub [hl]
    and a
    xor [hl]
    and b
    rst $20
    ld c, a
    sbc b
    xor [hl]
    or h
    ld a, a
    or d
    xor a
    and b
    or c
    xor d
    ld a, a
    xor a
    xor e
    or h
    and [hl]
    rst $20
    ld e, b
    nop
    sub [hl]
    and h
    xor e
    xor e
    db $f4
    ld a, a
    and c
    and h
    or e
    or e
    and h
    or c
    ld a, a
    and [hl]
    and h
    or e
    ld c, a
    and c
    and b
    and d
    xor d
    ld a, a
    or e
    xor [hl]
    ld a, a
    or [hl]
    xor [hl]
    or c
    xor d
    add sp, $57
    nop
    adc h
    cp b
    ld a, a
    ld d, h
    adc h
    adc [hl]
    adc l
    ld a, a
    or d
    and a
    xor [hl]
    or h
    xor e
    and e
    ld c, a
    and c
    and h
    ld a, a
    or c
    and h
    and b
    and e
    cp b
    ld a, a
    and c
    cp b
    ld a, a
    xor l
    xor [hl]
    or [hl]
    rst $20
    ld d, a
    nop
    sub e
    xor [hl]
    xor [hl]
    ld c, a
    xor h
    or h
    and d
    and a
    db $f4
    ld a, a
    or e
    xor [hl]
    xor [hl]
    ld a, a
    cp b
    xor [hl]
    or h
    xor l
    and [hl]
    rst $20
    ld e, b
    nop
    adc b
    ld a, a
    and c
    and h
    or e
    or e
    and h
    or c
    ld a, a
    and [hl]
    xor [hl]
    ld a, a
    and l
    xor b
    xor l
    and e
    ld c, a
    or d
    or e
    or c
    xor [hl]
    xor l
    and [hl]
    and h
    or c
    ld a, a
    xor [hl]
    xor l
    and h
    or d
    rst $20
    ld d, a
    nop
    add e
    adc b
    add [hl]
    adc e
    add h
    sub e
    sub e
    cp l
    ld a, a
    add d
    add b
    sub l
    add h
    ld d, a
    nop
    add b
    ld a, a
    or d
    xor e
    and h
    and h
    xor a
    xor b
    xor l
    and [hl]
    ld a, a
    ld d, h
    adc h
    adc [hl]
    adc l
    ld c, a
    and c
    xor e
    xor [hl]
    and d
    xor d
    or d
    ld a, a
    or e
    and a
    and h
    ld a, a
    or [hl]
    and b
    cp b
    rst $20
    ld d, a
    nop
    sub d
    adc l
    adc [hl]
    sub c
    adc e
    add b
    sub a
    ld a, a
    or [hl]
    xor [hl]
    xor d
    and h
    ld a, a
    or h
    xor a
    rst $20
    ld d, c
    adc b
    or e
    ld a, a
    and b
    or e
    or e
    and b
    and d
    xor d
    and h
    and e
    ld a, a
    xor b
    xor l
    ld a, a
    and b
    ld c, a
    and [hl]
    or c
    or h
    xor h
    xor a
    cp b
    ld a, a
    or c
    and b
    and [hl]
    and h
    rst $20
    ld d, a
    nop
    sub d
    adc l
    adc [hl]
    sub c
    adc e
    add b
    sub a
    ld a, a
    and d
    and b
    xor e
    xor h
    and h
    and e
    ld c, a
    and e
    xor [hl]
    or [hl]
    xor l
    rst $20
    ld a, a
    sub [hl]
    xor b
    or e
    and a
    ld a, a
    and b
    ld a, a
    and c
    xor b
    and [hl]
    ld d, l
    cp b
    and b
    or [hl]
    xor l
    db $f4
    ld a, a
    xor b
    or e
    ld a, a
    or c
    and h
    or e
    or h
    or c
    xor l
    and h
    and e
    ld d, l
    or e
    xor [hl]
    ld a, a
    or e
    and a
    and h
    ld a, a
    xor h
    xor [hl]
    or h
    xor l
    or e
    and b
    xor b
    xor l
    or d
    rst $20
    ld d, a
    nop
    sbc b
    and h
    and b
    and a
    rst $20
    ld a, a
    adc b
    ld a, a
    and [hl]
    xor [hl]
    or e
    ld a, a
    and b
    ld c, a
    and c
    xor b
    or e
    and h
    db $f4
    ld a, a
    and a
    and h
    or c
    and h
    rst $20
    ld d, a
    nop
    sub e
    and d
    and a
    rst $20
    ld c, a
    adc c
    or h
    or d
    or e
    ld a, a
    and b
    ld a, a
    or d
    xor h
    and b
    xor e
    xor e
    ld a, a
    and l
    or c
    cp b
    rst $20
    ld e, b
    nop
    add a
    and b
    xor l
    and [hl]
    ld a, a
    xor [hl]
    xor l
    rst $20
    ld a, a
    adc h
    cp b
    ld a, a
    xor e
    xor b
    xor l
    and h
    cp l
    ld c, a
    or d
    xor l
    and b
    and [hl]
    and [hl]
    and h
    and e
    rst $20
    ld d, a
    nop
    add c
    and h
    ld a, a
    xor a
    and b
    or e
    xor b
    and h
    xor l
    or e
    rst $20
    ld c, a
    add l
    xor b
    or d
    and a
    xor b
    xor l
    and [hl]
    ld a, a
    xor b
    or d
    ld a, a
    and b
    ld d, l
    or [hl]
    and b
    xor b
    or e
    xor b
    xor l
    and [hl]
    ld a, a
    and [hl]
    and b
    xor h
    and h
    rst $20
    ld d, a
    nop
    sub e
    and a
    and b
    or e
    ld c, a
    xor [hl]
    xor l
    and h
    ld a, a
    and [hl]
    xor [hl]
    or e
    ld a, a
    and b
    or [hl]
    and b
    cp b
    rst $20
    ld e, b
    nop
    sub [hl]
    xor b
    or e
    and a
    ld a, a
    and b
    ld a, a
    and c
    and h
    or e
    or e
    and h
    or c
    ld a, a
    sub c
    adc [hl]
    add e
    db $f4
    ld c, a
    adc b
    ld a, a
    and d
    xor [hl]
    or h
    xor e
    and e
    ld a, a
    and d
    and b
    or e
    and d
    and a
    ld d, l
    and c
    and h
    or e
    or e
    and h
    or c
    ld a, a
    ld d, h
    adc h
    adc [hl]
    adc l
    rst $20
    ld d, a
    nop
    add a
    and b
    or l
    and h
    ld a, a
    cp b
    xor [hl]
    or h
    ld a, a
    and l
    xor [hl]
    or h
    xor l
    and e
    ld a, a
    and b
    ld c, a
    adc h
    adc [hl]
    adc [hl]
    adc l
    ld a, a
    sub d
    sub e
    adc [hl]
    adc l
    add h
    and $57
    nop
    adc [hl]
    or [hl]
    or [hl]
    rst $20
    ld e, b
    nop
    adc b
    ld a, a
    and d
    xor [hl]
    or h
    xor e
    and e
    ld a, a
    and a
    and b
    or l
    and h
    ld a, a
    xor h
    and b
    and e
    and h
    ld c, a
    xor h
    cp b
    ld a, a
    ld d, h
    adc h
    adc [hl]
    adc l
    ld a, a
    and h
    or l
    xor [hl]
    xor e
    or l
    and h
    ld d, l
    or [hl]
    xor b
    or e
    and a
    ld a, a
    adc h
    adc [hl]
    adc [hl]
    adc l
    ld a, a
    sub d
    sub e
    adc [hl]
    adc l
    add h
    rst $20
    ld d, a
    nop
    add h
    xor e
    and h
    and d
    or e
    or c
    xor b
    and d
    xor b
    or e
    cp b
    ld a, a
    xor b
    or d
    ld a, a
    xor h
    cp b
    ld c, a
    or d
    xor a
    and h
    and d
    xor b
    and b
    xor e
    or e
    cp b
    rst $20
    ld d, a
    nop
    sub h
    xor l
    xor a
    xor e
    or h
    and [hl]
    and [hl]
    and h
    and e
    rst $20
    ld e, b
    nop
    sub [hl]
    and b
    or e
    and h
    or c
    ld a, a
    and d
    xor [hl]
    xor l
    and e
    or h
    and d
    or e
    or d
    ld c, a
    and h
    xor e
    and h
    and d
    or e
    or c
    xor b
    and d
    xor b
    or e
    cp b
    db $f4
    ld a, a
    or d
    xor [hl]
    ld d, l
    cp b
    xor [hl]
    or h
    ld a, a
    or d
    and a
    xor [hl]
    or h
    xor e
    and e
    ld a, a
    cp c
    and b
    xor a
    ld d, l
    or d
    and h
    and b
    ld a, a
    ld d, h
    adc h
    adc [hl]
    adc l
    rst $20
    ld d, a
    nop
    sub e
    and a
    and h
    ld a, a
    add l
    adc b
    sub d
    add a
    adc b
    adc l
    add [hl]
    ld a, a
    add l
    adc [hl]
    adc [hl]
    adc e
    ld c, a
    or l
    or d
    add sp, $7f
    ld d, h
    adc h
    adc [hl]
    adc l
    ld a, a
    adc d
    adc b
    add e
    rst $20
    ld d, a
    nop
    sub e
    xor [hl]
    xor [hl]
    ld c, a
    xor h
    or h
    and d
    and a
    rst $20
    ld e, b
    nop
    sbc b
    xor [hl]
    or h
    ld a, a
    and c
    and h
    and b
    or e
    ld a, a
    xor h
    and h
    ld a, a
    and b
    or e
    ld c, a
    ld d, h
    adc h
    adc [hl]
    adc l
    db $f4
    ld a, a
    and c
    or h
    or e
    ld a, a
    adc b
    push hl
    ld d, l
    and [hl]
    xor [hl]
    xor [hl]
    and e
    ld a, a
    and b
    or e
    ld a, a
    and l
    xor b
    or d
    and a
    xor b
    xor l
    and [hl]
    rst $20
    ld d, a
    nop
    adc b
    cp e
    ld a, a
    or c
    and b
    or e
    and a
    and h
    or c
    ld a, a
    and c
    and h
    ld c, a
    or [hl]
    xor [hl]
    or c
    xor d
    xor b
    xor l
    and [hl]
    rst $20
    ld d, a
    nop
    adc b
    or e
    cp l
    ld c, a
    xor l
    xor [hl]
    or e
    ld a, a
    and h
    and b
    or d
    cp b
    add sp, -$18
    add sp, $58
    nop
    adc b
    or e
    cp l
    ld a, a
    and b
    xor e
    xor e
    ld a, a
    or c
    xor b
    and [hl]
    and a
    or e
    add sp, $4f
    adc e
    xor [hl]
    or d
    xor b
    xor l
    and [hl]
    ld a, a
    and e
    xor [hl]
    and h
    or d
    xor l
    cp [hl]
    ld d, l
    and c
    or h
    and [hl]
    ld a, a
    xor h
    and h
    ld a, a
    and b
    xor l
    cp b
    ld a, a
    xor h
    xor [hl]
    or c
    and h
    add sp, $57
    nop
    sbc b
    xor [hl]
    or h
    ld a, a
    xor l
    and h
    or l
    and h
    or c
    ld a, a
    xor d
    xor l
    xor [hl]
    or [hl]
    ld c, a
    or [hl]
    and a
    and b
    or e
    ld a, a
    cp b
    xor [hl]
    or h
    ld a, a
    and d
    xor [hl]
    or h
    xor e
    and e
    ld d, l
    and d
    and b
    or e
    and d
    and a
    rst $20
    ld d, a
    nop
    adc e
    xor [hl]
    or d
    or e
    ld c, a
    xor b
    or e
    rst $20
    ld e, b
    nop
    adc b
    ld a, a
    and d
    and b
    or e
    and d
    and a
    ld a, a
    adc h
    add b
    add [hl]
    adc b
    adc d
    add b
    sub c
    adc a
    ld c, a
    and b
    xor e
    xor e
    ld a, a
    or e
    and a
    and h
    ld a, a
    or e
    xor b
    xor h
    and h
    db $f4
    ld a, a
    and c
    or h
    or e
    ld d, l
    or e
    and a
    and h
    cp b
    db $e4
    and h
    ld a, a
    or d
    xor [hl]
    ld a, a
    or [hl]
    and h
    and b
    xor d
    rst $20
    ld d, a
    nop
    sub c
    adc [hl]
    sub h
    sub e
    add h
    ld a, a
    rst $30
    ld hl, sp+$7f
    ld c, a
    adc l
    xor [hl]
    or c
    or e
    and a
    ld a, a
    or e
    xor [hl]
    ld a, a
    adc e
    add b
    sub l
    add h
    adc l
    add e
    add h
    sub c
    ld d, a
    nop
    sub d
    adc a
    adc [hl]
    sub c
    sub e
    ld a, a
    add l
    adc b
    sub d
    add a
    adc b
    adc l
    add [hl]
    ld a, a
    add b
    sub c
    add h
    add b
    ld d, a
    nop
    adc h
    cp b
    ld a, a
    and c
    xor b
    or c
    and e
    ld a, a
    ld d, h
    adc h
    adc [hl]
    adc l
    ld c, a
    or [hl]
    and b
    xor l
    or e
    ld a, a
    or e
    xor [hl]
    ld a, a
    or d
    and d
    or c
    and b
    xor a
    rst $20
    ld d, a
    nop
    adc h
    cp b
    ld c, a
    and c
    xor b
    or c
    and e
    ld a, a
    and d
    xor [hl]
    xor h
    and c
    xor [hl]
    ld a, a
    xor e
    xor [hl]
    or d
    or e
    and $58
    nop
    adc h
    cp b
    ld a, a
    ld d, h
    adc h
    adc [hl]
    adc l
    ld a, a
    xor e
    xor [hl]
    xor [hl]
    xor d
    ld c, a
    and a
    and b
    xor a
    xor a
    cp b
    ld a, a
    and h
    or l
    and h
    xor l
    ld a, a
    or e
    and a
    xor [hl]
    or h
    and [hl]
    and a
    ld d, l
    or e
    and a
    and h
    cp b
    ld a, a
    xor e
    xor [hl]
    or d
    or e
    add sp, $57
    nop
    adc b
    push hl
    ld a, a
    or e
    xor [hl]
    xor e
    and e
    ld a, a
    adc b
    push hl
    ld a, a
    and [hl]
    xor [hl]
    xor [hl]
    and e
    ld c, a
    and l
    xor [hl]
    or c
    ld a, a
    and b
    ld a, a
    xor d
    xor b
    and e
    rst $20
    ld d, a
    nop
    adc [hl]
    and a
    and a
    rst $20
    ld c, a
    adc b
    ld a, a
    xor e
    xor [hl]
    or d
    or e
    rst $20
    ld e, b
    nop
    adc b
    ld a, a
    or [hl]
    and b
    xor l
    or e
    ld a, a
    or e
    xor [hl]
    ld a, a
    and c
    and h
    and d
    xor [hl]
    xor h
    and h
    ld c, a
    and b
    ld a, a
    and [hl]
    xor [hl]
    xor [hl]
    and e
    ld a, a
    or e
    or c
    and b
    xor b
    xor l
    and h
    or c
    add sp, $55
    adc b
    cp h
    xor e
    ld a, a
    or e
    or c
    and b
    xor b
    xor l
    ld a, a
    and a
    and b
    or c
    and e
    add sp, $57
    nop
    sub [hl]
    xor [hl]
    or [hl]
    rst $20
    ld a, a
    sbc b
    xor [hl]
    or h
    or c
    ld a, a
    add c
    add b
    add e
    add [hl]
    add h
    or d
    ld c, a
    and b
    or c
    and h
    ld a, a
    or e
    xor [hl]
    xor [hl]
    ld a, a
    and d
    xor [hl]
    xor [hl]
    xor e
    rst $20
    ld d, a
    nop
    adc l
    xor [hl]
    or e
    ld c, a
    and h
    xor l
    xor [hl]
    or h
    and [hl]
    and a
    rst $20
    ld e, b
    nop
    sbc b
    xor [hl]
    or h
    ld a, a
    and [hl]
    xor [hl]
    or e
    ld a, a
    or e
    and a
    xor [hl]
    or d
    and h
    ld c, a
    add c
    add b
    add e
    add [hl]
    add h
    or d
    ld a, a
    and l
    or c
    xor [hl]
    xor h
    ld a, a
    add [hl]
    sbc b
    adc h
    ld d, l
    adc e
    add h
    add b
    add e
    add h
    sub c
    or d
    add sp, $7f
    adc b
    ld a, a
    xor d
    xor l
    xor [hl]
    or [hl]
    rst $20
    ld d, a
    nop
    adc h
    cp b
    ld a, a
    and d
    or h
    or e
    and h
    ld a, a
    ld d, h
    adc h
    adc [hl]
    adc l
    ld c, a
    or [hl]
    xor b
    or d
    and a
    ld a, a
    or e
    xor [hl]
    ld a, a
    xor h
    and b
    xor d
    and h
    ld a, a
    cp b
    xor [hl]
    or h
    or c
    ld d, l
    and b
    and d
    or b
    or h
    and b
    xor b
    xor l
    or e
    and b
    xor l
    and d
    and h
    add sp, $57
    nop
    sub [hl]
    xor [hl]
    or [hl]
    rst $20
    ld c, a
    sbc b
    xor [hl]
    or h
    ld a, a
    or e
    xor [hl]
    or e
    and b
    xor e
    xor e
    cp b
    ld a, a
    or [hl]
    xor [hl]
    xor l
    rst $20
    ld e, b
    nop
    sbc b
    xor [hl]
    or h
    ld a, a
    and a
    and b
    or l
    and h
    ld a, a
    or e
    xor [hl]
    ld a, a
    xor h
    and b
    xor d
    and h
    ld c, a
    ld d, h
    adc h
    adc [hl]
    adc l
    ld a, a
    and l
    xor b
    and [hl]
    and a
    or e
    ld a, a
    or e
    xor [hl]
    ld d, l
    or e
    xor [hl]
    or h
    and [hl]
    and a
    and h
    xor l
    ld a, a
    or e
    and a
    and h
    xor h
    ld a, a
    or h
    xor a
    rst $20
    ld d, a
    nop
    adc b
    ld a, a
    and l
    xor [hl]
    or h
    xor l
    and e
    ld a, a
    add d
    add b
    sub c
    add c
    adc [hl]
    sub d
    ld a, a
    xor b
    xor l
    ld c, a
    and b
    ld a, a
    and d
    and b
    or l
    and h
    ld a, a
    xor [hl]
    xor l
    and d
    and h
    add sp, $57
    nop
    adc c
    or h
    or d
    or e
    ld c, a
    xor h
    and h
    or d
    or d
    and h
    and e
    ld a, a
    or h
    xor a
    rst $20
    ld e, b
    nop
    add d
    add b
    sub c
    add c
    adc [hl]
    sub d
    ld a, a
    and c
    xor [hl]
    xor [hl]
    or d
    or e
    and h
    and e
    ld c, a
    or e
    and a
    and h
    ld a, a
    sub d
    adc a
    add h
    add h
    add e
    ld a, a
    xor [hl]
    and l
    ld a, a
    xor h
    cp b
    ld d, l
    ld d, h
    adc h
    adc [hl]
    adc l
    add sp, $57
    nop
    sub e
    and a
    and h
    ld a, a
    or [hl]
    xor b
    xor l
    and e
    cp l
    ld a, a
    and c
    xor e
    xor [hl]
    or [hl]
    xor b
    xor l
    and [hl]
    ld c, a
    xor h
    cp b
    ld a, a
    or [hl]
    and b
    cp b
    rst $20
    ld d, a
    nop
    sub e
    and a
    and h
    ld c, a
    or [hl]
    xor b
    xor l
    and e
    ld a, a
    or e
    or h
    or c
    xor l
    and h
    and e
    rst $20
    ld e, b
    nop
    adc b
    push hl
    ld a, a
    and c
    and h
    and b
    or e
    add sp, $7f
    adc b
    ld a, a
    and [hl]
    or h
    and h
    or d
    or d
    ld c, a
    adc b
    cp h
    xor e
    ld a, a
    add l
    adc e
    sbc b
    ld a, a
    and a
    xor [hl]
    xor h
    and h
    add sp, $57
    nop
    sub d
    or h
    or c
    and h
    db $f4
    ld a, a
    adc b
    cp h
    xor e
    ld a, a
    xor a
    xor e
    and b
    cp b
    ld c, a
    or [hl]
    xor b
    or e
    and a
    ld a, a
    cp b
    xor [hl]
    or h
    rst $20
    ld d, a
    nop
    adc [hl]
    and a
    rst $20
    ld c, a
    sbc b
    xor [hl]
    or h
    ld a, a
    xor e
    xor b
    or e
    or e
    xor e
    and h
    ld a, a
    and c
    or c
    or h
    or e
    and h
    rst $20
    ld e, b
    nop
    adc b
    ld a, a
    or [hl]
    xor [hl]
    xor l
    and e
    and h
    or c
    ld a, a
    or [hl]
    and a
    xor b
    and d
    and a
    ld a, a
    xor b
    or d
    ld c, a
    or d
    or e
    or c
    xor [hl]
    xor l
    and [hl]
    and h
    or c
    db $f4
    ld a, a
    xor h
    and b
    xor e
    and h
    ld a, a
    xor [hl]
    or c
    ld d, l
    and l
    and h
    xor h
    and b
    xor e
    and h
    ld a, a
    ld d, h
    adc h
    adc [hl]
    adc l
    and $57
    nop
    add e
    xor [hl]
    ld a, a
    cp b
    xor [hl]
    or h
    ld a, a
    or [hl]
    and b
    xor l
    or e
    ld a, a
    or e
    xor [hl]
    ld c, a
    ld d, h
    adc h
    adc [hl]
    adc l
    ld a, a
    or [hl]
    xor b
    or e
    and a
    ld a, a
    xor h
    and h
    and $57
    nop
    adc b
    or e
    cp l
    ld a, a
    xor [hl]
    or l
    and h
    or c
    ld c, a
    and b
    xor e
    or c
    and h
    and b
    and e
    cp b
    and $58
    nop
    adc b
    ld a, a
    and e
    xor [hl]
    xor l
    cp [hl]
    ld a, a
    xor d
    xor l
    xor [hl]
    or [hl]
    ld c, a
    and b
    xor l
    cp b
    or e
    and a
    xor b
    xor l
    and [hl]
    ld a, a
    and b
    and c
    xor [hl]
    or h
    or e
    ld d, l
    ld d, h
    adc h
    adc [hl]
    adc l
    add sp, $7f
    adc b
    ld a, a
    xor c
    or h
    or d
    or e
    ld d, l
    xor e
    xor b
    xor d
    and h
    ld a, a
    and d
    xor [hl]
    xor [hl]
    xor e
    ld a, a
    xor [hl]
    xor l
    and h
    or d
    rst $20
    ld d, a
    nop
    sub [hl]
    and a
    and b
    or e
    db $e4
    and h
    ld a, a
    cp b
    xor [hl]
    or h
    ld c, a
    xor e
    xor [hl]
    xor [hl]
    xor d
    xor b
    xor l
    ldh [$7f], a
    and b
    or e
    and $57
    nop
    add e
    and b
    xor l
    and [hl]
    rst $20
    ld c, a
    sub d
    or e
    or c
    xor b
    xor a
    xor a
    and h
    and e
    ld a, a
    and [hl]
    and h
    and b
    or c
    or d
    rst $20
    ld e, b
    nop
    add [hl]
    and h
    or e
    ld a, a
    xor e
    xor [hl]
    or d
    or e
    rst $20
    ld d, a
    nop
    adc b
    ld a, a
    and b
    xor e
    or [hl]
    and b
    cp b
    or d
    ld a, a
    and [hl]
    xor [hl]
    ld a, a
    or [hl]
    xor b
    or e
    and a
    ld c, a
    and c
    xor b
    or c
    and e
    ld a, a
    ld d, h
    adc h
    adc [hl]
    adc l
    rst $20
    ld d, a
    nop
    adc [hl]
    or h
    or e
    ld c, a
    xor [hl]
    and l
    ld a, a
    xor a
    xor [hl]
    or [hl]
    and h
    or c
    rst $20
    ld e, b
    nop
    adc b
    ld a, a
    or [hl]
    xor b
    or d
    and a
    ld a, a
    adc b
    ld a, a
    and d
    xor [hl]
    or h
    xor e
    and e
    ld c, a
    and l
    xor e
    cp b
    ld a, a
    xor e
    xor b
    xor d
    and h
    ld a, a
    adc a
    adc b
    add e
    add [hl]
    add h
    sbc b
    ld d, l
    and b
    xor l
    and e
    ld a, a
    adc a
    adc b
    add e
    add [hl]
    add h
    adc [hl]
    sub e
    sub e
    adc [hl]
    add sp, -$18
    add sp, $57
    nop
    sub e
    sub c
    add b
    adc b
    adc l
    add h
    sub c
    ld a, a
    sub e
    adc b
    adc a
    sub d
    ld d, c
    adc e
    xor [hl]
    xor [hl]
    xor d
    ld a, a
    or e
    xor [hl]
    ld a, a
    or e
    and a
    and h
    ld a, a
    xor e
    and h
    and l
    or e
    ld c, a
    xor [hl]
    and l
    ld a, a
    or e
    and a
    and b
    or e
    ld a, a
    xor a
    xor [hl]
    or d
    or e
    rst $20
    ld d, a
    nop
    sub e
    sub c
    add b
    adc b
    adc l
    add h
    sub c
    ld a, a
    sub e
    adc b
    adc a
    sub d
    ld d, c
    sub h
    or d
    and h
    ld a, a
    sub d
    add h
    adc e
    add h
    add d
    sub e
    ld a, a
    or e
    xor [hl]
    ld c, a
    or d
    or [hl]
    xor b
    or e
    and d
    and a
    ld a, a
    xor b
    or e
    and h
    xor h
    or d
    ld a, a
    xor b
    xor l
    ld d, l
    or e
    and a
    and h
    ld a, a
    adc b
    sub e
    add h
    adc h
    ld a, a
    or [hl]
    xor b
    xor l
    and e
    xor [hl]
    or [hl]
    rst $20
    ld d, a
    nop
    sub c
    adc [hl]
    sub h
    sub e
    add h
    ld a, a
    rst $30
    ld sp, hl
    ld c, a
    adc l
    xor [hl]
    or c
    or e
    and a
    ld a, a
    or e
    xor [hl]
    ld a, a
    sub d
    adc b
    adc e
    add h
    adc l
    add d
    add h
    ld d, l
    add c
    sub c
    adc b
    add e
    add [hl]
    add h
    ld d, a
    nop
    sbc b
    xor [hl]
    or h
    ld a, a
    xor l
    and h
    and h
    and e
    ld a, a
    or e
    xor [hl]
    ld a, a
    or h
    or d
    and h
    ld c, a
    sub e
    adc h
    or d
    ld a, a
    or e
    xor [hl]
    ld a, a
    or e
    and h
    and b
    and d
    and a
    ld a, a
    and [hl]
    xor [hl]
    xor [hl]
    and e
    ld d, l
    xor h
    xor [hl]
    or l
    and h
    or d
    ld a, a
    or e
    xor [hl]
    ld a, a
    ld d, h
    adc h
    adc [hl]
    adc l
    rst $20
    ld d, a
    nop
    adc l
    xor [hl]
    or e
    ld c, a
    and [hl]
    xor [hl]
    xor [hl]
    and e
    ld a, a
    and h
    xor l
    xor [hl]
    or h
    and [hl]
    and a
    rst $20
    ld e, b
    nop
    sbc b
    xor [hl]
    or h
    ld a, a
    and a
    and b
    or l
    and h
    ld a, a
    or d
    xor [hl]
    xor h
    and h
    ld a, a
    add a
    adc h
    or d
    ld c, a
    or c
    xor b
    and [hl]
    and a
    or e
    and $7f
    ld d, h
    adc h
    adc [hl]
    adc l
    ld d, l
    and d
    and b
    xor l
    cp [hl]
    ld a, a
    and h
    or l
    and h
    or c
    ld a, a
    and l
    xor [hl]
    or c
    and [hl]
    and h
    or e
    ld d, l
    or e
    and a
    xor [hl]
    or d
    and h
    ld a, a
    xor h
    xor [hl]
    or l
    and h
    or d
    add sp, $57
    nop
    adc h
    cp b
    ld a, a
    and c
    xor b
    or c
    and e
    ld a, a
    ld d, h
    adc h
    adc [hl]
    adc l
    ld c, a
    or d
    and a
    xor [hl]
    or h
    xor e
    and e
    ld a, a
    and c
    and h
    ld a, a
    or c
    and h
    and b
    and e
    cp b
    ld d, l
    and l
    xor [hl]
    or c
    ld a, a
    and c
    and b
    or e
    or e
    xor e
    and h
    add sp, $57
    nop
    adc l
    xor [hl]
    or e
    ld c, a
    or c
    and h
    and b
    and e
    cp b
    ld a, a
    cp b
    and h
    or e
    rst $20
    ld e, b
    nop
    sub e
    and a
    and h
    cp b
    ld a, a
    xor l
    and h
    and h
    and e
    ld a, a
    or e
    xor [hl]
    ld a, a
    xor e
    and h
    and b
    or c
    xor l
    ld c, a
    and c
    and h
    or e
    or e
    and h
    or c
    ld a, a
    xor h
    xor [hl]
    or l
    and h
    or d
    add sp, $57
    nop
    sub e
    adc h
    or d
    ld a, a
    and b
    or c
    and h
    ld a, a
    xor [hl]
    xor l
    ld a, a
    or d
    and b
    xor e
    and h
    ld c, a
    xor b
    xor l
    ld a, a
    add d
    add h
    adc e
    add b
    add e
    adc [hl]
    adc l
    rst $20
    ld d, l
    add c
    or h
    or e
    db $f4
    ld a, a
    xor [hl]
    xor l
    xor e
    cp b
    ld a, a
    and b
    ld a, a
    and l
    and h
    or [hl]
    ld d, l
    xor a
    and h
    xor [hl]
    xor a
    xor e
    and h
    ld a, a
    and a
    and b
    or l
    and h
    ld a, a
    add a
    adc h
    or d
    rst $20
    ld d, a
    nop
    add b
    or [hl]
    or [hl]
    db $f4
    ld c, a
    and c
    or h
    xor h
    xor h
    and h
    or c
    rst $20
    ld e, b
    nop
    sub e
    and h
    and b
    and d
    and a
    ld a, a
    ld d, h
    adc h
    adc [hl]
    adc l
    ld c, a
    xor h
    xor [hl]
    or l
    and h
    or d
    ld a, a
    xor [hl]
    and l
    ld a, a
    or e
    and a
    and h
    ld a, a
    or d
    and b
    xor h
    and h
    ld d, l
    and h
    xor e
    and h
    xor h
    and h
    xor l
    or e
    ld a, a
    or e
    cp b
    xor a
    and h
    ld a, a
    and l
    xor [hl]
    or c
    ld d, l
    xor h
    xor [hl]
    or c
    and h
    ld a, a
    xor a
    xor [hl]
    or [hl]
    and h
    or c
    add sp, $57
    nop
    add a
    and b
    or l
    and h
    ld a, a
    cp b
    xor [hl]
    or h
    ld a, a
    or e
    and b
    or h
    and [hl]
    and a
    or e
    ld c, a
    cp b
    xor [hl]
    or h
    or c
    ld a, a
    and c
    xor b
    or c
    and e
    ld a, a
    ld d, h
    adc h
    adc [hl]
    adc l
    ld d, l
    and a
    xor [hl]
    or [hl]
    ld a, a
    or e
    xor [hl]
    ld a, a
    add l
    adc e
    sbc b
    and $57
    nop
    sub d
    and a
    xor [hl]
    or e
    ld c, a
    and e
    xor [hl]
    or [hl]
    xor l
    ld a, a
    xor b
    xor l
    ld a, a
    and l
    xor e
    and b
    xor h
    and h
    or d
    rst $20
    ld e, b
    nop
    add c
    xor b
    or c
    and e
    ld a, a
    ld d, h
    adc h
    adc [hl]
    adc l
    ld a, a
    and b
    or c
    and h
    ld c, a
    xor h
    cp b
    ld a, a
    or e
    or c
    or h
    and h
    ld a, a
    xor e
    xor [hl]
    or l
    and h
    rst $20
    ld d, a
    nop
    add a
    and b
    or l
    and h
    ld a, a
    cp b
    xor [hl]
    or h
    ld a, a
    and a
    and h
    and b
    or c
    and e
    ld a, a
    xor [hl]
    and l
    ld c, a
    or e
    and a
    and h
    ld a, a
    xor e
    and h
    and [hl]
    and h
    xor l
    and e
    and b
    or c
    cp b
    ld d, l
    ld d, h
    adc h
    adc [hl]
    adc l
    and $57
    nop
    sub [hl]
    and a
    cp b
    and $4f
    sub [hl]
    and a
    cp b
    cp e
    ld a, a
    adc b
    ld a, a
    xor e
    xor [hl]
    or d
    and h
    and $58
    nop
    sub e
    and a
    and h
    ld a, a
    ld sp, hl
    ld a, a
    xor e
    and h
    and [hl]
    and h
    xor l
    and e
    and b
    or c
    cp b
    ld c, a
    ld d, h
    adc h
    adc [hl]
    adc l
    ld a, a
    and b
    or c
    and h
    ld a, a
    and b
    xor e
    xor e
    ld d, l
    and c
    xor b
    or c
    and e
    or d
    ld a, a
    xor [hl]
    and l
    ld a, a
    xor a
    or c
    and h
    cp b
    add sp, $57
    nop
    adc b
    push hl
    ld a, a
    xor l
    xor [hl]
    or e
    ld a, a
    xor b
    xor l
    or e
    xor [hl]
    ld a, a
    xor b
    or e
    db $f4
    ld c, a
    and c
    or h
    or e
    ld a, a
    adc [hl]
    adc d
    rst $20
    ld a, a
    adc e
    and h
    or e
    cp l
    ld a, a
    and [hl]
    xor [hl]
    rst $20
    ld d, a
    nop
    adc b
    ld c, a
    xor d
    xor l
    and h
    or [hl]
    ld a, a
    xor b
    or e
    rst $20
    ld e, b
    nop
    sub [hl]
    xor b
    xor l
    xor l
    xor b
    xor l
    and [hl]
    db $f4
    ld a, a
    xor e
    xor [hl]
    or d
    xor b
    xor l
    and [hl]
    db $f4
    ld c, a
    xor b
    or e
    ld a, a
    and e
    xor [hl]
    and h
    or d
    xor l
    cp [hl]
    ld a, a
    xor h
    and b
    or e
    or e
    and h
    or c
    ld d, l
    xor b
    xor l
    ld a, a
    or e
    and a
    and h
    ld a, a
    xor e
    xor [hl]
    xor l
    and [hl]
    ld a, a
    or c
    or h
    xor l
    rst $20
    ld d, a
    nop
    add d
    push hl
    xor [hl]
    xor l
    db $f4
    ld a, a
    and d
    push hl
    xor [hl]
    xor l
    add sp, $4f
    adc e
    and h
    or e
    cp l
    ld a, a
    and [hl]
    xor [hl]
    db $f4
    ld a, a
    xor e
    and h
    or e
    cp l
    ld d, l
    and [hl]
    xor [hl]
    db $f4
    ld a, a
    xor e
    and h
    or e
    cp l
    ld a, a
    and [hl]
    xor [hl]
    rst $20
    ld d, a
    nop
    add b
    or c
    or c
    and [hl]
    rst $20
    ld c, a
    adc e
    xor [hl]
    or d
    or e
    rst $20
    ld a, a
    add [hl]
    and h
    or e
    ld a, a
    xor e
    xor [hl]
    or d
    or e
    rst $20
    ld e, b
    nop
    sub [hl]
    and a
    and b
    or e
    db $f4
    ld a, a
    or [hl]
    and a
    and b
    or e
    db $f4
    ld a, a
    or [hl]
    and a
    and b
    or e
    and $4f
    sub [hl]
    and a
    and b
    or e
    ld a, a
    and e
    xor [hl]
    ld a, a
    cp b
    xor [hl]
    or h
    ld a, a
    or [hl]
    and b
    xor l
    or e
    and $57
    nop
    adc a
    and h
    or c
    and l
    and h
    and d
    or e
    rst $20
    ld a, a
    adc b
    ld a, a
    xor l
    and h
    and h
    and e
    ld a, a
    or e
    xor [hl]
    ld c, a
    and c
    or h
    or c
    xor l
    ld a, a
    or d
    xor [hl]
    xor h
    and h
    ld a, a
    or e
    xor b
    xor h
    and h
    rst $20
    ld d, a
    nop
    sub [hl]
    and a
    and b
    or e
    and $4f
    sbc b
    xor [hl]
    or h
    rst $20
    and $58
    nop
    sub c
    and b
    xor b
    or d
    xor b
    xor l
    and [hl]
    ld a, a
    ld d, h
    adc h
    adc [hl]
    adc l
    ld c, a
    xor b
    or d
    ld a, a
    and b
    ld a, a
    and e
    or c
    and b
    and [hl]
    db $f4
    ld a, a
    xor h
    and b
    xor l
    add sp, $57
    nop
    sub [hl]
    and h
    ld a, a
    or c
    xor b
    and e
    and h
    ld a, a
    xor [hl]
    or h
    or e
    ld a, a
    and a
    and h
    or c
    and h
    ld c, a
    and c
    and h
    and d
    and b
    or h
    or d
    and h
    ld a, a
    or e
    and a
    and h
    or c
    and h
    cp l
    ld d, l
    xor h
    xor [hl]
    or c
    and h
    ld a, a
    or c
    xor [hl]
    xor [hl]
    xor h
    rst $20
    ld d, a
    nop
    sub [hl]
    xor b
    xor a
    and h
    ld a, a
    xor [hl]
    or h
    or e
    rst $20
    ld e, b
    nop
    adc b
    or e
    cp l
    ld a, a
    and d
    xor [hl]
    xor [hl]
    xor e
    ld a, a
    cp b
    xor [hl]
    or h
    ld c, a
    xor h
    and b
    and e
    and h
    ld a, a
    cp b
    xor [hl]
    or h
    or c
    ld a, a
    ld d, h
    adc h
    adc [hl]
    adc l
    ld d, l
    or d
    xor [hl]
    ld a, a
    or d
    or e
    or c
    xor [hl]
    xor l
    and [hl]
    rst $20
    ld d, c
    adc h
    xor b
    and [hl]
    and a
    or e
    ld a, a
    xor b
    or d
    ld a, a
    or c
    xor b
    and [hl]
    and a
    or e
    rst $20
    ld c, a
    add b
    xor l
    and e
    ld a, a
    cp b
    xor [hl]
    or h
    ld a, a
    xor d
    xor l
    xor [hl]
    or [hl]
    ld a, a
    xor b
    or e
    rst $20
    ld d, a
    nop
    ld d, h
    adc h
    adc [hl]
    adc l
    ld a, a
    and l
    xor b
    and [hl]
    and a
    or e
    and $4f
    add d
    xor [hl]
    xor [hl]
    xor e
    rst $20
    ld a, a
    sub c
    or h
    xor h
    and c
    xor e
    and h
    rst $20
    ld d, a
    nop
    add c
    xor e
    xor [hl]
    or [hl]
    xor l
    ld c, a
    and b
    or [hl]
    and b
    cp b
    rst $20
    ld e, b
    nop
    sbc b
    xor [hl]
    or h
    ld a, a
    xor d
    xor l
    xor [hl]
    or [hl]
    ld a, a
    or [hl]
    and a
    xor [hl]
    cp e
    ld c, a
    or [hl]
    xor b
    xor l
    db $f4
    ld a, a
    cp b
    xor [hl]
    or h
    ld a, a
    and b
    xor l
    and e
    ld a, a
    xor h
    and h
    ld d, l
    xor [hl]
    xor l
    and h
    ld a, a
    xor [hl]
    xor l
    ld a, a
    xor [hl]
    xor l
    and h
    rst $20
    ld d, a
    nop
    sub c
    adc [hl]
    sub h
    sub e
    add h
    ld a, a
    rst $30
    ld a, [$964f]
    and h
    or d
    or e
    ld a, a
    or e
    xor [hl]
    ld a, a
    add l
    sub h
    add d
    add a
    sub d
    adc b
    add b
    ld d, l
    add d
    adc b
    sub e
    sbc b
    ld d, a
    nop
    adc e
    and h
    or e
    ld a, a
    xor h
    and h
    ld a, a
    or e
    or c
    cp b
    ld a, a
    xor [hl]
    or h
    or e
    ld a, a
    or e
    and a
    and h
    ld c, a
    ld d, h
    adc h
    adc [hl]
    adc l
    ld a, a
    adc b
    ld a, a
    xor c
    or h
    or d
    or e
    ld d, l
    and [hl]
    xor [hl]
    or e
    ld a, a
    xor b
    xor l
    ld a, a
    and b
    ld a, a
    or e
    or c
    and b
    and e
    and h
    rst $20
    ld d, a
    nop
    adc l
    xor [hl]
    or e
    ld c, a
    and [hl]
    xor [hl]
    xor [hl]
    and e
    ld a, a
    and h
    xor l
    xor [hl]
    or h
    and [hl]
    and a
    rst $20
    ld e, b
    nop
    sbc b
    xor [hl]
    or h
    ld a, a
    and d
    and b
    xor l
    cp [hl]
    ld a, a
    and d
    and a
    and b
    xor l
    and [hl]
    and h
    ld c, a
    or e
    and a
    and h
    ld a, a
    xor l
    xor b
    and d
    xor d
    xor l
    and b
    xor h
    and h
    ld a, a
    xor [hl]
    and l
    ld d, l
    and b
    xor l
    cp b
    ld a, a
    ld d, h
    adc h
    adc [hl]
    adc l
    ld a, a
    cp b
    xor [hl]
    or h
    ld d, l
    and [hl]
    and h
    or e
    ld a, a
    xor b
    xor l
    ld a, a
    and b
    ld a, a
    or e
    or c
    and b
    and e
    and h
    add sp, $51
    adc [hl]
    xor l
    xor e
    cp b
    ld a, a
    or e
    and a
    and h
    ld a, a
    adc [hl]
    or c
    xor b
    and [hl]
    xor b
    xor l
    and b
    xor e
    ld c, a
    sub e
    or c
    and b
    xor b
    xor l
    and h
    or c
    ld a, a
    and d
    and b
    xor l
    add sp, $57
    nop
    sbc b
    xor [hl]
    or h
    ld a, a
    xor e
    xor [hl]
    xor [hl]
    xor d
    ld a, a
    and [hl]
    and h
    xor l
    or e
    xor e
    and h
    db $f4
    ld c, a
    or d
    xor [hl]
    ld a, a
    adc b
    ld a, a
    or e
    and a
    xor b
    xor l
    xor d
    ld a, a
    adc b
    ld a, a
    and d
    and b
    xor l
    ld d, l
    and c
    and h
    and b
    or e
    ld a, a
    cp b
    xor [hl]
    or h
    rst $20
    ld d, a
    nop
    adc l
    xor [hl]
    db $f4
    ld c, a
    or [hl]
    or c
    xor [hl]
    xor l
    and [hl]
    rst $20
    ld e, b
    nop
    adc b
    push hl
    ld a, a
    and b
    and l
    or c
    and b
    xor b
    and e
    ld a, a
    xor [hl]
    and l
    ld c, a
    add c
    adc b
    adc d
    add h
    sub c
    or d
    db $f4
    ld a, a
    or e
    and a
    and h
    cp b
    ld a, a
    xor e
    xor [hl]
    xor [hl]
    xor d
    ld d, l
    or d
    xor [hl]
    ld a, a
    or h
    and [hl]
    xor e
    cp b
    ld a, a
    and b
    xor l
    and e
    ld a, a
    xor h
    and h
    and b
    xor l
    rst $20
    ld d, a
    nop
    sub [hl]
    and a
    and h
    xor l
    ld a, a
    adc b
    ld a, a
    or [hl]
    and a
    xor b
    or d
    or e
    xor e
    and h
    db $f4
    ld a, a
    adc b
    ld c, a
    and d
    and b
    xor l
    ld a, a
    or d
    or h
    xor h
    xor h
    xor [hl]
    xor l
    ld a, a
    and c
    xor b
    or c
    and e
    ld d, l
    ld d, h
    adc h
    adc [hl]
    adc l
    rst $20
    ld d, a
    nop
    adc [hl]
    or [hl]
    rst $20
    ld c, a
    sub e
    and a
    and b
    or e
    cp l
    ld a, a
    or e
    or c
    and b
    and [hl]
    xor b
    and d
    rst $20
    ld e, b
    nop
    adc h
    and b
    cp b
    and c
    and h
    ld a, a
    adc b
    push hl
    ld a, a
    xor l
    xor [hl]
    or e
    ld a, a
    and d
    or h
    or e
    ld c, a
    xor [hl]
    or h
    or e
    ld a, a
    and l
    xor [hl]
    or c
    ld a, a
    and c
    and b
    or e
    or e
    xor e
    and h
    or d
    add sp, $57
    nop
    add a
    xor h
    xor h
    and $7f
    adc h
    cp b
    ld a, a
    and c
    xor b
    or c
    and e
    or d
    ld a, a
    and b
    or c
    and h
    ld c, a
    or d
    and a
    xor b
    or l
    and h
    or c
    xor b
    xor l
    and [hl]
    rst $20
    ld a, a
    sbc b
    xor [hl]
    or h
    db $e4
    and h
    ld d, l
    and [hl]
    xor [hl]
    xor [hl]
    and e
    db $f4
    ld a, a
    and b
    or c
    and h
    xor l
    cp [hl]
    ld a, a
    cp b
    xor [hl]
    or h
    and $57
    nop
    adc c
    or h
    or d
    or e
    ld c, a
    and b
    or d
    ld a, a
    adc b
    ld a, a
    or e
    and a
    xor [hl]
    or h
    and [hl]
    and a
    or e
    rst $20
    ld e, b
    nop
    add e
    xor b
    and e
    ld a, a
    cp b
    xor [hl]
    or h
    ld a, a
    xor d
    xor l
    xor [hl]
    or [hl]
    ld a, a
    xor h
    xor [hl]
    or l
    and h
    or d
    ld c, a
    xor e
    xor b
    xor d
    and h
    ld a, a
    add h
    add b
    sub c
    sub e
    add a
    sub b
    sub h
    add b
    adc d
    add h
    ld d, l
    and e
    xor [hl]
    xor l
    cp [hl]
    ld a, a
    and a
    and b
    or l
    and h
    ld a, a
    and b
    xor l
    cp b
    ld d, l
    and h
    and l
    and l
    and h
    and d
    or e
    ld a, a
    xor [hl]
    xor l
    ld a, a
    and c
    xor b
    or c
    and e
    or d
    and $57
    nop
    adc [hl]
    and a
    db $f4
    ld a, a
    cp b
    xor [hl]
    or h
    db $e4
    and h
    ld a, a
    and b
    ld c, a
    xor e
    xor b
    or e
    or e
    xor e
    and h
    ld a, a
    and d
    or h
    or e
    xor b
    and h
    rst $20
    ld d, a
    nop
    sbc b
    xor [hl]
    or h
    ld a, a
    xor e
    xor [hl]
    xor [hl]
    xor d
    and h
    and e
    ld c, a
    or d
    xor [hl]
    ld a, a
    and d
    or h
    or e
    and h
    ld a, a
    or e
    xor [hl]
    xor [hl]
    rst $20
    ld e, b
    nop
    adc b
    ld a, a
    and l
    xor [hl]
    or c
    and [hl]
    xor b
    or l
    and h
    ld a, a
    cp b
    xor [hl]
    or h
    rst $20
    ld c, a
    adc b
    ld a, a
    and d
    and b
    xor l
    ld a, a
    or e
    and b
    xor d
    and h
    ld a, a
    xor b
    or e
    rst $20
    ld d, a
    nop
    adc b
    ld a, a
    or c
    and b
    xor b
    or d
    and h
    ld a, a
    ld d, h
    adc h
    adc [hl]
    adc l
    ld c, a
    and c
    and h
    and d
    and b
    or h
    or d
    and h
    ld a, a
    adc b
    ld a, a
    xor e
    xor b
    or l
    and h
    ld d, l
    and b
    xor e
    xor [hl]
    xor l
    and h
    rst $20
    ld d, a
    nop
    adc b
    ld a, a
    and e
    xor b
    and e
    xor l
    cp [hl]
    ld c, a
    and b
    or d
    xor d
    ld a, a
    and l
    xor [hl]
    or c
    ld a, a
    or e
    and a
    xor b
    or d
    rst $20
    ld e, b
    nop
    adc b
    ld a, a
    xor c
    or h
    or d
    or e
    ld a, a
    xor e
    xor b
    xor d
    and h
    ld a, a
    and [hl]
    xor [hl]
    xor b
    xor l
    and [hl]
    ld c, a
    and a
    xor [hl]
    xor h
    and h
    ld a, a
    or e
    xor [hl]
    ld a, a
    and c
    and h
    ld a, a
    or [hl]
    xor b
    or e
    and a
    ld d, l
    xor h
    cp b
    ld a, a
    ld d, h
    adc h
    adc [hl]
    adc l
    rst $20
    ld d, a
    nop
    add a
    and h
    cp b
    ld a, a
    xor d
    xor b
    and e
    rst $20
    ld a, a
    add d
    push hl
    xor [hl]
    xor l
    rst $20
    ld c, a
    adc b
    ld a, a
    xor c
    or h
    or d
    or e
    ld a, a
    and [hl]
    xor [hl]
    or e
    ld a, a
    or e
    and a
    and h
    or d
    and h
    rst $20
    ld d, a
    nop
    sub [hl]
    and a
    cp b
    ld c, a
    xor l
    xor [hl]
    or e
    and $58
    nop
    sbc b
    xor [hl]
    or h
    ld a, a
    xor [hl]
    xor l
    xor e
    cp b
    ld a, a
    xor e
    xor b
    or l
    and h
    ld c, a
    xor [hl]
    xor l
    and d
    and h
    db $f4
    ld a, a
    or d
    xor [hl]
    ld a, a
    adc b
    ld a, a
    xor e
    xor b
    or l
    and h
    ld d, l
    and b
    or d
    ld a, a
    and b
    xor l
    ld a, a
    xor [hl]
    or h
    or e
    xor e
    and b
    or [hl]
    rst $20
    ld d, l
    sub e
    add h
    add b
    adc h
    ld a, a
    sub c
    adc [hl]
    add d
    adc d
    add h
    sub e
    ld a, a
    sub c
    sub h
    adc e
    add h
    sub d
    rst $20
    ld d, a
    nop
    add l
    xor [hl]
    or c
    xor d
    ld a, a
    xor [hl]
    or l
    and h
    or c
    ld a, a
    and b
    xor e
    xor e
    ld a, a
    cp b
    xor [hl]
    or h
    or c
    ld c, a
    and d
    and b
    or d
    and a
    ld a, a
    or [hl]
    and a
    and h
    xor l
    ld a, a
    cp b
    xor [hl]
    or h
    ld d, l
    xor e
    xor [hl]
    or d
    and h
    ld a, a
    or e
    xor [hl]
    ld a, a
    xor h
    and h
    db $f4
    ld a, a
    xor d
    xor b
    and e
    rst $20
    ld d, a
    nop
    sub e
    and a
    and b
    or e
    ld c, a
    and d
    and b
    xor l
    cp [hl]
    ld a, a
    and c
    and h
    ld a, a
    or e
    or c
    or h
    and h
    rst $20
    ld e, b
    nop
    adc b
    ld a, a
    or [hl]
    and b
    or d
    ld a, a
    xor c
    or h
    or d
    or e
    ld a, a
    xor c
    xor [hl]
    xor d
    xor b
    xor l
    and [hl]
    ld c, a
    and b
    and c
    xor [hl]
    or h
    or e
    ld a, a
    or e
    and a
    and h
    ld a, a
    xor h
    xor [hl]
    xor l
    and h
    cp b
    rst $20
    ld d, a
    nop
    sub [hl]
    and a
    and b
    or e
    cp l
    ld a, a
    and d
    xor [hl]
    xor [hl]
    xor e
    and $4f
    sub e
    or c
    and b
    and e
    xor b
    xor l
    and [hl]
    ld a, a
    ld d, h
    adc h
    adc [hl]
    adc l
    rst $20
    ld d, a
    nop
    adc b
    ld c, a
    or d
    and b
    xor b
    and e
    ld a, a
    or e
    or c
    and b
    and e
    and h
    rst $20
    ld e, b
    nop
    adc b
    ld a, a
    or e
    or c
    and b
    and e
    and h
    ld a, a
    ld d, h
    adc h
    adc [hl]
    adc l
    ld c, a
    or [hl]
    xor b
    or e
    and a
    ld a, a
    xor h
    cp b
    ld a, a
    and l
    or c
    xor b
    and h
    xor l
    and e
    or d
    rst $20
    ld d, a
    nop
    sub [hl]
    and b
    xor l
    or e
    ld a, a
    or e
    xor [hl]
    ld a, a
    xor a
    xor e
    and b
    cp b
    ld a, a
    or [hl]
    xor b
    or e
    and a
    ld c, a
    xor h
    cp b
    ld a, a
    ld d, h
    adc h
    adc [hl]
    adc l
    and $57
    nop
    adc b
    ld a, a
    or [hl]
    and b
    or d
    ld c, a
    or e
    xor [hl]
    xor [hl]
    ld a, a
    xor b
    xor h
    xor a
    and b
    or e
    xor b
    and h
    xor l
    or e
    rst $20
    ld e, b
    nop
    adc b
    cp h
    xor e
    ld a, a
    and [hl]
    xor [hl]
    ld a, a
    or e
    or c
    and b
    xor b
    xor l
    ld a, a
    or [hl]
    xor b
    or e
    and a
    ld c, a
    or [hl]
    and h
    and b
    xor d
    and h
    or c
    ld a, a
    xor a
    and h
    xor [hl]
    xor a
    xor e
    and h
    add sp, $50
    ld d, b
    nop
    sub c
    adc [hl]
    sub h
    sub e
    add h
    ld a, a
    rst $30
    ei
    ld c, a
    sub [hl]
    and h
    or d
    or e
    ld a, a
    or e
    xor [hl]
    ld a, a
    add l
    sub h
    add d
    add a
    sub d
    adc b
    add b
    ld d, l
    add d
    adc b
    sub e
    sbc b
    ld d, a
    nop
    sub [hl]
    and a
    and b
    or e
    ld a, a
    and e
    xor [hl]
    ld a, a
    cp b
    xor [hl]
    or h
    ld a, a
    or [hl]
    and b
    xor l
    or e
    and $57
    nop
    add e
    xor [hl]
    xor l
    cp [hl]
    ld a, a
    cp b
    xor [hl]
    or h
    ld c, a
    and e
    and b
    or c
    and h
    ld a, a
    xor e
    and b
    or h
    and [hl]
    and a
    rst $20
    ld e, b
    nop
    sub [hl]
    and h
    ld a, a
    xor e
    xor b
    xor d
    and h
    ld a, a
    xor c
    or h
    or d
    or e
    ld c, a
    and a
    and b
    xor l
    and [hl]
    xor b
    xor l
    and [hl]
    ld a, a
    and a
    and h
    or c
    and h
    db $f4
    ld d, l
    or [hl]
    and a
    and b
    or e
    cp l
    ld a, a
    xor b
    or e
    ld a, a
    or e
    xor [hl]
    ld a, a
    cp b
    xor [hl]
    or h
    and $57
    nop
    adc l
    xor b
    and d
    and h
    ld a, a
    add c
    adc b
    adc d
    add h
    rst $20
    ld c, a
    add a
    and b
    xor l
    and e
    ld a, a
    xor b
    or e
    ld a, a
    xor [hl]
    or l
    and h
    or c
    rst $20
    ld d, a
    nop
    adc d
    xor l
    xor [hl]
    and d
    xor d
    ld c, a
    xor [hl]
    or h
    or e
    rst $20
    ld e, b
    nop
    add l
    xor [hl]
    or c
    and [hl]
    and h
    or e
    ld a, a
    xor b
    or e
    db $f4
    ld a, a
    or [hl]
    and a
    xor [hl]
    ld c, a
    xor l
    and h
    and h
    and e
    or d
    ld a, a
    cp b
    xor [hl]
    or h
    or c
    ld a, a
    add c
    adc b
    adc d
    add h
    rst $20
    ld d, a
    nop
    add d
    xor [hl]
    xor h
    and h
    ld a, a
    xor [hl]
    or h
    or e
    ld a, a
    and b
    xor l
    and e
    ld a, a
    xor a
    xor e
    and b
    cp b
    db $f4
    ld c, a
    xor e
    xor b
    or e
    or e
    xor e
    and h
    ld a, a
    xor h
    xor [hl]
    or h
    or d
    and h
    rst $20
    ld d, a
    nop
    sbc b
    xor [hl]
    or h
    ld c, a
    xor e
    xor b
    or e
    or e
    xor e
    and h
    ld a, a
    or c
    and b
    or e
    rst $20
    ld e, b
    nop
    adc b
    ld a, a
    and a
    and b
    or e
    and h
    ld a, a
    xor e
    xor [hl]
    or d
    xor b
    xor l
    and [hl]
    rst $20
    ld c, a
    add [hl]
    and h
    or e
    ld a, a
    and b
    or [hl]
    and b
    cp b
    ld a, a
    and l
    or c
    xor [hl]
    xor h
    ld a, a
    xor h
    and h
    rst $20
    ld d, a
    nop
    add a
    and h
    cp b
    db $f4
    ld a, a
    cp b
    xor [hl]
    or h
    ld a, a
    xor c
    or h
    or d
    or e
    ld c, a
    and c
    or h
    xor h
    xor a
    and h
    and e
    ld a, a
    xor h
    and h
    rst $20
    ld d, a
    nop
    adc d
    and b
    and c
    xor [hl]
    xor [hl]
    xor h
    rst $20
    ld e, b
    nop
    sbc b
    xor [hl]
    or h
    ld a, a
    and d
    and b
    xor l
    ld a, a
    and b
    xor e
    or d
    xor [hl]
    ld a, a
    and [hl]
    and h
    or e
    ld c, a
    or e
    xor [hl]
    ld a, a
    add l
    sub h
    add d
    add a
    sub d
    adc b
    add b
    ld a, a
    and l
    or c
    xor [hl]
    xor h
    ld d, l
    sub l
    add h
    sub c
    adc h
    adc b
    adc e
    adc b
    adc [hl]
    adc l
    ld a, a
    or h
    or d
    xor b
    xor l
    and [hl]
    ld a, a
    and b
    ld d, l
    and d
    xor [hl]
    and b
    or d
    or e
    and b
    xor e
    ld a, a
    or c
    xor [hl]
    and b
    and e
    add sp, $57
    nop
    adc b
    push hl
    ld a, a
    and l
    and h
    and h
    xor e
    xor b
    xor l
    and [hl]
    ld c, a
    and a
    or h
    xor l
    and [hl]
    or c
    cp b
    ld a, a
    and b
    xor l
    and e
    ld a, a
    xor h
    and h
    and b
    xor l
    rst $20
    ld d, a
    nop
    add c
    and b
    and e
    db $f4
    ld c, a
    and c
    and b
    and e
    db $f4
    ld a, a
    and c
    and b
    and e
    rst $20
    ld e, b
    nop
    adc b
    ld a, a
    xor e
    xor b
    xor d
    and h
    ld a, a
    xor h
    cp b
    ld a, a
    ld d, h
    adc h
    adc [hl]
    adc l
    ld c, a
    and l
    and h
    or c
    xor [hl]
    and d
    xor b
    xor [hl]
    or h
    or d
    rst $20
    ld a, a
    sub e
    and a
    and h
    cp b
    ld d, l
    or e
    and h
    and b
    or c
    ld a, a
    or h
    xor a
    ld a, a
    and h
    xor l
    and h
    xor h
    xor b
    and h
    or d
    rst $20
    ld d, a
    nop
    sub d
    or h
    or c
    and h
    db $f4
    ld a, a
    adc b
    cp h
    xor e
    ld a, a
    and [hl]
    xor [hl]
    rst $20
    ld d, a
    nop
    add e
    xor [hl]
    xor l
    cp [hl]
    ld a, a
    xor h
    and b
    xor d
    and h
    ld c, a
    xor h
    and h
    ld a, a
    xor h
    and b
    and e
    rst $20
    ld e, b
    nop
    adc b
    ld a, a
    xor e
    xor b
    xor d
    and h
    ld a, a
    and a
    and b
    or c
    and b
    or d
    or d
    xor b
    xor l
    and [hl]
    ld c, a
    xor a
    and h
    xor [hl]
    xor a
    xor e
    and h
    ld a, a
    or [hl]
    xor b
    or e
    and a
    ld a, a
    xor h
    cp b
    ld d, l
    or l
    xor b
    and d
    xor b
    xor [hl]
    or h
    or d
    ld a, a
    ld d, h
    adc h
    adc [hl]
    adc l
    rst $20
    ld d, a
    nop
    add b
    ld a, a
    or d
    xor e
    and h
    and h
    xor a
    xor b
    xor l
    and [hl]
    ld a, a
    ld d, h
    adc h
    adc [hl]
    adc l
    ld c, a
    and c
    xor e
    xor [hl]
    and d
    xor d
    or d
    ld a, a
    or e
    and a
    and h
    ld a, a
    or [hl]
    and b
    cp b
    rst $20
    ld d, a
    nop
    sub d
    adc l
    adc [hl]
    sub c
    adc e
    add b
    sub a
    ld a, a
    or [hl]
    xor [hl]
    xor d
    and h
    ld a, a
    or h
    xor a
    rst $20
    ld d, c
    adc b
    or e
    ld a, a
    and b
    or e
    or e
    and b
    and d
    xor d
    and h
    and e
    ld a, a
    xor b
    xor l
    ld a, a
    and b
    ld c, a
    and [hl]
    or c
    or h
    xor h
    xor a
    cp b
    ld a, a
    or c
    and b
    and [hl]
    and h
    rst $20
    ld d, a
    nop
    sub [hl]
    xor b
    or e
    and a
    ld a, a
    and b
    ld a, a
    and c
    xor b
    and [hl]
    ld a, a
    cp b
    and b
    or [hl]
    xor l
    db $f4
    ld c, a
    sub d
    adc l
    adc [hl]
    sub c
    adc e
    add b
    sub a
    ld a, a
    or c
    and h
    or e
    or h
    or c
    xor l
    and h
    and e
    ld d, l
    or e
    xor [hl]
    ld a, a
    or e
    and a
    and h
    ld a, a
    xor h
    xor [hl]
    or h
    xor l
    or e
    and b
    xor b
    xor l
    or d
    rst $20
    ld d, a
    nop
    add h
    xor l
    xor c
    xor [hl]
    cp b
    ld a, a
    or e
    and a
    and h
    ld a, a
    or d
    xor e
    xor [hl]
    xor a
    and h
    rst $20
    ld c, a
    add d
    sbc b
    add d
    adc e
    adc b
    adc l
    add [hl]
    ld a, a
    sub c
    adc [hl]
    add b
    add e
    ld d, a
    nop
    sub c
    adc [hl]
    sub h
    sub e
    add h
    ld a, a
    rst $30
    db $fc
    ld c, a
    add d
    add h
    adc e
    add b
    add e
    adc [hl]
    adc l
    ld a, a
    add d
    adc b
    sub e
    sbc b
    ld a, a
    db $e3
    ld d, l
    add l
    sub h
    add d
    add a
    sub d
    adc b
    add b
    ld a, a
    add d
    adc b
    sub e
    sbc b
    ld d, a
    nop
    sub e
    and a
    and h
    or c
    and h
    cp l
    ld a, a
    xor l
    xor [hl]
    ld a, a
    xor h
    xor [hl]
    xor l
    and h
    cp b
    ld c, a
    xor b
    xor l
    ld a, a
    and l
    xor b
    and [hl]
    and a
    or e
    xor b
    xor l
    and [hl]
    ld a, a
    xor d
    xor b
    and e
    or d
    rst $20
    ld d, a
    nop
    add c
    or h
    or c
    xor l
    and h
    and e
    ld c, a
    xor [hl]
    or h
    or e
    rst $20
    ld e, b
    nop
    add [hl]
    xor [hl]
    xor [hl]
    and e
    ld a, a
    or d
    or e
    or h
    and l
    and l
    ld a, a
    xor b
    or d
    ld c, a
    xor e
    cp b
    xor b
    xor l
    and [hl]
    ld a, a
    and b
    or c
    xor [hl]
    or h
    xor l
    and e
    ld a, a
    xor [hl]
    xor l
    ld d, l
    add d
    sbc b
    add d
    adc e
    adc b
    adc l
    add [hl]
    ld a, a
    sub c
    adc [hl]
    add b
    add e
    rst $20
    ld d, a
    nop
    sub [hl]
    and a
    and b
    or e
    ld a, a
    and e
    xor [hl]
    ld a, a
    cp b
    xor [hl]
    or h
    ld a, a
    or [hl]
    and b
    xor l
    or e
    db $f4
    ld c, a
    xor d
    xor b
    and e
    and e
    xor [hl]
    and $57
    nop
    sub [hl]
    and a
    xor [hl]
    xor [hl]
    rst $20
    ld e, b
    nop
    adc b
    ld a, a
    and d
    xor [hl]
    or h
    xor e
    and e
    ld a, a
    and c
    and h
    xor e
    xor e
    cp b
    db $e3
    ld c, a
    and c
    or h
    xor h
    xor a
    ld a, a
    cp b
    xor [hl]
    or h
    ld a, a
    xor [hl]
    or h
    or e
    or e
    and b
    ld d, l
    and a
    and h
    or c
    and h
    rst $20
    ld d, a
    nop
    sbc b
    xor [hl]
    or h
    ld a, a
    and a
    and h
    and b
    and e
    xor b
    xor l
    and [hl]
    ld a, a
    or e
    xor [hl]
    ld c, a
    add l
    sub h
    add d
    add a
    sub d
    adc b
    add b
    and $57
    nop
    add d
    or c
    and b
    or d
    and a
    ld a, a
    and b
    xor l
    and e
    ld c, a
    and c
    or h
    or c
    xor l
    rst $20
    ld e, b
    nop
    adc b
    ld a, a
    xor e
    xor [hl]
    or l
    and h
    ld a, a
    or c
    and b
    and d
    xor b
    xor l
    and [hl]
    ld c, a
    and e
    xor [hl]
    or [hl]
    xor l
    and a
    xor b
    xor e
    xor e
    rst $20
    ld d, a
    nop
    sub [hl]
    and h
    db $e4
    and h
    ld a, a
    add c
    adc b
    adc d
    add h
    sub c
    or d
    rst $20
    ld c, a
    add a
    xor b
    and [hl]
    and a
    or [hl]
    and b
    cp b
    ld a, a
    or d
    or e
    and b
    or c
    or d
    rst $20
    ld d, a
    nop
    sub d
    xor h
    xor [hl]
    xor d
    and h
    and e
    rst $20
    ld e, b
    nop
    add b
    or c
    and h
    ld a, a
    cp b
    xor [hl]
    or h
    ld a, a
    xor e
    xor [hl]
    xor [hl]
    xor d
    xor b
    xor l
    and [hl]
    ld c, a
    and l
    xor [hl]
    or c
    ld a, a
    and b
    and e
    or l
    and h
    xor l
    or e
    or h
    or c
    and h
    and $57
    nop
    adc e
    and h
    or e
    ld a, a
    sub l
    adc [hl]
    adc e
    sub e
    adc [hl]
    sub c
    add c
    ld c, a
    and h
    xor e
    and h
    and d
    or e
    or c
    xor b
    and l
    cp b
    ld a, a
    cp b
    xor [hl]
    or h
    rst $20
    ld d, a
    nop
    add [hl]
    or c
    xor [hl]
    or h
    xor l
    and e
    and h
    and e
    ld c, a
    xor [hl]
    or h
    or e
    rst $20
    ld e, b
    nop
    adc b
    ld a, a
    and [hl]
    xor [hl]
    or e
    ld a, a
    xor h
    cp b
    ld a, a
    sub l
    adc [hl]
    adc e
    sub e
    adc [hl]
    sub c
    add c
    ld c, a
    and b
    or e
    ld a, a
    or e
    and a
    and h
    ld a, a
    and b
    and c
    and b
    xor l
    and e
    xor [hl]
    xor l
    and h
    and e
    ld d, l
    adc a
    adc [hl]
    sub [hl]
    add h
    sub c
    ld a, a
    adc a
    adc e
    add b
    adc l
    sub e
    add sp, $57
    nop
    adc h
    cp b
    ld a, a
    ld d, h
    adc h
    adc [hl]
    adc l
    ld a, a
    or [hl]
    xor [hl]
    xor l
    cp [hl]
    ld c, a
    and h
    or l
    xor [hl]
    xor e
    or l
    and h
    rst $20
    ld a, a
    sub [hl]
    and a
    cp b
    and $57
    nop
    sub [hl]
    and a
    cp b
    db $f4
    ld c, a
    cp b
    xor [hl]
    or h
    rst $20
    ld e, b
    nop
    adc h
    and b
    cp b
    and c
    and h
    ld a, a
    or d
    xor [hl]
    xor h
    and h
    ld a, a
    ld d, h
    adc h
    adc [hl]
    adc l
    ld c, a
    xor l
    and h
    and h
    and e
    ld a, a
    and h
    xor e
    and h
    xor h
    and h
    xor l
    or e
    ld d, l
    sub d
    sub e
    adc [hl]
    adc l
    add h
    or d
    ld a, a
    or e
    xor [hl]
    ld a, a
    and h
    or l
    xor [hl]
    xor e
    or l
    and h
    add sp, $57
    nop
    adc b
    ld a, a
    xor l
    and h
    and h
    and e
    ld a, a
    and b
    ld a, a
    xor e
    xor b
    or e
    or e
    xor e
    and h
    ld c, a
    and h
    or a
    and h
    or c
    and d
    xor b
    or d
    and h
    rst $20
    ld d, a
    nop
    sub [hl]
    and a
    and h
    or [hl]
    rst $20
    ld c, a
    add [hl]
    xor [hl]
    xor [hl]
    and e
    ld a, a
    or [hl]
    xor [hl]
    or c
    xor d
    xor [hl]
    or h
    or e
    rst $20
    ld e, b
    nop
    adc b
    push hl
    ld a, a
    or d
    or h
    or c
    and h
    ld a, a
    adc b
    ld a, a
    xor e
    xor [hl]
    or d
    or e
    ld c, a
    or [hl]
    and h
    xor b
    and [hl]
    and a
    or e
    ld a, a
    or e
    and a
    and h
    or c
    and h
    rst $20
    ld d, a
    nop
    add c
    and h
    ld a, a
    and b
    ld a, a
    or c
    and h
    and c
    and h
    xor e
    rst $20
    ld d, a
    nop
    add b
    and b
    and b
    and b
    or c
    and [hl]
    and a
    rst $20
    ld e, b
    nop
    add c
    and h
    ld a, a
    or c
    and h
    and b
    and e
    cp b
    ld a, a
    or e
    xor [hl]
    ld a, a
    and l
    xor b
    and [hl]
    and a
    or e
    ld c, a
    and l
    xor [hl]
    or c
    ld a, a
    cp b
    xor [hl]
    or h
    or c
    ld a, a
    and c
    and h
    xor e
    xor b
    and h
    and l
    or d
    rst $20
    ld d, a
    nop
    adc l
    xor b
    and d
    and h
    ld a, a
    add c
    adc b
    adc d
    add h
    rst $20
    ld c, a
    add a
    xor [hl]
    or [hl]
    cp l
    ld a, a
    xor b
    or e
    ld a, a
    and a
    and b
    xor l
    and e
    xor e
    and h
    and $57
    nop
    sub d
    and a
    xor [hl]
    xor [hl]
    or e
    rst $20
    ld e, b
    nop
    sub e
    and a
    and h
    ld a, a
    or d
    xor e
    xor [hl]
    xor a
    and h
    ld a, a
    xor h
    and b
    xor d
    and h
    or d
    ld c, a
    xor b
    or e
    ld a, a
    and a
    and b
    or c
    and e
    ld a, a
    or e
    xor [hl]
    ld a, a
    or d
    or e
    and h
    and h
    or c
    rst $20
    ld d, a
    nop
    add [hl]
    and h
    or e
    ld a, a
    xor e
    xor [hl]
    or d
    or e
    ld a, a
    xor d
    xor b
    and e
    rst $20
    ld c, a
    adc b
    push hl
    ld a, a
    and c
    or h
    or d
    and a
    and h
    and e
    rst $20
    ld d, a
    nop
    add b
    or c
    and h
    ld a, a
    cp b
    xor [hl]
    or h
    ld c, a
    or d
    and b
    or e
    xor b
    or d
    and l
    xor b
    and h
    and e
    and $58
    nop
    adc b
    ld a, a
    xor l
    and h
    and h
    and e
    ld a, a
    or e
    xor [hl]
    ld a, a
    and d
    and b
    or e
    and d
    and a
    ld c, a
    and b
    ld a, a
    and l
    and h
    or [hl]
    ld a, a
    sbc c
    or d
    rst $20
    ld d, a
    nop
    adc b
    or e
    cp l
    ld a, a
    and b
    ld a, a
    xor l
    xor [hl]
    or e
    xor b
    and d
    and h
    rst $20
    ld d, c
    sub [hl]
    and b
    or e
    and d
    and a
    ld a, a
    xor [hl]
    or h
    or e
    ld a, a
    and l
    xor [hl]
    or c
    ld c, a
    and e
    xor b
    or d
    and d
    and b
    or c
    and e
    and h
    and e
    ld a, a
    xor b
    or e
    and h
    xor h
    or d
    rst $20
    ld d, a
    nop
    sub e
    sub c
    add b
    adc b
    adc l
    add h
    sub c
    ld a, a
    sub e
    adc b
    adc a
    sub d
    ld d, c
    add b
    xor e
    xor e
    ld a, a
    ld d, h
    adc h
    adc [hl]
    adc l
    ld a, a
    and b
    or c
    and h
    ld c, a
    or h
    xor l
    xor b
    or b
    or h
    and h
    add sp, $51
    add h
    or l
    and h
    xor l
    ld a, a
    ld d, h
    adc h
    adc [hl]
    adc l
    ld a, a
    xor [hl]
    and l
    ld c, a
    or e
    and a
    and h
    ld a, a
    or d
    and b
    xor h
    and h
    ld a, a
    or e
    cp b
    xor a
    and h
    ld a, a
    and b
    xor l
    and e
    ld d, l
    xor e
    and h
    or l
    and h
    xor e
    ld a, a
    and [hl]
    or c
    xor [hl]
    or [hl]
    ld a, a
    and b
    or e
    ld d, l
    and e
    xor b
    and l
    and l
    and h
    or c
    and h
    xor l
    or e
    ld a, a
    or c
    and b
    or e
    and h
    or d
    add sp, $57
    nop
    sub e
    sub c
    add b
    adc b
    adc l
    add h
    sub c
    ld a, a
    sub e
    adc b
    adc a
    sub d
    ld d, c
    adc a
    or c
    and h
    or d
    or d
    ld a, a
    or e
    and a
    and h
    ld a, a
    add b
    ld a, a
    xor [hl]
    or c
    ld a, a
    add c
    ld c, a
    add c
    or h
    or e
    or e
    xor [hl]
    xor l
    ld a, a
    or e
    xor [hl]
    ld a, a
    or d
    or e
    and b
    cp b
    ld a, a
    xor b
    xor l
    ld d, l
    xor a
    xor e
    and b
    and d
    and h
    ld a, a
    or [hl]
    and a
    xor b
    xor e
    and h
    ld a, a
    xor [hl]
    xor l
    ld a, a
    and b
    ld d, l
    or d
    xor e
    xor [hl]
    xor a
    and h
    add sp, $57
    nop
    sub c
    adc [hl]
    sub h
    sub e
    add h
    ld a, a
    rst $30
    db $fd
    ld c, a
    add d
    add h
    adc e
    add b
    add e
    adc [hl]
    adc l
    ld a, a
    add d
    adc b
    sub e
    sbc b
    ld a, a
    db $e3
    ld d, l
    add l
    sub h
    add d
    add a
    sub d
    adc b
    add b
    ld a, a
    add d
    adc b
    sub e
    sbc b
    ld d, a
    nop
    adc b
    or e
    cp l
    ld a, a
    and b
    ld a, a
    xor l
    xor [hl]
    or e
    xor b
    and d
    and h
    rst $20
    ld d, c
    add e
    xor [hl]
    xor l
    cp [hl]
    ld a, a
    or e
    and a
    or c
    xor [hl]
    or [hl]
    ld a, a
    or e
    and a
    and h
    ld c, a
    and [hl]
    and b
    xor h
    and h
    db $f4
    ld a, a
    or e
    and a
    or c
    xor [hl]
    or [hl]
    ld a, a
    ld d, h
    ld d, l
    add c
    add b
    adc e
    adc e
    or d
    ld a, a
    xor b
    xor l
    or d
    or e
    and h
    and b
    and e
    rst $20
    ld d, a
    nop
    add d
    sbc b
    add d
    adc e
    adc b
    adc l
    add [hl]
    ld a, a
    sub c
    adc [hl]
    add b
    add e
    ld c, a
    sub d
    xor e
    xor [hl]
    xor a
    and h
    ld a, a
    and h
    xor l
    and e
    or d
    ld a, a
    and a
    and h
    or c
    and h
    rst $20
    ld d, a
    nop
    adc b
    ld a, a
    and b
    xor e
    or [hl]
    and b
    cp b
    or d
    ld a, a
    and d
    and a
    and h
    and d
    xor d
    ld c, a
    and h
    or l
    and h
    or c
    cp b
    ld a, a
    and [hl]
    or c
    and b
    or d
    or d
    cp b
    ld a, a
    and b
    or c
    and h
    and b
    ld d, l
    and l
    xor [hl]
    or c
    ld a, a
    xor l
    and h
    or [hl]
    ld a, a
    ld d, h
    adc h
    adc [hl]
    adc l
    add sp, $57
    nop
    sub e
    and d
    and a
    rst $20
    ld e, b
    nop
    adc b
    ld a, a
    or [hl]
    xor b
    or d
    and a
    ld a, a
    adc b
    ld a, a
    and a
    and b
    and e
    ld a, a
    and b
    ld c, a
    add c
    adc b
    adc d
    add h
    rst $20
    ld d, a
    nop
    adc d
    or h
    or c
    or h
    xor d
    xor d
    xor [hl]
    xor [hl]
    rst $20
    ld c, a
    add a
    xor [hl]
    or [hl]
    ld a, a
    and e
    xor [hl]
    ld a, a
    cp b
    xor [hl]
    or h
    ld a, a
    xor e
    xor b
    xor d
    and h
    ld d, l
    xor h
    cp b
    ld a, a
    and c
    xor b
    or c
    and e
    ld a, a
    and d
    and b
    xor e
    xor e
    and $57
    nop
    adc b
    ld c, a
    and a
    and b
    and e
    ld a, a
    or e
    xor [hl]
    ld a, a
    and c
    or h
    and [hl]
    ld a, a
    cp b
    xor [hl]
    or h
    rst $20
    ld e, b
    nop
    adc b
    ld a, a
    and b
    xor e
    or d
    xor [hl]
    ld a, a
    and d
    xor [hl]
    xor e
    xor e
    and h
    and d
    or e
    ld a, a
    or d
    and h
    and b
    ld c, a
    ld d, h
    adc h
    adc [hl]
    adc l
    ld a, a
    xor [hl]
    xor l
    ld d, l
    or [hl]
    and h
    and h
    xor d
    and h
    xor l
    and e
    or d
    rst $20
    ld d, a
    nop
    sub e
    and a
    xor b
    or d
    ld a, a
    xor b
    or d
    ld a, a
    xor h
    cp b
    ld a, a
    or e
    or h
    or c
    and l
    rst $20
    ld c, a
    add [hl]
    and h
    or e
    ld a, a
    xor [hl]
    or h
    or e
    ld a, a
    xor [hl]
    and l
    ld a, a
    and a
    and h
    or c
    and h
    rst $20
    ld d, a
    nop
    add e
    and b
    or c
    xor l
    rst $20
    ld e, b
    nop
    sub e
    and a
    xor b
    or d
    ld a, a
    xor b
    or d
    ld a, a
    xor h
    cp b
    ld a, a
    and l
    and b
    or l
    and h
    ld c, a
    ld d, h
    adc h
    adc [hl]
    adc l
    ld a, a
    and a
    or h
    xor l
    or e
    xor b
    xor l
    and [hl]
    ld d, l
    and b
    or c
    and h
    and b
    rst $20
    ld d, a
    nop
    sub c
    adc [hl]
    sub h
    sub e
    add h
    ld a, a
    rst $30
    cp $4f
    add d
    add h
    adc e
    add b
    add e
    adc [hl]
    adc l
    ld a, a
    add d
    adc b
    sub e
    sbc b
    ld a, a
    db $e3
    ld d, l
    add l
    sub h
    add d
    add a
    sub d
    adc b
    add b
    ld a, a
    add d
    adc b
    sub e
    sbc b
    ld d, a
    nop
    add d
    sbc b
    add d
    adc e
    adc b
    adc l
    add [hl]
    ld a, a
    sub c
    adc [hl]
    add b
    add e
    ld c, a
    adc l
    xor [hl]
    ld a, a
    xor a
    and h
    and e
    and h
    or d
    or e
    or c
    xor b
    and b
    xor l
    or d
    ld d, l
    xor a
    and h
    or c
    xor h
    xor b
    or e
    or e
    and h
    and e
    rst $20
    ld d, a
    nop
    add a
    and b
    or l
    and h
    ld a, a
    or e
    xor [hl]
    ld a, a
    or [hl]
    and b
    or c
    xor h
    ld a, a
    or h
    xor a
    ld c, a
    and c
    and h
    and l
    xor [hl]
    or c
    and h
    ld a, a
    xor h
    cp b
    ld a, a
    or d
    or [hl]
    xor b
    xor h
    rst $20
    ld d, a
    nop
    add b
    xor e
    xor e
    ld c, a
    or [hl]
    and b
    or c
    xor h
    and h
    and e
    ld a, a
    or h
    xor a
    rst $20
    ld e, b
    nop
    sub e
    and a
    and b
    xor l
    xor d
    or d
    db $f4
    ld a, a
    xor d
    xor b
    and e
    rst $20
    ld a, a
    adc b
    push hl
    ld c, a
    or c
    and h
    and b
    and e
    cp b
    ld a, a
    and l
    xor [hl]
    or c
    ld a, a
    and b
    ld a, a
    or d
    or [hl]
    xor b
    xor h
    rst $20
    ld d, a
    nop
    sub [hl]
    and b
    xor b
    or e
    rst $20
    ld a, a
    sbc b
    xor [hl]
    or h
    cp h
    xor e
    ld a, a
    and a
    and b
    or l
    and h
    ld c, a
    and b
    ld a, a
    and a
    and h
    and b
    or c
    or e
    ld a, a
    and b
    or e
    or e
    and b
    and d
    xor d
    rst $20
    ld d, a
    nop
    adc [hl]
    xor [hl]
    and a
    rst $20
    ld c, a
    sub e
    and a
    and b
    or e
    cp l
    ld a, a
    and d
    and a
    xor b
    xor e
    xor e
    cp b
    rst $20
    ld e, b
    nop
    sub [hl]
    and b
    or e
    and d
    and a
    ld a, a
    xor [hl]
    or h
    or e
    ld a, a
    and l
    xor [hl]
    or c
    ld c, a
    sub e
    add h
    adc l
    sub e
    add b
    add d
    adc [hl]
    adc [hl]
    adc e
    rst $20
    ld d, a
    nop
    adc b
    ld a, a
    xor e
    xor [hl]
    or l
    and h
    ld a, a
    or d
    or [hl]
    xor b
    xor h
    xor h
    xor b
    xor l
    and [hl]
    rst $20
    ld c, a
    sub [hl]
    and a
    and b
    or e
    ld a, a
    and b
    and c
    xor [hl]
    or h
    or e
    ld a, a
    cp b
    xor [hl]
    or h
    and $57
    nop
    add c
    and h
    xor e
    xor e
    cp b
    ld c, a
    and l
    xor e
    xor [hl]
    xor a
    rst $20
    ld e, b
    nop
    adc b
    ld a, a
    and d
    and b
    xor l
    ld a, a
    and c
    and h
    and b
    or e
    ld a, a
    ld d, h
    adc h
    adc [hl]
    adc l
    ld c, a
    and b
    or e
    ld a, a
    or d
    or [hl]
    xor b
    xor h
    xor h
    xor b
    xor l
    and [hl]
    rst $20
    ld d, a
    nop
    sub [hl]
    and a
    and b
    or e
    cp l
    ld a, a
    and c
    and h
    cp b
    xor [hl]
    xor l
    and e
    ld a, a
    or e
    and a
    and h
    ld c, a
    and a
    xor [hl]
    or c
    xor b
    cp c
    xor [hl]
    xor l
    and $57
    nop
    add [hl]
    xor e
    or h
    and c
    rst $20
    ld e, b
    nop
    adc b
    ld a, a
    or d
    and h
    and h
    ld a, a
    and b
    ld a, a
    and d
    xor [hl]
    or h
    xor a
    xor e
    and h
    ld a, a
    xor [hl]
    and l
    ld c, a
    xor b
    or d
    xor e
    and b
    xor l
    and e
    or d
    rst $20
    ld d, a
    nop
    adc b
    ld a, a
    or e
    or c
    xor b
    and h
    and e
    ld a, a
    and e
    xor b
    or l
    xor b
    xor l
    and [hl]
    ld c, a
    and l
    xor [hl]
    or c
    ld a, a
    ld d, h
    adc h
    adc [hl]
    adc l
    db $f4
    ld a, a
    and c
    or h
    or e
    ld d, l
    xor b
    or e
    ld a, a
    or [hl]
    and b
    or d
    ld a, a
    and b
    ld a, a
    xor l
    xor [hl]
    ld a, a
    and [hl]
    xor [hl]
    rst $20
    ld d, a
    nop
    add a
    and h
    xor e
    xor a
    rst $20
    ld e, b
    nop
    sbc b
    xor [hl]
    or h
    ld a, a
    and a
    and b
    or l
    and h
    ld a, a
    or e
    xor [hl]
    ld a, a
    and l
    xor b
    or d
    and a
    ld c, a
    and l
    xor [hl]
    or c
    ld a, a
    or d
    and h
    and b
    ld a, a
    ld d, h
    adc h
    adc [hl]
    adc l
    rst $20
    ld d, a
    nop
    adc b
    ld a, a
    xor e
    xor [hl]
    xor [hl]
    xor d
    ld a, a
    and b
    or e
    ld a, a
    or e
    and a
    and h
    ld c, a
    or d
    and h
    and b
    ld a, a
    or e
    xor [hl]
    ld a, a
    and l
    xor [hl]
    or c
    and [hl]
    and h
    or e
    rst $20
    ld d, a
    nop
    adc [hl]
    xor [hl]
    and a
    rst $20
    ld c, a
    sub e
    or c
    and b
    or h
    xor h
    and b
    or e
    xor b
    and d
    rst $20
    ld e, b
    nop
    adc b
    push hl
    ld a, a
    xor e
    xor [hl]
    xor [hl]
    xor d
    xor b
    xor l
    and [hl]
    ld a, a
    and b
    or e
    ld a, a
    or e
    and a
    and h
    ld c, a
    or d
    and h
    and b
    ld a, a
    or e
    xor [hl]
    ld a, a
    and l
    xor [hl]
    or c
    and [hl]
    and h
    or e
    rst $20
    ld d, a
    nop
    adc [hl]
    and a
    db $f4
    ld a, a
    adc b
    ld a, a
    xor c
    or h
    or d
    or e
    ld a, a
    xor e
    xor [hl]
    or l
    and h
    ld c, a
    cp b
    xor [hl]
    or h
    or c
    ld a, a
    or c
    xor b
    and e
    and h
    rst $20
    ld a, a
    add d
    and b
    xor l
    ld a, a
    adc b
    ld d, l
    and a
    and b
    or l
    and h
    ld a, a
    xor b
    or e
    ld a, a
    xor b
    and l
    ld a, a
    adc b
    ld a, a
    or [hl]
    xor b
    xor l
    and $57
    nop
    adc [hl]
    and a
    rst $20
    ld c, a
    adc b
    ld a, a
    xor e
    xor [hl]
    or d
    or e
    rst $20
    ld e, b
    nop
    adc b
    or e
    cp l
    ld a, a
    or d
    or e
    xor b
    xor e
    xor e
    ld a, a
    and b
    ld a, a
    xor e
    xor [hl]
    xor l
    and [hl]
    ld c, a
    or [hl]
    and b
    cp b
    ld a, a
    or e
    xor [hl]
    ld a, a
    and [hl]
    xor [hl]
    ld a, a
    or e
    xor [hl]
    ld d, l
    sub d
    add h
    add b
    add l
    adc [hl]
    add b
    adc h
    ld a, a
    adc b
    sub d
    adc e
    add b
    adc l
    add e
    sub d
    add sp, $57
    nop
    sub d
    or [hl]
    xor b
    xor h
    xor h
    xor b
    xor l
    and [hl]
    cp l
    ld a, a
    and [hl]
    or c
    and h
    and b
    or e
    rst $20
    ld c, a
    sub d
    or h
    xor l
    and c
    or h
    or c
    xor l
    or d
    ld a, a
    and b
    or c
    and h
    xor l
    cp [hl]
    rst $20
    ld d, a
    nop
    sub d
    and a
    xor [hl]
    and d
    xor d
    and h
    or c
    rst $20
    ld e, b
    nop
    adc h
    cp b
    ld a, a
    and c
    xor [hl]
    cp b
    ld a, a
    and l
    or c
    xor b
    and h
    xor l
    and e
    ld c, a
    or [hl]
    and b
    xor l
    or e
    and h
    and e
    ld a, a
    or e
    xor [hl]
    ld a, a
    or d
    or [hl]
    xor b
    xor h
    ld a, a
    or e
    xor [hl]
    ld d, l
    sub d
    add h
    add b
    add l
    adc [hl]
    add b
    adc h
    ld a, a
    adc b
    sub d
    adc e
    add b
    adc l
    add e
    sub d
    add sp, $57
    nop
    sub e
    and a
    and h
    or d
    and h
    ld a, a
    or [hl]
    and b
    or e
    and h
    or c
    or d
    ld a, a
    and b
    or c
    and h
    ld c, a
    or e
    or c
    and h
    and b
    and d
    and a
    and h
    or c
    xor [hl]
    or h
    or d
    rst $20
    ld d, a
    nop
    adc [hl]
    xor [hl]
    and a
    rst $20
    ld c, a
    add e
    and b
    xor l
    and [hl]
    and h
    or c
    xor [hl]
    or h
    or d
    rst $20
    ld e, b
    nop
    adc b
    ld a, a
    and [hl]
    xor [hl]
    or e
    ld a, a
    and b
    ld a, a
    and d
    or c
    and b
    xor h
    xor a
    rst $20
    ld c, a
    add [hl]
    xor e
    or h
    and c
    db $f4
    ld a, a
    and [hl]
    xor e
    or h
    and c
    add sp, -$18
    add sp, $57
    nop
    adc b
    ld a, a
    or d
    or [hl]
    and b
    xor h
    ld a, a
    and a
    and h
    or c
    and h
    db $f4
    ld a, a
    and c
    or h
    or e
    ld c, a
    adc b
    push hl
    ld a, a
    or e
    xor b
    or c
    and h
    and e
    add sp, $57
    nop
    adc b
    push hl
    ld c, a
    and h
    or a
    and a
    and b
    or h
    or d
    or e
    and h
    and e
    add sp, -$18
    add sp, $58
    nop
    adc e
    add b
    adc a
    sub c
    add b
    sub d
    ld a, a
    xor b
    or d
    ld a, a
    or d
    xor [hl]
    ld a, a
    and c
    xor b
    and [hl]
    db $f4
    ld c, a
    xor b
    or e
    ld a, a
    xor h
    or h
    or d
    or e
    ld a, a
    xor d
    and h
    and h
    xor a
    ld a, a
    cp b
    xor [hl]
    or h
    ld d, l
    and e
    or c
    cp b
    ld a, a
    xor [hl]
    xor l
    ld a, a
    or [hl]
    and b
    or e
    and h
    or c
    add sp, $57
    nop
    sub d
    add h
    add b
    ld a, a
    sub c
    adc [hl]
    sub h
    sub e
    add h
    ld a, a
    rst $30
    rst $38
    ld c, a
    add l
    sub h
    add d
    add a
    sub d
    adc b
    add b
    ld a, a
    add d
    adc b
    sub e
    sbc b
    ld a, a
    db $e3
    ld d, l
    sub d
    add h
    add b
    add l
    adc [hl]
    add b
    adc h
    ld a, a
    adc b
    sub d
    adc e
    add b
    adc l
    add e
    sub d
    ld d, a
    nop
    sub e
    and a
    and h
    ld a, a
    or [hl]
    and b
    or e
    and h
    or c
    ld a, a
    xor b
    or d
    ld c, a
    or d
    and a
    and b
    xor e
    xor e
    xor [hl]
    or [hl]
    ld a, a
    and a
    and h
    or c
    and h
    add sp, $57
    nop
    sub d
    xor a
    xor e
    and b
    or d
    and a
    rst $20
    ld e, b
    nop
    adc b
    ld a, a
    or [hl]
    xor b
    or d
    and a
    ld a, a
    adc b
    ld a, a
    and d
    xor [hl]
    or h
    xor e
    and e
    ld c, a
    or c
    xor b
    and e
    and h
    ld a, a
    xor h
    cp b
    ld a, a
    ld d, h
    adc h
    adc [hl]
    adc l
    add sp, $57
    nop
    sub d
    add h
    add b
    add l
    adc [hl]
    add b
    adc h
    ld a, a
    xor b
    or d
    ld a, a
    and b
    ld c, a
    or b
    or h
    xor b
    and h
    or e
    ld a, a
    and [hl]
    and h
    or e
    and b
    or [hl]
    and b
    cp b
    rst $20
    ld d, a
    nop
    sub b
    or h
    xor b
    or e
    ld a, a
    xor b
    or e
    rst $20
    ld e, b
    nop
    sub e
    and a
    and h
    or c
    and h
    cp l
    ld a, a
    and b
    ld a, a
    and a
    or h
    and [hl]
    and h
    ld c, a
    and d
    and b
    or l
    and h
    or c
    xor l
    ld a, a
    or h
    xor l
    and e
    and h
    or c
    xor l
    and h
    and b
    or e
    and a
    ld d, l
    or e
    and a
    xor b
    or d
    ld a, a
    xor b
    or d
    xor e
    and b
    xor l
    and e
    add sp, $57
    nop
    adc b
    ld a, a
    xor e
    xor [hl]
    or l
    and h
    ld a, a
    and l
    xor e
    xor [hl]
    and b
    or e
    xor b
    xor l
    and [hl]
    ld c, a
    or [hl]
    xor b
    or e
    and a
    ld a, a
    or e
    and a
    and h
    ld a, a
    and l
    xor b
    or d
    and a
    and h
    or d
    rst $20
    ld d, a
    nop
    sbc b
    xor [hl]
    or [hl]
    and d
    and a
    rst $20
    ld e, b
    nop
    sub [hl]
    and b
    xor l
    or e
    ld a, a
    or e
    xor [hl]
    ld a, a
    and l
    xor e
    xor [hl]
    and b
    or e
    ld c, a
    or [hl]
    xor b
    or e
    and a
    ld a, a
    xor h
    and h
    and $57
    nop
    add b
    or c
    and h
    ld a, a
    cp b
    xor [hl]
    or h
    ld a, a
    xor [hl]
    xor l
    ld c, a
    or l
    and b
    and d
    and b
    or e
    xor b
    xor [hl]
    xor l
    ld a, a
    or e
    xor [hl]
    xor [hl]
    and $57
    nop
    adc l
    xor [hl]
    ld c, a
    xor h
    and h
    or c
    and d
    cp b
    ld a, a
    and b
    or e
    ld a, a
    and b
    xor e
    xor e
    rst $20
    ld e, b
    nop
    sub d
    add h
    add b
    add l
    adc [hl]
    add b
    adc h
    ld a, a
    or h
    or d
    and h
    and e
    ld a, a
    or e
    xor [hl]
    ld c, a
    and c
    and h
    ld a, a
    xor [hl]
    xor l
    and h
    ld a, a
    xor b
    or d
    xor e
    and b
    xor l
    and e
    rst $20
    ld d, a
    nop
    add d
    and a
    and h
    and d
    xor d
    ld a, a
    xor [hl]
    or h
    or e
    ld a, a
    xor h
    cp b
    ld a, a
    and c
    or h
    and l
    and l
    ld c, a
    xor a
    and a
    cp b
    or d
    xor b
    or b
    or h
    and h
    rst $20
    ld d, a
    nop
    sub [hl]
    xor b
    xor h
    xor a
    cp b
    rst $20
    ld e, b
    nop
    adc b
    ld a, a
    or d
    and a
    xor [hl]
    or h
    xor e
    and e
    cp a
    and h
    ld a, a
    and c
    and h
    and h
    xor l
    ld c, a
    and c
    or h
    and l
    and l
    xor b
    xor l
    and [hl]
    ld a, a
    or h
    xor a
    ld a, a
    xor h
    cp b
    ld d, l
    ld d, h
    adc h
    adc [hl]
    adc l
    db $f4
    ld a, a
    xor l
    xor [hl]
    or e
    ld a, a
    xor h
    and h
    rst $20
    ld d, a
    nop
    sub [hl]
    and a
    cp b
    ld a, a
    and b
    or c
    and h
    ld a, a
    cp b
    xor [hl]
    or h
    ld c, a
    or c
    xor b
    and e
    xor b
    xor l
    and [hl]
    ld a, a
    and b
    ld a, a
    ld d, h
    adc h
    adc [hl]
    adc l
    and $55
    add d
    and b
    xor l
    cp [hl]
    ld a, a
    cp b
    xor [hl]
    or h
    ld a, a
    or d
    or [hl]
    xor b
    xor h
    and $57
    nop
    adc [hl]
    or h
    and d
    and a
    rst $20
    ld c, a
    sub e
    xor [hl]
    or c
    xor a
    and h
    and e
    xor [hl]
    and h
    and e
    rst $20
    ld e, b
    nop
    sub c
    xor b
    and e
    xor b
    xor l
    and [hl]
    ld a, a
    and b
    ld a, a
    ld d, h
    adc h
    adc [hl]
    adc l
    ld c, a
    or d
    or h
    or c
    and h
    ld a, a
    xor e
    xor [hl]
    xor [hl]
    xor d
    or d
    ld a, a
    and l
    or h
    xor l
    rst $20
    ld d, a
    nop
    adc b
    ld a, a
    or c
    xor [hl]
    and e
    and h
    ld a, a
    xor h
    cp b
    ld a, a
    and c
    xor b
    or c
    and e
    ld c, a
    ld d, h
    adc h
    adc [hl]
    adc l
    ld a, a
    and a
    and h
    or c
    and h
    rst $20
    ld d, a
    nop
    adc [hl]
    and a
    ld c, a
    xor l
    xor [hl]
    rst $20
    ld e, b
    nop
    adc h
    cp b
    ld a, a
    and c
    xor b
    or c
    and e
    or d
    ld a, a
    and d
    and b
    xor l
    cp [hl]
    ld c, a
    add l
    adc e
    sbc b
    ld a, a
    xor h
    and h
    ld a, a
    and c
    and b
    and d
    xor d
    rst $20
    ld d, a
    nop
    adc h
    cp b
    ld a, a
    and c
    xor [hl]
    cp b
    ld a, a
    and l
    or c
    xor b
    and h
    xor l
    and e
    ld a, a
    and [hl]
    and b
    or l
    and h
    ld c, a
    xor h
    and h
    ld a, a
    and c
    xor b
    and [hl]
    ld a, a
    xor a
    and h
    and b
    or c
    xor e
    or d
    rst $20
    ld d, a
    nop
    add e
    xor [hl]
    xor l
    cp [hl]
    ld c, a
    or e
    xor [hl]
    or h
    and d
    and a
    ld a, a
    xor h
    cp b
    ld a, a
    xor a
    and h
    and b
    or c
    xor e
    or d
    rst $20
    ld e, b
    nop
    sub [hl]
    xor b
    xor e
    xor e
    ld a, a
    xor h
    cp b
    ld a, a
    xor a
    and h
    and b
    or c
    xor e
    or d
    ld c, a
    and [hl]
    or c
    xor [hl]
    or [hl]
    ld a, a
    and c
    xor b
    and [hl]
    and [hl]
    and h
    or c
    ld d, l
    xor b
    xor l
    or d
    xor b
    and e
    and h
    ld a, a
    add d
    adc e
    adc [hl]
    sbc b
    sub d
    sub e
    add h
    sub c
    and $57
    nop
    adc b
    ld a, a
    or d
    or [hl]
    and b
    xor h
    ld a, a
    and a
    and h
    or c
    and h
    ld a, a
    and l
    or c
    xor [hl]
    xor h
    ld c, a
    add d
    adc b
    adc l
    adc l
    add b
    add c
    add b
    sub c
    ld a, a
    adc b
    sub d
    adc e
    add b
    adc l
    add e
    rst $20
    ld d, a
    nop
    adc b
    push hl
    ld c, a
    or d
    xor [hl]
    ld a, a
    and e
    xor b
    or d
    and b
    xor a
    xor a
    xor [hl]
    xor b
    xor l
    or e
    and h
    and e
    rst $20
    ld e, b
    nop
    ld d, h
    adc h
    adc [hl]
    adc l
    ld a, a
    and a
    and b
    or l
    and h
    ld c, a
    or e
    and b
    xor d
    and h
    xor l
    ld a, a
    xor [hl]
    or l
    and h
    or c
    ld a, a
    and b
    xor l
    ld d, l
    and b
    and c
    and b
    xor l
    and e
    xor [hl]
    xor l
    and h
    and e
    ld a, a
    xor h
    and b
    xor l
    or d
    xor b
    xor [hl]
    xor l
    ld d, l
    xor [hl]
    xor l
    ld a, a
    add d
    adc b
    adc l
    adc l
    add b
    add c
    add b
    sub c
    rst $20
    ld d, a
    nop
    add d
    adc b
    adc l
    adc l
    add b
    add c
    add b
    sub c
    db $f4
    ld a, a
    xor b
    xor l
    ld a, a
    or e
    and a
    and h
    ld c, a
    or [hl]
    and h
    or d
    or e
    db $f4
    ld a, a
    and a
    and b
    or d
    ld a, a
    and b
    ld a, a
    adc e
    add b
    add c
    ld d, l
    and l
    xor [hl]
    or c
    ld a, a
    ld d, h
    adc h
    adc [hl]
    adc l
    add sp, $57
    nop
    sub [hl]
    and b
    xor b
    or e
    rst $20
    ld e, b
    nop
    add d
    adc b
    adc l
    adc l
    add b
    add c
    add b
    sub c
    ld a, a
    xor b
    or d
    ld a, a
    and b
    ld a, a
    ld c, a
    or l
    xor [hl]
    xor e
    and d
    and b
    xor l
    xor b
    and d
    ld a, a
    xor b
    or d
    xor e
    and b
    xor l
    and e
    rst $20
    ld d, a
    nop
    sub d
    add h
    add b
    add l
    adc [hl]
    add b
    adc h
    ld a, a
    adc b
    sub d
    adc e
    add b
    adc l
    add e
    sub d
    ld d, a
    nop
    sbc b
    xor [hl]
    or h
    ld a, a
    or [hl]
    and b
    xor l
    or e
    ld a, a
    or e
    xor [hl]
    ld a, a
    xor d
    xor l
    xor [hl]
    or [hl]
    ld c, a
    xor b
    and l
    ld a, a
    or e
    and a
    and h
    ld a, a
    and l
    xor b
    or d
    and a
    ld a, a
    and b
    or c
    and h
    ld d, l
    and c
    xor b
    or e
    xor b
    xor l
    and [hl]
    and $57
    nop
    add e
    and b
    xor l
    and [hl]
    rst $20
    ld e, b
    nop
    adc b
    ld a, a
    and d
    and b
    xor l
    cp [hl]
    ld a, a
    and d
    and b
    or e
    and d
    and a
    ld c, a
    and b
    xor l
    cp b
    or e
    and a
    xor b
    xor l
    and [hl]
    ld a, a
    and [hl]
    xor [hl]
    xor [hl]
    and e
    rst $20
    ld d, a
    nop
    adc b
    ld a, a
    and [hl]
    xor [hl]
    or e
    ld a, a
    and b
    ld a, a
    and c
    xor b
    and [hl]
    ld a, a
    and a
    and b
    or h
    xor e
    rst $20
    ld c, a
    sub [hl]
    and b
    xor l
    xor l
    and b
    ld a, a
    and [hl]
    xor [hl]
    ld a, a
    and l
    xor [hl]
    or c
    ld a, a
    xor b
    or e
    and $57
    nop
    add e
    and b
    or c
    xor l
    ld c, a
    adc h
    add b
    add [hl]
    adc b
    adc d
    add b
    sub c
    adc a
    rst $20
    ld e, b
    nop
    adc b
    ld a, a
    or d
    and h
    and h
    xor h
    ld a, a
    or e
    xor [hl]
    ld a, a
    xor [hl]
    xor l
    xor e
    cp b
    ld c, a
    and d
    and b
    or e
    and d
    and a
    ld a, a
    adc h
    add b
    add [hl]
    adc b
    adc d
    add b
    sub c
    adc a
    rst $20
    ld d, a
    nop
    sub e
    and a
    and h
    ld a, a
    or d
    and h
    and b
    ld a, a
    and d
    xor e
    and h
    and b
    xor l
    or d
    and h
    or d
    ld c, a
    xor h
    cp b
    ld a, a
    and c
    xor [hl]
    and e
    cp b
    ld a, a
    and b
    xor l
    and e
    ld a, a
    or d
    xor [hl]
    or h
    xor e
    rst $20
    ld d, a
    nop
    add b
    cp b
    and b
    and a
    rst $20
    ld e, b
    nop
    adc b
    ld a, a
    xor e
    xor b
    xor d
    and h
    ld a, a
    or e
    and a
    and h
    ld c, a
    xor h
    xor [hl]
    or h
    xor l
    or e
    and b
    xor b
    xor l
    or d
    ld a, a
    or e
    xor [hl]
    xor [hl]
    rst $20
    ld d, a
    nop
    sub [hl]
    and a
    and b
    or e
    cp l
    ld a, a
    or [hl]
    or c
    xor [hl]
    xor l
    and [hl]
    ld a, a
    or [hl]
    xor b
    or e
    and a
    ld c, a
    xor h
    and h
    ld a, a
    or d
    or [hl]
    xor b
    xor h
    xor h
    xor b
    xor l
    and [hl]
    and $57
    nop
    add d
    and a
    and h
    and b
    xor a
    ld c, a
    or d
    and a
    xor [hl]
    or e
    rst $20
    ld e, b
    nop
    adc b
    ld a, a
    xor e
    xor [hl]
    xor [hl]
    xor d
    ld a, a
    xor e
    xor b
    xor d
    and h
    ld a, a
    or [hl]
    and a
    and b
    or e
    and $4f
    add b
    ld a, a
    or d
    or e
    or h
    and e
    and e
    and h
    and e
    ld a, a
    xor b
    xor l
    xor l
    and h
    or c
    ld d, l
    or e
    or h
    and c
    and h
    and $7f
    add [hl]
    and h
    or e
    ld a, a
    xor e
    xor [hl]
    or d
    or e
    rst $20
    ld d, a
    nop
    adc b
    ld a, a
    and d
    and b
    or h
    and [hl]
    and a
    or e
    ld a, a
    and b
    xor e
    xor e
    ld a, a
    xor h
    cp b
    ld c, a
    ld d, h
    adc h
    adc [hl]
    adc l
    ld a, a
    and b
    or e
    ld a, a
    or d
    and h
    and b
    rst $20
    ld d, a
    nop
    add e
    xor b
    or l
    and h
    or c
    rst $20
    rst $20
    ld c, a
    add e
    xor [hl]
    or [hl]
    xor l
    rst $20
    rst $20
    ld e, b
    nop
    sub [hl]
    and a
    and h
    or c
    and h
    cp e
    ld a, a
    cp b
    xor [hl]
    or h
    ld a, a
    and d
    and b
    or e
    and d
    and a
    ld c, a
    cp b
    xor [hl]
    or h
    or c
    ld a, a
    ld d, h
    adc h
    adc [hl]
    adc l
    and $57
    nop
    sub c
    xor b
    and [hl]
    and a
    or e
    ld a, a
    xor l
    xor [hl]
    or [hl]
    db $f4
    ld a, a
    adc b
    push hl
    ld a, a
    xor b
    xor l
    ld c, a
    and b
    ld a, a
    or e
    or c
    xor b
    and b
    or e
    and a
    xor e
    xor [hl]
    xor l
    ld a, a
    xor h
    and h
    and h
    or e
    rst $20
    ld d, a
    nop
    adc a
    and b
    xor l
    or e
    add sp, -$18
    add sp, $4f
    xor a
    and b
    xor l
    or e
    add sp, -$18
    add sp, -$51
    and b
    xor l
    or e
    add sp, -$18
    add sp, $58
    nop
    adc b
    push hl
    ld a, a
    and c
    and h
    and b
    or e
    rst $20
    ld c, a
    add c
    or h
    or e
    db $f4
    ld a, a
    adc b
    ld a, a
    or d
    or e
    xor b
    xor e
    xor e
    ld a, a
    and a
    and b
    or l
    and h
    ld d, l
    or e
    and a
    and h
    ld a, a
    and c
    xor b
    xor d
    and h
    ld a, a
    or c
    and b
    and d
    and h
    ld a, a
    and b
    xor l
    and e
    ld d, l
    xor h
    and b
    or c
    and b
    or e
    and a
    xor [hl]
    xor l
    ld a, a
    xor e
    and h
    and l
    or e
    rst $20
    ld d, a
    nop
    add b
    and a
    and a
    rst $20
    ld a, a
    add l
    and h
    and h
    xor e
    ld a, a
    or e
    and a
    and h
    ld a, a
    or d
    or h
    xor l
    ld c, a
    and b
    xor l
    and e
    ld a, a
    or e
    and a
    and h
    ld a, a
    or [hl]
    xor b
    xor l
    and e
    rst $20
    ld d, a
    nop
    sbc b
    xor [hl]
    or [hl]
    rst $20
    ld c, a
    adc b
    ld a, a
    xor e
    xor [hl]
    or d
    or e
    rst $20
    ld e, b
    nop
    adc b
    push hl
    ld a, a
    or d
    or h
    xor l
    and c
    or h
    or c
    xor l
    or e
    ld a, a
    or e
    xor [hl]
    ld a, a
    and b
    ld c, a
    and d
    or c
    xor b
    or d
    xor a
    rst $20
    ld d, a
    nop
    add a
    and h
    cp b
    db $f4
    ld a, a
    and e
    xor [hl]
    xor l
    cp [hl]
    ld a, a
    or d
    and d
    and b
    or c
    and h
    ld c, a
    and b
    or [hl]
    and b
    cp b
    ld a, a
    or e
    and a
    and h
    ld a, a
    and l
    xor b
    or d
    and a
    rst $20
    ld d, a
    nop
    sub d
    xor [hl]
    or c
    or c
    cp b
    rst $20
    ld c, a
    adc b
    ld a, a
    and e
    xor b
    and e
    xor l
    cp [hl]
    ld a, a
    xor h
    and h
    and b
    xor l
    ld a, a
    xor b
    or e
    rst $20
    ld e, b
    nop
    adc b
    ld a, a
    or [hl]
    and b
    or d
    ld a, a
    xor c
    or h
    or d
    or e
    ld a, a
    and b
    xor l
    and [hl]
    or c
    cp b
    ld c, a
    or e
    and a
    and b
    or e
    ld a, a
    adc b
    ld a, a
    and d
    xor [hl]
    or h
    xor e
    and e
    xor l
    cp [hl]
    ld d, l
    and d
    and b
    or e
    and d
    and a
    ld a, a
    and b
    xor l
    cp b
    or e
    and a
    xor b
    xor l
    and [hl]
    add sp, $57
    nop
    adc d
    and h
    and h
    xor a
    ld a, a
    xor h
    and h
    ld a, a
    and d
    xor [hl]
    xor h
    xor a
    and b
    xor l
    cp b
    ld c, a
    cp [hl]
    xor b
    xor e
    ld a, a
    adc b
    ld a, a
    and [hl]
    and h
    or e
    ld a, a
    and b
    ld a, a
    and a
    xor b
    or e
    rst $20
    ld d, a
    nop
    sub e
    and a
    and b
    or e
    ld c, a
    and c
    or h
    or c
    xor l
    and h
    and e
    ld a, a
    or d
    xor [hl]
    xor h
    and h
    ld a, a
    or e
    xor b
    xor h
    and h
    add sp, $58
    nop
    adc [hl]
    and a
    ld a, a
    or [hl]
    and b
    xor b
    or e
    rst $20
    ld a, a
    adc b
    ld a, a
    and [hl]
    xor [hl]
    or e
    ld a, a
    and b
    ld c, a
    and c
    xor b
    or e
    and h
    rst $20
    ld a, a
    sbc b
    and h
    and b
    and a
    rst $20
    ld d, a
    nop
    ld d, e
    sbc h
    ld a, a
    add a
    and h
    cp b
    rst $20
    ld c, a
    ld d, d
    rst $20
    ld d, c
    sbc b
    xor [hl]
    or h
    db $e4
    and h
    ld a, a
    and [hl]
    xor [hl]
    xor b
    xor l
    and [hl]
    ld a, a
    or e
    xor [hl]
    ld c, a
    ld d, h
    adc h
    adc [hl]
    adc l
    ld a, a
    adc e
    add h
    add b
    add [hl]
    sub h
    add h
    and $51
    add l
    xor [hl]
    or c
    and [hl]
    and h
    or e
    ld a, a
    xor b
    or e
    rst $20
    ld a, a
    sbc b
    xor [hl]
    or h
    ld c, a
    xor a
    or c
    xor [hl]
    and c
    and b
    and c
    xor e
    cp b
    ld a, a
    and e
    xor [hl]
    xor l
    cp [hl]
    ld d, l
    and a
    and b
    or l
    and h
    ld a, a
    and b
    xor l
    cp b
    ld a, a
    add c
    add b
    add e
    add [hl]
    add h
    or d
    rst $20
    ld d, c
    sub e
    and a
    and h
    ld a, a
    and [hl]
    or h
    and b
    or c
    and e
    ld a, a
    or [hl]
    xor [hl]
    xor l
    cp [hl]
    ld c, a
    xor e
    and h
    or e
    ld a, a
    cp b
    xor [hl]
    or h
    ld a, a
    or e
    and a
    or c
    xor [hl]
    or h
    and [hl]
    and a
    rst $20
    ld d, c
    add c
    cp b
    ld a, a
    or e
    and a
    and h
    ld a, a
    or [hl]
    and b
    cp b
    db $f4
    ld a, a
    and e
    xor b
    and e
    ld c, a
    cp b
    xor [hl]
    or h
    or c
    ld a, a
    ld d, h
    adc h
    adc [hl]
    adc l
    ld d, l
    and [hl]
    and h
    or e
    ld a, a
    and b
    xor l
    cp b
    ld a, a
    or d
    or e
    or c
    xor [hl]
    xor l
    and [hl]
    and h
    or c
    and $57
    nop
    adc b
    ld a, a
    and a
    and h
    and b
    or c
    and e
    ld a, a
    ld d, h
    adc h
    adc [hl]
    adc l
    ld c, a
    adc e
    add h
    add b
    add [hl]
    sub h
    add h
    ld a, a
    and a
    and b
    or d
    ld a, a
    xor h
    and b
    xor l
    cp b
    ld d, l
    or e
    xor [hl]
    or h
    and [hl]
    and a
    ld a, a
    or e
    or c
    and b
    xor b
    xor l
    and h
    or c
    or d
    rst $20
    ld d, c
    adc b
    ld a, a
    and a
    and b
    or l
    and h
    ld a, a
    or e
    xor [hl]
    ld a, a
    and l
    xor b
    and [hl]
    or h
    or c
    and h
    ld c, a
    xor [hl]
    or h
    or e
    ld a, a
    and a
    xor [hl]
    or [hl]
    ld a, a
    or e
    xor [hl]
    ld a, a
    and [hl]
    and h
    or e
    ld d, l
    xor a
    and b
    or d
    or e
    ld a, a
    or e
    and a
    and h
    xor h
    rst $20
    ld d, c
    sbc b
    xor [hl]
    or h
    ld a, a
    or d
    and a
    xor [hl]
    or h
    xor e
    and e
    ld a, a
    or b
    or h
    xor b
    or e
    ld c, a
    and e
    and b
    or [hl]
    and e
    xor e
    xor b
    xor l
    and [hl]
    ld a, a
    and b
    xor l
    and e
    ld a, a
    and [hl]
    and h
    or e
    ld d, l
    and b
    ld a, a
    xor h
    xor [hl]
    or l
    and h
    ld a, a
    xor [hl]
    xor l
    rst $20
    ld d, a
    nop
    add b
    or [hl]
    or [hl]
    or [hl]
    rst $20
    ld c, a
    sbc b
    xor [hl]
    or h
    ld a, a
    xor c
    or h
    or d
    or e
    ld a, a
    xor e
    or h
    and d
    xor d
    and h
    and e
    ld d, l
    xor [hl]
    or h
    or e
    rst $20
    ld e, b
    nop
    ld d, e
    sbc h
    ld a, a
    sub [hl]
    and a
    and b
    or e
    and $4f
    sub [hl]
    and a
    cp b
    ld a, a
    and e
    xor [hl]
    ld a, a
    adc b
    ld a, a
    and a
    and b
    or l
    and h
    ld a, a
    ld hl, sp+$55
    ld d, h
    adc h
    adc [hl]
    adc l
    and $51
    sbc b
    xor [hl]
    or h
    ld a, a
    or d
    and a
    xor [hl]
    or h
    xor e
    and e
    ld a, a
    and d
    and b
    or e
    and d
    and a
    ld d, l
    or d
    xor [hl]
    xor h
    and h
    ld a, a
    xor h
    xor [hl]
    or c
    and h
    ld a, a
    or e
    xor [hl]
    xor [hl]
    rst $20
    ld e, b
    nop
    ld d, e
    sbc h
    ld a, a
    sub [hl]
    and a
    and b
    or e
    and $4f
    ld d, d
    rst $20
    ld a, a
    sub [hl]
    and a
    and b
    or e
    ld a, a
    and b
    ld d, l
    or d
    or h
    or c
    xor a
    or c
    xor b
    or d
    and h
    ld a, a
    or e
    xor [hl]
    ld a, a
    or d
    and h
    and h
    ld d, l
    cp b
    xor [hl]
    or h
    ld a, a
    and a
    and h
    or c
    and h
    rst $20
    ld d, c
    sub d
    xor [hl]
    ld a, a
    cp b
    xor [hl]
    or h
    db $e4
    and h
    ld a, a
    and [hl]
    xor [hl]
    xor b
    xor l
    and [hl]
    ld a, a
    or e
    xor [hl]
    ld c, a
    ld d, h
    adc h
    adc [hl]
    adc l
    ld a, a
    adc e
    add h
    add b
    add [hl]
    sub h
    add h
    and $51
    sbc b
    xor [hl]
    or h
    ld a, a
    and d
    xor [hl]
    xor e
    xor e
    and h
    and d
    or e
    and h
    and e
    ld a, a
    and b
    xor e
    xor e
    ld c, a
    or e
    and a
    and h
    ld a, a
    add c
    add b
    add e
    add [hl]
    add h
    or d
    ld a, a
    or e
    xor [hl]
    xor [hl]
    and $55
    sub e
    and a
    and b
    or e
    cp l
    ld a, a
    and d
    xor [hl]
    xor [hl]
    xor e
    rst $20
    ld d, c
    sub e
    and a
    and h
    xor l
    ld a, a
    adc b
    cp h
    xor e
    ld a, a
    or [hl]
    and a
    xor b
    xor a
    ld a, a
    cp b
    xor [hl]
    or h
    ld c, a
    ld d, d
    ld a, a
    and b
    or d
    ld a, a
    and b
    ld d, l
    or [hl]
    and b
    or c
    xor h
    ld a, a
    or h
    xor a
    ld a, a
    and l
    xor [hl]
    or c
    ld d, l
    ld d, h
    adc h
    adc [hl]
    adc l
    ld a, a
    adc e
    add h
    add b
    add [hl]
    sub h
    add h
    rst $20
    ld d, c
    add d
    xor [hl]
    xor h
    and h
    ld a, a
    xor [hl]
    xor l
    rst $20
    ld d, a
    nop
    sub e
    and a
    and b
    or e
    ld a, a
    xor e
    xor [hl]
    xor [hl]
    or d
    and h
    xor l
    and h
    and e
    ld a, a
    xor h
    and h
    ld c, a
    or h
    xor a
    rst $20
    ld a, a
    adc b
    push hl
    ld a, a
    or c
    and h
    and b
    and e
    cp b
    ld a, a
    and l
    xor [hl]
    or c
    ld d, l
    ld d, h
    adc h
    adc [hl]
    adc l
    ld a, a
    adc e
    add h
    add b
    add [hl]
    sub h
    add h
    rst $20
    ld d, c
    ld d, d
    db $f4
    ld a, a
    cp b
    xor [hl]
    or h
    ld a, a
    xor l
    and h
    and h
    and e
    ld c, a
    xor h
    xor [hl]
    or c
    and h
    ld a, a
    xor a
    or c
    and b
    and d
    or e
    xor b
    and d
    and h
    rst $20
    ld d, c
    add c
    or h
    or e
    ld a, a
    and a
    and h
    cp b
    db $f4
    ld a, a
    cp b
    xor [hl]
    or h
    ld a, a
    xor d
    xor l
    xor [hl]
    or [hl]
    ld c, a
    or e
    and a
    and b
    or e
    rst $20
    ld a, a
    adc b
    push hl
    ld a, a
    xor [hl]
    or h
    or e
    ld a, a
    xor [hl]
    and l
    ld d, l
    and a
    and h
    or c
    and h
    add sp, $7f
    sub d
    xor h
    and h
    xor e
    xor e
    ld a, a
    cp b
    and b
    rst $20
    ld d, a
    nop
    sub [hl]
    and a
    and b
    or e
    rst $20
    and $51
    adc b
    ld a, a
    or [hl]
    and b
    or d
    ld a, a
    xor c
    or h
    or d
    or e
    ld c, a
    and d
    and b
    or c
    and h
    xor e
    and h
    or d
    or d
    rst $20
    ld e, b
    nop
    ld d, e
    sbc h
    ld a, a
    add a
    and b
    and a
    and b
    and a
    and b
    rst $20
    ld c, a
    ld d, d
    rst $20
    ld a, a
    sub e
    and a
    and b
    or e
    cp l
    ld d, l
    cp b
    xor [hl]
    or h
    or c
    ld a, a
    and c
    and h
    or d
    or e
    and $7f
    sbc b
    xor [hl]
    or h
    db $e4
    and h
    ld d, l
    xor l
    xor [hl]
    or [hl]
    and a
    and h
    or c
    and h
    ld a, a
    xor l
    and h
    and b
    or c
    ld a, a
    and b
    or d
    ld d, l
    and [hl]
    xor [hl]
    xor [hl]
    and e
    ld a, a
    and b
    or d
    ld a, a
    xor h
    and h
    db $f4
    ld a, a
    xor a
    and b
    xor e
    rst $20
    ld d, c
    add [hl]
    xor [hl]
    ld a, a
    or e
    or c
    and b
    xor b
    xor l
    ld a, a
    or d
    xor [hl]
    xor h
    and h
    ld c, a
    xor h
    xor [hl]
    or c
    and h
    rst $20
    ld a, a
    sbc b
    xor [hl]
    or h
    ld a, a
    xor e
    xor [hl]
    or d
    and h
    or c
    rst $20
    ld e, b
    nop
    ld d, h
    adc h
    adc [hl]
    adc l
    ld a, a
    adc e
    add h
    add b
    add [hl]
    sub h
    add h
    ld c, a
    add l
    or c
    xor [hl]
    xor l
    or e
    ld a, a
    add [hl]
    and b
    or e
    and h
    ld d, a
    nop
    sbc b
    xor [hl]
    or h
    ld a, a
    and d
    and b
    xor l
    ld a, a
    xor a
    and b
    or d
    or d
    ld a, a
    and a
    and h
    or c
    and h
    ld c, a
    xor [hl]
    xor l
    xor e
    cp b
    ld a, a
    xor b
    and l
    ld a, a
    cp b
    xor [hl]
    or h
    ld a, a
    and a
    and b
    or l
    and h
    ld d, l
    or e
    and a
    and h
    ld a, a
    ld d, b
    ld bc, $cd6d
    nop
    rst $20
    ld d, c
    sbc b
    xor [hl]
    or h
    ld a, a
    and e
    xor [hl]
    xor l
    cp [hl]
    ld a, a
    and a
    and b
    or l
    and h
    ld a, a
    or e
    and a
    and h
    ld c, a
    ld d, b
    ld bc, $cd6d
    nop
    ld a, a
    cp b
    and h
    or e
    rst $20
    ld d, c
    sbc b
    xor [hl]
    or h
    ld a, a
    and a
    and b
    or l
    and h
    ld a, a
    or e
    xor [hl]
    ld a, a
    and a
    and b
    or l
    and h
    ld c, a
    xor b
    or e
    ld a, a
    or e
    xor [hl]
    ld a, a
    and [hl]
    and h
    or e
    ld a, a
    or e
    xor [hl]
    ld d, l
    ld d, h
    adc h
    adc [hl]
    adc l
    ld a, a
    adc e
    add h
    add b
    add [hl]
    sub h
    add h
    rst $20
    ld d, b
    ld d, b
    nop
    sbc b
    xor [hl]
    or h
    ld a, a
    and d
    and b
    xor l
    ld a, a
    xor a
    and b
    or d
    or d
    ld a, a
    and a
    and h
    or c
    and h
    ld c, a
    xor [hl]
    xor l
    xor e
    cp b
    ld a, a
    xor b
    and l
    ld a, a
    cp b
    xor [hl]
    or h
    ld a, a
    and a
    and b
    or l
    and h
    ld d, l
    or e
    and a
    and h
    ld a, a
    ld d, b
    ld bc, $cd6d
    nop
    rst $20
    ld d, c
    adc [hl]
    and a
    rst $20
    ld a, a
    sub e
    and a
    and b
    or e
    ld a, a
    xor b
    or d
    ld a, a
    or e
    and a
    and h
    ld c, a
    ld d, b
    ld bc, $cd6d
    nop
    rst $20
    ld d, b
    ld d, b
    nop
    ld d, c
    adc [hl]
    adc d
    ld a, a
    or e
    and a
    and h
    xor l
    rst $20
    ld a, a
    adc a
    xor e
    and h
    and b
    or d
    and h
    db $f4
    ld c, a
    and [hl]
    xor [hl]
    ld a, a
    or c
    xor b
    and [hl]
    and a
    or e
    ld a, a
    and b
    and a
    and h
    and b
    and e
    rst $20
    ld d, a
    nop
    sub l
    adc b
    add d
    sub e
    adc [hl]
    sub c
    sbc b
    ld a, a
    sub c
    adc [hl]
    add b
    add e
    ld a, a
    add [hl]
    add b
    sub e
    add h
    ld c, a
    db $e3
    ld a, a
    ld d, h
    adc h
    adc [hl]
    adc l
    ld a, a
    adc e
    add h
    add b
    add [hl]
    sub h
    add h
    ld d, a
    nop
    add d
    xor [hl]
    xor l
    and [hl]
    or c
    and b
    or e
    or h
    xor e
    and b
    or e
    xor b
    xor [hl]
    xor l
    or d
    rst $20
    ld c, a
    sbc b
    xor [hl]
    or h
    ld a, a
    and c
    and h
    and b
    or e
    ld a, a
    xor [hl]
    or h
    or c
    ld a, a
    ei
    ld d, l
    and d
    xor [hl]
    xor l
    or e
    and h
    or d
    or e
    ld a, a
    or e
    or c
    and b
    xor b
    xor l
    and h
    or c
    or d
    rst $20
    ld d, b
    ld d, b
    nop
    ld d, c
    sbc b
    xor [hl]
    or h
    ld a, a
    xor c
    or h
    or d
    or e
    ld a, a
    and h
    and b
    or c
    xor l
    and h
    and e
    ld a, a
    and b
    ld c, a
    and l
    and b
    and c
    or h
    xor e
    xor [hl]
    or h
    or d
    ld a, a
    xor a
    or c
    xor b
    cp c
    and h
    rst $20
    ld e, b
    nop
    ld d, d
    ld a, a
    or c
    and h
    and d
    and h
    xor b
    or l
    and h
    and e
    ld c, a
    and b
    ld a, a
    ld d, b
    ld bc, $cf4b
    nop
    rst $20
    ld d, b
    ld d, b
    nop
    sbc b
    xor [hl]
    or h
    ld a, a
    and e
    xor [hl]
    xor l
    cp [hl]
    ld a, a
    and a
    and b
    or l
    and h
    ld c, a
    and b
    xor l
    cp b
    ld a, a
    or c
    xor [hl]
    xor [hl]
    xor h
    rst $20
    ld d, a
    nop
    add c
    cp b
    ld a, a
    or e
    and a
    and h
    ld a, a
    or [hl]
    and b
    cp b
    db $f4
    ld a, a
    or [hl]
    xor [hl]
    or h
    xor e
    and e
    ld c, a
    cp b
    xor [hl]
    or h
    ld a, a
    xor e
    xor b
    xor d
    and h
    ld a, a
    or e
    xor [hl]
    ld a, a
    xor c
    xor [hl]
    xor b
    xor l
    ld d, l
    sub e
    add h
    add b
    adc h
    ld a, a
    sub c
    adc [hl]
    add d
    adc d
    add h
    sub e
    and $51
    sub [hl]
    and h
    db $e4
    and h
    ld a, a
    and b
    ld a, a
    and [hl]
    or c
    xor [hl]
    or h
    xor a
    ld c, a
    and e
    and h
    and e
    xor b
    and d
    and b
    or e
    and h
    and e
    ld a, a
    or e
    xor [hl]
    ld a, a
    and h
    or l
    xor b
    xor e
    ld d, l
    or h
    or d
    xor b
    xor l
    and [hl]
    ld a, a
    ld d, h
    adc h
    adc [hl]
    adc l
    rst $20
    ld d, c
    sub [hl]
    and b
    xor l
    or e
    ld a, a
    or e
    xor [hl]
    ld a, a
    xor c
    xor [hl]
    xor b
    xor l
    and $51
    add b
    or c
    and h
    ld a, a
    cp b
    xor [hl]
    or h
    ld a, a
    or d
    or h
    or c
    and h
    and $51
    add d
    xor [hl]
    xor h
    and h
    ld a, a
    xor [hl]
    xor l
    db $f4
    ld a, a
    xor c
    xor [hl]
    xor b
    xor l
    ld a, a
    or h
    or d
    rst $20
    ld d, c
    adc b
    push hl
    ld a, a
    or e
    and h
    xor e
    xor e
    xor b
    xor l
    and [hl]
    ld a, a
    cp b
    xor [hl]
    or h
    ld c, a
    or e
    xor [hl]
    ld a, a
    xor c
    xor [hl]
    xor b
    xor l
    rst $20
    ld d, c
    adc [hl]
    adc d
    db $f4
    ld a, a
    cp b
    xor [hl]
    or h
    ld a, a
    xor l
    and h
    and h
    and e
    ld c, a
    and d
    xor [hl]
    xor l
    or l
    xor b
    xor l
    and d
    xor b
    xor l
    and [hl]
    rst $20
    ld d, c
    adc b
    cp h
    xor e
    ld a, a
    xor h
    and b
    xor d
    and h
    ld a, a
    cp b
    xor [hl]
    or h
    ld a, a
    and b
    xor l
    ld c, a
    xor [hl]
    and l
    and l
    and h
    or c
    ld a, a
    cp b
    xor [hl]
    or h
    ld a, a
    and d
    and b
    xor l
    cp [hl]
    ld d, l
    or c
    and h
    and l
    or h
    or d
    and h
    rst $20
    ld d, a
    nop
    add b
    or c
    or c
    and [hl]
    and a
    rst $20
    ld c, a
    sbc b
    xor [hl]
    or h
    ld a, a
    and b
    or c
    and h
    ld a, a
    and [hl]
    xor [hl]
    xor [hl]
    and e
    rst $20
    ld e, b
    nop
    sub [hl]
    xor b
    or e
    and a
    ld a, a
    cp b
    xor [hl]
    or h
    or c
    ld a, a
    and b
    and c
    xor b
    xor e
    xor b
    or e
    cp b
    db $f4
    ld c, a
    cp b
    xor [hl]
    or h
    ld a, a
    and d
    xor [hl]
    or h
    xor e
    and e
    ld a, a
    and c
    and h
    and d
    xor [hl]
    xor h
    and h
    ld d, l
    and b
    ld a, a
    or e
    xor [hl]
    xor a
    ld a, a
    xor e
    and h
    and b
    and e
    and h
    or c
    ld a, a
    xor b
    xor l
    ld d, l
    sub e
    add h
    add b
    adc h
    ld a, a
    sub c
    adc [hl]
    add d
    adc d
    add h
    sub e
    rst $20
    ld d, a
    nop
    adc b
    ld a, a
    or d
    and b
    or [hl]
    ld a, a
    cp b
    xor [hl]
    or h
    or c
    ld a, a
    and l
    and h
    and b
    or e
    ld c, a
    and l
    or c
    xor [hl]
    xor h
    ld a, a
    or e
    and a
    and h
    ld a, a
    and [hl]
    or c
    and b
    or d
    or d
    rst $20
    ld d, a
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
