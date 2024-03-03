INCLUDE "constants.asm"


SECTION "Evolutions and Attacks", ROMX

; Evos+attacks data structure:
; - Evolution methods:
;    * db EVOLVE_LEVEL, level, species
;    * db EVOLVE_ITEM, used item, species
;    * db EVOLVE_HOLDING, used item, species
;    * db EVOLVE_TRADE, held item (or -1 for none), species
;    * db EVOLVE_HAPPINESS, TR_* constant (ANYTIME, MORNDAY, NITE), species
;    * db EVOLVE_STAT, level, ATK_*_DEF constant (LT, GT, EQ), species
; - db 0 ; no more evolutions
; - Learnset (in increasing level order):
;    * db level, move
; - db 0 ; no more level-up moves

INCLUDE "data/pokemon/evos_attacks_pointers.asm"

BulbasaurEvosAttacks:
	db EVOLVE_LEVEL, 16, IVYSAUR
IvysaurEvosAttacks:
	db EVOLVE_LEVEL, 32, VENUSAUR
VenusaurEvosAttacks:
	db  1, TACKLE
	db  1, GROWL
	db  3, VINE_WHIP
	db  6, GROWTH
	db  9, LEECH_SEED
	db 12, RAZOR_LEAF
	db 15, POISONPOWDER
	db 15, SLEEP_POWDER
	db 19, BULLET_SEED
	db 23, TAKE_DOWN
	db 27, SYNTHESIS
	db 31, SWEET_SCENT
	db 35, SLUDGE_BOMB
	db 40, ACID_ARMOR
	db 45, DOUBLE_EDGE
	db 50, AMNESIA
	db 55, PETAL_DANCE
	db 60, SOLARBEAM
	db 65, SUNNY_DAY
	db  0; no more level-up moves

CharmanderEvosAttacks:
	db EVOLVE_LEVEL, 16, CHARMELEON
CharmeleonEvosAttacks:
	db EVOLVE_LEVEL, 36, CHARIZARD
	db  0; no more evolutions
	db  1, SCRATCH
	db  1, GROWL
	db  6, EMBER
	db  9, SMOKESCREEN
	db 12, DRAGONBREATH
	db 16, METAL_CLAW
	db 20, SLASH
	db 24, FIRE_SPIN
	db 28, SCARY_FACE
	db 32, DRAGON_RAGE
	db 34, FLAMETHROWER
	db 39, SWORDS_DANCE
	db 44, DRAGON_DANCE
	db 49, IRON_TAIL
	db 54, SUNNY_DAY
	db 59, FIRE_BLAST
	db 64, OUTRAGE
	db  0; no more level-up moves


CharizardEvosAttacks:
	db  0; no more evolutions
	db  1, SCRATCH
	db  1, GROWL
	db  6, EMBER
	db  9, SMOKESCREEN
	db 12, DRAGONBREATH
	db 16, METAL_CLAW
	db 20, SLASH
	db 24, FIRE_SPIN
	db 28, SCARY_FACE
	db 32, DRAGON_RAGE
	db 34, FLAMETHROWER
	db 36, WING_ATTACK
	db 39, SWORDS_DANCE
	db 44, DRAGON_DANCE
	db 49, RAZOR_WIND
	db 49, IRON_TAIL
	db 54, SUNNY_DAY
	db 59, FIRE_BLAST
	db 64, OUTRAGE
	db  0; no more level-up moves

SquirtleEvosAttacks:
	db EVOLVE_LEVEL, 16, WARTORTLE
WartortleEvosAttacks:
	db EVOLVE_LEVEL, 36, BLASTOISE
BlastoiseEvosAttacks:
	db  0; no more evolutions
	db  1, TACKLE
	db  1, TAIL_WHIP
	db  6, BUBBLE
	db  9, RAPID_SPIN
	db 12, BITE
	db 12, WATER_GUN
	db 16, WITHDRAW
	db 19, PROTECT
	db 23, RAIN_DANCE
	db 27, BUBBLEBEAM
	db 30, FLAIL
	db 35, MEDITATE
	db 40, CRUNCH
	db 45, OCTAZOOKA
	db 50, BARRIER
	db 55, SKULL_BASH
	db 60, HYDRO_PUMP
	db 65, HYPER_BEAM
	db  0; no more level-up moves

CaterpieEvosAttacks:
	db EVOLVE_LEVEL, 7, METAPOD
	db 0 ; no more evolutions
	db 1, TACKLE
	db 1, STRING_SHOT
	db 0 ; no more level-up moves

MetapodEvosAttacks:
	db EVOLVE_LEVEL, 10, BUTTERFREE
	db 0 ; no more evolutions
	db 1, HARDEN
	db 7, HARDEN
	db 0 ; no more level-up moves

ButterfreeEvosAttacks:
	db  0; no more evolutions
	db  1, TACKLE
	db  1, GUST
	db  6, SUPERSONIC
	db 10, CONFUSION
	db 10, GUST
	db 10, FAIRY_WIND
	db 14, POISONPOWDER
	db 14, STUN_SPORE
	db 14, SLEEP_POWDER
	db 18, SUPERSONIC
	db 18, PSYBEAM
	db 22, WHIRLWIND
	db 26, AIR_CUTTER
	db 30, BUG_BUZZ
	db 34, RAZOR_WIND
	db 38, AMNESIA
	db  0; no more level-up moves

WeedleEvosAttacks:
	db EVOLVE_LEVEL, 7, KAKUNA
	db 0 ; no more evolutions
	db 1, POISON_STING
	db 1, STRING_SHOT
	db 0 ; no more level-up moves

KakunaEvosAttacks:
	db EVOLVE_LEVEL, 10, BEEDRILL
	db 0 ; no more evolutions
	db 1, HARDEN
	db 7, HARDEN
	db 0 ; no more level-up moves

BeedrillEvosAttacks:
	db  0; no more evolutions
	db  1, POISON_STING
	db  1, FURY_ATTACK
	db  6, FOCUS_ENERGY
	db 10, FURY_ATTACK
	db 10, FOCUS_ENERGY
	db 14, TWINEEDLE
	db 18, RAGE
	db 22, PIN_MISSILE
	db 26, LEECH_LIFE
	db 30, X_SCISSOR
	db 34, AGILITY
	db 38, SWORDS_DANCE
	db  0; no more level-up moves

PidgeyEvosAttacks:
	db EVOLVE_LEVEL, 18, PIDGEOTTO
PidgeottoEvosAttacks:
	db EVOLVE_LEVEL, 36, PIDGEOT
PidgeotEvosAttacks:
	db  0; no more evolutions
	db  1, TACKLE
	db  5, SAND_ATTACK
	db  8, GUST
	db 11, QUICK_ATTACK
	db 14, WHIRLWIND
	db 17, TWISTER
	db 21, WING_ATTACK
	db 25, AIR_CUTTER
	db 29, AGILITY
	db 33, FORESIGHT
	db 38, DOUBLE_EDGE
	db 43, EXTREMESPEED
	db 48, STEEL_WING
	db 53, RAZOR_WIND
	db 58, SKY_ATTACK
	db  0; no more level-up moves

RattataEvosAttacks:
	db EVOLVE_LEVEL, 20, RATICATE
RaticateEvosAttacks:
	db  0; no more evolutions
	db  1, TACKLE
	db  1, TAIL_WHIP
	db  4, QUICK_ATTACK
	db  7, FOCUS_ENERGY
	db 10, BITE
	db 13, HYPER_FANG
	db 16, TAKE_DOWN
	db 19, FAINT_ATTACK
	db 23, CRUNCH
	db 27, SUPER_FANG
	db 31, DOUBLE_EDGE
	db 35, EXTREMESPEED
	db 40, AGILITY
	db 45, SWORDS_DANCE
	db  0; no more level-up moves

SpearowEvosAttacks:
	db EVOLVE_LEVEL, 20, FEAROW
FearowEvosAttacks:
	db  0; no more evolutions
	db  1, PECK
	db  1, GROWL
	db  5, LEER
	db  8, PURSUIT
	db 11, FURY_ATTACK
	db 14, SHARPEN
	db 17, TAKE_DOWN
	db 21, WING_ATTACK
	db 25, FOCUS_ENERGY
	db 29, AGILITY
	db 33, SCARY_FACE
	db 38, DRILL_PECK
	db 43, DOUBLE_EDGE
	db 48, SWORDS_DANCE
	db 53, DOUBLE_TEAM
	db 58, SKY_ATTACK
	db  0; no more level-up moves

EkansEvosAttacks:
	db EVOLVE_LEVEL, 22, ARBOK
ArbokEvosAttacks:
	db  0; no more evolutions
	db  1, BIND
	db  1, LEER
	db  4, POISON_STING
	db  8, BITE
	db 12, GLARE
	db 16, SCREECH
	db 20, ACID
	db 25, SLUDGE
	db 30, RECOVER
	db 35, SLUDGE_BOMB
	db 40, HAZE
	db 45, CRUNCH
	db 50, MEDITATE
	db  0; no more level-up moves

PikachuEvosAttacks:
	db EVOLVE_ITEM, THUNDERSTONE, RAICHU
RaichuEvosAttacks:
	db  0; no more evolutions
	db  1, THUNDERSHOCK
	db  1, GROWL
	db  4, TAIL_WHIP
	db  8, THUNDER_WAVE
	db 12, QUICK_ATTACK
	db 16, DOUBLE_TEAM
	db 20, SLAM
	db 24, SPARK
	db 28, AGILITY
	db 32, IRON_TAIL
	db 36, THUNDERBOLT
	db 40, LIGHT_SCREEN
	db 44, THUNDER
	db  0; no more level-up moves

SandshrewEvosAttacks:
	db EVOLVE_LEVEL, 22, SANDSLASH
SandslashEvosAttacks:
	db  0; no more evolutions
	db  1, SCRATCH
	db  1, DEFENSE_CURL
	db  1, SAND_ATTACK
	db  1, POISON_STING
	db  9, ROLLOUT
	db 12, FURY_CUTTER
	db 15, RAPID_SPIN
	db 18, BULLDOZE
	db 22, SWIFT
	db 26, FURY_SWIPES
	db 30, MAGNITUDE
	db 34, SLASH
	db 38, METAL_CLAW
	db 42, DIG
	db 46, SWORDS_DANCE
	db 52, SANDSTORM
	db 56, EARTHQUAKE
	db  0; no more level-up moves

NidoranFEvosAttacks:
	db EVOLVE_LEVEL, 16, NIDORINA
NidorinaEvosAttacks:
	db EVOLVE_ITEM, MOON_STONE, NIDOQUEEN
	db  0; no more evolutions
	db  1, GROWL
	db  1, POISON_STING
	db  5, SCRATCH
	db  8, TAIL_WHIP
	db 11, FURY_SWIPES
	db 14, SPIKES
	db 17, DOUBLE_KICK
	db 21, BITE
	db 25, BULLDOZE
	db 29, TOXIC
	db 43, CRUNCH
	db 47, MAGNITUDE
	db  0; no more level-up moves

NidoqueenEvosAttacks:
	db  0; no more evolutions
	db  1, GROWL
	db  1, POISON_STING
	db  5, SCRATCH
	db  8, TAIL_WHIP
	db 11, FURY_SWIPES
	db 14, SPIKES
	db 17, DOUBLE_KICK
	db 21, BITE
	db 25, BULLDOZE
	db 25, BODY_SLAM
	db 29, TOXIC
	db 43, CRUNCH
	db 47, MAGNITUDE
	db 51, SLAM
	db 55, EARTHQUAKE
	db  0; no more level-up moves

NidoranMEvosAttacks:
	db EVOLVE_LEVEL, 16, NIDORINO
NidorinoEvosAttacks:
	db EVOLVE_ITEM, MOON_STONE, NIDOKING
	db  0; no more evolutions
	db  1, LEER
	db  1, POISON_STING
	db  5, PECK
	db  8, FOCUS_ENERGY
	db 11, FURY_ATTACK
	db 14, SPIKES
	db 17, DOUBLE_KICK
	db 21, HORN_ATTACK
	db 25, BULLDOZE
	db 29, TOXIC
	db 43, MEGAHORN
	db 47, MAGNITUDE
	db  0; no more level-up moves

NidokingEvosAttacks:
	db  0; no more evolutions
	db  1, LEER
	db  1, POISON_STING
	db  5, PECK
	db  8, FOCUS_ENERGY
	db 11, FURY_ATTACK
	db 14, SPIKES
	db 17, DOUBLE_KICK
	db 21, HORN_ATTACK
	db 25, BULLDOZE
	db 25, THRASH
	db 29, TOXIC
	db 43, MEGAHORN
	db 47, MAGNITUDE
	db 51, OUTRAGE
	db 55, EARTHQUAKE
	db  0; no more level-up moves

