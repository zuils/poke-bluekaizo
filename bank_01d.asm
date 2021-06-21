; Disassembly of "bluekaizo.gb"
; This file was created with:
; mgbdis v1.4 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

SECTION "ROM Bank $01d", ROMX[$4000], BANK[$1d]

    inc b
    add hl, bc
    dec b
    rlca
    rrca
    rrca
    rrca
    rrca
    rrca
    ld bc, $0f02
    rrca
    dec bc
    rrca
    rrca
    ld [de], a
    inc de
    inc de
    add hl, bc
    ld d, $0f
    inc d
    inc d
    jr @+$1b

    dec d
    dec d
    rla
    ld a, [de]
    dec bc
    rrca
    inc b
    ld c, $05
    add hl, bc
    rrca
    ld bc, $0f02
    rrca
    inc c
    dec c
    rrca
    ld b, $0b
    rrca
    rlca
    jr nz, jr_01d_4042

    ld bc, $0c02
    dec c
    dec c
    ld hl, $0504
    rlca
    rlca
    ld [hl+], a
    inc hl
    ld [$0f0f], sp
    rrca

jr_01d_4042:
    rrca
    rrca
    dec de
    ld c, $0a
    dec bc
    ld c, $0f
    rrca
    ld c, $3d
    add hl, bc
    dec a
    dec a
    dec bc
    dec bc
    rlca
    ld b, $0b
    dec bc
    dec bc
    inc l
    dec bc
    dec de
    dec bc
    dec [hl]
    ld b, $1c
    ld hl, $41a0
    call $35d6
    call $190f
    ld c, $64
    call $3739
    call $0061
    ld hl, $8800
    ld bc, $0400
    call Call_01d_4171
    ld hl, $9600
    ld bc, $0100
    call Call_01d_4171
    ld hl, $97e0
    ld bc, $0010
    ld a, $ff
    call $36e0
    ld hl, $c3a0
    call Call_01d_417b
    ld hl, $c4b8
    call Call_01d_417b
    ld a, $c0
    ldh [rBGP], a
    call $007b
    ld a, $ff
    call $3740
    ld c, $1f
    ld a, $c7
    call $23a1
    ld c, $80
    call $3739
    xor a
    ld [$cd3d], a
    ld [$cd3e], a
    jp Jump_01d_418e


Call_01d_40ba:
Jump_01d_40ba:
    ld hl, $4160
    ld b, $04

jr_01d_40bf:
    ld a, [hl+]
    ldh [rBGP], a
    ld c, $05
    call $3739
    dec b
    jr nz, jr_01d_40bf

    ret


Call_01d_40cb:
    xor a
    ldh [$ba], a
    call $3719
    call Call_01d_4183
    ld hl, $cd3e
    ld c, [hl]
    inc [hl]
    ld b, $00
    ld hl, $4131
    add hl, bc
    ld a, [hl]
    ld [$cf91], a
    ld [$d0b5], a
    ld hl, $c420
    call $1537
    call $1389
    ld hl, $980c
    call Call_01d_4164
    xor a
    ldh [$ba], a
    call $3725
    ld hl, $9800
    call Call_01d_4164
    ld a, $a7
    ldh [rWX], a
    ld hl, $9c00
    call Call_01d_4164
    call Call_01d_4183
    ld a, $fc
    ldh [rBGP], a
    ld bc, $0007

jr_01d_4115:
    call Call_01d_4140
    dec c
    jr nz, jr_01d_4115

    ld c, $14

jr_01d_411d:
    call Call_01d_4140
    ldh a, [rWX]
    sub $08
    ldh [rWX], a
    dec c
    jr nz, jr_01d_411d

    xor a
    ldh [$b0], a
    ld a, $c0
    ldh [rBGP], a
    ret


    sbc d
    or h
    inc e
    ld d, l
    add h
    ld l, b
    ld l, c
    ld h, a
    inc a
    ld bc, $4b4a
    ld c, c
    add e
    dec d

Call_01d_4140:
    ld h, b
    ld l, $20
    call Call_01d_4152
    ld h, $00
    ld l, $70
    call Call_01d_4152
    ld a, b
    add $08
    ld b, a
    ret


Call_01d_4152:
jr_01d_4152:
    ldh a, [rLY]
    cp l
    jr nz, jr_01d_4152

    ld a, h
    ldh [rSCX], a

jr_01d_415a:
    ldh a, [rLY]
    cp h
    jr z, jr_01d_415a

    ret


    ret nz

    ret nc

    ldh [$f0], a

Call_01d_4164:
    ld a, l
    ldh [$bc], a
    ld a, h
    ldh [$bd], a
    ld a, $01
    ldh [$ba], a
    jp $3dd7


Call_01d_4171:
jr_01d_4171:
    ld [hl], $00
    inc hl
    inc hl
    dec bc
    ld a, b
    or c
    jr nz, jr_01d_4171

    ret


Call_01d_417b:
    ld bc, $0050
    ld a, $7e
    jp $36e0


Call_01d_4183:
    ld hl, $c3f0
    ld bc, $00c8
    ld a, $7f
    jp $36e0


Jump_01d_418e:
    ld de, $4243
    push de

jr_01d_4192:
    pop de
    ld hl, $c421
    push hl
    call Call_01d_4183
    pop hl

jr_01d_419b:
    ld a, [de]
    inc de
    push de
    cp $ff
    jr z, jr_01d_41d5

    cp $fe
    jr z, jr_01d_41dc

    cp $fd
    jr z, jr_01d_41e6

    cp $fc
    jr z, jr_01d_41ed

    cp $fb
    jr z, jr_01d_41f4

    cp $fa
    jr z, jr_01d_4201

    push hl
    push hl
    ld hl, $42c3
    add a
    ld c, a
    ld b, $00
    add hl, bc
    ld e, [hl]
    inc hl
    ld d, [hl]
    ld a, [de]
    inc de
    ld c, a
    ld b, $ff
    pop hl
    add hl, bc
    call $1955
    pop hl
    ld bc, $0028
    add hl, bc
    pop de
    jr jr_01d_419b

jr_01d_41d5:
    call Call_01d_40ba
    ld c, $5a
    jr jr_01d_41de

jr_01d_41dc:
    ld c, $6e

jr_01d_41de:
    call $3739
    call Call_01d_40cb
    jr jr_01d_4192

jr_01d_41e6:
    call Call_01d_40ba
    ld c, $78
    jr jr_01d_41ef

jr_01d_41ed:
    ld c, $8c

jr_01d_41ef:
    call $3739
    jr jr_01d_4192

jr_01d_41f4:
    push de
    ld b, $01
    ld hl, $4541
    call $35d6
    pop de
    pop de
    jr jr_01d_419b

jr_01d_4201:
    ld c, $10
    call $3739
    call Call_01d_4183
    pop de
    ld de, $473f
    ld hl, $9600
    ld bc, $1d0a
    call $1848
    ld hl, $c444
    ld de, $4229
    call $1955
    ld hl, $c458
    inc de
    call $1955
    jp Jump_01d_40ba


    ld h, b
    ld a, a
    ld h, d
    ld a, a
    ld h, h
    ld a, a
    ld a, a
    ld h, h
    ld a, a
    ld h, [hl]
    ld a, a
    ld l, b
    ld d, b
    ld h, c
    ld a, a
    ld h, e
    ld a, a
    ld h, l
    ld a, a
    ld a, a
    ld h, l
    ld a, a
    ld h, a
    ld a, a
    ld l, c
    ld d, b
    inc e
    nop
    rst $38
    dec e
    ld bc, $1eff
    ld [bc], a
    inc bc
    db $fd
    ld e, $04
    dec b
    inc l
    cp $1f
    rlca
    ld [$20ff], sp
    dec b
    db $fd
    ld hl, $fe05
    ld [hl+], a
    ld bc, $23ff
    rlca
    ld [$fd14], sp
    inc hl
    inc bc
    dec l
    ld l, $fe
    inc h
    ld bc, $24fd
    ld [de], a
    inc de
    dec c
    cp $25
    ld b, $1a
    rst $38
    ld h, $01
    ld b, $fd
    ld h, $15
    inc de
    ld [de], a
    cp $27
    jr jr_01d_429a

    db $fd
    daa
    ld a, [de]
    dec de
    cp $28
    ld c, $0f
    db $fd
    jr z, @+$12

    ld de, $28fc
    ld d, $17
    cpl
    cp $29
    add hl, bc
    db $fd
    add hl, hl
    ld a, [bc]
    db $fc
    add hl, hl

jr_01d_429a:
    dec bc
    cp $30
    db $fd
    ld sp, $fd32
    ld sp, $3433
    db $fc
    ld sp, $3635
    db $fc

jr_01d_42a9:
    scf
    jr c, jr_01d_42a9

    ld e, $3c
    dec a
    db $fd
    jr z, jr_01d_42eb

    db $fd
    jr z, @+$3d

    db $fc
    daa
    ccf
    ld a, $fd
    ld a, [hl+]
    ld a, [hl-]
    db $fd
    dec hl
    inc c
    rst $38
    ei
    rst $38
    ld a, [$4343]
    ld d, a
    ld b, e
    ld h, a
    ld b, e
    db $76
    ld b, e
    adc b
    ld b, e
    sbc d
    ld b, e
    xor d
    ld b, e
    cp b
    ld b, e
    add $43
    sub $43
    add sp, $43
    ei
    ld b, e
    rrca
    ld b, h
    ld hl, $3244
    ld b, h
    ld b, e
    ld b, h
    ld d, e
    ld b, h
    ld h, l
    ld b, h
    ld a, b
    ld b, h
    adc h
    ld b, h

jr_01d_42eb:
    sbc a
    ld b, h
    or d
    ld b, h
    jp $d544


    ld b, h
    rst $20
    ld b, h
    rst $30
    ld b, h
    ld [$1845], sp
    ld b, l
    jr z, @+$47

    ld l, $45
    jr c, jr_01d_4346

    ld b, l
    ld b, l
    ld d, a
    ld b, l
    ld e, [hl]
    ld b, l
    ld l, l
    ld b, l
    ld a, d
    ld b, l
    adc d
    ld b, l
    sbc c
    ld b, l
    xor h
    ld b, l
    cp b
    ld b, l
    ret


    ld b, l
    reti


    ld b, l
    db $e4
    ld b, l
    xor $45
    ld [bc], a
    ld b, [hl]
    ld [de], a
    ld b, [hl]
    jr nz, jr_01d_4367

    jr nc, @+$48

    ld b, b
    ld b, [hl]
    ld d, d
    ld b, [hl]
    ld h, e
    ld b, [hl]
    ld [hl], b
    ld b, [hl]
    add b
    ld b, [hl]
    adc a
    ld b, [hl]
    sbc [hl]
    ld b, [hl]
    xor h
    ld b, [hl]
    cp [hl]
    ld b, [hl]
    call $db46
    ld b, [hl]
    db $ec
    ld b, [hl]
    db $fd
    ld b, [hl]
    ld c, $47
    dec de
    ld b, a
    ld sp, $f847
    add c
    adc e

jr_01d_4346:
    sub h
    add h
    ld a, a
    sub l
    add h
    sub c
    sub d
    adc b
    adc [hl]
    adc l
    ld a, a
    sub d
    sub e
    add b
    add l
    add l
    ld d, b
    ld a, [$8092]
    sub e
    adc [hl]
    sub d
    add a
    adc b
    ld a, a
    sub e
    add b
    adc c
    adc b
    sub c
    adc b
    ld d, b

