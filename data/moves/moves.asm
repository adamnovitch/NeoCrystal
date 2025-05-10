; Characteristics of each move.

MACRO move
	db \1 ; animation
	db \2 ; effect
	db \3 ; power
	db \4 ; type
	db \5 percent ; accuracy
	db \6 ; pp
	db \7 percent ; effect chance
	db \8 ; category
ENDM

; Body
; ├─ Claw
; ├─ Limb
; │  ├─ Fist
; │  │  └─ Strike
; │  ├─ Kick
; │  ├─ Tail
; │  └─ Tendril
; ├─ Fang
; ├─ Beak
; ├─ Wings
; ├─ Horn
; │  └─ Needle
; └─ Shell
; +5 moves
Moves:
; entries correspond to move ids (see constants/move_constants.asm)
;	move MOVE_NAME   , EFFECT_TYPE              , BP, TYPE        , ACC, PP,   %, CATEGORY ; Path    ; Notes
	table_width MOVE_LENGTH, Moves
; ---------------------------------------------------------------------------------------------------------------------
; NORMAL
; Starting Moves
	move TACKLE,       EFFECT_NORMAL_HIT,         40, NORMAL,       100, 35,   0, PHYSICAL ; Body    ;
	move SCRATCH,      EFFECT_NORMAL_HIT,         40, NORMAL,       100, 35,   0, PHYSICAL ; Claw    ;
	move POUND,        EFFECT_NORMAL_HIT,         40, NORMAL,       100, 35,   0, PHYSICAL ; Limb    ;
;
	move RAGE,         EFFECT_RAGE,               20, NORMAL,       100, 20,   0, PHYSICAL ; Body    ;
	move QUICK_ATTACK, EFFECT_PRIORITY_HIT,       40, NORMAL,       100, 30,   0, PHYSICAL ; Body    ;
	move SNORE,        EFFECT_SNORE,              50, NORMAL,       100, 15,  30, SPECIAL  ; Body    ;
	move STRUGGLE,     EFFECT_RECOIL_HIT,         50, NORMAL,       100,  1,   0, PHYSICAL ; Body    ;
	move RAPID_SPIN,   EFFECT_RAPID_SPIN,         50, NORMAL,       100, 20,   0, PHYSICAL ; Body    ;
	move STOMP,        EFFECT_STOMP,              65, NORMAL,       100, 20,  30, PHYSICAL ; Body    ;
	move HEADBUTT,     EFFECT_FLINCH_HIT,         70, NORMAL,       100, 15,  30, PHYSICAL ; Body    ;
	move STRENGTH,     EFFECT_NORMAL_HIT,         80, NORMAL,       100, 15,   0, PHYSICAL ; Body    ; HM
	move EXTREMESPEED, EFFECT_PRIORITY_HIT_2,     80, NORMAL,       100,  5,   0, PHYSICAL ; Body    ;
	move BODY_SLAM,    EFFECT_PARALYZE_HIT,       85, NORMAL,       100, 15,  30, PHYSICAL ; Body    ;
	move TAKE_DOWN,    EFFECT_RECOIL_HIT,         90, NORMAL,        90, 20,   0, PHYSICAL ; Body    ;
	move DOUBLE_EDGE,  EFFECT_RECOIL_HIT,        120, NORMAL,       100, 15,   0, PHYSICAL ; Body    ;
	move SKULL_BASH,   EFFECT_SKULL_BASH,        130, NORMAL,       100, 10,   0, PHYSICAL ; Body    ;
	move THRASH,       EFFECT_RAMPAGE,           120, NORMAL,       100, 10,   0, PHYSICAL ; Body    ;
	move GIGA_IMPACT,  EFFECT_HYPER_BEAM,        150, NORMAL,        90,  5,   0, PHYSICAL ; Body    ;
	move HYPER_BEAM,   EFFECT_HYPER_BEAM,        150, NORMAL,        90,  5,   0, SPECIAL  ; Body    ;
	move SLEEP_TALK,   EFFECT_SLEEP_TALK,          0, NORMAL,       100, 10,   0, STATUS   ; Body    ;
	move FLAIL,        EFFECT_REVERSAL,            1, NORMAL,       100, 15,   0, PHYSICAL ; Body    ;
	move RETURN,       EFFECT_RETURN,              1, NORMAL,       100, 20,   0, PHYSICAL ; Body    ;
	move FURY_SWIPES,  EFFECT_MULTI_HIT,          22, NORMAL,        95, 15,   0, PHYSICAL ; Claw    ; Middle  BP, Middle  ACC
	move FALSE_SWIPE,  EFFECT_FALSE_SWIPE,        40, NORMAL,       100, 40,   0, PHYSICAL ; Claw    ;
	move CUT,          EFFECT_NORMAL_HIT,         55, NORMAL,       100, 30,   0, PHYSICAL ; Claw    ; HM, Hi-Crit
	move SLASH,        EFFECT_NORMAL_HIT,         70, NORMAL,       100, 20,   0, PHYSICAL ; Claw    ; Hi-Crit
	move DOUBLESLAP,   EFFECT_MULTI_HIT,          20, NORMAL,       100, 15,   0, PHYSICAL ; Limb    ; Lowest  BP, Highest ACC
	move SLAM,         EFFECT_DEFENSE_DOWN_HIT,   80, NORMAL,        90, 20,  20, PHYSICAL ; Limb    ;
	move DIZZY_PUNCH,  EFFECT_CONFUSE_HIT,        70, NORMAL,       100, 10,  20, PHYSICAL ; Fist    ;
	move HYPER_FANG,   EFFECT_FLINCH_HIT,         80, NORMAL,        90, 15,  10, PHYSICAL ; Fang    ;
	move SUPER_FANG,   EFFECT_SUPER_FANG,          1, NORMAL,        90, 10,   0, PHYSICAL ; Fang    ;
	move BIND,         EFFECT_TRAP_TARGET,        35, NORMAL,        90, 20,   0, PHYSICAL ; Tail    ; 
	move FURY_ATTACK,  EFFECT_MULTI_HIT,          24, NORMAL,        90, 15,   0, PHYSICAL ; Horn    ; Highest BP, Lowest  ACC
	move HORN_ATTACK,  EFFECT_NORMAL_HIT,         65, NORMAL,       100, 25,   0, PHYSICAL ; Horn    ;
	move CONSTRICT,    EFFECT_SPEED_DOWN_HIT,     50, NORMAL,       100, 15,  50, PHYSICAL ; Tendril ;
	move PAY_DAY,      EFFECT_PAY_DAY,            60, NORMAL,       100, 20,   0, PHYSICAL ;         ; +20 BP (Technician)
	move SONICBOOM,    EFFECT_FLINCH_HIT,         60, NORMAL,       100, 15,  20, SPECIAL  ;         ;
	move SWIFT,        EFFECT_ALWAYS_HIT,         60, NORMAL,       100, 20,   0, SPECIAL  ;         ;
	move TRI_ATTACK,   EFFECT_TRI_ATTACK,         80, NORMAL,       100, 10,  20, SPECIAL  ;         ;
