.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

glabel func_8004CF3C
/* 2833C 8004CF3C 8CA20000 */  lw        $v0, ($a1)
/* 28340 8004CF40 8CA4001C */  lw        $a0, 0x1c($a1)
/* 28344 8004CF44 90430000 */  lbu       $v1, ($v0)
/* 28348 8004CF48 24420001 */  addiu     $v0, $v0, 1
/* 2834C 8004CF4C ACA20000 */  sw        $v0, ($a1)
/* 28350 8004CF50 3063007F */  andi      $v1, $v1, 0x7f
/* 28354 8004CF54 A0A3009E */  sb        $v1, 0x9e($a1)
/* 28358 8004CF58 8C820000 */  lw        $v0, ($a0)
/* 2835C 8004CF5C ACA20020 */  sw        $v0, 0x20($a1)
/* 28360 8004CF60 8C820004 */  lw        $v0, 4($a0)
/* 28364 8004CF64 ACA20024 */  sw        $v0, 0x24($a1)
/* 28368 8004CF68 8C820008 */  lw        $v0, 8($a0)
/* 2836C 8004CF6C ACA20028 */  sw        $v0, 0x28($a1)
/* 28370 8004CF70 8C82000C */  lw        $v0, 0xc($a0)
/* 28374 8004CF74 ACA2002C */  sw        $v0, 0x2c($a1)
/* 28378 8004CF78 8C820010 */  lw        $v0, 0x10($a0)
/* 2837C 8004CF7C ACA20030 */  sw        $v0, 0x30($a1)
/* 28380 8004CF80 8C820014 */  lw        $v0, 0x14($a0)
/* 28384 8004CF84 ACA20034 */  sw        $v0, 0x34($a1)
/* 28388 8004CF88 8C820018 */  lw        $v0, 0x18($a0)
/* 2838C 8004CF8C ACA20038 */  sw        $v0, 0x38($a1)
/* 28390 8004CF90 9482001C */  lhu       $v0, 0x1c($a0)
/* 28394 8004CF94 A4A2003C */  sh        $v0, 0x3c($a1)
/* 28398 8004CF98 9482001E */  lhu       $v0, 0x1e($a0)
/* 2839C 8004CF9C A4A2003E */  sh        $v0, 0x3e($a1)
/* 283A0 8004CFA0 C4800020 */  lwc1      $f0, 0x20($a0)
/* 283A4 8004CFA4 E4A00040 */  swc1      $f0, 0x40($a1)
/* 283A8 8004CFA8 90820024 */  lbu       $v0, 0x24($a0)
/* 283AC 8004CFAC A0A20044 */  sb        $v0, 0x44($a1)
/* 283B0 8004CFB0 90A2009E */  lbu       $v0, 0x9e($a1)
/* 283B4 8004CFB4 90830025 */  lbu       $v1, 0x25($a0)
/* 283B8 8004CFB8 00021080 */  sll       $v0, $v0, 2
/* 283BC 8004CFBC A0A30045 */  sb        $v1, 0x45($a1)
/* 283C0 8004CFC0 3C018008 */  lui       $at, %hi(D_800783C0)
/* 283C4 8004CFC4 00220821 */  addu      $at, $at, $v0
/* 283C8 8004CFC8 8C2283C0 */  lw        $v0, %lo(D_800783C0)($at)
/* 283CC 8004CFCC ACA2004C */  sw        $v0, 0x4c($a1)
/* 283D0 8004CFD0 0040182D */  daddu     $v1, $v0, $zero
/* 283D4 8004CFD4 24A20020 */  addiu     $v0, $a1, 0x20
/* 283D8 8004CFD8 1060000A */  beqz      $v1, .L8004D004
/* 283DC 8004CFDC ACA2001C */   sw       $v0, 0x1c($a1)
/* 283E0 8004CFE0 90620000 */  lbu       $v0, ($v1)
/* 283E4 8004CFE4 10400007 */  beqz      $v0, .L8004D004
/* 283E8 8004CFE8 00000000 */   nop      
/* 283EC 8004CFEC 94620004 */  lhu       $v0, 4($v1)
/* 283F0 8004CFF0 00431021 */  addu      $v0, $v0, $v1
/* 283F4 8004CFF4 ACA20010 */  sw        $v0, 0x10($a1)
/* 283F8 8004CFF8 94620006 */  lhu       $v0, 6($v1)
/* 283FC 8004CFFC 00431021 */  addu      $v0, $v0, $v1
/* 28400 8004D000 ACA20014 */  sw        $v0, 0x14($a1)
.L8004D004:
/* 28404 8004D004 03E00008 */  jr        $ra
/* 28408 8004D008 00000000 */   nop      