jr_01d_4367:
    ld a, [$8093]
    adc d
    add h
    adc l
    adc [hl]
    sub c
    adc b
    ld a, a
    adc [hl]
    adc [hl]
    sub e
    add b
    ld d, b
    ld sp, hl
    sub d
    add a
    adc b
    add [hl]
    add h
    adc d
    adc b
    ld a, a
    adc h
    adc [hl]
    sub c
    adc b
    adc h
    adc [hl]
    sub e
    adc [hl]
    ld d, b
    ld sp, hl
    sub e
    add h
    sub e
    sub d
    sub h
    sbc b
    add b
    ld a, a
    sub [hl]
    add b
    sub e
    add b
    adc l
    add b
    add c
    add h
    ld d, b
    ld a, [$9489]
    adc l
    adc b
    add d
    add a
    adc b
    ld a, a
    adc h
    add b
    sub d
    sub h
    add e
    add b
    ld d, b
    ei
    adc d
    adc [hl]
    add a
    adc c
    adc b
    ld a, a
    adc l
    adc b
    sub d
    adc b
    adc l
    adc [hl]
    ld d, b
    ei
    adc d
    add h
    adc l
    ld a, a
    sub d
    sub h
    add [hl]
    adc b
    adc h
    adc [hl]
    sub c
    adc b
    ld d, b
    ld a, [$9380]
    sub d
    sub h
    adc d
    adc [hl]
    ld a, a
    adc l
    adc b
    sub d
    add a
    adc b
    add e
    add b
    ld d, b
    ld sp, hl
    sub d
    add a
    adc b
    add [hl]
    add h
    sub c
    sub h
    ld a, a
    adc h
    adc b
    sbc b
    add b
    adc h
    adc [hl]
    sub e
    adc [hl]
    ld d, b
    ld hl, sp-$6d
    add b
    adc d
    add b
    sub d
    add a
    adc b
    ld a, a
    adc d
    add b
    sub [hl]
    add b
    add [hl]
    sub h
    add d
    add a
    adc b
    ld d, b
    ld hl, sp-$6d
    sub d
    sub h
    adc l
    add h
    adc d
    add b
    sbc c
    sub h
    ld a, a
    adc b
    sub d
    add a
    adc b
    add a
    add b
    sub c
    add b
    ld d, b
    ld sp, hl
    add a
    adc b
    sub c
    adc [hl]
    sub d
    add a
    adc b
    ld a, a
    sbc b
    add b
    adc h
    add b
    sub h
    add d
    add a
    adc b
    ld d, b
    ld sp, hl
    add a
    adc b
    sub c
    adc [hl]
    sbc b
    sub h
    adc d
    adc b
    ld a, a
    sbc c
    adc b
    adc l
    adc l
    add b
    adc b
    ld d, b
    ld sp, hl
    sub e
    add b
    sub e
    sub d
    sub h
    sbc b
    add b
    ld a, a
    add a
    adc b
    sub d
    add a
    adc b
    add e
    add b
    ld d, b
    ld a, [$8098]
    sub d
    sub h
    add a
    adc b
    sub c
    adc [hl]
    ld a, a
    sub d
    add b
    adc d
    add b
    adc b
    ld d, b
    ld sp, hl
    sub [hl]
    add b
    sub e
    add b
    sub c
    sub h
    ld a, a
    sbc b
    add b
    adc h
    add b
    add [hl]
    sub h
    add d
    add a
    adc b
    ld d, b
    ld hl, sp-$76
    add b
    sbc c
    sub h
    sbc b
    sub h
    adc d
    adc b
    ld a, a
    sbc b
    add b
    adc h
    add b
    adc h
    adc [hl]
    sub e
    adc [hl]
    ld d, b
    ld hl, sp-$6f
    sbc b
    adc [hl]
    add a
    sub d
    sub h
    adc d
    add h
    ld a, a
    sub e
    add b
    adc l
    adc b
    add [hl]
    sub h
    add d
    add a
    adc b
    ld d, b
    ld hl, sp-$7b
    sub h
    adc h
    adc b
    add a
    adc b
    sub c
    adc [hl]
    ld a, a
    adc l
    adc [hl]
    adc l
    adc [hl]
    adc h
    sub h
    sub c
    add b
    ld d, b
    ld sp, hl
    adc h
    adc [hl]
    sub e
    adc [hl]
    add l
    sub h
    adc h
    adc b
    ld a, a
    add l
    sub h
    sbc c
    adc b
    sub [hl]
    add b
    sub c
    add b
    ld d, b
    ld sp, hl
    adc d
    add h
    adc l
    adc c
    adc b
    ld a, a
    adc h
    add b
    sub e
    sub d
    sub h
    sub d
    adc b
    adc h
    add b
    ld d, b
    ld sp, hl
    add b
    adc d
    adc b
    add a
    adc b
    sub e
    adc [hl]
    ld a, a
    sub e
    adc [hl]
    adc h
    adc b
    sub d
    add b
    sub [hl]
    add b
    ld d, b
    ld sp, hl
    add a
    adc b
    sub c
    adc [hl]
    sub d
    add a
    adc b
    ld a, a
    adc d
    add b
    sub [hl]
    add b
    adc h
    adc [hl]
    sub e
    adc [hl]
    ld d, b
    ld a, [$8a80]
    adc b
    sbc b
    adc [hl]
    sub d
    add a
    adc b
    ld a, a
    adc d
    add b
    adc d
    add h
    adc b
    ld d, b
    ld sp, hl
    adc d
    add b
    sbc c
    sub h
    adc d
    adc b
    ld a, a
    sub e
    sub d
    sub h
    add d
    add a
    adc b
    sbc b
    add b
    ld d, b
    ld a, [$8093]
    adc d
    add h
    adc [hl]
    ld a, a
    adc l
    add b
    adc d
    add b
    adc h
    sub h
    sub c
    add b
    ld d, b
    ld a, [$808c]
    sub d
    add b
    adc h
    adc b
    sub e
    sub d
    sub h
    ld a, a
    sbc b
    sub h
    add e
    add b
    ld d, b
    db $fd
    ld d, h
    adc h
    adc [hl]
    adc l
    ld d, b
    db $fd
    add e
    adc b
    sub c
    add h
    add d
    sub e
    adc [hl]
    sub c
    ld d, b
    ei
    adc a
    sub c
    adc [hl]
    add [hl]
    sub c
    add b
    adc h
    adc h
    add h
    sub c
    sub d
    ld d, b
    ld sp, hl
    add d
    add a
    add b
    sub c
    add b
    add d
    sub e
    add h
    sub c
    ld a, a
    add e
    add h
    sub d
    adc b
    add [hl]
    adc l
    ld d, b
    cp $8c
    sub h
    sub d
    adc b
    add d
    ld d, b
    ld a, [$8e92]
    sub h
    adc l
    add e
    ld a, a
    add h
    add l
    add l
    add h
    add d
    sub e
    sub d
    ld d, b
    ei
    add [hl]
    add b
    adc h
    add h
    ld a, a
    add e
    add h
    sub d
    adc b
    add [hl]
    adc l
    ld d, b
    ld a, [$8e8c]
    adc l
    sub d
    sub e
    add h
    sub c
    ld a, a
    add e
    add h
    sub d
    adc b
    add [hl]
    adc l
    ld d, b
    ld a, [$8086]
    adc h
    add h
    ld a, a
    sub d
    add d
    add h
    adc l
    add b
    sub c
    adc b
    adc [hl]
    ld d, b
    ld hl, sp-$71
    add b
    sub c
    add b
    adc h
    add h
    sub e
    sub c
    adc b
    add d
    ld a, a
    add e
    add h
    sub d
    adc b
    add [hl]
    adc l
    ld d, b
    db $fc
    adc h
    add b
    adc a
    ld a, a
    add e
    add h
    sub d
    adc b
    add [hl]
    adc l
    ld d, b
    ld sp, hl
    adc a
    sub c
    adc [hl]
    add e
    sub h
    add d
    sub e
    ld a, a
    sub e
    add h
    sub d
    sub e
    adc b
    adc l
    add [hl]
    ld d, b
    ld a, [$8f92]
    add h
    add d
    adc b
    add b
    adc e
    ld a, a
    sub e
    add a
    add b
    adc l
    adc d
    sub d
    ld d, b
    db $fc
    adc a
    sub c
    adc [hl]
    add e
    sub h
    add d
    add h
    sub c
    sub d
    ld d, b
    db $fc
    adc a
    sub c
    adc [hl]
    add e
    sub h
    add d
    add h
    sub c
    ld d, b
    ld hl, sp-$7c
    sub a
    add h
    add d
    sub h
    sub e
    adc b
    sub l
    add h
    ld a, a
    adc a
    sub c
    adc [hl]
    add e
    sub h
    add d
    add h
    sub c
    ld d, b
    ld a, [$8e92]
    sub h
    sub d
    sub h
    adc d
    add h
    ld a, a
    sub e
    add b
    adc h
    add b
    add e
    add b
    ld d, b
    ei
    sub d
    add b
    sub e
    adc [hl]
    sub d
    add a
    adc b
    ld a, a
    adc [hl]
    adc [hl]
    sub e
    add b
    ld d, b
    ld a, [$8491]
    adc l
    add b
    ld a, a
    sbc b
    adc [hl]
    sub d
    add a
    adc b
    adc d
    add b
    sub [hl]
    add b
    ld d, b
    ld a, [$8e93]
    adc h
    adc [hl]
    adc h
    adc b
    add d
    add a
    adc b
    ld a, a
    adc [hl]
    adc [hl]
    sub e
    add b
    ld d, b
    ld sp, hl
    sub h
    sub d
    ld a, a
    sub l
    add h
    sub c
    sub d
    adc b
    adc [hl]
    adc l
    ld a, a
    sub d
    sub e
    add b
    add l
    add l
    ld d, b
    ld sp, hl
    sub h
    sub d
    ld a, a
    add d
    adc [hl]
    adc [hl]
    sub c
    add e
    adc b
    adc l
    add b
    sub e
    adc b
    adc [hl]
    adc l
    ld d, b
    ei
    add [hl]
    add b
    adc b
    adc e
    ld a, a
    sub e
    adc b
    adc e
    add e
    add h
    adc l
    ld d, b
    ld a, [$808d]
    adc [hl]
    adc d
    adc [hl]
    ld a, a
    adc d
    add b
    sub [hl]
    add b
    adc d
    add b
    adc h
    adc b
    ld d, b
    ld a, [$8887]
    sub c
    adc [hl]
    ld a, a
    adc l
    add b
    adc d
    add b
    adc h
    sub h
    sub c
    add b
    ld d, b
    ld a, [$8896]
    adc e
    adc e
    adc b
    add b
    adc h
    ld a, a
    add [hl]
    adc b
    add h
    sub d
    add h
    ld d, b
    ei
    sub d
    add b
    sub c
    add b
    ld a, a
    adc [hl]
    sub d
    add c
    adc [hl]
    sub c
    adc l
    add h
    ld d, b
    ld sp, hl
    sub e
    add h
    sub a
    sub e
    ld a, a
    sub e
    sub c
    add b
    adc l
    sub d
    adc e
    add b
    sub e
    adc b
    adc [hl]
    adc l
    ld d, b
    ld a, [$8e8d]
    add c
    ld a, a
    adc [hl]
    add [hl]
    add b
    sub d
    add b
    sub [hl]
    add b
    sub c
    add b
    ld d, b
    ei
    sub d
    add b
    sub e
    adc [hl]
    sub c
    sub h
    ld a, a
    adc b
    sub [hl]
    add b
    sub e
    add b
    ld d, b
    ld sp, hl
    sub e
    add b
    adc d
    add h
    add a
    adc b
    sub c
    adc [hl]
    ld a, a
    adc b
    sbc c
    sub h
    sub d
    add a
    adc b
    ld d, b
    ld sp, hl
    sub e
    add b
    adc d
    add b
    add a
    adc b
    sub c
    adc [hl]
    ld a, a
    add a
    add b
    sub c
    add b
    add e
    add b
    ld d, b
    ld sp, hl
    sub e
    add h
    sub c
    sub h
    adc d
    adc b
    ld a, a
    adc h
    sub h
    sub c
    add b
    adc d
    add b
    sub [hl]
    add b
    ld d, b
    ei
    adc d
    adc [hl]
    add a
    sub e
    add b
    ld a, a
    add l
    sub h
    adc d
    sub h
    adc b
    ld d, b
    rst $30
    adc l
    add d
    adc e
    ld a, a
    sub d
    sub h
    adc a
    add h
    sub c
    ld a, a
    adc h
    add b
    sub c
    adc b
    adc [hl]
    ld a, a
    add d
    adc e
    sub h
    add c
    ld d, b
    ei
    adc a
    add b
    add b
    add e
    ld a, a
    sub e
    add h
    sub d
    sub e
    adc b
    adc l
    add [hl]
    ld d, b
    rst $38
    rst $38
    cp $fe
    rst $38
    rst $38
    inc a
    inc a
    inc a
    inc a
    inc a
    inc a
    inc a
    inc a
    inc a
    inc a
    inc a
    inc a
    inc a
    inc a
    inc a
    inc a
    inc a
    inc a
    inc a
    inc a
    inc a
    inc a
    inc a
    inc a
    jr z, jr_01d_4787

    rst $20
    rst $20
    rst $20
    rst $20
    rst $20
    rst $20
    rst $20
    rst $20
    rst $20
    rst $20
    rst $20
    rst $20
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $20
    rst $20
    rst $20
    rst $20
    rst $20
    rst $20
    rst $20
    rst $20
    rst $20
    rst $20
    rst $20
    rst $20
    and l
    and l
    rst $38
    rst $38
    cp $fe
    rst $38
    rst $38
    ldh [$e0], a

jr_01d_4787:
    ldh [$e0], a
    ldh [$e0], a
    cp $fe
    db $fc
    db $fc
    cp $fe
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    rst $38
    rst $38
    rst $38
    rst $38
    cp $fe
    pop bc
    pop bc
    push bc
    push bc
    rst $20
    rst $20
    rst $20
    rst $20
    rst $30
    rst $30
    rst $30
    rst $30
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $28
    rst $28
    rst $28
    rst $28
    rst $20
    rst $20
    rst $20
    rst $20
    db $e3
    db $e3
    and e
    and e
    ld hl, sp-$08
    db $fc
    db $fc
    cp $fe
    xor $ee
    rst $20
    rst $20
    rst $20
    rst $20
    rst $20
    rst $20
    rst $20
    rst $20
    rst $20
    rst $20
    rst $20
    rst $20
    rst $20
    rst $20
    rst $20
    rst $20
    xor $ee
    cp $fe
    db $fc
    db $fc
    ld hl, sp-$08
    ld a, [de]
    bit 3, a
    jr nz, jr_01d_47fc

    bit 4, a
    jr nz, jr_01d_4805

    bit 5, a
    jr nz, jr_01d_480e

    bit 6, a
    jr nz, jr_01d_4817

    and $07
    ret z

    ld a, $92
    ld [hl+], a
    ld a, $8b
    ld [hl+], a
    ld [hl], $8f
    ret


jr_01d_47fc:
    ld a, $8f
    ld [hl+], a
    ld a, $92
    ld [hl+], a
    ld [hl], $8d
    ret


jr_01d_4805:
    ld a, $81
    ld [hl+], a
    ld a, $91
    ld [hl+], a
    ld [hl], $8d
    ret


jr_01d_480e:
    ld a, $85
    ld [hl+], a
    ld a, $91
    ld [hl+], a
    ld [hl], $99
    ret


jr_01d_4817:
    ld a, $8f
    ld [hl+], a
    ld a, $80
    ld [hl+], a
    ld [hl], $91
    ret


    ld hl, $66b9
    ld b, $00

jr_01d_4825:
    ld de, $0003
    ld a, [$d35e]
    call $3dad
    ret nc

    push bc
    push hl
    ld hl, $d6f0
    ld c, b
    ld b, $02
    ld a, $10
    call $3e6d
    ld a, c
    pop hl
    pop bc
    inc b
    and a
    inc hl
    ld d, [hl]
    inc hl
    ld e, [hl]
    inc hl
    jr nz, jr_01d_4825

    ld a, [$d361]
    call Call_01d_486c
    cp d
    jr nc, jr_01d_4825

    ld a, [$d361]
    add $04
    cp d
    jr c, jr_01d_4825

    ld a, [$d362]
    call Call_01d_486c
    cp e
    jr nc, jr_01d_4825

    ld a, [$d362]
    add $05
    cp e
    jr c, jr_01d_4825

    scf
    ret


Call_01d_486c:
    sub $05
    cp $f0
    ret c

    xor a
    ret


    call $20ef
    ld a, $07
    ld [$cc4d], a
    ld a, $15
    call $3e6d
    ld a, $09
    ld [$cc4d], a
    ld a, $11
    call $3e6d
    ld a, $06
    ld [$cc4d], a
    ld a, $11
    call $3e6d
    call $20d1
    ret


    rlca
    add hl, bc
    ld a, [bc]
    ld c, b
    ld c, h
    db $ed
    ld c, c
    and h
    ld c, b
    nop
    rst $18
    ld c, e
    ld hl, $48c0
    ld de, $48ce
    call $317f
    call $3c3c
    ld hl, $4a09
    ld de, $48e2
    ld a, [$d5fb]
    call $3160
    ld [$d5fb], a
    ret


    sub l
    adc b
    sub c
    adc b
    add e
    adc b
    add b
    adc l
    ld a, a
    add d
    adc b
    sub e
    sbc b
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

Jump_01d_48d7:
    xor a
    ld [$cd6b], a
    ld [$d5fb], a
    ld [$da39], a
    ret


    db $ec
    ld c, b
    ld c, h
    ld [hl-], a
    ld [hl], l
    ld [hl-], a
    adc c
    ld c, c
    ld l, h
    ld c, c
    ld a, [$d361]
    ld b, a
    ld a, [$d362]
    ld c, a
    ld hl, $4917
    call $3442
    cp $ff
    jp z, $3219

    call $3486
    ld hl, $d736
    set 7, [hl]
    ld a, $a7
    call $23b1
    ld a, $ff
    ld [$cd6b], a
    ld a, $04
    ld [$da39], a
    ret


    dec bc
    inc de
    ld c, b
    ld c, c
    ld bc, $4b13
    ld c, c
    ld [bc], a
    ld [de], a
    ld c, [hl]
    ld c, c
    ld [bc], a
    dec bc
    ld d, c
    ld c, c
    ld a, [bc]
    db $10
    ld d, h
    ld c, c
    ld b, $04
    ld d, a
    ld c, c
    dec c
    dec b
    ld e, d
    ld c, c
    ld c, $04
    ld e, l
    ld c, c
    rrca
    nop
    ld h, b
    ld c, c
    rrca
    ld bc, $4963
    db $10
    dec c
    ld h, [hl]
    ld c, c
    ld de, $690d
    ld c, c
    rst $38
    ld b, b
    add hl, bc
    rst $38
    jr nz, jr_01d_4955

    rst $38
    add b
    add hl, bc
    rst $38
    db $10
    ld b, $ff
    add b

jr_01d_4955:
    ld [bc], a
    rst $38
    add b
    rlca
    rst $38
    db $10
    ld [$10ff], sp
    add hl, bc
    rst $38
    ld b, b
    ld [$40ff], sp
    ld b, $ff
    jr nz, @+$08

    rst $38
    jr nz, @+$0e

    rst $38
    ld a, [$cd38]
    and a
    jr nz, jr_01d_4981

    xor a
    ld [$cd6b], a
    ld hl, $d736
    res 7, [hl]
    ld a, $00
    ld [$da39], a
    ret


jr_01d_4981:
    ld b, $11
    ld hl, $4fd7
    jp $35d6


    ld a, [$d057]
    cp $ff
    jp z, Jump_01d_48d7

    ld a, $f0
    ld [$cd6b], a

Call_01d_4996:
    ld a, $0c
    ldh [$8c], a
    call $2920
    ld hl, $d751
    set 1, [hl]
    ld bc, $e301
    call $3e2e
    jr nc, jr_01d_49b8

    ld a, $0d
    ldh [$8c], a
    call $2920
    ld hl, $d751
    set 0, [hl]
    jr jr_01d_49bf

