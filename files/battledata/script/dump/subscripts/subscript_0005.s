    .include "macros/btlcmd.inc"

    .data

_000:
    CompareVarToValue OPCODE_FLAG_SET, BTLVAR_BATTLE_TYPE, BATTLE_TYPE_FRONTIER, _191
    CompareVarToValue OPCODE_FLAG_SET, BTLVAR_BATTLE_TYPE, BATTLE_TYPE_LINK, _188
    // {0} is out of usable Pokémon!
    PrintMessage msg_00000197_00036, TAG_TRNAME, BTLSCR_PLAYER
    Wait 
    WaitButtonABTime 30
    COMMAND_DE 10, 20
    CompareVarToValue OPCODE_NEQ, BTLVAR_MSG_TEMP, 0, _105
    CompareVarToValue OPCODE_FLAG_NOT, BTLVAR_BATTLE_TYPE, BATTLE_TYPE_MULTI, _037
    COMMAND_DE 12, 20
    CompareVarToValue OPCODE_NEQ, BTLVAR_MSG_TEMP, 0, _105

_037:
    CompareVarToValue OPCODE_FLAG_SET, BTLVAR_BATTLE_TYPE, BATTLE_TYPE_11, _102
    CompareVarToValue OPCODE_FLAG_SET, BTLVAR_BATTLE_TYPE, BATTLE_TYPE_FRONTIER, _076
    PayPrizeMoney 
    CompareVarToValue OPCODE_EQU, BTLVAR_MSG_TEMP, 0, _076
    CompareVarToValue OPCODE_FLAG_SET, BTLVAR_BATTLE_TYPE, BATTLE_TYPE_TRAINER, _068
    // {0} dropped ${1} in panic!
    PrintMessage msg_00000197_00034, TAG_TRNAME_NUM, BTLSCR_PLAYER, BTLSCR_MSG_TEMP
    Wait 
    WaitButtonABTime 30
    GoTo _076

_068:
    // {0} paid out ${1} to the winner.
    PrintMessage msg_00000197_00035, TAG_TRNAME_NUM, BTLSCR_PLAYER, BTLSCR_MSG_TEMP
    Wait 
    WaitButtonABTime 30

_076:
    // ... ... ... ...
    PrintMessage msg_00000197_00038, TAG_NONE
    Wait 
    WaitButtonABTime 30
    CompareVarToValue OPCODE_NEQ, BTLVAR_BATTLE_TYPE, BATTLE_TYPE_TRAINER|BATTLE_TYPE_DOUBLES|BATTLE_TYPE_MULTI|BATTLE_TYPE_AI, _089
    HealthbarSlideOut BTLSCR_PLAYER_SLOT_2

_089:
    COMMAND_DF 0
    Wait 
    // {0} blacked out!
    PrintMessage msg_00000197_00037, TAG_NONE
    Wait 
    WaitButtonABTime 30
    COMMAND_DF 1
    Wait 
    End 

_102:
    FadeOutBattle 
    Wait 
    End 

_105:
    CompareMonDataToValue OPCODE_EQU, BTLSCR_ENEMY_SLOT_1, BATTLEMON_CUR_HP, 0, _113
    RecallPokemon BTLSCR_ENEMY_SLOT_1

_113:
    CompareVarToValue OPCODE_FLAG_NOT, BTLVAR_BATTLE_TYPE, BATTLE_TYPE_DOUBLES, _126
    CompareMonDataToValue OPCODE_EQU, BTLSCR_ENEMY_SLOT_2, BATTLEMON_CUR_HP, 0, _126
    RecallPokemon BTLSCR_ENEMY_SLOT_2

_126:
    Wait 
    HealthbarSlideOut BTLSCR_ENEMY
    Wait 
    COMMAND_DE 10, 20
    CompareVarToValue OPCODE_EQU, BTLVAR_MSG_TEMP, 0, _148
    TrainerSlideIn BTLSCR_ENEMY_SLOT_1, BATTLER_TYPE_SOLO_ENEMY
    Wait 
    PrintTrainerMessage BTLSCR_ENEMY_SLOT_1, TRAINER_MESSAGE_20
    Wait 
    WaitButtonABTime 30

_148:
    CompareVarToValue OPCODE_FLAG_NOT, BTLVAR_BATTLE_TYPE, BATTLE_TYPE_MULTI, _037
    COMMAND_DE 12, 20
    CompareVarToValue OPCODE_EQU, BTLVAR_MSG_TEMP, 0, _037
    COMMAND_DE 10, 20
    CompareVarToValue OPCODE_NEQ, BTLVAR_MSG_TEMP, 0, _182

_169:
    TrainerSlideIn BTLSCR_ENEMY_SLOT_2, BATTLER_TYPE_SOLO_ENEMY
    Wait 
    PrintTrainerMessage BTLSCR_ENEMY_SLOT_2, TRAINER_MESSAGE_20
    Wait 
    WaitButtonABTime 60
    GoTo _037
    End 

_182:
    TrainerSlideOut BTLSCR_ENEMY_SLOT_1
    Wait 
    GoTo _169
    End 

_188:
    Call BATTLE_SUBSCRIPT_LINK_WIN_LOSE
    End 

_191:
    CompareMonDataToValue OPCODE_EQU, BTLSCR_ENEMY_SLOT_1, BATTLEMON_CUR_HP, 0, _199
    RecallPokemon BTLSCR_ENEMY_SLOT_1

_199:
    CompareVarToValue OPCODE_FLAG_NOT, BTLVAR_BATTLE_TYPE, BATTLE_TYPE_DOUBLES, _212
    CompareMonDataToValue OPCODE_EQU, BTLSCR_ENEMY_SLOT_2, BATTLEMON_CUR_HP, 0, _212
    RecallPokemon BTLSCR_ENEMY_SLOT_2

_212:
    Wait 
    HealthbarSlideOut BTLSCR_ENEMY
    Wait 
    TrainerSlideIn BTLSCR_ENEMY_SLOT_1, BATTLER_TYPE_SOLO_ENEMY
    Wait 
    PrintTrainerMessage BTLSCR_ENEMY_SLOT_1, TRAINER_MESSAGE_WIN
    Wait 
    WaitButtonABTime 30
    CompareVarToValue OPCODE_FLAG_NOT, BTLVAR_BATTLE_TYPE, BATTLE_TYPE_MULTI, _246
    TrainerSlideOut BTLSCR_ENEMY_SLOT_1
    Wait 
    TrainerSlideIn BTLSCR_ENEMY_SLOT_2, BATTLER_TYPE_SOLO_ENEMY
    Wait 
    PrintTrainerMessage BTLSCR_ENEMY_SLOT_2, TRAINER_MESSAGE_WIN
    Wait 
    WaitButtonABTime 60
    GoTo _248

_246:
    WaitButtonABTime 30

_248:
    SetLinkBattleResult 
    FadeOutBattle 
    Wait 
    End 
