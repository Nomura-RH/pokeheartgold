    .include "macros/btlcmd.inc"

    .data

_000:
    // {0} cured its {2} status with its {1}!
    PrintMessage msg_00000197_00740, TAG_NICKNAME_ABILITY_STATUS, BTLSCR_MSG_TEMP, BTLSCR_MSG_TEMP, BTLSCR_MSG_TEMP
    Wait 
    SetHealthbarStatus BTLSCR_MSG_TEMP, BATTLE_ANIMATION_NONE
    WaitButtonABTime 30
    CompareVarToValue OPCODE_EQU, BTLVAR_MSG_TEMP, 0, _033
    CompareVarToValue OPCODE_EQU, BTLVAR_MSG_TEMP, 5, _045
    CompareVarToValue OPCODE_EQU, BTLVAR_MSG_TEMP, 6, _052
    UpdateMonData OPCODE_SET, BTLSCR_MSG_TEMP, BATTLEMON_STATUS, MON_CONDITION_NONE
    GoTo _057

_033:
    UpdateMonData OPCODE_SET, BTLSCR_MSG_TEMP, BATTLEMON_STATUS, MON_CONDITION_NONE
    UpdateMonData OPCODE_FLAG_OFF, BTLSCR_MSG_TEMP, BATTLEMON_VOLATILE_STATUS, VOLATILE_CONDITION_NIGHTMARE
    GoTo _057

_045:
    UpdateMonData OPCODE_FLAG_OFF, BTLSCR_MSG_TEMP, BATTLEMON_VOLATILE_STATUS, VOLATILE_CONDITION_CONFUSION
    GoTo _057

_052:
    UpdateMonData OPCODE_FLAG_OFF, BTLSCR_MSG_TEMP, BATTLEMON_VOLATILE_STATUS, VOLATILE_CONDITION_ATTRACT

_057:
    End 