jr_01d_49b8:
    ld a, $0e
    ldh [$8c], a
    call $2920

jr_01d_49bf:
    ld hl, $d356
    set 7, [hl]
    ld hl, $d72a
    set 7, [hl]
    ld a, [$d751]
    or $fc
    ld [$d751], a
    ld a, [$d752]
    or $03
    ld [$d752], a
    ld a, $23
    ld [$cc4d], a
    ld a, $15
    call $3e6d
    ld hl, $d7eb
    set 1, [hl]
    set 7, [hl]
    jp Jump_01d_48d7


    ld l, d
    ld c, d
    db $f4
    ld c, d
    dec c
    ld c, e
    ld h, $4b
    ccf
    ld c, e
    ld e, b
    ld c, e
    ld [hl], c
    ld c, e
    adc d
    ld c, e
    and e
    ld c, e
    cp h
    ld c, e
    db $f4
    inc h
    ldh [rWY], a
    push hl
    ld c, d
    rst $28
    ld c, d
    ld [bc], a
    ld b, b
    ld d, c
    rst $10
    cp $4a
    ld [$034b], sp
    ld c, e
    inc bc
    ld c, e
    inc bc
    ld b, b
    ld d, c
    rst $10
    rla
    ld c, e
    ld hl, $1c4b
    ld c, e
    inc e
    ld c, e
    inc b
    ld b, b
    ld d, c
    rst $10
    jr nc, jr_01d_4a72

    ld a, [hl-]
    ld c, e
    dec [hl]
    ld c, e
    dec [hl]
    ld c, e
    dec b
    jr nz, @+$53

    rst $10
    ld c, c
    ld c, e
    ld d, e
    ld c, e
    ld c, [hl]
    ld c, e
    ld c, [hl]
    ld c, e
    ld b, $30
    ld d, c
    rst $10
    ld h, d
    ld c, e
    ld l, h
    ld c, e
    ld h, a
    ld c, e
    ld h, a
    ld c, e
    rlca
    ld b, b
    ld d, c
    rst $10
    ld a, e
    ld c, e
    add l
    ld c, e
    add b
    ld c, e
    add b
    ld c, e
    ld [$5130], sp
    rst $10
    sub h
    ld c, e
    sbc [hl]
    ld c, e
    sbc c
    ld c, e
    sbc c
    ld c, e
    add hl, bc
    ld b, b
    ld d, c
    rst $10
    xor l
    ld c, e
    or a
    ld c, e
    or d
    ld c, e
    or d
    ld c, e
    rst $38
    ld [$51fa], sp
    rst $10
    bit 1, a
    jr z, jr_01d_4aa1

jr_01d_4a72:
    bit 0, a
    jr nz, jr_01d_4a7e

    call z, Call_01d_4996
    call $30b6
    jr jr_01d_4acc

jr_01d_4a7e:
    ld a, $01
    ld [$cc3c], a
    ld hl, $4ada
    call $3c49
    call $20ef
    ld a, $32
    ld [$cc4d], a
    ld a, $11
    call $3e6d
    call $2429
    call $3dd7
    call $20d1
    jr jr_01d_4acc

jr_01d_4aa1:
    ld hl, $4acf
    call $3c49
    ld hl, $d72d
    set 6, [hl]
    set 7, [hl]
    ld hl, $4ad4
    ld de, $4ad4
    call $3354
    ldh a, [$8c]
    ld [$cf13], a
    call $336a
    call $32d7
    ld a, $08
    ld [$d05c], a
    ld a, $03
    ld [$d5fb], a

jr_01d_4acc:
    jp $24d7


    rla
    add hl, bc
    ld e, [hl]
    dec h
    ld d, b
    rla
    push de
    ld e, [hl]
    dec h
    dec bc
    ld d, b
    rla
    dec hl
    ld e, a
    dec h
    dec c
    ld d, b
    rla
    call z, $255f
    ld d, b
    rla
    add d
    ld h, b
    dec h
    dec bc
    rla
    sub l
    ld h, b
    dec h
    ld d, b
    rla
    inc b
    ld h, c
    dec h
    ld d, b
    ld [$0921], sp
    ld c, d
    call $31cc
    jp $24d7


    rla
    dec h
    ld h, c
    dec h
    ld d, b
    rla
    ld d, h
    ld h, c
    dec h
    ld d, b
    rla
    ld h, a
    ld h, c
    dec h
    ld d, b
    ld [$1521], sp
    ld c, d
    call $31cc
    jp $24d7


    rla
    sub a
    ld h, c
    dec h
    ld d, b
    rla
    ret nz

    ld h, c
    dec h
    ld d, b
    rla
    ret z

    ld h, c
    dec h
    ld d, b
    ld [$2121], sp
    ld c, d
    call $31cc
    jp $24d7


    rla
    sbc $61
    dec h
    ld d, b
    rla
    dec c
    ld h, d
    dec h
    ld d, b
    rla
    ld a, [hl+]
    ld h, d
    dec h
    ld d, b
    ld [$2d21], sp
    ld c, d
    call $31cc
    jp $24d7


    rla
    ld d, a
    ld h, d
    dec h
    ld d, b
    rla
    add l
    ld h, d
    dec h
    ld d, b
    rla
    adc l
    ld h, d
    dec h
    ld d, b
    ld [$3921], sp
    ld c, d
    call $31cc
    jp $24d7


    rla
    cp b
    ld h, d
    dec h
    ld d, b
    rla
    call c, $2562
    ld d, b
    rla
    db $ed
    ld h, d
    dec h
    ld d, b
    ld [$4521], sp
    ld c, d
    call $31cc
    jp $24d7


    rla
    ld [$2563], sp
    ld d, b
    rla
    ld [hl], $63
    dec h
    ld d, b
    rla
    dec a
    ld h, e
    dec h
    ld d, b
    ld [$5121], sp
    ld c, d
    call $31cc
    jp $24d7


    rla
    ld h, b
    ld h, e
    dec h
    ld d, b
    rla
    adc a
    ld h, e
    dec h
    ld d, b
    rla
    and c
    ld h, e
    dec h
    ld d, b
    ld [$5d21], sp
    ld c, d
    call $31cc
    jp $24d7


    rla
    cp l
    ld h, e
    dec h
    ld d, b
    rla
    inc bc
    ld h, h
    dec h
    ld d, b
    rla
    ld [de], a
    ld h, h
    dec h
    ld d, b
    ld [$51fa], sp
    rst $10
    bit 1, a
    jr nz, jr_01d_4bcc

    ld hl, $4bd5
    call $3c49
    jr jr_01d_4bd2

jr_01d_4bcc:
    ld hl, $4bda
    call $3c49

jr_01d_4bd2:
    jp $24d7


    rla
    ld d, c
    ld h, h
    dec h
    ld d, b
    rla
    ei
    ld h, h
    dec h
    ld d, b
    inc bc
    ld [bc], a
    ld de, $0410
    rst $38
    ld de, $0411
    rst $38
    nop
    dec bc
    rla
    dec b
    ld b, $ff
    ret nc

    ld b, c
    push hl
    inc bc
    rlca
    dec bc
    db $10
    rst $38
    ret nc

    ld b, d
    rst $20
    add hl, bc
    ld c, $0f
    rrca
    rst $38
    pop de
    ld b, e
    ldh [rTMA], a
    ld hl, $0e0b
    rst $38
    ret nc

    ld b, h
    sbc $03
    ld c, $0b
    rlca
    rst $38
    jp nc, $e045

    rlca
    rlca
    add hl, bc
    ld de, $d3ff
    ld b, [hl]
    rst $20
    ld a, [bc]
    ld c, $05
    ld c, $ff
    ret nc

    ld b, a
    ldh [$08], a
    ld hl, $0614
    rst $38
    db $d3
    ld c, b
    sbc $04
    rlca
    add hl, bc
    ld a, [bc]
    rst $38
    ret nc

    ld c, c
    rst $20
    ld bc, $1324
    inc d
    rst $38
    ret nc

    ld a, [bc]
    dec a
    dec c
    inc d
    rst $38
    rst $38
    adc e
    ld c, [hl]
    add c
    rst $00
    ld de, $8110
    rst $00
    ld de, $4446
    ld h, a
    ld b, h
    ld c, b
    ld c, b
    ld c, b
    ld c, b
    ld c, b
    ld c, b
    ld c, b
    inc l
    dec b
    ld b, l
    ld h, h
    ld c, e
    ld d, e
    ld b, [hl]
    ld b, [hl]
    ld b, [hl]
    ld c, h
    ld b, l
    ld b, [hl]
    ld c, [hl]
    ld d, e
    ld d, d
    ld b, [hl]
    ld h, h
    dec b
    ld b, h
    ld c, h
    ld c, e
    dec b
    ld c, a
    ld d, c
    ld b, l
    ld c, b
    ld c, b
    ld e, e
    inc l
    ld c, h
    ld c, e
    ld b, h
    ld c, h
    ld d, e
    ld b, [hl]
    ld h, h
    dec b
    ld c, b
    ld c, l
    ld c, h
    ld c, e
    inc l
    ld d, l
    ld c, h
    ld b, h
    ld c, e
    ld b, h
    ld b, h
    ld b, h
    ld c, h
    ld c, e
    inc l
    ld c, h
    ld b, h
    ld b, h
    ld b, h
    inc l
    inc l
    inc l
    ld d, l
    ld c, e
    ld b, l
    ld b, l
    ld b, l
    ld b, l
    ld b, l
    ld b, l
    ld b, l
    ld h, a
    ld sp, $054b
    dec b
    ld b, [hl]
    ld b, [hl]
    ld b, [hl]
    ld b, [hl]
    ld b, [hl]
    inc b
    dec b
    ld [bc], a
    inc b
    inc b
    db $10
    ld b, b
    or a
    ld c, h
    xor [hl]
    ld c, h
    nop
    db $db
    ld c, h
    call $3c3c
    ld a, $01
    ld [$cf0c], a
    ret


    ld c, c
    inc h
    cp l
    ld c, h
    call z, $084c
    ld hl, $4cc7
    call $3c49
    jp $24d7


    rla
    xor h
    ld b, l
    ld h, $50
    ld [$d621], sp
    ld c, h
    call $3c49
    jp $24d7


    rla
    inc c
    ld b, [hl]
    ld h, $50
    nop
    ld [bc], a
    rlca
    inc bc
    inc b
    rst $38
    rlca
    inc b
    inc b
    rst $38
    nop
    inc bc
    ld h, $09
    inc b
    rst $38
    db $d3
    ld bc, $0704
    rlca
    cp $01
    ld [bc], a
    inc c
    add hl, bc
    add hl, bc
    rst $38
    rst $38
    inc bc
    ld [de], a
    rst $00
    rlca
    inc bc
    inc de
    rst $00
    rlca
    inc b
    ld de, $0f09
    ld [hl], a
    ld c, l
    db $10
    ld c, l
    dec c
    ld c, l
    nop
    ld d, $4d
    jp $3c3c


    db $f4
    inc h
    db $f4
    inc h
    db $f4
    inc h
    ld a, l
    add hl, bc
    ld de, $0618
    rst $38
    ld de, $0619
    rst $38
    ld bc, $001b
    ld [c], a
    rlca
    rla
    ld bc, $09e2
    ld [de], a
    ld [bc], a
    ld [c], a
    ld bc, $0307
    ld [c], a
    inc bc
    ld bc, $e204
    dec bc
    inc bc
    dec b
    ld [c], a
    ld b, $00
    nop
    db $e3
    nop
    inc bc
    dec a
    inc b
    dec c
    rst $38
    rst $38
    add c
    db $10
    dec a
    rlca
    jr @+$01

    rst $38
    add d
    ld d, e
    dec a
    inc b
    add hl, bc
    rst $38
    rst $38
    add e
    ld sp, $c7b2
    ld de, $b218
    rst $00
    ld de, $0b19
    rst $00
    ld bc, $481b
    rst $00
    rlca
    rla
    ld e, e
    rst $00
    add hl, bc
    ld [de], a
    ld bc, $01c7
    rlca
    inc de
    rst $00
    inc bc
    ld bc, $c768
    dec bc
    inc bc
    dec a
    rst $00
    ld b, $0c
    db $76
    db $76
    dec c
    ld b, $0d
    inc b
    inc b
    inc b
    dec c
    inc c
    ld c, $11
    ld b, $0c
    ld c, $62
    ld [hl], h
    db $76
    ld a, [bc]
    dec bc
    ld b, $0c
    ld a, [bc]
    inc b
    rlca
    add hl, bc
    dec c
    ld b, $06
    ld [de], a
    ld a, [bc]
    rrca
    db $76
    db $76
    ld [$0a0d], sp
    inc b
    rlca
    inc b
    rlca
    inc b
    inc b
    ld a, [bc]
    ld c, $23
    ld a, [bc]
    db $76
    db $76
    ld b, $06
    dec c
    inc b
    inc b
    rrca
    inc c
    inc c
    inc b
    ld [$760f], sp
    db $76
    db $76
    db $76
    ld b, $09
    dec c
    inc c
    inc d
    ld a, a
    dec b
    ld b, $01
    dec bc
    ld c, $76
    ld [$0508], sp
    add hl, bc
    rrca
    add hl, bc
    db $76
    ld h, [hl]
    ld e, $0d
    rlca
    ld c, $08
    rrca
    ld [$0e10], sp
    dec bc
    rrca
    dec b
    rlca
    rrca
    ld c, $06
    rlca
    rlca
    rrca
    ld c, $13
    db $10
    ld c, $0f
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec c
    ld b, $07
    ld c, $14
    ld d, $0f
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    rrca
    inc h
    inc e
    ld e, $0d
    inc b
    inc b
    ld c, h
    ld b, b
    inc d
    ld c, [hl]
    ld a, [bc]
    ld c, [hl]
    nop
    cp a
    ld c, [hl]
    ld a, $01
    ld [$cf0c], a
    dec a
    ld [$cc3c], a
    ret


    ld d, $4e
    ld [$7821], sp
    ld c, [hl]
    call $3c49
    xor a
    ld [$cc26], a
    ld [$cc36], a

jr_01d_4e24:
    ld hl, $4e7d
    call $3c49
    ld hl, $4e6e
    call $2a5a
    ld hl, $cf7b
    ld a, l
    ld [$cf8b], a
    ld a, h
    ld [$cf8c], a
    xor a
    ld [$cf93], a
    ld [$cc35], a
    ld a, $04
    ld [$cf94], a
    call $2be6
    jr c, jr_01d_4e61

    ld hl, $4e87
    ld a, [$cf91]
    sub $15
    add a
    ld d, $00
    ld e, a
    add hl, de
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    call $3c49
    jr jr_01d_4e24

jr_01d_4e61:
    xor a
    ld [$cc36], a
    ld hl, $4e82
    call $3c49
    jp $24d7


    ld [$1615], sp
    rla
    jr jr_01d_4e8d

    ld a, [de]
    dec de
    inc e
    rst $38
    rla
    ret


    ld d, b
    ld h, $50
    rla
    ld a, [hl-]
    ld d, c
    ld h, $50
    rla
    ld [hl], b
    ld d, c
    ld h, $50
    sub a
    ld c, [hl]
    sbc h
    ld c, [hl]
    and c
    ld c, [hl]

