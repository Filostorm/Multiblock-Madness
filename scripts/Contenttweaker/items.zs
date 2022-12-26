#loader contenttweaker
import mods.contenttweaker.VanillaFactory;
import mods.contenttweaker.Item;
import mods.contenttweaker.IItemRightClick;
import mods.contenttweaker.Commands;
import mods.contenttweaker.IItemColorSupplier;
import mods.contenttweaker.Color;

#priority 105

print("==================== loading items.zs ====================");
##########################################################################################


var simpleItems = [
	
	//Assorted Items
	"greatwood_handle",
	"slatedust",
	"vis_meal",
	"stable_celestial_crystal",
	"terrestrial_crystal",
	"dun_crystal",
	"falling_tower",
	"crystal_lattice",
	"starmetal_cluster",
	"grindingball_mixedwill",
	"plate_engineering",
	"terrasteel_coil",
	"blood_crystal",
	"purpleprint",
	"compressed_chrome",
	"lazurite_gem",
	"limestone_flux",
	"pristine_dust",
	"angelring_fake",
	"blank_matter",
	"clump_titanium",
	"crystal_seed",
	"ore_gen_info",
	"time_artifact",
	"ichor",
	"sanctified_ash",

	//Custom RH Parts
	"foilinvar",
	"foilsteel",
	"foildarksteel",
	"foilhydronalium",
	"hastelloyfoil",
	"goldfoil",
	"foil_electrum",
	"aluminumcasing",
	"casingsteel",
	"casingplatinum",
	"rodinvar",
	"rodsteel",
	"roddarksteel",
	"rodhydronalium",
	"rod_bam",
	"rod_scal",
	"rod_vanasteel",
	"rod_nimonic",
	"rod_ironwood",
	"rod_conductive_iron",
	"rod_dawnstone",
	
	//Steel Casts
	"steelcast",
	"steelcast_armor_plate",
	"steelcast_armor_trim",
	"steelcast_arrow_head",
	"steelcast_arrow_shaft",
	"steelcast_axe_head",
	"steelcast_battery_cell",
	"steelcast_binding",
	"steelcast_boots_core",
	"steelcast_bow_limb",
	"steelcast_bow_string",
	"steelcast_broad_axe_head",
	"steelcast_chest_core",
	"steelcast_chisel_head",
	"steelcast_cross_guard",
	"steelcast_excavator_head",
	"steelcast_fletching",
	"steelcast_hammer_head",
	"steelcast_hand_guard",
	"steelcast_helmet_core",
	"steelcast_kama_head",
	"steelcast_knife_blade",
	"steelcast_large_plate",
	"steelcast_large_sword_blade",
	"steelcast_laser_medium",
	"steelcast_leggings_core",
	"steelcast_pan_head",
	"steelcast_pick_head",
	"steelcast_pipe_piece",
	"steelcast_polishing_kit",
	"steelcast_scythe_head",
	"steelcast_sharpening_kit",
	"steelcast_shovel_head",
	"steelcast_sign_head",
	"steelcast_sword_blade",
	"steelcast_tool_rod",
	"steelcast_tough_binding",
	"steelcast_tough_tool_rod",
	"steelcast_wide_guard",

	//Chapter Completion Tokens
	"token_tier1",
	"token_tier2",
	"token_tier3",
	"token_tier4",
	"token_tier5",
	"token_tier6",
	"token_tier7",
	"token_tier8",

	//Modularium Parts
	"gear_modularium",
	"plate_modularium",
	"rod_modularium",
	
	//Assorted Ingots
	"inert_ingot",
	"noon_ingot",
	"tarred_ingot",
	"adaptive_ingot",
	"hot_cobalt",
	"ingot_xp",
	"solar_ingot",
	"solar_shard",

	//Reinforced Starmetal
	"prepared_starmetal",
	"ingot_reinforced_starmetal",

	//Thermal Alloy
	"stacc_thermal_alloy",
	"hot_thermal_alloy",
	"ingot_thermal_alloy",
	"plate_thermal_alloy",
	"gear_thermal_alloy",
	"rod_thermal_alloy",

	//Irradiated/Heavy Alloy
	"ingot_staballoy",
	"excited_mek_alloy",
	"component_mek_alloy",
	"ingot_mek_alloy",
	"plate_mek_alloy",
	"gear_mek_alloy",
	"rod_mek_alloy",
	
	//Recoherent's Stuff
	"matrix_deposition_+",
	"matrix_deposition_-",
	"incoherent",
	"neutronic",

	//Barite
	"dust_barite",
	"dust_barium_sulfide",
	"dust_barium_sulfate",
	
	//Custom Embers Aspecti
	"aspectus_gold",
	"aspectus_tin",
	"aspectus_nickel",

	//Pearl Mote
	"primordial_mote",

	//Fake Batteries
	"inactive_cloaking_device",
	"inactive_trbattery",
	"inactive_lithium_battery",
	"inactive_energy_tablet",
	"inactive_lapotronic_orb",
	"inactive_energy_crystal",
	"inactive_lapotron_crystal",
] as string[];

