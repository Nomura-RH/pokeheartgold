    .include "macros/btlcmd.inc"

    .data

_000:
    // {0}’s {1} made it the {2} type!
    PrintMessage msg_0197_00641, TAG_NICKNAME_ABILITY_TYPE, BATTLER_CATEGORY_DEFENDER, BATTLER_CATEGORY_DEFENDER, BATTLER_CATEGORY_MSG_TEMP
    Wait 
    WaitButtonABTime 30
    UpdateMonDataFromVar OPCODE_SET, BATTLER_CATEGORY_DEFENDER, BMON_DATA_TYPE_1, BSCRIPT_VAR_MESSAGE
    UpdateMonDataFromVar OPCODE_SET, BATTLER_CATEGORY_DEFENDER, BMON_DATA_TYPE_2, BSCRIPT_VAR_MESSAGE
    End 
