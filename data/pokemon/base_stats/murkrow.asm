	db MURKROW ; 198

	db  65,  95,  52,  91,  95,  52 ; Increase BST from 405 to 450
;	db 100, 125,  52,  71, 105,  52 Honchkrow
;	db  60,  85,  42,  91,  85,  42 Murkrow
	;   hp  atk  def  spd  sat  sdf

	db DARK, FLYING ; type
	db 30 ; catch rate
	db 107 ; base exp
	db NO_ITEM, NO_ITEM ; items
	db GENDER_F50 ; gender ratio
	db 100 ; unknown 1
	db 1; step cycles to hatch
	db 5 ; unknown 2
	INCBIN "gfx/pokemon/murkrow/front.dimensions"
	dw NULL, NULL ; unused (beta front/back pics)
	db GROWTH_MEDIUM_SLOW ; growth rate
	dn EGG_FLYING, EGG_FLYING ; egg groups

	; tm/hm learnset
	tmhm CURSE, TOXIC, PSYCH_UP, HIDDEN_POWER, SUNNY_DAY, SNORE, ICY_WIND, PROTECT, ENDURE, FRUSTRATION, RETURN, SHADOW_BALL, MUD_SLAP, DOUBLE_TEAM, SWAGGER, SLEEP_TALK, SWIFT, DREAM_EATER, DETECT, REST, ATTRACT, THIEF, STEEL_WING, NIGHTMARE, FLY
	; end
