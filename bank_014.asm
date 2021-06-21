; Disassembly of "bluekaizo.gb"
; This file was created with:
; mgbdis v1.4 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

SECTION "ROM Bank $014", ROMX[$4000], BANK[$14]

    nop
    add hl, bc
    inc d
    dec a
    ld b, b
    ld [hl], l
    ld d, c
    or d
    ld c, [hl]
    add hl, bc
    ld [hl+], a
    ld h, h
    ld b, [hl]
    db $eb
    add $0a
    ld a, [bc]
    adc a
    nop
    ld l, c
    rlc c
    nop
    ld b, h
    rst $38
    add $0f
    inc d
    ld [$0300], sp
    rst $00
    ld [hl+], a
    ld b, b
    inc l
    ld bc, $0805
    nop
    pop bc
    ld bc, $070b
    inc bc
    ld [bc], a
    ld [bc], a
    add hl, bc
    dec e
    rst $38
    rst $38
    ld bc, $0902
    dec e
    rst $38
    rst $38
    ld [bc], a
    dec sp
    rst $00
    dec b
    ld [$2013], sp
    dec c
    dec c
    dec c
    dec c
    ld hl, $2c28
    inc l
    inc l
    inc l
    inc l
    inc l
    dec hl
    ld d, a
    ld d, a
    ld d, a
    ld a, [hl+]
    inc l
    dec sp
    ld l, b
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld l, c
    inc h
    ld d, a
    ld d, a
    ld d, a
    ld d, a
    ld d, a
    ld d, a
    dec h
    rlca
    cpl
    rlca
    jr z, jr_014_4091

    add hl, hl
    scf
    ld a, l
    ld a, l
    ld a, [hl-]
    ld a, l
    ld a, [hl]
    inc de
    rlca
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    inc h
    ld d, a
    add hl, hl
    ld d, l
    ld d, l
    ld d, l
    ld d, l
    ld d, l
    ld d, l
    inc de
    dec bc
    ld d, c
    ld d, c
    ld d, c
    ld d, c
    ld a, $3b
    ld e, h
    rlca
    inc de
    ld c, [hl]
    ld a, [bc]
    add hl, hl
    inc sp
    ld [hl], $07

jr_014_4091:
    rlca
    cpl
    rlca
    inc de
    ld d, d
    ld d, d
    ld d, d
    ld d, d
    rlca
    jr z, jr_014_40c5

    dec bc
    dec bc
    dec bc
    ld c, [hl]
    ld bc, $3129
    dec [hl]
    ld d, [hl]
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld h, d
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    jr z, jr_014_40d9

    dec bc
    dec bc
    dec bc
    ld e, b
    ld a, $29
    rlca
    ld d, d
    ld d, d
    ld d, d
    ld d, d
    ld d, d
    ld d, d
    inc de
    inc de
    inc de
    inc de
    inc de
    inc h
    dec h
    ld l, e

jr_014_40c5:
    ld l, e
    inc de
    ld c, [hl]
    jr z, jr_014_40f3

    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc

jr_014_40d9:
    dec bc
    dec bc
    dec bc
    jr z, jr_014_410a

    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    inc l
    nop
    add hl, bc

jr_014_40f3:
    ld [hl-], a
    ld a, l
    ld b, c
    ld [hl+], a
    ld c, l
    xor c
    ld c, h
    inc bc
    ld [$4070], sp
    sub b
    rst $00
    add hl, bc
    ld a, [bc]
    nop
    inc de
    ld [bc], a
    rst $00
    ld e, $87
    ld c, a
    dec e

jr_014_410a:
    rst $00
    inc c
    ld a, [bc]
    inc h
    nop
    ld sp, hl
    add $13
    ld b, c
    ld b, e
    ld [bc], a
    dec b
    jr nc, jr_014_4118

jr_014_4118:
    ret nz

    add hl, bc
    ld a, [hl-]
    ld [bc], a
    ret nz

    ld [bc], a
    rlca
    inc sp
    dec bc
    dec bc
    add hl, sp
    inc c
    ld a, [bc]
    ld [hl+], a
    rlca
    ld d, c
    rst $38
    pop de
    ld b, c
    rst $10
    add hl, bc
    ld [hl+], a
    dec c
    ld e, l
    rst $38
    pop de
    ld b, d
    jp c, $220f

    ld c, $31
    rst $38
    ret nc

    ld b, e
    jp c, $2206

    ld [de], a
    dec sp
    rst $38
    db $d3
    ld b, h
    adc $18
    ld [hl+], a
    ld b, $25
    rst $38
    ret nc

    ld b, l
    rst $10
    ld a, [bc]
    ld [hl+], a
    inc d
    ld b, e
    rst $38
    pop de
    ld b, [hl]
    rst $10
    dec bc
    rlca
    dec bc
    inc [hl]
    rst $38
    pop de
    ld b, a
    rst $18
    dec bc
    ld [hl+], a
    dec c
    dec de
    rst $38
    pop de
    ld c, b
    jp c, $2207

    ld b, $3b
    rst $38
    ret nc

    ld c, c
    adc $10
    ld [hl+], a
    rlca
    ld de, $d1ff
    ld c, d
    jp c, $a908

    rst $00
    dec b
    jr nc, jr_014_4198

    ret z

    add hl, bc
    ld a, [hl-]
    ld l, e
    ld l, e
    ld l, e
    ld l, e
    ld l, e
    ld l, e
    ld l, e
    ld l, e
    ld l, e
    ld l, e
    ld l, e
    ld l, e
    ld l, e
    ld l, e
    ld l, e
    ld l, e
    ld l, e
    ld l, e
    ld l, e
    ld l, e
    ld l, e
    ld l, e
    ld l, e
    ld a, $3f
    ccf
    dec sp

jr_014_4198:
    ld l, e
    ld l, e
    ld l, e
    ld l, e
    ld l, e
    ld l, e
    ld l, e
    ld l, e
    ld l, e
    ld l, e
    ld l, e
    ld l, e
    ld l, e
    ld l, e
    ld l, e
    ld l, e
    ld l, e
    ld l, e
    ld l, e
    ld l, e
    ld l, e
    ld l, e
    ld l, e
    jr jr_014_41ca

    ld b, e
    ld b, e
    inc sp
    ld b, e
    ld b, e
    ld b, e
    ld b, e
    ld b, e
    ld b, e
    add hl, de
    ld b, e
    ld b, e
    ld b, e
    ld b, e
    ld b, e
    ld b, e
    ld b, e
    ld b, e
    ld b, e
    add hl, de
    ld b, e
    jr z, jr_014_41f4

    inc l
    add hl, hl

jr_014_41ca:
    ld b, e
    ld b, e
    ld b, e
    ld b, e
    add hl, de
    ld b, e
    ld b, e
    ld b, e
    ld b, e
    ld b, e
    ld b, e
    ld b, e
    ld b, e
    ld b, e
    ld b, e
    ld b, e
    ld b, e
    add hl, de
    ld b, e
    ld b, e
    ld b, e
    ld b, e
    ld b, e
    jr jr_014_4226

    ld a, $3f
    ccf
    dec sp
    ld b, e
    ld a, $3f
    ccf
    dec sp
    ld b, e
    ld a, $3f
    ccf
    dec sp
    ld b, e
    ld a, $3f

jr_014_41f4:
    ccf
    dec sp
    add hl, de
    ld b, e
    inc h
    ld b, $57
    dec h
    ld b, e
    ld b, e
    ld b, e
    ld b, e
    ld b, e
    ld a, $3f
    ccf
    ccf
    dec sp
    ld b, e
    ld b, e
    ld a, $3f
    ccf
    dec sp
    ld b, e
    ld b, e
    ld a, $3f
    ccf
    dec sp
    ld b, e
    jr jr_014_4258

    inc h
    ld d, a
    ld d, a
    dec h
    ld b, e
    inc h
    ld d, a
    ld d, a
    dec h
    ld b, e
    inc h
    ld d, a
    ld d, a
    dec h
    ld b, e
    inc h
    ld d, a

jr_014_4226:
    ld d, a
    dec h
    add hl, de
    ld b, e
    ld [hl], a
    ld a, d
    ld [$435f], sp
    ld a, $3f
    dec sp
    ld b, e
    inc h
    ld d, a
    ld d, a
    ld d, a
    dec h
    ld b, e
    ld b, e
    inc h
    ld d, a
    ld d, a
    dec h
    ld b, e
    ld b, e
    inc h
    ld d, a
    ld d, a
    dec h
    ld b, e
    jr jr_014_4260

    ld b, e
    ld b, e
    inc sp
    ld b, e
    add hl, de
    ld b, e
    ld b, e
    ld b, e
    ld b, e
    ld b, e
    ld b, e
    ld b, e
    ld b, e
    ld b, e
    add hl, de
    ld b, e
    ld b, e

jr_014_4258:
    ld b, e
    ld b, e
    add hl, de
    ld b, e
    jr nc, jr_014_4261

    jr nc, @+$05

jr_014_4260:
    ld b, e

jr_014_4261:
    inc h
    ld b, $25
    add hl, de
    ld b, e
    ld b, e
    ld b, e
    ld b, e
    ld b, e
    ld b, e
    add hl, de
    ld b, e
    ld b, e
    ld b, e
    ld b, e
    ld b, e
    ld b, e
    ld b, e
    ld b, e
    ld b, e
    ld b, e
    ld b, e
    jr jr_014_42bc

    ld a, $3f
    ccf
    dec sp
    ld b, e
    ld a, $3f
    ccf
    dec sp
    ld b, e
    ld a, $3f
    ccf
    dec sp
    ld b, e
    ld a, $3f
    ccf
    dec sp
    add hl, de
    ld b, e
    ld a, b
    ld a, b
    ld a, b
    ld a, b
    add hl, de
    ld [$1854], sp
    ld b, e
    ld a, $3f
    ccf
    ccf
    dec sp
    ld b, e
    ld b, e
    ld a, $3f
    ccf
    dec sp
    ld b, e
    ld b, e
    ld a, $3f
    ccf
    dec sp
    ld b, e
    jr jr_014_42ee

    inc h
    ld d, a
    ld d, a
    dec h
    ld b, e
    inc h
    ld d, a
    ld d, a
    dec h
    ld b, e
    inc h
    ld d, a
    ld d, a
    dec h
    ld b, e
    inc h
    ld d, a

jr_014_42bc:
    ld d, a
    dec h
    add hl, de
    ld l, e
    ld l, e
    ld l, e
    ld l, e
    ld l, e
    dec d
    ld b, e
    ld b, e
    jr jr_014_430c

    inc h
    ld d, a
    ld d, a
    ld d, a
    dec h
    ld b, e
    ld b, e
    inc h
    ld d, a
    ld d, a
    dec h
    ld b, e
    ld b, e
    inc h
    ld d, a
    ld d, a
    dec h
    ld b, e
    ld b, e
    add hl, de
    ld b, e
    ld b, e
    inc sp
    ld b, e
    add hl, de
    ld b, e
    ld b, e
    ld b, e
    ld b, e
    add hl, de
    ld b, e
    ld b, e
    ld b, e
    ld b, e
    add hl, de
    ld b, e
    ld b, e

jr_014_42ee:
    ld b, e
    ld b, e
    ld b, e
    ld b, e
    ld b, e
    ld b, e
    ld b, e
    ld b, e
    ld b, e
    ld b, e
    ld a, $3b
    ld b, e
    ld b, e
    ld b, e
    ld b, e
    ld b, e
    ld b, e
    ld b, e
    add hl, de
    ld b, e
    ld b, e
    ld b, e
    ld b, e
    ld b, e
    add hl, de
    ld b, e
    ld b, e
    ld b, e
    ld b, e

jr_014_430c:
    ld b, e
    ld l, e
    ld l, e
    ld l, e
    ld l, e
    inc de
    ld l, e
    dec d
    ld l, e
    ld l, e
    ld l, e
    ld l, e
    dec d
    ld l, e
    ld l, e
    ld l, e
    ld l, e
    dec d
    ld l, e
    ld l, e
    ld l, e
    ld l, e
    ld l, e
    ld l, e
    ld l, e
    ld l, e
    ld l, e
    ld l, e
    ld l, e
    ld l, e
    inc h
    ld [hl], b
    ld l, e
    ld l, e
    ld l, e
    ld l, e
    ld l, e
    ld l, e
    ld l, e
    dec d
    ld l, e
    ld l, e
    ld l, e
    ld l, e
    ld l, e
    dec d
    ld l, e
    ld l, e
    ld l, e
    ld l, e
    ld l, e
    rla
    ld c, b
    ld a, [bc]
    or d
    ld b, e
    rst $30
    ld d, d
    jp c, $0c51

    add hl, bc
    add [hl]
    ld c, c
    db $eb
    add $0a
    ld a, [bc]
    ld de, $7900
    rst $00
    ld hl, $403d
    sbc e
    rrc l
    inc d
    nop
    nop
    inc bc
    rst $00
    ld h, c
    ld b, e
    rrca
    inc b
    adc e
    rlca
    ld [bc], a
    pop bc
    adc e
    ld [$c103], sp
    rra
    inc b
    nop
    ld l, h
    rra
    ld c, $01
    jp nz, $2101

    inc bc
    ld [$3107], sp
    daa
    ld [$d0ff], sp
    ld bc, $3c31
    ld c, $ff
    ret nc

    ld [bc], a
    ld [hl+], a
    ld e, c
    inc c
    rst $38
    ret nc

    inc bc
    ld [hl+], a
    ld h, h
    rrca
    rst $38
    ret nc

    inc b
    ld sp, $106d
    rst $38
    ret nc

    dec b
    ld sp, $0c7b
    rst $38
    ret nc

    ld b, $31
    adc h
    inc c
    rst $38
    ret nc

    rlca
    ld c, h
    res 1, e
    rlca
    ld c, l
    res 1, e
    ld [$c7eb], sp
    rra
    inc b
    ldh a, [$c7]
    rra
    ld c, $18
    dec de
    dec de
    dec de
    db $10
    ld de, $1818
    jr jr_014_43d7

    jr @+$1d

    dec de
    dec de
    dec d
    inc d
    jr jr_014_43dc

    jr jr_014_43e1

    jr @+$1d

    dec hl
    dec hl
    ld b, e
    ld b, b
    inc l
    inc l
    jr jr_014_43eb

    jr @+$1d

    ld b, b
    ld b, b
    ld b, d
    ld b, b
    ld b, b

jr_014_43d7:
    ld b, b
    jr jr_014_43f5

    jr @+$1d

jr_014_43dc:
    ld b, d
    ld b, b
    ld b, b
    ld b, e
    ld b, e

jr_014_43e1:
    ld b, e
    jr jr_014_43ff

    jr @+$1d

    ld b, e
    ld b, b
    ld b, e
    ld b, d
    ld b, b

jr_014_43eb:
    ld b, d
    jr jr_014_4409

    jr jr_014_440b

    ld b, b
    ld b, e
    ld b, e
    ld b, b
    ld b, d

jr_014_43f5:
    ld b, d
    jr jr_014_4413

    jr jr_014_4415

    ld b, e
    ld b, d
    ld b, d
    ld b, d
    ld b, e

jr_014_43ff:
    ld b, e
    jr jr_014_441d

    inc l
    dec hl
    ld b, d
    ld b, b
    ld b, e
    ld b, e
    ld b, b

jr_014_4409:
    ld b, d
    inc l

jr_014_440b:
    dec hl
    ld b, b
    ld b, b
    ld b, e
    ld b, e
    ld b, e
    ld b, d
    ld b, d

jr_014_4413:
    ld b, d
    ld b, b

jr_014_4415:
    ld b, b
    inc hl
    ld b, b
    inc h
    ld b, b
    ld b, b
    ld b, b
    ld b, b

jr_014_441d:
    ld b, b
    ld b, b
    inc h
    ld b, b
    inc h
    inc sp
    rrca
    rrca
    inc sp
    rrca
    rrca
    rrca
    ld b, b
    ld b, b
    rrca
    inc [hl]
    inc [hl]
    inc [hl]
    inc [hl]
    ld b, b
    rrca
    ld b, b
    inc [hl]
    ld b, [hl]
    ld b, b
    ld b, b
    ld b, a
    inc b
    rrca
    ld b, [hl]
    ld b, b
    ld b, a
    ld b, e
    jr jr_014_445a

    ld a, [de]
    dec de
    inc b
    inc b
    jr jr_014_4460

    dec de
    inc b
    inc e
    daa
    ld e, $1f
    inc b
    inc b
    inc e
    ld e, $1f
    inc b
    ld b, b
    ld c, b
    ld b, b
    ld b, b
    rrca
    inc b
    inc d
    ld b, b

jr_014_445a:
    dec d
    inc b
    ld b, b
    ld b, b
    ld b, b
    rrca

