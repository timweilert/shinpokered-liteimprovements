INCLUDE "constants.asm"

NPC_SPRITES_1 EQU $4
NPC_SPRITES_2 EQU $5

GFX EQU $4

PICS_1 EQU $2F
PICS_2 EQU $A
PICS_3 EQU $B
PICS_4 EQU $C
PICS_5 EQU $D
PICS_6 EQU $30
PICS_7 EQU $31

INCLUDE "home.asm"


SECTION "bank1",ROMX,BANK[$1]

INCLUDE "data/facing.asm"

INCLUDE "engine/black_out.asm"

;MewPicFront:: INCBIN "pic/bmon/mew.pic"	;moved to a proper rom bank
;MewPicBack::  INCBIN "pic/monback/mewb.pic"
;INCLUDE "data/baseStats/mew.asm"	;this has been moved to be with the other pokemon base stat files

INCLUDE "engine/battle/safari_zone.asm"

INCLUDE "engine/titlescreen.asm"
INCLUDE "engine/load_mon_data.asm"

INCLUDE "data/item_prices.asm"
INCLUDE "text/item_names.asm"
;INCLUDE "text/unused_names.asm"	;joenote - free up space in bank 1

INCLUDE "engine/overworld/oam.asm"
INCLUDE "engine/oam_dma.asm"

INCLUDE "engine/print_waiting_text.asm"

INCLUDE "engine/overworld/map_sprite_functions1.asm"

;INCLUDE "engine/test_battle.asm"	;joenote - remove to free up space

INCLUDE "engine/overworld/item.asm"
INCLUDE "engine/overworld/movement.asm"

INCLUDE "engine/cable_club.asm"

INCLUDE "engine/menu/main_menu.asm"

INCLUDE "engine/oak_speech.asm"

INCLUDE "engine/special_warps.asm"

;INCLUDE "engine/debug1.asm"	;joenote - remove to free up space

INCLUDE "engine/menu/naming_screen.asm"

INCLUDE "engine/oak_speech2.asm"

INCLUDE "engine/subtract_paid_money.asm"

INCLUDE "engine/menu/swap_items.asm"

INCLUDE "engine/overworld/pokemart.asm"

;INCLUDE "engine/learn_move.asm"	;joenote - moved in order to have more space

INCLUDE "engine/overworld/pokecenter.asm"

INCLUDE "engine/overworld/set_blackout_map.asm"

INCLUDE "engine/display_text_id_init.asm"
INCLUDE "engine/menu/draw_start_menu.asm"

INCLUDE "engine/overworld/cable_club_npc.asm"

INCLUDE "engine/menu/text_box.asm"

INCLUDE "engine/battle/moveEffects/drain_hp_effect.asm"

INCLUDE "engine/menu/players_pc.asm"

INCLUDE "engine/remove_pokemon.asm"

INCLUDE "engine/display_pokedex.asm"

INCLUDE "text/tmhm_names.asm"	;joenote - adding name list for tm and hm items
tmhmNamesEnd:

SECTION "bank3",ROMX,BANK[$3]

INCLUDE "engine/joypad.asm"

INCLUDE "data/map_songs.asm"

INCLUDE "data/map_header_banks.asm"

INCLUDE "engine/overworld/clear_variables.asm"
INCLUDE "engine/overworld/player_state.asm"
INCLUDE "engine/overworld/poison.asm"
INCLUDE "engine/overworld/tileset_header.asm"
INCLUDE "engine/overworld/daycare_exp.asm"

INCLUDE "data/hide_show_data.asm"

INCLUDE "engine/overworld/field_move_messages.asm"

INCLUDE "engine/items/inventory.asm"

INCLUDE "engine/overworld/wild_mons.asm"

INCLUDE "engine/items/items.asm"

INCLUDE "engine/menu/draw_badges.asm"

INCLUDE "engine/overworld/update_map.asm"
INCLUDE "engine/overworld/cut.asm"
INCLUDE "engine/overworld/missable_objects.asm"
INCLUDE "engine/overworld/push_boulder.asm"

INCLUDE "engine/add_mon.asm"
INCLUDE "engine/flag_action.asm"
INCLUDE "engine/heal_party.asm"
INCLUDE "engine/bcd.asm"
INCLUDE "engine/init_player_data.asm"
INCLUDE "engine/get_bag_item_quantity.asm"
INCLUDE "engine/pathfinding.asm"
INCLUDE "engine/hp_bar.asm"
INCLUDE "engine/hidden_object_functions3.asm"

SECTION "NPC Sprites 1", ROMX, BANK[NPC_SPRITES_1]

OakAideSprite:         INCBIN "gfx/sprites/oak_aide.2bpp"
RockerSprite:          INCBIN "gfx/sprites/rocker.2bpp"
SwimmerSprite:         INCBIN "gfx/sprites/swimmer.2bpp"
WhitePlayerSprite:     INCBIN "gfx/sprites/white_player.2bpp"
GymHelperSprite:       INCBIN "gfx/sprites/gym_helper.2bpp"
OldPersonSprite:       INCBIN "gfx/sprites/old_person.2bpp"
MartGuySprite:         INCBIN "gfx/sprites/mart_guy.2bpp"
FisherSprite:          INCBIN "gfx/sprites/fisher.2bpp"
OldMediumWomanSprite:  INCBIN "gfx/sprites/old_medium_woman.2bpp"
NurseSprite:           INCBIN "gfx/sprites/nurse.2bpp"
CableClubWomanSprite:  INCBIN "gfx/sprites/cable_club_woman.2bpp"
MrMasterballSprite:    INCBIN "gfx/sprites/mr_masterball.2bpp"
LaprasGiverSprite:     INCBIN "gfx/sprites/lapras_giver.2bpp"
WardenSprite:          INCBIN "gfx/sprites/warden.2bpp"
SsCaptainSprite:       INCBIN "gfx/sprites/ss_captain.2bpp"
Fisher2Sprite:         INCBIN "gfx/sprites/fisher2.2bpp"
BlackbeltSprite:       INCBIN "gfx/sprites/blackbelt.2bpp"
GuardSprite:           INCBIN "gfx/sprites/guard.2bpp"
BallSprite:            INCBIN "gfx/sprites/ball.2bpp"
OmanyteSprite:         INCBIN "gfx/sprites/omanyte.2bpp"
BoulderSprite:         INCBIN "gfx/sprites/boulder.2bpp"
PaperSheetSprite:      INCBIN "gfx/sprites/paper_sheet.2bpp"
BookMapDexSprite:      INCBIN "gfx/sprites/book_map_dex.2bpp"
ClipboardSprite:       INCBIN "gfx/sprites/clipboard.2bpp"
SnorlaxSprite:         INCBIN "gfx/sprites/snorlax.2bpp"
OldAmberSprite:        INCBIN "gfx/sprites/old_amber.2bpp"
LyingOldManSprite:     INCBIN "gfx/sprites/lying_old_man.2bpp"


SECTION "Graphics", ROMX, BANK[GFX]

PokemonLogoGraphics:            INCBIN "gfx/pokemon_logo.2bpp"
FontGraphics:                   INCBIN "gfx/font.1bpp"
FontGraphicsEnd:
ABTiles:                        INCBIN "gfx/AB.2bpp"
HpBarAndStatusGraphics:         INCBIN "gfx/hp_bar_and_status.2bpp"
HpBarAndStatusGraphicsEnd:
BattleHudTiles1:                INCBIN "gfx/battle_hud1.1bpp"
BattleHudTiles1End:
BattleHudTiles2:                INCBIN "gfx/battle_hud2.1bpp"
BattleHudTiles3:                INCBIN "gfx/battle_hud3.1bpp"
BattleHudTiles3End:

IF DEF(_REDGREENJP)
NintendoCopyrightLogoGraphics:  INCBIN "gfx/copyright_green.2bpp"
ELIF DEF(_BLUEJP)
NintendoCopyrightLogoGraphics:  INCBIN "gfx/copyright_bluejp.2bpp"
ELSE
NintendoCopyrightLogoGraphics:  INCBIN "gfx/copyright.2bpp"
ENDC

GamefreakLogoGraphics:          INCBIN "gfx/gamefreak.2bpp"
GamefreakLogoGraphicsEnd:
TextBoxGraphics:                INCBIN "gfx/text_box.2bpp"
TextBoxGraphicsEnd:
PokedexTileGraphics:            INCBIN "gfx/pokedex.2bpp"
PokedexTileGraphicsEnd:
WorldMapTileGraphics:           INCBIN "gfx/town_map.2bpp"
WorldMapTileGraphicsEnd:
IF DEF(_REDGREENJP)
PlayerCharacterTitleGraphics:   INCBIN "gfx/player_title_green.2bpp"
ELSE
PlayerCharacterTitleGraphics:   INCBIN "gfx/player_title.2bpp"
ENDC
PlayerCharacterTitleGraphicsEnd:


SECTION "Battle (bank 4)", ROMX, BANK[$4]

INCLUDE "engine/overworld/is_player_just_outside_map.asm"
INCLUDE "engine/menu/status_screen.asm"
INCLUDE "engine/menu/party_menu.asm"

RedPicFront:: INCBIN "pic/trainer/red.pic"
ShrinkPic1::  INCBIN "pic/trainer/shrink1.pic"
ShrinkPic2::  INCBIN "pic/trainer/shrink2.pic"

INCLUDE "engine/turn_sprite.asm"
INCLUDE "engine/menu/start_sub_menus.asm"
INCLUDE "engine/items/tms.asm"
INCLUDE "engine/battle/end_of_battle.asm"
INCLUDE "engine/battle/wild_encounters.asm"
INCLUDE "engine/battle/moveEffects/recoil_effect.asm"
INCLUDE "engine/battle/moveEffects/conversion_effect.asm"
INCLUDE "engine/battle/moveEffects/haze_effect.asm"
INCLUDE "engine/battle/get_trainer_name.asm"
INCLUDE "engine/random.asm"

;joenote - adding exp bar
EXPBarGraphics:  INCBIN "gfx/exp_bar.2bpp"
EXPBarGraphicsEnd:

SECTION "NPC Sprites 2", ROMX, BANK[NPC_SPRITES_2]

RedCyclingSprite:     INCBIN "gfx/sprites/cycling.2bpp"
RedSprite:            INCBIN "gfx/sprites/red.2bpp"
BlueSprite:           INCBIN "gfx/sprites/blue.2bpp"
OakSprite:            INCBIN "gfx/sprites/oak.2bpp"
BugCatcherSprite:     INCBIN "gfx/sprites/bug_catcher.2bpp"
SlowbroSprite:        INCBIN "gfx/sprites/slowbro.2bpp"
LassSprite:           INCBIN "gfx/sprites/lass.2bpp"
BlackHairBoy1Sprite:  INCBIN "gfx/sprites/black_hair_boy_1.2bpp"
LittleGirlSprite:     INCBIN "gfx/sprites/little_girl.2bpp"
BirdSprite:           INCBIN "gfx/sprites/bird.2bpp"
FatBaldGuySprite:     INCBIN "gfx/sprites/fat_bald_guy.2bpp"
GamblerSprite:        INCBIN "gfx/sprites/gambler.2bpp"
BlackHairBoy2Sprite:  INCBIN "gfx/sprites/black_hair_boy_2.2bpp"
GirlSprite:           INCBIN "gfx/sprites/girl.2bpp"
HikerSprite:          INCBIN "gfx/sprites/hiker.2bpp"
FoulardWomanSprite:   INCBIN "gfx/sprites/foulard_woman.2bpp"
GentlemanSprite:      INCBIN "gfx/sprites/gentleman.2bpp"
DaisySprite:          INCBIN "gfx/sprites/daisy.2bpp"
BikerSprite:          INCBIN "gfx/sprites/biker.2bpp"
SailorSprite:         INCBIN "gfx/sprites/sailor.2bpp"
CookSprite:           INCBIN "gfx/sprites/cook.2bpp"
BikeShopGuySprite:    INCBIN "gfx/sprites/bike_shop_guy.2bpp"
MrFujiSprite:         INCBIN "gfx/sprites/mr_fuji.2bpp"
GiovanniSprite:       INCBIN "gfx/sprites/giovanni.2bpp"
RocketSprite:         INCBIN "gfx/sprites/rocket.2bpp"
MediumSprite:         INCBIN "gfx/sprites/medium.2bpp"
WaiterSprite:         INCBIN "gfx/sprites/waiter.2bpp"
ErikaSprite:          INCBIN "gfx/sprites/erika.2bpp"
MomGeishaSprite:      INCBIN "gfx/sprites/mom_geisha.2bpp"
BrunetteGirlSprite:   INCBIN "gfx/sprites/brunette_girl.2bpp"
LanceSprite:          INCBIN "gfx/sprites/lance.2bpp"
MomSprite:            INCBIN "gfx/sprites/mom.2bpp"
BaldingGuySprite:     INCBIN "gfx/sprites/balding_guy.2bpp"
YoungBoySprite:       INCBIN "gfx/sprites/young_boy.2bpp"
GameboyKidSprite:     INCBIN "gfx/sprites/gameboy_kid.2bpp"
ClefairySprite:       INCBIN "gfx/sprites/clefairy.2bpp"
AgathaSprite:         INCBIN "gfx/sprites/agatha.2bpp"
BrunoSprite:          INCBIN "gfx/sprites/bruno.2bpp"
LoreleiSprite:        INCBIN "gfx/sprites/lorelei.2bpp"
SeelSprite:           INCBIN "gfx/sprites/seel.2bpp"


SECTION "Battle (bank 5)", ROMX, BANK[$5]

INCLUDE "engine/load_pokedex_tiles.asm"
INCLUDE "engine/overworld/map_sprites.asm"
INCLUDE "engine/overworld/emotion_bubbles.asm"
INCLUDE "engine/evolve_trade.asm"
INCLUDE "engine/battle/moveEffects/substitute_effect.asm"
INCLUDE "engine/menu/pc.asm"


SECTION "bank6",ROMX,BANK[$6]

INCLUDE "data/mapHeaders/celadoncity.asm"
INCLUDE "data/mapObjects/celadoncity.asm"
CeladonCityBlocks: INCBIN "maps/celadoncity.blk"

INCLUDE "data/mapHeaders/pallettown.asm"
INCLUDE "data/mapObjects/pallettown.asm"
PalletTownBlocks: INCBIN "maps/pallettown.blk"

INCLUDE "data/mapHeaders/viridiancity.asm"
INCLUDE "data/mapObjects/viridiancity.asm"
ViridianCityBlocks: INCBIN "maps/viridiancity.blk"

INCLUDE "data/mapHeaders/pewtercity.asm"
INCLUDE "data/mapObjects/pewtercity.asm"
PewterCityBlocks: INCBIN "maps/pewtercity.blk"

INCLUDE "data/mapHeaders/ceruleancity.asm"
INCLUDE "data/mapObjects/ceruleancity.asm"
CeruleanCityBlocks: INCBIN "maps/ceruleancity.blk"

INCLUDE "data/mapHeaders/vermilioncity.asm"
INCLUDE "data/mapObjects/vermilioncity.asm"
VermilionCityBlocks: INCBIN "maps/vermilioncity.blk"

INCLUDE "data/mapHeaders/fuchsiacity.asm"
INCLUDE "data/mapObjects/fuchsiacity.asm"
FuchsiaCityBlocks: INCBIN "maps/fuchsiacity.blk"

INCLUDE "engine/play_time.asm"

INCLUDE "scripts/pallettown.asm"
INCLUDE "scripts/viridiancity.asm"
INCLUDE "scripts/pewtercity.asm"
INCLUDE "scripts/ceruleancity.asm"
INCLUDE "scripts/vermilioncity.asm"
INCLUDE "scripts/celadoncity.asm"
INCLUDE "scripts/fuchsiacity.asm"

INCLUDE "data/mapHeaders/blueshouse.asm"
INCLUDE "scripts/blueshouse.asm"
INCLUDE "data/mapObjects/blueshouse.asm"
BluesHouseBlocks: INCBIN "maps/blueshouse.blk"

INCLUDE "data/mapHeaders/vermilionhouse3.asm"
INCLUDE "scripts/vermilionhouse3.asm"
INCLUDE "data/mapObjects/vermilionhouse3.asm"
VermilionHouse3Blocks: INCBIN "maps/vermilionhouse3.blk"

INCLUDE "data/mapHeaders/indigoplateaulobby.asm"
INCLUDE "scripts/indigoplateaulobby.asm"
INCLUDE "data/mapObjects/indigoplateaulobby.asm"
IndigoPlateauLobbyBlocks: INCBIN "maps/indigoplateaulobby.blk"

INCLUDE "data/mapHeaders/silphco4.asm"
INCLUDE "scripts/silphco4.asm"
INCLUDE "data/mapObjects/silphco4.asm"
SilphCo4Blocks: INCBIN "maps/silphco4.blk"

INCLUDE "data/mapHeaders/silphco5.asm"
INCLUDE "scripts/silphco5.asm"
INCLUDE "data/mapObjects/silphco5.asm"
SilphCo5Blocks: INCBIN "maps/silphco5.blk"

INCLUDE "data/mapHeaders/silphco6.asm"
INCLUDE "scripts/silphco6.asm"
INCLUDE "data/mapObjects/silphco6.asm"
SilphCo6Blocks: INCBIN "maps/silphco6.blk"

INCLUDE "engine/overworld/npc_movement.asm"
INCLUDE "engine/overworld/doors.asm"
INCLUDE "engine/overworld/ledges.asm"


SECTION "bank7",ROMX,BANK[$7]

INCLUDE "data/mapHeaders/cinnabarisland.asm"
INCLUDE "data/mapObjects/cinnabarisland.asm"
CinnabarIslandBlocks: INCBIN "maps/cinnabarisland.blk"

INCLUDE "data/mapHeaders/route1.asm"
INCLUDE "data/mapObjects/route1.asm"
Route1Blocks: INCBIN "maps/route1.blk"

UndergroundPathEntranceRoute8Blocks: INCBIN "maps/undergroundpathentranceroute8.blk"

OaksLabBlocks: INCBIN "maps/oakslab.blk"

Route16HouseBlocks:
Route2HouseBlocks:
SaffronHouse1Blocks:
SaffronHouse2Blocks:
VermilionHouse1Blocks:
NameRaterBlocks:
LavenderHouse1Blocks:
LavenderHouse2Blocks:
CeruleanHouse1Blocks:
PewterHouse1Blocks:
PewterHouse2Blocks:
ViridianHouseBlocks: INCBIN "maps/viridianhouse.blk"

CeladonMansion5Blocks:
SchoolBlocks: INCBIN "maps/school.blk"

CeruleanHouseTrashedBlocks: INCBIN "maps/ceruleanhousetrashed.blk"

DiglettsCaveEntranceRoute11Blocks:
DiglettsCaveRoute2Blocks: INCBIN "maps/diglettscaveroute2.blk"

INCLUDE "text/monster_names.asm"

INCLUDE "engine/clear_save.asm"

INCLUDE "engine/predefs7.asm"

INCLUDE "scripts/cinnabarisland.asm"

INCLUDE "scripts/route1.asm"

INCLUDE "data/mapHeaders/oakslab.asm"
INCLUDE "scripts/oakslab.asm"
INCLUDE "data/mapObjects/oakslab.asm"

INCLUDE "data/mapHeaders/viridianmart.asm"
INCLUDE "scripts/viridianmart.asm"
INCLUDE "data/mapObjects/viridianmart.asm"
ViridianMartBlocks: INCBIN "maps/viridianmart.blk"

INCLUDE "data/mapHeaders/school.asm"
INCLUDE "scripts/school.asm"
INCLUDE "data/mapObjects/school.asm"

INCLUDE "data/mapHeaders/viridianhouse.asm"
INCLUDE "scripts/viridianhouse.asm"
INCLUDE "data/mapObjects/viridianhouse.asm"

INCLUDE "data/mapHeaders/pewterhouse1.asm"
INCLUDE "scripts/pewterhouse1.asm"
INCLUDE "data/mapObjects/pewterhouse1.asm"

INCLUDE "data/mapHeaders/pewterhouse2.asm"
INCLUDE "scripts/pewterhouse2.asm"
INCLUDE "data/mapObjects/pewterhouse2.asm"

INCLUDE "data/mapHeaders/ceruleanhousetrashed.asm"
INCLUDE "scripts/ceruleanhousetrashed.asm"
INCLUDE "data/mapObjects/ceruleanhousetrashed.asm"