jr_01d_4e8d:
    and [hl]
    ld c, [hl]
    xor e
    ld c, [hl]
    or b
    ld c, [hl]
    or l
    ld c, [hl]
    cp d
    ld c, [hl]
    rla
    sub d
    ld d, c
    ld h, $50
    rla
    ld a, [c]
    ld d, c
    ld h, $50
    rla
    ld e, l
    ld d, d
    ld h, $50
    rla
    cp b
    ld d, d
    ld h, $50
    rla
    ld a, [hl+]
    ld d, e
    ld h, $50
    rla
    adc b
    ld d, e
    ld h, $50
    rla
    rst $00
    ld d, e
    ld h, $50
    rla
    push af
    ld d, e
    ld h, $50
    inc c
    inc bc
    nop
    ld [bc], a
    add hl, bc
    rst $38
    rlca
    ld [bc], a
    ld [$07ff], sp
    inc bc
    ld [$00ff], sp
    ld bc, $070a
    add hl, bc
    rst $38
    db $d3
    ld bc, $c6f4
    nop
    ld [bc], a
    ld [de], a
    rst $00
    rlca
    ld [bc], a
    ld [de], a
    rst $00
    rlca
    inc bc
    ld hl, $4f9a
    call $3c49
    ld a, $13
    ld [$d125], a
    call $30e8
    xor a
    ld [$cc26], a
    ld [$cc2a], a
    ld a, $03
    ld [$cc29], a
    ld a, $03
    ld [$cc28], a
    ld a, $05
    ld [$cc24], a
    ld a, $01
    ld [$cc25], a
    ld hl, $d730
    set 6, [hl]
    ld hl, $c3dc
    ld b, $08
    ld c, $0c
    call $1922
    call $2429
    ld hl, $c406
    ld de, $4f9f
    call $1955
    ld hl, $c421
    ld de, $4fc4
    call $1955
    ld hl, $d730
    res 6, [hl]
    call $3abe
    bit 1, a
    jr nz, jr_01d_4f94

    ld a, [$cc26]
    cp $03
    jr z, jr_01d_4f94

    xor a
    ldh [$9f], a
    ldh [$a1], a
    ld a, $02
    ldh [$a0], a
    call $35a6
    jr nc, jr_01d_4f55

    ld hl, $4fd4
    jp $3c49


jr_01d_4f55:
    call Call_01d_4fe8
    ldh a, [$db]
    ld b, a
    ld c, $01
    call $3e2e
    jr nc, jr_01d_4f8e

    ld b, $3c

jr_01d_4f64:
    ld c, $02
    call $3739
    push bc
    ld a, $a8
    call $23b1
    pop bc
    dec b
    jr nz, jr_01d_4f64

    ld hl, $4fd9
    call $3c49
    ld hl, $ffde
    ld de, $d349
    ld c, $03
    ld a, $0c
    call $3e6d
    ld a, $13
    ld [$d125], a
    jp $30e8


jr_01d_4f8e:
    ld hl, $4fde
    jp $3c49


jr_01d_4f94:
    ld hl, $4fe3
    jp $3c49


    rla
    ld [hl], d
    ld c, [hl]
    daa
    ld d, b
    add l
    sub c
    add h
    sub d
    add a
    ld a, a
    sub [hl]
    add b
    sub e
    add h
    sub c
    ld c, [hl]
    sub d
    adc [hl]
    add e
    add b
    ld a, a
    adc a
    adc [hl]
    adc a
    ld c, [hl]
    adc e
    add h
    adc h
    adc [hl]
    adc l
    add b
    add e
    add h
    ld c, [hl]
    add d
    add b
    adc l
    add d
    add h
    adc e
    ld d, b
    ldh a, [$f8]
    or $f6
    ld c, [hl]
    ldh a, [$f9]
    or $f6
    ld c, [hl]
    ldh a, [$f9]
    ei
    or $4e
    ld d, b
    rla
    sub [hl]
    ld c, [hl]
    daa
    ld d, b
    rla
    xor a
    ld c, [hl]
    daa
    ld d, b
    rla
    ret nz

    ld c, [hl]
    daa
    ld d, b
    rla
    ldh [$4e], a
    daa
    ld d, b

Call_01d_4fe8:
    ld hl, $5001
    ld a, [$cc26]
    add a
    add a
    ld d, $00
    ld e, a
    add hl, de
    ld a, [hl+]
    ldh [$db], a
    ld a, [hl+]
    ldh [$dc], a
    ld a, [hl+]
    ldh [$dd], a
    ld a, [hl]
    ldh [$de], a
    ret


    inc a
    nop
    ld [bc], a
    nop
    dec a
    nop
    inc bc
    nop
    ld a, $00
    inc bc
    ld d, b
    ld [$0404], sp
    jr nz, jr_01d_5052

    dec e
    ld d, b
    add hl, de
    ld d, b
    nop
    ld [hl-], a
    ld d, b
    call $3c3c
    ret


    inc hl
    ld d, b
    jr z, jr_01d_5071

    dec l
    ld d, b
    rla
    and e
    ld h, d
    daa
    ld d, b
    rla
    di
    ld h, d
    daa
    ld d, b
    rla
    ld c, l
    ld h, e
    daa
    ld d, b
    ld a, [bc]
    ld [bc], a
    rlca
    ld [bc], a
    ld bc, $07ff
    inc bc
    ld bc, $00ff
    inc bc
    inc e
    rlca
    ld b, $ff
    db $d3
    ld bc, $060b
    dec bc
    rst $38
    pop de
    ld [bc], a
    inc b
    add hl, bc
    add hl, bc
    rst $38
    rst $38
    inc bc
    ld [de], a
    rst $00

jr_01d_5052:
    rlca
    ld [bc], a
    ld [de], a
    rst $00
    rlca
    inc bc
    ld b, $04
    rlca
    jr nc, jr_01d_509d

    ld l, d
    ld d, b
    ld h, h
    ld d, b
    nop
    ld a, [hl]
    ld d, b
    call $22fa
    jp $3c3c


    ld [hl], d
    ld d, b
    ld [hl], e
    ld d, b
    ld a, b
    ld d, b
    ld a, l

jr_01d_5071:
    ld d, b
    rst $38
    rla
    add a
    ld h, e
    daa
    ld d, b
    rla
    sbc $63
    daa
    ld d, b
    or $00
    ld [bc], a
    rlca
    inc bc
    ld [bc], a
    rst $38
    rlca
    inc b
    ld [bc], a
    rst $38
    nop
    inc b
    add hl, hl
    dec b
    rlca
    rst $38
    ret nc

    ld bc, $0721
    ld b, $ff
    rst $38
    ld [bc], a
    ld b, $09
    ld a, [bc]
    cp $02
    inc bc
    ld a, [hl+]

jr_01d_509d:
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
    inc d
    inc b
    dec b
    xor [hl]
    ld d, c
    cp c
    ld d, b
    or [hl]
    ld d, b
    nop
    add c
    ld d, c
    jp $3c3c


    jp $f450


    inc h
    push hl
    inc h
    ld h, h
    ld d, c
    ld h, h
    ld d, c
    ld [$8efa], sp
    rst $10
    bit 0, a
    jr nz, jr_01d_5125

    ld b, $40
    call $3493
    jr nz, jr_01d_50f3

    ld a, [$d78e]
    bit 1, a
    jr nz, jr_01d_510a

    ld hl, $5136
    call $3c49
    call $35ec
    ld a, [$cc26]
    and a
    ld hl, $5140
    jr nz, jr_01d_50ee

    ld hl, $513b

jr_01d_50ee:
    call $3c49
    jr jr_01d_5133

jr_01d_50f3:
    ld hl, $5145
    call $3c49
    ld a, $40
    ldh [$db], a
    ld b, $05
    ld hl, $7f37
    call $35d6
    ld hl, $d78e
    set 1, [hl]

jr_01d_510a:
    ld hl, $514f
    call $3c49
    ld bc, $c701
    call $3e2e
    jr nc, jr_01d_512d

    ld hl, $5154
    call $3c49
    ld hl, $d78e
    set 0, [hl]
    jr jr_01d_5133

jr_01d_5125:
    ld hl, $515a
    call $3c49
    jr jr_01d_5133

jr_01d_512d:
    ld hl, $515f
    call $3c49

jr_01d_5133:
    jp $24d7


    rla
    ld b, h
    ld h, h
    daa
    ld d, b
    rla
    adc e
    ld h, h
    daa
    ld d, b
    rla
    or b
    ld h, h
    daa
    ld d, b
    rla
    jp nc, $2764

    dec bc
    rla
    ld sp, hl
    ld h, h
    daa
    ld d, b
    rla
    dec de
    ld h, l
    daa
    ld d, b
    rla
    and d
    ld h, l
    daa
    dec bc
    ld d, b
    rla
    or [hl]
    ld h, l
    daa
    ld d, b
    rla
    ld a, d
    ld h, [hl]
    daa
    ld d, b
    ld [$8cf0], sp
    cp $04
    ld hl, $517c
    jr nz, jr_01d_5171

    ld hl, $5177

jr_01d_5171:
    call $3c49
    jp $24d7


    rla
    sub [hl]
    ld h, [hl]
    daa
    ld d, b
    rla
    or b
    ld h, [hl]
    daa
    ld d, b
    rla
    ld [bc], a
    rlca
    inc b
    inc bc
    rst $38
    rlca
    dec b
    inc bc
    rst $38
    ld [bc], a
    inc bc
    inc b
    inc b
    inc bc
    dec b
    dec b
    inc bc
    dec l
    rlca
    ld b, $ff
    rst $38
    ld bc, $073d
    inc c
    rst $38
    rst $38
    add d
    jr z, jr_01d_51e0

    ld [$ff0c], sp
    db $10
    inc bc
    rla
    rst $00
    rlca
    inc b
    rla
    rst $00
    rlca
    dec b
    ld bc, $0101
    ld bc, $2901
    rlca
    jr nz, jr_01d_51d4

    ld e, $07
    rlca
    rlca
    rlca
    rlca
    dec c
    rlca
    inc c
    rlca
    ld c, $0c
    inc bc
    inc b
    ld h, $54
    cp d
    ld d, d
    adc $51
    nop
    or $53
    call $3c3c
    ld hl, $51da

jr_01d_51d4:
    ld a, [$d61f]
    jp $3d97


    add sp, $51
    daa
    ld d, d
    dec hl
    ld d, d

jr_01d_51e0:
    ld b, c
    ld d, d
    adc b
    ld d, d
    ld c, a
    ld d, d
    sub [hl]
    ld d, d
    ld hl, $5222
    call $34bf
    ret nc

    ld a, $03
    ldh [$8c], a
    call $2920
    ld a, $ff
    ld [$cd6b], a
    xor a
    ldh [$b4], a
    ld a, $0c
    ld [$c109], a
    ld a, [$cd3d]
    cp $01
    jr z, jr_01d_5210

    ld a, $02
    ld [$d61f], a
    ret


jr_01d_5210:
    ld a, $10
    ld c, $01
    call Call_01d_52a4
    ld a, $f0
    ld [$cd6b], a
    ld a, $01
    ld [$d61f], a
    ret


    ld [bc], a
    inc bc
    ld [bc], a
    inc b
    rst $38
    call Call_01d_52b5
    ret nz

    xor a
    ldh [$b4], a
    ld [$cd6b], a
    call $2429
    ld a, $04
    ldh [$8c], a
    call $2920
    ld a, $ff
    ld [$cd6b], a
    ret


    call Call_01d_52b5
    ret nz

    xor a
    ld [$cd6b], a
    ld a, $05
    ld [$d61f], a
    ret


    ld a, $04
    ld [$d528], a
    ld hl, $d790
    bit 6, [hl]
    res 6, [hl]
    jr z, jr_01d_5280

    res 7, [hl]
    call $2429
    ld a, $f0
    ld [$cd6b], a
    ld a, $06
    ldh [$8c], a
    call $2920
    xor a
    ld [$da47], a
    ld a, $80
    ld c, $03
    call Call_01d_52a4
    ld a, $04
    ld [$d61f], a
    jr jr_01d_5287

jr_01d_5280:
    ld a, $05
    ldh [$8c], a
    call $2920

jr_01d_5287:
    ret


    call Call_01d_52b5
    ret nz

    xor a
    ld [$cd6b], a
    ld a, $00
    ld [$d61f], a
    ret


    call Call_01d_52b5
    ret nz

    call $3dd7
    ld a, [$cf0d]
    ld [$d61f], a
    ret


Call_01d_52a4:
    push af
    ld b, $00
    ld a, c
    ld [$cd38], a
    ld hl, $ccd3
    pop af
    call $36e0
    jp $3486


Call_01d_52b5:
    ld a, [$cd38]
    and a
    ret


    add $52
    bit 2, e
    add $52
    bit 2, d
    ld [hl], b
    ld d, e
    add $53
    rla
    rst $00
    ld h, [hl]
    daa
    ld d, b
    rla
    db $e4
    ld h, [hl]
    daa
    ld [$133e], sp
    ld [$d125], a
    call $30e8
    call $35ec
    ld a, [$cc26]
    and a
    jp nz, Jump_01d_5347

    xor a
    ldh [$9f], a
    ld a, $05
    ldh [$a0], a
    ld a, $00
    ldh [$a1], a
    call $35a6
    jr nc, jr_01d_52fa

    ld hl, $536b
    call $3c49
    jr jr_01d_534d

jr_01d_52fa:
    xor a
    ld [$cd3d], a
    ld a, $05
    ld [$cd3e], a
    ld a, $00
    ld [$cd3f], a
    ld hl, $cd3f
    ld de, $d349
    ld c, $03
    ld a, $0c
    call $3e6d
    ld a, $13
    ld [$d125], a
    call $30e8
    ld hl, $535c
    call $3c49
    ld a, $1e
    ld [$da47], a
    ld a, $01
    ld [$d70d], a
    ld a, $f6
    ld [$d70e], a
    ld a, $40
    ld c, $03
    call Call_01d_52a4
    ld hl, $d790
    set 7, [hl]
    res 6, [hl]
    ld a, $03
    ld [$d61f], a
    jr jr_01d_5359

Jump_01d_5347:
    ld hl, $5366
    call $3c49

jr_01d_534d:
    ld a, $80
    ld c, $01
    call Call_01d_52a4
    ld a, $04
    ld [$d61f], a

jr_01d_5359:
    jp $24d7


    rla
    ld b, a
    ld h, a
    daa
    dec bc
    rla
    sbc a
    ld h, a
    daa
    ld d, b
    rla
    db $e3
    ld h, a
    daa
    ld d, b
    rla
    ei
    ld h, a
    daa
    ld d, b
    rla
    inc d
    ld l, b
    daa
    ld [$eccd], sp
    dec [hl]
    ld a, [$cc26]
    and a
    jr nz, jr_01d_539d

    ld hl, $53bc
    call $3c49
    xor a
    ld [$c109], a
    ld a, $80
    ld c, $03
    call Call_01d_52a4
    ld hl, $d790
    res 6, [hl]
    res 7, [hl]
    ld a, $00
    ld [$cf0d], a
    jr jr_01d_53b4

jr_01d_539d:
    ld hl, $53c1
    call $3c49
    ld a, $04
    ld [$c109], a
    ld a, $40
    ld c, $01
    call Call_01d_52a4
    ld a, $05
    ld [$cf0d], a

jr_01d_53b4:
    ld a, $06
    ld [$d61f], a
    jp $24d7


    rla
    dec h
    ld l, b
    daa
    ld d, b
    rla
    ld d, h
    ld l, b
    daa
    ld d, b
    rla
    ld h, b
    ld l, b
    daa
    ld d, b
    ld [$e721], sp
    ld d, e
    call $3c49
    call $35ec
    ld a, [$cc26]
    and a
    ld hl, $53f1
    jr nz, jr_01d_53e1

    ld hl, $53ec