ClefairyEvosAttacks:
	db EVOLVE_ITEM, MOON_STONE, CLEFABLE
ClefableEvosAttacks:
	db  0; no more evolutions
	db  1, POUND
	db  1, GROWL
	db  4, ENCORE
	db  8, SING
	db 12, DOUBLESLAP
	db 12, FAIRY_WIND
	db 16, MINIMIZE
	db 20, METRONOME
	db 24, PLAY_ROUGH
	db 28, CHARM
	db 32, LIGHT_SCREEN
	db 36, MIMIC
	db 40, MOONLIGHT
	db 45, MOONBLAST
	db 50, DOUBLE_EDGE
	db  0; no more level-up moves

VulpixEvosAttacks:
	db EVOLVE_ITEM, FIRE_STONE, NINETALES
NinetalesEvosAttacks:
	db  0; no more evolutions
	db  1, EMBER
	db  1, TAIL_WHIP
	db  4, DISABLE
	db  8, QUICK_ATTACK
	db 12, SPITE
	db 16, FIRE_SPIN
	db 20, CONFUSE_RAY
	db 24, FLAME_WHEEL
	db 28, PSYBEAM
	db 32, FLAMETHROWER
	db 36, PSYCHIC_M
	db 40, FIRE_BLAST
	db 44, SAFEGUARD
	db 48, FUTURE_SIGHT
	db  0; no more level-up moves

JigglypuffEvosAttacks:
	db EVOLVE_ITEM, MOON_STONE, WIGGLYTUFF
WigglytuffEvosAttacks:
	db  0; no more evolutions
	db  1, POUND
	db  1, SING
	db  4, DEFENSE_CURL
	db  8, CHARM
	db 12, DOUBLESLAP
	db 12, DISABLE
	db 16, MINIMIZE
	db 20, REST
	db 24, PLAY_ROUGH
	db 28, BODY_SLAM
	db 32, RECOVER
	db 36, MIMIC
	db 40, THIEF
	db 45, MOONBLAST
	db 50, DOUBLE_EDGE
	db  0; no more level-up moves

ZubatEvosAttacks:
	db EVOLVE_LEVEL, 22, GOLBAT
GolbatEvosAttacks:
	db EVOLVE_HAPPINESS, TR_ANYTIME, CROBAT
	db  0; no more evolutions
	db  1, LEECH_LIFE
	db  1, SUPERSONIC
	db  5, POISON_STING
	db  8, BITE
	db 11, CONFUSE_RAY
	db 14, MEAN_LOOK
	db 17, SCREECH
	db 20, PROTECT
	db 24, WING_ATTACK
	db 28, AIR_CUTTER
	db 32, CRUNCH
	db 36, HAZE
	db 40, RAZOR_WIND
	db 44, SLUDGE_BOMB
	db  0; no more level-up moves

OddishEvosAttacks:
	db EVOLVE_LEVEL, 21, GLOOM
	db 0 ; no more evolutions
	db 1, ABSORB
	db 7, SWEET_SCENT
	db 14, POISONPOWDER
	db 16, STUN_SPORE
	db 18, SLEEP_POWDER
	db 23, ACID
	db 32, MOONLIGHT
	db 39, PETAL_DANCE
	db 0 ; no more level-up moves

GloomEvosAttacks:
	db EVOLVE_ITEM, LEAF_STONE, VILEPLUME
	db EVOLVE_ITEM, SUN_STONE, BELLOSSOM
	db 0 ; no more evolutions
	db 1, ABSORB
	db 7, SWEET_SCENT
	db 14, POISONPOWDER
	db 16, STUN_SPORE
	db 18, SLEEP_POWDER
	db 24, ACID
	db 35, MOONLIGHT
	db 44, PETAL_DANCE
	db 0 ; no more level-up moves

VileplumeEvosAttacks:
	db 0 ; no more evolutions
	db 1, ABSORB
	db 1, SWEET_SCENT
	db 1, STUN_SPORE
	db 1, PETAL_DANCE
	db 0 ; no more level-up moves

ParasEvosAttacks:
	db EVOLVE_LEVEL, 24, PARASECT
	db 0 ; no more evolutions
	db 1, SCRATCH
	db 7, STUN_SPORE
	db 13, POISONPOWDER
	db 19, LEECH_LIFE
	db 25, SPORE
	db 31, SLASH
	db 37, GROWTH
	db 43, GIGA_DRAIN
	db 0 ; no more level-up moves

ParasectEvosAttacks:
	db 0 ; no more evolutions
	db 1, SCRATCH
	db 7, STUN_SPORE
	db 13, POISONPOWDER
	db 19, LEECH_LIFE
	db 28, SPORE
	db 37, SLASH
	db 46, GROWTH
	db 55, GIGA_DRAIN
	db 0 ; no more level-up moves

VenonatEvosAttacks:
	db EVOLVE_LEVEL, 31, VENOMOTH
	db 0 ; no more evolutions
	db 1, TACKLE
	db 1, DISABLE
	db 1, FORESIGHT
	db 9, SUPERSONIC
	db 17, CONFUSION
	db 20, POISONPOWDER
	db 25, LEECH_LIFE
	db 28, STUN_SPORE
	db 33, PSYBEAM
	db 36, SLEEP_POWDER
	db 41, PSYCHIC_M
	db 0 ; no more level-up moves

VenomothEvosAttacks:
	db 0 ; no more evolutions
	db 1, TACKLE
	db 1, DISABLE
	db 1, FORESIGHT
	db 9, SUPERSONIC
	db 17, CONFUSION
	db 20, POISONPOWDER
	db 25, LEECH_LIFE
	db 28, STUN_SPORE
	db 31, GUST
	db 36, PSYBEAM
	db 42, SLEEP_POWDER
	db 52, PSYCHIC_M
	db 0 ; no more level-up moves

DiglettEvosAttacks:
	db EVOLVE_LEVEL, 26, DUGTRIO
	db 0 ; no more evolutions
	db 1, SCRATCH
	db 5, GROWL
	db 9, MAGNITUDE
	db 17, DIG
	db 25, SAND_ATTACK
	db 33, SLASH
	db 41, EARTHQUAKE
	db 49, FISSURE
	db 0 ; no more level-up moves

DugtrioEvosAttacks:
	db 0 ; no more evolutions
	db 1, SCRATCH
	db 5, GROWL
	db 9, MAGNITUDE
	db 17, DIG
	db 20, TRI_ATTACK
	db 25, SAND_ATTACK
	db 37, SLASH
	db 49, EARTHQUAKE
	db 61, FISSURE
	db 0 ; no more level-up moves

MeowthEvosAttacks:
	db EVOLVE_LEVEL, 28, PERSIAN
	db 0 ; no more evolutions
	db 1, SCRATCH
	db 1, GROWL
	db 11, BITE
	db 20, PAY_DAY
	db 28, FAINT_ATTACK
	db 35, SCREECH
	db 41, FURY_SWIPES
	db 46, SLASH
	db 0 ; no more level-up moves

PersianEvosAttacks:
	db 0 ; no more evolutions
	db 1, SCRATCH
	db 1, GROWL
	db 11, BITE
	db 20, PAY_DAY
	db 29, FAINT_ATTACK
	db 38, SCREECH
	db 46, FURY_SWIPES
	db 53, SLASH
	db 0 ; no more level-up moves

PsyduckEvosAttacks:
	db EVOLVE_LEVEL, 33, GOLDUCK
	db 0 ; no more evolutions
	db 1, SCRATCH
	db 5, TAIL_WHIP
	db 10, DISABLE
	db 16, CONFUSION
	db 23, SCREECH
	db 31, PSYCH_UP
	db 40, FURY_SWIPES
	db 50, HYDRO_PUMP
	db 0 ; no more level-up moves

GolduckEvosAttacks:
	db 0 ; no more evolutions
	db 1, SCRATCH
	db 5, TAIL_WHIP
	db 10, DISABLE
	db 16, CONFUSION
	db 23, SCREECH
	db 31, PSYCH_UP
	db 44, FURY_SWIPES
	db 58, HYDRO_PUMP
	db 0 ; no more level-up moves

MankeyEvosAttacks:
	db EVOLVE_LEVEL, 28, PRIMEAPE
	db 0 ; no more evolutions
	db 1, SCRATCH
	db 1, LEER
	db 9, LOW_KICK
	db 15, KARATE_CHOP
	db 21, FURY_SWIPES
	db 27, FOCUS_ENERGY
	db 33, SEISMIC_TOSS
	db 39, CROSS_CHOP
	db 45, SCREECH
	db 51, THRASH
	db 0 ; no more level-up moves

PrimeapeEvosAttacks:
	db 0 ; no more evolutions
	db 1, SCRATCH
	db 1, LEER
	db 9, LOW_KICK
	db 15, KARATE_CHOP
	db 21, FURY_SWIPES
	db 27, FOCUS_ENERGY
	db 28, RAGE
	db 36, SEISMIC_TOSS
	db 45, CROSS_CHOP
	db 54, SCREECH
	db 63, THRASH
	db 0 ; no more level-up moves

GrowlitheEvosAttacks:
	db EVOLVE_ITEM, FIRE_STONE, ARCANINE
	db 0 ; no more evolutions
	db 1, BITE
	db 1, ROAR
	db 9, EMBER
	db 18, LEER
	db 26, TAKE_DOWN
	db 34, FLAME_WHEEL
	db 42, AGILITY
	db 50, FLAMETHROWER
	db 0 ; no more level-up moves

ArcanineEvosAttacks:
	db 0 ; no more evolutions
	db 1, ROAR
	db 1, LEER
	db 1, TAKE_DOWN
	db 1, FLAME_WHEEL
	db 50, EXTREMESPEED
	db 0 ; no more level-up moves

PoliwagEvosAttacks:
	db EVOLVE_LEVEL, 25, POLIWHIRL
	db 0 ; no more evolutions
	db 1, BUBBLE
	db 7, HYPNOSIS
	db 13, WATER_GUN
	db 19, DOUBLESLAP
	db 25, RAIN_DANCE
	db 31, BODY_SLAM
	db 37, BELLY_DRUM
	db 43, HYDRO_PUMP
	db 0 ; no more level-up moves

PoliwhirlEvosAttacks:
	db EVOLVE_ITEM, WATER_STONE, POLIWRATH
	db EVOLVE_HOLDING, KINGS_ROCK, POLITOED
	db 0 ; no more evolutions
	db 1, BUBBLE
	db 7, HYPNOSIS
	db 13, WATER_GUN
	db 19, DOUBLESLAP
	db 27, RAIN_DANCE
	db 35, BODY_SLAM
	db 43, BELLY_DRUM
	db 51, HYDRO_PUMP
	db 0 ; no more level-up moves

PoliwrathEvosAttacks:
	db 0 ; no more evolutions
	db 1, WATER_GUN
	db 1, HYPNOSIS
	db 1, DOUBLESLAP
	db 1, KARATE_CHOP
	db 35, SUBMISSION
	db 51, MIND_READER
	db 0 ; no more level-up moves

AbraEvosAttacks:
	db EVOLVE_LEVEL, 16, KADABRA
	db 0 ; no more evolutions
	db 1, TELEPORT
	db 0 ; no more level-up moves

KadabraEvosAttacks:
	db EVOLVE_LEVEL, 35, ALAKAZAM
	db 0 ; no more evolutions
	db 1, TELEPORT
	db 1, CONFUSION
	db 16, KINESIS
	db 16, CONFUSION
	db 18, DISABLE
	db 21, PSYBEAM
	db 26, RECOVER
	db 31, FUTURE_SIGHT
	db 38, PSYCHIC_M
	db 45, REFLECT
	db 0 ; no more level-up moves

AlakazamEvosAttacks:
	db 0 ; no more evolutions
	db 1, TELEPORT
	db 1, CONFUSION
	db 16, KINESIS
	db 16, CONFUSION
	db 18, DISABLE
	db 21, PSYBEAM
	db 26, RECOVER
	db 31, FUTURE_SIGHT
	db 38, PSYCHIC_M
	db 45, REFLECT
	db 0 ; no more level-up moves

MachopEvosAttacks:
	db EVOLVE_LEVEL, 28, MACHOKE
	db 0 ; no more evolutions
	db 1, LOW_KICK
	db 1, LEER
	db 7, FOCUS_ENERGY
	db 13, KARATE_CHOP
	db 19, SEISMIC_TOSS
	db 25, FORESIGHT
	db 31, VITAL_THROW
	db 37, CROSS_CHOP
	db 43, SCARY_FACE
	db 49, SUBMISSION
	db 0 ; no more level-up moves

