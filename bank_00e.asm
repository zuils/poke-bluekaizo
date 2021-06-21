; Disassembly of "bluekaizo.gb"
; This file was created with:
; mgbdis v1.4 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

SECTION "ROM Bank $00e", ROMX[$4000], BANK[$e]

    ld bc, $2800
    nop
    rst $38
    inc hl
    ld [bc], a
    nop
    ld [hl-], a
    nop
    rst $38
    add hl, de
    inc bc
    dec e
    rrca
    nop
    ret c

    ld a, [bc]
    inc b
    dec e
    ld [de], a
    nop
    ret c

    rrca
    dec b
    nop
    ld d, b
    nop
    ret c

    inc d
    ld b, $10
    jr z, jr_00e_4022

jr_00e_4022:
    rst $38
    inc d
    rlca
    inc b
    ld c, e
    inc d
    rst $38
    rrca
    ld [$4b05], sp
    add hl, de
    rst $38
    rrca
    add hl, bc
    ld b, $4b
    rla
    rst $38
    rrca
    ld a, [bc]
    nop
    jr z, jr_00e_403a

jr_00e_403a:
    rst $38
    inc hl
    dec bc
    nop
    scf
    nop
    rst $38
    ld e, $0c
    ld h, $01
    nop
    ld c, h
    ld bc, $250d
    ld a, b
    nop
    rst $38
    dec b
    ld c, $32
    nop
    nop
    rst $38
    ld e, $0f
    nop
    ld [hl-], a
    nop
    ld a, [c]
    ld e, $10
    nop
    jr z, jr_00e_405e

jr_00e_405e:
    rst $38
    inc hl
    ld de, $2300
    ld [bc], a
    rst $38
    inc hl
    ld [de], a
    inc e
    nop
    nop
    ret c

    inc d
    inc de
    nop
    inc a
    ld [bc], a
    rst $38
    rrca
    inc d
    ld a, [hl+]
    rrca
    nop
    cp a
    inc d
    dec d
    nop
    ld d, b
    nop
    cp a
    inc d
    ld d, $00
    inc hl
    ld d, $ff
    ld a, [bc]
    rla
    dec h
    ld b, c
    nop
    rst $38
    inc d
    jr jr_00e_40b8

    ld e, $01
    rst $38
    ld e, $19
    nop
    ld a, b
    nop
    cp a
    dec b
    ld a, [de]
    dec l
    ld b, [hl]
    ld bc, $19f2
    dec de
    dec h
    inc a
    ld bc, $0fd8
    inc e
    ld d, $00
    nop
    rst $38
    rrca
    dec e
    dec h
    ld b, [hl]
    nop
    rst $38
    rrca
    ld e, $00
    ld b, c
    nop
    rst $38
    add hl, de
    rra
    dec e
    rrca
    nop

jr_00e_40b8:
    ret c

    inc d
    jr nz, jr_00e_40e2

    ld bc, $4c00
    ld bc, $0021
    inc hl
    nop
    ld a, [c]
    inc hl
    ld [hl+], a
    inc h
    ld d, l
    nop
    rst $38
    rrca
    inc hl
    ld a, [hl+]
    rrca
    nop
    ret c

    inc d
    inc h
    jr nc, @+$5c

    nop
    ret c

    inc d
    dec h
    dec de
    ld e, d
    nop
    rst $38
    inc d
    ld h, $30
    ld h, h
    nop

jr_00e_40e2:
    rst $38
    rrca
    daa
    inc de
    nop
    nop
    rst $38
    ld e, $28
    ld [bc], a
    rrca
    inc bc
    rst $38
    inc hl
    add hl, hl
    ld c, l
    add hl, de
    rlca
    rst $38
    inc d
    ld a, [hl+]
    dec e
    ld c, $07
    ret c

    inc d
    dec hl
    inc de
    nop
    nop
    rst $38
    ld e, $2c
    rra
    inc a
    nop
    rst $38
    add hl, de
    dec l
    ld [de], a
    nop
    nop
    rst $38
    jr z, jr_00e_413d

    inc e
    nop
    nop
    rst $38
    inc d
    cpl
    jr nz, jr_00e_4117

jr_00e_4117:
    nop
    adc h
    rrca
    jr nc, jr_00e_414d

    nop
    nop
    adc h
    inc d
    ld sp, $0129
    nop
    push hl
    inc d
    ld [hl-], a
    ld d, [hl]
    nop
    nop
    adc h
    inc d
    inc sp
    ld b, l
    jr z, jr_00e_4133

    rst $38
    ld e, $34

jr_00e_4133:
    inc b
    jr z, jr_00e_414a

    rst $38
    add hl, de
    dec [hl]
    inc b
    ld e, a
    inc d
    rst $38

jr_00e_413d:
    rrca
    ld [hl], $2e
    nop
    add hl, de
    rst $38
    ld e, $37
    nop
    jr z, jr_00e_415d

    rst $38
    add hl, de

jr_00e_414a:
    jr c, jr_00e_414c

jr_00e_414c:
    ld a, b

jr_00e_414d:
    dec d
    call z, $3905
    nop
    ld e, a
    dec d
    rst $38
    rrca
    ld a, [hl-]
    dec b
    ld e, a
    add hl, de
    rst $38
    ld a, [bc]
    dec sp

jr_00e_415d:
    dec b
    ld a, b
    add hl, de
    push hl
    dec b
    inc a
    ld c, h
    ld b, c
    jr @+$01

    inc d
    dec a
    ld b, [hl]
    ld b, c
    dec d
    rst $38
    inc d
    ld a, $44
    ld b, c
    add hl, de
    rst $38
    inc d
    ccf
    ld d, b
    sub [hl]
    nop
    push hl
    dec b
    ld b, b
    nop
    inc hl
    ld [bc], a
    rst $38
    inc hl
    ld b, c
    nop
    ld d, b
    ld [bc], a
    rst $38
    inc d
    ld b, d
    jr nc, jr_00e_41d9

    ld bc, $19cc
    ld b, e
    dec h
    ld [hl-], a
    ld bc, $14e5
    ld b, h
    nop
    ld bc, $ff01
    inc d
    ld b, l
    add hl, hl
    ld bc, $ff01
    inc d
    ld b, [hl]
    nop
    ld d, b
    nop
    rst $38
    rrca
    ld b, a
    inc bc
    inc d
    ld d, $ff
    inc d
    ld c, b
    inc bc
    jr z, jr_00e_41c4

    rst $38
    ld a, [bc]
    ld c, c
    ld d, h
    nop
    ld d, $e5
    ld a, [bc]
    ld c, d
    dec c
    nop
    nop
    rst $38
    jr z, jr_00e_4208

    nop
    scf
    ld d, $f2
    add hl, de
    ld c, h
    nop

jr_00e_41c4:
    ld a, b
    ld d, $ff
    dec b
    ld c, l
    ld b, d
    nop
    inc bc
    cp a
    inc hl
    ld c, [hl]
    ld b, e
    nop
    ld d, $cc
    ld e, $4f
    jr nz, jr_00e_41d7

jr_00e_41d7:
    ld d, $cc

jr_00e_41d9:
    rrca
    ld d, b
    inc bc
    ld a, b
    ld d, $ff
    dec b
    ld d, c
    inc d
    nop
    rlca
    ld a, [c]
    jr z, jr_00e_4239

    add hl, hl
    ld bc, $ff1a

jr_00e_41eb:
    ld a, [bc]
    ld d, e
    ld a, [hl+]
    rrca
    inc d
    or d
    rrca
    ld d, h
    ld b, $28
    rla
    rst $38
    ld e, $55
    nop
    ld e, a
    rla
    rst $38
    rrca
    ld d, [hl]
    ld b, e
    nop
    rla
    rst $38
    inc d
    ld d, a
    nop
    ld a, b
    rla

jr_00e_4208:
    or d
    ld a, [bc]
    ld e, b
    nop
    ld [hl-], a
    dec b
    and l
    rrca
    ld e, c
    nop
    ld h, h
    inc b
    rst $38
    ld a, [bc]
    ld e, d
    ld h, $01
    inc b
    ld c, h
    ld bc, $275b
    ld c, e
    inc b
    rst $38
    ld a, [bc]
    ld e, h
    ld b, d
    nop
    inc bc
    ret c

    ld a, [bc]
    ld e, l
    ld c, h
    ld [hl-], a
    jr @+$01

    add hl, de
    ld e, [hl]
    ld b, a
    ld e, d
    jr @+$01

    ld a, [bc]
    ld e, a
    jr nz, jr_00e_4237

jr_00e_4237:
    jr jr_00e_41eb

jr_00e_4239:
    inc d
    ld h, b
    ld a, [bc]
    nop
    jr @+$01

    jr z, jr_00e_42a2

    inc [hl]
    nop
    jr @+$01

    ld e, $62
    nop
    jr z, jr_00e_424a

jr_00e_424a:
    rst $38
    ld e, $63
    ld d, c
    inc d
    nop
    rst $38
    inc d
    ld h, h
    inc e
    nop
    jr @+$01

    inc d
    ld h, l
    add hl, hl
    nop
    ld [$0fff], sp
    ld h, [hl]
    ld d, d
    nop
    nop
    rst $38
    ld a, [bc]
    ld h, a
    dec sp
    nop
    nop
    ret c

    jr z, jr_00e_42d3

    rrca
    nop
    nop
    rst $38
    ld bc, $3869
    nop
    nop
    rst $38
    inc d
    ld l, d
    dec bc
    nop
    nop
    rst $38
    ld e, $6b
    rrca
    nop
    nop
    rst $38
    ld bc, $166c
    nop
    nop
    rst $38
    inc d
    ld l, l
    ld sp, $0800
    rst $38
    ld a, [bc]
    ld l, [hl]
    dec bc
    nop
    dec d
    rst $38
    jr z, jr_00e_4304

    dec bc
    nop
    nop
    rst $38
    jr z, jr_00e_430b

    inc sp
    nop
    jr @+$01

    ld e, $71
    ld b, b

jr_00e_42a2:
    nop
    jr @+$01

    ld e, $72
    add hl, de
    nop
    add hl, de
    rst $38
    ld e, $73
    ld b, c
    nop
    jr @+$01

    inc d
    ld [hl], h
    cpl
    nop
    nop
    rst $38
    ld e, $75
    ld a, [de]
    nop
    nop
    rst $38
    ld a, [bc]
    db $76
    ld d, e
    nop
    nop
    rst $38
    ld a, [bc]
    ld [hl], a
    add hl, bc
    nop
    ld [bc], a
    rst $38
    inc d
    ld a, b
    rlca
    add d
    nop
    rst $38

jr_00e_42cf:
    ld bc, $0079
    ld h, h

jr_00e_42d3:
    nop
    cp a
    ld a, [bc]
    ld a, d
    inc h
    inc d
    ld [$1eff], sp
    ld a, e
    ld hl, $0314
    or d
    inc d
    ld a, h
    ld hl, $0341
    rst $38
    inc d
    ld a, l
    rra
    ld b, c
    inc b
    ret c

    inc d
    ld a, [hl]

jr_00e_42ef:
    ld [hl+], a
    ld a, b
    inc d
    ret c

    dec b
    ld a, a
    nop
    ld d, b
    dec d
    rst $38
    rrca
    add b
    ld a, [hl+]
    inc hl
    dec d
    cp a
    ld a, [bc]
    add c
    ld de, $003c

jr_00e_4304:
    rst $38
    inc d
    add d
    daa
    ld h, h
    nop
    rst $38

jr_00e_430b:
    rrca
    add e
    dec e
    inc d
    nop
    rst $38
    rrca
    add h
    ld b, [hl]
    ld a, [bc]
    nop
    rst $38
    inc hl
    add l
    dec [hl]
    nop
    jr @+$01

    inc d
    add [hl]
    ld d, $00
    jr jr_00e_42ef

jr_00e_4323:
    rrca
    add a
    jr c, jr_00e_4327

jr_00e_4327:
    nop
    rst $38
    ld a, [bc]
    adc b
    dec l
    ld d, l
    ld bc, $14e5
    adc c
    ld b, e
    nop
    nop
    push hl
    ld e, $8a
    ld [$1864], sp
    rst $38
    rrca
    adc e
    ld b, d
    nop
    inc bc
    adc h
    jr z, jr_00e_42cf

    dec e
    rrca
    nop
    ret c

    inc d
    adc l
    inc bc
    inc d
    rlca
    rst $38
    rrca
    adc [hl]
    jr nz, jr_00e_4351

jr_00e_4351:
    nop
    push hl
    ld a, [bc]
    adc a
    dec h
    adc h
    ld [bc], a
    push hl
    dec b
    sub b
    add hl, sp
    nop
    nop
    rst $38
    ld a, [bc]
    sub c
    ld b, [hl]
    inc d
    dec d
    rst $38
    ld e, $92
    nop
    ld b, [hl]
    nop
    rst $38
    ld a, [bc]
    sub e
    jr nz, jr_00e_436f

jr_00e_436f:
    ld d, $ff
    rrca
    sub h
    ld d, $00
    nop
    or d
    inc d
    sub l
    add hl, hl
    ld bc, $cc18
    rrca
    sub [hl]
    ld d, l
    nop
    nop
    rst $38
    jr z, @-$67

    inc sp
    nop
    inc bc
    rst $38
    jr z, jr_00e_4323

    nop
    ld e, d
    dec d
    push hl
    ld a, [bc]
    sbc c
    rlca
    xor d
    nop
    rst $38
    ld bc, $1d9a
    ld [de], a
    nop
    call z, $9b0f
    inc l
    inc a
    inc b
    push hl
    ld a, [bc]
    sbc h
    jr c, jr_00e_43a5

jr_00e_43a5:
    jr @+$01

    ld a, [bc]
    sbc l
    nop
    ld c, e
    dec b
    push hl
    ld a, [bc]
    sbc [hl]
    rra
    ld d, b
    nop
    push hl
    rrca
    sbc a
    ld a, [bc]

jr_00e_43b6:
    nop
    nop
    rst $38
    ld e, $a0
    jr jr_00e_43bd

jr_00e_43bd:
    nop
    rst $38
    ld e, $a1
    nop
    ld d, b
    nop
    rst $38
    ld a, [bc]
    and d
    jr z, jr_00e_43ca

    nop

jr_00e_43ca:
    push hl
    ld a, [bc]
    and e
    nop
    ld b, [hl]
    nop
    rst $38
    inc d

jr_00e_43d2:
    and h
    ld c, a
    nop
    nop
    rst $38
    ld a, [bc]
    and l
    jr nc, jr_00e_440d

    nop
    rst $38
    ld a, [bc]
    ld bc, $312d
    ld sp, $412d
    ld d, $03
    dec l
    ld b, b
    ld d, l
    nop
    ld b, b
    push hl
    ld b, b
    ld d, $21
    ld e, h
    nop
    inc bc
    and h
    inc bc
    jr c, jr_00e_43b6

    inc bc
    ld [$0006], sp
    ld [bc], a
    inc a
    ld a, $3f
    inc a
    ld d, b
    ld d, $03
    dec l
    adc l
    ld h, [hl]
    dec hl
    ld d, b
    ld d, a
    ld d, c
    ld c, a
    ld [hl+], a
    ld c, e
    nop

jr_00e_440d:
    inc bc
    and h
    inc bc
    jr c, jr_00e_43d2

    inc bc
    ld [$0006], sp
    inc bc
    ld d, b
    ld d, d
    ld d, e
    ld d, b
    ld h, h
    ld d, $03
    dec l
    ret nc

    ld [hl], a
    ld h, d
    ld b, c
    sub a
    ld b, e
    ld c, a
    ld [hl+], a
    ld c, e
    ld l, b
    inc bc
    and h
    ld b, e
    jr c, @-$3e

    inc bc
    ld [$0006], sp
    inc b
    daa
    inc [hl]
    dec hl
    ld b, c
    ld [hl-], a
    inc d
    inc d
    dec l
    ld b, c
    ld d, l
    ld e, h
    ld e, h
    ld e, h
    ld e, l
    inc [hl]
    ld a, [bc]
    nop
    nop
    inc bc
    or l
    inc bc
    ld c, a
    ret z

    db $e3
    ld [$0026], sp
    dec b
    ld a, [hl-]
    ld b, b
    ld a, [hl-]
    ld d, b
    ld b, c
    inc d
    inc d
    dec l
    adc [hl]
    ld h, [hl]
    inc c
    ld e, a
    ld c, b
    ld h, b
    ld d, d
    dec [hl]
    and e
    nop
    inc bc
    or l
    inc bc
    ld c, a
    ret z

    db $e3
    ld [$0026], sp
    ld b, $4e
    ld d, h
    ld c, [hl]
    ld h, h
    ld d, l
    inc d
    ld [bc], a
    dec l
    pop de
    ld [hl], a
    add [hl]
    ld h, d
    sub l
    ld h, h
    dec [hl]
    and e
    ld [hl+], a
    ld e, c
    inc bc
    or l
    ld b, e
    ld c, a
    adc $e3
    ld [$0026], sp
    rlca
    inc l
    jr nc, jr_00e_44cb

    dec hl
    ld [hl-], a
    dec d
    dec d
    dec l
    ld b, d
    ld d, l
    cp b
    ld e, l
    adc a
    ld e, [hl]
    scf
    ld hl, $0000
    inc bc
    or c
    ccf
    rrca
    ret z

    add e
    ld [$0032], sp
    ld [$3f3b], sp
    ld d, b
    ld a, [hl-]
    ld b, c
    dec d
    dec d
    dec l
    adc a
    ld h, [hl]
    or c
    ld h, b
    pop af
    ld h, c
    ld a, a
    dec sp
    ld [hl+], a
    ld e, e
    inc bc
    or c
    ccf
    rrca
    ret z

    add e
    ld [$0032], sp
    add hl, bc
    ld c, a
    ld d, e
    ld h, h
    ld c, [hl]
    ld d, l
    dec d
    dec d
    dec l
    jp nc, $3777

    db $76

jr_00e_44cb:
    ld d, c
    ld a, b
    ld [hl+], a
    jr c, jr_00e_450b

    ld e, c
    inc bc
    or c
    ld a, a
    rrca
    adc $83
    ld [$0032], sp
    ld a, [bc]
    dec l
    ld e, $23
    dec l
    inc d
    rlca
    rlca
    rst $38
    dec [hl]
    ld d, l
    ld c, c
    ld c, d
    pop hl
    ld c, d
    ld hl, $0051
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    dec bc
    ld [hl-], a
    inc d
    scf
    ld e, $19
    rlca
    rlca
    rst $38
    ld c, b
    ld d, l
    ld a, [hl-]
    ld c, e
    ret z

    ld c, e
    ld l, d
    ld hl, $0000
    nop
    nop

jr_00e_450b:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    inc c
    inc a
    dec l
    ld [hl-], a
    ld b, [hl]
    ld d, b
    rlca
    ld [bc], a

jr_00e_451a:
    rst $38
    or h
    ld [hl], a
    scf
    ld c, h
    ld c, $4e
    inc a
    ld c, [hl]
    ld c, a
    nop
    nop
    ld a, [hl+]
    ld b, e
    jr c, jr_00e_451a

    ld b, e
    jr z, jr_00e_452f

    nop
    dec c

jr_00e_452f:
    jr z, jr_00e_4554

    ld e, $32
    inc d
    rlca
    inc bc
    rst $38
    inc [hl]
    ld d, l
    ld a, l
    ld [hl], l
    inc h
    db $76
    jr z, jr_00e_4590

    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld c, $2d
    add hl, de
    ld [hl-], a
    inc hl
    add hl, de
    rlca
    inc bc
    rst $38
    ld b, a

jr_00e_4554:
    ld d, l
    ld [hl], a
    db $76
    ld [hl], $77
    ld l, d
    jr z, jr_00e_455c

jr_00e_455c:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    rrca
    ld b, c
    ld d, b
    jr z, @+$4d

    dec l
    rlca
    inc bc
    rst $38
    sbc a
    ld [hl], a
    adc b
    ld [hl], a
    add b
    ld a, c
    add hl, hl
    nop
    nop
    nop
    nop
    inc h
    ld b, e
    jr @-$3e

    jp $0608


    nop
    db $10
    jr z, jr_00e_45b2

    jr z, jr_00e_45bf

    inc hl
    nop
    ld [bc], a
    rst $38
    scf
    ld d, l
    and a
    ld b, l
    ld e, e

jr_00e_4590:
    ld b, [hl]
    ld de, $621c
    nop
    inc bc
    ld a, [hl+]
    inc bc
    ld [$43c0], sp
    inc c
    ld a, [bc]
    nop
    ld de, $3c3f
    scf
    ld b, a
    ld [hl-], a
    nop
    ld [bc], a
    rst $38
    ld [hl], c
    ld h, [hl]
    ld a, [bc]
    ld a, b
    ld e, e
    ld a, c
    ld de, $621c
    nop
    inc bc

jr_00e_45b2:
    ld a, [hl+]
    inc bc
    ld [$43c0], sp
    inc c
    ld a, [bc]
    nop
    ld [de], a
    ld d, e
    ld d, b
    ld c, e
    ld e, e

jr_00e_45bf:
    ld b, [hl]
    nop
    ld [bc], a
    sub c
    xor h
    ld [hl], a
    jp nz, Jump_00e_7979

    ld a, e
    dec c
    inc e
    ld h, d
    ccf
    inc bc
    ld a, [hl+]
    ld b, e
    ld [$43c0], sp
    inc c
    ld a, [bc]
    nop
    inc de
    ld e, $38
    inc hl
    ld c, b
    add hl, de
    nop
    nop
    rst $38
    add hl, sp
    ld d, l
    ld l, d
    ld c, a
    ld b, c
    ld d, b
    ld h, d
    nop
    nop
    nop
    nop
    and b
    cpl
    adc b
    ret


    jp nz, $0208

    nop
    inc d
    scf
    ld d, c
    inc a
    ld h, c
    ld [hl-], a
    nop
    nop
    ld a, b
    ld [hl], h
    ld h, [hl]
    ld a, d
    ld d, b
    dec c
    ld d, d
    ld [hl+], a
    and d
    ld e, e
    ccf
    nop
    and b
    ld a, a
    adc b
    ret


    jp nz, $0208

    nop
    dec d
    jr z, jr_00e_464d

    ld e, $46
    rra
    nop
    ld [bc], a
    rst $38
    ld a, [hl-]
    ld d, l
    rst $18
    ld b, a
    jp nz, $4048

    dec l
    nop
    nop
    nop
    ld a, [hl+]
    inc bc
    ld [$42c0], sp
    inc c
    ld a, [bc]
    nop
    ld d, $41

jr_00e_462c:
    ld e, d
    ld b, c
    ld h, h
    dec a
    nop
    ld [bc], a
    and b
    and d
    ld [hl], a
    add e
    ld b, e
    add hl, hl
    ld b, l
    ld b, c
    ccf
    dec c
    nop
    nop
    ld a, [hl+]
    ld b, e
    ld [$42c0], sp
    inc c
    ld a, [bc]
    nop
    rla
    inc hl

jr_00e_4648:
    inc a
    inc l
    scf
    jr z, @+$05

jr_00e_464d:
    inc bc
    rst $38
    ld a, $55
    ld l, e
    ld l, a
    ld l, l
    ld [hl], b
    inc hl
    adc c
    nop
    nop
    nop
    and b
    inc bc
    jr jr_00e_462c

    add d
    adc b
    ld [hl+], a
    nop
    jr jr_00e_46a0

    ld d, l
    ld b, l
    ld d, b
    ld b, c
    inc bc
    inc bc
    ld a, [bc]
    sub e
    ld [hl], a
    or h
    ld d, [hl]
    ld de, $2359
    adc c
    nop
    nop
    nop
    and b
    ld b, e
    jr jr_00e_4648

    add d
    adc b
    ld [hl+], a
    nop
    add hl, de
    inc hl
    scf
    ld e, $5a
    ld [hl-], a
    rla
    rla
    rst $38
    ld d, d
    ld d, l
    ld a, l
    ld c, l
    adc e
    ld c, [hl]
    ld d, h
    ld h, d
    ld d, [hl]
    nop
    nop
    or c
    add e
    adc l
    pop bc
    jp $4218


    nop
    ld a, [de]
    inc a
    ld e, d
    scf
    ld h, h
    ld e, d

jr_00e_46a0:
    rla
    rla
    ld e, $7a
    ld [hl], a
    inc bc
    ld c, a
    jp Jump_00e_5550


    ld [hl+], a
    ld d, [hl]
    add hl, sp
    nop
    or c
    jp $c18d


    jp $4218


    nop
    dec de
    ld [hl-], a
    ld c, e
    ld d, l
    jr z, jr_00e_46da

    inc b
    inc b
    rst $38
    ld e, l
    ld d, l
    ret


    ld e, d
    rst $20
    ld e, e
    and e
    inc e
    nop
    nop
    nop
    and h
    inc bc
    dec c
    adc $c2
    adc b
    ld h, $00
    inc e
    ld c, e
    ld h, h
    ld l, [hl]
    ld b, c
    scf
    inc b
    inc b

jr_00e_46da:
    ld a, b
    and e
    ld h, [hl]
    ld l, e
    ld e, h
    inc b
    ld e, [hl]
    ld e, e
    and e
    nop
    nop
    nop
    and h
    ld b, e
    dec c
    adc $c2
    adc b
    ld h, $00
    dec e
    scf
    cpl
    inc [hl]
    add hl, hl
    jr z, jr_00e_46f8

    inc bc
    rst $38
    dec sp

jr_00e_46f8:
    ld d, l
    jr z, jr_00e_4758

    jp nz, $185d

    inc l
    ld e, h
    nop
    inc bc
    and b
    inc hl
    adc b
    pop bc
    add e
    ld [$0002], sp
    ld e, $46
    ld a, $43
    jr c, jr_00e_4747

    inc bc
    inc bc
    rst $38
    ld [hl], l
    ld h, [hl]
    adc e
    ld d, h
    ret z

    ld d, l
    jr jr_00e_4747

    ld e, h
    nop
    inc bc
    ldh [$3f], a
    adc b
    pop bc
    add e
    ld [$0002], sp
    rra
    ld e, d
    ld d, d
    ld d, a
    ld c, h
    ld c, e
    inc bc
    inc b
    ld l, [hl]
    jp nz, $0977

    ld e, [hl]
    rst $28
    ld e, a
    adc [hl]
    ld e, c
    ld d, l
    dec sp
    inc bc
    pop af
    rst $38
    adc a
    rst $00
    and e
    adc b
    ld [hl-], a
    nop
    jr nz, jr_00e_4772

    add hl, sp
    jr z, @+$34