INCLUDE "data/mapHeaders/ceruleanhouse1.asm"
INCLUDE "scripts/ceruleanhouse1.asm"
INCLUDE "data/mapObjects/ceruleanhouse1.asm"

INCLUDE "data/mapHeaders/bikeshop.asm"
INCLUDE "scripts/bikeshop.asm"
INCLUDE "data/mapObjects/bikeshop.asm"
BikeShopBlocks: INCBIN "maps/bikeshop.blk"

INCLUDE "data/mapHeaders/lavenderhouse1.asm"
INCLUDE "scripts/lavenderhouse1.asm"
INCLUDE "data/mapObjects/lavenderhouse1.asm"

INCLUDE "data/mapHeaders/lavenderhouse2.asm"
INCLUDE "scripts/lavenderhouse2.asm"
INCLUDE "data/mapObjects/lavenderhouse2.asm"

INCLUDE "data/mapHeaders/namerater.asm"
INCLUDE "scripts/namerater.asm"
INCLUDE "data/mapObjects/namerater.asm"

INCLUDE "data/mapHeaders/vermilionhouse1.asm"
INCLUDE "scripts/vermilionhouse1.asm"
INCLUDE "data/mapObjects/vermilionhouse1.asm"

INCLUDE "data/mapHeaders/vermiliondock.asm"
INCLUDE "scripts/vermiliondock.asm"
INCLUDE "data/mapObjects/vermiliondock.asm"
VermilionDockBlocks: INCBIN "maps/vermiliondock.blk"

INCLUDE "data/mapHeaders/celadonmansion5.asm"
INCLUDE "scripts/celadonmansion5.asm"
INCLUDE "data/mapObjects/celadonmansion5.asm"

INCLUDE "data/mapHeaders/fuchsiamart.asm"
INCLUDE "scripts/fuchsiamart.asm"
INCLUDE "data/mapObjects/fuchsiamart.asm"
FuchsiaMartBlocks: INCBIN "maps/fuchsiamart.blk"

INCLUDE "data/mapHeaders/saffronhouse1.asm"
INCLUDE "scripts/saffronhouse1.asm"
INCLUDE "data/mapObjects/saffronhouse1.asm"
;joenote - adding Mateo's move relearner/deleter files
INCLUDE "scripts/move_deleter.asm"
INCLUDE "scripts/move_relearner.asm"

INCLUDE "data/mapHeaders/saffronhouse2.asm"
INCLUDE "scripts/saffronhouse2.asm"
INCLUDE "data/mapObjects/saffronhouse2.asm"

INCLUDE "data/mapHeaders/diglettscaveroute2.asm"
INCLUDE "scripts/diglettscaveroute2.asm"
INCLUDE "data/mapObjects/diglettscaveroute2.asm"

INCLUDE "data/mapHeaders/route2house.asm"
INCLUDE "scripts/route2house.asm"
INCLUDE "data/mapObjects/route2house.asm"

INCLUDE "data/mapHeaders/route5gate.asm"
INCLUDE "scripts/route5gate.asm"
INCLUDE "data/mapObjects/route5gate.asm"
Route5GateBlocks: INCBIN "maps/route5gate.blk"

INCLUDE "data/mapHeaders/route6gate.asm"
INCLUDE "scripts/route6gate.asm"
INCLUDE "data/mapObjects/route6gate.asm"
Route6GateBlocks: INCBIN "maps/route6gate.blk"

INCLUDE "data/mapHeaders/route7gate.asm"
INCLUDE "scripts/route7gate.asm"
INCLUDE "data/mapObjects/route7gate.asm"
Route7GateBlocks: INCBIN "maps/route7gate.blk"

INCLUDE "data/mapHeaders/route8gate.asm"
INCLUDE "scripts/route8gate.asm"
INCLUDE "data/mapObjects/route8gate.asm"
Route8GateBlocks: INCBIN "maps/route8gate.blk"

INCLUDE "data/mapHeaders/undergroundpathentranceroute8.asm"
INCLUDE "scripts/undergroundpathentranceroute8.asm"
INCLUDE "data/mapObjects/undergroundpathentranceroute8.asm"

INCLUDE "data/mapHeaders/powerplant.asm"
INCLUDE "scripts/powerplant.asm"
INCLUDE "data/mapObjects/powerplant.asm"
PowerPlantBlocks: INCBIN "maps/powerplant.blk"

INCLUDE "data/mapHeaders/diglettscaveroute11.asm"
INCLUDE "scripts/diglettscaveroute11.asm"
INCLUDE "data/mapObjects/diglettscaveroute11.asm"

INCLUDE "data/mapHeaders/route16house.asm"
INCLUDE "scripts/route16house.asm"
INCLUDE "data/mapObjects/route16house.asm"

INCLUDE "data/mapHeaders/route22gate.asm"
INCLUDE "scripts/route22gate.asm"
INCLUDE "data/mapObjects/route22gate.asm"
Route22GateBlocks: INCBIN "maps/route22gate.blk"

INCLUDE "data/mapHeaders/billshouse.asm"
INCLUDE "scripts/billshouse.asm"
INCLUDE "data/mapObjects/billshouse.asm"
BillsHouseBlocks: INCBIN "maps/billshouse.blk"

INCLUDE "engine/menu/oaks_pc.asm"

INCLUDE "engine/hidden_object_functions7.asm"


SECTION "Pics 1", ROMX, BANK[PICS_1]
IF DEF(_REDGREENJP)
RhydonPicFront::      INCBIN "pic/rgmon/rhydon.pic"
RhydonPicBack::       INCBIN "pic/monback/rhydonb.pic"
KangaskhanPicFront::  INCBIN "pic/rgmon/kangaskhan.pic"
KangaskhanPicBack::   INCBIN "pic/monback/kangaskhanb.pic"
NidoranMPicFront::    INCBIN "pic/rgmon/nidoranm.pic"
NidoranMPicBack::     INCBIN "pic/monback/nidoranmb.pic"
ClefairyPicFront::    INCBIN "pic/rgmon/clefairy.pic"
ClefairyPicBack::     INCBIN "pic/monback/clefairyb.pic"
SpearowPicFront::     INCBIN "pic/rgmon/spearow.pic"
SpearowPicBack::      INCBIN "pic/monback/spearowb.pic"
VoltorbPicFront::     INCBIN "pic/rgmon/voltorb.pic"
VoltorbPicBack::      INCBIN "pic/monback/voltorbb.pic"
NidokingPicFront::    INCBIN "pic/rgmon/nidoking.pic"
NidokingPicBack::     INCBIN "pic/monback/nidokingb.pic"
SlowbroPicFront::     INCBIN "pic/rgmon/slowbro.pic"
SlowbroPicBack::      INCBIN "pic/monback/slowbrob.pic"
IvysaurPicFront::     INCBIN "pic/rgmon/ivysaur.pic"
IvysaurPicBack::      INCBIN "pic/monback/ivysaurb.pic"
ExeggutorPicFront::   INCBIN "pic/rgmon/exeggutor.pic"
ExeggutorPicBack::    INCBIN "pic/monback/exeggutorb.pic"
LickitungPicFront::   INCBIN "pic/rgmon/lickitung.pic"
LickitungPicBack::    INCBIN "pic/monback/lickitungb.pic"
ExeggcutePicFront::   INCBIN "pic/rgmon/exeggcute.pic"
ExeggcutePicBack::    INCBIN "pic/monback/exeggcuteb.pic"
GrimerPicFront::      INCBIN "pic/rgmon/grimer.pic"
GrimerPicBack::       INCBIN "pic/monback/grimerb.pic"
GengarPicFront::      INCBIN "pic/rgmon/gengar.pic"
GengarPicBack::       INCBIN "pic/monback/gengarb.pic"
NidoranFPicFront::    INCBIN "pic/rgmon/nidoranf.pic"
NidoranFPicBack::     INCBIN "pic/monback/nidoranfb.pic"
NidoqueenPicFront::   INCBIN "pic/rgmon/nidoqueen.pic"
NidoqueenPicBack::    INCBIN "pic/monback/nidoqueenb.pic"
CubonePicFront::      INCBIN "pic/rgmon/cubone.pic"
CubonePicBack::       INCBIN "pic/monback/cuboneb.pic"
RhyhornPicFront::     INCBIN "pic/rgmon/rhyhorn.pic"
RhyhornPicBack::      INCBIN "pic/monback/rhyhornb.pic"
LaprasPicFront::      INCBIN "pic/rgmon/lapras.pic"
LaprasPicBack::       INCBIN "pic/monback/laprasb.pic"
ArcaninePicFront::    INCBIN "pic/rgmon/arcanine.pic"
ArcaninePicBack::     INCBIN "pic/monback/arcanineb.pic"
GyaradosPicFront::    INCBIN "pic/rgmon/gyarados.pic"
GyaradosPicBack::     INCBIN "pic/monback/gyaradosb.pic"
ShellderPicFront::    INCBIN "pic/rgmon/shellder.pic"
ShellderPicBack::     INCBIN "pic/monback/shellderb.pic"
ELIF DEF(_ORIGBACK)
RhydonPicFront::      INCBIN "pic/bmon/rhydon.pic"
RhydonPicBack::       INCBIN "pic/monback/rhydonb.pic"
KangaskhanPicFront::  INCBIN "pic/bmon/kangaskhan.pic"
KangaskhanPicBack::   INCBIN "pic/monback/kangaskhanb.pic"
NidoranMPicFront::    INCBIN "pic/bmon/nidoranm.pic"
NidoranMPicBack::     INCBIN "pic/monback/nidoranmb.pic"
ClefairyPicFront::    INCBIN "pic/bmon/clefairy.pic"
ClefairyPicBack::     INCBIN "pic/monback/clefairyb.pic"
SpearowPicFront::     INCBIN "pic/bmon/spearow.pic"
SpearowPicBack::      INCBIN "pic/monback/spearowb.pic"
VoltorbPicFront::     INCBIN "pic/bmon/voltorb.pic"
VoltorbPicBack::      INCBIN "pic/monback/voltorbb.pic"
NidokingPicFront::    INCBIN "pic/bmon/nidoking.pic"
NidokingPicBack::     INCBIN "pic/monback/nidokingb.pic"
SlowbroPicFront::     INCBIN "pic/bmon/slowbro.pic"
SlowbroPicBack::      INCBIN "pic/monback/slowbrob.pic"
IvysaurPicFront::     INCBIN "pic/bmon/ivysaur.pic"
IvysaurPicBack::      INCBIN "pic/monback/ivysaurb.pic"
ExeggutorPicFront::   INCBIN "pic/bmon/exeggutor.pic"
ExeggutorPicBack::    INCBIN "pic/monback/exeggutorb.pic"
LickitungPicFront::   INCBIN "pic/bmon/lickitung.pic"
LickitungPicBack::    INCBIN "pic/monback/lickitungb.pic"
ExeggcutePicFront::   INCBIN "pic/bmon/exeggcute.pic"
ExeggcutePicBack::    INCBIN "pic/monback/exeggcuteb.pic"
GrimerPicFront::      INCBIN "pic/bmon/grimer.pic"
GrimerPicBack::       INCBIN "pic/monback/grimerb.pic"
GengarPicFront::      INCBIN "pic/bmon/gengar.pic"
GengarPicBack::       INCBIN "pic/monback/gengarb.pic"
NidoranFPicFront::    INCBIN "pic/bmon/nidoranf.pic"
NidoranFPicBack::     INCBIN "pic/monback/nidoranfb.pic"
NidoqueenPicFront::   INCBIN "pic/bmon/nidoqueen.pic"
NidoqueenPicBack::    INCBIN "pic/monback/nidoqueenb.pic"
CubonePicFront::      INCBIN "pic/bmon/cubone.pic"
CubonePicBack::       INCBIN "pic/monback/cuboneb.pic"
RhyhornPicFront::     INCBIN "pic/bmon/rhyhorn.pic"
RhyhornPicBack::      INCBIN "pic/monback/rhyhornb.pic"
LaprasPicFront::      INCBIN "pic/bmon/lapras.pic"
LaprasPicBack::       INCBIN "pic/monback/laprasb.pic"
ArcaninePicFront::    INCBIN "pic/bmon/arcanine.pic"
ArcaninePicBack::     INCBIN "pic/monback/arcanineb.pic"
GyaradosPicFront::    INCBIN "pic/bmon/gyarados.pic"
GyaradosPicBack::     INCBIN "pic/monback/gyaradosb.pic"
ShellderPicFront::    INCBIN "pic/bmon/shellder.pic"
ShellderPicBack::     INCBIN "pic/monback/shellderb.pic"
ELSE
RhydonPicFront::      INCBIN "pic/bmon/rhydon.pic"
RhydonPicBack::       INCBIN "pic/swmonback/rhydonb.pic"
KangaskhanPicFront::  INCBIN "pic/bmon/kangaskhan.pic"
KangaskhanPicBack::   INCBIN "pic/swmonback/kangaskhanb.pic"
NidoranMPicFront::    INCBIN "pic/bmon/nidoranm.pic"
NidoranMPicBack::     INCBIN "pic/swmonback/nidoranmb.pic"
ClefairyPicFront::    INCBIN "pic/bmon/clefairy.pic"
ClefairyPicBack::     INCBIN "pic/swmonback/clefairyb.pic"
SpearowPicFront::     INCBIN "pic/bmon/spearow.pic"
SpearowPicBack::      INCBIN "pic/swmonback/spearowb.pic"
VoltorbPicFront::     INCBIN "pic/bmon/voltorb.pic"
VoltorbPicBack::      INCBIN "pic/swmonback/voltorbb.pic"
NidokingPicFront::    INCBIN "pic/bmon/nidoking.pic"
NidokingPicBack::     INCBIN "pic/swmonback/nidokingb.pic"
SlowbroPicFront::     INCBIN "pic/bmon/slowbro.pic"
SlowbroPicBack::      INCBIN "pic/swmonback/slowbrob.pic"
IvysaurPicFront::     INCBIN "pic/bmon/ivysaur.pic"
IvysaurPicBack::      INCBIN "pic/swmonback/ivysaurb.pic"
ExeggutorPicFront::   INCBIN "pic/bmon/exeggutor.pic"
ExeggutorPicBack::    INCBIN "pic/swmonback/exeggutorb.pic"
LickitungPicFront::   INCBIN "pic/bmon/lickitung.pic"
LickitungPicBack::    INCBIN "pic/swmonback/lickitungb.pic"
ExeggcutePicFront::   INCBIN "pic/bmon/exeggcute.pic"
ExeggcutePicBack::    INCBIN "pic/swmonback/exeggcuteb.pic"
GrimerPicFront::      INCBIN "pic/bmon/grimer.pic"
GrimerPicBack::       INCBIN "pic/swmonback/grimerb.pic"
GengarPicFront::      INCBIN "pic/bmon/gengar.pic"
GengarPicBack::       INCBIN "pic/swmonback/gengarb.pic"
NidoranFPicFront::    INCBIN "pic/bmon/nidoranf.pic"
NidoranFPicBack::     INCBIN "pic/swmonback/nidoranfb.pic"
NidoqueenPicFront::   INCBIN "pic/bmon/nidoqueen.pic"
NidoqueenPicBack::    INCBIN "pic/swmonback/nidoqueenb.pic"
CubonePicFront::      INCBIN "pic/bmon/cubone.pic"
CubonePicBack::       INCBIN "pic/swmonback/cuboneb.pic"
RhyhornPicFront::     INCBIN "pic/bmon/rhyhorn.pic"
RhyhornPicBack::      INCBIN "pic/swmonback/rhyhornb.pic"
LaprasPicFront::      INCBIN "pic/bmon/lapras.pic"
LaprasPicBack::       INCBIN "pic/swmonback/laprasb.pic"
ArcaninePicFront::    INCBIN "pic/bmon/arcanine.pic"
ArcaninePicBack::     INCBIN "pic/swmonback/arcanineb.pic"
GyaradosPicFront::    INCBIN "pic/bmon/gyarados.pic"
GyaradosPicBack::     INCBIN "pic/swmonback/gyaradosb.pic"
ShellderPicFront::    INCBIN "pic/bmon/shellder.pic"
ShellderPicBack::     INCBIN "pic/swmonback/shellderb.pic"
ENDC

SECTION "Battle (bank 9)", ROMX, BANK[$9]
INCLUDE "engine/battle/print_type.asm"
INCLUDE "engine/battle/save_trainer_name.asm"
INCLUDE "engine/battle/moveEffects/focus_energy_effect.asm"

;bank A stuff
INCLUDE "engine/battle/moveEffects/leech_seed_effect.asm"

;bank B stuff
INCLUDE "engine/battle/moveEffects/mist_effect.asm"
INCLUDE "engine/battle/moveEffects/one_hit_ko_effect.asm"

;bank C stuff
INCLUDE "engine/battle/display_effectiveness.asm"
TrainerInfoTextBoxTileGraphics:  INCBIN "gfx/trainer_info.2bpp"
TrainerInfoTextBoxTileGraphicsEnd:
;BlankLeaderNames:                INCBIN "gfx/blank_leader_names.2bpp"
BlankLeaderNames:                INCBIN "gfx/leader_names.2bpp"	;joenote - restoring the names
CircleTile:                      INCBIN "gfx/circle_tile.2bpp"
BadgeNumbersTileGraphics:        INCBIN "gfx/badge_numbers.2bpp"
INCLUDE "engine/items/tmhm.asm"
INCLUDE "engine/battle/scale_sprites.asm"
INCLUDE "engine/battle/moveEffects/pay_day_effect.asm"
INCLUDE "engine/game_corner_slots2.asm"

;bank D stuff
INCLUDE "engine/titlescreen2.asm"
INCLUDE "engine/battle/link_battle_versus_text.asm"
INCLUDE "engine/slot_machine.asm"
INCLUDE "engine/overworld/pewter_guys.asm"
INCLUDE "engine/multiply_divide.asm"
INCLUDE "engine/game_corner_slots.asm"


