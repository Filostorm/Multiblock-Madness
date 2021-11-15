#priority 98

import crafttweaker.item.IItemStack;
import crafttweaker.item.WeightedItemStack;
import crafttweaker.oredict.IOreDict;
import crafttweaker.oredict.IOreDictEntry;
import crafttweaker.item.IIngredient;
import mods.immersiveengineering.Crusher;
import mods.nuclearcraft.Manufactory;
import mods.thermalexpansion.Pulverizer;
import mods.techreborn.rollingMachine;
import mods.thermalexpansion.Compactor;
import mods.techreborn.implosionCompressor;
import mods.nuclearcraft.Pressurizer;
import mods.mekanism.crusher;
import mods.immersiveengineering.MetalPress;
import mods.mekanism.enrichment;

print("==================== loading parts.zs ====================");
##########################################################################################

val itemstoRemove =
[
	<embers:blend_caminite>,
	<tconstruct:soil>,
	<enderio:item_material:22>,
	<appliedenergistics2:quartz_glass>,
	<appliedenergistics2:quartz_vibrant_glass>,
	<deepmoblearning:polymer_clay>,
	<randomthings:ingredient:3>,
	<jaopca:item_stickthaumium>,
]
 as IItemStack[];

for item in itemstoRemove {
	recipes.remove(item);
}



/* Moved
//scaffolding
assemblingMachine.addRecipe(<contenttweaker:vanasteel_scaffolding>*9, <rockhounding_chemistry:alloy_items_tech:40>*3, <contenttweaker:rod_vanasteel>*3, 100, 100);
assemblingMachine.addRecipe(<immersiveengineering:metal_decoration1:1>*9, <thermalfoundation:material:160>*3, <immersiveengineering:material:2>*3, 100, 100);
assemblingMachine.addRecipe(<contenttweaker:scal_scaffolding>*9, <rockhounding_chemistry:alloy_items_tech:4>*3, <contenttweaker:rod_scal>*3, 100, 100);
assemblingMachine.addRecipe(<contenttweaker:bam_scaffolding>*9, <rockhounding_chemistry:alloy_items_tech:7>*3, <contenttweaker:rod_bam>*3, 100, 100);
assemblingMachine.addRecipe(<contenttweaker:nimonic_scaffolding>*9, <rockhounding_chemistry:alloy_items_tech:16>*3, <contenttweaker:rod_nimonic>*3, 100, 100);
assemblingMachine.addRecipe(<contenttweaker:invar_scaffolding>*9, <thermalfoundation:material:162>*3, <moreplates:invar_stick>*3, 100, 100);
assemblingMachine.addRecipe(<immersiveengineering:metal_decoration1:5>*9, <thermalfoundation:material:132>*3, <immersiveengineering:material:3>*3, 100, 100);
assemblingMachine.addRecipe(<jaopca:block_scaffoldingnichrome>*9, <rockhounding_chemistry:alloy_items_tech:22>*3, <jaopca:item_sticknichrome>*3, 100, 100);
assemblingMachine.addRecipe(<jaopca:block_scaffoldingstainlesssteel>*9, <qmd:ingot_alloy:2>*3, <jaopca:item_stickstainlesssteel>*3, 100, 100);
assemblingMachine.addRecipe(<jaopca:block_scaffoldingthaumium>*9, <thaumcraft:ingot>*3, <jaopca:item_stickthaumium>*3, 100, 100);
*/

recipes.addShaped(<contenttweaker:scal_scaffolding> * 6, [[<rockhounding_chemistry:alloy_items_tech:4>, <rockhounding_chemistry:alloy_items_tech:4>, <rockhounding_chemistry:alloy_items_tech:4>],[null, <contenttweaker:rod_scal>, null], [<contenttweaker:rod_scal>, null, <contenttweaker:rod_scal>]]);
recipes.addShaped(<contenttweaker:bam_scaffolding> * 6, [[<rockhounding_chemistry:alloy_items_tech:7>, <rockhounding_chemistry:alloy_items_tech:7>, <rockhounding_chemistry:alloy_items_tech:7>],[null, <contenttweaker:rod_bam>, null], [<contenttweaker:rod_bam>, null, <contenttweaker:rod_bam>]]);
recipes.addShaped(<contenttweaker:nimonic_scaffolding> * 6, [[<rockhounding_chemistry:alloy_items_tech:16>, <rockhounding_chemistry:alloy_items_tech:16>, <rockhounding_chemistry:alloy_items_tech:16>],[null, <contenttweaker:rod_nimonic>, null], [<contenttweaker:rod_nimonic>, null, <contenttweaker:rod_nimonic>]]);
recipes.addShaped(<contenttweaker:vanasteel_scaffolding> * 6, [[<rockhounding_chemistry:alloy_items_tech:40>, <rockhounding_chemistry:alloy_items_tech:40>, <rockhounding_chemistry:alloy_items_tech:40>],[null, <contenttweaker:rod_vanasteel>, null], [<contenttweaker:rod_vanasteel>, null, <contenttweaker:rod_vanasteel>]]);
recipes.addShaped(<contenttweaker:invar_scaffolding> * 6, [[<thermalfoundation:material:162>, <thermalfoundation:material:162>, <thermalfoundation:material:162>],[null, <moreplates:invar_stick>, null], [<moreplates:invar_stick>, null, <moreplates:invar_stick>]]);
recipes.addShaped(<jaopca:block_scaffoldingnichrome> * 6, [[<ore:ingotNichrome>, <ore:ingotNichrome>, <ore:ingotNichrome>],[null, <jaopca:item_sticknichrome>, null], [<jaopca:item_sticknichrome>, null, <jaopca:item_sticknichrome>]]);
recipes.addShaped(<jaopca:block_scaffoldingstainlesssteel> * 6, [[<ore:ingotStainlessSteel>, <ore:ingotStainlessSteel>, <ore:ingotStainlessSteel>],[null, <jaopca:item_stickstainlesssteel>, null], [<jaopca:item_stickstainlesssteel>, null, <jaopca:item_stickstainlesssteel>]]);
recipes.addShaped(<jaopca:block_scaffoldingthaumium> * 6, [[<thaumcraft:ingot>, <thaumcraft:ingot>, <thaumcraft:ingot>],[null, <jaopca:item_stickthaumium>, null], [<jaopca:item_stickthaumium>, null, <jaopca:item_stickthaumium>]]);
recipes.addShaped(<contenttweaker:ironwood_scaffolding> * 6, [[<twilightforest:ironwood_ingot>, <twilightforest:ironwood_ingot>, <twilightforest:ironwood_ingot>],[null, <contenttweaker:rod_ironwood>, null], [<contenttweaker:rod_ironwood>, null, <contenttweaker:rod_ironwood>]]);

################# RODS #######################

val metalPressRods as IItemStack[IItemStack] = {
	<contenttweaker:rod_nimonic>:<rockhounding_chemistry:alloy_items_tech:16>,
	<contenttweaker:rod_scal>:<rockhounding_chemistry:alloy_items_tech:4>,
	<contenttweaker:rod_vanasteel>:<rockhounding_chemistry:alloy_items_tech:40>,
	<contenttweaker:rod_bam>:<rockhounding_chemistry:alloy_items_tech:7>,
	<contenttweaker:rod_ironwood>:<twilightforest:ironwood_ingot>,
} as IItemStack[IItemStack];

for rod, material in metalPressRods {
	MetalPress.addRecipe(rod*2, material, <immersiveengineering:mold:2>, 2000);
}


################# GEARS #######################
mods.actuallyadditions.AtomicReconstructor.removeRecipe(<moreplates:restonia_gear>);

MetalPress.addRecipe(<moreplates:restonia_gear>, <actuallyadditions:item_crystal>, <immersiveengineering:mold:1>, 2000, 4);
MetalPress.addRecipe(<thaumicperiphery:gear_brass>, <ore:ingotBrass>, <immersiveengineering:mold:1>, 2000, 4);
Compactor.addGearRecipe(<moreplates:restonia_gear>, <actuallyadditions:item_crystal>*4, 4000);

################# PLATES #######################
//restonia
//mods.immersiveengineering.MetalPress.addRecipe(<moreplates:restonia_plate>, <actuallyadditions:item_crystal>, <immersiveengineering:mold>, 2000);
Compactor.addStorageRecipe(<moreplates:restonia_plate>, <actuallyadditions:item_crystal>, 1500);
Pressurizer.addRecipe(<actuallyadditions:item_crystal>, <moreplates:restonia_plate>);
MetalPress.addRecipe(<moreplates:restonia_plate>, <actuallyadditions:item_crystal>, <immersiveengineering:mold>, 2000);

//Enori
//mods.immersiveengineering.MetalPress.addRecipe(<moreplates:restonia_plate>, <actuallyadditions:item_crystal>, <immersiveengineering:mold>, 2000);
Compactor.addStorageRecipe(<moreplates:enori_plate>, <actuallyadditions:item_crystal:5>, 1500);
Pressurizer.addRecipe(<actuallyadditions:item_crystal:5>, <moreplates:enori_plate>);
MetalPress.addRecipe(<moreplates:enori_plate>, <actuallyadditions:item_crystal:5>, <immersiveengineering:mold>, 2000);

//void
MetalPress.removeRecipe(<moreplates:void_plate>);
MetalPress.addRecipe(<moreplates:void_plate>, <actuallyadditions:item_crystal:3>, <immersiveengineering:mold>, 2000);
Compactor.addStorageRecipe(<moreplates:void_plate>, <actuallyadditions:item_crystal:3>, 1500);
Pressurizer.addRecipe(<actuallyadditions:item_crystal:3>, <moreplates:void_plate>);

//Diamantine
mods.actuallyadditions.AtomicReconstructor.removeRecipe(<moreplates:diamatine_plate>);
Compactor.addStorageRecipe(<moreplates:diamatine_plate>, <actuallyadditions:item_crystal:2>, 1500);
Pressurizer.addRecipe(<actuallyadditions:item_crystal:2>, <moreplates:diamatine_plate>);


//void metal
MetalPress.addRecipe(<thaumcraft:plate:3>, <thaumcraft:ingot:1>, <immersiveengineering:mold>, 2000);
Pressurizer.removeRecipeWithInput(<thaumcraft:ingot:1>);

//Iriduim Alloy Plate
Compactor.removeStorageRecipe(<techreborn:ingot:22>);
MetalPress.removeRecipe(<techreborn:plates:38>);
Pressurizer.removeRecipeWithOutput(<techreborn:plates:38>);