jr_01d_53e1:
    call $3c49
    jp $24d7


    rla
    add [hl]
    ld l, b
    daa
    ld d, b
    rla
    and a
    ld l, b
    daa
    ld d, b
    rla
    sub e
    ld l, c
    daa
    ld d, b
    ld a, [bc]
    inc b
    dec b
    inc bc
    inc b
    rst $38
    dec b
    inc b
    inc b
    rst $38
    nop
    inc bc
    nop
    call c, $0400
    ld bc, $00dc
    ld [bc], a
    inc hl
    ld b, $0a
    rst $38
    jp nc, $2301

    ld [$ff05], sp
    db $d3
    ld [bc], a
    ld [$05c7], sp
    inc bc
    add hl, bc
    rst $00
    dec b
    inc b
    db $f4
    add $00
    inc bc
    push af
    add $00
    inc b
    ld d, $6b
    ld l, d
    rla
    ld [bc], a
    add hl, bc
    ld [$1801], sp
    ld l, h
    ld l, c
    add hl, de
    rlca
    add hl, bc
    dec b
    xor e
    ld d, [hl]
    sub $54
    ld a, $54
    nop
    ld e, c
    ld d, [hl]
    call Call_01d_5454
    call $3c3c
    ld hl, $54ec
    ld de, $5483
    ld a, [$d65b]
    call $3160
    ld [$d65b], a
    ret


Call_01d_5454:
    ld hl, $d126
    bit 6, [hl]
    res 6, [hl]
    ret z

    ld hl, $5466
    ld de, $5473
    call $317f
    ret


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
    ld d, b
    adc d
    adc [hl]
    add [hl]
    add b
    ld d, b

Jump_01d_5478:
    xor a
    ld [$cd6b], a
    ld [$d65b], a
    ld [$da39], a
    ret


    add hl, de
    ld [hl-], a
    ld c, h
    ld [hl-], a
    ld [hl], l
    ld [hl-], a
    adc e
    ld d, h
    ld a, [$d057]
    cp $ff
    jp z, Jump_01d_5478

    ld a, $f0
    ld [$cd6b], a

Call_01d_5498:
    ld a, $09
    ldh [$8c], a
    call $2920
    ld hl, $d792
    set 1, [hl]
    ld bc, $ce01
    call $3e2e
    jr nc, jr_01d_54ba

    ld a, $0a
    ldh [$8c], a
    call $2920
    ld hl, $d792
    set 0, [hl]
    jr jr_01d_54c1

jr_01d_54ba:
    ld a, $0b
    ldh [$8c], a
    call $2920

jr_01d_54c1:
    ld hl, $d356
    set 4, [hl]
    ld hl, $d72a
    set 4, [hl]
    ld a, [$d792]
    or $fc
    ld [$d792], a
    jp Jump_01d_5478


    dec [hl]
    ld d, l
    and l
    ld d, l
    cp [hl]
    ld d, l
    rst $10
    ld d, l
    ldh a, [rHDMA5]
    add hl, bc
    ld d, [hl]
    ld [hl+], a
    ld d, [hl]
    dec sp
    ld d, [hl]
    sub c
    ld d, l
    sub [hl]
    ld d, l
    and b
    ld d, l
    ld [bc], a
    jr nz, @-$6c

    rst $10
    xor a
    ld d, l
    cp c
    ld d, l
    or h
    ld d, l
    or h
    ld d, l
    inc bc
    jr nz, @-$6c

    rst $10
    ret z

    ld d, l
    jp nc, $cd55

    ld d, l
    call $0455
    ld b, b
    sub d
    rst $10
    pop hl
    ld d, l
    db $eb
    ld d, l
    and $55
    and $55
    dec b
    jr nz, @-$6c

    rst $10
    ld a, [$0455]
    ld d, [hl]
    rst $38
    ld d, l
    rst $38
    ld d, l
    ld b, $20
    sub d
    rst $10
    inc de
    ld d, [hl]
    dec e
    ld d, [hl]
    jr jr_01d_557c

    jr @+$58

    rlca
    jr nz, @-$6c

    rst $10
    inc l
    ld d, [hl]
    ld [hl], $56
    ld sp, $3156
    ld d, [hl]
    rst $38
    ld [$92fa], sp
    rst $10
    bit 1, a
    jr z, jr_01d_5551

    bit 0, a
    jr nz, jr_01d_5549

    call z, Call_01d_5498
    call $30b6
    jr jr_01d_557f

jr_01d_5549:
    ld hl, $558c
    call $3c49
    jr jr_01d_557f

jr_01d_5551:
    ld hl, $5582
    call $3c49
    ld hl, $d72d
    set 6, [hl]
    set 7, [hl]
    ld hl, $5587
    ld de, $5587
    call $3354
    ldh a, [$8c]
    ld [$cf13], a
    call $336a
    call $32d7
    ld a, $05
    ld [$d05c], a
    xor a
    ldh [$b4], a
    ld a, $03

jr_01d_557c:
    ld [$d65b], a

jr_01d_557f:
    jp $24d7


    rla
    or c
    ld l, c
    daa
    ld d, b
    rla
    ld h, [hl]
    ld l, d
    daa
    ld d, b
    rla
    nop
    ld b, b
    jr z, jr_01d_55e1

    rla
    ld l, c
    ld b, b
    jr z, jr_01d_55e6

    rla
    db $eb
    ld b, b
    jr z, jr_01d_55ac

    rla
    rst $38
    ld b, b
    jr z, jr_01d_55f0

    rla
    ld b, e
    ld b, c
    jr z, @+$52

    ld [$ec21], sp
    ld d, h
    call $31cc

jr_01d_55ac:
    jp $24d7


    rla
    ld h, b
    ld b, c
    jr z, jr_01d_5604

    rla
    jp nz, $2841

    ld d, b
    rla
    ret c

    ld b, c
    jr z, @+$52

    ld [$f821], sp
    ld d, h
    call $31cc
    jp $24d7


    rla
    rlca
    ld b, d
    jr z, jr_01d_561d

    rla
    ld a, [hl-]
    ld b, d
    jr z, jr_01d_5622

    rla
    ld c, b
    ld b, d
    jr z, @+$52

    ld [$0421], sp
    ld d, l
    call $31cc
    jp $24d7


jr_01d_55e1:
    rla
    ld a, [hl]
    ld b, d
    jr z, jr_01d_5636

jr_01d_55e6:
    rla
    xor b
    ld b, d
    jr z, jr_01d_563b

    rla
    cp h
    ld b, d
    jr z, @+$52

jr_01d_55f0:
    ld [$1021], sp
    ld d, l
    call $31cc
    jp $24d7


    rla
    cp $42
    jr z, jr_01d_564f

    rla
    ld a, [hl-]
    ld b, e
    jr z, jr_01d_5654

jr_01d_5604:
    rla
    ld c, l
    ld b, e
    jr z, jr_01d_5659

    ld [$1c21], sp
    ld d, l
    call $31cc
    jp $24d7


    rla
    and c
    ld b, e
    jr z, @+$52

    rla
    ld [bc], a
    ld b, h
    jr z, jr_01d_566d

jr_01d_561d:
    rla
    add hl, bc
    ld b, h
    jr z, @+$52

jr_01d_5622:
    ld [$2821], sp
    ld d, l
    call $31cc
    jp $24d7


    rla
    ld h, $44
    jr z, jr_01d_5681

    rla
    ld [hl], b
    ld b, h
    jr z, @+$52

jr_01d_5636:
    rla
    add e
    ld b, h
    jr z, jr_01d_568b

jr_01d_563b:
    ld [$92fa], sp
    rst $10
    bit 1, a
    ld hl, $5654
    jr nz, jr_01d_5649

    ld hl, $564f

jr_01d_5649:
    call $3c49
    jp $24d7


jr_01d_564f:
    rla
    jp nc, $2844

    ld d, b

jr_01d_5654:
    rla
    ld [hl], h
    ld b, l
    jr z, jr_01d_56a9

jr_01d_5659:
    inc bc
    ld [bc], a
    ld de, $0504
    rst $38
    ld de, $0505
    rst $38
    nop
    ld [$0e30], sp
    ld [$d0ff], sp
    ld b, c
    xor $01

jr_01d_566d:
    ld hl, $0d11
    rst $38
    jp nc, $dd42

    rlca
    ld hl, $0b0c
    rst $38
    db $d3
    ld b, e
    db $dd
    inc bc
    ld hl, $0510
    rst $38

jr_01d_5681:
    ret nc

    ld b, h
    db $dd
    ld [$0921], sp
    rlca
    rst $38
    pop de
    ld b, l

jr_01d_568b:
    sbc $01
    ld hl, $0c06
    rst $38
    ret nc

    ld b, [hl]
    sbc $02
    ld hl, $060b
    rst $38
    jp nc, $dd47

    inc b
    inc h
    inc de
    dec bc
    rst $38
    ret nc

    ld [$c74e], sp
    ld de, $4e04
    rst $00

jr_01d_56a9:
    ld de, $2f05
    ld l, $2e
    jr nc, jr_01d_56b5

    ld l, $2e
    jr nc, jr_01d_56b9

    dec b

jr_01d_56b5:
    dec l
    dec b
    ld l, $2d

jr_01d_56b9:
    cpl
    cpl
    dec l
    dec b
    cpl
    dec b
    dec b
    cpl
    cpl
    dec b
    jr nc, @+$32

    cpl
    jr nc, @+$31

    cpl
    dec b
    dec l
    dec l
    dec l
    dec l
    ld l, $32
    ld l, $31
    jr nc, jr_01d_56d9

    cpl
    dec b
    ld l, $05
    inc d

jr_01d_56d9:
    inc b
    rlca
    inc hl
    ld d, a
    add sp, $56
    db $e4
    ld d, [hl]
    nop
    db $fd
    ld d, [hl]
    call $3c3c
    ret


    xor $56
    di
    ld d, [hl]
    ld hl, sp+$56
    rla
    and c
    ld b, l
    jr z, jr_01d_5743

    rla
    and $45
    jr z, jr_01d_5748

    rla
    ld b, d
    ld b, [hl]
    jr z, jr_01d_574d

    rla
    ld [bc], a
    rlca
    inc b
    ld b, $ff
    rlca
    dec b
    ld b, $ff
    nop
    inc bc
    inc hl
    dec b
    ld [$d0ff], sp
    ld bc, $0623
    inc b
    rst $38
    pop de
    ld [bc], a
    inc hl
    dec b
    ld c, $ff
    ret nc

    inc bc
    rra
    rst $00
    rlca
    inc b
    rra
    rst $00
    rlca
    dec b
    ld b, $06
    ld bc, $0103
    dec [hl]
    ld bc, $0707
    jr c, @+$3b

    rlca
    rrca
    rlca
    inc [hl]
    rlca
    ld [hl], $37
    scf
    scf
    scf
    dec c
    rlca
    inc c
    rlca
    rlca
    rlca
    ld c, $16
    add hl, bc
    ld a, [bc]
    daa

jr_01d_5743:
    ld e, e
    and b
    ld e, b
    ld c, e
    ld d, a

jr_01d_5748:
    nop
    call $cd5a
    ld e, d

jr_01d_574d:
    ld d, a
    call $3c3c
    ld hl, $57a7
    ld a, [$d65e]
    jp $3d97


    ld hl, $d126
    bit 6, [hl]
    res 6, [hl]
    push hl
    call nz, Call_01d_5773
    pop hl
    bit 5, [hl]
    res 5, [hl]
    call nz, $3ead
    ld hl, $d79b
    res 7, [hl]
    ret


Call_01d_5773:
    ld hl, $577c
    ld de, $578c
    jp $317f


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
    ld d, b
    add c
    adc e
    add b
    adc b
    adc l
    add h
    ld d, b

Jump_01d_5793:
    xor a
    ld [$cd6b], a
    ld [$d65e], a
    ld [$da39], a
    ld [$da38], a
    ret


    ldh a, [$8c]
    ld [$cc55], a
    ret


    xor a
    ld d, a
    db $dd
    ld d, a
    rst $30
    ld d, a
    ld c, e
    ld e, b
    ld a, [$da38]
    and a
    ret z

    ldh [$8c], a
    cp $04
    jr nz, jr_01d_57c4

    ld a, $04
    ld [$d528], a
    ld de, $57d8
    jr jr_01d_57cc

jr_01d_57c4:
    ld de, $57db
    ld a, $01
    ld [$d528], a

jr_01d_57cc:
    call $363a
    ld a, $01
    ld [$d65e], a
    ld [$da39], a
    ret


    add b
    ld b, b
    rst $38
    add b
    rst $38
    ld a, [$d730]
    bit 0, a
    ret nz

    xor a
    ld [$cd6b], a
    ld a, [$da38]
    ld [$cc55], a
    ldh [$8c], a
    jp $2920


Call_01d_57f2:
    ld a, $10
    jp $3e6d


    ld a, [$d057]
    cp $ff
    jp z, Jump_01d_5793

    ld a, [$cc55]
    ldh [$db], a
    ld c, a
    ld b, $02
    ld hl, $d79a
    call Call_01d_57f2
    ld a, c
    and a
    jr nz, jr_01d_581c

    call $3748
    ld a, $ad
    call $23b1
    call $3748

jr_01d_581c:
    ld a, [$cc55]
    ldh [$db], a
    ld c, a
    ld b, $01
    ld hl, $d79a
    call Call_01d_57f2
    ld a, [$cc55]
    sub $02
    ld c, a
    ld b, $01
    ld hl, $d79c
    call Call_01d_57f2
    call $3ead
    xor a
    ld [$cd6b], a
    ld [$da38], a
    ld a, $00
    ld [$d65e], a
    ld [$da39], a
    ret


    ld a, [$d057]
    cp $ff
    jp z, Jump_01d_5793

    ld a, $f0
    ld [$cd6b], a

Call_01d_5858:
    ld a, $0a
    ldh [$8c], a
    call $2920
    ld hl, $d79a
    set 1, [hl]
    ld bc, $ee01
    call $3e2e
    jr nc, jr_01d_587a

    ld a, $0b
    ldh [$8c], a
    call $2920
    ld hl, $d79a
    set 0, [hl]
    jr jr_01d_5881

jr_01d_587a:
    ld a, $0c
    ldh [$8c], a
    call $2920

jr_01d_5881:
    ld hl, $d356
    set 6, [hl]
    ld hl, $d72a
    set 6, [hl]
    ld a, [$d79a]
    or $fc
    ld [$d79a], a
    ld hl, $d79b
    set 0, [hl]
    ld hl, $d126
    set 5, [hl]
    jp Jump_01d_5793


    ldh [$58], a
    ld a, [hl-]
    ld e, c
    ld l, a
    ld e, c
    and h
    ld e, c
    reti


    ld e, c
    ld c, $5a
    ld b, e
    ld e, d
    ld a, b
    ld e, d
    xor l
    ld e, d
    ld h, $59
    dec hl
    ld e, c
    dec [hl]
    ld e, c

Jump_01d_58b8:
    ldh a, [$8c]
    ld [$cf13], a
    call $336a
    call $32d7
    ld hl, $d72d
    set 6, [hl]
    set 7, [hl]
    ld a, [$cf13]
    cp $01
    jr z, jr_01d_58d5

    ld a, $02
    jr jr_01d_58d7

jr_01d_58d5:
    ld a, $03

jr_01d_58d7:
    ld [$d65e], a
    ld [$da39], a
    jp $24d7


    ld [$9afa], sp
    rst $10
    bit 1, a
    jr z, jr_01d_58fe

    bit 0, a
    jr nz, jr_01d_58f5

    call z, Call_01d_5858
    call $30b6
    jp $24d7


jr_01d_58f5:
    ld hl, $5921
    call $3c49
    jp $24d7


jr_01d_58fe:
    ld hl, $5915
    call $3c49
    ld hl, $591a
    ld de, $591a
    call $3354
    ld a, $07
    ld [$d05c], a
    jp Jump_01d_58b8


    rla
    ld b, h
    ld c, b
    jr z, jr_01d_596a

    rla
    rst $00
    ld c, b
    jr z, jr_01d_5930

    dec c
    ld d, b
    rla
    db $fd
    ld c, b
    jr z, jr_01d_5976

    rla
    ld b, [hl]
    ld c, c
    jr z, @+$52

    rla
    xor b
    ld c, c
    jr z, @+$0d