MachokeEvosAttacks:
	db EVOLVE_LEVEL, 39, MACHAMP
	db 0 ; no more evolutions
	db 1, LOW_KICK
	db 1, LEER
	db 8, FOCUS_ENERGY
	db 15, KARATE_CHOP
	db 19, SEISMIC_TOSS
	db 25, FORESIGHT
	db 34, VITAL_THROW
	db 43, CROSS_CHOP
	db 52, SCARY_FACE
	db 61, SUBMISSION
	db 0 ; no more level-up moves

MachampEvosAttacks:
	db 0 ; no more evolutions
	db 1, LOW_KICK
	db 1, LEER
	db 8, FOCUS_ENERGY
	db 15, KARATE_CHOP
	db 19, SEISMIC_TOSS
	db 25, FORESIGHT
	db 34, VITAL_THROW
	db 43, CROSS_CHOP
	db 52, SCARY_FACE
	db 61, SUBMISSION
	db 0 ; no more level-up moves

BellsproutEvosAttacks:
	db EVOLVE_LEVEL, 21, WEEPINBELL
	db 0 ; no more evolutions
	db 1, VINE_WHIP
	db 6, GROWTH
	db 11, WRAP
	db 15, SLEEP_POWDER
	db 17, POISONPOWDER
	db 19, STUN_SPORE
	db 23, ACID
	db 30, SWEET_SCENT
	db 37, RAZOR_LEAF
	db 45, SLAM
	db 0 ; no more level-up moves

WeepinbellEvosAttacks:
	db EVOLVE_ITEM, LEAF_STONE, VICTREEBEL
	db 0 ; no more evolutions
	db 1, VINE_WHIP
	db 6, GROWTH
	db 11, WRAP
	db 15, SLEEP_POWDER
	db 17, POISONPOWDER
	db 19, STUN_SPORE
	db 24, ACID
	db 33, SWEET_SCENT
	db 42, RAZOR_LEAF
	db 54, SLAM
	db 0 ; no more level-up moves

VictreebelEvosAttacks:
	db 0 ; no more evolutions
	db 1, VINE_WHIP
	db 1, SLEEP_POWDER
	db 1, SWEET_SCENT
	db 1, RAZOR_LEAF
	db 0 ; no more level-up moves

TentacoolEvosAttacks:
	db EVOLVE_LEVEL, 30, TENTACRUEL
	db 0 ; no more evolutions
	db 1, POISON_STING
	db 6, SUPERSONIC
	db 12, CONSTRICT
	db 19, ACID
	db 25, BUBBLEBEAM
	db 30, WRAP
	db 36, BARRIER
	db 43, SCREECH
	db 49, HYDRO_PUMP
	db 0 ; no more level-up moves

TentacruelEvosAttacks:
	db 0 ; no more evolutions
	db 1, POISON_STING
	db 6, SUPERSONIC
	db 12, CONSTRICT
	db 19, ACID
	db 25, BUBBLEBEAM
	db 30, WRAP
	db 38, BARRIER
	db 47, SCREECH
	db 55, HYDRO_PUMP
	db 0 ; no more level-up moves

GeodudeEvosAttacks:
	db EVOLVE_LEVEL, 25, GRAVELER
	db 0 ; no more evolutions
	db 1, TACKLE
	db 6, DEFENSE_CURL
	db 11, ROCK_THROW
	db 16, MAGNITUDE
	db 21, SELFDESTRUCT
	db 26, HARDEN
	db 31, ROLLOUT
	db 36, EARTHQUAKE
	db 41, EXPLOSION
	db 0 ; no more level-up moves

GravelerEvosAttacks:
	db EVOLVE_LEVEL, 33, GOLEM
	db 0 ; no more evolutions
	db 1, TACKLE
	db 6, DEFENSE_CURL
	db 11, ROCK_THROW
	db 16, MAGNITUDE
	db 21, SELFDESTRUCT
	db 27, HARDEN
	db 34, ROLLOUT
	db 41, EARTHQUAKE
	db 48, EXPLOSION
	db 0 ; no more level-up moves

GolemEvosAttacks:
	db 0 ; no more evolutions
	db 1, TACKLE
	db 6, DEFENSE_CURL
	db 11, ROCK_THROW
	db 16, MAGNITUDE
	db 21, SELFDESTRUCT
	db 27, HARDEN
	db 34, ROLLOUT
	db 41, EARTHQUAKE
	db 48, EXPLOSION
	db 0 ; no more level-up moves

PonytaEvosAttacks:
	db EVOLVE_LEVEL, 40, RAPIDASH
	db 0 ; no more evolutions
	db 1, TACKLE
	db 4, GROWL
	db 8, TAIL_WHIP
	db 13, EMBER
	db 19, STOMP
	db 26, FIRE_SPIN
	db 34, TAKE_DOWN
	db 43, AGILITY
	db 53, FIRE_BLAST
	db 0 ; no more level-up moves

RapidashEvosAttacks:
	db 0 ; no more evolutions
	db 1, TACKLE
	db 4, GROWL
	db 8, TAIL_WHIP
	db 13, EMBER
	db 19, STOMP
	db 26, FIRE_SPIN
	db 34, TAKE_DOWN
	db 40, FURY_ATTACK
	db 47, AGILITY
	db 61, FIRE_BLAST
	db 0 ; no more level-up moves

SlowpokeEvosAttacks:
	db EVOLVE_LEVEL, 37, SLOWBRO
	db EVOLVE_HOLDING, KINGS_ROCK, SLOWKING
	db 0 ; no more evolutions
	db 1, CURSE
	db 1, TACKLE
	db 6, GROWL
	db 15, WATER_GUN
	db 20, CONFUSION
	db 29, DISABLE
	db 34, HEADBUTT
	db 43, AMNESIA
	db 48, PSYCHIC_M
	db 0 ; no more level-up moves

SlowbroEvosAttacks:
	db 0 ; no more evolutions
	db 1, CURSE
	db 1, TACKLE
	db 6, GROWL
	db 15, WATER_GUN
	db 20, CONFUSION
	db 29, DISABLE
	db 34, HEADBUTT
	db 37, WITHDRAW
	db 46, AMNESIA
	db 54, PSYCHIC_M
	db 0 ; no more level-up moves

MagnemiteEvosAttacks:
	db EVOLVE_LEVEL, 30, MAGNETON
	db 0 ; no more evolutions
	db 1, TACKLE
	db 6, THUNDERSHOCK
	db 11, SUPERSONIC
	db 16, SONICBOOM
	db 21, THUNDER_WAVE
	db 27, LOCK_ON
	db 33, SWIFT
	db 39, SCREECH
	db 45, ZAP_CANNON
	db 0 ; no more level-up moves

MagnetonEvosAttacks:
	db 0 ; no more evolutions
	db 1, TACKLE
	db 6, THUNDERSHOCK
	db 11, SUPERSONIC
	db 16, SONICBOOM
	db 21, THUNDER_WAVE
	db 27, LOCK_ON
	db 35, TRI_ATTACK
	db 43, SCREECH
	db 53, ZAP_CANNON
	db 0 ; no more level-up moves

FarfetchDEvosAttacks:
	db 0 ; no more evolutions
	db 1, PECK
	db 7, SAND_ATTACK
	db 13, LEER
	db 19, FURY_ATTACK
	db 25, SWORDS_DANCE
	db 31, AGILITY
	db 37, SLASH
	db 44, FALSE_SWIPE
	db 0 ; no more level-up moves

DoduoEvosAttacks:
	db EVOLVE_LEVEL, 31, DODRIO
	db 0 ; no more evolutions
	db 1, PECK
	db 1, GROWL
	db 9, PURSUIT
	db 13, FURY_ATTACK
	db 21, TRI_ATTACK
	db 25, RAGE
	db 33, DRILL_PECK
	db 37, AGILITY
	db 37, JUMP_KICK
	db 0 ; no more level-up moves

DodrioEvosAttacks:
	db 0 ; no more evolutions
	db 1, PECK
	db 1, GROWL
	db 9, PURSUIT
	db 13, FURY_ATTACK
	db 21, TRI_ATTACK
	db 25, RAGE
	db 38, DRILL_PECK
	db 47, AGILITY
	db 37, JUMP_KICK
	db 0 ; no more level-up moves

SeelEvosAttacks:
	db EVOLVE_LEVEL, 34, DEWGONG
	db 0 ; no more evolutions
	db 1, HEADBUTT
	db 5, GROWL
	db 16, AURORA_BEAM
	db 21, REST
	db 32, TAKE_DOWN
	db 37, ICE_BEAM
	db 48, SAFEGUARD
	db 0 ; no more level-up moves

DewgongEvosAttacks:
	db 0 ; no more evolutions
	db 1, HEADBUTT
	db 5, GROWL
	db 16, AURORA_BEAM
	db 21, REST
	db 32, TAKE_DOWN
	db 43, ICE_BEAM
	db 60, SAFEGUARD
	db 0 ; no more level-up moves

GrimerEvosAttacks:
	db EVOLVE_LEVEL, 38, MUK
	db 0 ; no more evolutions
	db 1, POISON_GAS
	db 1, POUND
	db 5, HARDEN
	db 10, DISABLE
	db 16, SLUDGE
	db 23, MINIMIZE
	db 31, SCREECH
	db 40, ACID_ARMOR
	db 50, SLUDGE_BOMB
	db 0 ; no more level-up moves

MukEvosAttacks:
	db 0 ; no more evolutions
	; moves are not sorted by level
	db 1, POISON_GAS
	db 1, POUND
	db 5, HARDEN
	db 10, DISABLE
	db 16, SLUDGE
	db 23, MINIMIZE
	db 31, SCREECH
	db 45, ACID_ARMOR
	db 60, SLUDGE_BOMB
	db 0 ; no more level-up moves

ShellderEvosAttacks:
	db EVOLVE_ITEM, WATER_STONE, CLOYSTER
	db 0 ; no more evolutions
	db 1, TACKLE
	db 1, WITHDRAW
	db 9, SUPERSONIC
	db 17, AURORA_BEAM
	db 25, PROTECT
	db 33, LEER
	db 41, CLAMP
	db 49, ICE_BEAM
	db 0 ; no more level-up moves

CloysterEvosAttacks:
	db 0 ; no more evolutions
	db 1, WITHDRAW
	db 1, SUPERSONIC
	db 1, AURORA_BEAM
	db 1, PROTECT
	db 33, SPIKES
	db 41, SPIKE_CANNON
	db 0 ; no more level-up moves

GastlyEvosAttacks:
	db EVOLVE_LEVEL, 25, HAUNTER
	db 0 ; no more evolutions
	db 1, HYPNOSIS
	db 1, LICK
	db 8, SPITE
	db 13, MEAN_LOOK
	db 16, CURSE
	db 21, NIGHT_SHADE
	db 28, CONFUSE_RAY
	db 33, DREAM_EATER
	db 36, DESTINY_BOND
	db 0 ; no more level-up moves

HaunterEvosAttacks:
	db EVOLVE_LEVEL, 35, GENGAR
	db 0 ; no more evolutions
	db 1, HYPNOSIS
	db 1, LICK
	db 8, SPITE
	db 13, MEAN_LOOK
	db 16, CURSE
	db 21, NIGHT_SHADE
	db 31, CONFUSE_RAY
	db 39, DREAM_EATER
	db 48, DESTINY_BOND
	db 0 ; no more level-up moves

GengarEvosAttacks:
	db 0 ; no more evolutions
	db 1, HYPNOSIS
	db 1, LICK
	db 8, SPITE
	db 13, MEAN_LOOK
	db 16, CURSE
	db 21, NIGHT_SHADE
	db 31, CONFUSE_RAY
	db 39, DREAM_EATER
	db 48, DESTINY_BOND
	db 0 ; no more level-up moves

OnixEvosAttacks:
	db EVOLVE_HOLDING, METAL_COAT, STEELIX
	db 0 ; no more evolutions
	db 1, TACKLE
	db 1, SCREECH
	db 10, BIND
	db 14, ROCK_THROW
	db 23, HARDEN
	db 27, RAGE
	db 36, SANDSTORM
	db 40, SLAM
	db 0 ; no more level-up moves

DrowzeeEvosAttacks:
	db EVOLVE_LEVEL, 26, HYPNO
	db 0 ; no more evolutions
	db 1, POUND
	db 1, HYPNOSIS
	db 10, DISABLE
	db 18, CONFUSION
	db 25, HEADBUTT
	db 31, POISON_GAS
	db 36, MEDITATE
	db 40, PSYCHIC_M
	db 43, PSYCH_UP
	db 45, FUTURE_SIGHT
	db 0 ; no more level-up moves

