.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

glabel func_80240878_969A38
/* 969A38 80240878 27BDFFD8 */  addiu     $sp, $sp, -0x28
/* 969A3C 8024087C AFB00010 */  sw        $s0, 0x10($sp)
/* 969A40 80240880 0080802D */  daddu     $s0, $a0, $zero
/* 969A44 80240884 AFBF0020 */  sw        $ra, 0x20($sp)
/* 969A48 80240888 AFB3001C */  sw        $s3, 0x1c($sp)
/* 969A4C 8024088C AFB20018 */  sw        $s2, 0x18($sp)
/* 969A50 80240890 10A00009 */  beqz      $a1, .L802408B8
/* 969A54 80240894 AFB10014 */   sw       $s1, 0x14($sp)
/* 969A58 80240898 0000202D */  daddu     $a0, $zero, $zero
/* 969A5C 8024089C 0080282D */  daddu     $a1, $a0, $zero
/* 969A60 802408A0 0080302D */  daddu     $a2, $a0, $zero
/* 969A64 802408A4 0C046F97 */  jal       set_background_color_blend
/* 969A68 802408A8 240700FF */   addiu    $a3, $zero, 0xff
/* 969A6C 802408AC 240200FF */  addiu     $v0, $zero, 0xff
/* 969A70 802408B0 AE020070 */  sw        $v0, 0x70($s0)
/* 969A74 802408B4 AE000074 */  sw        $zero, 0x74($s0)
.L802408B8:
/* 969A78 802408B8 8E020070 */  lw        $v0, 0x70($s0)
/* 969A7C 802408BC 2442FFF8 */  addiu     $v0, $v0, -8
/* 969A80 802408C0 04410002 */  bgez      $v0, .L802408CC
/* 969A84 802408C4 AE020070 */   sw       $v0, 0x70($s0)
/* 969A88 802408C8 AE000070 */  sw        $zero, 0x70($s0)
.L802408CC:
/* 969A8C 802408CC 0000202D */  daddu     $a0, $zero, $zero
/* 969A90 802408D0 0080282D */  daddu     $a1, $a0, $zero
/* 969A94 802408D4 92070073 */  lbu       $a3, 0x73($s0)
/* 969A98 802408D8 0C046F97 */  jal       set_background_color_blend
/* 969A9C 802408DC 0080302D */   daddu    $a2, $a0, $zero
/* 969AA0 802408E0 8E020070 */  lw        $v0, 0x70($s0)
/* 969AA4 802408E4 14400006 */  bnez      $v0, .L80240900
/* 969AA8 802408E8 00000000 */   nop      
/* 969AAC 802408EC 8E020074 */  lw        $v0, 0x74($s0)
/* 969AB0 802408F0 14400003 */  bnez      $v0, .L80240900
/* 969AB4 802408F4 24020001 */   addiu    $v0, $zero, 1
/* 969AB8 802408F8 08090273 */  j         .L802409CC
/* 969ABC 802408FC AE020074 */   sw       $v0, 0x74($s0)
.L80240900:
/* 969AC0 80240900 8E030074 */  lw        $v1, 0x74($s0)
/* 969AC4 80240904 24020001 */  addiu     $v0, $zero, 1
/* 969AC8 80240908 14620031 */  bne       $v1, $v0, .L802409D0
/* 969ACC 8024090C 0000102D */   daddu    $v0, $zero, $zero
/* 969AD0 80240910 0C04760B */  jal       func_8011D82C
/* 969AD4 80240914 0000202D */   daddu    $a0, $zero, $zero
/* 969AD8 80240918 0000802D */  daddu     $s0, $zero, $zero
/* 969ADC 8024091C 2413FFFC */  addiu     $s3, $zero, -4
/* 969AE0 80240920 2412000A */  addiu     $s2, $zero, 0xa
/* 969AE4 80240924 3C11FF7F */  lui       $s1, 0xff7f
/* 969AE8 80240928 3C028015 */  lui       $v0, %hi(D_801512F0)
/* 969AEC 8024092C 8C4212F0 */  lw        $v0, %lo(D_801512F0)($v0)
/* 969AF0 80240930 3631FFFF */  ori       $s1, $s1, 0xffff
/* 969AF4 80240934 A0400000 */  sb        $zero, ($v0)
.L80240938:
/* 969AF8 80240938 0C00E2B7 */  jal       get_npc_by_index
/* 969AFC 8024093C 0200202D */   daddu    $a0, $s0, $zero
/* 969B00 80240940 0040202D */  daddu     $a0, $v0, $zero
/* 969B04 80240944 5080000B */  beql      $a0, $zero, .L80240974
/* 969B08 80240948 26100001 */   addiu    $s0, $s0, 1
/* 969B0C 8024094C 8C820000 */  lw        $v0, ($a0)
/* 969B10 80240950 50400008 */  beql      $v0, $zero, .L80240974
/* 969B14 80240954 26100001 */   addiu    $s0, $s0, 1
/* 969B18 80240958 808300A4 */  lb        $v1, 0xa4($a0)
/* 969B1C 8024095C 10730005 */  beq       $v1, $s3, .L80240974
/* 969B20 80240960 26100001 */   addiu    $s0, $s0, 1
/* 969B24 80240964 10720003 */  beq       $v1, $s2, .L80240974
/* 969B28 80240968 00000000 */   nop      
/* 969B2C 8024096C 00511024 */  and       $v0, $v0, $s1
/* 969B30 80240970 AC820000 */  sw        $v0, ($a0)
.L80240974:
/* 969B34 80240974 2A020040 */  slti      $v0, $s0, 0x40
/* 969B38 80240978 1440FFEF */  bnez      $v0, .L80240938
/* 969B3C 8024097C 00000000 */   nop      
/* 969B40 80240980 0000802D */  daddu     $s0, $zero, $zero
/* 969B44 80240984 3C11F7FF */  lui       $s1, 0xf7ff
/* 969B48 80240988 3631FFFF */  ori       $s1, $s1, 0xffff
.L8024098C:
/* 969B4C 8024098C 0C04C3D6 */  jal       get_item_entity
/* 969B50 80240990 0200202D */   daddu    $a0, $s0, $zero
/* 969B54 80240994 0040182D */  daddu     $v1, $v0, $zero
/* 969B58 80240998 10600007 */  beqz      $v1, .L802409B8
/* 969B5C 8024099C 26100001 */   addiu    $s0, $s0, 1
/* 969B60 802409A0 8C640000 */  lw        $a0, ($v1)
/* 969B64 802409A4 30820010 */  andi      $v0, $a0, 0x10
/* 969B68 802409A8 10400003 */  beqz      $v0, .L802409B8
/* 969B6C 802409AC 00000000 */   nop      
/* 969B70 802409B0 00911024 */  and       $v0, $a0, $s1
/* 969B74 802409B4 AC620000 */  sw        $v0, ($v1)
.L802409B8:
/* 969B78 802409B8 2A020100 */  slti      $v0, $s0, 0x100
/* 969B7C 802409BC 1440FFF3 */  bnez      $v0, .L8024098C
/* 969B80 802409C0 24020002 */   addiu    $v0, $zero, 2
/* 969B84 802409C4 08090274 */  j         .L802409D0
/* 969B88 802409C8 00000000 */   nop      
.L802409CC:
/* 969B8C 802409CC 0000102D */  daddu     $v0, $zero, $zero
.L802409D0:
/* 969B90 802409D0 8FBF0020 */  lw        $ra, 0x20($sp)
/* 969B94 802409D4 8FB3001C */  lw        $s3, 0x1c($sp)
/* 969B98 802409D8 8FB20018 */  lw        $s2, 0x18($sp)
/* 969B9C 802409DC 8FB10014 */  lw        $s1, 0x14($sp)
/* 969BA0 802409E0 8FB00010 */  lw        $s0, 0x10($sp)
/* 969BA4 802409E4 03E00008 */  jr        $ra
/* 969BA8 802409E8 27BD0028 */   addiu    $sp, $sp, 0x28
