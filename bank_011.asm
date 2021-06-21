; Disassembly of "bluekaizo.gb"
; This file was created with:
; mgbdis v1.4 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

SECTION "ROM Bank $011", ROMX[$4000], BANK[$11]

    nop
    add hl, bc
    ld a, [bc]
    add l
    ld b, b
    ld c, $41
    dec bc
    ld b, c
    ld c, $15
    and b
    ld b, h
    db $eb
    add $0a
    ld a, [bc]
    ld b, a
    nop
    add hl, hl
    ret


    rla
    db $10
    ld b, a
    xor e
    rst $00
    ld a, [bc]
    ld a, [bc]
    nop
    nop
    ld sp, hl
    add $13
    pop hl
    ld b, c
    db $18, $c7
    add hl, bc
    ld e, $00
    dec sp
    ld a, [hl+]
    rst $00
    dec l
    ld b, b
    inc l
    ld b, $05
    inc bc
    nop
    adc l
    dec b
    ld c, $00
    adc [hl]
    add hl, bc
    rlca
    nop

jr_011_403a:
    sub l
    dec c
    rrca
    nop
    sub [hl]
    dec c
    inc bc
    nop
    sub a
    dec c
    rlca
    nop
    push hl
    ld b, $09
    dec bc
    inc b
    inc bc
    add hl, bc
    dec b
    dec c
    db $10
    ld b, $05
    inc b
    rlca
    add hl, bc
    dec b
    ld [$1107], sp
    add hl, bc
    inc bc
    ld [$130d], sp
    cp $00
    ld bc, $0e07
    dec c
    rst $38
    rst $38
    ld [bc], a
    inc c
    dec bc
    inc c
    cp $02
    inc bc
    ld a, [de]
    rst $00
    dec b
    inc bc
    jr nz, jr_011_403a

    dec b
    ld c, $3c
    rst $00
    add hl, bc
    rlca
    ld h, b
    rst $00
    dec c
    rrca
    ld e, d
    rst $00
    dec c
    inc bc
    ld e, h
    rst $00
    dec c
    rlca
    dec hl
    ld d, a
    dec h
    ld a, e
    ld a, e
    jr z, jr_011_40f4

    ld a, a
    ld l, c
    inc l
    add hl, hl
    jr nz, jr_011_40b3

    ld a, e
    ld a, c
    jr z, jr_011_40cd

    ld a, l
    ld a, [hl]
    inc l
    add hl, hl
    ld a, h
    ld [hl], d
    ld a, e
    ld a, e
    inc h
    ld d, a
    ld b, $57
    ld a, [hl+]
    dec h
    ld a, e
    ld a, e
    ld a, e
    ld a, e
    ld a, e
    ld a, e
    ld a, e
    ld a, c
    jr z, jr_011_40f6

    ld a, $3b
    ld [bc], a
    inc bc
    ld a, c

jr_011_40b3:
    ld a, e
    ld a, e
    ld a, e
    jr z, jr_011_40df

    inc h
    ld [hl], b
    ld a, e
    ld a, e
    ld a, e
    ld a, e
    jr nz, jr_011_40e1

    jr z, jr_011_40e9

    ld [bc], a
    inc bc
    ld [bc], a
    inc bc
    ld a, e
    ld a, e
    ld a, h
    ld [hl], e
    jr z, jr_011_4110

    ld a, e

jr_011_40cd:
    ld a, e
    ld a, e
    ld a, e
    ld a, e
    ld a, e
    ld a, e
    ld a, e
    jr z, jr_011_4115

    ccf
    ccf
    dec sp
    ld a, e
    ld a, $3f
    ccf
    ccf
    inc l

jr_011_40df:
    jr nz, jr_011_40f1

jr_011_40e1:
    ld bc, $0c02
    dec c
    dec c
    ld hl, $0504

jr_011_40e9:
    rlca
    rlca
    ld [hl+], a
    inc hl
    ld [$0f0f], sp
    rrca

jr_011_40f1:
    rrca
    rrca
    dec de

jr_011_40f4:
    ld c, $0a

jr_011_40f6:
    dec bc
    ld c, $0f
    rrca
    ld c, $03
    rlca
    ld c, l
    ld c, l
    dec sp
    jr c, jr_011_4102

jr_011_4102:
    nop
    dec sp
    jr c, jr_011_4117

    ld hl, $0b00
    ld [$c301], sp
    inc a
    inc a
    jr nz, jr_011_4151

jr_011_4110:
    ld c, e
    ld b, c
    ld d, b
    ld b, c
    ld d, l

jr_011_4115:
    ld b, c
    ld e, d

jr_011_4117:
    ld b, c
    ld [$ef24], a
    inc h
    ld e, a
    ld b, c
    ld h, h
    ld b, c
    ld [$3c21], sp
    ld b, c
    call $3c49
    call $35ec
    ld a, [$cc26]
    and a
    ld hl, $4146
    jr nz, jr_011_4136

    ld hl, $4141

jr_011_4136:
    call $3c49
    jp $24d7


    rla
    add d
    ld d, h
    add hl, hl
    ld d, b
    rla
    sbc l
    ld d, h
    add hl, hl
    ld d, b
    rla
    ret nz

    ld d, h
    add hl, hl
    ld d, b
    rla
    ld b, $55
    add hl, hl
    ld d, b
    rla

jr_011_4151:
    ld e, a
    ld d, l
    add hl, hl
    ld d, b
    rla
    cp e
    ld d, l
    add hl, hl
    ld d, b
    rla
    ldh [rHDMA5], a
    add hl, hl
    ld d, b
    rla
    dec e
    ld d, [hl]
    add hl, hl
    ld d, b
    rla
    inc a
    ld d, [hl]
    add hl, hl
    ld d, b
    ld hl, $d30a
    ld b, $13
    call $2b7f
    ld a, [$d11e]
    ldh [$db], a
    ld hl, $d2f7
    ld b, $13
    call $2b7f
    ld a, [$d11e]
    ldh [$dc], a
    ld hl, $41d1

jr_011_4186:
    ld a, [hl+]
    ld b, a
    ldh a, [$dc]
    cp b
    jr c, jr_011_4191

    inc hl
    inc hl
    jr jr_011_4186

jr_011_4191:
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld a, [$d747]
    bit 3, a
    res 3, a
    ld [$d747], a
    jr nz, jr_011_41b6

    push hl
    ld hl, $41cc
    call $3c49
    pop hl
    call $3c49
    ld b, $1f
    ld hl, $513b
    call $35d6
    jp $3865


jr_011_41b6:
    ld de, $cc5b
    ldh a, [$db]
    ld [de], a
    inc de
    ldh a, [$dc]
    ld [de], a
    inc de

jr_011_41c1:
    ld a, [hl+]
    cp $50
    jr z, jr_011_41ca

    ld [de], a
    inc de
    jr jr_011_41c1

jr_011_41ca:
    ld [de], a
    ret


    rla
    inc c
    ld e, b
    dec h
    ld d, b
    ld a, [bc]
    ld bc, $1442
    ld b, $42
    ld e, $0b
    ld b, d
    jr z, jr_011_41ec

    ld b, d
    ld [hl-], a
    dec d
    ld b, d
    inc a
    ld a, [de]
    ld b, d
    ld b, [hl]
    rra
    ld b, d
    ld d, b
    inc h
    ld b, d
    ld e, d
    add hl, hl
    ld b, d

jr_011_41ec:
    ld h, h
    ld l, $42
    ld l, [hl]
    inc sp
    ld b, d
    ld a, b
    jr c, jr_011_4237

    add d
    dec a
    ld b, d
    adc h
    ld b, d
    ld b, d
    sub [hl]
    ld b, a
    ld b, d
    sbc b
    ld c, h
    ld b, d
    rla
    ld e, b
    ld e, b
    dec h
    ld d, b
    rla
    sub e
    ld e, b
    dec h
    ld d, b
    rla
    call z, $2558
    ld d, b
    rla
    inc bc
    ld e, c
    dec h
    ld d, b
    rla
    dec a
    ld e, c
    dec h
    ld d, b
    rla
    ld l, l
    ld e, c
    dec h
    ld d, b
    rla
    cp b
    ld e, c
    dec h
    ld d, b
    rla
    reti


    ld e, c
    dec h
    ld d, b
    rla
    inc bc
    ld e, d
    dec h
    ld d, b
    rla
    ld l, $5a
    dec h
    ld d, b
    rla
    ld h, b
    ld e, d
    dec h

jr_011_4237:
    ld d, b
    rla
    xor b
    ld e, d
    dec h
    ld d, b
    rla
    reti


    ld e, d
    dec h
    ld d, b
    rla
    ld a, [bc]
    ld e, e
    dec h
    ld d, b
    rla
    add hl, sp
    ld e, e
    dec h
    ld d, b
    rla
    ld l, a
    ld e, e
    dec h
    ld d, b
    ld b, $04
    rlca
    rst $18
    ld b, b
    ld h, e
    ld b, d
    ld e, l
    ld b, d
    nop
    ld [hl], a
    ld b, d
    call $22fa
    jp $3c3c


    ld l, e
    ld b, d
    ld l, h
    ld b, d
    ld [hl], c
    ld b, d
    db $76
    ld b, d
    rst $38
    rla
    and c
    ld e, e
    dec h
    ld d, b
    rla
    add sp, $5b
    dec h
    ld d, b
    or $00
    ld [bc], a
    rlca
    inc bc
    nop
    rst $38
    rlca
    inc b
    nop
    rst $38
    nop
    inc b
    add hl, hl
    dec b
    rlca
    rst $38
    ret nc

    ld bc, $0910
    ld c, $fe
    ld bc, $0702
    rlca
    ld [$ffff], sp
    inc bc
    ld a, [hl+]
    ld b, $0f
    rst $38
    ret nc

    inc b
    ld e, $c7
    rlca
    inc bc
    rra
    rst $00
    rlca
    inc b
    ld d, $0e
    rrca
    cp $43
    inc l
    ld b, e
    xor a
    ld b, d
    nop
    and h
    ld b, e
    call Call_011_42c5
    call $3c3c
    ld hl, $4334
    ld de, $4326
    ld a, [$d63a]
    call $3160
    ld [$d63a], a
    ret


Call_011_42c5:
    ld hl, $d126
    bit 5, [hl]
    res 5, [hl]
    ret z

    ld a, [$d796]
    bit 0, a
    jr nz, jr_011_42ec

    ld bc, $060c
    call Call_011_430b
    ld bc, $0308
    call Call_011_4304
    ld bc, $080a
    call Call_011_4304
    ld bc, $0d0d
    jp Jump_011_4304


jr_011_42ec:
    ld bc, $060c
    call Call_011_4304
    ld bc, $0308
    call Call_011_430b
    ld bc, $080a
    call Call_011_430b
    ld bc, $0d0d
    jp Jump_011_430b


Call_011_4304:
Jump_011_4304:
    ld a, $2d
    ld [$d09f], a
    jr jr_011_4310

Call_011_430b:
Jump_011_430b:
    ld a, $0e
    ld [$d09f], a

jr_011_4310:
    ld a, $17
    call $3e6d
    ret


    ld a, [$c109]
    cp $04
    ret nz

    xor a
    ldh [$b4], a
    ld a, $04
    ldh [$8c], a
    jp $2920


    add hl, de
    ld [hl-], a
    ld c, h
    ld [hl-], a
    ld [hl], l
    ld [hl-], a
    ld b, c
    ld b, e
    db $f4
    inc h
    db $f4
    inc h
    ld e, d
    ld b, e
    ld bc, $9830
    rst $10
    ld c, e
    ld b, e
    ld d, l
    ld b, e
    ld d, b
    ld b, e
    ld d, b
    ld b, e
    rst $38
    ld [$3421], sp
    ld b, e
    call $31cc
    jp $24d7


    rla
    xor b
    ld b, a
    jr z, jr_011_43a0

    rla
    push de
    ld b, a
    jr z, @+$52

    rla
    call c, $2847
    ld d, b
    ld [$9521], sp
    ld b, e
    call $3c49
    call $35ec
    ld a, [$cc26]
    and a
    jr nz, jr_011_438c

    ld a, $01
    ld [$cc3c], a
    ld hl, $d126
    set 5, [hl]
    ld hl, $439a
    call $3c49
    ld a, $ad
    call $23b1
    ld hl, $d796
    bit 0, [hl]
    set 0, [hl]
    jr z, jr_011_4392

    res 0, [hl]
    jr jr_011_4392

jr_011_438c:
    ld hl, $439f
    call $3c49

jr_011_4392:
    jp $24d7


    rla
    ld a, [bc]
    ld c, b
    jr z, @+$52

    rla
    ld h, $48
    jr z, jr_011_43ef

    rla

jr_011_43a0:
    inc [hl]
    ld c, b
    jr z, jr_011_43f4

    ld l, $08
    dec de
    inc b
    nop
    rst $38
    dec de
    dec b
    nop
    rst $38
    dec de
    ld b, $00
    rst $38
    dec de
    rlca
    nop
    rst $38
    ld a, [bc]
    dec b
    nop
    sub $17
    dec d
    nop
    ret c

    dec de
    ld a, [de]
    nop
    rst $38
    dec de
    dec de
    nop
    rst $38
    nop
    inc bc
    jr nz, jr_011_43df

    ld [de], a
    rst $38
    jp nc, $e441

    inc b
    dec a
    ld c, $05
    rst $38
    rst $38
    add d
    jr z, @+$3f

    dec e
    jr nz, @+$01

    rst $38
    add e
    jr z, jr_011_43f0

jr_011_43df:
    ret z

    dec de
    inc b
    ld de, $1bc8
    dec b
    ld [de], a
    ret z

    dec de
    ld b, $12
    ret z

    dec de
    rlca
    ld l, c

jr_011_43ef:
    rst $00

jr_011_43f0:
    ld a, [bc]
    dec b
    rst $28
    rst $00

jr_011_43f4:
    rla
    dec d
    inc e
    ret z

    dec de
    ld a, [de]
    inc e
    ret z

    dec de
    dec de
    ld b, b
    ld b, c
    ld b, c
    ld b, c
    ld b, c
    ld b, c
    ld b, c
    ld b, c
    ld b, c
    ld b, c
    ld b, c
    ld b, c
    ld b, c
    ld b, c
    ld b, d
    ld e, h
    ld b, $0e
    ld c, $53
    ld c, $11
    ld de, $1111
    ld de, $0e0e
    ld c, $5d
    ld e, h
    ld [hl], a
    ld c, $47
    ld b, [hl]
    ld c, $0e
    ld c, $0e
    ld c, $0e
    ld b, b
    ld h, e
    ld c, $5d
    ld b, h
    ld c, $43
    ld c, $46
    ld c, $53
    ld e, b
    ld c, $57
    ld e, b
    ld d, l
    ld c, $0e
    ld b, [hl]
    ld d, b
    ld c, c
    ld c, c
    ld e, b
    ld c, d
    ld c, c
    ld c, d
    ld c, $0e
    ld c, $46
    ld e, d
    ld b, a
    ld c, $5d
    ld b, h
    ld de, $576e
    ld d, a
    ld c, c
    ld c, c
    ld c, c
    ld c, c
    ld c, c
    ld c, d
    ld e, l
    ld c, $31
    ld e, l
    ld b, b
    ld c, e
    ld c, e
    ld c, e
    ld [hl], b
    ld [hl], d
    ld c, c
    ld c, c
    ld c, c
    ld c, c
    ld e, b
    ld d, [hl]
    ld c, $57
    ld d, c
    ld b, h
    ld de, $3b3f
    ld a, [bc]
    ld b, [hl]
    ld c, $0e
    ld c, $06
    rlca
    ld c, $0e
    ld c, $5d
    ld b, h
    ld de, $3b3f
    ld a, [bc]
    ld b, [hl]
    ld c, $0e
    ld c, $48
    ld c, $58
    ld c, $57
    ld d, c
    ld b, h
    ld de, $3b3f
    ld a, [bc]
    ld b, [hl]
    ld c, $0b
    dec bc
    dec bc
    ld c, $06
    ld d, d
    rlca
    ld e, l
    ld b, h
    ld de, $3b3f
    ld a, [bc]
    ld b, [hl]
    ld c, $0e
    ld c, $0e
    ld c, $0e
    ld b, h
    ld c, $46
    ld b, h
    ld de, $3b3f
    ld a, [bc]
    ld b, [hl]
    ld c, $0b
    dec bc
    dec bc
    ld c, [hl]
    ld c, $44
    ld c, $46
    ld b, h
    ld de, $3b3f
    ld a, [bc]
    ld b, [hl]
    ld c, $0e
    ld c, $0e
    ld c, $0e
    ld b, $0e
    ld b, [hl]
    ld c, b
    ld e, b
    ccf
    dec sp
    ld d, a
    ld c, d
    ld c, c
    ld c, c
    ld c, c
    ld c, c
    ld c, c
    ld c, c
    ld b, $0e
    ld b, $11
    ld [de], a
    inc d
    ld [hl], l
    ld b, [hl]
    push af
    ld b, h
    call c, $0044
    or $45
    call $3c3c
    ld hl, $4505
    ld de, $44ef
    ld a, [$d621]
    call $3160
    ld [$d621], a
    ret


    add hl, de
    ld [hl-], a
    ld c, h

jr_011_44f2:
    ld [hl-], a
    ld [hl], l
    ld [hl-], a
    ld e, d
    ld b, l
    ld h, b
    ld b, l
    ld h, [hl]
    ld b, l
    ld l, h
    ld b, l
    ld [hl], d

jr_011_44fe:
    ld b, l
    ld a, b
    ld b, l
    ld a, [hl]
    ld b, l
    pop af
    ld b, l
    ld bc, $d240
    rst $10
    adc b
    ld b, l
    sub d
    ld b, l
    adc l
    ld b, l
    adc l
    ld b, l
    ld [bc], a
    ld b, b
    jp nc, $97d7

    ld b, l
    and c
    ld b, l
    sbc h
    ld b, l
    sbc h
    ld b, l
    inc bc
    jr nc, jr_011_44f2

    rst $10
    and [hl]
    ld b, l
    or b
    ld b, l
    xor e
    ld b, l
    xor e
    ld b, l
    inc b
    jr nc, jr_011_44fe

    rst $10
    or l
    ld b, l
    cp a
    ld b, l
    cp d
    ld b, l
    cp d
    ld b, l
    dec b
    ld b, b
    jp nc, $c4d7

    ld b, l
    adc $45
    ret


    ld b, l
    ret


    ld b, l
    ld b, $40
    jp nc, $d3d7

    ld b, l
    db $dd
    ld b, l
    ret c

    ld b, l
    ret c

    ld b, l
    rlca
    ld b, b
    jp nc, $e2d7

    ld b, l
    db $ec
    ld b, l
    rst $20
    ld b, l
    rst $20
    ld b, l
    rst $38
    ld [$0521], sp
    ld b, l
    jr jr_011_4582

    ld [$1121], sp
    ld b, l
    jr jr_011_4582

    ld [$1d21], sp
    ld b, l
    jr jr_011_4582

    ld [$2921], sp
    ld b, l
    jr jr_011_4582

    ld [$3521], sp
    ld b, l
    jr jr_011_4582

    ld [$4121], sp
    ld b, l
    jr jr_011_4582

    ld [$4d21], sp
    ld b, l