; Buff
	move SHARPEN,      EFFECT_ATTACK_UP,           0, NORMAL,       100, 30,   0, STATUS   ; Claw    ; 1x +ATTACK
	move BELLY_DRUM,   EFFECT_BELLY_DRUM,          0, NORMAL,       100, 10,   0, STATUS   ;         ;
	move DEFENSE_CURL, EFFECT_DEFENSE_CURL,        0, NORMAL,       100, 40,   0, STATUS   ; Body    ; 1x +DEFENSE
	move HARDEN,       EFFECT_DEFENSE_UP,          0, NORMAL,       100, 30,   0, STATUS   ; Shell   ; 1x +DEFENSE
	move SWORDS_DANCE, EFFECT_ATTACK_UP_2,         0, NORMAL,       100, 30,   0, STATUS   ;         ; 2x +ATTACK
	move DOUBLE_TEAM,  EFFECT_EVASION_UP,          0, NORMAL,       100, 15,   0, STATUS   ;         ; 1x +EVASION
	move MINIMIZE,     EFFECT_EVASION_UP,          0, NORMAL,       100, 10,   0, STATUS   ;         ; 1x +EVASION
	move FORESIGHT,    EFFECT_FORESIGHT,           0, NORMAL,       100, 40,   0, STATUS   ;         ;
	move LOCK_ON,      EFFECT_LOCK_ON,             0, NORMAL,       100,  5,   0, STATUS   ;         ;
	move MIND_READER,  EFFECT_LOCK_ON,             0, NORMAL,       100,  5,   0, STATUS   ;         ;
	move FOCUS_ENERGY, EFFECT_FOCUS_ENERGY,        0, NORMAL,       100, 30,   0, STATUS   ;         ;
	move PSYCH_UP,     EFFECT_PSYCH_UP,            0, NORMAL,       100, 10,   0, STATUS   ;         ;
	move RECOVER,      EFFECT_HEAL,                0, NORMAL,       100, 10,   0, STATUS   ;         ;
	move MORNING_SUN,  EFFECT_MORNING_SUN,         0, NORMAL,       100,  5,   0, STATUS   ;         ;
	move HEAL_BELL,    EFFECT_HEAL_BELL,           0, NORMAL,       100,  5,   0, STATUS   ;         ;
	move SUBSTITUTE,   EFFECT_SUBSTITUTE,          0, NORMAL,       100, 10,   0, STATUS   ;         ;
	move PROTECT,      EFFECT_PROTECT,             0, NORMAL,       100, 10,   0, STATUS   ;         ;
	move SAFEGUARD,    EFFECT_SAFEGUARD,           0, NORMAL,       100, 25,   0, STATUS   ;         ;
	move ENDURE,       EFFECT_ENDURE,              0, NORMAL,       100, 10,   0, STATUS   ;         ;
