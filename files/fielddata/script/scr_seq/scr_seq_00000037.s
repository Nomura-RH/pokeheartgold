#include "constants/scrcmd.h"
	.include "asm/macros/script.inc"

	.rodata

	scrdef scr_seq_00000037_00000644 ; 000
	scrdef scr_seq_00000037_00000659 ; 001
	scrdef scr_seq_00000037_0000066E ; 002
	scrdef scr_seq_00000037_00000683 ; 003
	scrdef scr_seq_00000037_00000134 ; 004
	scrdef scr_seq_00000037_000000A2 ; 005
	scrdef scr_seq_00000037_00000022 ; 006
	scrdef scr_seq_00000037_000002B8 ; 007
	scrdef_end

scr_seq_00000037_00000022:
	comparevartovalue VAR_UNK_403E, 7
	gotoif ge, scr_seq_00000037_0000005E
	comparevartovalue VAR_UNK_403E, 6
	gotoif eq, scr_seq_00000037_00000080
scr_seq_00000037_0000003C:
	scrcmd_342 11, 418, 284
	scrcmd_342 12, 419, 284
	scrcmd_342 13, 418, 284
	scrcmd_342 14, 419, 284
	end

scr_seq_00000037_0000005E:
	scrcmd_342 8, 418, 284
	scrcmd_342 9, 419, 284
	scrcmd_342 11, 418, 284
	scrcmd_342 12, 419, 284
	end

scr_seq_00000037_00000080:
	scrcmd_342 8, 418, 284
	scrcmd_342 9, 419, 284
	scrcmd_342 13, 418, 284
	scrcmd_342 14, 419, 284
	end

scr_seq_00000037_000000A2:
	checkflag FLAG_UNK_189
	gotoif FALSE, scr_seq_00000037_000000B3
	clearflag FLAG_UNK_189
	end

scr_seq_00000037_000000B3:
	comparevartovalue VAR_UNK_40FB, 9
	gotoif ge, scr_seq_00000037_000000C6
	setvar VAR_UNK_40FB, 1
scr_seq_00000037_000000C6:
	scrcmd_294 2, VAR_TEMP_x4000
	comparevartovalue VAR_TEMP_x4000, 0
	gotoif eq, scr_seq_00000037_00000104
	scrcmd_484 VAR_TEMP_x4000
	comparevartovalue VAR_TEMP_x4000, 5
	gotoif eq, scr_seq_00000037_0000010E
	comparevartovalue VAR_TEMP_x4000, 6
	gotoif eq, scr_seq_00000037_0000010E
	comparevartovalue VAR_TEMP_x4000, 0
	gotoif eq, scr_seq_00000037_0000010E
scr_seq_00000037_00000104:
	setflag FLAG_UNK_27E
	goto scr_seq_00000037_00000112

scr_seq_00000037_0000010E:
	clearflag FLAG_UNK_27E
scr_seq_00000037_00000112:
	comparevartovalue VAR_UNK_403E, 7
	gotoif ge, scr_seq_00000037_0000005E
	comparevartovalue VAR_UNK_403E, 6
	gotoif eq, scr_seq_00000037_00000080
	goto scr_seq_00000037_0000003C

scr_seq_00000037_00000132:
	.byte 0x02, 0x00
scr_seq_00000037_00000134:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	scrcmd_438 2, VAR_SPECIAL_x800C
	scrcmd_440 VAR_SPECIAL_x800C, 0
	scrcmd_746
	getmenuchoice VAR_SPECIAL_x800C
	scrcmd_747
	comparevartovalue VAR_SPECIAL_x800C, 1
	gotoif eq, scr_seq_00000037_00000239
	scrcmd_618 VAR_SPECIAL_x800C
	comparevartovalue VAR_SPECIAL_x800C, 1
	gotoif eq, scr_seq_00000037_0000024D
	scrcmd_438 2, VAR_SPECIAL_x800C
	scrcmd_440 VAR_SPECIAL_x800C, 1
	closemsg
	scrcmd_602 0
	scrcmd_603
	scrcmd_604 55
	scrcmd_386 VAR_SPECIAL_x800C
	comparevartovalue VAR_SPECIAL_x800C, 0
	gotoif ne, scr_seq_00000037_000001AD
	apply_movement 255, scr_seq_00000037_00000264
	apply_movement 8, scr_seq_00000037_0000029C
	goto scr_seq_00000037_000001D8

scr_seq_00000037_000001AD:
	comparevartovalue VAR_SPECIAL_x800C, 1
	gotoif ne, scr_seq_00000037_000001C8
	apply_movement 255, scr_seq_00000037_0000027C
	goto scr_seq_00000037_000001D8

scr_seq_00000037_000001C8:
	apply_movement 255, scr_seq_00000037_00000288
	apply_movement 8, scr_seq_00000037_0000029C
scr_seq_00000037_000001D8:
	wait_movement
	scrcmd_603
	scrcmd_602 1
	scrcmd_604 48
	scrcmd_729 VAR_SPECIAL_x800C
	comparevartovalue VAR_SPECIAL_x800C, 1
	gotoif ne, scr_seq_00000037_000001FF
	apply_movement 253, scr_seq_00000037_000002A8
	wait_movement