jr_01d_5930:
    rla
    cp h
    ld c, c
    jr z, @+$52

    rla
    ld e, $4a
    jr z, @+$52

    ld [$a1cd], sp
    ld d, a
    ld a, [$d79a]
    bit 2, a
    jr nz, jr_01d_5957

    ld hl, $5960
    call $3c49
    ld hl, $5965
    ld de, $5965
    call $3354
    jp Jump_01d_58b8


jr_01d_5957:
    ld hl, $596a
    call $3c49
    jp $24d7


    rla
    ld [hl], $4a
    jr z, jr_01d_59b5

    rla
    ld h, l
    ld c, d
    jr z, @+$52

jr_01d_596a:
    rla
    ld a, d
    ld c, d
    jr z, @+$52

    ld [$a1cd], sp
    ld d, a
    ld a, [$d79a]

jr_01d_5976:
    bit 3, a
    jr nz, jr_01d_598c

    ld hl, $5995
    call $3c49
    ld hl, $599a
    ld de, $599a
    call $3354
    jp Jump_01d_58b8


jr_01d_598c:
    ld hl, $599f
    call $3c49
    jp $24d7


    rla
    ret nz

    ld c, d
    jr z, jr_01d_59ea

    rla
    db $f4
    ld c, d
    jr z, @+$52

    rla
    ld [bc], a
    ld c, e
    jr z, @+$52

    ld [$a1cd], sp
    ld d, a
    ld a, [$d79a]
    bit 4, a
    jr nz, jr_01d_59c1

    ld hl, $59ca
    call $3c49

jr_01d_59b5:
    ld hl, $59cf
    ld de, $59cf
    call $3354
    jp Jump_01d_58b8


jr_01d_59c1:
    ld hl, $59d4
    call $3c49
    jp $24d7


    rla
    inc l
    ld c, e
    jr z, jr_01d_5a1f

    rla
    ld e, b
    ld c, e
    jr z, @+$52

    rla
    ld l, e
    ld c, e
    jr z, @+$52

    ld [$a1cd], sp
    ld d, a
    ld a, [$d79a]
    bit 5, a
    jr nz, jr_01d_59f6

    ld hl, $59ff
    call $3c49

jr_01d_59ea:
    ld hl, $5a04
    ld de, $5a04
    call $3354
    jp Jump_01d_58b8


jr_01d_59f6:
    ld hl, $5a09
    call $3c49
    jp $24d7


    rla
    sub l
    ld c, e
    jr z, jr_01d_5a54

    rla
    or e
    ld c, e
    jr z, @+$52

    rla
    rst $00
    ld c, e
    jr z, @+$52

    ld [$a1cd], sp
    ld d, a
    ld a, [$d79a]
    bit 6, a
    jr nz, jr_01d_5a2b

    ld hl, $5a34
    call $3c49

jr_01d_5a1f:
    ld hl, $5a39
    ld de, $5a39
    call $3354
    jp Jump_01d_58b8


jr_01d_5a2b:
    ld hl, $5a3e
    call $3c49
    jp $24d7


    rla
    db $f4
    ld c, e
    jr z, jr_01d_5a89

    rla
    add hl, de
    ld c, h
    jr z, @+$52

    rla
    ld e, $4c
    jr z, @+$52

    ld [$a1cd], sp
    ld d, a
    ld a, [$d79a]
    bit 7, a
    jr nz, jr_01d_5a60

    ld hl, $5a69
    call $3c49

jr_01d_5a54:
    ld hl, $5a6e
    ld de, $5a6e
    call $3354
    jp Jump_01d_58b8


jr_01d_5a60:
    ld hl, $5a73
    call $3c49
    jp $24d7


    rla
    sub b
    ld c, h
    jr z, @+$52

    rla
    pop bc
    ld c, h
    jr z, jr_01d_5ac3

    rla
    jp nc, $284c

    ld d, b
    ld [$a1cd], sp
    ld d, a
    ld a, [$d79b]
    bit 0, a
    jr nz, jr_01d_5a95

    ld hl, $5a9e
    call $3c49

jr_01d_5a89:
    ld hl, $5aa3
    ld de, $5aa3
    call $3354
    jp Jump_01d_58b8


jr_01d_5a95:
    ld hl, $5aa8
    call $3c49
    jp $24d7


    rla
    nop
    ld c, l
    jr z, @+$52

    rla
    dec de
    ld c, l
    jr z, jr_01d_5af8

    rla
    dec l
    ld c, l
    jr z, jr_01d_5afd

    ld [$9afa], sp
    rst $10
    bit 1, a
    jr nz, jr_01d_5aba

    ld hl, $5ac3
    jr jr_01d_5abd

jr_01d_5aba:
    ld hl, $5ac8

jr_01d_5abd:
    call $3c49
    jp $24d7


jr_01d_5ac3:
    rla
    ld e, d
    ld c, l
    jr z, jr_01d_5b18

    rla
    reti


    ld c, l
    jr z, jr_01d_5b1d

    ld l, $02
    ld de, $0110
    rst $38
    ld de, $0111
    rst $38
    nop
    add hl, bc
    ld a, [bc]
    rlca
    rlca
    rst $38
    ret nc

    ld b, c
    rst $28
    ld bc, $1124
    inc d
    rst $38
    ret nc

    ld b, d
    ret nc

    add hl, bc
    inc c
    inc c
    dec d
    rst $38
    ret nc

    ld b, e
    db $d3
    inc b
    inc c
    ld [$ff0f], sp
    ret nc

    ld b, h
    ret nc

jr_01d_5af8:
    ld a, [bc]
    inc c
    inc c
    rrca
    rst $38

jr_01d_5afd:
    ret nc

    ld b, l
    db $d3
    dec b
    inc c
    ld [de], a
    rrca
    rst $38
    ret nc

    ld b, [hl]
    ret nc

    dec bc
    inc c
    ld [de], a
    rlca
    rst $38
    ret nc

    ld b, a
    db $d3
    ld b, $0c
    inc c
    rlca
    rst $38
    ret nc

    ld c, b
    ret nc

jr_01d_5b18:
    inc c
    inc h
    ld b, $15
    rst $38

jr_01d_5b1d:
    ret nc

    add hl, bc
    add c
    rst $00
    ld de, $8110
    rst $00
    ld de, $4011
    ld h, c
    ld h, c
    ld b, b
    ld b, b
    ld h, c
    ld b, c
    ld b, c
    ld b, c
    ld b, c
    ld b, h
    ld c, $0e
    ld b, h
    ld b, h
    ld c, $0e
    ld e, c
    ld c, $0e
    ld b, h
    ld c, $0e
    ld b, h
    ld b, h
    ld c, $0e
    ld b, h
    ld c, $0e
    ld l, e
    ld h, e
    ld c, $44
    ld l, e
    ld h, e
    ld c, $6b
    ld h, e
    ld c, $44
    ld c, $0e
    ld b, h
    ld b, h
    ld c, $0e
    ld b, h
    ld c, $0e
    ld b, h
    ld c, $0e
    ld b, h
    ld b, h
    ld c, $0e
    ld d, b
    ld e, b
    ld c, $6b
    ld h, e
    ld c, $44
    ld l, e
    ld h, e
    ld c, $44
    ld b, l
    ld c, $44
    ld c, $0e
    ld c, b
    ld d, l
    ld c, $0e
    ld b, h
    ld c, $0e
    ld b, h
    ld c, $0e
    ld c, $0e
    ld c, $0e
    ld b, h
    inc l
    ld c, $14
    inc b
    add hl, bc
    ld a, [c]
    ld e, e
    sub c
    ld e, e
    adc l
    ld e, e
    nop
    or h
    ld e, e
    call $3c3c
    ret


    sbc e
    ld e, e
    and b
    ld e, e
    and l
    ld e, e
    xor d
    ld e, e
    xor a
    ld e, e
    rla
    rst $30
    ld c, l
    jr z, jr_01d_5bf0

    rla
    ld c, c
    ld c, [hl]
    jr z, jr_01d_5bf5

    rla
    ld [hl], b
    ld c, [hl]
    jr z, jr_01d_5bfa

    rla
    add a
    ld c, [hl]
    jr z, jr_01d_5bff

    rla
    sbc [hl]
    ld c, [hl]
    jr z, jr_01d_5c04

    rla
    dec b
    rlca
    ld [bc], a
    ld [bc], a
    rst $38
    rlca
    inc bc
    ld [bc], a
    rst $38
    inc b
    ld [$a800], sp
    inc b
    inc c
    nop
    xor c
    inc b
    stop
    xor d
    inc b
    ld [bc], a
    inc bc
    ld [bc], a
    inc b
    add hl, bc
    inc bc
    inc b
    dec c
    inc b
    inc b
    ld de, $0105
    daa
    rlca
    dec b
    rst $38
    rst $38
    ld bc, $c726
    rlca
    ld [bc], a
    ld h, $c7
    rlca
    inc bc
    ld a, [de]
    rst $00
    inc b
    ld [$c71c], sp
    inc b
    inc c
    ld e, $c7

jr_01d_5bf0:
    inc b
    db $10
    rla
    rla
    rla

jr_01d_5bf5:
    rla
    rla
    rla
    rla
    rla

jr_01d_5bfa:
    rla
    add hl, bc
    inc bc
    ld a, [bc]
    rla

jr_01d_5bff:
    rla
    rla
    rla
    rla
    rla

jr_01d_5c04:
    rlca
    rlca
    rlca
    add hl, de
    jr @+$03

    jr @+$03

    jr jr_01d_5c15

    inc c
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca

jr_01d_5c15:
    rlca
    inc d
    inc b
    inc b
    ld l, h
    ld e, h
    dec h
    ld e, h
    ld [hl+], a
    ld e, h
    nop
    ld b, [hl]
    ld e, h
    jp $3c3c


    dec hl
    ld e, h
    jr nc, jr_01d_5c85

    jr c, jr_01d_5c87

    rla
    or l
    ld c, [hl]
    jr z, @+$52

    ld [$073e], sp
    ld [$cd3d], a
    jr jr_01d_5c3e

    ld [$083e], sp
    ld [$cd3d], a

jr_01d_5c3e:
    ld a, $54
    call $3e6d
    jp $24d7


    rla
    ld [bc], a
    rlca
    ld [bc], a
    ld [bc], a
    and a
    rlca
    inc bc
    ld [bc], a
    and a
    nop
    inc bc
    inc c
    ld b, $07
    rst $38
    ret nc

    ld bc, $0825
    dec b
    rst $38
    rst $38
    ld [bc], a
    rrca
    add hl, bc
    add hl, bc
    rst $38
    pop de
    inc bc
    ld [de], a
    rst $00
    rlca
    ld [bc], a
    ld [de], a
    rst $00
    rlca
    inc bc
    add hl, bc
    inc bc
    ld bc, $070a
    db $10
    ld de, $0707
    inc d
    dec d
    rlca
    dec c
    inc c
    rlca
    ld c, $14
    inc b
    inc b
    ld d, $5d
    adc e
    ld e, h
    adc b
    ld e, h

jr_01d_5c85:
    nop
    db $ed

jr_01d_5c87:
    ld e, h
    jp $3c3c


    sub l
    ld e, h
    sbc $5c
    db $e3
    ld e, h
    db $e3
    ld e, h
    add sp, $5c
    ld [$a1fa], sp
    rst $10
    bit 7, a
    jr nz, jr_01d_5cc0

    ld hl, $5cc9
    call $3c49
    ld bc, $eb01
    call $3e2e
    jr nc, jr_01d_5cb8

    ld hl, $5cce
    call $3c49
    ld hl, $d7a1
    set 7, [hl]
    jr jr_01d_5cc6

jr_01d_5cb8:
    ld hl, $5cd9
    call $3c49
    jr jr_01d_5cc6

jr_01d_5cc0:
    ld hl, $5cd4
    call $3c49

jr_01d_5cc6:
    jp $24d7


    rla
    add hl, bc
    ld c, a
    jr z, jr_01d_5d1e

    rla
    ld c, b
    ld c, a
    jr z, jr_01d_5cde

    ld d, b
    rla
    ld e, l
    ld c, a
    jr z, jr_01d_5d29

    rla
    rst $00
    ld c, a
    jr z, jr_01d_5d2e

jr_01d_5cde:
    rla
    db $e3
    ld c, a
    jr z, @+$52

    rla
    db $10
    ld d, b
    jr z, jr_01d_5d38

    rla
    ret c

    ld d, b
    jr z, jr_01d_5d3d

    rla
    ld [bc], a
    rlca
    ld [bc], a
    inc bc
    and a
    rlca
    inc bc
    inc bc
    and a
    inc bc
    inc b
    nop
    inc bc
    inc b
    ld bc, HeaderLogo
    ld [bc], a
    dec b
    ld [bc], a
    jr nz, jr_01d_5d0a

    dec bc
    rst $38
    ret nc

    ld bc, $0720

jr_01d_5d0a:
    ld b, $fe
    ld [bc], a
    ld [bc], a
    ld [de], a
    rst $00
    rlca
    ld [bc], a
    ld [de], a
    rst $00
    rlca
    inc bc
    inc b
    inc b
    dec b
    ld b, $07
    rlca
    rlca
    rlca

jr_01d_5d1e:
    ld [$0707], sp
    ld b, $07
    inc c
    rlca
    rlca
    inc d
    inc b
    inc b

jr_01d_5d29:
    ld de, $355e
    ld e, l
    ld [hl-], a

jr_01d_5d2e:
    ld e, l
    nop
    pop af
    ld e, l
    jp $3c3c


    ld l, l
    ld e, l
    db $db

jr_01d_5d38:
    ld e, l

Call_01d_5d39:
    xor a
    ld [$cd37], a

jr_01d_5d3d:
    ld de, $cc5b
    ld hl, $5d69

jr_01d_5d43:
    ld a, [hl+]
    and a
    jr z, jr_01d_5d65

    push hl
    push de
    ld [$d11e], a
    ld b, a
    ld a, $1c
    call $3e6d
    pop de
    pop hl
    ld a, b
    and a
    jr z, jr_01d_5d43

    ld a, [$d11e]
    ld [de], a
    inc de
    push hl
    ld hl, $cd37
    inc [hl]
    pop hl
    jr jr_01d_5d43

jr_01d_5d65:
    ld a, $ff
    ld [de], a
    ret


    add hl, hl
    ld a, [hl+]
    rra
    nop
    ld [$a3fa], sp
    rst $10
    bit 0, a
    jr nz, jr_01d_5d97

    ld hl, $5dc7
    call $3c49
    call Call_01d_5d39
    ld a, [$cd37]
    and a
    jr z, jr_01d_5d8e

    ld b, $18
    ld hl, $5006
    call $35d6
    jr jr_01d_5d94

jr_01d_5d8e:
    ld hl, $5dcc
    call $3c49

jr_01d_5d94:
    jp $24d7


jr_01d_5d97:
    bit 1, a
    jr z, jr_01d_5da3

    ld hl, $5dd1
    call $3c49
    jr jr_01d_5d94

jr_01d_5da3:
    call Call_01d_5de9
    ld hl, $5dd6
    call $3c49
    ld hl, $d7a3
    set 2, [hl]
    ld a, [$d710]
    ld b, a
    ld c, $1e
    call $3e48
    jr nc, jr_01d_5d94

    ld hl, $d7a3
    res 0, [hl]
    res 1, [hl]
    res 2, [hl]
    jr jr_01d_5d94

    rla
    add sp, $50
    jr z, jr_01d_5e1c

    rla
    ld b, l
    ld d, c
    jr z, jr_01d_5e21

    rla
    ld d, [hl]
    ld d, c
    jr z, jr_01d_5e26

    rla
    adc l
    ld d, c
    jr z, jr_01d_5e2b

    ld [$033e], sp
    ld [$cd3d], a
    ld a, $54
    call $3e6d
    jp $24d7