; Debuff
	move GROWL,        EFFECT_ATTACK_DOWN,         0, NORMAL,       100, 40,   0, STATUS   ;         ; 1x -ATTACK
	move TAIL_WHIP,    EFFECT_DEFENSE_DOWN,        0, NORMAL,       100, 30,   0, STATUS   ; Tail    ; 1x -DEFENSE
	move LEER,         EFFECT_DEFENSE_DOWN,        0, NORMAL,       100, 30,   0, STATUS   ;         ; 1x -DEFENSE
	move SCREECH,      EFFECT_DEFENSE_DOWN_2,      0, NORMAL,        85, 40,   0, STATUS   ;         ; 2x -DEFENSE
	move SMOKESCREEN,  EFFECT_ACCURACY_DOWN,       0, NORMAL,       100, 20,   0, STATUS   ;         ; 1x -ACCURACY
	move FLASH,        EFFECT_ACCURACY_DOWN,       0, NORMAL,       100, 20,   0, STATUS   ;         ; 1x -ACCURACY, HM
	move SWEET_SCENT,  EFFECT_EVASION_DOWN,        0, NORMAL,       100, 20,   0, STATUS   ;         ; 1x -EVASION
	move SUPERSONIC,   EFFECT_CONFUSE,             0, NORMAL,        65, 20,   0, STATUS   ;         ; +10 ACC
	move SWAGGER,      EFFECT_SWAGGER,             0, NORMAL,        85, 15, 100, STATUS   ;         ;
	move SING,         EFFECT_SLEEP,               0, NORMAL,        60, 15,   0, STATUS   ;         ;
	move LOVELY_KISS,  EFFECT_SLEEP,               0, NORMAL,        75, 10,   0, STATUS   ;         ;
	move GLARE,        EFFECT_PARALYZE,            0, NORMAL,       100, 10,   0, STATUS   ;         ;
	move PERISH_SONG,  EFFECT_PERISH_SONG,         0, NORMAL,       100,  5,   0, STATUS   ;         ;
	move MEAN_LOOK,    EFFECT_MEAN_LOOK,           0, NORMAL,       100,  5,   0, STATUS   ;         ;
	move ATTRACT,      EFFECT_ATTRACT,             0, NORMAL,       100, 15,   0, STATUS   ;         ;
	move ENCORE,       EFFECT_ENCORE,              0, NORMAL,       100,  5,   0, STATUS   ;         ;
; Other
	move ROAR,         EFFECT_FORCE_SWITCH,        0, NORMAL,       100, 20,   0, STATUS   ; Fang    ;
	move MIMIC,        EFFECT_MIMIC,               0, NORMAL,       100, 10,   0, STATUS   ;         ;
	move BATON_PASS,   EFFECT_BATON_PASS,          0, NORMAL,       100, 40,   0, STATUS   ;         ;
	move PAIN_SPLIT,   EFFECT_PAIN_SPLIT,          0, NORMAL,       100, 20,   0, STATUS   ;         ; More
; Signature
	move TRANSFORM,    EFFECT_TRANSFORM,           0, NORMAL,       100, 10,   0, STATUS   ;         ; Ditto/Mew
	move SKETCH,       EFFECT_SKETCH,              0, NORMAL,       100,  1,   0, STATUS   ;         ; Smeargle
	move PRESENT,      EFFECT_PRESENT,             1, NORMAL,        90, 15,   0, PHYSICAL ;         ; Delibird
; ---------------------------------------------------------------------------------------------------------------------
; FIGHTING
	move ROCK_SMASH,   EFFECT_DEFENSE_DOWN_HIT,   50, FIGHTING,     100, 15,  50, PHYSICAL ; Body    ; Field
	move REVERSAL,     EFFECT_REVERSAL,            1, FIGHTING,     100, 15,   0, PHYSICAL ; Body    ;
	move MACH_PUNCH,   EFFECT_PRIORITY_HIT,       40, FIGHTING,     100, 30,   0, PHYSICAL ; Fist    ;
	move DYNAMICPUNCH, EFFECT_CONFUSE_HIT,       100, FIGHTING,      50,  5, 100, PHYSICAL ; Fist    ;
	move KARATE_CHOP,  EFFECT_NORMAL_HIT,         50, FIGHTING,     100, 25,   0, PHYSICAL ; Chop    ;
	move CROSS_CHOP,   EFFECT_NORMAL_HIT,        100, FIGHTING,      80,  5,   0, PHYSICAL ; Chop    ; Hi-Crit
	move TRIPLE_KICK,  EFFECT_TRIPLE_KICK,        15, FIGHTING,     100, 15,   0, PHYSICAL ; Kick    ;
	move DOUBLE_KICK,  EFFECT_DOUBLE_HIT,         30, FIGHTING,     100, 30,   0, PHYSICAL ; Kick    ;
	move LOW_KICK,     EFFECT_FLINCH_HIT,         50, FIGHTING,     100, 20,  30, PHYSICAL ; Kick    ;
	move JUMP_KICK,    EFFECT_JUMP_KICK,         100, FIGHTING,      95, 10,   0, PHYSICAL ; Kick    ;
	move HI_JUMP_KICK, EFFECT_JUMP_KICK,         130, FIGHTING,      90, 10,   0, PHYSICAL ; Kick    ;
	move VITAL_THROW,  EFFECT_ALWAYS_HIT,         70, FIGHTING,     100, 10,   0, PHYSICAL ; Throw   ;
	move SUBMISSION,   EFFECT_RECOIL_HIT,         90, FIGHTING,      90, 20,   0, PHYSICAL ; Throw   ; More
	move SEISMIC_TOSS, EFFECT_LEVEL_DAMAGE,        1, FIGHTING,     100, 20,   0, PHYSICAL ; Throw   ;
;	move AURA_SPHERE,  EFFECT_ALWAYS_HIT,         80, FIGHTING,     100, 15,   0, SPECIAL  ; Chi     ;
;	move FOCUS_BLAST,  EFFECT_NORMAL_HIT,        110, FIGHTING,      80,  5,   0, SPECIAL  ; Chi     ;
; Buff
;	move BULK_UP,      EFFECT_BULK_UP,             0, FIGHTING,     100, 20,   0, STATUS   ;         ; 1x +ATTACK +DEFENSE
	move DETECT,       EFFECT_PROTECT,             0, FIGHTING,     100,  5,   0, STATUS   ;         ;
; Debuff
; Other
	move COUNTER,      EFFECT_COUNTER,             1, FIGHTING,     100, 20,   0, PHYSICAL ;         ; replace?
