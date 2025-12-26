singleTileChangeGroupTable:
	.dw singleTileChangeGroup0Data
	.dw singleTileChangeGroup1Data
	.dw singleTileChangeGroup2Data
	.dw singleTileChangeGroup3Data
	.dw singleTileChangeGroup4Data
	.dw singleTileChangeGroup5Data
	.dw singleTileChangeGroup6Data
	.dw singleTileChangeGroup7Data

; Data format:
; b0: Room index
; b1: Bitmask to check. If bitmask & [room flags] is nonzero, the change is applied.
;     The $f0/$f1/$f2 special cases from Ages do NOT exist in seasons unless the "AGES_ENGINE"
;     define is enabled.
; b2: Position of tile to change
; b3: New tile to put at that position

singleTileChangeGroup0Data:
	.db $9a $40 $33 $c5
	.db $52 $40 $02 $d0
	.db $52 $40 $01 $6b
	.db $52 $40 $03 $45
	.db $e9 $01 $48 $04
	.db $e9 $02 $58 $04
	.db $01 $80 $66 $04
	.db $01 $80 $65 $9c
	.db $01 $40 $66 $04
	.db $01 $40 $67 $9c
	.db $00 $00

singleTileChangeGroup1Data:
	.db $0a $80 $32 $e1
	.db $0a $80 $33 $e1
	.db $0a $80 $34 $e1
	.db $08 $40 $53 $e8
	.db $12 $40 $58 $e8
	.db $14 $40 $37 $e8
	.db $35 $01 $36 $04
	.db $37 $01 $13 $04
	.db $13 $01 $25 $04
	.db $42 $01 $57 $06
	.db $44 $01 $56 $06
	.db $55 $01 $52 $04
	.db $55 $02 $62 $04
	.db $66 $01 $14 $04
	.db $69 $20 $28 $e1
	.db $00 $00

singleTileChangeGroup2Data:
singleTileChangeGroup3Data:
singleTileChangeGroup4Data:
	.db $0f $80 $59 $53
	.db $0f $80 $31 $a0
	.db $0f $80 $71 $a0
	.db $0f $80 $33 $a0
	.db $0f $80 $73 $a0
	.db $10 $80 $25 $aa
	.db $10 $80 $38 $aa
	.db $10 $80 $69 $aa
	.db $10 $80 $8c $aa
	.db $10 $80 $13 $5e
	.db $3e $80 $27 $a4
	.db $3e $80 $36 $a4
	.db $3e $80 $56 $a4
	.db $3e $80 $38 $a4
	.db $3e $80 $58 $a4
	.db $1a $80 $77 $4b
	.db $1a $80 $8c $a2
	.db $30 $80 $23 $5e
	.db $30 $80 $43 $5e
	.db $30 $80 $63 $5e
	.db $30 $80 $2b $5e
	.db $30 $80 $4b $5e
	.db $30 $80 $6b $5e
	.db $0e $80 $33 $aa
	.db $0e $80 $53 $aa
	.db $0e $80 $3b $aa
	.db $0e $80 $5b $aa
	.db $0e $80 $44 $51
	.db $31 $80 $24 $a0
	.db $31 $80 $22 $a0
	.db $31 $80 $4a $a0
	.db $31 $80 $4c $a0
	.db $31 $80 $4d $a0
	.db $31 $80 $92 $6a
	.db $31 $80 $95 $6a
	.db $23 $80 $71 $a0
	.db $23 $80 $76 $a0
	.db $23 $80 $78 $a0
	.db $23 $80 $7d $a0
	.db $23 $80 $3b $a0
	.db $1f $80 $1a $0d
	.db $1f $80 $26 $52
	.db $25 $80 $66 $aa
	.db $25 $80 $68 $aa
	.db $25 $80 $6b $aa
	.db $25 $80 $6d $aa
	.db $25 $80 $57 $aa
	.db $25 $80 $5c $aa
	.db $25 $80 $75 $aa
	.db $26 $80 $0b $52
	.db $26 $80 $1d $a3
	.db $26 $80 $9d $a3
	.db $26 $80 $4d $a3
	.db $26 $80 $6d $a3
	.db $49 $80 $92 $5d
	.db $4c $80 $92 $5d
	.db $4b $80 $92 $5d
	.db $4c $80 $84 $59
	.db $4c $80 $87 $5a
	.db $4c $80 $27 $59
	.db $4c $80 $2a $5a
	.db $4b $80 $44 $5e
	.db $4b $80 $54 $5e
	.db $4b $80 $64 $5e
	.db $4b $80 $84 $5e
	.db $4b $80 $94 $5a
	.db $49 $80 $62 $5c
	.db $49 $80 $72 $5e
	.db $49 $80 $83 $5d
	.db $49 $80 $84 $5d
	.db $0b $40 $77 $a3
	.db $0b $80 $57 $a4
	.db $0b $80 $41 $0d
	.db $0b $40 $4d $0d
	.db $11 $80 $6a $53
	.db $11 $80 $6c $0d
	.db $00 $00

singleTileChangeGroup5Data:
	.db $48 $80 $5a $fd
	.db $48 $80 $8a $0d
	.db $f0 $40 $77 $6a
	.db $bc $20 $2a $53
	.db $73 $80 $45 $a0
	.db $73 $80 $34 $26
	.db $99 $80 $9d $44
	.db $9a $80 $66 $45
	.db $9e $80 $9d $44
	.db $27 $80 $57 $4f
	.db $5e $80 $92 $0d
	.db $5e $80 $87 $52
	.db $5e $40 $57 $f1
	.db $5e $40 $9c $0d	
	.db $40 $80 $8d $8c	
	.db $00 $00

singleTileChangeGroup6Data:
singleTileChangeGroup7Data:
	.db $00 $00
