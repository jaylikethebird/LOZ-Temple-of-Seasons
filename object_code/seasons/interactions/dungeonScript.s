; ==================================================================================================
; INTERAC_DUNGEON_SCRIPT
; ==================================================================================================
interactionCode20:
	call interactionDeleteAndRetIfEnabled02
	ld e,Interaction.state
	ld a,(de)
	rst_jumpTable
	.dw @state0
	.dw @state1
	.dw @state2

@state0:
	ld a,$01
	ld (de),a
	xor a
	ld ($cfc1),a
	ld ($cfc2),a

	ld a,(wDungeonIndex)
	cp $ff
	jp z,interactionDelete

	ld hl,@scriptTable
	rst_addDoubleIndex
	ldi a,(hl)
	ld h,(hl)
	ld l,a
	ld e,Interaction.subid
	ld a,(de)
	rst_addDoubleIndex
	ldi a,(hl)
	ld h,(hl)
	ld l,a
	call interactionSetScript
	jp interactionRunScript

@state2:
	call objectPreventLinkFromPassing

@state1:
	call interactionRunScript
	ret nc
	jp interactionDelete

@scriptTable:
	.dw @dungeon0
	.dw @dungeon1
	.dw @dungeon2
	.dw @dungeon3
	.dw @dungeon4
	.dw @dungeon5
	.dw @dungeon6
	.dw @dungeon7
	.dw @dungeon8
	.dw @dungeon9
	.dw @dungeonA
	.dw @dungeonB

@dungeon0:

@dungeon1:
	.dw mainScripts.dungeonScript_checkActiveTriggersEq01
	.dw mainScripts.dungeonScript_minibossDeath
	.dw mainScripts.dungeonScript_checkActiveTriggersEq01
	.dw mainScripts.dungeonScript_bossDeath
	.dw mainScripts.dancingDragonScript_spawnStairsToB1
	.dw mainScripts.AutumnSwitch
	.dw mainScripts.AutumnHole
	.dw mainScripts.AutumnGap
	.dw mainScripts.AutumnMine1
	.dw mainScripts.AutumnMine2
	.dw mainScripts.Autumn431
	.dw mainScripts.Autumn40E
	.dw mainScripts.Autumn41f
	.dw mainScripts.Autumn423
	.dw mainScripts.Autumn431a
	.dw mainScripts.Autumn431b
	.dw mainScripts.Autumn425a
	.dw mainScripts.Autumn425b
	.dw mainScripts.Autumn425c
	.dw mainScripts.Autumn426
	.dw mainScripts.AutumnCarts
	.dw mainScripts.Autumn40ba
	.dw mainScripts.Autumn40bb
	.dw mainScripts.Autumn411
	.dw mainScripts.Autumn41a2

@dungeon2:

@dungeon3:

@dungeon4:
	.dw mainScripts.dungeonScript_bossDeath
	.dw mainScripts.dungeonScript_minibossDeath
	.dw mainScripts.dancingDragonScript_pushingPotsRoom

@dungeon5:
	.dw mainScripts.unicornsCaveScript_dropMagnetBallAfterDarknutKill
	.dw mainScripts.dungeonScript_minibossDeath
	.dw mainScripts.dungeonScript_bossDeath

@dungeon6:
	.dw mainScripts.dungeonScript_bossDeath
	.dw mainScripts.dungeonScript_minibossDeath

@dungeon7:
	.dw mainScripts.explorersCryptScript_multibutton
	.dw mainScripts.snakesRemainsScript_timerForChestDisappearing
	.dw mainScripts.dungeonScript_minibossDeath2
	.dw mainScripts.dungeonScript_bossDeath
	.dw mainScripts.D7tileburst
	.dw mainScripts.55Ea
	.dw mainScripts.55Eb
	.dw mainScripts.explorersCryptScript_1stPoeSisterRoom
	.dw mainScripts.explorersCryptScript_2ndPoeSisterRoom
	.dw mainScripts.explorersCryptScript_4FiresRoom_1
	.dw mainScripts.explorersCryptScript_4FiresRoom_2
	.dw mainScripts.explorersCryptScript_darknutBridge
	.dw mainScripts.dancingDragonScript_pushingPotsRoom
	.dw mainScripts.seasonsportal

@dungeon8:
	.dw mainScripts.swordAndShieldMazeScript_verticalBridgeUnlockedByOrb
	.dw mainScripts.swordAndShieldMazeScript_verticalBridgeInLava
	.dw mainScripts.swordAndShieldMazeScript_armosBlockingStairs
	.dw mainScripts.dungeonScript_spawnKeyOnMagnetBallToButton
	.dw mainScripts.swordAndShieldMazeScript_7torchesAfterMiniboss
	.dw mainScripts.heartpieced1
	.dw mainScripts.swordAndShieldMazeScript_pushableIceBlocks
	.dw mainScripts.dungeonScript_minibossDeath
	.dw mainScripts.dungeonScript_bossDeath
	.dw mainScripts.swordAndShieldMazeScript_horizontalBridgeByMoldorms

@dungeon9:


@dungeonA:
@dungeonB:

