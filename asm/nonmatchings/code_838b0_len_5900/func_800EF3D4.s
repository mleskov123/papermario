.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

glabel func_800EF3D4
/* 88884 800EF3D4 3C018011 */  lui       $at, %hi(D_8010CFCA)
/* 88888 800EF3D8 A424CFCA */  sh        $a0, %lo(D_8010CFCA)($at)
/* 8888C 800EF3DC 03E00008 */  jr        $ra
/* 88890 800EF3E0 00000000 */   nop      
