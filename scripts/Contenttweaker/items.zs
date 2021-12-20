#loader contenttweaker
#priority 99
import mods.contenttweaker.VanillaFactory;
import mods.contenttweaker.Item;
import mods.contenttweaker.IItemRightClick;
import mods.contenttweaker.Commands;
import mods.contenttweaker.IItemColorSupplier;
import mods.contenttweaker.Color;


print("==================== loading Items.zs ====================");
##########################################################################################

VanillaFactory.createItem("hastelloyfoil").register();
VanillaFactory.createItem("goldfoil").register();
VanillaFactory.createItem("aluminumcasing").register();
VanillaFactory.createItem("inert_ingot").register();
VanillaFactory.createItem("rod_bam").register();
VanillaFactory.createItem("rod_scal").register();
VanillaFactory.createItem("rod_vanasteel").register();
VanillaFactory.createItem("rod_nimonic").register();
VanillaFactory.createItem("greatwood_handle").register();
VanillaFactory.createItem("slatedust").register();
VanillaFactory.createItem("vis_meal").register();

VanillaFactory.createItem("rod_ironwood").register();
VanillaFactory.createItem("noon_ingot").register();
VanillaFactory.createItem("tarred_ingot").register();

VanillaFactory.createItem("stable_celestial_crystal").register();
VanillaFactory.createItem("terrestrial_crystal").register();
VanillaFactory.createItem("dun_crystal").register();
VanillaFactory.createItem("falling_tower").register();

VanillaFactory.createItem("crystal_lattice").register();
VanillaFactory.createItem("starmetal_cluster").register();


VanillaFactory.createItem("grindingball_mixedwill").register();

VanillaFactory.createItem("plate_engineering").register();




/*
VanillaFactory.createItem("adventure_token_tier1").register();
VanillaFactory.createItem("exploring_token_tier1").register();
VanillaFactory.createItem("mining_token_tier1").register();
VanillaFactory.createItem("tech_token_tier1").register();
VanillaFactory.createItem("magic_token_tier1").register();

VanillaFactory.createItem("adventure_token_tier2").register();
VanillaFactory.createItem("exploring_token_tier2").register();
VanillaFactory.createItem("mining_token_tier2").register();
VanillaFactory.createItem("tech_token_tier2").register();
VanillaFactory.createItem("magic_token_tier2").register();

VanillaFactory.createItem("adventure_token_tier3").register();
VanillaFactory.createItem("exploring_token_tier3").register();
VanillaFactory.createItem("mining_token_tier3").register();
VanillaFactory.createItem("tech_token_tier3").register();
VanillaFactory.createItem("magic_token_tier3").register();

VanillaFactory.createItem("adventure_token_tier4").register();
VanillaFactory.createItem("exploring_token_tier4").register();
VanillaFactory.createItem("mining_token_tier4").register();
VanillaFactory.createItem("tech_token_tier4").register();
VanillaFactory.createItem("magic_token_tier4").register();

VanillaFactory.createItem("adventure_token_tier5").register();
VanillaFactory.createItem("exploring_token_tier5").register();
VanillaFactory.createItem("mining_token_tier5").register();
VanillaFactory.createItem("tech_token_tier5").register();
VanillaFactory.createItem("magic_token_tier5").register();
*/


VanillaFactory.createItem("token_tier1").register();
VanillaFactory.createItem("token_tier2").register();
VanillaFactory.createItem("token_tier3").register();
VanillaFactory.createItem("token_tier4").register();
VanillaFactory.createItem("token_tier5").register();
VanillaFactory.createItem("token_tier6").register();
VanillaFactory.createItem("token_tier7").register();
VanillaFactory.createItem("token_tier8").register();



VanillaFactory.createItem("terrasteel_coil").register();
VanillaFactory.createItem("blood_crystal").register();
VanillaFactory.createItem("adaptive_ingot").register();
VanillaFactory.createItem("casingsteel").register();
VanillaFactory.createItem("casingplatinum").register();
VanillaFactory.createItem("foilinvar").register();
VanillaFactory.createItem("foilsteel").register();
VanillaFactory.createItem("foildarksteel").register();
VanillaFactory.createItem("foilhydronalium").register();
VanillaFactory.createItem("rodinvar").register();
VanillaFactory.createItem("rodsteel").register();
VanillaFactory.createItem("roddarksteel").register();
VanillaFactory.createItem("rodhydronalium").register();

