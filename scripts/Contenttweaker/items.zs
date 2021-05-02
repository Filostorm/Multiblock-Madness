#loader contenttweaker
#priority 99
import mods.contenttweaker.VanillaFactory;
import mods.contenttweaker.Item;
import mods.contenttweaker.IItemRightClick;
import mods.contenttweaker.Commands;
import mods.contenttweaker.IItemColorSupplier;
import mods.contenttweaker.Color;
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

VanillaFactory.createItem("terrasteel_coil").register();
VanillaFactory.createItem("blood_crystal").register();
VanillaFactory.createItem("adaptive_ingot").register();
VanillaFactory.createItem("casingsteel").register();
VanillaFactory.createItem("casingplatinum").register();
VanillaFactory.createItem("foilinvar").register();
VanillaFactory.createItem("foilsteel").register();
VanillaFactory.createItem("foildarkSteel").register();
VanillaFactory.createItem("foilhydronalium").register();
VanillaFactory.createItem("rodinvar").register();
VanillaFactory.createItem("rodsteel").register();
VanillaFactory.createItem("roddarksteel").register();
VanillaFactory.createItem("rodhydronalium").register();

VanillaFactory.createItem("purpleprint").register();
VanillaFactory.createItem("ingot_xp").register();
VanillaFactory.createItem("compressed_chrome").register();

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