jr_00e_4747:
    jr z, jr_00e_474c

    inc bc
    rst $38
    inc a

jr_00e_474c:
    ld d, l
    inc a
    ld b, l
    inc hl
    ld b, [hl]
    jr jr_00e_4771

    ld e, h
    nop
    inc bc
    ldh [rNR44], a

jr_00e_4758:
    adc b
    pop bc
    add e
    ld [$0002], sp
    ld hl, $483d
    add hl, sp
    ld b, c
    scf
    inc bc
    inc bc
    rst $38
    db $76
    ld h, [hl]
    add d
    ld d, d
    ldh a, [rHDMA3]
    jr jr_00e_47cb

    ld e, $00

jr_00e_4771:
    inc bc

jr_00e_4772:
    ldh [$3f], a
    adc b
    pop bc
    add e
    ld [$0002], sp
    ld [hl+], a
    ld d, c
    ld e, h
    ld c, l
    ld d, l
    ld c, e
    inc bc
    inc b
    ld l, [hl]
    jp $f877


    ld c, c
    ld h, b
    ld c, h
    dec sp
    ld d, l
    adc [hl]
    ld e, c
    inc bc
    pop af
    rst $38
    adc a
    rst $00
    and e
    adc b
    ld [hl-], a
    nop
    inc hl
    ld b, [hl]
    dec l
    jr nc, jr_00e_47be

    inc a
    nop
    nop
    rst $38
    ld b, h
    ld d, l
    add d
    ld b, [hl]
    add l
    ld b, a
    cpl
    halt
    nop
    inc b
    or c
    ccf
    xor a
    pop af
    and a
    jr c, jr_00e_4814

    nop
    inc h
    ld e, a
    ld b, [hl]
    ld c, c
    inc a
    ld d, l
    nop
    nop
    ld bc, $6681
    adc h

jr_00e_47be:
    ld l, b
    cp b
    ld l, c
    ld [hl+], a
    dec sp
    ld e, [hl]
    ld d, [hl]
    inc b
    or c
    ld a, a
    xor a
    pop af
    and a

jr_00e_47cb:
    jr c, jr_00e_4830

    nop
    dec h
    ld h, $29
    jr z, jr_00e_4814

    ld b, c
    inc d
    inc d
    rst $38
    ccf
    ld h, [hl]
    inc h
    ld c, c
    sbc d
    ld c, d
    inc [hl]
    ld l, l
    nop
    nop
    nop
    and b
    inc bc
    ld [$e3c8], sp
    ld [$0002], sp
    ld h, $49
    ld c, h
    ld c, e
    ld h, h
    ld h, h
    inc d
    inc d
    ld b, d
    or d
    ld [hl], a
    rst $38
    ld c, d
    ei
    ld c, h
    ld d, e
    nop
    nop
    nop
    nop
    and b
    ld b, e
    ld [$e3c8], sp
    ld [$0002], sp
    daa
    ld [hl], e
    dec l
    inc d
    inc d
    add hl, de
    nop
    nop
    rst $38
    ld c, h
    ld d, l
    cpl
    ld h, d
    rrca

jr_00e_4814:
    ld h, e
    cpl

jr_00e_4816:
    ld h, $9c
    nop
    inc b
    or c
    ccf
    xor a
    pop af
    and e
    jr c, jr_00e_4884

    nop
    jr z, @-$72

    ld b, [hl]
    dec l
    dec l
    ld [hl-], a
    nop
    nop
    ld e, $6d
    ld h, [hl]
    ld c, b
    ld h, e
    cp a

jr_00e_4830:
    ld h, h
    ld e, [hl]

jr_00e_4832:
    dec sp
    ld h, $56
    inc b
    or c
    ld a, a
    xor a
    pop af
    and e
    jr c, jr_00e_48a0

    nop
    add hl, hl
    jr z, jr_00e_486e

    inc hl
    scf
    jr z, @+$05

    ld [bc], a
    rst $38
    ld [hl], $55
    inc c
    ld l, [hl]
    rla
    ld l, a
    ld de, $6d5c
    nop
    nop
    ld a, [hl+]
    inc bc
    jr jr_00e_4816

    ld b, d
    ld [$0002], sp
    ld a, [hl+]
    ld c, e
    ld d, b
    ld b, [hl]
    ld e, d
    ld c, e
    inc bc
    ld [bc], a
    ld h, h
    xor e
    ld [hl], a
    ldh [rHDMA5], a
    ld a, [bc]
    ld e, b
    ld l, l

jr_00e_486a:
    dec c
    ld c, b
    ld e, a
    nop

jr_00e_486e:
    ld a, [hl+]
    ld b, e
    jr jr_00e_4832

    ld b, d
    ld [$0002], sp
    dec hl
    dec l
    ld [hl-], a
    scf
    ld e, $4b
    ld d, $03
    rst $38
    ld c, [hl]
    ld d, l
    dec bc
    ld l, b
    xor c

jr_00e_4884:
    ld l, b
    ld e, h

jr_00e_4886:
    inc sp
    ld c, [hl]
    ld c, b
    inc bc
    inc h
    inc bc
    jr c, @-$3e

    inc bc
    ld [$0006], sp
    inc l
    inc a
    ld b, c
    ld b, [hl]
    jr z, jr_00e_48ed

    ld d, $03
    rst $38
    add h
    ld h, [hl]
    ld b, c
    ld l, c
    ld a, b

jr_00e_48a0:
    ld l, d
    ld d, b
    ld c, a
    ld c, [hl]
    nop
    inc bc
    inc h
    inc bc
    jr c, jr_00e_486a

jr_00e_48aa:
    inc bc
    ld [$0006], sp
    dec l
    ld e, a
    ld d, b
    ld d, l
    ld [hl-], a
    ld l, [hl]
    ld d, $03
    ld l, [hl]
    cp b
    ld [hl], a
    ld hl, $826b
    ld l, h
    ld c, a
    ld c, [hl]
    ld d, b
    nop
    inc bc
    and h
    ld b, e
    jr c, jr_00e_4886

jr_00e_48c6:
    inc bc
    ld [$0006], sp
    ld l, $23
    ld b, [hl]
    scf
    add hl, de
    scf
    rlca
    ld d, $ff
    ld b, [hl]
    ld d, l
    or h
    ld [hl], b
    ld [hl], a
    ld [hl], c
    adc l
    ld e, h
    ld c, b
    ld c, [hl]
    nop
    and h
    inc bc
    jr c, jr_00e_48aa

    add e
    ld [$0006], sp
    cpl
    inc a
    ld e, a
    ld d, b

jr_00e_48ea:
    ld e, $50
    rlca

jr_00e_48ed:
    ld d, $c8
    add b
    ld [hl], a
    xor b
    ld e, c
    adc h
    ld e, e
    ld c, [hl]
    ld c, b
    ld [hl+], a
    sub e
    nop
    and h
    ld b, e
    jr c, jr_00e_48c6

    add e
    ld [$0006], sp
    jr nc, jr_00e_4940

    scf
    ld [hl-], a
    dec l
    jr z, jr_00e_4910

    inc bc
    rst $38
    ld c, e
    ld d, l
    ld d, a
    ld [hl], e
    ld e, h

jr_00e_4910:
    ld [hl], h
    ld e, h
    inc a
    ld c, [hl]
    nop
    nop
    jr nz, jr_00e_491b

    jr c, jr_00e_48ea

    inc bc

jr_00e_491b:
    jr z, @+$04

    nop
    ld sp, $4146
    inc a
    ld e, d
    ld e, d
    rlca
    inc bc

jr_00e_4926:
    ld bc, $778a
    xor c
    ld b, [hl]
    ld b, c
    ld c, b
    ld e, [hl]
    ld c, [hl]
    ld c, a
    nop
    nop
    ld a, [hl+]
    ld b, e
    jr c, jr_00e_4926

    ld b, e
    jr z, jr_00e_493b

    nop
    ld [hl-], a

jr_00e_493b:
    ld a, [bc]
    scf
    add hl, de
    ld e, a
    dec l

jr_00e_4940:
    inc b
    inc b
    rst $38
    ld d, c
    ld d, l
    inc sp
    ld l, l
    db $10
    ld l, [hl]
    inc e
    and e
    nop
    nop
    nop
    and b
    inc bc
    ld [$02ce], sp
    adc b
    ld [bc], a
    nop
    inc sp
    inc hl
    ld d, b
    ld [hl-], a
    ld a, b
    ld b, [hl]
    inc b
    inc b
    ld bc, $6699
    add b
    ld b, h
    ld a, [hl+]
    ld b, [hl]
    ld e, e
    inc e
    ld [hl+], a
    ld e, d
    nop
    and b
    ld b, e
    ld [$02ce], sp
    adc b
    ld [bc], a
    nop
    inc [hl]
    jr z, jr_00e_49a2

    inc hl
    ld e, d
    jr z, jr_00e_4979

jr_00e_4979:
    nop
    rst $38
    ld b, l
    ld d, l
    add hl, bc
    ld b, [hl]
    rra
    ld b, a
    inc l
    nop
    nop
    nop
    nop
    and b
    adc a
    adc b
    pop bc
    jp nz, $0208

    nop
    dec [hl]
    ld b, c
    ld b, [hl]
    inc a
    ld [hl], e
    ld b, c
    nop
    nop
    ld bc, $7794
    ld e, $6d
    inc b
    ld l, a
    and e
    ld e, a
    nop
    nop
    nop

jr_00e_49a2:
    and b
    rst $08
    adc b
    pop bc
    jp nz, $0208

    nop
    ld [hl], $32
    inc [hl]
    jr nc, jr_00e_49e6

    ld [hl-], a
    dec d
    dec d
    rst $38
    ld d, b
    ld d, l
    ld a, [bc]
    ld e, h
    ld a, $5d
    ld e, l
    dec a
    nop
    nop
    nop
    or c
    cp a
    rrca
    ret z

    jp nz, $3208

    nop
    scf
    ld d, b
    ld d, d
    ld c, [hl]
    ld d, l
    ld d, b
    dec d
    dec d
    sbc e
    xor [hl]
    ld [hl], a
    ld [$c251], sp
    ld d, d
    ld a, a
    ld e, [hl]
    ld [hl+], a
    ld e, a
    nop
    or c
    rst $38
    rrca
    ret z

    jp nz, $3208

    nop
    jr c, @+$2a

    ld d, b
    inc hl

jr_00e_49e6:
    ld b, [hl]
    inc hl
    ld bc, $ff01
    ld c, d
    ld d, l
    ld de, $166a
    ld l, e
    ld [bc], a
    ld b, e
    nop
    nop
    nop
    or c
    add e
    adc a
    ret


    add $88
    ld [hl+], a
    nop
    add hl, sp
    ld b, c
    ld l, c
    inc a
    ld e, a
    inc a
    ld bc, $af01
    sub l
    ld [hl], a
    ld b, a
    ld b, d
    ld [$4244], sp
    ld [hl+], a
    ld b, l
    sbc l
    nop
    or c
    jp $c98f


    add $88
    ld [hl+], a
    nop
    ld a, [hl-]
    scf
    ld b, [hl]
    dec l
    inc a
    ld [hl-], a
    inc d
    inc d
    rst $38
    ld e, e
    ld d, l
    nop
    ld b, b
    ld bc, $2c41
    inc h
    inc [hl]
    nop
    dec b
    and b
    inc bc
    ld c, b
    ret z

    db $e3
    ld [$0002], sp
    dec sp
    ld e, d
    ld l, [hl]
    ld d, b
    ld e, a
    ld d, b
    inc d
    inc d
    ld e, $d5
    ld [hl], a
    rst $38
    ld h, [hl]
    dec a
    ld l, c
    ld a, [hl]
    ld [hl+], a
    ld e, e
    nop
    dec b
    and b
    ld b, e
    ld c, b
    add sp, -$1d
    ld [$0002], sp
    inc a
    jr z, jr_00e_4a87

    jr z, jr_00e_4ab1

    jr z, jr_00e_4a6e

    dec d
    rst $38
    ld c, l
    ld d, l
    ld [hl], l
    ld a, b
    ld b, a
    ld a, c
    dec a
    ld e, a
    nop
    nop
    inc bc
    and b
    ccf
    ld [$82d0], sp
    jr z, jr_00e_4a7f

    nop

jr_00e_4a6e:
    dec a
    ld b, c
    ld b, c
    ld b, c
    ld e, d
    ld [hl-], a
    dec d
    dec d
    rst $38
    add e
    ld h, [hl]
    db $ed
    ld [hl], c
    ld e, [hl]
    ld [hl], e
    ld b, d
    ld a, a

jr_00e_4a7f:
    ld e, a
    ld b, l
    inc bc
    or c
    ccf
    rrca
    sub $86

jr_00e_4a87:
    jr z, jr_00e_4abb

    nop
    ld a, $5a
    ld d, l
    ld e, a
    ld b, [hl]
    ld b, [hl]
    dec d
    ld bc, $b996
    ld [hl], a
    pop bc
    ld [hl], e
    inc l
    ld [hl], l
    ld a, a
    ld a, [hl-]
    ld e, c
    adc [hl]
    inc bc
    or c
    ld a, a
    rrca
    sub $86
    jr z, jr_00e_4ad7

    nop
    ccf
    add hl, de
    inc d
    rrca
    ld e, d
    ld l, c
    jr @+$1a

    ld bc, $5549

jr_00e_4ab1:
    call z, $cf73
    ld [hl], h
    ld e, l
    add [hl]
    nop
    nop
    inc bc
    or c

jr_00e_4abb:
    inc bc
    rrca
    ldh a, [$87]
    jr c, jr_00e_4b04

    nop
    ld b, b
    jr z, @+$25

    ld e, $69
    ld a, b
    jr jr_00e_4ae2

    ld bc, $6691
    jr nc, jr_00e_4b17

    cp c
    ld c, c
    add [hl]
    inc a
    ld d, [hl]
    nop
    inc bc
    or c

jr_00e_4ad7:
    inc bc
    rrca
    ld hl, sp-$79
    jr c, jr_00e_4b20

    nop
    ld b, c
    scf
    ld [hl-], a
    dec l

jr_00e_4ae2:
    ld a, b
    add a
    jr jr_00e_4afe

    ld bc, $77dc
    ld e, d
    ld [hl], l
    ld a, c
    ld [hl], a
    ld d, [hl]
    ld e, [hl]
    ld l, c
    nop
    inc bc
    or c
    ld b, e
    rrca
    ld hl, sp-$79
    jr c, jr_00e_4b3c

    nop
    ld b, d
    ld b, [hl]
    ld d, b
    ld [hl-], a

jr_00e_4afe:
    inc hl
    inc hl
    ld bc, $ff01
    ld e, b

jr_00e_4b04:
    ld d, l
    sbc a
    ld l, h
    and d
    ld l, l
    ld [bc], a
    ld b, e
    nop
    nop
    inc bc
    or c
    inc bc
    rrca
    adc $a6
    adc b
    ld [hl+], a
    nop
    ld b, e

jr_00e_4b17:
    ld d, b
    ld h, h
    ld b, [hl]
    dec l
    ld [hl-], a
    ld bc, $ff01
    sub d

jr_00e_4b20:
    ld [hl], a
    add l
    ld c, [hl]
    ld h, e
    ld d, b
    ld [bc], a

jr_00e_4b26:
    ld b, e
    ld b, d
    nop
    inc bc
    or c
    inc bc
    rrca
    adc $a6
    adc b
    ld [hl+], a
    nop
    ld b, h
    ld e, d
    add d
    ld d, b
    scf
    ld d, l
    ld bc, $3201
    pop bc

jr_00e_4b3c:
    ld [hl], a
    sub e
    ld c, [hl]
    adc h
    ld d, b
    ld b, d

jr_00e_4b42:
    ld [hl+], a
    sbc l
    ld e, c
    inc bc
    or c
    ld b, e
    rrca
    adc $a6
    adc b
    ld [hl+], a
    nop
    ld b, l
    ld [hl-], a
    ld c, e
    inc hl
    jr z, jr_00e_4b9a

    ld d, $03
    sub [hl]
    ld d, h
    ld d, l
    nop
    ld l, l
    cp d
    ld l, l
    ld e, h

jr_00e_4b5e:
    ld c, [hl]
    ld h, $00
    inc bc
    inc h
    inc bc
    jr c, jr_00e_4b26

    inc bc
    ld [$0006], sp
    ld b, [hl]
    ld b, c
    ld e, d
    ld [hl-], a
    scf
    ld d, l
    ld d, $03
    ld d, b
    sub a
    ld h, [hl]
    jr nc, jr_00e_4be5

    ld l, a
    ld l, a
    ld c, a

jr_00e_4b7a:
    ld c, [hl]
    ld [hl+], a
    nop
    inc bc
    inc h
    inc bc
    jr c, jr_00e_4b42

    inc bc
    ld [$0006], sp
    ld b, a
    ld d, b
    ld l, c
    ld b, c
    ld b, [hl]
    ld h, h
    ld d, $03
    dec l
    cp a
    ld [hl], a
    ld [$b26f], a
    ld [hl], c
    ld c, e

jr_00e_4b96:
    ld c, [hl]
    ld [hl+], a
    adc [hl]
    inc bc

jr_00e_4b9a:
    and h
    ld b, e
    jr c, jr_00e_4b5e

    inc bc
    ld [$0006], sp
    ld c, b
    jr z, @+$2a

    inc hl
    ld b, [hl]
    ld h, h
    dec d
    inc bc
    ld h, h
    ld l, c
    ld d, l
    ld a, [hl+]
    ld l, [hl]
    inc e
    ld l, a
    inc hl
    jr nc, jr_00e_4c10

    dec a
    dec b
    inc h
    ccf
    jr jr_00e_4b7a

    add e
    ld [$0016], sp
    ld c, c
    ld d, b
    ld b, [hl]
    ld b, c
    ld h, h
    ld a, b
    dec d
    inc bc
    ld bc, $66cd
    ld d, l
    ld b, h
    jp $2345


    add hl, sp
    nop
    nop
    dec b
    inc h
    ld a, a
    jr jr_00e_4b96

    add e
    ld [$0016], sp
    ld c, d
    jr z, jr_00e_4c2d

    ld h, h
    inc d
    ld e, $05
    inc b
    rst $38
    ld d, [hl]
    ld d, l

jr_00e_4be5:
    ld c, a
    ld d, [hl]
    add hl, hl
    ld d, a
    ld a, b
    nop
    nop
    nop
    inc bc
    and c
    inc bc
    rrca
    adc $2e
    ret z

    ld [hl+], a
    nop
    ld c, e
    scf
    ld e, a
    ld [hl], e
    inc hl
    dec l
    dec b
    inc b
    inc a
    add [hl]
    ld h, [hl]
    ld c, h
    ld c, d
    nop
    ld c, h
    ld e, e
    ld a, b
    sbc l
    sbc c
    inc bc
    and c
    inc bc
    rrca
    adc $2e
    ret z

jr_00e_4c10:
    ld [hl+], a
    nop
    ld c, h
    ld d, b
    ld l, [hl]
    add d
    dec l
    scf
    dec b
    inc b
    ld bc, $66b1
    ld [hl], h
    ld e, a
    ld a, [c]
    ld h, b
    ld [hl+], a
    sbc l
    ld e, c
    sbc c
    inc bc
    or c
    ld b, e
    rrca
    adc $2e
    ret z

    ld [hl+], a

jr_00e_4c2d:
    nop
    ld c, l
    ld [hl-], a
    ld d, l
    scf
    ld e, d
    ld b, c
    inc d
    inc d
    ret z

    sbc b
    ld h, [hl]
    or c
    ld c, d
    ld [hl-], a
    ld c, [hl]
    inc [hl]
    jr jr_00e_4c57

    nop
    nop
    ldh [$03], a
    ld [$e3c0], sp
    ld [$0002], sp
    ld c, [hl]
    ld b, c
    ld h, h
    ld b, [hl]
    ld l, [hl]
    ld d, b
    inc d
    inc d
    ld bc, $77c0
    db $10
    ld c, h

jr_00e_4c57:
    cp d
    ld c, [hl]
    jr nz, jr_00e_4c5b

jr_00e_4c5b:
    nop
    nop
    nop
    ldh [rSCX], a
    ld [$e3c0], sp
    ld [$0002], sp
    ld c, a
    ld e, d
    ld b, c
    ld b, c
    rrca
    jr z, jr_00e_4c82

    jr jr_00e_4cbf

    ld h, e
    ld d, l
    and b
    ld b, [hl]
    jp nz, Jump_00e_5d47

    dec a
    dec e
    nop
    nop
    and b
    cp a
    ld [$e3fe], sp
    jr c, jr_00e_4cf4

    nop

jr_00e_4c82:
    ld d, b
    ld e, a
    ld c, e
    ld l, [hl]
    ld e, $50
    dec d
    jr jr_00e_4c8c

    and h

jr_00e_4c8c:
    ld [hl], a
    ld a, [bc]
    ld c, l
    add a
    ld c, a
    ld e, l
    ld a, a
    ld d, [hl]
    nop
    nop
    or c
    rst $38
    rrca
    cp $e3
    jr c, jr_00e_4d10

    nop
    ld d, c
    add hl, de
    inc hl
    ld b, [hl]
    dec l
    ld e, a
    rla
    rla
    rst $38
    ld e, c
    ld d, l
    add a
    ld e, e
    dec c
    ld e, h
    ld d, l
    ld sp, $2656
    nop
    jr nz, jr_00e_4cb7

    adc b
    pop hl
    ld b, e

jr_00e_4cb7:
    jr @+$44

    nop
    ld d, d
    ld [hl-], a
    inc a
    ld e, a
    ld b, [hl]

jr_00e_4cbf:
    ld a, b
    rla
    rla
    ld e, $a1
    ld h, [hl]
    adc b
    ld h, l
    inc hl
    ld h, a
    ld d, [hl]
    ld d, l
    ld l, b
    ld h, $00
    jr nz, jr_00e_4d13

    adc b
    pop hl
    ld b, e
    jr @+$44

    nop
    ld d, e
    inc [hl]
    ld b, c
    scf
    inc a
    ld a, [hl-]
    nop
    ld [bc], a
    rst $38
    ld e, [hl]
    ld h, [hl]
    jp hl


    ld [hl], b
    add $72
    and h
    inc e
    and e
    nop
    nop
    xor [hl]
    inc bc
    ld [$c3c0], sp
    ld [$000e], sp
    ld d, h
    inc hl

jr_00e_4cf4:
    ld d, l
    dec l
    ld c, e
    inc hl
    nop
    ld [bc], a
    jp nc, Jump_00e_5560

    inc l
    ld [hl], a
    dec c
    ld a, b
    ld b, b
    inc h
    jr jr_00e_4d05

jr_00e_4d05:
    nop
    xor b
    inc bc
    ld [$83c0], sp
    inc c
    dec bc
    nop
    ld d, l
    inc a

jr_00e_4d10:
    ld l, [hl]
    ld b, [hl]
    ld h, h

jr_00e_4d13:
    inc a
    nop
    ld [bc], a
    ld bc, $779e
    nop
    ld b, b
    and d
    ld b, c
    ld [hl+], a
    ccf
    ld b, c
    nop
    nop
    xor b
    ld b, e
    ld [$83c0], sp
    inc c
    dec bc
    nop
    ld d, [hl]
    ld b, c
    dec l
    scf
    dec l
    ld b, [hl]
    dec d
    dec d
    rst $38
    ld h, h
    ld h, [hl]
    add h
    ld l, e
    add sp, $6c
    ld a, $1d
    dec a
    sbc h
    nop
    ldh [$bf], a
    ld [$82c0], sp
    ld [$0032], sp
    ld d, a
    ld e, d
    ld b, [hl]
    ld d, b
    ld b, [hl]
    ld e, a
    dec d
    add hl, de
    ld e, $b0
    ld h, [hl]
    sbc c
    ld c, b
    ld [c], a
    ld c, c
    ld a, [hl-]
    ld a, a
    ld [hl+], a
    jr nz, jr_00e_4d5a

jr_00e_4d5a:
    ldh [rIE], a
    ld [$82c0], sp
    ld [$0032], sp
    ld e, b
    ld d, b
    ld d, b
    ld [hl-], a
    add hl, de
    jr z, jr_00e_4d6c

    inc bc
    rst $38
    ld e, d

jr_00e_4d6c:
    ld d, l
    ld [hl], e
    ld e, c
    or b
    ld e, d
    ld e, h
    ld a, h
    sbc c
    nop
    nop
    and b
    nop
    sbc b
    pop bc
    ld a, [hl+]
    ld c, b
    ld [bc], a
    nop
    ld e, c
    ld l, c
    ld l, c
    ld c, e
    ld [hl-], a
    ld b, c
    inc bc
    inc bc
    ld c, e
    sbc l
    ld [hl], a
    ld d, [hl]
    ld e, a
    ld e, a
    ld h, c
    ld a, h
    sbc c
    ld e, h
    ld [hl+], a
    nop
    and b
    ld b, b
    sbc b
    pop bc
    ld a, [hl+]
    ld c, b
    ld [bc], a
    nop
    ld e, d
    ld e, $41
    ld h, h
    jr z, @+$2f

    dec d
    dec d
    ld l, [hl]
    ld h, c
    ld d, l
    or [hl]
    ld l, h
    jp $996d


    add b
    ld a, $00
    dec b
    jr nz, jr_00e_4def

    ld [$4be0], sp
    ld c, b
    inc de
    nop
    ld e, e
    ld [hl-], a
    ld e, a
    or h
    ld b, [hl]
    ld d, l
    dec d
    add hl, de
    ld bc, $77cb
    ld a, a
    ld h, h
    xor e
    ld h, [hl]
    sbc c
    dec sp
    add b
    nop
    dec b
    jr nz, jr_00e_4e4b

    ld [$4be0], sp
    ld c, b
    inc de
    nop
    ld e, h
    ld e, $23
    ld e, $50
    ld h, h
    ld [$2803], sp
    ld e, a
    ld [hl], a
    ld [hl], a
    ld l, a
    sub b
    ld [hl], c
    ld e, a
    ld l, l
    ld h, l
    nop
    inc bc
    jr nz, jr_00e_4de8