; Signature
; ---------------------------------------------------------------------------------------------------------------------
; FLYING
	move FLY,          EFFECT_FLY,                90, FLYING,        95, 15,   0, PHYSICAL ; Body    ; HM
	move PECK,         EFFECT_NORMAL_HIT,         35, FLYING,       100, 35,   0, PHYSICAL ; Beak    ;
	move DRILL_PECK,   EFFECT_NORMAL_HIT,         80, FLYING,       100, 20,   0, PHYSICAL ; Beak    ; Hi-Crit
	move SKY_ATTACK,   EFFECT_RECOIL_HIT,        120, FLYING,       100, 15,   0, PHYSICAL ; Beak    ; ok
	move GUST,         EFFECT_GUST,               40, FLYING,       100, 35,   0, SPECIAL  ; Wings   ;
	move AIR_CUTTER,   EFFECT_NORMAL_HIT,         55, FLYING,       100, 25,   0, SPECIAL  ; Wings   ; Hi-Crit
	move WING_ATTACK,  EFFECT_NORMAL_HIT,         60, FLYING,       100, 35,   0, PHYSICAL ; Wings   ;
	move RAZOR_WIND,   EFFECT_FLINCH_HIT,         75, FLYING,        95, 15,  30, SPECIAL  ; Wings   ;
	move HURRICANE,    EFFECT_CONFUSE_HIT,       110, FLYING,        70,  5,  20, SPECIAL  ; Wings   ;
; Buff
; Debuff
; Other
	move WHIRLWIND,    EFFECT_FORCE_SWITCH,        0, FLYING,       100, 20,   0, STATUS   ; Wings   ;
	move MIRROR_MOVE,  EFFECT_MIRROR_MOVE,         0, FLYING,       100, 20,   0, STATUS   ;         ; replace
; Signature
	move AEROBLAST,    EFFECT_NORMAL_HIT,        100, FLYING,        95,  5,   0, SPECIAL  ;         ; Lugia
; ---------------------------------------------------------------------------------------------------------------------
; POISON
	move POISON_STING, EFFECT_POISON_HIT,         30, POISON,       100, 20,  30, PHYSICAL ; Venom   ;
	move POISON_FANG,  EFFECT_TOXIC_HIT,          50, POISON,       100, 20,  30, PHYSICAL ; Venom   ; Hi-Crit
	move ACID,         EFFECT_DEFENSE_DOWN_HIT,   40, POISON,       100, 30,  10, SPECIAL  ; Acid    ;
	move SMOG,         EFFECT_POISON_HIT,         50, POISON,       100, 20,  30, SPECIAL  ; Gas     ; +30 BP, +30 ACC, -20%
	move SLUDGE,       EFFECT_POISON_HIT,         65, POISON,       100, 20,  30, SPECIAL  ; Sludge  ;
	move SLUDGE_BOMB,  EFFECT_POISON_HIT,         90, POISON,       100, 10,  30, SPECIAL  ; Sludge  ;
; Buff
	move ACID_ARMOR,   EFFECT_DEFENSE_UP_2,        0, POISON,       100, 20,   0, STATUS   ;         ; replace
; Debuff
	move POISONPOWDER, EFFECT_POISON,              0, POISON,        75, 20,   0, STATUS   ;         ;
	move POISON_GAS,   EFFECT_POISON,              0, POISON,        90, 15,   0, STATUS   ; Gas     ;
	move TOXIC,        EFFECT_TOXIC,               0, POISON,        90, 10,   0, STATUS   ;         ;
; Other
; Signature
; ---------------------------------------------------------------------------------------------------------------------
; GROUND
	move MUD_SLAP,     EFFECT_ACCURACY_DOWN_HIT,  20, GROUND,       100, 10, 100, SPECIAL  ; Mud     ;
	move BONEMERANG,   EFFECT_DOUBLE_HIT,         50, GROUND,        90, 10,   0, PHYSICAL ;         ; replace
	move BULLDOZE,     EFFECT_SPEED_DOWN_HIT,     60, GROUND,       100, 20,  10, PHYSICAL ; Quake   ;
	move BONE_CLUB,    EFFECT_FLINCH_HIT,         65, GROUND,        85, 20,  10, PHYSICAL ;         ; replace
	move DIG,          EFFECT_FLY,                80, GROUND,       100, 10,   0, PHYSICAL ;         ;
;	move EARTH_POWER,  EFFECT_NORMAL_HIT,         90, GROUND,       100, 10,   0, SPECIAL  ;         ;
	move EARTHQUAKE,   EFFECT_EARTHQUAKE,        100, GROUND,       100, 10,   0, PHYSICAL ;         ;
	move MAGNITUDE,    EFFECT_MAGNITUDE,           1, GROUND,       100, 30,   0, PHYSICAL ; Quake   ;
	move FISSURE,      EFFECT_OHKO,                1, GROUND,        30,  5,   0, PHYSICAL ;         ;
; Buff
; Debuff
	move SAND_ATTACK,  EFFECT_ACCURACY_DOWN,       0, GROUND,       100, 15,   0, STATUS   ;         ;
	move SPIKES,       EFFECT_SPIKES,              0, GROUND,       100, 20,   0, STATUS   ;         ; ok