jr_014_4460:
    rrca
    rrca
    rrca
    rrca
    rrca
    rrca
    ld b, b
    ld b, b
    rrca
    ld b, b
    ld b, b
    ld b, b
    rrca
    ld b, b
    ld b, b
    ld b, b
    ld b, b
    rrca
    ld b, b
    ld b, b
    rrca
    ld b, b
    ld b, b
    ld b, b
    rrca
    ld b, b
    ld b, b
    ld b, b
    inc [hl]
    rrca
    rrca
    rrca
    rrca
    rrca
    rrca
    ld b, b
    rrca
    rrca
    ld b, b
    ld b, b
    ld b, b
    ld b, b
    ld b, b
    ld b, b
    ld b, b
    ld b, b
    ld b, b
    ld b, b
    ld b, b
    rrca
    rrca
    rrca
    rrca
    rrca
    rrca
    rrca
    ld b, b
    rrca
    rrca
    rrca
    ld b, b
    ld b, b
    ld b, b
    ld b, b
    ld b, b
    ld b, b
    ld b, b
    rrca
    ld b, b
    ld b, b
    ld b, b
    rrca
    rrca
    rrca
    rrca
    ld b, b
    ld b, h
    ld b, b
    ld b, l
    ld b, b
    ld b, b
    ld b, l
    ld b, b
    add hl, hl
    ld b, b
    ld a, [hl+]
    jr @+$1c

    dec de
    ld a, [de]
    ld a, [de]
    dec de
    ld b, b
    jr jr_014_44d9

    dec de
    jr @+$1c

    dec de
    jr z, jr_014_44ed

    dec hl
    ld a, [bc]
    jr jr_014_44e3

    dec de
    jr @+$1c

    dec de
    ld b, e
    ld b, c
    ld b, c
    ld b, d
    jr jr_014_44ed

    dec de
    jr @+$1c

    dec de
    ld b, e
    ld b, d

jr_014_44d9:
    ld b, d
    ld b, e
    jr jr_014_44f7

    dec de
    jr @+$1c

    dec de
    ld b, e
    ld b, e

jr_014_44e3:
    ld b, e
    ld b, e
    jr jr_014_4501

    dec de
    jr @+$1c

    dec de
    ld b, e
    ld b, e

jr_014_44ed:
    ld b, e
    ld b, e
    jr jr_014_450b

    dec de
    jr @+$1c

    dec de
    ld b, c
    ld b, c

jr_014_44f7:
    ld b, c
    ld b, c
    jr jr_014_4515

    dec de
    jr @+$1c

    dec de
    ld b, d
    ld b, d

jr_014_4501:
    ld b, e
    ld b, d
    jr jr_014_451f

    dec de
    jr @+$1c

    dec de
    ld b, e
    ld b, e

jr_014_450b:
    ld b, e
    ld b, e
    jr jr_014_4529

    dec de
    jr jr_014_452c

    dec de
    ld b, e
    ld b, e

jr_014_4515:
    ld b, e
    ld b, e
    jr jr_014_4533

    dec de
    jr jr_014_4536

    dec de
    ld b, e
    ld b, e

jr_014_451f:
    ld b, e
    ld b, e
    jr jr_014_453d

    dec de
    inc l
    jr z, @+$2d

    ld b, e
    ld b, e

jr_014_4529:
    ld b, e
    ld b, e
    inc l

jr_014_452c:
    jr z, jr_014_4559

    inc b
    inc b
    inc b
    inc b
    inc b

jr_014_4533:
    inc b
    inc b
    inc b

jr_014_4536:
    inc b
    inc b
    inc b
    rlca
    inc bc
    ld [bc], a
    ld b, [hl]

jr_014_453d:
    inc b
    inc b
    ld b, [hl]
    inc b
    ld b, a
    inc b
    inc c
    dec c
    inc b
    jr @+$1c

    ld a, [de]
    jr jr_014_4565

    dec de
    ld b, [hl]
    inc b
    ld b, a
    inc b
    inc l
    jr z, jr_014_457b

    jr jr_014_456f

    dec de
    jr @+$1c

    dec de

jr_014_4559:
    inc b
    inc b
    inc b
    inc b
    jr jr_014_4579

    dec de
    inc l
    jr z, jr_014_458e

    inc b
    inc b

jr_014_4565:
    inc b
    inc b
    jr @+$1c

    dec de
    inc b
    ld b, [hl]
    inc b
    inc b
    inc b

jr_014_456f:
    inc b
    inc b
    jr jr_014_458d

    dec de
    inc b
    jr jr_014_4591

    ld a, [de]
    ld a, [de]

jr_014_4579:
    ld a, [de]
    ld a, [de]

jr_014_457b:
    jr jr_014_4597

    dec de
    inc b
    inc l
    jr z, jr_014_45aa

    jr z, jr_014_45ac

    jr z, @+$1a

    ld a, [de]
    dec de
    ld b, [hl]
    inc b
    inc b
    inc b
    ld b, a

jr_014_458d:
    inc b

jr_014_458e:
    inc b
    jr jr_014_45ab

jr_014_4591:
    dec de
    jr @+$1c

    ld a, [de]
    ld a, [de]
    dec de

jr_014_4597:
    inc b
    inc b
    jr jr_014_45b5

    dec de
    inc l
    jr z, jr_014_45c7

    jr z, jr_014_45cc

    inc b
    inc b
    inc l
    jr z, jr_014_45d1

    inc b
    inc [hl]
    inc [hl]
    inc [hl]

jr_014_45aa:
    inc [hl]

jr_014_45ab:
    inc [hl]

jr_014_45ac:
    inc [hl]
    ld h, $04
    inc b
    ld b, [hl]
    inc b
    inc b
    inc b
    inc b

jr_014_45b5:
    ld b, a
    inc b
    inc b
    ld b, [hl]
    ld b, a
    jr jr_014_45d6

    ld a, [de]
    ld a, [de]
    ld a, [de]
    dec de
    ld a, [bc]
    ld a, [bc]
    jr jr_014_45df

    inc l
    jr z, @+$2a

jr_014_45c7:
    jr z, jr_014_45f1

    dec hl
    ld b, d
    ld b, e

jr_014_45cc:
    inc l
    dec hl
    ld b, c
    ld b, c
    ld b, d

jr_014_45d1:
    ld b, c
    ld b, d
    ld b, c
    ld b, c
    ld b, e

jr_014_45d6:
    ld bc, $4243
    add hl, hl
    ld bc, $2a42
    ld b, d
    add hl, hl

jr_014_45df:
    ld bc, $4301
    ld b, d
    jr jr_014_45ff

    ld a, [de]
    dec de
    ld b, e
    jr @+$1c

    ld a, [de]
    ld b, e
    ld b, d
    inc l
    jr z, jr_014_4618

    dec hl

jr_014_45f1:
    ld b, c
    inc l
    jr z, @+$2a

    ld b, e
    ld b, c
    inc [hl]
    inc [hl]
    inc [hl]
    inc [hl]
    inc [hl]
    inc [hl]
    inc [hl]
    inc [hl]

jr_014_45ff:
    ld bc, $2529
    ld bc, $412a
    add hl, hl
    ld bc, $012a
    ld a, [hl+]
    jr jr_014_4626

    ld a, [de]
    dec de
    ld b, c
    jr jr_014_462b

    dec de
    ld a, [de]
    dec de
    inc l
    jr z, jr_014_463f

    dec hl

jr_014_4618:
    ld b, c
    inc l
    jr z, jr_014_4647

    jr z, jr_014_4649

    ld b, d
    ld b, c
    ld b, c
    ld b, c
    ld b, c
    ld b, e
    ld b, c
    ld b, c

jr_014_4626:
    ld b, c
    ld b, c
    ld b, d
    add hl, hl
    add hl, hl

jr_014_462b:
    ld bc, $012a
    ld a, [hl+]
    ld b, c
    ld a, [hl+]
    ld h, $42
    jr jr_014_464d

    ld a, [de]
    dec de
    ld a, [de]
    dec de
    ld a, [de]
    dec de
    ld h, $42
    inc l
    inc l

jr_014_463f:
    jr z, jr_014_466c

    jr z, jr_014_466e

    jr z, @+$2d

    ld h, $41

jr_014_4647:
    ld b, c
    ld b, c

jr_014_4649:
    ld b, c
    ld b, c
    ld b, c
    ld b, c

jr_014_464d:
    ld b, c
    ld b, c
    ld b, c
    add hl, hl
    ld bc, $432a
    ld b, d
    add hl, hl
    ld bc, $0101

jr_014_4659:
    ld a, [hl+]
    jr @+$1c

    dec de
    ld b, c
    ld b, c
    jr jr_014_467b

    ld a, [de]
    ld a, [de]
    dec de
    inc l
    jr z, jr_014_4692

    ld b, c
    ld b, c
    inc l
    jr z, jr_014_4694

jr_014_466c:
    jr z, jr_014_4699

jr_014_466e:
    ld bc, $3c3a
    inc a
    inc a
    inc a
    dec sp
    ld bc, $0101
    ld bc, $3d3e

jr_014_467b:
    dec a
    dec a
    dec a
    ccf
    ld bc, $0101
    nop
    ld [de], a
    ld a, [bc]
    rst $20
    ld b, [hl]
    ld c, e
    ld d, h
    xor l
    ld d, e
    dec b
    inc bc
    ld [hl-], a
    ld c, b
    jr c, jr_014_4659

    db $10

jr_014_4692:
    inc d
    nop

jr_014_4694:
    ld a, [bc]
    inc bc
    rst $00
    inc h
    db $10

jr_014_4699:
    ld c, b
    dec h
    rst $00
    add hl, bc
    ld e, $00
    nop
    dec c
    rst $00
    and h
    ld b, [hl]
    inc l
    nop
    nop
    ld [$1307], sp
    rrca
    rst $38
    jp nc, $e641

    ld b, $07
    jr jr_014_46bc

    rst $38
    pop de
    ld b, d
    call $0702
    rla
    rrca
    rst $38

jr_014_46bc:
    jp nc, $cd43

    inc bc
    ld b, $1a
    ld c, $ff
    db $d3
    ld b, h
    rlc a
    inc b
    dec e
    rrca
    rst $38
    jp nc, $c945

    inc b
    ld b, $20
    ld c, $ff
    db $d3
    ld b, [hl]
    rrc b
    inc b
    inc hl
    rrca
    rst $38
    jp nc, $ca47

    add hl, bc
    dec a
    ld [hl+], a
    inc c
    rst $38
    rst $38
    adc b
    push af
    dec hl
    ld d, a
    ld d, a
    ld d, a
    ld d, a
    ld d, a
    ld d, a
    ld d, a
    ld d, a
    dec h
    add hl, hl
    dec hl
    ld d, a
    ld d, a
    ld d, a
    ld d, a
    ld d, a
    ld d, a
    ld d, a
    ld d, a
    add hl, hl
    add hl, hl
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    add hl, hl
    add hl, hl
    dec bc
    ld a, $3f
    dec sp
    rlca
    rlca
    rlca
    rlca
    add hl, hl
    add hl, hl
    dec bc
    jr z, jr_014_4740

    add hl, hl
    dec bc
    dec bc
    dec bc
    dec bc
    add hl, hl
    add hl, hl
    dec bc
    jr z, jr_014_474a

    add hl, hl
    ld h, d
    ld d, c
    ld d, c
    ld d, c
    add hl, hl
    add hl, hl
    dec bc
    inc h
    ld d, a
    dec h
    ld c, [hl]
    dec bc
    ld a, $3f
    add hl, hl
    add hl, hl
    ld l, [hl]
    rrca
    ld a, [bc]
    ld sp, $3e4e
    inc l
    inc l
    add hl, hl
    add hl, hl
    dec bc
    dec bc
    ld c, l
    ld d, h
    ld c, [hl]
    jr z, jr_014_476c

jr_014_4740:
    inc l
    add hl, hl
    add hl, hl
    dec bc
    dec e
    ld l, d
    ld d, h
    ld c, [hl]
    jr z, jr_014_4776

jr_014_474a:
    inc l
    add hl, hl
    add hl, hl
    dec bc
    ld h, l
    add hl, de
    ld d, h
    ld c, [hl]
    jr z, jr_014_4780

    inc l
    add hl, hl
    inc l
    ccf
    dec sp
    add hl, de
    ld d, h
    ld c, [hl]
    inc h
    ld d, a
    ld d, a
    inc l
    ccf
    dec sp
    add hl, hl
    add hl, de
    ld d, h
    ld c, [hl]
    ld c, l
    ld b, e
    ld b, e
    ccf
    dec sp
    add hl, hl

jr_014_476c:
    add hl, hl
    add hl, de
    ld d, h
    ld c, [hl]
    ld c, l
    ld b, e
    ld b, e
    dec sp
    add hl, hl
    add hl, hl

jr_014_4776:
    add hl, hl
    add hl, de
    ld d, h
    ld c, [hl]
    ld c, l
    ld b, e
    ld b, e
    add hl, hl
    add hl, hl
    add hl, hl

jr_014_4780:
    add hl, hl
    ld c, a
    ld d, h
    ld c, [hl]
    ld c, l
    ld b, e
    ld b, e
    add hl, hl
    add hl, hl
    add hl, hl
    add hl, hl
    add hl, de
    ld d, h
    ld c, [hl]
    ld c, l
    ld b, e
    ld b, e
    add hl, hl
    add hl, hl
    add hl, hl
    add hl, hl
    add hl, de
    ld d, h
    ld c, [hl]
    ld c, l
    ld b, e
    ld b, e
    nop
    add hl, bc
    ld e, $10
    ld c, b
    jr z, jr_014_47f8

    bit 2, l
    ld [bc], a
    inc hl
    xor $46
    ld d, h
    rst $00
    inc c
    ld a, [bc]
    nop
    inc de
    ld [bc], a
    rst $00
    or d
    ld b, a
    inc l
    ld bc, $2d03
    nop
    ld e, b
    ld bc, $2b03
    dec bc
    ld a, [bc]
    inc b
    ld b, $12
    rst $38
    ret nc

    ld b, c
    ret


    dec b
    inc b
    add hl, bc
    ld d, $ff
    pop de
    ld b, d
    ret


    ld b, $07
    ld [$ff1c], sp
    ret nc

    ld b, e
    call $0602
    inc c
    ld d, $ff
    db $d3
    ld b, h
    rrc c
    inc b
    rlca
    inc h
    rst $38
    jp nc, $c945

    rlca
    ld b, $08
    add hl, hl
    rst $38
    ret nc

    ld b, [hl]
    rrc d
    ld c, $08
    inc c
    rst $38
    db $d3
    ld b, a
    pop de
    ld [bc], a
    ld c, $0d
    dec de

jr_014_47f8:
    rst $38
    pop de
    ld c, b
    pop de
    inc bc
    ld c, $0b
    ld de, $d3ff
    ld c, c
    pop de
    inc b
    dec a
    ld b, $1a
    rst $38
    rst $38
    adc d
    db $db
    ld b, a
    rst $00
    inc bc
    dec l
    inc l
    inc l
    inc l
    dec hl
    ld d, a
    ld d, a
    ld d, a
    ld d, a
    ld d, a
    ld d, a
    ld d, a
    ld d, a
    ld d, a
    ld d, a
    ld d, a
    ld d, a
    ld d, a
    ld d, a
    ld d, a
    ld d, a
    ld d, a
    ld d, a
    ld d, a
    ld d, a
    ld d, a
    ld d, a
    ld d, a
    ld d, a
    ld d, a
    dec h
    ld d, a
    ld d, a
    ld d, a
    dec h
    dec bc
    dec bc
    dec bc
    ld l, [hl]
    dec bc
    rrca
    ld l, [hl]
    dec bc
    dec bc
    ld h, b
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    ld [hl], a
    ld [hl], a
    ld d, [hl]
    ld [bc], a
    inc bc
    ld [hl], a
    ld [hl], a
    ld c, h
    inc d
    ld b, e
    ld b, e
    ld e, c
    dec bc
    dec bc
    dec bc
    dec bc
    rrca
    rrca
    ld c, h
    ld l, l
    dec bc
    ld l, [hl]
    rrca
    ld l, [hl]
    dec bc
    dec bc
    rrca
    dec bc
    dec bc
    dec bc
    dec bc
    ld [hl], h
    ld d, l
    ld d, l
    ld d, l
    ld d, l
    ld [hl], h
    dec de
    ld c, l
    ld b, e
    ld b, e
    rrca
    rrca
    rrca
    rrca
    dec bc
    rrca
    dec bc
    dec bc
    ld b, b
    rrca
    ld l, [hl]
    ld l, l
    dec bc
    dec bc
    rrca
    rrca
    dec bc
    dec bc
    dec bc
    dec bc
    ld [hl], h
    ld d, l
    ld d, l
    ld d, l
    ld d, l
    ld [hl], h
    dec de
    ld c, l
    ld b, e
    ld b, e
    ld e, c
    dec bc
    dec bc
    dec bc
    dec bc
    rrca
    rrca
    rrca
    rrca
    ld c, h
    dec bc
    dec bc
    rrca
    dec bc
    rrca
    dec bc
    dec bc
    dec bc
    dec bc
    dec e
    rra
    ld e, $07
    rlca
    dec e
    rra
    ld e, $4d
    ld b, e
    ld b, e
    ld d, c
    ld d, c
    ld d, c
    ld d, c
    ld d, c
    ld d, c
    ld d, c
    ld d, c
    ld d, c
    ld d, c
    ld d, c
    ld d, c
    ld d, c
    ld d, c
    ld d, c
    ld d, c
    ld d, c
    ld d, c
    ld d, c
    ld h, l
    ld b, e
    ld h, h
    dec bc
    dec bc
    ld h, l
    ld b, e
    ld h, h
    ld c, l
    ld b, e
    ld b, e
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    dec sp
    ld d, d
    ld d, d
    ld d, d
    ld d, d
    ld d, d
    ld d, d
    ld d, d
    ld d, d
    ld d, d
    ld c, a
    ld b, e
    ld b, e
    inc l
    inc l
    inc l
    inc l
    inc l
    inc l
    inc l
    inc l
    inc l
    inc l
    inc l
    inc l
    inc l
    inc l
    inc l
    inc l
    inc l
    add hl, hl
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    ld b, e
    ld b, e
    inc l
    inc l
    inc l
    inc l
    inc l
    inc l
    inc l
    inc l
    inc l
    inc l
    inc l
    inc l
    inc l
    inc l
    inc l
    inc l
    inc l
    add hl, hl
    ld b, e
    ld b, e
    ld b, e
    ld b, e
    ld b, e
    ld b, e
    ld b, e
    ld b, e
    ld b, e
    ld b, e
    ld b, e
    ld b, e
    rla
    add hl, bc
    ld a, [bc]
    ld c, d
    ld c, c
    ld [hl], $49
    dec [hl]
    ld c, c
    inc b
    ld [hl+], a
    or d
    ld b, e
    xor e
    rst $00
    ld a, [bc]
    ld a, [bc]
    nop
    nop
    ld sp, hl
    add $36
    ld c, c
    ret


    ld c, $02
    dec b
    add hl, bc
    nop
    xor [hl]
    dec b
    ld a, [bc]
    nop
    xor [hl]
    nop
    nop
    dec e
    rst $00
    dec b
    add hl, bc
    ld e, $c7
    dec b
    ld a, [bc]
    jr @+$1c

    ld a, [de]
    ld hl, $1717
    ld [hl+], a
    ld a, [de]
    ld a, [de]
    dec de
    inc e
    daa
    inc e
    jr jr_014_4973

    ld a, [de]
    dec de
    rra
    daa
    rra
    ld bc, $0101
    inc e
    dec e
    ld e, $1f
    ld bc, $0101
    add hl, hl
    add hl, hl
    add hl, hl
    ld bc, $4243
    ld bc, $2a2a
    ld a, [hl+]
    inc l