jr_011_4582:
    call $31cc
    jp $24d7


    rla
    ld a, [hl-]
    ld b, e
    inc hl
    ld d, b
    rla
    ld e, l
    ld b, e
    inc hl
    ld d, b
    rla
    ld l, h
    ld b, e
    inc hl
    ld d, b
    rla
    sbc h
    ld b, e
    inc hl
    ld d, b
    rla
    cp e
    ld b, e
    inc hl
    ld d, b
    rla
    add sp, $43
    inc hl
    ld d, b
    rla
    daa
    ld b, h
    inc hl
    ld d, b
    rla
    ld e, c
    ld b, h
    inc hl
    ld d, b
    rla
    ld h, d
    ld b, h
    inc hl
    ld d, b
    rla
    add d
    ld b, h
    inc hl
    ld d, b
    rla
    sbc d
    ld b, h
    inc hl
    ld d, b
    rla
    and [hl]
    ld b, h
    inc hl
    ld d, b
    rla
    ret


    ld b, h
    inc hl
    ld d, b
    rla
    db $f4
    ld b, h
    inc hl
    ld d, b
    rla
    ld b, $45
    inc hl
    ld d, b
    rla
    ld h, $45
    inc hl
    ld d, b
    rla
    ld b, c
    ld b, l
    inc hl
    ld d, b
    rla
    ld d, d
    ld b, l
    inc hl
    ld d, b
    rla
    ld [hl], c
    ld b, l
    inc hl
    ld d, b
    rla
    adc l
    ld b, l
    inc hl
    ld d, b
    rla
    sbc l
    ld b, l
    inc hl
    ld d, b
    rla
    or a
    ld b, l
    inc hl
    ld d, b
    inc bc
    ld [$0f03], sp
    ld bc, $00ff
    rrca
    ld bc, $21ff
    rrca
    ld [bc], a
    rst $38
    inc hl
    rrca
    ld [bc], a
    rst $38
    inc bc
    dec h
    nop
    add sp, $03
    dec b
    ld bc, $0be8
    ld de, $e802
    ld de, $0325
    add sp, $01
    dec e
    dec bc
    ld [$0e07], sp
    add hl, bc
    dec bc
    rst $38
    ret nc

    ld b, c
    pop de
    inc c
    ld c, $14
    add hl, bc
    rst $38
    ret nc

    ld b, d
    pop de
    dec c
    ld c, $13
    dec d
    rst $38
    jp nc, $d143

    ld c, $0c
    inc c
    dec de
    rst $38
    jp nc, $cf44

    rlca
    ld b, $19
    add hl, hl
    rst $38
    jp nc, $ce45

    ld de, $1c06
    ld a, [de]
    rst $38
    ret nc

    ld b, [hl]
    adc $12
    ld b, $1c
    inc h
    rst $38
    db $d3
    ld b, a
    adc $13
    inc h
    rst $00
    inc bc
    rrca
    ld a, [bc]
    rst $00
    nop
    rrca
    xor d
    ret z

    ld hl, $c40f
    ret z

    inc hl
    rrca
    cpl
    rst $00
    inc bc
    dec h
    rra
    rst $00
    inc bc
    dec b
    adc l
    rst $00
    dec bc
    ld de, $c7e5
    ld de, $0325
    db $10
    inc bc
    dec b
    dec b
    inc bc
    inc bc
    dec b
    inc bc
    dec b
    inc bc
    inc bc
    inc bc
    dec b
    inc bc
    inc bc
    dec b
    inc bc
    inc bc
    inc bc
    ld bc, $2810
    inc bc
    ld bc, HeaderLogo
    ld a, $0e
    ld bc, $0e01
    ld bc, $0401
    ld bc, $0303
    jr z, jr_011_469e

    db $10

jr_011_469e:
    inc bc
    ld bc, $030f
    inc bc
    inc bc
    ld b, $03
    inc bc
    inc b
    inc bc
    inc bc
    ld bc, $0303
    ld c, $04
    inc bc
    ld bc, $0603
    db $10
    ld bc, $0101
    ld b, $06
    ld bc, $030f
    dec c
    rrca
    ld bc, $0e03
    dec c
    inc bc
    inc bc
    ld bc, $1001
    db $10
    db $10
    inc bc
    ld bc, $0406
    inc bc
    inc bc
    dec b
    ld bc, $0303
    inc bc
    ld [de], a
    inc bc
    ld c, $03
    ld bc, $0310
    inc bc
    inc bc
    db $10
    ld bc, $0303
    jr z, @+$05

    inc bc
    ld bc, $010c
    inc bc
    ld b, $03
    ld bc, $0101
    rlca
    db $10
    ld bc, $0110
    db $10
    ld b, $01
    ld bc, $0406
    ld [de], a
    inc bc
    inc c
    inc b
    ld bc, $0101
    ld bc, $0706
    rlca
    inc bc
    inc bc
    ld a, [bc]
    inc bc
    inc bc
    db $10
    ld bc, $040a
    inc b
    inc b
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    ld b, $03
    db $10
    ld bc, $0110
    db $10
    db $10
    inc bc
    db $10
    ld bc, $0101
    db $10
    ld bc, $0101
    ld bc, $2803
    inc bc
    db $10
    db $10
    db $10
    inc bc
    db $10
    inc bc
    db $10
    inc bc
    ld bc, $0310
    inc bc
    inc bc
    inc bc
    inc bc
    ld bc, $0310
    ld bc, $1003
    db $10
    inc bc
    db $10
    db $10
    inc bc
    db $10
    inc bc
    db $10
    inc bc
    db $10
    ld bc, $0301
    db $10
    ld bc, $0303
    ld bc, $1003
    inc bc
    db $10
    db $10
    inc bc
    db $10
    db $10
    db $10
    inc bc
    inc bc
    inc bc
    inc bc
    ld bc, $0103
    inc bc
    ld bc, $0101
    inc bc
    inc bc
    db $10
    ld bc, $0e03
    db $10
    inc bc
    inc bc
    db $10
    ld bc, $1001
    db $10
    inc bc
    ld bc, $0103
    inc bc
    inc bc
    inc bc
    inc c
    db $10
    rlca
    db $10
    db $10
    inc bc
    ld bc, $0101
    inc bc
    db $10
    ld bc, $0101
    db $10
    inc bc
    db $10
    inc bc
    ld l, h
    inc bc
    inc bc
    ld bc, $0303
    inc bc
    ld a, [hl+]
    ld bc, $0303
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    db $10
    ld l, h
    db $10
    ld bc, $056c
    ld bc, $0105
    inc bc
    ld bc, $0303
    db $10
    ld bc, $1001
    ld bc, $0110
    ld bc, $0301
    ld bc, $1003
    inc bc
    inc bc
    inc bc
    inc bc
    ld bc, $3e03
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
    ld bc, $0103
    ld bc, HeaderLogo
    db $10
    ld bc, $1003
    ld bc, $0101
    ld bc, $0101
    ld bc, $016c
    ld bc, $0301
    ld de, $0f09
    sbc a
    ld c, b
    ld c, e
    ld c, b
    jp hl


    ld b, a
    nop
    ld c, a
    ld c, b
    call $3c3c
    ld hl, $d7e7
    set 0, [hl]
    ld hl, $cd60
    bit 7, [hl]
    res 7, [hl]
    jr z, jr_011_483b

    ld hl, $4846
    call $34e4
    ret nc

    ld hl, $d7e8
    ld a, [$cd3d]
    cp $01
    jr nz, jr_011_4819

    set 6, [hl]
    ld a, $d7
    ld [$d079], a
    ld a, $d9
    ld [$d07a], a
    jr jr_011_4825

jr_011_4819:
    set 7, [hl]
    ld a, $d8
    ld [$d079], a
    ld a, $da
    ld [$d07a], a

jr_011_4825:
    ld a, [$d079]
    ld [$cc4d], a
    ld a, $11
    call $3e6d
    ld a, [$d07a]
    ld [$cc4d], a
    ld a, $15
    jp $3e6d


jr_011_483b:
    ld a, $9f
    ld [$d71d], a
    ld hl, $4846
    jp $6981


    ld b, $11
    ld b, $18
    rst $38
    push hl
    inc h
    push hl
    inc h
    ld a, l
    rlca
    ld de, $0004
    rst $38
    ld de, $0005
    rst $38
    ld de, $011a
    rst $38
    ld de, $011b
    rst $38
    dec b
    rlca
    ld bc, $039f
    add hl, de
    ld b, $9f
    rrca
    rla
    inc b
    sbc a
    nop
    ld [bc], a
    ccf
    ld b, $20
    rst $38
    db $10
    ld bc, $143f
    ld b, $ff
    db $10
    ld [bc], a
    xor b
    rst $00
    ld de, $a804
    rst $00
    ld de, $b305
    rst $00
    ld de, $b31a
    rst $00
    ld de, $2b1b
    rst $00
    dec b
    rlca
    rra
    rst $00
    inc bc
    add hl, de
    sbc h
    rst $00
    rrca
    rla
    ld b, l
    rst $00
    ld b, $11
    ld c, c
    rst $00
    ld b, $18
    ld bc, $6e6e
    ld l, [hl]
    ld l, [hl]
    ld l, [hl]
    ld l, [hl]
    ld l, [hl]
    ld l, [hl]
    ld l, [hl]
    ld l, [hl]
    ld l, [hl]
    ld bc, $6e6d
    ld bc, $6e6e
    ld l, [hl]
    ld l, [hl]
    ld l, [hl]
    ld l, [hl]
    ld l, [hl]
    ld l, [hl]
    ld l, [hl]
    ld l, [hl]
    ld l, [hl]
    jr z, jr_011_4929

    ld bc, $6e01
    ld l, [hl]
    jr z, jr_011_4914

    ld l, [hl]
    ld l, [hl]
    ld l, [hl]
    ld l, [hl]
    ld a, d
    ld d, d
    ld d, d
    ld bc, $016d
    ld bc, $1514
    ld d, $0d
    ld e, [hl]
    ld e, [hl]
    ld de, $0178
    ld d, d
    ld d, d
    ld [hl], a
    ld d, d
    ld bc, $6601
    dec l
    ld e, $01
    ld e, [hl]
    ld e, [hl]
    ld de, $6e0b
    ld l, [hl]
    ld l, [hl]
    ld l, [hl]
    ld bc, $0101
    ld bc, $5e6d
    inc c
    ld e, [hl]
    inc c
    ld e, [hl]
    rlca
    ld bc, $5e04
    ld e, [hl]
    ld e, [hl]
    ld bc, $0701
    ld bc, $5e5e
    ld e, [hl]
    inc c
    ld e, [hl]
    dec bc
    ld bc, $016d
    ld bc, $5201
    ld bc, $0107
    ld e, [hl]
    ld e, [hl]
    ld e, [hl]
    ld e, [hl]
    ld e, [hl]
    rlca
    ld bc, $286d

jr_011_4914:
    ld bc, $5201
    ld bc, $2407
    ld e, [hl]
    ld e, [hl]
    ld e, [hl]
    ld e, [hl]
    ld e, [hl]
    ld e, [hl]
    ld bc, $5252
    ld d, d
    inc h
    ld d, d
    dec c
    inc bc
    ld a, [bc]

jr_011_4929:
    ld d, [hl]
    ld c, c
    dec [hl]
    ld c, c
    ld [hl-], a
    ld c, c
    nop
    inc a
    ld c, c
    jp $3c3c


    scf
    ld c, c
    rla
    ld c, e
    ld c, a
    jr nz, jr_011_498c

    inc c
    ld [bc], a
    inc bc
    nop
    nop
    ld h, e
    inc bc
    inc de
    rlca
    ld h, b
    nop
    ld bc, $0713
    dec c
    cp $02
    ld bc, $c709
    inc bc
    nop
    ld [de], a
    rst $00
    inc bc
    inc de
    ld [de], a
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    ld de, $041d
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc e
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld de, $0f09
    scf
    ld c, e
    inc h
    ld c, d
    add b
    ld c, c
    nop
    call $cd4a
    sub [hl]
    ld c, c
    call $3c3c
    ld hl, $4a38
    ld de, $49b1

jr_011_498c:
    ld a, [$d640]
    call $3160
    ld [$d640], a
    ret


    ld hl, $d126
    bit 5, [hl]
    res 5, [hl]
    ret z

    ld hl, $d813
    bit 0, [hl]
    ret z

    ld a, $1d
    ld [$d09f], a
    ld bc, $0503
    ld a, $17
    jp $3e6d


    or a
    ld c, c
    ld c, h
    ld [hl-], a
    ld [hl], l
    ld [hl-], a
    ld hl, $cd60
    bit 7, [hl]
    res 7, [hl]
    jp z, Jump_011_49fe

    ld hl, $49f9
    call $34e4
    jp nc, Jump_011_49fe

    ld a, [$cd3d]
    cp $01
    jr nz, jr_011_49dc

    ld hl, $d126
    set 5, [hl]
    ld hl, $d813
    set 0, [hl]
    ret


jr_011_49dc:
    ld hl, $d813
    bit 6, [hl]
    set 6, [hl]
    jr nz, jr_011_49fe

    ld a, $7a
    ld [$cc4d], a
    ld a, $11
    call $3e6d
    ld a, $60
    ld [$cc4d], a
    ld a, $15
    jp $3e6d


    dec b
    inc bc
    rrca
    rla
    rst $38

Jump_011_49fe:
jr_011_49fe:
    ld a, $c2
    ld [$d71d], a
    ld hl, $49f9
    call $6981
    ld a, [$cd3d]
    cp $01
    jr nz, jr_011_4a1b

    ld hl, $d72d
    res 4, [hl]
    ld hl, $d732
    res 4, [hl]
    ret


jr_011_4a1b:
    ld a, [$d72d]
    bit 4, a
    jp z, $3219

    ret


    ld l, c
    ld c, d
    ld [hl], e
    ld c, d
    ld a, l
    ld c, d
    add a
    ld c, d
    db $f4
    inc h
    db $f4
    inc h
    push hl
    inc h
    push hl
    inc h
    push hl
    inc h
    push hl
    inc h
    ld bc, $1310
    ret c

    sub c
    ld c, d
    sbc e
    ld c, d
    sub [hl]
    ld c, d
    sub [hl]
    ld c, d
    ld [bc], a
    ld b, b
    inc de
    ret c

    and b
    ld c, d
    xor d
    ld c, d
    and l
    ld c, d
    and l
    ld c, d
    inc bc
    ld b, b
    inc de
    ret c

    xor a
    ld c, d
    cp c
    ld c, d
    or h
    ld c, d
    or h
    ld c, d
    inc b
    ld b, b
    inc de
    ret c

    cp [hl]
    ld c, d
    ret z

    ld c, d
    jp $c34a


    ld c, d
    rst $38
    ld [$3821], sp
    ld c, d
    call $31cc
    jp $24d7


    ld [$4421], sp
    ld c, d
    call $31cc
    jp $24d7


    ld [$5021], sp
    ld c, d
    call $31cc
    jp $24d7


    ld [$5c21], sp
    ld c, d
    call $31cc
    jp $24d7


    rla
    sbc e
    ld e, l
    jr nz, @+$52

    rla
    cp a
    ld e, l
    jr nz, jr_011_4aeb

    rla
    sub $5d
    jr nz, @+$52

    rla
    ld sp, hl
    ld e, l
    jr nz, jr_011_4af5

    rla
    ld e, $5e
    jr nz, @+$52

    rla
    dec hl
    ld e, [hl]
    jr nz, jr_011_4aff

    rla
    ld c, a
    ld e, [hl]
    jr nz, @+$52

    rla
    ld l, a
    ld e, [hl]
    jr nz, jr_011_4b09

    rla
    add e
    ld e, [hl]
    jr nz, jr_011_4b0e

    rla
    pop bc
    ld e, [hl]
    jr nz, @+$52

    rla
    db $ec
    ld e, [hl]
    jr nz, @+$52

    rla
    db $fc
    ld e, [hl]
    jr nz, jr_011_4b1d

    ld a, l
    inc b
    rlca
    rla
    inc bc
    jp nz, $1a08

    dec b
    jp nz, $1b0f

    inc b
    jp nz, $0200

    ld b, $c2
    nop
    ld a, [bc]
    rlca
    add hl, bc
    jr nz, @+$01

    jp nc, $e741

    ld [bc], a
    ld b, $13

jr_011_4aeb:
    ld e, $ff
    db $d3
    ld b, d
    add sp, $02
    rlca
    inc de
    jr nz, @+$01

jr_011_4af5:
    jp nc, $e743

    inc bc
    ld b, $0b
    ld a, [de]
    rst $38
    db $d3
    ld b, h

jr_011_4aff:
    add sp, $03
    dec a
    add hl, bc
    ld e, $ff
    rst $38
    add l
    jr z, jr_011_4b46

jr_011_4b09:
    dec bc
    dec bc
    rst $38
    rst $38
    add [hl]

jr_011_4b0e:
    rst $30
    ccf
    dec c
    ld de, $10ff
    rlca
    ccf
    db $10
    ld de, $10ff
    ld [$0e3f], sp

jr_011_4b1d:
    inc e
    rst $38
    db $10
    add hl, bc
    ccf
    inc de
    inc de
    rst $38
    db $10
    ld a, [bc]
    ld c, b
    rst $00
    rlca
    rla
    ld e, a
    rst $00
    ld [$9e1a], sp
    rst $00
    rrca
    dec de
    rst $38
    add $00
    ld [bc], a
    ld c, l
    inc hl
    ld [hl], h
    ld h, b
    ld h, b
    ld h, b
    ld h, b
    ld h, b
    ld h, b
    ld h, b
    ld h, b
    ld bc, $6060
    rlca

jr_011_4b46:
    ld [$0d0d], sp
    ld h, b
    inc d
    dec d
    dec d
    dec d
    ld d, $05
    dec b
    rrca
    ld [bc], a
    inc c
    rlca
    ld b, $6c
    dec bc
    ld h, b
    jr jr_011_4b87

    ld l, $2d
    ld e, $10
    ld h, b
    ld h, b
    ld [bc], a
    ld c, $07
    ld l, d
    ld l, e
    ld l, e
    ld l, a
    jr jr_011_4b84

    ld h, b
    ld h, b
    ld h, b
    ld h, b
    ld h, b
    jr z, jr_011_4b75

    inc b
    add hl, bc
    ld h, [hl]
    dec e

jr_011_4b75:
    dec hl
    ld [hl], b
    jr jr_011_4b93

    ld h, b
    ld h, b
    rrca
    ld [$040d], sp
    ld b, $27
    rlca
    ld b, $51

jr_011_4b84:
    inc e
    dec h
    dec e

jr_011_4b87:
    ld e, $60
    ld h, b
    ld h, b
    ld h, b
    rlca
    ld h, b
    ld de, $070e
    ld b, $51

jr_011_4b93:
    ld b, $60
    rlca
    ld h, b
    ld b, $05
    dec b
    dec b
    dec b
    ld h, b
    ld b, $60
    rlca
    ld b, $51
    ld b, $04
    rlca
    ld h, b
    ld [bc], a
    ld h, b
    inc b
    inc b
    inc b
    ld l, c
    ld b, $28
    rlca
    ld a, [bc]
    inc b
    inc b
    ld d, c
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    ld a, [bc]
    inc b
    ld [bc], a
    ld d, $0e
    rrca
    ld c, c
    ld c, l
    inc d
    ld c, h
    jp z, $004b

    rst $20
    ld c, h
    call Call_011_4be0
    call $3c3c
    ld hl, $4c22
    ld de, $4c0e
    ld a, [$d631]
    call $3160
    ld [$d631], a
    ret


Call_011_4be0:
    ld hl, $d126
    bit 5, [hl]
    res 5, [hl]
    ret z

    ld a, [$d815]
    bit 7, a
    jr nz, jr_011_4c01

    bit 5, a
    jr nz, jr_011_4bf7

    ld a, $54
    jr jr_011_4c03

jr_011_4bf7:
    ld a, $ad
    call $23b1
    ld hl, $d815
    bit 7, [hl]

jr_011_4c01:
    ld a, $0e

jr_011_4c03:
    ld [$d09f], a
    ld bc, $080c
    ld a, $17
    jp $3e6d


    add hl, de
    ld [hl-], a
    ld c, h
    ld [hl-], a
    ld [hl], l
    ld [hl-], a
    ld e, a
    ld c, h
    ld l, c
    ld c, h
    ld [hl], e
    ld c, h
    ld a, l
    ld c, h
    add a
    ld c, h
    db $f4
    inc h
    db $f4
    inc h
    ld bc, $1530
    ret c

    and c
    ld c, h
    xor e
    ld c, h
    and [hl]
    ld c, h
    and [hl]
    ld c, h
    ld [bc], a
    jr nz, jr_011_4c46

    ret c

    or b
    ld c, h
    cp d
    ld c, h
    or l
    ld c, h
    or l
    ld c, h
    inc bc
    jr nz, jr_011_4c52

    ret c

    cp a
    ld c, h
    ret


    ld c, h
    call nz, $c44c
    ld c, h

