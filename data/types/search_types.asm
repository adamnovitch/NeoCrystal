PokedexTypeSearchConversionTable:
; entries correspond with PokedexTypeSearchStrings (see data/types/search_strings.asm)
	table_width 1, PokedexTypeSearchConversionTable
	db NORMAL
	db FIRE
	db WATER
	db GRASS
	db ELECTRIC
	db ICE
	db FIGHTING
	db POISON
	db GROUND
	db FLYING
	db PSYCHIC_TYPE
	db BUG
	db ROCK
	db GHOST
	db DRAGON
	db DARK
	db STEEL
	db FAIRY
	db UNKNOWN_TYPE
	assert_table_length NUM_TYPES

;PokedexMoveCategoryTable:
;; entries correspond with PokedexMoveCategorySearchStrings (see data/types/search_strings.asm)
;	table_width 1, PokedexMoveCategoryTable
;	db PHYSICAL
;	db SPECIAL
;	db STATUS
;	db MAX_STAT
;	assert_table_length NUM_MOVE_CATEGORIES
