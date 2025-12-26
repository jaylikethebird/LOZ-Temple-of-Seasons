; These are a bunch of scripts used by INTERAC_DUNGEON_SCRIPT.

dungeonScript_minibossDeath:
	stopifroomflag80set
	checknoenemies
	orroomflag $80
	wait 20
	spawninteraction INTERAC_MINIBOSS_PORTAL, $00, $00, $00

dungeonScript_minibossDeath2:
	stopifroomflag80set
	checknoenemies
	orroomflag $80

enableLinkAndMenu:
	writememory wDisableLinkCollisionsAndMenu, $00

dungeonScript_end:
	scriptend


dungeonScript_checkActiveTriggersEq01:
	stopifitemflagset
	checkmemoryeq wActiveTriggers, $01


spawnChestAfterPuff:
	playsound SND_SOLVEPUZZLE
	createpuff
	wait 15
	settilehere TILEINDEX_CHEST
	scriptend


dungeonScript_bossDeath:
	jumpifroomflagset $80, spawnHeartContainerCenterOfRoom
	checknoenemies
	orroomflag $80

spawnHeartContainerCenterOfRoom:
	stopifitemflagset
	setcoords $58, $78
	spawnitem TREASURE_HEART_CONTAINER, $00
	writememory wDisableLinkCollisionsAndMenu, $00
	scriptend


snakesRemainsScript_timerForChestDisappearing:
	stopifitemflagset
	wait 240
	stopifitemflagset
	playsound SND_POOF
	createpuff
	settilehere TILEINDEX_STANDARD_FLOOR
	scriptend

spawnHeartContainerHere:
	spawnitem TREASURE_HEART_CONTAINER, $00
	writememory wDisableLinkCollisionsAndMenu, $00
	scriptend

dancingDragonScript_spawnStairsToB1:
	stopifroomflag80set
	checknoenemies
	orroomflag $80
	spawninteraction INTERAC_PUFF, $00, $58, $98
	wait 8
	settilehere TILEINDEX_EAST_STAIRS
	playsound SND_SOLVEPUZZLE
	scriptend

AutumnSwitch:
	stopifroomflag80set
	checknoenemies
	orroomflag $80
	spawninteraction INTERAC_EXPLOSION, $00, $18, $38
	wait 8
	settilehere $5e
	playsound SND_SOLVEPUZZLE
	scriptend

AutumnHole:
	stopifroomflag80set
	checknoenemies
	orroomflag $80
	spawninteraction INTERAC_PUFF, $00, $78, $78
	wait 8
	settilehere $4b
	scriptend

AutumnGap:
	stopifroomflag80set
	checknoenemies
	orroomflag $80
	spawninteraction INTERAC_EXPLOSION, $00, $28, $78
	wait 8
	settilehere $a4
	scriptend

AutumnMine1:
	stopifroomflag80set
	checknoenemies
	orroomflag $80
	spawninteraction INTERAC_EXPLOSION, $00, $28, $38
	wait 8
	settilehere $5e
	playsound SND_SOLVEPUZZLE
	scriptend

AutumnMine2:
	stopifroomflag80set
	checknoenemies
	orroomflag $80
	spawninteraction INTERAC_EXPLOSION, $00, $28, $b8
	wait 8
	settilehere $5e
	scriptend

Autumn431:
	stopifroomflag80set
	checknoenemies
	orroomflag $80
	spawninteraction INTERAC_EXPLOSION, $00, $48, $d8
	wait 8
	settilehere $a0
	playsound SND_SOLVEPUZZLE
	scriptend

Autumn40E:
	stopifroomflag80set
	checknoenemies
	orroomflag $80
	spawninteraction INTERAC_PUFF, $00, $48, $48
	wait 8
	settilehere $51
	playsound SND_SOLVEPUZZLE
	scriptend

Autumn41f:
	stopifroomflag80set
	checkmemoryeq wActiveTriggers, $01
	orroomflag $80
	spawninteraction INTERAC_PUFF, $00, $28, $68
	wait 8
	settilehere $52
	playsound SND_SOLVEPUZZLE
	scriptend

Autumn423:
	stopifroomflag80set
	checknoenemies
	orroomflag $80
	spawninteraction INTERAC_EXPLOSION, $00, $38, $b8
	wait 8
	settilehere $a0
	scriptend

Autumn431a:
	stopifroomflag80set
	checknoenemies
	orroomflag $80
	spawninteraction INTERAC_EXPLOSION, $00, $98, $28
	wait 8
	settilehere $6a
	scriptend

Autumn431b:
	stopifroomflag80set
	checknoenemies
	orroomflag $80
	spawninteraction INTERAC_EXPLOSION, $00, $98, $58
	wait 8
	settilehere $6a
	scriptend

