import crafttweaker.item.IItemStack;
import mods.thermalexpansion.InductionSmelter;
import mods.thermalexpansion.Transposer;
import mods.nuclearcraft.AlloyFurnace;
import mods.thermalexpansion.Insolator;
import mods.nuclearcraft.Infuser;
import mods.advancedrocketry.PrecisionAssembler;
import mods.techreborn.assemblingMachine;

print("==================== loading thermal.zs ====================");
##########################################################################################


val itemstoRemove =
[
    <thermalexpansion:machine:15>,
    <thermalexpansion:machine:14>,
    <thermalfoundation:material:103>,
    <thermalfoundation:material:101>,
    <thermalfoundation:material:102>,
    <thermalexpansion:frame:64>,
    <thermalexpansion:frame>,
    <thermalexpansion:machine:9>,
    <thermalexpansion:machine:11>,
    <thermalfoundation:fertilizer>,
]
 as IItemStack[];

for item in itemstoRemove {
	recipes.remove(item);
}
/*
//Mana Metal is not Mithril?
<ore:oreMithril>.remove(<thermalfoundation:ore:8>);
<ore:dustMithril>.remove(<thermalfoundation:material:72>);
<ore:ingotMithril>.remove(<thermalfoundation:material:136>);
<ore:nuggetMithril>.remove(<thermalfoundation:material:200>);
<ore:plateMithril>.remove(<thermalfoundation:material:328>);
<ore:gearMithril>.remove(<thermalfoundation:material:264>);
<ore:coinMithril>.remove(<thermalfoundation:coin:72>);
<ore:gearMithril>.remove(<thermalfoundation:material:264>);
<ore:blockMithril>.remove(<thermalfoundation:storage:8>);
*/

//Mana Metal
recipes.addShaped(<thermalfoundation:material:136>, [[null, <mysticalagriculture:crafting:37>, null],[<enderutilities:enderpart:2>, <contenttweaker:inert_ingot>, <botania:manaresource:4>], [null, <thaumcraft:ingot>, null]]);

recipes.addShaped(<thermalfoundation:material:136>*2, [[null, <mysticalagriculture:crafting:37>, null],[<enderutilities:enderpart:2>, <contenttweaker:material_part:20>, <botania:manaresource:4>], [null, <thaumcraft:ingot>, null]]);

//Mana Dust
recipes.addShaped(<thermalfoundation:material:1028>, [[<bloodarsenal:base_item:2>,<botania:manaresource:8>, <thaumcraft:salis_mundus>],[<thermalfoundation:material:1024>, <thermalfoundation:material:72>, <astralsorcery:itemcraftingcomponent:2>], [<thermalfoundation:material:1027>, <thermalfoundation:material:1026>, <thermalfoundation:material:1025>]]);

//Device Frame
recipes.addShaped(<thermalexpansion:frame:64>, [[<thermalfoundation:material:321>, <ore:fusedGlass>, <thermalfoundation:material:321>],[<ore:fusedGlass>, <thermalfoundation:material:292>, <ore:fusedGlass>], [<thermalfoundation:material:321>, <ore:fusedGlass>, <thermalfoundation:material:321>]]);

//extruder
recipes.addShaped(<thermalexpansion:machine:15>.withTag({Level: 1 as byte}), [[null, <embers:superheater>, null],[<thermalfoundation:material:162>, <thermalexpansion:frame:64>, <thermalfoundation:material:162>], [<thermalfoundation:material:256>, <openblocks:tank>, <thermalfoundation:material:256>]]);

//glacial
recipes.addShaped(<thermalexpansion:machine:14>.withTag({Level: 1 as byte}), [[null, <cookingforblockheads:ice_unit>, null],[<thermalfoundation:material:162>, <thermalexpansion:frame:64>, <thermalfoundation:material:162>], [<thermalfoundation:material:256>, <openblocks:tank>, <thermalfoundation:material:256>]]);