jr_00e_4de8:
    sbc b
    pop de
    ld a, [bc]
    ld l, d
    ld [bc], a
    nop
    ld e, l

jr_00e_4def:
    dec l
    ld [hl-], a
    dec l
    ld e, a
    ld [hl], e
    ld [$0103], sp
    ld a, [hl]
    ld h, [hl]
    adc d
    ld [hl], c
    ld b, l
    ld [hl], e
    ld e, a
    ld l, l
    ld h, l
    nop
    inc bc
    jr nz, jr_00e_4e04

jr_00e_4e04:
    sbc b
    pop de
    ld a, [bc]
    ld l, d
    ld [bc], a
    nop
    ld e, [hl]
    inc a
    ld b, c
    inc a
    ld l, [hl]
    add d
    ld [$0103], sp
    cp [hl]
    ld h, [hl]
    db $76
    ld e, e
    add $5c
    sbc c
    ld e, a
    ld e, [hl]
    ld h, l
    inc bc
    or c
    ld b, e
    sbc a
    pop de
    adc [hl]
    ld l, d
    ld [hl+], a
    nop
    ld e, a
    inc hl
    dec l
    and b
    ld b, [hl]
    ld e, $05
    inc b
    rst $38
    ld l, h
    ld [hl], a
    ld h, h
    ld b, c
    nop
    ld b, e
    inc d
    ld e, c
    sbc l
    nop
    nop
    and b
    inc bc
    ld [$8ace], sp
    ret z

    ld [hl+], a
    nop
    ld h, b
    inc a
    jr nc, jr_00e_4e73

    ld a, [hl+]
    ld e, d
    jr jr_00e_4e62

    add d

jr_00e_4e4b:
    ld h, [hl]
    ld h, [hl]
    xor c
    ld e, l
    dec b
    ld e, a
    ld e, l
    ld e, a
    nop
    nop
    nop
    or c
    inc bc
    rrca
    ldh a, [$87]
    ld a, [hl-]
    ld b, e
    nop
    ld h, c
    ld d, l
    ld c, c
    ld b, [hl]

jr_00e_4e62:
    ld b, e
    ld [hl], e
    jr jr_00e_4e7e

    ld bc, $77a5
    ld e, l
    ld d, e
    ld d, d
    ld d, l
    ld d, [hl]
    ld e, a
    ld e, [hl]
    nop
    nop
    or c

jr_00e_4e73:
    ld b, e
    rrca
    ldh a, [$87]
    ld a, [hl-]
    ld b, e
    nop
    ld h, d
    ld e, $69
    ld e, d

jr_00e_4e7e:
    ld [hl-], a
    add hl, de
    dec d
    dec d
    rst $38
    ld [hl], e
    ld d, l
    ld [hl], a
    ld b, a
    or b
    ld c, b
    sbc b
    dec bc
    nop
    nop
    nop
    and h
    ccf
    ld [$02c0], sp
    ld [$0036], sp
    ld h, e
    scf
    add d
    ld [hl], e
    ld c, e
    ld [hl-], a
    dec d
    dec d
    ld e, $ce
    ld [hl], a
    db $ec
    ld h, c
    sbc $63
    sbc b
    ld [hl+], a
    inc c
    nop
    nop
    and h
    ld a, a
    ld [$02c0], sp
    ld [$0036], sp
    ld h, h
    jr z, jr_00e_4ed3

    ld [hl-], a
    ld h, h
    scf
    rla
    rla
    and b
    ld h, a
    ld d, l
    ld de, $9a49
    ld c, c
    ld sp, $9978
    ld d, [hl]
    nop
    jr nz, jr_00e_4ec9

    adc b

jr_00e_4ec9:
    pop hl
    ld c, e
    ld e, b
    ld b, d
    nop
    ld h, l
    inc a
    ld [hl-], a
    ld b, [hl]
    adc h

jr_00e_4ed3:
    ld d, b
    rla
    rla
    ld bc, $5596
    ld h, b
    ld h, a
    daa
    ld l, b
    sbc c
    ld d, l
    ld d, [hl]
    nop
    nop
    jr nz, jr_00e_4f25

    adc b
    pop hl
    bit 3, b
    ld b, d
    nop
    ld h, [hl]
    ld d, b
    ld b, c
    ld d, b
    jr z, jr_00e_4f40

    ld d, $18
    ld bc, $779e
    rst $10
    ld d, [hl]
    ldh a, [$58]
    ld e, a
    inc a
    sbc c
    ld c, [hl]
    dec b
    jr nz, jr_00e_4f03

    ld [$1bf0], sp

jr_00e_4f03:
    ld l, b
    ld [bc], a
    nop
    ld h, a
    ld e, a
    ld e, a
    ld d, l
    scf
    ld a, l
    ld d, $18

jr_00e_4f0e:
    ld bc, $77d4
    sub $51
    ld hl, sp+$53
    ld c, [hl]
    ld c, a
    ld e, [hl]
    nop
    dec b
    jr nz, jr_00e_4f5f

    jr c, jr_00e_4f0e

    dec de
    ld l, b
    ld [hl+], a
    nop
    ld l, b
    ld [hl-], a
    ld [hl-], a

jr_00e_4f25:
    ld e, a
    inc hl
    jr z, jr_00e_4f2d

    inc b
    rst $38
    ld d, a
    ld d, l

jr_00e_4f2d:
    xor b
    ld h, b
    sub [hl]
    ld h, c
    ld a, l
    dec e
    nop
    nop
    nop
    or c
    ccf
    rrca
    adc $a2
    ld [$0022], sp
    ld l, c
    inc a

jr_00e_4f40:
    ld d, b
    ld l, [hl]
    dec l
    ld [hl-], a
    inc b
    inc b
    or h
    ld a, h
    ld h, [hl]
    adc a
    ld l, a
    ld bc, $9b71
    sbc l
    ld e, c
    ld [hl+], a
    nop
    or c
    ld a, a
    rrca
    adc $a2
    ld [$0022], sp
    ld l, d
    ld [hl-], a
    ld a, b
    dec [hl]
    ld d, a

jr_00e_4f5f:
    inc hl
    ld bc, $ff01
    adc e
    ld [hl], a
    cp a
    ld d, d
    ld e, [hl]
    ld d, h
    adc b
    ld [hl+], a
    ld b, l
    nop
    nop
    or c
    inc bc
    rrca
    ret nz

    add $08
    ld [hl+], a
    nop
    ld l, e
    ld [hl-], a
    ld l, c
    ld c, a
    ld c, h
    inc hl
    ld bc, $ff01
    adc h
    ld h, [hl]
    cp h
    ld d, h
    ld b, e
    ld d, [hl]
    ld b, d
    ld [hl+], a
    ld b, l
    nop
    nop
    or c
    inc bc
    rrca
    ret nz

    add $08
    ld [hl+], a
    nop
    ld l, h
    ld e, d
    scf
    ld c, e
    ld e, $3c
    nop
    nop
    rst $38
    ld a, a
    ld [hl], a
    and a
    ld d, h
    ld a, $56
    ld a, d
    inc hl
    ld [hl+], a
    nop
    nop
    or l
    ld a, a
    adc a
    rst $00
    and d
    ld [$0036], sp
    ld l, l
    jr z, @+$43

    ld e, a
    inc hl
    inc a
    inc bc
    inc bc
    rst $38
    ld [hl], d
    ld h, [hl]
    and [hl]
    ld h, a
    ld [hl], h
    ld l, c
    ld l, h
    ld a, h
    sbc c
    ld e, h
    nop
    jr nz, jr_00e_4fc4

jr_00e_4fc4:
    adc b
    pop bc
    ld a, [hl+]
    ld c, b
    ld [bc], a
    nop
    ld l, [hl]
    ld b, c
    ld e, d
    ld a, b
    inc a
    ld d, l
    inc bc
    inc bc
    ld e, $ad
    ld [hl], a
    ld b, h
    ld l, d
    db $76
    ld l, h
    ld e, h
    sbc c
    ld a, h
    ld a, [hl]
    nop
    jr nz, jr_00e_5020

    adc b
    pop bc
    ld a, [hl+]
    ld c, b
    ld [bc], a
    nop
    ld l, a
    ld d, b
    ld d, l
    ld e, a
    add hl, de
    ld e, $04
    dec b
    call c, Call_00e_7787
    ld [$0f62], sp
    ld h, h
    ld h, $00
    nop
    nop
    dec b
    ldh [$03], a
    adc b
    rst $08
    and d
    adc b
    ld [hl+], a
    nop
    ld [hl], b
    ld l, c
    add d
    ld a, b
    jr z, jr_00e_5035

    inc b
    dec b
    ld bc, $77cc
    nop
    ld b, b
    ld [bc], a
    ld b, d
    ld e, c

jr_00e_5012:
    ld [hl+], a
    sbc l
    nop
    dec b
    pop af
    rst $38
    adc a
    rst $08
    and d
    adc b
    ld [hl-], a
    nop
    ld [hl], c
    rst $38

jr_00e_5020:
    dec b
    dec l
    ld [hl-], a
    ld l, c
    nop
    nop
    ld bc, $66ff
    xor [hl]
    ld c, h
    ld hl, $6b4e
    ld b, l
    ld d, [hl]
    add a
    inc b
    or c
    ld a, a
    xor a

jr_00e_5035:
    pop af
    or a
    add hl, sp
    ld h, e
    nop
    ld [hl], d
    ld b, c
    scf
    ld [hl], e
    inc a
    ld h, h
    ld d, $16
    ld d, b
    and [hl]
    ld h, [hl]
    add hl, sp
    ld a, e
    rst $20
    ld a, h
    ld c, [hl]
    ld c, a
    inc hl
    nop
    nop
    and h
    ld b, e
    jr c, jr_00e_5012

    add d
    ld [$0006], sp
    ld [hl], e
    ld l, c
    ld e, a
    ld d, b
    ld e, d
    ld c, e
    nop
    nop
    or h
    xor a
    ld [hl], a
    sbc d
    ld b, d
    and [hl]
    ld b, h
    ld [hl+], a
    nop
    nop
    nop
    nop
    or c
    ld a, a
    adc a
    rst $00
    and d
    adc b
    ld [hl-], a
    nop
    ld [hl], h
    ld e, $28
    ld b, [hl]
    inc a
    ld b, [hl]
    dec d
    dec d
    rst $38
    ld d, e
    ld d, l
    pop bc
    ld d, a
    ld [hl], e
    ld e, b
    ld e, h
    dec a
    ld l, h
    nop
    nop
    jr nz, jr_00e_50c7

    ld [$c2c0], sp
    ld [$0012], sp
    ld [hl], l
    scf
    ld b, c
    ld e, a
    ld d, l
    ld e, a
    dec d
    dec d
    ld c, e
    sbc e
    ld h, [hl]
    call nz, $2b58
    ld e, d
    ld d, d
    nop
    nop
    nop
    nop
    jr nz, jr_00e_5123

    ld [$c2c0], sp
    ld [$0012], sp
    db $76
    dec l
    ld b, e
    inc a
    ccf
    ld [hl-], a
    dec d
    dec d
    rst $38
    ld l, a
    ld h, [hl]
    ld l, a
    ld b, [hl]
    sub [hl]
    ld b, a
    ld b, b
    ld a, a
    jr nc, jr_00e_50bd

jr_00e_50bd:
    nop
    ld h, b
    ccf
    ld [$c2c0], sp
    ld [$0012], sp
    ld [hl], a

jr_00e_50c7:
    ld d, b
    ld e, h
    ld b, c
    ld b, h
    ld d, b
    dec d
    dec d
    ld e, $aa
    ld [hl], a
    inc bc
    ld c, b
    inc bc
    ld c, d
    jr nz, jr_00e_50d7

jr_00e_50d7:
    nop
    nop
    nop
    ld h, b
    ld a, a
    ld [$c2c0], sp
    ld [$0012], sp
    ld a, b
    ld e, $2d
    scf
    ld d, l
    ld b, [hl]
    dec d
    dec d
    ld bc, $666a
    ldh [$74], a
    db $ec
    ld [hl], l
    ld h, $00
    nop
    nop
    dec b
    jr nz, jr_00e_5137

    adc b
    pop af
    jp $5338


    nop
    ld a, c
    inc a
    ld c, e
    ld d, l
    ld [hl], e
    ld h, h
    dec d
    jr jr_00e_5108

    rst $08

jr_00e_5108:
    ld h, [hl]
    inc e
    ld a, h
    xor h
    ld a, l
    ld d, [hl]
    dec sp
    ld d, l
    ld l, c
    dec b
    jr nz, jr_00e_5193

    adc b
    pop af
    jp $5338


    nop
    ld a, d
    jr z, @+$2f

    ld b, c
    ld e, d
    ld h, h
    jr jr_00e_513a

    ld l, c

jr_00e_5123:
    adc b
    ld h, [hl]
    di
    ld d, b
    ld b, a
    ld d, d
    inc a
    ld d, [hl]
    nop
    nop
    nop
    or c
    ld b, e
    xor a
    pop af
    add a
    jr c, jr_00e_5177

    nop
    ld a, e

jr_00e_5137:
    ld b, [hl]
    ld l, [hl]
    ld d, b

jr_00e_513a:
    ld l, c
    scf
    rlca
    ld [bc], a
    inc d
    cp e
    ld [hl], a
    inc e
    ld [hl], d
    inc a
    ld [hl], h
    and h
    and e
    ld h, d
    ld de, $2400
    ld b, e
    ld [$c2c0], sp
    ld [$0006], sp
    ld a, h
    ld b, c
    ld [hl-], a
    inc a
    ld h, h
    ld [hl], e
    add hl, de
    jr jr_00e_515c

    adc c

jr_00e_515c:
    ld h, [hl]
    adc [hl]
    ld a, c
    ld b, d
    ld a, e
    ld e, [hl]
    adc [hl]
    dec sp
    nop
    nop
    or c
    ld a, a
    rrca
    ldh a, [$87]
    jr z, jr_00e_516f

    nop
    ld a, l

jr_00e_516f:
    ld b, c
    ld e, a
    inc a
    ld l, [hl]
    ld h, h
    rla
    rla
    ret z

jr_00e_5177:
    sbc h
    ld h, [hl]
    ld h, a
    ld h, e
    rst $28
    ld h, h
    ld e, [hl]
    ld d, l
    ld [$0056], sp
    or c
    ld b, e
    adc a
    pop af
    rst $00
    jr c, @+$64

    nop
    ld a, [hl]
    ld b, c
    ld h, h
    inc a
    ld l, c
    ld a, l
    inc d
    inc d
    ret z

jr_00e_5193:
    and a
    ld h, [hl]
    ld h, c
    ld h, c
    cp a
    ld h, d
    ld l, l
    ld d, l
    ld [hl+], a
    ld a, [hl]
    nop
    or c
    ld b, e
    rrca
    ldh a, [$a6]
    jr z, jr_00e_51c7

    nop
    ld a, a
    ld b, c
    ld a, l
    ld h, h
    ld d, l
    scf
    rlca
    rlca
    ld bc, $77c8
    jp c, $aa78

    ld a, d
    inc hl
    inc c
    ld [hl+], a
    nop
    dec b
    and h
    ld b, e
    dec c
    ret nz

    ld [bc], a
    ld [$0026], sp
    add b
    ld c, e
    ld l, c
    ld e, a
    ld [hl], e

jr_00e_51c7:
    ld b, [hl]
    nop
    nop
    ld bc, $77d3
    ld a, [hl]
    ld l, [hl]
    ld d, h
    ld [hl], b
    ld [hl+], a
    ld e, c
    ccf
    nop
    dec b
    ldh [$73], a
    adc b
    rst $00
    and d
    ld [$0022], sp
    add c
    inc d
    ld a, [bc]
    scf
    ld d, b
    inc d
    dec d
    dec d
    rst $38
    inc d
    ld h, [hl]
    ld sp, $c35d
    ld e, [hl]
    sub [hl]
    sub c
    nop
    nop
    dec b
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    add d
    ld e, a
    ld a, l
    ld c, a
    ld d, c
    ld h, h
    dec d
    ld [bc], a
    ld bc, $77d6
    call nc, $2569
    ld l, h
    ld d, d
    nop
    nop
    nop
    dec b
    and b
    ld a, a
    ret z

    pop bc
    and e
    ld [$0032], sp
    add e
    add d
    ld d, l
    ld d, b
    inc a
    ld e, a
    dec d
    add hl, de
    ld bc, $77f0
    pop bc
    ld h, h
    ld a, h
    ld h, [hl]
    ld d, d
    nop
    nop
    nop
    dec b
    ldh [$7f], a
    add sp, -$2f
    add e
    jr z, jr_00e_5263

    nop
    add h
    ld h, h
    ld h, h
    ld h, h
    ld h, h
    ld h, h
    nop
    nop
    ld h, h
    dec a
    ld d, l
    inc d
    ld b, l
    cp l
    ld b, l
    sub b
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    add l
    scf
    scf
    ld [hl-], a
    scf
    ld b, c
    nop
    nop
    dec b
    ld e, h
    ld d, l
    ld sp, $2565
    ld h, [hl]
    ld h, d
    inc e
    nop
    nop
    nop
    and b

jr_00e_5263:
    inc bc
    ld [$c3c0], sp
    ld [$0002], sp
    add [hl]
    add d
    ld b, c
    inc a
    ld b, c
    ld l, [hl]
    dec d
    dec d
    ld bc, $66c4
    xor [hl]
    ld l, d
    ld [bc], a
    ld l, h
    ld a, [hl-]
    ld a, a
    inc e
    ld [hl+], a
    nop
    and b
    ld a, a
    ld [$c3c0], sp
    ld [$0012], sp
    add a
    ld b, c
    ld b, c
    inc a
    add d
    ld l, [hl]
    rla
    rla
    ld bc, $66c5
    adc a
    ld l, b
    ld a, [bc]
    ld l, d
    ld a, [hl+]
    inc e
    ld d, [hl]
    ld d, l
    nop
    and b
    ld b, e
    adc b
    pop bc
    jp $4218


    nop
    adc b
    ld b, c
    add d
    inc a
    ld b, c
    ld l, [hl]
    inc d
    inc d
    add d
    add $66
    adc l
    ld h, [hl]
    ld b, $68
    ld [hl+], a
    inc e
    ld a, [hl]
    nop
    nop
    and b
    ld b, e
    ld [$e3c0], sp
    ld [$0002], sp
    adc c
    ld b, c
    inc a
    ld b, [hl]
    jr z, jr_00e_530f

    nop
    nop
    or h
    add d
    ld h, [hl]
    add h
    ld d, a
    pop de
    ld e, b
    and c
    sbc a
    and b
    inc a
    nop
    jr nz, jr_00e_5347

    adc b
    pop af
    jp $4338


    nop
    adc d
    inc hl
    jr z, jr_00e_5342

    inc hl
    ld e, d
    dec b
    dec d
    inc bc
    ld a, b
    ld d, l
    sbc l
    ld e, [hl]
    db $76
    ld e, a
    ld a, a
    dec sp
    nop
    nop
    nop
    and b
    ccf
    ld [$03c0], sp
    ld [$0012], sp
    adc e
    ld b, [hl]
    inc a
    ld a, l
    scf
    ld [hl], e
    dec b
    dec d
    ld bc, $66c7
    db $d3
    ld e, a
    adc e
    ld h, c
    jr c, jr_00e_5342

    ld b, l
    ld [hl+], a
    nop
    ldh [$7f], a
    dec c
    ret nz

    add e

jr_00e_530f:
    ld [$0012], sp
    adc h
    ld e, $50
    ld e, d
    scf
    dec l
    dec b
    dec d
    inc bc
    ld [hl], a
    ld d, l
    ld h, h
    ld d, h
    add hl, hl
    ld d, l
    ld a, a
    dec sp
    and e
    nop
    nop
    and b
    ccf
    ld [$03c0], sp
    ld [$0012], sp
    adc l
    inc a
    ld [hl], e
    ld l, c
    ld d, b
    ld b, [hl]
    dec b
    dec d
    ld bc, $66c9
    add e
    ld d, l
    inc a
    ld d, a
    jr c, jr_00e_537a

    and e
    ld e, e
    nop

jr_00e_5342:
    or [hl]
    ld a, a
    dec c
    ret nz

    add e

jr_00e_5347:
    ld [$0012], sp
    adc [hl]
    ld d, b
    ld l, c
    ld b, c
    add d
    inc a
    dec b
    ld [bc], a
    ld bc, $77ca
    ld sp, $ec59
    ld e, d
    inc de
    nop
    nop
    nop
    dec b
    ld a, [hl+]
    ld b, e
    ld c, b
    ret nz

    ld h, e
    inc c
    ld a, [bc]
    nop
    adc a
    and b
    ld l, [hl]
    ld b, c
    ld e, $41
    nop
    nop
    ld bc, $779a
    add hl, de
    ld e, e
    push hl
    ld e, h
    dec e
    sbc h
    ld a, b
    nop
    dec b

jr_00e_537a:
    or c
    rst $38
    xor a
    rst $10
    xor a
    xor b
    ld [hl-], a
    nop
    sub b
    ld l, c
    ld d, l
    ld h, h
    ld d, l
    ld a, l
    add hl, de
    ld [bc], a
    ld bc, $77f0
    nop
    ld b, b
    jr c, jr_00e_53d3

    adc a
    dec sp
    nop
    nop
    dec b
    ld a, [hl+]
    ld a, a
    ld [$43c0], sp
    inc c
    ld a, [bc]
    nop
    sub c
    ld e, d
    ld e, d
    ld d, l
    ld h, h
    ld a, l
    rla
    ld [bc], a
    ld bc, $77f0
    sbc l
    ld b, d
    add h
    ld b, h
    ld d, [hl]
    ld b, c
    nop
    nop
    dec b
    ld a, [hl+]
    ld b, e
    adc b
    pop bc
    ld b, e
    inc e
    ld c, d
    nop
    sub d
    ld e, a
    ld h, h
    ld e, d
    ld e, d
    ld a, l
    inc d
    ld [bc], a
    ld bc, $77f0
    xor h
    ld a, e
    ld [bc], a
    ld a, [hl]
    ld a, [hl]
    adc a
    nop
    nop
    dec b
    ld a, [hl+]
    ld b, e
    ld [$63c0], sp

jr_00e_53d3:
    inc c
    ld a, [bc]
    nop
    sub e
    add hl, hl
    ld b, b
    dec l
    ld [hl-], a
    ld [hl-], a
    ld a, [de]
    ld a, [de]
    inc hl
    ld b, e
    ld d, l

jr_00e_53e1:
    ld d, c
    ld d, c
    inc [hl]
    ld d, d
    inc hl
    ld d, [hl]
    ld d, d
    nop
    dec b
    and b
    ccf
    ret z

    pop bc
    db $e3
    jr jr_00e_5403

    nop
    sub h
    dec a
    ld d, h
    ld b, c
    ld b, [hl]
    ld b, [hl]
    ld a, [de]
    ld a, [de]
    inc d
    sub b
    ld h, [hl]
    sub a
    ld d, d
    reti


    ld d, e
    ld d, d
    inc hl

jr_00e_5403:
    ld d, [hl]
    nop
    dec b
    ldh [$3f], a
    ret z

    pop bc
    db $e3
    jr jr_00e_541f

    nop
    sub l
    ld e, e
    add [hl]
    ld e, a
    ld d, b
    ld h, h
    ld a, [de]
    ld [bc], a
    ld bc, $77f5
    xor d
    ld [hl], h
    ld a, a
    db $76
    inc hl
    dec sp

jr_00e_541f:
    ld d, [hl]
    nop
    dec b
    ld [c], a
    ld a, a
    ret z

    pop bc
    db $e3
    jr jr_00e_545b

    nop
    sub [hl]
    ld l, d
    ld l, [hl]
    ld e, d
    adc h
    sbc d
    jr jr_00e_544a

    ld bc, $77ff
    ld a, a
    ld e, b
    add l
    ld e, d
    ld d, [hl]
    ld e, [hl]
    ld [hl+], a
    ld l, c
    dec b
    or c
    rst $38
    xor a
    pop af
    xor a
    jr c, @+$65

    nop
    ld de, $8000
    inc bc

jr_00e_544a:
    nop
    add b
    nop
    nop
    add b
    add hl, de
    call z, $1001
    nop
    add b
    ld b, $ed
    add b
    add hl, bc
    nop
    add b

jr_00e_545b:
    rra
    nop
    add b
    rrca
    jr nz, jr_00e_53e1

    dec c
    nop
    add b
    inc c
    nop
    add b
    dec bc
    nop
    add b
    dec b
    nop
    add b
    rlca
    nop
    rst $38
    ld bc, $8000
    ld a, [bc]
    nop
    add b
    add hl, de
    nop
    add b
    inc b
    nop
    add b
    dec de
    nop
    add b
    dec d
    nop
    add b
    ld e, $ee
    rst $38
    rla
    nop
    add b
    jr jr_00e_548a

jr_00e_548a:
    add b
    ld a, [de]
    nop
    add b
    inc e
    nop
    add b
    ld d, $00
    add b
    ld e, $02
    jr nz, jr_00e_54ab

    nop
    add b
    inc d
    nop
    add b
    ld [de], a
    nop
    add b
    nop
    nop
    nop
    nop
    nop
    nop
    rra
    jr nz, jr_00e_54e9

    rla
    rst $38

jr_00e_54ab:
    ret nz

    jr jr_00e_54ee

    and b
    ld c, $df
    inc b
    ld [bc], a
    nop
    add b
    inc e
    xor b
    ret nz

    inc h
    nop
    add b
    inc d
    ld a, [bc]
    ret nz

    rra
    ld c, b
    ld h, b
    jr nz, jr_00e_54cb

    ld b, b
    ld [de], a
    add b
    ret nz

    inc c
    xor $c0
    rla

jr_00e_54cb:
    ldh [rNR10], a
    ld e, $42
    rst $38
    ld hl, $6020
    dec c
    adc b
    jr nz, jr_00e_54e9

    ldh [rLCDC], a
    nop
    nop
    nop
    inc b
    rst $38
    jr nc, jr_00e_54e0