//Aethium
Compactor.removeStorageRecipe(<aetherworks:item_resource:4>);
Compactor.addStorageRecipe(<aetherworks:item_resource:3>, <aetherworks:item_resource:4>, 1500);
Pressurizer.addRecipe(<aetherworks:item_resource:4>, <aetherworks:item_resource:3>);
MetalPress.addRecipe(<aetherworks:item_resource:3>, <aetherworks:item_resource:4>, <immersiveengineering:mold>, 2000);


//Electial Steel
//plateBendingMachine.addRecipe(<moreplates:electrical_steel_plate>,<enderio:item_alloy_ingot>, 400, 8);

//Energetic Alloy
//plateBendingMachine.addRecipe(<moreplates:energetic_alloy_plate>, <enderio:item_alloy_ingot:1>, 400, 8);

//QUartz
mods.immersiveengineering.MetalPress.removeRecipe(<moreplates:nether_quartz_plate>);
mods.techreborn.compressor.addRecipe(<moreplates:nether_quartz_plate>, <minecraft:quartz>, 400, 8);

//sheetmetal
recipes.addShaped(<contenttweaker:sheetmetal_brass> * 4, [[null, <ore:plateBrass>, null],[<ore:plateBrass>, null, <ore:plateBrass>], [null, <ore:plateBrass>, null]]);
rollingMachine.addShapeless(<contenttweaker:sheetmetal_brass>*9, [<ore:blockBrass>]);

var SheetmetalPlate as IItemStack[IItemStack] = {
<contenttweaker:sheetmetal_bronze>:<thermalfoundation:material:355>,
<contenttweaker:sheetmetal_ironwood>:<moreplates:ironwood_plate>,
<contenttweaker:sheetmetal_refinediron>:<techreborn:plates:35>,
<contenttweaker:sheetmetal_thaumium>:<thaumcraft:plate:2>,
<contenttweaker:sheetmetal_nimonic>:<rockhounding_chemistry:alloy_parts:22>,
<jaopca:block_sheetmetaldarksteel>:<moreplates:dark_steel_plate>,
<jaopca:block_sheetmetalsoularium>:<moreplates:soularium_plate>,
<jaopca:block_sheetmetallumium>:<thermalfoundation:material:358>,
<jaopca:block_sheetmetalredstonealloy>:<moreplates:redstone_alloy_plate>,
<jaopca:block_sheetmetalscal>:<rockhounding_chemistry:alloy_parts:10>,
<jaopca:block_sheetmetalelectricalsteel>:<moreplates:electrical_steel_plate>,
<jaopca:block_sheetmetalvanasteel>:<rockhounding_chemistry:alloy_parts:40>,
<jaopca:block_sheetmetaltitanium>:<techreborn:plates:31>,
<jaopca:block_sheetmetalconductiveiron>:<moreplates:conductive_iron_plate>,
<jaopca:block_sheetmetalpulsatingiron>:<moreplates:pulsating_iron_plate>,
<jaopca:block_sheetmetalstainlesssteel>:<jaopca:item_platestainlesssteel>,
<jaopca:block_sheetmetalenergeticalloy>:<moreplates:energetic_alloy_plate>,
<jaopca:block_sheetmetalenergeticsilver>:<moreplates:energetic_silver_plate>,
};
for sheetmetal, plate in SheetmetalPlate {
		### Rolling Machine ###
recipes.addShaped(sheetmetal * 4, [[null, plate, null],[plate, null, plate], [null, plate, null]]);
}

rollingMachine.addShapeless(<immersiveengineering:sheetmetal:10>*9, [<minecraft:gold_block>]);
rollingMachine.addShapeless(<contenttweaker:sheetmetal_thaumium>*9, [<thaumcraft:metal_thaumium>]);
rollingMachine.addShapeless(<contenttweaker:sheetmetal_bronze>*9, [<thermalfoundation:storage_alloy:3>]);
rollingMachine.addShapeless(<immersiveengineering:sheetmetal>*9, [<thermalfoundation:storage>]);
rollingMachine.addShapeless(<immersiveengineering:sheetmetal:1>*9, [<thermalfoundation:storage:4>]);
rollingMachine.addShapeless(<immersiveengineering:sheetmetal:2>*9, [<thermalfoundation:storage:3>]);
rollingMachine.addShapeless(<contenttweaker:sheetmetal_refinediron>*9, [<techreborn:storage2:10>]);
rollingMachine.addShapeless(<contenttweaker:sheetmetal_nimonic>*9, [<rockhounding_chemistry:alloy_blocks_tech:5>]);
rollingMachine.addShapeless(<immersiveengineering:sheetmetal:9>*9, [<minecraft:iron_block>]);
rollingMachine.addShapeless(<immersiveengineering:sheetmetal:8>*9, [<thermalfoundation:storage_alloy>]);
rollingMachine.addShapeless(<jaopca:block_sheetmetaldarksteel>*9, [<enderio:block_alloy:6>]);
rollingMachine.addShapeless(<jaopca:block_sheetmetalsoularium>*9, [<enderio:block_alloy:7>]);
rollingMachine.addShapeless(<jaopca:block_sheetmetallumium>*9, [<thermalfoundation:storage_alloy:6>]);
rollingMachine.addShapeless(<jaopca:block_sheetmetalredstonealloy>*9, [<enderio:block_alloy:3>]);
rollingMachine.addShapeless(<jaopca:block_sheetmetalscal>*9,[<rockhounding_chemistry:alloy_blocks_tech:1>]);
rollingMachine.addShapeless(<jaopca:block_sheetmetalelectricalsteel>*9,[<enderio:block_alloy>]);
rollingMachine.addShapeless(<jaopca:block_sheetmetalvanasteel>*9,[<rockhounding_chemistry:alloy_blocks_tech:13>]);
rollingMachine.addShapeless(<jaopca:block_sheetmetaltitanium>*9,[<techreborn:storage:2>]);
rollingMachine.addShapeless(<jaopca:block_sheetmetalconductiveiron>*9,[<enderio:block_alloy:4>]);
rollingMachine.addShapeless(<jaopca:block_sheetmetalpulsatingiron>*9,[<enderio:block_alloy:5>]);
rollingMachine.addShapeless(<jaopca:block_sheetmetalstainlesssteel>*9,[<jaopca:block_blockstainlesssteel>]);
rollingMachine.addShapeless(<contenttweaker:sheetmetal_ironwood>*9,[<twilightforest:block_storage>]);
rollingMachine.addShapeless(<jaopca:block_sheetmetalenergeticalloy>*9,[<enderio:block_alloy:1>]);
rollingMachine.addShapeless(<jaopca:block_sheetmetalenergeticsilver>*9,[<enderio:block_alloy_endergy:5>]);




### Compressed Platess ###
mods.techreborn.compressor.addRecipe(<jaopca:item_platedenseadvancedalloy>, <techreborn:plates:36>*9, 600, 50);
mods.techreborn.compressor.addRecipe(<jaopca:item_platedensecarbon>, <techreborn:plates:2>*9, 600, 50);
mods.techreborn.compressor.addRecipe(<jaopca:item_platedenseenergeticalloy>, <moreplates:energetic_alloy_plate>*9, 600, 50);
mods.techreborn.compressor.addRecipe(<jaopca:item_platedenseenergeticsilver>, <moreplates:energetic_silver_plate>*9, 600, 50);
mods.techreborn.compressor.addRecipe(<jaopca:item_platedenseintermedium>, <moreplates:intermedium_plate>*9, 600, 50);



################################### LATHE ######################################

/*
mods.advancedrocketry.Lathe.clear();

val latheRods as IItemStack[IItemStack] = {
<rockhounding_chemistry:alloy_items_tech:37>:<jaopca:item_stickhydronalium>,
<thermalfoundation:material:132>:<immersiveengineering:material:3>,
<thaumcraft:ingot:2>:<jaopca:item_stickbrass>,
<contenttweaker:material_part:5>:<contenttweaker:material_part:6>,
<contenttweaker:material_part:30>:<contenttweaker:material_part:34>,
<thermalfoundation:material:160>:<immersiveengineering:material:2>,
<contenttweaker:material_part:20>:<contenttweaker:material_part:24>,
<thermalfoundation:material:128>:<libvulpes:productrod:4>,
<minecraft:gold_ingot>:<moreplates:gold_stick>,
<botania:manaresource>:<jaopca:item_stickmanasteel>,
<tconstruct:ingots:1>:<jaopca:item_stickardite>,
<nuclearcraft:alloy:1>:<jaopca:item_sticktough>,
<contenttweaker:material_part:10>:<contenttweaker:material_part:14>,
<techreborn:ingot:14>:<libvulpes:productrod:7>,
<enderio:item_alloy_ingot:8>:<jaopca:item_stickendsteel>,
<thermalfoundation:material:161>:<moreplates:electrum_stick>,
<thermalfoundation:material:130>:<moreplates:silver_stick>,
<enderio:item_alloy_ingot:6>:<jaopca:item_stickdarksteel>,
<qmd:ingot_alloy:2>:<jaopca:item_stickstainlesssteel>,
<rockhounding_chemistry:alloy_items_tech:40>:<contenttweaker:rod_vanasteel>,
<rockhounding_chemistry:alloy_items_tech:7>:<contenttweaker:rod_bam>,
<rockhounding_chemistry:alloy_items_tech:4>:<contenttweaker:rod_scal>,
<advancedrocketry:productingot>:<advancedrocketry:productrod>,
<minecraft:iron_ingot>:<immersiveengineering:material:1>,
<advancedrocketry:productingot:1>:<advancedrocketry:productrod:1>,
<rockhounding_chemistry:alloy_items_tech:16>:<contenttweaker:rod_nimonic>,
<thermalfoundation:material:162>:<moreplates:invar_stick>,
<thermalfoundation:material:135>:<libvulpes:productrod:10>,
<rockhounding_chemistry:alloy_items_tech:22>:<jaopca:item_sticknichrome>,
<thermalfoundation:material:164>:<moreplates:constantan_stick>,
<thaumcraft:ingot>:<jaopca:item_stickthaumium>,
<twilightforest:ironwood_ingot>:<contenttweaker:rod_ironwood>,
<techreborn:ingot:19>:<jaopca:item_stickrefinediron>,
} as IItemStack[IItemStack];

for material, rod in latheRods {
	Lathe.addRecipe(rod*4, 30, 5000, material);
}


val latheWires as IItemStack[IItemStack] = {
<immersiveengineering:material:3>:<immersiveengineering:material:22>,
<immersiveengineering:material:2>:<immersiveengineering:material:23>,
<moreplates:electrum_stick>:<immersiveengineering:material:21>,
<libvulpes:productrod:4>:<immersiveengineering:material:20>,
} as IItemStack[IItemStack];

for rod, wire in latheWires {
	Lathe.addRecipe(wire*4, 60, 5000, rod);
}
*/