HypnoEvosAttacks:
	db 0 ; no more evolutions
	db 1, POUND
	db 1, HYPNOSIS
	db 10, DISABLE
	db 18, CONFUSION
	db 25, HEADBUTT
	db 33, POISON_GAS
	db 40, MEDITATE
	db 49, PSYCHIC_M
	db 55, PSYCH_UP
	db 60, FUTURE_SIGHT
	db 0 ; no more level-up moves

KrabbyEvosAttacks:
	db EVOLVE_LEVEL, 28, KINGLER
	db 0 ; no more evolutions
	db 1, BUBBLE
	db 5, LEER
	db 12, CLAMP
	db 16, HARDEN
	db 23, STOMP
	db 27, CLAMP
	db 34, PROTECT
	db 41, CRABHAMMER
	db 0 ; no more level-up moves

KinglerEvosAttacks:
	db 0 ; no more evolutions
	db 1, BUBBLE
	db 5, LEER
	db 12, CLAMP
	db 16, HARDEN
	db 23, STOMP
	db 27, CLAMP
	db 38, PROTECT
	db 49, CRABHAMMER
	db 0 ; no more level-up moves

VoltorbEvosAttacks:
	db EVOLVE_LEVEL, 30, ELECTRODE
	db 0 ; no more evolutions
	db 1, TACKLE
	db 9, SCREECH
	db 17, SONICBOOM
	db 23, SELFDESTRUCT
	db 29, ROLLOUT
	db 33, LIGHT_SCREEN
	db 37, SWIFT
	db 39, EXPLOSION
	db 41, MIRROR_COAT
	db 0 ; no more level-up moves

ElectrodeEvosAttacks:
	db 0 ; no more evolutions
	db 1, TACKLE
	db 9, SCREECH
	db 17, SONICBOOM
	db 23, SELFDESTRUCT
	db 29, ROLLOUT
	db 34, LIGHT_SCREEN
	db 40, SWIFT
	db 44, EXPLOSION
	db 48, MIRROR_COAT
	db 0 ; no more level-up moves

ExeggcuteEvosAttacks:
	db EVOLVE_ITEM, LEAF_STONE, EXEGGUTOR
	db 0 ; no more evolutions
	db 1, BULLET_SEED
	db 1, HYPNOSIS
	db 7, REFLECT
	db 13, LEECH_SEED
	db 19, CONFUSION
	db 25, STUN_SPORE
	db 31, POISONPOWDER
	db 37, SLEEP_POWDER
	db 43, SOLARBEAM
	db 0 ; no more level-up moves

ExeggutorEvosAttacks:
	db 0 ; no more evolutions
	db 1, BULLET_SEED
	db 1, HYPNOSIS
	db 1, CONFUSION
	db 19, STOMP
	db 31, EGG_BOMB
	db 0 ; no more level-up moves

CuboneEvosAttacks:
	db EVOLVE_LEVEL, 28, MAROWAK
	db 0 ; no more evolutions
	db 1, GROWL
	db 5, TAIL_WHIP
	db 9, BONE_CLUB
	db 13, HEADBUTT
	db 17, LEER
	db 21, FOCUS_ENERGY
	db 25, BONEMERANG
	db 29, RAGE
	db 33, FALSE_SWIPE
	db 37, THRASH
	db 41, BULLDOZE
	db 0 ; no more level-up moves

MarowakEvosAttacks:
	db 0 ; no more evolutions
	db 1, GROWL
	db 5, TAIL_WHIP
	db 9, BONE_CLUB
	db 13, HEADBUTT
	db 17, LEER
	db 21, FOCUS_ENERGY
	db 25, BONEMERANG
	db 32, RAGE
	db 39, FALSE_SWIPE
	db 46, THRASH
	db 53, BULLDOZE
	db 0 ; no more level-up moves

HitmonleeEvosAttacks:
	db 0 ; no more evolutions
	db 1, DOUBLE_KICK
	db 6, MEDITATE
	db 11, LOW_KICK
	db 16, JUMP_KICK
	db 21, FOCUS_ENERGY
	db 26, HI_JUMP_KICK
	db 31, MIND_READER
	db 36, FORESIGHT
	db 41, ENDURE
	db 51, REVERSAL
	db 0 ; no more level-up moves

HitmonchanEvosAttacks:
	db 0 ; no more evolutions
	db 1, POUND
	db 7, AGILITY
	db 13, PURSUIT
	db 26, THUNDERPUNCH
	db 26, ICE_PUNCH
	db 26, FIRE_PUNCH
	db 32, MACH_PUNCH
	db 38, SLAM
	db 44, DETECT
	db 50, COUNTER
	db 0 ; no more level-up moves

LickitungEvosAttacks:
	db 0 ; no more evolutions
	db 1, LICK
	db 7, SUPERSONIC
	db 13, DEFENSE_CURL
	db 19, STOMP
	db 25, WRAP
	db 31, DISABLE
	db 37, SLAM
	db 43, SCREECH
	db 0 ; no more level-up moves

KoffingEvosAttacks:
	db EVOLVE_LEVEL, 35, WEEZING
	db 0 ; no more evolutions
	db 1, POISON_GAS
	db 1, TACKLE
	db 9, SMOG
	db 17, SELFDESTRUCT
	db 21, SLUDGE
	db 25, SMOKESCREEN
	db 33, HAZE
	db 41, EXPLOSION
	db 45, DESTINY_BOND
	db 0 ; no more level-up moves

WeezingEvosAttacks:
	db 0 ; no more evolutions
	db 1, POISON_GAS
	db 1, TACKLE
	db 9, SMOG
	db 17, SELFDESTRUCT
	db 21, SLUDGE
	db 25, SMOKESCREEN
	db 33, HAZE
	db 44, EXPLOSION
	db 51, DESTINY_BOND
	db 0 ; no more level-up moves

RhyhornEvosAttacks:
	db EVOLVE_LEVEL, 42, RHYDON
	db 0 ; no more evolutions
	db 1, HORN_ATTACK
	db 1, TAIL_WHIP
	db 13, STOMP
	db 19, FURY_ATTACK
	db 31, SCARY_FACE
	db 49, TAKE_DOWN
	db 55, EARTHQUAKE
	db 0 ; no more level-up moves

RhydonEvosAttacks:
	db 0 ; no more evolutions
	db 1, HORN_ATTACK
	db 1, TAIL_WHIP
	db 13, STOMP
	db 19, FURY_ATTACK
	db 31, SCARY_FACE
	db 54, TAKE_DOWN
	db 65, EARTHQUAKE
	db 0 ; no more level-up moves

ChanseyEvosAttacks:
	db EVOLVE_HAPPINESS, TR_ANYTIME, BLISSEY
	db 0 ; no more evolutions
	db 1, POUND
	db 5, GROWL
	db 9, TAIL_WHIP
	db 13, SOFTBOILED
	db 17, DOUBLESLAP
	db 23, MINIMIZE
	db 29, SING
	db 35, EGG_BOMB
	db 41, DEFENSE_CURL
	db 49, LIGHT_SCREEN
	db 57, DOUBLE_EDGE
	db 0 ; no more level-up moves

TangelaEvosAttacks:
	db 0 ; no more evolutions
	db 1, CONSTRICT
	db 4, SLEEP_POWDER
	db 10, ABSORB
	db 13, POISONPOWDER
	db 19, VINE_WHIP
	db 25, BIND
	db 31, MEGA_DRAIN
	db 34, STUN_SPORE
	db 40, SLAM
	db 46, GROWTH
	db 0 ; no more level-up moves

KangaskhanEvosAttacks:
	db 0 ; no more evolutions
	db 1, RAGE
	db 7, LEER
	db 13, BITE
	db 19, TAIL_WHIP
	db 25, KARATE_CHOP
	db 31, BODY_SLAM
	db 37, ENDURE
	db 43, DIZZY_PUNCH
	db 49, REVERSAL
	db 0 ; no more level-up moves

HorseaEvosAttacks:
	db EVOLVE_LEVEL, 32, SEADRA
	db 0 ; no more evolutions
	db 1, BUBBLE
	db 8, SMOKESCREEN
	db 15, LEER
	db 22, WATER_GUN
	db 29, TWISTER
	db 36, AGILITY
	db 43, HYDRO_PUMP
	db 0 ; no more level-up moves

SeadraEvosAttacks:
	db EVOLVE_HOLDING, DRAGON_SCALE, KINGDRA
	db 0 ; no more evolutions
	db 1, BUBBLE
	db 8, SMOKESCREEN
	db 15, LEER
	db 22, WATER_GUN
	db 29, TWISTER
	db 40, AGILITY
	db 51, HYDRO_PUMP
	db 0 ; no more level-up moves

GoldeenEvosAttacks:
	db EVOLVE_LEVEL, 33, SEAKING
	db 0 ; no more evolutions
	db 1, PECK
	db 1, TAIL_WHIP
	db 10, SUPERSONIC
	db 15, HORN_ATTACK
	db 24, FLAIL
	db 29, FURY_ATTACK
	db 38, WATERFALL
	db 52, AGILITY
	db 0 ; no more level-up moves

SeakingEvosAttacks:
	db 0 ; no more evolutions
	db 1, PECK
	db 1, TAIL_WHIP
	db 10, SUPERSONIC
	db 15, HORN_ATTACK
	db 24, FLAIL
	db 29, FURY_ATTACK
	db 41, WATERFALL
	db 61, AGILITY
	db 0 ; no more level-up moves

StaryuEvosAttacks:
	db EVOLVE_ITEM, WATER_STONE, STARMIE
	db 0 ; no more evolutions
	db 1, TACKLE
	db 1, HARDEN
	db 7, WATER_GUN
	db 13, RAPID_SPIN
	db 19, RECOVER
	db 25, SWIFT
	db 31, BUBBLEBEAM
	db 37, MINIMIZE
	db 43, LIGHT_SCREEN
	db 50, HYDRO_PUMP
	db 0 ; no more level-up moves

StarmieEvosAttacks:
	db 0 ; no more evolutions
	db 1, TACKLE
	db 1, RAPID_SPIN
	db 1, RECOVER
	db 1, BUBBLEBEAM
	db 37, CONFUSE_RAY
	db 0 ; no more level-up moves

MrMimeEvosAttacks:
	db 0 ; no more evolutions
	db 1, BARRIER
	db 6, CONFUSION
	db 11, SUBSTITUTE
	db 16, MEDITATE
	db 21, DOUBLESLAP
	db 26, LIGHT_SCREEN
	db 26, REFLECT
	db 31, ENCORE
	db 36, PSYBEAM
	db 41, BATON_PASS
	db 46, SAFEGUARD
	db 0 ; no more level-up moves

ScytherEvosAttacks:
	db EVOLVE_HOLDING, METAL_COAT, SCIZOR
	db 0 ; no more evolutions
	db 1, QUICK_ATTACK
	db 1, LEER
	db 6, FOCUS_ENERGY
	db 12, PURSUIT
	db 18, FALSE_SWIPE
	db 24, AGILITY
	db 30, WING_ATTACK
	db 36, SLASH
	db 42, SWORDS_DANCE
	db 48, DOUBLE_TEAM
	db 0 ; no more level-up moves

JynxEvosAttacks:
	db 0 ; no more evolutions
	db 1, POUND
	db 1, LICK
	db 9, LOVELY_KISS
	db 13, POWDER_SNOW
	db 21, DOUBLESLAP
	db 25, ICE_PUNCH
	db 35, MEAN_LOOK
	db 41, BODY_SLAM
	db 51, PERISH_SONG
	db 57, BLIZZARD
	db 0 ; no more level-up moves

ElectabuzzEvosAttacks:
	db 0 ; no more evolutions
	db 1, QUICK_ATTACK
	db 1, LEER
	db 9, THUNDERPUNCH
	db 17, LIGHT_SCREEN
	db 25, SWIFT
	db 36, SCREECH
	db 47, THUNDERBOLT
	db 58, THUNDER
	db 0 ; no more level-up moves

MagmarEvosAttacks:
	db 0 ; no more evolutions
	db 1, EMBER
	db 1, LEER
	db 13, SMOG
	db 19, FIRE_PUNCH
	db 25, SMOKESCREEN
	db 33, SUNNY_DAY
	db 41, FLAMETHROWER
	db 49, CONFUSE_RAY
	db 57, FIRE_BLAST
	db 0 ; no more level-up moves