jr_00e_54e0:
    nop
    nop
    ld b, $8f
    rst $38
    inc e
    jr nz, @-$3e

    ld [de], a

jr_00e_54e9:
    and $dd
    nop
    nop
    nop

jr_00e_54ee:
    ld a, [bc]
    db $dd
    ld h, b
    inc c
    adc b
    ret nz

    dec bc
    xor d
    ld bc, $111d
    ld b, b
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    db $10
    db $dd
    ld bc, $441a
    ld b, b
    rrca
    inc a
    ret nz

    nop
    add b
    stop
    nop
    nop
    dec e
    ldh [$80], a
    dec bc
    cp e
    ld bc, $ff0e
    rst $38
    dec c
    rst $38
    rst $38
    add hl, bc
    ld hl, sp+$40
    add hl, bc
    add b

jr_00e_5523:
    ld b, b
    jr @+$01

    add b
    ld c, $ff
    rst $38
    add hl, de
    ld [hl], a
    db $10
    jr nz, jr_00e_554f

    ldh [rNR43], a
    rst $38
    ld b, b
    nop
    nop
    nop
    ld c, $e0
    ld h, b
    inc h
    ld c, a
    db $10
    inc h
    adc b
    ld h, b
    rrca
    xor $01
    add hl, bc
    xor $08
    nop
    nop
    nop
    nop
    nop
    nop
    rrca
    ld h, b
    ld b, b
    rrca

jr_00e_554f:
    ld b, b

Jump_00e_5550:
    add b
    ld d, $bb
    ld b, b
    jr @-$10

    ld bc, $9919
    db $10
    add hl, de
    inc a
    ld bc, $400f
    ret nz

Jump_00e_5560:
    rrca
    jr nz, jr_00e_5523

    nop
    jr nz, jr_00e_55a6

    nop
    rst $38
    rst $38
    rra
    ldh a, [rSB]
    rra
    rst $38
    ld b, b
    ld c, $ff
    dec [hl]
    ld c, $68
    ld h, b
    ld a, [de]
    adc b
    ld h, b
    ld a, [de]
    db $10
    jr nz, jr_00e_5596

    dec a
    add b
    ld a, [de]
    xor d
    rst $38
    rra
    xor $01
    dec e
    ldh [$80], a
    rla
    ld [de], a
    ld b, b
    ld e, $20
    ldh [$0e], a
    ld [hl], a
    ld h, b
    ld c, $00
    rst $38
    dec d
    xor $01

jr_00e_5596:
    inc de
    rst $38
    ld bc, $6013
    add b
    nop
    nop
    nop
    dec bc
    sbc c
    jr nz, jr_00e_55ad

    xor a
    ld b, b
    dec bc

jr_00e_55a6:
    ld a, [hl+]
    db $10
    ld a, [de]
    add hl, hl
    add b
    inc c
    inc hl

jr_00e_55ad:
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    ld d, $80
    jr nz, jr_00e_55d4

    call z, $1601
    ld [hl], a
    ld b, b
    rra
    ld [$11c0], sp
    jr nz, @+$12

    ld hl, $40ff
    dec c
    xor $40
    dec e
    ld a, [$1e80]
    sbc c
    rst $38
    dec b
    ld d, l

jr_00e_55d1:
    ld bc, $8017

jr_00e_55d4:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    rlca
    rst $28
    rst $38
    rrca
    ld b, b
    add b
    jr nz, jr_00e_55d1

    ldh [rNR23], a
    ld l, a
    ldh [rP1], a
    nop
    nop
    ld b, $a8
    sub b
    add hl, de
    xor d
    jr nz, @+$14

    rst $38

jr_00e_55f2:
    rst $38
    add hl, de
    sbc c
    rst $38
    ld [$604f], sp
    nop
    nop
    nop
    inc e
    jr nc, jr_00e_563f

    inc e
    ret nz

    ld bc, $981c
    rst $38
    inc d
    jr z, @-$3e

    inc d
    ld de, $1eff
    nop
    add b
    rrca
    add b
    ld bc, $000f
    ret nz

    ld a, [de]
    xor $ff
    nop
    nop
    nop
    ld d, $80
    ld b, b
    ld d, $10
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    dec h
    nop
    add b
    dec h
    jr nz, jr_00e_55f2

    ld [hl+], a
    nop
    add b
    ld [hl+], a
    jr nz, @+$01

    nop
    inc l
    ret nz

    ld bc, $e02c
    inc h

jr_00e_563f:
    ldh a, [rNR10]
    dec h
    xor d
    rst $38
    inc hl
    jr nz, @-$0e

    nop
    nop
    nop
    inc e
    add b
    ld h, b
    nop
    nop
    nop
    nop
    nop
    nop
    inc b
    ld h, b
    ld b, b
    dec e
    ld h, b
    ld b, b
    inc b
    jr nz, jr_00e_569c

    dec e
    jr nz, jr_00e_569f

    inc b
    nop
    add b
    dec e
    nop
    add b
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld [$01dd], sp
    ld [$40aa], sp
    inc hl
    ld [hl+], a
    rst $38
    ld hl, $0155
    dec h
    ld b, h
    jr nz, jr_00e_56a3

    ld h, [hl]
    call z, $f3f0
    and a
    ld a, [$d060]
    ld hl, $d026
    jr z, jr_00e_5691

    ld a, [$d065]
    ld hl, $cff7

jr_00e_5691:
    ld c, $04
    ld b, a

jr_00e_5694:
    srl b
    call c, Call_00e_569f
    inc hl
    inc hl
    dec c

jr_00e_569c:
    ret z

    jr jr_00e_5694

Call_00e_569f:
jr_00e_569f:
    ld a, [hl]
    add a
    ld [hl-], a
    ld a, [hl]

jr_00e_56a3:
    rl a
    ld [hl+], a
    ret


    ldh a, [$f3]
    and a
    ld a, [$d061]
    ld hl, $d025
    jr z, jr_00e_56b8

    ld a, [$d066]
    ld hl, $cff6

jr_00e_56b8:
    ld c, $04
    ld b, a

jr_00e_56bb:
    srl b
    call c, Call_00e_56c6
    inc hl
    inc hl
    dec c
    ret z

    jr jr_00e_56bb

Call_00e_56c6:
    ld a, [hl]
    srl a
    ld [hl+], a
    rr [hl]
    or [hl]
    jr nz, jr_00e_56d1

    ld [hl], $01

jr_00e_56d1:
    dec hl
    ret


    xor a
    ld [$cfd8], a
    ld b, $01
    call $3def
    ld hl, $704b
    ld b, $0f
    call $35d6
    ld hl, $c3b3
    ld c, $00

jr_00e_56e9:
    inc c
    ld a, c
    cp $07
    ret z

    ld d, $00
    push bc
    push hl

jr_00e_56f2:
    call Call_00e_5707
    inc hl
    ld a, $07
    add d
    ld d, a
    dec c
    jr nz, jr_00e_56f2

    ld c, $04
    call $3739
    pop hl
    pop bc
    dec hl
    jr jr_00e_56e9

Call_00e_5707:
    push hl
    push de
    push bc
    ld e, $07

jr_00e_570c:
    ld [hl], d
    ld bc, $0014
    add hl, bc
    inc d
    dec e
    jr nz, jr_00e_570c

    pop bc
    pop de
    pop hl
    ret


    ld a, $0a
    ld hl, $cee9
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl], a
    ld a, [$d072]
    swap a
    and $0f
    jr z, jr_00e_5735

    ld hl, $cee9
    dec a
    ld c, a
    ld b, $00
    add hl, bc
    ld [hl], $50

jr_00e_5735:
    ld hl, $589b
    ld a, [$d031]
    ld b, a

jr_00e_573c:
    dec b
    jr z, jr_00e_5745

jr_00e_573f:
    ld a, [hl+]
    and a
    jr nz, jr_00e_573f

    jr jr_00e_573c

jr_00e_5745:
    ld a, [hl]
    and a
    jp z, Jump_00e_579f

    push hl
    pop hl
    ld a, [hl+]
    and a
    jr z, jr_00e_5762

    push hl
    ld hl, $57a3
    dec a
    add a
    ld c, a
    ld b, $00
    add hl, bc
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld de, $574b
    push de
    jp hl


jr_00e_5762:
    ld hl, $cee9
    ld de, $cfed
    ld c, $04

jr_00e_576a:
    ld a, [de]
    inc de
    and a
    jr z, jr_00e_5762

    dec [hl]
    jr z, jr_00e_5778

    inc hl
    dec c
    jr z, jr_00e_5762

    jr jr_00e_576a

jr_00e_5778:
    ld a, c

jr_00e_5779:
    inc [hl]
    dec hl
    inc a
    cp $05
    jr nz, jr_00e_5779

    ld hl, $cee9
    ld de, $cfed
    ld c, $04

jr_00e_5788:
    ld a, [de]
    and a
    jr nz, jr_00e_578d

    ld [hl], a

jr_00e_578d:
    ld a, [hl]
    dec a
    jr z, jr_00e_5795

    xor a
    ld [hl+], a
    jr jr_00e_5797

jr_00e_5795:
    ld a, [de]
    ld [hl+], a

jr_00e_5797:
    inc de
    dec c
    jr nz, jr_00e_5788

    ld hl, $cee9
    ret


Jump_00e_579f:
    ld hl, $cfed
    ret


    xor e
    ld d, a
    rst $20
    ld d, a
    rla
    ld e, b
    add e
    ld e, b
    ld a, [$d018]
    and a
    ret z

    ld hl, $cee8
    ld de, $cfed
    ld b, $05

jr_00e_57b8:
    dec b
    ret z

    inc hl
    ld a, [de]
    and a
    ret z

    inc de
    call Call_00e_5884
    ld a, [$cfce]
    and a
    jr nz, jr_00e_57b8

    ld a, [$cfcd]
    push hl
    push de
    push bc
    ld hl, $57e2
    ld de, $0001
    call $3dab
    pop bc
    pop de
    pop hl
    jr nc, jr_00e_57b8

    ld a, [hl]
    add $05
    ld [hl], a
    jr jr_00e_57b8

    ld bc, $4220
    ld b, e
    rst $38
    ld a, [$ccd5]
    cp $01
    ret nz

    ld hl, $cee8
    ld de, $cfed
    ld b, $05

jr_00e_57f5:
    dec b
    ret z

    inc hl
    ld a, [de]
    and a
    ret z

    inc de
    call Call_00e_5884
    ld a, [$cfcd]
    cp $0a
    jr c, jr_00e_57f5

    cp $1a
    jr c, jr_00e_5814

    cp $32
    jr c, jr_00e_57f5

    cp $42
    jr c, jr_00e_5814

    jr jr_00e_57f5

jr_00e_5814:
    dec [hl]
    jr jr_00e_57f5

    ld hl, $cee8
    ld de, $cfed
    ld b, $05

jr_00e_581f:
    dec b
    ret z

    inc hl
    ld a, [de]
    and a
    ret z

    inc de
    call Call_00e_5884
    push hl
    push bc
    push de
    ld hl, $6449
    ld b, $0f
    call $35d6
    pop de
    pop bc
    pop hl
    ld a, [$d11e]
    cp $10
    jr z, jr_00e_581f

    jr c, jr_00e_5843

    dec [hl]
    jr jr_00e_581f

jr_00e_5843:
    push hl
    push de
    push bc
    ld a, [$cfcf]
    ld d, a
    ld hl, $cfed
    ld b, $05
    ld c, $00

jr_00e_5851:
    dec b
    jr z, jr_00e_5879

    ld a, [hl+]
    and a
    jr z, jr_00e_5879

    call Call_00e_5884
    ld a, [$cfcd]
    cp $28
    jr z, jr_00e_5878

    cp $29
    jr z, jr_00e_5878

    cp $2b
    jr z, jr_00e_5878

    ld a, [$cfcf]
    cp d
    jr z, jr_00e_5851

    ld a, [$cfce]
    and a
    jr nz, jr_00e_5878

    jr jr_00e_5851

jr_00e_5878:
    ld c, a

jr_00e_5879:
    ld a, c
    pop bc
    pop de
    pop hl
    and a
    jr z, jr_00e_581f

    inc [hl]
    jr jr_00e_581f

    ret


Call_00e_5884:
    push hl
    push de
    push bc
    dec a
    ld hl, $4000
    ld bc, $0006
    call $3a87
    ld de, $cfcc
    call $00b5
    pop bc
    pop de
    pop hl
    ret


    nop
    ld bc, $0100
    nop
    ld bc, $0003
    ld bc, $0100
    nop
    ld bc, $0302
    nop
    ld bc, $0002
    ld bc, $0100
    nop
    ld bc, $0003
    ld bc, $0100
    ld [bc], a
    nop
    ld bc, $0003
    ld bc, $0003
    nop
    ld bc, $0100
    inc bc
    nop
    ld bc, $0002
    ld bc, $0003
    ld bc, $0100
    nop
    ld bc, $0100
    nop
    ld bc, $0100
    inc bc
    nop
    ld bc, $0002
    ld bc, $0002
    ld bc, $0003
    ld bc, $0100
    inc bc
    nop
    ld bc, $0003
    ld bc, $0100
    nop
    ld bc, $0003
    ld bc, $0003
    ld bc, $0003
    ld bc, $0003
    ld bc, $0003
    ld bc, $0003
    ld bc, $0002
    ld bc, $0003
    ld bc, $0003
    ld bc, $0302
    nop
    ld bc, $0100
    nop
    ld bc, $0003
    nop
    ld b, b
    nop
    dec d
    nop
    add $40
    nop
    stop
    nop
    ld b, d
    nop
    dec d
    nop
    db $db
    ld b, d
    nop
    jr nc, jr_00e_5928

jr_00e_5928:
    ld d, b
    ld b, h
    nop
    jr nz, jr_00e_592d

jr_00e_592d:
    adc b
    ld b, l
    nop
    jr nz, jr_00e_5932

jr_00e_5932:
    ret


    ld b, [hl]
    nop
    ld d, b
    nop
    pop af
    ld b, a
    nop
    dec h
    nop
    rst $20
    ld c, b
    nop
    dec [hl]
    nop
    cp [hl]
    ld c, d
    nop
    jr nz, jr_00e_5946

jr_00e_5946:
    sub c
    ld c, h
    nop
    sub b
    nop
    ld a, [bc]
    ld c, [hl]
    nop
    ld d, b
    nop
    ld a, l
    ld e, c
    nop
    dec [hl]
    nop
    add a
    ld c, a
    nop
    dec [hl]
    nop
    inc sp
    ld d, c
    nop
    dec b
    nop
    ld c, a
    ld d, d
    nop
    dec h
    nop
    ld hl, $0054
    ld [hl], b
    nop
    rst $18
    ld d, l
    nop
    ld [hl], b
    nop
    jr z, jr_00e_59c7

    nop
    stop
    ld b, e
    ld e, b
    nop
    dec h
    nop
    ld a, l
    ld e, c
    nop
    dec [hl]
    nop
    ld c, [hl]
    ld e, e
    nop
    ld b, b
    nop
    db $db
    ld e, h
    nop
    dec h
    nop
    db $76
    ld e, [hl]
    nop
    dec h
    nop
    ld c, c
    ld h, b
    nop
    dec [hl]
    nop
    ld e, a
    ld h, c
    nop
    sbc c
    nop
    ld a, l
    ld h, d
    nop
    jr nc, jr_00e_599b

jr_00e_599b:
    ld a, l
    ld h, d
    nop
    ld d, b
    nop
    cp [hl]
    ld h, e
    nop
    sbc c
    nop
    sbc a
    ld h, h
    nop
    jr nc, jr_00e_59aa

jr_00e_59aa:
    dec [hl]
    ld h, [hl]
    nop
    dec [hl]
    nop
    cp [hl]
    ld h, a
    nop
    dec [hl]
    nop
    ld b, e
    ld l, c
    nop
    sbc c
    nop
    ld a, $6b
    nop
    sbc c
    nop
    ld b, b
    ld l, h
    nop
    sbc c
    nop
    jr nc, jr_00e_5a32

    nop
    sbc c

jr_00e_59c7:
    nop
    or l
    ld l, [hl]
    nop
    sbc c
    nop
    sub $6f
    nop
    sbc c
    nop
    ld d, b
    ld [hl], c
    nop
    sbc c
    nop
    ld d, d
    ld [hl], d
    nop
    sbc c
    nop
    ret nc

    ld [hl], e
    nop
    ld [hl], b
    nop
    rst $08
    ld [hl], h
    nop
    ld h, l
    nop
    inc hl
    halt
    sbc c
    nop
    ld a, c
    ld [hl], a
    nop
    sbc c
    nop
    and h
    ld a, b
    nop
    jr nc, jr_00e_59f5

jr_00e_59f5:
    ld [hl], c
    ld a, d
    nop
    sbc c
    nop
    and d
    ld a, e
    nop
    sbc c
    nop
    sbc b
    adc [hl]
    sub h
    adc l
    add [hl]
    sub d
    sub e
    add h
    sub c
    ld d, b
    add c
    sub h
    add [hl]
    ld a, a
    add d
    add b
    sub e
    add d
    add a
    add h
    sub c
    ld d, b
    adc e
    add b
    sub d
    sub d
    ld d, b
    sub d
    add b
    adc b
    adc e
    adc [hl]
    sub c
    ld d, b
    adc c
    sub c
    add sp, -$6d
    sub c
    add b
    adc b
    adc l
    add h
    sub c
    rst $28
    ld d, b
    adc c
    sub c
    add sp, -$6d
    sub c

jr_00e_5a32:
    add b
    adc b
    adc l
    add h
    sub c
    push af
    ld d, b
    adc a
    adc [hl]
    adc d
    cp d
    adc h
    add b
    adc l
    adc b
    add b
    add d
    ld d, b
    sub d
    sub h
    adc a
    add h
    sub c
    ld a, a
    adc l
    add h
    sub c
    add e
    ld d, b
    add a
    adc b
    adc d
    add h
    sub c
    ld d, b
    add c
    adc b
    adc d
    add h
    sub c
    ld d, b
    add c
    sub h
    sub c
    add [hl]
    adc e
    add b
    sub c
    ld d, b
    add h
    adc l
    add [hl]
    adc b
    adc l
    add h
    add h
    sub c
    ld d, b
    adc c
    sub h
    add [hl]
    add [hl]
    adc e
    add h
    sub c
    ld d, b
    add l
    adc b
    sub d
    add a
    add h
    sub c
    adc h
    add b
    adc l
    ld d, b
    sub d
    sub [hl]
    adc b
    adc h
    adc h
    add h
    sub c
    ld d, b
    add d
    sub h
    add h
    ld a, a
    add c
    add b
    adc e
    adc e
    ld d, b
    add [hl]
    add b
    adc h
    add c
    adc e
    add h
    sub c
    ld d, b
    add c
    add h
    add b
    sub h
    sub e
    sbc b
    ld d, b
    adc a
    sub d
    sbc b
    add d
    add a
    adc b
    add d
    ld d, b
    sub c
    adc [hl]
    add d
    adc d
    add h
    sub c
    ld d, b
    adc c
    sub h
    add [hl]
    add [hl]
    adc e
    add h
    sub c
    ld d, b
    sub e
    add b
    adc h
    add h
    sub c
    ld d, b
    add c
    adc b
    sub c
    add e
    ld a, a
    adc d
    add h
    add h
    adc a
    add h
    sub c
    ld d, b
    add c
    adc e
    add b
    add d
    adc d
    add c
    add h
    adc e
    sub e
    ld d, b
    sub c
    adc b
    sub l
    add b
    adc e
    rst $30
    ld d, b
    adc a
    sub c
    adc [hl]
    add l
    add sp, -$72
    add b
    adc d
    ld d, b
    add d
    add a
    adc b
    add h
    add l
    ld d, b
    sub d
    add d
    adc b
    add h
    adc l
    sub e
    adc b
    sub d
    sub e
    ld d, b
    add [hl]
    adc b
    adc [hl]
    sub l
    add b
    adc l
    adc l
    adc b
    ld d, b
    sub c
    adc [hl]
    add d
    adc d
    add h
    sub e
    ld d, b
    add d
    adc [hl]
    adc [hl]
    adc e
    sub e
    sub c
    add b
    adc b
    adc l
    add h
    sub c
    rst $28
    ld d, b
    add d
    adc [hl]
    adc [hl]
    adc e
    sub e
    sub c
    add b
    adc b
    adc l
    add h
    sub c
    push af
    ld d, b
    add c
    sub c
    sub h
    adc l
    adc [hl]
    ld d, b
    add c
    sub c
    adc [hl]
    add d
    adc d
    ld d, b
    adc h
    adc b
    sub d
    sub e
    sbc b
    ld d, b
    adc e
    sub e
    add sp, -$6e
    sub h
    sub c
    add [hl]
    add h
    ld d, b
    add h
    sub c
    adc b
    adc d
    add b
    ld d, b
    adc d
    adc [hl]
    add [hl]
    add b
    ld d, b
    add c
    adc e
    add b
    adc b
    adc l
    add h
    ld d, b
    sub d
    add b
    add c
    sub c
    adc b
    adc l
    add b
    ld d, b
    add [hl]
    add h
    adc l
    sub e
    adc e
    add h
    adc h
    add b
    adc l
    ld d, b
    sub c
    adc b
    sub l
    add b
    adc e
    ld hl, sp+$50
    sub c
    adc b
    sub l
    add b
    adc e
    ld sp, hl
    ld d, b
    adc e
    adc [hl]
    sub c
    add h
    adc e
    add h
    adc b
    ld d, b
    add d
    add a
    add b
    adc l
    adc l
    add h
    adc e
    add h
    sub c
    ld d, b
    add b
    add [hl]
    add b
    sub e
    add a
    add b
    ld d, b
    adc e
    add b
    adc l
    add d
    add h
    ld d, b
    ld hl, $d0dc
    ld de, $d0e1
    ld b, $00

jr_00e_5b8f:
    ld a, [hl+]
    and a
    jr z, jr_00e_5bc1

    push hl
    ld [$d0b5], a
    ld a, $2c
    ld [$d0b7], a
    ld a, $02
    ld [$d0b6], a
    call $376b
    ld hl, $cd6d

jr_00e_5ba7:
    ld a, [hl+]
    cp $50
    jr z, jr_00e_5bb0

    ld [de], a
    inc de
    jr jr_00e_5ba7

jr_00e_5bb0:
    ld a, b
    ld [$cd6c], a
    inc b
    ld a, $4e
    ld [de], a
    inc de
    pop hl
    ld a, b
    cp $04
    jr z, jr_00e_5bd1

    jr jr_00e_5b8f

jr_00e_5bc1:
    ld a, $e3
    ld [de], a
    inc de
    inc b
    ld a, b
    cp $04
    jr z, jr_00e_5bd1

    ld a, $4e
    ld [de], a
    inc de
    jr jr_00e_5bc1

jr_00e_5bd1:
    ld a, $50
    ld [de], a
    ret


    ld a, [$d11b]
    cp $01
    jr nz, jr_00e_5be6

    ld hl, $d89c
    ld de, $d9ac
    ld a, $06
    jr jr_00e_5c18

jr_00e_5be6:
    cp $04
    jr nz, jr_00e_5bf4

    ld hl, $d163
    ld de, $d273
    ld a, $05
    jr jr_00e_5c18

jr_00e_5bf4:
    cp $05
    jr nz, jr_00e_5c02

    ld hl, $cf7b
    ld de, $421e
    ld a, $01
    jr jr_00e_5c18

jr_00e_5c02:
    cp $02
    jr nz, jr_00e_5c10

    ld hl, $d31d
    ld de, $472b
    ld a, $04
    jr jr_00e_5c18

jr_00e_5c10:
    ld hl, $cf7b
    ld de, $472b
    ld a, $04

jr_00e_5c18:
    ld [$d0b6], a
    ld a, l
    ld [$cf8b], a
    ld a, h
    ld [$cf8c], a
    ld a, e
    ld [$cf8d], a
    ld a, d
    ld [$cf8e], a
    ld bc, $4608
    ld a, c
    ld [$cf8f], a
    ld a, b
    ld [$cf90], a
    ret


    ld hl, $d164
    ld a, [$cc49]
    and a
    jr z, jr_00e_5c4b

    dec a
    jr z, jr_00e_5c48

    ld hl, $da81
    jr jr_00e_5c4b

jr_00e_5c48:
    ld hl, $d89d

jr_00e_5c4b:
    ld d, $00
    add hl, de
    ld a, [hl]
    ld [$cf91], a
    ret


    ld a, [$d12b]
    and a
    ret nz

    ld hl, $d89c
    xor a
    ld [hl+], a
    dec a
    ld [hl], a
    ld a, [$d059]
    sub $c9
    add a
    ld hl, $5d3b
    ld c, a
    ld b, $00
    add hl, bc
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld a, [$d05d]
    ld b, a

jr_00e_5c73:
    dec b
    jr z, jr_00e_5c7c

jr_00e_5c76:
    ld a, [hl+]
    and a
    jr nz, jr_00e_5c76

    jr jr_00e_5c73

jr_00e_5c7c:
    ld a, [hl+]
    cp $ff
    jr z, jr_00e_5c97

    ld [$d127], a

jr_00e_5c84:
    ld a, [hl+]
    and a
    jr z, jr_00e_5d03

    ld [$cf91], a
    ld a, $01
    ld [$cc49], a
    push hl
    call $3927
    pop hl
    jr jr_00e_5c84

jr_00e_5c97:
    ld a, [hl+]
    and a
    jr z, jr_00e_5cae

    ld [$d127], a
    ld a, [hl+]
    ld [$cf91], a
    ld a, $01
    ld [$cc49], a
    push hl
    call $3927
    pop hl
    jr jr_00e_5c97

jr_00e_5cae:
    ld a, [$d05c]
    and a
    jr z, jr_00e_5ccb

    dec a
    add a
    ld c, a
    ld b, $00
    ld hl, $5d22
    add hl, bc
    ld a, [hl+]
    ld d, [hl]
    ld hl, $d8ae
    ld bc, $002c
    call $3a87
    ld [hl], d
    jr jr_00e_5d03

jr_00e_5ccb:
    ld a, [$d059]
    sub $c8
    ld b, a
    ld hl, $5d32

jr_00e_5cd4:
    ld a, [hl+]
    cp b
    jr z, jr_00e_5ce3

    inc hl
    inc a
    jr nz, jr_00e_5cd4

    ld a, b
    cp $2b
    jr z, jr_00e_5ce9

    jr jr_00e_5d03