SECTION "Pics 2", ROMX, BANK[PICS_2]
IF DEF(_REDGREENJP)
TentacoolPicFront::   INCBIN "pic/rgmon/tentacool.pic"
TentacoolPicBack::    INCBIN "pic/monback/tentacoolb.pic"
GastlyPicFront::      INCBIN "pic/rgmon/gastly.pic"
GastlyPicBack::       INCBIN "pic/monback/gastlyb.pic"
ScytherPicFront::     INCBIN "pic/rgmon/scyther.pic"
ScytherPicBack::      INCBIN "pic/monback/scytherb.pic"
StaryuPicFront::      INCBIN "pic/rgmon/staryu.pic"
StaryuPicBack::       INCBIN "pic/monback/staryub.pic"
BlastoisePicFront::   INCBIN "pic/rgmon/blastoise.pic"
BlastoisePicBack::    INCBIN "pic/monback/blastoiseb.pic"
PinsirPicFront::      INCBIN "pic/rgmon/pinsir.pic"
PinsirPicBack::       INCBIN "pic/monback/pinsirb.pic"
TangelaPicFront::     INCBIN "pic/rgmon/tangela.pic"
TangelaPicBack::      INCBIN "pic/monback/tangelab.pic"
GrowlithePicFront::   INCBIN "pic/rgmon/growlithe.pic"
GrowlithePicBack::    INCBIN "pic/monback/growlitheb.pic"
OnixPicFront::        INCBIN "pic/rgmon/onix.pic"
OnixPicBack::         INCBIN "pic/monback/onixb.pic"
FearowPicFront::      INCBIN "pic/rgmon/fearow.pic"
FearowPicBack::       INCBIN "pic/monback/fearowb.pic"
PidgeyPicFront::      INCBIN "pic/rgmon/pidgey.pic"
PidgeyPicBack::       INCBIN "pic/monback/pidgeyb.pic"
SlowpokePicFront::    INCBIN "pic/rgmon/slowpoke.pic"
SlowpokePicBack::     INCBIN "pic/monback/slowpokeb.pic"
KadabraPicFront::     INCBIN "pic/rgmon/kadabra.pic"
KadabraPicBack::      INCBIN "pic/monback/kadabrab.pic"
GravelerPicFront::    INCBIN "pic/rgmon/graveler.pic"
GravelerPicBack::     INCBIN "pic/monback/gravelerb.pic"
ChanseyPicFront::     INCBIN "pic/rgmon/chansey.pic"
ChanseyPicBack::      INCBIN "pic/monback/chanseyb.pic"
MachokePicFront::     INCBIN "pic/rgmon/machoke.pic"
MachokePicBack::      INCBIN "pic/monback/machokeb.pic"
MrMimePicFront::      INCBIN "pic/rgmon/mr.mime.pic"
MrMimePicBack::       INCBIN "pic/monback/mr.mimeb.pic"
HitmonleePicFront::   INCBIN "pic/rgmon/hitmonlee.pic"
HitmonleePicBack::    INCBIN "pic/monback/hitmonleeb.pic"
HitmonchanPicFront::  INCBIN "pic/rgmon/hitmonchan.pic"
HitmonchanPicBack::   INCBIN "pic/monback/hitmonchanb.pic"
ArbokPicFront::       INCBIN "pic/rgmon/arbok.pic"
ArbokPicBack::        INCBIN "pic/monback/arbokb.pic"
ParasectPicFront::    INCBIN "pic/rgmon/parasect.pic"
ParasectPicBack::     INCBIN "pic/monback/parasectb.pic"
PsyduckPicFront::     INCBIN "pic/rgmon/psyduck.pic"
PsyduckPicBack::      INCBIN "pic/monback/psyduckb.pic"
DrowzeePicFront::     INCBIN "pic/rgmon/drowzee.pic"
DrowzeePicBack::      INCBIN "pic/monback/drowzeeb.pic"
ELIF DEF(_ORIGBACK)
TentacoolPicFront::   INCBIN "pic/bmon/tentacool.pic"
TentacoolPicBack::    INCBIN "pic/monback/tentacoolb.pic"
GastlyPicFront::      INCBIN "pic/bmon/gastly.pic"
GastlyPicBack::       INCBIN "pic/monback/gastlyb.pic"
ScytherPicFront::     INCBIN "pic/bmon/scyther.pic"
ScytherPicBack::      INCBIN "pic/monback/scytherb.pic"
StaryuPicFront::      INCBIN "pic/bmon/staryu.pic"
StaryuPicBack::       INCBIN "pic/monback/staryub.pic"
BlastoisePicFront::   INCBIN "pic/bmon/blastoise.pic"
BlastoisePicBack::    INCBIN "pic/monback/blastoiseb.pic"
PinsirPicFront::      INCBIN "pic/bmon/pinsir.pic"
PinsirPicBack::       INCBIN "pic/monback/pinsirb.pic"
TangelaPicFront::     INCBIN "pic/bmon/tangela.pic"
TangelaPicBack::      INCBIN "pic/monback/tangelab.pic"
GrowlithePicFront::   INCBIN "pic/bmon/growlithe.pic"
GrowlithePicBack::    INCBIN "pic/monback/growlitheb.pic"
OnixPicFront::        INCBIN "pic/bmon/onix.pic"
OnixPicBack::         INCBIN "pic/monback/onixb.pic"
FearowPicFront::      INCBIN "pic/bmon/fearow.pic"
FearowPicBack::       INCBIN "pic/monback/fearowb.pic"
PidgeyPicFront::      INCBIN "pic/bmon/pidgey.pic"
PidgeyPicBack::       INCBIN "pic/monback/pidgeyb.pic"
SlowpokePicFront::    INCBIN "pic/bmon/slowpoke.pic"
SlowpokePicBack::     INCBIN "pic/monback/slowpokeb.pic"
KadabraPicFront::     INCBIN "pic/bmon/kadabra.pic"
KadabraPicBack::      INCBIN "pic/monback/kadabrab.pic"
GravelerPicFront::    INCBIN "pic/bmon/graveler.pic"
GravelerPicBack::     INCBIN "pic/monback/gravelerb.pic"
ChanseyPicFront::     INCBIN "pic/bmon/chansey.pic"
ChanseyPicBack::      INCBIN "pic/monback/chanseyb.pic"
MachokePicFront::     INCBIN "pic/bmon/machoke.pic"
MachokePicBack::      INCBIN "pic/monback/machokeb.pic"
MrMimePicFront::      INCBIN "pic/bmon/mr.mime.pic"
MrMimePicBack::       INCBIN "pic/monback/mr.mimeb.pic"
HitmonleePicFront::   INCBIN "pic/bmon/hitmonlee.pic"
HitmonleePicBack::    INCBIN "pic/monback/hitmonleeb.pic"
HitmonchanPicFront::  INCBIN "pic/bmon/hitmonchan.pic"
HitmonchanPicBack::   INCBIN "pic/monback/hitmonchanb.pic"
ArbokPicFront::       INCBIN "pic/bmon/arbok.pic"
ArbokPicBack::        INCBIN "pic/monback/arbokb.pic"
ParasectPicFront::    INCBIN "pic/bmon/parasect.pic"
ParasectPicBack::     INCBIN "pic/monback/parasectb.pic"
PsyduckPicFront::     INCBIN "pic/bmon/psyduck.pic"
PsyduckPicBack::      INCBIN "pic/monback/psyduckb.pic"
DrowzeePicFront::     INCBIN "pic/bmon/drowzee.pic"
DrowzeePicBack::      INCBIN "pic/monback/drowzeeb.pic"
ELSE
TentacoolPicFront::   INCBIN "pic/bmon/tentacool.pic"
TentacoolPicBack::    INCBIN "pic/swmonback/tentacoolb.pic"
GastlyPicFront::      INCBIN "pic/bmon/gastly.pic"
GastlyPicBack::       INCBIN "pic/swmonback/gastlyb.pic"
ScytherPicFront::     INCBIN "pic/bmon/scyther.pic"
ScytherPicBack::      INCBIN "pic/swmonback/scytherb.pic"
StaryuPicFront::      INCBIN "pic/bmon/staryu.pic"
StaryuPicBack::       INCBIN "pic/swmonback/staryub.pic"
BlastoisePicFront::   INCBIN "pic/bmon/blastoise.pic"
BlastoisePicBack::    INCBIN "pic/swmonback/blastoiseb.pic"
PinsirPicFront::      INCBIN "pic/bmon/pinsir.pic"
PinsirPicBack::       INCBIN "pic/swmonback/pinsirb.pic"
TangelaPicFront::     INCBIN "pic/bmon/tangela.pic"
TangelaPicBack::      INCBIN "pic/swmonback/tangelab.pic"
GrowlithePicFront::   INCBIN "pic/bmon/growlithe.pic"
GrowlithePicBack::    INCBIN "pic/swmonback/growlitheb.pic"
OnixPicFront::        INCBIN "pic/bmon/onix.pic"
OnixPicBack::         INCBIN "pic/swmonback/onixb.pic"
FearowPicFront::      INCBIN "pic/bmon/fearow.pic"
FearowPicBack::       INCBIN "pic/swmonback/fearowb.pic"
PidgeyPicFront::      INCBIN "pic/bmon/pidgey.pic"
PidgeyPicBack::       INCBIN "pic/swmonback/pidgeyb.pic"
SlowpokePicFront::    INCBIN "pic/bmon/slowpoke.pic"
SlowpokePicBack::     INCBIN "pic/swmonback/slowpokeb.pic"
KadabraPicFront::     INCBIN "pic/bmon/kadabra.pic"
KadabraPicBack::      INCBIN "pic/swmonback/kadabrab.pic"
GravelerPicFront::    INCBIN "pic/bmon/graveler.pic"
GravelerPicBack::     INCBIN "pic/swmonback/gravelerb.pic"
ChanseyPicFront::     INCBIN "pic/bmon/chansey.pic"
ChanseyPicBack::      INCBIN "pic/swmonback/chanseyb.pic"
MachokePicFront::     INCBIN "pic/bmon/machoke.pic"
MachokePicBack::      INCBIN "pic/swmonback/machokeb.pic"
MrMimePicFront::      INCBIN "pic/bmon/mr.mime.pic"
MrMimePicBack::       INCBIN "pic/swmonback/mr.mimeb.pic"
HitmonleePicFront::   INCBIN "pic/bmon/hitmonlee.pic"
HitmonleePicBack::    INCBIN "pic/swmonback/hitmonleeb.pic"
HitmonchanPicFront::  INCBIN "pic/bmon/hitmonchan.pic"
HitmonchanPicBack::   INCBIN "pic/swmonback/hitmonchanb.pic"
ArbokPicFront::       INCBIN "pic/bmon/arbok.pic"
ArbokPicBack::        INCBIN "pic/swmonback/arbokb.pic"
ParasectPicFront::    INCBIN "pic/bmon/parasect.pic"
ParasectPicBack::     INCBIN "pic/swmonback/parasectb.pic"
PsyduckPicFront::     INCBIN "pic/bmon/psyduck.pic"
PsyduckPicBack::      INCBIN "pic/swmonback/psyduckb.pic"
DrowzeePicFront::     INCBIN "pic/bmon/drowzee.pic"
DrowzeePicBack::      INCBIN "pic/swmonback/drowzeeb.pic"
ENDC

SECTION "Battle (bank A)", ROMX, BANK[$A]
;migrated content to bank 9

SECTION "Pics 3", ROMX, BANK[PICS_3]
IF DEF(_REDGREENJP)
GolemPicFront::       INCBIN "pic/rgmon/golem.pic"
GolemPicBack::        INCBIN "pic/monback/golemb.pic"
MagmarPicFront::      INCBIN "pic/rgmon/magmar.pic"
MagmarPicBack::       INCBIN "pic/monback/magmarb.pic"
ElectabuzzPicFront::  INCBIN "pic/rgmon/electabuzz.pic"
ElectabuzzPicBack::   INCBIN "pic/monback/electabuzzb.pic"
MagnetonPicFront::    INCBIN "pic/rgmon/magneton.pic"
MagnetonPicBack::     INCBIN "pic/monback/magnetonb.pic"
KoffingPicFront::     INCBIN "pic/rgmon/koffing.pic"
KoffingPicBack::      INCBIN "pic/monback/koffingb.pic"
MankeyPicFront::      INCBIN "pic/rgmon/mankey.pic"
MankeyPicBack::       INCBIN "pic/monback/mankeyb.pic"
SeelPicFront::        INCBIN "pic/rgmon/seel.pic"
SeelPicBack::         INCBIN "pic/monback/seelb.pic"
DiglettPicFront::     INCBIN "pic/rgmon/diglett.pic"
DiglettPicBack::      INCBIN "pic/monback/diglettb.pic"
TaurosPicFront::      INCBIN "pic/rgmon/tauros.pic"
TaurosPicBack::       INCBIN "pic/monback/taurosb.pic"
FarfetchdPicFront::   INCBIN "pic/rgmon/farfetchd.pic"
FarfetchdPicBack::    INCBIN "pic/monback/farfetchdb.pic"
VenonatPicFront::     INCBIN "pic/rgmon/venonat.pic"
VenonatPicBack::      INCBIN "pic/monback/venonatb.pic"
DragonitePicFront::   INCBIN "pic/rgmon/dragonite.pic"
DragonitePicBack::    INCBIN "pic/monback/dragoniteb.pic"
DoduoPicFront::       INCBIN "pic/rgmon/doduo.pic"
DoduoPicBack::        INCBIN "pic/monback/doduob.pic"
PoliwagPicFront::     INCBIN "pic/rgmon/poliwag.pic"
PoliwagPicBack::      INCBIN "pic/monback/poliwagb.pic"
JynxPicFront::        INCBIN "pic/rgmon/jynx.pic"
JynxPicBack::         INCBIN "pic/monback/jynxb.pic"
MoltresPicFront::     INCBIN "pic/rgmon/moltres.pic"
MoltresPicBack::      INCBIN "pic/monback/moltresb.pic"
ArticunoPicFront::    INCBIN "pic/rgmon/articuno.pic"
ArticunoPicBack::     INCBIN "pic/monback/articunob.pic"
ZapdosPicFront::      INCBIN "pic/rgmon/zapdos.pic"
ZapdosPicBack::       INCBIN "pic/monback/zapdosb.pic"
DittoPicFront::       INCBIN "pic/rgmon/ditto.pic"
DittoPicBack::        INCBIN "pic/monback/dittob.pic"
MeowthPicFront::      INCBIN "pic/rgmon/meowth.pic"
MeowthPicBack::       INCBIN "pic/monback/meowthb.pic"
KrabbyPicFront::      INCBIN "pic/rgmon/krabby.pic"
KrabbyPicBack::       INCBIN "pic/monback/krabbyb.pic"
VulpixPicFront::      INCBIN "pic/rgmon/vulpix.pic"
VulpixPicBack::       INCBIN "pic/monback/vulpixb.pic"
NinetalesPicFront::   INCBIN "pic/rgmon/ninetales.pic"
NinetalesPicBack::    INCBIN "pic/monback/ninetalesb.pic"
ELIF DEF(_ORIGBACK)
GolemPicFront::       INCBIN "pic/bmon/golem.pic"
GolemPicBack::        INCBIN "pic/monback/golemb.pic"
MagmarPicFront::      INCBIN "pic/bmon/magmar.pic"
MagmarPicBack::       INCBIN "pic/monback/magmarb.pic"
ElectabuzzPicFront::  INCBIN "pic/bmon/electabuzz.pic"
ElectabuzzPicBack::   INCBIN "pic/monback/electabuzzb.pic"
MagnetonPicFront::    INCBIN "pic/bmon/magneton.pic"
MagnetonPicBack::     INCBIN "pic/monback/magnetonb.pic"
KoffingPicFront::     INCBIN "pic/bmon/koffing.pic"
KoffingPicBack::      INCBIN "pic/monback/koffingb.pic"
MankeyPicFront::      INCBIN "pic/bmon/mankey.pic"
MankeyPicBack::       INCBIN "pic/monback/mankeyb.pic"
SeelPicFront::        INCBIN "pic/bmon/seel.pic"
SeelPicBack::         INCBIN "pic/monback/seelb.pic"
DiglettPicFront::     INCBIN "pic/bmon/diglett.pic"
DiglettPicBack::      INCBIN "pic/monback/diglettb.pic"
TaurosPicFront::      INCBIN "pic/bmon/tauros.pic"
TaurosPicBack::       INCBIN "pic/monback/taurosb.pic"
FarfetchdPicFront::   INCBIN "pic/bmon/farfetchd.pic"
FarfetchdPicBack::    INCBIN "pic/monback/farfetchdb.pic"
VenonatPicFront::     INCBIN "pic/bmon/venonat.pic"
VenonatPicBack::      INCBIN "pic/monback/venonatb.pic"
DragonitePicFront::   INCBIN "pic/bmon/dragonite.pic"
DragonitePicBack::    INCBIN "pic/monback/dragoniteb.pic"
DoduoPicFront::       INCBIN "pic/bmon/doduo.pic"
DoduoPicBack::        INCBIN "pic/monback/doduob.pic"
PoliwagPicFront::     INCBIN "pic/bmon/poliwag.pic"
PoliwagPicBack::      INCBIN "pic/monback/poliwagb.pic"
JynxPicFront::        INCBIN "pic/bmon/jynx.pic"
JynxPicBack::         INCBIN "pic/monback/jynxb.pic"
MoltresPicFront::     INCBIN "pic/bmon/moltres.pic"
MoltresPicBack::      INCBIN "pic/monback/moltresb.pic"
ArticunoPicFront::    INCBIN "pic/bmon/articuno.pic"
ArticunoPicBack::     INCBIN "pic/monback/articunob.pic"
ZapdosPicFront::      INCBIN "pic/bmon/zapdos.pic"
ZapdosPicBack::       INCBIN "pic/monback/zapdosb.pic"
DittoPicFront::       INCBIN "pic/bmon/ditto.pic"
DittoPicBack::        INCBIN "pic/monback/dittob.pic"
MeowthPicFront::      INCBIN "pic/bmon/meowth.pic"
MeowthPicBack::       INCBIN "pic/monback/meowthb.pic"
KrabbyPicFront::      INCBIN "pic/bmon/krabby.pic"
KrabbyPicBack::       INCBIN "pic/monback/krabbyb.pic"
VulpixPicFront::      INCBIN "pic/bmon/vulpix.pic"
VulpixPicBack::       INCBIN "pic/monback/vulpixb.pic"
NinetalesPicFront::   INCBIN "pic/bmon/ninetales.pic"
NinetalesPicBack::    INCBIN "pic/monback/ninetalesb.pic"
ELSE
GolemPicFront::       INCBIN "pic/bmon/golem.pic"
GolemPicBack::        INCBIN "pic/swmonback/golemb.pic"
MagmarPicFront::      INCBIN "pic/bmon/magmar.pic"
MagmarPicBack::       INCBIN "pic/swmonback/magmarb.pic"
ElectabuzzPicFront::  INCBIN "pic/bmon/electabuzz.pic"
ElectabuzzPicBack::   INCBIN "pic/swmonback/electabuzzb.pic"
MagnetonPicFront::    INCBIN "pic/bmon/magneton.pic"
MagnetonPicBack::     INCBIN "pic/swmonback/magnetonb.pic"
KoffingPicFront::     INCBIN "pic/bmon/koffing.pic"
KoffingPicBack::      INCBIN "pic/swmonback/koffingb.pic"
MankeyPicFront::      INCBIN "pic/bmon/mankey.pic"
MankeyPicBack::       INCBIN "pic/swmonback/mankeyb.pic"
SeelPicFront::        INCBIN "pic/bmon/seel.pic"
SeelPicBack::         INCBIN "pic/swmonback/seelb.pic"
DiglettPicFront::     INCBIN "pic/bmon/diglett.pic"
DiglettPicBack::      INCBIN "pic/swmonback/diglettb.pic"
TaurosPicFront::      INCBIN "pic/bmon/tauros.pic"
TaurosPicBack::       INCBIN "pic/swmonback/taurosb.pic"
FarfetchdPicFront::   INCBIN "pic/bmon/farfetchd.pic"
FarfetchdPicBack::    INCBIN "pic/swmonback/farfetchdb.pic"
VenonatPicFront::     INCBIN "pic/bmon/venonat.pic"
VenonatPicBack::      INCBIN "pic/swmonback/venonatb.pic"
DragonitePicFront::   INCBIN "pic/bmon/dragonite.pic"
DragonitePicBack::    INCBIN "pic/swmonback/dragoniteb.pic"
DoduoPicFront::       INCBIN "pic/bmon/doduo.pic"
DoduoPicBack::        INCBIN "pic/swmonback/doduob.pic"
PoliwagPicFront::     INCBIN "pic/bmon/poliwag.pic"
PoliwagPicBack::      INCBIN "pic/swmonback/poliwagb.pic"
JynxPicFront::        INCBIN "pic/bmon/jynx.pic"
JynxPicBack::         INCBIN "pic/swmonback/jynxb.pic"
MoltresPicFront::     INCBIN "pic/bmon/moltres.pic"
MoltresPicBack::      INCBIN "pic/swmonback/moltresb.pic"
ArticunoPicFront::    INCBIN "pic/bmon/articuno.pic"
ArticunoPicBack::     INCBIN "pic/swmonback/articunob.pic"
ZapdosPicFront::      INCBIN "pic/bmon/zapdos.pic"
ZapdosPicBack::       INCBIN "pic/swmonback/zapdosb.pic"
DittoPicFront::       INCBIN "pic/bmon/ditto.pic"
DittoPicBack::        INCBIN "pic/swmonback/dittob.pic"
MeowthPicFront::      INCBIN "pic/bmon/meowth.pic"
MeowthPicBack::       INCBIN "pic/swmonback/meowthb.pic"
KrabbyPicFront::      INCBIN "pic/bmon/krabby.pic"
KrabbyPicBack::       INCBIN "pic/swmonback/krabbyb.pic"
VulpixPicFront::      INCBIN "pic/bmon/vulpix.pic"
VulpixPicBack::       INCBIN "pic/swmonback/vulpixb.pic"
NinetalesPicFront::   INCBIN "pic/bmon/ninetales.pic"
NinetalesPicBack::    INCBIN "pic/swmonback/ninetalesb.pic"
ENDC

SECTION "Battle (bank B)", ROMX, BANK[$B]
;migrated content to bank 9