PinsirEvosAttacks:
	db 0 ; no more evolutions
	db 1, BIND
	db 7, FOCUS_ENERGY
	db 13, MEDITATE
	db 19, SEISMIC_TOSS
	db 25, SLASH
	db 31, LEECH_LIFE
	db 37, SUBMISSION
	db 43, SWORDS_DANCE
	db 0 ; no more level-up moves

TaurosEvosAttacks:
	db 0 ; no more evolutions
	db 1, TACKLE
	db 4, TAIL_WHIP
	db 8, RAGE
	db 13, HORN_ATTACK
	db 19, SCARY_FACE
	db 26, PURSUIT
	db 34, REST
	db 43, THRASH
	db 53, TAKE_DOWN
	db 0 ; no more level-up moves

MagikarpEvosAttacks:
	db EVOLVE_LEVEL, 20, GYARADOS
	db 0 ; no more evolutions
	db 1, TACKLE
	db 10, FLAIL
	db 20, WATERFALL
	db 0 ; no more level-up moves

GyaradosEvosAttacks:
	db 0 ; no more evolutions
	db 1, THRASH
	db 20, BITE
	db 25, DRAGON_RAGE
	db 30, LEER
	db 35, TWISTER
	db 40, HYDRO_PUMP
	db 45, RAIN_DANCE
	db 50, GIGA_IMPACT
	db 0 ; no more level-up moves

LaprasEvosAttacks:
	db 0 ; no more evolutions
	db 1, WATER_GUN
	db 1, GROWL
	db 1, SING
	db 8, MIST
	db 15, BODY_SLAM
	db 22, CONFUSE_RAY
	db 29, PERISH_SONG
	db 36, ICE_BEAM
	db 43, RAIN_DANCE
	db 50, SAFEGUARD
	db 57, HYDRO_PUMP
	db 0 ; no more level-up moves

DittoEvosAttacks:
	db 0 ; no more evolutions
	db 1, TRANSFORM
	db 0 ; no more level-up moves

EeveeEvosAttacks:
	db EVOLVE_ITEM, THUNDERSTONE, JOLTEON
	db EVOLVE_ITEM, WATER_STONE, VAPOREON
	db EVOLVE_ITEM, FIRE_STONE, FLAREON
	db EVOLVE_HAPPINESS, TR_MORNDAY, ESPEON
	db EVOLVE_HAPPINESS, TR_NITE, UMBREON
	db 0 ; no more evolutions
	db 1, TACKLE
	db 1, TAIL_WHIP
	db 8, SAND_ATTACK
	db 16, GROWL
	db 23, QUICK_ATTACK
	db 30, BITE
	db 36, BATON_PASS
	db 42, TAKE_DOWN
	db 0 ; no more level-up moves

VaporeonEvosAttacks:
	db 0 ; no more evolutions
	db 1, TACKLE
	db 1, TAIL_WHIP
	db 8, SAND_ATTACK
	db 16, WATER_GUN
	db 23, QUICK_ATTACK
	db 30, BITE
	db 36, AURORA_BEAM
	db 42, HAZE
	db 47, ACID_ARMOR
	db 52, HYDRO_PUMP
	db 0 ; no more level-up moves

JolteonEvosAttacks:
	db 0 ; no more evolutions
	db 1, TACKLE
	db 1, TAIL_WHIP
	db 8, SAND_ATTACK
	db 16, THUNDERSHOCK
	db 23, QUICK_ATTACK
	db 30, DOUBLE_KICK
	db 36, PIN_MISSILE
	db 42, THUNDER_WAVE
	db 47, AGILITY
	db 52, THUNDER
	db 0 ; no more level-up moves

FlareonEvosAttacks:
	db 0 ; no more evolutions
	db 1, TACKLE
	db 1, TAIL_WHIP
	db 8, SAND_ATTACK
	db 16, EMBER
	db 23, QUICK_ATTACK
	db 30, BITE
	db 36, FIRE_SPIN
	db 42, SMOG
	db 47, LEER
	db 52, FLAMETHROWER
	db 0 ; no more level-up moves

PorygonEvosAttacks:
	db EVOLVE_ITEM, UP_GRADE, PORYGON2
	db 0 ; no more evolutions
	db 1, CONVERSION2
	db 1, TACKLE
	db 1, CONVERSION
	db 9, AGILITY
	db 12, PSYBEAM
	db 20, RECOVER
	db 24, SHARPEN
	db 32, LOCK_ON
	db 36, TRI_ATTACK
	db 44, ZAP_CANNON
	db 0 ; no more level-up moves

OmanyteEvosAttacks:
	db EVOLVE_LEVEL, 40, OMASTAR
	db 0 ; no more evolutions
	db 1, CONSTRICT
	db 1, WITHDRAW
	db 13, BITE
	db 19, WATER_GUN
	db 31, LEER
	db 37, PROTECT
	db 49, ANCIENTPOWER
	db 55, HYDRO_PUMP
	db 0 ; no more level-up moves

OmastarEvosAttacks:
	db 0 ; no more evolutions
	db 1, CONSTRICT
	db 1, WITHDRAW
	db 13, BITE
	db 19, WATER_GUN
	db 31, LEER
	db 37, PROTECT
	db 40, SPIKE_CANNON
	db 54, ANCIENTPOWER
	db 65, HYDRO_PUMP
	db 0 ; no more level-up moves

KabutoEvosAttacks:
	db EVOLVE_LEVEL, 40, KABUTOPS
	db 0 ; no more evolutions
	db 1, SCRATCH
	db 1, HARDEN
	db 10, ABSORB
	db 19, LEER
	db 28, SAND_ATTACK
	db 37, ENDURE
	db 46, MEGA_DRAIN
	db 55, ANCIENTPOWER
	db 0 ; no more level-up moves

KabutopsEvosAttacks:
	db 0 ; no more evolutions
	db 1, SCRATCH
	db 1, HARDEN
	db 10, ABSORB
	db 19, LEER
	db 28, SAND_ATTACK
	db 37, ENDURE
	db 40, SLASH
	db 51, MEGA_DRAIN
	db 65, ANCIENTPOWER
	db 0 ; no more level-up moves

AerodactylEvosAttacks:
	db 0 ; no more evolutions
	db 1, WING_ATTACK
	db 8, AGILITY
	db 15, BITE
	db 22, SUPERSONIC
	db 29, ANCIENTPOWER
	db 36, SCARY_FACE
	db 43, TAKE_DOWN
	db 50, GIGA_IMPACT
	db 0 ; no more level-up moves

SnorlaxEvosAttacks:
	db 0 ; no more evolutions
	db 1, TACKLE
	db 8, AMNESIA
	db 15, DEFENSE_CURL
	db 22, BELLY_DRUM
	db 29, HEADBUTT
	db 36, SNORE
	db 36, REST
	db 43, BODY_SLAM
	db 50, ROLLOUT
	db 57, GIGA_IMPACT
	db 0 ; no more level-up moves

ArticunoEvosAttacks:
	db 0 ; no more evolutions
	db 1, GUST
	db 1, POWDER_SNOW
	db 13, MIST
	db 25, AGILITY
	db 37, MIND_READER
	db 49, ICE_BEAM
	db 61, REFLECT
	db 73, BLIZZARD
	db 0 ; no more level-up moves

ZapdosEvosAttacks:
	db 0 ; no more evolutions
	db 1, PECK
	db 1, THUNDERSHOCK
	db 13, THUNDER_WAVE
	db 25, AGILITY
	db 37, DETECT
	db 49, DRILL_PECK
	db 61, LIGHT_SCREEN
	db 73, THUNDER
	db 0 ; no more level-up moves

MoltresEvosAttacks:
	db 0 ; no more evolutions
	db 1, WING_ATTACK
	db 1, EMBER
	db 13, FIRE_SPIN
	db 25, AGILITY
	db 37, ENDURE
	db 49, FLAMETHROWER
	db 61, SAFEGUARD
	db 73, SKY_ATTACK
	db 0 ; no more level-up moves

DratiniEvosAttacks:
	db EVOLVE_LEVEL, 30, DRAGONAIR
	db 0 ; no more evolutions
	db 1, WRAP
	db 1, LEER
	db 8, THUNDER_WAVE
	db 15, TWISTER
	db 22, DRAGON_RAGE
	db 29, SLAM
	db 36, AGILITY
	db 43, SAFEGUARD
	db 50, OUTRAGE
	db 57, HYPER_BEAM
	db 57, GIGA_IMPACT
	db 0 ; no more level-up moves

DragonairEvosAttacks:
	db EVOLVE_LEVEL, 55, DRAGONITE
	db 0 ; no more evolutions
	db 1, WRAP
	db 1, LEER
	db 8, THUNDER_WAVE
	db 15, TWISTER
	db 22, DRAGON_RAGE
	db 29, SLAM
	db 38, AGILITY
	db 47, SAFEGUARD
	db 56, OUTRAGE
	db 65, HYPER_BEAM
	db 65, GIGA_IMPACT
	db 0 ; no more level-up moves

DragoniteEvosAttacks:
	db 0 ; no more evolutions
	db 1, WRAP
	db 1, LEER
	db 8, THUNDER_WAVE
	db 15, TWISTER
	db 22, DRAGON_RAGE
	db 29, SLAM
	db 38, AGILITY
	db 47, SAFEGUARD
	db 55, WING_ATTACK
	db 61, OUTRAGE
	db 75, HYPER_BEAM
	db 75, GIGA_IMPACT
	db 0 ; no more level-up moves

MewtwoEvosAttacks:
	db 0 ; no more evolutions
	db 1, CONFUSION
	db 1, DISABLE
	db 11, BARRIER
	db 22, SWIFT
	db 33, PSYCH_UP
	db 44, FUTURE_SIGHT
	db 55, MIST
	db 66, PSYCHIC_M
	db 77, AMNESIA
	db 88, RECOVER
	db 99, SAFEGUARD
	db 0 ; no more level-up moves

MewEvosAttacks:
	db 0 ; no more evolutions
	db 1, POUND
	db 10, CONFUSION
	db 20, HIDDEN_POWER
	db 30, RECOVER
	db 40, ANCIENTPOWER
	db 50, PSYCHIC_M
	db 0 ; no more level-up moves

ChikoritaEvosAttacks:
	db EVOLVE_LEVEL, 16, BAYLEEF
BayleefEvosAttacks:
	db EVOLVE_LEVEL, 32, MEGANIUM
MeganiumEvosAttacks:
	db  0; no more evolutions
	db  1, TACKLE
	db  1, GROWL
	db  6, VINE_WHIP
	db  9, SWEET_SCENT
	db 12, LEECH_SEED
	db 15, BIND
	db 19, RAZOR_LEAF
	db 23, REFLECT
	db 23, LIGHT_SCREEN
	db 27, CONSTRICT
	db 31, BODY_SLAM
	db 35, SYNTHESIS
	db 40, GROWTH
	db 45, ANCIENTPOWER
	db 50, SAFEGUARD
	db 55, PETAL_DANCE
	db 60, SOLARBEAM
	db 65, PRIMAL_PLANT
	db  0; no more level-up moves

CyndaquilEvosAttacks:
	db EVOLVE_LEVEL, 14, QUILAVA
QuilavaEvosAttacks:
	db EVOLVE_LEVEL, 36, TYPHLOSION
TyphlosionEvosAttacks:
	db  0; no more evolutions
	db  1, TACKLE
	db  1, LEER
	db  6, EMBER
	db  9, SMOKESCREEN
	db 12, QUICK_ATTACK
	db 16, FIRE_SPIN
	db 20, FLAME_WHEEL
	db 24, DEFENSE_CURL
	db 24, ROLLOUT
	db 28, HAZE
	db 32, SWIFT
	db 34, FLAMETHROWER
	db 39, SUNNY_DAY
	db 44, FIRE_PUNCH
	db 49, THUNDERPUNCH
	db 54, BULLDOZE
	db 59, FIRE_BLAST
	db 64, ERUPTION
	db  0; no more level-up moves

TotodileEvosAttacks:
	db EVOLVE_LEVEL, 18, CROCONAW
CroconawEvosAttacks:
	db EVOLVE_LEVEL, 30, FERALIGATR
FeraligatrEvosAttacks:
	db  0; no more evolutions
	db  1, SCRATCH
	db  1, LEER
	db  6, WATER_GUN
	db  9, RAGE
	db 12, BITE
	db 16, CLAMP
	db 19, FLAIL
	db 23, MEDITATE
	db 27, SCARY_FACE
	db 30, SLASH
	db 35, SCREECH
	db 35, SWORDS_DANCE
	db 40, CRUNCH
	db 45, ICE_PUNCH
	db 50, DRAGON_DANCE
	db 55, THRASH
	db 60, HYDRO_PUMP
	db 65, CROC_CHOMP
	db  0; no more level-up moves