; Other
; Signature
; ---------------------------------------------------------------------------------------------------------------------
; ROCK
	move ROLLOUT,      EFFECT_ROLLOUT,            30, ROCK,          90, 20,   0, PHYSICAL ; Body    ;
	move ANCIENTPOWER, EFFECT_ALL_UP_HIT,         60, ROCK,         100,  5,  10, SPECIAL  ; Body    ;
	move SPIKE_CANNON, EFFECT_MULTI_HIT,          20, ROCK,         100, 15,   0, PHYSICAL ; Horn    ;
	move ROCK_THROW,   EFFECT_NORMAL_HIT,         50, ROCK,         100, 20,   0, PHYSICAL ; Rock    ; +10 ACC
	move ROCK_SLIDE,   EFFECT_FLINCH_HIT,         75, ROCK,          90, 10,  30, PHYSICAL ; Rock    ;
; Buff
	move SANDSTORM,    EFFECT_SANDSTORM,           0, ROCK,         100, 10,   0, STATUS   ;         ;
; Debuff
; Other
; Signature
; ---------------------------------------------------------------------------------------------------------------------
; BUG
	move BUG_BUZZ,     EFFECT_SP_DEF_DOWN_HIT,    90, BUG,          100, 10,  10, SPECIAL  ; Body    ;
	move FURY_CUTTER,  EFFECT_FURY_CUTTER,        20, BUG,           95, 20,   0, PHYSICAL ; Claw    ; +10 BP
	move X_SCISSOR,    EFFECT_NORMAL_HIT,         80, BUG,          100, 15,   0, PHYSICAL ; Claw    ;
	move PIN_MISSILE,  EFFECT_MULTI_HIT,          20, BUG,          100, 15,   0, PHYSICAL ; Horn    ;
	move TWINEEDLE,    EFFECT_POISON_MULTI_HIT,   35, BUG,          100, 20,  25, PHYSICAL ; Horn    ;
	move MEGAHORN,     EFFECT_NORMAL_HIT,        120, BUG,           85, 10,   0, PHYSICAL ; Horn    ;
	move LEECH_LIFE,   EFFECT_LEECH_HIT,          55, BUG,          100, 10,   0, PHYSICAL ; Fang    ;
;	move SIGNAL_BEAM,  EFFECT_CONFUSE_HIT,        70, BUG,          100, 70,  15, SPECIAL  ;         ;
; Buff
; Debuff
	move STRING_SHOT,  EFFECT_SPEED_DOWN,          0, BUG,           95, 40,   0, STATUS   ;         ;
	move SPIDER_WEB,   EFFECT_MEAN_LOOK,           0, BUG,          100, 10,   0, STATUS   ;         ; More
; Signature
; ---------------------------------------------------------------------------------------------------------------------
; GHOST
	move LICK,         EFFECT_PARALYZE_HIT,       40, GHOST,        100, 25,  25, PHYSICAL ;         ;
	move NIGHT_SHADE,  EFFECT_NORMAL_HIT,         55, GHOST,        100, 15,   0, SPECIAL  ;         ; Hi-Crit
	move SHADOW_BALL,  EFFECT_SP_DEF_DOWN_HIT,    80, GHOST,        100, 15,  20, SPECIAL  ;         ;
; Buff
; Debuff
	move SPITE,        EFFECT_SPITE,               0, GHOST,        100, 10,   0, STATUS   ;         ;
	move CONFUSE_RAY,  EFFECT_CONFUSE,             0, GHOST,        100, 10,   0, STATUS   ;         ;
	move DESTINY_BOND, EFFECT_DESTINY_BOND,        0, GHOST,        100,  5,   0, STATUS   ;         ;
	move NIGHTMARE,    EFFECT_NIGHTMARE,           0, GHOST,        100, 15,   0, STATUS   ;         ; replace
; Other
; Signature
; ---------------------------------------------------------------------------------------------------------------------
; STEEL
	move METAL_CLAW,   EFFECT_ATTACK_UP_HIT,      55, STEEL,        100, 25,  10, PHYSICAL ; Claw    ;
	move STEEL_WING,   EFFECT_DEFENSE_UP_HIT,     70, STEEL,        100, 20,  10, PHYSICAL ; Wing    ;
;	move FLASH_CANNON, EFFECT_SP_DEF_DOWN_HIT,    80, STEEL,        100, 10,  10, SPECIAL  ;         ;
;	move IRON_HEAD,    EFFECT_FLINCH_HIT,         80, STEEL,        100, 15,  10, PHYSICAL ;         ;
	move IRON_TAIL,    EFFECT_DEFENSE_DOWN_HIT,  100, STEEL,         90, 15,  30, PHYSICAL ; Tail    ;
; Buff
	move IRON_DEFENSE, EFFECT_DEFENSE_UP_2,        0, STEEL,        100, 15,   0, STATUS   ; Shell   ; x2 +DEFENSE
; Debuff
; Other
; Signature
; ---------------------------------------------------------------------------------------------------------------------
; FIRE
	move FIRE_SPIN,    EFFECT_TRAP_TARGET,        35, FIRE,          90, 20,   0, SPECIAL  ;         ;
	move EMBER,        EFFECT_BURN_HIT,           40, FIRE,         100, 25,  10, SPECIAL  ;         ;
;	move FLAME_CHARGE, EFFECT_SPEED_UP_HIT,       50, FIRE,         100, 20,   0, PHYSICAL ; Body    ;
	move FLAME_WHEEL,  EFFECT_FLAME_WHEEL,        60, FIRE,         100, 25,  10, PHYSICAL ; Wheel   ;
	move FIRE_PUNCH,   EFFECT_BURN_HIT,           75, FIRE,         100, 15,  10, PHYSICAL ; Fist    ;
	move FLAMETHROWER, EFFECT_BURN_HIT,           90, FIRE,         100, 15,  10, SPECIAL  ;         ;
