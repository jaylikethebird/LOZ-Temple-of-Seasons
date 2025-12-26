; List of tile indices which behave as magnet-able tiles.
;
; Can only have one tile per group number.
magnetTilesTable:
	.db $3f ; Group 0 (overworld)
	.db $ba ; Group 1 (subrosia)
	.db $3f ; Group 2 (maku tree)
	.db $f9 ; Group 3 (indoors)
	.db $f9 ; Group 4 (dungeons)
	.db $f9 ; Group 5 (dungeons)
	.db $f9 ; Group 6 (dungeons, sidescroll)
	.db $f9 ; Group 7 (dungeons, sidescroll)