SECTION "Pics 4", ROMX, BANK[PICS_4]
IF DEF(_REDGREENJP)
PikachuPicFront::     INCBIN "pic/rgmon/pikachu.pic"
PikachuPicBack::      INCBIN "pic/monback/pikachub.pic"
RaichuPicFront::      INCBIN "pic/rgmon/raichu.pic"
RaichuPicBack::       INCBIN "pic/monback/raichub.pic"
DratiniPicFront::     INCBIN "pic/rgmon/dratini.pic"
DratiniPicBack::      INCBIN "pic/monback/dratinib.pic"
DragonairPicFront::   INCBIN "pic/rgmon/dragonair.pic"
DragonairPicBack::    INCBIN "pic/monback/dragonairb.pic"
KabutoPicFront::      INCBIN "pic/rgmon/kabuto.pic"
KabutoPicBack::       INCBIN "pic/monback/kabutob.pic"
KabutopsPicFront::    INCBIN "pic/rgmon/kabutops.pic"
KabutopsPicBack::     INCBIN "pic/monback/kabutopsb.pic"
HorseaPicFront::      INCBIN "pic/rgmon/horsea.pic"
HorseaPicBack::       INCBIN "pic/monback/horseab.pic"
SeadraPicFront::      INCBIN "pic/rgmon/seadra.pic"
SeadraPicBack::       INCBIN "pic/monback/seadrab.pic"
SandshrewPicFront::   INCBIN "pic/rgmon/sandshrew.pic"
SandshrewPicBack::    INCBIN "pic/monback/sandshrewb.pic"
SandslashPicFront::   INCBIN "pic/rgmon/sandslash.pic"
SandslashPicBack::    INCBIN "pic/monback/sandslashb.pic"
OmanytePicFront::     INCBIN "pic/rgmon/omanyte.pic"
OmanytePicBack::      INCBIN "pic/monback/omanyteb.pic"
OmastarPicFront::     INCBIN "pic/rgmon/omastar.pic"
OmastarPicBack::      INCBIN "pic/monback/omastarb.pic"
JigglypuffPicFront::  INCBIN "pic/rgmon/jigglypuff.pic"
JigglypuffPicBack::   INCBIN "pic/monback/jigglypuffb.pic"
WigglytuffPicFront::  INCBIN "pic/rgmon/wigglytuff.pic"
WigglytuffPicBack::   INCBIN "pic/monback/wigglytuffb.pic"
EeveePicFront::       INCBIN "pic/rgmon/eevee.pic"
EeveePicBack::        INCBIN "pic/monback/eeveeb.pic"
FlareonPicFront::     INCBIN "pic/rgmon/flareon.pic"
FlareonPicBack::      INCBIN "pic/monback/flareonb.pic"
JolteonPicFront::     INCBIN "pic/rgmon/jolteon.pic"
JolteonPicBack::      INCBIN "pic/monback/jolteonb.pic"
VaporeonPicFront::    INCBIN "pic/rgmon/vaporeon.pic"
VaporeonPicBack::     INCBIN "pic/monback/vaporeonb.pic"
MachopPicFront::      INCBIN "pic/rgmon/machop.pic"
MachopPicBack::       INCBIN "pic/monback/machopb.pic"
ZubatPicFront::       INCBIN "pic/rgmon/zubat.pic"
ZubatPicBack::        INCBIN "pic/monback/zubatb.pic"
EkansPicFront::       INCBIN "pic/rgmon/ekans.pic"
EkansPicBack::        INCBIN "pic/monback/ekansb.pic"
ParasPicFront::       INCBIN "pic/rgmon/paras.pic"
ParasPicBack::        INCBIN "pic/monback/parasb.pic"
PoliwhirlPicFront::   INCBIN "pic/rgmon/poliwhirl.pic"
PoliwhirlPicBack::    INCBIN "pic/monback/poliwhirlb.pic"
PoliwrathPicFront::   INCBIN "pic/rgmon/poliwrath.pic"
PoliwrathPicBack::    INCBIN "pic/monback/poliwrathb.pic"
WeedlePicFront::      INCBIN "pic/rgmon/weedle.pic"
WeedlePicBack::       INCBIN "pic/monback/weedleb.pic"
KakunaPicFront::      INCBIN "pic/rgmon/kakuna.pic"
KakunaPicBack::       INCBIN "pic/monback/kakunab.pic"
ELIF DEF(_ORIGBACK)
PikachuPicFront::     INCBIN "pic/bmon/pikachu.pic"
PikachuPicBack::      INCBIN "pic/monback/pikachub.pic"
RaichuPicFront::      INCBIN "pic/bmon/raichu.pic"
RaichuPicBack::       INCBIN "pic/monback/raichub.pic"
DratiniPicFront::     INCBIN "pic/bmon/dratini.pic"
DratiniPicBack::      INCBIN "pic/monback/dratinib.pic"
DragonairPicFront::   INCBIN "pic/bmon/dragonair.pic"
DragonairPicBack::    INCBIN "pic/monback/dragonairb.pic"
KabutoPicFront::      INCBIN "pic/bmon/kabuto.pic"
KabutoPicBack::       INCBIN "pic/monback/kabutob.pic"
KabutopsPicFront::    INCBIN "pic/bmon/kabutops.pic"
KabutopsPicBack::     INCBIN "pic/monback/kabutopsb.pic"
HorseaPicFront::      INCBIN "pic/bmon/horsea.pic"
HorseaPicBack::       INCBIN "pic/monback/horseab.pic"
SeadraPicFront::      INCBIN "pic/bmon/seadra.pic"
SeadraPicBack::       INCBIN "pic/monback/seadrab.pic"
SandshrewPicFront::   INCBIN "pic/bmon/sandshrew.pic"
SandshrewPicBack::    INCBIN "pic/monback/sandshrewb.pic"
SandslashPicFront::   INCBIN "pic/bmon/sandslash.pic"
SandslashPicBack::    INCBIN "pic/monback/sandslashb.pic"
OmanytePicFront::     INCBIN "pic/bmon/omanyte.pic"
OmanytePicBack::      INCBIN "pic/monback/omanyteb.pic"
OmastarPicFront::     INCBIN "pic/bmon/omastar.pic"
OmastarPicBack::      INCBIN "pic/monback/omastarb.pic"
JigglypuffPicFront::  INCBIN "pic/bmon/jigglypuff.pic"
JigglypuffPicBack::   INCBIN "pic/monback/jigglypuffb.pic"
WigglytuffPicFront::  INCBIN "pic/bmon/wigglytuff.pic"
WigglytuffPicBack::   INCBIN "pic/monback/wigglytuffb.pic"
EeveePicFront::       INCBIN "pic/bmon/eevee.pic"
EeveePicBack::        INCBIN "pic/monback/eeveeb.pic"
FlareonPicFront::     INCBIN "pic/bmon/flareon.pic"
FlareonPicBack::      INCBIN "pic/monback/flareonb.pic"
JolteonPicFront::     INCBIN "pic/bmon/jolteon.pic"
JolteonPicBack::      INCBIN "pic/monback/jolteonb.pic"
VaporeonPicFront::    INCBIN "pic/bmon/vaporeon.pic"
VaporeonPicBack::     INCBIN "pic/monback/vaporeonb.pic"
MachopPicFront::      INCBIN "pic/bmon/machop.pic"
MachopPicBack::       INCBIN "pic/monback/machopb.pic"
ZubatPicFront::       INCBIN "pic/bmon/zubat.pic"
ZubatPicBack::        INCBIN "pic/monback/zubatb.pic"
EkansPicFront::       INCBIN "pic/bmon/ekans.pic"
EkansPicBack::        INCBIN "pic/monback/ekansb.pic"
ParasPicFront::       INCBIN "pic/bmon/paras.pic"
ParasPicBack::        INCBIN "pic/monback/parasb.pic"
PoliwhirlPicFront::   INCBIN "pic/bmon/poliwhirl.pic"
PoliwhirlPicBack::    INCBIN "pic/monback/poliwhirlb.pic"
PoliwrathPicFront::   INCBIN "pic/bmon/poliwrath.pic"
PoliwrathPicBack::    INCBIN "pic/monback/poliwrathb.pic"
WeedlePicFront::      INCBIN "pic/bmon/weedle.pic"
WeedlePicBack::       INCBIN "pic/monback/weedleb.pic"
KakunaPicFront::      INCBIN "pic/bmon/kakuna.pic"
KakunaPicBack::       INCBIN "pic/monback/kakunab.pic"
ELSE
PikachuPicFront::     INCBIN "pic/bmon/pikachu.pic"
PikachuPicBack::      INCBIN "pic/swmonback/pikachub.pic"
RaichuPicFront::      INCBIN "pic/bmon/raichu.pic"
RaichuPicBack::       INCBIN "pic/swmonback/raichub.pic"
DratiniPicFront::     INCBIN "pic/bmon/dratini.pic"
DratiniPicBack::      INCBIN "pic/swmonback/dratinib.pic"
DragonairPicFront::   INCBIN "pic/bmon/dragonair.pic"
DragonairPicBack::    INCBIN "pic/swmonback/dragonairb.pic"
KabutoPicFront::      INCBIN "pic/bmon/kabuto.pic"
KabutoPicBack::       INCBIN "pic/swmonback/kabutob.pic"
KabutopsPicFront::    INCBIN "pic/bmon/kabutops.pic"
KabutopsPicBack::     INCBIN "pic/swmonback/kabutopsb.pic"
HorseaPicFront::      INCBIN "pic/bmon/horsea.pic"
HorseaPicBack::       INCBIN "pic/swmonback/horseab.pic"
SeadraPicFront::      INCBIN "pic/bmon/seadra.pic"
SeadraPicBack::       INCBIN "pic/swmonback/seadrab.pic"
SandshrewPicFront::   INCBIN "pic/bmon/sandshrew.pic"
SandshrewPicBack::    INCBIN "pic/swmonback/sandshrewb.pic"
SandslashPicFront::   INCBIN "pic/bmon/sandslash.pic"
SandslashPicBack::    INCBIN "pic/swmonback/sandslashb.pic"
OmanytePicFront::     INCBIN "pic/bmon/omanyte.pic"
OmanytePicBack::      INCBIN "pic/swmonback/omanyteb.pic"
OmastarPicFront::     INCBIN "pic/bmon/omastar.pic"
OmastarPicBack::      INCBIN "pic/swmonback/omastarb.pic"
JigglypuffPicFront::  INCBIN "pic/bmon/jigglypuff.pic"
JigglypuffPicBack::   INCBIN "pic/swmonback/jigglypuffb.pic"
WigglytuffPicFront::  INCBIN "pic/bmon/wigglytuff.pic"
WigglytuffPicBack::   INCBIN "pic/swmonback/wigglytuffb.pic"
EeveePicFront::       INCBIN "pic/bmon/eevee.pic"
EeveePicBack::        INCBIN "pic/swmonback/eeveeb.pic"
FlareonPicFront::     INCBIN "pic/bmon/flareon.pic"
FlareonPicBack::      INCBIN "pic/swmonback/flareonb.pic"
JolteonPicFront::     INCBIN "pic/bmon/jolteon.pic"
JolteonPicBack::      INCBIN "pic/swmonback/jolteonb.pic"
VaporeonPicFront::    INCBIN "pic/bmon/vaporeon.pic"
VaporeonPicBack::     INCBIN "pic/swmonback/vaporeonb.pic"
MachopPicFront::      INCBIN "pic/bmon/machop.pic"
MachopPicBack::       INCBIN "pic/swmonback/machopb.pic"
ZubatPicFront::       INCBIN "pic/bmon/zubat.pic"
ZubatPicBack::        INCBIN "pic/swmonback/zubatb.pic"
EkansPicFront::       INCBIN "pic/bmon/ekans.pic"
EkansPicBack::        INCBIN "pic/swmonback/ekansb.pic"
ParasPicFront::       INCBIN "pic/bmon/paras.pic"
ParasPicBack::        INCBIN "pic/swmonback/parasb.pic"
PoliwhirlPicFront::   INCBIN "pic/bmon/poliwhirl.pic"
PoliwhirlPicBack::    INCBIN "pic/swmonback/poliwhirlb.pic"
PoliwrathPicFront::   INCBIN "pic/bmon/poliwrath.pic"
PoliwrathPicBack::    INCBIN "pic/swmonback/poliwrathb.pic"
WeedlePicFront::      INCBIN "pic/bmon/weedle.pic"
WeedlePicBack::       INCBIN "pic/swmonback/weedleb.pic"
KakunaPicFront::      INCBIN "pic/bmon/kakuna.pic"
KakunaPicBack::       INCBIN "pic/swmonback/kakunab.pic"
ENDC

SECTION "Battle (bank C)", ROMX, BANK[$C]
;migrated content to bank 9

SECTION "Pics 5", ROMX, BANK[PICS_5]
IF DEF(_REDGREENJP)
BeedrillPicFront::    INCBIN "pic/rgmon/beedrill.pic"
BeedrillPicBack::     INCBIN "pic/monback/beedrillb.pic"
DodrioPicFront::       INCBIN "pic/rgmon/dodrio.pic"
DodrioPicBack::        INCBIN "pic/monback/dodriob.pic"
PrimeapePicFront::     INCBIN "pic/rgmon/primeape.pic"
PrimeapePicBack::      INCBIN "pic/monback/primeapeb.pic"
DugtrioPicFront::      INCBIN "pic/rgmon/dugtrio.pic"
DugtrioPicBack::       INCBIN "pic/monback/dugtriob.pic"
VenomothPicFront::     INCBIN "pic/rgmon/venomoth.pic"
VenomothPicBack::      INCBIN "pic/monback/venomothb.pic"
DewgongPicFront::      INCBIN "pic/rgmon/dewgong.pic"
DewgongPicBack::       INCBIN "pic/monback/dewgongb.pic"
CaterpiePicFront::     INCBIN "pic/rgmon/caterpie.pic"
CaterpiePicBack::      INCBIN "pic/monback/caterpieb.pic"
MetapodPicFront::      INCBIN "pic/rgmon/metapod.pic"
MetapodPicBack::       INCBIN "pic/monback/metapodb.pic"
ButterfreePicFront::   INCBIN "pic/rgmon/butterfree.pic"
ButterfreePicBack::    INCBIN "pic/monback/butterfreeb.pic"
MachampPicFront::      INCBIN "pic/rgmon/machamp.pic"
MachampPicBack::       INCBIN "pic/monback/machampb.pic"
GolduckPicFront::      INCBIN "pic/rgmon/golduck.pic"
GolduckPicBack::       INCBIN "pic/monback/golduckb.pic"
HypnoPicFront::        INCBIN "pic/rgmon/hypno.pic"
HypnoPicBack::         INCBIN "pic/monback/hypnob.pic"
GolbatPicFront::       INCBIN "pic/rgmon/golbat.pic"
GolbatPicBack::        INCBIN "pic/monback/golbatb.pic"
MewtwoPicFront::       INCBIN "pic/rgmon/mewtwo.pic"
MewtwoPicBack::        INCBIN "pic/monback/mewtwob.pic"
SnorlaxPicFront::      INCBIN "pic/rgmon/snorlax.pic"
SnorlaxPicBack::       INCBIN "pic/monback/snorlaxb.pic"
MagikarpPicFront::     INCBIN "pic/rgmon/magikarp.pic"
MagikarpPicBack::      INCBIN "pic/monback/magikarpb.pic"
MukPicFront::          INCBIN "pic/rgmon/muk.pic"
MukPicBack::           INCBIN "pic/monback/mukb.pic"
KinglerPicFront::      INCBIN "pic/rgmon/kingler.pic"
KinglerPicBack::       INCBIN "pic/monback/kinglerb.pic"
CloysterPicFront::     INCBIN "pic/rgmon/cloyster.pic"
CloysterPicBack::      INCBIN "pic/monback/cloysterb.pic"
ElectrodePicFront::    INCBIN "pic/rgmon/electrode.pic"
ElectrodePicBack::     INCBIN "pic/monback/electrodeb.pic"
ClefablePicFront::     INCBIN "pic/rgmon/clefable.pic"
ClefablePicBack::      INCBIN "pic/monback/clefableb.pic"
ELIF DEF(_ORIGBACK)
BeedrillPicFront::    INCBIN "pic/bmon/beedrill.pic"
BeedrillPicBack::     INCBIN "pic/monback/beedrillb.pic"
DodrioPicFront::       INCBIN "pic/bmon/dodrio.pic"
DodrioPicBack::        INCBIN "pic/monback/dodriob.pic"
PrimeapePicFront::     INCBIN "pic/bmon/primeape.pic"
PrimeapePicBack::      INCBIN "pic/monback/primeapeb.pic"
DugtrioPicFront::      INCBIN "pic/bmon/dugtrio.pic"
DugtrioPicBack::       INCBIN "pic/monback/dugtriob.pic"
VenomothPicFront::     INCBIN "pic/bmon/venomoth.pic"
VenomothPicBack::      INCBIN "pic/monback/venomothb.pic"
DewgongPicFront::      INCBIN "pic/bmon/dewgong.pic"
DewgongPicBack::       INCBIN "pic/monback/dewgongb.pic"
CaterpiePicFront::     INCBIN "pic/bmon/caterpie.pic"
CaterpiePicBack::      INCBIN "pic/monback/caterpieb.pic"
MetapodPicFront::      INCBIN "pic/bmon/metapod.pic"
MetapodPicBack::       INCBIN "pic/monback/metapodb.pic"
ButterfreePicFront::   INCBIN "pic/bmon/butterfree.pic"
ButterfreePicBack::    INCBIN "pic/monback/butterfreeb.pic"
MachampPicFront::      INCBIN "pic/bmon/machamp.pic"
MachampPicBack::       INCBIN "pic/monback/machampb.pic"
GolduckPicFront::      INCBIN "pic/bmon/golduck.pic"
GolduckPicBack::       INCBIN "pic/monback/golduckb.pic"
HypnoPicFront::        INCBIN "pic/bmon/hypno.pic"
HypnoPicBack::         INCBIN "pic/monback/hypnob.pic"
GolbatPicFront::       INCBIN "pic/bmon/golbat.pic"
GolbatPicBack::        INCBIN "pic/monback/golbatb.pic"
MewtwoPicFront::       INCBIN "pic/bmon/mewtwo.pic"
MewtwoPicBack::        INCBIN "pic/monback/mewtwob.pic"
SnorlaxPicFront::      INCBIN "pic/bmon/snorlax.pic"
SnorlaxPicBack::       INCBIN "pic/monback/snorlaxb.pic"
MagikarpPicFront::     INCBIN "pic/bmon/magikarp.pic"
MagikarpPicBack::      INCBIN "pic/monback/magikarpb.pic"
MukPicFront::          INCBIN "pic/bmon/muk.pic"
MukPicBack::           INCBIN "pic/monback/mukb.pic"
KinglerPicFront::      INCBIN "pic/bmon/kingler.pic"
KinglerPicBack::       INCBIN "pic/monback/kinglerb.pic"
CloysterPicFront::     INCBIN "pic/bmon/cloyster.pic"
CloysterPicBack::      INCBIN "pic/monback/cloysterb.pic"
ElectrodePicFront::    INCBIN "pic/bmon/electrode.pic"
ElectrodePicBack::     INCBIN "pic/monback/electrodeb.pic"
ClefablePicFront::     INCBIN "pic/bmon/clefable.pic"
ClefablePicBack::      INCBIN "pic/monback/clefableb.pic"
ELSE
BeedrillPicFront::    INCBIN "pic/bmon/beedrill.pic"
BeedrillPicBack::     INCBIN "pic/swmonback/beedrillb.pic"
DodrioPicFront::       INCBIN "pic/bmon/dodrio.pic"
DodrioPicBack::        INCBIN "pic/swmonback/dodriob.pic"
PrimeapePicFront::     INCBIN "pic/bmon/primeape.pic"
PrimeapePicBack::      INCBIN "pic/swmonback/primeapeb.pic"
DugtrioPicFront::      INCBIN "pic/bmon/dugtrio.pic"
DugtrioPicBack::       INCBIN "pic/swmonback/dugtriob.pic"
VenomothPicFront::     INCBIN "pic/bmon/venomoth.pic"
VenomothPicBack::      INCBIN "pic/swmonback/venomothb.pic"
DewgongPicFront::      INCBIN "pic/bmon/dewgong.pic"
DewgongPicBack::       INCBIN "pic/swmonback/dewgongb.pic"
CaterpiePicFront::     INCBIN "pic/bmon/caterpie.pic"
CaterpiePicBack::      INCBIN "pic/swmonback/caterpieb.pic"
MetapodPicFront::      INCBIN "pic/bmon/metapod.pic"
MetapodPicBack::       INCBIN "pic/swmonback/metapodb.pic"
ButterfreePicFront::   INCBIN "pic/bmon/butterfree.pic"
ButterfreePicBack::    INCBIN "pic/swmonback/butterfreeb.pic"
MachampPicFront::      INCBIN "pic/bmon/machamp.pic"
MachampPicBack::       INCBIN "pic/swmonback/machampb.pic"
GolduckPicFront::      INCBIN "pic/bmon/golduck.pic"
GolduckPicBack::       INCBIN "pic/swmonback/golduckb.pic"
HypnoPicFront::        INCBIN "pic/bmon/hypno.pic"
HypnoPicBack::         INCBIN "pic/swmonback/hypnob.pic"
GolbatPicFront::       INCBIN "pic/bmon/golbat.pic"
GolbatPicBack::        INCBIN "pic/swmonback/golbatb.pic"
MewtwoPicFront::       INCBIN "pic/bmon/mewtwo.pic"
MewtwoPicBack::        INCBIN "pic/swmonback/mewtwob.pic"
SnorlaxPicFront::      INCBIN "pic/bmon/snorlax.pic"
SnorlaxPicBack::       INCBIN "pic/swmonback/snorlaxb.pic"
MagikarpPicFront::     INCBIN "pic/bmon/magikarp.pic"
MagikarpPicBack::      INCBIN "pic/swmonback/magikarpb.pic"
MukPicFront::          INCBIN "pic/bmon/muk.pic"
MukPicBack::           INCBIN "pic/swmonback/mukb.pic"
KinglerPicFront::      INCBIN "pic/bmon/kingler.pic"
KinglerPicBack::       INCBIN "pic/swmonback/kinglerb.pic"
CloysterPicFront::     INCBIN "pic/bmon/cloyster.pic"
CloysterPicBack::      INCBIN "pic/swmonback/cloysterb.pic"
ElectrodePicFront::    INCBIN "pic/bmon/electrode.pic"
ElectrodePicBack::     INCBIN "pic/swmonback/electrodeb.pic"
ClefablePicFront::     INCBIN "pic/bmon/clefable.pic"
ClefablePicBack::      INCBIN "pic/swmonback/clefableb.pic"
ENDC