jr_014_4973:
    inc l
    inc l
    jr z, @+$45

    ld b, d
    jr z, jr_014_49a5

    dec hl
    dec hl
    add hl, hl
    add hl, hl
    add hl, hl
    ld bc, $4243
    ld bc, $2a2a
    ld a, [hl+]
    inc l
    inc l
    inc l
    jr z, jr_014_49ce

    ld b, d
    jr z, jr_014_49b9

    dec hl
    dec hl
    add hl, hl
    add hl, hl
    add hl, hl
    ld bc, $4243
    ld bc, $2a2a
    ld a, [hl+]
    inc l
    inc l
    inc l
    jr z, jr_014_49e2

    ld b, d
    jr z, jr_014_49cd

    dec hl
    dec hl
    nop

jr_014_49a5:
    ld [de], a
    inc d
    sbc b
    ld c, d
    inc bc
    ld c, h
    nop
    ld c, h
    rrca
    db $10
    ld l, b
    ld b, [hl]
    ldh a, [$c6]
    ld a, [bc]
    ld a, [bc]
    inc hl
    or $09
    ret z

jr_014_49b9:
    ld de, $4079
    ld [de], a
    ret


    ld a, [bc]
    ld a, [bc]
    nop
    or $f9
    add $12
    ld e, b
    ld b, b
    sbc [hl]
    rst $00
    add hl, bc
    ld a, [bc]
    ld hl, sp+$13

jr_014_49cd:
    ld [bc], a

jr_014_49ce:
    rst $00
    inc de
    add $41
    or l
    rst $00
    add hl, bc
    ld e, $f8
    nop
    dec c
    rst $00
    call c, $0f49
    ld [$0705], sp
    nop
    xor a

jr_014_49e2:
    inc bc
    ld a, [de]
    nop
    or c
    inc bc
    ld [hl+], a
    nop
    or d
    dec bc
    dec c
    nop
    or e
    dec bc
    add hl, de
    nop
    or h
    dec d
    ld [de], a
    nop
    or l
    dec e
    add hl, bc
    nop
    or [hl]
    dec e
    dec e
    nop
    or a
    ld a, [bc]
    dec b
    ld de, $0510
    dec de
    ld de, $2305
    ld [de], a
    dec bc
    ld a, [de]
    inc de
    inc de
    daa
    inc d
    dec d
    dec b
    dec d
    dec d
    rrca
    ld d, $1d
    ld a, [bc]
    rla
    dec e
    dec de
    jr jr_014_4a2e

    ld bc, $0f19
    jr @+$24

    ld hl, $ffff
    ld bc, $0c18

jr_014_4a26:
    jr jr_014_4a26

    ld [bc], a
    ld [bc], a
    jr jr_014_4a34

    ld h, $ff

jr_014_4a2e:
    rst $38
    inc bc
    jr jr_014_4a3c

    dec bc
    rst $38

jr_014_4a34:
    rst $38
    inc b
    jr jr_014_4a55

    rrca
    cp $02
    dec b

jr_014_4a3c:
    jr @+$13

    inc h
    cp $02
    ld b, $18
    ld [hl+], a
    ld d, $fe
    ld [bc], a
    rlca
    jr nz, jr_014_4a5c

    inc c
    cp $00
    ld [$1b2c], sp
    dec de
    rst $38
    rst $38
    add hl, bc
    dec de

jr_014_4a55:
    ld [hl+], a
    dec d
    cp $02
    ld a, [bc]
    db $10
    db $10

jr_014_4a5c:
    ld [hl+], a
    rst $38
    ret nc

    dec bc
    add hl, bc
    db $10
    inc hl
    rst $38
    ret nc

    inc c
    ld hl, $160c
    rst $38
    pop de
    dec c
    jr jr_014_4a88

    ld d, $ff
    ret nc

    ld c, $18
    ld a, [de]
    rla
    rst $38
    ret nc

    rrca
    ld a, [hl-]
    rst $00
    dec b
    rlca
    ld a, [hl+]
    rst $00
    inc bc
    ld a, [de]
    ld l, $c7
    inc bc
    ld [hl+], a
    adc e
    rst $00
    dec bc
    dec c

jr_014_4a88:
    sub c
    rst $00
    dec bc
    add hl, de
    db $10
    ret z

    dec d
    ld [de], a
    ld [hl], e
    ret z

    dec e
    add hl, bc
    ld a, l
    ret z

    dec e
    dec e
    ld d, d
    ld d, d
    ld d, d
    ld d, d
    ld d, d
    ld c, a
    ld d, d
    ld d, d
    ld d, d
    ld sp, $0c5f
    dec c
    ld c, $0c
    dec c
    dec c
    ld c, $38
    add hl, sp
    ld c, [hl]
    jr c, jr_014_4ae8

    jr c, jr_014_4aea

    jr c, jr_014_4aec

    ld sp, $3131
    ld e, a
    db $10
    ld de, $1012
    ld de, $1211
    stop
    ld c, [hl]
    stop
    inc a
    dec a
    stop
    ld [hl], a
    ld d, [hl]
    ld [hl], a
    ld e, a
    ld [hl], a
    ld [hl], a
    ld d, [hl]
    dec e
    ld e, $34
    ld d, [hl]
    ld [hl], a
    ld h, e
    ld c, [hl]
    ld c, c
    inc hl
    inc hl
    inc hl
    inc hl
    inc hl
    inc hl
    inc hl
    inc hl
    inc hl
    inc hl
    inc hl
    inc hl
    inc hl
    inc hl
    inc hl
    inc hl
    ld c, b
    ld c, l

jr_014_4ae8:
    ld c, [hl]
    daa

jr_014_4aea:
    jr c, jr_014_4b25

jr_014_4aec:
    jr c, jr_014_4b27

    jr c, jr_014_4b29

    ld sp, $3131
    ld sp, $2120
    jr c, jr_014_4b31

    jr c, jr_014_4b33

    daa
    ld c, l
    ld a, [bc]
    daa
    stop
    stop
    inc a
    dec a
    jr nz, jr_014_4b13

    dec c
    ld hl, $737c
    stop
    stop
    daa
    ld c, l
    ld a, [bc]
    ld h, $23

jr_014_4b13:
    inc hl
    inc hl
    inc hl
    inc hl
    inc hl
    ld l, b
    ld a, a
    ld a, a
    ld l, c
    inc hl
    inc hl
    inc hl
    inc hl
    inc hl
    inc hl
    ld [hl+], a
    ld c, l
    ld a, [bc]

jr_014_4b25:
    daa
    ld d, l

jr_014_4b27:
    ld d, l
    ld d, l

jr_014_4b29:
    ld d, l
    ld d, l
    ld d, l
    ld l, b
    ld a, a
    ld a, a
    ld l, c
    ld d, l

jr_014_4b31:
    ld d, l
    ld d, l

jr_014_4b33:
    ld d, l
    ld d, l
    ld d, l
    daa
    ld c, l
    ld bc, $3127
    jr nz, jr_014_4b5e

    jr nz, jr_014_4b60

    ld sp, $7f68
    ld a, a
    ld l, c
    jr nz, jr_014_4b67

    jr nz, jr_014_4b69

    jr nz, jr_014_4b6b

    daa
    ld bc, $2256
    ld sp, $6968
    ld l, b
    ld l, c
    ld sp, $7f68
    ld a, a
    ld l, c
    ld l, b
    ld l, c
    ld l, b
    ld l, c
    ld l, b
    ld l, c

jr_014_4b5e:
    ld h, $56

jr_014_4b60:
    ld a, [bc]
    daa
    ld d, [hl]
    scf
    ld a, [hl]
    scf
    ld a, [hl]

jr_014_4b67:
    ld d, [hl]
    scf

jr_014_4b69:
    ld a, [hl-]
    ld a, l

jr_014_4b6b:
    ld a, [hl]
    scf
    ld a, [hl]
    scf
    ld a, [hl]
    scf
    ld a, [hl]
    daa
    ld c, l
    ld a, [bc]
    ld h, $23
    inc hl
    inc hl
    inc hl
    ld c, b
    dec e
    ld e, $52
    ld c, a
    ld c, c
    inc hl
    inc hl
    inc hl
    inc hl
    inc hl
    inc hl
    ld [hl+], a
    ld c, l
    ld c, [hl]
    daa
    ld d, l
    ld d, l
    ld d, l
    ld d, l
    ld b, h
    inc hl
    inc hl
    inc hl
    inc hl
    ld b, l
    ld d, l
    ld d, l
    ld d, l
    ld d, l
    ld d, l
    ld d, l
    daa
    ld c, l
    ld c, [hl]
    daa
    jr c, @+$3b

    jr nz, jr_014_4bc3

    jr c, @+$3b

    jr c, @+$3b

    jr c, @+$3b

    ld sp, $2031
    ld hl, $3938
    daa
    ld c, l
    ld c, [hl]
    daa
    stop
    ld a, h
    ld [hl], d
    stop
    stop
    stop
    ld [hl], a
    ld d, [hl]
    ld a, h
    ld a, [hl]
    stop
    daa

jr_014_4bc3:
    ld c, l
    ld c, [hl]
    ld b, h
    inc hl
    inc hl
    inc hl
    inc hl
    inc hl
    inc hl
    inc hl
    inc hl
    ld c, b
    ld c, c
    inc hl
    inc hl
    inc hl
    inc hl
    inc hl
    inc hl
    ld b, l
    ld c, l
    jr nz, @+$23

    jr c, jr_014_4c15

    jr c, jr_014_4c17

    jr c, jr_014_4c19

    jr c, jr_014_4c1b

    daa
    daa
    jr c, jr_014_4c1f

    jr c, jr_014_4c21

    jr c, jr_014_4c23

    jr nz, jr_014_4c0d

    scf
    ld a, [hl]
    stop
    stop
    stop
    stop
    ld e, [hl]
    ld e, [hl]
    stop
    stop
    stop
    scf
    ld a, [hl]
    jp $3c3c


    dec [hl]
    ld c, h
    ld a, [hl-]
    ld c, h
    ccf
    ld c, h
    ld b, h
    ld c, h
    ld c, c
    ld c, h

jr_014_4c0d:
    ld c, [hl]
    ld c, h
    ld d, e
    ld c, h
    ld e, b
    ld c, h
    ld e, l
    ld c, h

jr_014_4c15:
    ld h, d
    ld c, h

jr_014_4c17:
    ld h, a
    ld c, h

jr_014_4c19:
    ld l, h
    ld c, h

jr_014_4c1b:
    ld [hl], d
    ld c, h
    ld [hl], a
    ld c, h

jr_014_4c1f:
    ld a, h
    ld c, h

jr_014_4c21:
    add c
    ld c, h

jr_014_4c23:
    add [hl]
    ld c, h
    adc e
    ld c, h
    ld [$9024], a
    ld c, h
    sub l
    ld c, h
    sbc d
    ld c, h
    rst $28
    inc h
    sbc a
    ld c, h
    and h
    ld c, h
    rla
    rst $20
    ld h, d
    add hl, hl
    ld d, b
    rla
    inc b
    ld h, e
    add hl, hl
    ld d, b
    rla
    inc h
    ld h, e
    add hl, hl
    ld d, b
    rla
    add hl, sp
    ld h, e
    add hl, hl
    ld d, b
    rla
    ld e, d
    ld h, e
    add hl, hl
    ld d, b
    rla
    ld a, [hl]
    ld h, e
    add hl, hl
    ld d, b
    rla
    sbc [hl]
    ld h, e
    add hl, hl
    ld d, b
    rla
    rst $18
    ld h, e
    add hl, hl
    ld d, b
    rla
    rrca
    ld h, h
    add hl, hl
    ld d, b
    rla
    ld b, l
    ld h, h
    add hl, hl
    ld d, b
    rla
    ld [hl], l
    ld h, h
    add hl, hl
    ld d, b
    rla
    sub $64
    add hl, hl
    dec d
    ld d, b
    rla
    db $eb
    ld h, h
    add hl, hl
    ld d, b
    rla
    jr jr_014_4cdf

    add hl, hl
    ld d, b
    rla
    ld c, a
    ld h, l
    add hl, hl
    ld d, b
    rla
    ld [hl], a
    ld h, l
    add hl, hl
    ld d, b
    rla
    and [hl]
    ld h, l
    add hl, hl
    ld d, b
    rla
    or l
    ld h, l
    add hl, hl
    ld d, b
    rla
    ld hl, sp+$65
    add hl, hl
    ld d, b
    rla
    ld h, a
    ld h, [hl]
    add hl, hl
    ld d, b
    rla
    rst $00
    ld h, [hl]
    add hl, hl
    ld d, b
    rla
    ld [c], a
    ld h, [hl]
    add hl, hl
    ld d, b
    rla
    push af
    ld h, [hl]
    add hl, hl
    ld d, b
    ld hl, $d7e7
    bit 0, [hl]
    res 0, [hl]
    call nz, Call_014_4cc6
    call $3c3c
    ld hl, $4d3a
    ld de, $4d1c
    ld a, [$d628]
    call $3160
    ld [$d628], a
    ret


Call_014_4cc6:
    ld a, [$d880]
    and $03
    cp $03
    jr z, jr_014_4cef

    ld a, $d7
    call Call_014_4d0c
    ld a, $d8
    call Call_014_4d0c
    ld hl, $4ce8

jr_014_4cdc:
    ld a, [hl+]
    cp $ff

jr_014_4cdf:
    jr z, jr_014_4cef

    push hl
    call Call_014_4d14
    pop hl
    jr jr_014_4cdc

    reti


    jp c, $dcdb

    rst $18
    ldh [rIE], a

jr_014_4cef:
    ld a, [$d881]
    and $03
    cp $03
    ret z

    ld a, $dd
    call Call_014_4d0c
    ld a, $de
    call Call_014_4d0c
    ld a, $e1
    call Call_014_4d14
    ld a, $e2
    call Call_014_4d14
    ret


Call_014_4d0c:
    ld [$cc4d], a
    ld a, $15
    jp $3e6d


