##########################################################################################

import crafttweaker.item.IItemStack;
import mods.immersiveengineering.Crusher;
import mods.thermalexpansion.Pulverizer;
import mods.mekanism.enrichment;
import mods.advancedrocketry.PrecisionAssembler;
import mods.advancedrocketry.Crystallizer;
import mods.advancedrocketry.Lathe;

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
]
 as IItemStack[];

for item in itemstoRemove {
	recipes.remove(item);
}


mods.advancedrocketry.PlatePresser.clear();

mods.advancedrocketry.PlatePresser.addRecipe(<minecraft:cobblestone>,<minecraft:stone>);
mods.advancedrocketry.PlatePresser.addRecipe(<minecraft:gravel>,<minecraft:cobblestone>);
mods.advancedrocketry.PlatePresser.addRecipe(<minecraft:sand>,<minecraft:gravel>);
mods.advancedrocketry.PlatePresser.addRecipe(<appliedenergistics2:material:5>,<minecraft:sand>);

mods.advancedrocketry.PlatePresser.addRecipe(<thermalfoundation:material:320>*5,<thermalfoundation:storage>);
mods.advancedrocketry.PlatePresser.addRecipe(<thermalfoundation:material:321>*5,<thermalfoundation:storage:1>);
mods.advancedrocketry.PlatePresser.addRecipe(<thermalfoundation:material:323>*5,<thermalfoundation:storage:3>);
mods.advancedrocketry.PlatePresser.addRecipe(<thermalfoundation:material:32>*5,<minecraft:iron_block>);

//mods.advancedrocketry.Lathe.removeRecipe(titaniumRod.withDamage(1)*2);
//mods.advancedrocketry.Lathe.addRecipe(<minecraft:log>*1, 80, 100, <minecraft:planks>*4);

recipes.addShaped(<libvulpes:advstructuremachine> * 5, [[<libvulpes:structuremachine>, <techreborn:plates:38>, <libvulpes:structuremachine>],[<techreborn:plates:38>, <libvulpes:structuremachine>, <techreborn:plates:38>], [<libvulpes:structuremachine>, <techreborn:plates:38>, <libvulpes:structuremachine>]]);


//Dilithium
furnace.remove(<libvulpes:productdust>);
Crusher.removeRecipe(<libvulpes:productgem>);
Pulverizer.removeRecipe(<libvulpes:ore0>);
enrichment.removeRecipe(<libvulpes:ore0>);
enrichment.removeRecipe(<libvulpes:productdust>);

Crystallizer.removeRecipe(<libvulpes:productgem>);
Crystallizer.addRecipe(<libvulpes:productgem>, 600, 7500, <libvulpes:productdust>, <techreborn:dynamiccell>.withTag({Fluid: {FluidName: "liquidchlorine", Amount: 1000}})); 

//Silicon
Crystallizer.removeRecipe(<libvulpes:productboule:3>);
Crystallizer.addRecipe(<libvulpes:productboule:3>, 600, 5000, <libvulpes:productdust:3>*4); 

recipes.addShaped(<advancedrocketry:ic:5>, [[<moreplates:vivid_alloy_plate>, <appliedenergistics2:material:55>, <moreplates:vivid_alloy_plate>],[<moreplates:vivid_alloy_plate>, <enderio:item_material:41>, <moreplates:vivid_alloy_plate>], [<moreplates:vivid_alloy_plate>, <techreborn:part:43>, <moreplates:vivid_alloy_plate>]]);
recipes.addShaped(<advancedrocketry:ic:3>, [[<moreplates:vibrant_alloy_plate>, <ore:circuitElite>, <moreplates:vibrant_alloy_plate>],[<moreplates:vibrant_alloy_plate>, <advgenerators:controller>, <moreplates:vibrant_alloy_plate>], [<moreplates:vibrant_alloy_plate>, <techreborn:part:43>, <moreplates:vibrant_alloy_plate>]]);
recipes.addShaped(<advancedrocketry:ic:4>, [[<moreplates:end_steel_plate>, <rockhounding_chemistry:misc_items:10>, <moreplates:end_steel_plate>],[<moreplates:end_steel_plate>, <rockhounding_chemistry:misc_items:11>, <moreplates:end_steel_plate>], [<moreplates:end_steel_plate>, <techreborn:part:43>, <moreplates:end_steel_plate>]]);

/*
PrecisionAssembler.removeRecipe(<advancedrocketry:ic:5>); 
PrecisionAssembler.removeRecipe(<advancedrocketry:ic:4>); 
PrecisionAssembler.removeRecipe(<advancedrocketry:ic:3>); 
*/
PrecisionAssembler.clear();


Crystallizer.addRecipe(<arcanearchives:raw_quartz>*3, 600, 7500, <appliedenergistics2:crystal_seed>*3, <astralsorcery:itemusabledust>); 


##########################################################################################
print("==================== end of mods advancedrocketry-ssp.zs ====================");
