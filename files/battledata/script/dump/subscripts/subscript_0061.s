    .include "macros/btlcmd.inc"

    .data

_000:
    CheckAbility CHECK_HAVE, BTLSCR_ATTACKER, ABILITY_MAGIC_GUARD, _054
    CompareVarToValue OPCODE_FLAG_NOT, BTLVAR_BATTLE_CTX_STATUS, SYSCTL_CRASH_DAMAGE, _054
    // {0} kept going and crashed!
    PrintMessage msg_00000197_00268, TAG_NICKNAME, BTLSCR_ATTACKER
    Wait 
    WaitButtonABTime 30
    UpdateVarFromVar OPCODE_SET, BTLVAR_HP_CALC_TEMP, BTLVAR_DAMAGE
    DivideVarByValue BTLVAR_HP_CALC_TEMP, 2
    UpdateMonDataFromVar OPCODE_GET, BTLSCR_DEFENDER, BATTLEMON_MAX_HP, BTLVAR_SCRIPT_TEMP
    UpdateVar OPCODE_MUL, BTLVAR_SCRIPT_TEMP, -1
    DivideVarByValue BTLVAR_SCRIPT_TEMP, 2
    CompareVarToVar OPCODE_LTE, BTLVAR_SCRIPT_TEMP, BTLVAR_HP_CALC_TEMP, _044
    UpdateVarFromVar OPCODE_SET, BTLVAR_HP_CALC_TEMP, BTLVAR_SCRIPT_TEMP

_044:
    UpdateVarFromVar OPCODE_SET, BTLVAR_MSG_BATTLER_TEMP, BTLVAR_ATTACKER
    UpdateVar OPCODE_FLAG_ON, BTLVAR_BATTLE_CTX_STATUS, SYSCTL_SKIP_SPRITE_BLINK
    Call BATTLE_SUBSCRIPT_UPDATE_HP

_054:
    End 