Call_014_4d14:
    ld [$cc4d], a
    ld a, $11
    jp $3e6d


    add hl, de
    ld [hl-], a
    ld c, h
    ld [hl-], a
    ld [hl], l
    ld [hl-], a
    or e
    ld c, l
    cp l
    ld c, l
    rst $00
    ld c, l
    pop de
    ld c, l
    db $db
    ld c, l
    push hl
    ld c, l
    rst $28
    ld c, l
    ld sp, hl
    ld c, l
    inc bc
    ld c, [hl]
    dec c
    ld c, [hl]
    xor l
    ld c, [hl]
    xor l
    ld c, [hl]
    ld bc, $e740
    rst $10
    rla
    ld c, [hl]
    ld hl, $1c4e
    ld c, [hl]
    inc e
    ld c, [hl]
    ld [bc], a
    ld b, b
    rst $20
    rst $10
    ld h, $4e
    jr nc, @+$50

    dec hl
    ld c, [hl]
    dec hl
    ld c, [hl]
    inc bc
    jr nz, @-$17

    rst $10
    dec [hl]
    ld c, [hl]
    ccf
    ld c, [hl]
    ld a, [hl-]
    ld c, [hl]
    ld a, [hl-]
    ld c, [hl]
    inc b
    ld b, b
    rst $20
    rst $10
    ld b, h
    ld c, [hl]
    ld c, [hl]
    ld c, [hl]
    ld c, c
    ld c, [hl]
    ld c, c
    ld c, [hl]
    dec b
    jr nc, @-$17

    rst $10
    ld d, e
    ld c, [hl]
    ld e, l
    ld c, [hl]
    ld e, b
    ld c, [hl]
    ld e, b
    ld c, [hl]
    ld b, $40
    rst $20
    rst $10
    ld h, d
    ld c, [hl]
    ld l, h
    ld c, [hl]
    ld h, a
    ld c, [hl]
    ld h, a
    ld c, [hl]
    rlca
    jr nz, @-$17

    rst $10
    ld [hl], c
    ld c, [hl]
    ld a, e
    ld c, [hl]
    db $76
    ld c, [hl]
    db $76
    ld c, [hl]
    ld [$e740], sp
    rst $10
    add b
    ld c, [hl]
    adc d
    ld c, [hl]
    add l
    ld c, [hl]
    add l
    ld c, [hl]
    add hl, bc
    jr nc, @-$17

    rst $10
    adc a
    ld c, [hl]
    sbc c
    ld c, [hl]
    sub h
    ld c, [hl]
    sub h
    ld c, [hl]
    ld a, [bc]
    ld b, b
    rst $20
    rst $10
    sbc [hl]
    ld c, [hl]
    xor b
    ld c, [hl]
    and e
    ld c, [hl]
    and e
    ld c, [hl]
    rst $38
    ld [$3a21], sp
    ld c, l
    call $31cc
    jp $24d7


    ld [$4621], sp
    ld c, l
    call $31cc
    jp $24d7


    ld [$5221], sp
    ld c, l
    call $31cc
    jp $24d7


    ld [$5e21], sp
    ld c, l
    call $31cc
    jp $24d7


    ld [$6a21], sp
    ld c, l
    call $31cc
    jp $24d7


    ld [$7621], sp
    ld c, l
    call $31cc
    jp $24d7


    ld [$8221], sp
    ld c, l
    call $31cc
    jp $24d7


    ld [$8e21], sp
    ld c, l
    call $31cc
    jp $24d7


    ld [$9a21], sp
    ld c, l
    call $31cc
    jp $24d7


    ld [$a621], sp
    ld c, l
    call $31cc
    jp $24d7


    rla
    ld l, c
    ld e, h
    inc h
    ld d, b
    rla
    add l
    ld e, h
    inc h
    ld d, b
    rla
    adc [hl]
    ld e, h
    inc h
    ld d, b
    rla
    xor h
    ld e, h
    inc h
    ld d, b
    rla
    ret


    ld e, h
    inc h
    ld d, b
    rla
    db $d3
    ld e, h
    inc h
    ld d, b
    rla
    ld bc, $245d
    ld d, b
    rla
    inc hl
    ld e, l
    inc h
    ld d, b
    rla
    dec hl
    ld e, l
    inc h
    ld d, b
    rla
    ld b, e
    ld e, l
    inc h
    ld d, b
    rla
    ld e, l
    ld e, l
    inc h
    ld d, b
    rla
    ld l, a
    ld e, l
    inc h
    ld d, b
    rla
    adc a
    ld e, l
    inc h
    ld d, b
    rla
    xor h
    ld e, l
    inc h
    ld d, b
    rla
    or h
    ld e, l
    inc h
    ld d, b
    rla
    pop hl
    ld e, l
    inc h
    ld d, b
    rla
    inc c
    ld e, [hl]
    inc h
    ld d, b
    rla
    ld e, $5e
    inc h
    ld d, b
    rla
    dec a
    ld e, [hl]
    inc h
    ld d, b
    rla
    ld e, b
    ld e, [hl]
    inc h
    ld d, b
    rla
    ld h, b
    ld e, [hl]
    inc h
    ld d, b
    rla
    ld a, h
    ld e, [hl]
    inc h
    ld d, b
    rla
    sbc a
    ld e, [hl]
    inc h
    ld d, b
    rla
    or [hl]
    ld e, [hl]
    inc h
    ld d, b
    rla
    db $e3
    ld e, [hl]
    inc h
    ld d, b
    rla
    ld b, $5f
    inc h
    ld d, b
    rla
    dec de
    ld e, a
    inc h
    ld d, b
    rla
    ld d, e
    ld e, a
    inc h
    ld d, b
    rla
    ld a, a
    ld e, a
    inc h
    ld d, b
    rla
    add [hl]
    ld e, a
    inc h
    ld d, b
    rla
    and a
    ld e, a
    inc h
    ld d, b
    call $3c3c
    ld hl, $4ebe
    ld a, [$d60a]
    jp $3d97


    nop
    ld c, a
    ld h, d
    ld c, a
    or l
    ld c, a
    ld a, [hl+]
    ld d, b
    add a
    ld d, b
    rst $18
    ld d, b
    ld d, c
    ld d, c
    push de
    ld c, [hl]

Jump_014_4ece:
    xor a
    ld [$cd6b], a
    ld [$d60a], a
    ret


Call_014_4ed6:
    ld a, [$d715]
    ld b, a

jr_014_4eda:
    ld a, [hl+]
    cp b
    jr z, jr_014_4ee1

    inc hl
    jr jr_014_4eda

jr_014_4ee1:
    ld a, [hl]
    ld [$d05d], a
    ret


Call_014_4ee6:
    ld de, $4efb
    ld a, [$cf0d]
    cp $01
    jr z, jr_014_4ef1

    inc de

jr_014_4ef1:
    call $363a
    ld a, $0c
    ldh [$8d], a
    jp $34a6


    ret nz

    ret nz

    ret nz

    ret nz

    rst $38
    ld a, [$d7eb]
    bit 7, a
    ret z

    ld hl, $4f2d
    call $34bf
    ret nc

    ld a, [$cd3d]
    ld [$cf0d], a
    xor a
    ldh [$b4], a
    ld a, $f0
    ld [$cd6b], a
    ld a, $02
    ld [$d528], a
    ld a, [$d7eb]
    bit 0, a
    jr nz, jr_014_4f32

    bit 1, a
    jp nz, Jump_014_504e

    ret


    inc b
    dec e
    dec b
    dec e
    rst $38

jr_014_4f32:
    ld a, $01
    ld [$cd4f], a
    xor a
    ld [$cd50], a
    ld a, $4c
    call $3e6d
    ld a, [$d700]
    and a
    jr z, jr_014_4f4e

    ld a, $ff
    ld [$c0ee], a
    call $23b1

jr_014_4f4e:
    ld c, $02
    ld a, $de
    call $23a1
    ld a, $01
    ldh [$8c], a
    call Call_014_4ee6
    ld a, $01
    ld [$d60a], a
    ret


    ld a, [$d730]
    bit 0, a
    ret nz

    ld a, [$cf0d]
    cp $01
    jr nz, jr_014_4f78

    ld a, $04
    ld [$d528], a
    ld a, $04
    jr jr_014_4f7a

jr_014_4f78:
    ld a, $0c

jr_014_4f7a:
    ldh [$8d], a
    ld a, $01
    ldh [$8c], a
    call $34a6
    xor a
    ld [$cd6b], a
    ld a, $01
    ldh [$8c], a
    call $2920
    ld hl, $d72d
    set 6, [hl]
    set 7, [hl]
    ld hl, $51b7
    ld de, $51bc
    call $3354
    ld a, $e1
    ld [$d059], a
    ld hl, $4faf
    call Call_014_4ed6
    ld a, $02
    ld [$d60a], a
    ret


    or c
    inc b
    sbc c
    dec b
    or b
    ld b, $fa
    ld d, a
    ret nc

    cp $ff
    jp z, Jump_014_4ece

    ld a, [$c109]
    and a
    jr nz, jr_014_4fc7

    ld a, $04
    jr jr_014_4fc9

jr_014_4fc7:
    ld a, $0c

jr_014_4fc9:
    ldh [$8d], a
    ld a, $01
    ldh [$8c], a
    call $34a6
    ld a, $f0
    ld [$cd6b], a
    ld hl, $d7eb
    set 5, [hl]
    ld a, $01
    ldh [$8c], a
    call $2920
    ld a, $ff
    ld [$c0ee], a
    call $23b1
    ld b, $02
    ld hl, $5b47
    call $35d6
    ld a, [$cf0d]
    cp $01
    jr nz, jr_014_4fff

    call Call_014_5008
    jr jr_014_5002

jr_014_4fff:
    call Call_014_500d

jr_014_5002:
    ld a, $03
    ld [$d60a], a
    ret


Call_014_5008:
    ld de, $5017
    jr jr_014_5010

Call_014_500d:
    ld de, $501f

jr_014_5010:
    ld a, $01
    ldh [$8c], a
    jp $363a


    ret nz

    ret nz

    nop
    nop
    nop
    nop
    nop
    rst $38
    ld b, b
    ret nz

    ret nz

    ret nz

    nop
    nop
    nop
    nop
    nop
    nop
    rst $38
    ld a, [$d730]
    bit 0, a
    ret nz

    xor a
    ld [$cd6b], a
    ld a, $22
    ld [$cc4d], a
    ld a, $11
    call $3e6d
    call $2307
    ld hl, $d7eb
    res 0, [hl]
    res 7, [hl]
    ld a, $00
    ld [$d60a], a
    ret


Jump_014_504e:
    ld a, $02
    ld [$cd4f], a
    xor a
    ld [$cd50], a
    ld a, $4c
    call $3e6d
    ld a, [$d700]
    and a
    jr z, jr_014_506a

    ld a, $ff
    ld [$c0ee], a
    call $23b1

jr_014_506a:
    ld a, $ff
    ld [$c0ee], a
    call $23b1
    ld b, $02
    ld hl, $5b65
    call $35d6
    ld a, $02
    ldh [$8c], a
    call Call_014_4ee6
    ld a, $04
    ld [$d60a], a
    ret


    ld a, [$d730]
    bit 0, a
    ret nz

    ld a, $02
    ldh [$8c], a
    ld a, [$cf0d]
    cp $01
    jr nz, jr_014_50a1

    ld a, $04
    ld [$d528], a
    ld a, $04
    jr jr_014_50a8

jr_014_50a1:
    ld a, $02
    ld [$d528], a
    ld a, $0c

jr_014_50a8:
    ldh [$8d], a
    call $34a6
    xor a
    ld [$cd6b], a
    ld a, $02
    ldh [$8c], a
    call $2920
    ld hl, $d72d
    set 6, [hl]
    set 7, [hl]
    ld hl, $51cb
    ld de, $51d0
    call $3354
    ld a, $f2
    ld [$d059], a
    ld hl, $50d9
    call Call_014_4ed6
    ld a, $05
    ld [$d60a], a
    ret


    or c
    ld a, [bc]
    sbc c
    dec bc
    or b
    inc c
    ld a, [$d057]
    cp $ff
    jp z, Jump_014_4ece

    ld a, $02
    ldh [$8c], a
    ld a, [$cf0d]
    cp $01
    jr nz, jr_014_50fb

    ld a, $04
    ld [$d528], a
    ld a, $04
    jr jr_014_5102

jr_014_50fb:
    ld a, $02
    ld [$d528], a
    ld a, $0c

jr_014_5102:
    ldh [$8d], a
    call $34a6
    ld a, $f0
    ld [$cd6b], a
    ld hl, $d7eb
    set 6, [hl]
    ld a, $02
    ldh [$8c], a
    call $2920
    ld a, $ff
    ld [$c0ee], a
    call $23b1
    ld b, $02
    ld hl, $5b75
    call $35d6
    ld a, [$cf0d]
    cp $01
    jr nz, jr_014_5134

    call Call_014_513d
    jr jr_014_5137

jr_014_5134:
    call Call_014_5142

jr_014_5137:
    ld a, $06
    ld [$d60a], a
    ret


Call_014_513d:
    ld de, $514c
    jr jr_014_5145

Call_014_5142:
    ld de, $514d

jr_014_5145:
    ld a, $02
    ldh [$8c], a
    jp $363a


    add b
    add b
    add b
    add b
    rst $38
    ld a, [$d730]
    bit 0, a
    ret nz

    xor a
    ld [$cd6b], a
    ld a, $23
    ld [$cc4d], a
    ld a, $11
    call $3e6d
    call $2307
    ld hl, $d7eb
    res 1, [hl]
    res 7, [hl]
    ld a, $07
    ld [$d60a], a
    ret


    ld a, e
    ld d, c
    sub h
    ld d, c
    push de
    ld d, c
    ld [$ebfa], sp
    rst $10
    bit 5, a
    jr z, jr_014_518b

    ld hl, $51b2
    call $3c49
    jr jr_014_5191

jr_014_518b:
    ld hl, $51ad
    call $3c49

jr_014_5191:
    jp $24d7


    ld [$ebfa], sp
    rst $10
    bit 6, a
    jr z, jr_014_51a4

    ld hl, $51c6
    call $3c49
    jr jr_014_51aa

jr_014_51a4:
    ld hl, $51c1
    call $3c49

jr_014_51aa:
    jp $24d7


    rla
    call $2462
    ld d, b
    rla
    ld l, a
    ld h, e
    inc h
    ld d, b
    rla
    db $f4
    ld h, e
    inc h
    ld d, b
    rla
    db $10
    ld h, h
    inc h
    ld d, b
    rla
    ld d, b
    ld h, h
    inc h
    ld d, b
    rla
    ld b, $65
    inc h
    ld d, b
    rla
    add e
    ld h, l
    inc h
    ld d, b
    rla
    and b
    ld h, l
    inc h
    ld d, b
    rla
    ld b, $66
    inc h
    ld d, b
    call Call_014_51e9
    call $3c3c
    ld hl, $5213
    ld a, [$d667]
    jp $3d97


Call_014_51e9:
    ld hl, $d126
    bit 6, [hl]
    res 6, [hl]
    ret z

    ld hl, $d7ee
    res 0, [hl]
    res 7, [hl]
    ld hl, $d813
    res 0, [hl]
    res 6, [hl]
    ld a, $7a
    ld [$cc4d], a
    ld a, $15
    call $3e6d
    ld a, $60
    ld [$cc4d], a
    ld a, $11
    jp $3e6d


    add hl, de
    ld d, d
    db $ec
    ld d, d
    pop af
    ld d, d
    ld hl, $5255
    ld a, [$d361]
    ld b, a
    ld e, $00
    ld c, $07

jr_014_5224:
    ld a, [hl+]
    cp $ff
    ret z

    inc e
    dec c
    cp b
    jr nz, jr_014_5224

    cp $23
    jr nz, jr_014_5237

    ld a, [$d362]
    cp $0e
    ret nc

jr_014_5237:
    ld a, e
    ldh [$8c], a
    ld a, c
    ld [$cd3d], a
    ld b, $02
    ld hl, $d7ed
    ld a, $10
    call $3e6d
    ld a, c
    and a
    ret nz

    call Call_014_525d
    call $2920
    xor a
    ldh [$b4], a
    ret


    inc hl
    jr c, jr_014_52ad

    ld h, b
    ld l, c
    ld [hl], a
    adc b
    rst $38

Call_014_525d:
    ld hl, $5276
    ld a, [$cd3d]
    ld c, a
    ld b, $00
    add hl, bc
    add hl, bc
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld de, $cd6d

jr_014_526e:
    ld a, [hl+]
    ld [de], a
    inc de
    cp $50
    jr nz, jr_014_526e

    ret


    bit 2, d
    cp [hl]
    ld d, d
    or c
    ld d, d
    and a
    ld d, d
    sbc h
    ld d, d
    adc a
    ld d, d
    add h
    ld d, d
    add h
    add b
    sub c
    sub e
    add a
    add c
    add b
    add e
    add [hl]
    add h
    ld d, b
    sub l
    adc [hl]
    adc e
    add d
    add b
    adc l
    adc [hl]
    add c
    add b
    add e
    add [hl]
    add h
    ld d, b
    adc h
    add b
    sub c
    sub d
    add a
    add c
    add b
    add e
    add [hl]
    add h
    ld d, b
    sub d
    adc [hl]
    sub h
    adc e
    add c
    add b

jr_014_52ad:
    add e
    add [hl]
    add h
    ld d, b
    sub c
    add b
    adc b
    adc l
    add c
    adc [hl]
    sub [hl]
    add c
    add b
    add e
    add [hl]
    add h
    ld d, b
    sub e
    add a
    sub h
    adc l
    add e
    add h
    sub c
    add c
    add b
    add e
    add [hl]
    add h
    ld d, b
    add d
    add b
    sub d
    add d
    add b
    add e
    add h
    add c
    add b
    add e
    add [hl]
    add h
    ld d, b

Call_014_52d8:
    ld a, $01
    ld [$cd38], a
    ld a, $80
    ld [$ccd3], a
    xor a
    ld [$c109], a
    ld [$cd6b], a
    jp $3486


    ld a, [$cd38]
    and a
    ret nz

    ld a, $00
    ld [$d667], a
    ret


    rlca
    ld d, e
    db $10
    ld d, e
    add hl, de
    ld d, e
    ld [hl+], a
    ld d, e
    dec hl
    ld d, e
    inc [hl]
    ld d, e
    dec a
    ld d, e
    xor b
    ld d, e
    ld [$063e], sp
    call Call_014_5346
    jp $24d7


    ld [$053e], sp
    call Call_014_5346
    jp $24d7


    ld [$043e], sp
    call Call_014_5346
    jp $24d7


    ld [$033e], sp
    call Call_014_5346
    jp $24d7


    ld [$023e], sp
    call Call_014_5346
    jp $24d7


    ld [$013e], sp
    call Call_014_5346
    jp $24d7


    ld [$003e], sp
    call Call_014_5346
    jp $24d7


Call_014_5346:
    ld [$cd3d], a
    call Call_014_525d
    ld a, [$cd3d]
    inc a
    ld c, a
    ld b, $02
    ld hl, $d356
    ld a, $10
    call $3e6d
    ld a, c
    and a
    jr nz, jr_014_536e

    ld hl, $538e
    call $3c49
    call Call_014_52d8
    ld a, $01
    ld [$d667], a
    ret


