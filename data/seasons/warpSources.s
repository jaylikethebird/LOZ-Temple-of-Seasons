; The data in this file specifies which rooms contain warps. For the destination, they have a
; "destination index" which refers to data in "data/{game}/warpDestinations.s".
;
; There are a couple of macros used here. For m_StandardWarp:
;
;   Param 1: half-byte
;     If 0, warp applies to the whole screen. Otherwise it's a "screen-edge" warp applying to one of
;     the four corners of the screen, depending which bits are set.
;     bit 0 = top-left, bit 1 = top-right, bit 2 = bottom-left, bit 3 = bottom-right.
;
;   Param 2: byte
;     The room index this warp source is in. (The group is implicitly known already based on which
;     table it's in.)
;
;   Param 3: byte
;     Warp Dest Index. Along with the Warp Dest Group, this is an index for the warp destination to
;     use (data/{game}/warpDestinations.s).
;
;   Param 4: half-byte
;     Warp Dest Group. Determines the map group to be warped to. Goes with Warp Dest Index above.
;
;   Param 5: half-byte
;     Transition source type. See constants/common/transitions.s.
;
; For m_PointerWarp, 1st param is the room index, 2nd param is a pointer to data for that room. Used
; for rooms with multiple warps.
;
; For m_PositionWarp, it's basically the same as m_StandardWarp, except it's missing the 1st
; parameter, and the 2nd parameter becomes the YX position instead of the room index. This can only
; be used in conjunction with m_PointerWarp (it points to the list of m_PositionWarp entries).
;
; There are three ways to end the warp lists:
;
;   m_WarpListEndWithDefault specifies that if no warp was found, the last entry is used as a default.
;
;   m_WarpListEndNoDefault specifies that if no warp was found, some fallback code should be run
;   instead. This fallback code only exists in Ages, which can handle staircases in dungeons without
;   any warp data being explicitly defined for them.
;
;   m_WarpListFallThrough doesn't actually end the list. It's used in places where the devs appear
;   to have forgotten to use their equivalent of one of the two end commands above.

warpSourcesTable:
	.dw group0WarpSources
	.dw group1WarpSources
	.dw group2WarpSources
	.dw group3WarpSources
	.dw group4WarpSources
	.dw group5WarpSources
	.dw group6WarpSources
	.dw group7WarpSources

group0WarpSources:
	m_PointerWarp     $d4 warpSource764b
	m_StandardWarp $0 $96 $02 $4 $4
	m_PointerWarp     $60 warpSource766b
	m_StandardWarp $0 $1d $05 $4 $4
	m_StandardWarp $0 $8a $06 $4 $4
	m_StandardWarp $0 $d0 $00 $5 $4
	m_StandardWarp $0 $03 $02 $5 $4
	m_StandardWarp $0 $b6 $02 $3 $4
	m_PointerWarp     $d7 warpSource75e3
	m_PointerWarp     $c5 warpSource7603
	m_StandardWarp $0 $c8 $05 $3 $4
	m_PointerWarp     $d2 warpSource763f
	m_StandardWarp $0 $e8 $15 $3 $4
	m_PointerWarp     $f6 warpSource7623
	m_StandardWarp $0 $b5 $18 $3 $4
	m_StandardWarp $0 $10 $1f $3 $4
	m_PointerWarp  $6d group0Room6dWarpSources
	m_PointerWarp     $f9 warpSource762b
	m_StandardWarp $0 $e6 $2b $3 $4
	m_StandardWarp $0 $04 $30 $3 $4
	m_StandardWarp $0 $f7 $33 $3 $4
	m_StandardWarp $0 $a3 $3c $3 $4
	m_StandardWarp $0 $78 $3d $3 $4
	m_PointerWarp     $62 warpSource761b
	m_StandardWarp $0 $43 $41 $3 $4
	m_PointerWarp     $5b warpSource760b
	m_StandardWarp $0 $9a $06 $1 $8
	m_StandardWarp $0 $b0 $07 $1 $8
	m_PointerWarp     $1e warpSource75fb
	m_StandardWarp $0 $b9 $09 $1 $8
	m_StandardWarp $0 $25 $0a $1 $8
	m_StandardWarp $0 $04 $0b $1 $8
	m_StandardWarp $1 $d9 $00 $2 $3
	m_StandardWarp $2 $d9 $00 $2 $3
	m_StandardWarp $0 $da $58 $5 $2
	m_PointerWarp     $ea warpSource7673
	m_StandardWarp $0 $1b $60 $5 $4
	m_StandardWarp $0 $0b $62 $5 $4
	m_StandardWarp $0 $1c $64 $5 $4
	m_PointerWarp     $0f warpSource7683
	m_StandardWarp $0 $1f $67 $5 $4
	m_StandardWarp $0 $aa $69 $5 $4
	m_StandardWarp $0 $18 $76 $5 $4
	m_PointerWarp     $28 warpSource75f3
	m_StandardWarp $0 $39 $7b $5 $4
	m_StandardWarp $0 $09 $7f $5 $4
	m_PointerWarp     $19 warpSource768b
	m_StandardWarp $0 $29 $80 $5 $4
	m_StandardWarp $0 $31 $48 $4 $4
	m_StandardWarp $0 $f1 $4f $4 $4
	m_StandardWarp $0 $fd $50 $4 $4
	m_StandardWarp $0 $ff $52 $4 $4
	m_PointerWarp     $bf warpSource7613
	m_StandardWarp $0 $cc $56 $4 $4
	m_StandardWarp $0 $51 $57 $4 $4
	m_StandardWarp $0 $c2 $5a $4 $4
	m_StandardWarp $0 $a7 $5b $4 $4
	m_StandardWarp $0 $b3 $39 $4 $4
	m_StandardWarp $0 $d3 $5c $4 $4
	m_StandardWarp $0 $e2 $84 $5 $4
	m_StandardWarp $0 $ee $83 $5 $4
	m_StandardWarp $0 $dc $89 $5 $4
	m_StandardWarp $0 $66 $8b $5 $4
	m_StandardWarp $0 $02 $8f $5 $4
	m_StandardWarp $0 $a4 $91 $5 $4
	m_PointerWarp     $57 warpSource75eb
	m_StandardWarp $0 $69 $93 $5 $4
	m_StandardWarp $0 $79 $94 $5 $4
	m_StandardWarp $0 $49 $97 $5 $4
	m_StandardWarp $0 $a6 $9a $5 $4
	m_StandardWarp $0 $e0 $46 $3 $4
	m_StandardWarp $0 $b6 $7b $0 $4
	m_StandardWarp $0 $97 $20 $1 $8
	m_StandardWarp $00 $ae $2d $1 $8
	m_PointerWarp  $6b group0Room6bWarpSources
	m_StandardWarp $0 $8f $04 $5 $4
	m_StandardWarp $0 $8e $45 $5 $4
	m_PointerWarp  $7d group0Room7dWarpSources
	m_PointerWarp  $7e group0Room7eWarpSources
	m_PointerWarp  $4e group0Room4eWarpSources
	m_WarpListEndNoDefault
group0Room4eWarpSources:
	m_PositionWarp $62 $0b $7 $4
	m_PositionWarp $35 $0c $7 $4
	m_WarpListEndNoDefault
group0Room7eWarpSources:
	m_PositionWarp $55 $33 $1 TRANSITION_SRC_SUBROSIA
	m_PositionWarp $15 $2a $1 TRANSITION_SRC_SUBROSIA
	m_WarpListEndNoDefault
group0Room6dWarpSources:
	m_PositionWarp $33 $0a $3 $4
	m_WarpListEndNoDefault
group0Room7dWarpSources:
	m_PositionWarp $23 $37 $1 TRANSITION_SRC_SUBROSIA
	m_PositionWarp $26 $32 $1 TRANSITION_SRC_SUBROSIA
	m_PositionWarp $47 $11 $5 $4
	m_WarpListEndNoDefault
group0Room6bWarpSources:
	m_PositionWarp $26 $30 $1 $8
	m_PositionWarp $23 $31 $1 $8
	m_WarpListEndNoDefault

warpSource75e3:
	m_PositionWarp $43 $03 $3 $4
	m_PositionWarp $14 $98 $5 $4
	m_WarpListEndWithDefault

warpSource75eb:
	m_PositionWarp $32 $92 $5 $4
	m_PositionWarp $15 $99 $5 $4
	m_WarpListEndWithDefault

warpSource75f3:
	m_PositionWarp $13 $78 $5 $4
	m_PositionWarp $52 $8a $5 $4
	m_WarpListEndWithDefault

warpSource75fb:
	m_PositionWarp $12 $46 $4 $4
	m_PositionWarp $54 $08 $1 $8
	m_WarpListFallThrough

warpSource7603:
	m_PositionWarp $11 $04 $3 $4
	m_PositionWarp $14 $38 $3 $4
	m_WarpListEndWithDefault

warpSource760b:
	m_PositionWarp $33 $42 $3 $4
	m_WarpListEndWithDefault

warpSource7613:
	m_PositionWarp $18 $54 $4 $4
	m_PositionWarp $46 $55 $4 $4
	m_WarpListEndWithDefault

warpSource761b:
	m_PositionWarp $27 $40 $4 $4
	m_PositionWarp $34 $3e $3 $4
	m_WarpListEndWithDefault

warpSource7623:
	m_PositionWarp $24 $16 $3 $4
	m_PositionWarp $26 $17 $3 $4
	m_WarpListEndWithDefault

warpSource762b:
	m_PositionWarp $62 $8e $5 $4
	m_PositionWarp $33 $29 $3 $4
	m_PositionWarp $25 $2a $3 $4
	m_WarpListEndWithDefault


warpSource763f:
	m_PositionWarp $12 $8d $5 $4
	m_PositionWarp $24 $06 $3 $4
	m_PositionWarp $16 $07 $3 $4
	m_WarpListEndWithDefault

warpSource764b:
	m_PositionWarp $57 $01 $4 $9
	m_PositionWarp $54 $00 $4 $4
	m_WarpListEndWithDefault

warpSource7653: ; hardcoded usage of this through getLinkedHerosCaveSideEntranceRoom
	m_StandardWarp $0 $57 $52 $5 $9
	m_WarpListFallThrough



warpSource766b:
	m_PositionWarp $21 $3b $4 $4
	m_PositionWarp $25 $04 $4 $4
	m_WarpListEndWithDefault

warpSource7673:
	m_PositionWarp $15 $55 $5 $4
	m_PositionWarp $07 $5a $5 $4
	m_WarpListEndWithDefault


warpSource7683:
	m_PositionWarp $15 $65 $5 $4
	m_PositionWarp $55 $66 $5 $4
	m_WarpListEndWithDefault

warpSource768b:
	m_PositionWarp $06 $7d $5 $4
	m_PositionWarp $08 $7e $5 $4
	m_PositionWarp $22 $73 $5 $4
	m_PositionWarp $57 $81 $5 $4
	m_WarpListEndWithDefault


group1WarpSources:
	m_PointerWarp     $28 warpSource7733
	m_StandardWarp $0 $08 $3a $4 $4
	m_StandardWarp $0 $0a $9e $5 $4
	m_StandardWarp $0 $2a $86 $5 $4
	m_StandardWarp $0 $05 $1a $0 $8
	m_StandardWarp $0 $57 $1b $0 $8
	m_StandardWarp $0 $24 $0f $5 TRANSITION_SRC_FADEOUT
	m_StandardWarp $0 $49 $22 $3 $4
	m_StandardWarp $0 $45 $24 $3 $4
	m_StandardWarp $0 $44 $08 $5 $4
	m_StandardWarp $0 $26 $26 $3 $4
	m_StandardWarp $0 $54 $06 $7 $4
	m_StandardWarp $0 $04 $4b $4 $4
	m_StandardWarp $0 $b6 $7b $0 $4
	m_PointerWarp  $47 group1Room47WarpSources
	m_PointerWarp  $1a group1Room1aWarpSources
	m_StandardWarp $0 $3a $4a $5 $4
	m_StandardWarp $0 $36 $01 $0 TRANSITION_SRC_SUBROSIA
	m_StandardWarp $0 $14 $0d $3 TRANSITION_SRC_INSTANT
	m_PointerWarp  $06 group1Room06WarpSources
	m_StandardWarp $0 $34 $10 $5 TRANSITION_SRC_FADEOUT
	m_StandardWarp $0 $38 $05 $5 TRANSITION_SRC_FADEOUT
	m_PointerWarp  $19 group1Room19WarpSources
	m_StandardWarp $0 $09 $06 $5 $4
	m_PointerWarp  $5a group1Room5aWarpSources
	m_StandardWarp $0 $64 $0c $4 TRANSITION_SRC_INSTANT
	m_PointerWarp  $6a group1Room6aWarpSources
	m_PointerWarp  $68 group1Room68WarpSources
	m_PointerWarp  $58 group1Room58WarpSources
	m_WarpListEndNoDefault
group1Room58WarpSources:
	m_PositionWarp $51 $18 $4 TRANSITION_SRC_FADEOUT
	m_WarpListEndNoDefault
group1Room68WarpSources:
	m_PositionWarp $13 $17 $4 $4
	m_WarpListEndNoDefault
group1Room6aWarpSources:
	m_PositionWarp $51 $13 $4 TRANSITION_SRC_FADEOUT
	m_WarpListEndNoDefault
group1Room5aWarpSources:
	m_PositionWarp $17 $03 $4 $4
	m_WarpListEndNoDefault
group1Room19WarpSources:
	m_PositionWarp $32 $03 $0 TRANSITION_SRC_SUBROSIA
	m_PositionWarp $37 $05 $0 TRANSITION_SRC_SUBROSIA
	m_PositionWarp $57 $07 $5 TRANSITION_SRC_FADEOUT
	m_WarpListEndNoDefault
group1Room06WarpSources:
	m_PositionWarp $53 $10 $3 $4
	m_PositionWarp $24 $09 $3 $4
	m_WarpListEndNoDefault
group1Room1aWarpSources:
	m_PositionWarp $66 $33 $5 $2
	m_PositionWarp $48 $12 $0 $8
	m_PositionWarp $46 $1f $0 $8
	m_PositionWarp $68 $ac $5 $2
	m_WarpListEndNoDefault
group1Room47WarpSources:
	m_PositionWarp $55 $0c $3 $4
	m_WarpListEndNoDefault



warpSource7733:
	m_PositionWarp $43 $62 $4 $4
	m_PositionWarp $52 $07 $7 $4
	m_WarpListEndWithDefault



group2WarpSources:
	m_StandardWarp $4 $0b $19 $0 $3
	m_StandardWarp $8 $0b $19 $0 $3
	m_StandardWarp $4 $0c $19 $0 $3
	m_StandardWarp $8 $0c $19 $0 $3
	m_StandardWarp $4 $7b $19 $0 $3
	m_StandardWarp $8 $7b $19 $0 $3
	m_StandardWarp $4 $2b $19 $0 $3
	m_StandardWarp $8 $2b $19 $0 $3
	m_StandardWarp $4 $2c $19 $0 $3
	m_StandardWarp $8 $2c $19 $0 $3
	m_StandardWarp $4 $2d $19 $0 $3
	m_StandardWarp $8 $2d $19 $0 $3
	m_StandardWarp $4 $5b $19 $0 $3
	m_StandardWarp $8 $5b $19 $0 $3
	m_StandardWarp $4 $5c $19 $0 $3
	m_StandardWarp $8 $5c $19 $0 $3
	m_StandardWarp $4 $5d $19 $0 $3
	m_StandardWarp $8 $5d $19 $0 $3
	m_StandardWarp $4 $5e $19 $0 $3
	m_StandardWarp $8 $5e $19 $0 $3
	m_StandardWarp $0 $7b $41 $4 $4
	m_StandardWarp $0 $2b $41 $4 $4
	m_StandardWarp $0 $2c $41 $4 $4
	m_StandardWarp $0 $2d $41 $4 $4
	m_StandardWarp $0 $5b $41 $4 $4
	m_StandardWarp $0 $5c $41 $4 $4
	m_StandardWarp $0 $5d $41 $4 $4
	m_PointerWarp     $5e warpSource77e7
	m_PointerWarp     $6b warpSource77ef
	m_PointerWarp     $1b warpSource77ef
	m_PointerWarp     $1c warpSource77ef
	m_PointerWarp     $1d warpSource77ef
	m_PointerWarp     $4b warpSource77ef
	m_PointerWarp     $4c warpSource77ef
	m_PointerWarp     $4d warpSource77ef
	m_PointerWarp     $4e warpSource77ef
	m_StandardWarp $0 $3b $49 $4 $4
	m_StandardWarp $0 $3c $49 $4 $4
	m_StandardWarp $0 $3d $49 $4 $4
	m_StandardWarp $0 $3e $49 $4 $4
	m_StandardWarp $0 $b6 $7b $0 $4
	m_WarpListEndNoDefault

warpSource77e7:
	m_PositionWarp $26 $41 $4 $4
	m_PositionWarp $67 $48 $5 $4
	m_WarpListEndWithDefault

warpSource77ef:
	m_PositionWarp $06 $45 $4 $4
	m_PositionWarp $56 $43 $4 $4
	m_WarpListEndWithDefault


group3WarpSources:
	m_StandardWarp $4 $80 $0b $0 $3
	m_StandardWarp $4 $81 $0c $0 $3
	m_StandardWarp $4 $82 $0d $0 $3
	m_StandardWarp $4 $83 $11 $0 $3
	m_StandardWarp $4 $84 $0e $0 $3
	m_StandardWarp $4 $85 $10 $0 $3
	m_StandardWarp $4 $88 $45 $0 $3
	m_StandardWarp $4 $89 $46 $0 $3
	m_StandardWarp $4 $8a $19 $1 $3
	m_StandardWarp $0 $8a $34 $1 $2
	m_StandardWarp $4 $8f $17 $1 $3
	m_StandardWarp $4 $91 $21 $1 $3
	m_StandardWarp $4 $92 $13 $0 $3
	m_StandardWarp $4 $93 $14 $0 $3
	m_StandardWarp $4 $94 $15 $0 $3
	m_StandardWarp $08 $95 $2b $1 TRANSITION_SRC_LEAVESCREEN
	m_StandardWarp $4 $96 $0e $1 $3
	m_StandardWarp $4 $97 $0f $1 $3
	m_StandardWarp $0 $98 $37 $4 $2
	m_StandardWarp $4 $99 $48 $0 $3
	m_StandardWarp $0 $9a $4b $0 $2
	m_StandardWarp $0 $9b $4c $0 $2
	m_StandardWarp $4 $9c $4d $0 $3
	m_StandardWarp $4 $9d $4e $0 $3
	m_StandardWarp $8 $9e $15 $1 $3
	m_StandardWarp $4 $9f $50 $0 $3
	m_StandardWarp $4 $a0 $11 $1 $3
	m_StandardWarp $4 $a1 $10 $1 $3
	m_StandardWarp $4 $a2 $12 $1 $3
	m_StandardWarp $4 $a3 $2d $0 $3
	m_StandardWarp $4 $a4 $16 $0 $3
	m_StandardWarp $4 $a5 $17 $0 $3
	m_StandardWarp $4 $a6 $18 $0 $3
	m_StandardWarp $0 $a6 $2e $3 $2
	m_PointerWarp     $a7 warpSource78ef
	m_StandardWarp $4 $a8 $3a $0 $3
	m_StandardWarp $0 $a8 $0b $1 $8
	m_StandardWarp $4 $a9 $16 $1 $3
	m_StandardWarp $4 $aa $51 $0 $3
	m_PointerWarp     $ab warpSource78ff
	m_StandardWarp $4 $af $0f $0 $3
	m_StandardWarp $0 $b0 $2d $3 $2
	m_StandardWarp $8 $b1 $13 $1 $3
	m_StandardWarp $4 $b2 $14 $1 $3
	m_StandardWarp $4 $b3 $20 $0 $3
	m_StandardWarp $4 $b4 $21 $0 $3
	m_StandardWarp $4 $b5 $22 $0 $3
	m_StandardWarp $4 $b6 $4f $0 $3
	m_StandardWarp $0 $b6 $0a $7 $2
	m_StandardWarp $0 $b7 $47 $0 $2
	m_StandardWarp $4 $b8 $53 $0 $3
	m_StandardWarp $0 $b8 $45 $3 $2
	m_StandardWarp $0 $b9 $44 $3 $2
	m_StandardWarp $0 $ba $58 $0 $2
	m_StandardWarp $1 $ac $49 $3 $3
	m_StandardWarp $2 $ac $49 $3 $3
	m_StandardWarp $4 $bd $35 $3 $3
	m_StandardWarp $8 $bd $35 $3 $3
	m_StandardWarp $4 $bc $22 $1 $3
	m_StandardWarp $0 $b6 $7b $0 $4
	m_WarpListEndNoDefault

warpSource78ef:
	m_PositionWarp $11 $39 $3 $2
	m_PositionWarp $31 $2c $3 $2
	m_WarpListEndWithDefault


warpSource78ff:
	m_PositionWarp $66 $52 $0 $4
	m_PositionWarp $44 $0c $1 $8
	m_WarpListEndWithDefault


group4WarpSources:
	m_StandardWarp $4 $04 $00 $0 $3
	m_StandardWarp $04 $1c $28 $1 $3
	m_StandardWarp $4 $39 $02 $0 $3
	m_StandardWarp $4 $81 $2f $1 $3
	m_PointerWarp  $81 group4Room81WarpSources
	m_StandardWarp $4 $ba $2e $1 $3
	m_PointerWarp  $ba group4RoombaWarpSources
	m_StandardWarp $0 $07 $00 $6 $2
	m_StandardWarp $0 $37 $27 $0 $2
	m_StandardWarp $01 $43 $19 $4 $2
	m_StandardWarp $0 $4a $1b $4 $2
	m_StandardWarp $0 $52 $11 $4 $2
	m_StandardWarp $0 $57 $15 $4 $2
	m_StandardWarp $0 $59 $16 $4 $2
	m_StandardWarp $0 $65 $1d $4 $2
	m_StandardWarp $0 $69 $1f $4 $2
	m_StandardWarp $0 $8e $0b $6 $2
	m_PointerWarp     $90 warpSource7a6f
	m_StandardWarp $0 $93 $0a $6 $2
	m_StandardWarp $0 $a1 $0c $6 $2
	m_StandardWarp $0 $9b $0f $6 $2
	m_StandardWarp $0 $aa $2e $4 $2
	m_StandardWarp $0 $ac $2f $4 $2
	m_StandardWarp $0 $ad $30 $4 $2
	m_StandardWarp $0 $b4 $31 $4 $2
	m_StandardWarp $0 $bc $2a $4 $2
	m_StandardWarp $0 $be $2b $4 $2
	m_StandardWarp $0 $bf $2c $4 $2
	m_StandardWarp $0 $c4 $2d $4 $2
	m_StandardWarp $0 $cd $36 $4 $2
	m_StandardWarp $0 $ce $32 $4 $2
	m_StandardWarp $0 $d3 $38 $4 $2
	m_StandardWarp $0 $d5 $1c $3 $2
	m_StandardWarp $0 $d6 $35 $4 $2
	m_StandardWarp $4 $e0 $0c $0 $3
	m_StandardWarp $4 $e1 $29 $1 $3
	m_PointerWarp     $e5 warpSource7a7f
	m_StandardWarp $0 $e6 $3d $4 $2
	m_StandardWarp $0 $e7 $23 $0 $2
	m_StandardWarp $8 $e8 $0a $2 $3
	m_StandardWarp $0 $e8 $44 $4 $2
	m_StandardWarp $8 $e9 $14 $2 $3
	m_StandardWarp $0 $e9 $42 $4 $2
	m_StandardWarp $4 $ea $1e $2 $3
	m_StandardWarp $4 $eb $67 $0 $3
	m_StandardWarp $4 $ed $5b $0 $3
	m_StandardWarp $4 $ee $28 $2 $3
	m_StandardWarp $4 $ef $01 $1 $3
	m_StandardWarp $4 $f0 $02 $1 $3
	m_StandardWarp $4 $f1 $03 $1 $3
	m_StandardWarp $4 $f2 $05 $1 $3
	m_StandardWarp $0 $f4 $5e $0 $4
	m_StandardWarp $0 $f5 $5f $0 $4
	m_StandardWarp $0 $f6 $60 $0 $4
	m_StandardWarp $4 $f6 $61 $0 $3
	m_StandardWarp $0 $f7 $62 $0 $4
	m_StandardWarp $0 $f8 $63 $0 $4
	m_StandardWarp $4 $f9 $1b $1 $3
	m_StandardWarp $8 $f9 $1c $1 $3
	m_StandardWarp $4 $fa $64 $0 $3
	m_StandardWarp $4 $fb $65 $0 $3
	m_StandardWarp $4 $fc $66 $0 $3
	m_StandardWarp $0 $b6 $7b $0 $4
	m_StandardWarp $04 $a7 $27 $1 $4
	m_StandardWarp $0 $ab $5d $4 $4
	m_StandardWarp $0 $b0 $5e $4 $2
	m_PointerWarp  $cb group4RoomcbWarpSources
	m_StandardWarp $0 $d4 $60 $4 $2
	m_PointerWarp  $44 group4Room44WarpSources
	m_StandardWarp $04 $f3 $38 $1 TRANSITION_SRC_LEAVESCREEN
	m_PointerWarp  $e3 group4Roome3WarpSources
	m_WarpListEndNoDefault
group4Roome3WarpSources:
	m_PositionWarp $32 $3a $1 TRANSITION_SRC_FADEOUT
	m_WarpListEndNoDefault
group4Room44WarpSources:
	m_PositionWarp $92 $01 $6 TRANSITION_SRC_FADEOUT
	m_WarpListEndNoDefault
group4Room81WarpSources:
	m_PositionWarp $8d $03 $5 $4
	m_WarpListEndNoDefault
group4RoomcbWarpSources:
	m_PositionWarp $9d $34 $4 $2
	m_PositionWarp $5a $5f $4 $2
	m_WarpListEndNoDefault
group4RoombaWarpSources:
	m_PositionWarp $9d $33 $4 $2
	m_PositionWarp $7d $35 $5 $2
	m_WarpListEndNoDefault



warpSource7a6f:
	m_PositionWarp $97 $0e $6 $2
	m_PositionWarp $9d $0d $6 $2
	m_WarpListEndWithDefault


warpSource7a7f:
	m_PositionWarp $7b $3f $4 $2
	m_PositionWarp $86 $3c $4 $2
	m_WarpListEndWithDefault


group5WarpSources:
	m_StandardWarp $4 $87 $00 $1 $3
	m_PointerWarp  $87 group5Room87WarpSources
	m_StandardWarp $4 $97 $08 $0 $3
	m_StandardWarp $4 $9d $09 $0 $3
	m_StandardWarp $0 $3c $1b $5 $2
	m_StandardWarp $0 $68 $3b $5 $2
	m_StandardWarp $0 $69 $00 $7 $2
	m_StandardWarp $0 $6a $3d $5 $2
	m_StandardWarp $0 $6b $3e $5 $2
	m_StandardWarp $0 $6e $40 $5 $2
	m_StandardWarp $0 $73 $42 $5 $2
	m_PointerWarp     $74 warpSource7d5b
	m_StandardWarp $0 $77 $2d $5 $2
	m_StandardWarp $0 $78 $02 $7 $2
	m_StandardWarp $0 $84 $01 $3 $2
	m_StandardWarp $0 $86 $03 $7 $2
	m_StandardWarp $0 $88 $31 $5 $2
	m_StandardWarp $0 $89 $32 $5 $2
	m_StandardWarp $0 $8b $34 $5 $2
	m_PointerWarp  $8c group5Room8cWarpSources
	m_StandardWarp $0 $8d $36 $5 $2
	m_PointerWarp     $8e warpSource7d63
	m_StandardWarp $0 $67 $46 $5 $2
	m_StandardWarp $0 $83 $04 $7 $2
	m_StandardWarp $0 $9a $49 $5 $2
	m_StandardWarp $0 $9d $32 $2 $2
	m_StandardWarp $0 $9e $47 $5 $2
	m_StandardWarp $4 $30 $00 $0 $3
	m_StandardWarp $0 $2f $4d $5 $2
	m_StandardWarp $0 $29 $4c $5 $2
	m_StandardWarp $0 $28 $4f $5 $2
	m_StandardWarp $0 $20 $4e $5 $2
	m_StandardWarp $0 $24 $51 $5 $2
	m_StandardWarp $0 $26 $50 $5 $2
	m_StandardWarp $0 $27 $54 $5 $2
	m_StandardWarp $4 $b0 $2b $0 $3
	m_PointerWarp     $b0 warpSource7ca3
	m_PointerWarp     $b1 warpSource7cab
	m_StandardWarp $4 $b3 $28 $0 $3
	m_PointerWarp  $b3 group5Roomb3WarpSources
	m_StandardWarp $08 $b4 $25 $0 $3
	m_StandardWarp $4 $b5 $2e $0 $3
	m_StandardWarp $4 $b6 $2f $0 $3
	m_PointerWarp     $b7 warpSource7d6b
	m_StandardWarp $0 $b8 $61 $5 $2
	m_StandardWarp $8 $b9 $31 $0 $3
	m_StandardWarp $0 $ba $32 $0 $2
	m_StandardWarp $4 $ba $33 $0 $3
	m_StandardWarp $4 $bb $34 $0 $3
	m_PointerWarp     $be warpSource7d73
	m_PointerWarp     $bf warpSource7d7b
	m_StandardWarp $4 $c1 $36 $0 $2
	m_StandardWarp $0 $c1 $70 $5 $2
	m_PointerWarp     $c2 warpSource7d83
	m_StandardWarp $0 $c3 $37 $0 $2
	m_StandardWarp $0 $c4 $38 $0 $2
	m_StandardWarp $4 $c6 $1a $1 $3
	m_StandardWarp $4 $c7 $0d $1 $3
	m_PointerWarp  $c7 group5Roomc7WarpSources
	m_StandardWarp $4 $c9 $3d $0 $3
	m_StandardWarp $0 $c8 $79 $5 $2
	m_PointerWarp     $c9 warpSource7cb3
	m_StandardWarp $4 $cb $40 $0 $3
	m_StandardWarp $8 $cb $41 $0 $3
	m_StandardWarp $0 $cb $3f $0 $2
	m_StandardWarp $4 $cc $44 $0 $3
	m_StandardWarp $0 $cc $43 $0 $2
	m_StandardWarp $4 $c5 $42 $0 $3
	m_PointerWarp     $cf warpSource7c9b
	m_StandardWarp $0 $d4 $55 $0 $2
	m_StandardWarp $0 $d0 $88 $5 $2
	m_StandardWarp $0 $d1 $88 $5 $2
	m_StandardWarp $0 $d2 $88 $5 $2
	m_StandardWarp $0 $d3 $85 $5 $2
	m_StandardWarp $4 $d3 $57 $0 $3
	m_StandardWarp $4 $f3 $23 $1 $3
	m_StandardWarp $4 $f6 $24 $1 $3
	m_StandardWarp $4 $f9 $25 $1 $3
	m_StandardWarp $4 $f0 $8c $5 $3
	m_StandardWarp $01 $f0 $47 $4 $4
	m_StandardWarp $0 $f3 $a1 $5 $2
	m_PointerWarp     $f4 warpSource7cc3
	m_StandardWarp $0 $f6 $a5 $5 $2
	m_PointerWarp     $f7 warpSource7ccb
	m_StandardWarp $0 $f8 $61 $4 $2
	m_StandardWarp $0 $f9 $a9 $5 $2
	m_PointerWarp     $fa warpSource7cd3
	m_StandardWarp $0 $fb $aa $5 $2
	m_StandardWarp $01 $f1 $87 $5 $3
	m_StandardWarp $04 $f1 $26 $1 $3
	m_StandardWarp $0 $b6 $7b $0 $4
	m_PointerWarp  $7a group5Room7aWarpSources
	m_PointerWarp  $f2 group5Roomf2WarpSources
	m_StandardWarp $0 $f5 $07 $4 $4
	m_StandardWarp $04 $07 $36 $1 TRANSITION_SRC_FADEOUT
	m_PointerWarp  $c0 group5Roomc0WarpSources
	m_StandardWarp $0 $06 $39 $1 TRANSITION_SRC_FADEOUT
	m_PointerWarp  $5b group5Room5bWarpSources
	m_PointerWarp  $05 group5Room05WarpSources
	m_StandardWarp $04 $b2 $04 $0 TRANSITION_SRC_LEAVESCREEN
	m_PointerWarp  $b2 group5Roomb2WarpSources
	m_WarpListEndNoDefault
group5Roomb2WarpSources:
	m_PositionWarp $07 $0e $5 TRANSITION_SRC_FADEOUT
	m_WarpListEndNoDefault
group5Room8cWarpSources:
	m_PositionWarp $65 $04 $1 TRANSITION_SRC_FADEOUT
	m_PositionWarp $2b $09 $7 TRANSITION_SRC_FADEOUT
	m_WarpListEndNoDefault
group5Room05WarpSources:
	m_PositionWarp $07 $0a $5 TRANSITION_SRC_FADEOUT
	m_WarpListEndNoDefault
group5Room5bWarpSources:
	m_PositionWarp $07 $0b $5 TRANSITION_SRC_FADEOUT
	m_WarpListEndNoDefault
group5Roomc0WarpSources:
	m_PositionWarp $92 $18 $1 TRANSITION_SRC_FADEOUT
	m_PositionWarp $1c $35 $1 TRANSITION_SRC_FADEOUT
	m_WarpListEndNoDefault
group5Roomb3WarpSources:
	m_PositionWarp $03 $0d $5 TRANSITION_SRC_FADEOUT
	m_WarpListEndNoDefault
group5Roomc7WarpSources:
	m_PositionWarp $57 $09 $5 TRANSITION_SRC_FADEOUT
	m_WarpListEndNoDefault
group5Roomf2WarpSources:
	m_PositionWarp $38 $96 $5 $2
	m_PositionWarp $95 $2c $1 $2
	m_WarpListEndNoDefault
group5Room87WarpSources:
	m_PositionWarp $8d $9f $5 $2
	m_PositionWarp $81 $01 $7 TRANSITION_SRC_FADEOUT
	m_WarpListEndNoDefault
group5Room7aWarpSources:
	m_PositionWarp $1c $05 $7 $2
	m_PositionWarp $91 $08 $7 $2
	m_WarpListEndNoDefault

warpSource7c9b:
	m_PositionWarp $97 $56 $0 $2
	m_PositionWarp $16 $1d $1 $2
	m_WarpListEndWithDefault

warpSource7ca3:
	m_PositionWarp $23 $59 $5 $2
	m_PositionWarp $3d $5b $5 $2
	m_WarpListEndWithDefault

warpSource7cab:
	m_PositionWarp $23 $56 $5 $2
	m_PositionWarp $78 $2a $0 $2
	m_WarpListEndWithDefault

warpSource7cb3:
	m_PositionWarp $1c $77 $5 $2
	m_PositionWarp $9d $7c $5 $2
	m_WarpListEndWithDefault


warpSource7cc3:
	m_PositionWarp $27 $a0 $5 $2
	m_PositionWarp $87 $a3 $5 $2
	m_WarpListEndWithDefault

warpSource7ccb:
	m_PositionWarp $27 $a4 $5 $2
	m_PositionWarp $87 $a7 $5 $2
	m_WarpListEndWithDefault

warpSource7cd3:
	m_PositionWarp $27 $a8 $5 $2
	m_PositionWarp $87 $ab $5 $2
	m_WarpListEndWithDefault





warpSource7d5b:
	m_PositionWarp $35 $43 $5 $2
	m_PositionWarp $6d $44 $5 $2
	m_WarpListEndWithDefault

warpSource7d63:
	m_PositionWarp $35 $37 $5 $2
	m_PositionWarp $6d $38 $5 $2
	m_WarpListEndWithDefault

warpSource7d6b:
	m_PositionWarp $24 $63 $5 $2
	m_PositionWarp $74 $30 $0 $2
	m_WarpListEndWithDefault

warpSource7d73:
	m_PositionWarp $34 $6a $5 $2
	m_PositionWarp $48 $35 $0 $2
	m_WarpListEndWithDefault

warpSource7d7b:
	m_PositionWarp $34 $68 $5 $2
	m_PositionWarp $7a $6c $5 $2
	m_WarpListEndWithDefault

warpSource7d83:
	m_PositionWarp $22 $39 $0 $2
	m_PositionWarp $3b $6e $5 $2
	m_WarpListEndWithDefault


group6WarpSources:
	m_StandardWarp $1 $01 $08 $4 $3
	m_StandardWarp $1 $09 $09 $4 $3
	m_StandardWarp $1 $1d $0a $4 $3
	m_StandardWarp $2 $1e $0b $4 $3
	m_StandardWarp $1 $3a $12 $4 $3
	m_StandardWarp $2 $3b $0e $4 $3
	m_StandardWarp $1 $3c $14 $4 $3
	m_StandardWarp $2 $3d $10 $4 $3
	m_StandardWarp $1 $5c $22 $4 $3
	m_StandardWarp $2 $5d $23 $4 $3
	m_StandardWarp $1 $84 $27 $4 $3
	m_StandardWarp $1 $85 $24 $4 $3
	m_StandardWarp $2 $86 $29 $4 $3
	m_StandardWarp $2 $87 $26 $4 $3
	m_StandardWarp $1 $a8 $25 $4 $3
	m_StandardWarp $2 $a9 $28 $4 $3
	m_StandardWarp $0 $b6 $7b $0 $4
	m_StandardWarp $01 $43 $0f $4 TRANSITION_SRC_LEAVESCREEN
	m_WarpListEndNoDefault

group7WarpSources:
	m_StandardWarp $1 $5c $30 $5 $3
	m_StandardWarp $2 $5d $2e $5 $3
	m_StandardWarp $1 $60 $3a $5 $3
	m_StandardWarp $2 $62 $3c $5 $3
	m_StandardWarp $1 $e0 $49 $0 $3
	m_StandardWarp $2 $e1 $4a $0 $3
	m_StandardWarp $1 $e2 $1e $1 $3
	m_StandardWarp $02 $e3 $1f $1 $3
	m_StandardWarp $1 $e4 $0d $4 $3
	m_StandardWarp $1 $e6 $51 $4 $3
	m_StandardWarp $2 $e7 $12 $5 $3
	m_StandardWarp $1 $e8 $06 $0 $3
	m_StandardWarp $0 $b6 $7b $0 $4
	m_StandardWarp $01 $61 $2f $5 $3
	m_StandardWarp $02 $61 $3f $5 $3
	m_StandardWarp $02 $7e $0c $5 TRANSITION_SRC_LEAVESCREEN
	m_StandardWarp $01 $7f $01 $5 TRANSITION_SRC_LEAVESCREEN
	m_StandardWarp $01 $e9 $07 $0 TRANSITION_SRC_LEAVESCREEN
	m_WarpListEndNoDefault