jr_011_4c46:
    inc b
    jr nc, jr_011_4c5e

    ret c

    adc $4c
    ret c

    ld c, h
    db $d3
    ld c, h
    db $d3
    ld c, h

jr_011_4c52:
    dec b
    jr nc, @+$17

    ret c

    db $dd
    ld c, h
    ld [c], a
    ld c, h
    sub c
    ld c, h
    sub c
    ld c, h

jr_011_4c5e:
    rst $38
    ld [$2221], sp
    ld c, h
    call $31cc
    jp $24d7


    ld [$2e21], sp
    ld c, h
    call $31cc
    jp $24d7


    ld [$3a21], sp
    ld c, h
    call $31cc
    jp $24d7


    ld [$4621], sp
    ld c, h
    call $31cc
    jp $24d7


    ld [$5221], sp
    ld c, h
    call $31cc
    jp $24d7


    rla
    ld a, [hl+]
    ld e, a
    jr nz, jr_011_4c9e

    ld hl, $d815
    set 5, [hl]
    ld hl, $4c9f

jr_011_4c9e:
    ret


    ld b, $50
    rla
    inc [hl]
    ld e, a
    jr nz, jr_011_4cf6

    rla
    ld e, b
    ld e, a
    jr nz, jr_011_4cfb

    rla
    ld h, [hl]
    ld e, a
    jr nz, @+$52

    rla
    add h
    ld e, a
    jr nz, @+$52

    rla
    and e
    ld e, a
    jr nz, @+$52

    rla
    xor e
    ld e, a
    jr nz, jr_011_4d0f

    rla
    reti


    ld e, a
    jr nz, jr_011_4d14

    rla
    ld [$205f], a
    ld d, b
    rla
    ld sp, hl
    ld e, a
    jr nz, @+$52

    rla
    jr nz, jr_011_4d31

    jr nz, jr_011_4d23

    rla
    jr c, @+$62

    jr nz, jr_011_4d28

    rla
    ld b, a
    ld h, b
    jr nz, jr_011_4d2d

    rla
    ld a, b
    ld h, b
    jr nz, jr_011_4d32

    rla
    sub a
    ld h, b
    jr nz, jr_011_4d37

    ld l, $05
    ld [bc], a
    rla
    nop
    ret z

    ld [bc], a
    dec d
    ld [bc], a
    add a
    inc de
    jr jr_011_4cf4

jr_011_4cf4:
    rr b

jr_011_4cf6:
    dec d
    inc bc
    ret z

    inc de
    add hl, de

jr_011_4cfb:
    ld bc, $00cb
    rlca
    jr @+$08

    ld a, [de]
    rst $38
    jp nc, $e641

    ld [$0618], sp
    jr @+$01

    db $d3
    ld b, d
    and $09

jr_011_4d0f:
    jr jr_011_4d23

    ld de, $d0ff

jr_011_4d14:
    ld b, e
    and $0a
    jr jr_011_4d34

    ld [de], a
    rst $38
    db $d3
    ld b, h
    and $0b
    jr @+$17

    dec e
    rst $38

jr_011_4d23:
    ret nc

    ld b, l
    and $0c
    dec a

jr_011_4d28:
    dec d
    jr nz, @+$01

    rst $38
    add [hl]

jr_011_4d2d:
    jr z, jr_011_4d6c

    dec d
    rra

jr_011_4d31:
    rst $38

jr_011_4d32:
    rst $38
    add a

jr_011_4d34:
    ld [de], a
    ld e, $c7

jr_011_4d37:
    ld [bc], a
    rla
    dec e
    rst $00
    ld [bc], a
    dec d
    rst $00
    rst $00
    inc de
    jr jr_011_4d46

    ret z

    jr jr_011_4d5a

    rst $00

jr_011_4d46:
    rst $00
    inc de
    add hl, de
    ld l, $2e
    ld l, $2e
    ld l, $2e
    ld l, $2e
    ld l, $40
    ld b, c
    ld b, c
    ld b, d
    ld l, $2e
    ld l, $2e

jr_011_4d5a:
    ld l, $2e
    ld l, $2e
    ld l, $2e
    ld l, $44
    ld l, [hl]
    ld de, $2e46
    ld l, $2e
    ld l, $2e
    ld l, $40

jr_011_4d6c:
    ld b, c
    ld b, c
    ld b, c
    ld b, c
    ld h, e
    ld b, a
    ld c, $67
    ld b, c
    ld b, d
    ld l, $2e
    ld l, $2e
    ld b, h
    ld b, a
    ld c, $47
    ld b, a
    ld c, $47
    ld c, $0e
    ld c, $46
    ld l, $2e
    ld l, $2e
    ld b, b
    ld a, [hl+]
    dec hl
    ld b, d
    dec c
    ld c, $09
    ld b, b
    ld a, [hl+]
    dec hl
    ld b, d
    ld l, $2e
    ld l, $2e
    ld b, h
    ld c, $0e
    ld b, [hl]
    dec c
    ld c, $09
    ld b, h
    ld c, $0e
    ld b, [hl]
    ld l, $2e
    ld l, $2e
    ld b, h
    ld b, a
    ld b, a
    ld b, [hl]
    dec c
    ld c, $09
    ld c, b
    ld b, a
    ld b, a
    ld b, [hl]
    ld l, $2e
    ld l, $2e
    ld [de], a
    ld c, $0e
    ld b, [hl]
    add hl, de
    ld c, $19
    add hl, de
    ld c, $0e
    ld b, [hl]
    ld l, $2e
    ld l, $2e
    ld b, b
    ld h, e
    ld c, $40
    ld h, c
    ld h, c
    ld h, c
    ld h, d
    ld c, $67
    ld b, d
    ld l, $2e
    ld l, $2e
    ld [de], a
    ld c, $34
    ld d, l
    ld c, $0e
    ld c, $66
    inc l
    ld d, a
    ld c, d
    ld l, $2e
    ld l, $2e
    ld [de], a
    ld c, $36
    ld c, $47
    ld c, $0e
    ld b, [hl]
    ld l, $2e
    ld l, $2e
    ld l, $2e
    ld l, $12
    ld c, $36
    ld c, $47
    ld c, $0e
    ld b, [hl]
    ld l, $2e
    ld l, $2e
    ld l, $2e
    ld l, $12
    ld c, $37
    ld b, e
    ld c, $47
    ld l, a
    ld b, [hl]
    ld l, $2e
    ld l, $2e
    ld l, $2e
    ld l, $48
    ld c, c
    ld c, c
    ld c, c
    jr z, jr_011_4e3e

    jr z, jr_011_4e62

    ld l, $2e
    ld l, $16
    ld c, $0f
    ld b, a
    ld d, c
    rst $00
    ld d, b
    daa
    ld c, [hl]
    nop
    rst $30
    ld d, b
    call $3c3c
    ld hl, $50d1
    ld de, $4e3a
    ld a, [$d632]
    call $3160
    ld [$d632], a
    ret


    ld b, d
    ld c, [hl]
    ld c, h
    ld [hl-], a

jr_011_4e3e:
    ld [hl], l
    ld [hl-], a
    jp nz, $fa4f

    ld h, c
    db $d3
    ld b, a
    ld a, [$d362]
    ld c, a
    ld hl, $4e6d
    call $3442
    cp $ff
    jp z, $3219

    ld hl, $d736
    set 7, [hl]
    call $3486
    ld a, $a7
    call $23b1

jr_011_4e62:
    ld a, $ff
    ld [$cd6b], a
    ld a, $03
    ld [$da39], a
    ret


    add hl, bc
    inc b
    ld a, [de]
    ld c, a
    dec bc
    inc b
    dec e
    ld c, a
    rrca
    inc b
    jr nz, jr_011_4ec8

    db $10
    inc b
    dec h
    ld c, a
    inc de
    inc b
    ld a, [de]
    ld c, a
    ld d, $04
    inc l
    ld c, a
    ld c, $05
    ld sp, $164f
    ld b, $36
    ld c, a
    jr jr_011_4e95

    add hl, sp
    ld c, a
    add hl, bc
    ld [$4f3c], sp

jr_011_4e95:
    inc c
    ld [$4f3f], sp
    rrca
    ld [$4f39], sp
    inc de
    ld [$4f3c], sp
    rla
    ld [$4f42], sp
    ld c, $09
    ld b, a
    ld c, a
    ld d, $09
    ld b, a
    ld c, a
    add hl, bc
    ld a, [bc]
    ld c, d
    ld c, a
    ld a, [bc]
    ld a, [bc]
    ld c, l
    ld c, a
    rrca
    ld a, [bc]
    ld d, d
    ld c, a
    ld de, $570a
    ld c, a
    inc de
    ld a, [bc]
    ld e, h
    ld c, a
    add hl, de
    ld a, [bc]
    dec e
    ld c, a
    ld c, $0b
    ld h, e

jr_011_4ec8:
    ld c, a
    db $10
    dec bc
    ld l, d
    ld c, a
    ld [de], a
    dec bc
    ld b, a
    ld c, a
    add hl, bc
    inc c
    ld l, a
    ld c, a
    dec bc
    inc c
    ld [hl], d
    ld c, a
    dec c
    inc c
    ld [hl], a
    ld c, a
    ld de, $7c0c
    ld c, a
    ld a, [bc]
    dec c
    add c
    ld c, a
    inc c
    dec c
    add [hl]
    ld c, a
    db $10
    dec c
    adc c
    ld c, a
    ld [de], a
    dec c
    adc [hl]
    ld c, a
    inc de
    dec c
    sub e
    ld c, a
    ld d, $0d
    sbc h
    ld c, a
    rla
    dec c
    and c
    ld c, a
    ld de, $a80e
    ld c, a
    db $10
    rrca
    ld b, a
    ld c, a
    ld c, $10
    xor e
    ld c, a
    db $10
    db $10
    xor [hl]
    ld c, a
    ld [de], a
    db $10
    or c
    ld c, a
    ld a, [bc]
    ld de, $4fb4
    dec bc
    ld de, $4fbb
    rst $38
    jr nz, jr_011_4f1e

    rst $38
    db $10

jr_011_4f1e:
    inc b
    rst $38
    ld b, b
    inc b
    db $10
    inc b
    rst $38
    ld b, b
    inc b
    db $10
    inc b
    ld b, b
    ld bc, $20ff
    ld [bc], a
    ld b, b
    inc bc
    rst $38
    add b
    ld [bc], a
    db $10
    inc b
    rst $38
    ld b, b
    ld [bc], a
    rst $38
    ld b, b
    inc b
    rst $38
    jr nz, @+$08

    rst $38
    ld b, b
    ld bc, $20ff
    ld b, $40
    inc b
    rst $38
    add b
    ld [bc], a
    rst $38
    jr nz, @+$0a

    rst $38
    jr nz, jr_011_4f57

    ld b, b
    ld bc, $20ff
    ld [$0640], sp
    rst $38

jr_011_4f57:
    ld b, b
    ld [bc], a
    db $10
    inc b
    rst $38
    ld b, b
    ld [bc], a
    db $10
    inc b
    ld b, b
    ld [bc], a
    rst $38
    add b
    ld [bc], a
    db $10
    inc b
    add b
    ld [bc], a
    rst $38
    add b
    ld [bc], a
    db $10
    inc b
    rst $38
    jr nz, jr_011_4f7b

    rst $38
    jr nz, jr_011_4f7e

    ld b, b
    ld [bc], a
    rst $38
    jr nz, @+$0c

    ld b, b
    inc b

jr_011_4f7b:
    rst $38
    ld b, b
    ld [bc], a

jr_011_4f7e:
    db $10
    ld [bc], a
    rst $38
    db $10
    ld bc, $0280
    rst $38
    db $10
    ld bc, $80ff
    ld [bc], a
    db $10
    ld [bc], a
    rst $38
    add b
    ld [bc], a
    jr nz, jr_011_4f94

    rst $38
    ld b, b

jr_011_4f94:
    ld [bc], a
    db $10
    inc b
    ld b, b
    ld [bc], a
    jr nz, jr_011_4f9e

    rst $38
    add b
    ld [bc], a

jr_011_4f9e:
    jr nz, jr_011_4fa4

    rst $38
    jr nz, jr_011_4fa9

    ld b, b

jr_011_4fa4:
    inc b
    jr nz, jr_011_4fac

    rst $38
    ld b, b

jr_011_4fa9:
    ld [bc], a
    rst $38
    ld b, b

jr_011_4fac:
    ld bc, $40ff
    inc bc
    rst $38
    ld b, b
    dec b
    rst $38
    db $10
    ld bc, $0280
    jr nz, jr_011_4fbe

    rst $38
    jr nz, @+$0c

    ld b, b

jr_011_4fbe:
    ld [bc], a
    jr nz, jr_011_4fc6

    rst $38
    ld a, [$cd38]
    and a

jr_011_4fc6:
    jr nz, jr_011_4fd7

    xor a
    ld [$cd6b], a
    ld hl, $d736
    res 7, [hl]
    ld a, $00
    ld [$da39], a
    ret


Jump_011_4fd7:
jr_011_4fd7:
    ld a, [$c102]
    srl a
    srl a
    ld hl, $5083
    ld c, a
    ld b, $00
    add hl, bc
    ld a, [hl]
    ld [$c102], a
    ld a, [$d367]
    cp $16
    ld hl, $5023
    jr z, jr_011_4ff6

    ld hl, $5053

jr_011_4ff6:
    ld a, [$cd38]
    bit 0, a
    jr nz, jr_011_5001

    ld de, $0018
    add hl, de

jr_011_5001:
    ld a, $04
    ld bc, $0000

jr_011_5006:
    push af
    push hl
    push bc
    add hl, bc
    ld a, [hl+]
    ld e, a

jr_011_500c:
    ld a, [hl+]
    ld d, a
    ld a, [hl+]
    ld c, a
    ld a, [hl+]
    ld b, a
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    call $1848
    pop bc
    ld a, $06
    add c
    ld c, a
    pop hl
    pop af
    dec a
    jr nz, jr_011_5006

    ret


    add a
    ld d, b
    ld bc, $0011
    sub d
    sub a
    ld d, b
    ld bc, $1011
    sub d
    and a
    ld d, b
    ld bc, $0011
    sub e
    or a
    ld d, b
    ld bc, $1011
    sub e
    rst $28
    ld [hl], e
    ld bc, $001a
    sub d
    rst $38
    ld [hl], e
    ld bc, $101a
    sub d
    rst $28
    ld [hl], h
    ld bc, $001a
    sub e
    rst $38
    ld [hl], h
    ld bc, $101a
    sub e
    sub a
    ld d, b
    ld bc, $c011
    sub e
    or a
    ld d, b
    ld bc, $d011
    sub e
    add a
    ld d, b
    ld bc, $c011
    sub h
    and a
    ld d, b
    ld bc, $d011
    sub h
    cpl
    ld b, h
    ld bc, $c01a
    sub e
    ccf
    ld b, h
    ld bc, $d01a
    sub e
    cpl
    ld b, l
    ld bc, $c01a
    sub h
    ccf
    ld b, l
    ld bc, $d01a
    sub h
    ld [$040c], sp
    nop
    add b
    ld [hl], b
    add b
    jr c, jr_011_500c

    inc e
    add b
    ld c, $80
    rlca
    add b
    inc bc
    add b
    ld bc, $00ff
    rst $38
    nop
    add b
    ld bc, $0380
    add b
    rlca
    add b
    ld c, $80
    inc e
    add b
    jr c, @-$7e

    ld [hl], b
    ld bc, $010e
    inc e
    ld bc, $0138
    ld [hl], b
    ld bc, $01e0
    ret nz

    ld bc, $ff80
    nop
    rst $38
    nop
    ld bc, $0180
    ret nz

    ld bc, $01e0
    ld [hl], b
    ld bc, $0138
    inc e
    ld bc, $de0e
    ld d, b
    db $f4
    inc h
    db $f4
    inc h
    db $f4
    inc h
    db $f4
    inc h
    ld bc, $1740
    ret c

    add sp, $50
    ld a, [c]
    ld d, b
    db $ed
    ld d, b
    db $ed
    ld d, b
    rst $38
    ld [$d121], sp
    ld d, b
    call $31cc
    jp $24d7


    rla
    cp e
    ld h, b
    jr nz, jr_011_513d

    rla
    rst $28
    ld h, b
    jr nz, @+$52

    rla
    db $fd
    ld h, b
    jr nz, jr_011_5147

    ld l, $05
    ld [$001b], sp
    rst $00
    ld [$0015], sp
    ret


    inc de
    jr jr_011_5104

jr_011_5104:
    rl [hl]
    dec d
    inc bc
    rst $00
    inc de
    add hl, de
    ld bc, $00cb
    dec b
    jr jr_011_5121

    jr @+$01

    ret nc

    ld b, c
    and $0d
    dec a
    rrca
    dec b
    rst $38
    rst $38
    add d
    ld a, [bc]
    dec a
    inc c
    inc d

jr_011_5121:
    rst $38
    rst $38
    add e
    ld sp, $103d
    ld a, [bc]
    rst $38
    rst $38
    add h
    ld [bc], a
    dec a
    add hl, de
    rlca

jr_011_512f:
    rst $38
    rst $38
    add l
    jr z, jr_011_5193

    rst $00
    ld [$5c1b], sp
    rst $00
    ld [$c715], sp
    rst $00

jr_011_513d:
    inc de
    jr jr_011_512f

    rst $00
    ld d, $15
    rst $00
    rst $00
    inc de
    add hl, de

jr_011_5147:
    ld l, $2e
    ld l, $2e
    ld l, $2e
    ld l, $2e
    ld l, $2e
    ld l, $2e
    ld l, $2e
    ld l, $2e
    ld l, $2e
    ld l, $2e
    ld l, $2e
    ld l, $2e
    ld l, $2e
    ld l, $2e
    ld l, $2e
    ld l, $2e
    ld l, $2e
    ld l, $2e
    ld l, $2e
    ld l, $2e
    ld l, $2e
    ld l, $2e
    ld l, $40
    ld b, c
    ld b, c
    ld a, d
    ld b, c
    ld b, c
    ld b, c
    ld b, c
    ld b, c
    ld b, b
    ld b, c
    ld b, d
    ld b, c
    ld b, c
    ld b, d
    ld b, h
    add hl, de
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    inc e
    ld e, $55
    ld l, a
    ld b, [hl]
    dec c
    ld l, [hl]
    ld b, [hl]
    ld a, c

jr_011_5193:
    add hl, sp
    ld de, $1919
    jr nz, @+$10

    ld c, $0e
    ld c, $20
    ld b, [hl]
    dec c
    ld c, $46
    ld b, h
    ld a, [bc]
    ld a, [de]
    ld e, $20
    jr nz, jr_011_51b6

    jr nz, jr_011_51c3

    add hl, de
    jr nz, jr_011_5203

    dec c
    ld c, $46
    ld a, c
    add hl, de
    ld c, $0e
    ld c, $0e

jr_011_51b6:
    dec [hl]
    add hl, de
    jr nz, jr_011_5213

    dec e
    ld c, $0e
    ld c, $46
    ld b, h
    add hl, de
    jr nz, jr_011_51f8