SentretEvosAttacks:
	db EVOLVE_LEVEL, 15, FURRET
FurretEvosAttacks:
	db  0; no more evolutions
	db  1, TACKLE
	db  4, DEFENSE_CURL
	db  7, QUICK_ATTACK
	db 10, FURY_SWIPES
	db 13, FLAIL
	db 17, MEDITATE
	db 21, SLAM
	db 25, REST
	db 29, TAKE_DOWN
	db 33, AMNESIA
	db 37, BATON_PASS
	db 41, DOUBLE_EDGE
	db 45, PLAY_ROUGH
	db  0; no more level-up moves

HoothootEvosAttacks:
	db EVOLVE_LEVEL, 20, NOCTOWL
NoctowlEvosAttacks:
	db  0 ; no more evolutions
	db  1, TACKLE
	db  1, GROWL
	db  3, PECK
	db  6, FORESIGHT
	db  9, GUST
	db 12, CONFUSION
	db 15, REFLECT
	db 18, AIR_CUTTER
	db 22, HYPNOSIS
	db 26, PSYBEAM
	db 30, DREAM_EATER
	db 34, LIGHT_SCREEN
	db 38, CONFUSE_RAY
	db 42, PSYCHIC_M
	db 46, RAZOR_WIND
	db 50, MOONBLAST
	db  0; no more level-up moves

LedybaEvosAttacks:
	db EVOLVE_LEVEL, 18, LEDIAN
LedianEvosAttacks:
	db  0; no more evolutions
	db  1, TACKLE
	db  8, SUPERSONIC
	db 11, CONFUSION
	db 14, FAIRY_WIND
	db 17, AIR_CUTTER
	db 21, LIGHT_SCREEN
	db 21, REFLECT
	db 21, SAFEGUARD
	db 25, SWIFT
	db 29, SUPERSONIC
	db 33, AGILITY
	db 37, PSYCHIC_M
	db 41, MOONBLAST
	db 45, RAZOR_WIND
	db  0; no more level-up moves

SpinarakEvosAttacks:
	db EVOLVE_LEVEL, 22, ARIADOS
AriadosEvosAttacks:
	db  0; no more evolutions
	db  1, POISON_STING
	db  1, STRING_SHOT
	db  5, SCARY_FACE
	db  8, BIND
	db 11, CONSTRICT
	db 14, NIGHT_SHADE
	db 17, LEECH_LIFE
	db 20, SPIDER_WEB
	db 24, BITE
	db 28, PIN_MISSILE
	db 32, SLUDGE
	db 36, CONFUSE_RAY
	db 40, TWINEEDLE
	db 44, AGILITY
	db 48, X_SCISSOR
	db 52, SHADOW_BALL
	db  0; no more level-up moves

CrobatEvosAttacks:
	db  0; no more evolutions
	db  1, LEECH_LIFE
	db  1, SUPERSONIC
	db  5, POISON_STING
	db  8, BITE
	db 11, CONFUSE_RAY
	db 14, MEAN_LOOK
	db 17, SCREECH
	db 20, PROTECT
	db 24, WING_ATTACK
	db 28, AIR_CUTTER
	db 32, CRUNCH
	db 36, HAZE
	db 40, RAZOR_WIND
	db 44, SLUDGE_BOMB
	db  0; no more level-up moves

ChinchouEvosAttacks:
	db EVOLVE_LEVEL, 27, LANTURN
LanturnEvosAttacks:
	db  0; no more evolutions
	db  1, BUBBLE
	db  1, SUPERSONIC
	db  5, THUNDER_WAVE
	db  8, FLAIL
	db 11, WATER_GUN
	db 14, THUNDERSHOCK
	db 17, CONFUSE_RAY
	db 21, BUBBLEBEAM
	db 24, SWIFT
	db 27, SPARK
	db 31, RECOVER
	db 35, MEAN_LOOK
	db 39, SAFEGUARD
	db 42, HYDRO_PUMP
	db 46, RAIN_DANCE
	db 50, THUNDER
	db  0; no more level-up moves

PichuEvosAttacks:
	db EVOLVE_HAPPINESS, TR_ANYTIME, PIKACHU
	db 0 ; no more evolutions
	db 1, THUNDERSHOCK
	db 1, CHARM
	db 6, TAIL_WHIP
	db 8, THUNDER_WAVE
	db 11, SWEET_KISS
	db 0 ; no more level-up moves

CleffaEvosAttacks:
	db EVOLVE_HAPPINESS, TR_ANYTIME, CLEFAIRY
	db 0 ; no more evolutions
	db 1, POUND
	db 1, CHARM
	db 4, ENCORE
	db 8, SING
	db 13, SWEET_KISS
	db 0 ; no more level-up moves

IgglybuffEvosAttacks:
	db EVOLVE_HAPPINESS, TR_ANYTIME, JIGGLYPUFF
	db 0 ; no more evolutions
	db 1, SING
	db 1, CHARM
	db 4, DEFENSE_CURL
	db 9, POUND
	db 14, SWEET_KISS
	db 0 ; no more level-up moves

TogepiEvosAttacks:
	db EVOLVE_HAPPINESS, TR_ANYTIME, TOGETIC
	db  0; no more evolutions
	db  1, GROWL
	db  1, POUND
	db  4, SWEET_KISS
	db  8, FAIRY_WIND
	db 12, CHARM
	db 16, HEADBUTT
	db 20, HYPNOSIS
	db 24, ANCIENTPOWER
	db 28, RECOVER
	db 32, PLAY_ROUGH
	db 36, SWEET_KISS
	db 40, SAFEGUARD
	db 44, DOUBLE_EDGE
	db 48, BATON_PASS
	db 52, MOONBLAST
	db  0; no more level-up moves

TogeticEvosAttacks:
	db  0; no more evolutions
	db  1, GROWL
	db  1, POUND
	db  4, SWEET_KISS
	db  8, FAIRY_WIND
	db 12, CHARM
	db 16, HEADBUTT
	db 20, HYPNOSIS
	db 24, AIR_CUTTER
	db 28, RECOVER
	db 32, PLAY_ROUGH
	db 36, SWEET_KISS
	db 40, SAFEGUARD
	db 44, RAZOR_WIND
	db 48, BATON_PASS
	db 52, MOONBLAST
	db  0; no more level-up moves

NatuEvosAttacks:
	db EVOLVE_LEVEL, 25, XATU
XatuEvosAttacks:
	db  0; no more evolutions
	db  1, TELEPORT
	db  1, PECK
	db  1, LEER
	db 10, CONFUSION
	db 13, GUST
	db 19, AIR_CUTTER
	db 22, CONFUSE_RAY
	db 25, RAZOR_WIND
	db 29, PSYBEAM
	db 33, TELEPORT
	db 37, RECOVER
	db 41, PSYCHIC_M
	db 45, FUTURE_SIGHT
	db  0; no more level-up moves

MareepEvosAttacks:
	db EVOLVE_LEVEL, 15, FLAAFFY
FlaaffyEvosAttacks:
	db EVOLVE_LEVEL, 30, AMPHAROS
	db  0; no more evolutions
	db  1, TACKLE
	db  1, GROWL
	db  4, THUNDER_WAVE
	db  7, THUNDERSHOCK
	db 10, COTTON_SPORE
	db 13, GROWL
	db 17, TAKE_DOWN
	db 21, SLAM
	db 25, CONFUSE_RAY
	db 29, SPARK
	db 34, SWIFT
	db 39, THUNDERBOLT
	db 44, LIGHT_SCREEN
	db 49, TWISTER
	db 54, ANCIENTPOWER
	db 59, MOONBLAST
	db 64, THUNDER
	db  0; no more level-up moves

AmpharosEvosAttacks:
	db  0; no more evolutions
	db  1, TACKLE
	db  1, GROWL
	db  4, THUNDER_WAVE
	db  7, THUNDERSHOCK
	db 10, COTTON_SPORE
	db 13, GROWL
	db 17, TAKE_DOWN
	db 21, SLAM
	db 25, CONFUSE_RAY
	db 30, THUNDERPUNCH
	db 34, SWIFT
	db 39, THUNDERBOLT
	db 44, LIGHT_SCREEN
	db 49, TWISTER
	db 54, ANCIENTPOWER
	db 59, MOONBLAST
	db 64, THUNDER
	db  0; no more level-up moves

BellossomEvosAttacks:
	db 0 ; no more evolutions
	db 1, ABSORB
	db 1, SWEET_SCENT
	db 1, STUN_SPORE
	db 1, PETAL_DANCE
	db 55, SOLARBEAM
	db 0 ; no more level-up moves

MarillEvosAttacks:
	db EVOLVE_LEVEL, 18, AZUMARILL
AzumarillEvosAttacks:
	db  0; no more evolutions
	db  1, TACKLE
	db  3, DEFENSE_CURL
	db  6, WATER_GUN
	db  7, TAIL_WHIP
	db 10, ROLLOUT
	db 13, SLAM
	db 16, BUBBLEBEAM
	db 20, CHARM
	db 24, BATON_PASS
	db 28, SUBMISSION
	db 32, MEDITATE
	db 36, SKULL_BASH
	db 40, HYDRO_PUMP
	db 44, DOUBLE_EDGE
	db 48, RAIN_DANCE
	db 52, PLAY_ROUGH
	db  0; no more level-up moves

SudowoodoEvosAttacks:
	db  0; no more evolutions
	db  1, POUND
	db  1, MIMIC
	db 12, FLAIL
	db 16, ROCK_THROW
	db 20, LOW_KICK
	db 24, RAGE
	db 28, MEDITATE
	db 32, FAINT_ATTACK
	db 36, ROCK_SLIDE
	db 40, SLAM
	db 44, SUBMISSION
	db 48, EXTREMESPEED
	db  0; no more level-up moves

PolitoedEvosAttacks:
	db 0 ; no more evolutions
	db 1, WATER_GUN
	db 1, HYPNOSIS
	db 1, DOUBLESLAP
	db 1, PERISH_SONG
	db 35, PERISH_SONG
	db 51, SWAGGER
	db 0 ; no more level-up moves

HoppipEvosAttacks:
	db EVOLVE_LEVEL, 18, SKIPLOOM
SkiploomEvosAttacks:
	db EVOLVE_LEVEL, 27, JUMPLUFF
JumpluffEvosAttacks:
	db  0; no more evolutions
	db  1, TACKLE
	db  1, ABSORB
	db  8, FAIRY_WIND
	db 11, POISONPOWDER
	db 11, STUN_SPORE
	db 11, SLEEP_POWDER
	db 14, BULLET_SEED
	db 18, LEECH_SEED
	db 22, MEGA_DRAIN
	db 26, AIR_CUTTER
	db 31, COTTON_SPORE
	db 36, GROWTH
	db 41, GIGA_DRAIN
	db 46, RAZOR_WIND
	db 51, BATON_PASS
	db 56, PETAL_DANCE
	db  0; no more level-up moves

AipomEvosAttacks:
	db  0; no more evolutions
	db  1, SCRATCH
	db  1, TAIL_WHIP
	db  6, SAND_ATTACK
	db 10, LICK
	db 14, BATON_PASS
	db 18, FURY_SWIPES
	db 22, SWIFT
	db 26, SCREECH
	db 30, AGILITY
	db 34, DOUBLESLAP
	db 38, SLAM
	db 42, SWORDS_DANCE
	db 46, SUBMISSION
	db  0; no more level-up moves

SunkernEvosAttacks:
	db EVOLVE_ITEM, SUN_STONE, SUNFLORA
SunfloraEvosAttacks:
	db  0; no more evolutions
	db  1, POUND
	db  1, ABSORB
	db  4, GROWTH
	db  7, LEECH_SEED
	db 10, FAIRY_WIND
	db 13, BULLET_SEED
	db 16, RAZOR_LEAF
	db 19, MEGA_DRAIN
	db 22, SLAM
	db 25, SYNTHESIS
	db 28, REFLECT
	db 31, GIGA_DRAIN
	db 34, DOUBLE_EDGE
	db 39, SOLARBEAM
	db 42, SUNNY_DAY
	db 45, PETAL_DANCE
	db  0; no more level-up moves

YanmaEvosAttacks:
	db  0; no more evolutions
	db  1, TACKLE
	db  1, FORESIGHT
	db  6, QUICK_ATTACK
	db 10, DOUBLE_TEAM
	db 14, GUST
	db 17, DETECT
	db 21, SUPERSONIC
	db 25, AIR_CUTTER
	db 29, DOUBLE_TEAM
	db 33, ANCIENTPOWER
	db 37, HYPNOSIS
	db 41, TWISTER
	db 45, SCREECH
	db 49, RAZOR_WIND
	db 53, DRAGON_RAGE
	db 57, BUG_BUZZ
	db  0; no more level-up moves

