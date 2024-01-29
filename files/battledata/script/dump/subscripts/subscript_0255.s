    .include "macros/btlcmd.inc"

    .data

_000:
    WaitButtonABTime 15
    Random 3, 0
    CompareVarToValue OPCODE_EQU, BTLVAR_CALC_TEMP, 0x00000001, _025
    CompareVarToValue OPCODE_EQU, BTLVAR_CALC_TEMP, 0x00000002, _031
    CompareVarToValue OPCODE_EQU, BTLVAR_CALC_TEMP, 0x00000003, _037
    // {0} is loafing around!
    PrintMessage msg_00000197_00828, TAG_NICKNAME, BTLSCR_ATTACKER
    GoTo _043

_025:
    // {0} won’t obey!
    PrintMessage msg_00000197_00829, TAG_NICKNAME, BTLSCR_ATTACKER
    GoTo _043

_031:
    // {0} turned away!
    PrintMessage msg_00000197_00830, TAG_NICKNAME, BTLSCR_ATTACKER
    GoTo _043

_037:
    // {0} pretended not to notice!
    PrintMessage msg_00000197_00831, TAG_NICKNAME, BTLSCR_ATTACKER
    GoTo _043

_043:
    Wait 
    WaitButtonABTime 30
    End 