###################################################
############     CRUSHING      ####################
###################################################


//clay dust
Crusher.removeRecipe(<minecraft:clay_ball>);
Crusher.addRecipe(<techreborn:dust:12>*4,<minecraft:clay>, 1024);
Crusher.addRecipe(<techreborn:dust:12>,<minecraft:clay_ball>, 1024);
Manufactory.removeRecipeWithInput(<minecraft:clay>);
Manufactory.addRecipe(<minecraft:clay>, <techreborn:dust:12> * 4);
Manufactory.addRecipe(<minecraft:clay_ball>, <techreborn:dust:12>);
Pulverizer.removeRecipe(<minecraft:clay>);
Pulverizer.addRecipe(<techreborn:dust:12>*4, <minecraft:clay>, 2000);
Pulverizer.addRecipe(<techreborn:dust:12>, <minecraft:clay_ball>, 1500);
mods.mekanism.crusher.addRecipe(<minecraft:clay>, <techreborn:dust:12> * 4);
mods.mekanism.crusher.addRecipe(<minecraft:clay_ball>, <techreborn:dust:12>);
//SagMill.addRecipe([<techreborn:dust:12>*4], [1] , <minecraft:clay>, "NONE");

//limestone
val limestoneforFlux = <ore:limestoneforFlux>;
limestoneforFlux.add(<quark:limestone>);
limestoneforFlux.add(<quark:limestone:1>);
limestoneforFlux.add(<chisel:limestone2:7>);
for item in limestoneforFlux.items{
Crusher.addRecipe(<contenttweaker:limestone_flux>*3, item, 1024, <contenttweaker:limestone_flux>, 0.5);
Pulverizer.addRecipe(<contenttweaker:limestone_flux>*4, item, 1500, <contenttweaker:limestone_flux>, 50);
mods.mekanism.crusher.addRecipe(item, <contenttweaker:limestone_flux> * 4);
}

Manufactory.addRecipe(<ore:limestoneforFlux>, <contenttweaker:limestone_flux>*4);
//SagMill.addRecipe([<contenttweaker:limestone_flux>*3], [1] , <ore:limestoneforFlux>, "MULTIPLY_OUTPUT");


//Radiant Dust
Crusher.addRecipe(<arcanearchives:radiant_dust>*9, <arcanearchives:storage_raw_quartz>, 1024, <arcanearchives:radiant_dust>*3, 0.5);
Manufactory.addRecipe(<arcanearchives:storage_raw_quartz>, <arcanearchives:radiant_dust>*9);
Pulverizer.addRecipe(<arcanearchives:radiant_dust>*9, <arcanearchives:storage_raw_quartz>, 1500, <arcanearchives:radiant_dust>*3, 50);
mods.mekanism.crusher.addRecipe(<arcanearchives:storage_raw_quartz>, <arcanearchives:radiant_dust>*9);
//SagMill.addRecipe([<arcanearchives:radiant_dust>*9], [1] , <arcanearchives:storage_raw_quartz>, "MULTIPLY_OUTPUT");


//Ember Grit
Crusher.addRecipe(<embers:dust_ember>, <embers:crystal_ember>, 2048, <embers:dust_ember>, 0.1);
Manufactory.addRecipe(<embers:crystal_ember>, <embers:dust_ember>);
Pulverizer.addRecipe(<embers:dust_ember>, <embers:crystal_ember>, 1500, <embers:dust_ember>, 10);
mods.mekanism.crusher.addRecipe(<embers:crystal_ember>, <embers:dust_ember>);
//SagMill.addRecipe([<embers:dust_ember>], [1] , <embers:crystal_ember>, "NONE");


//Graphite
//SagMill.addRecipe([<nuclearcraft:dust:8>], [1] , <thermalfoundation:material:768>, "NONE");
Pulverizer.addRecipe(<nuclearcraft:dust:8>, <thermalfoundation:material:768>, 1500);
mods.mekanism.crusher.addRecipe(<thermalfoundation:material:768>, <nuclearcraft:dust:8>);

//Slates
Crusher.addRecipe(<contenttweaker:slatedust>*2, <bloodmagic:slate>, 2048);
Crusher.addRecipe(<contenttweaker:slatedust>*4, <bloodmagic:slate:1>, 2048);
Crusher.addRecipe(<contenttweaker:slatedust>*8, <bloodmagic:slate:2>, 2048);
Crusher.addRecipe(<contenttweaker:slatedust>*16, <bloodmagic:slate:3>, 2048);
Crusher.addRecipe(<contenttweaker:slatedust>*32, <bloodmagic:slate:4>, 2048);
Manufactory.addRecipe(<bloodmagic:slate>, <contenttweaker:slatedust>*2);
Manufactory.addRecipe(<bloodmagic:slate:1>, <contenttweaker:slatedust>*4);
Manufactory.addRecipe(<bloodmagic:slate:2>, <contenttweaker:slatedust>*8);
Manufactory.addRecipe(<bloodmagic:slate:3>, <contenttweaker:slatedust>*16);
Manufactory.addRecipe(<bloodmagic:slate:4>, <contenttweaker:slatedust>*32);
Pulverizer.addRecipe(<contenttweaker:slatedust>*2, <bloodmagic:slate>, 10000);
Pulverizer.addRecipe(<contenttweaker:slatedust>*4, <bloodmagic:slate:1>, 10000);
Pulverizer.addRecipe(<contenttweaker:slatedust>*8, <bloodmagic:slate:2>, 10000);
Pulverizer.addRecipe(<contenttweaker:slatedust>*16, <bloodmagic:slate:3>, 10000);
Pulverizer.addRecipe(<contenttweaker:slatedust>*32, <bloodmagic:slate:4>, 10000);
mods.mekanism.crusher.addRecipe(<bloodmagic:slate>, <contenttweaker:slatedust> * 2);
mods.mekanism.crusher.addRecipe(<bloodmagic:slate:1>, <contenttweaker:slatedust> * 4);
mods.mekanism.crusher.addRecipe(<bloodmagic:slate:2>, <contenttweaker:slatedust> * 8);
mods.mekanism.crusher.addRecipe(<bloodmagic:slate:3>, <contenttweaker:slatedust> * 16);
mods.mekanism.crusher.addRecipe(<bloodmagic:slate:4>, <contenttweaker:slatedust> * 32);

Crusher.addRecipe(<nuclearcraft:dust:8>, <thermalfoundation:material:768>, 2048);
Crusher.addRecipe(<rockhounding_chemistry:chemical_dusts:24>,<techreborn:plates:2>, 2048);

//Silicon dust
Crusher.addRecipe(<rockhounding_chemistry:chemical_dusts:42>, <nuclearcraft:gem:6>, 1024);
Manufactory.addRecipe(<nuclearcraft:gem:6>, <rockhounding_chemistry:chemical_dusts:42>);
//SagMill.addRecipe([<rockhounding_chemistry:chemical_dusts:42>], [1] , <nuclearcraft:gem:6>, "NONE");

//Skystone dust
Crusher.addRecipe(<appliedenergistics2:material:45>, <appliedenergistics2:sky_stone_block>, 1024);
//SagMill.addRecipe([<appliedenergistics2:material:45>], [1] , <appliedenergistics2:sky_stone_block>, "NONE");


//Pristine dust
Crusher.addRecipe(<contenttweaker:pristine_dust>, <ore:pristineMatter>, 1024);
Manufactory.addRecipe(<ore:pristineMatter>, <contenttweaker:pristine_dust>);
mods.mekanism.crusher.addRecipe(<ore:pristineMatter>, <contenttweaker:pristine_dust>);

val pristines = <ore:pristineMatter>;

for item in pristines.items {
Pulverizer.addRecipe(<contenttweaker:pristine_dust>, item, 10000);
}

//SagMill.addRecipe([<contenttweaker:pristine_dust>], [1] , <ore:pristineMatter>, "NONE");

//Flux BLocks
Crusher.addRecipe(<fluxnetworks:fluxcore>*4, <fluxnetworks:fluxblock>, 1024, <fluxnetworks:flux>*5, 0.9);
Pulverizer.addRecipe(<fluxnetworks:fluxcore>*4, <fluxnetworks:fluxblock>, 1500, <fluxnetworks:flux>*5, 90);
//SagMill.addRecipe([<fluxnetworks:fluxcore>*4,<fluxnetworks:flux>*5], [1,0.9] , <fluxnetworks:fluxblock>, "NONE");

//Plutonium
/*
val plutoniumDust =
[
	<ore:ingotPlutonium242All>,
	<ore:ingotPlutonium241All>,
	<ore:ingotPlutonium239All>,
	<ore:ingotPlutonium238All>,
]
 as IOreDictEntry[];
for item in plutoniumDust {
Manufactory.addRecipe(item, <techreborn:dust:67>);
}
*/
val ingotPlutonium as IIngredient = (<ore:ingotPlutonium242All>|<ore:ingotPlutonium241All>|<ore:ingotPlutonium239All>|<ore:ingotPlutonium238All>) as IIngredient;
Manufactory.addRecipe(ingotPlutonium, <techreborn:dust:67>);

//Wither Ash
Crusher.addRecipe(<quark:black_ash>*3, <minecraft:skull:1>, 1024);
Manufactory.addRecipe(<minecraft:skull:1>, <quark:black_ash>*3);
Pulverizer.addRecipe(<quark:black_ash>*3, <minecraft:skull:1>, 2000);
mods.mekanism.crusher.addRecipe(<minecraft:skull:1>, <quark:black_ash>*3);
//SagMill.addRecipe([<quark:black_ash>*3], [1] , <minecraft:skull:1>, "MULTIPLY_OUTPUT");

//Thermal Ruby dust
Pulverizer.addRecipe(<techreborn:dust:43>, <techreborn:gem>, 2000);

// --==Macerator Unification==-- //

