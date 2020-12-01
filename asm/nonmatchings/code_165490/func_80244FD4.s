.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

glabel func_80244FD4
/* 165834 80244FD4 27BDFFB0 */  addiu     $sp, $sp, -0x50
/* 165838 80244FD8 AFBF004C */  sw        $ra, 0x4c($sp)
/* 16583C 80244FDC AFBE0048 */  sw        $fp, 0x48($sp)
/* 165840 80244FE0 AFB70044 */  sw        $s7, 0x44($sp)
/* 165844 80244FE4 AFB60040 */  sw        $s6, 0x40($sp)
/* 165848 80244FE8 AFB5003C */  sw        $s5, 0x3c($sp)
/* 16584C 80244FEC AFB40038 */  sw        $s4, 0x38($sp)
/* 165850 80244FF0 AFB30034 */  sw        $s3, 0x34($sp)
/* 165854 80244FF4 AFB20030 */  sw        $s2, 0x30($sp)
/* 165858 80244FF8 AFB1002C */  sw        $s1, 0x2c($sp)
/* 16585C 80244FFC AFB00028 */  sw        $s0, 0x28($sp)
/* 165860 80245000 AFA60058 */  sw        $a2, 0x58($sp)
/* 165864 80245004 AFA7005C */  sw        $a3, 0x5c($sp)
/* 165868 80245008 3C028007 */  lui       $v0, %hi(D_80077A24)
/* 16586C 8024500C 00441021 */  addu      $v0, $v0, $a0
/* 165870 80245010 90427A24 */  lbu       $v0, %lo(D_80077A24)($v0)
/* 165874 80245014 14400008 */  bnez      $v0, .L80245038
/* 165878 80245018 00041840 */   sll      $v1, $a0, 1
/* 16587C 8024501C 0C0926A9 */  jal       func_80249AA4
/* 165880 80245020 24040006 */   addiu    $a0, $zero, 6
/* 165884 80245024 0040202D */  daddu     $a0, $v0, $zero
/* 165888 80245028 8FA80058 */  lw        $t0, 0x58($sp)
/* 16588C 8024502C 240700FF */  addiu     $a3, $zero, 0xff
/* 165890 80245030 0809141C */  j         .L80245070
/* 165894 80245034 25050032 */   addiu    $a1, $t0, 0x32
.L80245038:
/* 165898 80245038 3C028007 */  lui       $v0, %hi(D_800779C4)
/* 16589C 8024503C 244279C4 */  addiu     $v0, $v0, %lo(D_800779C4)
/* 1658A0 80245040 00641821 */  addu      $v1, $v1, $a0
/* 1658A4 80245044 000318C0 */  sll       $v1, $v1, 3
/* 1658A8 80245048 00629021 */  addu      $s2, $v1, $v0
/* 1658AC 8024504C 8E420000 */  lw        $v0, ($s2)
/* 1658B0 80245050 1440000F */  bnez      $v0, .L80245090
/* 1658B4 80245054 00000000 */   nop      
/* 1658B8 80245058 0C0926A9 */  jal       func_80249AA4
/* 1658BC 8024505C 2404000C */   addiu    $a0, $zero, 0xc
/* 1658C0 80245060 0040202D */  daddu     $a0, $v0, $zero
/* 1658C4 80245064 8FA80058 */  lw        $t0, 0x58($sp)
/* 1658C8 80245068 240700FF */  addiu     $a3, $zero, 0xff
/* 1658CC 8024506C 2505001E */  addiu     $a1, $t0, 0x1e
.L80245070:
/* 1658D0 80245070 8FA8005C */  lw        $t0, 0x5c($sp)
/* 1658D4 80245074 2402000A */  addiu     $v0, $zero, 0xa
/* 1658D8 80245078 AFA20010 */  sw        $v0, 0x10($sp)
/* 1658DC 8024507C AFA00014 */  sw        $zero, 0x14($sp)
/* 1658E0 80245080 0C09265F */  jal       func_8024997C
/* 1658E4 80245084 25060014 */   addiu    $a2, $t0, 0x14
/* 1658E8 80245088 08091507 */  j         .L8024541C
/* 1658EC 8024508C 00000000 */   nop      
.L80245090:
/* 1658F0 80245090 0C0926A9 */  jal       func_80249AA4
/* 1658F4 80245094 24040007 */   addiu    $a0, $zero, 7
/* 1658F8 80245098 8FA80058 */  lw        $t0, 0x58($sp)
/* 1658FC 8024509C 0040202D */  daddu     $a0, $v0, $zero
/* 165900 802450A0 25050022 */  addiu     $a1, $t0, 0x22
/* 165904 802450A4 8FA8005C */  lw        $t0, 0x5c($sp)
/* 165908 802450A8 240700FF */  addiu     $a3, $zero, 0xff
/* 16590C 802450AC 2511000A */  addiu     $s1, $t0, 0xa
/* 165910 802450B0 0220302D */  daddu     $a2, $s1, $zero
/* 165914 802450B4 2408000A */  addiu     $t0, $zero, 0xa
/* 165918 802450B8 AFA80010 */  sw        $t0, 0x10($sp)
/* 16591C 802450BC 24080001 */  addiu     $t0, $zero, 1
/* 165920 802450C0 0C09265F */  jal       func_8024997C
/* 165924 802450C4 AFA80014 */   sw       $t0, 0x14($sp)
/* 165928 802450C8 3C156666 */  lui       $s5, 0x6666
/* 16592C 802450CC 36B56667 */  ori       $s5, $s5, 0x6667
/* 165930 802450D0 0220302D */  daddu     $a2, $s1, $zero
/* 165934 802450D4 24070001 */  addiu     $a3, $zero, 1
/* 165938 802450D8 8FA80058 */  lw        $t0, 0x58($sp)
/* 16593C 802450DC 92420006 */  lbu       $v0, 6($s2)
/* 165940 802450E0 2505004F */  addiu     $a1, $t0, 0x4f
/* 165944 802450E4 2408000A */  addiu     $t0, $zero, 0xa
/* 165948 802450E8 00021600 */  sll       $v0, $v0, 0x18
/* 16594C 802450EC 00029E03 */  sra       $s3, $v0, 0x18
/* 165950 802450F0 AFA80010 */  sw        $t0, 0x10($sp)
/* 165954 802450F4 240800FF */  addiu     $t0, $zero, 0xff
/* 165958 802450F8 02750018 */  mult      $s3, $s5
/* 16595C 802450FC AFA80014 */  sw        $t0, 0x14($sp)
/* 165960 80245100 24080002 */  addiu     $t0, $zero, 2
/* 165964 80245104 000217C3 */  sra       $v0, $v0, 0x1f
/* 165968 80245108 AFA80018 */  sw        $t0, 0x18($sp)
/* 16596C 8024510C 00004010 */  mfhi      $t0
/* 165970 80245110 00088083 */  sra       $s0, $t0, 2
/* 165974 80245114 02028023 */  subu      $s0, $s0, $v0
/* 165978 80245118 0C049DA7 */  jal       draw_number
/* 16597C 8024511C 0200202D */   daddu    $a0, $s0, $zero
/* 165980 80245120 00102080 */  sll       $a0, $s0, 2
/* 165984 80245124 00902021 */  addu      $a0, $a0, $s0
/* 165988 80245128 00042040 */  sll       $a0, $a0, 1
/* 16598C 8024512C 02642023 */  subu      $a0, $s3, $a0
/* 165990 80245130 0220302D */  daddu     $a2, $s1, $zero
/* 165994 80245134 8FA80058 */  lw        $t0, 0x58($sp)
/* 165998 80245138 24070001 */  addiu     $a3, $zero, 1
/* 16599C 8024513C 25050058 */  addiu     $a1, $t0, 0x58
/* 1659A0 80245140 2408000A */  addiu     $t0, $zero, 0xa
/* 1659A4 80245144 AFA80010 */  sw        $t0, 0x10($sp)
/* 1659A8 80245148 240800FF */  addiu     $t0, $zero, 0xff
/* 1659AC 8024514C AFA80014 */  sw        $t0, 0x14($sp)
/* 1659B0 80245150 24080002 */  addiu     $t0, $zero, 2
/* 1659B4 80245154 0C049DA7 */  jal       draw_number
/* 1659B8 80245158 AFA80018 */   sw       $t0, 0x18($sp)
/* 1659BC 8024515C 0C0926A9 */  jal       func_80249AA4
/* 1659C0 80245160 24040008 */   addiu    $a0, $zero, 8
/* 1659C4 80245164 8FA80058 */  lw        $t0, 0x58($sp)
/* 1659C8 80245168 0040202D */  daddu     $a0, $v0, $zero
/* 1659CC 8024516C 2505000B */  addiu     $a1, $t0, 0xb
/* 1659D0 80245170 8FA8005C */  lw        $t0, 0x5c($sp)
/* 1659D4 80245174 240700FF */  addiu     $a3, $zero, 0xff
/* 1659D8 80245178 251E0018 */  addiu     $fp, $t0, 0x18
/* 1659DC 8024517C 03C0302D */  daddu     $a2, $fp, $zero
/* 1659E0 80245180 2408000A */  addiu     $t0, $zero, 0xa
/* 1659E4 80245184 AFA80010 */  sw        $t0, 0x10($sp)
/* 1659E8 80245188 24080001 */  addiu     $t0, $zero, 1
/* 1659EC 8024518C 0C09265F */  jal       func_8024997C
/* 1659F0 80245190 AFA80014 */   sw       $t0, 0x14($sp)
/* 1659F4 80245194 3C020149 */  lui       $v0, 0x149
/* 1659F8 80245198 8E530000 */  lw        $s3, ($s2)
/* 1659FC 8024519C 344296FF */  ori       $v0, $v0, 0x96ff
/* 165A00 802451A0 0053102A */  slt       $v0, $v0, $s3
/* 165A04 802451A4 10400003 */  beqz      $v0, .L802451B4
/* 165A08 802451A8 3C021F11 */   lui      $v0, 0x1f11
/* 165A0C 802451AC 3C130149 */  lui       $s3, 0x149
/* 165A10 802451B0 367396FF */  ori       $s3, $s3, 0x96ff
.L802451B4:
/* 165A14 802451B4 3442A4A5 */  ori       $v0, $v0, 0xa4a5
/* 165A18 802451B8 03C0302D */  daddu     $a2, $fp, $zero
/* 165A1C 802451BC 24070001 */  addiu     $a3, $zero, 1
/* 165A20 802451C0 0000A02D */  daddu     $s4, $zero, $zero
/* 165A24 802451C4 24170011 */  addiu     $s7, $zero, 0x11
/* 165A28 802451C8 02620018 */  mult      $s3, $v0
/* 165A2C 802451CC 8FA80058 */  lw        $t0, 0x58($sp)
/* 165A30 802451D0 2416001C */  addiu     $s6, $zero, 0x1c
/* 165A34 802451D4 AFB20020 */  sw        $s2, 0x20($sp)
/* 165A38 802451D8 001397C3 */  sra       $s2, $s3, 0x1f
/* 165A3C 802451DC 2505004C */  addiu     $a1, $t0, 0x4c
/* 165A40 802451E0 00004010 */  mfhi      $t0
/* 165A44 802451E4 00088483 */  sra       $s0, $t0, 0x12
/* 165A48 802451E8 02128023 */  subu      $s0, $s0, $s2
/* 165A4C 802451EC 02150018 */  mult      $s0, $s5
/* 165A50 802451F0 3C158025 */  lui       $s5, %hi(D_8024C0B0)
/* 165A54 802451F4 26B5C0B0 */  addiu     $s5, $s5, %lo(D_8024C0B0)
/* 165A58 802451F8 2408000A */  addiu     $t0, $zero, 0xa
/* 165A5C 802451FC AFA80010 */  sw        $t0, 0x10($sp)
/* 165A60 80245200 240800FF */  addiu     $t0, $zero, 0xff
/* 165A64 80245204 AFA80014 */  sw        $t0, 0x14($sp)
/* 165A68 80245208 24080002 */  addiu     $t0, $zero, 2
/* 165A6C 8024520C 00101FC3 */  sra       $v1, $s0, 0x1f
/* 165A70 80245210 AFA80018 */  sw        $t0, 0x18($sp)
/* 165A74 80245214 00004010 */  mfhi      $t0
/* 165A78 80245218 00081083 */  sra       $v0, $t0, 2
/* 165A7C 8024521C 00431023 */  subu      $v0, $v0, $v1
/* 165A80 80245220 00022080 */  sll       $a0, $v0, 2
/* 165A84 80245224 00822021 */  addu      $a0, $a0, $v0
/* 165A88 80245228 00E42004 */  sllv      $a0, $a0, $a3
/* 165A8C 8024522C 0C049DA7 */  jal       draw_number
/* 165A90 80245230 02042023 */   subu     $a0, $s0, $a0
/* 165A94 80245234 3C029B58 */  lui       $v0, 0x9b58
/* 165A98 80245238 34423739 */  ori       $v0, $v0, 0x3739
/* 165A9C 8024523C 03C0302D */  daddu     $a2, $fp, $zero
/* 165AA0 80245240 24070001 */  addiu     $a3, $zero, 1
/* 165AA4 80245244 00102080 */  sll       $a0, $s0, 2
/* 165AA8 80245248 00902021 */  addu      $a0, $a0, $s0
/* 165AAC 8024524C 00E42004 */  sllv      $a0, $a0, $a3
/* 165AB0 80245250 8FA80058 */  lw        $t0, 0x58($sp)
/* 165AB4 80245254 02620018 */  mult      $s3, $v0
/* 165AB8 80245258 25050055 */  addiu     $a1, $t0, 0x55
/* 165ABC 8024525C 2408000A */  addiu     $t0, $zero, 0xa
/* 165AC0 80245260 AFA80010 */  sw        $t0, 0x10($sp)
/* 165AC4 80245264 240800FF */  addiu     $t0, $zero, 0xff
/* 165AC8 80245268 AFA80014 */  sw        $t0, 0x14($sp)
/* 165ACC 8024526C 24080002 */  addiu     $t0, $zero, 2
/* 165AD0 80245270 AFA80018 */  sw        $t0, 0x18($sp)
/* 165AD4 80245274 00004010 */  mfhi      $t0
/* 165AD8 80245278 01138821 */  addu      $s1, $t0, $s3
/* 165ADC 8024527C 02F18807 */  srav      $s1, $s1, $s7
/* 165AE0 80245280 02328823 */  subu      $s1, $s1, $s2
/* 165AE4 80245284 0C049DA7 */  jal       draw_number
/* 165AE8 80245288 02242023 */   subu     $a0, $s1, $a0
/* 165AEC 8024528C 0C0926A9 */  jal       func_80249AA4
/* 165AF0 80245290 2404000D */   addiu    $a0, $zero, 0xd
/* 165AF4 80245294 0040202D */  daddu     $a0, $v0, $zero
/* 165AF8 80245298 8FA80058 */  lw        $t0, 0x58($sp)
/* 165AFC 8024529C 240700FF */  addiu     $a3, $zero, 0xff
/* 165B00 802452A0 2510005F */  addiu     $s0, $t0, 0x5f
/* 165B04 802452A4 8FA8005C */  lw        $t0, 0x5c($sp)
/* 165B08 802452A8 0200282D */  daddu     $a1, $s0, $zero
/* 165B0C 802452AC 25060017 */  addiu     $a2, $t0, 0x17
/* 165B10 802452B0 2408000A */  addiu     $t0, $zero, 0xa
/* 165B14 802452B4 AFA80010 */  sw        $t0, 0x10($sp)
/* 165B18 802452B8 24080001 */  addiu     $t0, $zero, 1
/* 165B1C 802452BC 0C09265F */  jal       func_8024997C
/* 165B20 802452C0 AFA80014 */   sw       $t0, 0x14($sp)
/* 165B24 802452C4 0C0926A9 */  jal       func_80249AA4
/* 165B28 802452C8 2404000D */   addiu    $a0, $zero, 0xd
/* 165B2C 802452CC 0040202D */  daddu     $a0, $v0, $zero
/* 165B30 802452D0 0200282D */  daddu     $a1, $s0, $zero
/* 165B34 802452D4 8FA8005C */  lw        $t0, 0x5c($sp)
/* 165B38 802452D8 240700FF */  addiu     $a3, $zero, 0xff
/* 165B3C 802452DC 25060012 */  addiu     $a2, $t0, 0x12
/* 165B40 802452E0 2408000A */  addiu     $t0, $zero, 0xa
/* 165B44 802452E4 AFA80010 */  sw        $t0, 0x10($sp)
/* 165B48 802452E8 24080001 */  addiu     $t0, $zero, 1
/* 165B4C 802452EC 0C09265F */  jal       func_8024997C
/* 165B50 802452F0 AFA80014 */   sw       $t0, 0x14($sp)
/* 165B54 802452F4 3C027482 */  lui       $v0, 0x7482
/* 165B58 802452F8 3442296B */  ori       $v0, $v0, 0x296b
/* 165B5C 802452FC 03C0302D */  daddu     $a2, $fp, $zero
/* 165B60 80245300 24070001 */  addiu     $a3, $zero, 1
/* 165B64 80245304 00F12004 */  sllv      $a0, $s1, $a3
/* 165B68 80245308 00912021 */  addu      $a0, $a0, $s1
/* 165B6C 8024530C 00E42004 */  sllv      $a0, $a0, $a3
/* 165B70 80245310 8FA80058 */  lw        $t0, 0x58($sp)
/* 165B74 80245314 02620018 */  mult      $s3, $v0
/* 165B78 80245318 25050064 */  addiu     $a1, $t0, 0x64
/* 165B7C 8024531C 2408000A */  addiu     $t0, $zero, 0xa
/* 165B80 80245320 AFA80010 */  sw        $t0, 0x10($sp)
/* 165B84 80245324 240800FF */  addiu     $t0, $zero, 0xff
/* 165B88 80245328 AFA80014 */  sw        $t0, 0x14($sp)
/* 165B8C 8024532C 24080002 */  addiu     $t0, $zero, 2
/* 165B90 80245330 AFA80018 */  sw        $t0, 0x18($sp)
/* 165B94 80245334 00004010 */  mfhi      $t0
/* 165B98 80245338 00088383 */  sra       $s0, $t0, 0xe
/* 165B9C 8024533C 02128023 */  subu      $s0, $s0, $s2
/* 165BA0 80245340 0C049DA7 */  jal       draw_number
/* 165BA4 80245344 02042023 */   subu     $a0, $s0, $a0
/* 165BA8 80245348 3C0291A2 */  lui       $v0, 0x91a2
/* 165BAC 8024534C 3442B3C5 */  ori       $v0, $v0, 0xb3c5
/* 165BB0 80245350 03C0302D */  daddu     $a2, $fp, $zero
/* 165BB4 80245354 24070001 */  addiu     $a3, $zero, 1
/* 165BB8 80245358 00102080 */  sll       $a0, $s0, 2
/* 165BBC 8024535C 00902021 */  addu      $a0, $a0, $s0
/* 165BC0 80245360 00E42004 */  sllv      $a0, $a0, $a3
/* 165BC4 80245364 8FA80058 */  lw        $t0, 0x58($sp)
/* 165BC8 80245368 02620018 */  mult      $s3, $v0
/* 165BCC 8024536C 2505006D */  addiu     $a1, $t0, 0x6d
/* 165BD0 80245370 2408000A */  addiu     $t0, $zero, 0xa
/* 165BD4 80245374 AFA80010 */  sw        $t0, 0x10($sp)
/* 165BD8 80245378 240800FF */  addiu     $t0, $zero, 0xff
/* 165BDC 8024537C AFA80014 */  sw        $t0, 0x14($sp)
/* 165BE0 80245380 24080002 */  addiu     $t0, $zero, 2
/* 165BE4 80245384 AFA80018 */  sw        $t0, 0x18($sp)
/* 165BE8 80245388 00004010 */  mfhi      $t0
/* 165BEC 8024538C 01131021 */  addu      $v0, $t0, $s3
/* 165BF0 80245390 000212C3 */  sra       $v0, $v0, 0xb
/* 165BF4 80245394 00521023 */  subu      $v0, $v0, $s2
/* 165BF8 80245398 0C049DA7 */  jal       draw_number
/* 165BFC 8024539C 00442023 */   subu     $a0, $v0, $a0
.L802453A0:
/* 165C00 802453A0 8FA80020 */  lw        $t0, 0x20($sp)
/* 165C04 802453A4 91020004 */  lbu       $v0, 4($t0)
/* 165C08 802453A8 0282102A */  slt       $v0, $s4, $v0
/* 165C0C 802453AC 10400003 */  beqz      $v0, .L802453BC
/* 165C10 802453B0 00000000 */   nop      
/* 165C14 802453B4 080914F3 */  j         .L802453CC
/* 165C18 802453B8 8EB00000 */   lw       $s0, ($s5)
.L802453BC:
/* 165C1C 802453BC 3C088025 */  lui       $t0, %hi(D_8024C0B0)
/* 165C20 802453C0 2508C0B0 */  addiu     $t0, $t0, %lo(D_8024C0B0)
/* 165C24 802453C4 02C81021 */  addu      $v0, $s6, $t0
/* 165C28 802453C8 8C500000 */  lw        $s0, ($v0)
.L802453CC:
/* 165C2C 802453CC 8FA80058 */  lw        $t0, 0x58($sp)
/* 165C30 802453D0 01172821 */  addu      $a1, $t0, $s7
/* 165C34 802453D4 8FA8005C */  lw        $t0, 0x5c($sp)
/* 165C38 802453D8 0200202D */  daddu     $a0, $s0, $zero
/* 165C3C 802453DC 0C051261 */  jal       set_icon_render_pos
/* 165C40 802453E0 2506002C */   addiu    $a2, $t0, 0x2c
/* 165C44 802453E4 16800005 */  bnez      $s4, .L802453FC
/* 165C48 802453E8 00000000 */   nop      
/* 165C4C 802453EC 0C0511F8 */  jal       draw_icon_2
/* 165C50 802453F0 0200202D */   daddu    $a0, $s0, $zero
/* 165C54 802453F4 08091502 */  j         .L80245408
/* 165C58 802453F8 26F70010 */   addiu    $s7, $s7, 0x10
.L802453FC:
/* 165C5C 802453FC 0C0511F1 */  jal       draw_icon_1
/* 165C60 80245400 0200202D */   daddu    $a0, $s0, $zero
/* 165C64 80245404 26F70010 */  addiu     $s7, $s7, 0x10
.L80245408:
/* 165C68 80245408 26D60004 */  addiu     $s6, $s6, 4
/* 165C6C 8024540C 26940001 */  addiu     $s4, $s4, 1
/* 165C70 80245410 2A820007 */  slti      $v0, $s4, 7
/* 165C74 80245414 1440FFE2 */  bnez      $v0, .L802453A0
/* 165C78 80245418 26B50004 */   addiu    $s5, $s5, 4
.L8024541C:
/* 165C7C 8024541C 8FBF004C */  lw        $ra, 0x4c($sp)
/* 165C80 80245420 8FBE0048 */  lw        $fp, 0x48($sp)
/* 165C84 80245424 8FB70044 */  lw        $s7, 0x44($sp)
/* 165C88 80245428 8FB60040 */  lw        $s6, 0x40($sp)
/* 165C8C 8024542C 8FB5003C */  lw        $s5, 0x3c($sp)
/* 165C90 80245430 8FB40038 */  lw        $s4, 0x38($sp)
/* 165C94 80245434 8FB30034 */  lw        $s3, 0x34($sp)
/* 165C98 80245438 8FB20030 */  lw        $s2, 0x30($sp)
/* 165C9C 8024543C 8FB1002C */  lw        $s1, 0x2c($sp)
/* 165CA0 80245440 8FB00028 */  lw        $s0, 0x28($sp)
/* 165CA4 80245444 03E00008 */  jr        $ra
/* 165CA8 80245448 27BD0050 */   addiu    $sp, $sp, 0x50