WooperEvosAttacks:
	db EVOLVE_LEVEL, 20, QUAGSIRE
QuagsireEvosAttacks:
	db  0; no more evolutions
	db  1, TACKLE
	db  1, TAIL_WHIP
	db  6, WATER_GUN
	db  9, MUD_SLAP
	db 12, MIST
	db 12, HAZE
	db 15, SLAM
	db 18, DEFENSE_CURL
	db 22, BUBBLEBEAM
	db 26, LOVELY_KISS
	db 30, BULLDOZE
	db 34, RAIN_DANCE
	db 38, AMNESIA
	db 42, HYDRO_PUMP
	db 46, OCTAZOOKA
	db 50, EARTHQUAKE
	db  0; no more level-up moves

EspeonEvosAttacks:
	db 0 ; no more evolutions
	db 1, TACKLE
	db 1, TAIL_WHIP
	db 8, SAND_ATTACK
	db 16, CONFUSION
	db 23, QUICK_ATTACK
	db 30, SWIFT
	db 36, PSYBEAM
	db 42, PSYCH_UP
	db 47, PSYCHIC_M
	db 52, MORNING_SUN
	db 0 ; no more level-up moves

UmbreonEvosAttacks:
	db 0 ; no more evolutions
	db 1, TACKLE
	db 1, TAIL_WHIP
	db 8, SAND_ATTACK
	db 16, PURSUIT
	db 23, QUICK_ATTACK
	db 30, CONFUSE_RAY
	db 36, FAINT_ATTACK
	db 42, MEAN_LOOK
	db 47, SCREECH
	db 52, MOONLIGHT
	db 0 ; no more level-up moves

MurkrowEvosAttacks:
	db  0; no more evolutions
	db  1, PECK
	db  5, GUST
	db  9, HAZE
	db 13, WING_ATTACK
	db 17, NIGHT_SHADE
	db 21, AIR_CUTTER
	db 25, FAINT_ATTACK
	db 29, MEAN_LOOK
	db 33, AGILITY
	db 37, THIEF
	db 41, RAZOR_WIND
	db 45, SWORDS_DANCE
	db 49, EXTREMESPEED
	db  0; no more level-up moves

SlowkingEvosAttacks:
	db 0 ; no more evolutions
	db 1, CURSE
	db 1, TACKLE
	db 6, GROWL
	db 15, WATER_GUN
	db 20, CONFUSION
	db 29, DISABLE
	db 34, HEADBUTT
	db 43, SWAGGER
	db 48, PSYCHIC_M
	db 0 ; no more level-up moves

MisdreavusEvosAttacks:
	db  0; no more evolutions
	db  1, GROWL
	db  1, CONFUSION
	db 10, LICK
	db 14, SUPERSONIC
	db 18, NIGHT_SHADE
	db 26, MEAN_LOOK
	db 30, PSYBEAM
	db 34, CONFUSE_RAY
	db 38, FAINT_ATTACK
	db 42, PAIN_SPLIT
	db 46, SHADOW_BALL
	db 50, PERISH_SONG
	db  0; no more level-up moves

UnownEvosAttacks:
	db  0; no more evolutions
	db  1, HIDDEN_POWER
	db 15, CONFUSION
	db 25, ANCIENTPOWER
	db 35, TRI_ATTACK
	db 45, PSYCHIC_M
	db 55, HYPER_BEAM
	db  0; no more level-up moves

WobbuffetEvosAttacks:
	db 0 ; no more evolutions
	db 1, COUNTER
	db 1, MIRROR_COAT
	db 1, SAFEGUARD
	db 1, DESTINY_BOND
	db 0 ; no more level-up moves

GirafarigEvosAttacks:
	db  0; no more evolutions
	db  1, TACKLE
	db  1, GROWL
	db  7, CONFUSION
	db 11, DOUBLE_KICK
	db 15, MEDITATE
	db 19, STOMP
	db 23, PSYBEAM
	db 27, AGILITY
	db 31, FAINT_ATTACK
	db 35, CRUNCH
	db 39, BATON_PASS
	db 43, DRAGONBREATH
	db 47, DETECT
	db 51, PSYCHIC_M
	db 0 ; no more level-up moves

PinecoEvosAttacks:
	db EVOLVE_LEVEL, 31, FORRETRESS
ForretressEvosAttacks:
	db  0; no more evolutions
	db  1, TACKLE
	db  1, PROTECT
	db  6, DEFENSE_CURL
	db  9, LEECH_LIFE
	db 12, ROLLOUT
	db 17, RAPID_SPIN
	db 20, PIN_MISSILE
	db 23, SPIDER_WEB
	db 26, SPIKES
	db 29, TWINEEDLE
	db 33, CURSE
	db 37, WITHDRAW
	db 41, DOUBLE_EDGE
	db 45, IRON_TAIL
	db  0; no more level-up moves

DunsparceEvosAttacks:
	db  0; no more evolutions
	db  1, RAGE
	db  1, FLAIL
	db  4, MUD_SLAP
	db  8, ROLLOUT
	db 12, GLARE
	db 16, SCREECH
	db 20, ANCIENTPOWER
	db 24, BULLDOZE
	db 28, MEDITATE
	db 32, SLAM
	db 36, RECOVER
	db 40, DRAGON_RAGE
	db 44, DRAGON_DANCE
	db 48, REVERSAL
	db 52, DOUBLE_EDGE
	db  0; no more level-up moves

GligarEvosAttacks:
	db  0; no more evolutions
	db  1, POISON_STING
	db  4, SAND_ATTACK
	db  7, HARDEN
	db 10, QUICK_ATTACK
	db 13, SHARPEN
	db 16, FURY_CUTTER
	db 19, SPIKES
	db 22, WING_ATTACK
	db 27, SLASH
	db 30, TWINEEDLE
	db 34, SCREECH
	db 38, X_SCISSOR
	db 42, CRABHAMMER
	db 46, SWORDS_DANCE
	db  0 ;no more level-up moves

SteelixEvosAttacks:
	db 0 ; no more evolutions
	db 1, TACKLE
	db 1, SCREECH
	db 10, BIND
	db 14, ROCK_THROW
	db 23, HARDEN
	db 27, RAGE
	db 36, SANDSTORM
	db 40, SLAM
	db 49, CRUNCH
	db 0 ; no more level-up moves

SnubbullEvosAttacks:
	db EVOLVE_LEVEL, 23, GRANBULL
GranbullEvosAttacks:
	db  0; no more evolutions
	db  1, TACKLE
	db  1, TAIL_WHIP
	db  1, GROWL
	db  1, SCARY_FACE
	db  7, LICK
	db 11, BITE
	db 15, CHARM
	db 19, ROAR
	db 23, TAKE_DOWN
	db 28, RAGE
	db 33, CLAMP
	db 38, HEADBUTT
	db 43, CRUNCH
	db 48, PLAY_ROUGH
	db  0; no more level-up moves

QwilfishEvosAttacks:
	db  0; no more evolutions
	db  1, TACKLE
	db  1, POISON_STING
	db  4, HARDEN
	db  8, WATER_GUN
	db 12, ACID
	db 16, MINIMIZE
	db 20, SPIKES
	db 24, BUBBLEBEAM
	db 28, SLUDGE
	db 32, PIN_MISSILE
	db 36, SLUDGE_BOMB
	db 40, RECOVER
	db 44, TOXIC
	db 48, OCTAZOOKA
	db 52, DRAGON_DANCE
	db 56, DESTINY_BOND
	db  0; no more level-up moves

ScizorEvosAttacks:
	db 0 ; no more evolutions
	db 1, QUICK_ATTACK
	db 1, LEER
	db 6, FOCUS_ENERGY
	db 12, PURSUIT
	db 18, FALSE_SWIPE
	db 24, AGILITY
	db 30, METAL_CLAW
	db 36, SLASH
	db 42, SWORDS_DANCE
	db 48, DOUBLE_TEAM
	db 0 ; no more level-up moves

ShuckleEvosAttacks:
	db  0; no more evolutions
	db  1, BIND
	db  1, WITHDRAW
	db  5, ROLLOUT
	db 10, PIN_MISSILE
	db 15, ROCK_THROW
	db 20, SAFEGUARD
	db 25, REST
	db 30, BUG_BUZZ
	db 35, ANCIENTPOWER
	db 40, SPIKE_CANNON
	db 45, RECOVER
	db 50, X_SCISSOR
	db 55, ROCK_SLIDE
	db 60, REFLECT
	db 60, LIGHT_SCREEN
	db  0; no more level-up moves

HeracrossEvosAttacks:
	db  0; no more evolutions
	db  1, TACKLE
	db  1, LEER
	db  5, HARDEN
	db 10, ENDURE
	db 15, FURY_ATTACK
	db 20, HORN_ATTACK
	db 25, COUNTER
	db 30, KARATE_CHOP
	db 35, PIN_MISSILE
	db 40, REVERSAL
	db 45, THRASH
	db 50, SWORDS_DANCE
	db 55, MEGAHORN
	db  0; no more level-up moves

SneaselEvosAttacks:
	db  0; no more evolutions
	db  1, SCRATCH
	db  1, LEER
	db  9, PURSUIT
	db 13, QUICK_ATTACK
	db 17, METAL_CLAW
	db 21, ICY_WIND
	db 25, FAINT_ATTACK
	db 29, FURY_SWIPES
	db 33, SLASH
	db 37, SWORDS_DANCE
	db 41, AGILITY
	db 45, SCREECH
	db 49, ICE_PUNCH
	db 53, EXTREMESPEED
	db  0; no more level-up moves

TeddiursaEvosAttacks:
	db EVOLVE_LEVEL, 30, URSARING
UrsaringEvosAttacks:
	db  0; no more evolutions
	db  1, SCRATCH
	db  1, GROWL
	db  1, LEER
	db  1, LICK
	db  8, FURY_SWIPES
	db 12, PURSUIT
	db 16, FAINT_ATTACK
	db 20, SWEET_SCENT
	db 24, CHARM
	db 28, PLAY_ROUGH
	db 33, SCARY_FACE
	db 38, REST
	db 38, SNORE
	db 43, SLASH
	db 48, BULLDOZE
	db 53, THRASH
	db 58, SUBMISSION
	db  0; no more level-up moves

SlugmaEvosAttacks:
	db EVOLVE_LEVEL, 28, MAGCARGO
MagcargoEvosAttacks:
	db  0; no more evolutions
	db  1, SMOG
	db  6, EMBER
	db  9, ROCK_THROW
	db 12, HARDEN
	db 15, POISON
	db 18, ANCIENTPOWER
	db 21, FIRE_SPIN
	db 24, SPIKE_CANNON
	db 27, FLAMETHROWER
	db 31, BARRIER
	db 35, BODY_SLAM
	db 39, ROCK_SLIDE
	db 43, RECOVER
	db 47, FIRE_BLAST
	db 51, AMNESIA
	db  0; no more level-up moves

SwinubEvosAttacks:
	db EVOLVE_LEVEL, 33, PILOSWINE
PiloswineEvosAttacks:
	db  0 ; no more evolutions
	db  1, TACKLE
	db  1, MUD_SLAP
	db  5, POWDER_SNOW
	db  9, FLAIL
	db 13, SHARPEN
	db 17, BULLDOZE
	db 21, MIST
	db 25, ENDURE
	db 29, ICY_WIND
	db 33, AMNESIA
	db 37, TAKE_DOWN
	db 42, ANCIENTPOWER
	db 46, SWORDS_DANCE
	db 51, DOUBLE_EDGE
	db 55, EARTHQUAKE
	db 60, BLIZZARD
	db  0; no more level-up moves

CorsolaEvosAttacks:
	db  0; no more evolutions
	db  1, TACKLE
	db  1, HARDEN
	db  5, BUBBLE
	db  9, FURY_ATTACK
	db 13, SPIKE_CANNON
	db 17, ENDURE
	db 21, ROCK_THROW
	db 25, BUBBLEBEAM
	db 29, FLAIL
	db 33, ROCK_SLIDE
	db 37, WITHDRAW
	db 41, ANCIENTPOWER
	db 45, HYDRO_PUMP
	db 49, RECOVER
	db 53, MIRROR_COAT
	db  0; no more level-up moves

RemoraidEvosAttacks:
	db EVOLVE_LEVEL, 25, OCTILLERY
