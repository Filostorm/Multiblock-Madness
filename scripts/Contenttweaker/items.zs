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

VanillaFactory.createItem("adventure_token").register();
VanillaFactory.createItem("exploring_token").register();
VanillaFactory.createItem("mining_token").register();
VanillaFactory.createItem("tech_token").register();
VanillaFactory.createItem("magic_token").register();
VanillaFactory.createItem("terrasteel_coil").register();

var activatedAspectusCopper = VanillaFactory.createItem("activatedAspectusCopper");
activatedAspectusCopper.maxStackSize = 8;
activatedAspectusCopper.rarity = "rare";
activatedAspectusCopper.glowing = true;
activatedAspectusCopper.itemRightClick = function(stack, world, player, hand) {
    Commands.call("time add 1000", player, world, true, true);
    return "Pass";
};
activatedAspectusCopper.register();

var activatedAspectusSilver = VanillaFactory.createItem("activatedAspectusSilver");
activatedAspectusSilver.maxStackSize = 8;
activatedAspectusSilver.rarity = "rare";
activatedAspectusSilver.glowing = true;
activatedAspectusSilver.itemRightClick = function(stack, world, player, hand) {
    Commands.call("toggledownfall", player, world, true, true);
    return "Pass";
};
activatedAspectusSilver.register();