/*
mods.immersiveengineering.Crusher.addRecipe(IItemStack output, IIngredient input, int energy, @Optional IItemStack secondaryOutput, @Optional double secondaryChance);
mods.nuclearcraft.Manufactory.addRecipe(IIngredient itemInput, IIngredient itemOutput, @Optional double timeMultiplier, @Optional double powerMultiplier, @Optional double processRadiation);
mods.thermalexpansion.Pulverizer.addRecipe(IItemStack output, IItemStack input, int energy, @Optional IItemStack secondaryOutput, @Optional int secondaryChance);
mods.mekanism.crusher.addRecipe(IIngredient inputStack, IItemStack outputStack);
mods.mekanism.enrichment.addRecipe(IIngredient inputStack, IItemStack outputStack);
*/

// Dense Construction Chunk
mods.nuclearcraft.Manufactory.addRecipe(<buildinggadgets:constructionblock_dense>, <buildinggadgets:construction_chunk_dense> * 4);

// Sky Stone Dust
mods.mekanism.crusher.addRecipe(<appliedenergistics2:sky_stone_block>, <appliedenergistics2:material:45>);

// Wool to String
mods.nuclearcraft.Manufactory.addRecipe(<ore:wool>, <minecraft:string> * 4);

// Prismarine Crystals
mods.mekanism.crusher.addRecipe(<minecraft:prismarine_shard>, <minecraft:prismarine_crystals>);

// Flour
mods.immersiveengineering.Crusher.addRecipe(<nuclearcraft:flour>, <minecraft:wheat>, 1024);
mods.immersiveengineering.Crusher.addRecipe(<nuclearcraft:flour>, <natura:materials>, 1024);
mods.nuclearcraft.Manufactory.addRecipe(<natura:materials>, <nuclearcraft:flour>);
mods.thermalexpansion.Pulverizer.addRecipe(<nuclearcraft:flour>, <natura:materials>, 4000);
mods.mekanism.crusher.addRecipe(<minecraft:wheat>, <nuclearcraft:flour>);
mods.mekanism.crusher.addRecipe(<natura:materials>, <nuclearcraft:flour>);

// Slag into Sand
mods.nuclearcraft.Manufactory.addRecipe(<thermalfoundation:material:864>, <minecraft:sand>);
mods.thermalexpansion.Pulverizer.addRecipe(<minecraft:sand>, <thermalfoundation:material:864>, 4000);
mods.mekanism.crusher.addRecipe(<thermalfoundation:material:864>, <minecraft:sand>);

// Construction Paste
mods.nuclearcraft.Manufactory.addRecipe(<buildinggadgets:construction_chunk_dense>, <buildinggadgets:constructionpaste>);

// Bonemeal
mods.mekanism.crusher.addRecipe(<minecraft:bone>, <minecraft:dye:15> * 6);

// End Stone
mods.immersiveengineering.Crusher.addRecipe(<techreborn:dust:21>, <minecraft:end_stone>, 2048, <techreborn:dust:21>, 0.1);
mods.mekanism.crusher.addRecipe(<minecraft:end_stone>, <techreborn:dust:21>);

// Blaze Rods
mods.mekanism.enrichment.addRecipe(<minecraft:blaze_rod>, <minecraft:blaze_powder> * 4);

// Blizz Rods
mods.immersiveengineering.Crusher.addRecipe(<thermalfoundation:material:2049> * 4, <thermalfoundation:material:2048>, 1024, <minecraft:snowball>, 0.5);
mods.nuclearcraft.Manufactory.addRecipe(<thermalfoundation:material:2048>, <thermalfoundation:material:2049> * 4);
mods.mekanism.enrichment.addRecipe(<thermalfoundation:material:2048>, <thermalfoundation:material:2049> * 4);

// Blitz Rods
mods.immersiveengineering.Crusher.addRecipe(<thermalfoundation:material:2051> * 4, <thermalfoundation:material:2050>, 1024, <thermalfoundation:material:772>, 0.5);
mods.nuclearcraft.Manufactory.addRecipe(<thermalfoundation:material:2050>, <thermalfoundation:material:2051> * 4);
mods.mekanism.enrichment.addRecipe(<thermalfoundation:material:2050>, <thermalfoundation:material:2051> * 4);

// Basalz Rods
mods.immersiveengineering.Crusher.addRecipe(<thermalfoundation:material:2053> * 4, <thermalfoundation:material:2052>, 1024, <thermalfoundation:material:770>, 0.5);
mods.nuclearcraft.Manufactory.addRecipe(<thermalfoundation:material:2052>, <thermalfoundation:material:2053> * 4);
mods.mekanism.enrichment.addRecipe(<thermalfoundation:material:2052>, <thermalfoundation:material:2053> * 4);

// Ender Pearl Dust
mods.immersiveengineering.Crusher.addRecipe(<techreborn:dust:20>, <minecraft:ender_pearl>, 1024);
mods.nuclearcraft.Manufactory.addRecipe(<minecraft:ender_pearl>, <techreborn:dust:20>);
mods.nuclearcraft.Manufactory.addRecipe(<enderore:ore_ender>, <techreborn:dust:20> * 2);
mods.mekanism.crusher.addRecipe(<minecraft:ender_pearl>, <techreborn:dust:20>);
mods.mekanism.enrichment.addRecipe(<enderore:ore_ender>, <techreborn:dust:20> * 2);

// Ingot & Gem Pulverisation //

// Grains of Prescience
mods.immersiveengineering.Crusher.addRecipe(<enderio:item_material:34>, <enderio:item_material:19>, 1024);
mods.thermalexpansion.Pulverizer.addRecipe(<enderio:item_material:34>, <enderio:item_material:19>, 1600);
mods.mekanism.crusher.addRecipe(<enderio:item_material:19>, <enderio:item_material:34>);

// Grains of Vibrancy
mods.immersiveengineering.Crusher.addRecipe(<enderio:item_material:35>, <enderio:item_material:15>, 1024);
mods.thermalexpansion.Pulverizer.addRecipe(<enderio:item_material:35>, <enderio:item_material:15>, 1600);
mods.mekanism.crusher.addRecipe(<enderio:item_material:15>, <enderio:item_material:35>);

// Grains of Piezallity
mods.immersiveengineering.Crusher.addRecipe(<enderio:item_material:36>, <enderio:item_material:14>, 1024);
mods.thermalexpansion.Pulverizer.addRecipe(<enderio:item_material:36>, <enderio:item_material:14>, 1600);
mods.mekanism.crusher.addRecipe(<enderio:item_material:14>, <enderio:item_material:36>);

// Grains of the End
mods.immersiveengineering.Crusher.addRecipe(<enderio:item_material:37>, <enderio:item_material:16>, 1024);
mods.thermalexpansion.Pulverizer.addRecipe(<enderio:item_material:37>, <enderio:item_material:16>, 1600);
mods.mekanism.crusher.addRecipe(<enderio:item_material:16>, <enderio:item_material:37>);

// Brass Dust
mods.mekanism.crusher.addRecipe(<ore:ingotBrass>, <techreborn:dust:6>);

// Zircaloy Dust
mods.mekanism.crusher.addRecipe(<ore:ingotZircaloy>, <rockhounding_chemistry:alloy_items_tech_b:6>);

// Shibuichi Dust
mods.mekanism.crusher.addRecipe(<ore:ingotShibuichi>, <rockhounding_chemistry:alloy_items_deco:12>);

// Ytterbium YAG Dust
mods.nuclearcraft.Manufactory.addRecipe(<rockhounding_chemistry:alloy_items_gems:7>, <rockhounding_chemistry:alloy_items_gems:6>);
mods.mekanism.crusher.addRecipe(<rockhounding_chemistry:alloy_items_gems:7>, <rockhounding_chemistry:alloy_items_gems:6>);

// Erbium YAG Dust
mods.nuclearcraft.Manufactory.addRecipe(<rockhounding_chemistry:alloy_items_gems:4>, <rockhounding_chemistry:alloy_items_gems:3>);
mods.mekanism.crusher.addRecipe(<rockhounding_chemistry:alloy_items_gems:4>, <rockhounding_chemistry:alloy_items_gems:3>);

// Neodymium YAG Dust
mods.nuclearcraft.Manufactory.addRecipe(<rockhounding_chemistry:alloy_items_gems:1>, <rockhounding_chemistry:alloy_items_gems>);
mods.mekanism.crusher.addRecipe(<rockhounding_chemistry:alloy_items_gems:1>, <rockhounding_chemistry:alloy_items_gems>);

// Coal Coke Dust
mods.nuclearcraft.Manufactory.addRecipe(<ore:fuelCoke>, <immersiveengineering:material:17>);
mods.nuclearcraft.Manufactory.addRecipe(<ore:blockFuelCoke>, <immersiveengineering:material:17> * 9);
mods.thermalexpansion.Pulverizer.addRecipe(<immersiveengineering:material:17>, <immersiveengineering:material:6>, 2000);
mods.thermalexpansion.Pulverizer.addRecipe(<immersiveengineering:material:17>, <thermalfoundation:material:802>, 2000);
mods.thermalexpansion.Pulverizer.addRecipe(<immersiveengineering:material:17> * 9, <immersiveengineering:stone_decoration:3>, 2000);
mods.thermalexpansion.Pulverizer.addRecipe(<immersiveengineering:material:17> * 9, <thermalfoundation:storage_resource:1>, 2000);
mods.mekanism.crusher.addRecipe(<ore:fuelCoke>, <immersiveengineering:material:17>);
mods.mekanism.crusher.addRecipe(<ore:blockFuelCoke>, <immersiveengineering:material:17> * 9);

// Netherrack Dust
Manufactory.addRecipe(<minecraft:netherrack>, <techreborn:dust:33>);
Manufactory.addRecipe(<additionalcompression:netherrack_compressed>, <techreborn:dust:33> * 9);
Pulverizer.addRecipe(<techreborn:dust:33>, <minecraft:netherrack>, 2000);
Pulverizer.addRecipe(<techreborn:dust:33> * 9, <additionalcompression:netherrack_compressed>, 2000);
crusher.addRecipe(<minecraft:netherrack>, <techreborn:dust:33>);
crusher.addRecipe(<additionalcompression:netherrack_compressed>, <techreborn:dust:33> * 9);
Crusher.addRecipe(<techreborn:dust:33>, <minecraft:netherrack>, 1024);
Crusher.addRecipe(<techreborn:dust:33> * 9, <additionalcompression:netherrack_compressed>, 1024);

// Endstone Dust
Manufactory.addRecipe(<additionalcompression:endstone_compressed>, <techreborn:dust:21> * 9);
Pulverizer.addRecipe(<techreborn:dust:21>, <minecraft:end_stone>, 2000);
Pulverizer.addRecipe(<techreborn:dust:21> * 9, <additionalcompression:endstone_compressed>, 4000);
crusher.addRecipe(<minecraft:end_stone>, <techreborn:dust:21>);
crusher.addRecipe(<additionalcompression:endstone_compressed>, <techreborn:dust:21> * 9);
Crusher.addRecipe(<techreborn:dust:21> * 9, <additionalcompression:endstone_compressed>, 2048);