OctilleryEvosAttacks:
	db  0; no more evolutions
	db  1, WATER_GUN
	db  4, FOCUS_ENERGY
	db  8, PIN_MISSILE
	db 12, PSYBEAM
	db 16, AURORA_BEAM
	db 20, BUBBLEBEAM
	db 24, LOCK_ON
	db 25, OCTAZOOKA
	db 29, BULLET_SEED
	db 34, ICE_BEAM
	db 39, HYDRO_PUMP
	db 44, ZAP_CANNON
	db 49, HYPER_BEAM
	db  0; no more level-up moves

DelibirdEvosAttacks:
	db  0; no more evolutions
	db  1, PRESENT
	db  7, PECK
	db 11, POWDER_SNOW
	db 15, AIR_CUTTER
	db 19, ICY_WIND
	db 23, AGILITY
	db 27, DRILL_PECK
	db 31, SWORDS_DANCE
	db 35, ICE_BEAM
	db 39, RAZOR_WIND
	db 43, BLIZZARD
	db 47, PRESENT
	db  0; no more level-up moves

MantineEvosAttacks:
	db  0; no more evolutions
	db  1, TACKLE
	db  1, BUBBLE
	db 12, WATER_GUN
	db 16, PROTECT
	db 20, AGILITY
	db 24, BUBBLEBEAM
	db 28, HEADBUTT
	db 32, AIR_CUTTER
	db 36, RECOVER
	db 40, RAZOR_WIND
	db 44, TAKE_DOWN
	db 48, HYDRO_PUMP
	db  0; no more level-up moves

SkarmoryEvosAttacks:
	db  0; no more evolutions
	db  1, LEER
	db  1, PECK
	db  4, SAND_ATTACK
	db  8, FURY_ATTACK
	db 12, METAL_CLAW
	db 16, AGILITY
	db 20, WING_ATTACK
	db 24, SLASH
	db 28, STEEL_WING
	db 32, FAINT_ATTACK
	db 36, DRILL_PECK
	db 40, SCREECH
	db 44, SPIKES
	db  0; no more level-up moves

HoundourEvosAttacks:
	db EVOLVE_LEVEL, 24, HOUNDOOM
HoundoomEvosAttacks:
	db  0; no more evolutions
	db  1, LEER
	db  1, EMBER
	db  7, ROAR
	db 10, SMOG
	db 13, BITE
	db 16, FIRE_SPIN
	db 20, FAINT_ATTACK
	db 24, FLAME_WHEEL
	db 29, SCARY_FACE
	db 34, THIEF
	db 39, FLAMETHROWER
	db 44, HYPER_FANG
	db 49, HAZE
	db 54, CRUNCH
	db 59, FIRE_BLAST
	db  0; no more level-up moves

KingdraEvosAttacks:
	db 0 ; no more evolutions
	db 1, BUBBLE
	db 8, SMOKESCREEN
	db 15, LEER
	db 22, WATER_GUN
	db 29, TWISTER
	db 40, AGILITY
	db 51, HYDRO_PUMP
	db 0 ; no more level-up moves

PhanpyEvosAttacks:
	db EVOLVE_LEVEL, 25, DONPHAN
DonphanEvosAttacks:
	db  0; no more evolutions
	db  1, TACKLE
	db  1, GROWL
	db  7, DEFENSE_CURL
	db 10, ROLLOUT
	db 13, FLAIL
	db 16, BULLDOZE
	db 19, RAPID_SPIN
	db 22, FURY_ATTACK
	db 25, SCREECH
	db 25, STOMP
	db 30, SLAM
	db 35, SCARY_FACE
	db 40, MEDITATE
	db 45, EARTHQUAKE
	db 50, GIGA_IMPACT
	db  0; no more level-up moves

Porygon2EvosAttacks:
	db 0 ; no more evolutions
	db 1, CONVERSION2
	db 1, TACKLE
	db 1, CONVERSION
	db 9, AGILITY
	db 12, PSYBEAM
	db 20, RECOVER
	db 24, DEFENSE_CURL
	db 32, LOCK_ON
	db 36, TRI_ATTACK
	db 44, ZAP_CANNON
	db 0 ; no more level-up moves

StantlerEvosAttacks:
	db  0; no more evolutions
	db  1, TACKLE
	db  1, LEER
	db  5, SAND_ATTACK
	db 10, HYPNOSIS
	db 15, STOMP
	db 20, CONFUSE_RAY
	db 25, PSYBEAM
	db 30, TAKE_DOWN
	db 35, RECOVER
	db 40, MEDITATE
	db 45, PSYCHIC_M
	db 50, DOUBLE_EDGE
	db 55, MEGAHORN
	db  0; no more level-up moves

SmeargleEvosAttacks:
	db 0 ; no more evolutions
	db 1, SKETCH
	db 11, SKETCH
	db 21, SKETCH
	db 31, SKETCH
	db 41, SKETCH
	db 51, SKETCH
	db 61, SKETCH
	db 71, SKETCH
	db 81, SKETCH
	db 91, SKETCH
	db 0 ; no more level-up moves

TyrogueEvosAttacks:
	db EVOLVE_STAT, 20, ATK_LT_DEF, HITMONCHAN
	db EVOLVE_STAT, 20, ATK_GT_DEF, HITMONLEE
	db EVOLVE_STAT, 20, ATK_EQ_DEF, HITMONTOP
	db  0; no more evolutions
	db  1, TACKLE
	db  6, FOCUS_ENERGY
	db 12, KARATE_CHOP
	db 18, QUICK_ATTACK
	db  0; no more level-up moves

HitmontopEvosAttacks:
	db  0; no more evolutions
	db  1, TACKLE
	db  6, FOCUS_ENERGY
	db 12, KARATE_CHOP
	db 18, QUICK_ATTACK
	db 20, TRIPLE_KICK
	db 25, RAPID_SPIN
	db 30, LOW_KICK
	db 35, JUMP_KICK
	db 40, CROSS_CHOP
	db 45, SWORDS_DANCE
	db 50, DRAGON_DANCE
	db  0; no more level-up moves

SmoochumEvosAttacks:
	db EVOLVE_LEVEL, 30, JYNX
	db 0 ; no more evolutions
	db 1, POUND
	db 1, LICK
	db 9, SWEET_KISS
	db 13, POWDER_SNOW
	db 21, CONFUSION
	db 25, SING
	db 33, MEAN_LOOK
	db 37, PSYCHIC_M
	db 45, PERISH_SONG
	db 49, BLIZZARD
	db 0 ; no more level-up moves

ElekidEvosAttacks:
	db EVOLVE_LEVEL, 30, ELECTABUZZ
	db 0 ; no more evolutions
	db 1, QUICK_ATTACK
	db 1, LEER
	db 9, THUNDERPUNCH
	db 17, LIGHT_SCREEN
	db 25, SWIFT
	db 33, SCREECH
	db 41, THUNDERBOLT
	db 49, THUNDER
	db 0 ; no more level-up moves

MagbyEvosAttacks:
	db EVOLVE_LEVEL, 30, MAGMAR
	db 0 ; no more evolutions
	db 1, EMBER
	db 7, LEER
	db 13, SMOG
	db 19, FIRE_PUNCH
	db 25, SMOKESCREEN
	db 31, SUNNY_DAY
	db 37, FLAMETHROWER
	db 43, CONFUSE_RAY
	db 49, FIRE_BLAST
	db 0 ; no more level-up moves

MiltankEvosAttacks:
	db  0; no more evolutions
	db  1, TACKLE
	db  1, GROWL
	db  5, ROLLOUT
	db 10, DEFENSE_CURL
	db 15, STOMP
	db 20, HEAL_BELL
	db 25, HEADBUTT
	db 30, MEDITATE
	db 35, RECOVER
	db 40, BODY_SLAM
	db 45, PLAY_ROUGH
	db 50, CHARM
	db 55, EARTHQUAKE
	db  0; no more level-up moves
	
BlisseyEvosAttacks:
	db 0 ; no more evolutions
	db 1, POUND
	db 4, GROWL
	db 7, TAIL_WHIP
	db 10, SOFTBOILED
	db 13, DOUBLESLAP
	db 18, MINIMIZE
	db 23, SING
	db 28, EGG_BOMB
	db 33, DEFENSE_CURL
	db 40, LIGHT_SCREEN
	db 47, DOUBLE_EDGE
	db 0 ; no more level-up moves

RaikouEvosAttacks:
	db  0; no more evolutions
	db  1, THUNDERSHOCK
	db  1, QUICK_ATTACK
	db  1, LEER
	db  6, SHARPEN
	db 12, BITE
	db 18, SPARK
	db 24, MEAN_LOOK
	db 30, DRAGON_DANCE
	db 36, EXTREMESPEED
	db 42, CRUNCH
	db 48, PSYCHIC_M
	db 54, THUNDERBOLT
	db 60, REFLECT
	db 66, RAIN_DANCE
	db 72, THUNDER
	db 78, ZAP_CANNON
	db  0; no more level-up moves

EnteiEvosAttacks:
	db  0; no more evolutions
	db  1, EMBER
	db  1, QUICK_ATTACK
	db  1, LEER
	db  6, SHARPEN
	db 12, BITE
	db 18, FLAME_WHEEL
	db 24, MEAN_LOOK
	db 30, DRAGON_DANCE
	db 36, EXTREMESPEED
	db 42, CRUNCH
	db 48, PSYCHIC_M
	db 54, FLAMETHROWER
	db 60, SWAGGER
	db 66, SUNNY_DAY
	db 72, FIRE_BLAST
	db 78, SOLARBEAM
	db  0; no more level-up moves

SuicuneEvosAttacks:
	db  0; no more evolutions
	db  1, WATER_GUN
	db  1, QUICK_ATTACK
	db  1, LEER
	db  6, GROWTH
	db 12, AURORA_BEAM
	db 18, BUBBLEBEAM
	db 24, MEAN_LOOK
	db 30, AGILITY
	db 36, EXTREMESPEED
	db 42, ICE_BEAM
	db 48, PSYCHIC_M
	db 54, OCTAZOOKA
	db 60, LIGHT_SCREEN
	db 66, RAIN_DANCE
	db 72, HYDRO_PUMP
	db 78, BLIZZARD
	db  0; no more level-up moves

LarvitarEvosAttacks:
	db EVOLVE_LEVEL, 30, PUPITAR
PupitarEvosAttacks:
	db EVOLVE_LEVEL, 55, TYRANITAR
TyranitarEvosAttacks:
	db  0; no more evolutions
	db  1, BITE
	db  4, LEER
	db  8, HARDEN
	db 12, ROCK_THROW
	db 16, SCARY_FACE
	db 20, BULLDOZE
	db 24, SCREECH
	db 28, ANCIENTPOWER
	db 33, CRUNCH
	db 38, ROCK_SLIDE
	db 43, EARTHQUAKE
	db 48, SANDSTORM
	db 53, THRASH
	db 59, HYPER_BEAM
	db 65, GIGA_IMPACT
	db  0; no more level-up moves

LugiaEvosAttacks:
	db  0; no more evolutions
	db  1, AIR_CUTTER
	db  6, WHIRLWIND
	db 12, ANCIENTPOWER
	db 18, MIST
	db 24, SWIFT
	db 30, SAFEGUARD
	db 36, PSYCHIC_M
	db 42, AEROBLAST
	db 48, RECOVER
	db 54, RAIN_DANCE
	db 60, RAZOR_WIND
	db 66, HYDRO_PUMP
	db 72, FUTURE_SIGHT
	db 78, TRI_ATTACK
	db  0; no more level-up moves

HoOhEvosAttacks:
	db  0; no more evolutions
	db  1, WING_ATTACK
	db  6, WHIRLWIND
	db 12, ANCIENTPOWER
	db 18, DISABLE
	db 24, FLAME_WHEEL
	db 30, SAFEGUARD
	db 36, FLAMETHROWER
	db 42, SACRED_FIRE
	db 48, RECOVER
	db 54, SUNNY_DAY
	db 60, DRILL_PECK
	db 66, FIRE_BLAST
	db 72, FUTURE_SIGHT
	db 78, SKY_ATTACK
	db  0; no more level-up moves

CelebiEvosAttacks:
	db  0; no more evolutions
	db  1, LEECH_SEED
	db  1, HEAL_BELL
	db  1, SYNTHESIS
	db  1, CONFUSION
	db 10, SAFEGUARD
	db 20, MEGA_DRAIN
	db 30, ANCIENTPOWER
	db 40, BATON_PASS
	db 50, GIGA_DRAIN
	db 60, RECOVER
	db 70, PSYCHIC_M
	db 80, PETAL_DANCE
	db 90, FUTURE_SIGHT
	db  0; no more level-up moves