jr_00e_5ce3:
    ld a, [hl]
    ld [$d95e], a
    jr jr_00e_5d03

jr_00e_5ce9:
    ld a, $8f
    ld [$d8ae], a
    ld a, [$d715]
    cp $99
    ld b, $48
    jr z, jr_00e_5cff

    cp $b0
    ld b, $7e
    jr z, jr_00e_5cff

    ld b, $3b

jr_00e_5cff:
    ld a, b
    ld [$d98a], a

jr_00e_5d03:
    xor a
    ld de, $d079
    ld [de], a
    inc de
    ld [de], a
    inc de
    ld [de], a
    ld a, [$d127]
    ld b, a

jr_00e_5d10:
    ld hl, $d047
    ld c, $02
    push bc
    ld a, $0b
    call $3e6d
    pop bc
    inc de
    inc de
    dec b
    jr nz, jr_00e_5d10

    ret


    ld bc, $0175
    dec a
    ld [bc], a
    ld d, l
    ld [bc], a
    ld c, b
    inc bc
    ld e, h
    inc bc
    sub l
    inc bc
    ld a, [hl]
    inc b
    ld e, d
    inc l
    dec sp
    ld hl, $2e5a
    ld e, h
    cpl
    ld [hl], b
    rst $38
    sbc c
    ld e, l
    adc $5d
    inc c
    ld e, [hl]
    ld e, b
    ld e, [hl]
    ld a, b
    ld e, [hl]
    sbc l
    ld e, [hl]

Jump_00e_5d47:
    add hl, bc
    ld e, a
    ld h, $5f
    ld e, [hl]
    ld e, a
    sbc h
    ld e, a
    db $e4
    ld e, a
    rlca
    ld h, b
    inc de
    ld h, b
    inc de
    ld h, b
    ld c, c
    ld h, b
    adc l
    ld h, b
    or e
    ld h, b
    pop de
    ld h, b
    dec d

jr_00e_5d60:
    ld h, c
    daa
    ld h, c
    jr nc, jr_00e_5dc6

    ld d, c
    ld h, c

jr_00e_5d67:
    ld l, e
    ld h, c
    cp [hl]
    ld h, c
    db $e4
    ld h, c
    dec e
    ld h, d
    ld b, c
    ld h, d
    ld b, c
    ld h, d
    ld a, [hl]
    ld h, d
    sbc h
    ld h, d
    ld e, d
    ld h, e
    add l
    ld h, e
    xor c
    ld h, e
    or l
    ld h, e
    cp e
    ld h, e
    pop bc
    ld h, e
    ret


    ld h, e
    pop de
    ld h, e
    db $db
    ld h, e
    push hl
    ld h, e
    rst $28
    ld h, e
    ld bc, $9164
    ld h, h
    cp e
    ld h, h
    rst $00
    ld h, h
    ld d, $65
    ld [hl+], a
    ld h, l
    ld c, $a5
    ld l, h
    nop
    rrca
    sub [hl]
    nop
    ld [de], a
    ld l, e
    ld c, [hl]
    ld b, b
    nop
    ld d, $99
    or b
    or c
    nop
    rla
    ld b, a
    ld hl, $1700
    ld c, h
    nop
    rla
    ld c, l
    sub [hl]
    nop
    inc e
    dec bc
    nop
    jr jr_00e_5d60

    nop
    add hl, de
    ld h, b
    add d
    nop
    jr jr_00e_5d67

    inc hl
    ld d, e
    nop
    jr jr_00e_5e06

jr_00e_5dc6:
    stop
    ld de, $a505
    and l
    dec b
    nop
    ld b, $70
    ld a, e
    nop
    add hl, bc
    ld [hl], c
    ld b, c
    ld l, l
    nop
    ld a, [bc]
    ld a, l
    nop
    ld c, $41
    ld l, l
    ld [hl], d
    nop
    dec c
    ld l, l
    ld b, c
    ld a, h
    ld [hl], d
    nop
    rrca
    ld a, l
    ld [hl], d
    nop
    db $10
    ld b, c
    ld [hl], d
    nop
    db $10
    ld l, l
    ld b, c
    ld a, l
    nop
    inc de
    ld a, [de]
    dec e
    nop
    jr jr_00e_5e75

    ld [hl], d
    ld l, $00
    ld h, h
    ld [hl], b
    nop
    ld [de], a
    ld a, h
    ld a, e
    ld b, c
    nop
    ld h, h
    ld [hl], c
    ld a, h

jr_00e_5e06:
    nop
    daa
    ld [hl], a
    ld a, [de]
    dec e
    nop
    ld c, $24
    rrca
    nop
    db $10
    inc bc
    dec b
    nop
    ld de, $0064
    ld [de], a
    ld l, l
    and e
    ld l, $00
    ld de, $5c9d
    nop
    ld de, $0004
    ld d, $1b
    xor b
    nop
    dec d
    cp c
    and a
    nop
    rla
    ld d, d
    cp h
    nop
    rla
    add hl, bc
    or d
    or e
    nop
    ld e, $66
    ld e, d
    nop
    rra
    ld d, d
    ld d, h
    nop
    dec hl
    xor b
    stop
    dec hl
    sbc e
    ld d, $4d
    nop
    dec hl
    ld h, [hl]
    ld h, l
    ld h, d
    ld d, l
    ld d, e
    nop
    dec hl
    adc [hl]
    inc b
    nop
    ld l, $16
    ld l, $00
    ld l, $9b
    ld e, $00
    dec e
    add hl, hl
    ld a, [hl-]
    nop
    dec e
    ld [hl], l
    dec h
    nop
    inc e
    ld a, b
    nop
    ld e, $5c
    jr jr_00e_5ea0

    nop
    ld e, $17
    dec de
    nop
    dec e
    ld l, d
    ld l, [hl]
    or e
    nop
    inc e
    ld a, [hl]
    nop
    inc h

jr_00e_5e75:
    ld l, a
    ld d, h

jr_00e_5e77:
    nop
    dec bc
    dec sp
    ld h, b
    nop
    ld d, $39
    ld de, $1400
    add b
    nop
    jr jr_00e_5eec

    nop
    rla
    and [hl]
    rlca
    nop
    ld [de], a
    dec sp
    dec sp
    ld h, b
    nop
    inc h
    cp l
    or d
    nop
    dec h
    ld b, [hl]
    dec sp
    add hl, bc
    ld h, l
    nop
    inc [hl]
    db $10
    rlca
    nop
    add hl, de
    ld e, l
    nop

jr_00e_5ea0:
    jr jr_00e_5ef6

    ld h, l
    nop
    rla
    ld a, [hl-]
    and e
    stop
    ld d, $99
    nop
    inc hl
    cp d
    ld l, [hl]
    ld b, b
    and e
    nop
    ld h, $8e
    nop
    daa
    ld h, l
    ld d, l
    nop
    jr z, jr_00e_5ef0

    inc sp
    nop
    ld a, [hl+]
    cp d
    adc [hl]
    cp l
    nop
    jr z, jr_00e_5e77

    ld e, $00
    cpl
    add hl, bc
    ld e, e
    nop
    dec [hl]
    ld h, l
    ld d, l
    cp e
    ld h, a
    ld e, l
    nop
    ld [hl], $be
    ld d, e
    nop
    ld [hl], $7d
    and h
    ld h, l
    ld l, c
    nop
    dec [hl]
    sbc [hl]
    sub c
    ld l, $00
    ld b, b
    ld l, b
    ld h, a
    nop
    ld a, [hl+]
    ld d, e
    ld a, l
    nop
    add hl, hl
    ld d, l
    ld a, b
    inc hl

jr_00e_5eec:
    nop
    ld a, [hl+]
    ld h, [hl]
    ld h, a

jr_00e_5ef0:
    ld l, b
    ld l, c
    nop
    ld [hl], $31
    ld c, b

jr_00e_5ef6:
    dec bc

jr_00e_5ef7:
    nop
    jr c, jr_00e_5f4f

    sbc [hl]
    nop
    jr c, jr_00e_5f0c

    nop
    jr c, jr_00e_5f1d

    sbc d
    or h
    nop
    ld b, e
    ld d, e
    cp e
    ld h, l
    nop
    daa
    ld h, d
    ld e, b

jr_00e_5f0c:
    nop
    ld a, [hl+]
    dec bc
    ld [bc], a
    nop
    add hl, hl
    sub c
    ld [$2900], sp
    ld e, c
    nop
    daa
    rlca
    nop
    ld d, a
    ld d, l

jr_00e_5f1d:
    ld a, [hl]
    sbc b
    ld c, $42
    add h
    nop
    daa
    stop
    ld [de], a
    xor c
    scf
    nop
    inc de
    ld b, $17
    inc c
    nop
    dec hl
    adc l
    ld sp, $8f8b
    nop
    inc l
    dec c
    adc l
    adc e
    nop
    dec hl
    inc c
    daa
    adc b
    adc l
    nop
    adc a
    nop
    inc d
    xor l
    xor l
    scf
    xor l
    nop
    jr jr_00e_5ef7

    ld b, $00
    ld c, h
    adc l
    adc e

jr_00e_5f4f:
    ld a, [bc]
    nop
    ld c, l
    adc l
    ld sp, $848b
    nop
    ld d, b
    ld [$4f00], sp
    add h
    ld a, [bc]
    nop
    ld [de], a
    ld [de], a
    ld l, d
    cpl
    nop
    dec d
    ld h, l
    ld [de], a
    nop
    rla
    ld b, b
    ld h, b
    dec bc
    ld [hl+], a
    nop
    rla
    ld a, [hl-]
    nop
    ld h, $22
    add hl, de
    nop
    ld h, $12
    ld e, l
    ld h, l
    nop
    ld a, [hl+]
    ld [de], a
    sub e
    nop
    dec hl
    inc c
    halt
    add hl, hl
    db $76
    sub e
    ld h, $00
    ld a, [hl+]
    jr nc, jr_00e_5f89

jr_00e_5f89:
    inc hl
    dec hl
    ld h, c
    nop
    add hl, hl
    ld [hl+], a
    add hl, hl
    and [hl]
    add d
    nop
    add hl, hl
    daa
    add b
    ld a, [hl+]
    nop
    add hl, hl
    ld h, c
    sub e
    nop
    scf
    adc b
    adc d
    inc d
    nop
    scf
    ld l, a
    dec e
    nop
    jr c, jr_00e_5ff4

    dec l
    adc a
    cp [hl]
    dec bc
    nop
    jr c, jr_00e_5fde

    ld [hl], l
    ld [bc], a
    nop
    dec sp
    adc l
    ld [hl], h
    nop
    inc a
    ld sp, $3a00
    dec e
    rlca
    or h
    ld [hl], l
    nop
    ld a, [hl-]
    adc b
    ld h, a
    stop
    ld a, [hl-]
    dec [hl]
    nop
    ld h, h
    ld b, $06
    nop
    ld a, [hl-]
    ld l, a
    inc sp
    nop
    ld a, [hl-]
    jr nc, jr_00e_5ff3

    adc d
    adc a
    dec e
    nop
    scf
    dec [hl]
    ld h, a
    adc b
    sub c
    nop
    scf
    inc sp
    ld l, b

jr_00e_5fde:
    stop
    scf
    and [hl]
    rlca
    nop
    dec e
    ld hl, $2100
    nop

jr_00e_5fe9:
    inc e
    nop
    ld c, l
    ld l, b
    ld l, c
    ld h, a
    nop
    ld c, l
    ld d, e
    ld c, h

jr_00e_5ff3:
    sbc e

jr_00e_5ff4:
    ld l, b
    inc d
    nop
    ld c, [hl]
    ld h, e
    inc d
    ld [hl], $b4
    add c
    nop
    ld c, e
    ld d, e
    nop
    ld c, e
    ld h, a
    nop
    ld c, e
    add c
    nop
    dec d
    nop
    ld a, [de]
    ld b, $aa
    ld [hl], $00
    ld a, [de]
    xor l
    adc l
    xor d
    nop
    dec de
    adc e
    ld e, c
    sbc e
    nop
    dec de
    ld [$8e59], sp
    nop
    ld a, [hl+]
    ld [$9b59], sp
    nop
    ld a, [hl+]
    adc e
    ld d, $00
    ld a, [hl+]
    inc de
    nop
    ld a, [hl+]
    ld sp, $9858
    ld e, c
    nop
    ld b, [hl]
    ld e, c
    ld a, [hl]
    ld [bc], a
    ld sp, $9598
    nop
    ld b, a
    ld b, d
    nop
    ld h, h
    add l
    nop
    ld b, [hl]
    ld b, d
    adc e
    ld d, $9b
    sbc b
    inc de
    nop
    inc sp
    ld e, c
    ld d, $00
    jr jr_00e_5fe9

    adc d
    nop
    inc a
    add b
    ld a, b
    nop
    inc a
    ld e, l
    and [hl]
    sbc [hl]
    nop
    ld a, $8b
    ld [$3e00], sp
    sbc [hl]
    ld e, e
    ld e, l
    ld h, e
    nop
    ld a, $b3
    ld [hl+], a
    sbc e
    nop
    ld a, $6f
    adc d
    nop
    ld a, $6f
    inc e
    add b
    adc d
    ld l, c
    nop
    ld b, b
    adc e
    ld d, $00
    ld b, l
    inc e
    nop

jr_00e_6077:
    ccf
    ld a, b
    ld [$5d6f], sp
    nop
    ld b, [hl]
    inc e
    ld l, c
    nop
    ld b, [hl]
    add b
    nop
    ld b, [hl]
    ld a, b
    ld l, a
    nop
    ld b, [hl]
    ld d, $9b
    ld h, e
    nop
    dec sp
    ld a, [hl]
    sub e
    ld a, [hl+]
    nop
    dec sp
    ld d, l
    ld h, c
    nop
    inc a
    ld d, $00
    add hl, sp
    ld [$007e], sp
    add hl, sp
    ld [bc], a
    sbc e
    nop
    add hl, sp
    ld h, $00
    add hl, sp
    ld [$7e84], sp
    rlca
    nop
    ld a, [hl-]
    ld sp, $008b
    ld b, a
    ld a, [hl]
    ld d, $9b
    nop
    ld a, [de]
    dec l
    adc d
    nop
    add hl, de
    ld a, b
    and h
    nop
    add hl, de
    dec e
    halt
    add hl, de
    dec l
    sbc [hl]
    nop
    inc l
    adc d
    and h
    dec e
    dec l
    ld a, b
    halt
    daa
    nop
    dec hl
    ld a, b
    halt
    dec l
    inc e
    cp d
    ld h, c
    cp l
    nop
    cpl
    inc c
    ld h, e
    nop
    jr nc, jr_00e_6077

    nop
    dec [hl]
    ld l, a
    ld d, l
    ld h, c
    nop
    ld [hl], $8e
    ld a, b
    nop
    ld b, c
    ld c, h
    nop
    ld b, e
    adc e
    and h
    sbc d
    nop
    ld b, h
    inc d
    ld e, $00
    scf
    cp e
    halt
    scf
    ld [$008e], sp
    ld hl, $bcbd
    cp l
    nop
    ld a, $8e
    cp [hl]
    ld bc, $7790
    nop
    ccf
    cp e
    ld c, b
    nop
    ccf
    db $10
    ld e, $55
    nop
    ld b, b
    sbc d
    db $76
    ld [bc], a
    nop
    ld b, l
    ld h, $2a

jr_00e_6118:
    add c
    sub l
    nop
    ld b, l
    sub l
    sbc b
    nop
    ld b, l
    ld a, [bc]
    ld [$0048], sp
    ld c, c
    ld a, [hl+]
    nop
    ld [hl+], a
    adc l
    ld e, $36
    nop
    ld [hl-], a
    ld l, b
    dec [hl]
    nop
    ld b, c
    ld a, [hl+]
    add c
    nop
    ld e, d
    add c
    adc [hl]
    ld [$958d], sp
    nop

jr_00e_613b:
    ld a, $2a
    ld h, $93
    add c
    nop
    dec a
    adc l
    ld a, [hl+]
    nop
    ld h, h
    ld c, h
    nop
    add c
    nop
    dec a
    add c
    nop
    dec a
    ld h, $88
    nop
    ld a, $82
    cp [hl]
    nop
    ld a, $2d
    sbc d
    stop
    ld d, e
    halt
    ld d, c
    sub b
    ld h, c
    nop
    ld e, c
    db $76
    ld e, $a4
    adc d
    dec e
    sub b
    nop
    inc a
    nop
    dec [hl]
    inc hl
    sub a
    nop
    ld [hl], $82
    ld [hl], $b4
    ld e, c
    ld b, b
    nop
    ld [hl], $40
    add b
    ld [hl], h
    sub a
    nop
    scf
    xor d
    nop
    jr c, jr_00e_6118

    ld c, h
    nop
    jr c, jr_00e_61fb

    inc l
    ld e, l
    sub a
    nop
    jr c, jr_00e_61ff

    add b
    inc sp
    nop
    add hl, sp
    ld [de], a
    ld [hl], h
    nop
    add hl, sp
    ld a, b
    nop
    add hl, sp
    sub a
    sub c
    add b
    inc hl
    nop
    ld b, c
    sub a
    xor d
    ld [hl], h
    or h
    add b
    xor e
    nop
    jr nz, jr_00e_613b

    nop
    ld a, [hl+]
    ld b, b
    inc hl
    nop
    scf
    ld [hl], a
    ld d, $9a
    nop
    scf
    inc hl
    sub a
    add b
    ld [hl], h
    nop
    scf
    ld a, [de]
    adc [hl]
    nop
    scf
    inc hl
    sub a
    inc sp
    nop
    cpl
    ld l, a
    ld a, [hl]
    nop
    ld b, c
    dec hl
    nop
    ld b, c
    ld [hl], l
    nop
    ld b, c
    ld l, a
    nop
    ld b, c
    inc l
    nop
    ld d, e
    ld sp, $0075
    ld d, e
    ld l, a
    nop
    ld d, h

jr_00e_61d6:
    ld bc, $0768
    db $10
    ld a, [hl]
    nop
    ld e, d
    ld l, b
    ld h, a
    ld l, c
    rlca
    ld [hl], h

jr_00e_61e2:
    ld a, [hl]
    nop
    inc bc
    dec d
    nop
    inc bc
    dec d
    nop
    inc bc
    dec d
    nop
    rst $38

jr_00e_61ee:
    add hl, bc
    ld h, [hl]
    ld [$0015], sp
    rst $38
    add hl, bc
    ld h, [hl]
    ld [$0015], sp
    rst $38
    add hl, bc

jr_00e_61fb:
    ld h, [hl]
    ld [$0015], sp

jr_00e_61ff:
    rst $38
    inc d
    ld e, b
    inc de
    ld h, $13
    ld e, c
    inc d
    dec d
    nop
    rst $38
    inc d
    ld e, b
    inc de
    ld h, $13
    ld e, c
    inc d
    dec d
    nop
    rst $38
    inc d
    ld e, b
    inc de
    ld h, $13
    ld e, c
    inc d
    dec d
    nop
    ld [hl], e
    ld d, l
    ld a, [hl]
    jr z, jr_00e_61d6

    sbc d
    inc e
    ld b, l
    inc e
    ld b, [hl]
    ld d, $00
    ld [hl], e

jr_00e_622a:
    ld d, l
    ld a, [hl]
    jr z, jr_00e_61e2

    sbc d
    inc e
    ld b, l
    sbc d
    ld b, [hl]
    ld d, $00
    ld [hl], e
    ld d, l
    ld a, [hl]
    jr z, jr_00e_61ee

    sbc d
    inc e
    ld b, l
    or h
    ld b, [hl]
    ld d, $00
    ld [hl+], a
    scf
    ld b, $00
    ld b, e
    ld c, h
    adc l
    xor d
    ld h, e
    nop
    ld b, b
    ld e, e
    xor e
    ld h, e
    nop
    ld b, c
    adc l
    sub l
    nop
    ld b, c
    ld h, $98
    nop
    ld b, d
    adc l
    xor d
    xor e
    nop
    ld b, d
    ld [hl], $26
    xor d
    inc de
    sub l
    nop
    ld b, e
    ld c, h
    nop
    ld b, h
    xor e
    nop
    ld b, d
    sbc b
    nop
    ld b, d
    adc l
    sbc b
    xor e
    ld h, $13
    ld a, [bc]
    nop
    ld b, a
    ld [hl], $98
    xor e
    nop
    ld c, c
    ld c, $13
    nop
    scf
    sub b
    db $76
    db $10
    rlca
    ld bc, $003c
    ld c, b
    sub b
    db $10
    sub l
    ld c, $3c
    ld c, e
    nop
    ld e, d
    sub b
    db $76
    ld c, e
    ld c, $3c
    add e
    add e
    add e
    add e
    rlca
    ld [hl-], a
    ld bc, $1400
    add hl, de
    ld h, $00
    ld [de], a
    sub h
    ld e, b
    dec l
    nop
    inc de
    jr nc, jr_00e_622a

    nop
    inc d
    and [hl]
    nop
    jr jr_00e_62d8

    halt
    ld d, $59
    sub e
    nop
    dec l
    dec bc
    ld [$2d00], sp
    adc a
    halt
    dec l
    ld e, c
    ld a, [hl+]
    nop
    ld l, $36
    ld [hl], h
    halt
    ld l, $26
    dec [hl]
    inc sp
    ld c, b
    nop
    ld sp, $55a6
    nop
    cpl
    adc l
    adc e
    inc c
    sub e
    add c
    nop
    cpl
    xor d

jr_00e_62d8:
    adc b
    ld a, [hl+]
    nop
    jr nc, jr_00e_62f3

    ld e, c
    nop
    ld [hl-], a
    sub e
    ld a, [hl]
    sub l
    nop
    ld [hl-], a
    ld h, $81
    ld c, $00
    ld sp, $029b
    nop
    ld [hl-], a
    sub e
    ld h, $16
    nop
    inc sp

jr_00e_62f3:
    sub c
    ld c, $00
    inc sp
    ld a, [hl+]
    adc e
    sbc e
    add c
    nop
    ld a, [de]
    jr nc, jr_00e_62ff

jr_00e_62ff:
    ld b, h
    add c
    ld l, c
    nop
    ccf
    ld l, b
    ld h, a
    ld l, c
    nop
    ld b, d
    inc de
    nop
    ld b, c
    sbc e
    nop
    ld b, d
    ld b, d
    nop
    ld b, d
    ld b, d
    ld [bc], a
    ld sp, $7e35
    sbc e
    nop
    ld b, e
    adc a
    nop
    ld b, b
    ld b, d
    adc l
    add h
    ld bc, $1374
    nop
    ld b, d
    ld a, [bc]
    nop
    ld b, e
    ld d, l
    nop
    ld b, c
    adc l
    adc e
    ld sp, $0a0e
    add h
    nop
    ld b, d
    add c
    nop
    ld b, h
    xor e
    nop
    ld b, d
    ld c, b
    jr z, jr_00e_6344

    ld a, [bc]
    sub b
    inc de
    nop
    ld b, d
    sub l
    nop
    ld b, c

jr_00e_6344:
    ld l, b
    ld d, $0a
    db $76
    add c
    ld c, $00
    ld b, h
    ld c, $00
    ld b, [hl]
    ld bc, $0002
    ld b, l
    sub l
    add h
    adc e
    ld c, $0a
    inc a
    nop
    ld d, d
    ld b, d
    sub l
    nop
    ld e, b
    ld l, b
    xor e
    inc a
    ld b, d
    sbc e
    add h
    nop
    ld e, h
    add c
    ld l, b
    sbc b
    ld bc, $3c0a
    nop
    or e
    nop
    ld d, a
    adc l
    ld sp, $848b
    ld c, $0a
    nop
    rlca
    nop
    inc l
    nop
    adc e
    nop
    ld d, e
    add h
    sbc b
    nop
    ld d, h

jr_00e_6383:
    inc a
    nop
    ld [hl-], a
    adc [hl]
    inc de
    nop
    ld e, d
    ld c, b
    ld a, [bc]
    inc a
    sub l
    jr z, @+$6b

    nop
    ld e, d
    dec [hl]
    ld c, b
    add c
    add h
    inc de
    inc sp
    nop
    ld d, l
    nop
    ld e, d
    ld a, [bc]
    db $76
    sub l
    ld c, $90
    ld [$1000], sp
    nop
    sub b
    nop
    ld d, l
    nop
    ld b, h
    ld sp, $0175
    ld l, a
    adc b
    ld a, [hl]
    nop
    ld [hl+], a
    ld a, [hl-]
    ld a, [hl]
    nop
    rrca
    ld sp, $625a
    xor e
    nop
    ld a, [de]
    ld l, c
    ld l, a
    ld a, b
    sbc b
    nop
    daa
    adc l

Jump_00e_63c3:
    ld [hl], $aa
    ld l, b
    dec [hl]
    ld d, l
    nop
    ld [hl], $bb
    adc [hl]
    sbc d
    ld e, $be
    ld a, [bc]
    nop
    ld b, d
    ld [hl], a
    adc a
    ld a, [hl+]
    rlca
    ld c, $9b
    nop
    adc a
    nop
    ld d, h
    or h
    jr z, jr_00e_6383

    ld h, a
    inc sp
    ld c, c
    nop
    inc d
    nop
    ld c, e
    ld c, b
    ld [$0a81], sp
    sbc b
    sub l
    nop
    sub l
    nop
    dec de
    inc d
    rlca
    nop
    inc e

jr_00e_63f4:
    xor d
    ld d, e
    nop
    ld hl, $0016
    dec h
    ld e, c
    nop
    dec e
    ld e, c
    ld [bc], a
    nop
    rst $38
    ld e, $68
    ld e, $67
    rra
    ld l, c
    rra
    dec d
    nop
    rst $38
    ld e, $67
    ld e, $69
    rra
    ld l, b
    rra
    dec d
    nop
    rst $38
    ld e, $69
    ld e, $68
    rra
    ld h, a
    rra
    dec d
    nop
    dec [hl]
    ld sp, $9a97
    or h
    inc e
    dec d
    jr z, jr_00e_6444

    jr z, @+$17

    nop
    dec [hl]
    sub a
    ld sp, $1c9a
    or h
    dec d
    jr z, @-$64

    jr z, jr_00e_644b

    nop
    dec [hl]
    sub a
    ld sp, $9a1c
    or h
    dec d
    jr z, jr_00e_63f4

    jr z, jr_00e_6457

    nop
    ld b, [hl]

