.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

glabel pause_spirits_handle_input
/* 14078C 8024D44C 27BDFFE8 */  addiu     $sp, $sp, -0x18
/* 140790 8024D450 AFB00010 */  sw        $s0, 0x10($sp)
/* 140794 8024D454 0080802D */  daddu     $s0, $a0, $zero
/* 140798 8024D458 3C028027 */  lui       $v0, %hi(gPauseMenuHeldButtons)
/* 14079C 8024D45C 8C4200C0 */  lw        $v0, %lo(gPauseMenuHeldButtons)($v0)
/* 1407A0 8024D460 3C030004 */  lui       $v1, 4
/* 1407A4 8024D464 AFBF0014 */  sw        $ra, 0x14($sp)
/* 1407A8 8024D468 92070003 */  lbu       $a3, 3($s0)
/* 1407AC 8024D46C 00431024 */  and       $v0, $v0, $v1
/* 1407B0 8024D470 1040001C */  beqz      $v0, .L8024D4E4
/* 1407B4 8024D474 00000000 */   nop      
.L8024D478:
/* 1407B8 8024D478 92020001 */  lbu       $v0, 1($s0)
/* 1407BC 8024D47C 2442FFFF */  addiu     $v0, $v0, -1
/* 1407C0 8024D480 A2020001 */  sb        $v0, 1($s0)
/* 1407C4 8024D484 00021600 */  sll       $v0, $v0, 0x18
/* 1407C8 8024D488 00022E03 */  sra       $a1, $v0, 0x18
/* 1407CC 8024D48C 04A20015 */  bltzl     $a1, .L8024D4E4
/* 1407D0 8024D490 A2000001 */   sb       $zero, 1($s0)
/* 1407D4 8024D494 82020004 */  lb        $v0, 4($s0)
/* 1407D8 8024D498 82030005 */  lb        $v1, 5($s0)
/* 1407DC 8024D49C 00430018 */  mult      $v0, $v1
/* 1407E0 8024D4A0 00003012 */  mflo      $a2
/* 1407E4 8024D4A4 82020006 */  lb        $v0, 6($s0)
/* 1407E8 8024D4A8 00000000 */  nop       
/* 1407EC 8024D4AC 00C20018 */  mult      $a2, $v0
/* 1407F0 8024D4B0 00002012 */  mflo      $a0
/* 1407F4 8024D4B4 82020002 */  lb        $v0, 2($s0)
/* 1407F8 8024D4B8 00000000 */  nop       
/* 1407FC 8024D4BC 00620018 */  mult      $v1, $v0
/* 140800 8024D4C0 00001812 */  mflo      $v1
/* 140804 8024D4C4 00831021 */  addu      $v0, $a0, $v1
/* 140808 8024D4C8 00451021 */  addu      $v0, $v0, $a1
/* 14080C 8024D4CC 8E030008 */  lw        $v1, 8($s0)
/* 140810 8024D4D0 92040003 */  lbu       $a0, 3($s0)
/* 140814 8024D4D4 00621821 */  addu      $v1, $v1, $v0
/* 140818 8024D4D8 90620000 */  lbu       $v0, ($v1)
/* 14081C 8024D4DC 1082FFE6 */  beq       $a0, $v0, .L8024D478
/* 140820 8024D4E0 00000000 */   nop      
.L8024D4E4:
/* 140824 8024D4E4 3C028027 */  lui       $v0, %hi(gPauseMenuHeldButtons)
/* 140828 8024D4E8 8C4200C0 */  lw        $v0, %lo(gPauseMenuHeldButtons)($v0)
/* 14082C 8024D4EC 3C030008 */  lui       $v1, 8
/* 140830 8024D4F0 00431024 */  and       $v0, $v0, $v1
/* 140834 8024D4F4 1040001E */  beqz      $v0, .L8024D570
/* 140838 8024D4F8 00000000 */   nop      
/* 14083C 8024D4FC 92060005 */  lbu       $a2, 5($s0)
/* 140840 8024D500 82050005 */  lb        $a1, 5($s0)
.L8024D504:
/* 140844 8024D504 92020001 */  lbu       $v0, 1($s0)
/* 140848 8024D508 24420001 */  addiu     $v0, $v0, 1
/* 14084C 8024D50C A2020001 */  sb        $v0, 1($s0)
/* 140850 8024D510 00021600 */  sll       $v0, $v0, 0x18
/* 140854 8024D514 00022603 */  sra       $a0, $v0, 0x18
/* 140858 8024D518 0085102A */  slt       $v0, $a0, $a1
/* 14085C 8024D51C 1040001F */  beqz      $v0, .L8024D59C
/* 140860 8024D520 24C2FFFF */   addiu    $v0, $a2, -1
/* 140864 8024D524 82020004 */  lb        $v0, 4($s0)
/* 140868 8024D528 00450018 */  mult      $v0, $a1
/* 14086C 8024D52C 00001812 */  mflo      $v1
/* 140870 8024D530 82020006 */  lb        $v0, 6($s0)
/* 140874 8024D534 00000000 */  nop       
/* 140878 8024D538 00620018 */  mult      $v1, $v0
/* 14087C 8024D53C 00001812 */  mflo      $v1
/* 140880 8024D540 82020002 */  lb        $v0, 2($s0)
/* 140884 8024D544 00000000 */  nop       
/* 140888 8024D548 00A20018 */  mult      $a1, $v0
/* 14088C 8024D54C 00004812 */  mflo      $t1
/* 140890 8024D550 00691021 */  addu      $v0, $v1, $t1
/* 140894 8024D554 00441021 */  addu      $v0, $v0, $a0
/* 140898 8024D558 8E030008 */  lw        $v1, 8($s0)
/* 14089C 8024D55C 92040003 */  lbu       $a0, 3($s0)
/* 1408A0 8024D560 00621821 */  addu      $v1, $v1, $v0
/* 1408A4 8024D564 90620000 */  lbu       $v0, ($v1)
/* 1408A8 8024D568 1082FFE6 */  beq       $a0, $v0, .L8024D504
/* 1408AC 8024D56C 00000000 */   nop      
.L8024D570:
/* 1408B0 8024D570 3C028027 */  lui       $v0, %hi(gPauseMenuHeldButtons)
/* 1408B4 8024D574 8C4200C0 */  lw        $v0, %lo(gPauseMenuHeldButtons)($v0)
/* 1408B8 8024D578 3C030001 */  lui       $v1, 1
/* 1408BC 8024D57C 00431024 */  and       $v0, $v0, $v1
/* 1408C0 8024D580 10400029 */  beqz      $v0, .L8024D628
/* 1408C4 8024D584 24020002 */   addiu    $v0, $zero, 2
/* 1408C8 8024D588 92030003 */  lbu       $v1, 3($s0)
/* 1408CC 8024D58C 14620005 */  bne       $v1, $v0, .L8024D5A4
/* 1408D0 8024D590 24020005 */   addiu    $v0, $zero, 5
/* 1408D4 8024D594 0809356B */  j         .L8024D5AC
/* 1408D8 8024D598 24020003 */   addiu    $v0, $zero, 3
.L8024D59C:
/* 1408DC 8024D59C 0809355C */  j         .L8024D570
/* 1408E0 8024D5A0 A2020001 */   sb       $v0, 1($s0)
.L8024D5A4:
/* 1408E4 8024D5A4 14620004 */  bne       $v1, $v0, .L8024D5B8
/* 1408E8 8024D5A8 24020001 */   addiu    $v0, $zero, 1
.L8024D5AC:
/* 1408EC 8024D5AC A2020001 */  sb        $v0, 1($s0)
/* 1408F0 8024D5B0 0809358A */  j         .L8024D628
/* 1408F4 8024D5B4 A2000002 */   sb       $zero, 2($s0)
.L8024D5B8:
/* 1408F8 8024D5B8 92020002 */  lbu       $v0, 2($s0)
/* 1408FC 8024D5BC 2442FFFF */  addiu     $v0, $v0, -1
/* 140900 8024D5C0 A2020002 */  sb        $v0, 2($s0)
/* 140904 8024D5C4 00021600 */  sll       $v0, $v0, 0x18
/* 140908 8024D5C8 00022603 */  sra       $a0, $v0, 0x18
/* 14090C 8024D5CC 04820016 */  bltzl     $a0, .L8024D628
/* 140910 8024D5D0 A2000002 */   sb       $zero, 2($s0)
/* 140914 8024D5D4 82020004 */  lb        $v0, 4($s0)
/* 140918 8024D5D8 82030005 */  lb        $v1, 5($s0)
/* 14091C 8024D5DC 00430018 */  mult      $v0, $v1
/* 140920 8024D5E0 00002812 */  mflo      $a1
/* 140924 8024D5E4 82020006 */  lb        $v0, 6($s0)
/* 140928 8024D5E8 00000000 */  nop       
/* 14092C 8024D5EC 00A20018 */  mult      $a1, $v0
/* 140930 8024D5F0 00001012 */  mflo      $v0
/* 140934 8024D5F4 00000000 */  nop       
/* 140938 8024D5F8 00000000 */  nop       
/* 14093C 8024D5FC 00640018 */  mult      $v1, $a0
/* 140940 8024D600 82040001 */  lb        $a0, 1($s0)
/* 140944 8024D604 00001812 */  mflo      $v1
/* 140948 8024D608 00431021 */  addu      $v0, $v0, $v1
/* 14094C 8024D60C 00441021 */  addu      $v0, $v0, $a0
/* 140950 8024D610 8E030008 */  lw        $v1, 8($s0)
/* 140954 8024D614 92040003 */  lbu       $a0, 3($s0)
/* 140958 8024D618 00621821 */  addu      $v1, $v1, $v0
/* 14095C 8024D61C 90620000 */  lbu       $v0, ($v1)
/* 140960 8024D620 1082FFE5 */  beq       $a0, $v0, .L8024D5B8
/* 140964 8024D624 00000000 */   nop      
.L8024D628:
/* 140968 8024D628 3C028027 */  lui       $v0, %hi(gPauseMenuHeldButtons)
/* 14096C 8024D62C 8C4200C0 */  lw        $v0, %lo(gPauseMenuHeldButtons)($v0)
/* 140970 8024D630 3C030002 */  lui       $v1, 2
/* 140974 8024D634 00431024 */  and       $v0, $v0, $v1
/* 140978 8024D638 1040002F */  beqz      $v0, .L8024D6F8
/* 14097C 8024D63C 24020002 */   addiu    $v0, $zero, 2
/* 140980 8024D640 92030003 */  lbu       $v1, 3($s0)
/* 140984 8024D644 14620006 */  bne       $v1, $v0, .L8024D660
/* 140988 8024D648 24020005 */   addiu    $v0, $zero, 5
/* 14098C 8024D64C 24020003 */  addiu     $v0, $zero, 3
/* 140990 8024D650 A2020001 */  sb        $v0, 1($s0)
/* 140994 8024D654 24020001 */  addiu     $v0, $zero, 1
/* 140998 8024D658 080935BE */  j         .L8024D6F8
/* 14099C 8024D65C A2020002 */   sb       $v0, 2($s0)
.L8024D660:
/* 1409A0 8024D660 14620006 */  bne       $v1, $v0, .L8024D67C
/* 1409A4 8024D664 24020001 */   addiu    $v0, $zero, 1
/* 1409A8 8024D668 A2020001 */  sb        $v0, 1($s0)
/* 1409AC 8024D66C 080935BE */  j         .L8024D6F8
/* 1409B0 8024D670 A2020002 */   sb       $v0, 2($s0)
.L8024D674:
/* 1409B4 8024D674 080935BE */  j         .L8024D6F8
/* 1409B8 8024D678 A2020002 */   sb       $v0, 2($s0)
.L8024D67C:
/* 1409BC 8024D67C 92060006 */  lbu       $a2, 6($s0)
/* 1409C0 8024D680 82050006 */  lb        $a1, 6($s0)
.L8024D684:
/* 1409C4 8024D684 92020002 */  lbu       $v0, 2($s0)
/* 1409C8 8024D688 24420001 */  addiu     $v0, $v0, 1
/* 1409CC 8024D68C A2020002 */  sb        $v0, 2($s0)
/* 1409D0 8024D690 00021600 */  sll       $v0, $v0, 0x18
/* 1409D4 8024D694 00022603 */  sra       $a0, $v0, 0x18
/* 1409D8 8024D698 0085102A */  slt       $v0, $a0, $a1
/* 1409DC 8024D69C 1040FFF5 */  beqz      $v0, .L8024D674
/* 1409E0 8024D6A0 24C2FFFF */   addiu    $v0, $a2, -1
/* 1409E4 8024D6A4 82020004 */  lb        $v0, 4($s0)
/* 1409E8 8024D6A8 82030005 */  lb        $v1, 5($s0)
/* 1409EC 8024D6AC 00430018 */  mult      $v0, $v1
/* 1409F0 8024D6B0 00004812 */  mflo      $t1
/* 1409F4 8024D6B4 00000000 */  nop       
/* 1409F8 8024D6B8 00000000 */  nop       
/* 1409FC 8024D6BC 01250018 */  mult      $t1, $a1
/* 140A00 8024D6C0 00001012 */  mflo      $v0
/* 140A04 8024D6C4 00000000 */  nop       
/* 140A08 8024D6C8 00000000 */  nop       
/* 140A0C 8024D6CC 00640018 */  mult      $v1, $a0
/* 140A10 8024D6D0 82040001 */  lb        $a0, 1($s0)
/* 140A14 8024D6D4 00001812 */  mflo      $v1
/* 140A18 8024D6D8 00431021 */  addu      $v0, $v0, $v1
/* 140A1C 8024D6DC 00441021 */  addu      $v0, $v0, $a0
/* 140A20 8024D6E0 8E030008 */  lw        $v1, 8($s0)
/* 140A24 8024D6E4 92040003 */  lbu       $a0, 3($s0)
/* 140A28 8024D6E8 00621821 */  addu      $v1, $v1, $v0
/* 140A2C 8024D6EC 90620000 */  lbu       $v0, ($v1)
/* 140A30 8024D6F0 1082FFE4 */  beq       $a0, $v0, .L8024D684
/* 140A34 8024D6F4 00000000 */   nop      
.L8024D6F8:
/* 140A38 8024D6F8 82020004 */  lb        $v0, 4($s0)
/* 140A3C 8024D6FC 82030005 */  lb        $v1, 5($s0)
/* 140A40 8024D700 00430018 */  mult      $v0, $v1
/* 140A44 8024D704 00002812 */  mflo      $a1
/* 140A48 8024D708 82020006 */  lb        $v0, 6($s0)
/* 140A4C 8024D70C 00000000 */  nop       
/* 140A50 8024D710 00A20018 */  mult      $a1, $v0
/* 140A54 8024D714 00002012 */  mflo      $a0
/* 140A58 8024D718 82020002 */  lb        $v0, 2($s0)
/* 140A5C 8024D71C 00000000 */  nop       
/* 140A60 8024D720 00620018 */  mult      $v1, $v0
/* 140A64 8024D724 00001812 */  mflo      $v1
/* 140A68 8024D728 00831821 */  addu      $v1, $a0, $v1
/* 140A6C 8024D72C 82040001 */  lb        $a0, 1($s0)
/* 140A70 8024D730 8E020008 */  lw        $v0, 8($s0)
/* 140A74 8024D734 00641821 */  addu      $v1, $v1, $a0
/* 140A78 8024D738 00431021 */  addu      $v0, $v0, $v1
/* 140A7C 8024D73C 90420000 */  lbu       $v0, ($v0)
/* 140A80 8024D740 24030004 */  addiu     $v1, $zero, 4
/* 140A84 8024D744 A2020003 */  sb        $v0, 3($s0)
/* 140A88 8024D748 304200FF */  andi      $v0, $v0, 0xff
/* 140A8C 8024D74C 14430003 */  bne       $v0, $v1, .L8024D75C
/* 140A90 8024D750 24020001 */   addiu    $v0, $zero, 1
/* 140A94 8024D754 A2020001 */  sb        $v0, 1($s0)
/* 140A98 8024D758 A2020002 */  sb        $v0, 2($s0)
.L8024D75C:
/* 140A9C 8024D75C 92020003 */  lbu       $v0, 3($s0)
/* 140AA0 8024D760 10470003 */  beq       $v0, $a3, .L8024D770
/* 140AA4 8024D764 00000000 */   nop      
/* 140AA8 8024D768 0C05272D */  jal       play_sound
/* 140AAC 8024D76C 240400C7 */   addiu    $a0, $zero, 0xc7
.L8024D770:
/* 140AB0 8024D770 3C028027 */  lui       $v0, %hi(gPauseMenuPressedButtons)
/* 140AB4 8024D774 8C4200C4 */  lw        $v0, %lo(gPauseMenuPressedButtons)($v0)
/* 140AB8 8024D778 30424000 */  andi      $v0, $v0, 0x4000
/* 140ABC 8024D77C 10400007 */  beqz      $v0, .L8024D79C
/* 140AC0 8024D780 00000000 */   nop      
/* 140AC4 8024D784 3C018027 */  lui       $at, %hi(gPauseMenuCurrentTab)
/* 140AC8 8024D788 A02000D4 */  sb        $zero, %lo(gPauseMenuCurrentTab)($at)
/* 140ACC 8024D78C 0C05272D */  jal       play_sound
/* 140AD0 8024D790 240400CA */   addiu    $a0, $zero, 0xca
/* 140AD4 8024D794 080935FC */  j         .L8024D7F0
/* 140AD8 8024D798 00000000 */   nop      
.L8024D79C:
/* 140ADC 8024D79C 3C018027 */  lui       $at, %hi(gPauseMenuCurrentDescIconScript)
/* 140AE0 8024D7A0 AC2000CC */  sw        $zero, %lo(gPauseMenuCurrentDescIconScript)($at)
/* 140AE4 8024D7A4 0C039D59 */  jal       get_player_data
/* 140AE8 8024D7A8 00000000 */   nop      
/* 140AEC 8024D7AC 92030003 */  lbu       $v1, 3($s0)
/* 140AF0 8024D7B0 8042028E */  lb        $v0, 0x28e($v0)
/* 140AF4 8024D7B4 00031880 */  sll       $v1, $v1, 2
/* 140AF8 8024D7B8 3C018027 */  lui       $at, %hi(D_802706E0)
/* 140AFC 8024D7BC 00230821 */  addu      $at, $at, $v1
/* 140B00 8024D7C0 8C2306E0 */  lw        $v1, %lo(D_802706E0)($at)
/* 140B04 8024D7C4 0062102A */  slt       $v0, $v1, $v0
/* 140B08 8024D7C8 14400005 */  bnez      $v0, .L8024D7E0
/* 140B0C 8024D7CC 3C02001D */   lui      $v0, 0x1d
/* 140B10 8024D7D0 0C093BA0 */  jal       pause_get_menu_string
/* 140B14 8024D7D4 24040056 */   addiu    $a0, $zero, 0x56
/* 140B18 8024D7D8 080935FA */  j         .L8024D7E8
/* 140B1C 8024D7DC 00000000 */   nop      
.L8024D7E0:
/* 140B20 8024D7E0 34420031 */  ori       $v0, $v0, 0x31
/* 140B24 8024D7E4 00621021 */  addu      $v0, $v1, $v0
.L8024D7E8:
/* 140B28 8024D7E8 3C018027 */  lui       $at, %hi(gPauseMenuCurrentDescString)
/* 140B2C 8024D7EC AC2200C8 */  sw        $v0, %lo(gPauseMenuCurrentDescString)($at)
.L8024D7F0:
/* 140B30 8024D7F0 8FBF0014 */  lw        $ra, 0x14($sp)
/* 140B34 8024D7F4 8FB00010 */  lw        $s0, 0x10($sp)
/* 140B38 8024D7F8 03E00008 */  jr        $ra
/* 140B3C 8024D7FC 27BD0018 */   addiu    $sp, $sp, 0x18
