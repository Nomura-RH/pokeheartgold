    .include "macros/btlcmd.inc"

    .data

_000:
    CompareVarToValue OPCODE_FLAG_SET, BTLVAR_FIELD_CONDITIONS, FIELD_CONDITION_GRAVITY, _009
    UpdateVar OPCODE_SET, BTLVAR_SIDE_EFFECT_FLAGS_INDIRECT, MOVE_SIDE_EFFECT_ON_HIT|MOVE_SUBSCRIPT_PTR_GRAVITY_START
    End 

_009:
    UpdateVar OPCODE_FLAG_ON, BTLVAR_MOVE_STATUS_FLAGS, MOVE_STATUS_FAILED
    End 