scr_seq_00000037_000001FF:
	setflag FLAG_UNK_189
	fade_screen 6, 1, 0, 0
	wait_fade
	scrcmd_615 3
	lockall
	fade_screen 6, 1, 1, 0
	wait_fade
	clearflag FLAG_UNK_189
	scrcmd_438 2, VAR_SPECIAL_x800C
	scrcmd_440 VAR_SPECIAL_x800C, 2
	waitbutton
	closemsg
	releaseall
	end

scr_seq_00000037_00000239:
	scrcmd_438 2, VAR_SPECIAL_x800C
	scrcmd_440 VAR_SPECIAL_x800C, 5
	waitbutton
	closemsg
	releaseall
	end

scr_seq_00000037_0000024D:
	scrcmd_438 2, VAR_SPECIAL_x800C
	scrcmd_440 VAR_SPECIAL_x800C, 3
	waitbutton
	closemsg
	releaseall
	end

scr_seq_00000037_00000261:
	.byte 0x00, 0x00, 0x00

scr_seq_00000037_00000264:
	.short 15, 1
	.short 12, 2
	.short 14, 1
	.short 12, 3
	.short 33, 1
	.short 254, 0

scr_seq_00000037_0000027C:
	.short 12, 3
	.short 33, 1
	.short 254, 0

scr_seq_00000037_00000288:
	.short 12, 1
	.short 14, 1
	.short 12, 3
	.short 33, 1
	.short 254, 0

scr_seq_00000037_0000029C:
	.short 63, 1
	.short 32, 1
	.short 254, 0

scr_seq_00000037_000002A8:
	.short 15, 1
	.short 12, 1
	.short 1, 1
	.short 254, 0
scr_seq_00000037_000002B8:
	scrcmd_609
	lockall
	get_lead_mon_index VAR_TEMP_x4005
	scrcmd_698 2, 16389, 16390
	comparevartovalue VAR_TEMP_x4006, 0
	gotoif eq, scr_seq_00000037_000002DA
	goto scr_seq_00000037_000002EE

scr_seq_00000037_000002DA:
	scrcmd_698 1, 16389, 16391
	comparevartovalue VAR_TEMP_x4007, 0
	gotoif eq, scr_seq_00000037_00000530
scr_seq_00000037_000002EE:
	scrcmd_184 32780
	comparevartovalue VAR_SPECIAL_x800C, 1
	gotoif eq, scr_seq_00000037_00000530
	scrcmd_307 13, 8, 25, 29, 77
	scrcmd_310 77
	scrcmd_308 77
	clearflag FLAG_UNK_2E6
	scrcmd_100 9
	scrcmd_311 77
	scrcmd_308 77
	scrcmd_309 77
	apply_movement 9, scr_seq_00000037_00000534
	apply_movement 255, scr_seq_00000037_000005C4
	scrcmd_386 VAR_TEMP_x4001
	comparevartovalue VAR_TEMP_x4001, 3
	gotoif ne, scr_seq_00000037_00000350
	apply_movement 253, scr_seq_00000037_000005DC
	goto scr_seq_00000037_00000373

scr_seq_00000037_00000350:
	comparevartovalue VAR_TEMP_x4001, 2
	gotoif ne, scr_seq_00000037_0000036B
	apply_movement 253, scr_seq_00000037_000005F4
	goto scr_seq_00000037_00000373

scr_seq_00000037_0000036B:
	apply_movement 253, scr_seq_00000037_00000604
scr_seq_00000037_00000373:
	wait_movement
	msgbox 1
	closemsg
	apply_movement 9, scr_seq_00000037_0000054C
	comparevartovalue VAR_TEMP_x4001, 3
	gotoif ne, scr_seq_00000037_0000039D
	apply_movement 253, scr_seq_00000037_00000614
	goto scr_seq_00000037_000003C0

scr_seq_00000037_0000039D:
	comparevartovalue VAR_TEMP_x4001, 2
	gotoif ne, scr_seq_00000037_000003B8
	apply_movement 253, scr_seq_00000037_00000624
	goto scr_seq_00000037_000003C0

scr_seq_00000037_000003B8:
	apply_movement 253, scr_seq_00000037_00000630
scr_seq_00000037_000003C0:
	wait_movement
	msgbox 2
	closemsg
	comparevartovalue VAR_TEMP_x4001, 3
	gotoif ne, scr_seq_00000037_000003E2
	apply_movement 9, scr_seq_00000037_00000554
	goto scr_seq_00000037_000003EA

scr_seq_00000037_000003E2:
	apply_movement 9, scr_seq_00000037_00000570