//Energetic
recipes.addShaped(<thermalexpansion:machine:9>.withTag({Level: 1 as byte}), [[null, <appliedenergistics2:charger>, null],[<thermalfoundation:material:514>, <thermalexpansion:frame>, <thermalfoundation:material:514>], [<thermalfoundation:material:256>, <thermalfoundation:material:513>, <thermalfoundation:material:256>]]);


//Hardned glass
recipes.addShaped(<thermalfoundation:glass:3>, [[<thermalfoundation:material:770>, <thermalfoundation:material:1024>, <thermalfoundation:material:770>],[<thermalfoundation:material:67>, <ore:fusedQuartz>, <thermalfoundation:material:67>], [<thermalfoundation:material:770>, <thermalfoundation:material:1024>, <thermalfoundation:material:770>]]);


val Coils as IItemStack[IItemStack] = {
    <thermalfoundation:material:513>:<moreplates:gold_stick>,
    <thermalfoundation:material:514>:<moreplates:silver_stick>,
    <thermalfoundation:material:515>:<moreplates:electrum_stick>,
} as IItemStack[IItemStack];

for coil, rod in Coils {
	recipes.remove(coil);
    assemblingMachine.addRecipe(coil, rod, <advgenerators:iron_wiring>*2, 400, 32);
    PrecisionAssembler.addRecipe(coil, 200, 10000, rod, <advgenerators:iron_wiring>*2);
}


//Remove Coal????
mods.thermalexpansion.RedstoneFurnace.removeRecipe(<thermalfoundation:material:768>);

//mods.thermalexpansion.Pulverizer.addRecipe(IItemStack output, IItemStack input, int energy, @Optional IItemStack secondaryOutput, @Optional int secondaryChance);

//mods.thermalexpansion.Transposer.addFillRecipe(IItemStack output, IItemStack input, ILiquidStack fluid, int energy);

//Lumim
AlloyFurnace.removeRecipeWithOutput(<nuclearcraft:alloy:8>*4);
Infuser.removeRecipeWithOutput(<thermalfoundation:material:166>);
InductionSmelter.addRecipe(<nuclearcraft:alloy:8>*4, <thermalfoundation:material:130>, <thermalfoundation:material:129>*3, 5000);
Transposer.addFillRecipe(<thermalfoundation:material:166>, <nuclearcraft:alloy:8>, <liquid:glowstone> * 1000, 10000);

//Signallum
AlloyFurnace.removeRecipeWithOutput(<nuclearcraft:alloy:7>*4);
Infuser.removeRecipeWithOutput(<thermalfoundation:material:165>);
InductionSmelter.addRecipe(<nuclearcraft:alloy:7>*4, <thermalfoundation:material:130>, <thermalfoundation:material:128>*3, 5000);
Transposer.addFillRecipe(<thermalfoundation:material:165>, <rockhounding_chemistry:alloy_items_deco:13>, <liquid:redstone> * 500, 10000);
Transposer.addFillRecipe(<thermalfoundation:material:165>, <nuclearcraft:alloy:7>, <liquid:redstone> * 1000, 10000);

//Endurim
AlloyFurnace.removeRecipeWithOutput(<nuclearcraft:alloy:9>*4);
Infuser.removeRecipeWithOutput(<thermalfoundation:material:167>);
InductionSmelter.addRecipe(<nuclearcraft:alloy:9>*4, <thermalfoundation:material:134>, <thermalfoundation:material:131>*3, 5000);
Transposer.addFillRecipe(<thermalfoundation:material:167>, <nuclearcraft:alloy:9>, <liquid:ender> * 250, 10000);

recipes.addShaped(<thermalexpansion:machine:11>, [
	[null, <ore:workbench>, null], 
	[<ore:plateTin>, <thermalexpansion:frame:64>, <ore:plateTin>], 
	[<ore:gearCopper>, <rockhounding_chemistry:misc_items:10>, <ore:gearCopper>]
]);

val OretoRemove =
[
<thermalfoundation:ore:7>,
<thermalfoundation:ore:6>,
<thermalfoundation:ore:8>,
]
 as IItemStack[];

for item in OretoRemove {
InductionSmelter.removeRecipe(item, <minecraft:sand>);
InductionSmelter.removeRecipe(item, <thermalfoundation:material:865>);
InductionSmelter.removeRecipe(item, <thermalfoundation:material:866>);
}