SECTION "Pics 6", ROMX, BANK[PICS_6]
IF DEF(_REDGREENJP)
WeezingPicFront::      INCBIN "pic/rgmon/weezing.pic"
WeezingPicBack::       INCBIN "pic/monback/weezingb.pic"
PersianPicFront::      INCBIN "pic/rgmon/persian.pic"
PersianPicBack::       INCBIN "pic/monback/persianb.pic"
MarowakPicFront::      INCBIN "pic/rgmon/marowak.pic"
MarowakPicBack::       INCBIN "pic/monback/marowakb.pic"
HaunterPicFront::      INCBIN "pic/rgmon/haunter.pic"
HaunterPicBack::       INCBIN "pic/monback/haunterb.pic"
AbraPicFront::         INCBIN "pic/rgmon/abra.pic"
AbraPicBack::          INCBIN "pic/monback/abrab.pic"
AlakazamPicFront::     INCBIN "pic/rgmon/alakazam.pic"
AlakazamPicBack::      INCBIN "pic/monback/alakazamb.pic"
PidgeottoPicFront::    INCBIN "pic/rgmon/pidgeotto.pic"
PidgeottoPicBack::     INCBIN "pic/monback/pidgeottob.pic"
PidgeotPicFront::      INCBIN "pic/rgmon/pidgeot.pic"
PidgeotPicBack::       INCBIN "pic/monback/pidgeotb.pic"
StarmiePicFront::      INCBIN "pic/rgmon/starmie.pic"
StarmiePicBack::       INCBIN "pic/monback/starmieb.pic"
BulbasaurPicFront::    INCBIN "pic/rgmon/bulbasaur.pic"
BulbasaurPicBack::     INCBIN "pic/monback/bulbasaurb.pic"
VenusaurPicFront::     INCBIN "pic/rgmon/venusaur.pic"
VenusaurPicBack::      INCBIN "pic/monback/venusaurb.pic"
TentacruelPicFront::   INCBIN "pic/rgmon/tentacruel.pic"
TentacruelPicBack::    INCBIN "pic/monback/tentacruelb.pic"
GoldeenPicFront::      INCBIN "pic/rgmon/goldeen.pic"
GoldeenPicBack::       INCBIN "pic/monback/goldeenb.pic"
SeakingPicFront::      INCBIN "pic/rgmon/seaking.pic"
SeakingPicBack::       INCBIN "pic/monback/seakingb.pic"
PonytaPicFront::       INCBIN "pic/rgmon/ponyta.pic"
RapidashPicFront::     INCBIN "pic/rgmon/rapidash.pic"
PonytaPicBack::        INCBIN "pic/monback/ponytab.pic"
RapidashPicBack::      INCBIN "pic/monback/rapidashb.pic"
RattataPicFront::      INCBIN "pic/rgmon/rattata.pic"
RattataPicBack::       INCBIN "pic/monback/rattatab.pic"
RaticatePicFront::     INCBIN "pic/rgmon/raticate.pic"
RaticatePicBack::      INCBIN "pic/monback/raticateb.pic"
NidorinoPicFront::     INCBIN "pic/rgmon/nidorino.pic"
NidorinoPicBack::      INCBIN "pic/monback/nidorinob.pic"
NidorinaPicFront::     INCBIN "pic/rgmon/nidorina.pic"
NidorinaPicBack::      INCBIN "pic/monback/nidorinab.pic"
GeodudePicFront::      INCBIN "pic/rgmon/geodude.pic"
GeodudePicBack::       INCBIN "pic/monback/geodudeb.pic"
PorygonPicFront::      INCBIN "pic/rgmon/porygon.pic"
PorygonPicBack::       INCBIN "pic/monback/porygonb.pic"
ELIF DEF(_ORIGBACK)
WeezingPicFront::      INCBIN "pic/bmon/weezing.pic"
WeezingPicBack::       INCBIN "pic/monback/weezingb.pic"
PersianPicFront::      INCBIN "pic/bmon/persian.pic"
PersianPicBack::       INCBIN "pic/monback/persianb.pic"
MarowakPicFront::      INCBIN "pic/bmon/marowak.pic"
MarowakPicBack::       INCBIN "pic/monback/marowakb.pic"
HaunterPicFront::      INCBIN "pic/bmon/haunter.pic"
HaunterPicBack::       INCBIN "pic/monback/haunterb.pic"
AbraPicFront::         INCBIN "pic/bmon/abra.pic"
AbraPicBack::          INCBIN "pic/monback/abrab.pic"
AlakazamPicFront::     INCBIN "pic/bmon/alakazam.pic"
AlakazamPicBack::      INCBIN "pic/monback/alakazamb.pic"
PidgeottoPicFront::    INCBIN "pic/bmon/pidgeotto.pic"
PidgeottoPicBack::     INCBIN "pic/monback/pidgeottob.pic"
PidgeotPicFront::      INCBIN "pic/bmon/pidgeot.pic"
PidgeotPicBack::       INCBIN "pic/monback/pidgeotb.pic"
StarmiePicFront::      INCBIN "pic/bmon/starmie.pic"
StarmiePicBack::       INCBIN "pic/monback/starmieb.pic"
BulbasaurPicFront::    INCBIN "pic/bmon/bulbasaur.pic"
BulbasaurPicBack::     INCBIN "pic/monback/bulbasaurb.pic"
VenusaurPicFront::     INCBIN "pic/bmon/venusaur.pic"
VenusaurPicBack::      INCBIN "pic/monback/venusaurb.pic"
TentacruelPicFront::   INCBIN "pic/bmon/tentacruel.pic"
TentacruelPicBack::    INCBIN "pic/monback/tentacruelb.pic"
GoldeenPicFront::      INCBIN "pic/bmon/goldeen.pic"
GoldeenPicBack::       INCBIN "pic/monback/goldeenb.pic"
SeakingPicFront::      INCBIN "pic/bmon/seaking.pic"
SeakingPicBack::       INCBIN "pic/monback/seakingb.pic"
PonytaPicFront::       INCBIN "pic/bmon/ponyta.pic"
RapidashPicFront::     INCBIN "pic/bmon/rapidash.pic"
PonytaPicBack::        INCBIN "pic/monback/ponytab.pic"
RapidashPicBack::      INCBIN "pic/monback/rapidashb.pic"
RattataPicFront::      INCBIN "pic/bmon/rattata.pic"
RattataPicBack::       INCBIN "pic/monback/rattatab.pic"
RaticatePicFront::     INCBIN "pic/bmon/raticate.pic"
RaticatePicBack::      INCBIN "pic/monback/raticateb.pic"
NidorinoPicFront::     INCBIN "pic/bmon/nidorino.pic"
NidorinoPicBack::      INCBIN "pic/monback/nidorinob.pic"
NidorinaPicFront::     INCBIN "pic/bmon/nidorina.pic"
NidorinaPicBack::      INCBIN "pic/monback/nidorinab.pic"
GeodudePicFront::      INCBIN "pic/bmon/geodude.pic"
GeodudePicBack::       INCBIN "pic/monback/geodudeb.pic"
PorygonPicFront::      INCBIN "pic/bmon/porygon.pic"
PorygonPicBack::       INCBIN "pic/monback/porygonb.pic"
ELSE
WeezingPicFront::      INCBIN "pic/bmon/weezing.pic"
WeezingPicBack::       INCBIN "pic/swmonback/weezingb.pic"
PersianPicFront::      INCBIN "pic/bmon/persian.pic"
PersianPicBack::       INCBIN "pic/swmonback/persianb.pic"
MarowakPicFront::      INCBIN "pic/bmon/marowak.pic"
MarowakPicBack::       INCBIN "pic/swmonback/marowakb.pic"
HaunterPicFront::      INCBIN "pic/bmon/haunter.pic"
HaunterPicBack::       INCBIN "pic/swmonback/haunterb.pic"
AbraPicFront::         INCBIN "pic/bmon/abra.pic"
AbraPicBack::          INCBIN "pic/swmonback/abrab.pic"
AlakazamPicFront::     INCBIN "pic/bmon/alakazam.pic"
AlakazamPicBack::      INCBIN "pic/swmonback/alakazamb.pic"
PidgeottoPicFront::    INCBIN "pic/bmon/pidgeotto.pic"
PidgeottoPicBack::     INCBIN "pic/swmonback/pidgeottob.pic"
PidgeotPicFront::      INCBIN "pic/bmon/pidgeot.pic"
PidgeotPicBack::       INCBIN "pic/swmonback/pidgeotb.pic"
StarmiePicFront::      INCBIN "pic/bmon/starmie.pic"
StarmiePicBack::       INCBIN "pic/swmonback/starmieb.pic"
BulbasaurPicFront::    INCBIN "pic/bmon/bulbasaur.pic"
BulbasaurPicBack::     INCBIN "pic/swmonback/bulbasaurb.pic"
VenusaurPicFront::     INCBIN "pic/bmon/venusaur.pic"
VenusaurPicBack::      INCBIN "pic/swmonback/venusaurb.pic"
TentacruelPicFront::   INCBIN "pic/bmon/tentacruel.pic"
TentacruelPicBack::    INCBIN "pic/swmonback/tentacruelb.pic"
GoldeenPicFront::      INCBIN "pic/bmon/goldeen.pic"
GoldeenPicBack::       INCBIN "pic/swmonback/goldeenb.pic"
SeakingPicFront::      INCBIN "pic/bmon/seaking.pic"
SeakingPicBack::       INCBIN "pic/swmonback/seakingb.pic"
PonytaPicFront::       INCBIN "pic/bmon/ponyta.pic"
RapidashPicFront::     INCBIN "pic/bmon/rapidash.pic"
PonytaPicBack::        INCBIN "pic/swmonback/ponytab.pic"
RapidashPicBack::      INCBIN "pic/swmonback/rapidashb.pic"
RattataPicFront::      INCBIN "pic/bmon/rattata.pic"
RattataPicBack::       INCBIN "pic/swmonback/rattatab.pic"
RaticatePicFront::     INCBIN "pic/bmon/raticate.pic"
RaticatePicBack::      INCBIN "pic/swmonback/raticateb.pic"
NidorinoPicFront::     INCBIN "pic/bmon/nidorino.pic"
NidorinoPicBack::      INCBIN "pic/swmonback/nidorinob.pic"
NidorinaPicFront::     INCBIN "pic/bmon/nidorina.pic"
NidorinaPicBack::      INCBIN "pic/swmonback/nidorinab.pic"
GeodudePicFront::      INCBIN "pic/bmon/geodude.pic"
GeodudePicBack::       INCBIN "pic/swmonback/geodudeb.pic"
PorygonPicFront::      INCBIN "pic/bmon/porygon.pic"
PorygonPicBack::       INCBIN "pic/swmonback/porygonb.pic"
ENDC

SECTION "Pics 7", ROMX, BANK[PICS_7]
IF DEF(_REDGREENJP)
AerodactylPicFront::   INCBIN "pic/rgmon/aerodactyl.pic"
AerodactylPicBack::    INCBIN "pic/monback/aerodactylb.pic"
MagnemitePicFront::    INCBIN "pic/rgmon/magnemite.pic"
MagnemitePicBack::     INCBIN "pic/monback/magnemiteb.pic"
CharmanderPicFront::   INCBIN "pic/rgmon/charmander.pic"
CharmanderPicBack::    INCBIN "pic/monback/charmanderb.pic"
SquirtlePicFront::     INCBIN "pic/rgmon/squirtle.pic"
SquirtlePicBack::      INCBIN "pic/monback/squirtleb.pic"
CharmeleonPicFront::   INCBIN "pic/rgmon/charmeleon.pic"
CharmeleonPicBack::    INCBIN "pic/monback/charmeleonb.pic"
WartortlePicFront::    INCBIN "pic/rgmon/wartortle.pic"
WartortlePicBack::     INCBIN "pic/monback/wartortleb.pic"
CharizardPicFront::    INCBIN "pic/rgmon/charizard.pic"
CharizardPicBack::     INCBIN "pic/monback/charizardb.pic"
FossilKabutopsPic::    INCBIN "pic/other/fossilkabutops.pic"
FossilAerodactylPic::  INCBIN "pic/other/fossilaerodactyl.pic"
GhostPic::             INCBIN "pic/other/ghost.pic"
OddishPicFront::       INCBIN "pic/rgmon/oddish.pic"
OddishPicBack::        INCBIN "pic/monback/oddishb.pic"
GloomPicFront::        INCBIN "pic/rgmon/gloom.pic"
GloomPicBack::         INCBIN "pic/monback/gloomb.pic"
VileplumePicFront::    INCBIN "pic/rgmon/vileplume.pic"
VileplumePicBack::     INCBIN "pic/monback/vileplumeb.pic"
BellsproutPicFront::   INCBIN "pic/rgmon/bellsprout.pic"
BellsproutPicBack::    INCBIN "pic/monback/bellsproutb.pic"
WeepinbellPicFront::   INCBIN "pic/rgmon/weepinbell.pic"
WeepinbellPicBack::    INCBIN "pic/monback/weepinbellb.pic"
VictreebelPicFront::   INCBIN "pic/rgmon/victreebel.pic"
VictreebelPicBack::    INCBIN "pic/monback/victreebelb.pic"
MewPicFront:: 		   INCBIN "pic/rgmon/mew.pic"
MewPicBack::  		   INCBIN "pic/monback/mewb.pic"
ELIF DEF(_ORIGBACK)
AerodactylPicFront::   INCBIN "pic/bmon/aerodactyl.pic"
AerodactylPicBack::    INCBIN "pic/monback/aerodactylb.pic"
MagnemitePicFront::    INCBIN "pic/bmon/magnemite.pic"
MagnemitePicBack::     INCBIN "pic/monback/magnemiteb.pic"
CharmanderPicFront::   INCBIN "pic/bmon/charmander.pic"
CharmanderPicBack::    INCBIN "pic/monback/charmanderb.pic"
SquirtlePicFront::     INCBIN "pic/bmon/squirtle.pic"
SquirtlePicBack::      INCBIN "pic/monback/squirtleb.pic"
CharmeleonPicFront::   INCBIN "pic/bmon/charmeleon.pic"
CharmeleonPicBack::    INCBIN "pic/monback/charmeleonb.pic"
WartortlePicFront::    INCBIN "pic/bmon/wartortle.pic"
WartortlePicBack::     INCBIN "pic/monback/wartortleb.pic"
CharizardPicFront::    INCBIN "pic/bmon/charizard.pic"
CharizardPicBack::     INCBIN "pic/monback/charizardb.pic"
FossilKabutopsPic::    INCBIN "pic/other/fossilkabutops.pic"
FossilAerodactylPic::  INCBIN "pic/other/fossilaerodactyl.pic"
GhostPic::             INCBIN "pic/other/ghost.pic"
OddishPicFront::       INCBIN "pic/bmon/oddish.pic"
OddishPicBack::        INCBIN "pic/monback/oddishb.pic"
GloomPicFront::        INCBIN "pic/bmon/gloom.pic"
GloomPicBack::         INCBIN "pic/monback/gloomb.pic"
VileplumePicFront::    INCBIN "pic/bmon/vileplume.pic"
VileplumePicBack::     INCBIN "pic/monback/vileplumeb.pic"
BellsproutPicFront::   INCBIN "pic/bmon/bellsprout.pic"
BellsproutPicBack::    INCBIN "pic/monback/bellsproutb.pic"
WeepinbellPicFront::   INCBIN "pic/bmon/weepinbell.pic"
WeepinbellPicBack::    INCBIN "pic/monback/weepinbellb.pic"
VictreebelPicFront::   INCBIN "pic/bmon/victreebel.pic"
VictreebelPicBack::    INCBIN "pic/monback/victreebelb.pic"
MewPicFront:: 		   INCBIN "pic/bmon/mew.pic"
MewPicBack::  		   INCBIN "pic/monback/mewb.pic"
ELSE
AerodactylPicFront::   INCBIN "pic/bmon/aerodactyl.pic"
AerodactylPicBack::    INCBIN "pic/swmonback/aerodactylb.pic"
MagnemitePicFront::    INCBIN "pic/bmon/magnemite.pic"
MagnemitePicBack::     INCBIN "pic/swmonback/magnemiteb.pic"
CharmanderPicFront::   INCBIN "pic/bmon/charmander.pic"
CharmanderPicBack::    INCBIN "pic/swmonback/charmanderb.pic"
SquirtlePicFront::     INCBIN "pic/bmon/squirtle.pic"
SquirtlePicBack::      INCBIN "pic/swmonback/squirtleb.pic"
CharmeleonPicFront::   INCBIN "pic/bmon/charmeleon.pic"
CharmeleonPicBack::    INCBIN "pic/swmonback/charmeleonb.pic"
WartortlePicFront::    INCBIN "pic/bmon/wartortle.pic"
WartortlePicBack::     INCBIN "pic/swmonback/wartortleb.pic"
CharizardPicFront::    INCBIN "pic/bmon/charizard.pic"
CharizardPicBack::     INCBIN "pic/swmonback/charizardb.pic"
FossilKabutopsPic::    INCBIN "pic/other/fossilkabutops.pic"
FossilAerodactylPic::  INCBIN "pic/other/fossilaerodactyl.pic"
GhostPic::             INCBIN "pic/other/ghost.pic"
OddishPicFront::       INCBIN "pic/bmon/oddish.pic"
OddishPicBack::        INCBIN "pic/swmonback/oddishb.pic"
GloomPicFront::        INCBIN "pic/bmon/gloom.pic"
GloomPicBack::         INCBIN "pic/swmonback/gloomb.pic"
VileplumePicFront::    INCBIN "pic/bmon/vileplume.pic"
VileplumePicBack::     INCBIN "pic/swmonback/vileplumeb.pic"
BellsproutPicFront::   INCBIN "pic/bmon/bellsprout.pic"
BellsproutPicBack::    INCBIN "pic/swmonback/bellsproutb.pic"
WeepinbellPicFront::   INCBIN "pic/bmon/weepinbell.pic"
WeepinbellPicBack::    INCBIN "pic/swmonback/weepinbellb.pic"
VictreebelPicFront::   INCBIN "pic/bmon/victreebel.pic"
VictreebelPicBack::    INCBIN "pic/swmonback/victreebelb.pic"
MewPicFront:: 		   INCBIN "pic/bmon/mew.pic"
MewPicBack::  		   INCBIN "pic/swmonback/mewb.pic"
ENDC
MissingnoPic::         INCBIN "pic/other/missingno.pic"
RedPicBack::           INCBIN "pic/trainer/redb.pic"
OldManPic::            INCBIN "pic/trainer/oldman.pic"

SECTION "Battle (bank D)", ROMX, BANK[$D]
;migrated content to bank 9

SECTION "bankE",ROMX,BANK[$E]

