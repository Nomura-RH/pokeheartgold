    .include "macros/btlcmd.inc"

    .data

_000:
    CheckAbility CHECK_HAVE, BTLSCR_MSG_TEMP, ABILITY_MAGIC_GUARD, _055
    CheckAbility CHECK_NOT_HAVE, BTLSCR_MSG_TEMP, ABILITY_POISON_HEAL, _038
    UpdateMonDataFromVar OPCODE_GET, BTLSCR_MSG_TEMP, BATTLEMON_MAX_HP, BTLVAR_HP_CALC_TEMP
    CompareMonDataToVar OPCODE_EQU, BTLSCR_MSG_TEMP, BATTLEMON_CUR_HP, BTLVAR_HP_CALC_TEMP, _055
    DivideVarByValue BTLVAR_HP_CALC_TEMP, 8
    UpdateVar OPCODE_FLAG_ON, BTLVAR_BATTLE_CTX_STATUS, SYSCTL_SKIP_SPRITE_BLINK
    Call BATTLE_SUBSCRIPT_UPDATE_HP
    // {0} restored HP using its {1}!
    PrintMessage msg_00000197_00635, TAG_NICKNAME_ABILITY, BTLSCR_MSG_TEMP, BTLSCR_MSG_BATTLER_TEMP
    Wait 
    WaitButtonABTime 30
    End 

_038:
    // {0} is hurt by poison!
    PrintMessage msg_00000197_00073, TAG_NICKNAME, BTLSCR_MSG_TEMP
    Wait 
    WaitButtonABTime 30
    PlayBattleAnimation BTLSCR_MSG_TEMP, BATTLE_ANIMATION_POISONED
    Wait 
    UpdateVar OPCODE_FLAG_ON, BTLVAR_BATTLE_CTX_STATUS, SYSCTL_SKIP_SPRITE_BLINK
    GoToSubscript BATTLE_SUBSCRIPT_UPDATE_HP

_055:
    End 