// Adding more ingot crushing recipes to the Mekanism Crusher
val ingotcrushingMap as IItemStack[IItemStack] = {
	<nuclearcraft:gem:6>: <rockhounding_chemistry:chemical_dusts:42>,
	<thermalfoundation:material:162>: <thermalfoundation:material:98>,
	<immersiveengineering:material:19>: <immersiveengineering:material:18>,
	<thermalfoundation:material:164>: <thermalfoundation:material:100>,
	<thermalfoundation:material:166>: <thermalfoundation:material:102>,
	<thermalfoundation:material:165>: <thermalfoundation:material:101>,
	<thermalfoundation:material:167>: <thermalfoundation:material:103>,
	<enderio:item_alloy_ingot:7>: <enderio:item_material:74>,
	<nuclearcraft:ingot:8>: <nuclearcraft:dust:8>,
	<nuclearcraft:ingot:10>: <nuclearcraft:dust:10>,
	<nuclearcraft:ingot:11>: <techreborn:dust:31>,
	<nuclearcraft:ingot:14>: <nuclearcraft:dust:14>,
	<nuclearcraft:ingot:15>: <nuclearcraft:dust:15>,
	<qmd:ingot:1>: <rockhounding_chemistry:chemical_dusts:37>,
	<qmd:ingot:6>: <qmd:dust:6>,
	<techreborn:ingot:18>: <techreborn:dust:59>,
	<qmd:ingot:11>: <rockhounding_chemistry:chemical_dusts:44>,
	<qmd:ingot:12>: <rockhounding_chemistry:chemical_dusts:41>,
	<qmd:ingot:13>: <rockhounding_chemistry:chemical_dusts:23>,
	<qmd:ingot:14>: <qmd:dust:14>,
	<qmd:ingot2>: <rockhounding_chemistry:chemical_dusts:15>,
	<qmd:ingot2:1>: <rockhounding_chemistry:chemical_dusts:8>,
	<rockhounding_chemistry:alloy_items_tech:22>: <rockhounding_chemistry:alloy_items_tech:21>,
	<advancedrocketry:productingot>: <advancedrocketry:productdust>,
	<advancedrocketry:productingot:1>: <advancedrocketry:productdust:1>,
	<contenttweaker:material_part:5>: <contenttweaker:material_part:7>,
	<techreborn:ingot:25>: <techreborn:dust:67>,
	<nuclearcraft:gem>: <nuclearcraft:gem_dust:1>,
	<nuclearcraft:gem:1>: <nuclearcraft:gem_dust:4>,
	<nuclearcraft:gem:2>: <nuclearcraft:gem_dust:5>,
	<nuclearcraft:gem:3>: <nuclearcraft:gem_dust:8>,
	<rockhounding_chemistry:metal_items>: <rockhounding_chemistry:chemical_dusts:52>,
	<rockhounding_chemistry:metal_items:12>: <nuclearcraft:fission_dust:6>,
	<rockhounding_chemistry:alloy_items_tech:4>: <rockhounding_chemistry:alloy_items_tech:3>,
	<rockhounding_chemistry:alloy_items_tech:7>: <rockhounding_chemistry:alloy_items_tech:6>,
	<rockhounding_chemistry:alloy_items_tech:10>: <rockhounding_chemistry:alloy_items_tech:9>,
	<rockhounding_chemistry:alloy_items_tech:16>: <rockhounding_chemistry:alloy_items_tech:15>,
	<rockhounding_chemistry:alloy_items_tech:19>: <rockhounding_chemistry:alloy_items_tech:18>,
	<rockhounding_chemistry:alloy_items_tech:28>: <rockhounding_chemistry:alloy_items_tech:27>,
	<rockhounding_chemistry:alloy_items_tech:34>: <rockhounding_chemistry:alloy_items_tech:33>,
	<rockhounding_chemistry:alloy_items_tech:37>: <rockhounding_chemistry:alloy_items_tech:36>,
	<rockhounding_chemistry:alloy_items_tech:40>: <rockhounding_chemistry:alloy_items_tech:39>,
	<rockhounding_chemistry:alloy_items_tech:43>: <rockhounding_chemistry:alloy_items_tech:42>,
	<rockhounding_chemistry:alloy_items_tech:46>: <rockhounding_chemistry:alloy_items_tech:45>,
	<rockhounding_chemistry:alloy_items_tech_b:1>: <rockhounding_chemistry:alloy_items_tech_b>,
	<rockhounding_chemistry:alloy_items_tech_b:4>: <rockhounding_chemistry:alloy_items_tech_b:3>,
	<rockhounding_chemistry:alloy_items_deco:1>: <rockhounding_chemistry:alloy_items_deco>,
	<rockhounding_chemistry:alloy_items_deco:4>: <rockhounding_chemistry:alloy_items_deco:3>,
	<rockhounding_chemistry:alloy_items_deco:7>: <rockhounding_chemistry:alloy_items_deco:6>,
	<rockhounding_chemistry:alloy_items_deco:10>: <rockhounding_chemistry:alloy_items_deco:9>,
	<rockhounding_chemistry:alloy_items_deco:16>: <rockhounding_chemistry:alloy_items_deco:15>,
	<rockhounding_chemistry:alloy_items_deco:19>: <rockhounding_chemistry:alloy_items_deco:18>,
	<rockhounding_chemistry:alloy_items_deco:25>: <rockhounding_chemistry:alloy_items_deco:24>,
	<rockhounding_chemistry:alloy_items_deco:28>: <rockhounding_chemistry:alloy_items_deco:27>,
	<rockhounding_chemistry:alloy_items_deco:31>: <rockhounding_chemistry:alloy_items_deco:30>,
	<rockhounding_chemistry:metal_items:8>: <rockhounding_chemistry:chemical_items:10>,
} as IItemStack[IItemStack];

for material, dust in ingotcrushingMap {
	mods.mekanism.crusher.addRecipe(material, dust);
}

// Adding flower dye recipes to the Mek Enrichment Chamber & TR Extractor
val flowerstoRemove =
[
<minecraft:red_flower>,
<minecraft:red_flower:1>,
<minecraft:red_flower:2>,
<minecraft:red_flower:3>,
<minecraft:red_flower:4>,
<minecraft:red_flower:5>,
<minecraft:red_flower:6>,
<minecraft:red_flower:7>,
<minecraft:red_flower:8>,
<minecraft:yellow_flower>,
<minecraft:double_plant>,
<minecraft:double_plant:1>,
<minecraft:double_plant:4>,
<minecraft:double_plant:5>,
]
 as IItemStack[];

for item in flowerstoRemove {
	mods.techreborn.extractor.removeInputRecipe(item);
}


val flowercrushingMap as IItemStack[IItemStack] = {
	<minecraft:red_flower>: <minecraft:dye:1> * 4,
	<minecraft:red_flower:4>: <minecraft:dye:1> * 4,
	<minecraft:double_plant:4>: <minecraft:dye:1> * 8,
	<natura:bluebells_flower>: <natura:materials:8> * 4,
	<minecraft:red_flower:8>: <minecraft:dye:7> * 4,
	<minecraft:red_flower:6>: <minecraft:dye:7> * 4,
	<minecraft:red_flower:3>: <minecraft:dye:7> * 4,
	<minecraft:red_flower:7>: <minecraft:dye:9> * 4,
	<minecraft:double_plant:5>: <minecraft:dye:9> * 8,
	<minecraft:yellow_flower>: <minecraft:dye:11> * 4,
	<minecraft:double_plant>: <minecraft:dye:11> * 8,
	<minecraft:red_flower:1>: <minecraft:dye:12> * 4,
	<minecraft:red_flower:2>: <minecraft:dye:13> * 4,
	<minecraft:double_plant:1>: <minecraft:dye:13> * 8,
	<minecraft:red_flower:5>: <minecraft:dye:14> * 4,
	<actuallyadditions:block_black_lotus>: <actuallyadditions:item_misc:17> * 4,
} as IItemStack[IItemStack];

for flower, dye in flowercrushingMap {
	mods.mekanism.enrichment.addRecipe(flower, dye);
	mods.techreborn.extractor.addRecipe(dye, flower, 60, 40);
}

// Black Lotus to Black Dye
mods.integrateddynamics.MechanicalSqueezer.addRecipe(<actuallyadditions:block_black_lotus>, <actuallyadditions:item_misc:17> * 4);

// Bluebells to Blue Dye
mods.integrateddynamics.MechanicalSqueezer.addRecipe(<natura:bluebells_flower>, <natura:materials:8> * 4);
mods.thermalexpansion.Pulverizer.addRecipe(<natura:materials:8> * 4, <natura:bluebells_flower>, 2000);


// Rebalancing tall flowers in the TE Pulveriser
mods.thermalexpansion.Pulverizer.removeRecipe(<minecraft:double_plant:4>);
mods.thermalexpansion.Pulverizer.removeRecipe(<minecraft:double_plant:5>);
mods.thermalexpansion.Pulverizer.removeRecipe(<minecraft:double_plant>);
mods.thermalexpansion.Pulverizer.removeRecipe(<minecraft:double_plant:1>);
mods.thermalexpansion.Pulverizer.addRecipe(<minecraft:dye:1> * 8, <minecraft:double_plant:4>, 2000);
mods.thermalexpansion.Pulverizer.addRecipe(<minecraft:dye:9> * 8, <minecraft:double_plant:5>, 2000);
mods.thermalexpansion.Pulverizer.addRecipe(<minecraft:dye:11> * 8, <minecraft:double_plant>, 2000);
mods.thermalexpansion.Pulverizer.addRecipe(<minecraft:dye:13> * 8, <minecraft:double_plant:1>, 2000);

// Gem Ore Processing Unification //

// Dilithium
mods.immersiveengineering.Crusher.addRecipe(<libvulpes:productdust> * 2, <libvulpes:ore0>, 1024);
mods.thermalexpansion.Pulverizer.addRecipe(<libvulpes:productdust> * 2, <libvulpes:ore0>, 3600);
mods.mekanism.enrichment.addRecipe(<libvulpes:ore0>, <libvulpes:productdust> * 2);