INCLUDE "data/moves.asm"
BaseStats: INCLUDE "data/base_stats.asm"
INCLUDE "data/cries.asm"
;INCLUDE "engine/battle/unused_stats_functions.asm" ;joenote - putting this back into use and moving to bank 2d
INCLUDE "engine/battle/scroll_draw_trainer_pic.asm"
INCLUDE "engine/battle/trainer_ai.asm"
INCLUDE "engine/battle/draw_hud_pokeball_gfx.asm"

;joenote - moved trading graphics to empty bank
;TradingAnimationGraphics:
;INCBIN "gfx/game_boy.2bpp"
;INCBIN "gfx/link_cable.2bpp"
;TradingAnimationGraphicsEnd:

;; Pokeball traveling through the link cable.
;TradingAnimationGraphics2: INCBIN "gfx/trade2.2bpp"
;TradingAnimationGraphics2End:

INCLUDE "engine/evos_moves.asm"
INCLUDE "engine/battle/moveEffects/heal_effect.asm"
INCLUDE "engine/battle/moveEffects/transform_effect.asm"
INCLUDE "engine/battle/moveEffects/reflect_light_screen_effect.asm"


SECTION "bankF",ROMX,BANK[$F]

INCLUDE "engine/battle/core.asm"


SECTION "bank10",ROMX,BANK[$10]

INCLUDE "engine/menu/pokedex.asm"
INCLUDE "engine/trade.asm"
INCLUDE "engine/intro.asm"
INCLUDE "engine/trade2.asm"


SECTION "bank11",ROMX,BANK[$11]

INCLUDE "data/mapHeaders/lavendertown.asm"
INCLUDE "data/mapObjects/lavendertown.asm"
LavenderTownBlocks: INCBIN "maps/lavendertown.blk"

ViridianPokecenterBlocks: INCBIN "maps/viridianpokecenter.blk"

SafariZoneRestHouse1Blocks:
SafariZoneRestHouse2Blocks:
SafariZoneRestHouse3Blocks:
SafariZoneRestHouse4Blocks: INCBIN "maps/safarizoneresthouse1.blk"

INCLUDE "scripts/lavendertown.asm"

INCLUDE "engine/pokedex_rating.asm"

INCLUDE "data/mapHeaders/viridianpokecenter.asm"
INCLUDE "scripts/viridianpokecenter.asm"
INCLUDE "data/mapObjects/viridianpokecenter.asm"

INCLUDE "data/mapHeaders/mansion1.asm"
INCLUDE "scripts/mansion1.asm"
INCLUDE "data/mapObjects/mansion1.asm"
Mansion1Blocks: INCBIN "maps/mansion1.blk"

INCLUDE "data/mapHeaders/rocktunnel1.asm"
INCLUDE "scripts/rocktunnel1.asm"
INCLUDE "data/mapObjects/rocktunnel1.asm"
RockTunnel1Blocks: INCBIN "maps/rocktunnel1.blk"

INCLUDE "data/mapHeaders/seafoamislands1.asm"
INCLUDE "scripts/seafoamislands1.asm"
INCLUDE "data/mapObjects/seafoamislands1.asm"
SeafoamIslands1Blocks: INCBIN "maps/seafoamislands1.blk"

INCLUDE "data/mapHeaders/ssanne3.asm"
INCLUDE "scripts/ssanne3.asm"
INCLUDE "data/mapObjects/ssanne3.asm"
SSAnne3Blocks: INCBIN "maps/ssanne3.blk"

INCLUDE "data/mapHeaders/victoryroad3.asm"
INCLUDE "scripts/victoryroad3.asm"
INCLUDE "data/mapObjects/victoryroad3.asm"
VictoryRoad3Blocks: INCBIN "maps/victoryroad3.blk"

INCLUDE "data/mapHeaders/rockethideout1.asm"
INCLUDE "scripts/rockethideout1.asm"
INCLUDE "data/mapObjects/rockethideout1.asm"
RocketHideout1Blocks: INCBIN "maps/rockethideout1.blk"

INCLUDE "data/mapHeaders/rockethideout2.asm"
INCLUDE "scripts/rockethideout2.asm"
INCLUDE "data/mapObjects/rockethideout2.asm"
RocketHideout2Blocks: INCBIN "maps/rockethideout2.blk"

INCLUDE "data/mapHeaders/rockethideout3.asm"
INCLUDE "scripts/rockethideout3.asm"
INCLUDE "data/mapObjects/rockethideout3.asm"
RocketHideout3Blocks: INCBIN "maps/rockethideout3.blk"

INCLUDE "data/mapHeaders/rockethideout4.asm"
INCLUDE "scripts/rockethideout4.asm"
INCLUDE "data/mapObjects/rockethideout4.asm"
RocketHideout4Blocks: INCBIN "maps/rockethideout4.blk"

INCLUDE "data/mapHeaders/rockethideoutelevator.asm"
INCLUDE "scripts/rockethideoutelevator.asm"
INCLUDE "data/mapObjects/rockethideoutelevator.asm"
RocketHideoutElevatorBlocks: INCBIN "maps/rockethideoutelevator.blk"

INCLUDE "data/mapHeaders/silphcoelevator.asm"
INCLUDE "scripts/silphcoelevator.asm"
INCLUDE "data/mapObjects/silphcoelevator.asm"
SilphCoElevatorBlocks: INCBIN "maps/silphcoelevator.blk"

INCLUDE "data/mapHeaders/safarizoneeast.asm"
INCLUDE "scripts/safarizoneeast.asm"
INCLUDE "data/mapObjects/safarizoneeast.asm"
SafariZoneEastBlocks: INCBIN "maps/safarizoneeast.blk"

INCLUDE "data/mapHeaders/safarizonenorth.asm"
INCLUDE "scripts/safarizonenorth.asm"
INCLUDE "data/mapObjects/safarizonenorth.asm"
SafariZoneNorthBlocks: INCBIN "maps/safarizonenorth.blk"

INCLUDE "data/mapHeaders/safarizonecenter.asm"
INCLUDE "scripts/safarizonecenter.asm"
INCLUDE "data/mapObjects/safarizonecenter.asm"
SafariZoneCenterBlocks: INCBIN "maps/safarizonecenter.blk"

INCLUDE "data/mapHeaders/safarizoneresthouse1.asm"
INCLUDE "scripts/safarizoneresthouse1.asm"
INCLUDE "data/mapObjects/safarizoneresthouse1.asm"

INCLUDE "data/mapHeaders/safarizoneresthouse2.asm"
INCLUDE "scripts/safarizoneresthouse2.asm"
INCLUDE "data/mapObjects/safarizoneresthouse2.asm"

INCLUDE "data/mapHeaders/safarizoneresthouse3.asm"
INCLUDE "scripts/safarizoneresthouse3.asm"
INCLUDE "data/mapObjects/safarizoneresthouse3.asm"

INCLUDE "data/mapHeaders/safarizoneresthouse4.asm"
INCLUDE "scripts/safarizoneresthouse4.asm"
INCLUDE "data/mapObjects/safarizoneresthouse4.asm"

INCLUDE "data/mapHeaders/unknowndungeon2.asm"
INCLUDE "scripts/unknowndungeon2.asm"
INCLUDE "data/mapObjects/unknowndungeon2.asm"
IF DEF(_REDGREENJP)
UnknownDungeon2Blocks: INCBIN "maps/green/unknowndungeon2.blk"
ELSE
UnknownDungeon2Blocks: INCBIN "maps/unknowndungeon2.blk"
ENDC

INCLUDE "data/mapHeaders/unknowndungeon3.asm"
INCLUDE "scripts/unknowndungeon3.asm"
INCLUDE "data/mapObjects/unknowndungeon3.asm"
IF DEF(_REDGREENJP)
UnknownDungeon3Blocks: INCBIN "maps/green/unknowndungeon3.blk"
ELSE
UnknownDungeon3Blocks: INCBIN "maps/unknowndungeon3.blk"
ENDC

INCLUDE "data/mapHeaders/rocktunnel2.asm"
INCLUDE "scripts/rocktunnel2.asm"
INCLUDE "data/mapObjects/rocktunnel2.asm"
RockTunnel2Blocks: INCBIN "maps/rocktunnel2.blk"

INCLUDE "data/mapHeaders/seafoamislands2.asm"
INCLUDE "scripts/seafoamislands2.asm"
INCLUDE "data/mapObjects/seafoamislands2.asm"
SeafoamIslands2Blocks: INCBIN "maps/seafoamislands2.blk"

INCLUDE "data/mapHeaders/seafoamislands3.asm"
INCLUDE "scripts/seafoamislands3.asm"
INCLUDE "data/mapObjects/seafoamislands3.asm"
SeafoamIslands3Blocks: INCBIN "maps/seafoamislands3.blk"

INCLUDE "data/mapHeaders/seafoamislands4.asm"
INCLUDE "scripts/seafoamislands4.asm"
INCLUDE "data/mapObjects/seafoamislands4.asm"
SeafoamIslands4Blocks: INCBIN "maps/seafoamislands4.blk"

INCLUDE "data/mapHeaders/seafoamislands5.asm"
INCLUDE "scripts/seafoamislands5.asm"
INCLUDE "data/mapObjects/seafoamislands5.asm"
SeafoamIslands5Blocks: INCBIN "maps/seafoamislands5.blk"

INCLUDE "engine/overworld/hidden_objects.asm"


SECTION "bank12",ROMX,BANK[$12]

INCLUDE "data/mapHeaders/route7.asm"
INCLUDE "data/mapObjects/route7.asm"
Route7Blocks: INCBIN "maps/route7.blk"

CeladonPokecenterBlocks:
RockTunnelPokecenterBlocks:
MtMoonPokecenterBlocks: INCBIN "maps/mtmoonpokecenter.blk"

Route18GateBlocks:
Route15GateBlocks:
Route11GateBlocks: INCBIN "maps/route11gate.blk"

Route18GateUpstairsBlocks:
Route16GateUpstairsBlocks:
Route12GateUpstairsBlocks:
Route15GateUpstairsBlocks:
Route11GateUpstairsBlocks: INCBIN "maps/route11gateupstairs.blk"

INCLUDE "engine/predefs12.asm"

INCLUDE "scripts/route7.asm"

INCLUDE "data/mapHeaders/redshouse1f.asm"
INCLUDE "scripts/redshouse1f.asm"
INCLUDE "data/mapObjects/redshouse1f.asm"
RedsHouse1FBlocks: INCBIN "maps/redshouse1f.blk"

INCLUDE "data/mapHeaders/celadonmart3.asm"
INCLUDE "scripts/celadonmart3.asm"
INCLUDE "data/mapObjects/celadonmart3.asm"
CeladonMart3Blocks: INCBIN "maps/celadonmart3.blk"

INCLUDE "data/mapHeaders/celadonmart4.asm"
INCLUDE "scripts/celadonmart4.asm"
INCLUDE "data/mapObjects/celadonmart4.asm"
CeladonMart4Blocks: INCBIN "maps/celadonmart4.blk"

INCLUDE "data/mapHeaders/celadonmartroof.asm"
INCLUDE "scripts/celadonmartroof.asm"
INCLUDE "data/mapObjects/celadonmartroof.asm"
CeladonMartRoofBlocks: INCBIN "maps/celadonmartroof.blk"

INCLUDE "data/mapHeaders/celadonmartelevator.asm"
INCLUDE "scripts/celadonmartelevator.asm"
INCLUDE "data/mapObjects/celadonmartelevator.asm"
CeladonMartElevatorBlocks: INCBIN "maps/celadonmartelevator.blk"

INCLUDE "data/mapHeaders/celadonmansion1.asm"
INCLUDE "scripts/celadonmansion1.asm"
INCLUDE "data/mapObjects/celadonmansion1.asm"
CeladonMansion1Blocks: INCBIN "maps/celadonmansion1.blk"

INCLUDE "data/mapHeaders/celadonmansion2.asm"
INCLUDE "scripts/celadonmansion2.asm"
INCLUDE "data/mapObjects/celadonmansion2.asm"
CeladonMansion2Blocks: INCBIN "maps/celadonmansion2.blk"

INCLUDE "data/mapHeaders/celadonmansion3.asm"
INCLUDE "scripts/celadonmansion3.asm"
INCLUDE "data/mapObjects/celadonmansion3.asm"
CeladonMansion3Blocks: INCBIN "maps/celadonmansion3.blk"

INCLUDE "data/mapHeaders/celadonmansion4.asm"
INCLUDE "scripts/celadonmansion4.asm"
INCLUDE "data/mapObjects/celadonmansion4.asm"
CeladonMansion4Blocks: INCBIN "maps/celadonmansion4.blk"

INCLUDE "data/mapHeaders/celadonpokecenter.asm"
INCLUDE "scripts/celadonpokecenter.asm"
INCLUDE "data/mapObjects/celadonpokecenter.asm"

INCLUDE "data/mapHeaders/celadongym.asm"
INCLUDE "scripts/celadongym.asm"
INCLUDE "data/mapObjects/celadongym.asm"
CeladonGymBlocks: INCBIN "maps/celadongym.blk"

INCLUDE "data/mapHeaders/celadongamecorner.asm"
INCLUDE "scripts/celadongamecorner.asm"
INCLUDE "data/mapObjects/celadongamecorner.asm"
CeladonGameCornerBlocks: INCBIN "maps/celadongamecorner.blk"

INCLUDE "data/mapHeaders/celadonmart5.asm"
INCLUDE "scripts/celadonmart5.asm"
INCLUDE "data/mapObjects/celadonmart5.asm"
CeladonMart5Blocks: INCBIN "maps/celadonmart5.blk"

INCLUDE "data/mapHeaders/celadonprizeroom.asm"
INCLUDE "scripts/celadonprizeroom.asm"
INCLUDE "data/mapObjects/celadonprizeroom.asm"
CeladonPrizeRoomBlocks: INCBIN "maps/celadonprizeroom.blk"

INCLUDE "data/mapHeaders/celadondiner.asm"
INCLUDE "scripts/celadondiner.asm"
INCLUDE "data/mapObjects/celadondiner.asm"
CeladonDinerBlocks: INCBIN "maps/celadondiner.blk"

INCLUDE "data/mapHeaders/celadonhouse.asm"
INCLUDE "scripts/celadonhouse.asm"
INCLUDE "data/mapObjects/celadonhouse.asm"
CeladonHouseBlocks: INCBIN "maps/celadonhouse.blk"

INCLUDE "data/mapHeaders/celadonhotel.asm"
INCLUDE "scripts/celadonhotel.asm"
INCLUDE "data/mapObjects/celadonhotel.asm"
CeladonHotelBlocks: INCBIN "maps/celadonhotel.blk"

INCLUDE "data/mapHeaders/mtmoonpokecenter.asm"
INCLUDE "scripts/mtmoonpokecenter.asm"
INCLUDE "data/mapObjects/mtmoonpokecenter.asm"

INCLUDE "data/mapHeaders/rocktunnelpokecenter.asm"
INCLUDE "scripts/rocktunnelpokecenter.asm"
INCLUDE "data/mapObjects/rocktunnelpokecenter.asm"

INCLUDE "data/mapHeaders/route11gate.asm"
INCLUDE "scripts/route11gate.asm"
INCLUDE "data/mapObjects/route11gate.asm"

INCLUDE "data/mapHeaders/route11gateupstairs.asm"
INCLUDE "scripts/route11gateupstairs.asm"
INCLUDE "data/mapObjects/route11gateupstairs.asm"

INCLUDE "data/mapHeaders/route12gate.asm"
INCLUDE "scripts/route12gate.asm"
INCLUDE "data/mapObjects/route12gate.asm"
Route12GateBlocks: INCBIN "maps/route12gate.blk"

INCLUDE "data/mapHeaders/route12gateupstairs.asm"
INCLUDE "scripts/route12gateupstairs.asm"
INCLUDE "data/mapObjects/route12gateupstairs.asm"

INCLUDE "data/mapHeaders/route15gate.asm"
INCLUDE "scripts/route15gate.asm"
INCLUDE "data/mapObjects/route15gate.asm"

INCLUDE "data/mapHeaders/route15gateupstairs.asm"
INCLUDE "scripts/route15gateupstairs.asm"
INCLUDE "data/mapObjects/route15gateupstairs.asm"

INCLUDE "data/mapHeaders/route16gate.asm"
INCLUDE "scripts/route16gate.asm"
INCLUDE "data/mapObjects/route16gate.asm"
Route16GateBlocks: INCBIN "maps/route16gate.blk"

INCLUDE "data/mapHeaders/route16gateupstairs.asm"
INCLUDE "scripts/route16gateupstairs.asm"
INCLUDE "data/mapObjects/route16gateupstairs.asm"

INCLUDE "data/mapHeaders/route18gate.asm"
INCLUDE "scripts/route18gate.asm"
INCLUDE "data/mapObjects/route18gate.asm"

INCLUDE "data/mapHeaders/route18gateupstairs.asm"
INCLUDE "scripts/route18gateupstairs.asm"
INCLUDE "data/mapObjects/route18gateupstairs.asm"

INCLUDE "data/mapHeaders/mtmoon1.asm"
INCLUDE "scripts/mtmoon1.asm"
INCLUDE "data/mapObjects/mtmoon1.asm"
MtMoon1Blocks: INCBIN "maps/mtmoon1.blk"

INCLUDE "data/mapHeaders/mtmoon3.asm"
INCLUDE "scripts/mtmoon3.asm"
INCLUDE "data/mapObjects/mtmoon3.asm"
MtMoon3Blocks: INCBIN "maps/mtmoon3.blk"

INCLUDE "data/mapHeaders/safarizonewest.asm"
INCLUDE "scripts/safarizonewest.asm"
INCLUDE "data/mapObjects/safarizonewest.asm"
SafariZoneWestBlocks: INCBIN "maps/safarizonewest.blk"

INCLUDE "data/mapHeaders/safarizonesecrethouse.asm"
INCLUDE "scripts/safarizonesecrethouse.asm"
INCLUDE "data/mapObjects/safarizonesecrethouse.asm"
SafariZoneSecretHouseBlocks: INCBIN "maps/safarizonesecrethouse.blk"


SECTION "bank13",ROMX,BANK[$13]

TrainerPics::
YoungsterPic::     INCBIN "pic/trainer/youngster.pic"
BugCatcherPic::    INCBIN "pic/trainer/bugcatcher.pic"
LassPic::          INCBIN "pic/trainer/lass.pic"
SailorPic::        INCBIN "pic/trainer/sailor.pic"
JrTrainerMPic::    INCBIN "pic/trainer/jr.trainerm.pic"
JrTrainerFPic::    INCBIN "pic/trainer/jr.trainerf.pic"
PokemaniacPic::    INCBIN "pic/trainer/pokemaniac.pic"
SuperNerdPic::     INCBIN "pic/trainer/supernerd.pic"
HikerPic::         INCBIN "pic/trainer/hiker.pic"
BikerPic::         INCBIN "pic/trainer/biker.pic"
BurglarPic::       INCBIN "pic/trainer/burglar.pic"
EngineerPic::      INCBIN "pic/trainer/engineer.pic"
FisherPic::        INCBIN "pic/trainer/fisher.pic"
SwimmerPic::       INCBIN "pic/trainer/swimmer.pic"
CueBallPic::       INCBIN "pic/trainer/cueball.pic"
GamblerPic::       INCBIN "pic/trainer/gambler.pic"
BeautyPic::        INCBIN "pic/trainer/beauty.pic"
PsychicPic::       INCBIN "pic/trainer/psychic.pic"
RockerPic::        INCBIN "pic/trainer/rocker.pic"
JugglerPic::       INCBIN "pic/trainer/juggler.pic"
TamerPic::         INCBIN "pic/trainer/tamer.pic"
BirdKeeperPic::    INCBIN "pic/trainer/birdkeeper.pic"
BlackbeltPic::     INCBIN "pic/trainer/blackbelt.pic"
Rival1Pic::        INCBIN "pic/trainer/rival1.pic"
ProfOakPic::       INCBIN "pic/trainer/prof.oak.pic"
ChiefPic::		   ;INCBIN "pic/trainer/chief.pic"	;joenote - not enough rom space
ScientistPic::     INCBIN "pic/trainer/scientist.pic"
GiovanniPic::      INCBIN "pic/trainer/giovanni.pic"
RocketPic::        INCBIN "pic/trainer/rocket.pic"
CooltrainerMPic::  INCBIN "pic/trainer/cooltrainerm.pic"
CooltrainerFPic::  INCBIN "pic/trainer/cooltrainerf.pic"
BrunoPic::         INCBIN "pic/trainer/bruno.pic"
BrockPic::         INCBIN "pic/trainer/brock.pic"
MistyPic::         INCBIN "pic/trainer/misty.pic"
LtSurgePic::       INCBIN "pic/trainer/lt.surge.pic"
ErikaPic::         INCBIN "pic/ytrainer/erika.pic"	;joenote - use her yellow sprite to ditch the funerary clothes
KogaPic::          INCBIN "pic/trainer/koga.pic"
BlainePic::        INCBIN "pic/trainer/blaine.pic"
SabrinaPic::       INCBIN "pic/trainer/sabrina.pic"
GentlemanPic::     INCBIN "pic/trainer/gentleman.pic"
Rival2Pic::        INCBIN "pic/trainer/rival2.pic"
Rival3Pic::        INCBIN "pic/trainer/rival3.pic"
LoreleiPic::       INCBIN "pic/trainer/lorelei.pic"
ChannelerPic::     INCBIN "pic/trainer/channeler.pic"
AgathaPic::        INCBIN "pic/trainer/agatha.pic"
LancePic::         INCBIN "pic/trainer/lance.pic"

