    .include "macros/btlcmd.inc"

    .data

_000:
    CheckIgnoreWeather _006
    CompareVarToValue OPCODE_FLAG_SET, BSCRIPT_VAR_FIELD_CONDITION, FIELD_CONDITION_SUN_ALL, _028

_006:
    CompareMonDataToValue OPCODE_FLAG_SET, BATTLER_CATEGORY_ATTACKER, BMON_DATA_STATUS2, STATUS2_LOCKED_INTO_MOVE, _033
    CheckItemHoldEffect CHECK_OPCODE_HAVE, BATTLER_CATEGORY_ATTACKER, HOLD_EFFECT_CHARGE_SKIP, _026
    UpdateVar OPCODE_SET, BSCRIPT_VAR_SIDE_EFFECT_FLAGS_DIRECT, MOVE_SIDE_EFFECT_TO_ATTACKER|MOVE_SUBSCRIPT_PTR_VANISH_CHARGE_TURN
    UpdateVar OPCODE_FLAG_ON, BSCRIPT_VAR_BATTLE_STATUS, BATTLE_STATUS_NO_ATTACK_MESSAGE|BATTLE_STATUS_CHECK_LOOP_ONLY_ONCE|BATTLE_STATUS_CHARGE_TURN
    End 

_026:
    Call BATTLE_SUBSCRIPT_ITEM_SKIP_CHARGE_TURN

_028:
    CompareVarToValue OPCODE_EQU, BSCRIPT_VAR_BATTLER_TARGET, BATTLER_NONE, _035

_033:
    CalcCrit 
    CalcDamage 

_035:
    Call BATTLE_SUBSCRIPT_CHARGE_MOVE_CLEANUP
    End 
