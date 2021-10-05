#priority 98

import crafttweaker.item.IItemStack;
import crafttweaker.oredict.IOreDict;
import crafttweaker.oredict.IOreDictEntry;
import crafttweaker.item.IIngredient;
import mods.immersiveengineering.Crusher;
import mods.nuclearcraft.Manufactory;
import mods.enderio.SagMill;
import mods.thermalexpansion.Pulverizer;
import mods.techreborn.rollingMachine;
import mods.thermalexpansion.Compactor;
import mods.advancedrocketry.PlatePresser;
import mods.techreborn.implosionCompressor;
import mods.nuclearcraft.Pressurizer;
import mods.techreborn.plateBendingMachine;
import mods.techreborn.assemblingMachine;
import mods.advancedrocketry.Lathe;
import mods.immersiveengineering.MetalPress;

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

//Carbon Plate
MetalPress.addRecipe(<techreborn:plates:2>, <thermalfoundation:storage_resource>, <immersiveengineering:mold>, 2000);

//Iriduim Alloy Plate
Compactor.removeStorageRecipe(<techreborn:ingot:22>);
MetalPress.removeRecipe(<techreborn:plates:38>);
Pressurizer.removeRecipeWithOutput(<techreborn:plates:38>);
PlatePresser.removeRecipe(<techreborn:plates:38>); 
mods.advancedrocketry.RollingMachine.removeRecipe(<techreborn:plates:38>); 

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

################################### ROLLING MACHINE ######################################

// Removing Rolling Machine recipes
val rollingMachineone =
[
<moreplates:knightslime_plate>,
<moreplates:osmiridium_plate>,
<moreplates:osgloglas_plate>,
<moreplates:redstone_alloy_plate>,
<thaumadditions:mithrillium_plate>,
<moreplates:stellar_alloy_plate>,
<moreplates:conductive_iron_plate>,
<moreplates:vibrant_alloy_plate>,
<jaopca:item_platesuperalloy>,
<moreplates:vivid_alloy_plate>,
<moreplates:crude_steel_plate>,
<moreplates:end_steel_plate>,
<techreborn:plates:20>,
<moreplates:melodic_alloy_plate>,
<techreborn:plates:33>,
<moreplates:dark_steel_plate>,
<contenttweaker:material_part:32>,
<jaopca:item_platehslasteel>,
<moreplates:manyullyn_plate>,
<moreplates:crystal_matrix_plate>,
<jaopca:item_plateferroboron>,
<techreborn:plates:36>,
<contenttweaker:material_part:12>,
<jaopca:item_platetungstencarbide>,
<moreplates:neutronium_plate>,
<moreplates:electrical_steel_plate>,
<moreplates:soularium_plate>,
<techreborn:plates:32>,
<moreplates:refined_obsidian_plate>,
<moreplates:energetic_alloy_plate>,
<jaopca:item_platetough>,
<jaopca:item_platelithium6deuteride>,
<jaopca:item_platestainlesssteel>,
<moreplates:terrasteel_plate>,
<techreborn:plates:35>,
<moreplates:energetic_silver_plate>,
<contenttweaker:material_part:22>
]
 as IItemStack[];

for item in rollingMachineone {
	mods.advancedrocketry.RollingMachine.removeRecipe(item);
}

val rollingMachinear =
[
<advancedrocketry:pressuretank:1>,
<advancedrocketry:pressuretank:2>,
<advancedrocketry:pressuretank:3>,
<advancedrocketry:pressuretank>,
<libvulpes:productsheet:1>,
<libvulpes:productsheet:4>,
<libvulpes:productsheet:6>,
<libvulpes:productsheet:7>,
<libvulpes:productsheet:9>,
<advancedrocketry:productsheet>,
<advancedrocketry:productsheet:1>
]
 as IItemStack[];

for item in rollingMachinear {
	mods.advancedrocketry.RollingMachine.removeRecipe(item);
}