for item in simpleItems {
	VanillaFactory.createItem(item).register();
}


var activatedaspectuscopper = VanillaFactory.createItem("activatedaspectuscopper");
activatedaspectuscopper.maxStackSize = 1;
activatedaspectuscopper.rarity = "rare";
activatedaspectuscopper.glowing = true;
activatedaspectuscopper.itemRightClick = function(stack, world, player, hand) {
    Commands.call("time add 1000", player, world, true, true);
    return "Pass";
};
activatedaspectuscopper.register();

var activatedaspectussilver = VanillaFactory.createItem("activatedaspectussilver");
activatedaspectussilver.maxStackSize = 1;
activatedaspectussilver.rarity = "rare";
activatedaspectussilver.glowing = true;
activatedaspectussilver.itemRightClick = function(stack, world, player, hand) {
    Commands.call("toggledownfall", player, world, true, true);
    return "Pass";
};
activatedaspectussilver.register();

var activatedaspectusdawnstone = VanillaFactory.createItem("activatedaspectusdawnstone");
activatedaspectusdawnstone.maxStackSize = 1;
activatedaspectusdawnstone.rarity = "rare";
activatedaspectusdawnstone.glowing = true;
activatedaspectusdawnstone.itemRightClick = function(stack, world, player, hand) {
    Commands.call("time set day", player, world, true, true);
    return "Pass";
};
activatedaspectusdawnstone.register();

var gearcrushinginvar = VanillaFactory.createItem("gearcrushinginvar");
gearcrushinginvar.maxStackSize = 1;
gearcrushinginvar.rarity = "common";
gearcrushinginvar.maxDamage = 512;
gearcrushinginvar.register();

var gearcrushingsteel = VanillaFactory.createItem("gearcrushingsteel");
gearcrushingsteel.maxStackSize = 1;
gearcrushingsteel.rarity = "common";
gearcrushingsteel.maxDamage = 1024;
gearcrushingsteel.register();

var gearcrushingdarksteel = VanillaFactory.createItem("gearcrushingdarksteel");
gearcrushingdarksteel.maxStackSize = 1;
gearcrushingdarksteel.rarity = "uncommon";
gearcrushingdarksteel.maxDamage = 4096;
gearcrushingdarksteel.register();

var gearcrushingCortensteel = VanillaFactory.createItem("gearcrushingcortensteel");
gearcrushingCortensteel.maxStackSize = 1;
gearcrushingCortensteel.rarity = "rare";
gearcrushingCortensteel.maxDamage = 8192;
gearcrushingCortensteel.register();

var gearcrushingVanasteel = VanillaFactory.createItem("gearcrushingvanasteel");
gearcrushingVanasteel.maxStackSize = 1;
gearcrushingVanasteel.rarity = "epic";
gearcrushingVanasteel.maxDamage = 16384;
gearcrushingVanasteel.register();


var agitatorInvar = VanillaFactory.createItem("agitatorinvar");
agitatorInvar.maxStackSize = 1;
agitatorInvar.rarity = "common";
agitatorInvar.maxDamage = 512;
agitatorInvar.register();

var agitatorsteel = VanillaFactory.createItem("agitatorsteel");
agitatorsteel.maxStackSize = 1;
agitatorsteel.rarity = "common";
agitatorsteel.maxDamage = 1024;
agitatorsteel.register();

var agitatordarksteel = VanillaFactory.createItem("agitatordarksteel");
agitatordarksteel.maxStackSize = 1;
agitatordarksteel.rarity = "uncommon";
agitatordarksteel.maxDamage = 4096;
agitatordarksteel.register();

var agitatorHydronalium = VanillaFactory.createItem("agitatorhydronalium");
agitatorHydronalium.maxStackSize = 1;
agitatorHydronalium.rarity = "rare";
agitatorHydronalium.maxDamage = 8192;
agitatorHydronalium.register();

var agitatorHastelloy = VanillaFactory.createItem("agitatorhastelloy");
agitatorHastelloy.maxStackSize = 1;
agitatorHastelloy.rarity = "epic";
agitatorHastelloy.maxDamage = 16384;
agitatorHastelloy.register();


/* COMING SOON TO A PACK NEAR YOU
var warp_remover = VanillaFactory.createItem("warp_remover");
warp_remover.maxStackSize = 1;
warp_remover.rarity = "rare";

/*
warp_remover.itemLeftClick = function(stack, world, player, hand) {
    Commands.call("tc warp @s add -50 TEMP", player, world, true, true);
    return "Pass";
};
warp_remover.itemRightClick = function(stack, world, player, hand) {
    Commands.call("tc warp @s add -25", player, world, true, true);
    return "Pass";
};
warp_remover.itemShiftRightClick = function(stack, world, player, hand) {
    Commands.call("tc warp @s add -10 PERM", player, world, true, true);
    return "Pass";
};

warp_remover.register();*/

##########################################################################################
print("==================== end of items.zs ====================");