val OreByproductstoRemove =
[
<thermalfoundation:ore:5>,
]
 as IItemStack[];

for item in OreByproductstoRemove {
InductionSmelter.removeRecipe(item, <thermalfoundation:material:866>);
}

val DuststoRemove =
[
<thermalfoundation:material:71>,
<thermalfoundation:material:70>,
<thermalfoundation:material:72>,
<minecraft:iron_ingot>,
]
 as IItemStack[];

for item in DuststoRemove {
InductionSmelter.removeRecipe(item, <minecraft:sand>);
}


val flowerDupe =
[
<minecraft:red_flower:5>,
<minecraft:red_flower:6>,
<minecraft:red_flower:3>,
<minecraft:red_flower:4>,
<minecraft:red_flower:2>,
<minecraft:red_flower:1>,
<minecraft:yellow_flower>,
<minecraft:red_flower:8>,
<minecraft:red_flower>,
<minecraft:red_flower:7>,
<xlfoodmod:vanilla_flower>,
]
 as IItemStack[];
for item in flowerDupe {
Insolator.addRecipe(item*2, item, <thermalfoundation:fertilizer>, 1500);
Insolator.addRecipe(item*3, item, <thermalfoundation:fertilizer:1>, 3000);
Insolator.addRecipe(item*5, item, <thermalfoundation:fertilizer:2>, 5000);
}


//Watering Cans
recipes.removeShaped(<thermalcultivation:watering_can>, [[<thermalfoundation:material:128>, null, null],[<thermalfoundation:material:128>, <minecraft:bucket>, <thermalfoundation:material:128>], [null, <thermalfoundation:material:128>, null]]);
recipes.removeShaped(<thermalcultivation:watering_can:1>, [[null, <minecraft:dye:15>, null],[<thermalfoundation:material:162>, <thermalcultivation:watering_can>, <thermalfoundation:material:162>], [<minecraft:dye:15>, <minecraft:redstone>, <minecraft:dye:15>]]);
recipes.addShaped(<thermalcultivation:watering_can:1>, [[null, <cyclicmagic:peat_fuel>, null],[<thermalfoundation:material:162>, <thermalcultivation:watering_can>, <thermalfoundation:material:162>], [<cyclicmagic:peat_fuel>, <minecraft:redstone>, <cyclicmagic:peat_fuel>]]);
recipes.addShaped(<thermalcultivation:watering_can>, [[<thermalfoundation:material:128>, null, null],[<thermalfoundation:material:128>, <actuallyadditions:item_fertilizer>, <thermalfoundation:material:128>], [null, <thermalfoundation:material:128>, null]]);

// Rewriting Thermal Machine Recipes to give Hardened variants
val machinestoRemove =
[
<thermalexpansion:machine:4>,
<thermalexpansion:machine:12>,
<thermalexpansion:machine:13>,
<thermalexpansion:machine>,
<thermalexpansion:machine:1>,
<thermalexpansion:machine:2>,
<thermalexpansion:machine:3>,
<thermalexpansion:machine:5>,
<thermalexpansion:machine:6>,
<thermalexpansion:machine:8>,
<thermalexpansion:machine:7>,
<thermalexpansion:machine:10>
]
 as IItemStack[];

for item in machinestoRemove {
	recipes.remove(item);
}

// Redstone Furnace
recipes.addShaped(<thermalexpansion:machine>.withTag({Level: 1 as byte}), 
[[null, <minecraft:redstone>, null],
[<minecraft:brick_block>, <thermalexpansion:frame>, <minecraft:brick_block>], 
[<thermalfoundation:material:256>, <thermalfoundation:material:513>, <thermalfoundation:material:256>]]);

// Pulveriser
recipes.addShaped(<thermalexpansion:machine:1>.withTag({Level: 1 as byte}), 
[[null, <minecraft:piston>, null],
[<minecraft:flint>, <thermalexpansion:frame>, <minecraft:flint>], 
[<thermalfoundation:material:256>, <thermalfoundation:material:513>, <thermalfoundation:material:256>]]);