jr_014_536e:
    ld hl, $539e
    call $3c49
    ld a, [$cd3d]
    ld c, a
    ld b, $01
    ld hl, $d7ed
    ld a, $10
    call $3e6d
    ld a, $02
    ld [$d667], a
    ret


    ld hl, $539e
    jp $3c49


    rla
    ld e, $66
    inc h
    ld [$a53e], sp
    call $3740
    call $3748
    jp $24d7


    rla
    sub [hl]
    ld h, [hl]
    inc h
    dec bc
    rla
    db $dd
    ld h, [hl]
    inc h
    ld d, b
    rla
    nop
    ld h, a
    inc h
    ld d, b
    call $3c3c
    ld hl, $545b
    ld de, $53cb
    ld a, [$d602]
    call $3160
    ld [$d602], a
    ret


Jump_014_53c0:
    xor a
    ld [$cd6b], a
    ld [$d602], a
    ld [$da39], a
    ret


    push de
    ld d, e
    ld c, h
    ld [hl-], a
    ld [hl], l
    ld [hl-], a
    ld [hl+], a
    ld d, h
    ld de, $fa54
    rst $28
    rst $10
    bit 0, a
    jp nz, $3219

    ld hl, $540e
    call $34bf
    jp nc, $3219

    xor a
    ldh [$b4], a
    ld a, $01
    ldh [$8c], a
    call $2920
    ld hl, $d7f0
    bit 1, [hl]
    res 1, [hl]
    ret z

    ld a, $80
    ld [$ccd3], a
    ld a, $01
    ld [$cd38], a
    call $3486
    ld a, $04
    ld [$d602], a
    ld [$da39], a
    ret


    rrca
    ld a, [bc]
    rst $38
    ld a, [$cd38]
    and a
    ret nz

    call $3dd7
    ld a, $00
    ld [$d602], a
    ld [$da39], a
    ret


    ld a, [$d057]
    cp $ff
    jp z, Jump_014_53c0

    call $2429
    ld a, $f0
    ld [$cd6b], a
    ld hl, $d7ef
    set 1, [hl]
    ld a, $01
    ldh [$8c], a
    call $2920
    xor a
    ld [$cd6b], a
    ld a, $00
    ld [$d602], a
    ld [$da39], a
    ret


    and h
    ld d, h
    dec [hl]
    ld d, l
    ccf
    ld d, l
    ld c, c
    ld d, l
    ld d, e
    ld d, l
    ld e, l
    ld d, l
    ld h, a
    ld d, l
    db $f4
    inc h
    ld [bc], a
    ld b, b
    rst $28
    rst $10
    ld [hl], c
    ld d, l
    ld a, e
    ld d, l
    db $76
    ld d, l
    db $76
    ld d, l
    inc bc
    db $10
    rst $28
    rst $10
    add b
    ld d, l
    adc d
    ld d, l
    add l
    ld d, l
    add l
    ld d, l
    inc b
    db $10
    rst $28
    rst $10
    adc a
    ld d, l
    sbc c
    ld d, l
    sub h
    ld d, l
    sub h
    ld d, l
    dec b
    db $10
    rst $28
    rst $10
    sbc [hl]
    ld d, l
    xor b
    ld d, l
    and e
    ld d, l
    and e
    ld d, l
    ld b, $10
    rst $28
    rst $10
    xor l
    ld d, l
    or a
    ld d, l
    or d
    ld d, l
    or d
    ld d, l
    rlca
    db $10
    rst $28
    rst $10
    cp h
    ld d, l
    add $55
    pop bc
    ld d, l
    pop bc
    ld d, l
    rst $38
    ld [$f021], sp
    rst $10
    res 1, [hl]
    ld a, [$d7ef]
    bit 0, a
    jr nz, jr_014_54f9

    ld hl, $5510
    call $3c49
    ld bc, $3101
    call $3e2e
    jr nc, jr_014_5502

    ld hl, $d7ef
    set 0, [hl]
    ld hl, $551a
    call $3c49
    ld hl, $5526
    call $3c49
    ld hl, $d72d
    set 6, [hl]
    set 7, [hl]
    ld hl, $552b
    ld de, $552b
    call $3354
    ldh a, [$8c]
    ld [$cf13], a
    call $336a
    call $32d7
    xor a
    ldh [$b4], a
    ld a, $03
    ld [$d602], a
    ld [$da39], a
    jp $24d7


jr_014_54f9:
    ld hl, $5530
    call $3c49
    jp $24d7


jr_014_5502:
    ld hl, $5521
    call $3c49
    ld hl, $d7f0
    set 1, [hl]
    jp $24d7


    rla
    ld hl, $2467
    dec bc
    rla
    ld d, l
    ld h, a
    inc h
    ld d, b
    rla
    ld a, c
    ld h, a
    inc h
    dec bc
    ld b, $50
    rla
    adc a
    ld h, a
    inc h
    ld d, b
    rla
    xor b
    ld h, a
    inc h
    ld d, b
    rla
    adc d
    ld l, b
    inc h
    ld d, b
    rla
    and b
    ld l, b
    inc h
    ld d, b
    ld [$5b21], sp
    ld d, h
    call $31cc
    jp $24d7


    ld [$6721], sp
    ld d, h
    call $31cc
    jp $24d7


    ld [$7321], sp
    ld d, h
    call $31cc
    jp $24d7


    ld [$7f21], sp
    ld d, h
    call $31cc
    jp $24d7


    ld [$8b21], sp
    ld d, h
    call $31cc
    jp $24d7


    ld [$9721], sp
    ld d, h
    call $31cc
    jp $24d7


    rla
    ld [c], a
    ld l, b
    inc h
    ld d, b
    rla
    nop
    ld b, b
    dec h
    ld d, b
    rla
    db $10
    ld b, b
    dec h
    ld d, b
    rla
    ld b, e
    ld b, b
    dec h
    ld d, b
    rla
    ld h, c
    ld b, b
    dec h
    ld d, b
    rla
    ld [hl], d
    ld b, b
    dec h
    ld d, b
    rla
    sub l
    ld b, b
    dec h
    ld d, b
    rla
    xor a
    ld b, b
    dec h
    ld d, b
    rla
    cp h
    ld b, b
    dec h
    ld d, b
    rla
    rst $18
    ld b, b
    dec h
    ld d, b
    rla
    db $fd
    ld b, b
    dec h
    ld d, b
    rla
    db $10
    ld b, c
    dec h
    ld d, b
    rla
    inc sp
    ld b, c
    dec h
    ld d, b
    rla
    ld d, b
    ld b, c
    dec h
    ld d, b
    rla
    ld h, e
    ld b, c
    dec h
    ld d, b
    rla
    add [hl]
    ld b, c
    dec h
    ld d, b
    rla
    add sp, $41
    dec h
    ld d, b
    rla
    ei
    ld b, c
    dec h
    ld d, b
    call Call_014_55e1
    call $3c3c
    ld hl, $563e
    ld de, $5622
    ld a, [$d603]
    call $3160
    ld [$d603], a
    ret


Call_014_55e1:
    ld hl, $d126
    bit 6, [hl]
    res 6, [hl]
    ret z

    ld hl, $d7f2
    bit 7, [hl]
    ret nz

    bit 5, [hl]
    jr nz, jr_014_55ff

    res 6, [hl]
    ld a, $61
    ld [$cc4d], a
    ld a, $15
    jp $3e6d


jr_014_55ff:
    bit 4, [hl]
    ret z

    set 7, [hl]
    ld a, $24
    ld [$cc4d], a
    ld a, $11
    call $3e6d
    ld a, $62
    ld [$cc4d], a
    ld a, $11
    call $3e6d
    ld a, $63
    ld [$cc4d], a
    ld a, $15
    jp $3e6d


    add hl, de
    ld [hl-], a
    ld c, h
    ld [hl-], a
    ld [hl], l
    ld [hl-], a
    xor e
    ld d, [hl]
    or l
    ld d, [hl]
    cp a
    ld d, [hl]
    ret


    ld d, [hl]
    db $d3
    ld d, [hl]
    db $dd
    ld d, [hl]
    rst $20
    ld d, [hl]
    pop af
    ld d, [hl]
    ei
    ld d, [hl]
    db $f4
    inc h
    adc h
    ld d, a

jr_014_563e:
    ld bc, $f120
    rst $10
    dec b
    ld d, a
    rrca
    ld d, a
    ld a, [bc]
    ld d, a
    ld a, [bc]
    ld d, a

jr_014_564a:
    ld [bc], a
    jr nc, jr_014_563e

    rst $10
    inc d
    ld d, a
    ld e, $57
    add hl, de
    ld d, a
    add hl, de
    ld d, a

jr_014_5656:
    inc bc
    jr nc, jr_014_564a

    rst $10
    inc hl
    ld d, a
    dec l
    ld d, a
    jr z, @+$59

    jr z, jr_014_56b9

    inc b
    jr nz, jr_014_5656

    rst $10
    ld [hl-], a
    ld d, a
    inc a
    ld d, a
    scf
    ld d, a
    scf
    ld d, a
    dec b
    ld b, b
    pop af
    rst $10
    ld b, c
    ld d, a
    ld c, e
    ld d, a
    ld b, [hl]
    ld d, a
    ld b, [hl]
    ld d, a

jr_014_567a:
    ld b, $40
    pop af
    rst $10
    ld d, b
    ld d, a
    ld e, d
    ld d, a
    ld d, l
    ld d, a
    ld d, l
    ld d, a
    rlca
    jr nc, jr_014_567a

    rst $10
    ld e, a
    ld d, a
    ld l, c
    ld d, a
    ld h, h
    ld d, a
    ld h, h
    ld d, a

jr_014_5692:
    ld [$f120], sp
    rst $10
    ld l, [hl]
    ld d, a
    ld a, b
    ld d, a
    ld [hl], e
    ld d, a
    ld [hl], e
    ld d, a
    add hl, bc
    jr nz, jr_014_5692

    rst $10
    ld a, l
    ld d, a
    add a
    ld d, a
    add d
    ld d, a
    add d
    ld d, a
    rst $38
    ld [$3e21], sp
    ld d, [hl]
    call $31cc
    jp $24d7


    ld [$4a21], sp
    ld d, [hl]

jr_014_56b9:
    call $31cc
    jp $24d7


    ld [$5621], sp
    ld d, [hl]
    call $31cc
    jp $24d7


    ld [$6221], sp
    ld d, [hl]
    call $31cc
    jp $24d7


    ld [$6e21], sp
    ld d, [hl]
    call $31cc
    jp $24d7


    ld [$7a21], sp
    ld d, [hl]
    call $31cc
    jp $24d7


    ld [$8621], sp
    ld d, [hl]
    call $31cc
    jp $24d7


    ld [$9221], sp
    ld d, [hl]
    call $31cc
    jp $24d7


    ld [$9e21], sp
    ld d, [hl]
    call $31cc
    jp $24d7


    rla
    ld e, $42
    dec h
    ld d, b
    rla
    ld b, l
    ld b, d
    dec h
    ld d, b
    rla
    ld d, h
    ld b, d
    dec h
    ld d, b
    rla
    sub d
    ld b, d
    dec h
    ld d, b
    rla
    rst $08
    ld b, d
    dec h
    ld d, b
    rla
    call c, $2542
    ld d, b
    rla
    db $10
    ld b, e
    dec h
    ld d, b
    rla
    scf
    ld b, e
    dec h
    ld d, b
    rla
    ld b, l
    ld b, e
    dec h
    ld d, b
    rla
    ld l, c
    ld b, e
    dec h
    ld d, b
    rla
    add l
    ld b, e
    dec h
    ld d, b
    rla
    sbc [hl]
    ld b, e
    dec h
    ld d, b
    rla
    pop bc
    ld b, e
    dec h
    ld d, b
    rla
    db $dd
    ld b, e
    dec h
    ld d, b
    rla
    ld a, [c]
    ld b, e
    dec h
    ld d, b
    rla
    ld a, [hl+]
    ld b, h
    dec h
    ld d, b
    rla
    ld d, l
    ld b, h
    dec h
    ld d, b
    rla
    ld l, c
    ld b, h
    dec h
    ld d, b
    rla
    sbc c
    ld b, h
    dec h
    ld d, b
    rla
    add $44
    dec h
    ld d, b
    rla
    ret c

    ld b, h
    dec h
    ld d, b
    rla
    db $fd
    ld b, h
    dec h
    ld d, b
    rla
    ld a, [hl+]
    ld b, l
    dec h
    ld d, b
    rla
    scf
    ld b, l
    dec h
    ld d, b
    rla
    ld h, e
    ld b, l
    dec h
    ld d, b
    rla
    sub b
    ld b, l
    dec h
    ld d, b
    rla
    and d
    ld b, l
    dec h
    ld d, b
    rla
    db $d3
    ld b, l
    dec h
    ld d, b
    ld de, $0f09
    xor a
    ld e, c
    dec de
    ld e, b
    sbc l
    ld d, a
    nop
    dec d
    ld e, c
    ld hl, $d126
    bit 6, [hl]
    res 6, [hl]
    call nz, Call_014_57c4
    ld hl, $d126
    bit 5, [hl]
    res 5, [hl]
    call nz, Call_014_57c9
    call $3c3c
    ld hl, $5835
    ld de, $57eb
    ld a, [$d63f]
    call $3160
    ld [$d63f], a
    ret


Call_014_57c4:
    ld hl, $d869
    res 7, [hl]

Call_014_57c9:
    ld a, [$d7ee]
    bit 0, a
    jr z, jr_014_57da

    push af
    ld a, $15
    ld bc, $0403
    call Call_014_57e2
    pop af

jr_014_57da:
    bit 7, a
    ret z

    ld a, $1d
    ld bc, $070b

Call_014_57e2:
    ld [$d09f], a
    ld a, $17
    call $3e6d
    ret


    pop af
    ld d, a
    ld c, h
    ld [hl-], a
    ld [hl], l
    ld [hl-], a
    ld hl, $5816
    call $34e4
    jp nc, $3219

    ld hl, $d7ee
    ld a, [$cd3d]
    cp $02
    jr z, jr_014_580b

    bit 0, [hl]
    set 0, [hl]
    ret nz

    jr jr_014_5810

jr_014_580b:
    bit 7, [hl]
    set 7, [hl]
    ret nz

jr_014_5810:
    ld hl, $d126
    set 5, [hl]
    ret


    db $10
    ld bc, $0910
    rst $38
    ld a, [hl]
    ld e, b
    adc b
    ld e, b
    sub d
    ld e, b
    sbc h
    ld e, b
    and [hl]
    ld e, b
    or b
    ld e, b
    db $f4
    inc h
    db $f4
    inc h
    db $f4
    inc h
    db $f4
    inc h
    push hl
    inc h
    push hl

jr_014_5832:
    inc h
    push hl
    inc h
    ld bc, $ee40
    rst $10
    jp z, $d458

    ld e, b
    rst $08

jr_014_583e:
    ld e, b
    rst $08
    ld e, b
    ld [bc], a
    jr nc, jr_014_5832

    rst $10
    reti


    ld e, b
    db $e3
    ld e, b
    sbc $58
    sbc $58
    inc bc
    jr nc, jr_014_583e

    rst $10
    add sp, $58
    ld a, [c]
    ld e, b
    db $ed

jr_014_5856:
    ld e, b
    db $ed
    ld e, b
    inc b
    db $10
    xor $d7
    rst $30
    ld e, b
    ld bc, $fc59
    ld e, b
    db $fc
    ld e, b
    dec b
    jr nc, jr_014_5856

    rst $10
    ld b, $59
    db $10
    ld e, c
    dec bc
    ld e, c
    dec bc
    ld e, c
    ld b, $00
    xor $d7
    cp d
    ld e, b
    cp d
    ld e, b
    cp d
    ld e, b
    cp d
    ld e, b
    rst $38
    ld [$3521], sp
    ld e, b
    call $31cc
    jp $24d7


    ld [$4121], sp
    ld e, b
    call $31cc
    jp $24d7


    ld [$4d21], sp
    ld e, b
    call $31cc
    jp $24d7


    ld [$5921], sp
    ld e, b
    call $31cc
    jp $24d7


    ld [$6521], sp
    ld e, b
    call $31cc
    jp $24d7


    ld [$7121], sp
    ld e, b
    call $31cc
    jp $24d7


    rla
    ld l, [hl]
    ld d, b
    inc hl
    ld [$493e], sp
    call $13d0
    call $3748
    jp $24d7


    rla
    ld [hl], a
    ld d, b
    inc hl
    ld d, b
    rla
    and l
    ld d, b
    inc hl
    ld d, b
    rla
    xor l
    ld d, b
    inc hl
    ld d, b
    rla
    pop hl
    ld d, b
    inc hl
    ld d, b
    rla
    rrca
    ld d, c
    inc hl
    ld d, b
    rla
    inc e
    ld d, c
    inc hl
    ld d, b
    rla
    scf
    ld d, c
    inc hl
    ld d, b
    rla
    ld c, a
    ld d, c
    inc hl
    ld d, b
    rla
    ld e, a
    ld d, c
    inc hl
    ld d, b
    rla
    adc h
    ld d, c
    inc hl
    ld d, b
    rla
    jp z, $2351

    ld d, b
    rla
    db $dd
    ld d, c
    inc hl
    ld d, b
    rla
    inc d
    ld d, d
    inc hl
    ld d, b
    rla
    jr nc, jr_014_5960

    inc hl
    ld d, b
    rla
    inc a
    ld d, d
    inc hl
    ld d, b
    ld a, l
    rlca
    ld [$0200], sp
    ld l, h
    rlca
    dec e
    inc bc
    rst $38
    ld [$031d], sp
    rst $38
    rlca
    rla
    nop
    add $0e
    add hl, de
    ld [bc], a
    add $07
    dec de
    ld bc, $01c6
    ld bc, $c603
    nop
    dec c
    ld c, $0d
    db $10
    rst $38
    jp nc, $e041

    add hl, bc
    inc c
    ld de, $ff19
    jp nc, $dd42

    ld [bc], a
    rlca
    dec bc
    inc b
    rst $38
    ret nc

    ld b, e
    sbc $05
    inc c
    ld b, $08
    rst $38
    ret nc

    ld b, h
    rst $08
    ld b, $0c
    rlca
    ld e, $ff
    jp nc, $dd45

    dec b
    add hl, bc
    dec bc
    dec e

