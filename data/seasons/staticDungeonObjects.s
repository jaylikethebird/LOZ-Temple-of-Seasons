; Data format:
; b0: object type (3=interaction, 4=enemy, 5=part)
; b1: room index
; b2: High byte of ID
; b3: Bits 0-6 = low byte of id, bit 7 sets bit 1 of the object's ENABLED byte
; b4: Y
; b5: X

staticDungeonObjects:
	.dw dungeon0StaticObjects
	.dw dungeon1StaticObjects
	.dw dungeon2StaticObjects
	.dw dungeon3StaticObjects
	.dw dungeon4StaticObjects
	.dw dungeon5StaticObjects
	.dw dungeon6StaticObjects
	.dw dungeon7StaticObjects
	.dw dungeon8StaticObjects
	.dw dungeon9StaticObjects
	.dw dungeonAStaticObjects
	.dw dungeonBStaticObjects


dungeon0StaticObjects:
	.db $ff

dungeon1StaticObjects:
	.db $03, $15, INTERAC_MINECART, 			$00, $28, $38
	.db $03, $20, INTERAC_MINECART, 			$00, $58, $78
	.db $03, $41, INTERAC_MINECART, 			$00, $78, $28
	.db $03, $16, INTERAC_MINECART, 			$00, $58, $68
	.db $03, $12, INTERAC_MINECART, 			$00, $28, $58
	.db $03, $30, INTERAC_MINECART, 			$00, $78, $68
	.db $03, $30, INTERAC_MINECART, 			$00, $78, $88
	.db $03, $28, INTERAC_MINECART, 			$00, $68, $a8
	.db $03, $24, INTERAC_MINECART, 			$00, $58, $28
	.db $ff

dungeon2StaticObjects:
dungeon3StaticObjects:
	.db $ff

dungeon4StaticObjects:
	.db $ff

dungeon5StaticObjects:
	.db $03, $a5, INTERAC_MINECART,               $00, $38, $48
	.db $03, $a5, INTERAC_MINECART,               $00, $48, $78
	.db $03, $a1, INTERAC_MINECART,               $00, $78, $38
	.db $03, $89, INTERAC_DUNGEON_STUFF,          $05, $28, $88
	.db $03, $94, INTERAC_DUNGEON_STUFF,          $05, $18, $c8
	.db $03, $97, INTERAC_DUNGEON_STUFF,          $05, $78, $78
	.db $03, $9a, INTERAC_D5_FALLING_MAGNET_BALL, $00, $38, $48
	.db $ff

dungeon6StaticObjects:
	.db $03, $aa, INTERAC_DUNGEON_STUFF, $05, $28, $78
	.db $03, $b5, INTERAC_DUNGEON_STUFF, $05, $78, $d8
	.db $03, $b4, INTERAC_DUNGEON_STUFF, $05, $98, $48
	.db $03, $c5, INTERAC_DUNGEON_STUFF, $05, $18, $18
	.db $ff

dungeon7StaticObjects:
	.db $03, $65, INTERAC_DUNGEON_STUFF, $05, $58, $78
	.db $ff

dungeon8StaticObjects:
	.db $ff

dungeon9StaticObjects:
dungeonAStaticObjects:
	.db $ff

dungeonBStaticObjects:
	.db $03, $24, INTERAC_DUNGEON_STUFF, $05, $18, $18
	.db $ff