Autumn425a:
	stopifroomflag80set
	checknoenemies
	orroomflag $80
	spawninteraction INTERAC_EXPLOSION, $00, $58, $78
	wait 8
	settilehere $a0
	playsound SND_SOLVEPUZZLE
	scriptend

Autumn425b:
	stopifroomflag80set
	checknoenemies
	orroomflag $80
	spawninteraction INTERAC_EXPLOSION, $00, $58, $c8
	wait 8
	settilehere $a0
	scriptend

Autumn425c:
	stopifroomflag80set
	checknoenemies
	orroomflag $80
	spawninteraction INTERAC_EXPLOSION, $00, $78, $58
	wait 8
	settilehere $a0
	scriptend

Autumn426:
	stopifroomflag80set
	checknoenemies
	orroomflag $80
	spawninteraction INTERAC_EXPLOSION, $00, $08, $b8
	wait 8
	settilehere $52
	playsound SND_SOLVEPUZZLE
	scriptend

AutumnCarts:
	stopifroomflag80set
	checknoenemies
	orroomflag $80
	spawninteraction INTERAC_EXPLOSION, $00, $98, $28
	wait 8
	settilehere $5d
	playsound SND_SOLVEPUZZLE
	scriptend

Autumn40ba:
	stopifroomflag40set
@loop:
    jumpifmemoryset wActiveTriggers, $01, @spawnExplosion
    wait 1
    scriptjump @loop
@spawnExplosion:
    orroomflag $40
    spawninteraction INTERAC_EXPLOSION, $00, $78, $78
    wait 8
    settilehere $a3
    playsound SND_SOLVEPUZZLE
    scriptend

Autumn40bb:
	stopifroomflag80set
@loop:
    jumpifmemoryset wActiveTriggers, $02, @spawnExplosion
    wait 1
    scriptjump @loop
@spawnExplosion:
    orroomflag $80
    spawninteraction INTERAC_EXPLOSION, $00, $58, $78
    wait 8
    settilehere $a4
    playsound SND_SOLVEPUZZLE
    scriptend

Autumn411:
	stopifroomflag80set
	checkmemoryeq wActiveTriggers, $01
	orroomflag $80
	spawninteraction INTERAC_PUFF, $00, $68, $a8
	wait 8
	settilehere $53
	playsound SND_SOLVEPUZZLE
	scriptend

Autumn41a2:
	stopifroomflag80set
	checknoenemies
	orroomflag $80
	spawninteraction INTERAC_PUFF, $00, $88, $c8
	wait 8
	settilehere $a2
	scriptend

dancingDragonScript_pushingPotsRoom:
	jumpifroomflagset $80, @spawnChest
	checkmemoryeq wActiveTriggers, $ff
	orroomflag $80
	wait 8
@spawnChest:
	stopifitemflagset
	scriptjump spawnChestAfterPuff

unicornsCaveScript_dropMagnetBallAfterDarknutKill:
	stopifroomflag80set
	wait 30
	checknoenemies
	orroomflag $80
	scriptend

dungeonScript_spawnKeyOnMagnetBallToButton:
	stopifitemflagset
	checkmemoryeq wActiveTriggers, $01
	spawnitem TREASURE_SMALL_KEY, $01
	scriptend

explorersCryptScript_dropKeyDownAFloor:
	stopifroomflag40set
	checkmemoryeq wActiveTriggers, $01
	asm15 scriptHelp.D7dropKeyDownAFloor
	scriptend

explorersCryptScript_keyDroppedFromAbove:
	stopifitemflagset
	jumpifroomflagset $80, @keyDroppedFromAbove
	scriptend
@keyDroppedFromAbove:
	spawnitem TREASURE_SMALL_KEY, $01
	scriptend

explorersCryptScript_multibutton:
	stopifroomflag80set
	checkmemoryeq wActiveTriggers, $ff
	orroomflag $80
	wait 8
	stopifitemflagset
	spawninteraction INTERAC_EXPLOSION, $00, $88, $d8
	wait 8
	settilehere $8c
	playsound SND_SOLVEPUZZLE
	scriptend
	
explorersCryptScript_roomLeftOfRandomArmosRoom:
	jumpifroomflagset $40, D7createTrampoline
	checkmemoryeq wActiveTriggers, $01
	scriptjump D7buttonPressed

explorersCryptScript_magunesuTrampoline:
	asm15 interactionSetAlwaysUpdateBit
	jumpifroomflagset $40, D7createTrampoline
	checknoenemies

D7buttonPressed:
	orroomflag $40
	playsound SND_SOLVEPUZZLE

D7createTrampoline:
	wait 8
	createpuff
	wait 15
	asm15 scriptHelp.createD7Trampoline
	scriptend

