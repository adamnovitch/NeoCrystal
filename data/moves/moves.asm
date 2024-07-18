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

Moves:
; entries correspond to move ids (see constants/move_constants.asm)
;	move MOVE_NAME   , EFFECT_TYPE              , BP, TYPE        , ACC, PP,   %, CATEGORY ;Comment
	table_width MOVE_LENGTH, Moves
	move POUND,        EFFECT_NORMAL_HIT,         40, NORMAL,       100, 35,   0, PHYSICAL ; ok
	move KARATE_CHOP,  EFFECT_NORMAL_HIT,         50, FIGHTING,     100, 25,   0, PHYSICAL ; ok
	move DOUBLESLAP,   EFFECT_MULTI_HIT,          20, NORMAL,       100, 15,   0, PHYSICAL ; Lowest BP, Highest ACC
	move DRAGON_DANCE, EFFECT_ATK_UP_SPE_UP,       0, DRAGON,       100, 15,   0, STATUS   ; ok
	move ERUPTION,     EFFECT_BURN_HIT,          100, FIRE,         100,  5,  50, SPECIAL  ; ok - Typhlosion signature
	move PAY_DAY,      EFFECT_PAY_DAY,            60, NORMAL,       100, 20,   0, PHYSICAL ; Increased to BP 60 for Technician
	move FIRE_PUNCH,   EFFECT_BURN_HIT,           75, FIRE,         100, 15,  10, PHYSICAL ; ok
	move ICE_PUNCH,    EFFECT_FREEZE_HIT,         75, ICE,          100, 15,  10, PHYSICAL ; ok
	move THUNDERPUNCH, EFFECT_PARALYZE_HIT,       75, ELECTRIC,     100, 15,  10, PHYSICAL ; ok
	move SCRATCH,      EFFECT_NORMAL_HIT,         40, NORMAL,       100, 35,   0, PHYSICAL ; ok
	move AIR_CUTTER,   EFFECT_NORMAL_HIT,         55, FLYING,       100, 25,   0, SPECIAL  ; ok, high crit chance
	move X_SCISSOR,    EFFECT_NORMAL_HIT,         80, BUG,          100, 15,   0, PHYSICAL ; ok
	move RAZOR_WIND,   EFFECT_FLINCH_HIT,         75, FLYING,        95, 15,  30, SPECIAL  ; Calling Razor Wind in code, but it's Air Slash.
	move SWORDS_DANCE, EFFECT_ATTACK_UP_2,         0, NORMAL,       100, 30,   0, STATUS   ; ok
	move CUT,          EFFECT_NORMAL_HIT,         55, NORMAL,       100, 30,   0, PHYSICAL ; Like a mini-slash
	move GUST,         EFFECT_GUST,               40, FLYING,       100, 35,   0, SPECIAL  ; Anything that can learn Gust should
	move WING_ATTACK,  EFFECT_NORMAL_HIT,         60, FLYING,       100, 35,   0, PHYSICAL ; learn Wing attack and vice versa
	move WHIRLWIND,    EFFECT_FORCE_SWITCH,        0, NORMAL,       100, 20,   0, STATUS   ; same as gust
	move FLY,          EFFECT_FLY,                90, FLYING,        95, 15,   0, PHYSICAL ; ok
	move BIND,         EFFECT_TRAP_TARGET,        35, NORMAL,        90, 20,   0, PHYSICAL ; This is the de-facto trapping move, buff pp 5
	move SLAM,         EFFECT_DEFENSE_DOWN_HIT,   80, NORMAL,        90, 20,  20, PHYSICAL ; ok
	move VINE_WHIP,    EFFECT_NORMAL_HIT,         45, GRASS,        100, 25,   0, PHYSICAL ; 45BP to match latter gens.
	move STOMP,        EFFECT_STOMP,              65, NORMAL,       100, 20,  30, PHYSICAL ; ok
	move DOUBLE_KICK,  EFFECT_DOUBLE_HIT,         30, FIGHTING,     100, 30,   0, PHYSICAL ; ok, give to any kicker
	move PRIMAL_PLANT, EFFECT_PRIMAL_PLANT,      100, GRASS,        100,  5, 100, MAX_STAT ; Meganium singature
	move JUMP_KICK,    EFFECT_JUMP_KICK,         100, FIGHTING,      95, 10,   0, PHYSICAL ; ok
	move BUG_BUZZ,     EFFECT_SP_DEF_DOWN_HIT,    90, BUG,          100, 10,  10, SPECIAL  ; ok
	move SAND_ATTACK,  EFFECT_ACCURACY_DOWN,       0, GROUND,       100, 15,   0, STATUS   ; ok
	move HEADBUTT,     EFFECT_FLINCH_HIT,         70, NORMAL,       100, 15,  30, PHYSICAL ; ok
	move HORN_ATTACK,  EFFECT_NORMAL_HIT,         65, NORMAL,       100, 25,   0, PHYSICAL ; ok
	move FURY_ATTACK,  EFFECT_MULTI_HIT,          24, NORMAL,        90, 15,   0, PHYSICAL ; Highest BP, Lowest ACC
	move GIGA_IMPACT,  EFFECT_HYPER_BEAM,        150, NORMAL,        90,  5,   0, PHYSICAL ; ok
	move TACKLE,       EFFECT_NORMAL_HIT,         40, NORMAL,       100, 35,   0, PHYSICAL ; ok
	move BODY_SLAM,    EFFECT_PARALYZE_HIT,       85, NORMAL,       100, 15,  30, PHYSICAL ; ok
	move WRAP,         EFFECT_TRAP_TARGET,        15, NORMAL,        90, 20,   0, PHYSICAL ; Replace, have all wrappers be binders instead
	move TAKE_DOWN,    EFFECT_RECOIL_HIT,         90, NORMAL,        90, 20,   0, PHYSICAL ; ok
	move THRASH,       EFFECT_RAMPAGE,           120, NORMAL,       100, 10,   0, PHYSICAL ; ok
	move DOUBLE_EDGE,  EFFECT_RECOIL_HIT,        120, NORMAL,       100, 15,   0, PHYSICAL ; ok
	move TAIL_WHIP,    EFFECT_DEFENSE_DOWN,        0, NORMAL,       100, 30,   0, STATUS   ; ok
	move POISON_STING, EFFECT_POISON_HIT,         30, POISON,       100, 20,  30, PHYSICAL ; Buffed to 30 BP
	move TWINEEDLE,    EFFECT_POISON_MULTI_HIT,   35, BUG,          100, 20,  25, PHYSICAL ; ok
	move PIN_MISSILE,  EFFECT_MULTI_HIT,          20, BUG,          100, 15,   0, PHYSICAL ; ok
	move LEER,         EFFECT_DEFENSE_DOWN,        0, NORMAL,       100, 30,   0, STATUS   ; ok
	move BITE,         EFFECT_FLINCH_HIT,         60, DARK,         100, 25,  30, PHYSICAL ; ok
	move GROWL,        EFFECT_ATTACK_DOWN,         0, NORMAL,       100, 40,   0, STATUS   ; ok
	move ROAR,         EFFECT_FORCE_SWITCH,        0, NORMAL,       100, 20,   0, STATUS   ; ok
	move SING,         EFFECT_SLEEP,               0, NORMAL,        60, 15,   0, STATUS   ; ok
	move SUPERSONIC,   EFFECT_CONFUSE,             0, NORMAL,        65, 20,   0, STATUS   ; Increase ACC by 10 to make it usable.
	move SONICBOOM,    EFFECT_STATIC_DAMAGE,      20, NORMAL,        90, 20,   0, SPECIAL  ; replace
	move DISABLE,      EFFECT_DISABLE,             0, NORMAL,       100, 20,   0, STATUS   ; ok
	move ACID,         EFFECT_DEFENSE_DOWN_HIT,   40, POISON,       100, 30,  10, SPECIAL  ; ok
	move EMBER,        EFFECT_BURN_HIT,           40, FIRE,         100, 25,  10, SPECIAL  ; ok
	move FLAMETHROWER, EFFECT_BURN_HIT,           90, FIRE,         100, 15,  10, SPECIAL  ; ok
	move MIST,         EFFECT_MIST,                0, ICE,          100, 30,   0, STATUS   ; ok
	move WATER_GUN,    EFFECT_NORMAL_HIT,         40, WATER,        100, 25,   0, SPECIAL  ; ok
	move HYDRO_PUMP,   EFFECT_NORMAL_HIT,        110, WATER,         80,  5,   0, SPECIAL  ; ok
	move SURF,         EFFECT_NORMAL_HIT,         90, WATER,        100, 15,   0, SPECIAL  ; ok
	move ICE_BEAM,     EFFECT_FREEZE_HIT,         90, ICE,          100, 10,  10, SPECIAL  ; ok
	move BLIZZARD,     EFFECT_FREEZE_HIT,        110, ICE,           70,  5,  10, SPECIAL  ; ok
	move PSYBEAM,      EFFECT_CONFUSE_HIT,        65, PSYCHIC_TYPE, 100, 20,  10, SPECIAL  ; ok
	move BUBBLEBEAM,   EFFECT_SPEED_DOWN_HIT,     65, WATER,        100, 20,  10, SPECIAL  ; ok
	move AURORA_BEAM,  EFFECT_ATTACK_DOWN_HIT,    65, ICE,          100, 20,  10, SPECIAL  ; ok
	move HYPER_BEAM,   EFFECT_HYPER_BEAM,        150, NORMAL,        90,  5,   0, SPECIAL  ; ok
	move PECK,         EFFECT_NORMAL_HIT,         35, FLYING,       100, 35,   0, PHYSICAL ; ok
	move DRILL_PECK,   EFFECT_NORMAL_HIT,         80, FLYING,       100, 20,   0, PHYSICAL ; ok for now
	move SUBMISSION,   EFFECT_RECOIL_HIT,         90, FIGHTING,      90, 20,   0, PHYSICAL ; More
	move LOW_KICK,     EFFECT_FLINCH_HIT,         50, FIGHTING,     100, 20,  30, PHYSICAL ; ok
	move COUNTER,      EFFECT_COUNTER,             1, FIGHTING,     100, 20,   0, PHYSICAL ; ok
	move SEISMIC_TOSS, EFFECT_LEVEL_DAMAGE,        1, FIGHTING,     100, 20,   0, PHYSICAL ; ok
	move STRENGTH,     EFFECT_NORMAL_HIT,         80, NORMAL,       100, 15,   0, PHYSICAL ; ok, type change maybe?
	move ABSORB,       EFFECT_LEECH_HIT,          35, GRASS,        100, 25,   0, SPECIAL  ; ok, update to latest game stats
	move MEGA_DRAIN,   EFFECT_LEECH_HIT,          55, GRASS,        100, 15,   0, SPECIAL  ; ok, update to latest game stats
	move LEECH_SEED,   EFFECT_LEECH_SEED,          0, GRASS,         90, 10,   0, STATUS   ; ok
	move GROWTH,       EFFECT_SP_ATK_UP,           0, NORMAL,       100, 40,   0, STATUS   ; Update effect to increase both Attack and Sp. Attack
	move RAZOR_LEAF,   EFFECT_NORMAL_HIT,         55, GRASS,         95, 25,   0, PHYSICAL ; ok
	move SOLARBEAM,    EFFECT_SOLARBEAM,         120, GRASS,        100, 10,   0, SPECIAL  ; ok
	move POISONPOWDER, EFFECT_POISON,              0, POISON,        75, 35,   0, STATUS   ; ok
	move STUN_SPORE,   EFFECT_PARALYZE,            0, GRASS,         75, 30,   0, STATUS   ; ok
	move SLEEP_POWDER, EFFECT_SLEEP,               0, GRASS,         75, 15,   0, STATUS   ; ok
	move PETAL_DANCE,  EFFECT_RAMPAGE,           120, GRASS,        100, 10,   0, SPECIAL  ; ok
	move STRING_SHOT,  EFFECT_SPEED_DOWN,          0, BUG,           95, 40,   0, STATUS   ; ok
	move DRAGON_RAGE,  EFFECT_NORMAL_HIT,         55, DRAGON,       100, 25,   0, MAX_STAT ; ok
	move FIRE_SPIN,    EFFECT_TRAP_TARGET,        35, FIRE,          90, 20,   0, SPECIAL  ; ok
	move THUNDERSHOCK, EFFECT_PARALYZE_HIT,       40, ELECTRIC,     100, 30,  10, SPECIAL  ; ok
	move THUNDERBOLT,  EFFECT_PARALYZE_HIT,       90, ELECTRIC,     100, 15,  10, SPECIAL  ; ok
	move THUNDER_WAVE, EFFECT_PARALYZE,            0, ELECTRIC,      90, 20,   0, STATUS   ; ok
	move THUNDER,      EFFECT_THUNDER,           110, ELECTRIC,      70, 10,  30, SPECIAL  ; ok
	move ROCK_THROW,   EFFECT_NORMAL_HIT,         50, ROCK,         100, 20,   0, PHYSICAL ; Increase ACC and PP
	move EARTHQUAKE,   EFFECT_EARTHQUAKE,        100, GROUND,       100, 10,   0, PHYSICAL ; ok
	move FISSURE,      EFFECT_OHKO,                1, GROUND,        30,  5,   0, PHYSICAL ; OHKO replace
	move DIG,          EFFECT_FLY,                80, GROUND,       100, 10,   0, PHYSICAL ; ok
	move TOXIC,        EFFECT_TOXIC,               0, POISON,        90, 10,   0, STATUS   ; ok
	move CONFUSION,    EFFECT_CONFUSE_HIT,        50, PSYCHIC_TYPE, 100, 25,  10, SPECIAL  ; ok
	move PSYCHIC_M,    EFFECT_SP_DEF_DOWN_HIT,    90, PSYCHIC_TYPE, 100, 10,  10, SPECIAL  ; ok
	move HYPNOSIS,     EFFECT_SLEEP,               0, PSYCHIC_TYPE,  60, 20,   0, STATUS   ; ok
	move MEDITATE,     EFFECT_ATK_UP_DEF_UP,       0, PSYCHIC_TYPE, 100, 20,   0, STATUS   ; Should raise Attack and Defense
	move AGILITY,      EFFECT_SPEED_UP_2,          0, PSYCHIC_TYPE, 100, 30,   0, STATUS   ; ok
	move QUICK_ATTACK, EFFECT_PRIORITY_HIT,       40, NORMAL,       100, 30,   0, PHYSICAL ; ok
	move RAGE,         EFFECT_RAGE,               20, NORMAL,       100, 20,   0, PHYSICAL ; ok
	move TELEPORT,     EFFECT_TELEPORT,            0, PSYCHIC_TYPE, 100, 20,   0, STATUS   ; ok
	move NIGHT_SHADE,  EFFECT_LEVEL_DAMAGE,        1, GHOST,        100, 15,   0, SPECIAL  ; New effect?
	move MIMIC,        EFFECT_MIMIC,               0, NORMAL,       100, 10,   0, STATUS   ; ok
	move SCREECH,      EFFECT_DEFENSE_DOWN_2,      0, NORMAL,        85, 40,   0, STATUS   ; ok
	move DOUBLE_TEAM,  EFFECT_EVASION_UP,          0, NORMAL,       100, 15,   0, STATUS   ; ok
	move RECOVER,      EFFECT_HEAL,                0, NORMAL,       100, 10,   0, STATUS   ; ok
	move HARDEN,       EFFECT_DEFENSE_UP,          0, NORMAL,       100, 30,   0, STATUS   ; ok
	move MINIMIZE,     EFFECT_EVASION_UP,          0, NORMAL,       100, 10,   0, STATUS   ; ok
	move SMOKESCREEN,  EFFECT_ACCURACY_DOWN,       0, NORMAL,       100, 20,   0, STATUS   ; ok
	move CONFUSE_RAY,  EFFECT_CONFUSE,             0, GHOST,        100, 10,   0, STATUS   ; ok
	move WITHDRAW,     EFFECT_DEF_UP2_SPE_DN,      0, WATER,        100, 20,   0, STATUS   ; Defense +2, Speed -1, lower pp
	move DEFENSE_CURL, EFFECT_DEFENSE_CURL,        0, NORMAL,       100, 40,   0, STATUS   ; ok
	move BARRIER,      EFFECT_DEFENSE_UP_2,        0, PSYCHIC_TYPE, 100, 20,   0, STATUS   ; ok
	move LIGHT_SCREEN, EFFECT_LIGHT_SCREEN,        0, PSYCHIC_TYPE, 100, 30,   0, STATUS   ; ok
	move HAZE,         EFFECT_RESET_STATS,         0, ICE,          100, 30,   0, STATUS   ; ok
	move REFLECT,      EFFECT_REFLECT,             0, PSYCHIC_TYPE, 100, 20,   0, STATUS   ; ok
	move FOCUS_ENERGY, EFFECT_FOCUS_ENERGY,        0, NORMAL,       100, 30,   0, STATUS   ; ok
	move BIDE,         EFFECT_BIDE,                0, NORMAL,       100, 10,   0, PHYSICAL ; replace
	move METRONOME,    EFFECT_METRONOME,           0, NORMAL,       100, 10,   0, STATUS   ; replace, too chaotic
	move MIRROR_MOVE,  EFFECT_MIRROR_MOVE,         0, FLYING,       100, 20,   0, STATUS   ; replace with copycat or something else
	move SELFDESTRUCT, EFFECT_SELFDESTRUCT,      200, NORMAL,       100,  5,   0, PHYSICAL ; replace
	move EGG_BOMB,     EFFECT_NORMAL_HIT,        100, NORMAL,        75, 10,   0, PHYSICAL ; replace
	move LICK,         EFFECT_PARALYZE_HIT,       40, GHOST,        100, 25,  25, PHYSICAL ; ok
	move SMOG,         EFFECT_POISON_HIT,         30, POISON,       100, 20,  30, SPECIAL  ; Buffed to 30BP, Buff ACC to 100, lower chance to 30%
	move SLUDGE,       EFFECT_POISON_HIT,         65, POISON,       100, 20,  30, SPECIAL  ; ok
	move BONE_CLUB,    EFFECT_FLINCH_HIT,         65, GROUND,        85, 20,  10, PHYSICAL ; replace
	move FIRE_BLAST,   EFFECT_BURN_HIT,          110, FIRE,          85,  5,  10, SPECIAL  ; ok
	move WATERFALL,    EFFECT_FLINCH_HIT,         80, WATER,        100, 15,   0, PHYSICAL ; ok
	move CLAMP,        EFFECT_TRAP_TARGET,        35, WATER,         90, 20,   0, PHYSICAL ; ok
	move SWIFT,        EFFECT_ALWAYS_HIT,         60, NORMAL,       100, 20,   0, SPECIAL  ; ok
	move SKULL_BASH,   EFFECT_SKULL_BASH,        130, NORMAL,       100, 10,   0, PHYSICAL ; ok
	move SPIKE_CANNON, EFFECT_MULTI_HIT,          20, ROCK,         100, 15,   0, PHYSICAL ; ok
	move CONSTRICT,    EFFECT_SPEED_DOWN_HIT,     50, NORMAL,       100, 15,  50, PHYSICAL ; More
	move AMNESIA,      EFFECT_SP_DEF_UP_2,         0, PSYCHIC_TYPE, 100, 20,   0, STATUS   ; ok
	move KINESIS,      EFFECT_ACCURACY_DOWN,       0, PSYCHIC_TYPE,  80, 15,   0, STATUS   ; replace
	move SOFTBOILED,   EFFECT_HEAL,                0, NORMAL,       100, 10,   0, STATUS   ; replace, give 'em recover
	move HI_JUMP_KICK, EFFECT_JUMP_KICK,         130, FIGHTING,      90, 10,   0, PHYSICAL ; ok
	move GLARE,        EFFECT_PARALYZE,            0, NORMAL,       100, 30,   0, STATUS   ; ok
	move DREAM_EATER,  EFFECT_DREAM_EATER,       100, PSYCHIC_TYPE, 100, 15,   0, SPECIAL  ; rarely used, potential replace
	move POISON_GAS,   EFFECT_POISON,              0, POISON,        90, 40,   0, STATUS   ; ok
	move BULLET_SEED,  EFFECT_MULTI_HIT,          20, GRASS,        100, 15,   0, PHYSICAL ; ok
	move LEECH_LIFE,   EFFECT_LEECH_HIT,          55, BUG,          100, 10,   0, PHYSICAL ; ok
	move LOVELY_KISS,  EFFECT_SLEEP,               0, NORMAL,        75, 10,   0, STATUS   ; ok
	move SKY_ATTACK,   EFFECT_RECOIL_HIT,        120, FLYING,       100, 15,   0, PHYSICAL ; ok
	move TRANSFORM,    EFFECT_TRANSFORM,           0, NORMAL,       100, 10,   0, STATUS   ; ok
	move BUBBLE,       EFFECT_SPEED_DOWN_HIT,     40, WATER,        100, 30,  10, SPECIAL  ; ok
	move DIZZY_PUNCH,  EFFECT_CONFUSE_HIT,        70, NORMAL,       100, 10,  20, PHYSICAL ; ok
	move SPORE,        EFFECT_SLEEP,               0, GRASS,        100, 15,   0, STATUS   ; ok
	move FLASH,        EFFECT_ACCURACY_DOWN,       0, NORMAL,       100, 20,   0, STATUS   ; ok
	move PSYWAVE,      EFFECT_PSYWAVE,             1, PSYCHIC_TYPE, 100, 15,   0, SPECIAL  ; replace
	move SPLASH,       EFFECT_SPLASH,              0, NORMAL,       100, 40,   0, STATUS   ; replace
	move ACID_ARMOR,   EFFECT_DEFENSE_UP_2,        0, POISON,       100, 20,   0, STATUS   ; ok
	move CRABHAMMER,   EFFECT_NORMAL_HIT,        100, WATER,         95, 10,   0, PHYSICAL ; Buffed ACC to 95
	move EXPLOSION,    EFFECT_SELFDESTRUCT,      250, NORMAL,       100,  5,   0, PHYSICAL ; replace
	move FURY_SWIPES,  EFFECT_MULTI_HIT,          22, NORMAL,        95, 15,   0, PHYSICAL ; Mid BP, Mid ACC
	move BONEMERANG,   EFFECT_DOUBLE_HIT,         50, GROUND,        90, 10,   0, PHYSICAL ; replace
	move REST,         EFFECT_HEAL,                0, PSYCHIC_TYPE, 100, 10,   0, STATUS   ; ok
	move ROCK_SLIDE,   EFFECT_FLINCH_HIT,         75, ROCK,          90, 10,  30, PHYSICAL ; ok
	move HYPER_FANG,   EFFECT_FLINCH_HIT,         80, NORMAL,        90, 15,  10, PHYSICAL ; More
	move SHARPEN,      EFFECT_ATTACK_UP,           0, NORMAL,       100, 30,   0, STATUS   ; More
	move CONVERSION,   EFFECT_CONVERSION,          0, NORMAL,       100, 30,   0, STATUS   ; replace
	move TRI_ATTACK,   EFFECT_TRI_ATTACK,         80, NORMAL,       100, 10,  20, SPECIAL  ; More
	move SUPER_FANG,   EFFECT_SUPER_FANG,          1, NORMAL,        90, 10,   0, PHYSICAL ; More
	move SLASH,        EFFECT_NORMAL_HIT,         70, NORMAL,       100, 20,   0, PHYSICAL ; ok
	move SUBSTITUTE,   EFFECT_SUBSTITUTE,          0, NORMAL,       100, 10,   0, STATUS   ; ok
	move STRUGGLE,     EFFECT_RECOIL_HIT,         50, NORMAL,       100,  1,   0, PHYSICAL ; ok
	move SKETCH,       EFFECT_SKETCH,              0, NORMAL,       100,  1,   0, STATUS   ; ok
	move TRIPLE_KICK,  EFFECT_TRIPLE_KICK,        15, FIGHTING,     100, 15,   0, PHYSICAL ; More
	move THIEF,        EFFECT_THIEF,              60, DARK,         100, 25, 100, PHYSICAL ; ok
	move SPIDER_WEB,   EFFECT_MEAN_LOOK,           0, BUG,          100, 10,   0, STATUS   ; More
	move MIND_READER,  EFFECT_LOCK_ON,             0, NORMAL,       100,  5,   0, STATUS   ; ok
	move NIGHTMARE,    EFFECT_NIGHTMARE,           0, GHOST,        100, 15,   0, STATUS   ; replace
	move FLAME_WHEEL,  EFFECT_FLAME_WHEEL,        60, FIRE,         100, 25,  10, PHYSICAL ; ok
	move SNORE,        EFFECT_SNORE,              50, NORMAL,       100, 15,  30, SPECIAL  ; ok
	move CURSE,        EFFECT_CURSE,               0, UNKNOWN_TYPE, 100, 10,   0, STATUS   ; ok
	move FLAIL,        EFFECT_REVERSAL,            1, NORMAL,       100, 15,   0, PHYSICAL ; ok
	move CONVERSION2,  EFFECT_CONVERSION2,         0, NORMAL,       100, 30,   0, STATUS   ; replace
	move AEROBLAST,    EFFECT_NORMAL_HIT,        100, FLYING,        95,  5,   0, SPECIAL  ; ok
	move COTTON_SPORE, EFFECT_SPEED_DOWN_2,        0, GRASS,        100, 40,   0, STATUS   ; ok
	move REVERSAL,     EFFECT_REVERSAL,            1, FIGHTING,     100, 15,   0, PHYSICAL ; ok
	move SPITE,        EFFECT_SPITE,               0, GHOST,        100, 10,   0, STATUS   ; ok
	move POWDER_SNOW,  EFFECT_FREEZE_HIT,         40, ICE,          100, 25,  10, SPECIAL  ; ok
	move PROTECT,      EFFECT_PROTECT,             0, NORMAL,       100, 10,   0, STATUS   ; ok
	move MACH_PUNCH,   EFFECT_PRIORITY_HIT,       40, FIGHTING,     100, 30,   0, PHYSICAL ; ok
	move SCARY_FACE,   EFFECT_SPEED_DOWN_2,        0, NORMAL,        90, 10,   0, STATUS   ; ok
	move FAINT_ATTACK, EFFECT_ALWAYS_HIT,         60, DARK,         100, 20,   0, PHYSICAL ; ok
	move SWEET_KISS,   EFFECT_CONFUSE,             0, FAIRY,         75, 10,   0, STATUS   ; ok
	move BELLY_DRUM,   EFFECT_BELLY_DRUM,          0, NORMAL,       100, 10,   0, STATUS   ; More
	move SLUDGE_BOMB,  EFFECT_POISON_HIT,         90, POISON,       100, 10,  30, SPECIAL  ; ok
	move MUD_SLAP,     EFFECT_ACCURACY_DOWN_HIT,  20, GROUND,       100, 10, 100, SPECIAL  ; ok
	move OCTAZOOKA,    EFFECT_ACCURACY_DOWN_HIT,  65, WATER,        100, 10,  50, SPECIAL  ; More
	move SPIKES,       EFFECT_SPIKES,              0, GROUND,       100, 20,   0, STATUS   ; ok
	move ZAP_CANNON,   EFFECT_PARALYZE_HIT,      120, ELECTRIC,      50,  5, 100, SPECIAL  ; ok
	move FORESIGHT,    EFFECT_FORESIGHT,           0, NORMAL,       100, 40,   0, STATUS   ; ok
	move DESTINY_BOND, EFFECT_DESTINY_BOND,        0, GHOST,        100,  5,   0, STATUS   ; ok
	move PERISH_SONG,  EFFECT_PERISH_SONG,         0, NORMAL,       100,  5,   0, STATUS   ; ok
	move ICY_WIND,     EFFECT_SPEED_DOWN_HIT,     55, ICE,           95, 15, 100, SPECIAL  ; ok
	move DETECT,       EFFECT_PROTECT,             0, FIGHTING,     100,  5,   0, STATUS   ; ok
	move BULLDOZE,     EFFECT_SPEED_DOWN_HIT,     60, GROUND,       100, 20,  10, PHYSICAL ; ok
	move LOCK_ON,      EFFECT_LOCK_ON,             0, NORMAL,       100,  5,   0, STATUS   ; ok
	move OUTRAGE,      EFFECT_RAMPAGE,           120, DRAGON,       100, 10,   0, PHYSICAL ; ok
	move SANDSTORM,    EFFECT_SANDSTORM,           0, ROCK,         100, 10,   0, STATUS   ; ok
	move GIGA_DRAIN,   EFFECT_LEECH_HIT,          75, GRASS,        100,  5,   0, SPECIAL  ; ok
	move ENDURE,       EFFECT_ENDURE,              0, NORMAL,       100, 10,   0, STATUS   ; ok
	move CHARM,        EFFECT_ATTACK_DOWN_2,       0, FAIRY,        100, 20,   0, STATUS   ; ok
	move ROLLOUT,      EFFECT_ROLLOUT,            30, ROCK,          90, 20,   0, PHYSICAL ; ok
	move FALSE_SWIPE,  EFFECT_FALSE_SWIPE,        40, NORMAL,       100, 40,   0, PHYSICAL ; ok
	move SWAGGER,      EFFECT_SWAGGER,             0, NORMAL,        85, 15, 100, STATUS   ; ok
	move MILK_DRINK,   EFFECT_HEAL,                0, NORMAL,       100, 10,   0, STATUS   ; replace
	move SPARK,        EFFECT_PARALYZE_HIT,       65, ELECTRIC,     100, 20,  30, PHYSICAL ; ok
	move FURY_CUTTER,  EFFECT_FURY_CUTTER,        20, BUG,           95, 20,   0, PHYSICAL ; ok - 20bp to start, doubles 4 times
	move STEEL_WING,   EFFECT_DEFENSE_UP_HIT,     70, STEEL,        100, 20,  10, PHYSICAL ; ok
	move MEAN_LOOK,    EFFECT_MEAN_LOOK,           0, NORMAL,       100,  5,   0, STATUS   ; ok
	move ATTRACT,      EFFECT_ATTRACT,             0, NORMAL,       100, 15,   0, STATUS   ; ok
	move SLEEP_TALK,   EFFECT_SLEEP_TALK,          0, NORMAL,       100, 10,   0, STATUS   ; ok
	move HEAL_BELL,    EFFECT_HEAL_BELL,           0, NORMAL,       100,  5,   0, STATUS   ; ok?
	move RETURN,       EFFECT_RETURN,              1, NORMAL,       100, 20,   0, PHYSICAL ; ok
	move PRESENT,      EFFECT_PRESENT,             1, NORMAL,        90, 15,   0, PHYSICAL ; replace?
	move FRUSTRATION,  EFFECT_FRUSTRATION,         1, NORMAL,       100, 20,   0, PHYSICAL ; replace
	move SAFEGUARD,    EFFECT_SAFEGUARD,           0, NORMAL,       100, 25,   0, STATUS   ; ok
	move PAIN_SPLIT,   EFFECT_PAIN_SPLIT,          0, NORMAL,       100, 20,   0, STATUS   ; More
	move SACRED_FIRE,  EFFECT_SACRED_FIRE,       100, FIRE,          95,  5,  50, PHYSICAL ; ok
	move MAGNITUDE,    EFFECT_MAGNITUDE,           1, GROUND,       100, 30,   0, PHYSICAL ; ok
	move DYNAMICPUNCH, EFFECT_CONFUSE_HIT,       100, FIGHTING,      50,  5, 100, PHYSICAL ; ok
	move MEGAHORN,     EFFECT_NORMAL_HIT,        120, BUG,           85, 10,   0, PHYSICAL ; ok
	move DRAGONBREATH, EFFECT_PARALYZE_HIT,       60, DRAGON,       100, 20,  30, SPECIAL  ; ok
	move BATON_PASS,   EFFECT_BATON_PASS,          0, NORMAL,       100, 40,   0, STATUS   ; ok
	move ENCORE,       EFFECT_ENCORE,              0, NORMAL,       100,  5,   0, STATUS   ; ok
	move PURSUIT,      EFFECT_PURSUIT,            40, DARK,         100, 20,   0, PHYSICAL ; replace
	move RAPID_SPIN,   EFFECT_RAPID_SPIN,         50, NORMAL,       100, 20,   0, PHYSICAL ; ok
	move SWEET_SCENT,  EFFECT_EVASION_DOWN,        0, NORMAL,       100, 20,   0, STATUS   ; ok
	move IRON_TAIL,    EFFECT_DEFENSE_DOWN_HIT,  100, STEEL,         90, 15,  30, PHYSICAL ; ok
	move METAL_CLAW,   EFFECT_ATTACK_UP_HIT,      55, STEEL,        100, 25,  10, PHYSICAL ; ok
	move VITAL_THROW,  EFFECT_ALWAYS_HIT,         70, FIGHTING,     100, 10,   0, PHYSICAL ; move effect requires update? or replace.
	move MORNING_SUN,  EFFECT_MORNING_SUN,         0, NORMAL,       100,  5,   0, STATUS   ; ok
	move SYNTHESIS,    EFFECT_SYNTHESIS,           0, GRASS,        100,  5,   0, STATUS   ; ok
	move MOONLIGHT,    EFFECT_MOONLIGHT,           0, FAIRY,        100,  5,   0, STATUS   ; ok
	move HIDDEN_POWER, EFFECT_HIDDEN_POWER,       70, NORMAL,       100, 15,   0, MAX_STAT ; Now determines highest stat between Attack and SpAtk.
	move CROSS_CHOP,   EFFECT_NORMAL_HIT,        100, FIGHTING,      80,  5,   0, PHYSICAL ; ok
	move TWISTER,      EFFECT_TWISTER,            60, DRAGON,       100, 20,  30, SPECIAL  ; ok
	move RAIN_DANCE,   EFFECT_RAIN_DANCE,          0, WATER,         90,  5,   0, STATUS   ; ok
	move SUNNY_DAY,    EFFECT_SUNNY_DAY,           0, FIRE,          90,  5,   0, STATUS   ; ok
	move CRUNCH,       EFFECT_SP_DEF_DOWN_HIT,    80, DARK,         100, 15,  20, PHYSICAL ; ok
	move MIRROR_COAT,  EFFECT_MIRROR_COAT,         1, PSYCHIC_TYPE, 100, 20,   0, SPECIAL  ; ok
	move PSYCH_UP,     EFFECT_PSYCH_UP,            0, NORMAL,       100, 10,   0, STATUS   ; ok
	move EXTREMESPEED, EFFECT_PRIORITY_HIT_2,     80, NORMAL,       100,  5,   0, PHYSICAL ; ok
	move ANCIENTPOWER, EFFECT_ALL_UP_HIT,         60, ROCK,         100,  5,  10, SPECIAL  ; ok
	move SHADOW_BALL,  EFFECT_SP_DEF_DOWN_HIT,    80, GHOST,        100, 15,  20, SPECIAL  ; ok
	move FUTURE_SIGHT, EFFECT_FUTURE_SIGHT,      120, PSYCHIC_TYPE, 100, 10,   0, SPECIAL  ; ok
	move ROCK_SMASH,   EFFECT_DEFENSE_DOWN_HIT,   50, FIGHTING,     100, 15,  50, PHYSICAL ; ok
	move WHIRLPOOL,    EFFECT_TRAP_TARGET,        35, WATER,         90, 20,   0, SPECIAL  ; ok
	move CROC_CHOMP,   EFFECT_TRAP_TARGET,       100, WATER,        100,  5,   0, PHYSICAL ; ok : Totodile line signature
	move MOONBLAST,    EFFECT_SP_ATK_DOWN_HIT,    95, FAIRY,        100, 10,  30, SPECIAL  ; ok
	move PLAY_ROUGH,   EFFECT_ATTACK_DOWN_HIT,    90, FAIRY,         90, 10,  10, PHYSICAL ; ok
	move FAIRY_WIND,   EFFECT_NORMAL_HIT,         40, FAIRY,        100, 30,   0, SPECIAL  ; ok
	assert_table_length NUM_ATTACKS