jr_014_5960:
    rst $38
    pop de
    ld b, [hl]
    ld c, h
    ld [hl-], a
    dec a
    add hl, bc
    rra
    rst $38
    rst $38
    add a
    reti


    dec a
    add hl, bc
    rrca
    rst $38
    rst $38
    adc b
    ld sp, $0f3d
    dec c
    rst $38
    rst $38
    adc c
    call $093d
    rla
    rst $38
    rst $38
    adc d
    ld sp, $123f
    ld [$10ff], sp
    dec bc
    ccf
    add hl, bc
    add hl, bc
    rst $38
    db $10
    inc c
    ccf
    inc d
    dec de
    rst $38
    db $10
    dec c
    ld d, d
    rst $00
    ld [$4b00], sp
    rst $00
    rlca
    dec e
    ld h, b
    rst $00
    ld [$481d], sp
    rst $00
    rlca
    rla
    sbc l
    rst $00
    ld c, $19
    ld c, d
    rst $00
    rlca
    dec de
    cp $c6
    ld bc, $0801
    ld h, b
    ld [bc], a
    ld h, b
    ld h, b
    ld h, b
    ld h, b
    ld b, $60
    ld h, b
    ld h, b
    ld h, b
    ld h, b
    ld [bc], a
    ld [bc], a
    ld b, $60
    rrca
    ld h, b
    ld h, b
    ld h, b
    rlca
    ld b, $02
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld bc, $0209
    ld [$0e01], sp
    ld [$6006], sp
    ld h, b
    ld b, $01
    dec b
    ld b, $05
    ld bc, $0760
    ld bc, $6060
    ld h, b
    ld b, $60
    ld h, b
    ld b, $60
    ld [bc], a
    ld [bc], a
    ld a, $08
    ld h, d
    ld h, e
    inc hl
    ld h, b
    inc d
    scf
    dec d
    dec d
    ld d, $08
    ld h, b
    ld h, b
    ld h, b
    dec b
    ld b, $60
    ld h, a
    ld b, $60
    ld d, h
    ld sp, $1857
    ld a, [de]
    ld [$6060], sp
    ld h, b
    ld h, b
    dec b
    dec b
    dec b
    ld c, l
    ld h, b
    inc b
    ld h, b
    ld b, $18
    ld a, [de]
    ld [bc], a
    inc d
    dec d
    dec d
    ld h, $15
    ld d, $60
    inc de
    ld [de], a
    dec bc
    ld h, b
    ld b, $1c
    dec e
    dec e
    dec e
    ld l, $2d
    dec h
    ld h, c
    ld e, $60
    ld h, l
    dec c
    dec bc
    ld a, l
    ld h, l
    ld h, b
    ld h, b
    ld h, b
    ld h, b
    ld h, b
    ld h, b
    ld h, b
    ld h, b
    ld h, b
    ld h, b
    ld de, $0e0e
    sub c
    ld e, d
    ld b, [hl]
    ld e, d
    ld b, d
    ld e, d
    nop
    ld c, l
    ld e, d
    call $3c3c
    ret


    ld c, b
    ld e, d
    rla
    ld e, h
    ld c, c
    jr nz, jr_014_5a9d

    ld l, $08
    dec b
    dec b
    ld [bc], a
    dec sp
    dec bc
    ld de, $3d00
    add hl, bc
    add hl, de
    inc bc
    dec sp
    rrca
    add hl, de
    inc b
    dec sp
    ld de, $0115
    dec a
    dec de
    dec c
    ld [bc], a
    dec a
    inc bc
    rla
    inc bc
    dec a
    inc bc
    dec de
    ld [bc], a
    rst $38
    nop
    nop
    daa
    rst $00
    dec b
    dec b
    ld l, c
    rst $00
    dec bc
    ld de, $c759
    add hl, bc
    add hl, de
    sub l
    rst $00
    rrca
    add hl, de
    and a
    rst $00
    ld de, $0715
    ret z

    dec de
    dec c
    inc e
    rst $00
    inc bc
    rla
    ld e, $c7
    inc bc
    dec de
    ld l, $2e
    ld l, $2e
    ld l, $2e
    ld l, $2e
    ld l, $2e
    dec l
    dec e

jr_014_5a9d:
    dec e
    add hl, hl
    add hl, hl
    dec e
    dec e
    add hl, hl
    dec e
    dec e
    dec e
    dec e
    dec l
    ld l, $18
    inc a
    ld [bc], a
    dec a
    add hl, hl
    ld l, $3d
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    ld l, $1c
    dec e
    dec h
    dec e
    add hl, hl
    ld l, $2e
    ld l, $2e
    ld l, $2e
    ld l, $2e
    jr jr_014_5adf

    inc l
    dec e
    dec hl
    dec l
    dec e
    dec e
    dec e
    dec e
    dec l
    ld l, $2c
    dec l
    jr jr_014_5ad6

    ld a, [de]
    ld h, d

jr_014_5ad6:
    ld h, [hl]
    dec l
    dec e
    dec e
    dec e
    ld l, $1d
    ld l, $1a

jr_014_5adf:
    inc a
    jr jr_014_5ae4

    ld a, [de]
    inc de

jr_014_5ae4:
    inc de
    dec l
    dec e
    dec e
    dec e
    dec e
    dec l
    ld l, $1a
    ld [bc], a
    inc e
    dec l
    ld e, $2e
    ld l, $2d
    dec e
    dec e
    dec l
    ld l, $2d
    ld l, $1d
    dec e
    dec e
    dec e
    ld e, $3d
    add hl, de
    dec l
    ld l, $19
    add hl, de
    ld l, $19
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    inc a
    ld l, $2e
    dec l
    dec e
    ld l, $2e
    ld l, $2e
    ld l, $2e
    ld l, $2e
    ld l, $2e
    ld l, $2e
    dec l
    dec e
    dec e
    dec e
    dec e
    dec l
    dec e
    dec e
    dec h
    dec e
    dec e
    dec e
    dec e
    dec e
    dec l
    add hl, hl
    dec e
    dec e
    dec e
    dec l
    dec h
    dec e
    dec e
    dec e
    dec e
    dec e
    dec e
    dec e
    dec l
    add hl, hl
    dec e
    dec e
    dec h
    dec e
    dec e
    dec e
    dec l
    dec h
    dec e
    dec e
    dec e
    dec l
    dec e
    inc sp
    inc sp
    inc sp
    inc sp
    inc sp
    add hl, de
    inc a
    ld [hl], $19
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    ld d, $09
    dec c
    ld d, a
    ld e, a
    ccf
    ld e, l
    ld h, c
    ld e, e
    nop
    rst $10
    ld e, [hl]
    call Call_014_5b77
    call $3c3c
    ld hl, $5d5d
    ld de, $5c17
    ld a, [$d648]
    call $3160
    ld [$d648], a
    ret


Call_014_5b77:
    ld hl, $d126
    bit 5, [hl]
    res 5, [hl]
    ret z

    ld hl, $5bc1
    call Call_014_5bc8
    call Call_014_5bf4
    ld a, [$d830]
    bit 4, a
    jr nz, jr_014_5b9e

    push af
    ld a, $54
    ld [$d09f], a
    ld bc, $0305
    ld a, $17
    call $3e6d
    pop af

jr_014_5b9e:
    bit 5, a
    jr nz, jr_014_5bb1

    push af
    ld a, $54
    ld [$d09f], a
    ld bc, $020a
    ld a, $17
    call $3e6d
    pop af

jr_014_5bb1:
    bit 6, a
    ret nz

    ld a, $54
    ld [$d09f], a
    ld bc, $060a
    ld a, $17
    jp $3e6d


    inc bc
    dec b
    ld [bc], a
    ld a, [bc]
    ld b, $0a
    rst $38

Call_014_5bc8:
    push hl
    ld hl, $d73f
    ld a, [hl+]
    ld b, a
    ld a, [hl]
    ld c, a
    xor a
    ldh [$e0], a
    pop hl

jr_014_5bd4:
    ld a, [hl+]
    cp $ff
    jr z, jr_014_5bf0

    push hl
    ld hl, $ffe0
    inc [hl]
    pop hl
    cp b
    jr z, jr_014_5be5

    inc hl
    jr jr_014_5bd4

jr_014_5be5:
    ld a, [hl+]
    cp c
    jr nz, jr_014_5bd4

    ld hl, $d73f
    xor a
    ld [hl+], a
    ld [hl], a
    ret


jr_014_5bf0:
    xor a
    ldh [$e0], a
    ret


Call_014_5bf4:
    ld hl, $d830
    ldh a, [$e0]
    and a
    ret z

    cp $01
    jr nz, jr_014_5c02

    set 4, [hl]
    ret


jr_014_5c02:
    cp $02
    jr nz, jr_014_5c09

    set 5, [hl]
    ret


jr_014_5c09:
    set 6, [hl]
    ret


Jump_014_5c0c:
    xor a
    ld [$cd6b], a

Jump_014_5c10:
    ld [$d648], a
    ld [$da39], a
    ret


    inc hl
    ld e, h
    ld c, h
    ld [hl-], a
    ld [hl], l
    ld [hl-], a
    add d
    ld e, h
    ret z

    ld e, h
    dec h
    ld e, l
    ld a, [$d82f]
    bit 0, a
    jp nz, $3219

    ld hl, $5c78
    call $34bf
    jp nc, $3219

    xor a
    ldh [$b4], a
    ld a, $f0
    ld [$cd6b], a
    ld a, $04
    ld [$d528], a
    ld a, $ff
    ld [$c0ee], a
    call $23b1
    ld c, $02
    ld a, $de
    call $23a1
    ld a, $09
    ldh [$8c], a
    call $2920
    ld a, $09
    ldh [$8c], a
    call $3541
    ld de, $5c7d
    ld a, [$cd3d]
    ld [$cf0d], a
    cp $01
    jr z, jr_014_5c6c

    inc de

jr_014_5c6c:
    ld a, $09
    ldh [$8c], a
    call $363a
    ld a, $03
    jp Jump_014_5c10


    ld [bc], a
    inc bc
    inc bc
    inc bc
    rst $38
    ld b, b
    ld b, b
    ld b, b
    ld b, b
    rst $38
    ld a, [$d730]
    bit 0, a
    ret nz

    xor a
    ld [$cd6b], a
    ld a, $0d
    ldh [$8c], a
    call $2920
    call $3dd7
    ld hl, $d72d
    set 6, [hl]
    set 7, [hl]
    ld hl, $5ec8
    ld de, $5ecd
    call $3354
    ld a, $f2
    ld [$d059], a
    ld a, [$d715]
    cp $b1
    jr nz, jr_014_5cb6

    ld a, $07
    jr jr_014_5cc0

jr_014_5cb6:
    cp $99
    jr nz, jr_014_5cbe

    ld a, $08
    jr jr_014_5cc0

jr_014_5cbe:
    ld a, $09

jr_014_5cc0:
    ld [$d05d], a
    ld a, $04
    jp Jump_014_5c10


    ld a, [$d057]
    cp $ff
    jp z, Jump_014_5c0c

    ld a, $f0
    ld [$cd6b], a
    ld hl, $d82f
    set 0, [hl]
    ld a, $04
    ld [$d528], a
    ld a, $09
    ldh [$8c], a
    ld a, $04
    ldh [$8d], a
    call $34a6
    ld a, $0f
    ldh [$8c], a
    call $2920
    ld a, $ff
    ld [$c0ee], a
    call $23b1
    ld b, $02
    ld hl, $5b47
    call $35d6
    ld de, $5d1d
    ld a, [$cf0d]
    cp $01
    jr nz, jr_014_5d0e

    ld de, $5d1a

jr_014_5d0e:
    ld a, $09
    ldh [$8c], a
    call $363a
    ld a, $05
    jp Jump_014_5c10


    ret nz

    ret nz

    rst $38
    add b
    ld b, b
    ld b, b
    ret nz

    ret nz

    ret nz

    nop
    rst $38
    ld a, [$d730]
    bit 0, a
    ret nz

    ld a, $a7
    ld [$cc4d], a
    ld a, $11
    call $3e6d
    call $2307
    xor a
    ld [$cd6b], a
    jp Jump_014_5c10


    adc [hl]
    ld e, l
    rst $20
    ld e, l
    ld a, [bc]
    ld e, [hl]
    dec l
    ld e, [hl]
    ld d, b
    ld e, [hl]
    ld l, c
    ld e, [hl]
    add d
    ld e, [hl]
    sbc e
    ld e, [hl]
    or h
    ld e, [hl]
    db $f4
    inc h
    db $f4
    inc h
    db $f4
    inc h
    jp $c85e


    ld e, [hl]
    jp nc, $055e

    jr nz, @+$31

    ret c

    ld e, d
    ld e, [hl]
    ld h, h
    ld e, [hl]
    ld e, a
    ld e, [hl]
    ld e, a
    ld e, [hl]
    ld b, $30
    cpl
    ret c

    ld [hl], e
    ld e, [hl]
    ld a, l
    ld e, [hl]
    ld a, b
    ld e, [hl]
    ld a, b
    ld e, [hl]
    rlca
    jr nc, @+$31

    ret c

    adc h
    ld e, [hl]
    sub [hl]
    ld e, [hl]
    sub c
    ld e, [hl]
    sub c
    ld e, [hl]
    ld [$2f40], sp
    ret c

    and l
    ld e, [hl]
    xor a
    ld e, [hl]
    xor d
    ld e, [hl]
    xor d
    ld e, [hl]
    rst $38
    ld [$2efa], sp
    rst $10
    bit 0, a
    jr z, jr_014_5da5

    ld a, [$d838]
    bit 7, a
    jr nz, jr_014_5dca

    ld hl, $5ddd
    call $3c49
    jr jr_014_5dd0

jr_014_5da5:
    ld hl, $5dd3
    call $3c49
    ld bc, $130f
    call $3e48
    jr nc, jr_014_5dd0

    ld a, [$ccd3]
    and a
    call z, $3865
    call $3c3c
    ld hl, $5dd8
    call $3c49
    ld hl, $d72e
    set 0, [hl]
    jr jr_014_5dd0

jr_014_5dca:
    ld hl, $5de2
    call $3c49

jr_014_5dd0:
    jp $24d7


    rla
    jr nc, jr_014_5e1a

    ld hl, $1750
    sbc [hl]
    ld b, h
    ld hl, $1750
    ld e, d
    ld b, l
    ld hl, $1750
    sbc c
    ld b, l
    ld hl, $0850
    ld a, [$d838]
    bit 7, a
    jr nz, jr_014_5df7

    ld hl, $5e00
    call $3c49
    jr jr_014_5dfd

jr_014_5df7:
    ld hl, $5e05
    call $3c49

jr_014_5dfd:
    jp $24d7


    rla
    or h
    ld b, l
    ld hl, $1750
    or $45
    ld hl, $0850
    ld a, [$d838]
    bit 7, a
    jr nz, jr_014_5e1a

    ld hl, $5e23
    call $3c49
    jr jr_014_5e20

jr_014_5e1a:
    ld hl, $5e28
    call $3c49

jr_014_5e20:
    jp $24d7


    rla
    inc sp
    ld b, [hl]
    ld hl, $1750
    ld [hl], b
    ld b, [hl]
    ld hl, $0850
    ld a, [$d838]
    bit 7, a
    jr nz, jr_014_5e3d

    ld hl, $5e46
    call $3c49
    jr jr_014_5e43

jr_014_5e3d:
    ld hl, $5e4b
    call $3c49