;	move FLARE_BLITZ, ,EFFECT_,                   90, FIRE,         100, 15,   0, PHYSICAL ; Body    ;
	move FIRE_BLAST,   EFFECT_BURN_HIT,          110, FIRE,          85,  5,  10, SPECIAL  ;         ;
; Buff
	move SUNNY_DAY,    EFFECT_SUNNY_DAY,           0, FIRE,          90,  5,   0, STATUS   ;         ;
; Debuff
; Other
; Signature
	move ERUPTION,     EFFECT_BURN_HIT,          100, FIRE,         100,  5,  50, SPECIAL  ;         ; Cyndaquil
	move SACRED_FIRE,  EFFECT_SACRED_FIRE,       100, FIRE,          95,  5,  50, PHYSICAL ; Wheel   ; Ho-Oh
; ---------------------------------------------------------------------------------------------------------------------
; WATER
	move CLAMP,        EFFECT_TRAP_TARGET,        35, WATER,         90, 20,   0, PHYSICAL ;         ;
	move WHIRLPOOL,    EFFECT_TRAP_TARGET,        35, WATER,         90, 20,   0, SPECIAL  ;         ; HM
	move BUBBLE,       EFFECT_SPEED_DOWN_HIT,     40, WATER,        100, 30,  10, SPECIAL  ; Bubble  ;
	move WATER_GUN,    EFFECT_NORMAL_HIT,         40, WATER,        100, 25,   0, SPECIAL  ;         ;
	move BUBBLEBEAM,   EFFECT_SPEED_DOWN_HIT,     65, WATER,        100, 20,  10, SPECIAL  ; Bubble  ;
;	move WATER_PULSE,  EFFECT_CONFUSE_HIT,        60, WATER,        100, 20,  10, SPECIAL  ;         ;
	move OCTAZOOKA,    EFFECT_ACCURACY_DOWN_HIT,  65, WATER,        100, 10,  50, SPECIAL  ;         ; More should learn
	move SURF,         EFFECT_NORMAL_HIT,         90, WATER,        100, 15,   0, SPECIAL  ;         ; HM
	move WATERFALL,    EFFECT_FLINCH_HIT,         80, WATER,        100, 15,   0, PHYSICAL ;         ;
	move CRABHAMMER,   EFFECT_NORMAL_HIT,        100, WATER,         95, 10,   0, PHYSICAL ;         ; +10 ACC
	move HYDRO_PUMP,   EFFECT_NORMAL_HIT,        110, WATER,         80,  5,   0, SPECIAL  ;         ;
; Buff
	move RAIN_DANCE,   EFFECT_RAIN_DANCE,          0, WATER,         90,  5,   0, STATUS   ;         ;
	move WITHDRAW,     EFFECT_DEF_UP2_SPE_DN,      0, WATER,        100, 20,   0, STATUS   ;         ; 2x +DEFENSE 1x -SPEED
; Debuff
; Other
; Signature
	move CROC_CHOMP,   EFFECT_TRAP_TARGET,       100, WATER,        100,  5,   0, PHYSICAL ;         ; Totodile
; ---------------------------------------------------------------------------------------------------------------------
; GRASS
	move BULLET_SEED,  EFFECT_MULTI_HIT,          20, GRASS,        100, 15,   0, PHYSICAL ; Plant   ;
	move VINE_WHIP,    EFFECT_NORMAL_HIT,         45, GRASS,        100, 25,   0, PHYSICAL ; Plant   ; +15 BP
	move RAZOR_LEAF,   EFFECT_NORMAL_HIT,         55, GRASS,         95, 25,   0, PHYSICAL ; Plant   ; Hi-Crit
	move PETAL_DANCE,  EFFECT_RAMPAGE,            90, GRASS,        100, 10,   0, PHYSICAL ; Plant   ;
	move ABSORB,       EFFECT_LEECH_HIT,          35, GRASS,        100, 25,   0, SPECIAL  ; Drain   ;
	move MEGA_DRAIN,   EFFECT_LEECH_HIT,          55, GRASS,        100, 15,   0, SPECIAL  ; Drain   ;
	move GIGA_DRAIN,   EFFECT_LEECH_HIT,          75, GRASS,        100,  5,   0, SPECIAL  ; Drain   ;
;	move SEED_BOMB,    EFFECT_NORMAL_HIT,         80, GRASS,        100, 10,   0, PHYSICAL ;         ;
;	move ENERGY_BALL,  EFFECT_SP_DEF_DOWN_HIT,    80, GRASS,        100, 10,  10, SPECIAL  ;         ;
	move SOLARBEAM,    EFFECT_SOLARBEAM,         120, GRASS,        100, 10,   0, SPECIAL  ;         ;
; Buff
	move GROWTH,       EFFECT_SP_ATK_UP,           0, GRASS,        100, 20,   0, STATUS   ;         ; 1x +SP_ATTACK
	move SYNTHESIS,    EFFECT_SYNTHESIS,           0, GRASS,        100,  5,   0, STATUS   ;         ;
; Debuff
	move STUN_SPORE,   EFFECT_PARALYZE,            0, GRASS,         75, 30,   0, STATUS   ;         ;
	move SLEEP_POWDER, EFFECT_SLEEP,               0, GRASS,         75, 15,   0, STATUS   ;         ;
	move SPORE,        EFFECT_SLEEP,               0, GRASS,         90, 15,   0, STATUS   ;         ;
	move COTTON_SPORE, EFFECT_SPEED_DOWN_2,        0, GRASS,        100, 40,   0, STATUS   ;         ; 2x -SPEED
	move LEECH_SEED,   EFFECT_LEECH_SEED,          0, GRASS,         90, 10,   0, STATUS   ;         ;