VanillaFactory.createItem("purpleprint").register();
VanillaFactory.createItem("ingot_xp").register();
VanillaFactory.createItem("compressed_chrome").register();
VanillaFactory.createItem("lazurite_gem").register();
VanillaFactory.createItem("limestone_flux").register();
VanillaFactory.createItem("pristine_dust").register();
VanillaFactory.createItem("angelring_fake").register();
VanillaFactory.createItem("blank_matter").register();
VanillaFactory.createItem("clump_titanium").register();


VanillaFactory.createItem("gear_modularium").register();
VanillaFactory.createItem("plate_modularium").register();

VanillaFactory.createItem("prepared_starmetal").register();
VanillaFactory.createItem("ingot_reinforced_starmetal").register();

VanillaFactory.createItem("stacc_thermal_alloy").register();
VanillaFactory.createItem("hot_thermal_alloy").register();
VanillaFactory.createItem("ingot_thermal_alloy").register();
VanillaFactory.createItem("plate_thermal_alloy").register();
VanillaFactory.createItem("gear_thermal_alloy").register();
VanillaFactory.createItem("rod_thermal_alloy").register();


VanillaFactory.createItem("excited_mek_alloy").register();
VanillaFactory.createItem("component_mek_alloy").register();
VanillaFactory.createItem("ingot_mek_alloy").register();
VanillaFactory.createItem("plate_mek_alloy").register();
VanillaFactory.createItem("gear_mek_alloy").register();
VanillaFactory.createItem("rod_mek_alloy").register();

VanillaFactory.createItem("ingot_staballoy").register();

VanillaFactory.createItem("hot_cobalt").register();


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
//gearcrushinginvar.glowing = true;
gearcrushinginvar.register();

var gearcrushingsteel = VanillaFactory.createItem("gearcrushingsteel");
gearcrushingsteel.maxStackSize = 1;
gearcrushingsteel.rarity = "common";
gearcrushingsteel.maxDamage = 1024;
//gearcrushingsteel.glowing = true;
gearcrushingsteel.register();

var gearcrushingdarksteel = VanillaFactory.createItem("gearcrushingdarksteel");
gearcrushingdarksteel.maxStackSize = 1;
gearcrushingdarksteel.rarity = "uncommon";
gearcrushingdarksteel.maxDamage = 2048;
//gearcrushingdarksteel.glowing = true;
gearcrushingdarksteel.register();

var gearcrushingCortensteel = VanillaFactory.createItem("gearcrushingcortensteel");
gearcrushingCortensteel.maxStackSize = 1;
gearcrushingCortensteel.rarity = "rare";
gearcrushingCortensteel.maxDamage = 4096;
//gearcrushingCortensteel.glowing = true;
gearcrushingCortensteel.register();

var gearcrushingVanasteel = VanillaFactory.createItem("gearcrushingvanasteel");
gearcrushingVanasteel.maxStackSize = 1;
gearcrushingVanasteel.rarity = "epic";
gearcrushingVanasteel.maxDamage = 8192;
//gearcrushingVanasteel.glowing = true;
gearcrushingVanasteel.register();


var agitatorInvar = VanillaFactory.createItem("agitatorinvar");
agitatorInvar.maxStackSize = 1;
agitatorInvar.rarity = "common";
agitatorInvar.maxDamage = 512;
//agitatorInvar.glowing = true;
agitatorInvar.register();

var agitatorsteel = VanillaFactory.createItem("agitatorsteel");
agitatorsteel.maxStackSize = 1;
agitatorsteel.rarity = "common";
agitatorsteel.maxDamage = 1024;
//agitatorsteel.glowing = true;
agitatorsteel.register();

var agitatordarksteel = VanillaFactory.createItem("agitatordarksteel");
agitatordarksteel.maxStackSize = 1;
agitatordarksteel.rarity = "uncommon";
agitatordarksteel.maxDamage = 2048;
//agitatordarksteel.glowing = true;
agitatordarksteel.register();

var agitatorHydronalium = VanillaFactory.createItem("agitatorhydronalium");
agitatorHydronalium.maxStackSize = 1;
agitatorHydronalium.rarity = "rare";
agitatorHydronalium.maxDamage = 4096;
//agitatorHydronalium.glowing = true;
agitatorHydronalium.register();

var agitatorHastelloy = VanillaFactory.createItem("agitatorhastelloy");
agitatorHastelloy.maxStackSize = 1;
agitatorHastelloy.rarity = "epic";
agitatorHastelloy.maxDamage = 8192;
//agitatorHastelloy.glowing = true;
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
print("==================== end of Items.zs ====================");