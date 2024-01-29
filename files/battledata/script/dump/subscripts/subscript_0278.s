    .include "macros/btlcmd.inc"

    .data

_000:
    CompareMonDataToValue OPCODE_EQU, BTLSCR_ATTACKER, BATTLEMON_CUSTAP_BERRY, 1, _022
    CompareMonDataToValue OPCODE_EQU, BTLSCR_ATTACKER, BATTLEMON_QUICK_CLAW, 0, _063
    CompareVarToValue OPCODE_EQU, BTLVAR_WAITING_BATTLERS, 1, _039
    PlayBattleAnimation BTLSCR_ATTACKER, BATTLE_ANIMATION_HELD_ITEM
    Wait 
    GoTo _039

_022:
    PlayBattleAnimation BTLSCR_ATTACKER, BATTLE_ANIMATION_HELD_ITEM
    Wait 
    CompareVarToValue OPCODE_EQU, BTLVAR_WAITING_BATTLERS, 1, _039
    // {0}’s {1} let it move first!
    PrintMessage msg_00000197_01254, TAG_NICKNAME_ITEM, BTLSCR_ATTACKER, BTLSCR_ATTACKER
    Wait 
    WaitButtonABTime 30

_039:
    CompareMonDataToValue OPCODE_EQU, BTLSCR_ATTACKER, BATTLEMON_QUICK_CLAW, 0, _050
    UpdateMonData OPCODE_SET, BTLSCR_ATTACKER, BATTLEMON_QUICK_CLAW, 0

_050:
    CompareMonDataToValue OPCODE_EQU, BTLSCR_ATTACKER, BATTLEMON_CUSTAP_BERRY, 0, _063
    UpdateMonData OPCODE_SET, BTLSCR_ATTACKER, BATTLEMON_CUSTAP_BERRY, 0
    RemoveItem BTLSCR_ATTACKER

_063:
    End 