D7tileburst:
	stopifroomflag80set
	checkmemoryeq wActiveTriggers, $01
	orroomflag $80
	spawninteraction INTERAC_EXPLOSION, $00, $58, $A8
	wait 8
	settilehere $fd
	playsound SND_SOLVEPUZZLE
	scriptend

55Ea:
	stopifroomflag40set
@loop:
    jumpifmemoryset wActiveTriggers, $01, @spawnExplosion
    wait 1
    scriptjump @loop
@spawnExplosion:
    orroomflag $40
    spawninteraction INTERAC_PUFF, $00, $58, $78
    wait 8
    settilehere $f1
    playsound SND_SOLVEPUZZLE
    scriptend

55Eb:
	stopifroomflag80set
@loop:
    jumpifmemoryset wActiveTriggers, $02, @spawnExplosion
    wait 1
    scriptjump @loop
@spawnExplosion:
    orroomflag $80
    spawninteraction INTERAC_EXPLOSION, $00, $88, $78
    wait 8
    settilehere $52
    playsound SND_SOLVEPUZZLE
    scriptend


explorersCryptScript_1stPoeSisterRoom:
	loadscript scripts2.explorersCrypt_firstPoeSister


explorersCryptScript_2ndPoeSisterRoom:
	loadscript scripts2.explorersCrypt_secondPoeSister


explorersCryptScript_4FiresRoom_1:
	stopifroomflag40set
	asm15 scriptHelp.checkFirstPoeBeaten
	jumptable_memoryaddress $cfc1
	.dw @notBeaten
	.dw explorersCrypt_poeBeaten

@notBeaten:
	loadscript scripts2.explorersCrypt_firesGoingOut_1

explorersCrypt_poeBeaten:
	playsound SND_SOLVEPUZZLE
	orroomflag $40
	scriptend


explorersCryptScript_4FiresRoom_2:
	stopifroomflag40set
	asm15 scriptHelp.checkSecondPoeBeaten
	jumptable_memoryaddress $cfc1
	.dw @notBeaten
	.dw explorersCrypt_poeBeaten

@notBeaten:
	loadscript scripts2.explorersCrypt_firesGoingOut_2


explorersCryptScript_darknutBridge:
	stopifroomflag80set
	checknoenemies
	orroomflag $80
	asm15 scriptHelp.D7spawnDarknutBridge
	scriptend

swordAndShieldMazeScript_verticalBridgeUnlockedByOrb:
	stopifroomflag80set
	checkmemoryeq wActiveTriggers, $01
	orroomflag $80
	asm15 scriptHelp.D8VerticalBridgeUnlockedByOrb
	scriptend


swordAndShieldMazeScript_verticalBridgeInLava:
	stopifroomflag80set
	checkmemoryeq wActiveTriggers, $01
	asm15 scriptHelp.D8VerticalBridgeInLava
	scriptend


swordAndShieldMazeScript_armosBlockingStairs:
	stopifroomflag80set
	writeobjectbyte Interaction.direction, $96

@checkIfWillMove:
	asm15 scriptHelp.D8armosCheckIfWillMove
	jumptable_objectbyte $49
	.dw @checkIfWillMove
	.dw stubScript


swordAndShieldMazeScript_7torchesAfterMiniboss:
	asm15 scriptHelp.D8createFiresGoingOut, $a0
	stopifroomflag80set
	checkmemoryeq wNumTorchesLit, $07

puzzelSolvedSpawnUpStaircase:
	orroomflag $80
	createpuff
	wait 30
	settilehere TILEINDEX_INDOOR_UPSTAIRCASE
	playsound SND_SOLVEPUZZLE
	scriptend

heartpieced1:
	stopifitemflagset
	spawnitem TREASURE_ROUND_JEWEL, $00
	scriptend

seasonsportal:
	stopifroomflag80set
	checkmemoryeq wActiveTriggers, $01
	orroomflag $80
    spawninteraction INTERAC_PUFF, $00, $58, $78
	spawninteraction INTERAC_MINIBOSS_PORTAL, $00, $00, $00
	playsound SND_SOLVEPUZZLE
	scriptend

swordAndShieldMazeScript_pushableIceBlocks:
	stopifroomflag80set
@waitUntilIceBlocksInPlace:
	wait 8
	asm15 scriptHelp.D8checkAllIceBlocksInPlace
	jumptable_memoryaddress $cfc1
	.dw @waitUntilIceBlocksInPlace
	.dw @success
@success:
	orroomflag $80
	playsound SND_SOLVEPUZZLE
	createpuff
	wait 20
	settilehere TILEINDEX_INDOOR_DOWNSTAIRCASE
	scriptend


swordAndShieldMazeScript_horizontalBridgeByMoldorms:
	stopifroomflag80set
	checkmemoryeq wActiveTriggers, $01
	asm15 scriptHelp.D8HorizontalBridgeByMoldorms
	scriptend