jr_014_5e43:
    jp $24d7


    rla
    and d
    ld b, [hl]
    ld hl, $1750
    ld [c], a
    ld b, [hl]
    ld hl, $0850
    ld hl, $5d5d
    call $31cc
    jp $24d7


    rla
    rst $38
    ld b, [hl]
    ld hl, $1750
    dec e
    ld b, a
    ld hl, $1750
    ld a, [hl+]
    ld b, a
    ld hl, $0850
    ld hl, $5d69
    call $31cc
    jp $24d7


    rla
    ld e, e
    ld b, a
    ld hl, $1750
    add [hl]
    ld b, a
    ld hl, $1750
    sub b
    ld b, a
    ld hl, $0850
    ld hl, $5d75
    call $31cc
    jp $24d7


    rla
    cp [hl]
    ld b, a
    ld hl, $1750
    ld [c], a
    ld b, a
    ld hl, $1750
    ei
    ld b, a
    ld hl, $0850
    ld hl, $5d81
    call $31cc
    jp $24d7


    rla
    dec l
    ld c, b
    ld hl, $1750
    ld d, d
    ld c, b
    ld hl, $1750
    ld h, c
    ld c, b
    ld hl, $0850
    ld hl, $5ebe
    call $3c49
    jp $24d7


    rla
    adc l
    ld c, b
    ld hl, $1750
    and d
    ld c, b
    ld hl, $1750
    ld c, d
    ld c, c
    ld hl, $1750
    ld [hl], l
    ld c, c
    ld hl, $1750
    cp l
    ld c, c
    ld hl, $2e50
    ld b, $00
    db $10
    ld bc, $00d5
    ld d, $00
    db $d3
    nop
    ld [de], a
    nop
    db $ec
    rlca
    dec b
    inc bc
    db $eb
    inc bc
    dec b
    ld [$0fd0], sp
    dec d
    inc bc
    jp nc, $0b00

    inc l
    add hl, bc
    dec b
    rst $38
    rst $38
    ld bc, $112c
    ld de, $d1ff
    ld [bc], a
    inc l
    ld c, $0b
    rst $38
    rst $38
    inc bc
    dec de
    inc c
    ld c, $ff
    rst $38
    inc b
    jr @+$07

    ld d, $ff
    ret nc

    ld b, l
    and $20
    jr nz, jr_014_5f27

    add hl, de
    rst $38
    ret nc

    ld b, [hl]
    db $e4
    ld [$0518], sp
    dec de
    rst $38
    jp nc, $e647

    ld hl, $0518
    add hl, de
    rst $38

jr_014_5f27:
    db $d3
    ld c, b
    and $22
    ld [bc], a
    dec bc
    rlca
    rst $38
    pop de
    add hl, bc
    dec a
    dec c
    dec b
    rst $38
    rst $38
    adc d
    jr z, @+$3f

    ld [de], a
    dec bc
    rst $38
    rst $38
    adc e
    jr z, jr_014_5f44

    rst $00
    nop
    db $10
    rlca

jr_014_5f44:
    rst $00
    nop
    ld d, $05
    rst $00
    nop
    ld [de], a
    scf
    rst $00
    rlca
    dec b
    ld de, $03c7
    dec b
    adc e
    rst $00
    rrca
    dec d
    ld b, b
    ld b, c
    ld h, c
    ld h, b
    ld b, c
    ld b, c
    db $10
    ld b, d
    ld a, l
    dec a
    dec a
    inc h
    ld a, $44
    ld c, $2f
    ld h, h
    ld [hl+], a
    ld [hl+], a
    inc hl
    ld [hl], c
    ld c, $0e
    ld c, $0e
    ld b, [hl]
    ld b, h
    ld c, $47
    ld b, h
    ld c, $0e
    ld c, $5a
    ld b, c
    ld b, d
    ld c, $40
    ld b, d
    ld b, h
    ld c, $2f
    ld b, b
    ld h, e
    ld c, $67
    ld b, d
    ld e, d
    dec hl
    ld b, c
    ld a, [hl+]
    ld b, [hl]
    ld b, b
    ld h, c
    ld h, c
    ld b, h
    inc [hl]
    ld c, $34
    ld b, [hl]
    ld b, [hl]
    dec c
    ld b, e
    ld b, e
    ld b, [hl]
    ld b, h
    ld c, $0e
    ld b, h
    ld [hl], $0e
    ld [hl], $46
    ld b, [hl]
    ld c, $0e
    ld c, $0c
    ld b, h
    ld b, e
    ld b, e
    ld b, h
    scf
    ld c, $37
    ld b, [hl]
    ld b, [hl]
    ld h, e
    ld c, $67
    ld b, d
    ld b, h
    ld c, $0e
    ld c, b
    ld c, c
    ld c, c
    ld c, c
    ld c, d
    ld b, [hl]
    ld c, $2f
    ld c, $46
    ld c, b
    ld c, c
    ld c, c
    ld c, c
    ld c, c
    ld c, c
    ld c, c
    ld c, c
    ld c, d
    ld d, a
    ld c, c
    ld c, c
    ld c, d
    ld d, $0e
    rrca
    db $10
    ld h, c
    ld c, l
    ld h, b
    ret c

    ld e, a
    nop
    pop de
    ld h, b
    call Call_014_5fee
    call $3c3c
    ld hl, $6057
    ld de, $6047
    ld a, [$d63c]
    call $3160
    ld [$d63c], a
    ret


Call_014_5fee:
    ld hl, $d126
    bit 5, [hl]
    res 5, [hl]
    ret z

    ld a, [$d796]
    bit 0, a
    jr nz, jr_014_6016

    ld a, $0e
    ld bc, $0204
    call Call_014_602f
    ld a, $54
    ld bc, $0409
    call Call_014_602f
    ld a, $5f
    ld bc, $0b03
    call Call_014_602f
    ret


jr_014_6016:
    ld a, $5f
    ld bc, $0204
    call Call_014_602f
    ld a, $0e
    ld bc, $0409
    call Call_014_602f
    ld a, $0e
    ld bc, $0b03
    call Call_014_602f
    ret


Call_014_602f:
    ld [$d09f], a
    ld a, $17
    jp $3e6d


    ld a, [$c109]
    cp $04
    ret nz

    xor a
    ldh [$b4], a
    ld a, $05
    ldh [$8c], a
    jp $2920


    add hl, de
    ld [hl-], a
    ld c, h
    ld [hl-], a
    ld [hl], l
    ld [hl-], a
    ld h, h
    ld h, b
    db $f4
    inc h
    ld a, l
    ld h, b
    add d
    ld h, b
    add a
    ld h, b
    ld bc, $4700
    ret c

    ld l, [hl]
    ld h, b
    ld a, b
    ld h, b
    ld [hl], e
    ld h, b
    ld [hl], e
    ld h, b
    rst $38
    ld [$5721], sp
    ld h, b
    call $31cc
    jp $24d7


    rla
    or a
    ld d, d
    ld hl, $1750
    ld [$2152], a
    ld d, b
    rla
    ld [bc], a
    ld d, e
    ld hl, $1750
    ld [hl], $53
    ld hl, $1750
    adc c
    ld d, e
    ld hl, $0850
    ld hl, $60c2
    call $3c49
    call $35ec
    ld a, [$cc26]
    and a
    jr nz, jr_014_60b9

    ld a, $01
    ld [$cc3c], a
    ld hl, $d126
    set 5, [hl]
    ld hl, $60c7
    call $3c49
    ld a, $ad
    call $23b1
    ld hl, $d796
    bit 0, [hl]
    set 0, [hl]
    jr z, jr_014_60bf

    res 0, [hl]
    jr jr_014_60bf

jr_014_60b9:
    ld hl, $60cc
    call $3c49

jr_014_60bf:
    jp $24d7


    rla
    rst $00
    ld d, e
    ld hl, $1750
    db $e3
    ld d, e
    ld hl, $1750
    pop af
    ld d, e
    ld hl, $0150
    inc b
    ld a, [bc]
    dec b
    inc b
    and l
    ld a, [bc]
    rlca
    nop
    rst $10
    ld c, $19
    ld [bc], a
    rst $10
    ld bc, $0106
    rst $10
    nop
    inc b
    inc c
    rlca
    db $10
    cp $02
    ld b, c
    db $d3
    rlca
    dec a
    ld a, [de]
    dec b
    rst $38
    rst $38
    add d
    jr z, jr_014_6136

    ld b, $16
    rst $38
    rst $38
    inc bc
    ld b, c
    ld a, [de]
    rlca
    rst $38
    rst $38
    inc b
    ld l, c
    rst $00
    ld a, [bc]
    dec b
    ld l, d
    rst $00
    ld a, [bc]
    rlca
    sbc l
    rst $00
    ld c, $19
    ld bc, $01c7
    ld b, $68
    ld h, l
    ld h, l
    ld l, d
    ld b, d
    ld b, c
    ld b, c
    ld b, d
    ld b, c
    ld b, c
    ld b, c
    ld b, b
    ld h, c
    ld h, l
    ld l, c
    ld e, h
    ld b, $0e
    ld c, $56
    ld c, $0e
    ld b, [hl]
    ld c, $47
    ld c, $70
    ld c, $07
    ld e, l
    ld e, h
    ld c, $0e
    ld c, $0e
    ld c, $0e
    ld d, [hl]

jr_014_6136:
    ld e, b
    ld c, $57
    ld b, $38
    ld c, $46
    ld b, h
    ld c, $43
    ld b, e
    ld e, d
    ld c, $0e
    ld b, e
    ld c, $0e
    ld c, $31
    ld b, $06
    ld b, [hl]
    ld d, b
    ld c, c
    ld c, c
    ld c, c
    ld c, d
    ld c, $09
    ld h, b
    ld h, e
    ld c, $67
    ld b, $47
    ld b, a
    ld b, [hl]
    ld b, h
    ld [hl], a
    ld l, a
    ld l, [hl]
    ld b, $0e
    add hl, bc
    ld h, h
    ld c, $0e
    ld c, $38
    ld c, $0e
    ld b, [hl]
    ld b, h
    add hl, bc
    ld c, $06
    jr c, jr_014_61c3

    ld c, c
    ld b, $06
    ld e, b
    ld c, $38
    ld c, $57
    ld d, c
    ld b, h
    add hl, bc
    ld b, $06
    jr c, @+$48

    ld c, $0e
    ld c, $0e
    ld c, $06
    ld l, [hl]
    ld c, $46
    ld b, h
    ld c, $07
    rlca
    rlca
    ld b, [hl]
    ld c, $06
    rra
    rra
    rra
    rra
    rra
    rra
    ld c, a
    ld h, b
    ld h, c
    ld h, c
    ld b, d
    dec bc
    ld b, [hl]
    ld c, $6c
    ld bc, $0101
    ld bc, $0101
    ld bc, $0e64
    ld c, $56
    dec bc
    ld d, [hl]
    ld c, $6c
    ld bc, $0101
    ld bc, $0101
    ld bc, $4744
    ld b, a
    ld c, $0e
    ld d, e
    ld c, $6c
    ld bc, $0101
    ld bc, $0101

jr_014_61c3:
    ld bc, $0e44
    ld c, $5a
    ld c, $46
    ld c, $6c
    ld bc, $0101
    ld bc, $0101
    ld bc, $4948
    ld c, c
    ld c, d
    ld c, c
    ld c, d
    rra
    ld l, l
    ld bc, $0101
    ld bc, $0101
    ld bc, $0916
    rrca
    ld h, $63
    adc d
    ld h, d
    xor $61
    nop
    and $62
    call Call_014_6204
    call $3c3c
    ld hl, $6296
    ld de, $6235
    ld a, [$d63d]
    call $3160
    ld [$d63d], a
    ret


Call_014_6204:
    ld hl, $d126
    bit 5, [hl]
    res 5, [hl]
    ret z

    ld a, [$d796]
    bit 0, a
    jr nz, jr_014_6224

    ld a, $0e
    ld bc, $0207
    call Call_014_602f
    ld a, $5f
    ld bc, $0507
    call Call_014_602f
    ret


jr_014_6224:
    ld a, $5f
    ld bc, $0207
    call Call_014_602f
    ld a, $0e
    ld bc, $0507
    call Call_014_602f
    ret


    dec sp
    ld h, d
    ld c, h
    ld [hl-], a
    ld [hl], l
    ld [hl-], a
    ld hl, $6254
    call Call_014_625b
    ld a, [$d71e]
    and a
    jp z, $3219

    cp $03
    ld a, $a5
    jr nz, jr_014_6250

    ld a, $d6

jr_014_6250:
    ld [$d71d], a
    ret


    ld c, $10
    ld c, $11
    ld c, $13
    rst $38

Call_014_625b:
    xor a
    ld [$d71e], a
    ld a, [$d72d]
    bit 4, a
    ret nz

    call $34bf
    ret nc

    ld a, [$cd3d]
    ld [$d71e], a
    ld hl, $d72d
    set 4, [hl]
    ld hl, $d732
    set 4, [hl]
    ret


    ld a, [$c109]
    cp $04
    ret nz

    xor a
    ldh [$b4], a
    ld a, $06
    ldh [$8c], a
    jp $2920


    xor a
    ld h, d
    cp c
    ld h, d
    db $f4
    inc h
    db $f4
    inc h
    pop hl
    ld h, d
    add a
    ld h, b
    ld bc, $4900
    ret c

    jp $cd62


    ld h, d
    ret z

    ld h, d
    ret z

    ld h, d
    ld [bc], a
    jr nz, @+$4b

    ret c

    jp nc, $dc62

    ld h, d
    rst $10
    ld h, d
    rst $10
    ld h, d
    rst $38
    ld [$9621], sp
    ld h, d
    call $31cc
    jp $24d7


    ld [$a221], sp
    ld h, d
    call $31cc
    jp $24d7


    rla
    ld bc, $2154
    ld d, b
    rla
    inc e
    ld d, h
    ld hl, $1750
    inc hl
    ld d, h
    ld hl, $1750
    ld b, h
    ld d, h
    ld hl, $1750
    ld h, b
    ld d, h
    ld hl, $1750
    ld [hl], l
    ld d, h
    ld hl, $1750
    and e
    ld d, h
    ld hl, $0150
    inc bc
    ld a, [bc]
    rlca
    ld bc, $01d6
    ld b, $03
    sub $0e
    add hl, de
    ld [bc], a
    sub $00
    dec b
    inc c
    rrca
    add hl, bc
    cp $02
    ld b, c
    db $d3
    ld [$1320], sp
    ld e, $ff
    jp nc, $e442

    inc c
    dec a
    db $10
    db $10
    rst $38
    rst $38
    add e
    jr z, @+$3f

    ld [$ff16], sp
    rst $38
    add h
    jr z, jr_014_6356

    db $10
    ld a, [bc]
    rst $38
    rst $38
    dec b
    ld l, d
    rst $00
    ld a, [bc]
    rlca
    ld bc, $01c7
    ld b, $9d
    rst $00
    ld c, $19
    ld b, b
    ld b, c
    ld b, c
    ld [hl], e
    ld b, c
    ld h, l
    ld h, l
    ld b, d
    ld h, c
    ld h, c
    ld h, c
    ld b, b
    ld b, $06
    ld b, $44
    ld c, $0e
    ld c, $0e
    ld c, $06
    ld d, [hl]
    dec bc
    dec c
    ld c, $55
    ld c, $06
    ld b, $5c
    jr c, @+$10

    ld b, a
    ld b, a
    ld [hl], a
    ld c, $0e
    ld c, $47
    ld c, $0e
    ld c, $31
    ld b, $5c
    ld b, $06

jr_014_6356:
    ld c, $0e
    ld c, $0e
    ld e, d
    dec bc
    ld c, $31
    jr c, jr_014_636e

    ld c, $46
    ld e, h
    ld b, $38
    ld c, $67
    ld l, c
    jr z, jr_014_63b4

    ld e, b
    ld sp, $3357

jr_014_636e:
    ld c, c
    ld e, b
    ld b, [hl]
    ld b, h
    ld b, $0e
    ld l, a
    ld c, $5d
    dec c
    ld c, $07
    ld c, $0e
    ld e, c
    ld c, $0e
    ld b, [hl]
    ld b, h
    rlca
    ld c, $47
    ld sp, $495d
    ld b, $0e
    ld [hl], h
    ld d, a
    ld b, h
    ld d, a
    ld c, c
    ld d, c
    ld e, h
    ld b, $0e
    ld c, $06
    ld e, l
    ld bc, $0101
    ld bc, $4401
    ld l, a
    ld c, $46
    ld c, b
    ld c, c
    ld c, c
    ld b, $06
    ld b, $01
    ld bc, $0101
    ld bc, $4948
    ld c, c
    ld c, d
    ld d, $0e
    rrca
    db $dd
    ld h, h
    ld [hl], $64

jr_014_63b4:
    cp c
    ld h, e
    nop
    sbc b
    ld h, h
    call Call_014_63cf
    call $3c3c
    ld hl, $6448
    ld de, $6430
    ld a, [$d63e]
    call $3160
    ld [$d63e], a
    ret


Call_014_63cf:
    ld hl, $d126
    bit 5, [hl]
    res 5, [hl]
    ret z

    ld a, [$d796]
    bit 0, a
    jr nz, jr_014_63ff

    ld a, $0e
    ld bc, $080d
    call Call_014_602f
    ld a, $0e
    ld bc, $0b06
    call Call_014_602f
    ld a, $5f
    ld bc, $0304
    call Call_014_602f
    ld a, $54
    ld bc, $0808
    call Call_014_602f
    ret


jr_014_63ff:
    ld a, $2d
    ld bc, $080d
    call Call_014_602f
    ld a, $5f
    ld bc, $0b06
    call Call_014_602f
    ld a, $0e
    ld bc, $0304
    call Call_014_602f
    ld a, $0e
    ld bc, $0808
    call Call_014_602f
    ret


    ld a, [$c109]
    cp $04
    ret nz

    xor a
    ldh [$b4], a
    ld a, $09
    ldh [$8c], a
    jp $2920


    add hl, de
    ld [hl-], a
    ld c, h
    ld [hl-], a
    ld [hl], l
    ld [hl-], a
    ld h, c
    ld h, h
    ld l, e
    ld h, h
    db $f4
    inc h
    db $f4
    inc h
    db $f4
    inc h
    db $f4
    inc h
    sub e
    ld h, h
    db $f4
    inc h
    add a
    ld h, b
    ld bc, $4b00
    ret c

    ld [hl], l
    ld h, h
    ld a, a
    ld h, h
    ld a, d
    ld h, h
    ld a, d
    ld h, h
    ld [bc], a
    jr nc, jr_014_64a2

    ret c

    add h
    ld h, h
    adc [hl]
    ld h, h
    adc c
    ld h, h
    adc c
    ld h, h
    rst $38
    ld [$4821], sp
    ld h, h
    call $31cc
    jp $24d7


    ld [$5421], sp
    ld h, h
    call $31cc
    jp $24d7


    rla
    rst $18
    ld d, h
    ld hl, $1750
    rst $30
    ld d, h
    ld hl, $1750
    rst $38
    ld d, h
    ld hl, $1750
    ld hl, $2155
    ld d, b
    rla
    ld b, c
    ld d, l
    ld hl, $1750
    ld d, l
    ld d, l
    ld hl, $1750
    add e
    ld d, l
    ld hl, $0150
    ld bc, $1716
    dec b
    and l
    nop
    ld [$1b0c], sp