val rollingMachinetwo =
[
<thermalfoundation:material:324>,
<thermalfoundation:material:358>,
<thermalfoundation:material:357>,
<thermalfoundation:material:359>,
<rockhounding_chemistry:alloy_parts:58>,
<thermalfoundation:material:327>,
<rockhounding_chemistry:alloy_parts:64>,
<rockhounding_chemistry:alloy_parts:16>,
<rockhounding_chemistry:alloy_parts:70>,
<rockhounding_chemistry:alloy_parts:40>,
<rockhounding_chemistry:alloy_parts:4>,
<rockhounding_chemistry:alloy_parts:88>,
<thaumadditions:adaminite_plate>,
<thaumadditions:mithminite_plate>,
<rockhounding_chemistry:alloy_parts:46>,
<rockhounding_chemistry:alloy_parts:67>,
<techreborn:plates:31>,
<thermalfoundation:material:320>,
<moreplates:osmium_plate>,
<techreborn:plates:34>,
<embers:plate_dawnstone>,
<rockhounding_chemistry:alloy_parts:7>,
<thermalfoundation:material:321>,
<rockhounding_chemistry:alloy_parts:76>,
<thermalfoundation:material:325>,
<thermalfoundation:material:356>,
<advancedrocketry:productplate:1>,
<immersiveengineering:metal:35>,
<thermalfoundation:material:323>,
<rockhounding_chemistry:alloy_parts:79>,
<thaumcraft:plate:2>,
<contenttweaker:material_part:3>,
<thermalfoundation:material:352>,
<rockhounding_chemistry:alloy_parts:55>,
<techreborn:plates:2>,
<thermalfoundation:material:353>,
<thaumcraft:plate:3>,
<thermalfoundation:material:355>,
<thermalfoundation:material:33>,
<rockhounding_chemistry:alloy_parts:73>,
<rockhounding_chemistry:alloy_parts:49>,
<rockhounding_chemistry:alloy_parts:22>,
<thermalfoundation:material:322>,
<rockhounding_chemistry:alloy_parts:43>,
<rockhounding_chemistry:alloy_parts:31>,
<rockhounding_chemistry:alloy_parts:61>,
<techreborn:plates:20>,
<thermalfoundation:material:354>,
<rockhounding_chemistry:alloy_parts:28>,
<rockhounding_chemistry:alloy_parts:34>,
<rockhounding_chemistry:alloy_parts:91>,
<thermalfoundation:material:326>,
<libvulpes:productplate:3>,
<advancedrocketry:productplate>,
<thermalfoundation:material:328>,
<rockhounding_chemistry:alloy_parts:82>,
<rockhounding_chemistry:alloy_parts:25>,
<rockhounding_chemistry:alloy_parts:13>,
<rockhounding_chemistry:alloy_parts:10>,
<rockhounding_chemistry:alloy_parts:52>,
<rockhounding_chemistry:alloy_parts:19>,
<rockhounding_chemistry:alloy_parts:37>,
<thaumcraft:plate>,
<rockhounding_chemistry:alloy_parts:85>,
<moreplates:pulsating_iron_plate>,
<thermalfoundation:material:32>,
<moreplates:intermedium_plate>,
<techreborn:plates:31>,
<thermalfoundation:material:324>,
<moreplates:ironwood_plate>
]
 as IItemStack[];

for item in rollingMachinetwo {
	mods.advancedrocketry.RollingMachine.removeRecipe(item);
}

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
SagMill.addRecipe([<techreborn:dust:12>*4], [1] , <minecraft:clay>, "NONE");

//limestone
val limestoneforFlux = <ore:limestoneforFlux>;
limestoneforFlux.add(<quark:limestone>);
limestoneforFlux.add(<quark:limestone:1>);
limestoneforFlux.add(<chisel:limestone2:7>);
for item in limestoneforFlux.items{
Crusher.addRecipe(<contenttweaker:limestone_flux>*3, item, 1024, <contenttweaker:limestone_flux>, 0.5);
Pulverizer.addRecipe(<contenttweaker:limestone_flux>*4, item, 1500, <contenttweaker:limestone_flux>, 50);
}