jr_011_51c3:
    dec e
    ld c, $0e
    ld c, $20
    ld h, a
    ld b, c
    ld b, d
    ld b, c
    ld b, c
    ld b, d
    ld b, h
    add hl, de
    ld a, [bc]
    ld c, $0a
    ld c, $0e
    dec e
    ld d, e
    dec e
    dec e
    ld b, [hl]
    inc l
    ld [hl], d
    ld b, [hl]
    ld b, h
    jr jr_011_51f1

    jr nz, @+$22

    dec e
    dec e
    jr nz, jr_011_5206

    ld c, $0e
    ld b, [hl]
    ld l, $64
    ld b, [hl]
    ld b, h
    jr nz, jr_011_520f

    jr nz, jr_011_51ff

jr_011_51f1:
    ld c, $0e
    jr nz, jr_011_5215

    add hl, sp
    ld l, [hl]
    ld b, [hl]

jr_011_51f8:
    ld l, $64
    ld b, [hl]
    ld b, h
    ld de, $2011

jr_011_51ff:
    dec e
    ld de, $1919

jr_011_5203:
    ld de, $6120

jr_011_5206:
    ld h, c
    ld h, c
    ld h, c
    ld b, [hl]
    ld c, b
    ld c, c
    inc sp
    inc sp
    inc sp

jr_011_520f:
    inc sp
    inc sp
    inc sp
    inc sp

jr_011_5213:
    ld c, c
    ld c, c

jr_011_5215:
    ld c, c
    ld c, c
    ld c, c
    ld c, d
    ld d, $0e
    rrca
    ld a, a
    ld d, e
    ld a, [$2552]
    ld d, d
    nop
    ld c, l
    ld d, e
    call $3c3c
    ld hl, $5302
    ld de, $5238
    ld a, [$d633]
    call $3160
    ld [$d633], a
    ret


    ld b, b
    ld d, d
    ld c, h
    ld [hl-], a
    ld [hl], l
    ld [hl-], a
    db $e4
    ld d, d
    ld a, [$d361]
    ld b, a
    ld a, [$d362]
    ld c, a
    ld hl, $526b
    call $3442
    cp $ff
    jp z, $3219

    ld hl, $d736
    set 7, [hl]
    call $3486
    ld a, $a7
    call $23b1
    ld a, $ff
    ld [$cd6b], a
    ld a, $03
    ld [$da39], a
    ret


    dec c
    ld a, [bc]
    bit 2, d
    inc de
    ld a, [bc]
    xor h
    ld d, d
    ld [de], a
    dec bc
    or e
    ld d, d
    dec bc
    inc c
    cp b
    ld d, d
    ld de, $bb0c
    ld d, d
    inc d
    inc c
    jp nz, $1052

    dec c
    bit 2, d
    dec bc
    ld c, $ce
    ld d, d
    rrca
    ld c, $cb
    ld d, d
    ld de, $d10e
    ld d, d
    inc de
    ld c, $d6
    ld d, d
    db $10
    rrca
    adc $52
    ld [de], a
    rrca
    db $db
    ld d, d
    dec c
    db $10
    sbc $52
    inc c
    ld de, $52db
    db $10
    ld [de], a
    pop hl
    ld d, d
    rst $38
    db $10
    inc b
    ld b, b
    inc b
    db $10
    inc b
    rst $38
    add b

jr_011_52b4:
    inc b
    db $10
    inc b
    rst $38
    jr nz, jr_011_52bc

    rst $38
    db $10

jr_011_52bc:
    inc b
    ld b, b
    ld [bc], a
    db $10
    ld [bc], a
    rst $38
    db $10
    inc b
    ld b, b
    ld [bc], a
    db $10
    ld [bc], a
    ld b, b
    inc bc
    rst $38
    db $10
    inc b
    rst $38
    db $10
    ld [bc], a
    rst $38
    db $10
    inc b
    ld b, b
    ld [bc], a
    rst $38
    db $10
    inc b
    ld b, b
    inc b
    rst $38
    add b
    inc b
    rst $38
    ld b, b
    ld [bc], a
    rst $38
    ld b, b
    ld bc, $faff
    jr c, jr_011_52b4

    and a
    jp nz, Jump_011_4fd7

    xor a
    ld [$cd6b], a
    ld hl, $d736
    res 7, [hl]
    ld a, $00
    ld [$da39], a
    ret


    dec de
    ld d, e
    inc [hl]
    ld d, e
    db $f4
    inc h
    db $f4
    inc h
    ld bc, $1920
    ret c

    dec h
    ld d, e
    cpl
    ld d, e
    ld a, [hl+]
    ld d, e
    ld a, [hl+]
    ld d, e
    ld [bc], a
    ld b, b
    add hl, de
    ret c

    ld a, $53
    ld c, b
    ld d, e
    ld b, e
    ld d, e
    ld b, e
    ld d, e
    rst $38
    ld [$0221], sp
    ld d, e
    call $31cc
    jp $24d7


    rla
    ld b, b
    ld h, c
    jr nz, @+$52

    rla
    ld l, b
    ld h, c
    jr nz, jr_011_537f

    rla
    ld a, d
    ld h, c
    jr nz, jr_011_5384

    ld [$0e21], sp
    ld d, e
    call $31cc
    jp $24d7


    rla
    cp b
    ld h, c
    jr nz, jr_011_5393

    rla
    jp hl


    ld h, c
    jr nz, @+$52

    rla
    db $fc
    ld h, c
    jr nz, jr_011_539d

    ld l, $02
    ld b, $19
    ld bc, $12c8
    inc de
    nop
    jp z, $0400

    jr jr_011_5365

    inc e
    rst $38
    db $d3
    ld b, c
    and $0e
    jr jr_011_536e

    dec e
    rst $38

jr_011_5365:
    pop de
    ld b, d
    and $0f
    dec a
    ld d, $1d
    rst $38
    rst $38

jr_011_536e:
    add e
    jp nc, $063d

    rra
    rst $38
    rst $38
    add h
    ld sp, $c749
    ld b, $19
    call nz, $12c7
    inc de

jr_011_537f:
    ld l, $2e
    ld l, $2e
    ld h, b

jr_011_5384:
    ld h, c
    ld h, c
    ld h, c
    ld h, c
    ld h, c
    ld h, c
    ld h, c
    ld h, c
    ld h, c
    ld h, d
    ld l, $2e
    ld l, $2e
    ld h, h

jr_011_5393:
    ld c, $0e
    ld c, $0e
    ld c, $0e
    ld c, $0e
    ld c, $66

jr_011_539d:
    ld l, $2e
    ld l, $2e
    ld h, h
    dec hl
    ld b, c
    ld b, c
    ld b, c
    ld b, c
    ld b, c
    ld b, c
    ld b, c
    ld b, c
    ld b, d
    ld l, $2e
    ld l, $2e
    ld b, h
    ld c, $0e
    ld c, $0e
    ld c, $0e
    ld c, $6e
    ld c, $46
    ld l, $2e
    ld l, $2e
    ld b, b
    ld b, c
    ld b, c
    ld b, c
    ld b, c
    ld b, c
    ld b, c
    ld b, c
    ld h, e
    ld c, $46
    ld l, $2e
    ld l, $2e
    ld a, c
    add hl, de
    ld a, [bc]
    ld de, $1919
    ld c, $0e
    ld c, $0e
    ld b, [hl]
    ld l, $2e
    ld l, $2e
    ld a, c
    ld de, $1911
    ld c, $35
    ld e, d
    ld d, d
    ld d, a
    ld c, c
    ld d, c
    ld l, $2e
    ld l, $2e
    ld b, h
    dec [hl]
    jr nz, @+$13

    ld c, $19
    ld b, [hl]
    ld b, h
    ld c, $0e
    ld b, [hl]
    ld l, $2e
    ld l, $2e
    ld b, h
    dec e
    ld c, $0e
    dec e
    jr nz, @+$18

    ld d, l
    ld c, $0e
    ld b, [hl]
    ld l, $2e
    ld l, $2e
    ld b, h
    ld c, $0e
    ld c, $35
    ld l, a
    ld b, [hl]
    ld c, c
    ld c, c
    ld c, c
    ld c, d
    ld l, $2e
    ld l, $2e
    ld a, c
    add hl, de
    jr nz, jr_011_5427

    ld h, b
    ld a, [hl+]
    ld [hl], c
    ld h, d
    ld l, $2e
    ld l, $2e
    ld l, $2e

jr_011_5427:
    ld l, $44
    ld c, $53
    dec e
    ld h, h
    ld c, $0e
    ld h, [hl]
    ld l, $2e
    ld l, $2e
    ld l, $2e
    ld l, $40
    ld b, c
    dec hl
    ld b, c
    ld [hl], b
    ld c, $0e
    ld b, [hl]
    ld l, $2e
    ld l, $2e
    ld l, $2e
    ld l, $48
    ld c, c
    ld c, c
    ld c, c
    ld c, c
    ld c, c
    ld c, c
    ld c, d
    ld l, $2e
    ld l, $16
    inc c
    rrca
    ld d, b
    ld d, [hl]
    ld bc, $5d55
    ld d, h
    nop
    pop af
    ld d, l
    call Call_011_5473
    call $3c3c
    ld hl, $5515
    ld de, $54ae
    ld a, [$d634]
    call $3160
    ld [$d634], a
    ret


Call_011_5473:
    ld hl, $d126
    bit 5, [hl]
    res 5, [hl]
    ret z

    ld a, [$d81b]
    bit 5, a
    jr nz, jr_011_5496

    and $0c
    cp $0c
    jr z, jr_011_548c

    ld a, $2d
    jr jr_011_5498

jr_011_548c:
    ld a, $ad
    call $23b1
    ld hl, $d81b
    set 5, [hl]

jr_011_5496:
    ld a, $0e

jr_011_5498:
    ld [$d09f], a
    ld bc, $050c
    ld a, $17
    jp $3e6d


Jump_011_54a3:
    xor a
    ld [$cd6b], a
    ld [$d634], a
    ld [$da39], a
    ret


    add hl, de
    ld [hl-], a
    ld c, h
    ld [hl-], a
    ld [hl], l
    ld [hl-], a
    or [hl]
    ld d, h
    ld a, [$d057]
    cp $ff
    jp z, Jump_011_54a3

    call $2429
    ld a, $f0
    ld [$cd6b], a
    ld hl, $d81b
    set 7, [hl]
    ld a, $0a
    ldh [$8c], a
    call $2920
    call $20ef
    ld a, $83
    ld [$cc4d], a
    ld a, $11
    call $3e6d
    ld a, $87
    ld [$cc4d], a
    ld a, $15
    call $3e6d
    call $2429
    call $20d1
    xor a
    ld [$cd6b], a
    ld hl, $d126
    set 5, [hl]
    ld a, $00
    ld [$d634], a
    ld [$da39], a
    ret


    ld a, [hl-]
    ld d, l
    adc c
    ld d, l
    and d
    ld d, l
    cp e
    ld d, l
    db $f4
    inc h
    db $f4
    inc h
    db $f4
    inc h
    db $f4
    inc h
    db $f4
    inc h
    add h
    ld d, l
    ld [bc], a
    nop
    dec de
    ret c

    sub e
    ld d, l
    sbc l
    ld d, l
    sbc b
    ld d, l
    sbc b
    ld d, l
    inc bc
    nop
    dec de
    ret c

    xor h
    ld d, l
    or [hl]
    ld d, l
    or c
    ld d, l
    or c
    ld d, l
    inc b
    db $10
    dec de
    ret c

    push bc
    ld d, l
    rst $08
    ld d, l
    jp z, $ca55

    ld d, l
    rst $38
    ld [$1bfa], sp
    ret c

    bit 7, a
    jp nz, Jump_011_5571

    ld hl, $557a
    call $3c49
    ld hl, $d72d
    set 6, [hl]
    set 7, [hl]
    ld hl, $557f
    ld de, $557f
    call $3354
    ldh a, [$8c]
    ld [$cf13], a
    call $336a
    call $32d7
    xor a
    ldh [$b4], a
    ld a, $03
    ld [$d634], a
    ld [$da39], a
    jr jr_011_5577

Jump_011_5571:
    ld hl, $5584
    call $3c49

jr_011_5577:
    jp $24d7


    rla
    ld a, $62
    jr nz, jr_011_55cf

    rla
    ld l, h
    ld h, d
    jr nz, @+$52

    rla
    add e
    ld h, d
    jr nz, jr_011_55d9

    ld [$1521], sp
    ld d, l
    call $31cc
    jp $24d7


    rla
    ld h, $63
    jr nz, @+$52

    rla
    ld d, h
    ld h, e
    jr nz, jr_011_55ed

    rla
    ld h, e
    ld h, e
    jr nz, @+$52

    ld [$2121], sp
    ld d, l
    call $31cc
    jp $24d7


    rla
    adc a
    ld h, e
    jr nz, jr_011_5601

    rla
    cp h
    ld h, e
    jr nz, jr_011_5606

    rla
    call nz, $2063
    ld d, b
    ld [$2d21], sp
    ld d, l
    call $31cc
    jp $24d7


    rla
    ld [c], a
    ld h, e
    jr nz, @+$52

    rla
    inc de
    ld h, h
    jr nz, jr_011_561f

jr_011_55cf:
    ld [$ec21], sp
    ld d, l
    call $3c49
    ld hl, $d81b

jr_011_55d9:
    bit 6, [hl]
    set 6, [hl]
    jr nz, jr_011_55e9

    ld a, $88
    ld [$cc4d], a
    ld a, $15
    call $3e6d

jr_011_55e9:
    jp $24d7


    rla

jr_011_55ed:
    jr @+$66

    jr nz, jr_011_5641

    ld l, $03
    ld a, [bc]
    inc de
    ld bc, $0fc9
    jr jr_011_55fa

jr_011_55fa:
    rrc a
    add hl, de
    ld bc, $00cb
    add hl, bc

jr_011_5601:
    rla
    rlca
    dec e
    rst $38
    ret nc

jr_011_5606:
    ld b, c
    push hl
    ld bc, $1018
    dec de
    rst $38
    ret nc

    ld b, d
    and $10
    jr jr_011_5623

    ld e, $ff
    ret nc

    ld b, e
    and $11
    jr jr_011_5621

    rrca
    rst $38
    ret nc

    ld b, h

jr_011_561f:
    and $12

jr_011_5621:
    dec a
    db $10

jr_011_5623:
    ld c, $ff
    rst $38
    add l
    ld [de], a
    dec a
    inc c
    dec c
    rst $38
    rst $38
    add [hl]
    jp z, $183d

    db $10
    rst $38
    rst $38
    add a
    jr z, jr_011_5674

    ld b, $1d
    rst $38
    rst $38
    adc b
    ld c, b
    dec a
    ld b, $0e
    rst $38

jr_011_5641:
    rst $38
    adc c
    ld c, d
    ld [hl], b
    rst $00
    ld a, [bc]
    inc de
    sbc l
    rst $00
    rrca
    jr @-$61

    rst $00
    rrca
    add hl, de
    ld l, $2e
    ld l, $2e
    ld h, b
    ld h, c
    ld h, c
    ld h, c
    ld b, b
    ld b, c
    ld b, d
    ld h, c
    ld h, c
    ld h, c
    ld b, d
    ld l, $2e
    ld l, $2e
    ld h, h
    ld c, $0e
    ld c, $70
    ld c, $46
    ld c, $0e
    ld c, $46
    ld l, $2e
    ld l, $2e
    ld b, h
    ld b, a

jr_011_5674:
    ld b, a
    ld c, $52
    ld c, $46
    ld c, $47
    ld b, a
    ld b, [hl]
    ld l, $2e
    ld l, $2e
    ld d, b
    ld c, c
    ld c, c
    ld c, c
    ld b, h
    ld c, $46
    dec c
    ld c, $0e
    ld b, [hl]
    ld l, $2e
    ld l, $2e
    ld b, h
    ld c, $0e
    dec bc
    ld b, h
    ld c, $46
    ld b, l
    inc l
    ld [hl], a
    ld h, [hl]
    ld l, $2e
    ld l, $2e
    ld b, h
    ld b, a
    ld c, $09
    ld b, h
    ld l, [hl]
    ld b, [hl]
    ld e, b
    ld c, $57
    ld d, c
    ld l, $2e
    ld l, $2e
    ld b, h
    ld b, a
    ld c, $67
    ld [hl], b
    ld d, e
    ld c, d
    ld c, $0e
    ld c, $46
    ld l, $2e
    ld l, $2e
    ld b, h
    ld c, $0e
    ld c, $0e
    ld b, [hl]
    ld c, $53
    inc l
    ld d, a
    ld c, d
    ld l, $2e
    ld l, $2e
    ld h, b
    ld h, c
    ld h, c
    ld h, c
    ld h, c
    ld h, e
    ld c, $46
    ld l, $2e
    ld l, $2e
    ld l, $2e
    ld l, $64
    ld c, $0e
    ld c, $0e
    ld c, $0e
    ld b, [hl]
    ld l, $2e
    ld l, $2e
    ld l, $2e
    ld l, $44
    ld c, $47
    ld b, a
    dec bc
    dec c
    ld c, $46
    ld l, $2e
    ld l, $2e
    ld l, $2e
    ld l, $48
    ld c, c
    ld c, c
    ld c, c
    ld c, c
    ld c, c
    ld c, c
    ld c, d
    ld l, $2e
    ld l, $12
    inc b
    inc bc
    xor b
    ld d, a
    ld l, e
    ld d, a
    db $10
    ld d, a
    nop
    sub c
    ld d, a
    ld hl, $d126
    bit 5, [hl]
    res 5, [hl]
    push hl
    call nz, Call_011_572c
    pop hl
    bit 7, [hl]
    res 7, [hl]
    call nz, $575f
    xor a
    ld [$cf0c], a
    inc a
    ld [$cc3c], a
    ret


Call_011_572c:
    ld hl, $d3af
    ld a, [$d73b]
    ld b, a
    ld a, [$d73c]
    ld c, a
    call Call_011_573a

Call_011_573a:
    inc hl
    inc hl
    ld a, b
    ld [hl+], a
    ld a, c
    ld [hl+], a
    ret


Call_011_5741:
    ld hl, $5754
    call $2a5a
    ld hl, $5759
    ld de, $cc5b
    ld bc, $0006
    call $00b5
    ret


    inc bc
    ld d, l
    ld d, h
    ld h, c
    rst $38
    inc b
    rst $00
    inc b
    ret z

    ld [bc], a
    jp z, $d7cd

    dec a
    ld b, $1e
    ld hl, $7f15
    call $35d6
    ret


    ld l, l
    ld d, a
    ld [$4a06], sp
    call $3493
    jr z, jr_011_5782

    call Call_011_5741
    ld hl, $5759
    ld a, $61
    call $3e6d
    jr jr_011_5788

jr_011_5782:
    ld hl, $578b
    call $3c49

jr_011_5788:
    jp $24d7


    rla
    jr c, @+$66

    jr nz, @+$0f

    ld d, b
    rrca
    ld [bc], a
    ld bc, $0202
    rst $00
    ld bc, $0403
    rst $00
    ld bc, $0101
    ld bc, $f300
    add $01
    ld [bc], a
    di
    add $01
    inc bc
    ld b, h
    ld c, l
    ld b, a
    ld c, d
    ld c, h
    ld c, e
    ld c, d
    jr nz, @+$4d

    ld c, b
    ld b, [hl]
    ld c, c
    ld [de], a
    ld [bc], a
    ld [bc], a
    ld e, e
    ld e, b
    inc sp
    ld e, b
    ret nz

    ld d, a
    nop
    ld b, h
    ld e, b
    ld hl, $d126
    bit 5, [hl]
    res 5, [hl]
    push hl
    call nz, Call_011_57dc
    pop hl
    bit 7, [hl]
    res 7, [hl]
    call nz, Call_011_5827
    xor a
    ld [$cf0c], a
    inc a
    ld [$cc3c], a
    ret


Call_011_57dc:
    ld hl, $d3af
    ld a, [$d73b]
    ld b, a
    ld a, [$d73c]
    ld c, a
    call Call_011_57ea