;joenote - moved to a different bank
;INCLUDE "data/mapHeaders/tradecenter.asm"
;INCLUDE "scripts/tradecenter.asm"
;INCLUDE "data/mapObjects/tradecenter.asm"
;TradeCenterBlocks: INCBIN "maps/tradecenter.blk"

;INCLUDE "data/mapHeaders/colosseum.asm"
;INCLUDE "scripts/colosseum.asm"
;INCLUDE "data/mapObjects/colosseum.asm"
;ColosseumBlocks: INCBIN "maps/colosseum.blk"

;INCLUDE "engine/give_pokemon.asm"

;INCLUDE "engine/predefs.asm"


SECTION "bank14",ROMX,BANK[$14]

INCLUDE "data/mapHeaders/route22.asm"
INCLUDE "data/mapObjects/route22.asm"
Route22Blocks: INCBIN "maps/route22.blk"

INCLUDE "data/mapHeaders/route20.asm"
INCLUDE "data/mapObjects/route20.asm"
Route20Blocks: INCBIN "maps/route20.blk"

INCLUDE "data/mapHeaders/route23.asm"
INCLUDE "data/mapObjects/route23.asm"
Route23Blocks: INCBIN "maps/route23.blk"

INCLUDE "data/mapHeaders/route24.asm"
INCLUDE "data/mapObjects/route24.asm"
Route24Blocks: INCBIN "maps/route24.blk"

INCLUDE "data/mapHeaders/route25.asm"
INCLUDE "data/mapObjects/route25.asm"
Route25Blocks: INCBIN "maps/route25.blk"

INCLUDE "data/mapHeaders/indigoplateau.asm"
INCLUDE "scripts/indigoplateau.asm"
INCLUDE "data/mapObjects/indigoplateau.asm"
IndigoPlateauBlocks: INCBIN "maps/indigoplateau.blk"

INCLUDE "data/mapHeaders/saffroncity.asm"
INCLUDE "data/mapObjects/saffroncity.asm"
SaffronCityBlocks: INCBIN "maps/saffroncity.blk"
INCLUDE "scripts/saffroncity.asm"

INCLUDE "scripts/route20.asm"
INCLUDE "scripts/route22.asm"
INCLUDE "scripts/route23.asm"
INCLUDE "scripts/route24.asm"
INCLUDE "scripts/route25.asm"

INCLUDE "data/mapHeaders/victoryroad2.asm"
INCLUDE "scripts/victoryroad2.asm"
INCLUDE "data/mapObjects/victoryroad2.asm"
VictoryRoad2Blocks: INCBIN "maps/victoryroad2.blk"

INCLUDE "data/mapHeaders/mtmoon2.asm"
INCLUDE "scripts/mtmoon2.asm"
INCLUDE "data/mapObjects/mtmoon2.asm"
MtMoon2Blocks: INCBIN "maps/mtmoon2.blk"

INCLUDE "data/mapHeaders/silphco7.asm"
INCLUDE "scripts/silphco7.asm"
INCLUDE "data/mapObjects/silphco7.asm"
SilphCo7Blocks: INCBIN "maps/silphco7.blk"

INCLUDE "data/mapHeaders/mansion2.asm"
INCLUDE "scripts/mansion2.asm"
INCLUDE "data/mapObjects/mansion2.asm"
Mansion2Blocks: INCBIN "maps/mansion2.blk"

INCLUDE "data/mapHeaders/mansion3.asm"
INCLUDE "scripts/mansion3.asm"
INCLUDE "data/mapObjects/mansion3.asm"
Mansion3Blocks: INCBIN "maps/mansion3.blk"

INCLUDE "data/mapHeaders/mansion4.asm"
INCLUDE "scripts/mansion4.asm"
INCLUDE "data/mapObjects/mansion4.asm"
Mansion4Blocks: INCBIN "maps/mansion4.blk"

INCLUDE "engine/battle/init_battle_variables.asm"
INCLUDE "engine/battle/moveEffects/paralyze_effect.asm"

INCLUDE "engine/overworld/card_key.asm"

INCLUDE "engine/menu/prize_menu.asm"

INCLUDE "engine/hidden_object_functions14.asm"


SECTION "bank15",ROMX,BANK[$15]

INCLUDE "data/mapHeaders/route2.asm"
INCLUDE "data/mapObjects/route2.asm"
Route2Blocks: INCBIN "maps/route2.blk"

INCLUDE "data/mapHeaders/route3.asm"
INCLUDE "data/mapObjects/route3.asm"
Route3Blocks: INCBIN "maps/route3.blk"

INCLUDE "data/mapHeaders/route4.asm"
INCLUDE "data/mapObjects/route4.asm"
Route4Blocks: INCBIN "maps/route4.blk"

INCLUDE "data/mapHeaders/route5.asm"
INCLUDE "data/mapObjects/route5.asm"
Route5Blocks: INCBIN "maps/route5.blk"

INCLUDE "data/mapHeaders/route9.asm"
INCLUDE "data/mapObjects/route9.asm"
Route9Blocks: INCBIN "maps/route9.blk"

INCLUDE "data/mapHeaders/route13.asm"
INCLUDE "data/mapObjects/route13.asm"
Route13Blocks: INCBIN "maps/route13.blk"

INCLUDE "data/mapHeaders/route14.asm"
INCLUDE "data/mapObjects/route14.asm"
Route14Blocks: INCBIN "maps/route14.blk"

INCLUDE "data/mapHeaders/route17.asm"
INCLUDE "data/mapObjects/route17.asm"
Route17Blocks: INCBIN "maps/route17.blk"

INCLUDE "data/mapHeaders/route19.asm"
INCLUDE "data/mapObjects/route19.asm"
Route19Blocks: INCBIN "maps/route19.blk"

INCLUDE "data/mapHeaders/route21.asm"
INCLUDE "data/mapObjects/route21.asm"
Route21Blocks: INCBIN "maps/route21.blk"

VermilionHouse2Blocks:
Route12HouseBlocks:
DayCareMBlocks: INCBIN "maps/daycarem.blk"

FuchsiaHouse3Blocks: INCBIN "maps/fuchsiahouse3.blk"

INCLUDE "engine/battle/experience.asm"

INCLUDE "scripts/route2.asm"
INCLUDE "scripts/route3.asm"
INCLUDE "scripts/route4.asm"
INCLUDE "scripts/route5.asm"
INCLUDE "scripts/route9.asm"
INCLUDE "scripts/route13.asm"
INCLUDE "scripts/route14.asm"
INCLUDE "scripts/route17.asm"
INCLUDE "scripts/route19.asm"
INCLUDE "scripts/route21.asm"

INCLUDE "data/mapHeaders/vermilionhouse2.asm"
INCLUDE "scripts/vermilionhouse2.asm"
INCLUDE "data/mapObjects/vermilionhouse2.asm"

INCLUDE "data/mapHeaders/celadonmart2.asm"
INCLUDE "scripts/celadonmart2.asm"
INCLUDE "data/mapObjects/celadonmart2.asm"
CeladonMart2Blocks: INCBIN "maps/celadonmart2.blk"

INCLUDE "data/mapHeaders/fuchsiahouse3.asm"
INCLUDE "scripts/fuchsiahouse3.asm"
INCLUDE "data/mapObjects/fuchsiahouse3.asm"

INCLUDE "data/mapHeaders/daycarem.asm"
INCLUDE "scripts/daycarem.asm"
INCLUDE "data/mapObjects/daycarem.asm"

INCLUDE "data/mapHeaders/route12house.asm"
INCLUDE "scripts/route12house.asm"
INCLUDE "data/mapObjects/route12house.asm"

INCLUDE "data/mapHeaders/silphco8.asm"
INCLUDE "scripts/silphco8.asm"
INCLUDE "data/mapObjects/silphco8.asm"
SilphCo8Blocks: INCBIN "maps/silphco8.blk"

INCLUDE "engine/menu/diploma.asm"

INCLUDE "engine/overworld/trainers.asm"


SECTION "bank16",ROMX,BANK[$16]

INCLUDE "data/mapHeaders/route6.asm"
INCLUDE "data/mapObjects/route6.asm"
Route6Blocks: INCBIN "maps/route6.blk"

INCLUDE "data/mapHeaders/route8.asm"
INCLUDE "data/mapObjects/route8.asm"
Route8Blocks: INCBIN "maps/route8.blk"

INCLUDE "data/mapHeaders/route10.asm"
INCLUDE "data/mapObjects/route10.asm"
Route10Blocks: INCBIN "maps/route10.blk"

INCLUDE "data/mapHeaders/route11.asm"
INCLUDE "data/mapObjects/route11.asm"
Route11Blocks: INCBIN "maps/route11.blk"

INCLUDE "data/mapHeaders/route12.asm"
INCLUDE "data/mapObjects/route12.asm"
Route12Blocks: INCBIN "maps/route12.blk"

INCLUDE "data/mapHeaders/route15.asm"
INCLUDE "data/mapObjects/route15.asm"
Route15Blocks: INCBIN "maps/route15.blk"

INCLUDE "data/mapHeaders/route16.asm"
INCLUDE "data/mapObjects/route16.asm"
Route16Blocks: INCBIN "maps/route16.blk"

INCLUDE "data/mapHeaders/route18.asm"
INCLUDE "data/mapObjects/route18.asm"
Route18Blocks: INCBIN "maps/route18.blk"

	INCBIN "maps/unusedblocks58d7d.blk"

INCLUDE "engine/battle/common_text.asm"

INCLUDE "engine/experience.asm"

INCLUDE "engine/overworld/oaks_aide.asm"

INCLUDE "scripts/route6.asm"
INCLUDE "scripts/route8.asm"
INCLUDE "scripts/route10.asm"
INCLUDE "scripts/route11.asm"
INCLUDE "scripts/route12.asm"
INCLUDE "scripts/route15.asm"
INCLUDE "scripts/route16.asm"
INCLUDE "scripts/route18.asm"

INCLUDE "data/mapHeaders/fanclub.asm"
INCLUDE "scripts/fanclub.asm"
INCLUDE "data/mapObjects/fanclub.asm"
FanClubBlocks: INCBIN "maps/fanclub.blk"

INCLUDE "data/mapHeaders/silphco2.asm"
INCLUDE "scripts/silphco2.asm"
INCLUDE "data/mapObjects/silphco2.asm"
SilphCo2Blocks: INCBIN "maps/silphco2.blk"

INCLUDE "data/mapHeaders/silphco3.asm"
INCLUDE "scripts/silphco3.asm"
INCLUDE "data/mapObjects/silphco3.asm"
SilphCo3Blocks: INCBIN "maps/silphco3.blk"

INCLUDE "data/mapHeaders/silphco10.asm"
INCLUDE "scripts/silphco10.asm"
INCLUDE "data/mapObjects/silphco10.asm"
SilphCo10Blocks: INCBIN "maps/silphco10.blk"

INCLUDE "data/mapHeaders/lance.asm"
INCLUDE "scripts/lance.asm"
INCLUDE "data/mapObjects/lance.asm"
LanceBlocks: INCBIN "maps/lance.blk"

INCLUDE "data/mapHeaders/halloffameroom.asm"
INCLUDE "scripts/halloffameroom.asm"
INCLUDE "data/mapObjects/halloffameroom.asm"
HallofFameRoomBlocks: INCBIN "maps/halloffameroom.blk"

INCLUDE "engine/overworld/saffron_guards.asm"


SECTION "bank17",ROMX,BANK[$17]

SaffronMartBlocks:
LavenderMartBlocks:
CeruleanMartBlocks:
VermilionMartBlocks: INCBIN "maps/vermilionmart.blk"

CopycatsHouse2FBlocks:
RedsHouse2FBlocks: INCBIN "maps/redshouse2f.blk"

Museum1FBlocks: INCBIN "maps/museum1f.blk"

Museum2FBlocks: INCBIN "maps/museum2f.blk"

SaffronPokecenterBlocks:
VermilionPokecenterBlocks:
LavenderPokecenterBlocks:
PewterPokecenterBlocks: INCBIN "maps/pewterpokecenter.blk"

UndergroundPathEntranceRoute7Blocks:
UndergroundPathEntranceRoute7CopyBlocks:
UndergroundPathEntranceRoute6Blocks:
UndergroundPathEntranceRoute5Blocks: INCBIN "maps/undergroundpathentranceroute5.blk"

Route2GateBlocks:
ViridianForestEntranceBlocks:
ViridianForestExitBlocks: INCBIN "maps/viridianforestexit.blk"

INCLUDE "data/mapHeaders/redshouse2f.asm"
INCLUDE "scripts/redshouse2f.asm"
INCLUDE "data/mapObjects/redshouse2f.asm"

INCLUDE "engine/predefs17.asm"

INCLUDE "data/mapHeaders/museum1f.asm"
INCLUDE "scripts/museum1f.asm"
INCLUDE "data/mapObjects/museum1f.asm"

INCLUDE "data/mapHeaders/museum2f.asm"
INCLUDE "scripts/museum2f.asm"
INCLUDE "data/mapObjects/museum2f.asm"

INCLUDE "data/mapHeaders/pewtergym.asm"
INCLUDE "scripts/pewtergym.asm"
INCLUDE "data/mapObjects/pewtergym.asm"
PewterGymBlocks: INCBIN "maps/pewtergym.blk"

INCLUDE "data/mapHeaders/pewterpokecenter.asm"
INCLUDE "scripts/pewterpokecenter.asm"
INCLUDE "data/mapObjects/pewterpokecenter.asm"

INCLUDE "data/mapHeaders/ceruleanpokecenter.asm"
INCLUDE "scripts/ceruleanpokecenter.asm"
INCLUDE "data/mapObjects/ceruleanpokecenter.asm"
CeruleanPokecenterBlocks: INCBIN "maps/ceruleanpokecenter.blk"

INCLUDE "data/mapHeaders/ceruleangym.asm"
INCLUDE "scripts/ceruleangym.asm"
INCLUDE "data/mapObjects/ceruleangym.asm"
CeruleanGymBlocks: INCBIN "maps/ceruleangym.blk"

INCLUDE "data/mapHeaders/ceruleanmart.asm"
INCLUDE "scripts/ceruleanmart.asm"
INCLUDE "data/mapObjects/ceruleanmart.asm"

INCLUDE "data/mapHeaders/lavenderpokecenter.asm"
INCLUDE "scripts/lavenderpokecenter.asm"
INCLUDE "data/mapObjects/lavenderpokecenter.asm"

INCLUDE "data/mapHeaders/lavendermart.asm"
INCLUDE "scripts/lavendermart.asm"
INCLUDE "data/mapObjects/lavendermart.asm"

INCLUDE "data/mapHeaders/vermilionpokecenter.asm"
INCLUDE "scripts/vermilionpokecenter.asm"
INCLUDE "data/mapObjects/vermilionpokecenter.asm"

INCLUDE "data/mapHeaders/vermilionmart.asm"
INCLUDE "scripts/vermilionmart.asm"
INCLUDE "data/mapObjects/vermilionmart.asm"

INCLUDE "data/mapHeaders/vermiliongym.asm"
INCLUDE "scripts/vermiliongym.asm"
INCLUDE "data/mapObjects/vermiliongym.asm"
VermilionGymBlocks: INCBIN "maps/vermiliongym.blk"

INCLUDE "data/mapHeaders/copycatshouse2f.asm"
INCLUDE "scripts/copycatshouse2f.asm"
INCLUDE "data/mapObjects/copycatshouse2f.asm"

INCLUDE "data/mapHeaders/fightingdojo.asm"
INCLUDE "scripts/fightingdojo.asm"
INCLUDE "data/mapObjects/fightingdojo.asm"
FightingDojoBlocks: INCBIN "maps/fightingdojo.blk"

INCLUDE "data/mapHeaders/saffrongym.asm"
INCLUDE "scripts/saffrongym.asm"
INCLUDE "data/mapObjects/saffrongym.asm"
SaffronGymBlocks: INCBIN "maps/saffrongym.blk"

INCLUDE "data/mapHeaders/saffronmart.asm"
INCLUDE "scripts/saffronmart.asm"
INCLUDE "data/mapObjects/saffronmart.asm"

INCLUDE "data/mapHeaders/silphco1.asm"
INCLUDE "scripts/silphco1.asm"
INCLUDE "data/mapObjects/silphco1.asm"
SilphCo1Blocks: INCBIN "maps/silphco1.blk"

INCLUDE "data/mapHeaders/saffronpokecenter.asm"
INCLUDE "scripts/saffronpokecenter.asm"
INCLUDE "data/mapObjects/saffronpokecenter.asm"

INCLUDE "data/mapHeaders/viridianforestexit.asm"
INCLUDE "scripts/viridianforestexit.asm"
INCLUDE "data/mapObjects/viridianforestexit.asm"

INCLUDE "data/mapHeaders/route2gate.asm"
INCLUDE "scripts/route2gate.asm"
INCLUDE "data/mapObjects/route2gate.asm"

INCLUDE "data/mapHeaders/viridianforestentrance.asm"
INCLUDE "scripts/viridianforestentrance.asm"
INCLUDE "data/mapObjects/viridianforestentrance.asm"

INCLUDE "data/mapHeaders/undergroundpathentranceroute5.asm"
INCLUDE "scripts/undergroundpathentranceroute5.asm"
INCLUDE "data/mapObjects/undergroundpathentranceroute5.asm"

INCLUDE "data/mapHeaders/undergroundpathentranceroute6.asm"
INCLUDE "scripts/undergroundpathentranceroute6.asm"
INCLUDE "data/mapObjects/undergroundpathentranceroute6.asm"

INCLUDE "data/mapHeaders/undergroundpathentranceroute7.asm"
INCLUDE "scripts/undergroundpathentranceroute7.asm"
INCLUDE "data/mapObjects/undergroundpathentranceroute7.asm"

INCLUDE "data/mapHeaders/undergroundpathentranceroute7copy.asm"
INCLUDE "scripts/undergroundpathentranceroute7copy.asm"
INCLUDE "data/mapObjects/undergroundpathentranceroute7copy.asm"

INCLUDE "data/mapHeaders/silphco9.asm"
INCLUDE "scripts/silphco9.asm"
INCLUDE "data/mapObjects/silphco9.asm"
SilphCo9Blocks: INCBIN "maps/silphco9.blk"

INCLUDE "data/mapHeaders/victoryroad1.asm"
INCLUDE "scripts/victoryroad1.asm"
INCLUDE "data/mapObjects/victoryroad1.asm"
VictoryRoad1Blocks: INCBIN "maps/victoryroad1.blk"

INCLUDE "engine/predefs17_2.asm"

INCLUDE "engine/hidden_object_functions17.asm"


SECTION "bank18",ROMX,BANK[$18]

ViridianForestBlocks:    INCBIN "maps/viridianforest.blk"
UndergroundPathNSBlocks: INCBIN "maps/undergroundpathns.blk"
UndergroundPathWEBlocks: INCBIN "maps/undergroundpathwe.blk"

	INCBIN "maps/unusedblocks60258.blk"

SSAnne10Blocks:
SSAnne9Blocks: INCBIN "maps/ssanne9.blk"

INCLUDE "data/mapHeaders/pokemontower1.asm"
INCLUDE "scripts/pokemontower1.asm"
INCLUDE "data/mapObjects/pokemontower1.asm"
PokemonTower1Blocks: INCBIN "maps/pokemontower1.blk"

INCLUDE "data/mapHeaders/pokemontower2.asm"
INCLUDE "scripts/pokemontower2.asm"
INCLUDE "data/mapObjects/pokemontower2.asm"
PokemonTower2Blocks: INCBIN "maps/pokemontower2.blk"