Manufactory.addRecipe(<ore:limestoneforFlux>, <contenttweaker:limestone_flux>*4);
SagMill.addRecipe([<contenttweaker:limestone_flux>*3], [1] , <ore:limestoneforFlux>, "MULTIPLY_OUTPUT");


//Radiant Dust
Crusher.addRecipe(<arcanearchives:radiant_dust>*9, <arcanearchives:storage_raw_quartz>, 1024, <arcanearchives:radiant_dust>*3, 0.5);
Manufactory.addRecipe(<arcanearchives:storage_raw_quartz>, <arcanearchives:radiant_dust>*9);
Pulverizer.addRecipe(<arcanearchives:radiant_dust>*9, <arcanearchives:storage_raw_quartz>, 1500, <arcanearchives:radiant_dust>*3, 50);
SagMill.addRecipe([<arcanearchives:radiant_dust>*9], [1] , <arcanearchives:storage_raw_quartz>, "MULTIPLY_OUTPUT");


//Ember Grit
Crusher.addRecipe(<embers:dust_ember>, <embers:crystal_ember>, 2048, <embers:dust_ember>, 0.1);
Manufactory.addRecipe(<embers:crystal_ember>, <embers:dust_ember>);
Pulverizer.addRecipe(<embers:dust_ember>, <embers:crystal_ember>, 1500, <embers:dust_ember>, 10);
SagMill.addRecipe([<embers:dust_ember>], [1] , <embers:crystal_ember>, "NONE");


//Graphite
SagMill.addRecipe([<nuclearcraft:dust:8>], [1] , <thermalfoundation:material:768>, "NONE");
Pulverizer.addRecipe(<nuclearcraft:dust:8>, <thermalfoundation:material:768>, 1500);

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

Crusher.addRecipe(<nuclearcraft:dust:8>, <thermalfoundation:material:768>, 2048);
Crusher.addRecipe(<rockhounding_chemistry:chemical_dusts:24>,<techreborn:plates:2>, 2048);

//Silicon dust
Crusher.addRecipe(<libvulpes:productdust:3>, <nuclearcraft:gem:6>, 1024);
Manufactory.addRecipe(<nuclearcraft:gem:6>, <libvulpes:productdust:3>);
SagMill.addRecipe([<libvulpes:productdust:3>], [1] , <nuclearcraft:gem:6>, "NONE");

//Skystone dust
Crusher.addRecipe(<appliedenergistics2:material:45>, <appliedenergistics2:sky_stone_block>, 1024);
SagMill.addRecipe([<appliedenergistics2:material:45>], [1] , <appliedenergistics2:sky_stone_block>, "NONE");


//Pristine dust
Crusher.addRecipe(<contenttweaker:pristine_dust>, <ore:pristineMatter>, 1024);
Manufactory.addRecipe(<ore:pristineMatter>, <contenttweaker:pristine_dust>);
SagMill.addRecipe([<contenttweaker:pristine_dust>], [1] , <ore:pristineMatter>, "NONE");

//Flux BLocks
Crusher.addRecipe(<fluxnetworks:fluxcore>*4, <fluxnetworks:fluxblock>, 1024, <fluxnetworks:flux>*5, 0.9);
Pulverizer.addRecipe(<fluxnetworks:fluxcore>*4, <fluxnetworks:fluxblock>, 1500, <fluxnetworks:flux>*5, 90);
SagMill.addRecipe([<fluxnetworks:fluxcore>*4,<fluxnetworks:flux>*5], [1,0.9] , <fluxnetworks:fluxblock>, "NONE");

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
SagMill.addRecipe([<quark:black_ash>*3], [1] , <minecraft:skull:1>, "MULTIPLY_OUTPUT");

//Thermal Ruby dust
Pulverizer.addRecipe(<techreborn:dust:43>, <techreborn:gem>, 2000);

// Removing old silicon wafer recipe
mods.advancedrocketry.CuttingMachine.removeRecipe(<advancedrocketry:wafer>);

##########################################################################################
print("==================== end of parts.zs ====================");