jr_014_64a2:
    inc d
    rst $38
    rst $38
    ld b, c
    db $d3
    add hl, bc
    jr nz, jr_014_64c3

    dec de
    rst $38
    ret nc

    ld b, d
    db $e4
    dec c
    dec a
    ld b, $0e
    rst $38
    rst $38
    add e
    jr z, jr_014_64f5

    dec e
    rla
    rst $38
    rst $38
    add h
    jr z, jr_014_64fc

    ld d, $05
    rst $38
    rst $38

jr_014_64c3:
    add l
    sub $3d
    ld [$ff09], sp
    rst $38
    add [hl]
    jr z, @+$43

    jr jr_014_64e3

    rst $38
    rst $38
    rlca
    dec a
    ld de, $ff09
    rst $38
    adc b
    dec hl
    ldh a, [$c7]
    ld d, $17
    ld h, b
    ld h, c
    ld h, c
    ld h, c
    ld b, d
    ld h, c

jr_014_64e3:
    ld h, c
    ld h, c
    ld h, c
    ld h, d
    ld b, c
    ld b, c
    ld b, c
    ld b, c
    ld b, d
    ld h, h
    ld c, $0e
    ld c, $46
    ld c, $0e
    ld c, $0e

jr_014_64f5:
    ld h, [hl]
    ld [hl], a
    ld b, e
    ld b, e
    ld b, e
    ld b, [hl]
    ld b, h

jr_014_64fc:
    ld c, $47
    ld c, $56
    ld e, b
    ld c, $57
    ld c, c
    ld c, d
    ld c, c
    ld e, b
    ld c, $57
    ld d, c
    ld b, h
    ld c, $0e
    ld c, $0e
    ld c, $0e
    ld c, $0e
    ld c, $0e
    ld c, $0e
    ld c, $46
    ld b, b
    ld h, e
    ld c, $67
    ld b, d
    ld b, c
    ld b, c
    ld b, c
    ld b, c
    ld b, c
    ld b, c
    ld b, c
    ld b, d
    ld c, $46
    ld b, h
    dec bc
    ld c, $0b
    ld b, [hl]
    ld c, $0e
    ld c, $0e
    ld c, $0e
    ld c, $46
    ld c, $46
    ld b, h
    ld c, $0e
    ld c, $46
    ld c, $0e
    ld c, $0e
    ld c, $0e
    ld c, $46
    ld c, $46
    ld b, h
    dec bc
    ld c, $0b
    ld b, [hl]
    ld c, $0e
    ld c, $0e
    ld c, $0e
    ld c, $46
    ld c, $46
    ld d, b
    ld c, c
    ld c, c
    ld c, c
    ld c, d
    ld c, $5a
    ld h, c
    ld c, $61
    ld e, c
    ld c, $56
    ld c, $51
    ld b, h
    ld c, $0e
    ld c, $0e
    ld c, $46
    ld c, $0e
    ld c, $44
    ld c, $0e
    ld c, $46
    ld b, h
    ld c, $0e
    ld c, $0e
    ld c, $56
    ld c, $47
    ld c, $44
    ld c, $0e
    ld c, $46
    ld b, h
    ld c, $0e
    ld c, $0e
    ld c, $0e
    ld c, $0e
    ld c, $44
    ld l, [hl]
    ld c, $0e
    ld b, [hl]
    ld b, h
    ld c, $0e
    ld c, $0e
    ld c, $5a
    ld c, $0e
    ld [hl], a
    ld b, h
    ld c, $0e
    ld c, $46
    ld c, b
    ld c, c
    ld c, c
    ld c, c
    ld c, c
    ld c, c
    ld c, d
    ld c, c
    ld c, c
    ld c, c
    ld c, b
    ld c, c
    ld c, c
    ld c, c
    ld c, d
    ldh a, [$d7]
    ld [$d0d4], a
    xor a
    ld [$cd6a], a
    ld [$cf0b], a
    ld hl, $cc2b
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl], a
    ld [$cc36], a
    ld [$d05e], a
    ld [$d014], a
    ld [$d058], a
    ld [$cc2f], a
    ld [$d078], a
    ld [$d35d], a
    ld hl, $cf1d
    ld [hl+], a
    ld [hl], a
    ld hl, $ccd3
    ld b, $3c

jr_014_65e1:
    ld [hl+], a
    dec b
    jr nz, jr_014_65e1

    inc a
    ld [$ccd9], a
    ld a, [$d35e]
    cp $d9
    jr c, jr_014_65f9

    cp $dd
    jr nc, jr_014_65f9

    ld a, $02
    ld [$d05a], a

jr_014_65f9:
    ld hl, $50c6
    ld b, $02
    jp $35d6


    ld hl, $cfe9
    ld de, $cfd5
    ldh a, [$f3]
    and a
    jp z, Jump_014_6613

    ld hl, $d018
    ld de, $cfcf

Jump_014_6613:
    ld a, [hl]
    and a
    jr nz, jr_014_6659

    ld a, [de]
    cp $17
    jr nz, jr_014_662a

    ld b, h
    ld c, l
    inc bc
    ld a, [bc]
    cp $04
    jr z, jr_014_6666

    inc bc
    ld a, [bc]
    cp $04
    jr z, jr_014_6666

jr_014_662a:
    push hl
    ld hl, $656b
    ld b, $0f
    call $35d6
    pop hl
    ld a, [$d05f]
    and a
    jr nz, jr_014_6659

    set 6, [hl]
    ld hl, $6d27
    ld b, $0f
    call $35d6
    ld c, $1e
    call $3739
    ld hl, $7ba8
    ld b, $0f
    call $35d6
    ld hl, $7b6e
    ld b, $0f
    jp $35d6


jr_014_6659:
    ld c, $32
    call $3739
    ld hl, $7b5e
    ld b, $0f
    jp $35d6


jr_014_6666:
    ld c, $32
    call $3739
    ld hl, $5c51
    ld b, $0f
    jp $35d6


    ld hl, $66e3
    ld a, [$d35e]
    ld b, a

jr_014_667a:
    ld a, [hl+]
    cp $ff
    ret z

    cp b
    jr nz, jr_014_667a

    ld a, $35
    call $3e6d
    ld a, [$cfc6]
    cp $18
    jr z, jr_014_669c

    cp $24
    jr z, jr_014_669c

    ld b, a
    ld a, [$d35e]
    cp $eb
    ret nz

    ld a, b
    cp $5e
    ret nz

jr_014_669c:
    ld b, $30
    call $3493
    jr z, jr_014_66dc

    call Call_014_66fd
    push de
    ld a, $01
    ldh [$8c], a
    call $3ef5
    pop de
    srl d
    ld a, d
    ld b, a
    ld [$d73f], a
    srl e
    ld a, e
    ld c, a
    ld [$d740], a
    ld a, [$d35e]
    cp $eb
    jr nz, jr_014_66c8

    ld a, $03
    jr jr_014_66ca

jr_014_66c8:
    ld a, $0e

jr_014_66ca:
    ld [$d09f], a
    ld a, $17
    call $3e6d
    ld hl, $d126
    set 5, [hl]
    ld a, $ad
    jp $23b1


jr_014_66dc:
    ld a, $02
    ldh [$8c], a
    jp $3ef5


    rst $08
    ret nc

    pop de
    jp nc, $d4d3

    push de
    jp hl


    ld_long $ffeb, a
    rla
    nop
    ld b, b
    jr nz, @+$0d

    rla
    add hl, bc
    ld b, b
    jr nz, @+$52

    rla
    add hl, hl
    ld b, b
    jr nz, @+$52

Call_014_66fd:
    ld a, [$d361]
    ld d, a
    ld a, [$d362]
    ld e, a
    ld a, [$c109]
    and a
    jr nz, jr_014_670d

    inc d
    ret


jr_014_670d:
    cp $04
    jr nz, jr_014_6713

    dec d
    ret


jr_014_6713:
    cp $08
    jr nz, jr_014_6719

    dec e
    ret


jr_014_6719:
    inc e
    ret


    ld b, $45
    call $3493
    jr nz, jr_014_6728

    ld hl, $677e
    jp $3c49


jr_014_6728:
    ld hl, $d730
    set 6, [hl]
    ld hl, $6784
    call $3c49
    xor a
    ld [$cc26], a
    ld [$cc2a], a
    ld a, $03
    ld [$cc29], a
    ld a, $03
    ld [$cc28], a
    ld a, $04
    ld [$cc24], a
    ld a, $01
    ld [$cc25], a
    call Call_014_687a
    ld hl, $c3c8
    ld b, $08
    ld c, $10
    call $1922
    call Call_014_678e
    call $2429
    ld hl, $6789
    call $3c49
    call $3abe
    bit 1, a
    jr nz, jr_014_6778

    ld a, [$cc26]
    cp $03
    jr z, jr_014_6778

    call Call_014_68c6

jr_014_6778:
    ld hl, $d730
    res 6, [hl]
    ret


    rla
    adc [hl]
    ld h, d
    ld [hl+], a
    dec c
    ld d, b
    rla
    xor c
    ld h, d
    ld [hl+], a
    ld d, b
    rla
    call $2262
    ld d, b

Call_014_678e:
    ldh a, [$8c]
    sub $03
    ld [$d12f], a
    add a
    add a
    ld d, $00
    ld e, a
    ld hl, $6843
    add hl, de
    ld a, [hl+]
    ld d, [hl]
    ld e, a
    inc hl
    push hl
    ld hl, $d13d
    call $3829
    pop hl
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld de, $d141
    ld bc, $0006
    call $00b5
    ld a, [$d12f]
    cp $02
    jr nz, jr_014_67ec

    ld a, [$d13d]
    ld [$d11e], a
    call $2fcf
    ld hl, $c3f2
    call $1955
    ld a, [$d13e]
    ld [$d11e], a
    call $2fcf
    ld hl, $c41a
    call $1955
    ld a, [$d13f]
    ld [$d11e], a
    call $2fcf
    ld hl, $c442
    call $1955
    jr jr_014_6819

jr_014_67ec:
    ld a, [$d13d]
    ld [$d11e], a
    call $2f9e
    ld hl, $c3f2
    call $1955
    ld a, [$d13e]
    ld [$d11e], a
    call $2f9e
    ld hl, $c41a
    call $1955
    ld a, [$d13f]
    ld [$d11e], a
    call $2f9e
    ld hl, $c442
    call $1955

jr_014_6819:
    ld hl, $c46a
    ld de, $684f
    call $1955
    ld de, $d141
    ld hl, $c411
    ld c, $82
    call $15cd
    ld de, $d143
    ld hl, $c439
    ld c, $82
    call $15cd
    ld de, $d145
    ld hl, $c461
    ld c, $82
    jp $15cd


    ld e, c
    ld l, b
    ld e, l
    ld l, b
    ld h, h
    ld l, b
    ld l, b
    ld l, b
    ld l, a
    ld l, b
    ld [hl], e
    ld l, b
    adc l
    adc [hl]
    ld a, a
    sub e
    add a
    add b
    adc l
    adc d
    sub d
    ld d, b
    add hl, bc
    or d
    or e
    ld d, b
    add hl, bc
    ld d, b
    add hl, bc
    ld d, b
    db $10
    ld d, b
    ld d, b
    rlca
    db $10
    xor d
    ld d, b
    ld b, [hl]
    nop
    ld b, [hl]
    nop
    stop
    ld d, b
    ld hl, sp-$29
    ld a, [$3350]
    nop
    ld d, l
    ld d, l
    sbc c
    nop
    ld d, b

Call_014_687a:
Jump_014_687a:
    ld hl, $c3ab
    ld b, $01
    ld c, $07
    call $1922
    call $2429
    ld hl, $c3ac
    ld de, $68a5
    call $1955
    ld hl, $c3c1
    ld de, $68aa
    call $1955
    ld hl, $c3c1
    ld de, $d5a4
    ld c, $82
    call $15cd
    ret


    add d
    adc [hl]
    adc b
    adc l
    ld d, b
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld d, b

Call_014_68b1:
    ld a, [$d139]
    add a
    ld d, $00
    ld e, a
    ld hl, $d141
    add hl, de
    xor a
    ldh [$9f], a
    ld a, [hl+]
    ldh [$a0], a
    ld a, [hl]
    ldh [$a1], a
    ret


Call_014_68c6:
    ld a, [$cc26]
    ld [$d139], a
    ld d, $00
    ld e, a
    ld hl, $d13d
    add hl, de
    ld a, [hl]
    ld [$d11e], a
    ld a, [$d12f]
    cp $02
    jr nz, jr_014_68e3

    call $2fcf
    jr jr_014_68e6

jr_014_68e3:
    call $2f9e

jr_014_68e6:
    ld hl, $6960
    call $3c49
    call $35ec
    ld a, [$cc26]
    and a
    jr nz, jr_014_694b

    call Call_014_68b1
    call $35b1
    jr c, jr_014_6945

    ld a, [$d12f]
    cp $02
    jr nz, jr_014_6912

    ld a, [$d11e]
    ld b, a
    ld a, $01
    ld c, a
    call $3e2e
    jr nc, jr_014_693f

    jr jr_014_692c

jr_014_6912:
    ld a, [$d11e]
    ld [$cf91], a
    push af
    call Call_014_6977
    ld c, a
    pop af
    ld b, a
    call $3e48
    push af
    ld a, [$ccd3]
    and a
    call z, $3865
    pop af
    ret nc

jr_014_692c:
    call Call_014_68b1
    ld hl, $ffa1
    ld de, $d5a5
    ld c, $02
    ld a, $0c
    call $3e6d
    jp Jump_014_687a


jr_014_693f:
    ld hl, $696b
    jp $3c49


jr_014_6945:
    ld hl, $6965
    jp $3c49


jr_014_694b:
    ld hl, $6971
    jp $3c49


    nop
    ld bc, $0100
    nop
    ld bc, $0000
    ld bc, $e717
    ld h, d
    ld [hl+], a
    dec c
    ld d, b
    rla
    or $62
    ld [hl+], a

jr_014_6964:
    ld d, b
    rla
    dec bc
    ld h, e
    ld [hl+], a
    dec c
    ld d, b
    rla
    add hl, hl
    ld h, e
    ld [hl+], a
    dec c
    ld d, b
    rla
    ld c, h
    ld h, e
    ld [hl+], a
    dec c
    ld d, b

Call_014_6977:
    ld a, [$cf91]
    ld b, a
    ld hl, $698a

jr_014_697e:
    ld a, [hl+]
    cp b
    jr z, jr_014_6985

    inc hl
    jr jr_014_697e

jr_014_6985:
    ld a, [hl]
    ld [$d127], a
    ret


    add hl, bc
    inc hl
    or d
    inc hl
    or e
    inc hl
    rlca
    jr z, @+$12

    jr z, jr_014_693f

    jr z, jr_014_6964

    inc a
    inc a
    ld a, $01
    ld [$cc3c], a
    ld a, [$cd3d]
    jp $3ef5


    rla
    db $fd
    ld c, e
    ld [hl+], a
    dec c
    ld d, b
    ld [$f421], sp
    ld l, c
    call $3c49
    call Call_014_69db
    jr nz, jr_014_69d8

    ld hl, $69f9
    call $3c49
    call Call_014_69db
    jr nz, jr_014_69d8

    ld hl, $69fe
    call $3c49
    call Call_014_69db
    jr nz, jr_014_69d8

    ld hl, $6a03
    call $3c49
    ld hl, $69ee
    call $3c49

jr_014_69d8:
    jp $24d7


Call_014_69db:
    ld hl, $69e9
    call $3c49
    call $35ec
    ld a, [$cc26]
    and a
    ret


    rla
    ld l, a
    ld c, h
    ld [hl+], a
    ld d, b
    rla
    ld a, a
    ld c, h
    ld [hl+], a
    dec c
    ld d, b
    rla
    and e
    ld c, h
    ld [hl+], a
    ld d, b
    rla
    ld b, [hl]
    ld c, l
    ld [hl+], a
    ld d, b
    rla
    cp l
    ld c, l
    ld [hl+], a
    ld d, b
    rla
    inc l
    ld c, [hl]
    ld [hl+], a
    ld d, b
    call $3c3c
    ld a, $37
    jp $3ef5


    rla
    pop bc
    ld c, [hl]
    ld [hl+], a
    ld d, b
    call $3c3c
    ld a, $38
    jp $3ef5


    rla
    reti


    ld c, [hl]
    ld [hl+], a
    ld d, b
    call $3c3c
    ld a, $36
    jp $3ef5


    rla
    ld sp, hl
    ld c, [hl]
    ld [hl+], a
    ld d, b
    ld a, [$c109]
    cp $04
    ret nz

    call $3c3c
    ld a, $27
    jp $3ef5


    rla
    ld [$224f], sp
    ld d, b
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