jr_00e_6444:
    ld [hl], h
    ld h, c
    ld a, [bc]
    ld d, $14
    dec d
    inc a

jr_00e_644b:
    ld a, [bc]
    inc a
    dec d
    nop
    ld b, [hl]
    ld h, c
    ld [hl], h
    ld a, [bc]
    ld d, $14
    dec d
    inc a

jr_00e_6457:
    ld d, $3c
    dec d
    nop
    ld b, [hl]
    ld h, c
    ld [hl], h
    inc d
    ld a, [bc]
    ld d, $15
    ld a, [hl-]
    ld a, [bc]
    inc a
    dec d

jr_00e_6466:
    nop
    rst $38
    ld d, l
    ld l, b
    ld d, l
    ld bc, $3c55
    ld d, l

jr_00e_646f:
    ld a, [bc]
    ld d, l
    sbc b
    ld e, b
    dec d
    nop
    rst $38
    ld d, l
    ld l, b
    ld d, l
    ld bc, $3c55
    ld d, l
    ld a, [bc]
    ld d, l
    sbc b
    ld e, b
    dec d
    nop
    rst $38
    ld d, l
    ld l, b
    ld d, l
    ld bc, $3c55
    ld d, l
    ld a, [bc]
    ld d, l
    sbc b
    ld e, b
    dec d
    nop
    ld [hl], e
    dec d
    ld l, b
    ld a, [bc]
    sbc b

jr_00e_6496:
    inc a
    add e
    ld h, h
    sbc b
    ld h, h
    inc a
    ld h, h
    add e
    nop
    ld [hl], e
    dec d
    ld l, b
    ld a, [bc]
    sbc b
    inc a
    add e
    ld h, h
    sbc b
    ld h, h
    inc a
    ld h, h
    add e
    nop
    ld [hl], e
    dec d
    ld l, b
    ld a, [bc]
    sbc b
    inc a
    add e
    ld h, h
    sbc b
    ld h, h
    inc a
    ld h, h
    add e
    nop
    ld [hl], e
    adc e
    db $10
    ld l, c
    ld c, b
    inc de
    ld c, d
    nop
    ld c, b
    jr c, jr_00e_64d9

    nop
    jr nz, jr_00e_644b

    nop
    ld h, $93
    nop
    rla
    add hl, de
    add d
    nop
    jr z, jr_00e_6466

    nop
    cpl
    ld [hl], a
    nop
    scf
    add hl, de

jr_00e_64d9:
    nop
    jr jr_00e_646f

    nop
    cpl
    adc b
    nop
    cpl
    inc sp
    nop
    cpl
    ld h, $9a
    nop
    ld [hl+], a
    dec l
    nop
    ld sp, $0093
    ld [hl+], a
    ld a, [hl+]
    nop
    cpl
    ld c, b
    nop
    jr jr_00e_650e

    nop
    cpl
    inc de
    nop
    ld sp, $0091
    jr nc, @+$10

    nop
    inc l
    add hl, de
    jr nc, jr_00e_6496

    nop
    dec hl
    dec l
    nop
    dec hl
    add d
    nop
    ld b, l
    ld c, $81
    nop

jr_00e_650e:
    ld c, c
    inc de
    nop
    ld c, b
    sub e
    ld h, $2a
    nop
    ld [hl], e
    add c
    ld a, [bc]
    sbc e
    ld c, b
    ld c, $95
    nop
    dec l
    inc a
    ld c, $00
    ld [hl], e
    ld [bc], a
    inc de
    dec [hl]
    ld b, d
    add h
    xor e
    nop
    xor e
    ld a, $42
    nop
    and a
    ld a, [$d057]
    dec a
    ret z

    ld a, [$d12b]
    cp $04
    ret z

    ld a, [$d031]
    dec a
    ld c, a
    ld b, $00
    ld hl, $655c
    add hl, bc
    add hl, bc
    add hl, bc
    ld a, [$ccdf]
    and a
    ret z

    inc hl
    inc a
    jr nz, jr_00e_6555

    dec hl
    ld a, [hl+]
    ld [$ccdf], a

jr_00e_6555:
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    call $3e5c
    jp hl


    inc bc
    sub e
    ld h, [hl]
    inc bc
    sub e
    ld h, [hl]
    dec b
    db $76
    ld h, [hl]
    dec b
    ld h, h
    ld h, [hl]
    dec b
    ld h, h
    ld h, [hl]
    dec b
    ld h, h
    ld h, [hl]
    dec b
    ld e, b
    ld h, [hl]
    dec b
    ld bc, $0566
    db $76
    ld h, [hl]
    inc bc
    jp hl


    ld h, l
    dec b
    ld e, b
    ld h, [hl]
    dec b
    db $76
    ld h, [hl]
    inc bc
    jp hl


    ld h, l
    dec b
    ld bc, $0366
    sub e
    ld h, [hl]
    dec b
    ld e, b
    ld h, [hl]
    dec b
    db $76
    ld h, [hl]
    dec b
    ld bc, $0566
    ld bc, $0566
    ld h, h
    ld h, [hl]
    dec b
    ld bc, $0566
    ld e, b
    ld h, [hl]
    inc bc
    sub e
    ld h, [hl]
    dec b
    ld e, b
    ld h, [hl]
    inc bc
    db $76
    ld h, [hl]
    rst $38
    inc d
    ld h, [hl]
    ld bc, $6693
    dec b
    ld bc, $0566
    ld e, b
    ld h, [hl]
    dec b
    ld bc, $0566
    ld e, b
    ld h, [hl]
    dec b
    ld bc, $0566
    ld e, b
    ld h, [hl]
    dec b
    inc d
    ld h, [hl]
    dec b
    ld h, h
    ld h, [hl]
    dec b
    ld e, b
    ld h, [hl]
    rst $38
    inc d
    ld h, [hl]
    rst $38
    inc d
    ld h, [hl]
    rst $38
    inc d
    ld h, [hl]
    rst $38
    inc d
    ld h, [hl]
    inc bc
    ld e, b
    ld h, [hl]
    dec b
    ld bc, $ff66
    inc d
    ld h, [hl]
    rst $38
    inc d
    ld h, [hl]
    dec b
    ld e, b
    ld h, [hl]
    rst $38
    inc d
    ld h, [hl]
    rst $38
    inc d
    ld h, [hl]
    cp $40
    ret nc

    jp Jump_00e_672a


    cp $20
    ret nc

    jp Jump_00e_67f2


    cp $40
    ret nc

    jp Jump_00e_67b5


    cp $40
    ret nc

    jp Jump_00e_67f2


    cp $40
    ld a, $0a
    call Call_00e_67cf
    jp c, Jump_00e_66d6

    ld a, $05
    call Call_00e_67cf
    ret nc

    jp Jump_00e_672a


    ld a, [$cfe9]
    and a
    ret z

    jp Jump_00e_6786


    cp $40
    ret nc

    jp Jump_00e_67f8


    cp $40
    ret nc

    jp Jump_00e_67fe


    cp $80
    ret nc

    ld a, $0a
    call Call_00e_67cf
    ret nc

    jp Jump_00e_66d0


    cp $40
    ret nc

    jp Jump_00e_67f2


    cp $40
    ret nc

    jp Jump_00e_66d0


    cp $40
    ret nc

    ld a, $0a
    call Call_00e_67cf
    ret nc

    jp Jump_00e_66d6


    cp $20
    ret nc

    ld a, $05
    call Call_00e_67cf
    ret nc

    jp Jump_00e_66ca


    cp $20
    ret nc

    ld a, $05
    call Call_00e_67cf
    ret nc

    jp Jump_00e_66a0


    cp $80
    ret nc

    ld a, $05
    call Call_00e_67cf
    ret nc

    jp Jump_00e_66d0


    cp $40
    ret nc

    jp Jump_00e_67f8


    cp $14
    jp c, Jump_00e_672a

    cp $80
    ret nc

    ld a, $04
    call Call_00e_67cf
    ret nc

    jp Jump_00e_66d0


    cp $80
    ret nc

    ld a, $05
    call Call_00e_67cf
    ret nc

    jp Jump_00e_66d6


    and a
    ret


Jump_00e_6695:
    ld hl, $ccdf
    dec [hl]
    scf
    ret


Call_00e_669b:
    ld a, $8e
    jp $3740


Jump_00e_66a0:
    call Call_00e_6791
    ld a, $10
    ld [$cf05], a
    ld de, $ceeb
    ld hl, $cfe7
    ld a, [hl-]
    ld [de], a
    inc de
    ld a, [hl]
    ld [de], a
    inc de
    ld hl, $cff5
    ld a, [hl-]
    ld [de], a
    inc de
    ld [$cee9], a
    ld [$cfe7], a
    ld a, [hl]
    ld [de], a
    ld [$ceea], a
    ld [$cfe6], a
    jr jr_00e_6718

Jump_00e_66ca:
    ld a, $14
    ld b, $14
    jr jr_00e_66da

Jump_00e_66d0:
    ld a, $13
    ld b, $32
    jr jr_00e_66da

Jump_00e_66d6:
    ld a, $12
    ld b, $c8

jr_00e_66da:
    ld [$cf05], a
    ld hl, $cfe7
    ld a, [hl]
    ld [$ceeb], a
    add b
    ld [hl-], a
    ld [$ceed], a
    ld a, [hl]
    ld [$ceec], a
    ld [$ceee], a
    jr nc, jr_00e_66f7

    inc a
    ld [hl], a
    ld [$ceee], a

jr_00e_66f7:
    inc hl
    ld a, [hl-]
    ld b, a
    ld de, $cff5
    ld a, [de]
    dec de
    ld [$cee9], a
    sub b
    ld a, [hl+]
    ld b, a
    ld a, [de]
    ld [$ceea], a
    sbc b
    jr nc, jr_00e_6718

    inc de
    ld a, [de]
    dec de
    ld [hl-], a
    ld [$ceed], a
    ld a, [de]
    ld [hl], a
    ld [$ceee], a

jr_00e_6718:
    call Call_00e_6835
    ld hl, $c3ca
    xor a
    ld [$cf94], a
    ld a, $48
    call $3e6d
    jp Jump_00e_6695


Jump_00e_672a:
    ld a, [$d89c]
    ld c, a
    ld hl, $d8a5
    ld d, $00

jr_00e_6733:
    ld a, [hl+]
    ld b, a
    ld a, [hl-]
    or b
    jr z, jr_00e_673a

    inc d

jr_00e_673a:
    push bc
    ld bc, $002c
    add hl, bc
    pop bc
    dec c
    jr nz, jr_00e_6733

    ld a, d
    cp $02
    jp nc, Jump_00e_674b

    and a
    ret


Jump_00e_674b:
    ld a, [$cfe8]
    ld hl, $d8a5
    ld bc, $002c
    call $3a87
    ld d, h
    ld e, l
    ld hl, $cfe6
    ld bc, $0004
    call $00b5
    ld hl, $6781
    call $3c49
    ld a, $01
    ld [$d11d], a
    ld hl, $490e
    ld b, $0f
    call $35d6
    xor a
    ld [$d11d], a
    ld a, [$d12b]
    cp $04
    ret z

    scf
    ret


    rla
    cp [hl]
    ld b, b
    ld [hl+], a
    ld d, b

Jump_00e_6786:
    call Call_00e_669b
    call Call_00e_6791
    ld a, $34
    jp Jump_00e_682c


Call_00e_6791:
    ld a, [$cfe8]
    ld hl, $d8a8
    ld bc, $002c
    call $3a87
    xor a
    ld [hl], a
    ld [$cfe9], a
    ld hl, $d069
    res 0, [hl]
    ret


    call Call_00e_669b
    ld hl, $d068
    set 0, [hl]
    ld a, $2e
    jp Jump_00e_682c


Jump_00e_67b5:
    call Call_00e_669b
    ld hl, $d068
    set 1, [hl]
    ld a, $37
    jp Jump_00e_682c


    call Call_00e_669b
    ld hl, $d068
    set 2, [hl]
    ld a, $3a
    jp Jump_00e_682c


Call_00e_67cf:
    ldh [$99], a
    ld hl, $cff4
    ld a, [hl+]
    ldh [$95], a
    ld a, [hl]
    ldh [$96], a
    ld b, $02
    call $38b9
    ldh a, [$98]
    ld c, a
    ldh a, [$97]
    ld b, a
    ld hl, $cfe7
    ld a, [hl-]
    ld e, a
    ld a, [hl]
    ld d, a
    ld a, d
    sub b
    ret nz

    ld a, e
    sub c
    ret


Jump_00e_67f2:
    ld b, $0a
    ld a, $41
    jr jr_00e_6808

Jump_00e_67f8:
    ld b, $0b
    ld a, $42
    jr jr_00e_6808

Jump_00e_67fe:
    ld b, $0c
    ld a, $43
    jr jr_00e_6808

    ld b, $0d
    ld a, $44

jr_00e_6808:
    ld [$cf05], a
    push bc
    call Call_00e_6835
    pop bc
    ld hl, $cfcd
    ld a, [hl-]
    push af
    ld a, [hl]
    push af
    push hl
    ld a, $af
    ld [hl+], a
    ld [hl], b
    ld hl, $7428
    ld b, $0f
    call $35d6
    pop hl
    pop af
    ld [hl+], a
    pop af
    ld [hl], a
    jp Jump_00e_6695


Jump_00e_682c:
    ld [$cf05], a
    call Call_00e_6835
    jp Jump_00e_6695


Call_00e_6835:
    ld a, [$cf05]
    ld [$d11e], a
    call $2fcf
    ld hl, $6844
    jp $3c49


    rla
    push de
    ld b, b
    ld [hl+], a
    ld d, b
    call Call_00e_685d
    call Call_00e_6869
    ld a, [$d057]
    dec a
    ret z

    jp Jump_00e_6887


    call Call_00e_685d
    jp Jump_00e_6887


Call_00e_685d:
    ld de, $697e
    ld hl, $8310
    ld bc, $0e04
    jp $1848


Call_00e_6869:
    call Call_00e_6902
    ld hl, $d16b
    ld de, $d163
    call Call_00e_68a6
    ld a, $60
    ld hl, $d081
    ld [hl+], a
    ld [hl], a
    ld a, $08
    ld [$cd3e], a
    ld hl, $c300
    jp Jump_00e_68e1


Jump_00e_6887:
    call Call_00e_6919
    ld hl, $d8a4
    ld de, $d89c
    call Call_00e_68a6
    ld hl, $d081
    ld a, $48
    ld [hl+], a
    ld [hl], $20
    ld a, $f8
    ld [$cd3e], a
    ld hl, $c318
    jp Jump_00e_68e1


Call_00e_68a6:
    ld a, [de]
    push af
    ld de, $cee9
    ld c, $06
    ld a, $34

jr_00e_68af:
    ld [de], a
    inc de
    dec c
    jr nz, jr_00e_68af

    pop af
    ld de, $cee9

jr_00e_68b8:
    push af
    call Call_00e_68c2
    inc de
    pop af
    dec a
    jr nz, jr_00e_68b8

    ret


Call_00e_68c2:
    inc hl
    ld a, [hl+]
    and a
    jr nz, jr_00e_68cd

    ld a, [hl]
    and a
    ld b, $33
    jr z, jr_00e_68d8

jr_00e_68cd:
    inc hl
    inc hl
    ld a, [hl]
    and a
    ld b, $32
    jr nz, jr_00e_68da

    dec b
    jr jr_00e_68da

jr_00e_68d8:
    inc hl
    inc hl

jr_00e_68da:
    ld a, b
    ld [de], a
    ld bc, $0028
    add hl, bc
    ret


Call_00e_68e1:
Jump_00e_68e1:
    ld de, $cee9
    ld c, $06

jr_00e_68e6:
    ld a, [$d082]
    ld [hl+], a
    ld a, [$d081]
    ld [hl+], a
    ld a, [de]
    ld [hl+], a
    xor a
    ld [hl+], a
    ld a, [$d081]
    ld b, a
    ld a, [$cd3e]
    add b
    ld [$d081], a
    inc de
    dec c
    jr nz, jr_00e_68e6

    ret


Call_00e_6902:
    ld hl, $6916
    ld de, $cd3f
    ld bc, $0003
    call $00b5
    ld hl, $c47a
    ld de, $ffff
    jr jr_00e_6930

    ld [hl], e
    ld [hl], a
    ld l, a

Call_00e_6919:
    ld hl, $692d
    ld de, $cd3f
    ld bc, $0003
    call $00b5
    ld hl, $c3c9
    ld de, $0001
    jr jr_00e_6930

    ld [hl], e
    ld [hl], h
    ld a, b

jr_00e_6930:
    ld [hl], $73
    ld bc, $0014
    add hl, bc
    ld a, [$cd40]
    ld [hl], a
    ld a, $08

jr_00e_693c:
    add hl, de
    ld [hl], $76
    dec a
    jr nz, jr_00e_693c

    add hl, de
    ld a, [$cd41]
    ld [hl], a
    ret


    call Call_00e_685d
    ld hl, $d16b
    ld de, $d163
    call Call_00e_68a6
    ld hl, $d081
    ld a, $50
    ld [hl+], a
    ld [hl], $40
    ld a, $08
    ld [$cd3e], a
    ld hl, $c300
    call Call_00e_68e1
    ld hl, $d8a4
    ld de, $d89c
    call Call_00e_68a6
    ld hl, $d081
    ld a, $50
    ld [hl+], a
    ld [hl], $68
    ld hl, $c318
    jp Jump_00e_68e1


    nop
    nop
    inc e
    inc e
    ld [hl+], a
    ld a, $51
    ld l, a
    ld b, c
    ld a, a
    ld a, a
    ld b, c
    ld a, $22
    inc e
    inc e
    nop
    nop
    inc e
    inc e
    ld a, $3e
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, $3e
    inc e
    inc e
    nop
    nop
    ld b, c
    ld e, l
    ld a, $22
    ld a, $55
    ld a, $49
    ld a, $55
    ld a, $22
    ld b, c
    ld e, l
    nop
    nop
    inc e
    nop
    ld [hl+], a
    nop
    ld b, c
    nop
    ld b, c
    nop
    ld b, c
    nop
    ld [hl+], a
    nop
    inc e
    nop
    ccf
    ccf
    ld a, a
    ld a, a
    jp $c3c3


    jp $ffff


    ret nz

    ret nz

    ret nz

    ret nz

    jp $ffc3


    rst $38
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    rst $38
    rst $38
    db $fc
    db $fc
    cp $fe
    jp $c3c3


    jp $fbfb


    rlca
    rlca
    inc bc
    inc bc
    jp $c7c3


    rst $00
    rst $00
    rst $00
    rst $00
    rst $00
    rst $00
    rst $00
    rst $00
    rst $00
    rst $00
    rst $00
    rst $00
    rst $00
    rst $00
    rst $00
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    db $fc
    rst $38
    db $fc
    rst $38
    db $fc
    rst $38
    db $fc
    ccf
    db $fc
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ccf
    rst $38
    ccf
    rst $38
    ccf
    rst $38
    ccf
    rst $38
    ccf
    db $e3
    db $e3
    db $e3
    db $e3
    db $e3
    db $e3
    db $e3
    db $e3
    db $e3
    db $e3
    db $e3
    db $e3
    db $e3
    db $e3
    db $e3
    db $e3
    ccf
    db $fc
    rst $38
    db $fc
    rst $38
    db $fc
    rst $38
    db $fc
    rst $38
    db $fc
    rst $38
    db $fc
    rst $38
    db $fc
    rst $38
    db $fc
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ccf
    rst $38
    ccf
    rst $38
    ccf
    rst $38
    ccf
    rst $38
    ccf
    rst $38
    ccf
    rst $38
    ccf
    rst $38
    ccf
    rst $00
    rst $00
    rst $00
    rst $00
    rst $00
    rst $00
    rst $00
    rst $00
    rst $00
    rst $00
    rst $00
    rst $00
    jp $c0c3


    ret nz

    rst $38
    db $fc
    rst $38
    db $fc
    rst $38
    db $fc
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    nop
    rst $38
    ccf
    rst $38
    ccf
    rst $38
    ccf
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    db $fc
    db $fc
    nop
    nop
    db $e3
    db $e3
    db $e3
    db $e3
    jp $c3c3


    jp $8383


    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    ret nz

    ret nz

    ret nz

    ret nz

    ret nz

    ret nz

    ret nz

    ret nz

    ret nz

    ret nz

    ret nz

    ret nz

    ret nz

    ret nz

    ret nz

    ret nz

    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ldh a, [$f0]
    ldh a, [$f0]
    sub b
    sub b
    ldh a, [$f0]
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    inc bc
    inc bc
    ld b, $06
    dec c
    dec c
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    jp Jump_00e_63c3


    ld h, e
    or e
    or e
    rst $08
    rst $08
    call $cdcd
    call $cfcf
    ret nz

    ret nz

    ret nz

    ret nz

    ret nz

    ret nz

    ret nz

    ret nz

    sbc a
    sbc a
    ld l, e
    ld l, e
    ld l, e
    ld l, e
    sbc a
    sbc a
    ldh a, [$f0]
    sub b
    sub b
    ldh a, [$f0]
    ldh a, [$f0]
    rlca
    rlca
    inc c
    inc c
    dec de
    dec de
    rla
    rla
    rla
    rla
    dec de
    dec de
    inc c
    inc c
    rlca
    rlca
    adc e
    adc e
    set 1, e
    ld l, l
    ld l, l
    and [hl]
    and [hl]
    and e
    and e
    ld h, b
    ld h, b
    ret nz

    ret nz

    add b
    add b
    db $d3
    db $d3
    db $d3
    db $d3
    or e
    or e
    ld h, e
    ld h, e
    jp $03c3


    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    nop
    nop
    nop
    nop
    nop
    nop
    inc c
    inc c
    inc a
    inc a
    pop af
    pop af
    pop bc
    pop bc
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    jr jr_00e_6b8e

    ld a, b
    ld a, b
    ldh [$e0], a
    add b
    add b
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld [bc], a
    ld [bc], a
    ld a, [bc]
    ld a, [bc]
    add hl, hl
    add hl, hl
    and l
    and l

jr_00e_6b8e:
    inc bc
    inc bc
    inc bc
    inc bc
    inc hl
    inc hl
    and e
    and e
    sub e
    sub e
    ld d, e
    ld d, e
    ld c, e
    ld c, e
    dec hl
    dec hl
    ret nz

    ret nz

    ret nz

    ret nz

    ret nz

    ret nz

    ret nz

    ret nz

    ret nz

    ret nz

    ret nz

    ret nz

    ld a, a
    ld a, a
    ccf
    ccf
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    sub h
    sub h
    ld d, d
    ld d, d
    ld c, d
    ld c, d
    jr z, jr_00e_6bee

    jr nz, jr_00e_6be8

    nop
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    and e
    and e
    add a
    add a
    ld b, $06
    ld c, $0e
    inc e
    inc e
    ld a, b
    ld a, b
    ldh a, [$f0]
    ret nz

    ret nz

    nop
    nop
    nop
    nop
    nop
    nop
    rst $38
    rst $38
    rst $38
    rst $38

jr_00e_6be8:
    nop
    rst $38
    nop
    rst $38
    rst $38
    nop

jr_00e_6bee:
    rst $38
    nop
    nop
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    rra
    rra
    ld a, a
    ld a, a
    ldh [rIE], a
    ret nz

    rst $38
    pop bc
    cp $00
    nop
    nop
    nop
    nop
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    nop
    rst $38
    rst $38
    nop
    jp $c3fc


    db $fc
    jp $c3fc


    db $fc
    jp $c3fc


    db $fc
    jp $fffc


    rst $38
    rst $38
    nop
    ldh [$1f], a
    ret nz

    ccf
    pop bc
    ccf
    jp $c33f


    ccf
    jp $ff3f


    rst $38
    jp $c3fc


    db $fc
    db $e3
    db $fc
    rst $38
    rst $38
    ld a, a
    ld a, a
    nop
    nop
    nop
    nop
    nop
    nop
    jp $c33f


    ccf
    rst $00
    ccf
    rst $38
    rst $38
    cp $fe
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $0301
    inc bc
    rlca
    rlca
    rlca
    ld b, $07
    ld b, $07
    ld b, $07
    rlca
    inc bc
    inc bc
    add b
    add b
    ret nz

    ret nz

    ldh [$e0], a
    ldh [$60], a
    ldh [$60], a
    ldh [$60], a
    ldh [$e0], a
    ret nz

    ret nz

    cp $fe
    ld h, a
    ld h, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld h, a
    ld h, a
    cp $fe
    rst $38
    rst $38
    nop
    rst $38
    nop
    rst $38
    rst $38
    nop
    rst $38
    nop
    nop
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    db $fc
    db $fc
    ld b, $fe
    inc bc
    rst $38
    pop hl
    rra
    pop af
    rrca
    add hl, sp
    rst $00
    add hl, de
    rst $20
    sbc c
    rst $20
    sbc c
    rst $20
    add hl, de
    rst $20
    add hl, de
    rst $20
    ld sp, hl
    rlca
    pop af
    rrca
    inc bc
    rst $38
    ld b, $fe
    db $fc
    db $fc
    sbc c
    rst $20
    sbc c
    rst $20
    sbc c
    rst $20
    sbc c
    rst $20
    sbc c
    rst $20
    sbc c
    rst $20
    sbc c
    rst $20
    sbc c
    rst $20
    rlca
    rlca
    jr jr_00e_6cf1

    jr c, jr_00e_6cfb

    ld a, b
    ld b, a
    ld a, b
    ld b, a
    ld hl, sp-$79
    ld hl, sp-$79
    ld hl, sp-$79
    nop
    nop
    nop
    nop
    inc bc
    inc bc
    rrca
    inc c
    inc de
    inc e
    inc de
    inc e
    inc hl
    inc a
    inc hl
    inc a
    nop
    nop
    nop

jr_00e_6cf1:
    nop
    rra
    rra
    rst $38
    rst $38
    ldh [rIE], a
    nop
    rst $38
    inc bc

