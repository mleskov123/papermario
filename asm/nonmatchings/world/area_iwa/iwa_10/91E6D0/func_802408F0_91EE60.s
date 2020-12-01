.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

glabel func_802408F0_91EE60
/* 91EE60 802408F0 27BDFFA0 */  addiu     $sp, $sp, -0x60
/* 91EE64 802408F4 AFB60040 */  sw        $s6, 0x40($sp)
/* 91EE68 802408F8 0080B02D */  daddu     $s6, $a0, $zero
/* 91EE6C 802408FC AFB00028 */  sw        $s0, 0x28($sp)
/* 91EE70 80240900 00A0802D */  daddu     $s0, $a1, $zero
/* 91EE74 80240904 AFBF0044 */  sw        $ra, 0x44($sp)
/* 91EE78 80240908 AFB5003C */  sw        $s5, 0x3c($sp)
/* 91EE7C 8024090C AFB40038 */  sw        $s4, 0x38($sp)
/* 91EE80 80240910 AFB30034 */  sw        $s3, 0x34($sp)
/* 91EE84 80240914 AFB20030 */  sw        $s2, 0x30($sp)
/* 91EE88 80240918 AFB1002C */  sw        $s1, 0x2c($sp)
/* 91EE8C 8024091C F7B80058 */  sdc1      $f24, 0x58($sp)
/* 91EE90 80240920 F7B60050 */  sdc1      $f22, 0x50($sp)
/* 91EE94 80240924 F7B40048 */  sdc1      $f20, 0x48($sp)
/* 91EE98 80240928 8ED3000C */  lw        $s3, 0xc($s6)
/* 91EE9C 8024092C 0C00EAD2 */  jal       get_npc_safe
/* 91EEA0 80240930 2404FFFC */   addiu    $a0, $zero, -4
/* 91EEA4 80240934 27A50018 */  addiu     $a1, $sp, 0x18
/* 91EEA8 80240938 3C048007 */  lui       $a0, %hi(gCurrentCameraID)
/* 91EEAC 8024093C 8C847410 */  lw        $a0, %lo(gCurrentCameraID)($a0)
/* 91EEB0 80240940 27A6001C */  addiu     $a2, $sp, 0x1c
/* 91EEB4 80240944 00041880 */  sll       $v1, $a0, 2
/* 91EEB8 80240948 00641821 */  addu      $v1, $v1, $a0
/* 91EEBC 8024094C 00031880 */  sll       $v1, $v1, 2
/* 91EEC0 80240950 00641823 */  subu      $v1, $v1, $a0
/* 91EEC4 80240954 000320C0 */  sll       $a0, $v1, 3
/* 91EEC8 80240958 00641821 */  addu      $v1, $v1, $a0
/* 91EECC 8024095C 000318C0 */  sll       $v1, $v1, 3
/* 91EED0 80240960 3C01800B */  lui       $at, %hi(D_800B1DEC)
/* 91EED4 80240964 00230821 */  addu      $at, $at, $v1
/* 91EED8 80240968 C42C1DEC */  lwc1      $f12, %lo(D_800B1DEC)($at)
/* 91EEDC 8024096C 0C00A88D */  jal       sin_cos_deg
/* 91EEE0 80240970 0040A82D */   daddu    $s5, $v0, $zero
/* 91EEE4 80240974 1200005D */  beqz      $s0, .L80240AEC
/* 91EEE8 80240978 00000000 */   nop      
/* 91EEEC 8024097C 0C00AB0A */  jal       general_heap_malloc
/* 91EEF0 80240980 24040068 */   addiu    $a0, $zero, 0x68
/* 91EEF4 80240984 0040902D */  daddu     $s2, $v0, $zero
/* 91EEF8 80240988 02C0202D */  daddu     $a0, $s6, $zero
/* 91EEFC 8024098C 0000882D */  daddu     $s1, $zero, $zero
/* 91EF00 80240990 2414FFFF */  addiu     $s4, $zero, -1
/* 91EF04 80240994 AED20060 */  sw        $s2, 0x60($s6)
/* 91EF08 80240998 8E650000 */  lw        $a1, ($s3)
/* 91EF0C 8024099C 3C014148 */  lui       $at, 0x4148
/* 91EF10 802409A0 4481C000 */  mtc1      $at, $f24
/* 91EF14 802409A4 3C013F80 */  lui       $at, 0x3f80
/* 91EF18 802409A8 4481B000 */  mtc1      $at, $f22
/* 91EF1C 802409AC 4480A000 */  mtc1      $zero, $f20
/* 91EF20 802409B0 0C0B1EAF */  jal       get_variable
/* 91EF24 802409B4 0240802D */   daddu    $s0, $s2, $zero
/* 91EF28 802409B8 0C04417A */  jal       get_entity_by_index
/* 91EF2C 802409BC 0040202D */   daddu    $a0, $v0, $zero
/* 91EF30 802409C0 AE42005C */  sw        $v0, 0x5c($s2)
.L802409C4:
/* 91EF34 802409C4 8E42005C */  lw        $v0, 0x5c($s2)
/* 91EF38 802409C8 C440004C */  lwc1      $f0, 0x4c($v0)
/* 91EF3C 802409CC 0000202D */  daddu     $a0, $zero, $zero
/* 91EF40 802409D0 E7B60010 */  swc1      $f22, 0x10($sp)
/* 91EF44 802409D4 AFB40014 */  sw        $s4, 0x14($sp)
/* 91EF48 802409D8 46180000 */  add.s     $f0, $f0, $f24
/* 91EF4C 802409DC 8C450048 */  lw        $a1, 0x48($v0)
/* 91EF50 802409E0 8C470050 */  lw        $a3, 0x50($v0)
/* 91EF54 802409E4 44060000 */  mfc1      $a2, $f0
/* 91EF58 802409E8 0C01C5BC */  jal       func_800716F0
/* 91EF5C 802409EC 26310001 */   addiu    $s1, $s1, 1
/* 91EF60 802409F0 AE020008 */  sw        $v0, 8($s0)
/* 91EF64 802409F4 E614002C */  swc1      $f20, 0x2c($s0)
/* 91EF68 802409F8 E6140020 */  swc1      $f20, 0x20($s0)
/* 91EF6C 802409FC E6140014 */  swc1      $f20, 0x14($s0)
/* 91EF70 80240A00 E6140050 */  swc1      $f20, 0x50($s0)
/* 91EF74 80240A04 E6140044 */  swc1      $f20, 0x44($s0)
/* 91EF78 80240A08 E6140038 */  swc1      $f20, 0x38($s0)
/* 91EF7C 80240A0C 2A220003 */  slti      $v0, $s1, 3
/* 91EF80 80240A10 1440FFEC */  bnez      $v0, .L802409C4
/* 91EF84 80240A14 26100004 */   addiu    $s0, $s0, 4
/* 91EF88 80240A18 0000882D */  daddu     $s1, $zero, $zero
/* 91EF8C 80240A1C 0240802D */  daddu     $s0, $s2, $zero
/* 91EF90 80240A20 3C148024 */  lui       $s4, %hi(D_80245AB8)
/* 91EF94 80240A24 26945AB8 */  addiu     $s4, $s4, %lo(D_80245AB8)
/* 91EF98 80240A28 3C014248 */  lui       $at, 0x4248
/* 91EF9C 80240A2C 4481A000 */  mtc1      $at, $f20
/* 91EFA0 80240A30 24130044 */  addiu     $s3, $zero, 0x44
/* 91EFA4 80240A34 AE400000 */  sw        $zero, ($s2)
/* 91EFA8 80240A38 AE400004 */  sw        $zero, 4($s2)
/* 91EFAC 80240A3C AE400060 */  sw        $zero, 0x60($s2)
/* 91EFB0 80240A40 AE400064 */  sw        $zero, 0x64($s2)
.L80240A44:
/* 91EFB4 80240A44 27A40020 */  addiu     $a0, $sp, 0x20
/* 91EFB8 80240A48 4406A000 */  mfc1      $a2, $f20
/* 91EFBC 80240A4C 8E870000 */  lw        $a3, ($s4)
/* 91EFC0 80240A50 02532821 */  addu      $a1, $s2, $s3
/* 91EFC4 80240A54 0C00A7E7 */  jal       add_vec2D_polar
/* 91EFC8 80240A58 AFA00020 */   sw       $zero, 0x20($sp)
/* 91EFCC 80240A5C C7A2001C */  lwc1      $f2, 0x1c($sp)
/* 91EFD0 80240A60 C7A40020 */  lwc1      $f4, 0x20($sp)
/* 91EFD4 80240A64 46041082 */  mul.s     $f2, $f2, $f4
/* 91EFD8 80240A68 00000000 */  nop       
/* 91EFDC 80240A6C C7A00018 */  lwc1      $f0, 0x18($sp)
/* 91EFE0 80240A70 46040002 */  mul.s     $f0, $f0, $f4
/* 91EFE4 80240A74 00000000 */  nop       
/* 91EFE8 80240A78 E6020038 */  swc1      $f2, 0x38($s0)
/* 91EFEC 80240A7C E6000050 */  swc1      $f0, 0x50($s0)
/* 91EFF0 80240A80 8E42005C */  lw        $v0, 0x5c($s2)
/* 91EFF4 80240A84 C6000038 */  lwc1      $f0, 0x38($s0)
/* 91EFF8 80240A88 C4420048 */  lwc1      $f2, 0x48($v0)
/* 91EFFC 80240A8C 46001080 */  add.s     $f2, $f2, $f0
/* 91F000 80240A90 C6A00038 */  lwc1      $f0, 0x38($s5)
/* 91F004 80240A94 46020001 */  sub.s     $f0, $f0, $f2
/* 91F008 80240A98 E6000038 */  swc1      $f0, 0x38($s0)
/* 91F00C 80240A9C 8E42005C */  lw        $v0, 0x5c($s2)
/* 91F010 80240AA0 C6000044 */  lwc1      $f0, 0x44($s0)
/* 91F014 80240AA4 C442004C */  lwc1      $f2, 0x4c($v0)
/* 91F018 80240AA8 46001080 */  add.s     $f2, $f2, $f0
/* 91F01C 80240AAC C6A0003C */  lwc1      $f0, 0x3c($s5)
/* 91F020 80240AB0 46020001 */  sub.s     $f0, $f0, $f2
/* 91F024 80240AB4 E6000044 */  swc1      $f0, 0x44($s0)
/* 91F028 80240AB8 8E42005C */  lw        $v0, 0x5c($s2)
/* 91F02C 80240ABC C6000050 */  lwc1      $f0, 0x50($s0)
/* 91F030 80240AC0 C4420050 */  lwc1      $f2, 0x50($v0)
/* 91F034 80240AC4 26940004 */  addiu     $s4, $s4, 4
/* 91F038 80240AC8 46001080 */  add.s     $f2, $f2, $f0
/* 91F03C 80240ACC C6A00040 */  lwc1      $f0, 0x40($s5)
/* 91F040 80240AD0 26730004 */  addiu     $s3, $s3, 4
/* 91F044 80240AD4 46020001 */  sub.s     $f0, $f0, $f2
/* 91F048 80240AD8 26310001 */  addiu     $s1, $s1, 1
/* 91F04C 80240ADC 2A220003 */  slti      $v0, $s1, 3
/* 91F050 80240AE0 E6000050 */  swc1      $f0, 0x50($s0)
/* 91F054 80240AE4 1440FFD7 */  bnez      $v0, .L80240A44
/* 91F058 80240AE8 26100004 */   addiu    $s0, $s0, 4
.L80240AEC:
/* 91F05C 80240AEC 8ED20060 */  lw        $s2, 0x60($s6)
/* 91F060 80240AF0 8E430000 */  lw        $v1, ($s2)
/* 91F064 80240AF4 24020001 */  addiu     $v0, $zero, 1
/* 91F068 80240AF8 10620038 */  beq       $v1, $v0, .L80240BDC
/* 91F06C 80240AFC 28620002 */   slti     $v0, $v1, 2
/* 91F070 80240B00 50400005 */  beql      $v0, $zero, .L80240B18
/* 91F074 80240B04 24020002 */   addiu    $v0, $zero, 2
/* 91F078 80240B08 10600007 */  beqz      $v1, .L80240B28
/* 91F07C 80240B0C 24040005 */   addiu    $a0, $zero, 5
/* 91F080 80240B10 08090330 */  j         .L80240CC0
/* 91F084 80240B14 00000000 */   nop      
.L80240B18:
/* 91F088 80240B18 10620058 */  beq       $v1, $v0, .L80240C7C
/* 91F08C 80240B1C 00000000 */   nop      
/* 91F090 80240B20 08090330 */  j         .L80240CC0
/* 91F094 80240B24 00000000 */   nop      
.L80240B28:
/* 91F098 80240B28 0000882D */  daddu     $s1, $zero, $zero
/* 91F09C 80240B2C 3C148024 */  lui       $s4, %hi(D_80245AB8)
/* 91F0A0 80240B30 26945AB8 */  addiu     $s4, $s4, %lo(D_80245AB8)
/* 91F0A4 80240B34 24130020 */  addiu     $s3, $zero, 0x20
/* 91F0A8 80240B38 3C064248 */  lui       $a2, 0x4248
/* 91F0AC 80240B3C 44800000 */  mtc1      $zero, $f0
/* 91F0B0 80240B40 24020014 */  addiu     $v0, $zero, 0x14
/* 91F0B4 80240B44 AFA20010 */  sw        $v0, 0x10($sp)
/* 91F0B8 80240B48 44050000 */  mfc1      $a1, $f0
/* 91F0BC 80240B4C 8E470060 */  lw        $a3, 0x60($s2)
/* 91F0C0 80240B50 4485B000 */  mtc1      $a1, $f22
/* 91F0C4 80240B54 0C00A8ED */  jal       update_lerp
/* 91F0C8 80240B58 0240802D */   daddu    $s0, $s2, $zero
/* 91F0CC 80240B5C 46000506 */  mov.s     $f20, $f0
.L80240B60:
/* 91F0D0 80240B60 4406A000 */  mfc1      $a2, $f20
/* 91F0D4 80240B64 27A40020 */  addiu     $a0, $sp, 0x20
/* 91F0D8 80240B68 E6160020 */  swc1      $f22, 0x20($s0)
/* 91F0DC 80240B6C 8E870000 */  lw        $a3, ($s4)
/* 91F0E0 80240B70 02532821 */  addu      $a1, $s2, $s3
/* 91F0E4 80240B74 0C00A7E7 */  jal       add_vec2D_polar
/* 91F0E8 80240B78 E7B60020 */   swc1     $f22, 0x20($sp)
/* 91F0EC 80240B7C C7A4001C */  lwc1      $f4, 0x1c($sp)
/* 91F0F0 80240B80 C7A00020 */  lwc1      $f0, 0x20($sp)
/* 91F0F4 80240B84 46002102 */  mul.s     $f4, $f4, $f0
/* 91F0F8 80240B88 00000000 */  nop       
/* 91F0FC 80240B8C C7A20018 */  lwc1      $f2, 0x18($sp)
/* 91F100 80240B90 26940004 */  addiu     $s4, $s4, 4
/* 91F104 80240B94 46001082 */  mul.s     $f2, $f2, $f0
/* 91F108 80240B98 00000000 */  nop       
/* 91F10C 80240B9C 26730004 */  addiu     $s3, $s3, 4
/* 91F110 80240BA0 26310001 */  addiu     $s1, $s1, 1
/* 91F114 80240BA4 2A220003 */  slti      $v0, $s1, 3
/* 91F118 80240BA8 E6040014 */  swc1      $f4, 0x14($s0)
/* 91F11C 80240BAC E602002C */  swc1      $f2, 0x2c($s0)
/* 91F120 80240BB0 1440FFEB */  bnez      $v0, .L80240B60
/* 91F124 80240BB4 26100004 */   addiu    $s0, $s0, 4
/* 91F128 80240BB8 8E420060 */  lw        $v0, 0x60($s2)
/* 91F12C 80240BBC 24420001 */  addiu     $v0, $v0, 1
/* 91F130 80240BC0 AE420060 */  sw        $v0, 0x60($s2)
/* 91F134 80240BC4 28420015 */  slti      $v0, $v0, 0x15
/* 91F138 80240BC8 1440003D */  bnez      $v0, .L80240CC0
/* 91F13C 80240BCC 24020001 */   addiu    $v0, $zero, 1
/* 91F140 80240BD0 AE420000 */  sw        $v0, ($s2)
/* 91F144 80240BD4 08090330 */  j         .L80240CC0
/* 91F148 80240BD8 AE400060 */   sw       $zero, 0x60($s2)
.L80240BDC:
/* 91F14C 80240BDC 0000882D */  daddu     $s1, $zero, $zero
/* 91F150 80240BE0 3C148024 */  lui       $s4, %hi(D_80245AB8)
/* 91F154 80240BE4 26945AB8 */  addiu     $s4, $s4, %lo(D_80245AB8)
/* 91F158 80240BE8 24130020 */  addiu     $s3, $zero, 0x20
/* 91F15C 80240BEC 0240802D */  daddu     $s0, $s2, $zero
/* 91F160 80240BF0 3C014248 */  lui       $at, 0x4248
/* 91F164 80240BF4 4481A000 */  mtc1      $at, $f20
/* 91F168 80240BF8 4480B000 */  mtc1      $zero, $f22
.L80240BFC:
/* 91F16C 80240BFC 4406A000 */  mfc1      $a2, $f20
/* 91F170 80240C00 27A40020 */  addiu     $a0, $sp, 0x20
/* 91F174 80240C04 E6160020 */  swc1      $f22, 0x20($s0)
/* 91F178 80240C08 8E870000 */  lw        $a3, ($s4)
/* 91F17C 80240C0C 02532821 */  addu      $a1, $s2, $s3
/* 91F180 80240C10 0C00A7E7 */  jal       add_vec2D_polar
/* 91F184 80240C14 E7B60020 */   swc1     $f22, 0x20($sp)
/* 91F188 80240C18 C7A4001C */  lwc1      $f4, 0x1c($sp)
/* 91F18C 80240C1C C7A00020 */  lwc1      $f0, 0x20($sp)
/* 91F190 80240C20 46002102 */  mul.s     $f4, $f4, $f0
/* 91F194 80240C24 00000000 */  nop       
/* 91F198 80240C28 C7A20018 */  lwc1      $f2, 0x18($sp)
/* 91F19C 80240C2C 26940004 */  addiu     $s4, $s4, 4
/* 91F1A0 80240C30 46001082 */  mul.s     $f2, $f2, $f0
/* 91F1A4 80240C34 00000000 */  nop       
/* 91F1A8 80240C38 26730004 */  addiu     $s3, $s3, 4
/* 91F1AC 80240C3C 26310001 */  addiu     $s1, $s1, 1
/* 91F1B0 80240C40 2A220003 */  slti      $v0, $s1, 3
/* 91F1B4 80240C44 E6040014 */  swc1      $f4, 0x14($s0)
/* 91F1B8 80240C48 E602002C */  swc1      $f2, 0x2c($s0)
/* 91F1BC 80240C4C 1440FFEB */  bnez      $v0, .L80240BFC
/* 91F1C0 80240C50 26100004 */   addiu    $s0, $s0, 4
/* 91F1C4 80240C54 8E420060 */  lw        $v0, 0x60($s2)
/* 91F1C8 80240C58 24420001 */  addiu     $v0, $v0, 1
/* 91F1CC 80240C5C AE420060 */  sw        $v0, 0x60($s2)
/* 91F1D0 80240C60 28420010 */  slti      $v0, $v0, 0x10
/* 91F1D4 80240C64 14400016 */  bnez      $v0, .L80240CC0
/* 91F1D8 80240C68 2402000F */   addiu    $v0, $zero, 0xf
/* 91F1DC 80240C6C AE420060 */  sw        $v0, 0x60($s2)
/* 91F1E0 80240C70 24020002 */  addiu     $v0, $zero, 2
/* 91F1E4 80240C74 08090330 */  j         .L80240CC0
/* 91F1E8 80240C78 AE420000 */   sw       $v0, ($s2)
.L80240C7C:
/* 91F1EC 80240C7C 8E420060 */  lw        $v0, 0x60($s2)
/* 91F1F0 80240C80 24420001 */  addiu     $v0, $v0, 1
/* 91F1F4 80240C84 AE420060 */  sw        $v0, 0x60($s2)
/* 91F1F8 80240C88 2842001F */  slti      $v0, $v0, 0x1f
/* 91F1FC 80240C8C 1440000C */  bnez      $v0, .L80240CC0
/* 91F200 80240C90 0000882D */   daddu    $s1, $zero, $zero
/* 91F204 80240C94 0240282D */  daddu     $a1, $s2, $zero
.L80240C98:
/* 91F208 80240C98 8CA20008 */  lw        $v0, 8($a1)
/* 91F20C 80240C9C 8C430000 */  lw        $v1, ($v0)
/* 91F210 80240CA0 26310001 */  addiu     $s1, $s1, 1
/* 91F214 80240CA4 34630010 */  ori       $v1, $v1, 0x10
/* 91F218 80240CA8 AC430000 */  sw        $v1, ($v0)
/* 91F21C 80240CAC 2A220003 */  slti      $v0, $s1, 3
/* 91F220 80240CB0 1440FFF9 */  bnez      $v0, .L80240C98
/* 91F224 80240CB4 24A50004 */   addiu    $a1, $a1, 4
/* 91F228 80240CB8 0809037D */  j         .L80240DF4
/* 91F22C 80240CBC 24020002 */   addiu    $v0, $zero, 2
.L80240CC0:
/* 91F230 80240CC0 8E430004 */  lw        $v1, 4($s2)
/* 91F234 80240CC4 10600005 */  beqz      $v1, .L80240CDC
/* 91F238 80240CC8 24020001 */   addiu    $v0, $zero, 1
/* 91F23C 80240CCC 1062000B */  beq       $v1, $v0, .L80240CFC
/* 91F240 80240CD0 0000882D */   daddu    $s1, $zero, $zero
/* 91F244 80240CD4 0809036C */  j         .L80240DB0
/* 91F248 80240CD8 0240282D */   daddu    $a1, $s2, $zero
.L80240CDC:
/* 91F24C 80240CDC 8E420064 */  lw        $v0, 0x64($s2)
/* 91F250 80240CE0 24420001 */  addiu     $v0, $v0, 1
/* 91F254 80240CE4 AE420064 */  sw        $v0, 0x64($s2)
/* 91F258 80240CE8 28420010 */  slti      $v0, $v0, 0x10
/* 91F25C 80240CEC 1440002F */  bnez      $v0, .L80240DAC
/* 91F260 80240CF0 0000882D */   daddu    $s1, $zero, $zero
/* 91F264 80240CF4 08090368 */  j         .L80240DA0
/* 91F268 80240CF8 24020001 */   addiu    $v0, $zero, 1
.L80240CFC:
/* 91F26C 80240CFC 4480A000 */  mtc1      $zero, $f20
/* 91F270 80240D00 24130014 */  addiu     $s3, $zero, 0x14
/* 91F274 80240D04 0240802D */  daddu     $s0, $s2, $zero
.L80240D08:
/* 91F278 80240D08 4405A000 */  mfc1      $a1, $f20
/* 91F27C 80240D0C AFB30010 */  sw        $s3, 0x10($sp)
/* 91F280 80240D10 8E060038 */  lw        $a2, 0x38($s0)
/* 91F284 80240D14 8E470064 */  lw        $a3, 0x64($s2)
/* 91F288 80240D18 0C00A8ED */  jal       update_lerp
/* 91F28C 80240D1C 24040001 */   addiu    $a0, $zero, 1
/* 91F290 80240D20 C6020014 */  lwc1      $f2, 0x14($s0)
/* 91F294 80240D24 46001080 */  add.s     $f2, $f2, $f0
/* 91F298 80240D28 4405A000 */  mfc1      $a1, $f20
/* 91F29C 80240D2C E6020014 */  swc1      $f2, 0x14($s0)
/* 91F2A0 80240D30 AFB30010 */  sw        $s3, 0x10($sp)
/* 91F2A4 80240D34 8E060044 */  lw        $a2, 0x44($s0)
/* 91F2A8 80240D38 8E470064 */  lw        $a3, 0x64($s2)
/* 91F2AC 80240D3C 0C00A8ED */  jal       update_lerp
/* 91F2B0 80240D40 24040001 */   addiu    $a0, $zero, 1
/* 91F2B4 80240D44 C6020020 */  lwc1      $f2, 0x20($s0)
/* 91F2B8 80240D48 46001080 */  add.s     $f2, $f2, $f0
/* 91F2BC 80240D4C 4405A000 */  mfc1      $a1, $f20
/* 91F2C0 80240D50 E6020020 */  swc1      $f2, 0x20($s0)
/* 91F2C4 80240D54 AFB30010 */  sw        $s3, 0x10($sp)
/* 91F2C8 80240D58 8E060050 */  lw        $a2, 0x50($s0)
/* 91F2CC 80240D5C 8E470064 */  lw        $a3, 0x64($s2)
/* 91F2D0 80240D60 0C00A8ED */  jal       update_lerp
/* 91F2D4 80240D64 24040001 */   addiu    $a0, $zero, 1
/* 91F2D8 80240D68 C602002C */  lwc1      $f2, 0x2c($s0)
/* 91F2DC 80240D6C 46001080 */  add.s     $f2, $f2, $f0
/* 91F2E0 80240D70 26310001 */  addiu     $s1, $s1, 1
/* 91F2E4 80240D74 2A220003 */  slti      $v0, $s1, 3
/* 91F2E8 80240D78 E602002C */  swc1      $f2, 0x2c($s0)
/* 91F2EC 80240D7C 1440FFE2 */  bnez      $v0, .L80240D08
/* 91F2F0 80240D80 26100004 */   addiu    $s0, $s0, 4
/* 91F2F4 80240D84 8E420064 */  lw        $v0, 0x64($s2)
/* 91F2F8 80240D88 24420001 */  addiu     $v0, $v0, 1
/* 91F2FC 80240D8C AE420064 */  sw        $v0, 0x64($s2)
/* 91F300 80240D90 28420015 */  slti      $v0, $v0, 0x15
/* 91F304 80240D94 14400005 */  bnez      $v0, .L80240DAC
/* 91F308 80240D98 0000882D */   daddu    $s1, $zero, $zero
/* 91F30C 80240D9C 24020002 */  addiu     $v0, $zero, 2
.L80240DA0:
/* 91F310 80240DA0 AE420004 */  sw        $v0, 4($s2)
/* 91F314 80240DA4 AE400064 */  sw        $zero, 0x64($s2)
/* 91F318 80240DA8 0000882D */  daddu     $s1, $zero, $zero
.L80240DAC:
/* 91F31C 80240DAC 0240282D */  daddu     $a1, $s2, $zero
.L80240DB0:
/* 91F320 80240DB0 8CA20008 */  lw        $v0, 8($a1)
/* 91F324 80240DB4 C4A00014 */  lwc1      $f0, 0x14($a1)
/* 91F328 80240DB8 8C42000C */  lw        $v0, 0xc($v0)
/* 91F32C 80240DBC E4400010 */  swc1      $f0, 0x10($v0)
/* 91F330 80240DC0 8CA20008 */  lw        $v0, 8($a1)
/* 91F334 80240DC4 C4A00020 */  lwc1      $f0, 0x20($a1)
/* 91F338 80240DC8 8C42000C */  lw        $v0, 0xc($v0)
/* 91F33C 80240DCC 26310001 */  addiu     $s1, $s1, 1
/* 91F340 80240DD0 E4400014 */  swc1      $f0, 0x14($v0)
/* 91F344 80240DD4 8CA20008 */  lw        $v0, 8($a1)
/* 91F348 80240DD8 C4A0002C */  lwc1      $f0, 0x2c($a1)
/* 91F34C 80240DDC 8C42000C */  lw        $v0, 0xc($v0)
/* 91F350 80240DE0 E4400018 */  swc1      $f0, 0x18($v0)
/* 91F354 80240DE4 2A220003 */  slti      $v0, $s1, 3
/* 91F358 80240DE8 1440FFF1 */  bnez      $v0, .L80240DB0
/* 91F35C 80240DEC 24A50004 */   addiu    $a1, $a1, 4
/* 91F360 80240DF0 0000102D */  daddu     $v0, $zero, $zero
.L80240DF4:
/* 91F364 80240DF4 8FBF0044 */  lw        $ra, 0x44($sp)
/* 91F368 80240DF8 8FB60040 */  lw        $s6, 0x40($sp)
/* 91F36C 80240DFC 8FB5003C */  lw        $s5, 0x3c($sp)
/* 91F370 80240E00 8FB40038 */  lw        $s4, 0x38($sp)
/* 91F374 80240E04 8FB30034 */  lw        $s3, 0x34($sp)
/* 91F378 80240E08 8FB20030 */  lw        $s2, 0x30($sp)
/* 91F37C 80240E0C 8FB1002C */  lw        $s1, 0x2c($sp)
/* 91F380 80240E10 8FB00028 */  lw        $s0, 0x28($sp)
/* 91F384 80240E14 D7B80058 */  ldc1      $f24, 0x58($sp)
/* 91F388 80240E18 D7B60050 */  ldc1      $f22, 0x50($sp)
/* 91F38C 80240E1C D7B40048 */  ldc1      $f20, 0x48($sp)
/* 91F390 80240E20 03E00008 */  jr        $ra
/* 91F394 80240E24 27BD0060 */   addiu    $sp, $sp, 0x60
