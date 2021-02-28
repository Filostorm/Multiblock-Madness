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
VanillaFactory.createItem("casingSteel").register();
VanillaFactory.createItem("casingPlatinum").register();
VanillaFactory.createItem("foilInvar").register();
VanillaFactory.createItem("foilSteel").register();
VanillaFactory.createItem("foilDarkSteel").register();
VanillaFactory.createItem("foilHydronalium").register();
VanillaFactory.createItem("rodInvar").register();
VanillaFactory.createItem("rodSteel").register();
VanillaFactory.createItem("rodDarkSteel").register();
VanillaFactory.createItem("rodHydronalium").register();

VanillaFactory.createItem("purpleprint").register();

var activatedAspectusCopper = VanillaFactory.createItem("activatedAspectusCopper");
activatedAspectusCopper.maxStackSize = 1;
activatedAspectusCopper.rarity = "rare";
activatedAspectusCopper.glowing = true;
activatedAspectusCopper.itemRightClick = function(stack, world, player, hand) {
    Commands.call("time add 1000", player, world, true, true);
    return "Pass";
};
activatedAspectusCopper.register();

var activatedAspectusSilver = VanillaFactory.createItem("activatedAspectusSilver");
activatedAspectusSilver.maxStackSize = 1;
activatedAspectusSilver.rarity = "rare";
activatedAspectusSilver.glowing = true;
activatedAspectusSilver.itemRightClick = function(stack, world, player, hand) {
    Commands.call("toggledownfall", player, world, true, true);
    return "Pass";
};
activatedAspectusSilver.register();

var activatedAspectusDawnstone = VanillaFactory.createItem("activatedAspectusDawnstone");
activatedAspectusDawnstone.maxStackSize = 1;
activatedAspectusDawnstone.rarity = "rare";
activatedAspectusDawnstone.glowing = true;
/*activatedAspectusDawnstone.itemRightClick = function(stack, world, player, hand) {
    Commands.call("toggledownfall", player, world, true, true);
    return "Pass";
};*/
activatedAspectusDawnstone.register();

var gearCrushingInvar = VanillaFactory.createItem("gearCrushingInvar");
gearCrushingInvar.maxStackSize = 1;
gearCrushingInvar.rarity = "common";
gearCrushingInvar.maxDamage = 512;
//gearCrushingInvar.glowing = true;
gearCrushingInvar.register();

var gearCrushingSteel = VanillaFactory.createItem("gearCrushingSteel");
gearCrushingSteel.maxStackSize = 1;
gearCrushingSteel.rarity = "common";
gearCrushingSteel.maxDamage = 1024;
//gearCrushingSteel.glowing = true;
gearCrushingSteel.register();

var gearCrushingDarkSteel = VanillaFactory.createItem("gearCrushingDarkSteel");
gearCrushingDarkSteel.maxStackSize = 1;
gearCrushingDarkSteel.rarity = "uncommon";
gearCrushingDarkSteel.maxDamage = 2048;
//gearCrushingDarkSteel.glowing = true;
gearCrushingDarkSteel.register();

var gearCrushingCortenSteel = VanillaFactory.createItem("gearCrushingCortenSteel");
gearCrushingCortenSteel.maxStackSize = 1;
gearCrushingCortenSteel.rarity = "rare";
gearCrushingCortenSteel.maxDamage = 4096;
//gearCrushingCortenSteel.glowing = true;
gearCrushingCortenSteel.register();

var gearCrushingVanasteel = VanillaFactory.createItem("gearCrushingVanasteel");
gearCrushingVanasteel.maxStackSize = 1;
gearCrushingVanasteel.rarity = "epic";
gearCrushingVanasteel.maxDamage = 8192;
//gearCrushingVanasteel.glowing = true;
gearCrushingVanasteel.register();


var agitatorInvar = VanillaFactory.createItem("agitatorInvar");
agitatorInvar.maxStackSize = 1;
agitatorInvar.rarity = "common";
agitatorInvar.maxDamage = 512;
//agitatorInvar.glowing = true;
agitatorInvar.register();

var agitatorSteel = VanillaFactory.createItem("agitatorSteel");
agitatorSteel.maxStackSize = 1;
agitatorSteel.rarity = "common";
agitatorSteel.maxDamage = 1024;
//agitatorSteel.glowing = true;
agitatorSteel.register();

var agitatorDarkSteel = VanillaFactory.createItem("agitatorDarkSteel");
agitatorDarkSteel.maxStackSize = 1;
agitatorDarkSteel.rarity = "uncommon";
agitatorDarkSteel.maxDamage = 2048;
//agitatorDarkSteel.glowing = true;
agitatorDarkSteel.register();

var agitatorHydronalium = VanillaFactory.createItem("agitatorHydronalium");
agitatorHydronalium.maxStackSize = 1;
agitatorHydronalium.rarity = "rare";
agitatorHydronalium.maxDamage = 4096;
//agitatorHydronalium.glowing = true;
agitatorHydronalium.register();

var agitatorHastelloy = VanillaFactory.createItem("agitatorHastelloy");
agitatorHastelloy.maxStackSize = 1;
agitatorHastelloy.rarity = "epic";
agitatorHastelloy.maxDamage = 8192;
//agitatorHastelloy.glowing = true;
agitatorHastelloy.register();