Call_011_57ea:
    inc hl
    inc hl
    ld a, b
    ld [hl+], a
    ld a, c
    ld [hl+], a
    ret


    ld hl, $5804
    call $2a5a
    ld hl, $5811
    ld de, $cc5b
    ld bc, $0016
    call $00b5
    ret


    dec bc
    ld d, [hl]
    ld d, a
    ld e, b
    ld e, c
    ld e, d
    ld e, e
    ld e, h
    ld e, l
    ld e, [hl]
    ld e, a
    ld h, b
    rst $38
    inc bc
    or l
    ld [bc], a
    rst $08
    ld [bc], a
    ret nc

    ld [bc], a
    pop de
    ld [bc], a
    jp nc, $d302

    ld [bc], a
    call nc, $d502
    ld [bc], a
    jp hl


    ld [bc], a
    ld [$eb01], a

Call_011_5827:
    call $3dd7
    ld b, $1e
    ld hl, $7f15
    call $35d6
    ret


    dec [hl]
    ld e, b
    ld [$f1cd], sp
    ld d, a
    ld hl, $5811
    ld a, $61
    call $3e6d
    jp $24d7


    rrca
    ld [bc], a
    inc bc
    ld bc, $ed00
    inc bc
    ld [bc], a
    nop
    db $ed
    ld bc, $0300
    ld bc, $f900
    add $03
    ld bc, $c6fa
    inc bc
    ld [bc], a
    ld a, [hl+]
    dec hl
    jr z, jr_011_5888

    inc bc
    dec c
    rrca
    call c, Call_011_6e58
    ld e, b
    ld l, e
    ld e, b
    nop
    adc e
    ld e, b
    jp $3c3c


    db $f4

Jump_011_586f:
    inc h
    db $f4
    inc h
    db $f4
    inc h
    db $f4
    inc h
    ld a, h
    ld e, b
    add c
    ld e, b
    add [hl]
    ld e, b
    rla
    ldh [rHDMA5], a
    ld hl, $1750
    db $ec
    ld d, l
    ld hl, $1750
    dec hl

jr_011_5888:
    ld d, [hl]
    ld hl, $6350
    dec b
    inc b
    nop
    ld b, $da

jr_011_5891:
    dec b
    nop
    rlca
    jp c, $0016

    ld b, $dc
    rla
    nop
    ld b, $dc
    add hl, bc
    add hl, de
    nop
    ldh [$03], a
    ld a, [bc]
    ld a, [de]
    dec b
    inc b
    ld b, $06
    rla
    dec b
    rlca
    inc b
    dec a
    dec b
    inc b
    rst $38
    rst $38
    add c
    ld sp, $0b3d
    rlca
    rst $38
    rst $38
    add d
    ld de, $113d
    jr @+$01

    rst $38
    add e
    jr z, @+$3f

    db $10
    inc de
    rst $38
    rst $38
    add h
    db $ed
    jr z, jr_011_5891

    inc b
    nop
    jr z, @-$37

    dec b
    nop
    push hl
    rst $00
    ld d, $00
    push hl
    rst $00
    rla
    nop
    ld e, [hl]
    rst $00
    add hl, bc
    add hl, de
    cpl
    cpl
    cpl
    cpl
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    ld a, l
    dec b
    dec b
    dec b
    ld c, c
    ld h, e
    ld h, e
    ld h, e
    dec b
    ld [$0505], sp
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    add hl, bc
    rlca
    cpl
    inc b
    cpl
    ld hl, $3c04
    dec a
    dec a
    dec a
    ld a, $25
    dec b
    dec b
    add hl, bc
    rlca
    ld [$0905], sp
    dec b
    dec b
    ld b, h
    ld b, a
    ld b, l
    ld d, e
    ld b, [hl]
    dec h
    ld [$0705], sp
    rlca
    ld b, $06
    dec b
    rlca
    ld [hl+], a
    inc b
    dec de
    ld h, e
    ld b, $05
    dec b
    add hl, hl
    add hl, de
    inc e
    rlca
    cpl
    dec b
    dec b
    dec b
    dec b
    ld d, b
    ld d, c
    ld d, c
    ld d, c
    ld d, d
    dec de
    ld [$211b], sp
    rlca
    ld [$0505], sp
    ld bc, $0508
    ld bc, $5501
    inc a
    dec a
    dec a
    dec a
    ld a, $07
    ld b, $08
    dec b
    dec b
    ld b, $50
    ld d, c
    ld d, c
    ld c, a
    ld b, h
    ccf
    ld b, e
    ld b, a
    ld b, [hl]
    rlca
    ld c, h
    inc b
    inc b
    ld b, $06
    ld d, h
    dec l
    ld h, e
    dec l
    dec l
    ld b, b
    ld b, d
    inc l
    add hl, bc
    rlca
    ld h, e
    ld h, e
    ld h, e
    ld b, $06
    inc a
    dec a
    dec a
    dec a
    dec a
    ld b, c
    ld b, d
    ld [$0707], sp
    ld a, l
    ld a, l
    ld a, l
    ld b, $06
    ld b, h
    ld b, a
    ld b, l
    ld b, l
    ld b, l
    ld b, l
    ld b, [hl]
    ld bc, $0709
    cpl
    rlca
    inc sp
    ld c, h
    ld a, h
    ld a, h
    ld a, h
    ld h, e
    ld [$0925], sp
    ld bc, $2409
    rlca
    ld a, h
    dec bc
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    dec bc
    inc b
    dec bc
    inc b
    dec bc
    ld c, l
    inc bc
    ld [de], a
    inc d
    ld a, $5a
    xor [hl]
    ld e, c
    xor e
    ld e, c
    nop
    push de
    ld e, c
    jp $3c3c


    db $f4
    inc h
    db $f4
    inc h
    cp h
    ld e, c
    pop bc
    ld e, c
    add $59
    bit 3, c
    ret nc

    ld e, c
    rla
    ld b, [hl]
    ld d, [hl]
    ld hl, $1750
    ld d, d
    ld d, [hl]
    ld hl, $1750
    add c
    ld d, [hl]
    ld hl, $1750
    adc c
    ld d, [hl]
    ld hl, $1750
    rst $18
    ld d, [hl]
    ld hl, $0350
    add hl, bc
    inc hl
    ld [bc], a
    nop
    db $db
    inc hl
    inc bc
    ld bc, $23db
    ld [$db02], sp
    inc hl
    add hl, bc
    inc bc
    db $db
    inc hl
    inc d
    inc b
    call c, $1523
    dec b
    call c, $271e
    nop
    reti


    rra
    daa
    ld bc, $03d9
    inc hl
    nop
    pop hl
    dec b
    inc b
    inc h
    inc bc
    add hl, de
    inc b
    inc b
    rra
    dec c
    dec b
    ld hl, $0613
    inc e
    ld a, [de]
    rlca
    ld [bc], a
    dec a
    ld b, $2a
    rst $38
    rst $38
    add c
    jr z, jr_011_5a51

    jr jr_011_5a29

    rst $38
    rst $38
    add d
    ldh a, [$be]
    ret z

    inc hl
    ld [bc], a
    cp [hl]
    ret z

    inc hl
    inc bc
    pop bc
    ret z

    inc hl
    ld [$c8c1], sp
    inc hl

jr_011_5a29:
    add hl, bc
    rst $00
    ret z

    inc hl
    inc d
    rst $00
    ret z

    inc hl
    dec d
    sbc h
    ret z

    ld e, $27
    sbc h
    ret z

    rra
    daa
    ld l, $c7
    inc bc
    inc hl
    ld [bc], a
    ld d, l
    db $76
    ld [hl], a
    dec b
    dec b
    dec b
    ld [bc], a
    dec b
    dec b
    dec b
    ld [bc], a
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b

jr_011_5a51:
    ld [bc], a
    ld [hl], h
    ld [hl], l
    ld a, d
    ld a, e
    ld [hl+], a
    ld [bc], a
    ld bc, $0101
    ld [bc], a
    ld bc, $0101
    ld [bc], a
    inc hl
    ld bc, $1924
    inc e
    rlca
    ld a, b
    ld a, c
    dec l
    ld e, e
    inc h
    ld a, [hl]
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    dec b
    ld bc, $0202
    ld bc, $0721
    ld [bc], a
    ld d, l
    ld e, l
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld bc, $020c
    ld c, $0c
    inc c
    ld [bc], a
    ld bc, $0105
    ld bc, $0201
    rlca
    ld [bc], a
    db $10
    inc h
    ld [bc], a
    ld e, h
    ld d, d
    rlca
    ld b, $0c
    ld c, $02
    dec c
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    rlca
    ld a, a
    inc de
    inc de
    ld [bc], a
    ld e, d
    ld e, e
    rlca
    ld b, $02
    ld [bc], a
    ld [bc], a
    inc b
    inc b
    inc b
    inc b
    inc b
    ld bc, $0101
    rlca
    ld a, a
    db $10
    ld [bc], a
    ld [bc], a
    ld e, d
    ld e, e
    rlca
    ld b, $06
    inc b
    inc b
    inc c
    ld b, $0c
    ld b, $0c
    inc a
    dec a
    dec a
    ld a, $7f
    ld [bc], a
    ld e, h
    ld d, d
    dec c
    inc b
    rlca
    ld b, $06
    ld b, $0c
    ld b, $06
    ld b, $0e
    ld b, $44
    ld b, a
    ccf
    ld b, d
    ld a, a
    ld [bc], a
    ld e, d
    ld e, e
    inc b
    rlca
    rlca
    ld bc, $0606
    ld b, $06
    ld c, $08
    dec b
    ld b, $06
    inc c
    ld b, b
    ld b, d
    ld a, a
    ld [bc], a
    ld e, d
    ld e, e
    ld b, $0b
    ld [$0607], sp
    ld c, $06
    dec b
    dec b
    ld b, $0a
    ld bc, $0606
    ld b, b
    ld b, d
    ld a, a
    inc c
    ld [bc], a
    rra
    ld a, [bc]
    inc c
    ld b, $3c
    dec a
    dec a
    dec a
    ld a, $2f
    ld a, [bc]
    rlca
    dec bc
    ld a, [bc]
    ld b, $40
    ld b, d
    ld [bc], a
    ld c, $02
    db $10
    inc hl
    ld c, $06
    ld b, b
    ld b, c
    ld b, e
    ld b, a
    ld b, [hl]
    ld b, $08
    inc c
    ld c, $0c
    ld c, $40
    ld b, d
    ld a, a
    ld c, $15
    inc c
    ld e, h
    ld d, d
    ld b, $40
    ld b, c
    ld b, d
    ld bc, $0d07
    inc a
    dec a
    dec a
    dec a
    dec a
    ld c, d
    ld b, d
    ld a, a
    ld [bc], a
    ld a, [hl]
    dec c
    ld e, d
    ld e, e
    inc h
    ld b, h
    ld b, a
    ld b, [hl]
    rrca
    inc c
    ld bc, $4744
    ld b, l
    ld b, l
    ld b, l
    ld b, l
    ld b, [hl]
    ld a, a
    inc c
    ld a, [hl]
    inc c
    ld e, d
    ld e, e
    rlca
    dec c
    rlca
    dec h
    inc c
    ld [$2109], sp
    ld bc, $060f
    dec de
    dec de
    dec e
    ld [bc], a
    ld [bc], a
    ld a, [hl]
    dec c
    inc b
    rlca
    inc sp
    rlca
    rlca
    dec bc
    ld a, [bc]
    ld b, $01
    dec b
    dec b
    ld c, $06
    ld b, $08
    cpl
    ld a, a
    dec c
    dec bc
    rlca
    ld c, $0c
    ld c, $07
    rlca
    inc sp
    inc c
    ld c, $05
    dec b
    dec b
    dec b
    ld c, $0a
    ld bc, $491d
    cpl
    ld b, $07
    cpl
    ld b, $07
    ld b, $07
    ld c, c
    cpl
    ld c, b
    ld a, l
    ld a, l
    ld a, l
    ld a, l
    ld a, l
    ld a, l
    ld a, l
    ld a, l
    inc bc
    dec c
    rrca
    ld e, $5c
    or l
    ld e, e
    or d
    ld e, e
    nop
    push bc
    ld e, e
    jp $3c3c


    db $f4
    inc h
    cp e
    ld e, e
    ret nz

    ld e, e
    rla
    rlca
    ld e, b
    ld hl, $1750
    inc de
    ld e, b
    ld hl, $0250
    add hl, bc
    add hl, de
    ld c, $02
    sbc h
    add hl, de
    rrca
    inc bc
    sbc h
    ld a, [bc]
    nop
    inc b
    db $db
    dec bc
    nop
    dec b
    db $db
    nop
    ld c, $04
    jp c, $0f00

    dec b
    jp c, $1d0a

    ld [bc], a
    reti


    dec bc
    dec e
    inc bc
    reti


    inc de
    ld de, $dd00
    ld [bc], a
    inc d
    ld [de], a
    ld [bc], a
    ld d, $0e
    inc bc
    ld bc, $0e3d
    ld [de], a
    rst $38
    rst $38
    add c
    ld sp, $c801
    add hl, de
    ld c, $01
    ret z

    add hl, de
    rrca
    ld h, a
    rst $00
    ld a, [bc]
    nop
    ld h, a
    rst $00
    dec bc
    nop
    dec b
    rst $00
    nop
    ld c, $05
    rst $00
    nop
    rrca
    ld [hl], l
    rst $00
    ld a, [bc]
    dec e
    ld [hl], l
    rst $00
    dec bc
    dec e
    jp $13c7


    ld de, $0202
    ld bc, $0105
    ld [bc], a
    dec b
    ld bc, $0102
    dec b
    ld [bc], a
    ld a, l
    ld bc, $017f
    inc b
    rlca
    ld b, $08
    rlca
    rlca
    dec b
    inc hl
    ld [hl+], a
    ld [bc], a
    ld [hl+], a
    dec bc
    inc c
    ld a, [hl]
    ld [bc], a
    ld bc, $100b
    ld de, $0407
    inc b
    ld [bc], a
    inc b
    inc b
    dec bc
    ld [hl+], a
    ld c, $7e
    ld bc, $0201
    ld c, $04
    dec bc
    dec c
    inc b
    inc b
    inc b
    inc b
    inc c
    dec bc
    ld c, $7e
    ld [bc], a
    ld bc, $0707
    ld e, h
    ld d, c
    ld d, c
    ld d, c
    ld d, c
    ld d, c
    ld d, d
    ld a, [bc]
    ld a, h
    ld a, h
    ld [bc], a
    ld bc, $0702
    rlca
    ld e, d
    ld e, l
    dec de
    ld l, $1b
    ld d, l
    ld e, e
    inc c
    ld bc, $0106
    ld b, $02
    rlca
    rlca
    ld e, d
    ld e, [hl]
    ld d, c
    ld d, c
    ld d, c
    ld c, a
    ld e, e
    ld b, $0e
    ld b, $07
    ld bc, $0701
    inc b
    inc b
    daa
    ld h, $17
    daa
    ld h, $05
    add hl, bc
    ld bc, $0109
    ld [bc], a
    dec b
    dec b
    dec b
    cpl
    cpl
    cpl
    cpl
    cpl
    cpl
    rlca
    rlca
    ld a, [bc]
    rlca
    rlca
    ld a, a
    cpl
    cpl
    dec b
    dec b
    dec b
    cpl
    cpl
    add hl, de
    inc e
    dec b
    rlca
    rlca
    rlca
    ld bc, $2f7f
    ld [$0505], sp
    dec b
    dec b
    dec b
    ld b, $21
    inc b
    ld [$2f07], sp
    rlca
    ld a, a
    cpl
    dec b
    dec b
    dec b
    dec b
    inc h
    ld hl, $0406
    ld bc, $2f2f
    cpl
    rlca
    rlca
    daa
    rla
    ld h, $17
    rla
    ld h, $01
    daa
    rla
    rla
    daa
    rla
    ld h, $06
    inc c
    inc b
    inc b
    ei
    ld b, b
    ldh a, [$5c]
    db $ed
    ld e, h
    nop
    cp $5c
    jp $3c3c


    db $f4
    ld e, h
    ld sp, hl
    ld e, h
    rla
    ld d, c
    ld e, b
    ld hl, $1750
    ld a, e
    ld e, b
    ld hl, $0a50
    ld [bc], a
    rlca
    ld [bc], a
    ld [$07dc], sp
    inc bc
    ld [$00dc], sp
    ld [bc], a
    dec c
    ld b, $07
    rst $38
    ret nc

    ld bc, $0820
    dec b
    cp $01
    ld [bc], a
    ld [de], a
    rst $00
    rlca
    ld [bc], a
    ld [de], a
    rst $00
    rlca
    inc bc
    inc c
    inc b
    inc b
    ei
    ld b, b
    ld l, $5d
    ld a, [hl+]
    ld e, l
    nop
    ld b, e
    ld e, l
    call $3c3c
    ret


    inc [hl]
    ld e, l
    add hl, sp
    ld e, l
    ld a, $5d
    rla
    cpl
    ld e, d
    ld hl, $1750
    ld a, d
    ld e, d
    ld hl, $1750
    and [hl]
    ld e, d
    ld hl, $0a50
    ld [bc], a
    rlca
    ld [bc], a
    rlca
    db $db
    rlca
    inc bc
    rlca
    db $db
    nop
    inc bc
    jr nz, jr_011_5d59

    ld [$00fe], sp
    ld bc, $0607
    inc b
    rst $38

jr_011_5d59:
    db $d3
    ld [bc], a
    dec de
    ld b, $0a
    rst $38
    ret nc

    inc bc
    ld [de], a
    rst $00
    rlca
    ld [bc], a
    ld [de], a
    rst $00
    rlca
    inc bc
    inc c
    inc b
    inc b
    ei
    ld b, b
    ld a, c
    ld e, l
    ld [hl], l
    ld e, l
    nop
    adc [hl]
    ld e, l
    call $3c3c
    ret


    ld a, a
    ld e, l
    add h
    ld e, l
    adc c
    ld e, l
    rla
    reti


    ld e, d
    ld hl, $1750
    dec bc
    ld e, e
    ld hl, $1750
    ld b, b
    ld e, e
    ld hl, $0a50
    ld [bc], a
    rlca
    ld [bc], a
    inc b
    reti


    rlca
    inc bc
    inc b
    reti


    nop
    inc bc
    jr nz, @+$09

    dec b
    cp $01
    ld bc, $0621
    ld [$ffff], sp
    ld [bc], a
    inc l
    ld b, $09
    rst $38
    rst $38
    inc bc
    ld [de], a
    rst $00
    rlca
    ld [bc], a
    ld [de], a
    rst $00
    rlca
    inc bc
    inc c
    inc b
    inc b
    ei
    ld b, b
    call nz, $c05d
    ld e, l
    nop
    reti


    ld e, l
    call $3c3c
    ret


    jp z, $cf5d

    ld e, l
    call nc, $175d
    ld h, d
    ld e, e
    ld hl, $1750
    push de
    ld e, e
    ld hl, $1750
    rla
    ld e, h
    ld hl, $0a50
    ld [bc], a
    rlca
    ld [bc], a
    ld [$07da], sp
    inc bc
    ld [$00da], sp
    inc bc
    jr nz, jr_011_5dee

    ld a, [bc]
    cp $02
    ld bc, $0823
    rlca

jr_011_5dee:
    rst $38
    rst $38
    ld [bc], a
    db $10
    add hl, bc
    dec b
    cp $01
    inc bc
    ld [de], a
    rst $00
    rlca
    ld [bc], a
    ld [de], a
    rst $00
    rlca
    inc bc
    ld de, $0f09
    ld e, l
    ld e, [hl]
    ld c, $5e
    dec bc
    ld e, [hl]
    nop
    inc d
    ld e, [hl]
    jp $3c3c


    db $f4
    inc h
    db $f4
    inc h
    db $f4
    inc h
    ld a, l
    ld b, $01
    dec e
    ld [bc], a
    db $e4
    ld b, $16
    inc bc
    db $e4
    rlca
    inc de
    inc b
    db $e4
    ld bc, $0509
    db $e4
    inc bc
    ld bc, $e406
    dec bc
    inc bc
    rlca
    db $e4
    nop
    inc bc
    dec a
    dec c
    ld hl, $ffff
    add c
    ld c, a
    dec a
    inc de
    ld [$ffff], sp
    add d
    ld [bc], a
    dec a
    ld a, [bc]
    ld de, $ffff
    add e
    db $10
    inc c
    rst $00
    ld bc, $481d
    rst $00
    ld b, $16
    ld b, [hl]
    rst $00
    rlca
    inc de
    ld [bc], a
    rst $00
    ld bc, $1309
    rst $00
    inc bc
    ld bc, $c768
    dec bc
    inc bc
    db $10
    db $10
    ld [de], a
    dec c
    jr z, jr_011_5e68

    dec b
    dec b
    ld b, $0d
    inc b

