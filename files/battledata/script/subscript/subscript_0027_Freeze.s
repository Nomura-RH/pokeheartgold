    .include "macros/btlcmd.inc"

    .data

_000:
    CheckIgnorableAbility CHECK_OPCODE_HAVE, BATTLER_CATEGORY_SIDE_EFFECT_MON, ABILITY_MAGMA_ARMOR, _128
    CheckIgnoreWeather _011
    CompareVarToValue OPCODE_FLAG_SET, BSCRIPT_VAR_FIELD_CONDITION, FIELD_CONDITION_SUN_ALL, _095

_011:
    CompareVarToValue OPCODE_NEQ, BSCRIPT_VAR_SIDE_EFFECT_TYPE, SIDE_EFFECT_TYPE_INDIRECT, _021
    CheckIgnorableAbility CHECK_OPCODE_HAVE, BATTLER_CATEGORY_SIDE_EFFECT_MON, ABILITY_SHIELD_DUST, _095

_021:
    CompareVarToValue OPCODE_NEQ, BSCRIPT_VAR_SIDE_EFFECT_TYPE, SIDE_EFFECT_TYPE_DIRECT, _028
    PrintAttackMessage 
    Wait 

_028:
    CheckSubstitute BATTLER_CATEGORY_SIDE_EFFECT_MON, _095
    CompareMonDataToValue OPCODE_FLAG_SET, BATTLER_CATEGORY_SIDE_EFFECT_MON, BMON_DATA_STATUS, STATUS_FREEZE, _106
    CompareMonDataToValue OPCODE_EQU, BATTLER_CATEGORY_SIDE_EFFECT_MON, BMON_DATA_TYPE_1, TYPE_ICE, _115
    CompareMonDataToValue OPCODE_EQU, BATTLER_CATEGORY_SIDE_EFFECT_MON, BMON_DATA_TYPE_2, TYPE_ICE, _115
    CompareMonDataToValue OPCODE_NEQ, BATTLER_CATEGORY_SIDE_EFFECT_MON, BMON_DATA_STATUS, STATUS_NONE, _095
    CompareVarToValue OPCODE_FLAG_SET, BSCRIPT_VAR_MOVE_STATUS_FLAGS, MOVE_STATUS_MISSED|MOVE_STATUS_SEMI_INVULNERABLE, _095
    CompareVarToValue OPCODE_FLAG_SET, BSCRIPT_VAR_SIDE_CONDITION_STAT_CHANGE, SIDE_CONDITION_SAFEGUARD, _139
    CompareVarToValue OPCODE_NEQ, BSCRIPT_VAR_SIDE_EFFECT_TYPE, SIDE_EFFECT_TYPE_DIRECT, _073
    PlayMoveAnimation BATTLER_CATEGORY_ATTACKER
    Wait 

_073:
    PlayBattleAnimation BATTLER_CATEGORY_SIDE_EFFECT_MON, BATTLE_ANIMATION_FROZEN
    Wait 
    UpdateMonData OPCODE_FLAG_ON, BATTLER_CATEGORY_SIDE_EFFECT_MON, BMON_DATA_STATUS, STATUS_FREEZE
    UnlockMoveChoice BATTLER_CATEGORY_SIDE_EFFECT_MON
    // {0} was frozen solid!
    PrintMessage msg_0197_00101, TAG_NICKNAME, BATTLER_CATEGORY_SIDE_EFFECT_MON
    Wait 
    SetHealthbarStatus BATTLER_CATEGORY_SIDE_EFFECT_MON, BATTLE_ANIMATION_FROZEN
    WaitButtonABTime 30
    End 

_095:
    CompareVarToValue OPCODE_EQU, BSCRIPT_VAR_SIDE_EFFECT_TYPE, SIDE_EFFECT_TYPE_INDIRECT, _157
    WaitButtonABTime 30
    Call BATTLE_SUBSCRIPT_BUT_IT_FAILED
    GoTo _157

_106:
    CompareVarToValue OPCODE_EQU, BSCRIPT_VAR_SIDE_EFFECT_TYPE, SIDE_EFFECT_TYPE_INDIRECT, _157
    WaitButtonABTime 30
    GoTo _150

_115:
    CompareVarToValue OPCODE_EQU, BSCRIPT_VAR_SIDE_EFFECT_TYPE, SIDE_EFFECT_TYPE_INDIRECT, _157
    WaitButtonABTime 30
    // It doesn’t affect {0}...
    PrintMessage msg_0197_00027, TAG_NICKNAME, BATTLER_CATEGORY_SIDE_EFFECT_MON
    GoTo _150

_128:
    CompareVarToValue OPCODE_EQU, BSCRIPT_VAR_SIDE_EFFECT_TYPE, SIDE_EFFECT_TYPE_INDIRECT, _157
    PrintAttackMessage 
    Wait 
    WaitButtonABTime 30
    GoTo _150

_139:
    CompareVarToValue OPCODE_EQU, BSCRIPT_VAR_SIDE_EFFECT_TYPE, SIDE_EFFECT_TYPE_INDIRECT, _157
    WaitButtonABTime 30
    // {0} is protected by Safeguard!
    PrintMessage msg_0197_00200, TAG_NICKNAME, BATTLER_CATEGORY_SIDE_EFFECT_MON

_150:
    Wait 
    WaitButtonABTime 30
    UpdateVar OPCODE_FLAG_ON, BSCRIPT_VAR_MOVE_STATUS_FLAGS, MOVE_STATUS_NO_MORE_WORK

_157:
    End 