INCLUDE "data/mapHeaders/pokemontower3.asm"
INCLUDE "scripts/pokemontower3.asm"
INCLUDE "data/mapObjects/pokemontower3.asm"
PokemonTower3Blocks: INCBIN "maps/pokemontower3.blk"

INCLUDE "data/mapHeaders/pokemontower4.asm"
INCLUDE "scripts/pokemontower4.asm"
INCLUDE "data/mapObjects/pokemontower4.asm"
PokemonTower4Blocks: INCBIN "maps/pokemontower4.blk"

INCLUDE "data/mapHeaders/pokemontower5.asm"
INCLUDE "scripts/pokemontower5.asm"
INCLUDE "data/mapObjects/pokemontower5.asm"
PokemonTower5Blocks: INCBIN "maps/pokemontower5.blk"

INCLUDE "data/mapHeaders/pokemontower6.asm"
INCLUDE "scripts/pokemontower6.asm"
INCLUDE "data/mapObjects/pokemontower6.asm"
PokemonTower6Blocks: INCBIN "maps/pokemontower6.blk"

	INCBIN "maps/unusedblocks60cef.blk"

INCLUDE "data/mapHeaders/pokemontower7.asm"
INCLUDE "scripts/pokemontower7.asm"
INCLUDE "data/mapObjects/pokemontower7.asm"
PokemonTower7Blocks: INCBIN "maps/pokemontower7.blk"

INCLUDE "data/mapHeaders/celadonmart1.asm"
INCLUDE "scripts/celadonmart1.asm"
INCLUDE "data/mapObjects/celadonmart1.asm"
CeladonMart1Blocks: INCBIN "maps/celadonmart1.blk"

INCLUDE "engine/overworld/cinnabar_lab.asm"

INCLUDE "data/mapHeaders/viridianforest.asm"
INCLUDE "scripts/viridianforest.asm"
INCLUDE "data/mapObjects/viridianforest.asm"

INCLUDE "data/mapHeaders/ssanne1.asm"
INCLUDE "scripts/ssanne1.asm"
INCLUDE "data/mapObjects/ssanne1.asm"
SSAnne1Blocks: INCBIN "maps/ssanne1.blk"

INCLUDE "data/mapHeaders/ssanne2.asm"
INCLUDE "scripts/ssanne2.asm"
INCLUDE "data/mapObjects/ssanne2.asm"
SSAnne2Blocks: INCBIN "maps/ssanne2.blk"

INCLUDE "data/mapHeaders/ssanne4.asm"
INCLUDE "scripts/ssanne4.asm"
INCLUDE "data/mapObjects/ssanne4.asm"
SSAnne4Blocks: INCBIN "maps/ssanne4.blk"

INCLUDE "data/mapHeaders/ssanne5.asm"
INCLUDE "scripts/ssanne5.asm"
INCLUDE "data/mapObjects/ssanne5.asm"
SSAnne5Blocks: INCBIN "maps/ssanne5.blk"

INCLUDE "data/mapHeaders/ssanne6.asm"
INCLUDE "scripts/ssanne6.asm"
INCLUDE "data/mapObjects/ssanne6.asm"
SSAnne6Blocks: INCBIN "maps/ssanne6.blk"

INCLUDE "data/mapHeaders/ssanne7.asm"
INCLUDE "scripts/ssanne7.asm"
INCLUDE "data/mapObjects/ssanne7.asm"
SSAnne7Blocks: INCBIN "maps/ssanne7.blk"

INCLUDE "data/mapHeaders/ssanne8.asm"
INCLUDE "scripts/ssanne8.asm"
INCLUDE "data/mapObjects/ssanne8.asm"
SSAnne8Blocks: INCBIN "maps/ssanne8.blk"

INCLUDE "data/mapHeaders/ssanne9.asm"
INCLUDE "scripts/ssanne9.asm"
INCLUDE "data/mapObjects/ssanne9.asm"

INCLUDE "data/mapHeaders/ssanne10.asm"
INCLUDE "scripts/ssanne10.asm"
INCLUDE "data/mapObjects/ssanne10.asm"

INCLUDE "data/mapHeaders/undergroundpathns.asm"
INCLUDE "scripts/undergroundpathns.asm"
INCLUDE "data/mapObjects/undergroundpathns.asm"

INCLUDE "data/mapHeaders/undergroundpathwe.asm"
INCLUDE "scripts/undergroundpathwe.asm"
INCLUDE "data/mapObjects/undergroundpathwe.asm"

INCLUDE "data/mapHeaders/diglettscave.asm"
INCLUDE "scripts/diglettscave.asm"
INCLUDE "data/mapObjects/diglettscave.asm"
DiglettsCaveBlocks: INCBIN "maps/diglettscave.blk"

INCLUDE "data/mapHeaders/silphco11.asm"
INCLUDE "scripts/silphco11.asm"
INCLUDE "data/mapObjects/silphco11.asm"
SilphCo11Blocks: INCBIN "maps/silphco11.blk"

;joenote - moved these here
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
INCLUDE "data/mapHeaders/tradecenter.asm"
INCLUDE "scripts/tradecenter.asm"
INCLUDE "data/mapObjects/tradecenter.asm"
TradeCenterBlocks: INCBIN "maps/tradecenter.blk"

INCLUDE "data/mapHeaders/colosseum.asm"
INCLUDE "scripts/colosseum.asm"
INCLUDE "data/mapObjects/colosseum.asm"
ColosseumBlocks: INCBIN "maps/colosseum.blk"

INCLUDE "engine/give_pokemon.asm"

INCLUDE "engine/predefs.asm"
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
INCLUDE "engine/hidden_object_functions18.asm"


SECTION "bank19",ROMX,BANK[$19]
IF DEF(_REDGREENJP)
Overworld_GFX:     INCBIN "gfx/tilesets/green/overworld.2bpp"
ELSE
Overworld_GFX:     INCBIN "gfx/tilesets/overworld.2bpp"
ENDC
Overworld_Block:   INCBIN "gfx/blocksets/overworld.bst"

RedsHouse1_GFX:
RedsHouse2_GFX:    INCBIN "gfx/tilesets/reds_house.2bpp"
	ds 16
RedsHouse1_Block:
RedsHouse2_Block:  INCBIN "gfx/blocksets/reds_house.bst"

House_GFX:         INCBIN "gfx/tilesets/house.2bpp"
House_Block:       INCBIN "gfx/blocksets/house.bst"
Mansion_GFX:       INCBIN "gfx/tilesets/mansion.2bpp"
Mansion_Block:     INCBIN "gfx/blocksets/mansion.bst"
ShipPort_GFX:      INCBIN "gfx/tilesets/ship_port.2bpp"
ShipPort_Block:    INCBIN "gfx/blocksets/ship_port.bst"
Interior_GFX:      INCBIN "gfx/tilesets/interior.2bpp"
Interior_Block:    INCBIN "gfx/blocksets/interior.bst"
Plateau_GFX:       INCBIN "gfx/tilesets/plateau.2bpp"
Plateau_Block:     INCBIN "gfx/blocksets/plateau.bst"


SECTION "bank1A",ROMX,BANK[$1A]

INCLUDE "engine/battle/decrement_pp.asm"

Version_GFX:
IF DEF(_REDJP)
	INCBIN "gfx/red/redgreenversionjp.1bpp" ; 10 tiles
ELIF (DEF(_RED) || DEF(_GREEN))
	INCBIN "gfx/red/redgreenversion.1bpp" ; 10 tiles
ELIF DEF(_BLUEJP)
	INCBIN "gfx/blue/blueversionjp.1bpp" ; 8 tiles
ELIF DEF(_BLUE)
	INCBIN "gfx/blue/blueversion.1bpp" ; 8 tiles
ENDC
Version_GFXEnd:

Dojo_GFX:
Gym_GFX:           INCBIN "gfx/tilesets/gym.2bpp"
Dojo_Block:
Gym_Block:         INCBIN "gfx/blocksets/gym.bst"

Mart_GFX:
Pokecenter_GFX:    INCBIN "gfx/tilesets/pokecenter.2bpp"
Mart_Block:
Pokecenter_Block:  INCBIN "gfx/blocksets/pokecenter.bst"

ForestGate_GFX:
Museum_GFX:
Gate_GFX:          INCBIN "gfx/tilesets/gate.2bpp"
ForestGate_Block:
Museum_Block:
Gate_Block:        INCBIN "gfx/blocksets/gate.bst"

IF DEF(_REDGREENJP)
Forest_GFX:        INCBIN "gfx/tilesets/green/forest.2bpp"
ELSE
Forest_GFX:        INCBIN "gfx/tilesets/forest.2bpp"
ENDC
Forest_Block:      INCBIN "gfx/blocksets/forest.bst"
Facility_GFX:      INCBIN "gfx/tilesets/facility.2bpp"
Facility_Block:    INCBIN "gfx/blocksets/facility.bst"


SECTION "bank1B",ROMX,BANK[$1B]

Cemetery_GFX:      INCBIN "gfx/tilesets/cemetery.2bpp"
Cemetery_Block:    INCBIN "gfx/blocksets/cemetery.bst"
Cavern_GFX:        INCBIN "gfx/tilesets/cavern.2bpp"
Cavern_Block:      INCBIN "gfx/blocksets/cavern.bst"
Lobby_GFX:         INCBIN "gfx/tilesets/lobby.2bpp"
Lobby_Block:       INCBIN "gfx/blocksets/lobby.bst"
Ship_GFX:          INCBIN "gfx/tilesets/ship.2bpp"
Ship_Block:        INCBIN "gfx/blocksets/ship.bst"
Lab_GFX:           INCBIN "gfx/tilesets/lab.2bpp"
Lab_Block:         INCBIN "gfx/blocksets/lab.bst"
Club_GFX:          INCBIN "gfx/tilesets/club.2bpp"
Club_Block:        INCBIN "gfx/blocksets/club.bst"
Underground_GFX:   INCBIN "gfx/tilesets/underground.2bpp"
Underground_Block: INCBIN "gfx/blocksets/underground.bst"


SECTION "bank1C",ROMX,BANK[$1C]

;INCLUDE "engine/gamefreak.asm"	;gbcnote - moved to another bank to make space
INCLUDE "engine/hall_of_fame.asm"
INCLUDE "engine/overworld/healing_machine.asm"
INCLUDE "engine/overworld/player_animations.asm"
INCLUDE "engine/battle/ghost_marowak_anim.asm"
INCLUDE "engine/battle/battle_transitions.asm"

;joenote - Implement the japanese map layout based on Rangi's Red/Blue Star project
IF (DEF(_REDGREENJP) || DEF(_BLUEJP))
INCLUDE "engine/town_map_jp.asm"
ELSE
INCLUDE "engine/town_map.asm"
ENDC

INCLUDE "engine/mon_party_sprites.asm"
INCLUDE "engine/in_game_trades.asm"
INCLUDE "engine/palettes.asm"
INCLUDE "engine/save.asm"


SECTION "bank1D",ROMX,BANK[$1D]

CopycatsHouse1FBlocks: INCBIN "maps/copycatshouse1f.blk"

CinnabarMartBlocks:
PewterMartBlocks: INCBIN "maps/pewtermart.blk"

FuchsiaHouse1Blocks: INCBIN "maps/fuchsiahouse1.blk"

CinnabarPokecenterBlocks:
FuchsiaPokecenterBlocks: INCBIN "maps/fuchsiapokecenter.blk"

CeruleanHouse2Blocks: INCBIN "maps/ceruleanhouse2.blk"

INCLUDE "engine/HoF_room_pc.asm"

INCLUDE "engine/status_ailments.asm"

INCLUDE "engine/items/itemfinder.asm"

INCLUDE "scripts/ceruleancity2.asm"

INCLUDE "data/mapHeaders/viridiangym.asm"
INCLUDE "scripts/viridiangym.asm"
INCLUDE "data/mapObjects/viridiangym.asm"
ViridianGymBlocks: INCBIN "maps/viridiangym.blk"

INCLUDE "data/mapHeaders/pewtermart.asm"
INCLUDE "scripts/pewtermart.asm"
INCLUDE "data/mapObjects/pewtermart.asm"

INCLUDE "data/mapHeaders/unknowndungeon1.asm"
INCLUDE "scripts/unknowndungeon1.asm"
INCLUDE "data/mapObjects/unknowndungeon1.asm"
IF DEF(_REDGREENJP)
UnknownDungeon1Blocks: INCBIN "maps/green/unknowndungeon1.blk"
ELSE
UnknownDungeon1Blocks: INCBIN "maps/unknowndungeon1.blk"
ENDC

INCLUDE "data/mapHeaders/ceruleanhouse2.asm"
INCLUDE "scripts/ceruleanhouse2.asm"
INCLUDE "data/mapObjects/ceruleanhouse2.asm"

INCLUDE "engine/menu/vending_machine.asm"

INCLUDE "data/mapHeaders/fuchsiahouse1.asm"
INCLUDE "scripts/fuchsiahouse1.asm"
INCLUDE "data/mapObjects/fuchsiahouse1.asm"

INCLUDE "data/mapHeaders/fuchsiapokecenter.asm"
INCLUDE "scripts/fuchsiapokecenter.asm"
INCLUDE "data/mapObjects/fuchsiapokecenter.asm"

INCLUDE "data/mapHeaders/fuchsiahouse2.asm"
INCLUDE "scripts/fuchsiahouse2.asm"
INCLUDE "data/mapObjects/fuchsiahouse2.asm"
FuchsiaHouse2Blocks: INCBIN "maps/fuchsiahouse2.blk"

INCLUDE "data/mapHeaders/safarizoneentrance.asm"
INCLUDE "scripts/safarizoneentrance.asm"
INCLUDE "data/mapObjects/safarizoneentrance.asm"
SafariZoneEntranceBlocks: INCBIN "maps/safarizoneentrance.blk"

INCLUDE "data/mapHeaders/fuchsiagym.asm"
INCLUDE "scripts/fuchsiagym.asm"
INCLUDE "data/mapObjects/fuchsiagym.asm"
FuchsiaGymBlocks: INCBIN "maps/fuchsiagym.blk"

INCLUDE "data/mapHeaders/fuchsiameetingroom.asm"
INCLUDE "scripts/fuchsiameetingroom.asm"
INCLUDE "data/mapObjects/fuchsiameetingroom.asm"
FuchsiaMeetingRoomBlocks: INCBIN "maps/fuchsiameetingroom.blk"

INCLUDE "data/mapHeaders/cinnabargym.asm"
INCLUDE "scripts/cinnabargym.asm"
INCLUDE "data/mapObjects/cinnabargym.asm"
CinnabarGymBlocks: INCBIN "maps/cinnabargym.blk"

INCLUDE "data/mapHeaders/lab1.asm"
INCLUDE "scripts/lab1.asm"
INCLUDE "data/mapObjects/lab1.asm"
Lab1Blocks: INCBIN "maps/lab1.blk"

INCLUDE "data/mapHeaders/lab2.asm"
INCLUDE "scripts/lab2.asm"
INCLUDE "data/mapObjects/lab2.asm"
Lab2Blocks: INCBIN "maps/lab2.blk"

INCLUDE "data/mapHeaders/lab3.asm"
INCLUDE "scripts/lab3.asm"
INCLUDE "data/mapObjects/lab3.asm"
Lab3Blocks: INCBIN "maps/lab3.blk"

INCLUDE "data/mapHeaders/lab4.asm"
INCLUDE "scripts/lab4.asm"
INCLUDE "data/mapObjects/lab4.asm"
Lab4Blocks: INCBIN "maps/lab4.blk"

INCLUDE "data/mapHeaders/cinnabarpokecenter.asm"
INCLUDE "scripts/cinnabarpokecenter.asm"
INCLUDE "data/mapObjects/cinnabarpokecenter.asm"

INCLUDE "data/mapHeaders/cinnabarmart.asm"
INCLUDE "scripts/cinnabarmart.asm"
INCLUDE "data/mapObjects/cinnabarmart.asm"

INCLUDE "data/mapHeaders/copycatshouse1f.asm"
INCLUDE "scripts/copycatshouse1f.asm"
INCLUDE "data/mapObjects/copycatshouse1f.asm"

INCLUDE "data/mapHeaders/gary.asm"
INCLUDE "scripts/gary.asm"
INCLUDE "data/mapObjects/gary.asm"
GaryBlocks: INCBIN "maps/gary.blk"

INCLUDE "data/mapHeaders/lorelei.asm"
INCLUDE "scripts/lorelei.asm"
INCLUDE "data/mapObjects/lorelei.asm"
LoreleiBlocks: INCBIN "maps/lorelei.blk"

INCLUDE "data/mapHeaders/bruno.asm"
INCLUDE "scripts/bruno.asm"
INCLUDE "data/mapObjects/bruno.asm"
BrunoBlocks: INCBIN "maps/bruno.blk"

INCLUDE "data/mapHeaders/agatha.asm"
INCLUDE "scripts/agatha.asm"
INCLUDE "data/mapObjects/agatha.asm"
AgathaBlocks: INCBIN "maps/agatha.blk"

INCLUDE "engine/menu/league_pc.asm"

INCLUDE "engine/overworld/hidden_items.asm"


SECTION "bank1E",ROMX,BANK[$1E]

INCLUDE "engine/battle/animations.asm"

INCLUDE "engine/overworld/cut2.asm"

INCLUDE "engine/overworld/ssanne.asm"

INCLUDE "data/animations.asm"

INCLUDE "engine/evolution.asm"

INCLUDE "engine/overworld/elevator.asm"


SECTION "bank2D",ROMX,BANK[$2D]	;joenote - This is a known empty bank. Going to start moving stuff here

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;this is a bunch of custom functions and stuff, so leave it all together in the same bank
INCLUDE "custom_functions/func_ai.asm"
INCLUDE "custom_functions/func_battle.asm"
INCLUDE "custom_functions/func_enc_gen.asm"
INCLUDE "custom_functions/func_misc.asm"
INCLUDE "custom_functions/func_monlists.asm"
INCLUDE "custom_functions/func_overworld.asm"
INCLUDE "custom_functions/func_shiny.asm"
INCLUDE "engine/battle/stats_functions.asm"	
INCLUDE "engine/battle/exp_bar_print.asm"	
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

TradingAnimationGraphics:
INCBIN "gfx/game_boy.2bpp"
INCBIN "gfx/link_cable.2bpp"
TradingAnimationGraphicsEnd:

; Pokeball traveling through the link cable.
TradingAnimationGraphics2: INCBIN "gfx/trade2.2bpp"
TradingAnimationGraphics2End:

;joenote - moved this out of trainer_ai.asm in bank $E to here. 
;Now there is lots of space for custom trainers and rosters
INCLUDE "engine/battle/read_trainer_party.asm"
INCLUDE "data/trainer_moves.asm"
INCLUDE "data/trainer_parties.asm"

;joenote - adding female trainer sprites
RedPicFBack::           INCBIN "pic/trainer/redb_f.pic"
RedPicFFront:: 			INCBIN "pic/trainer/red_f.pic"
RedFSprite:            INCBIN "gfx/sprites/redf.2bpp"
RedFCyclingSprite:     INCBIN "gfx/sprites/cyclingf.2bpp"

RedFishingTilesFront: INCBIN "gfx/red_fishing_tile_front.2bpp"
RedFishingTilesBack:  INCBIN "gfx/red_fishing_tile_back.2bpp"
RedFishingTilesSide:  INCBIN "gfx/red_fishing_tile_side.2bpp"
RedFishingRodTiles:   INCBIN "gfx/red_fishingrod_tiles.2bpp"
RedFFishingTilesFront: INCBIN "gfx/redF_fishing_tile_front.2bpp"
RedFFishingTilesBack:  INCBIN "gfx/redF_fishing_tile_back.2bpp"
RedFFishingTilesSide:  INCBIN "gfx/redF_fishing_tile_side.2bpp"

INCLUDE "engine/items/tm_prices.asm"

INCLUDE "engine/learn_move.asm"	;joenote - moved in order to have more space

SECTION "bank2E",ROMX,BANK[$2E]	
;gbcnote - This bank with hold the bg map attributes for the gameboy color among other stuff

;include the bgmap files from pokemon yellow
INCLUDE "data/bg_map_attributes.asm"
INCLUDE "engine/bg_map_attributes.asm"

INCLUDE "engine/gamefreak.asm"	;gbcnote - moved here to make space
INCLUDE "custom_functions/func_gamma.asm"