// Oil Sand/Shale
mods.thermalexpansion.Crucible.removeRecipe(<thermalfoundation:ore_fluid:1>);
mods.thermalexpansion.Crucible.removeRecipe(<thermalfoundation:ore_fluid>);
mods.thermalexpansion.Crucible.removeRecipe(<thermalfoundation:material:892>);
mods.thermalexpansion.Crucible.addRecipe(<liquid:oil> * 250, <thermalfoundation:material:892>, 2000);
mods.immersiveengineering.Crusher.addRecipe(<thermalfoundation:material:892> * 3, <ore:oreClathrateOilShale>, 2048, <minecraft:flint>, 0.5);
mods.immersiveengineering.Crusher.addRecipe(<thermalfoundation:material:892> * 3, <ore:oreClathrateOilSand>, 2048, <thermalfoundation:material:833>, 0.5);

val oilsandshale =
[
<thermalfoundation:ore_fluid:5>,
<thermalfoundation:ore_fluid:1>,
<thermalfoundation:ore_fluid>
]
 as IItemStack[];

for item in oilsandshale {
	mods.nuclearcraft.Melter.addRecipe(item, <liquid:oil> * 1000);
	mods.thermalexpansion.Crucible.addRecipe(<liquid:oil> * 1000, item, 4000);
	mods.nuclearcraft.Manufactory.addRecipe(item, <thermalfoundation:material:892> * 3);
	mods.mekanism.enrichment.addRecipe(item, <thermalfoundation:material:892> * 3);
}

// Galena
mods.nuclearcraft.Manufactory.addRecipe(<techreborn:ore>, <techreborn:dust:23> * 2);
mods.mekanism.enrichment.addRecipe(<techreborn:ore>, <techreborn:dust:23> * 2);

// Bauxite
mods.nuclearcraft.Manufactory.addRecipe(<techreborn:ore:4>, <techreborn:dust:5> * 2);
mods.mekanism.enrichment.addRecipe(<techreborn:ore:4>, <techreborn:dust:5> * 2);

// Pyrite
mods.nuclearcraft.Manufactory.addRecipe(<techreborn:ore:5>, <techreborn:dust:39> * 2);
mods.mekanism.enrichment.addRecipe(<techreborn:ore:5>, <techreborn:dust:39> * 5);

// Cinnabar
mods.mekanism.enrichment.addRecipe(<ore:oreCinnabar>, <thermalfoundation:material:866> * 3);

// Sphalerite
mods.nuclearcraft.Manufactory.addRecipe(<techreborn:ore:7>, <techreborn:dust:50> * 2);
mods.mekanism.enrichment.addRecipe(<techreborn:ore:7>, <techreborn:dust:50> * 4);

// Destabilised Redstone Ore
mods.nuclearcraft.Melter.addRecipe(<thermalfoundation:material:893>, <liquid:redstone> * 250);
mods.nuclearcraft.Melter.addRecipe(<thermalfoundation:ore_fluid:2>, <liquid:redstone> * 1000);
mods.mekanism.enrichment.addRecipe(<thermalfoundation:ore_fluid:2>, <thermalfoundation:material:893> * 3);

// Energized Netherrack
mods.nuclearcraft.Melter.addRecipe(<thermalfoundation:material:894>, <liquid:glowstone> * 250);
mods.nuclearcraft.Melter.addRecipe(<thermalfoundation:ore_fluid:3>, <liquid:glowstone> * 1000);
mods.mekanism.enrichment.addRecipe(<thermalfoundation:ore_fluid:3>, <thermalfoundation:material:894> * 3);

// Resonant End Stone
mods.nuclearcraft.Melter.addRecipe(<thermalfoundation:material:895>, <liquid:ender> * 250);
mods.nuclearcraft.Melter.addRecipe(<thermalfoundation:ore_fluid:4>, <liquid:ender> * 1000);
mods.mekanism.enrichment.addRecipe(<thermalfoundation:ore_fluid:4>, <thermalfoundation:material:895> * 3);

// Dimensional Shard Ore
mods.mekanism.enrichment.addRecipe(<ore:oreDimensionalShard>, <rftools:dimensional_shard> * 4);

// Sodalite Ore
mods.nuclearcraft.Manufactory.addRecipe(<techreborn:ore:11>, <techreborn:dust:48> * 6);
mods.mekanism.enrichment.addRecipe(<techreborn:ore:11>, <techreborn:dust:48> * 12);

// Black Quartz
mods.mekanism.enrichment.addRecipe(<actuallyadditions:block_misc:3>, <actuallyadditions:item_misc:5> * 2);

// Amethyst Ore
mods.immersiveengineering.Crusher.addRecipe(<mysticalworld:amethyst_gem> * 2, <mysticalworld:amethyst_ore>, 1024);
mods.thermalexpansion.Pulverizer.addRecipe(<mysticalworld:amethyst_gem> * 2, <mysticalworld:amethyst_ore>, 2500);
mods.mekanism.enrichment.addRecipe(<mysticalworld:amethyst_ore>, <mysticalworld:amethyst_gem> * 2);

// --==Pressuriser-Enrichment Chamber Compat==-- //
mods.mekanism.enrichment.addRecipe(<nuclearcraft:gem_dust:1>, <nuclearcraft:gem>);
mods.mekanism.enrichment.addRecipe(<nuclearcraft:gem_dust:4>, <nuclearcraft:gem:1>);
mods.mekanism.enrichment.addRecipe(<nuclearcraft:gem_dust:8>, <nuclearcraft:gem:3>);

// --==Silicon Unification==-- //

// Unifying all silicon variants
furnace.remove(<libvulpes:productingot:3>);
furnace.addRecipe(<nuclearcraft:gem:6>, <ore:dustSilicon>);

mods.nuclearcraft.Manufactory.removeRecipeWithInput(<minecraft:sand>);
mods.nuclearcraft.Manufactory.removeRecipeWithInput(<libvulpes:productingot:3>);
mods.nuclearcraft.Manufactory.addRecipe(<minecraft:sand>, <nuclearcraft:gem:6>);

mods.nuclearcraft.IngotFormer.removeRecipeWithOutput(<libvulpes:productingot:3>);
mods.nuclearcraft.IngotFormer.addRecipe(<liquid:silicon> * 144, <nuclearcraft:gem:6>);

mods.immersiveengineering.ArcFurnace.removeRecipe(<libvulpes:productingot:3>);
mods.immersiveengineering.ArcFurnace.addRecipe(<nuclearcraft:gem:6>, <ore:dustSilicon>, null, 100, 512);

mods.jei.JEI.removeAndHide(<libvulpes:productingot:3>);
mods.jei.JEI.removeAndHide(<appliedenergistics2:material:5>);
mods.jei.JEI.removeAndHide(<enderio:item_material:5>);

furnace.remove(<appliedenergistics2:material:5>);
furnace.addRecipe(<nuclearcraft:gem:6>, <nuclearcraft:gem_dust:2>);
furnace.addRecipe(<nuclearcraft:gem:6>, <appliedenergistics2:material:2>);

mods.thermalexpansion.InductionSmelter.removeRecipe(<minecraft:sand>, <techreborn:plates:11>);
mods.thermalexpansion.InductionSmelter.removeRecipe(<minecraft:sand>, <rockhounding_chemistry:chemical_dusts:42>);

mods.immersiveengineering.Crusher.removeRecipesForInput(<libvulpes:productingot:3>);
mods.thermalexpansion.Pulverizer.removeRecipe(<libvulpes:productingot:3>);
mods.thermalexpansion.Pulverizer.addRecipe(<rockhounding_chemistry:chemical_dusts:42>, <nuclearcraft:gem:6>, 2000);

/*
// Silicon Plates
mods.thermalexpansion.Compactor.removeStorageRecipe(<libvulpes:productingot:3>);
mods.thermalexpansion.Compactor.addStorageRecipe(<techreborn:plates:11>, <nuclearcraft:gem:6>, 4000);

mods.techreborn.blastFurnace.removeRecipe(<techreborn:plates:11>);

mods.nuclearcraft.Pressurizer.removeRecipeWithOutput(<techreborn:plates:11>);
mods.nuclearcraft.Pressurizer.addRecipe(<ore:itemSilicon>, <techreborn:plates:11>);

MetalPress.removeRecipe(<techreborn:plates:11>);
MetalPress.removeRecipe(<libvulpes:productplate:3>);
MetalPress.addRecipe(<techreborn:plates:11>, <nuclearcraft:gem:6>, <immersiveengineering:mold>, 2000);
*/

// New Silicon Wafer Recipes
mods.nuclearcraft.Manufactory.removeRecipeWithInput(<qmd:semiconductor:2>);
mods.nuclearcraft.Manufactory.addRecipe(<ore:bouleSilicon>, <advancedrocketry:wafer>*4);

mods.nuclearcraft.FissionIrradiator.removeRecipeWithInput(<qmd:semiconductor:3>);
mods.nuclearcraft.FissionIrradiator.addRecipe(<ore:waferSilicon>, <qmd:semiconductor:1>, 120000, 0, 0, 0);

mods.qmd.target_chamber.removeRecipeWithInput(<qmd:semiconductor:3>, ((<particle:boron_ion>*120000)^600)~2.0);
mods.qmd.target_chamber.addRecipe(<ore:waferSilicon>, ((<particle:boron_ion>*120000)^600)~2.0, <qmd:semiconductor>, 
null, null, null, 
1000, 1.0, 0, 0);

mods.jei.JEI.removeAndHide(<qmd:semiconductor:3>);

mods.nuclearcraft.Crystallizer.removeRecipeWithOutput(<qmd:semiconductor:2>);
mods.nuclearcraft.Crystallizer.addRecipe(<liquid:silicon> * 576, <qmd:semiconductor:2>);

// --=Cinnabar, Quicksilver & Mercury Unification ==-- //

// Cinnabar //

// Removing Small Cinnabar
mods.jei.JEI.removeAndHide(<techreborn:smalldust:11>);
recipes.remove(<techreborn:dust:11>);

// Adding a temporary cinnabar dust to cinnabar recipe (can be removed when cinnabar ore has been changed to drop TE cinnabar)
furnace.addRecipe(<thermalfoundation:material:866>, <techreborn:dust:11>);

mods.thermalexpansion.RedstoneFurnace.removeRecipe(<techreborn:dust:11>);
mods.thermalexpansion.RedstoneFurnace.addRecipe(<thermalfoundation:material:866>, <techreborn:dust:11>, 2000);

// Removing cinnabar electrolysis (has inconsistent mercury ratios)
mods.techreborn.industrialElectrolyzer.removeInputRecipe(<techreborn:dust:11>);

