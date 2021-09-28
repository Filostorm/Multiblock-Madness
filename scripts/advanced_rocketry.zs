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

PrecisionAssembler.addRecipe(<advancedrocketry:ic:5>, 600, 10000, <moreplates:vivid_alloy_plate>*3, <appliedenergistics2:material:55>,<enderio:item_material:41>,<techreborn:part:43>);
PrecisionAssembler.addRecipe(<advancedrocketry:ic:3>, 600, 10000, <moreplates:vibrant_alloy_plate>*3, <mekanism:controlcircuit:2>,<advgenerators:controller>,<techreborn:part:43>);
PrecisionAssembler.addRecipe(<advancedrocketry:ic:3>, 600, 10000, <moreplates:vibrant_alloy_plate>*3, <techreborn:part:1>,<advgenerators:controller>,<techreborn:part:43>);
PrecisionAssembler.addRecipe(<advancedrocketry:ic:4>, 600, 10000, <moreplates:end_steel_plate>*3, <rockhounding_chemistry:misc_items:10>,<rockhounding_chemistry:misc_items:11>,<techreborn:part:43>);



PrecisionAssembler.addRecipe(<advancedrocketry:itemcircuitplate>, 300, 5000, <advancedrocketry:wafer>, <minecraft:redstone>, <minecraft:gold_ingot>);
PrecisionAssembler.addRecipe(<advancedrocketry:itemcircuitplate:1>, 600, 10000, <advancedrocketry:wafer>, <minecraft:gold_ingot>, <minecraft:redstone_block>);
PrecisionAssembler.addRecipe(<advancedrocketry:dataunit>, 1200, 10000, <minecraft:redstone>, <advancedrocketry:ic>, <minecraft:emerald>);
PrecisionAssembler.addRecipe(<advancedrocketry:ic:1>, 600, 5000, <minecraft:ender_eye>, <minecraft:redstone>, <advancedrocketry:itemcircuitplate>);
PrecisionAssembler.addRecipe(<advancedrocketry:elevatorchip>, 600, 5000, <advancedrocketry:spacestationchip>, <advancedrocketry:ic:1>);

PrecisionAssembler.addRecipe(<advancedrocketry:blocklens>, 600, 10000, <minecraft:glass>*3, <advancedrocketry:lens>*3, <immersiveengineering:material:1>);
PrecisionAssembler.addRecipe(<advancedrocketry:atmanalyser>, 600, 10000, <advancedrocketry:misc>, <libvulpes:battery>, <advancedrocketry:ic:2>, <advancedrocketry:lens>, <thermalfoundation:material:321>);
PrecisionAssembler.addRecipe(<advancedrocketry:beaconfinder>, 600, 10000, <advancedrocketry:ic:1>, <advancedrocketry:itemupgrade:4>);
PrecisionAssembler.addRecipe(<advancedrocketry:biomechanger>, 600, 10000, <advancedrocketry:ic:1>, <advancedrocketry:ic:2>, <advancedrocketry:misc>, <libvulpes:battery>, <thermalfoundation:material:321>);
PrecisionAssembler.addRecipe(<advancedrocketry:satelliteprimaryfunction:5>, 600, 10000, <libvulpes:productrod:4>*2, <libvulpes:productrod:7>, <advancedrocketry:wafer>, <advancedrocketry:ic:2>);


PrecisionAssembler.addRecipe(<advancedrocketry:itemupgrade:2>, 1200, 25000, <libvulpes:motor>, <advancedrocketry:ic:2>, <advancedrocketry:ic:3>);
PrecisionAssembler.addRecipe(<advancedrocketry:itemupgrade:3>, 1200, 25000, <advancedrocketry:ic:3>, <advancedrocketry:ic:2>, <minecraft:feather>, <minecraft:leather_boots>);
PrecisionAssembler.addRecipe(<advancedrocketry:itemupgrade:4>, 1200, 25000, <advancedrocketry:ic:3>, <advancedrocketry:ic:2>, <libvulpes:battery>, <advancedrocketry:lens>);
PrecisionAssembler.addRecipe(<advancedrocketry:itemupgrade>, 1200, 25000, <advancedrocketry:ic:3>, <advancedrocketry:ic>, <minecraft:redstone>, <minecraft:redstone_torch>);
PrecisionAssembler.addRecipe(<advancedrocketry:itemupgrade:1>, 1200, 25000, <advancedrocketry:ic:3>, <advancedrocketry:ic:2>, <minecraft:diamond>, <minecraft:fire_charge>);



Crystallizer.addRecipe(<arcanearchives:raw_quartz>*3, 600, 7500, <appliedenergistics2:crystal_seed>*3, <astralsorcery:itemusabledust>); 


##########################################################################################
print("==================== end of mods advancedrocketry-ssp.zs ====================");