jr_00e_6cfb:
    db $fc
    rst $38
    nop
    rlca
    rlca
    rra
    rra
    ld a, b
    ld a, a
    ldh [rIE], a
    ret nz

    rst $38
    inc bc
    db $fc
    rra
    ldh [rIE], a
    nop
    ld hl, $ccd3
    xor a
    ld [hl], a
    ld a, [$cf92]
    ld c, a
    ld b, $01
    call Call_00e_7057
    ldh a, [$d7]
    push af
    xor a
    ld [$d121], a
    dec a
    ld [$cf92], a
    push hl
    push bc
    push de
    ld hl, $d163
    push hl

Jump_00e_6d2e:
jr_00e_6d2e:
    ld hl, $cf92
    inc [hl]
    pop hl
    inc hl
    ld a, [hl]
    cp $ff
    jp z, Jump_00e_6ede

    ld [$cee9], a
    push hl
    ld a, [$cf92]
    ld c, a
    ld hl, $ccd3
    ld b, $02
    call Call_00e_7057
    ld a, c
    and a
    jp z, Jump_00e_6d2e

    ld a, [$cee9]
    dec a
    ld b, $00
    ld hl, $705c
    add a
    rl b
    ld c, a
    add hl, bc
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    push hl
    ld a, [$cf91]
    push af
    xor a
    ld [$cc49], a
    call $1372
    pop af
    ld [$cf91], a
    pop hl

Jump_00e_6d71:
    ld a, [hl+]
    and a
    jr z, jr_00e_6d2e

    ld b, a
    cp $03
    jr z, jr_00e_6d91

    ld a, [$d12b]
    cp $32
    jr z, jr_00e_6d2e

    ld a, b
    cp $02
    jr z, jr_00e_6da4

    ld a, [$ccd4]
    and a
    jr nz, jr_00e_6d2e

    ld a, b
    cp $01
    jr z, jr_00e_6dad

jr_00e_6d91:
    ld a, [$d12b]
    cp $32
    jp nz, Jump_00e_6ed9

    ld a, [hl+]
    ld b, a
    ld a, [$cfb9]
    cp b
    jp c, Jump_00e_6d2e

    jr jr_00e_6db6

jr_00e_6da4:
    ld a, [hl+]
    ld b, a
    ld a, [$cf91]
    cp b
    jp nz, Jump_00e_6ed9

jr_00e_6dad:
    ld a, [hl+]
    ld b, a
    ld a, [$cfb9]
    cp b
    jp c, Jump_00e_6eda

jr_00e_6db6:
    ld [$d127], a
    ld a, $01
    ld [$d121], a
    push hl
    ld a, [hl]
    ld [$ceea], a
    ld a, [$cf92]
    ld hl, $d2b5
    call $15ba
    call $3826
    ld hl, $6f4d
    call $3c49
    ld c, $32
    call $3739
    xor a
    ldh [$ba], a
    ld hl, $c3a0
    ld bc, $0c14
    call $18c4
    ld a, $01
    ldh [$ba], a
    ld a, $ff
    ld [$cfcb], a
    call $0082
    ld hl, $7de9
    ld b, $1e
    call $35d6
    jp c, Jump_00e_6f2e

    ld hl, $6f3e
    call $3c49
    pop hl
    ld a, [hl]
    ld [$d0b5], a
    ld [$cf98], a
    ld [$ceea], a
    ld a, $01
    ld [$d0b6], a
    ld a, $0e
    ld [$d0b7], a
    call $376b
    push hl
    ld hl, $6f43
    call $3c59
    ld a, $89
    call $3740
    call $3748
    ld c, $28
    call $3739
    call $190f
    call Call_00e_6ef7
    ld a, [$d11e]
    push af
    ld a, [$d0b5]
    ld [$d11e], a
    ld a, $3a
    call $3e6d
    ld a, [$d11e]
    dec a
    ld hl, $43de
    ld bc, $001c
    call $3a87
    ld de, $d0b8
    call $00b5
    ld a, [$d0b5]
    ld [$d0b8], a
    pop af
    ld [$d11e], a
    ld hl, $cfa8
    ld de, $cfba
    ld b, $01
    call $3936
    ld a, [$cf92]
    ld hl, $d16b
    ld bc, $002c
    call $3a87
    ld e, l
    ld d, h
    push hl
    push bc
    ld bc, $0022
    add hl, bc
    ld a, [hl+]
    ld b, a
    ld c, [hl]
    ld hl, $cfbb
    ld a, [hl-]
    sub c
    ld c, a
    ld a, [hl]
    sbc b
    ld b, a
    ld hl, $cf9a
    ld a, [hl]
    add c
    ld [hl-], a
    ld a, [hl]
    adc b
    ld [hl], a
    dec hl
    pop bc
    call $00b5
    ld a, [$d0b5]
    ld [$d11e], a
    xor a
    ld [$cc49], a
    call Call_00e_6f5b
    pop hl
    ld a, $42
    call $3e6d
    ld a, [$d057]
    and a
    call z, Call_00e_6f52
    ld a, $3a
    call $3e6d
    ld a, [$d11e]
    dec a
    ld c, a
    ld b, $01
    ld hl, $d2f7
    push bc
    call Call_00e_7057
    pop bc
    ld hl, $d30a
    call Call_00e_7057
    pop de
    pop hl
    ld a, [$cf98]
    ld [hl], a
    push hl
    ld l, e
    ld h, d
    jr jr_00e_6eda

Jump_00e_6ed9:
    inc hl

Jump_00e_6eda:
jr_00e_6eda:
    inc hl
    jp Jump_00e_6d71


Jump_00e_6ede:
    pop de
    pop bc
    pop hl
    pop af
    ldh [$d7], a
    ld a, [$d12b]
    cp $32
    ret z

    ld a, [$d057]
    and a
    ret nz

    ld a, [$d121]
    and a
    call nz, $2307
    ret


Call_00e_6ef7:
    ld a, [$d0b5]
    push af
    ld a, [$d0b8]
    ld [$d0b5], a
    call $376b
    pop af
    ld [$d0b5], a
    ld hl, $cd6d
    ld de, $cf4b

jr_00e_6f0e:
    ld a, [de]
    inc de
    cp [hl]
    inc hl
    ret nz

    cp $50
    jr nz, jr_00e_6f0e

    ld a, [$cf92]
    ld bc, $000b
    ld hl, $d2b5
    call $3a87
    push hl
    call $376b
    ld hl, $cd6d
    pop de
    jp $00b5


Jump_00e_6f2e:
    ld hl, $6f48
    call $3c49
    call $190f
    pop hl
    call Call_00e_6f52
    jp Jump_00e_6d2e


    rla
    jp nz, $2546

    ld d, b
    rla
    rst $08
    ld b, [hl]
    dec h
    ld d, b
    rla
    db $dd
    ld b, [hl]
    dec h
    ld d, b
    rla
    ei
    ld b, [hl]
    dec h
    ld d, b

Call_00e_6f52:
    ld a, [$d12b]
    cp $32
    ret z

    jp $3090


Call_00e_6f5b:
    ld hl, $705c
    ld a, [$d11e]
    ld [$cf91], a
    dec a
    ld bc, $0000
    ld hl, $705c
    add a
    rl b
    ld c, a
    add hl, bc
    ld a, [hl+]
    ld h, [hl]
    ld l, a

jr_00e_6f73:
    ld a, [hl+]
    and a
    jr nz, jr_00e_6f73

jr_00e_6f77:
    ld a, [hl+]
    and a
    jr z, jr_00e_6fb1

    ld b, a
    ld a, [$d127]
    cp b
    ld a, [hl+]
    jr nz, jr_00e_6f77

    ld d, a
    ld a, [$cc49]
    and a
    jr nz, jr_00e_6f96

    ld hl, $d173
    ld a, [$cf92]
    ld bc, $002c
    call $3a87

jr_00e_6f96:
    ld b, $04

jr_00e_6f98:
    ld a, [hl+]
    cp d
    jr z, jr_00e_6fb1

    dec b
    jr nz, jr_00e_6f98

    ld a, d
    ld [$d0e0], a
    ld [$d11e], a
    call $3058
    call $3826
    ld a, $1b
    call $3e6d

jr_00e_6fb1:
    ld a, [$cf91]
    ld [$d11e], a
    ret


    call $3e94
    push hl
    push de
    push bc
    ld hl, $705c
    ld b, $00
    ld a, [$cf91]
    dec a
    add a
    rl b
    ld c, a
    add hl, bc
    ld a, [hl+]
    ld h, [hl]
    ld l, a

jr_00e_6fcf:
    ld a, [hl+]
    and a
    jr nz, jr_00e_6fcf

    jr jr_00e_6fd7

jr_00e_6fd5:
    pop de

jr_00e_6fd6:
    inc hl

jr_00e_6fd7:
    ld a, [hl+]
    and a
    jp z, Jump_00e_704a

    ld b, a
    ld a, [$d127]
    cp b
    jp c, Jump_00e_704a

    ld a, [$cee9]
    and a
    jr z, jr_00e_6ff0

    ld a, [$cd3d]
    cp b
    jr nc, jr_00e_6fd6

jr_00e_6ff0:
    push de
    ld c, $04

jr_00e_6ff3:
    ld a, [de]
    inc de
    cp [hl]
    jr z, jr_00e_6fd5

    dec c
    jr nz, jr_00e_6ff3

    pop de
    push de
    ld c, $04

jr_00e_6fff:
    ld a, [de]
    and a
    jr z, jr_00e_7021

    inc de
    dec c
    jr nz, jr_00e_6fff

    pop de
    push de
    push hl
    ld h, d
    ld l, e
    call Call_00e_704e
    ld a, [$cee9]
    and a
    jr z, jr_00e_7020

    push de
    ld bc, $0012
    add hl, bc
    ld d, h
    ld e, l
    call Call_00e_704e
    pop de

jr_00e_7020:
    pop hl

jr_00e_7021:
    ld a, [hl]
    ld [de], a
    ld a, [$cee9]
    and a
    jr z, jr_00e_6fd5

    push hl
    ld a, [hl]
    ld hl, $0015
    add hl, de
    push hl
    dec a
    ld hl, $4000
    ld bc, $0006
    call $3a87
    ld de, $cee9
    ld a, $0e
    call $009d
    ld a, [$ceee]
    pop hl
    ld [hl], a
    pop hl
    jr jr_00e_6fd5

Jump_00e_704a:
    pop bc
    pop de
    pop hl
    ret


Call_00e_704e:
    ld c, $03

jr_00e_7050:
    inc de
    ld a, [de]
    ld [hl+], a
    dec c
    jr nz, jr_00e_7050

    ret


Call_00e_7057:
    ld a, $10
    jp $3e6d


    ret c

    ld [hl], c
    and $71
    ld a, [c]
    ld [hl], c
    inc bc
    ld [hl], d
    dec d
    ld [hl], d
    inc h
    ld [hl], d
    inc sp
    ld [hl], d
    dec sp
    ld [hl], d
    ld c, e
    ld [hl], d
    ld e, [hl]
    ld [hl], d
    ld h, d
    ld [hl], d
    ld l, [hl]
    ld [hl], d
    add b
    ld [hl], d
    sub c
    ld [hl], d
    sub a
    ld [hl], d
    xor b
    ld [hl], d
    or b
    ld [hl], d
    cp a
    ld [hl], d
    ret nc

    ld [hl], d
    sbc $72
    ldh [$72], a
    ld [$f672], a
    ld [hl], d
    ld b, $73
    dec de
    ld [hl], e
    inc h
    ld [hl], e
    ld [hl-], a
    ld [hl], e
    ld b, [hl]
    ld [hl], e
    ld d, h
    ld [hl], e
    ld h, d
    ld [hl], e
    ld [hl], b
    ld [hl], e
    ld [hl], d
    ld [hl], e
    ld [hl], h
    ld [hl], e
    add h
    ld [hl], e
    sub b
    ld [hl], e
    sbc h
    ld [hl], e
    xor l
    ld [hl], e
    cp [hl]
    ld [hl], e
    rst $08
    ld [hl], e
    ldh [$73], a
    xor $73
    db $fd
    ld [hl], e
    add hl, bc
    ld [hl], h
    dec d
    ld [hl], h
    ld hl, $2d74
    ld [hl], h
    add hl, sp
    ld [hl], h
    ld c, b
    ld [hl], h
    ld e, c
    ld [hl], h
    ld h, a
    ld [hl], h
    ld l, c
    ld [hl], h
    ld [hl], a
    ld [hl], h
    ld a, c
    ld [hl], h
    add l
    ld [hl], h
    sub e
    ld [hl], h
    and d
    ld [hl], h
    and h
    ld [hl], h
    or e
    ld [hl], h
    jp nz, $d174

    ld [hl], h
    db $dd
    ld [hl], h
    rst $18
    ld [hl], h
    pop hl
    ld [hl], h
    db $e3
    ld [hl], h
    rst $28
    ld [hl], h
    nop
    ld [hl], l
    inc c
    ld [hl], l
    ld c, $75
    db $10
    ld [hl], l
    ld [de], a
    ld [hl], l
    inc hl
    ld [hl], l
    inc [hl]
    ld [hl], l
    ld b, d
    ld [hl], l
    ld c, d
    ld [hl], l
    ld d, d
    ld [hl], l
    ld e, d
    ld [hl], l
    ld e, h
    ld [hl], l
    ld l, e
    ld [hl], l
    ld a, d
    ld [hl], l
    ld a, h
    ld [hl], l
    ld a, [hl]
    ld [hl], l
    add b
    ld [hl], l
    sub b
    ld [hl], l
    sub d
    ld [hl], l
    and d
    ld [hl], l
    and h
    ld [hl], l
    and [hl]
    ld [hl], l
    xor b
    ld [hl], l
    or a
    ld [hl], l
    add $75
    db $d3
    ld [hl], l
    db $dd
    ld [hl], l
    db $ec
    ld [hl], l
    ld hl, sp+$75
    ld a, [$fc75]
    ld [hl], l
    dec bc
    db $76
    rla
    db $76
    inc h
    db $76
    ld l, $76
    ld b, d
    db $76
    ld b, h
    db $76
    ld e, d
    db $76
    ld l, h
    db $76
    ld a, [hl]
    db $76
    sub b
    db $76
    sbc a
    db $76
    xor [hl]
    db $76
    cp l
    db $76
    call z, $de76
    db $76
    db $e4
    db $76
    jp hl


    db $76
    xor $76
    db $fc
    db $76
    cp $76
    inc c
    ld [hl], a
    jr jr_00e_71bf

    inc h
    ld [hl], a
    ld [hl-], a
    ld [hl], a
    ld a, $77
    ld b, b
    ld [hl], a
    ld b, d
    ld [hl], a
    ld b, a
    ld [hl], a
    ld c, h
    ld [hl], a
    ld e, h
    ld [hl], a
    ld l, b
    ld [hl], a
    ld l, d
    ld [hl], a
    db $76
    ld [hl], a
    add h
    ld [hl], a
    sub b
    ld [hl], a
    sbc h
    ld [hl], a
    and [hl]
    ld [hl], a
    xor l
    ld [hl], a
    xor a
    ld [hl], a
    or c
    ld [hl], a
    cp a
    ld [hl], a
    pop bc
    ld [hl], a
    call $d177
    ld [hl], a
    db $d3
    ld [hl], a
    rst $18
    ld [hl], a
    pop hl
    ld [hl], a
    db $ed
    ld [hl], a

jr_00e_717c:
    ld sp, hl
    ld [hl], a

jr_00e_717e:
    dec b
    ld a, b
    rlca
    ld a, b
    db $10
    ld a, b
    dec d
    ld a, b
    inc hl
    ld a, b
    inc [hl]
    ld a, b
    ld b, d
    ld a, b
    ld b, h
    ld a, b
    ld d, a
    ld a, b
    ld h, a
    ld a, b
    ld a, c
    ld a, b
    ld a, e
    ld a, b
    adc h
    ld a, b
    sbc d
    ld a, b
    sbc h
    ld a, b
    sbc [hl]
    ld a, b
    and b
    ld a, b
    and d
    ld a, b
    or e
    ld a, b
    pop bc
    ld a, b
    adc $78
    ret c

    ld a, b
    ld [$fc78], a
    ld a, b
    dec c
    ld a, c
    rla
    ld a, c
    ld hl, $2379
    ld a, c
    inc [hl]
    ld a, c
    ld [hl], $79
    jr c, @+$7b

    ld c, c
    ld a, c
    ld e, d

jr_00e_71bf:
    ld a, c
    ld l, e
    ld a, c
    ld a, h
    ld a, c
    adc d
    ld a, c
    adc h
    ld a, c
    adc [hl]
    ld a, c
    sub b
    ld a, c
    sub d
    ld a, c
    and e
    ld a, c
    or l
    ld a, c
    cp l
    ld a, c
    ret nc

    ld a, c
    db $e4
    ld a, c
    nop
    ld e, $9d
    ld a, [hl+]
    ld e, c
    jr z, jr_00e_717c

    jr nc, jr_00e_717e

    scf
    sbc l
    ld b, b
    ld e, c
    nop
    nop
    ld a, [de]
    ld e, c
    rra
    ld [hl+], a
    inc h
    ld [hl+], a
    add hl, hl
    ccf
    ld l, $3f
    nop
    ld bc, $a710
    nop
    ld [$0c18], sp
    ld e, e
    dec d
    jr jr_00e_721a

    jr jr_00e_7223

    jr jr_00e_722c

    jr jr_00e_7203

jr_00e_7203:
    ld [bc], a
    ld a, [bc]
    ld bc, $008e
    dec c
    cpl
    ld [de], a
    cpl
    jr jr_00e_7234

    rra
    db $76
    daa
    db $76
    jr nc, jr_00e_728a

    nop
    ld bc, $2314
    nop
    add hl, bc

jr_00e_721a:
    dec hl
    rrca
    rra
    ld d, $77
    dec e
    ld b, c
    inc h
    ld h, c

jr_00e_7223:
    nop
    ld bc, $8d1e

jr_00e_7227:
    nop
    ld de, $1631
    ld a, b

jr_00e_722c:
    dec e
    ld d, l
    inc h
    ld d, [hl]
    dec hl
    sbc c
    nop
    nop

jr_00e_7234:
    ld [$0e55], sp
    ld d, l
    ld a, [hl+]
    ld e, c
    nop
    nop
    ld [de], a
    ld e, [hl]
    ld d, $39
    dec de
    ld e, [hl]
    ld hl, $255e
    add l
    inc l
    add l
    scf
    ld e, [hl]
    nop
    ld bc, $9a24
    nop
    ld e, $4b
    rra
    ld c, e
    jr nz, jr_00e_72a0

    ld hl, $264b
    ld c, e
    ld l, $4b
    ld [hl], $4f
    nop
    nop
    inc e
    ld e, [hl]
    nop
    nop
    rlca
    ld [hl+], a
    rrca

jr_00e_7266:
    ld [hl+], a
    rla
    ld [hl+], a
    rra
    ld e, c
    daa
    ccf
    nop
    ld [bc], a
    cpl
    ld bc, $000a
    inc d
    ld c, a
    ld d, $5e
    jr nz, jr_00e_72d7

    dec h
    ld e, [hl]
    ld a, [hl+]
    ld e, [hl]
    jr nc, jr_00e_72ce

    nop
    ld bc, $8818
    nop
    ld e, $99
    ld hl, $2599
    sbc c

jr_00e_728a:
    ld a, [hl+]
    sbc c
    jr nc, jr_00e_7227

    scf
    sub a
    nop
    nop
    dec e
    ld e, a
    ld h, h
    ld b, l
    nop
    ld bc, $a810
    nop
    ld [$0e18], sp
    jr jr_00e_72b5

jr_00e_72a0:
    jr jr_00e_72bf

    jr @+$26

    jr jr_00e_72d1

    jr jr_00e_72a8

jr_00e_72a8:
    nop
    ld [$0e55], sp
    ld d, l
    ld a, [hl+]
    ld e, c
    nop
    ld bc, $9110
    nop
    add hl, bc

jr_00e_72b5:
    dec e
    ld a, [bc]
    ld h, $0c
    sbc l
    dec c
    sbc e
    ld l, $9b
    nop

jr_00e_72bf:
    ld bc, $012a
    nop
    ld e, $9d
    inc hl
    sbc l
    jr z, jr_00e_7266

    ld a, [hl+]
    ld e, c
    ld [hl-], a
    sbc l
    scf

jr_00e_72ce:
    ld e, c
    nop
    nop

jr_00e_72d1:
    rra
    ld l, l
    ld [hl+], a

jr_00e_72d4:
    ld [hl+], a
    inc h
    ld d, l

jr_00e_72d7:
    ld h, $3b
    jr z, @+$3d

    ld c, h
    add hl, sp
    nop
    nop
    nop
    nop
    ld [bc], a
    ld d, [hl]
    rlca
    add a
    ld a, [bc]
    ld [hl+], a
    inc c
    ld e, [hl]
    nop
    nop
    add hl, de
    ld a, a
    ld e, $55
    jr nz, jr_00e_7313

    add hl, hl
    dec sp
    inc [hl]
    jr c, jr_00e_72f6

jr_00e_72f6:
    ld [bc], a
    ld [hl+], a
    ld bc, $008b
    ld [de], a
    jr nc, @+$19

    add b
    ld e, $3e
    daa
    ld a, [hl-]
    ld [hl-], a
    ld a, [hl-]
    nop
    ld bc, $9b1e
    nop
    rlca
    ld e, h
    dec c
    ld e, h
    ld [de], a
    ld e, h
    ld d, $5c
    dec de

jr_00e_7313:
    ld e, h
    ld hl, $285c
    ld e, h
    jr nc, jr_00e_7352

    nop
    ld bc, $9319
    nop
    dec de
    ld e, a
    inc hl
    ld e, a
    nop
    nop
    ld de, $14a3
    and e
    jr jr_00e_72ce

    dec e
    and e
    inc hl
    and e
    jr nc, jr_00e_72d4

    nop
    ld [bc], a
    ld [hl+], a
    ld bc, $0098
    ld de, $1637
    ld [hl], c
    dec de
    dec a
    jr nz, jr_00e_737c

    dec h
    ld l, c
    ld a, [hl+]
    ld d, [hl]
    cpl
    jr c, jr_00e_7346

jr_00e_7346:
    nop
    ld [$0f38], sp
    ld e, c
    jr @+$24

    rra
    dec sp
    ld a, [hl+]
    ld [hl+], a
    inc [hl]

jr_00e_7352:
    jr c, jr_00e_7354

jr_00e_7354:
    nop
    add hl, de
    inc c
    ld e, $a3
    inc h
    and e
    dec hl
    ld [hl+], a
    ld sp, $36a3
    inc c
    nop
    nop
    dec e
    ld c, [hl]
    jr nz, jr_00e_73b5

    inc h
    ld c, [hl]
    daa
    ld c, a
    dec l
    ld c, a
    ld sp, $004f
    nop
    nop

jr_00e_7372:
    nop
    nop
    ld [bc], a
    jr nz, jr_00e_7378

    inc d

jr_00e_7378:
    nop
    add hl, bc
    inc l
    ld a, [bc]

jr_00e_737c:
    add c
    inc c
    ld h, $0e
    dec [hl]
    ld [hl-], a
    ld a, [hl]
    nop
    nop
    rrca
    inc d
    inc de
    inc d
    add hl, de
    inc d
    ld hl, $2b14
    inc d
    nop
    nop
    add hl, bc
    ld b, c
    rrca
    ld b, c
    add hl, de
    ld b, c
    ld [hl+], a
    ld b, c
    dec hl

jr_00e_739a:
    ld b, c
    nop
    ld bc, $9609
    nop
    dec b
    inc e
    ld b, $81
    rlca
    inc e
    inc e
    inc e
    inc h
    inc e
    inc l
    inc e
    nop
    ld bc, $0825
    nop
    ld [de], a
    ld e, l
    ld d, $5d

jr_00e_73b5:
    dec de
    ld e, l
    ld hl, $285d
    add l
    jr nc, jr_00e_741b

    nop
    ld bc, $9564
    nop
    db $10
    inc a
    inc d
    inc a
    dec de
    inc a
    rra
    ld l, c
    ld h, $5e
    ld a, [hl+]
    ld b, l
    nop
    ld bc, $312a
    nop
    dec bc
    sbc c
    db $10
    sbc c
    dec d
    sbc c
    dec e
    sbc c
    inc h
    sbc l
    ld a, [hl+]
    ld e, c
    nop
    nop
    jr jr_00e_7438

    add hl, de
    ld a, [hl-]
    ld h, $3a
    inc l
    ld d, l
    jr nc, jr_00e_7372

    ld [hl], $87
    nop
    ld bc, $7e2a
    nop
    inc d
    ld b, d
    add hl, de
    ld b, d
    inc h
    ld b, l
    inc l
    ld b, l
    inc [hl]
    ld b, d
    nop
    nop
    rrca
    ld d, [hl]
    inc d
    ld e, a
    add hl, de
    ld d, l
    daa
    ld e, [hl]
    cpl
    ld e, [hl]
    nop
    nop
    ld hl, $2688
    adc b
    dec hl
    adc b
    jr nc, jr_00e_739a

    dec [hl]
    adc b
    nop
    nop
    ld hl, $2645
    ld b, l
    dec hl

jr_00e_741b:
    ld b, l
    jr nc, jr_00e_7463

    dec [hl]
    ld b, l
    nop
    nop
    ld a, [bc]
    adc c
    ld de, $1589
    ld e, d
    inc h
    adc c
    cpl
    adc c
    nop
    nop
    dec c
    ld c, [hl]
    inc d
    ld c, [hl]

jr_00e_7432:
    ld e, $4e
    daa
    ld c, [hl]

jr_00e_7436:
    jr nc, jr_00e_7486

jr_00e_7438:
    nop
    ld bc, $8014
    nop
    add hl, bc
    inc a
    ld a, [bc]
    ld a, a
    dec bc
    ld b, l
    inc c
    ld e, a
    inc [hl]
    add l
    nop
    ld bc, $811a
    nop
    inc c
    ld d, [hl]
    ld de, $185c
    ld e, [hl]
    dec e
    ld e, [hl]
    jr nz, @+$60

    dec h
    ld e, [hl]
    nop
    nop
    dec bc
    sbc c
    db $10
    sbc c
    dec d
    sbc c
    dec e
    sbc c
    inc h