; New Moves
;	move MOVE_NAME   , EFFECT_TYPE              , BP, TYPE        , ACC, PP,   %, CATEGORY ;Comment
;	move SIGNAL_BEAM,  EFFECT_CONFUSE_HIT,        70, BUG,          100, 70,  15, SPECIAL  ;
;	move WATER_PULSE,  EFFECT_CONFUSE_HIT,        60, WATER,        100, 20,  10, SPECIAL  ;
;	move DRAGON_CLAW,  EFFECT_NORMAL_HIT,         80, DRAGON,       100, 15,   0, PHYSICAL ;
;	move DRAGON_PULSE, EFFECT_NORMAL_HIT,         80, DRAGON,       100, 15,   0, SPECIAL  ;
;	move SHOCK_WAVE,   EFFECT_ALWAYS_HIT,         60, ELECTRIC,     100, 20,   0, SPECIAL  ;
;	move EARTH_POWER,  EFFECT_NORMAL_HIT,         90, GROUND,       100, 10,   0, SPECIAL  ;
;	move POISON_FANG,  EFFECT_POISON_HIT,         50, POISON,       100, 20,  30, PHYSICAL ;
;	move IRON_DEFENSE, EFFECT_DEFENSE_UP_2,        0, STEEL,        100, 15,   0, STATUS   ;
;	move CALM_MIND,    EFFECT_CALM_MIND,           0, PSYCHIC_TYPE, 100, 20,   0, STATUS   ;
;	move BULK_UP,      EFFECT_BULK_UP,             0, FIGHTING,     100, 20,   0, STATUS   ;
;	move FLAME_CHARGE, EFFECT_SPEED_UP_HIT,       50, FIRE,         100, 20,   0, PHYSICAL ;
;	move FLASH_CANNON, EFFECT_SP_DEF_DOWN_HIT,    80, STEEL,        100, 10,  10, SPECIAL  ;
;	move HURRICANE,    EFFECT_CONFUSE_HIT,       110, FLYING,        70,  5,  20, SPECIAL  ;
;	move AURA_SPHERE,  EFFECT_ALWAYS_HIT,         80, FIGHTING,     100, 15,   0, SPECIAL  ;
;	move DARK_PULSE,   EFFECT_FLINCH_HIT,         80, DARK,         100, 10,  10, SPECIAL  ;
;	move IRON_HEAD,    EFFECT_FLINCH_HIT,         80, STEEL,        100, 15,  10, PHYSICAL ;
;	move ENERGY_BALL,  EFFECT_SP_DEF_DOWN_HIT,    80, GRASS,        100, 10,  10, SPECIAL  ;
;	move FOCUS_BLAST,  EFFECT_NORMAL_HIT,        110, FIGHTING,      80,  5,   0, SPECIAL  ;
;	move SEED_BOMB,    EFFECT_NORMAL_HIT,         80, GRASS,        100, 10,   0, PHYSICAL ;
;	move PSYSTRIKE,    EFFECT_NORMAL_HIT,        100, PSYCHIC_TYPE, 100, 10,   0, STATUS   ;
;	move COSMIC_POWER, EFFECT_DEF_SP_DEF_UP,       0, PSYCHIC_TYPE, 100, 10,   0, STATUS   ;