; Other
; Signature
	move PRIMAL_PLANT, EFFECT_PRIMAL_PLANT,      100, GRASS,        100,  5, 100, MAX_STAT ;         ; Chikorita
; ---------------------------------------------------------------------------------------------------------------------
; ELECTRIC
	move THUNDERSHOCK, EFFECT_PARALYZE_HIT,       40, ELECTRIC,     100, 30,  10, SPECIAL  ;         ;
;	move SHOCK_WAVE,   EFFECT_ALWAYS_HIT,         60, ELECTRIC,     100, 20,   0, SPECIAL  ;         ;
	move SPARK,        EFFECT_PARALYZE_HIT,       65, ELECTRIC,     100, 20,  30, PHYSICAL ; Body    ;
	move THUNDERPUNCH, EFFECT_PARALYZE_HIT,       75, ELECTRIC,     100, 15,  10, PHYSICAL ; Fist    ;
	move THUNDERBOLT,  EFFECT_PARALYZE_HIT,       90, ELECTRIC,     100, 15,  10, SPECIAL  ;         ;
	move THUNDER,      EFFECT_THUNDER,           110, ELECTRIC,      70, 10,  30, SPECIAL  ;         ;
	move ZAP_CANNON,   EFFECT_PARALYZE_HIT,      120, ELECTRIC,      50,  5, 100, SPECIAL  ;         ;
; Buff
	move CHARGE,       EFFECT_SP_ATK_UP_2,         0, ELECTRIC,     100, 20,   0, STATUS   ;         ; 2x +SP_ATTACK
; Debuff
	move THUNDER_WAVE, EFFECT_PARALYZE,            0, ELECTRIC,      90, 20,   0, STATUS   ;         ;
; Other
; Signature
; ---------------------------------------------------------------------------------------------------------------------
; PSYCHIC
; Note: need Physical Moves, with lower BP?
	move CONFUSION,    EFFECT_CONFUSE_HIT,        50, PSYCHIC_TYPE, 100, 25,  10, SPECIAL  ;         ;
	move PSYBEAM,      EFFECT_CONFUSE_HIT,        65, PSYCHIC_TYPE, 100, 20,  10, SPECIAL  ;         ;
	move PSYWAVE,      EFFECT_NORMAL_HIT,         70, PSYCHIC_TYPE, 100, 15,   0, SPECIAL  ;         ; Hi-Crit
	move PSYCHIC_M,    EFFECT_SP_DEF_DOWN_HIT,    90, PSYCHIC_TYPE, 100, 10,  10, SPECIAL  ;         ;
	move DREAM_EATER,  EFFECT_DREAM_EATER,       100, PSYCHIC_TYPE, 100, 15,   0, SPECIAL  ;         ; replace
	move FUTURE_SIGHT, EFFECT_FUTURE_SIGHT,      120, PSYCHIC_TYPE, 100, 10,   0, SPECIAL  ;         ;
	move MIRROR_COAT,  EFFECT_MIRROR_COAT,         1, PSYCHIC_TYPE, 100, 20,   0, SPECIAL  ;         ; replace
; Buff
	move MEDITATE,     EFFECT_ATK_UP_DEF_UP,       0, PSYCHIC_TYPE, 100, 20,   0, STATUS   ;         ; 1x +ATTCK     +DEFENSE
	move CALM_MIND,    EFFECT_CALM_MIND,           0, PSYCHIC_TYPE, 100, 20,   0, STATUS   ;         ; 1x +SP_ATTACK +SP_DEFENSE
;	move COSMIC_POWER, EFFECT_DEF_SP_DEF_UP,       0, PSYCHIC_TYPE, 100, 20,   0, STATUS   ;         ; 1x +DEFENSE   +SP_DEFENSE
	move AGILITY,      EFFECT_SPEED_UP_2,          0, PSYCHIC_TYPE, 100, 30,   0, STATUS   ;         ; 2x +SPEED
	move BARRIER,      EFFECT_DEFENSE_UP_2,        0, PSYCHIC_TYPE, 100, 20,   0, STATUS   ;         ; 2x +DEFENSE (replace? who learns?)
	move AMNESIA,      EFFECT_SP_DEF_UP_2,         0, PSYCHIC_TYPE, 100, 20,   0, STATUS   ;         ; 2x +SP_DEFENSE
	move REFLECT,      EFFECT_REFLECT,             0, PSYCHIC_TYPE, 100, 20,   0, STATUS   ;         ;
	move LIGHT_SCREEN, EFFECT_LIGHT_SCREEN,        0, PSYCHIC_TYPE, 100, 30,   0, STATUS   ;         ;
	move DISABLE,      EFFECT_DISABLE,             0, PSYCHIC_TYPE, 100, 20,   0, STATUS   ;         ;
	move REST,         EFFECT_HEAL,                0, PSYCHIC_TYPE, 100, 10,   0, STATUS   ;         ;
; Debuff
	move HYPNOSIS,     EFFECT_SLEEP,               0, PSYCHIC_TYPE,  60, 20,   0, STATUS   ;         ;
	move KINESIS,      EFFECT_ACCURACY_DOWN,       0, PSYCHIC_TYPE,  80, 15,   0, STATUS   ;         ; replace
; Other
	move TELEPORT,     EFFECT_TELEPORT,            0, PSYCHIC_TYPE, 100, 20,   0, STATUS   ;         ;
