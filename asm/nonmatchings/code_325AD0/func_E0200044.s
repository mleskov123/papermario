.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

glabel func_E0200044
/* 325B14 E0200044 04A10002 */  bgez      $a1, .LE0200050
/* 325B18 E0200048 00A0102D */   daddu    $v0, $a1, $zero
/* 325B1C E020004C 24A2007F */  addiu     $v0, $a1, 0x7f
.LE0200050:
/* 325B20 E0200050 000211C3 */  sra       $v0, $v0, 7
/* 325B24 E0200054 000211C0 */  sll       $v0, $v0, 7
/* 325B28 E0200058 00A21023 */  subu      $v0, $a1, $v0
/* 325B2C E020005C 00021080 */  sll       $v0, $v0, 2
/* 325B30 E0200060 3C03E020 */  lui       $v1, %hi(D_E0200734)
/* 325B34 E0200064 24630734 */  addiu     $v1, $v1, %lo(D_E0200734)
/* 325B38 E0200068 00431021 */  addu      $v0, $v0, $v1
/* 325B3C E020006C 8C420000 */  lw        $v0, ($v0)
/* 325B40 E0200070 04420001 */  bltzl     $v0, .LE0200078
/* 325B44 E0200074 00021023 */   negu     $v0, $v0
.LE0200078:
/* 325B48 E0200078 24830001 */  addiu     $v1, $a0, 1
/* 325B4C E020007C 14600002 */  bnez      $v1, .LE0200088
/* 325B50 E0200080 0043001A */   div      $zero, $v0, $v1
/* 325B54 E0200084 0007000D */  break     7
.LE0200088:
/* 325B58 E0200088 2401FFFF */   addiu    $at, $zero, -1
/* 325B5C E020008C 14610004 */  bne       $v1, $at, .LE02000A0
/* 325B60 E0200090 3C018000 */   lui      $at, 0x8000
/* 325B64 E0200094 14410002 */  bne       $v0, $at, .LE02000A0
/* 325B68 E0200098 00000000 */   nop      
/* 325B6C E020009C 0006000D */  break     6
.LE02000A0:
/* 325B70 E02000A0 00001010 */   mfhi     $v0
/* 325B74 E02000A4 03E00008 */  jr        $ra
/* 325B78 E02000A8 00000000 */   nop      
