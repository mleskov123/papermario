.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

glabel func_800354EC
/* 108EC 800354EC 27BDFFE0 */  addiu     $sp, $sp, -0x20
/* 108F0 800354F0 AFB10014 */  sw        $s1, 0x14($sp)
/* 108F4 800354F4 3C11800A */  lui       $s1, %hi(D_800A0931)
/* 108F8 800354F8 26310931 */  addiu     $s1, $s1, %lo(D_800A0931)
/* 108FC 800354FC AFBF0018 */  sw        $ra, 0x18($sp)
/* 10900 80035500 AFB00010 */  sw        $s0, 0x10($sp)
/* 10904 80035504 82300000 */  lb        $s0, ($s1)
/* 10908 80035508 24030001 */  addiu     $v1, $zero, 1
/* 1090C 8003550C 1203000B */  beq       $s0, $v1, .L8003553C
/* 10910 80035510 2A020002 */   slti     $v0, $s0, 2
/* 10914 80035514 50400005 */  beql      $v0, $zero, .L8003552C
/* 10918 80035518 24020002 */   addiu    $v0, $zero, 2
/* 1091C 8003551C 52000024 */  beql      $s0, $zero, .L800355B0
/* 10920 80035520 A2230000 */   sb       $v1, ($s1)
/* 10924 80035524 0800D56C */  j         .L800355B0
/* 10928 80035528 00000000 */   nop      
.L8003552C:
/* 1092C 8003552C 1202000A */  beq       $s0, $v0, .L80035558
/* 10930 80035530 00000000 */   nop      
/* 10934 80035534 0800D56C */  j         .L800355B0
/* 10938 80035538 00000000 */   nop      
.L8003553C:
/* 1093C 8003553C 0C051FB1 */  jal       func_80147EC4
/* 10940 80035540 24040003 */   addiu    $a0, $zero, 3
/* 10944 80035544 24020002 */  addiu     $v0, $zero, 2
/* 10948 80035548 3C01800A */  lui       $at, %hi(D_800A0930)
/* 1094C 8003554C A0300930 */  sb        $s0, %lo(D_800A0930)($at)
/* 10950 80035550 0800D56C */  j         .L800355B0
/* 10954 80035554 A2220000 */   sb       $v0, ($s1)
.L80035558:
/* 10958 80035558 3C10800A */  lui       $s0, %hi(D_800A0930)
/* 1095C 8003555C 26100930 */  addiu     $s0, $s0, %lo(D_800A0930)
/* 10960 80035560 82020000 */  lb        $v0, ($s0)
/* 10964 80035564 92030000 */  lbu       $v1, ($s0)
/* 10968 80035568 0440000F */  bltz      $v0, .L800355A8
/* 1096C 8003556C 2462FFFF */   addiu    $v0, $v1, -1
/* 10970 80035570 A2020000 */  sb        $v0, ($s0)
/* 10974 80035574 00021600 */  sll       $v0, $v0, 0x18
/* 10978 80035578 14400008 */  bnez      $v0, .L8003559C
/* 1097C 8003557C 2402FFFF */   addiu    $v0, $zero, -1
/* 10980 80035580 0C00AB28 */  jal       battle_heap_create
/* 10984 80035584 A2020000 */   sb       $v0, ($s0)
/* 10988 80035588 3C048007 */  lui       $a0, %hi(D_8007798C)
/* 1098C 8003558C 0C018038 */  jal       nuPiReadRomOverlay
/* 10990 80035590 2484798C */   addiu    $a0, $a0, %lo(D_8007798C)
/* 10994 80035594 0C091238 */  jal       func_802448E0
/* 10998 80035598 0000202D */   daddu    $a0, $zero, $zero
.L8003559C:
/* 1099C 8003559C 82020000 */  lb        $v0, ($s0)
/* 109A0 800355A0 04410003 */  bgez      $v0, .L800355B0
/* 109A4 800355A4 00000000 */   nop      
.L800355A8:
/* 109A8 800355A8 0C090C68 */  jal       func_802431A0
/* 109AC 800355AC 00000000 */   nop      
.L800355B0:
/* 109B0 800355B0 8FBF0018 */  lw        $ra, 0x18($sp)
/* 109B4 800355B4 8FB10014 */  lw        $s1, 0x14($sp)
/* 109B8 800355B8 8FB00010 */  lw        $s0, 0x10($sp)
/* 109BC 800355BC 03E00008 */  jr        $ra
/* 109C0 800355C0 27BD0020 */   addiu    $sp, $sp, 0x20