// Adding TE cinnabar to quicksilver smelting
furnace.addRecipe(<thaumcraft:quicksilver>, <thermalfoundation:material:866>);

/* Quicksilver to Cinnabar pulverisation
Crusher.addRecipe(<thermalfoundation:material:866>, <ore:quicksilver>, 2048);
Manufactory.addRecipe(<ore:quicksilver>, <thermalfoundation:material:866>);
Pulverizer.addRecipe(<thermalfoundation:material:866>, <thaumcraft:quicksilver>, 2000);
mods.mekanism.crusher.addRecipe(<ore:quicksilver>, <thermalfoundation:material:866>);
SagMill.addRecipe([<thermalfoundation:material:866>], [1] , <ore:quicksilver>, "NONE");
*/

// Quicksilver/Mercury //

// 1 Quicksilver ⇌ 144mb Mercury
mods.thermalexpansion.Crucible.addRecipe(<liquid:mercury> * 144, <thaumcraft:quicksilver>, 4000);
mods.thermalexpansion.Crucible.addRecipe(<liquid:mercury> * 144, <thermalfoundation:material:866>, 4000);

mods.nuclearcraft.Melter.removeRecipeWithInput(<qmd:ingot2:2>);

mods.nuclearcraft.Melter.addRecipe(<thaumcraft:quicksilver>, <liquid:mercury> * 144);
mods.nuclearcraft.Melter.addRecipe(<ore:dustCinnabar>, <liquid:mercury> * 144);

mods.nuclearcraft.IngotFormer.removeRecipeWithOutput(<qmd:ingot2:2>);
mods.nuclearcraft.IngotFormer.addRecipe(<liquid:mercury> * 144, <thaumcraft:quicksilver>);

// Replacing Mercury with Quicksilver //

// New Ore Leacher Recipes
mods.qmd.ore_leacher.removeRecipeWithOutput(<minecraft:redstone> * 12, <qmd:ingot2:2> * 3, null);
mods.qmd.ore_leacher.removeRecipeWithOutput(<qmd:ingot2:2>, <thermalfoundation:material:771>, null);

mods.qmd.ore_leacher.addRecipe(<ore:oreRedstone>, <liquid:nitric_acid>*16, <liquid:hydrochloric_acid>*16, <liquid:sulfuric_acid>*16, <minecraft:redstone>*12, <thaumcraft:quicksilver>*3, null, 1.0, 1.0, 0);
mods.qmd.ore_leacher.addRecipe(<ore:dustRedstone>, <liquid:nitric_acid>*16, <liquid:hydrochloric_acid>*16, <liquid:sulfuric_acid>*16, 
mods.nuclearcraft.ChanceItemIngredient.create(<thaumcraft:quicksilver>, 50, 0), 
mods.nuclearcraft.ChanceItemIngredient.create(<thermalfoundation:material:771>, 50, 0), 
null, 1.0, 1.0, 0.001);

// New Fuel Reprocessor Recipes
val fuelstorewrite =
[
<qmd:waste_spallation:1>,
<qmd:waste_spallation:2>,
<qmd:waste_spallation:3>,
<qmd:waste_spallation:4>,
<qmd:waste_spallation:5>,
<qmd:waste_spallation:6>,
<qmd:waste_spallation:8>,
<qmd:waste_spallation:7>,
<qmd:waste_spallation:9>
]
 as IItemStack[];

for item in fuelstorewrite {
	mods.nuclearcraft.FuelReprocessor.removeRecipeWithInput(item);
}

mods.nuclearcraft.FuelReprocessor.addRecipe(<qmd:waste_spallation:1>, 
mods.nuclearcraft.ChanceItemIngredient.create(<nuclearcraft:fission_dust:1>, 9, 0), 
mods.nuclearcraft.ChanceItemIngredient.create(<nuclearcraft:fission_dust:2>, 15, 0), 
mods.nuclearcraft.ChanceItemIngredient.create(<rockhounding_chemistry:chemical_dusts:20>, 40, 0), 
mods.nuclearcraft.ChanceItemIngredient.create(<thermalfoundation:material:67>, 35, 0), 
mods.nuclearcraft.ChanceItemIngredient.create(<thaumcraft:quicksilver>, 1, 0), 
null, 
null, 
null);

mods.nuclearcraft.FuelReprocessor.addRecipe(<qmd:waste_spallation:2>, 
mods.nuclearcraft.ChanceItemIngredient.create(<nuclearcraft:fission_dust:1>, 13, 0), 
mods.nuclearcraft.ChanceItemIngredient.create(<nuclearcraft:fission_dust:2>, 17, 0), 
mods.nuclearcraft.ChanceItemIngredient.create(<rockhounding_chemistry:chemical_dusts:20>, 16, 0), 
mods.nuclearcraft.ChanceItemIngredient.create(<thermalfoundation:material:67>, 50, 0), 
mods.nuclearcraft.ChanceItemIngredient.create(<thaumcraft:quicksilver>, 4, 0), 
null, 
null, 
null);

mods.nuclearcraft.FuelReprocessor.addRecipe(<qmd:waste_spallation:3>, 
mods.nuclearcraft.ChanceItemIngredient.create(<nuclearcraft:fission_dust:2>, 22, 0), 
mods.nuclearcraft.ChanceItemIngredient.create(<rockhounding_chemistry:chemical_dusts:20>, 15, 0), 
mods.nuclearcraft.ChanceItemIngredient.create(<thermalfoundation:material:67>, 55, 0), 
mods.nuclearcraft.ChanceItemIngredient.create(<thaumcraft:quicksilver>, 5, 0), 
mods.nuclearcraft.ChanceItemIngredient.create(<thermalfoundation:material:1>, 1, 0), 
mods.nuclearcraft.ChanceItemIngredient.create(<thermalfoundation:material:70>, 2, 0), 
null, 
null);

mods.nuclearcraft.FuelReprocessor.addRecipe(<qmd:waste_spallation:4>, 
mods.nuclearcraft.ChanceItemIngredient.create(<nuclearcraft:fission_dust:2>, 22, 0), 
mods.nuclearcraft.ChanceItemIngredient.create(<rockhounding_chemistry:chemical_dusts:20>, 14, 0), 
mods.nuclearcraft.ChanceItemIngredient.create(<thermalfoundation:material:67>, 55, 0), 
mods.nuclearcraft.ChanceItemIngredient.create(<thaumcraft:quicksilver>, 5, 0), 
mods.nuclearcraft.ChanceItemIngredient.create(<thermalfoundation:material:1>, 1, 0), 
mods.nuclearcraft.ChanceItemIngredient.create(<thermalfoundation:material:70>, 3, 0), 
null, 
null);

mods.nuclearcraft.FuelReprocessor.addRecipe(<qmd:waste_spallation:5>, 
mods.nuclearcraft.ChanceItemIngredient.create(<nuclearcraft:fission_dust:2>, 36, 0), 
mods.nuclearcraft.ChanceItemIngredient.create(<rockhounding_chemistry:chemical_dusts:20>, 17, 0), 
mods.nuclearcraft.ChanceItemIngredient.create(<thermalfoundation:material:67>, 34, 0), 
mods.nuclearcraft.ChanceItemIngredient.create(<thaumcraft:quicksilver>, 7, 0),
mods.nuclearcraft.ChanceItemIngredient.create(<thermalfoundation:material:1>, 2, 0), 
mods.nuclearcraft.ChanceItemIngredient.create(<thermalfoundation:material:70>, 4, 0), 
null, 
null);

mods.nuclearcraft.FuelReprocessor.addRecipe(<qmd:waste_spallation:6>, 
mods.nuclearcraft.ChanceItemIngredient.create(<nuclearcraft:fission_dust:2>, 21, 0), 
mods.nuclearcraft.ChanceItemIngredient.create(<rockhounding_chemistry:chemical_dusts:20>, 12, 0), 
mods.nuclearcraft.ChanceItemIngredient.create(<thermalfoundation:material:67>, 55, 0), 
mods.nuclearcraft.ChanceItemIngredient.create(<thaumcraft:quicksilver>, 7, 0),
mods.nuclearcraft.ChanceItemIngredient.create(<thermalfoundation:material:1>, 1, 0), 
mods.nuclearcraft.ChanceItemIngredient.create(<thermalfoundation:material:70>, 4, 0), 
null, 
null);

mods.nuclearcraft.FuelReprocessor.addRecipe(<qmd:waste_spallation:8>, 
mods.nuclearcraft.ChanceItemIngredient.create(<nuclearcraft:fission_dust:2>, 10, 0), 
mods.nuclearcraft.ChanceItemIngredient.create(<rockhounding_chemistry:chemical_dusts:20>, 7, 0), 
mods.nuclearcraft.ChanceItemIngredient.create(<thermalfoundation:material:67>, 62, 0), 
mods.nuclearcraft.ChanceItemIngredient.create(<thaumcraft:quicksilver>, 11, 0),
mods.nuclearcraft.ChanceItemIngredient.create(<thermalfoundation:material:1>, 2, 0), 
mods.nuclearcraft.ChanceItemIngredient.create(<thermalfoundation:material:70>, 8, 0), 
null, 
null);

mods.nuclearcraft.FuelReprocessor.addRecipe(<qmd:waste_spallation:7>, 
mods.nuclearcraft.ChanceItemIngredient.create(<nuclearcraft:fission_dust:2>, 36, 0), 
mods.nuclearcraft.ChanceItemIngredient.create(<rockhounding_chemistry:chemical_dusts:20>, 6, 0), 
mods.nuclearcraft.ChanceItemIngredient.create(<thermalfoundation:material:67>, 39, 0), 
mods.nuclearcraft.ChanceItemIngredient.create(<thaumcraft:quicksilver>, 10, 0),
mods.nuclearcraft.ChanceItemIngredient.create(<thermalfoundation:material:1>, 2, 0), 
mods.nuclearcraft.ChanceItemIngredient.create(<thermalfoundation:material:70>, 7, 0), 
null, 
null);

mods.nuclearcraft.FuelReprocessor.addRecipe(<qmd:waste_spallation:9>, 
mods.nuclearcraft.ChanceItemIngredient.create(<thermalfoundation:material:67>, 58, 0), 
mods.nuclearcraft.ChanceItemIngredient.create(<thaumcraft:quicksilver>, 18, 0), 
mods.nuclearcraft.ChanceItemIngredient.create(<thermalfoundation:material:1>, 3, 0), 
mods.nuclearcraft.ChanceItemIngredient.create(<thermalfoundation:material:70>, 10, 0),
mods.nuclearcraft.ChanceItemIngredient.create(<thermalfoundation:material:71>, 6, 0), 
mods.nuclearcraft.ChanceItemIngredient.create(<mekanism:dust:2>, 5, 0), 
null, 
null);