; Signature
;	move PSYSTRIKE,    EFFECT_NORMAL_HIT,        100, PSYCHIC_TYPE, 100, 10,   0, STATUS   ;         ; Mew/two
; ---------------------------------------------------------------------------------------------------------------------
; ICE
	move POWDER_SNOW,  EFFECT_FREEZE_HIT,         40, ICE,          100, 25,  10, SPECIAL  ; Snow    ;
	move ICY_WIND,     EFFECT_SPEED_DOWN_HIT,     55, ICE,           95, 15, 100, SPECIAL  ; Ice     ;
	move AURORA_BEAM,  EFFECT_ATTACK_DOWN_HIT,    65, ICE,          100, 20,  10, SPECIAL  ;         ;
	move ICE_PUNCH,    EFFECT_FREEZE_HIT,         75, ICE,          100, 15,  10, PHYSICAL ; Fist    ;
	move ICE_BEAM,     EFFECT_FREEZE_HIT,         90, ICE,          100, 10,  10, SPECIAL  ;         ;
	move BLIZZARD,     EFFECT_FREEZE_HIT,        110, ICE,           70,  5,  10, SPECIAL  ;         ;
; Buff
	move MIST,         EFFECT_MIST,                0, ICE,          100, 30,   0, STATUS   ;         ;
; Debuff
	move HAZE,         EFFECT_RESET_STATS,         0, ICE,          100, 30,   0, STATUS   ;         ;
; Other
; Signature
; ---------------------------------------------------------------------------------------------------------------------
; DRAGON
	move DRAGON_RAGE,  EFFECT_NORMAL_HIT,         55, DRAGON,       100, 25,   0, MAX_STAT ; Body    ; Hi-Crit
	move TWISTER,      EFFECT_TWISTER,            60, DRAGON,       100, 20,  30, SPECIAL  ; Body    ;
	move DRAGONBREATH, EFFECT_PARALYZE_HIT,       60, DRAGON,       100, 20,  30, SPECIAL  ; Fang    ;
;	move DRAGON_PULSE, EFFECT_NORMAL_HIT,         80, DRAGON,       100, 15,   0, SPECIAL  ;         ;
	move DRAGON_CLAW,  EFFECT_NORMAL_HIT,         80, DRAGON,       100, 15,   0, PHYSICAL ;         ;
	move OUTRAGE,      EFFECT_RAMPAGE,           120, DRAGON,       100, 10,   0, PHYSICAL ; Body    ;
; Debuff
	move DRAGON_DANCE, EFFECT_ATK_UP_SPE_UP,       0, DRAGON,       100, 15,   0, STATUS   ;         ; 1x +ATTACK +SPEED
; Other
; Signature
; ---------------------------------------------------------------------------------------------------------------------
; DARK
; Note: need Special & Status moves
	move PURSUIT,      EFFECT_PURSUIT,            40, DARK,         100, 20,   0, PHYSICAL ; Body    ;
	move SNARL,        EFFECT_,                   55, DARK,         100, 25,  20, SPECIAL  ; Fang    ;
	move THIEF,        EFFECT_THIEF,              60, DARK,         100, 25, 100, PHYSICAL ; Arm     ;
	move FAINT_ATTACK, EFFECT_ALWAYS_HIT,         60, DARK,         100, 20,   0, PHYSICAL ; Body    ;
	move BITE,         EFFECT_FLINCH_HIT,         60, DARK,         100, 25,  30, PHYSICAL ; Fang    ;
	move CRUNCH,       EFFECT_SP_DEF_DOWN_HIT,    80, DARK,         100, 15,  20, PHYSICAL ; Fang    ;
;	move DARK_PULSE,   EFFECT_FLINCH_HIT,         90, DARK,         100, 15,  10, SPECIAL  ;         ;
; Buff
; Debuff
	move SCARY_FACE,   EFFECT_SPEED_DOWN_2,        0, DARK,          90, 10,   0, STATUS   ;         ;
; Other
; Signature
; ---------------------------------------------------------------------------------------------------------------------
; FAIRY
;  Note: need 50-70 power move to bridge gap
	move FAIRY_WIND,   EFFECT_NORMAL_HIT,         50, FAIRY,        100, 30,   0, SPECIAL  ;         ;
	move MOONBLAST,    EFFECT_SP_ATK_DOWN_HIT,    90, FAIRY,        100, 10,  30, SPECIAL  ;         ;
	move PLAY_ROUGH,   EFFECT_ATTACK_DOWN_HIT,    90, FAIRY,         90, 10,  10, PHYSICAL ;         ;
; Buff
	move MOONLIGHT,    EFFECT_MOONLIGHT,           0, FAIRY,        100,  5,   0, STATUS   ;         ;
; Debuff
	move CHARM,        EFFECT_ATTACK_DOWN_2,       0, FAIRY,        100, 20,   0, STATUS   ;         ; 2x -ATTACK
	move SWEET_KISS,   EFFECT_CONFUSE,             0, FAIRY,         75, 10,   0, STATUS   ;         ;
; Other
; Signature
; ---------------------------------------------------------------------------------------------------------------------
; UNKNOWN_TYPE
	move HIDDEN_POWER, EFFECT_HIDDEN_POWER,       70, UNKNOWN_TYPE, 100, 15,   0, MAX_STAT ;         ;
; Buff
; Debuff
; Other
	move CURSE,        EFFECT_CURSE,               0, UNKNOWN_TYPE, 100, 10,   0, STATUS   ;         ;
; Signature
; ---------------------------------------------------------------------------------------------------------------------
	assert_table_length NUM_ATTACKS