// Sawmill
recipes.addShaped(<thermalexpansion:machine:2>.withTag({Level: 1 as byte}), 
[[null, <thermalfoundation:material:657>, null],
[<ore:plankWood>, <thermalexpansion:frame>, <ore:plankWood>], 
[<thermalfoundation:material:256>, <thermalfoundation:material:513>, <thermalfoundation:material:256>]]);

// Induction Smelter
recipes.addShaped(<thermalexpansion:machine:3>.withTag({Level: 1 as byte}), 
[[null, <thermalfoundation:material:290>, null],
[<ore:sand>, <thermalexpansion:frame>, <ore:sand>], 
[<thermalfoundation:material:256>, <thermalfoundation:material:513>, <thermalfoundation:material:256>]]);

// Compactor
recipes.addShaped(<thermalexpansion:machine:5>.withTag({Level: 1 as byte}), 
[[null, <minecraft:piston>, null],
[<thermalfoundation:material:163>, <thermalexpansion:frame>, <thermalfoundation:material:163>], 
[<thermalfoundation:material:256>, <thermalfoundation:material:513>, <thermalfoundation:material:256>]]);

// Magma Crucible
recipes.addShaped(<thermalexpansion:machine:6>.withTag({Level: 1 as byte}), 
[[null, <ore:blockGlassHardened>, null],
[<minecraft:nether_brick>, <thermalexpansion:frame>, <minecraft:nether_brick>], 
[<thermalfoundation:material:256>, <thermalfoundation:material:513>, <thermalfoundation:material:256>]]);

// Fluid Transposer
recipes.addShaped(<thermalexpansion:machine:8>.withTag({Level: 1 as byte}), 
[[null, <minecraft:bucket>, null],
[<ore:blockGlass>, <thermalexpansion:frame>, <ore:blockGlass>], 
[<thermalfoundation:material:256>, <thermalfoundation:material:513>, <thermalfoundation:material:256>]]);

// Fractionating Still
recipes.addShaped(<thermalexpansion:machine:7>.withTag({Level: 1 as byte}), 
[[null, <thermalfoundation:material:261>, null],
[<ore:blockGlass>, <thermalexpansion:frame>, <ore:blockGlass>], 
[<thermalfoundation:material:256>, <thermalfoundation:material:513>, <thermalfoundation:material:256>]]);

// Centrifugal Separator
recipes.addShaped(<thermalexpansion:machine:10>.withTag({Level: 1 as byte}), 
[[null, <minecraft:compass>, null],
[<thermalfoundation:material:164>, <thermalexpansion:frame>, <thermalfoundation:material:164>], 
[<thermalfoundation:material:256>, <thermalfoundation:material:513>, <thermalfoundation:material:256>]]);

// Phytogenic Insolator
recipes.addShaped(<thermalexpansion:machine:4>.withTag({Level: 1 as byte}), 
[[null, <thermalfoundation:material:294>, null],
[<ore:dirt>, <thermalexpansion:frame>, <ore:dirt>], 
[<thermalfoundation:material:256>, <thermalfoundation:material:513>, <thermalfoundation:material:256>]]);

// Alchemical Imbuer
recipes.addShaped(<thermalexpansion:machine:12>.withTag({Level: 1 as byte}), 
[[null, <minecraft:brewing_stand>, null],
[<ore:blockGlassHardened>, <thermalexpansion:frame>, <ore:blockGlassHardened>], 
[<thermalfoundation:material:292>, <thermalfoundation:material:513>, <thermalfoundation:material:292>]]);

// Arcane Ensorcellator
recipes.addShaped(<thermalexpansion:machine:13>.withTag({Level: 1 as byte}), 
[[null, <minecraft:enchanting_table>, null],
[<ore:blockLapis>, <thermalexpansion:frame>, <ore:blockLapis>], 
[<thermalfoundation:material:292>, <thermalfoundation:material:513>, <thermalfoundation:material:292>]]);
##########################################################################################
print("==================== end of thermal.zs ====================");