jr_00e_7463:
    sbc c
    dec hl
    sbc c
    nop
    nop
    nop
    nop
    inc h
    ld l, l
    daa
    ld l, l
    dec hl
    ld l, l
    jr nc, jr_00e_74df

    inc [hl]
    ld l, l
    ld c, e
    ld c, h
    nop
    nop
    nop
    nop
    ld [hl+], a
    ld e, [hl]
    dec h
    ld e, [hl]
    ld a, [hl+]
    ld e, [hl]
    ld sp, $365e
    ld e, [hl]
    nop
    nop

jr_00e_7486:
    dec d
    ld h, $19
    ld h, $1d
    ld h, $26
    ld h, $2e
    ld h, $36
    ld h, $00
    ld bc, $8f18
    nop
    jr nz, jr_00e_7432

    dec h
    sbc c
    jr z, jr_00e_7436

    dec l
    sbc c
    jr nc, @-$65

    nop
    nop
    nop
    ld bc, $7514
    nop
    dec bc
    ld b, l
    inc c
    dec h
    dec c
    ld b, d
    ld c, $26
    daa
    dec h
    nop
    ld bc, $781a
    nop
    ld e, $3e
    inc hl
    ld a, $28
    sbc h
    dec l
    inc h
    ld [hl-], a
    ld a, [hl-]

jr_00e_74c1:
    nop
    ld bc, $761a
    nop
    rrca
    inc e
    inc de
    ld e, e
    jr jr_00e_74e8

    rra
    and e
    jr z, jr_00e_7529

    nop
    nop
    dec d
    ld e, c
    inc e
    ld e, c
    inc hl
    ld e, c
    inc l
    ld e, c
    inc sp
    ld e, c
    nop
    nop
    nop

jr_00e_74df:
    nop
    nop
    nop
    nop
    nop
    rlca
    and e
    rrca
    and e

jr_00e_74e8:
    rla
    and e
    rra
    and e
    daa
    ld h, c
    nop
    ld bc, $771f
    nop
    jr jr_00e_7543

    dec de
    ld c, [hl]
    ld e, $4e
    inc hl
    inc a
    ld h, $4f
    dec hl
    ld e, [hl]
    nop
    nop
    ld a, [bc]
    ld d, [hl]
    inc d
    ld d, [hl]
    inc hl
    ld d, [hl]
    dec l
    ld d, [hl]
    inc a
    ld d, [hl]
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $741f
    nop
    inc d
    inc h
    jr jr_00e_753e

    ld e, $41
    inc h
    and c
    jr z, jr_00e_74c1

    inc l
    ld h, c
    nop
    ld bc, $6e0e
    nop
    ld a, [bc]
    ld [hl+], a

jr_00e_7529:
    dec bc
    ld [hl+], a
    add hl, de
    ld [hl+], a
    rra
    ld [hl+], a
    ld h, $22
    dec l
    jr c, jr_00e_7534

jr_00e_7534:
    nop
    ld [de], a
    adc [hl]
    rla
    adc [hl]
    rra
    adc [hl]
    daa
    adc [hl]
    cpl

jr_00e_753e:
    adc [hl]
    ld a, [hl-]
    adc [hl]
    nop
    nop

jr_00e_7543:
    inc sp
    ld a, [hl]
    scf
    adc a
    inc a
    ld c, h
    nop
    nop
    inc sp
    dec sp
    scf
    dec sp
    inc a
    dec sp
    nop
    nop
    inc sp
    ld b, c
    scf
    ld b, c
    inc a
    ld d, l
    nop
    nop
    nop
    ld bc, $901c
    nop
    inc c
    inc l
    ld de, $1806
    inc l
    cpl
    and e
    ld a, [hl-]
    ld e, a
    nop
    ld bc, $8a10
    nop
    ld a, [bc]
    sbc b
    ld c, $22
    ld e, $22
    inc hl
    ld [hl+], a
    jr z, jr_00e_759b

    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld [bc], a
    jr nz, jr_00e_7584

    ld d, e

jr_00e_7584:
    nop
    ld a, [bc]
    ld l, l
    dec bc
    ld h, $10
    dec [hl]
    inc hl
    dec [hl]
    ld a, [hl+]
    dec [hl]
    nop
    nop
    nop
    ld [bc], a
    ld hl, $5501
    nop
    add hl, bc
    dec e
    db $10
    add hl, bc

jr_00e_759b:
    inc d
    ld d, l
    ld e, $55
    dec hl
    ld d, a
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $591e
    nop
    ld a, [bc]
    ld d, [hl]
    inc d
    ld d, [hl]
    dec d
    dec e
    ld d, $26
    ld e, $3f
    nop
    ld bc, $4237
    nop
    ld a, [bc]
    ld d, [hl]
    inc d
    ld d, [hl]
    inc hl
    ld d, [hl]
    dec l
    dec sp
    scf
    ccf
    nop
    ld bc, $5b28
    nop
    ld [hl+], a
    ld b, a
    daa
    and e
    inc l
    dec hl
    ld sp, $0038
    nop
    ld [hl+], a
    and e
    daa
    and e
    ld l, $a3
    dec [hl]
    jr c, jr_00e_75dd

jr_00e_75dd:
    ld bc, $5d20
    nop
    inc de
    ld l, h
    jr jr_00e_7651

    ld e, $6c
    dec h
    ld l, h
    dec l
    jr c, jr_00e_75ec

jr_00e_75ec:
    nop
    inc de
    ld d, d
    jr jr_00e_764d

    ld e, $38
    add hl, hl
    ld l, h
    inc [hl]
    jr c, jr_00e_75f8

jr_00e_75f8:
    nop
    nop
    nop
    nop
    ld bc, $6116
    nop
    ld a, [bc]
    inc e
    db $10
    ld e, e
    jr @-$5b

    rra
    and e
    ld h, $59
    nop
    nop
    ld a, [bc]
    inc e
    ld de, $1ba3
    sbc l
    jr z, jr_00e_766d

    cpl
    ld [hl+], a
    nop
    ld bc, $6328
    nop
    ld [hl+], a
    ld e, $27
    dec hl
    ld l, $83
    dec [hl]
    jr c, jr_00e_7624

jr_00e_7624:
    nop
    ld [hl+], a
    ld b, l
    daa
    ld b, l
    inc l
    ld b, l
    ld sp, $0038
    ld [bc], a
    ld a, [bc]
    ld bc, $0065
    add hl, bc
    ld h, $0e
    ld h, $13
    ld h, $18
    ld h, $1d
    ld h, $22
    ld [hl+], a
    daa
    ld h, $00
    nop
    nop
    ld [bc], a
    jr nz, jr_00e_7648

    ld h, a

jr_00e_7648:
    ld [bc], a
    ld hl, $6801
    ld [bc], a

jr_00e_764d:
    ld [hl+], a
    ld bc, $0069

jr_00e_7651:
    inc d
    ld h, $16
    inc e
    dec h
    inc e
    dec l
    inc e
    nop
    nop
    dec de
    ld a, [hl]
    rra
    ld a, [hl]
    dec h
    ld a, [hl]
    jr z, jr_00e_76e1

    ld a, [hl+]
    ld a, [hl]
    inc l
    ld a, [hl]
    jr nc, jr_00e_76e7

    ld c, c
    ld c, h
    nop
    nop

jr_00e_766d:
    dec de
    ld [hl+], a
    rra
    ld [hl+], a
    dec h
    ld [hl+], a
    jr z, jr_00e_7697

    ld a, [hl+]
    ld [hl+], a
    inc l
    ld [hl+], a
    jr nc, @+$24

    ld [hl], $55
    nop
    nop
    dec de
    dec sp
    rra
    ld a, a
    dec h
    ld a, a
    jr z, jr_00e_7706

    inc l
    jr c, @+$31

    jr c, jr_00e_76bc

    jr c, jr_00e_76c4

    jr c, jr_00e_7690

jr_00e_7690:
    ld bc, $2916
    nop
    inc d
    ld b, e
    add hl, de

jr_00e_7697:
    ld b, e
    jr nz, jr_00e_76df

    daa
    ld b, l
    ld l, $42
    nop
    ld bc, $8210
    nop
    ld a, [bc]
    ld l, l
    rrca
    ld l, l
    db $10
    ld e, a
    inc e
    ld l, l
    ld a, [hl-]
    ld e, a
    nop
    ld bc, $2d10
    nop
    ld a, [bc]
    inc hl
    rrca
    ld e, c
    db $10
    sbc l
    ld de, $1222
    adc c

jr_00e_76bc:
    nop
    ld bc, $2e18
    nop
    dec c
    ld c, [hl]
    inc d

jr_00e_76c4:
    ld c, [hl]
    dec de
    sub e
    ld [hl+], a
    sub e
    add hl, hl
    sub e
    nop
    ld [bc], a
    ld [hl+], a
    ld bc, $006f
    ld c, $42
    rrca
    ld b, l
    ld a, [de]
    ld [hl+], a
    ld hl, $2938
    jr c, jr_00e_770d

    jr c, jr_00e_76de

jr_00e_76de:
    nop

jr_00e_76df:
    inc hl
    dec sp

jr_00e_76e1:
    jr z, jr_00e_771b

    nop
    ld bc, $7107

jr_00e_76e7:
    nop
    nop
    ld bc, $720a
    nop
    nop
    nop
    inc c
    add hl, hl
    db $10
    add hl, hl
    inc d
    add hl, hl
    add hl, de
    add hl, hl
    ld e, $2a
    inc hl
    add hl, hl
    nop
    nop
    nop
    nop
    inc d
    ld b, c
    jr @+$43

    ld e, $41
    daa

jr_00e_7706:
    ld b, c
    dec l
    ld b, c
    inc sp
    ld b, c
    nop
    nop

jr_00e_770d:
    rrca
    ld b, l
    dec d
    ld b, l
    dec de
    ld b, l
    dec h
    ld b, l
    ld l, $88
    nop
    nop
    rrca
    ld e, e

jr_00e_771b:
    inc de
    ld e, e
    jr @+$5d

    inc hl
    and e
    daa
    ld e, c
    nop
    nop
    jr jr_00e_7775

    dec de
    ld c, [hl]
    ld e, $4e
    ld h, $4e
    dec hl
    ld c, a
    ld [hl-], a
    ld e, [hl]
    nop
    nop
    ld e, $7f
    inc hl
    ld a, a
    inc l
    ld a, a
    ld sp, $3238
    sbc h
    nop
    nop
    nop
    nop
    nop
    ld bc, $7c07
    nop
    nop
    ld bc, $7d0a
    nop
    nop
    nop
    inc c
    inc a
    rrca
    ld c, [hl]
    db $10
    ld c, [hl]
    ld de, $154e
    ld c, [hl]
    ld a, [de]
    ld c, [hl]
    jr nz, jr_00e_77aa

    nop
    nop
    inc d
    ld b, d
    add hl, de
    ld b, d
    inc h
    ld b, d
    inc l
    ld b, d
    inc [hl]
    adc b
    nop
    nop
    nop
    nop
    inc e
    ld e, [hl]
    rra
    ld e, [hl]
    daa
    ld e, [hl]
    jr nc, jr_00e_77ab

    dec sp
    ld e, a

jr_00e_7775:
    nop
    nop
    inc c
    ld e, a
    ld de, $185f
    ld e, a
    ld hl, $255f
    ld e, a
    dec hl
    ld e, [hl]
    nop
    nop
    ld a, [bc]
    ld l, l

Call_00e_7787:
    rrca
    ld l, l
    dec d
    ld l, l
    jr nz, jr_00e_77fa

    inc a
    ld e, a
    nop
    nop
    ccf
    ld e, [hl]
    ld b, d
    ld e, [hl]
    ld b, [hl]
    ld e, [hl]
    ld c, e
    ld e, [hl]
    ld d, c
    ld e, [hl]
    nop
    nop

jr_00e_779d:
    inc hl
    ld [hl+], a
    add hl, hl
    ld e, c
    dec l
    ccf
    ld e, b
    adc [hl]
    nop
    ld bc, $1619
    nop

jr_00e_77aa:
    rrca

jr_00e_77ab:
    ld hl, $0000
    nop
    nop
    nop
    nop
    ld e, $7c
    ld hl, $257c
    ld a, h
    dec l
    ld a, h
    dec [hl]
    ld a, h
    inc a
    ld a, h
    nop
    nop
    nop
    nop
    inc d
    sbc b
    add hl, de
    sbc b
    ld [hl+], a
    sbc b
    ld a, [hl+]
    sbc b
    ld sp, $0098
    nop
    ld [hl-], a
    sbc c
    nop
    nop
    nop
    nop
    ld de, $1699
    sbc c
    dec e
    sbc c
    jr z, jr_00e_7775

    ld [hl-], a
    sbc c
    nop
    nop
    nop
    nop
    jr nz, jr_00e_7860

    daa
    ld a, h
    dec hl
    ld a, h
    ld sp, $3599
    ld d, l
    nop
    nop
    inc c
    and e
    ld de, $18a3
    and e
    inc sp
    and e
    ccf
    ld e, a
    nop
    nop

jr_00e_77fa:
    add hl, de
    sbc e
    ld hl, $299b
    sbc e
    jr nc, jr_00e_779d

    scf
    sbc e
    nop
    nop
    nop
    ld bc, $0e37
    nop
    dec e
    ld e, a
    jr c, jr_00e_786d

    nop
    ld bc, $2610
    nop
    nop
    nop
    db $10
    ld l, c
    inc d
    ld l, c
    dec de
    ld l, c
    rra
    ld l, c
    ld h, $5e
    ld a, [hl+]
    ld l, c
    nop
    ld bc, $9714
    nop
    dec b
    inc e
    inc c
    inc e
    dec d
    inc e
    rra
    inc e
    jr z, jr_00e_784d

    ld sp, $0077
    nop
    dec b
    inc e
    inc c
    dec c
    dec d
    dec c
    rra
    dec c
    inc l
    ld h, d
    ld [hl], $0d
    nop
    nop
    nop
    ld bc, $0910
    nop
    rlca
    ld b, a
    ld a, [bc]
    dec e
    inc d

jr_00e_784d:
    ld c, l
    ld d, $4b
    ld d, $26
    add hl, hl
    ld c, a
    jr nc, jr_00e_78a5

    nop
    nop
    rlca
    ld c, e
    dec c
    ld c, e
    ld d, $4b
    ld e, $4b

jr_00e_7860:
    dec hl
    ld c, e
    scf
    ld c, a
    ld b, c
    ld c, e
    nop
    nop
    rlca
    inc hl
    dec c
    inc hl
    ld [de], a

jr_00e_786d:
    inc hl
    ld d, $23
    dec de
    inc hl
    inc hl
    inc hl
    dec hl
    inc hl
    ld [hl-], a
    dec sp
    nop
    nop
    nop
    ld bc, $9e21
    nop
    inc de
    ld a, a
    jr jr_00e_7902

    ld e, $7f
    dec h
    ld a, a
    dec l
    jr nz, jr_00e_78ba

    ld h, c
    nop
    nop
    inc de
    dec a
    jr jr_00e_78ce

    ld e, $3d
    daa
    ld a, a
    jr nc, jr_00e_78b7

    ld [hl], $61
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $a41a

jr_00e_78a5:
    nop
    db $10
    dec [hl]
    ld [de], a
    ld h, $18
    ld e, a
    daa
    ld e, a
    dec hl
    ld e, a
    jr nc, @+$61

    nop
    nop
    ld c, d
    ld e, a
    ld c, e

jr_00e_78b7:
    ld e, a
    ld c, h
    ld e, a

jr_00e_78ba:
    ld c, l
    ld e, a
    ld c, [hl]
    ld e, a
    ld c, a
    ld e, a
    nop
    ld bc, $a614
    nop
    rlca
    ld h, d
    ld c, $9e
    rla
    ld [hl], h
    ld [hl+], a
    and d
    nop

jr_00e_78ce:
    nop
    rlca
    and d
    ld c, $a2
    dec de
    and d
    add hl, hl
    and d
    nop
    ld [bc], a
    ld a, [bc]
    ld bc, $0007
    ld [$0e18], sp
    ld e, e
    rla
    jr jr_00e_7904

    jr @+$2b

    jr @+$34

    jr jr_00e_78ea

jr_00e_78ea:
    ld [bc], a
    ld a, [bc]
    ld bc, $0010
    ld [$0e18], sp
    ld e, e
    rla
    jr jr_00e_7916

    jr jr_00e_7921

    jr jr_00e_792c

    jr jr_00e_78fc

jr_00e_78fc:
    ld bc, $2719
    nop
    dec bc
    ld a, b

jr_00e_7902:
    db $10
    ld a, b

jr_00e_7904:
    dec d
    sbc l
    ld a, [de]

jr_00e_7907:
    ld e, e
    rra
    ld e, c
    inc h
    sbc c
    nop
    nop
    ld d, $3b
    jr @+$6b

    inc e
    ld d, l
    jr nz, @+$58

jr_00e_7916:
    nop
    nop
    ld hl, $260d
    ld e, c
    dec l
    sbc l
    ld h, l
    adc a
    nop

jr_00e_7921:
    nop
    nop
    ld bc, $3614

jr_00e_7926:
    nop
    dec d
    ld d, l
    add hl, de
    ld d, l
    dec e

jr_00e_792c:
    ld d, l
    inc hl
    ld d, l
    add hl, hl
    ld d, l
    cpl
    ld d, l
    nop
    nop
    nop
    nop
    nop
    ld bc, $b210
    nop
    add hl, bc
    inc l
    ld a, [bc]
    dec e
    db $10
    rlca
    ld e, $a3
    ld h, $35
    ld l, $35
    nop
    ld bc, $b310
    nop
    ld [$0d2c], sp
    dec e
    db $10
    dec a
    inc e
    ld a, a
    inc hl
    add d
    ld a, [hl+]
    jr c, jr_00e_795a

jr_00e_795a:
    ld bc, $b424
    nop
    add hl, bc
    and e
    rrca
    and e
    jr jr_00e_7907

    ld hl, $2aa3
    dec [hl]
    jr c, @+$37

    nop
    ld bc, $1c24
    nop
    ld [$0f7f], sp
    ld a, a
    jr jr_00e_79d0

    rra
    ld e, e
    daa
    ld e, e

Jump_00e_7979:
    cpl
    jr c, jr_00e_797c

jr_00e_797c:
    nop
    add hl, bc
    and e
    rrca
    and e
    jr jr_00e_7926

    scf
    dec [hl]
    ld b, l
    ld a, [hl]
    ld b, [hl]
    and e
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $ba10
    nop
    ld c, $4f
    rrca
    ld c, e
    inc de
    ld c, a
    jr jr_00e_79d1

    ld hl, $2e50
    ld c, h
    nop
    ld [bc], a
    cpl
    ld bc, $00bb
    db $10
    ld d, b
    ld de, $1350
    ld c, a
    inc e
    ld c, [hl]
    ld h, $4e
    inc [hl]
    ld d, b
    nop
    nop
    rrca
    ld c, [hl]
    ld de, $134f
    ld d, b
    nop
    ld bc, $bd10
    nop
    ld a, [bc]
    ld c, b
    dec bc
    ld c, a
    db $10
    ld [hl+], a
    dec d
    ld c, a
    ld a, [de]
    ld c, [hl]
    ld hl, $2a4b
    dec d
    nop

jr_00e_79d0:
    ld [bc], a

jr_00e_79d1:
    cpl
    ld bc, $00be
    db $10
    ld c, e
    ld de, $124e
    ld c, [hl]
    rla
    ld c, [hl]
    dec e
    ld c, [hl]
    ld h, $4b
    ld sp, $004f
    nop
    dec c
    ld c, e
    rrca
    ld c, e
    ld h, h
    adc [hl]
    nop
    ldh a, [$f3]
    and a
    ld de, $d015
    ld hl, $d023
    ld a, [$cfd2]
    jr z, jr_00e_7a03

    ld de, $cfe6
    ld hl, $cff4
    ld a, [$cfcc]

jr_00e_7a03:
    ld b, a
    ld a, [de]
    cp [hl]
    inc de
    inc hl
    ld a, [de]
    sbc [hl]
    jp z, Jump_00e_7a97

    ld a, b
    cp $9c
    jr nz, jr_00e_7a37

    push hl
    push de
    push af
    ld c, $32
    call $3739
    ld hl, $d018
    ldh a, [$f3]
    and a
    jr z, jr_00e_7a25

    ld hl, $cfe9

jr_00e_7a25:
    ld a, [hl]
    and a
    ld [hl], $02
    ld hl, $7aa2
    jr z, jr_00e_7a31

    ld hl, $7aa7

jr_00e_7a31:
    call $3c49
    pop af
    pop de
    pop hl

jr_00e_7a37:
    ld a, [hl-]
    ld [$cee9], a
    ld c, a
    ld a, [hl]
    ld [$ceea], a
    ld b, a
    jr z, jr_00e_7a47

    srl b
    rr c

jr_00e_7a47:
    ld a, [de]
    ld [$ceeb], a
    add c
    ld [de], a
    ld [$ceed], a
    dec de
    ld a, [de]
    ld [$ceec], a
    adc b
    ld [de], a
    ld [$ceee], a
    inc hl
    inc de
    ld a, [de]
    dec de
    sub [hl]
    dec hl
    ld a, [de]
    sbc [hl]
    jr c, jr_00e_7a6f

    ld a, [hl+]
    ld [de], a
    ld [$ceee], a
    inc de
    ld a, [hl]
    ld [de], a
    ld [$ceed], a

jr_00e_7a6f:
    ld hl, $7ba8
    call Call_00e_7be1
    ldh a, [$f3]
    and a
    ld hl, $c45e
    ld a, $01
    jr z, jr_00e_7a83

    ld hl, $c3ca
    xor a

jr_00e_7a83:
    ld [$cf94], a
    ld a, $48
    call $3e6d
    ld hl, $4d5a
    call Call_00e_7be1
    ld hl, $7aac
    jp $3c49


Jump_00e_7a97:
    ld c, $32
    call $3739
    ld hl, $7b53
    jp Jump_00e_7be1


    rla
    jr nz, jr_00e_7aef

    dec h
    ld d, b
    rla
    dec [hl]
    ld c, d
    dec h
    ld d, b
    rla
    ld e, b
    ld c, d
    dec h
    ld d, b
    ld hl, $d014
    ld de, $cfe5
    ld bc, $d069
    ld a, [$d067]
    ldh a, [$f3]
    and a
    jr nz, jr_00e_7ad1

    ld hl, $cfe5
    ld de, $d014
    ld bc, $d064
    ld [$cc2e], a
    ld a, [$d062]

jr_00e_7ad1:
    bit 6, a
    jp nz, Jump_00e_7b8c

    push hl
    push de
    push bc
    ld hl, $d063
    ldh a, [$f3]
    and a
    jr z, jr_00e_7ae4

    ld hl, $d068

jr_00e_7ae4:
    bit 4, [hl]
    push af
    ld hl, $5747
    ld b, $1e
    call nz, $35d6

jr_00e_7aef:
    ld a, [$d355]
    add a
    ld hl, $7ba8
    ld b, $0f
    jr nc, jr_00e_7aff

    ld hl, $5787
    ld b, $1e

jr_00e_7aff:
    call $35d6
    ld hl, $5771
    ld b, $1e
    pop af
    call nz, $35d6
    pop bc
    ld a, [bc]
    set 3, a
    ld [bc], a
    pop de
    pop hl
    push hl
    ld a, [hl]
    ld [de], a
    ld bc, $0005
    add hl, bc
    inc de
    inc de
    inc de
    inc de
    inc de
    inc bc
    inc bc
    call $00b5
    ldh a, [$f3]
    and a
    jr z, jr_00e_7b32

    ld a, [de]
    ld [$cceb], a
    inc de
    ld a, [de]
    ld [$ccec], a
    dec de

jr_00e_7b32:
    ld a, [hl+]
    ld [de], a
    inc de
    ld a, [hl+]
    ld [de], a
    inc de
    inc hl
    inc hl
    inc hl
    inc de
    inc de
    inc de
    ld bc, $0008
    call $00b5
    ld bc, $ffef
    add hl, bc
    ld b, $04

jr_00e_7b4a:
    ld a, [hl+]
    and a
    jr z, jr_00e_7b57

    ld a, $05
    ld [de], a
    inc de
    dec b
    jr nz, jr_00e_7b4a

    jr jr_00e_7b5d

jr_00e_7b57:
    xor a
    ld [de], a
    inc de
    dec b
    jr nz, jr_00e_7b57

jr_00e_7b5d:
    pop hl
    ld a, [hl]
    ld [$d11e], a
    call $2f9e
    ld hl, $cd26
    ld de, $cd12
    call Call_00e_7b7d
    ld hl, $cd2e
    ld de, $cd1a
    call Call_00e_7b7d
    ld hl, $7b92
    jp $3c49


Call_00e_7b7d:
    ldh a, [$f3]
    and a
    jr z, jr_00e_7b86

    push hl
    ld h, d
    ld l, e
    pop de

jr_00e_7b86:
    ld bc, $0008
    jp $00b5


Jump_00e_7b8c:
    ld hl, $7b53
    jp Jump_00e_7be1


    rla
    ld l, h
    ld c, d
    dec h
    ld d, b
    ld hl, $d064
    ld de, $cfd3
    ldh a, [$f3]
    and a
    jr z, jr_00e_7ba8

    ld hl, $d069
    ld de, $cfcd

jr_00e_7ba8:
    ld a, [de]
    cp $40
    jr nz, jr_00e_7bb8

    bit 1, [hl]
    jr nz, jr_00e_7bcc

    set 1, [hl]
    ld hl, $7bd7
    jr jr_00e_7bc1

jr_00e_7bb8:
    bit 2, [hl]
    jr nz, jr_00e_7bcc

    set 2, [hl]
    ld hl, $7bdc

jr_00e_7bc1:
    push hl
    ld hl, $7ba8
    call Call_00e_7be1
    pop hl
    jp $3c49


jr_00e_7bcc:
    ld c, $32
    call $3739
    ld hl, $7b53
    jp Jump_00e_7be1


    rla
    add a
    ld c, d
    dec h
    ld d, b
    rla
    xor [hl]
    ld c, d
    dec h
    ld d, b

Call_00e_7be1:
Jump_00e_7be1:
    ld b, $0f
    jp $35d6


    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
