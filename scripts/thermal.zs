import crafttweaker.item.IItemStack;
import mods.thermalexpansion.InductionSmelter;
import mods.thermalexpansion.Transposer;
import mods.nuclearcraft.alloy_furnace;
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
recipes.addShaped(<thermalexpansion:machine:15>, [[null, <embers:superheater>, null],[<thermalfoundation:material:162>, <thermalexpansion:frame:64>, <thermalfoundation:material:162>], [<thermalfoundation:material:256>, <thermalfoundation:material:513>, <thermalfoundation:material:256>]]);

//glacial
recipes.addShaped(<thermalexpansion:machine:14>, [[null, <cookingforblockheads:ice_unit>, null],[<thermalfoundation:material:162>, <thermalexpansion:frame:64>, <thermalfoundation:material:162>], [<thermalfoundation:material:256>, <thermalfoundation:material:513>, <thermalfoundation:material:256>]]);

recipes.addShaped(<thermalfoundation:glass:3>, [[<thermalfoundation:material:770>, <thermalfoundation:material:1024>, <thermalfoundation:material:770>],[<thermalfoundation:material:67>, <ore:fusedQuartz>, <thermalfoundation:material:67>], [<thermalfoundation:material:770>, <thermalfoundation:material:1024>, <thermalfoundation:material:770>]]);


//mods.thermalexpansion.Pulverizer.addRecipe(IItemStack output, IItemStack input, int energy, @Optional IItemStack secondaryOutput, @Optional int secondaryChance);

//mods.thermalexpansion.Transposer.addFillRecipe(IItemStack output, IItemStack input, ILiquidStack fluid, int energy);
//Modularium
Transposer.addFillRecipe(<modularmachinery:itemmodularium>, <thermalfoundation:material:160>, <liquid:dawnstone> * 144, 100);

//Fiery Ingot
Transposer.addFillRecipe(<twilightforest:fiery_ingot>, <thebetweenlands:octine_ingot>, <liquid:pyrotheum> * 2000, 10000);

//Lumim
alloy_furnace.removeRecipeWithOutput([<nuclearcraft:alloy:8>*4]);
mods.nuclearcraft.infuser.removeRecipeWithOutput([<thermalfoundation:material:166>]);
InductionSmelter.addRecipe(<nuclearcraft:alloy:8>*4, <thermalfoundation:material:130>, <thermalfoundation:material:129>*3, 5000);
Transposer.addFillRecipe(<thermalfoundation:material:166>, <nuclearcraft:alloy:8>, <liquid:glowstone> * 1000, 10000);

//Signallum
alloy_furnace.removeRecipeWithOutput([<nuclearcraft:alloy:7>*4]);
mods.nuclearcraft.infuser.removeRecipeWithOutput([<thermalfoundation:material:165>]);
InductionSmelter.addRecipe(<nuclearcraft:alloy:7>*4, <thermalfoundation:material:130>, <thermalfoundation:material:128>*3, 5000);
Transposer.addFillRecipe(<thermalfoundation:material:165>, <rockhounding_chemistry:alloy_items_deco:13>, <liquid:redstone> * 500, 10000);
Transposer.addFillRecipe(<thermalfoundation:material:165>, <nuclearcraft:alloy:7>, <liquid:redstone> * 1000, 10000);

//Endurim
alloy_furnace.removeRecipeWithOutput([<nuclearcraft:alloy:9>*4]);
mods.nuclearcraft.infuser.removeRecipeWithOutput([<thermalfoundation:material:167>]);
InductionSmelter.addRecipe(<nuclearcraft:alloy:9>*4, <thermalfoundation:material:134>, <thermalfoundation:material:131>*3, 5000);
Transposer.addFillRecipe(<thermalfoundation:material:167>, <nuclearcraft:alloy:9>, <liquid:ender> * 250, 10000);


val OretoRemove =
[
<thermalfoundation:ore:7>,
<thermalfoundation:ore:6>,
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
<minecraft:iron_ingot>,
]
 as IItemStack[];

for item in DuststoRemove {
InductionSmelter.removeRecipe(item, <minecraft:sand>);
}
##########################################################################################
print("==================== end of thermal.zs ====================");