Call_01d_5de9:
    ld b, $18
    ld hl, $50eb
    jp $35d6


    rla
    ld [bc], a
    rlca
    ld [bc], a
    inc b
    and a
    rlca
    inc bc
    inc b
    and a
    nop
    ld [bc], a
    jr nz, jr_01d_5e05

    add hl, bc
    cp $02
    ld bc, $0a20

jr_01d_5e05:
    dec bc
    rst $38
    pop de
    ld [bc], a
    ld [de], a
    rst $00
    rlca
    ld [bc], a
    ld [de], a
    rst $00
    rlca
    inc bc
    ld [de], a
    inc de
    ld d, $02
    dec bc
    dec bc
    rlca
    rlca
    ld [$0708], sp

jr_01d_5e1c:
    rrca
    rlca
    inc c
    rlca
    rlca

jr_01d_5e21:
    ld b, $04
    rlca
    jr nc, jr_01d_5e66

jr_01d_5e26:
    inc sp
    ld e, [hl]
    dec l
    ld e, [hl]
    nop

jr_01d_5e2b:
    ld b, a
    ld e, [hl]
    call $22fa
    jp $3c3c


    dec sp
    ld e, [hl]
    inc a
    ld e, [hl]
    ld b, c
    ld e, [hl]
    ld b, [hl]
    ld e, [hl]
    rst $38
    rla
    sbc $52
    jr z, @+$52

    rla
    ld a, $53
    jr z, jr_01d_5e96

    or $00
    ld [bc], a
    rlca
    inc bc
    inc bc
    rst $38
    rlca
    inc b
    inc bc
    rst $38
    nop
    inc b
    add hl, hl
    dec b
    rlca
    rst $38
    ret nc

    ld bc, $0806
    dec c
    cp $00
    ld [bc], a
    db $10
    ld a, [bc]
    ld b, $ff
    rst $38
    inc bc
    ld a, [hl+]

jr_01d_5e66:
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
    ld [bc], a
    inc b
    inc b
    db $10
    ld b, b
    add d
    ld e, [hl]
    ld a, a
    ld e, [hl]
    nop
    sub d
    ld e, [hl]
    jp $3c3c


    cp c
    inc h
    adc b
    ld e, [hl]
    adc l
    ld e, [hl]
    rla
    sbc e
    ld d, e
    jr z, @+$52

    rla
    bit 2, e
    jr z, @+$52

    nop
    ld [bc], a
    rlca
    inc bc

jr_01d_5e96:
    inc b
    rst $38
    rlca
    inc b
    inc b
    rst $38
    nop
    inc bc
    ld h, $09
    inc b
    rst $38
    db $d3
    ld bc, $061b
    ld a, [bc]
    rst $38
    rst $38
    ld [bc], a
    jr nz, jr_01d_5eb4

    rlca
    rst $38
    rst $38
    inc bc
    ld [de], a
    rst $00
    rlca
    inc bc

jr_01d_5eb4:
    inc de
    rst $00
    rlca
    inc b
    ld bc, $0404
    nop
    ld b, b
    rst $00
    ld e, [hl]
    call nz, $005e
    db $e4
    ld e, [hl]
    jp $3c3c


    call $d25e
    ld e, [hl]
    rst $10
    ld e, [hl]
    rla
    rst $30
    ld d, h
    jr z, @+$52

    rla
    dec [hl]
    ld d, l
    jr z, jr_01d_5f27

    rla
    sub [hl]
    ld d, l
    jr z, jr_01d_5ee4

    ld a, $28
    call $13d0
    jp $24d7


jr_01d_5ee4:
    ld a, [bc]
    inc bc
    rlca
    ld [bc], a
    nop
    rst $38
    rlca
    inc bc
    nop
    rst $38
    ld bc, $0007
    or b
    nop
    inc bc
    inc e
    ld b, $06
    rst $38
    ret nc

    ld bc, $080a
    add hl, bc
    rst $38
    jp nc, $3802

    ld [$fe05], sp
    ld bc, $1203
    rst $00
    rlca
    ld [bc], a
    ld [de], a
    rst $00
    rlca
    inc bc
    or $c6
    ld bc, $0707
    inc b
    inc b
    ld h, b
    ld h, c
    rst $10
    ld h, b
    ld e, $5f
    nop
    jr nc, @+$63

    call $3c3c
    ld hl, $5f32
    ld a, [$d64c]

jr_01d_5f27:
    jp $3d97


Jump_01d_5f2a:
    xor a
    ld [$cd6b], a
    ld [$d64c], a
    ret


    ld c, b
    ld e, a
    ld c, c
    ld e, a
    ld l, e
    ld e, a
    cp h
    ld e, a
    push hl
    ld e, a
    dec de
    ld h, b
    ld c, b
    ld h, b
    ld h, b
    ld h, b
    add h
    ld h, b
    sbc d
    ld h, b
    cp d
    ld h, b
    ret


    ld a, $ff
    ld [$cd6b], a
    ld hl, $ccd3
    ld de, $5f64
    call $350c
    dec a
    ld [$cd38], a
    call $3486
    ld a, $02
    ld [$d64c], a
    ret


    ld b, b
    ld bc, $0110
    ld b, b
    inc bc
    rst $38
    ld a, [$cd38]
    and a
    ret nz

    call $3dd7
    xor a
    ld [$cd6b], a
    ld hl, $d355
    res 7, [hl]
    ld a, $01
    ldh [$8c], a
    call $2920
    call $3dd7
    ld hl, $d72d
    set 6, [hl]
    set 7, [hl]
    ld hl, $60fa
    ld de, $60ff
    call $3354
    ld a, $f3
    ld [$d059], a
    ld a, [$d715]
    cp $b1
    jr nz, jr_01d_5fa6

    ld a, $01
    jr jr_01d_5fb0

jr_01d_5fa6:
    cp $99
    jr nz, jr_01d_5fae

    ld a, $02
    jr jr_01d_5fb0

jr_01d_5fae:
    ld a, $03

jr_01d_5fb0:
    ld [$d05d], a
    xor a
    ldh [$b4], a
    ld a, $03
    ld [$d64c], a
    ret


    ld a, [$d057]
    cp $ff
    jp z, Jump_01d_5f2a

    call $2429
    ld hl, $d867
    set 1, [hl]
    ld a, $f0
    ld [$cd6b], a
    ld a, $01
    ldh [$8c], a
    call Call_01d_60c9
    ld a, $01
    ldh [$8c], a
    call $3541
    ld a, $04
    ld [$d64c], a
    ret


    ld b, $02
    ld hl, $5b81
    call $35d6
    ld a, $02
    ldh [$8c], a
    call Call_01d_60c9
    ld a, $02
    ldh [$8c], a
    call $3541
    ld de, $6015
    ld a, $02
    ldh [$8c], a
    call $363a
    ld a, $d6
    ld [$cc4d], a
    ld a, $15
    call $3e6d
    ld a, $05
    ld [$d64c], a
    ret


    ld b, b
    ld b, b
    ld b, b
    ld b, b
    ld b, b
    rst $38
    ld a, [$d730]
    bit 0, a
    ret nz

    ld a, $02
    ld [$d528], a
    ld a, $01
    ldh [$8c], a
    ld a, $08
    ldh [$8d], a
    call $34a6
    ld a, $02
    ldh [$8c], a
    xor a
    ldh [$8d], a
    call $34a6
    ld a, $03
    ldh [$8c], a
    call Call_01d_60c9
    ld a, $06
    ld [$d64c], a
    ret


    ld a, $02
    ldh [$8c], a
    ld a, $0c
    ldh [$8d], a
    call $34a6
    ld a, $04
    ldh [$8c], a
    call Call_01d_60c9
    ld a, $07
    ld [$d64c], a
    ret


    ld a, $02
    ldh [$8c], a
    xor a
    ldh [$8d], a
    call $34a6
    ld a, $05
    ldh [$8c], a
    call Call_01d_60c9
    ld de, $6081
    ld a, $02
    ldh [$8c], a
    call $363a
    ld a, $08
    ld [$d64c], a
    ret


    ld b, b
    ld b, b
    rst $38
    ld a, [$d730]
    bit 0, a
    ret nz

    ld a, $d6
    ld [$cc4d], a
    ld a, $11
    call $3e6d
    ld a, $09
    ld [$d64c], a
    ret


    ld a, $ff
    ld [$cd6b], a
    ld hl, $ccd3
    ld de, $60b5
    call $350c
    dec a
    ld [$cd38], a
    call $3486
    ld a, $0a
    ld [$d64c], a
    ret


    ld b, b
    inc b
    jr nz, jr_01d_60ba

    rst $38

jr_01d_60ba:
    ld a, [$cd38]
    and a
    ret nz

    xor a
    ld [$cd6b], a
    ld a, $00
    ld [$d64c], a
    ret


Call_01d_60c9:
    ld a, $f0
    ld [$cd6b], a
    call $2920
    ld a, $ff
    ld [$cd6b], a
    ret


    pop hl
    ld h, b
    add hl, bc
    ld h, c
    ld c, $61
    ld h, $61
    dec hl
    ld h, c
    ld [$67fa], sp
    ret c

    bit 1, a
    ld hl, $60f5
    jr z, jr_01d_60ef

    ld hl, $6104

jr_01d_60ef:
    call $3c49
    jp $24d7


    rla
    pop hl
    ld h, b
    ld hl, $1750
    dec sp
    ld h, d
    ld hl, $1750
    or h
    ld h, d
    ld hl, $1750
    cpl
    ld h, e
    ld hl, $1750
    pop bc
    ld h, e
    ld hl, $0850
    ld a, [$d717]
    ld [$d11e], a
    call $2f9e
    ld hl, $6121
    call $3c49
    jp $24d7


    rla
    jp z, $2163

    ld d, b
    rla
    ld h, e
    ld h, h
    ld hl, $1750
    ld h, a
    ld h, l
    ld hl, $0350
    inc b
    rlca
    inc bc
    ld bc, $0771
    inc b
    ld [bc], a
    ld [hl], c
    nop
    inc bc
    nop
    halt
    inc b
    nop
    halt
    ld [bc], a
    ld [bc], a
    ld b, $08
    rst $38
    ret nc

    ld bc, $0b03
    rlca
    rst $38
    pop de
    ld [bc], a
    ld [de], a
    rst $00
    rlca
    inc bc
    inc de
    rst $00
    rlca
    inc b
    db $f4
    add $00
    inc bc
    push af
    add $00
    inc b
    ld c, c
    ld sp, $4a32
    ld c, e
    dec b
    dec b
    ld c, h
    ld c, e
    dec b
    dec b
    ld c, h
    ld d, d
    ld sp, $6f32
    rlca
    ld b, $05
    xor l
    ld h, d
    ld d, d
    ld h, d
    ld a, h
    ld h, c
    nop
    add c
    ld h, d
    call Call_01d_6192
    call $3c3c
    ld hl, $6256
    ld de, $61bc
    ld a, [$d64d]
    call $3160
    ld [$d64d], a
    ret


Call_01d_6192:
    ld hl, $d126
    bit 5, [hl]
    res 5, [hl]
    ret z

    ld hl, $d734
    set 1, [hl]
    ld a, [$d863]
    bit 1, a
    jr z, jr_01d_61aa

    ld a, $05
    jr jr_01d_61ac

jr_01d_61aa:
    ld a, $24

jr_01d_61ac:
    ld [$d09f], a
    ld bc, $0002
    ld a, $17
    jp $3e6d


Jump_01d_61b7:
    xor a
    ld [$d64d], a
    ret


    db $e3
    ld h, c
    ld c, h
    ld [hl-], a
    ld b, b
    ld h, d
    dec l
    ld h, d
    add $61
    ret


jr_01d_61c7:
    ld hl, $ccd3
    ld a, $40
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl], a
    ld a, $06
    ld [$cd38], a
    call $3486
    ld a, $03
    ld [$d64d], a
    ld [$da39], a
    ret


    ld hl, $6224
    call $34bf
    jp nc, $3219

    xor a
    ldh [$b3], a
    ldh [$b4], a
    ld [$ccd3], a
    ld [$cd38], a
    ld a, [$cd3d]
    cp $03
    jr c, jr_01d_6207

    ld hl, $d863
    bit 6, [hl]
    set 6, [hl]
    jr z, jr_01d_61c7

jr_01d_6207:
    ld a, $02
    ldh [$8c], a
    call $2920
    ld a, $40
    ld [$ccd3], a
    ld a, $01
    ld [$cd38], a
    call $3486
    ld a, $03
    ld [$d64d], a
    ld [$da39], a
    ret


    ld a, [bc]
    inc b
    ld a, [bc]
    dec b
    dec bc
    inc b
    dec bc
    dec b
    rst $38
    ld a, [$cd38]
    and a
    ret nz

    call $3dd7
    xor a
    ld [$cd6b], a
    ld [$d64d], a
    ld [$da39], a
    ret


    call $3275
    ld a, [$d057]
    cp $ff
    jp z, Jump_01d_61b7

    ld a, $01
    ldh [$8c], a
    jp $2920


    ld h, e
    ld h, d
    ld a, h
    ld h, d
    ld bc, $6300
    ret c

    ld l, l
    ld h, d
    ld [hl], a
    ld h, d
    ld [hl], d
    ld h, d
    ld [hl], d
    ld h, d
    rst $38
    ld [$5621], sp
    ld h, d
    call $31cc
    jp $24d7


    rla
    rst $28
    ld h, l
    ld hl, $1750
    call nz, $2166
    ld d, b
    rla
    db $d3
    ld h, [hl]
    ld hl, $1750
    add hl, hl
    ld h, a
    ld hl, $0350
    inc b
    dec bc
    inc b
    ld [bc], a
    xor [hl]
    dec bc
    dec b
    ld [bc], a
    xor [hl]
    nop
    inc b
    nop
    or $00
    dec b
    ld bc, $00f6
    ld bc, $063b
    add hl, bc
    rst $38
    ret nc

    ld b, c
    db $f4
    ld bc, $c72d
    dec bc
    inc b
    dec l
    rst $00
    dec bc
    dec b
    or $c6
    nop
    inc b
    or $c6
    nop
    dec b
    ld hl, $2421
    ld hl, $0221
    jr @+$1a

    jr @+$04

    ld [bc], a
    jr jr_01d_62d2

    jr @+$04

    ld [bc], a
    jr nz, jr_01d_62c4

    jr nz, jr_01d_62c3

    ld [bc], a
    ld a, [de]

jr_01d_62c3:
    dec b

jr_01d_62c4:
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld b, h
    dec b
    ld b, h
    ld [bc], a
    rlca
    ld b, $05
    inc b
    ld h, h
    xor c
    ld h, e

jr_01d_62d2:
    rst $10
    ld h, d
    nop
    ret c

    ld h, e
    call Call_01d_62ed
    call $3c3c
    ld hl, $63ad
    ld de, $6313
    ld a, [$d64e]
    call $3160
    ld [$d64e], a
    ret


Call_01d_62ed:
    ld hl, $d126
    bit 5, [hl]
    res 5, [hl]
    ret z

    ld a, [$d864]
    bit 1, a
    jr z, jr_01d_6301

    ld a, $05
    jp Jump_01d_6303


jr_01d_6301:
    ld a, $24

Jump_01d_6303:
    ld [$d09f], a
    ld bc, $0002
    ld a, $17
    jp $3e6d