jr_011_5e68:
    inc b
    inc b
    dec c
    jr z, @+$2a

    ld [$0505], sp
    inc hl
    ld b, $05
    ld b, $09
    inc b
    inc hl
    inc c
    inc b
    inc hl
    ld b, $09
    ld c, $05
    dec b
    dec b
    dec b
    ld c, $05
    inc b
    inc b
    rlca
    dec c
    inc hl
    ld b, $06
    rlca
    dec b
    dec b
    dec b
    dec b
    dec b
    ld a, [bc]
    ld [$2805], sp
    ld b, $23
    dec b
    ld b, $06
    rlca
    dec b
    ld b, $06
    inc hl
    dec c
    daa
    inc c
    dec b
    dec b
    ld b, $05
    dec b
    ld b, $06
    rlca
    jr z, @+$10

    ld [$0505], sp
    rlca
    dec b
    dec b
    ld b, $05
    dec b
    ld b, $06
    ld b, $07
    ld c, $08
    ld c, $05
    dec b
    dec b
    inc hl
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $07
    inc hl
    dec b
    dec b
    dec b
    ld c, $08
    dec b
    ld c, $06
    ld b, $06
    ld c, $0e
    ld b, $27
    dec b
    dec b
    dec b
    dec b
    dec b
    ld c, $08
    dec b
    ld c, $06
    dec b
    dec b
    dec b
    ld c, $11
    add hl, bc
    rrca
    ld e, b
    ld e, a
    add hl, bc
    ld e, a
    ldh a, [$5e]
    nop
    ld [hl], $5f
    call $3c3c
    ld hl, $5f0f
    ld de, $5f03
    ld a, [$d650]
    call $3160
    ld [$d650], a
    ret


    add hl, de
    ld [hl-], a
    ld c, h
    ld [hl-], a
    ld [hl], l
    ld [hl-], a
    inc e
    ld e, a
    db $f4
    inc h
    db $f4
    inc h
    ld bc, $5f00
    ret c

    ld h, $5f
    ld h, $5f
    ld h, $5f
    ld h, $5f
    rst $38
    ld [$0f21], sp
    ld e, a
    call $31cc
    jp $24d7


    rla
    ld [hl], d
    ld e, h
    ld hl, $3e08
    add e
    call $13d0
    call $3748
    jp $24d7


    ld a, l
    ld bc, $0306
    ld [$00e4], sp
    inc bc
    dec b
    ld de, $ff1f
    ret nc

    ld b, c
    add e
    ld h, h
    dec a
    ld a, [bc]
    ld d, $ff
    rst $38
    add d
    ld [bc], a
    dec a
    dec b
    ld d, $ff
    rst $38
    add e
    ld [hl], $3e
    rst $00
    ld b, $03
    db $10
    ld [de], a
    db $10
    inc b
    dec c
    inc b
    inc b
    inc b
    inc b
    dec c
    inc b
    inc b
    inc b
    inc b
    ld bc, $0512
    dec b
    add hl, bc
    rlca
    dec c
    inc b
    inc c
    ld b, $05
    inc c
    dec b
    add hl, bc
    ld b, $0b
    inc d
    ld [hl], l
    ld d, $07
    dec b
    inc c
    ld b, $0a
    inc c
    ld a, [bc]
    rrca
    rlca
    rrca
    inc b
    rlca
    ld h, [hl]
    ld h, c
    ld e, $07
    rlca
    inc b
    inc b
    inc b
    rlca
    rlca
    ld a, [bc]
    inc b
    ld a, [bc]
    inc b
    dec bc
    db $76
    inc b
    inc b
    dec c
    dec bc
    inc c
    inc c
    inc b
    dec bc
    rlca
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    rlca
    inc b
    inc b
    dec bc
    inc c
    inc b
    ld a, [bc]
    inc b
    inc b
    dec bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc b
    ld [$0f0d], sp
    dec c
    ld b, $04
    inc b
    inc b
    rlca
    inc bc
    inc bc
    inc d
    dec d
    ld d, $0d
    inc b
    dec bc
    dec b
    add hl, bc
    dec c
    ld c, $11
    ld c, $0b
    inc bc
    inc bc
    ld h, [hl]
    dec h
    ld e, $11
    ld c, $11
    rlca
    rrca
    rlca
    rrca
    dec b
    dec b
    ld h, e
    ld h, e
    ld l, [hl]
    ld c, $03
    inc bc
    ld de, $1412
    and c
    ld h, c
    inc b
    ld h, b
    db $eb
    ld e, a
    nop
    dec a
    ld h, c
    call $3c3c
    ld hl, $6014
    ld de, $5ffe
    ld a, [$d620]
    call $3160
    ld [$d620], a
    ret


    add hl, de
    ld [hl-], a
    ld c, h
    ld [hl-], a
    ld [hl], l
    ld [hl-], a
    ld [hl], l
    ld h, b
    ld a, a
    ld h, b
    adc c
    ld h, b
    sub e
    ld h, b
    sbc l
    ld h, b
    and a
    ld h, b
    or c
    ld h, b
    cp e
    ld h, b
    ld bc, $7d40
    ret c

    push bc
    ld h, b
    rst $08
    ld h, b
    jp z, $ca60

    ld h, b
    ld [bc], a
    jr nc, jr_011_60a0

    ret c

    call nc, $de60
    ld h, b
    reti


    ld h, b
    reti


    ld h, b
    inc bc
    jr nc, @+$7f

    ret c

    db $e3
    ld h, b
    db $ed
    ld h, b
    add sp, $60
    add sp, $60
    inc b
    ld b, b
    ld a, l
    ret c

    ld a, [c]
    ld h, b
    db $fc
    ld h, b
    rst $30
    ld h, b
    rst $30
    ld h, b
    dec b
    jr nc, @+$7f

    ret c

    ld bc, $0b61
    ld h, c
    ld b, $61
    ld b, $61
    ld b, $40
    ld a, l
    ret c

    db $10
    ld h, c
    ld a, [de]
    ld h, c
    dec d
    ld h, c
    dec d
    ld h, c
    rlca
    jr nc, jr_011_60dc

    ret c

    rra
    ld h, c
    add hl, hl
    ld h, c
    inc h
    ld h, c
    inc h
    ld h, c
    ld [$7d30], sp
    ret c

    ld l, $61
    jr c, jr_011_60d1

    inc sp
    ld h, c
    inc sp
    ld h, c
    rst $38
    ld [$1421], sp
    ld h, b
    call $31cc
    jp $24d7


    ld [$2021], sp
    ld h, b
    call $31cc
    jp $24d7


    ld [$2c21], sp
    ld h, b
    call $31cc
    jp $24d7


    ld [$3821], sp
    ld h, b
    call $31cc
    jp $24d7


    ld [$4421], sp

jr_011_60a0:
    ld h, b
    call $31cc
    jp $24d7


    ld [$5021], sp
    ld h, b
    call $31cc
    jp $24d7


    ld [$5c21], sp
    ld h, b
    call $31cc
    jp $24d7


    ld [$6821], sp
    ld h, b
    call $31cc
    jp $24d7


    rla
    dec e
    ld l, d
    ld hl, $1750
    ld b, e
    ld l, d
    ld hl, $1750
    ld e, c

jr_011_60d1:
    ld l, d
    ld hl, $1750
    ld l, [hl]
    ld l, d
    ld hl, $1750
    adc [hl]
    ld l, d

jr_011_60dc:
    ld hl, $1750
    and d
    ld l, d
    ld hl, $1750
    bit 5, d
    ld hl, $1750
    db $ed
    ld l, d
    ld hl, $1750
    inc b
    ld l, e
    ld hl, $1750
    cpl
    ld l, e
    ld hl, $1750
    ld d, e
    ld l, e
    ld hl, $1750
    ld h, [hl]
    ld l, e
    ld hl, $1750
    sub c
    ld l, e
    ld hl, $1750
    cp h
    ld l, e
    ld hl, $1750
    ldh [rOCPD], a
    ld hl, $1750
    db $10
    ld l, h
    ld hl, $1750
    ccf
    ld l, h
    ld hl, $1750
    ld c, h
    ld l, h
    ld hl, $1750
    ld [hl], a
    ld l, h
    ld hl, $1750
    sub h
    ld l, h
    ld hl, $1750
    nop
    ld b, b
    ld [hl+], a
    ld d, b
    rla
    daa
    ld b, b
    ld [hl+], a
    ld d, b
    rla
    ld b, d
    ld b, b
    ld [hl+], a
    ld d, b
    rla
    ld d, a
    ld b, b
    ld [hl+], a
    ld d, b
    inc bc
    inc b
    add hl, de
    ld hl, $5204
    inc bc
    dec de
    dec b
    ld d, d
    dec bc
    rla
    ld b, $52
    inc bc
    inc bc
    rlca
    ld d, d
    nop
    ld [$1106], sp
    rrca
    rst $38
    ret nc

    ld b, c
    adc $09
    ld c, $0e
    ld a, [bc]
    rst $38
    ret nc

    ld b, d
    pop de
    add hl, bc
    inc c
    add hl, bc
    rlca
    rst $38
    ret nc

    ld b, e
    rst $08
    inc bc
    inc c
    add hl, de
    jr @+$01

    db $d3
    ld b, h
    rst $08
    inc b
    ld c, $0e
    ld [hl+], a
    rst $38
    ret nc

    ld b, l
    pop de
    ld a, [bc]
    ld b, $20
    ld [de], a
    rst $38
    db $d3
    ld b, [hl]
    adc $0a
    ld c, $09
    dec h
    rst $38
    db $d3
    ld b, a
    pop de
    dec bc
    inc c
    ld [hl+], a
    ld e, $ff
    ret nc

    ld c, b
    rst $08
    dec b
    ld c, e
    ret z

    add hl, de
    ld hl, $c72a
    inc bc
    dec de
    sub b
    rst $00
    dec bc
    rla
    ld e, $c7
    inc bc
    inc bc
    dec c
    inc bc
    ld l, h
    ld bc, $0301
    inc bc
    inc bc
    inc bc
    db $10
    inc bc
    inc bc
    inc bc
    ld bc, $0101
    ld bc, $0101
    ld l, h
    inc bc
    ld a, $03
    inc bc
    ld bc, $0103
    dec c
    ld bc, $0101
    ld bc, $3e03
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    ld bc, $0103
    inc bc
    ld bc, $0101
    inc bc
    inc bc
    ld bc, $0103
    db $10
    inc bc
    inc bc
    inc bc
    ld bc, $0101
    ld bc, $0301
    ld bc, $016c
    inc bc
    ld bc, $1003
    ld bc, $0103
    ld bc, $0103
    inc bc
    inc bc
    inc bc
    ld bc, $0303
    ld bc, $0303
    inc bc
    ld bc, $0301
    ld bc, $0310
    ld bc, $0303
    ld bc, $036c
    inc bc
    ld bc, $0303
    ld bc, $0103
    ld bc, $0301
    inc bc
    ld bc, $1003
    ld bc, $033e
    ld bc, $0103
    ld bc, $0101
    inc bc
    ld bc, $0101
    inc bc
    inc bc
    ld bc, $0103
    inc bc
    inc bc
    ld bc, $0310
    ld bc, $0101
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    dec c
    inc bc
    ld bc, $0103
    ld bc, $1001
    inc bc
    inc bc
    inc bc
    inc bc
    ld bc, $0303
    ld bc, $0101
    inc bc
    inc bc
    ld bc, $0103
    db $10
    ld bc, $0103
    inc bc
    inc bc
    ld bc, $036c
    ld bc, $0101
    ld bc, $0103
    inc bc
    inc bc
    ld bc, $0303
    ld bc, $0301
    inc bc
    inc bc
    inc bc
    ld bc, $0303
    inc bc
    inc bc
    inc bc
    ld bc, $0101
    inc bc
    dec c
    ld bc, $0101
    ld bc, $0103
    ld bc, $036c
    ld bc, $0101
    ld bc, $0101
    ld bc, $0303
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    ld bc, $0301
    inc bc
    inc bc
    ld bc, $0303
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    ld bc, $0301
    ld bc, $0101
    inc bc
    inc bc
    ld bc, $0101
    inc bc
    inc bc
    inc bc
    ld bc, $3e01
    ld bc, $0303
    inc bc
    ld bc, $0101
    inc bc
    ld bc, $0103
    ld bc, $0301
    ld bc, $036c
    inc bc
    ld bc, $0103
    inc bc
    inc bc
    ld bc, $0301
    inc bc
    inc bc
    ld bc, $0101
    ld bc, $0103
    ld bc, $0103
    inc bc
    ld l, h
    inc bc
    ld bc, $0101
    ld bc, $0303
    ld bc, $0301
    inc bc
    inc bc
    inc bc
    ld bc, $0103
    ld bc, $0101
    inc bc
    ld bc, $0301
    ld bc, $0101
    inc bc
    inc bc
    ld bc, $0101
    ld bc, $0101
    ld bc, $0301
    inc bc
    ld bc, $0303
    inc bc
    inc bc
    ld bc, $0103
    ld bc, $0101
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    ld l, h
    ld bc, $0101
    dec b
    ld bc, $0101
    ld de, $0f09
    cp [hl]
    ld h, e
    ld [hl], d
    ld h, e
    dec d
    ld h, e
    nop
    db $76
    ld h, e
    call $3c3c
    ld hl, $cd60
    bit 7, [hl]
    res 7, [hl]
    jr z, jr_011_6362

    ld hl, $636d
    call $34e4
    ret nc

    ld hl, $d87f
    ld a, [$cd3d]
    cp $01
    jr nz, jr_011_6340

    set 0, [hl]
    ld a, $d9
    ld [$d079], a
    ld a, $db
    ld [$d07a], a
    jr jr_011_634c

jr_011_6340:
    set 1, [hl]
    ld a, $da
    ld [$d079], a
    ld a, $dc
    ld [$d07a], a

jr_011_634c:
    ld a, [$d079]
    ld [$cc4d], a
    ld a, $11
    call $3e6d
    ld a, [$d07a]
    ld [$cc4d], a
    ld a, $15
    jp $3e6d


jr_011_6362:
    ld a, $a0
    ld [$d71d], a
    ld hl, $636d
    jp $6981


    ld b, $12
    ld b, $17
    rst $38
    push hl
    inc h
    push hl
    inc h
    ld a, l
    rlca
    ld [bc], a
    inc b
    nop
    and b
    dec b
    rlca
    inc b
    ret nz

    rlca
    dec c
    ld [bc], a
    and b
    rrca
    inc de
    inc bc
    and b
    rrca
    rla
    ld b, $c0
    dec bc
    add hl, de
    dec b
    and b
    inc bc
    add hl, de
    dec b
    ret nz

    nop
    ld [bc], a
    ccf
    inc d
    ld c, $ff
    db $10
    ld bc, $0b3f
    jr nz, @+$01

    db $10
    ld [bc], a
    dec d
    rst $00
    ld [bc], a
    inc b
    dec hl
    rst $00
    dec b
    rlca
    ld b, e
    rst $00
    rlca
    dec c
    sbc d
    rst $00
    rrca
    inc de
    sbc h
    rst $00
    rrca
    rla
    ld [hl], e
    rst $00
    dec bc
    add hl, de
    rra
    rst $00
    inc bc
    add hl, de
    rrca
    ld bc, $0505
    dec b
    dec b
    dec b
    dec b
    dec b
    ld bc, $016d
    ld bc, $0101
    rlca
    rlca
    daa
    inc b
    inc b
    inc de
    dec b
    dec b
    dec b
    ld bc, $076d
    ld a, $07
    ld bc, $0707
    rlca
    ld a, $07
    inc d
    dec d
    ld d, $05
    ld bc, $0774
    inc b
    rlca
    ld bc, $0707
    rlca
    ld bc, $1807
    inc a
    ld a, [de]
    ld bc, $6d77
    ld a, b
    ld b, $07
    ld bc, $0707
    rlca
    ld bc, $1914
    add hl, de
    ld a, [de]
    ld bc, $4c01
    ld e, [hl]
    ld e, [hl]
    ld e, [hl]
    inc b
    rlca
    rlca
    rlca
    ld bc, $1918
    add hl, de
    add hl, de
    dec d
    ld d, $01
    ld bc, $0128
    ld d, d
    rlca
    rlca
    rlca
    ld bc, $1d66
    dec e
    dec e
    dec l
    ld e, $01
    ld bc, $0101
    ld d, d
    ld [de], a
    rrca
    rrca
    ld bc, $0101
    ld l, l
    ld bc, $2801
    ld l, l
    ld a, $01
    ld bc, $1252
    ld [de], a
    dec b
    dec b
    dec b
    ld bc, $0152
    ld bc, $5201
    ld d, d
    ld d, d
    ld d, d
    ld d, d
    ld de, $0f09
    ld a, [$ae64]
    ld h, h
    ld d, c
    ld h, h
    nop
    or d
    ld h, h
    call $3c3c
    ld hl, $cd60
    bit 7, [hl]
    res 7, [hl]
    jr z, jr_011_649e

    ld hl, $64a9
    call $34e4
    ret nc

    ld hl, $d880
    ld a, [$cd3d]
    cp $01
    jr nz, jr_011_647c

    set 0, [hl]
    ld a, $db
    ld [$d079], a
    ld a, $df
    ld [$d07a], a
    jr jr_011_6488

jr_011_647c:
    set 1, [hl]
    ld a, $dc
    ld [$d079], a
    ld a, $e0
    ld [$d07a], a

jr_011_6488:
    ld a, [$d079]
    ld [$cc4d], a
    ld a, $11
    call $3e6d
    ld a, [$d07a]
    ld [$cc4d], a
    ld a, $15
    jp $3e6d


jr_011_649e:
    ld a, $a1
    ld [$d71d], a
    ld hl, $64a9
    jp $6981


    ld b, $13
    ld b, $16
    rst $38
    push hl
    inc h
    push hl
    inc h
    ld a, l
    rlca
    inc bc
    dec b
    nop
    sbc a
    dec c
    dec b
    nop
    and c
    rlca
    dec c
    ld [bc], a
    sbc a
    rrca
    inc de
    inc bc
    sbc a
    inc bc
    add hl, de
    inc bc
    and c
    dec bc
    add hl, de
    dec b
    sbc a
    ld c, $19
    inc b
    and c
    nop
    ld [bc], a
    ccf
    inc d
    inc d
    rst $38
    db $10
    ld bc, $143f
    ld a, [de]
    rst $38
    db $10
    ld [bc], a
    dec d
    rst $00
    inc bc
    dec b
    ld a, [hl]
    rst $00
    dec c
    dec b
    ld b, e
    rst $00
    rlca
    dec c
    sbc d
    rst $00
    rrca
    inc de
    rra
    rst $00
    inc bc
    add hl, de
    ld [hl], e
    rst $00
    dec bc
    add hl, de
    sbc l
    rst $00
    ld c, $19
    ld bc, $6e6e
    ld l, [hl]
    ld l, [hl]
    ld l, [hl]
    ld l, [hl]
    ld l, [hl]
    dec c
    rlca
    ld bc, $0101
    ld bc, $0101
    ld a, d
    ld a, $7a
    ld l, [hl]
    ld l, [hl]
    ld l, [hl]
    ld l, [hl]
    ld bc, $0607
    ld [$0728], sp
    ld bc, $7a01
    ld l, [hl]
    ld a, d
    rlca
    inc d
    dec d
    ld d, $01
    dec bc
    ld bc, $080e
    rlca
    ld bc, $0101
    ld bc, $0101
    jr jr_011_656b

    ld a, [de]
    ld bc, $5278
    ld [hl], a
    dec b
    rlca
    ld bc, $1401
    dec d
    dec d
    dec d
    add hl, de
    add hl, de
    add hl, de
    dec d
    dec d
    ld d, $0f
    ld l, [hl]
    ld l, [hl]
    ld bc, $1c01
    dec e
    add hl, hl
    dec e
    dec e
    dec e
    dec hl
    add hl, de
    add hl, de
    ld a, [de]
    inc d
    ld a, h
    ld d, $01
    ld bc, $286d
    ld bc, $0101
    ld bc, $2d1c
    dec e
    ld e, $18
    add hl, de
    ld a, [de]
    ld bc, $6e01
    ld e, [hl]
    ld e, [hl]
    ld e, [hl]
    ld e, [hl]
    ld e, [hl]
    ld e, [hl]

