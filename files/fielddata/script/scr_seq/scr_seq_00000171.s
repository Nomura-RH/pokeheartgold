#include "constants/scrcmd.h"
	.include "asm/macros/script.inc"

	.rodata

	scrdef scr_seq_00000171_00000006 ; 000
	scrdef_end

scr_seq_00000171_00000006:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	checkflag FLAG_UNK_134
	gotoif TRUE, scr_seq_00000171_00000045
	msgbox 0
	setvar VAR_SPECIAL_x8004, 92
	setvar VAR_SPECIAL_x8005, 1
	hasspaceforitem VAR_SPECIAL_x8004, VAR_SPECIAL_x8005, VAR_SPECIAL_x800C
	comparevartovalue VAR_SPECIAL_x800C, 0
	gotoif eq, scr_seq_00000171_00000050
	callstd 2033
	setflag FLAG_UNK_134
scr_seq_00000171_00000045:
	msgbox 2
	waitbutton
	closemsg
	releaseall
	end

scr_seq_00000171_00000050:
	callstd 2009
	closemsg
	releaseall
	end
	.balign 4, 0