// New Target Chamber Recipes
mods.qmd.target_chamber.removeRecipeWithInput(<qmd:ingot2:2>, (<particle:proton>*487000)^200000);
mods.qmd.target_chamber.removeRecipeWithInput(<qmd:ingot2:2>, (<particle:proton>*480000)^6580000);
mods.qmd.target_chamber.removeRecipeWithInput(<qmd:ingot2:2>, (<particle:proton>*480000)^1540000);
mods.qmd.target_chamber.removeRecipeWithInput(<qmd:ingot2:2>, <particle:antiproton>*240000);
mods.qmd.target_chamber.removeRecipeWithInput(<qmd:ingot2:2>, (<particle:deuteron>*960000)^13100000);
mods.qmd.target_chamber.removeRecipeWithInput(<qmd:ingot2:2>, <particle:antideuteron>*240000);

mods.qmd.target_chamber.addRecipe(<thaumcraft:quicksilver>, (<particle:proton>*487000)^200000, <qmd:waste_fission>, 
null, <particle:neutron>, null, 
1000000, 0.01, 0, 0);

mods.qmd.target_chamber.addRecipe(<thaumcraft:quicksilver>, (<particle:proton>*480000)^6580000, <qmd:waste_spallation2:3>, 
<particle:proton>, null, <particle:antiproton>, 
20000000, 0.1, -6580000, 0);

mods.qmd.target_chamber.addRecipe(<thaumcraft:quicksilver>, (<particle:proton>*480000)^1540000, <qmd:waste_spallation2:3>, 
<particle:pion_plus>, null, <particle:pion_minus>, 
5000000, 0.2, -1540000, 0);

mods.qmd.target_chamber.addRecipe(<thaumcraft:quicksilver>, <particle:antiproton>*240000, <qmd:waste_spallation2:3>, 
<particle:pion_plus>, <particle:pion_naught>, <particle:pion_minus>, 
10000000, 1.0, 1460000, 0);

mods.qmd.target_chamber.addRecipe(<thaumcraft:quicksilver>, (<particle:deuteron>*960000)^13100000, <qmd:waste_spallation2:3>, 
<particle:deuteron>, null, <particle:antideuteron>, 
20000000, 0.05, -13100000, 0);

mods.qmd.target_chamber.addRecipe(<thaumcraft:quicksilver>, <particle:antideuteron>*240000, <qmd:waste_spallation2:3>, 
<particle:pion_plus>*4, <particle:pion_naught>*4, <particle:pion_minus>*4, 
10000000, 1.0, 2090000, 0);

// New Industrial Grinder Mercury Recipes
mods.techreborn.industrialGrinder.addRecipe(<thermalfoundation:material:1>*3, <techreborn:smalldust:14>, <techreborn:smalldust:34>, null, <ore:oreGold>, null, <liquid:mercury>*288, 100, 128);
mods.techreborn.industrialGrinder.addRecipe(<minecraft:diamond>*2, <techreborn:smalldust:16>*3, null, null, <ore:oreDiamond>, null, <liquid:mercury>*288, 100, 64);
mods.techreborn.industrialGrinder.addRecipe(<minecraft:emerald>*2, <techreborn:smalldust:18>*3, null, null, <ore:oreEmerald>, null, <liquid:mercury>*288, 100, 64);
mods.techreborn.industrialGrinder.addRecipe(<thermalfoundation:material:64>*3, <thermalfoundation:material:1>, null, null, <ore:oreCopper>, null, <liquid:mercury>*288, 100, 64);
mods.techreborn.industrialGrinder.addRecipe(<techreborn:dust:23>*2, <thermalfoundation:material:771>, <thermalfoundation:material:66>, null, <ore:oreGalena>, null, <liquid:mercury>*288, 100, 64);
mods.techreborn.industrialGrinder.addRecipe(<thermalfoundation:material:70>*3, <thermalfoundation:material:69>, <techreborn:smalldust:66>, null, <ore:oreSheldonite>, null, <liquid:mercury>*288, 100, 64);
mods.techreborn.industrialGrinder.addRecipe(<thermalfoundation:material:69>*3, <techreborn:smalldust:27>, <thermalfoundation:material:70>, null, <ore:oreNickel>, null, <liquid:mercury>*288, 100, 64);
mods.techreborn.industrialGrinder.addRecipe(<techreborn:dust:33>*8, <minecraft:gold_nugget>, null, null, <minecraft:netherrack>*8, null, <liquid:mercury>*288, 800, 64);
mods.techreborn.industrialGrinder.addRecipe(<contenttweaker:material_part:15>*3, null, null, null, <ore:oreAdamantine>, null, <liquid:mercury>*288, 100, 128);
mods.techreborn.industrialGrinder.addRecipe(<astralsorcery:itemcraftingcomponent:2>*3, null, null, null, <ore:oreAstralStarmetal>, null, <liquid:mercury>*288, 100, 128);
mods.techreborn.industrialGrinder.addRecipe(<rockhounding_chemistry:chemical_dusts:21>*3, null, null, null, <ore:oreBoron>, null, <liquid:mercury>*288, 100, 128);
mods.techreborn.industrialGrinder.addRecipe(<mekanism:otherdust:4>*3, null, null, null, <ore:oreLithium>, null, <liquid:mercury>*288, 100, 128);
mods.techreborn.industrialGrinder.addRecipe(<techreborn:dust:30>*3, null, null, null, <ore:oreMagnesium>, null, <liquid:mercury>*288, 100, 128);
mods.techreborn.industrialGrinder.addRecipe(<contenttweaker:material_part:25>*3, null, null, null, <ore:oreOrichalcum>, null, <liquid:mercury>*288, 100, 128);
mods.techreborn.industrialGrinder.addRecipe(<contenttweaker:material_part:35>*3, null, null, null, <ore:orePalladium>, null, <liquid:mercury>*288, 100, 128);
mods.techreborn.industrialGrinder.addRecipe(<thermalfoundation:material:70>*3, <thermalfoundation:material:71>, null, null, <ore:orePlatinum>, null, <liquid:mercury>*288, 100, 128);

mods.jei.JEI.removeAndHide(<qmd:ingot2:2>);

// Removing RH:C Graphite Compound
mods.jei.JEI.removeAndHide(<rockhounding_chemistry:chemical_items:8>);
furnace.remove(<rockhounding_chemistry:metal_items:7>, <rockhounding_chemistry:chemical_items:8>);


// Carbon Bricks
MetalPress.addRecipe(<advancedrocketry:misc:1>, <minecraft:coal_block>, <immersiveengineering:mold>, 2000);
MetalPress.addRecipe(<advancedrocketry:misc:1>, <thermalfoundation:storage_resource>, <immersiveengineering:mold>, 2000);
MetalPress.addRecipe(<advancedrocketry:misc:1>*3, <ore:blockFuelCoke>, <immersiveengineering:mold>, 2000);

Compactor.addStorageRecipe(<advancedrocketry:misc:1>, <minecraft:coal_block>, 4000);
Compactor.addStorageRecipe(<advancedrocketry:misc:1>, <thermalfoundation:storage_resource>, 4000);
Compactor.addStorageRecipe(<advancedrocketry:misc:1>*3, <thermalfoundation:storage_resource:1>, 4000);
Compactor.addStorageRecipe(<advancedrocketry:misc:1>*3, <immersiveengineering:stone_decoration:3>, 4000);

Pressurizer.addRecipe(<minecraft:coal_block>, <advancedrocketry:misc:1>);
Pressurizer.addRecipe(<thermalfoundation:storage_resource>, <advancedrocketry:misc:1>);
Pressurizer.addRecipe(<ore:blockFuelCoke>, <advancedrocketry:misc:1>*3);

mods.nuclearcraft.Pressurizer.removeRecipeWithInput(<techreborn:part:34>);

// Smelting recipe for Carbon Bricks
furnace.addRecipe(<advancedrocketry:misc:1>, <ore:dustCarbon>);

// Removing useless small dusts
val duststoRemove =
[
<techreborn:smalldust:56>,
<techreborn:smalldust:63>,
<techreborn:smalldust:64>,
<techreborn:smalldust:65>,
<techreborn:smalldust:69>,
<techreborn:smalldust>,
<techreborn:smalldust:2>,
<techreborn:smalldust:3>,
<techreborn:smalldust:4>,
<techreborn:smalldust:6>,
<techreborn:smalldust:7>,
<techreborn:smalldust:9>,
<techreborn:smalldust:10>,
<techreborn:smalldust:12>,
<techreborn:smalldust:13>,
<techreborn:smalldust:15>,
<techreborn:smalldust:17>,
<techreborn:smalldust:19>,
<techreborn:smalldust:20>,
<techreborn:smalldust:21>,
<techreborn:smalldust:25>,
<techreborn:smalldust:26>,
<techreborn:smalldust:28>,
<techreborn:smalldust:32>,
<techreborn:smalldust:33>,
<techreborn:smalldust:35>,
<techreborn:smalldust:37>,
<techreborn:smalldust:40>,
<techreborn:smalldust:44>,
<techreborn:smalldust:49>,
<techreborn:smalldust:50>,
<techreborn:smalldust:51>
]
 as IItemStack[];

for item in duststoRemove {
	mods.jei.JEI.removeAndHide(item);
}

// Ender Pearl Dust Compat
mods.nuclearcraft.AlloyFurnace.addRecipe(<enderio:item_alloy_ingot:1>, <techreborn:dust:20>, <enderio:item_alloy_ingot:2>, 1, 2);
mods.nuclearcraft.AlloyFurnace.addRecipe(<minecraft:iron_ingot>, <techreborn:dust:20>, <enderio:item_alloy_ingot:5>, 1, 2);
mods.nuclearcraft.AlloyFurnace.addRecipe(<enderio:item_alloy_endergy_ingot:5>, <techreborn:dust:20>, <enderio:item_alloy_endergy_ingot:6>, 1, 2);
mods.nuclearcraft.Melter.addRecipe(<techreborn:dust:20>, <liquid:ender> * 250, 0.5, 1.5);
mods.nuclearcraft.Pressurizer.addRecipe(<techreborn:dust:20>, <minecraft:ender_pearl>);

##########################################################################################
print("==================== end of parts.zs ====================");