scr_seq_00000037_000003EA:
	wait_movement
	msgbox 3
	closemsg
	apply_movement 9, scr_seq_00000037_00000584
	wait_movement
	msgbox 4
	closemsg
	apply_movement 9, scr_seq_00000037_000005A4
	wait_movement
	msgbox 5
	closemsg
	apply_movement 9, scr_seq_00000037_000005B4
	wait_movement
	msgbox 6
	closemsg
	setvar VAR_UNK_40FB, 2
	setflag FLAG_UNK_2E6
	clearflag FLAG_UNK_2E7
	play_se SEQ_SE_DP_KAIDAN2
	comparevartovalue VAR_UNK_403E, 6
	gotoif ne, scr_seq_00000037_00000467
	fade_screen 6, 1, 0, 0
	wait_fade
	scrcmd_176 490, 0, 15, 24, 2
	fade_screen 6, 1, 1, 0
	wait_fade
	goto scr_seq_00000037_00000530

scr_seq_00000037_00000467:
	comparevartovalue VAR_UNK_403E, 7
	gotoif ne, scr_seq_00000037_0000049E
	fade_screen 6, 1, 0, 0
	wait_fade
	scrcmd_176 492, 0, 15, 24, 2
	fade_screen 6, 1, 1, 0
	wait_fade
	goto scr_seq_00000037_00000530

scr_seq_00000037_0000049E:
	comparevartovalue VAR_UNK_403E, 8
	gotoif ne, scr_seq_00000037_000004D5
	fade_screen 6, 1, 0, 0
	wait_fade
	scrcmd_176 492, 0, 15, 24, 2
	fade_screen 6, 1, 1, 0
	wait_fade
	goto scr_seq_00000037_00000530

scr_seq_00000037_000004D5:
	comparevartovalue VAR_UNK_403E, 9
	gotoif ne, scr_seq_00000037_0000050C
	fade_screen 6, 1, 0, 0
	wait_fade
	scrcmd_176 492, 0, 15, 24, 2
	fade_screen 6, 1, 1, 0
	wait_fade
	goto scr_seq_00000037_00000530

scr_seq_00000037_0000050C:
	fade_screen 6, 1, 0, 0
	wait_fade
	scrcmd_176 315, 0, 15, 24, 2
	fade_screen 6, 1, 1, 0
	wait_fade
scr_seq_00000037_00000530:
	releaseall
	end


scr_seq_00000037_00000534:
	.short 62, 1
	.short 17, 3
	.short 71, 1
	.short 20, 1
	.short 72, 1
	.short 254, 0

scr_seq_00000037_0000054C:
	.short 17, 1
	.short 254, 0

scr_seq_00000037_00000554:
	.short 38, 1
	.short 75, 1
	.short 63, 1
	.short 71, 1
	.short 15, 1
	.short 72, 1
	.short 254, 0

scr_seq_00000037_00000570:
	.short 75, 1
	.short 63, 1
	.short 15, 1
	.short 37, 1
	.short 254, 0

scr_seq_00000037_00000584:
	.short 15, 1
	.short 14, 2
	.short 63, 1
	.short 15, 2
	.short 39, 1
	.short 14, 1
	.short 37, 1
	.short 254, 0

scr_seq_00000037_000005A4:
	.short 75, 1
	.short 63, 1
	.short 37, 1
	.short 254, 0

scr_seq_00000037_000005B4:
	.short 14, 1
	.short 13, 1
	.short 37, 1
	.short 254, 0

scr_seq_00000037_000005C4:
	.short 71, 1
	.short 57, 1
	.short 17, 2
	.short 72, 1
	.short 32, 1
	.short 254, 0

scr_seq_00000037_000005DC:
	.short 71, 1
	.short 18, 1
	.short 72, 1
	.short 63, 2
	.short 33, 1
	.short 254, 0

scr_seq_00000037_000005F4:
	.short 50, 1
	.short 63, 3
	.short 33, 1
	.short 254, 0

scr_seq_00000037_00000604:
	.short 71, 1
	.short 17, 5
	.short 72, 1
	.short 254, 0

scr_seq_00000037_00000614:
	.short 13, 3
	.short 15, 1
	.short 32, 1
	.short 254, 0

scr_seq_00000037_00000624:
	.short 13, 4
	.short 32, 1
	.short 254, 0

scr_seq_00000037_00000630:
	.short 63, 2
	.short 12, 1
	.short 15, 1
	.short 12, 1
	.short 254, 0
scr_seq_00000037_00000644:
	scrcmd_056 2, 0
	scrcmd_057 3
	scrcmd_058
	scrcmd_059 10, VAR_SPECIAL_x800C
	callstd 2000
	end

scr_seq_00000037_00000659:
	scrcmd_056 2, 0
	scrcmd_057 3
	scrcmd_058
	scrcmd_059 9, VAR_SPECIAL_x800C
	callstd 2000
	end

scr_seq_00000037_0000066E:
	scrcmd_056 2, 0
	scrcmd_057 3
	scrcmd_058
	scrcmd_059 7, VAR_SPECIAL_x800C
	callstd 2000
	end

scr_seq_00000037_00000683:
	scrcmd_056 2, 0
	scrcmd_057 3
	scrcmd_058
	scrcmd_059 8, VAR_SPECIAL_x800C
	callstd 2000
	end
	.balign 4, 0
