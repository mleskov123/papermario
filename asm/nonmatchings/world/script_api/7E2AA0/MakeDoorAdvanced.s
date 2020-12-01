.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

glabel MakeDoorAdvanced
/* 7E2B2C 80281CAC 27BDFFA8 */  addiu     $sp, $sp, -0x58
/* 7E2B30 80281CB0 AFB10034 */  sw        $s1, 0x34($sp)
/* 7E2B34 80281CB4 0080882D */  daddu     $s1, $a0, $zero
/* 7E2B38 80281CB8 AFBF0054 */  sw        $ra, 0x54($sp)
/* 7E2B3C 80281CBC AFBE0050 */  sw        $fp, 0x50($sp)
/* 7E2B40 80281CC0 AFB7004C */  sw        $s7, 0x4c($sp)
/* 7E2B44 80281CC4 AFB60048 */  sw        $s6, 0x48($sp)
/* 7E2B48 80281CC8 AFB50044 */  sw        $s5, 0x44($sp)
/* 7E2B4C 80281CCC AFB40040 */  sw        $s4, 0x40($sp)
/* 7E2B50 80281CD0 AFB3003C */  sw        $s3, 0x3c($sp)
/* 7E2B54 80281CD4 AFB20038 */  sw        $s2, 0x38($sp)
/* 7E2B58 80281CD8 AFB00030 */  sw        $s0, 0x30($sp)
/* 7E2B5C 80281CDC 8E30000C */  lw        $s0, 0xc($s1)
/* 7E2B60 80281CE0 0C00AB39 */  jal       heap_malloc
/* 7E2B64 80281CE4 24040064 */   addiu    $a0, $zero, 0x64
/* 7E2B68 80281CE8 0220202D */  daddu     $a0, $s1, $zero
/* 7E2B6C 80281CEC 0040902D */  daddu     $s2, $v0, $zero
/* 7E2B70 80281CF0 AE400000 */  sw        $zero, ($s2)
/* 7E2B74 80281CF4 8E050000 */  lw        $a1, ($s0)
/* 7E2B78 80281CF8 0C0B1EAF */  jal       get_variable
/* 7E2B7C 80281CFC 26100004 */   addiu    $s0, $s0, 4
/* 7E2B80 80281D00 0040982D */  daddu     $s3, $v0, $zero
/* 7E2B84 80281D04 32620FFF */  andi      $v0, $s3, 0xfff
/* 7E2B88 80281D08 AE420004 */  sw        $v0, 4($s2)
/* 7E2B8C 80281D0C 3262F000 */  andi      $v0, $s3, 0xf000
/* 7E2B90 80281D10 00021303 */  sra       $v0, $v0, 0xc
/* 7E2B94 80281D14 A6420008 */  sh        $v0, 8($s2)
/* 7E2B98 80281D18 A640000A */  sh        $zero, 0xa($s2)
/* 7E2B9C 80281D1C 8E050000 */  lw        $a1, ($s0)
/* 7E2BA0 80281D20 26100004 */  addiu     $s0, $s0, 4
/* 7E2BA4 80281D24 0C0B1EAF */  jal       get_variable
/* 7E2BA8 80281D28 0220202D */   daddu    $a0, $s1, $zero
/* 7E2BAC 80281D2C 8E050000 */  lw        $a1, ($s0)
/* 7E2BB0 80281D30 26100004 */  addiu     $s0, $s0, 4
/* 7E2BB4 80281D34 0220202D */  daddu     $a0, $s1, $zero
/* 7E2BB8 80281D38 0C0B1EAF */  jal       get_variable
/* 7E2BBC 80281D3C AFA2002C */   sw       $v0, 0x2c($sp)
/* 7E2BC0 80281D40 8E050000 */  lw        $a1, ($s0)
/* 7E2BC4 80281D44 26100004 */  addiu     $s0, $s0, 4
/* 7E2BC8 80281D48 0220202D */  daddu     $a0, $s1, $zero
/* 7E2BCC 80281D4C 0C0B1EAF */  jal       get_variable
/* 7E2BD0 80281D50 0040F02D */   daddu    $fp, $v0, $zero
/* 7E2BD4 80281D54 8E050000 */  lw        $a1, ($s0)
/* 7E2BD8 80281D58 26100004 */  addiu     $s0, $s0, 4
/* 7E2BDC 80281D5C 0220202D */  daddu     $a0, $s1, $zero
/* 7E2BE0 80281D60 0C0B1EAF */  jal       get_variable
/* 7E2BE4 80281D64 0040A82D */   daddu    $s5, $v0, $zero
/* 7E2BE8 80281D68 8E050000 */  lw        $a1, ($s0)
/* 7E2BEC 80281D6C 26100004 */  addiu     $s0, $s0, 4
/* 7E2BF0 80281D70 0220202D */  daddu     $a0, $s1, $zero
/* 7E2BF4 80281D74 0C0B1EAF */  jal       get_variable
/* 7E2BF8 80281D78 0040B82D */   daddu    $s7, $v0, $zero
/* 7E2BFC 80281D7C 0040A02D */  daddu     $s4, $v0, $zero
/* 7E2C00 80281D80 AE540060 */  sw        $s4, 0x60($s2)
/* 7E2C04 80281D84 8E050000 */  lw        $a1, ($s0)
/* 7E2C08 80281D88 26100004 */  addiu     $s0, $s0, 4
/* 7E2C0C 80281D8C 0C0B1EAF */  jal       get_variable
/* 7E2C10 80281D90 0220202D */   daddu    $a0, $s1, $zero
/* 7E2C14 80281D94 8E050000 */  lw        $a1, ($s0)
/* 7E2C18 80281D98 26100004 */  addiu     $s0, $s0, 4
/* 7E2C1C 80281D9C 0220202D */  daddu     $a0, $s1, $zero
/* 7E2C20 80281DA0 0C0B1EAF */  jal       get_variable
/* 7E2C24 80281DA4 0040B02D */   daddu    $s6, $v0, $zero
/* 7E2C28 80281DA8 AE42003C */  sw        $v0, 0x3c($s2)
/* 7E2C2C 80281DAC 8E050000 */  lw        $a1, ($s0)
/* 7E2C30 80281DB0 0C0B1EAF */  jal       get_variable
/* 7E2C34 80281DB4 0220202D */   daddu    $a0, $s1, $zero
/* 7E2C38 80281DB8 12A00003 */  beqz      $s5, .L80281DC8
/* 7E2C3C 80281DBC AE42005C */   sw       $v0, 0x5c($s2)
/* 7E2C40 80281DC0 36730800 */  ori       $s3, $s3, 0x800
/* 7E2C44 80281DC4 AE530004 */  sw        $s3, 4($s2)
.L80281DC8:
/* 7E2C48 80281DC8 0280202D */  daddu     $a0, $s4, $zero
/* 7E2C4C 80281DCC 27A50018 */  addiu     $a1, $sp, 0x18
/* 7E2C50 80281DD0 27B0001C */  addiu     $s0, $sp, 0x1c
/* 7E2C54 80281DD4 0200302D */  daddu     $a2, $s0, $zero
/* 7E2C58 80281DD8 0C016F84 */  jal       get_collider_center
/* 7E2C5C 80281DDC 27A70020 */   addiu    $a3, $sp, 0x20
/* 7E2C60 80281DE0 0280202D */  daddu     $a0, $s4, $zero
/* 7E2C64 80281DE4 27A50024 */  addiu     $a1, $sp, 0x24
/* 7E2C68 80281DE8 0200302D */  daddu     $a2, $s0, $zero
/* 7E2C6C 80281DEC 0C016F76 */  jal       func_8005BDD8
/* 7E2C70 80281DF0 27A70028 */   addiu    $a3, $sp, 0x28
/* 7E2C74 80281DF4 326300FF */  andi      $v1, $s3, 0xff
/* 7E2C78 80281DF8 2C620008 */  sltiu     $v0, $v1, 8
/* 7E2C7C 80281DFC 104000F0 */  beqz      $v0, .L802821C0
/* 7E2C80 80281E00 00031080 */   sll      $v0, $v1, 2
/* 7E2C84 80281E04 3C018028 */  lui       $at, %hi(D_80286500)
/* 7E2C88 80281E08 00220821 */  addu      $at, $at, $v0
/* 7E2C8C 80281E0C 8C226500 */  lw        $v0, %lo(D_80286500)($at)
/* 7E2C90 80281E10 00400008 */  jr        $v0
/* 7E2C94 80281E14 00000000 */   nop      
/* 7E2C98 80281E18 C7AA0024 */  lwc1      $f10, 0x24($sp)
/* 7E2C9C 80281E1C 3C0141F0 */  lui       $at, 0x41f0
/* 7E2CA0 80281E20 44811000 */  mtc1      $at, $f2
/* 7E2CA4 80281E24 00000000 */  nop       
/* 7E2CA8 80281E28 46025302 */  mul.s     $f12, $f10, $f2
/* 7E2CAC 80281E2C 00000000 */  nop       
/* 7E2CB0 80281E30 C7A60028 */  lwc1      $f6, 0x28($sp)
/* 7E2CB4 80281E34 3C0141A0 */  lui       $at, 0x41a0
/* 7E2CB8 80281E38 44810000 */  mtc1      $at, $f0
/* 7E2CBC 80281E3C 00000000 */  nop       
/* 7E2CC0 80281E40 46003102 */  mul.s     $f4, $f6, $f0
/* 7E2CC4 80281E44 00000000 */  nop       
/* 7E2CC8 80281E48 46023182 */  mul.s     $f6, $f6, $f2
/* 7E2CCC 80281E4C 00000000 */  nop       
/* 7E2CD0 80281E50 46005282 */  mul.s     $f10, $f10, $f0
/* 7E2CD4 80281E54 00000000 */  nop       
/* 7E2CD8 80281E58 C7A20018 */  lwc1      $f2, 0x18($sp)
/* 7E2CDC 80281E5C 460C1200 */  add.s     $f8, $f2, $f12
/* 7E2CE0 80281E60 460C1081 */  sub.s     $f2, $f2, $f12
/* 7E2CE4 80281E64 46044201 */  sub.s     $f8, $f8, $f4
/* 7E2CE8 80281E68 C7A00020 */  lwc1      $f0, 0x20($sp)
/* 7E2CEC 80281E6C 46060100 */  add.s     $f4, $f0, $f6
/* 7E2CF0 80281E70 46060001 */  sub.s     $f0, $f0, $f6
/* 7E2CF4 80281E74 E6420014 */  swc1      $f2, 0x14($s2)
/* 7E2CF8 80281E78 080A0819 */  j         .L80282064
/* 7E2CFC 80281E7C 460A2100 */   add.s    $f4, $f4, $f10
/* 7E2D00 80281E80 C7A80024 */  lwc1      $f8, 0x24($sp)
/* 7E2D04 80281E84 3C014270 */  lui       $at, 0x4270
/* 7E2D08 80281E88 44812000 */  mtc1      $at, $f4
/* 7E2D0C 80281E8C 00000000 */  nop       
/* 7E2D10 80281E90 46044302 */  mul.s     $f12, $f8, $f4
/* 7E2D14 80281E94 00000000 */  nop       
/* 7E2D18 80281E98 C7A60028 */  lwc1      $f6, 0x28($sp)
/* 7E2D1C 80281E9C 3C0141A0 */  lui       $at, 0x41a0
/* 7E2D20 80281EA0 44815000 */  mtc1      $at, $f10
/* 7E2D24 80281EA4 00000000 */  nop       
/* 7E2D28 80281EA8 460A3382 */  mul.s     $f14, $f6, $f10
/* 7E2D2C 80281EAC 00000000 */  nop       
/* 7E2D30 80281EB0 46043102 */  mul.s     $f4, $f6, $f4
/* 7E2D34 80281EB4 00000000 */  nop       
/* 7E2D38 80281EB8 460A4282 */  mul.s     $f10, $f8, $f10
/* 7E2D3C 80281EBC 00000000 */  nop       
/* 7E2D40 80281EC0 3C0141F0 */  lui       $at, 0x41f0
/* 7E2D44 80281EC4 44810000 */  mtc1      $at, $f0
/* 7E2D48 80281EC8 00000000 */  nop       
/* 7E2D4C 80281ECC 46004202 */  mul.s     $f8, $f8, $f0
/* 7E2D50 80281ED0 00000000 */  nop       
/* 7E2D54 80281ED4 46003182 */  mul.s     $f6, $f6, $f0
/* 7E2D58 80281ED8 00000000 */  nop       
/* 7E2D5C 80281EDC C7A20018 */  lwc1      $f2, 0x18($sp)
/* 7E2D60 80281EE0 460C1300 */  add.s     $f12, $f2, $f12
/* 7E2D64 80281EE4 C7A00020 */  lwc1      $f0, 0x20($sp)
/* 7E2D68 80281EE8 46040100 */  add.s     $f4, $f0, $f4
/* 7E2D6C 80281EEC 46081081 */  sub.s     $f2, $f2, $f8
/* 7E2D70 80281EF0 46060001 */  sub.s     $f0, $f0, $f6
/* 7E2D74 80281EF4 460E6301 */  sub.s     $f12, $f12, $f14
/* 7E2D78 80281EF8 E6420014 */  swc1      $f2, 0x14($s2)
/* 7E2D7C 80281EFC 080A083D */  j         .L802820F4
/* 7E2D80 80281F00 460A2100 */   add.s    $f4, $f4, $f10
/* 7E2D84 80281F04 C7A80024 */  lwc1      $f8, 0x24($sp)
/* 7E2D88 80281F08 3C0141F0 */  lui       $at, 0x41f0
/* 7E2D8C 80281F0C 44813000 */  mtc1      $at, $f6
/* 7E2D90 80281F10 00000000 */  nop       
/* 7E2D94 80281F14 46064282 */  mul.s     $f10, $f8, $f6
/* 7E2D98 80281F18 00000000 */  nop       
/* 7E2D9C 80281F1C C7A40028 */  lwc1      $f4, 0x28($sp)
/* 7E2DA0 80281F20 46062182 */  mul.s     $f6, $f4, $f6
/* 7E2DA4 80281F24 00000000 */  nop       
/* 7E2DA8 80281F28 3C0141A0 */  lui       $at, 0x41a0
/* 7E2DAC 80281F2C 44810000 */  mtc1      $at, $f0
/* 7E2DB0 80281F30 00000000 */  nop       
/* 7E2DB4 80281F34 46002102 */  mul.s     $f4, $f4, $f0
/* 7E2DB8 80281F38 00000000 */  nop       
/* 7E2DBC 80281F3C 46004202 */  mul.s     $f8, $f8, $f0
/* 7E2DC0 80281F40 00000000 */  nop       
/* 7E2DC4 80281F44 C7A20018 */  lwc1      $f2, 0x18($sp)
/* 7E2DC8 80281F48 460A1300 */  add.s     $f12, $f2, $f10
/* 7E2DCC 80281F4C 460A1081 */  sub.s     $f2, $f2, $f10
/* 7E2DD0 80281F50 C7A00020 */  lwc1      $f0, 0x20($sp)
/* 7E2DD4 80281F54 46060280 */  add.s     $f10, $f0, $f6
/* 7E2DD8 80281F58 46060001 */  sub.s     $f0, $f0, $f6
/* 7E2DDC 80281F5C 46041081 */  sub.s     $f2, $f2, $f4
/* 7E2DE0 80281F60 E64C000C */  swc1      $f12, 0xc($s2)
/* 7E2DE4 80281F64 46080001 */  sub.s     $f0, $f0, $f8
/* 7E2DE8 80281F68 E64A0010 */  swc1      $f10, 0x10($s2)
/* 7E2DEC 80281F6C 080A086F */  j         .L802821BC
/* 7E2DF0 80281F70 E6420014 */   swc1     $f2, 0x14($s2)
/* 7E2DF4 80281F74 C7A80024 */  lwc1      $f8, 0x24($sp)
/* 7E2DF8 80281F78 3C0141F0 */  lui       $at, 0x41f0
/* 7E2DFC 80281F7C 44813000 */  mtc1      $at, $f6
/* 7E2E00 80281F80 00000000 */  nop       
/* 7E2E04 80281F84 46064282 */  mul.s     $f10, $f8, $f6
/* 7E2E08 80281F88 00000000 */  nop       
/* 7E2E0C 80281F8C C7A40028 */  lwc1      $f4, 0x28($sp)
/* 7E2E10 80281F90 46062182 */  mul.s     $f6, $f4, $f6
/* 7E2E14 80281F94 00000000 */  nop       
/* 7E2E18 80281F98 3C014270 */  lui       $at, 0x4270
/* 7E2E1C 80281F9C 44811000 */  mtc1      $at, $f2
/* 7E2E20 80281FA0 00000000 */  nop       
/* 7E2E24 80281FA4 46024302 */  mul.s     $f12, $f8, $f2
/* 7E2E28 80281FA8 00000000 */  nop       
/* 7E2E2C 80281FAC 3C0141A0 */  lui       $at, 0x41a0
/* 7E2E30 80281FB0 44810000 */  mtc1      $at, $f0
/* 7E2E34 80281FB4 00000000 */  nop       
/* 7E2E38 80281FB8 46002382 */  mul.s     $f14, $f4, $f0
/* 7E2E3C 80281FBC 00000000 */  nop       
/* 7E2E40 80281FC0 46022102 */  mul.s     $f4, $f4, $f2
/* 7E2E44 80281FC4 00000000 */  nop       
/* 7E2E48 80281FC8 46004202 */  mul.s     $f8, $f8, $f0
/* 7E2E4C 80281FCC 00000000 */  nop       
/* 7E2E50 80281FD0 C7A20018 */  lwc1      $f2, 0x18($sp)
/* 7E2E54 80281FD4 460A1280 */  add.s     $f10, $f2, $f10
/* 7E2E58 80281FD8 460C1081 */  sub.s     $f2, $f2, $f12
/* 7E2E5C 80281FDC C7A00020 */  lwc1      $f0, 0x20($sp)
/* 7E2E60 80281FE0 46060180 */  add.s     $f6, $f0, $f6
/* 7E2E64 80281FE4 46040001 */  sub.s     $f0, $f0, $f4
/* 7E2E68 80281FE8 460E1081 */  sub.s     $f2, $f2, $f14
/* 7E2E6C 80281FEC E64A000C */  swc1      $f10, 0xc($s2)
/* 7E2E70 80281FF0 46080001 */  sub.s     $f0, $f0, $f8
/* 7E2E74 80281FF4 E6460010 */  swc1      $f6, 0x10($s2)
/* 7E2E78 80281FF8 080A086F */  j         .L802821BC
/* 7E2E7C 80281FFC E6420014 */   swc1     $f2, 0x14($s2)
/* 7E2E80 80282000 C7AA0024 */  lwc1      $f10, 0x24($sp)
/* 7E2E84 80282004 3C0141F0 */  lui       $at, 0x41f0
/* 7E2E88 80282008 44811000 */  mtc1      $at, $f2
/* 7E2E8C 8028200C 00000000 */  nop       
/* 7E2E90 80282010 46025302 */  mul.s     $f12, $f10, $f2
/* 7E2E94 80282014 00000000 */  nop       
/* 7E2E98 80282018 C7A60028 */  lwc1      $f6, 0x28($sp)
/* 7E2E9C 8028201C 3C0141A0 */  lui       $at, 0x41a0
/* 7E2EA0 80282020 44810000 */  mtc1      $at, $f0
/* 7E2EA4 80282024 00000000 */  nop       
/* 7E2EA8 80282028 46003102 */  mul.s     $f4, $f6, $f0
/* 7E2EAC 8028202C 00000000 */  nop       
/* 7E2EB0 80282030 46023182 */  mul.s     $f6, $f6, $f2
/* 7E2EB4 80282034 00000000 */  nop       
/* 7E2EB8 80282038 46005282 */  mul.s     $f10, $f10, $f0
/* 7E2EBC 8028203C 00000000 */  nop       
/* 7E2EC0 80282040 C7A20018 */  lwc1      $f2, 0x18($sp)
/* 7E2EC4 80282044 460C1200 */  add.s     $f8, $f2, $f12
/* 7E2EC8 80282048 460C1081 */  sub.s     $f2, $f2, $f12
/* 7E2ECC 8028204C 46044200 */  add.s     $f8, $f8, $f4
/* 7E2ED0 80282050 C7A00020 */  lwc1      $f0, 0x20($sp)
/* 7E2ED4 80282054 46060100 */  add.s     $f4, $f0, $f6
/* 7E2ED8 80282058 46060001 */  sub.s     $f0, $f0, $f6
/* 7E2EDC 8028205C E6420014 */  swc1      $f2, 0x14($s2)
/* 7E2EE0 80282060 460A2101 */  sub.s     $f4, $f4, $f10
.L80282064:
/* 7E2EE4 80282064 E6400018 */  swc1      $f0, 0x18($s2)
/* 7E2EE8 80282068 E648000C */  swc1      $f8, 0xc($s2)
/* 7E2EEC 8028206C 080A0870 */  j         .L802821C0
/* 7E2EF0 80282070 E6440010 */   swc1     $f4, 0x10($s2)
/* 7E2EF4 80282074 C7A80024 */  lwc1      $f8, 0x24($sp)
/* 7E2EF8 80282078 3C014270 */  lui       $at, 0x4270
/* 7E2EFC 8028207C 44812000 */  mtc1      $at, $f4
/* 7E2F00 80282080 00000000 */  nop       
/* 7E2F04 80282084 46044302 */  mul.s     $f12, $f8, $f4
/* 7E2F08 80282088 00000000 */  nop       
/* 7E2F0C 8028208C C7A60028 */  lwc1      $f6, 0x28($sp)
/* 7E2F10 80282090 3C0141A0 */  lui       $at, 0x41a0
/* 7E2F14 80282094 44815000 */  mtc1      $at, $f10
/* 7E2F18 80282098 00000000 */  nop       
/* 7E2F1C 8028209C 460A3382 */  mul.s     $f14, $f6, $f10
/* 7E2F20 802820A0 00000000 */  nop       
/* 7E2F24 802820A4 46043102 */  mul.s     $f4, $f6, $f4
/* 7E2F28 802820A8 00000000 */  nop       
/* 7E2F2C 802820AC 460A4282 */  mul.s     $f10, $f8, $f10
/* 7E2F30 802820B0 00000000 */  nop       
/* 7E2F34 802820B4 3C0141F0 */  lui       $at, 0x41f0
/* 7E2F38 802820B8 44810000 */  mtc1      $at, $f0
/* 7E2F3C 802820BC 00000000 */  nop       
/* 7E2F40 802820C0 46004202 */  mul.s     $f8, $f8, $f0
/* 7E2F44 802820C4 00000000 */  nop       
/* 7E2F48 802820C8 46003182 */  mul.s     $f6, $f6, $f0
/* 7E2F4C 802820CC 00000000 */  nop       
/* 7E2F50 802820D0 C7A20018 */  lwc1      $f2, 0x18($sp)
/* 7E2F54 802820D4 460C1300 */  add.s     $f12, $f2, $f12
/* 7E2F58 802820D8 C7A00020 */  lwc1      $f0, 0x20($sp)
/* 7E2F5C 802820DC 46040100 */  add.s     $f4, $f0, $f4
/* 7E2F60 802820E0 46081081 */  sub.s     $f2, $f2, $f8
/* 7E2F64 802820E4 46060001 */  sub.s     $f0, $f0, $f6
/* 7E2F68 802820E8 460E6300 */  add.s     $f12, $f12, $f14
/* 7E2F6C 802820EC E6420014 */  swc1      $f2, 0x14($s2)
/* 7E2F70 802820F0 460A2101 */  sub.s     $f4, $f4, $f10
.L802820F4:
/* 7E2F74 802820F4 E6400018 */  swc1      $f0, 0x18($s2)
/* 7E2F78 802820F8 E64C000C */  swc1      $f12, 0xc($s2)
/* 7E2F7C 802820FC 080A0870 */  j         .L802821C0
/* 7E2F80 80282100 E6440010 */   swc1     $f4, 0x10($s2)
/* 7E2F84 80282104 C7A80024 */  lwc1      $f8, 0x24($sp)
/* 7E2F88 80282108 3C0141F0 */  lui       $at, 0x41f0
/* 7E2F8C 8028210C 44813000 */  mtc1      $at, $f6
/* 7E2F90 80282110 00000000 */  nop       
/* 7E2F94 80282114 46064282 */  mul.s     $f10, $f8, $f6
/* 7E2F98 80282118 00000000 */  nop       
/* 7E2F9C 8028211C C7A40028 */  lwc1      $f4, 0x28($sp)
/* 7E2FA0 80282120 46062182 */  mul.s     $f6, $f4, $f6
/* 7E2FA4 80282124 00000000 */  nop       
/* 7E2FA8 80282128 3C0141A0 */  lui       $at, 0x41a0
/* 7E2FAC 8028212C 44810000 */  mtc1      $at, $f0
/* 7E2FB0 80282130 00000000 */  nop       
/* 7E2FB4 80282134 46002102 */  mul.s     $f4, $f4, $f0
/* 7E2FB8 80282138 00000000 */  nop       
/* 7E2FBC 8028213C 46004202 */  mul.s     $f8, $f8, $f0
/* 7E2FC0 80282140 00000000 */  nop       
/* 7E2FC4 80282144 C7A20018 */  lwc1      $f2, 0x18($sp)
/* 7E2FC8 80282148 460A1300 */  add.s     $f12, $f2, $f10
/* 7E2FCC 8028214C 460A1081 */  sub.s     $f2, $f2, $f10
/* 7E2FD0 80282150 C7A00020 */  lwc1      $f0, 0x20($sp)
/* 7E2FD4 80282154 46060280 */  add.s     $f10, $f0, $f6
/* 7E2FD8 80282158 46060001 */  sub.s     $f0, $f0, $f6
/* 7E2FDC 8028215C 46041080 */  add.s     $f2, $f2, $f4
/* 7E2FE0 80282160 E64C000C */  swc1      $f12, 0xc($s2)
/* 7E2FE4 80282164 46080000 */  add.s     $f0, $f0, $f8
/* 7E2FE8 80282168 E64A0010 */  swc1      $f10, 0x10($s2)
/* 7E2FEC 8028216C 080A086F */  j         .L802821BC
/* 7E2FF0 80282170 E6420014 */   swc1     $f2, 0x14($s2)
/* 7E2FF4 80282174 C7A60024 */  lwc1      $f6, 0x24($sp)
/* 7E2FF8 80282178 3C0141F0 */  lui       $at, 0x41f0
/* 7E2FFC 8028217C 44810000 */  mtc1      $at, $f0
/* 7E3000 80282180 00000000 */  nop       
/* 7E3004 80282184 46003182 */  mul.s     $f6, $f6, $f0
/* 7E3008 80282188 00000000 */  nop       
/* 7E300C 8028218C C7A20028 */  lwc1      $f2, 0x28($sp)
/* 7E3010 80282190 46001082 */  mul.s     $f2, $f2, $f0
/* 7E3014 80282194 00000000 */  nop       
/* 7E3018 80282198 C7A40018 */  lwc1      $f4, 0x18($sp)
/* 7E301C 8028219C 46062200 */  add.s     $f8, $f4, $f6
/* 7E3020 802821A0 C7A00020 */  lwc1      $f0, 0x20($sp)
/* 7E3024 802821A4 46020280 */  add.s     $f10, $f0, $f2
/* 7E3028 802821A8 46062101 */  sub.s     $f4, $f4, $f6
/* 7E302C 802821AC 46020001 */  sub.s     $f0, $f0, $f2
/* 7E3030 802821B0 E648000C */  swc1      $f8, 0xc($s2)
/* 7E3034 802821B4 E64A0010 */  swc1      $f10, 0x10($s2)
/* 7E3038 802821B8 E6440014 */  swc1      $f4, 0x14($s2)
.L802821BC:
/* 7E303C 802821BC E6400018 */  swc1      $f0, 0x18($s2)
.L802821C0:
/* 7E3040 802821C0 3C048028 */  lui       $a0, %hi(D_802847D4)
/* 7E3044 802821C4 248447D4 */  addiu     $a0, $a0, %lo(D_802847D4)
/* 7E3048 802821C8 3C02800B */  lui       $v0, %hi(gCameras)
/* 7E304C 802821CC 24421D80 */  addiu     $v0, $v0, %lo(gCameras)
/* 7E3050 802821D0 C6400014 */  lwc1      $f0, 0x14($s2)
/* 7E3054 802821D4 C6420018 */  lwc1      $f2, 0x18($s2)
/* 7E3058 802821D8 C644000C */  lwc1      $f4, 0xc($s2)
/* 7E305C 802821DC C6460010 */  lwc1      $f6, 0x10($s2)
/* 7E3060 802821E0 8FA8002C */  lw        $t0, 0x2c($sp)
/* 7E3064 802821E4 24050100 */  addiu     $a1, $zero, 0x100
/* 7E3068 802821E8 AE48002C */  sw        $t0, 0x2c($s2)
/* 7E306C 802821EC AE5E0030 */  sw        $fp, 0x30($s2)
/* 7E3070 802821F0 AE550034 */  sw        $s5, 0x34($s2)
/* 7E3074 802821F4 AE570038 */  sw        $s7, 0x38($s2)
/* 7E3078 802821F8 E640001C */  swc1      $f0, 0x1c($s2)
/* 7E307C 802821FC E6420020 */  swc1      $f2, 0x20($s2)
/* 7E3080 80282200 E6440024 */  swc1      $f4, 0x24($s2)
/* 7E3084 80282204 E6460028 */  swc1      $f6, 0x28($s2)
/* 7E3088 80282208 8443002C */  lh        $v1, 0x2c($v0)
/* 7E308C 8028220C 0280302D */  daddu     $a2, $s4, $zero
/* 7E3090 80282210 AE430040 */  sw        $v1, 0x40($s2)
/* 7E3094 80282214 8443002E */  lh        $v1, 0x2e($v0)
/* 7E3098 80282218 0000382D */  daddu     $a3, $zero, $zero
/* 7E309C 8028221C AE430044 */  sw        $v1, 0x44($s2)
/* 7E30A0 80282220 84420030 */  lh        $v0, 0x30($v0)
/* 7E30A4 80282224 24100003 */  addiu     $s0, $zero, 3
/* 7E30A8 80282228 AE420048 */  sw        $v0, 0x48($s2)
/* 7E30AC 8028222C AFB20010 */  sw        $s2, 0x10($sp)
/* 7E30B0 80282230 0C0B10AA */  jal       bind_trigger_1
/* 7E30B4 80282234 AFB00014 */   sw       $s0, 0x14($sp)
/* 7E30B8 80282238 32620800 */  andi      $v0, $s3, 0x800
/* 7E30BC 8028223C 10400005 */  beqz      $v0, .L80282254
/* 7E30C0 80282240 24050040 */   addiu    $a1, $zero, 0x40
/* 7E30C4 80282244 3C048028 */  lui       $a0, %hi(D_80284F80)
/* 7E30C8 80282248 24844F80 */  addiu     $a0, $a0, %lo(D_80284F80)
/* 7E30CC 8028224C 080A0899 */  j         .L80282264
/* 7E30D0 80282250 02C0302D */   daddu    $a2, $s6, $zero
.L80282254:
/* 7E30D4 80282254 3C048028 */  lui       $a0, %hi(D_80284F80)
/* 7E30D8 80282258 24844F80 */  addiu     $a0, $a0, %lo(D_80284F80)
/* 7E30DC 8028225C 24050100 */  addiu     $a1, $zero, 0x100
/* 7E30E0 80282260 02C0302D */  daddu     $a2, $s6, $zero
.L80282264:
/* 7E30E4 80282264 24070001 */  addiu     $a3, $zero, 1
/* 7E30E8 80282268 AFB20010 */  sw        $s2, 0x10($sp)
/* 7E30EC 8028226C 0C0B10AA */  jal       bind_trigger_1
/* 7E30F0 80282270 AFB00014 */   sw       $s0, 0x14($sp)
/* 7E30F4 80282274 8FBF0054 */  lw        $ra, 0x54($sp)
/* 7E30F8 80282278 8FBE0050 */  lw        $fp, 0x50($sp)
/* 7E30FC 8028227C 8FB7004C */  lw        $s7, 0x4c($sp)
/* 7E3100 80282280 8FB60048 */  lw        $s6, 0x48($sp)
/* 7E3104 80282284 8FB50044 */  lw        $s5, 0x44($sp)
/* 7E3108 80282288 8FB40040 */  lw        $s4, 0x40($sp)
/* 7E310C 8028228C 8FB3003C */  lw        $s3, 0x3c($sp)
/* 7E3110 80282290 8FB20038 */  lw        $s2, 0x38($sp)
/* 7E3114 80282294 8FB10034 */  lw        $s1, 0x34($sp)
/* 7E3118 80282298 8FB00030 */  lw        $s0, 0x30($sp)
/* 7E311C 8028229C 24020002 */  addiu     $v0, $zero, 2
/* 7E3120 802822A0 03E00008 */  jr        $ra
/* 7E3124 802822A4 27BD0058 */   addiu    $sp, $sp, 0x58