jr_011_656b:
    ld e, [hl]
    ld a, $6d
    inc e
    ld a, c
    ld e, $01
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld l, [hl]
    ld l, l
    ld bc, $0101
    ld bc, $0911
    rrca
    ld b, $67
    sbc d
    ld h, [hl]
    adc l
    ld h, l
    nop
    and [hl]
    ld h, [hl]
    call $3c3c
    ld hl, $cd60
    bit 7, [hl]
    res 7, [hl]
    jr z, jr_011_65dc

    ld hl, $65f6
    call $34e4
    ret nc

    ld hl, $d881
    ld a, [$cd3d]
    cp $01
    jr nz, jr_011_65b8

    set 0, [hl]
    ld a, $dd
    ld [$d079], a
    ld a, $e1
    ld [$d07a], a
    jr jr_011_65c4

jr_011_65b8:
    set 1, [hl]
    ld a, $de
    ld [$d079], a
    ld a, $e2
    ld [$d07a], a

jr_011_65c4:
    ld a, [$d079]
    ld [$cc4d], a
    ld a, $11
    call $3e6d
    ld a, [$d07a]
    ld [$cc4d], a
    ld a, $15
    call $3e6d
    jr jr_011_65ed

jr_011_65dc:
    ld a, $a2
    ld [$d71d], a
    ld hl, $65f6
    call $6981
    ld a, [$d732]
    bit 4, a
    ret nz

jr_011_65ed:
    ld hl, $65fb
    ld a, [$d666]
    jp $3d97


    db $10
    inc bc
    db $10
    ld b, $ff
    inc bc
    ld h, [hl]
    add hl, sp
    ld h, [hl]
    ld b, h
    ld h, [hl]
    adc a
    ld h, [hl]
    ld a, [$d880]
    and $03
    cp $03
    ret z

    ld a, [$d361]
    cp $08
    ret nz

    ld a, [$d362]
    cp $0f
    ret nz

    ld hl, $ccd3
    ld de, $6632
    call $350c
    dec a
    ld [$cd38], a
    call $3486
    ld hl, $d733
    set 2, [hl]
    ld a, $01
    ld [$d666], a
    ret


    add b
    ld b, $10
    dec b
    add b
    inc bc
    rst $38
    ld a, [$cd38]
    and a
    ret nz

    ld a, $00
    ld [$d666], a
    ret


    ld a, [$d880]
    and $03
    cp $03
    ret z

    ld a, [$d362]
    cp $12
    jr z, jr_011_665e

    cp $13
    ld a, $00
    jr nz, jr_011_667b

    ld de, $667f
    jr jr_011_6661

jr_011_665e:
    ld de, $6688

jr_011_6661:
    ld hl, $ccd3
    call $350c
    dec a
    ld [$cd38], a
    xor a
    ld [$c206], a
    ld hl, $d730
    set 7, [hl]
    ld hl, $d733
    set 2, [hl]
    ld a, $03

jr_011_667b:
    ld [$d666], a
    ret


    add b
    ld b, $10
    ld [bc], a
    add b
    inc b
    jr nz, jr_011_6688

    rst $38

jr_011_6688:
    add b
    ld b, $10
    ld [bc], a
    add b
    inc b
    rst $38
    ld a, [$cd38]
    and a
    ret nz

    ld a, $00
    ld [$d666], a
    ret


    push hl
    inc h
    push hl
    inc h
    push hl
    inc h
    push hl
    inc h
    push hl
    inc h
    push hl
    inc h
    ld a, l
    rlca
    inc c
    dec b
    ld bc, $06a0
    ld [$a202], sp
    inc b
    add hl, de
    inc bc
    and d
    inc bc
    add hl, de
    inc b
    and b
    ld c, $19
    ld b, $a0
    ld de, $0014
    and d
    ld de, $0115
    and d
    nop
    ld b, $3f
    ld [de], a
    add hl, bc
    rst $38
    db $10
    ld bc, $133f
    rlca
    rst $38
    db $10
    ld [bc], a
    ccf
    ld [de], a
    inc c
    rst $38
    db $10
    inc bc
    ccf
    ld [de], a
    dec c
    rst $38
    db $10
    inc b
    ccf
    ld a, [bc]
    ld d, $ff
    rst $38
    dec b
    ccf
    ld a, [bc]
    rla
    rst $38
    rst $38
    ld b, $7e
    rst $00
    inc c
    dec b
    ld b, c
    rst $00
    ld b, $08
    inc [hl]
    rst $00
    inc b
    add hl, de
    rra
    rst $00
    inc bc
    add hl, de
    sbc l
    rst $00
    ld c, $19
    or b
    rst $00
    ld de, $b014
    rst $00
    ld de, $1415
    dec d
    dec d
    dec d
    ld d, $02
    ld [bc], a
    db $76
    ld [bc], a
    ld [bc], a
    inc d
    dec d
    dec d
    dec d
    ld d, $18
    add hl, de
    add hl, de
    add hl, de
    ld a, [de]
    db $76
    db $76
    db $76
    db $76
    db $76
    jr jr_011_673a

    dec a
    add hl, de
    ld a, [de]
    jr jr_011_673f

    inc l
    add hl, hl
    ld e, $14
    dec d
    dec d
    ld d, $76
    inc e
    dec e
    ld a, c
    dec e
    ld e, $18
    add hl, de
    ld a, [de]
    ld bc, $1827
    inc l

jr_011_673a:
    dec l
    ld e, $76
    inc d
    dec d

jr_011_673f:
    dec d
    dec d
    ld d, $18
    add hl, de
    add hl, de
    dec d
    dec d
    add hl, de
    ld a, [de]
    db $76
    db $76
    db $76
    inc e
    dec l
    dec hl
    add hl, de
    ld a, [de]
    jr jr_011_676c

    add hl, de
    inc l
    dec e
    dec hl
    ld a, [de]
    db $76
    db $76
    db $76
    db $76
    db $76
    jr jr_011_6778

    ld a, [de]
    inc e
    dec e
    ld h, c
    ld e, $01
    jr jr_011_6780

    dec d
    dec d
    ld d, $76
    inc d

jr_011_676c:
    add hl, de
    add hl, de
    ld a, [de]
    ld bc, $0c01
    rrca
    ld bc, $1d1c
    dec e
    add hl, hl

jr_011_6778:
    ld e, $76
    inc e
    ld h, c
    dec e
    ld e, $01
    ld a, b

jr_011_6780:
    ld b, $77
    rrca
    ld bc, $0101
    ld bc, $767a
    ld l, l
    ld bc, $0101
    ld de, $0f09
    ld a, [$7c68]
    ld l, b
    sbc c
    ld h, a
    nop
    cp h
    ld l, b
    call $3c3c
    ld a, [$d668]
    ld hl, $67ad
    jp $3d97


jr_011_67a5:
    xor a
    ld [$d668], a
    ld [$cd6b], a
    ret


    rst $00
    ld h, a
    rlca
    ld l, b
    ld d, $68
    ld h, b
    ld l, b
    or a
    ld h, a
    ld a, [$d057]
    cp $ff
    jr z, jr_011_67a5

    call $3275
    ld a, $00
    ld [$d668], a
    ret


    ld a, [$d880]
    and $03
    cp $03
    ret z

    ld hl, $67fe
    call $34bf
    ret nc

    ld a, [$cd3d]
    cp $03
    jr nc, jr_011_67e6

    ld a, $40
    ld [$ccd4], a
    ld a, $02
    jr jr_011_67e8

jr_011_67e6:
    ld a, $01

jr_011_67e8:
    ld [$cd38], a
    ld a, $40
    ld [$ccd3], a
    call $3486
    ld hl, $d733
    res 2, [hl]
    ld a, $01
    ld [$d668], a
    ret


    ld de, $1114
    dec d
    db $10
    inc d
    db $10
    dec d
    rst $38
    ld a, [$cd38]
    and a
    ret nz

    xor a
    ld [$cd6b], a
    ld a, $00
    ld [$d668], a
    ret


    ld a, [$d881]
    and $03
    cp $03
    ld a, $00
    jr z, jr_011_6849

    ld hl, $684d
    call $34bf
    ld a, $00
    jr nc, jr_011_6849

    ld a, [$cd3d]
    cp $01

jr_011_6830:
    jr nz, jr_011_6837

    ld de, $6859
    jr jr_011_683a

jr_011_6837:
    ld de, $6852

jr_011_683a:
    ld hl, $ccd3
    call $350c
    dec a
    ld [$cd38], a
    call $3486
    ld a, $03

jr_011_6849:
    ld [$d668], a
    ret


    ld c, $04
    ld c, $05
    rst $38
    ld b, b
    inc bc
    db $10
    ld [bc], a
    ld b, b
    ld bc, $40ff
    inc bc
    db $10
    inc bc
    ld b, b
    ld bc, $faff
    jr c, jr_011_6830

    ld b, a
    cp $01
    call z, Call_011_6872
    ld a, b
    and a
    ret nz

    ld a, $00
    ld [$d668], a
    ret


Call_011_6872:
    xor a
    ld [$d700], a
    ld [$d11a], a
    jp $12ed


    push hl
    inc h
    push hl
    inc h
    sub e
    ld l, b
    or d
    ld l, b
    or a
    ld l, b
    ld [bc], a
    nop
    add d
    ret c

    and d
    ld l, b
    and d
    ld l, b
    and d
    ld l, b
    and d
    ld l, b
    rst $38
    ld [$8621], sp
    ld l, b
    call $31cc
    ld a, $04
    ld [$d668], a
    jp $24d7


    rla
    ld [hl], l
    ld b, b
    ld [hl+], a
    ld [$4a3e], sp
    call $13d0
    call $3748
    jp $24d7


    rla
    ld a, [hl]
    ld b, b
    ld [hl+], a
    ld d, b
    rla
    xor b
    ld b, b
    ld [hl+], a
    ld d, b
    ld a, l
    inc b
    ld de, $0514
    and c
    ld de, $0615
    and c
    rlca
    dec bc
    ld bc, $04a1
    add hl, de
    ld [bc], a
    and c
    ld [bc], a
    rrca
    add hl, bc
    inc b
    ld bc, $0517
    inc bc
    ccf
    inc de
    ld [$ffff], sp
    ld bc, $133f
    add hl, bc
    rst $38
    rst $38
    ld [bc], a
    add hl, bc
    dec b
    ld a, [bc]
    rst $38
    ret nc

    ld b, e
    ld c, h
    ld [hl-], a
    or b
    rst $00
    ld de, $b014
    rst $00
    ld de, $4215
    rst $00
    rlca
    dec bc
    inc [hl]
    rst $00
    inc b
    add hl, de
    ld l, $76
    inc d
    dec d
    dec d
    ld d, $76
    inc d
    dec d
    dec d
    dec d
    ld [hl], l
    dec d
    ld d, $2e
    ld l, $76
    inc e
    dec l
    dec e
    ld e, $76
    jr jr_011_692b

    add hl, de
    add hl, de
    add hl, de
    add hl, de
    ld a, [de]
    ld l, $2e
    db $76
    db $76
    db $76
    db $76
    db $76
    db $76
    jr jr_011_694d

    dec e
    dec e
    dec l
    ld h, c
    ld e, $2e
    ld l, $76
    db $76
    inc d

jr_011_692b:
    dec d
    ld a, h
    dec d
    add hl, de
    ld a, [de]
    db $76
    db $76
    db $76
    db $76
    db $76
    ld l, $2e
    db $76
    db $76
    jr @+$1b

    add hl, de
    add hl, de
    inc l
    ld e, $76
    db $76
    db $76
    db $76
    db $76
    ld l, $2e
    db $76
    db $76
    ld h, [hl]
    dec e
    dec e
    dec hl
    ld a, [de]

jr_011_694d:
    db $76
    db $76
    db $76
    db $76
    db $76
    db $76
    ld l, $2e
    db $76
    db $76
    db $76
    db $76
    db $76
    jr jr_011_6976

    db $76
    db $76
    db $76
    db $76
    db $76
    db $76
    ld l, $2e
    db $76
    db $76
    inc d
    ld [hl], l
    dec d
    add hl, de
    add hl, de
    dec d
    ld d, $76
    db $76
    db $76
    db $76
    ld l, $2e
    ld [bc], a
    db $76
    inc e

jr_011_6976:
    dec e
    dec e
    dec e
    dec e
    dec e
    ld e, $76
    ld [bc], a
    ld c, h
    ld [bc], a
    ld l, $af
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


    ld hl, $ffeb
    xor a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl], a
    ld de, $0000
    ld hl, $6a40

jr_011_69ae:
    ld a, [hl+]
    ld b, a
    cp $ff
    jr z, jr_011_69fc

    ld a, [$d35e]
    cp b
    jr z, jr_011_69be

    inc de
    inc de
    jr jr_011_69ae

jr_011_69be:
    ld hl, $6a96
    add hl, de
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    push hl
    ld hl, $cd3d
    xor a
    ld [hl+], a
    ld [hl+], a
    ld [hl], a
    pop hl

jr_011_69ce:
    ld a, [hl+]
    cp $ff
    jr z, jr_011_69fc

    ld [$cd40], a
    ld b, a
    ld a, [hl+]
    ld [$cd41], a
    ld c, a
    call Call_011_6a01
    ldh a, [$ea]
    and a
    jr z, jr_011_69f0

    inc hl
    inc hl
    inc hl
    inc hl
    push hl
    ld hl, $cd3f
    inc [hl]
    pop hl
    jr jr_011_69ce

jr_011_69f0:
    ld a, [hl+]
    ld [$cd3d], a
    ld a, [hl+]
    ld [$cd3e], a
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ret


jr_011_69fc:
    ld a, $ff
    ldh [$ee], a
    ret


Call_011_6a01:
    ld a, [$c109]
    cp $04
    jr z, jr_011_6a16

    cp $08
    jr z, jr_011_6a25

    cp $0c
    jr z, jr_011_6a2b

    ld a, [$d361]
    inc a
    jr jr_011_6a1a

jr_011_6a16:
    ld a, [$d361]
    dec a

jr_011_6a1a:
    cp b
    jr nz, jr_011_6a3b

    ld a, [$d362]
    cp c
    jr nz, jr_011_6a3b

    jr jr_011_6a38

jr_011_6a25:
    ld a, [$d362]
    dec a
    jr jr_011_6a2f

jr_011_6a2b:
    ld a, [$d362]
    inc a

jr_011_6a2f:
    cp c
    jr nz, jr_011_6a3b

    ld a, [$d361]
    cp b
    jr nz, jr_011_6a3b

jr_011_6a38:
    xor a
    jr jr_011_6a3d

jr_011_6a3b:
    ld a, $ff

jr_011_6a3d:
    ldh [$ea], a
    ret


    ld h, $27
    jr z, jr_011_6a6d

    ld a, [hl+]
    dec hl
    dec l
    inc [hl]
    ld [hl], $38
    ld a, [hl-]
    ld b, b
    ld b, c
    ld b, e
    adc l
    ld e, c
    ld e, h
    add c
    add l
    add [hl]
    add a
    adc h
    sbc d
    sbc l
    and [hl]
    xor e
    or d
    ld b, h
    ld d, c
    rst $28
    ldh a, [$33]
    dec a
    add hl, bc
    inc h
    inc d
    ld h, h
    ld l, b
    rst $00
    ret


    jp z, $92b6

    jr @-$62

jr_011_6a6d:
    db $db
    jp nc, $b0e9

    db $e4
    db $e3
    ld d, e
    and b
    and d
    and l
    rst $10
    ld [hl+], a
    jp nz, Jump_011_586f

    ld bc, $e0df
    pop hl
    cp c
    sub l
    add h
    or c
    dec d
    xor [hl]
    xor d
    ld b, d
    ld d, $17
    sub $d8
    db $eb
    inc e
    ld [hl], a
    ld a, c
    ld b, $a1
    dec b
    inc bc
    rrca
    rst $38
    ld e, d
    ld l, e
    ld h, a
    ld l, e
    ld a, d
    ld l, e
    sub e
    ld l, e
    and b
    ld l, e
    and c
    ld l, e
    xor [hl]
    ld l, e
    cp e
    ld l, e
    ret z

    ld l, e
    push de
    ld l, e
    sub $6b
    db $e3
    ld l, e
    ldh a, [rOCPD]
    db $fd
    ld l, e
    cp $6b
    dec bc
    ld l, h
    jr jr_011_6b24

    add l
    ld l, h
    adc h
    ld l, h
    sbc c
    ld l, h
    and [hl]
    ld l, h
    rst $00
    ld l, l
    call nc, $e16d
    ld l, l
    xor $6d
    add hl, de
    ld l, [hl]
    ld h, $6e
    dec l
    ld l, [hl]
    ld a, [hl-]
    ld l, [hl]
    ld b, b
    ld l, e
    ld c, l
    ld l, e
    ld b, a
    ld l, [hl]
    ld d, h
    ld l, [hl]
    ld h, c
    ld l, [hl]
    ld l, [hl]
    ld l, [hl]
    ld a, e
    ld l, [hl]
    add d
    ld l, [hl]
    sub l
    ld l, [hl]
    xor c
    ld l, [hl]
    or b
    ld l, [hl]
    or a
    ld l, [hl]
    cp [hl]
    ld l, [hl]
    bit 5, [hl]
    jp nc, $df6e

    ld l, [hl]
    and $6e
    db $ed
    ld l, [hl]
    db $f4
    ld l, [hl]
    ei
    ld l, [hl]
    ld [bc], a
    ld l, a
    add hl, bc
    ld l, a
    db $10
    ld l, a
    dec e
    ld l, a
    inc h
    ld l, a
    dec hl
    ld l, a
    ccf
    ld l, a
    ld e, a
    ld l, a
    ld [hl], d
    ld l, a
    ld a, a
    ld l, a
    add [hl]
    ld l, a
    adc l
    ld l, a
    sub h
    ld l, a
    and c
    ld l, a
    xor [hl]
    ld l, a
    cp e
    ld l, a
    jp nz, $d56f

    ld l, a
    add sp, $6f
    sbc h
    ld l, [hl]
    ld bc, $0870
    ld [hl], b

jr_011_6b24:
    dec d
    ld [hl], b
    ld a, [hl-]
    ld [hl], b
    ld b, c
    ld [hl], b
    jr c, jr_011_6b9b

    ld c, h
    ld l, a
    ld c, b
    ld [hl], b
    ld c, a
    ld [hl], b
    ld l, [hl]
    ld [hl], b
    ld a, e
    ld [hl], b
    adc b
    ld [hl], b
    adc a
    ld [hl], b
    sub [hl]
    ld [hl], b
    sbc l
    ld [hl], b
    and h
    ld [hl], b
    inc b
    dec b
    ret nc

    ld [$5845], sp
    inc b
    inc b
    ret nc

    ld [$5825], sp
    rst $38
    inc b
    dec b
    ret nc

    ld [$5845], sp
    inc b
    inc b
    ret nc

    ld [$5825], sp
    rst $38
    ld bc, $0400
    rla
    add [hl]
    ld e, e
    dec b
    inc bc
    ret nc

    rla
    ld a, c
    ld e, e
    rst $38
    ld bc, $0400
    jr @+$0b

    ld h, l
    ld bc, $0401
    jr jr_011_6b7b

    ld h, l
    ld bc, $0407
    jr jr_011_6b81

    ld h, l
    rst $38
    nop