Jump_01d_630e:
    xor a
    ld [$d64e], a
    ret


    ld a, [hl-]
    ld h, e
    ld c, h
    ld [hl-], a
    sub a
    ld h, e
    add h
    ld h, e
    dec e
    ld h, e
    ret


jr_01d_631e:
    ld hl, $ccd3
    ld a, $40
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl], a
    ld a, $06
    ld [$cd38], a
    call $3486
    ld a, $03
    ld [$d64e], a
    ld [$da39], a
    ret


    ld hl, $637b
    call $34bf
    jp nc, $3219

    xor a
    ldh [$b3], a
    ldh [$b4], a
    ld [$ccd3], a
    ld [$cd38], a
    ld a, [$cd3d]
    cp $03
    jr c, jr_01d_635e

    ld hl, $d864
    bit 6, [hl]
    set 6, [hl]
    jr z, jr_01d_631e

jr_01d_635e:
    ld a, $02
    ldh [$8c], a
    call $2920
    ld a, $40
    ld [$ccd3], a
    ld a, $01
    ld [$cd38], a
    call $3486
    ld a, $03
    ld [$d64e], a
    ld [$da39], a
    ret


    ld a, [bc]
    inc b
    ld a, [bc]
    dec b
    dec bc
    inc b
    dec bc
    dec b
    rst $38
    ld a, [$cd38]
    and a
    ret nz

    call $3dd7
    xor a
    ld [$cd6b], a
    ld [$d64e], a
    ld [$da39], a
    ret


    call $3275
    ld a, [$d057]
    cp $ff
    jp z, Jump_01d_630e

    ld a, $01
    ldh [$8c], a
    jp $2920


    cp d
    ld h, e
    db $d3
    ld h, e
    ld bc, $6400
    ret c

    call nz, $ce63
    ld h, e
    ret


    ld h, e
    ret


    ld h, e
    rst $38
    ld [$ad21], sp
    ld h, e
    call $31cc
    jp $24d7


    rla
    ld c, c
    ld h, a
    ld hl, $1750
    dec b
    ld l, b
    ld hl, $1750
    dec e
    ld l, b
    ld hl, $1750
    ld c, e
    ld l, b
    ld hl, $0350
    inc b
    dec bc
    inc b
    ld [bc], a
    push af
    dec bc
    dec b
    inc bc
    push af
    nop
    inc b
    nop
    rst $30
    nop
    dec b
    ld bc, $00f7
    ld bc, $0603
    add hl, bc
    rst $38
    ret nc

    ld b, c
    ld [c], a
    ld bc, $c72d
    dec bc
    inc b
    dec l
    rst $00
    dec bc
    dec b
    or $c6
    nop
    inc b
    or $c6
    nop
    dec b
    ld h, l
    ld h, [hl]
    dec b
    ld l, b
    ld l, b
    ld l, e
    ld l, e
    dec b
    ld l, c
    ld l, d
    dec b
    dec b
    dec b
    ld l, l
    ld l, [hl]
    ld l, b
    ld l, b
    dec b
    ld l, b
    ld l, b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    inc b
    dec b
    dec b
    rrca
    ld b, $05
    ld h, c
    ld h, l
    ld b, $65
    ld l, $64
    nop
    dec [hl]
    ld h, l
    call Call_01d_6444
    call $3c3c
    ld hl, $650a
    ld de, $646a
    ld a, [$d64f]
    call $3160
    ld [$d64f], a
    ret


Call_01d_6444:
    ld hl, $d126
    bit 5, [hl]
    res 5, [hl]
    ret z

    ld a, [$d865]
    bit 1, a
    jr z, jr_01d_6458

    ld a, $0e
    jp Jump_01d_645a


jr_01d_6458:
    ld a, $3b

Jump_01d_645a:
    ld [$d09f], a
    ld bc, $0002
    ld a, $17
    jp $3e6d


Jump_01d_6465:
    xor a
    ld [$d64f], a
    ret


    sub c
    ld h, h
    ld c, h
    ld [hl-], a
    xor $64
    db $db
    ld h, h
    ld [hl], h
    ld h, h
    ret


jr_01d_6475:
    ld hl, $ccd3
    ld a, $40
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl], a
    ld a, $06
    ld [$cd38], a
    call $3486
    ld a, $03
    ld [$d64f], a
    ld [$da39], a
    ret


    ld hl, $64d2
    call $34bf
    jp nc, $3219

    xor a
    ldh [$b3], a
    ldh [$b4], a
    ld [$ccd3], a
    ld [$cd38], a
    ld a, [$cd3d]
    cp $03
    jr c, jr_01d_64b5

    ld hl, $d865
    bit 6, [hl]
    set 6, [hl]
    jr z, jr_01d_6475

jr_01d_64b5:
    ld a, $02
    ldh [$8c], a
    call $2920
    ld a, $40
    ld [$ccd3], a
    ld a, $01
    ld [$cd38], a
    call $3486
    ld a, $03
    ld [$d64f], a
    ld [$da39], a
    ret


    ld a, [bc]
    inc b
    ld a, [bc]
    dec b
    dec bc
    inc b
    dec bc
    dec b
    rst $38
    ld a, [$cd38]
    and a
    ret nz

    call $3dd7
    xor a
    ld [$cd6b], a
    ld [$d64f], a
    ld [$da39], a
    ret


    call $3275
    ld a, [$d057]
    cp $ff
    jp z, Jump_01d_6465

    ld a, $01
    ldh [$8c], a
    call $2920
    ld a, $01
    ld [$d64c], a
    ret


    rla
    ld h, l
    jr nc, jr_01d_656f

    ld bc, $6500
    ret c

    ld hl, $2b65
    ld h, l
    ld h, $65
    ld h, $65
    rst $38
    ld [$0a21], sp
    ld h, l
    call $31cc
    jp $24d7


    rla
    ld l, e
    ld l, b
    ld hl, $1750
    ld [hl], b
    ld l, c
    ld hl, $1750
    sbc b
    ld l, c
    ld hl, $1750
    db $fd
    ld l, c
    ld hl, $0050
    inc b
    dec bc
    inc b
    ld [bc], a
    or $0b
    dec b
    inc bc
    or $00
    inc b
    nop
    ld [hl], c
    nop
    dec b
    nop
    ld [hl], c
    nop
    ld bc, $0639
    add hl, bc
    rst $38
    ret nc

    ld b, c
    or $01
    dec l
    rst $00
    dec bc
    inc b
    dec l
    rst $00
    dec bc
    dec b
    or $c6
    nop
    inc b
    or $c6
    nop
    dec b
    ld b, a
    ld b, a
    ld [hl], $47
    ld b, a
    ld h, a
    ld [hl], $36
    ld c, [hl]
    ld h, l
    ld d, d
    ld c, [hl]
    ld [hl], $65

jr_01d_656f:
    ld d, d
    ld h, l
    ld h, a
    ld [hl], $65
    ld h, l
    ld d, d
    ld c, e
    ld [hl], $65
    ld d, d
    ld h, a
    ld d, d
    ld [hl], $68
    ld l, b
    ld hl, $6684
    call $3c49
    ld hl, $d730
    set 6, [hl]
    push hl
    ld a, [$cfcb]
    push af
    ldh a, [$d7]
    push af
    xor a
    ldh [$d7], a
    ld [$d0aa], a
    ld [$cfcb], a
    ld [$cd41], a
    ld [$cd42], a
    ld a, [$d5a2]
    ld b, a
    cp $33
    jr c, jr_01d_65af

    ld b, $32
    sub b
    ld [$cd42], a

jr_01d_65af:
    ld hl, $cd42
    inc [hl]
    push bc
    ld a, [$cd41]
    ld [$cd3d], a
    ld b, $1c
    ld hl, $7b3f
    call $35d6
    call Call_01d_65e6
    pop bc
    jr c, jr_01d_65d0

    ld hl, $cd41
    inc [hl]
    ld a, [hl]
    cp b
    jr nz, jr_01d_65af

jr_01d_65d0:
    pop af
    ldh [$d7], a
    pop af
    ld [$cfcb], a
    pop hl
    res 6, [hl]
    call $3dd4
    call $190f
    call $3ded
    jp $3ddc


Call_01d_65e6:
    ld c, $06

jr_01d_65e8:
    push bc
    call Call_01d_6611
    call $3865
    ldh a, [$b4]
    bit 1, a
    jr nz, jr_01d_660e

    ld hl, $cc6b
    ld de, $cc5b
    ld bc, $0050
    call $00b5
    pop bc
    ld a, [$cc5b]
    cp $ff
    jr z, jr_01d_660c

    dec c
    jr nz, jr_01d_65e8

jr_01d_660c:
    and a
    ret


jr_01d_660e:
    pop bc
    scf
    ret


Call_01d_6611:
    call $3dd4
    call $190f
    ld hl, $cc5b
    ld a, [hl+]
    ld [$cd3d], a
    ld [$cf91], a
    ld [$d0b5], a
    ld [$cfd9], a
    ld [$cf1d], a
    ld a, [hl+]
    ld [$cd3f], a
    ld de, $cd6d
    ld bc, $000b
    call $00b5
    ld b, $0b
    ld c, $00
    call $3def
    ld hl, $c410
    call $1537
    call $1389
    call $3ddc
    ld hl, $c4a4
    ld b, $02
    ld c, $12
    call $1922
    ld hl, $c4cd
    ld de, $6671
    call $1955
    ld hl, $c4dc
    ld de, $cd42
    ld bc, $0103
    call $3c5f
    ld b, $1c
    ld hl, $42f0
    jp $35d6


    add a
    add b
    adc e
    adc e
    ld a, a
    adc [hl]
    add l
    ld a, a
    add l
    add b
    adc h
    add h
    ld a, a
    adc l
    xor [hl]
    ld a, a
    ld a, a
    ld a, a
    ld d, b
    rla
    db $f4
    ld h, b
    ld [hl+], a
    ld d, b
    ld hl, $66b9
    call Call_01d_6858
    ld [$cd41], a
    ld hl, $d6f0
    ld a, [$cd41]
    ld c, a
    ld b, $02
    ld a, $10
    call $3e6d
    ld a, c
    and a
    ret nz

    call $3c3c
    ld a, $01
    ld [$cc3c], a
    ld a, [$cd3d]
    ld [$d11e], a
    call $2fcf
    ld a, $24
    jp $3ef5


    inc sp
    ld [de], a
    ld bc, $2a33
    db $10
    dec a
    inc c
    ld [de], a
    inc h
    inc bc
    ld h, $14
    rlca
    ld c, $64
    add hl, bc
    dec c
    ld l, b
    ld bc, $1503
    ld de, $1509
    dec [hl]
    db $10
    rst $00
    rrca
    dec d
    ret


    ld de, $ca1b
    ld bc, $9219
    inc c
    inc b
    jr jr_01d_66f0

    ld bc, $0d18
    db $10
    ret c

    add hl, bc
    ld bc, $019c
    ld a, [bc]
    db $db
    dec b
    ld b, $d2

jr_01d_66f0:
    inc bc
    inc c
    jp hl


    rrca
    ld [bc], a
    or b
    ld bc, $e401
    dec bc
    ld c, $e3
    inc bc
    dec de
    ld d, e
    db $10
    ld de, $0153
    inc c
    and b
    rrca
    rrca
    and d
    ld de, $a519
    db $10
    ld [$09d7], sp
    ld bc, $2c22
    add hl, bc
    ld [hl+], a
    ld b, [hl]
    inc de
    ld [hl+], a
    ld e, d
    ld [$02c2], sp
    dec b
    jp nz, $1a07

    ld l, a
    dec bc
    ld c, $01
    inc b
    ld c, $16
    dec b
    jr nc, jr_01d_6740

    ccf
    ld [bc], a
    inc e
    ld c, $0f
    inc e
    dec l
    ld [$481c], sp
    ld de, $5b1c
    inc b
    inc e
    ld a, c
    ld [$0477], sp
    inc bc
    ld [hl], a
    ld [hl+], a
    inc b

jr_01d_6740:
    ld a, c
    ld [bc], a
    inc c
    ld a, c
    dec b
    dec d
    ld b, $0f
    jr nc, @+$26

    ld bc, $3d0a
    add hl, bc
    ld hl, $10a1
    add hl, bc
    dec b
    dec bc
    ld c, $03
    ld [$0f0f], sp
    inc bc
    jr z, @+$01

    rla
    ret nc

    ld d, h
    ld [hl+], a
    ld [$3dfa], sp
    call $0e47
    ld bc, $2ecd
    ld a, $30
    add hl, de
    ld hl, $d6f0
    ld a, [$cd41]
    ld c, a
    ld b, $01
    ld a, $10
    call $3e6d
    ld a, $89
    call $3740
    call $3748
    jp $24d7


    call $3865
    xor a
    ld [$cc3c], a
    ld hl, $6795
    call $3c49
    jp $24d7


    rla
    pop hl
    ld d, h
    ld [hl+], a
    ld d, b
    ld b, $45
    ld a, $1c
    call $3e6d
    ld a, b
    and a
    ret z

    ld hl, $6823
    call Call_01d_6858
    ld [$cd41], a
    ld hl, $d6fe
    ld a, [$cd41]
    ld c, a
    ld b, $02
    ld a, $10
    call $3e6d
    ld a, c
    and a
    ret nz

    xor a
    ldh [$9f], a
    ldh [$a0], a
    ldh [$a1], a
    ld a, [$cd3d]
    sub $3b
    cp $0a
    jr z, jr_01d_67d8

    cp $14
    jr z, jr_01d_67de

    cp $28
    jr z, jr_01d_67de

    jr jr_01d_67ea

jr_01d_67d8:
    ld a, $10
    ldh [$a1], a
    jr jr_01d_67ee

jr_01d_67de:
    ld a, $20
    ldh [$a1], a
    jr jr_01d_67ee

    ld a, $40
    ldh [$a1], a
    jr jr_01d_67ee

jr_01d_67ea:
    ld a, $01
    ldh [$a0], a

jr_01d_67ee:
    ld de, $d5a5
    ld hl, $ffa1
    ld c, $02
    ld a, $0b
    call $3e6d
    ld hl, $d6fe
    ld a, [$cd41]
    ld c, a
    ld b, $01
    ld a, $10
    call $3e6d
    call $3c3c
    ld a, [$d5a4]
    cp $99
    jr nz, jr_01d_681e

    ld a, [$d5a5]
    cp $99
    jr nz, jr_01d_681e

    ld a, $2c
    jr jr_01d_6820

jr_01d_681e:
    ld a, $2b

jr_01d_6820:
    jp $3ef5


    add a
    ld [$8700], sp
    db $10
    ld bc, $0b87
    inc bc
    add a
    ld c, $03
    add a
    inc c
    inc b
    add a
    inc c
    add hl, bc
    add a
    rrca
    add hl, bc
    add a
    ld c, $10
    add a
    db $10
    ld a, [bc]
    add a
    rlca
    dec bc
    add a
    ld [$870f], sp
    rrca
    inc c
    rst $38
    rla
    dec bc
    ld d, l
    ld [hl+], a
    db $10
    ld d, b
    rla
    inc hl
    ld d, l
    ld [hl+], a
    db $10
    rla
    dec sp
    ld d, l
    ld [hl+], a
    ld d, b

Call_01d_6858:
    ld a, [$cd40]
    ld d, a
    ld a, [$cd41]
    ld e, a
    ld a, [$d35e]
    ld b, a
    ld c, $ff

jr_01d_6866:
    inc c
    ld a, [hl+]
    cp $ff
    ret z

    cp b
    jr nz, jr_01d_6878

    ld a, [hl+]
    cp d
    jr nz, jr_01d_6879

    ld a, [hl+]
    cp e
    jr nz, jr_01d_6866

    ld a, c
    ret


jr_01d_6878:
    inc hl

jr_01d_6879:
    inc hl
    jr jr_01d_6866

    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
