    .include "macros/btlcmd.inc"

    .data

_000:
    CheckAbility CHECK_NOT_HAVE, BTLSCR_ATTACKER, ABILITY_RECKLESS, _008
    UpdateVar OPCODE_SET, BTLVAR_POWER_MULTI, 12

_008:
    UpdateVar OPCODE_SET, BTLVAR_SIDE_EFFECT_FLAGS_INDIRECT, MOVE_SIDE_EFFECT_PROBABILISTIC|MOVE_SIDE_EFFECT_TO_DEFENDER|MOVE_SUBSCRIPT_PTR_RECOIL_1_3_CHANCE_TO_BURN
    CalcCrit 
    CalcDamage 
    End 
