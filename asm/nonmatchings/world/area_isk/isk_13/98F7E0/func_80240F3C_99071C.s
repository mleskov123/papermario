.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

glabel func_80240F3C_99071C
/* 99071C 80240F3C 27BDFFB0 */  addiu     $sp, $sp, -0x50
/* 990720 80240F40 AFB40040 */  sw        $s4, 0x40($sp)
/* 990724 80240F44 0080A02D */  daddu     $s4, $a0, $zero
/* 990728 80240F48 AFBF0048 */  sw        $ra, 0x48($sp)
/* 99072C 80240F4C AFB50044 */  sw        $s5, 0x44($sp)
/* 990730 80240F50 AFB3003C */  sw        $s3, 0x3c($sp)
/* 990734 80240F54 AFB20038 */  sw        $s2, 0x38($sp)
/* 990738 80240F58 AFB10034 */  sw        $s1, 0x34($sp)
/* 99073C 80240F5C AFB00030 */  sw        $s0, 0x30($sp)
/* 990740 80240F60 8E920148 */  lw        $s2, 0x148($s4)
/* 990744 80240F64 86440008 */  lh        $a0, 8($s2)
/* 990748 80240F68 8E90000C */  lw        $s0, 0xc($s4)
/* 99074C 80240F6C 0C00EABB */  jal       get_npc_unsafe
/* 990750 80240F70 00A0882D */   daddu    $s1, $a1, $zero
/* 990754 80240F74 0280202D */  daddu     $a0, $s4, $zero
/* 990758 80240F78 8E050000 */  lw        $a1, ($s0)
/* 99075C 80240F7C 0C0B1EAF */  jal       get_variable
/* 990760 80240F80 0040A82D */   daddu    $s5, $v0, $zero
/* 990764 80240F84 AFA00010 */  sw        $zero, 0x10($sp)
/* 990768 80240F88 8E4300D0 */  lw        $v1, 0xd0($s2)
/* 99076C 80240F8C 8C630030 */  lw        $v1, 0x30($v1)
/* 990770 80240F90 AFA30014 */  sw        $v1, 0x14($sp)
/* 990774 80240F94 8E4300D0 */  lw        $v1, 0xd0($s2)
/* 990778 80240F98 8C63001C */  lw        $v1, 0x1c($v1)
/* 99077C 80240F9C AFA30018 */  sw        $v1, 0x18($sp)
/* 990780 80240FA0 8E4300D0 */  lw        $v1, 0xd0($s2)
/* 990784 80240FA4 8C630024 */  lw        $v1, 0x24($v1)
/* 990788 80240FA8 AFA3001C */  sw        $v1, 0x1c($sp)
/* 99078C 80240FAC 8E4300D0 */  lw        $v1, 0xd0($s2)
/* 990790 80240FB0 8C630028 */  lw        $v1, 0x28($v1)
/* 990794 80240FB4 27B30010 */  addiu     $s3, $sp, 0x10
/* 990798 80240FB8 AFA30020 */  sw        $v1, 0x20($sp)
/* 99079C 80240FBC 8E4300D0 */  lw        $v1, 0xd0($s2)
/* 9907A0 80240FC0 3C0142C8 */  lui       $at, 0x42c8
/* 9907A4 80240FC4 44810000 */  mtc1      $at, $f0
/* 9907A8 80240FC8 8C63002C */  lw        $v1, 0x2c($v1)
/* 9907AC 80240FCC 0040802D */  daddu     $s0, $v0, $zero
/* 9907B0 80240FD0 E7A00028 */  swc1      $f0, 0x28($sp)
/* 9907B4 80240FD4 A7A0002C */  sh        $zero, 0x2c($sp)
/* 9907B8 80240FD8 12200016 */  beqz      $s1, .L80241034
/* 9907BC 80240FDC AFA30024 */   sw       $v1, 0x24($sp)
/* 9907C0 80240FE0 8EA20000 */  lw        $v0, ($s5)
/* 9907C4 80240FE4 2403F7FF */  addiu     $v1, $zero, -0x801
/* 9907C8 80240FE8 A6A0008E */  sh        $zero, 0x8e($s5)
/* 9907CC 80240FEC 00431024 */  and       $v0, $v0, $v1
/* 9907D0 80240FF0 2403FDFF */  addiu     $v1, $zero, -0x201
/* 9907D4 80240FF4 00431024 */  and       $v0, $v0, $v1
/* 9907D8 80240FF8 34420008 */  ori       $v0, $v0, 8
/* 9907DC 80240FFC AEA20000 */  sw        $v0, ($s5)
/* 9907E0 80241000 AE800074 */  sw        $zero, 0x74($s4)
/* 9907E4 80241004 AE800070 */  sw        $zero, 0x70($s4)
/* 9907E8 80241008 8E420000 */  lw        $v0, ($s2)
/* 9907EC 8024100C 3C034000 */  lui       $v1, 0x4000
/* 9907F0 80241010 00431024 */  and       $v0, $v0, $v1
/* 9907F4 80241014 10400007 */  beqz      $v0, .L80241034
/* 9907F8 80241018 3C03BFFF */   lui      $v1, 0xbfff
/* 9907FC 8024101C 2402000C */  addiu     $v0, $zero, 0xc
/* 990800 80241020 AE820070 */  sw        $v0, 0x70($s4)
/* 990804 80241024 8E420000 */  lw        $v0, ($s2)
/* 990808 80241028 3463FFFF */  ori       $v1, $v1, 0xffff
/* 99080C 8024102C 00431024 */  and       $v0, $v0, $v1
/* 990810 80241030 AE420000 */  sw        $v0, ($s2)
.L80241034:
/* 990814 80241034 8E830070 */  lw        $v1, 0x70($s4)
/* 990818 80241038 2C62000F */  sltiu     $v0, $v1, 0xf
/* 99081C 8024103C 10400028 */  beqz      $v0, .L802410E0
/* 990820 80241040 00031080 */   sll      $v0, $v1, 2
/* 990824 80241044 3C018024 */  lui       $at, %hi(D_80242EF8)
/* 990828 80241048 00220821 */  addu      $at, $at, $v0
/* 99082C 8024104C 8C222EF8 */  lw        $v0, %lo(D_80242EF8)($at)
/* 990830 80241050 00400008 */  jr        $v0
/* 990834 80241054 00000000 */   nop      
/* 990838 80241058 0280202D */  daddu     $a0, $s4, $zero
/* 99083C 8024105C 0200282D */  daddu     $a1, $s0, $zero
/* 990840 80241060 0C090385 */  jal       func_80240E14_9905F4
/* 990844 80241064 0260302D */   daddu    $a2, $s3, $zero
/* 990848 80241068 0280202D */  daddu     $a0, $s4, $zero
/* 99084C 8024106C 0200282D */  daddu     $a1, $s0, $zero
/* 990850 80241070 0C09008C */  jal       func_80240230_98FA10
/* 990854 80241074 0260302D */   daddu    $a2, $s3, $zero
/* 990858 80241078 08090438 */  j         .L802410E0
/* 99085C 8024107C 00000000 */   nop      
/* 990860 80241080 0280202D */  daddu     $a0, $s4, $zero
/* 990864 80241084 0200282D */  daddu     $a1, $s0, $zero
/* 990868 80241088 0C09015A */  jal       UnkNpcAIFunc1
/* 99086C 8024108C 0260302D */   daddu    $a2, $s3, $zero
/* 990870 80241090 0280202D */  daddu     $a0, $s4, $zero
/* 990874 80241094 0200282D */  daddu     $a1, $s0, $zero
/* 990878 80241098 0C09018A */  jal       func_80240628_98FE08
/* 99087C 8024109C 0260302D */   daddu    $a2, $s3, $zero
/* 990880 802410A0 08090438 */  j         .L802410E0
/* 990884 802410A4 00000000 */   nop      
/* 990888 802410A8 0280202D */  daddu     $a0, $s4, $zero
/* 99088C 802410AC 0200282D */  daddu     $a1, $s0, $zero
/* 990890 802410B0 0C0903AA */  jal       func_80240EA8_990688
/* 990894 802410B4 0260302D */   daddu    $a2, $s3, $zero
/* 990898 802410B8 0280202D */  daddu     $a0, $s4, $zero
/* 99089C 802410BC 0200282D */  daddu     $a1, $s0, $zero
/* 9908A0 802410C0 0C09022B */  jal       func_802408AC_99008C
/* 9908A4 802410C4 0260302D */   daddu    $a2, $s3, $zero
/* 9908A8 802410C8 08090438 */  j         .L802410E0
/* 9908AC 802410CC 00000000 */   nop      
/* 9908B0 802410D0 0280202D */  daddu     $a0, $s4, $zero
/* 9908B4 802410D4 0200282D */  daddu     $a1, $s0, $zero
/* 9908B8 802410D8 0C0902EB */  jal       UnkDurationCheck
/* 9908BC 802410DC 0260302D */   daddu    $a2, $s3, $zero
.L802410E0:
/* 9908C0 802410E0 8FBF0048 */  lw        $ra, 0x48($sp)
/* 9908C4 802410E4 8FB50044 */  lw        $s5, 0x44($sp)
/* 9908C8 802410E8 8FB40040 */  lw        $s4, 0x40($sp)
/* 9908CC 802410EC 8FB3003C */  lw        $s3, 0x3c($sp)
/* 9908D0 802410F0 8FB20038 */  lw        $s2, 0x38($sp)
/* 9908D4 802410F4 8FB10034 */  lw        $s1, 0x34($sp)
/* 9908D8 802410F8 8FB00030 */  lw        $s0, 0x30($sp)
/* 9908DC 802410FC 0000102D */  daddu     $v0, $zero, $zero
/* 9908E0 80241100 03E00008 */  jr        $ra
/* 9908E4 80241104 27BD0050 */   addiu    $sp, $sp, 0x50
