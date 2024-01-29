from .enums import *
from .types import *

COMMON_COMMANDS = [
    Command('PlayEncounterAnimation',       []),
    Command('SetPokemonEncounter',          [Battler]),
    Command('PokemonSlideIn',               [Battler]),
    Command('PokemonSendOut',               [Battler]),
    Command('RecallPokemon',                [Battler]),
    Command('DeletePokemon',                [Battler]),
    Command('SetTrainerEncounter',          [Battler]),
    Command('ThrowPokeball',                [Battler, Throw]),
    Command('TrainerSlideOut',              [Battler]),
    Command('TrainerSlideIn',               [Battler, Position]),
    Command('BackgroundSlideIn',            []),
    Command('HealthbarSlideIn',             [Battler]),
    Command('HealthbarSlideInDelay',        [Battler]),
    Command('HealthbarSlideOut',            [Battler]),
    Command('Wait',                         []),
    Command('CalcDamage',                   []),
    Command('CalcMaxDamage',                []),
    Command('PrintAttackMessage',           []),
    Command('PrintMessage',                 [MessageId, MessageTag]),
    Command('PrintGlobalMessage',           [MessageId, MessageTag]),
    Command('PrintBufferedMessage',         []),
    Command('BufferMessage',                [MessageId, MessageTag]),
    Command('BufferLocalMessage',           [Battler, MessageId, MessageTag]),
    Command('PlayMoveAnimation',            [Battler]),
    Command('PlayMoveAnimationOnMons',      [Battler, Battler, Battler]),
    Command('FlickerMon',                   [Battler]),
    Command('UpdateHealthBarValue',         [Battler]),
    Command('UpdateHealthBar',              [Battler]),
    Command('TryFaintMon',                  [Battler]),
    Command('PlayFaintAnimation',           []),
    Command('WaitButtonABTime',             [int]),
    Command('PlaySound',                    [Battler, int]),
    Command('CompareVarToValue',            [OpMode, VariableValue, Label]),
    Command('CompareMonDataToValue',        [OpMode, Battler, MonParamValue, Label]),
    Command('FadeOutBattle',                []),
    Command('GoToSubscript',                [Subscript]),
    Command('GoToEffectScript',             []),
    Command('GoToMoveScript',               [bool]),
    Command('CalcCrit',                     []),
    Command('CalcExpGain',                  [Label]),
    Command('StartGetExpTask',              []),
    Command('WaitGetExpTask',               []),
    Command('Dummy2A',                      [int]),
    Command('ShowParty',                    []),
    Command('WaitMonSelection',             []),
    Command('SwitchAndUpdateMon',           [Battler]),
    Command('GoToIfAnySwitches',            [Label]),
    Command('StartCatchMonTask',            [Catch]),
    Command('WaitCatchMonTask',             []),
    Command('SetMultiHit',                  [int, MultiHit]),
    Command('UpdateVar',                    [OpMode, VariableValue]),
    Command('ChangeStatStage',              [Label, Label, Label]),
    Command('UpdateMonData',                [OpMode, Battler, MonParamValue]),
    Command('ClearVolatileStatus',          [Battler, VolatileStatus]),
    Command('ToggleVanish',                 [Battler, bool]),
    Command('CheckAbility',                 [CheckHaveOpMode, Battler, Ability, Label]),
    Command('Random',                       [int, int]),
    Command('UpdateVarFromVar',             [OpMode, Variable, Variable]),
    Command('UpdateMonDataFromVar',         [OpMode, Battler, MonParam, Variable]),
    Command('GoTo',                         [Label]),
    Command('Call',                         [Subscript]),
    Command('CallFromVar',                  [Variable]),
    Command('SetMirrorMove',                []),
    Command('ResetAllStatChanges',          []),
    Command('LockMoveChoice',               [Battler]),
    Command('UnlockMoveChoice',             [Battler]),
    Command('SetHealthbarStatus',           [Battler, StatusEffect]),
    Command('PrintTrainerMessage',          [Battler, TrainerMessageType]),
    Command('PayPrizeMoney',                []),
    Command('PlayBattleAnimation',          [Battler, StatusEffect]),
    Command('PlayBattleAnimationOnMons',    [Battler, Battler, StatusEffect]),
    Command('PlayBattleAnimationFromVar',   [Battler, Variable]),
    Command('PrintRecallMessage',           [Battler]),
    Command('PrintSendOutMessage',          [Battler]),
    Command('PrintEncounterMessage',        [Battler]),
    Command('PrintFirstSendOutMessage',     [Battler]),
    Command('PrintBufferedTrainerMessage',  [Battler]),
    Command('TryConversion',                [Label]),
    Command('CompareVarToVar',              [OpMode, Variable, Variable, Label]),
    Command('CompareMonDataToVar',          [OpMode, Battler, MonParam, Variable, Label]),
    Command('AddPayDayMoney',               []),
    Command('TryLightScreen',               [Label]),
    Command('TryReflect',                   [Label]),
    Command('TryMist',                      [Label]),
    Command('TryOHKOMove',                  []),
    Command('DivideVarByValue',             [VariableValue]),
    Command('DivideVarByVar',               [Variable, Variable]),
    Command('TryMimic',                     [Label]),
    Command('Metronome',                    []),
    Command('TryDisable',                   [Label]),
    Command('Counter',                      []),
    Command('MirrorCoat',                   []),
    Command('TryEncore',                    [Label]),
    Command('TryConversion2',               [Label]),
    Command('TrySketch',                    [Label]),
    Command('TrySleepTalk',                 [Label]),
    Command('CalcFlailPower',               []),
    Command('TrySpite',                     [Label]),
    Command('TryPartyStatusRefresh',        []),
    Command('TryStealItem',                 [Label, Label]),
    Command('TryProtection',                [Label]),
    Command('TrySubstitute',                [Label]),
    Command('TryWhirlwind',                 [Label]),
    Command('Transform',                    []),
    Command('TrySpikes',                    [Label]),
    Command('CheckSpikes',                  [Battler, Label]),
    Command('TryPerishSong',                [Label]),
    Command('GetMonBySpeedOrder',           [Variable]),
    Command('GoToIfValidMon',               [Variable, Label]),
    Command('EndOfTurnWeatherEffect',       [Battler]),
    Command('CalcRolloutPower',             []),
    Command('CalcFuryCutterPower',          []),
    Command('TryAttract',                   [Label]),
    Command('TrySafeguard',                 [Label]),
    Command('Present',                      [Label]),
    Command('CalcMagnitudePower',           []),
    Command('TryReplaceFaintedMon',         [Battler, bool, Label]),
    Command('RapidSpin',                    []),
    Command('WeatherHPRecovery',            []),
    Command('CalcHiddenPowerParams',        []),
    Command('CopyStatStages',               []),
    Command('TryFutureSight',               [Label]),
    Command('CheckMoveHit',                 [Battler, Battler, Battler, Label]),
    Command('TryTeleport',                  [Label]),
    Command('BeatUp',                       []),
    Command('FollowMe',                     []),
    Command('TryHelpingHand',               [Label]),
    Command('TrySwapItems',                 [Label, Label]),
    Command('TryWish',                      [Label]),
    Command('TryAssist',                    [Label]),
    Command('TrySetMagicCoat',              [Label]),
    Command('MagicCoat',                    []),
    Command('CalcRevengePowerMul',          []),
    Command('TryBreakScreens',              [Label]),
    Command('TryYawn',                      [Label]),
    Command('TryKnockOff',                  [Label]),
    Command('CalcHPFalloffPower',           []),
    Command('TryImprison',                  [Label]),
    Command('TryGrudge',                    [Label]),
    Command('TrySnatch',                    [Label]),
    Command('CalcWeightBasedPower',         []),
    Command('CalcWeatherBallParams',        []),
    Command('TryPursuit',                   [Label]),
    Command('ApplyTypeEffectiveness',       []),
    Command('IfTurnFlag',                   [Battler, TurnFlag, int, Label]),
    Command('SetTurnFlag',                  [Battler, TurnFlag, int]),
    Command('CalcGyroBallPower',            []),
    Command('TryMetalBurst',                [Label]),
    Command('CalcPaybackPower',             []),
    Command('CalcTrumpCardPower',           []),
    Command('CalcWringOutPower',            []),
    Command('TryMeFirst',                   [Label]),
    Command('TryCopycat',                   [Label]),
    Command('CalcPunishmentPower',          []),
    Command('TrySuckerPunch',               [Label]),
    Command('CheckSideCondition',           [Battler, CheckSideConditionOp, SideCondition, Label]),
    Command('TryFeint',                     [Label]),
    Command('CheckCanShareStatus',          [Label]),
    Command('TryLastResort',                [Label]),
    Command('TryToxicSpikes',               [Label]),
    Command('CheckToxicSpikes',             [Battler, Label]),
    Command('CheckIgnorableAbility',        [CheckHaveOpMode, Battler, Ability, Label]),
    Command('IfSameSide',                   [Battler, Battler, Label]),
    Command('GenerateEndOfBattleItem',      []),
    Command('TrickRoom',                    []),
    Command('IfMovedThisTurn',              [Battler, Label]),
    Command('CheckItemHoldEffect',          [CheckHaveOpMode, Battler, ItemEffect, Label]),
    Command('GetItemHoldEffect',            [Battler, Variable]),
    Command('GetItemEffectParam',           [Battler, Variable]),
    Command('TryCamouflage',                [Label]),
    Command('GetTerrainMove',               []),
    Command('GetTerrainSecondaryEffect',    []),
    Command('CalcNaturalGiftParams',        [Label]),
    Command('TryPluck',                     [Label, Label]),
    Command('TryFling',                     [Label]),
    Command('YesNoMenu',                    [YesNoType]),
    Command('WaitYesNoResult',              [Label, Label]),
    Command('ChoosePokemonMenu',            []),
    Command('WaitPokemonMenuResult',        [Label]),
    Command('SetLinkBattleResult',          []),
    Command('CheckStealthRock',             [Battler, Label]),
    Command('CheckEffectActivation',        [Label]),
    Command('CheckChatterActivation',       [Label]),
    Command('GetCurrentMoveData',           [MoveParam]),
    Command('SetMosaic',                    [Battler, int, int]),
    Command('ChangeForm',                   [Battler]),
    Command('SetBattleBackground',          []),
    Command('UseBagItem',                   [Battler]),
    Command('TryEscape',                    [Battler, Label]),
    Command('ShowBattleStartPartyGauge',    [Battler]),
    Command('HideBattleStartPartyGauge',    [Battler]),
    Command('ShowPartyGauge',               [Battler]),
    Command('HidePartyGauge',               [Battler]),
    Command('LoadPartyGaugeGraphics',       []),
    Command('FreePartyGaugeGraphics',       []),
    Command('IncrementGameStat',            [Battler, Position, int]),
    Command('RestoreSprite',                [Battler]),
    Command('TriggerAbilityOnHit',          [Label]),
    Command('SpriteToOAM',                  [Battler]),
    Command('OAMToSprite',                  [Battler]),
    Command('CheckBlackOut',                [Battler, Label]),
    Command('BoostRandomStatBy2',           [Label]),
    Command('RemoveItem',                   [Battler]),
    Command('TryRecycle',                   [Label]),
    Command('TriggerHeldItemOnHit',         [Label]),
    Command('PrintBattleResultMessage',     []),
    Command('PrintEscapeMessage',           []),
    Command('PrintForfeitMessage',          []),
    Command('CheckHoldOnWith1HP',           [Battler]),
    Command('TryRestoreStatusOnSwitch',     [Battler, Label]),
    Command('CheckSubstitute',              [Battler, Label]),
    Command('CheckIgnoreWeather',           [Label]),
    Command('SetRandomTarget',              [Battler]),
    Command('TriggerHeldItemOnPivotMove',   [Label]),
    Command('RefreshSprite',                [Battler]),
    Command('PlayMoveHitSound',             [Battler]),
    Command('PlayBGM',                      [Battler, int]),
    Command('CheckSafariGameDone',          [Label]),
    Command('WaitTime',                     [int]),
    Command('CheckCurMoveIsType',           [Type, Label]),
    Command('LoadArchivedMonData',          [Species, Variable, PersonalParam]),
    Command('RefreshMonData',               [Battler]),
]

PLAT_COMMANDS = [
    *COMMON_COMMANDS,
    Command('End',[]),
]

HGSS_COMMANDS = [
    *COMMON_COMMANDS,
    Command('COMMAND_DE', [int, int]),
    Command('COMMAND_DF', [int]),
    Command('End',[]),
]
