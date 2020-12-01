.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

glabel func_80035058
/* 10458 80035058 27BDFFD8 */  addiu     $sp, $sp, -0x28
/* 1045C 8003505C AFBF001C */  sw        $ra, 0x1c($sp)
/* 10460 80035060 AFB00018 */  sw        $s0, 0x18($sp)
/* 10464 80035064 F7B40020 */  sdc1      $f20, 0x20($sp)
/* 10468 80035068 3C01800A */  lui       $at, %hi(D_800A0931)
/* 1046C 8003506C A0200931 */  sb        $zero, %lo(D_800A0931)($at)
/* 10470 80035070 3C01800A */  lui       $at, %hi(D_800A0932)
/* 10474 80035074 A4200932 */  sh        $zero, %lo(D_800A0932)($at)
/* 10478 80035078 0C03805E */  jal       disable_player_input
/* 1047C 8003507C 00000000 */   nop      
/* 10480 80035080 0C009C22 */  jal       func_80027088
/* 10484 80035084 24040002 */   addiu    $a0, $zero, 2
/* 10488 80035088 0C00AB00 */  jal       general_heap_create
/* 1048C 8003508C 00000000 */   nop      
/* 10490 80035090 0000202D */  daddu     $a0, $zero, $zero
/* 10494 80035094 0C0514BA */  jal       func_801452E8
/* 10498 80035098 0080282D */   daddu    $a1, $a0, $zero
/* 1049C 8003509C 0C050440 */  jal       func_80141100
/* 104A0 800350A0 00000000 */   nop      
/* 104A4 800350A4 0000202D */  daddu     $a0, $zero, $zero
/* 104A8 800350A8 0080282D */  daddu     $a1, $a0, $zero
/* 104AC 800350AC 0C045709 */  jal       load_model_textures
/* 104B0 800350B0 0080302D */   daddu    $a2, $a0, $zero
/* 104B4 800350B4 0000202D */  daddu     $a0, $zero, $zero
/* 104B8 800350B8 2405000C */  addiu     $a1, $zero, 0xc
/* 104BC 800350BC 2406001C */  addiu     $a2, $zero, 0x1c
/* 104C0 800350C0 3C10800B */  lui       $s0, %hi(gCameras)
/* 104C4 800350C4 26101D80 */  addiu     $s0, $s0, %lo(gCameras)
/* 104C8 800350C8 24020006 */  addiu     $v0, $zero, 6
/* 104CC 800350CC A6020004 */  sh        $v0, 4($s0)
/* 104D0 800350D0 24020001 */  addiu     $v0, $zero, 1
/* 104D4 800350D4 A6020006 */  sh        $v0, 6($s0)
/* 104D8 800350D8 24020010 */  addiu     $v0, $zero, 0x10
/* 104DC 800350DC A6020012 */  sh        $v0, 0x12($s0)
/* 104E0 800350E0 24021000 */  addiu     $v0, $zero, 0x1000
/* 104E4 800350E4 A6020014 */  sh        $v0, 0x14($s0)
/* 104E8 800350E8 96020000 */  lhu       $v0, ($s0)
/* 104EC 800350EC 240300B8 */  addiu     $v1, $zero, 0xb8
/* 104F0 800350F0 AFA30010 */  sw        $v1, 0x10($sp)
/* 104F4 800350F4 96030AB0 */  lhu       $v1, 0xab0($s0)
/* 104F8 800350F8 3C0141C8 */  lui       $at, 0x41c8
/* 104FC 800350FC 4481A000 */  mtc1      $at, $f20
/* 10500 80035100 34420002 */  ori       $v0, $v0, 2
/* 10504 80035104 A6020000 */  sh        $v0, ($s0)
/* 10508 80035108 96020558 */  lhu       $v0, 0x558($s0)
/* 1050C 8003510C 24070128 */  addiu     $a3, $zero, 0x128
/* 10510 80035110 3C018007 */  lui       $at, %hi(gCurrentCameraID)
/* 10514 80035114 AC207410 */  sw        $zero, %lo(gCurrentCameraID)($at)
/* 10518 80035118 34420002 */  ori       $v0, $v0, 2
/* 1051C 8003511C A6020558 */  sh        $v0, 0x558($s0)
/* 10520 80035120 96021008 */  lhu       $v0, 0x1008($s0)
/* 10524 80035124 34630002 */  ori       $v1, $v1, 2
/* 10528 80035128 A6030AB0 */  sh        $v1, 0xab0($s0)
/* 1052C 8003512C E6140018 */  swc1      $f20, 0x18($s0)
/* 10530 80035130 34420002 */  ori       $v0, $v0, 2
/* 10534 80035134 0C00B8C5 */  jal       set_cam_viewport
/* 10538 80035138 A6021008 */   sh       $v0, 0x1008($s0)
/* 1053C 8003513C 24020028 */  addiu     $v0, $zero, 0x28
/* 10540 80035140 A602001E */  sh        $v0, 0x1e($s0)
/* 10544 80035144 24020064 */  addiu     $v0, $zero, 0x64
/* 10548 80035148 3C0143FA */  lui       $at, 0x43fa
/* 1054C 8003514C 44810000 */  mtc1      $at, $f0
/* 10550 80035150 3C01447A */  lui       $at, 0x447a
/* 10554 80035154 44811000 */  mtc1      $at, $f2
/* 10558 80035158 3C0144BB */  lui       $at, 0x44bb
/* 1055C 8003515C 34218000 */  ori       $at, $at, 0x8000
/* 10560 80035160 44812000 */  mtc1      $at, $f4
/* 10564 80035164 3C014316 */  lui       $at, 0x4316
/* 10568 80035168 44813000 */  mtc1      $at, $f6
/* 1056C 8003516C 3C04800A */  lui       $a0, %hi(D_8009A650)
/* 10570 80035170 2484A650 */  addiu     $a0, $a0, %lo(D_8009A650)
/* 10574 80035174 A600002C */  sh        $zero, 0x2c($s0)
/* 10578 80035178 A600002E */  sh        $zero, 0x2e($s0)
/* 1057C 8003517C A6000030 */  sh        $zero, 0x30($s0)
/* 10580 80035180 E6140054 */  swc1      $f20, 0x54($s0)
/* 10584 80035184 E6140058 */  swc1      $f20, 0x58($s0)
/* 10588 80035188 A600001C */  sh        $zero, 0x1c($s0)
/* 1058C 8003518C A6020020 */  sh        $v0, 0x20($s0)
/* 10590 80035190 A6000022 */  sh        $zero, 0x22($s0)
/* 10594 80035194 E600003C */  swc1      $f0, 0x3c($s0)
/* 10598 80035198 E6020040 */  swc1      $f2, 0x40($s0)
/* 1059C 8003519C E6040044 */  swc1      $f4, 0x44($s0)
/* 105A0 800351A0 E606005C */  swc1      $f6, 0x5c($s0)
/* 105A4 800351A4 8C820000 */  lw        $v0, ($a0)
/* 105A8 800351A8 3C030001 */  lui       $v1, 1
/* 105AC 800351AC 00431025 */  or        $v0, $v0, $v1
/* 105B0 800351B0 AC820000 */  sw        $v0, ($a0)
/* 105B4 800351B4 8FBF001C */  lw        $ra, 0x1c($sp)
/* 105B8 800351B8 8FB00018 */  lw        $s0, 0x18($sp)
/* 105BC 800351BC D7B40020 */  ldc1      $f20, 0x20($sp)
/* 105C0 800351C0 03E00008 */  jr        $ra
/* 105C4 800351C4 27BD0028 */   addiu    $sp, $sp, 0x28