jr_011_6b7b:
    inc b
    inc b
    rlca
    ld e, b
    ld l, c
    nop

jr_011_6b81:
    dec b
    inc b
    rlca
    ld h, l
    ld l, c
    ld bc, $0400
    rlca
    xor a
    ld l, h
    ld bc, $0401
    rlca
    xor a
    ld l, h
    rst $38
    inc b
    nop
    ld [$5d18], sp
    ld h, h
    inc bc
    dec c

jr_011_6b9b:
    inc b
    jr jr_011_6bb4

    ld h, l
    rst $38
    rst $38
    inc b
    inc bc
    jr nz, jr_011_6bb9

    sub [hl]
    ld l, c
    nop
    inc bc
    ld hl, $1a17
    ld e, h
    rst $38
    rrca
    rrca
    inc b
    jr @+$1b

    ld h, h

jr_011_6bb4:
    rrca
    ld [de], a
    inc b
    jr @+$1b

jr_011_6bb9:
    ld h, h
    rst $38
    inc bc
    ld [bc], a
    inc b
    rla
    xor l
    ld e, e
    ld b, $02
    inc b
    rla
    jp $ff5b


    ld a, [bc]
    inc bc
    inc b
    jr @+$1b

    ld h, h
    ld a, [bc]
    ld b, $04
    jr jr_011_6bec

    ld h, h
    rst $38
    rst $38
    inc b
    nop
    ld [$5d18], sp
    ld h, h
    inc bc
    dec c
    inc b
    jr jr_011_6bf7

    ld h, l
    rst $38
    inc b
    nop
    ld [$5d18], sp
    ld h, h
    inc bc
    dec c
    inc b

jr_011_6bec:
    jr jr_011_6c04

    ld h, l
    rst $38
    dec bc
    inc bc
    inc b
    jr jr_011_6c0e

    ld h, h
    dec bc

jr_011_6bf7:
    ld b, $04
    jr jr_011_6c14

    ld h, h
    rst $38
    rst $38
    inc b
    nop
    ld [$5d18], sp
    ld h, h

jr_011_6c04:
    inc bc
    dec c
    inc b
    jr @+$18

    ld h, l
    rst $38
    inc bc
    dec c
    inc b

jr_011_6c0e:
    jr @+$18

    ld h, l
    inc b
    nop
    inc b

jr_011_6c14:
    jr jr_011_6c73

    ld h, h
    rst $38
    ld c, $03
    inc b
    jr jr_011_6c36

    ld h, h
    ld c, $06
    inc b
    jr jr_011_6c3c

    ld h, h
    ld bc, $0006
    rla
    rst $28
    ld e, l
    rlca
    ld bc, $1700
    db $fc
    ld e, l
    add hl, bc
    ld bc, $1701
    db $fc
    ld e, l

jr_011_6c36:
    dec bc
    ld bc, $1702
    db $fc
    ld e, l

jr_011_6c3c:
    rlca
    inc bc
    inc bc
    rla
    db $fc
    ld e, l
    add hl, bc
    inc bc
    inc b
    rla
    db $fc
    ld e, l
    dec bc
    inc bc
    dec b
    rla
    db $fc
    ld e, l
    rlca
    dec b
    ld b, $17
    db $fc
    ld e, l
    add hl, bc
    dec b
    rlca
    rla
    db $fc
    ld e, l
    dec bc
    dec b
    ld [$fc17], sp
    ld e, l
    rlca
    rlca
    add hl, bc
    rla
    db $fc
    ld e, l
    add hl, bc
    rlca
    ld a, [bc]
    rla
    db $fc
    ld e, l
    dec bc
    rlca
    dec bc
    rla
    db $fc
    ld e, l
    rlca

jr_011_6c73:
    add hl, bc
    inc c
    rla
    db $fc
    ld e, l
    add hl, bc
    add hl, bc
    dec c
    rla
    db $fc
    ld e, l
    dec bc
    add hl, bc
    ld c, $17
    db $fc
    ld e, l
    rst $38
    dec b
    nop
    inc b
    jr jr_011_6ca0

    ld h, l
    rst $38
    inc b
    nop
    ld [$5d18], sp
    ld h, h
    inc bc
    dec c
    inc b
    jr @+$18

    ld h, l
    rst $38
    rrca
    inc bc
    inc b
    jr jr_011_6cb7

    ld h, h
    rrca

jr_011_6ca0:
    ld b, $04
    jr jr_011_6cbd

    ld h, h
    rst $38
    rrca
    ld [de], a
    ret nc

    dec c
    dec l
    ld a, [hl]
    ld c, $12
    ret nc

    dec c
    dec l
    ld a, [hl]
    dec c
    ld [de], a
    ret nc

    dec c
    dec l

jr_011_6cb7:
    ld a, [hl]
    inc c
    ld [de], a
    ret nc

    dec c
    dec l

jr_011_6cbd:
    ld a, [hl]
    dec bc
    ld [de], a
    ret nc

    dec c
    dec l
    ld a, [hl]
    ld a, [bc]
    ld [de], a
    rst $38
    dec c
    dec l
    ld a, [hl]
    ld a, [bc]
    dec c
    ret nc

    dec c
    dec l
    ld a, [hl]
    dec bc
    dec c
    ret nc

    dec c
    dec l
    ld a, [hl]
    inc c
    dec c
    cp $0d
    dec l
    ld a, [hl]
    dec c
    dec c
    ret nc

    dec c
    dec l
    ld a, [hl]
    ld c, $0d
    ret nc

    dec c
    dec l
    ld a, [hl]
    rrca
    dec c
    ret nc

    dec c
    dec l
    ld a, [hl]
    rrca
    inc c
    ret nc

    dec c
    dec l
    ld a, [hl]
    ld c, $0c
    ret nc

    dec c
    dec l
    ld a, [hl]
    dec c
    inc c
    ret nc

    dec c
    dec l
    ld a, [hl]
    inc c
    inc c
    ret nc

    dec c
    dec l
    ld a, [hl]
    dec bc
    inc c
    ret nc

    dec c
    dec l
    ld a, [hl]
    ld a, [bc]
    inc c
    ret nc

    dec c
    dec l
    ld a, [hl]
    ld a, [bc]
    rlca
    ret nc

    dec c
    dec l
    ld a, [hl]
    dec bc
    rlca
    ret nc

    dec c
    dec l
    ld a, [hl]
    inc c
    rlca
    ret nc

    dec c
    dec l
    ld a, [hl]
    dec c
    rlca
    ret nc

    dec c
    dec l
    ld a, [hl]
    ld c, $07
    ret nc

    dec c
    dec l
    ld a, [hl]
    rrca
    rlca
    ret nc

    dec c
    dec l
    ld a, [hl]
    rrca
    ld b, $d0
    dec c
    dec l
    ld a, [hl]
    ld c, $06
    ret nc

    dec c
    dec l
    ld a, [hl]
    dec c
    ld b, $d0
    dec c
    dec l
    ld a, [hl]
    inc c
    ld b, $fd
    dec c
    dec l
    ld a, [hl]
    dec bc
    ld b, $d0
    dec c
    dec l
    ld a, [hl]
    ld a, [bc]
    ld b, $d0
    dec c
    dec l
    ld a, [hl]
    ld a, [bc]
    ld bc, $0dd0
    dec l
    ld a, [hl]
    dec bc
    ld bc, $0dd0
    dec l
    ld a, [hl]
    inc c
    ld bc, $0dd0
    dec l
    ld a, [hl]
    dec c
    ld bc, $0dd0
    dec l
    ld a, [hl]
    ld c, $01
    ret nc

    dec c
    dec l
    ld a, [hl]
    rrca
    ld bc, $0dd0
    dec l
    ld a, [hl]
    ld [$4500], sp
    dec e
    sbc d
    ld h, a
    db $10
    ld bc, $1d45
    sbc d
    ld h, a
    dec bc
    inc bc
    ld c, a
    dec e
    sbc d
    ld h, a
    ld c, $03
    ld b, l
    dec e
    sbc d
    ld h, a
    inc c
    inc b
    ld b, l
    dec e
    sbc d
    ld h, a
    inc c
    add hl, bc
    ld c, a
    dec e
    sbc d
    ld h, a
    rrca
    add hl, bc
    ld b, l
    dec e
    sbc d
    ld h, a
    ld c, $10
    ld b, l
    dec e
    sbc d
    ld h, a
    db $10
    ld a, [bc]
    ld b, l
    dec e
    sbc d
    ld h, a
    rlca
    dec bc
    ld h, e
    dec e
    sbc d
    ld h, a
    ld [$9f0f], sp
    dec e
    sbc d
    ld h, a
    rrca
    inc c
    ld b, l
    dec e
    sbc d
    ld h, a
    rst $38
    inc bc
    dec c
    inc b
    jr jr_011_6de2

    ld h, l
    inc b
    nop
    ld [$5d18], sp
    ld h, h
    rst $38
    inc bc
    dec c
    inc b
    jr jr_011_6def

    ld h, l
    inc b
    nop
    inc b
    jr jr_011_6e3c

    ld h, h
    rst $38
    rrca

jr_011_6de2:
    inc bc
    inc b
    jr jr_011_6dff

    ld h, h
    rrca
    ld b, $04
    jr jr_011_6e05

    ld h, h
    rst $38
    dec c

jr_011_6def:
    ld de, $1804
    add hl, de
    ld h, h
    rlca
    rrca
    ld bc, $1707
    ld l, d
    ld bc, $120a
    rlca
    rla

jr_011_6dff:
    ld l, d
    rlca
    add hl, bc
    inc de
    rlca
    rla

jr_011_6e05:
    ld l, d
    dec c
    add hl, bc
    inc d
    rlca
    rla
    ld l, d
    dec c
    ld bc, $0705
    rla
    ld l, d
    rlca
    ld bc, $0716
    rla
    ld l, d
    rst $38
    inc b
    nop
    inc b
    jr jr_011_6e7b

    ld h, h
    inc bc
    dec c
    inc b
    jr jr_011_6e3a

    ld h, l
    rst $38
    rrca
    add hl, bc
    inc b
    jr @+$1b

    ld h, h
    rst $38
    inc b
    nop
    ld [$5d18], sp
    ld h, h
    inc bc
    dec c
    inc b
    jr jr_011_6e4e

    ld h, l
    rst $38

jr_011_6e3a:
    inc b
    nop

jr_011_6e3c:
    ld [$5d18], sp
    ld h, h
    inc bc
    dec c
    inc b
    jr jr_011_6e5b

    ld h, l
    rst $38
    ld [de], a
    ld bc, $1d14
    adc c
    ld h, [hl]
    ld a, [hl+]

jr_011_6e4e:
    db $10
    dec bc
    dec e
    adc c
    ld h, [hl]
    rst $38
    inc c
    ld [de], a
    ld a, [bc]
    dec e

Call_011_6e58:
    adc c
    ld h, [hl]
    add hl, bc

jr_011_6e5b:
    ld hl, $1d50
    adc c
    ld h, [hl]
    rst $38
    dec c
    ld [$14ff], sp
    cpl
    ld l, d
    dec c
    dec bc
    nop
    inc d
    cpl
    ld l, d
    rst $38
    inc bc
    ld h, $50
    dec e
    adc c
    ld h, [hl]
    ld bc, $520a
    dec e
    adc c
    ld h, [hl]
    rst $38

jr_011_6e7b:
    rlca
    ld c, $50
    dec e
    adc c
    ld h, [hl]
    rst $38
    dec b
    dec c
    nop
    rla
    rst $28
    ld e, l
    rlca
    dec c
    nop
    rla
    rst $28
    ld e, l
    add hl, bc
    dec c
    inc bc
    dec e
    adc c
    ld h, [hl]
    rst $38
    ld bc, $1203
    dec e
    adc c
    ld h, [hl]
    rst $38
    ld de, $1309
    dec e
    adc c
    ld h, [hl]
    dec [hl]
    db $10
    ld d, c
    dec e
    adc c
    ld h, [hl]
    rst $38
    rrca
    dec d
    ld c, a
    dec e
    adc c
    ld h, [hl]
    rst $38
    ld de, $311b
    dec e
    adc c
    ld h, [hl]
    rst $38
    ld bc, $1319
    dec e
    adc c
    ld h, [hl]
    rst $38
    inc b
    nop
    inc b
    jr @+$5f

    ld h, h
    inc bc
    dec c
    inc b
    jr jr_011_6edf

    ld h, l
    rst $38
    inc c
    inc b
    ld d, d
    dec e
    adc c
    ld h, [hl]
    rst $38
    ld c, $01
    ld c, a
    dec e
    adc c
    ld h, [hl]
    dec c
    db $10
    daa
    dec e
    adc c
    ld h, [hl]
    rst $38

jr_011_6edf:
    ld bc, $310a
    dec e
    adc c
    ld h, [hl]
    rst $38
    dec b
    ld b, $35
    dec e
    adc c
    ld h, [hl]
    rst $38
    inc bc
    inc c
    ld d, d
    dec e
    adc c
    ld h, [hl]
    rst $38
    rrca
    ld [bc], a
    ld de, $891d
    ld h, [hl]
    rst $38
    ld bc, $3101
    dec e
    adc c
    ld h, [hl]
    rst $38
    dec bc
    ld c, $28
    dec e
    adc c
    ld h, [hl]
    rst $38
    inc bc
    dec de
    ld [bc], a
    dec e
    adc c
    ld h, [hl]
    rst $38
    db $10
    ld de, $1d53
    adc c
    ld h, [hl]
    ld bc, $4f0c
    dec e
    adc c
    ld h, [hl]
    rst $38
    rrca
    rrca
    ld sp, $891d
    ld h, [hl]
    rst $38
    ld de, $0219
    dec e
    adc c
    ld h, [hl]
    rst $38
    db $10
    ld [$1d0a], sp
    adc c
    ld h, [hl]
    dec b
    ld [bc], a
    inc b
    ld de, $4316
    rst $38
    dec bc
    ld [bc], a
    inc b
    inc d
    scf
    ld h, b
    rst $38
    add hl, bc
    ld bc, $1d36
    adc c
    ld h, [hl]
    dec b
    ld a, [bc]
    inc b
    inc d
    ld a, d
    ld h, d
    rst $38
    add hl, bc
    ld bc, $1d28
    adc c
    ld h, [hl]
    inc bc
    inc d
    inc b
    inc d
    jr nz, jr_011_6fbc

    add hl, de
    ld [de], a
    inc b
    inc d
    jr nz, jr_011_6fc2

    rst $38
    inc l
    add hl, bc
    db $10
    dec e
    adc c
    ld h, [hl]
    ld b, [hl]
    inc de
    ld [bc], a
    dec e
    adc c
    ld h, [hl]
    ld e, d
    ld [$1d51], sp
    adc c
    ld h, [hl]
    rst $38
    ld [bc], a
    dec b
    ld [bc], a
    dec e
    adc c
    ld h, [hl]
    rlca
    ld a, [de]
    db $10
    dec e
    adc c
    ld h, [hl]
    rst $38
    dec bc
    ld c, $53
    dec e
    adc c
    ld h, [hl]
    rst $38
    inc b
    ld bc, $0704
    ld l, [hl]
    ld l, e
    rst $38
    inc b
    ld c, $14
    dec e
    adc c
    ld h, [hl]
    rst $38
    inc b
    nop
    ld [$5d18], sp
    ld h, h
    inc bc
    dec c
    inc b
    jr jr_011_6fb5

    ld h, l
    rst $38
    inc b
    nop
    ld [$5d18], sp
    ld h, h
    inc bc
    dec c
    inc b
    jr jr_011_6fc2

    ld h, l
    rst $38
    inc b
    nop
    ld [$5d18], sp
    ld h, h
    inc bc

jr_011_6fb5:
    dec c
    inc b
    jr @+$18

    ld h, l
    rst $38
    ld [bc], a

jr_011_6fbc:
    ld bc, $1704
    adc a
    ld e, e
    rst $38

jr_011_6fc2:
    ld bc, $0000
    rlca
    ld h, b
    ld l, e
    ld bc, $0001
    rlca
    ld h, b
    ld l, e
    ld bc, $0007
    rlca
    ld h, b
    ld l, e
    rst $38
    nop
    inc bc
    inc [hl]
    rla
    ld a, [de]
    ld e, h
    nop
    inc b
    inc [hl]
    rla
    ld a, [de]
    ld e, h
    inc b
    inc bc
    dec [hl]
    inc d
    sub [hl]
    ld l, c
    rst $38
    add hl, bc
    inc bc
    inc b
    inc d
    ld [hl+], a
    ld l, d
    add hl, bc
    ld b, $04
    inc d
    ld [hl+], a
    ld l, d
    nop
    inc b
    inc b
    inc d
    ld [$006a], sp
    dec b
    inc b
    inc d
    dec d
    ld l, d
    rst $38
    rlca
    rrca
    inc b
    jr @+$18

    ld h, l
    rst $38
    inc b
    nop
    inc b
    jr @+$18

    ld h, l
    inc b
    ld [bc], a
    inc b
    jr jr_011_7029

    ld h, l
    rst $38
    nop
    ld bc, $07d0
    ld c, e
    ld l, c
    ld bc, $d002
    rlca
    ld c, e
    ld l, c
    ld [bc], a
    ld bc, $07d0
    ld c, e
    ld l, c
    ld [bc], a
    inc bc

jr_011_7029:
    ret nc

    rlca
    ld c, e
    ld l, c
    inc b
    nop
    ret nc

    rlca
    ld c, e
    ld l, c
    dec b
    ld bc, $07d0
    ld c, e
    ld l, c
    rst $38
    dec b
    jr nc, jr_011_705a

    dec e
    adc c
    ld h, [hl]
    rst $38
    ccf
    ld [bc], a
    ld [de], a
    dec e
    adc c
    ld h, [hl]
    rst $38
    inc c
    ld a, [bc]
    inc b
    jr jr_011_7063

    ld h, l
    rst $38
    ld c, $0f
    jr z, jr_011_7070

    adc c
    ld h, [hl]
    dec l
    ld [$1d10], sp
    adc c

jr_011_705a:
    ld h, [hl]
    ld c, b
    ld de, $1d4f
    adc c
    ld h, [hl]
    ld e, e
    inc b

jr_011_7063:
    ld [hl], $1d
    adc c
    ld h, [hl]
    ld a, c
    ld [$1d53], sp
    adc c
    ld h, [hl]
    rst $38
    inc b
    inc bc

jr_011_7070:
    db $10
    dec e
    adc c
    ld h, [hl]
    ld [hl+], a
    inc b
    ld b, h
    dec e
    adc c
    ld h, [hl]
    rst $38
    ld [bc], a
    inc c
    ld sp, $891d
    ld h, [hl]
    dec b
    dec d
    ld d, d
    dec e
    adc c
    ld h, [hl]
    rst $38
    rrca
    jr nc, jr_011_70da

    dec e
    adc c
    ld h, [hl]
    rst $38
    db $10
    add hl, bc
    ld d, e
    dec e
    adc c
    ld h, [hl]
    rst $38
    dec bc
    ld c, $51
    dec e
    adc c
    ld h, [hl]
    rst $38
    ld [$280f], sp
    dec e
    adc c
    ld h, [hl]
    rst $38
    inc bc
    jr z, jr_011_70aa

    dec e
    adc c
    ld h, [hl]

jr_011_70aa:
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_011_70da:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
