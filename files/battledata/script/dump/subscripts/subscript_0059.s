    .include "macros/btlcmd.inc"

    .data

_000:
    CheckAbility CHECK_HAVE, BTLSCR_MSG_TEMP, ABILITY_MAGIC_GUARD, _082
    CompareVarToValue OPCODE_EQU, BTLVAR_MSG_MOVE_TEMP, MOVE_WRAP, _039
    CompareVarToValue OPCODE_EQU, BTLVAR_MSG_MOVE_TEMP, MOVE_FIRE_SPIN, _044
    CompareVarToValue OPCODE_EQU, BTLVAR_MSG_MOVE_TEMP, MOVE_MAGMA_STORM, _049
    CompareVarToValue OPCODE_EQU, BTLVAR_MSG_MOVE_TEMP, MOVE_CLAMP, _054
    CompareVarToValue OPCODE_EQU, BTLVAR_MSG_MOVE_TEMP, MOVE_WHIRLPOOL, _059
    CompareVarToValue OPCODE_EQU, BTLVAR_MSG_MOVE_TEMP, MOVE_SAND_TOMB, _064
    PlayBattleAnimation BTLSCR_MSG_TEMP, BATTLE_ANIMATION_DAMAGE_BIND
    GoTo _067

_039:
    PlayBattleAnimation BTLSCR_MSG_TEMP, BATTLE_ANIMATION_DAMAGE_WRAP
    GoTo _067

_044:
    PlayBattleAnimation BTLSCR_MSG_TEMP, BATTLE_ANIMATION_DAMAGE_FIRE_SPIN
    GoTo _067

_049:
    PlayBattleAnimation BTLSCR_MSG_TEMP, BATTLE_ANIMATION_DAMAGE_MAGMA_STORM
    GoTo _067

_054:
    PlayBattleAnimation BTLSCR_MSG_TEMP, BATTLE_ANIMATION_DAMAGE_CLAMP
    GoTo _067

_059:
    PlayBattleAnimation BTLSCR_MSG_TEMP, BATTLE_ANIMATION_DAMAGE_WHIRLPOOL
    GoTo _067

_064:
    PlayBattleAnimation BTLSCR_MSG_TEMP, BATTLE_ANIMATION_DAMAGE_SAND_TOMB

_067:
    Wait 
    // {0} is hurt by {1}!
    PrintMessage msg_00000197_00262, TAG_NICKNAME_MOVE, BTLSCR_MSG_TEMP, BTLSCR_MSG_TEMP
    Wait 
    WaitButtonABTime 30
    UpdateVar OPCODE_FLAG_ON, BTLVAR_BATTLE_CTX_STATUS, SYSCTL_SKIP_SPRITE_BLINK
    GoToSubscript BATTLE_SUBSCRIPT_UPDATE_HP

_082:
    End 
