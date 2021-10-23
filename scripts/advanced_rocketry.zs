##########################################################################################

import crafttweaker.item.IItemStack;
import mods.immersiveengineering.Crusher;
import mods.thermalexpansion.Pulverizer;
import mods.mekanism.enrichment;

print("==================== loading mods advancedrocketry-ssp.zs ====================");
##########################################################################################

val itemstoRemove =
[
<libvulpes:advstructuremachine>,
<advancedrocketry:ic:5>,
<advancedrocketry:ic:4>,
<advancedrocketry:ic:3>,
<advancedrocketry:seat>,
<advancedrocketry:productrod:1>,
<advancedrocketry:launchpad>,
]
 as IItemStack[];

for item in itemstoRemove {
	recipes.remove(item);
}

//mods.advancedrocketry.Lathe.removeRecipe(titaniumRod.withDamage(1)*2);
//mods.advancedrocketry.Lathe.addRecipe(<minecraft:log>*1, 80, 100, <minecraft:planks>*4);

recipes.addShaped(<libvulpes:advstructuremachine> * 5, [[<libvulpes:structuremachine>, <techreborn:plates:38>, <libvulpes:structuremachine>],[<techreborn:plates:38>, <libvulpes:structuremachine>, <techreborn:plates:38>], [<libvulpes:structuremachine>, <techreborn:plates:38>, <libvulpes:structuremachine>]]);

//Launch Pad
recipes.addShapeless(<advancedrocketry:launchpad>, [<ore:concrete>,<ore:dyeBlack>,<ore:dyeYellow>]);

//Dilithium
furnace.remove(<libvulpes:productdust>);
Crusher.removeRecipe(<libvulpes:productgem>);
Pulverizer.removeRecipe(<libvulpes:ore0>);
enrichment.removeRecipe(<libvulpes:ore0>);
enrichment.removeRecipe(<libvulpes:productdust>);

recipes.addShaped(<advancedrocketry:ic:5>, [[<moreplates:vivid_alloy_plate>, <appliedenergistics2:material:55>, <moreplates:vivid_alloy_plate>],[<moreplates:vivid_alloy_plate>, <enderio:item_material:41>, <moreplates:vivid_alloy_plate>], [<moreplates:vivid_alloy_plate>, <techreborn:part:43>, <moreplates:vivid_alloy_plate>]]);
recipes.addShaped(<advancedrocketry:ic:3>, [[<moreplates:vibrant_alloy_plate>, <ore:circuitElite>, <moreplates:vibrant_alloy_plate>],[<moreplates:vibrant_alloy_plate>, <advgenerators:controller>, <moreplates:vibrant_alloy_plate>], [<moreplates:vibrant_alloy_plate>, <techreborn:part:43>, <moreplates:vibrant_alloy_plate>]]);
recipes.addShaped(<advancedrocketry:ic:4>, [[<moreplates:end_steel_plate>, <rockhounding_chemistry:misc_items:10>, <moreplates:end_steel_plate>],[<moreplates:end_steel_plate>, <rockhounding_chemistry:misc_items:11>, <moreplates:end_steel_plate>], [<moreplates:end_steel_plate>, <techreborn:part:43>, <moreplates:end_steel_plate>]]);

/*
PrecisionAssembler.removeRecipe(<advancedrocketry:ic:5>); 
PrecisionAssembler.removeRecipe(<advancedrocketry:ic:4>); 
PrecisionAssembler.removeRecipe(<advancedrocketry:ic:3>); 
*/

##########################################################################################
print("==================== end of mods advancedrocketry-ssp.zs ====================");
