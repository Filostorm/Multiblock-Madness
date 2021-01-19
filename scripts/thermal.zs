import crafttweaker.item.IItemStack;
print("==================== loading thermal.zs ====================");
##########################################################################################


val itemstoRemove =
[
    <thermalexpansion:machine:15>,
    <thermalexpansion:machine:14>
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
recipes.addShaped(<thermalfoundation:material:1028>, [[<bloodarsenal:base_item:2>, <botania:manaresource:23>, <thaumcraft:salis_mundus>],[<thermalfoundation:material:1024>, <thermalfoundation:material:72>, <astralsorcery:itemusabledust:1>], [<thermalfoundation:material:1027>, <thermalfoundation:material:1026>, <thermalfoundation:material:1025>]]);

//extruder
recipes.addShaped(<thermalexpansion:machine:15>, [[null, <embers:superheater>, null],[<thermalfoundation:material:162>, <thermalexpansion:frame:64>, <thermalfoundation:material:162>], [<thermalfoundation:material:256>, <thermalfoundation:material:513>, <thermalfoundation:material:256>]]);

//glacial
recipes.addShaped(<thermalexpansion:machine:14>, [[null, <cookingforblockheads:ice_unit>, null],[<thermalfoundation:material:162>, <thermalexpansion:frame:64>, <thermalfoundation:material:162>], [<thermalfoundation:material:256>, <thermalfoundation:material:513>, <thermalfoundation:material:256>]]);

recipes.addShaped(<thermalfoundation:glass:3>, [[<thermalfoundation:material:770>, <thermalfoundation:material:1024>, <thermalfoundation:material:770>],[<thermalfoundation:material:67>, <ore:fusedQuartz>, <thermalfoundation:material:67>], [<thermalfoundation:material:770>, <thermalfoundation:material:1024>, <thermalfoundation:material:770>]]);


//mods.thermalexpansion.Pulverizer.addRecipe(IItemStack output, IItemStack input, int energy, @Optional IItemStack secondaryOutput, @Optional int secondaryChance);

//mods.thermalexpansion.Transposer.addFillRecipe(IItemStack output, IItemStack input, ILiquidStack fluid, int energy);
mods.thermalexpansion.Transposer.addFillRecipe(<modularmachinery:itemmodularium>, <thermalfoundation:material:160>, <liquid:dawnstone> * 144, 100);

##########################################################################################
print("==================== end of thermal.zs ====================");
