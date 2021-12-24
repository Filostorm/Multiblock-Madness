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
import mods.immersiveengineering.MetalPress;
import mods.mekanism.enrichment;
import mods.mekanism.crusher;
import mods.tconstruct.Casting;
import mods.actuallyadditions.AtomicReconstructor;
import crafttweaker.liquid.ILiquidStack;

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
	<moreplates:electrum_stick>,
	<libvulpes:productrod:4>,
]
 as IItemStack[];

for item in itemstoRemove {
	recipes.remove(item);
}

################# BLOCKS #######################

val mapNewBlocks as IItemStack[IItemStack] = {
	<contenttweaker:ingot_thermal_alloy>:<contenttweaker:block_thermal_alloy>,
	<contenttweaker:ingot_mek_alloy>:<contenttweaker:block_mek_alloy>,
} as IItemStack[IItemStack];

for ingot, block in mapNewBlocks {
recipes.addShaped(block, [
	[ingot, ingot, ingot],
	[ingot, ingot, ingot], 
	[ingot, ingot, ingot]
]);
recipes.addShapeless(ingot * 9, [block]);
}


################# RODS #######################

val metalPressRods as IItemStack[IItemStack] = {
	<contenttweaker:rod_nimonic>:<rockhounding_chemistry:alloy_items_tech:16>,
	<contenttweaker:rod_scal>:<rockhounding_chemistry:alloy_items_tech:4>,
	<contenttweaker:rod_vanasteel>:<rockhounding_chemistry:alloy_items_tech:40>,
	<contenttweaker:rod_bam>:<rockhounding_chemistry:alloy_items_tech:7>,
	<contenttweaker:rod_ironwood>:<twilightforest:ironwood_ingot>,
	<contenttweaker:rod_thermal_alloy>:<contenttweaker:ingot_thermal_alloy>,
	<contenttweaker:rod_mek_alloy>:<contenttweaker:ingot_mek_alloy>,
} as IItemStack[IItemStack];

for rod, material in metalPressRods {
	MetalPress.addRecipe(rod*2, material, <immersiveengineering:mold:2>, 2000);
}


################# GEARS #######################

AtomicReconstructor.removeRecipe(<moreplates:restonia_gear>);
MetalPress.addRecipe(<thaumicperiphery:gear_brass>, <ore:ingotBrass>, <immersiveengineering:mold:1>, 2000, 4);

val mapNewGears as IItemStack[IItemStack] = {
	<modularmachinery:itemmodularium>:<contenttweaker:gear_modularium>,
	<contenttweaker:ingot_thermal_alloy>:<contenttweaker:gear_thermal_alloy>,
	<contenttweaker:ingot_mek_alloy>:<contenttweaker:gear_mek_alloy>,
	<actuallyadditions:item_crystal>:<moreplates:restonia_gear>,
	<actuallyadditions:item_crystal_empowered:4>:<moreplates:empowered_emeradic_gear>,
	<actuallyadditions:item_crystal_empowered:2>:<moreplates:empowered_diamatine_gear>,
	<actuallyadditions:item_crystal_empowered:5>:<moreplates:empowered_enori_gear>,
	<actuallyadditions:item_crystal_empowered:1>:<moreplates:empowered_palis_gear>,
	<actuallyadditions:item_crystal_empowered:3>:<moreplates:empowered_void_gear>,
} as IItemStack[IItemStack];

for material, output in mapNewGears {
	MetalPress.addRecipe(output, material*4, <immersiveengineering:mold:1>, 2000);
	Compactor.addGearRecipe(output, material*4, 4000);
}

################# PLATES #######################

// Recipe Removals
MetalPress.removeRecipe(<moreplates:void_plate>);
AtomicReconstructor.removeRecipe(<moreplates:diamatine_plate>);

Compactor.removeStorageRecipe(<techreborn:ingot:22>);
MetalPress.removeRecipe(<techreborn:plates:38>);
Pressurizer.removeRecipeWithOutput(<techreborn:plates:38>);
Pressurizer.removeRecipeWithInput(<thaumcraft:ingot:1>);

Compactor.removeStorageRecipe(<aetherworks:item_resource:4>);

MetalPress.removeRecipe(<moreplates:nether_quartz_plate>);

// Recipe Additions
MetalPress.addRecipe(<thaumcraft:plate:3>, <thaumcraft:ingot:1>, <immersiveengineering:mold>, 2000);
Pressurizer.addRecipe(<thaumcraft:ingot:1>, <thaumcraft:plate:3>);

val mapNewPlates as IItemStack[IItemStack] = {
	<modularmachinery:itemmodularium>:<contenttweaker:plate_modularium>,
	<contenttweaker:ingot_thermal_alloy>:<contenttweaker:plate_thermal_alloy>,
	<contenttweaker:ingot_mek_alloy>:<contenttweaker:plate_mek_alloy>,
	<actuallyadditions:item_crystal>:<moreplates:restonia_plate>,
	<actuallyadditions:item_crystal:5>:<moreplates:enori_plate>,
	<actuallyadditions:item_crystal:3>:<moreplates:void_plate>,
	<actuallyadditions:item_crystal:2>:<moreplates:diamatine_plate>,
	<aetherworks:item_resource:4>:<aetherworks:item_resource:3>,
} as IItemStack[IItemStack];

for material, output in mapNewPlates {
	MetalPress.addRecipe(output, material, <immersiveengineering:mold>, 2000);
	Compactor.addStorageRecipe(output, material, 4000);
	Pressurizer.addRecipe(material, output);
}


################# SCAFFOLDING #######################

recipes.addShaped(<contenttweaker:scal_scaffolding> * 6, [[<rockhounding_chemistry:alloy_items_tech:4>, <rockhounding_chemistry:alloy_items_tech:4>, <rockhounding_chemistry:alloy_items_tech:4>],[null, <contenttweaker:rod_scal>, null], [<contenttweaker:rod_scal>, null, <contenttweaker:rod_scal>]]);
recipes.addShaped(<contenttweaker:bam_scaffolding> * 6, [[<rockhounding_chemistry:alloy_items_tech:7>, <rockhounding_chemistry:alloy_items_tech:7>, <rockhounding_chemistry:alloy_items_tech:7>],[null, <contenttweaker:rod_bam>, null], [<contenttweaker:rod_bam>, null, <contenttweaker:rod_bam>]]);
recipes.addShaped(<contenttweaker:nimonic_scaffolding> * 6, [[<rockhounding_chemistry:alloy_items_tech:16>, <rockhounding_chemistry:alloy_items_tech:16>, <rockhounding_chemistry:alloy_items_tech:16>],[null, <contenttweaker:rod_nimonic>, null], [<contenttweaker:rod_nimonic>, null, <contenttweaker:rod_nimonic>]]);
recipes.addShaped(<contenttweaker:vanasteel_scaffolding> * 6, [[<rockhounding_chemistry:alloy_items_tech:40>, <rockhounding_chemistry:alloy_items_tech:40>, <rockhounding_chemistry:alloy_items_tech:40>],[null, <contenttweaker:rod_vanasteel>, null], [<contenttweaker:rod_vanasteel>, null, <contenttweaker:rod_vanasteel>]]);
recipes.addShaped(<contenttweaker:invar_scaffolding> * 6, [[<thermalfoundation:material:162>, <thermalfoundation:material:162>, <thermalfoundation:material:162>],[null, <moreplates:invar_stick>, null], [<moreplates:invar_stick>, null, <moreplates:invar_stick>]]);
recipes.addShaped(<jaopca:block_scaffoldingnichrome> * 6, [[<ore:ingotNichrome>, <ore:ingotNichrome>, <ore:ingotNichrome>],[null, <jaopca:item_sticknichrome>, null], [<jaopca:item_sticknichrome>, null, <jaopca:item_sticknichrome>]]);
recipes.addShaped(<jaopca:block_scaffoldingstainlesssteel> * 6, [[<ore:ingotStainlessSteel>, <ore:ingotStainlessSteel>, <ore:ingotStainlessSteel>],[null, <jaopca:item_stickstainlesssteel>, null], [<jaopca:item_stickstainlesssteel>, null, <jaopca:item_stickstainlesssteel>]]);
recipes.addShaped(<jaopca:block_scaffoldingthaumium> * 6, [[<thaumcraft:ingot>, <thaumcraft:ingot>, <thaumcraft:ingot>],[null, <jaopca:item_stickthaumium>, null], [<jaopca:item_stickthaumium>, null, <jaopca:item_stickthaumium>]]);
recipes.addShaped(<contenttweaker:ironwood_scaffolding> * 6, [[<twilightforest:ironwood_ingot>, <twilightforest:ironwood_ingot>, <twilightforest:ironwood_ingot>],[null, <contenttweaker:rod_ironwood>, null], [<contenttweaker:rod_ironwood>, null, <contenttweaker:rod_ironwood>]]);
recipes.addShaped(<contenttweaker:scaffolding_thermal_alloy> * 6, [[<contenttweaker:ingot_thermal_alloy>, <contenttweaker:ingot_thermal_alloy>, <contenttweaker:ingot_thermal_alloy>],[null, <contenttweaker:rod_thermal_alloy>, null], [<contenttweaker:rod_thermal_alloy>, null, <contenttweaker:rod_thermal_alloy>]]);
recipes.addShaped(<contenttweaker:scaffolding_mek_alloy> * 6, [[<contenttweaker:ingot_mek_alloy>, <contenttweaker:ingot_mek_alloy>, <contenttweaker:ingot_mek_alloy>],[null, <contenttweaker:rod_mek_alloy>, null], [<contenttweaker:rod_mek_alloy>, null, <contenttweaker:rod_mek_alloy>]]);
recipes.addShaped(<contenttweaker:scaffolding_plastic> * 6, [[<mekanism:polyethene:2>, <mekanism:polyethene:2>, <mekanism:polyethene:2>],[null, <mekanism:polyethene:3>, null], [<mekanism:polyethene:3>, null, <mekanism:polyethene:3>]]);

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


################# SHEETMETAL #######################

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
<jaopca:block_sheetmetaltinsilver>:<jaopca:item_platetinsilver>,
<contenttweaker:sheetmetal_thermal_alloy>:<contenttweaker:plate_thermal_alloy>,
<contenttweaker:sheetmetal_mek_alloy>:<contenttweaker:plate_mek_alloy>,
};
for sheetmetal, plate in SheetmetalPlate {
recipes.addShaped(sheetmetal * 4, [[null, plate, null],[plate, null, plate], [null, plate, null]]);
}

//Casting sheetmetal?!?
val sheetmetalCastingMap as ILiquidStack[IItemStack] = {
<contenttweaker:sheetmetal_bronze>:<liquid:bronze>,
<contenttweaker:sheetmetal_nimonic>:<liquid:molten_nimonic>,
<contenttweaker:sheetmetal_refinediron>:<liquid:refined_iron>,
<jaopca:block_sheetmetalconductiveiron>:<liquid:conductive_iron>,
<jaopca:block_sheetmetaldarksteel>:<liquid:dark_steel>,
<jaopca:block_sheetmetalelectricalsteel>:<liquid:electrical_steel>,
<jaopca:block_sheetmetalenergeticalloy>:<liquid:energetic_alloy>,
<jaopca:block_sheetmetalenergeticsilver>:<liquid:energetic_silver>,
<jaopca:block_sheetmetallumium>:<liquid:lumium>,
<jaopca:block_sheetmetalpulsatingiron>:<liquid:pulsating_iron>,
<jaopca:block_sheetmetalredstonealloy>:<liquid:redstone_alloy>,
<jaopca:block_sheetmetalscal>:<liquid:molten_scal>,
<jaopca:block_sheetmetalsoularium>:<liquid:soularium>,
<jaopca:block_sheetmetalstainlesssteel>:<liquid:stainless_steel>,
<jaopca:block_sheetmetaltinsilver>:<liquid:tin_silver>,
<jaopca:block_sheetmetaltitanium>:<liquid:molten_titanium>,
<jaopca:block_sheetmetalvanasteel>:<liquid:molten_vanasteel>,
<contenttweaker:sheetmetal_brass>:<liquid:brass>,
<contenttweaker:sheetmetal_thaumium>:<liquid:thaumium>,
<immersiveengineering:sheetmetal>:<liquid:copper>,
<immersiveengineering:sheetmetal:1>:<liquid:aluminum>,
<immersiveengineering:sheetmetal:2>:<liquid:lead>,
<immersiveengineering:sheetmetal:3>:<liquid:silver>,
<immersiveengineering:sheetmetal:4>:<liquid:nickel>,
<immersiveengineering:sheetmetal:5>:<liquid:uranium>,
<immersiveengineering:sheetmetal:6>:<liquid:constantan>,
<immersiveengineering:sheetmetal:7>:<liquid:electrum>,
<immersiveengineering:sheetmetal:8>:<liquid:steel>,
<immersiveengineering:sheetmetal:9>:<liquid:iron>,
<immersiveengineering:sheetmetal:10>:<liquid:gold>,
} as ILiquidStack[IItemStack];

for sheetmetal, fluid in sheetmetalCastingMap {
Casting.addBasinRecipe(<contenttweaker:sheetmetal_cast>, sheetmetal, <liquid:steel>, 720, true, 400);
Casting.addBasinRecipe(sheetmetal, <contenttweaker:sheetmetal_cast>, fluid, 144, false, 100);
}

// Rolling Sheetmetal
val rollingmachineCastingMap as IItemStack[IItemStack] = {
<immersiveengineering:sheetmetal:10>:<minecraft:gold_block>,
<contenttweaker:sheetmetal_thaumium>:<thaumcraft:metal_thaumium>,
<contenttweaker:sheetmetal_bronze>:<thermalfoundation:storage_alloy:3>,
<immersiveengineering:sheetmetal>:<thermalfoundation:storage>,
<immersiveengineering:sheetmetal:1>:<thermalfoundation:storage:4>,
<immersiveengineering:sheetmetal:2>:<thermalfoundation:storage:3>,
<contenttweaker:sheetmetal_refinediron>:<techreborn:storage2:10>,
<contenttweaker:sheetmetal_nimonic>:<rockhounding_chemistry:alloy_blocks_tech:5>,
<immersiveengineering:sheetmetal:9>:<minecraft:iron_block>,
<immersiveengineering:sheetmetal:8>:<thermalfoundation:storage_alloy>,
<jaopca:block_sheetmetaldarksteel>:<enderio:block_alloy:6>,
<jaopca:block_sheetmetalsoularium>:<enderio:block_alloy:7>,
<jaopca:block_sheetmetallumium>:<thermalfoundation:storage_alloy:6>,
<jaopca:block_sheetmetalredstonealloy>:<enderio:block_alloy:3>,
<jaopca:block_sheetmetalscal>:<rockhounding_chemistry:alloy_blocks_tech:1>,
<jaopca:block_sheetmetalelectricalsteel>:<enderio:block_alloy>,
<jaopca:block_sheetmetalvanasteel>:<rockhounding_chemistry:alloy_blocks_tech:13>,
<jaopca:block_sheetmetaltitanium>:<techreborn:storage:2>,
<jaopca:block_sheetmetalconductiveiron>:<enderio:block_alloy:4>,
<jaopca:block_sheetmetalpulsatingiron>:<enderio:block_alloy:5>,
<jaopca:block_sheetmetalstainlesssteel>:<jaopca:block_blockstainlesssteel>,
<contenttweaker:sheetmetal_ironwood>:<twilightforest:block_storage>,
<jaopca:block_sheetmetalenergeticalloy>:<enderio:block_alloy:1>,
<jaopca:block_sheetmetalenergeticsilver>:<enderio:block_alloy_endergy:5>,
<contenttweaker:sheetmetal_mek_alloy>:<contenttweaker:block_mek_alloy>,
<contenttweaker:sheetmetal_thermal_alloy>:<contenttweaker:block_thermal_alloy>,
} as IItemStack[IItemStack];

for sheetmetal, block in rollingmachineCastingMap {
rollingMachine.addShapeless(sheetmetal * 9, [block]);
}


################# COMPRESSED PLATES #######################

/*
mods.techreborn.compressor.addRecipe(<jaopca:item_platedenseadvancedalloy>, <techreborn:plates:36>*9, 600, 50);
mods.techreborn.compressor.addRecipe(<jaopca:item_platedensecarbon>, <techreborn:plates:2>*9, 600, 50);
mods.techreborn.compressor.addRecipe(<jaopca:item_platedenseenergeticalloy>, <moreplates:energetic_alloy_plate>*9, 600, 50);
mods.techreborn.compressor.addRecipe(<jaopca:item_platedenseenergeticsilver>, <moreplates:energetic_silver_plate>*9, 600, 50);
mods.techreborn.compressor.addRecipe(<jaopca:item_platedenseintermedium>, <moreplates:intermedium_plate>*9, 600, 50);
*/


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
crusher.addRecipe(<minecraft:clay>, <techreborn:dust:12> * 4);
crusher.addRecipe(<minecraft:clay_ball>, <techreborn:dust:12>);
//SagMill.addRecipe([<techreborn:dust:12>*4], [1] , <minecraft:clay>, "NONE");

//limestone
val limestoneforFlux = <ore:limestoneforFlux>;
limestoneforFlux.add(<quark:limestone>);
limestoneforFlux.add(<quark:limestone:1>);
limestoneforFlux.add(<chisel:limestone2:7>);
for item in limestoneforFlux.items{
Crusher.addRecipe(<contenttweaker:limestone_flux>*3, item, 1024, <contenttweaker:limestone_flux>, 0.5);
Pulverizer.addRecipe(<contenttweaker:limestone_flux>*4, item, 1500, <contenttweaker:limestone_flux>, 50);
crusher.addRecipe(item, <contenttweaker:limestone_flux> * 4);
}

Manufactory.addRecipe(<ore:limestoneforFlux>, <contenttweaker:limestone_flux>*4);
//SagMill.addRecipe([<contenttweaker:limestone_flux>*3], [1] , <ore:limestoneforFlux>, "MULTIPLY_OUTPUT");


//Radiant Dust
Crusher.addRecipe(<arcanearchives:radiant_dust>*9, <arcanearchives:storage_raw_quartz>, 1024, <arcanearchives:radiant_dust>*3, 0.5);
Manufactory.addRecipe(<arcanearchives:storage_raw_quartz>, <arcanearchives:radiant_dust>*9);
Pulverizer.addRecipe(<arcanearchives:radiant_dust>*9, <arcanearchives:storage_raw_quartz>, 1500, <arcanearchives:radiant_dust>*3, 50);
crusher.addRecipe(<arcanearchives:storage_raw_quartz>, <arcanearchives:radiant_dust>*9);
//SagMill.addRecipe([<arcanearchives:radiant_dust>*9], [1] , <arcanearchives:storage_raw_quartz>, "MULTIPLY_OUTPUT");


//Ember Grit
Crusher.addRecipe(<embers:dust_ember>, <embers:crystal_ember>, 2048, <embers:dust_ember>, 0.1);
Manufactory.addRecipe(<embers:crystal_ember>, <embers:dust_ember>);
Pulverizer.addRecipe(<embers:dust_ember>, <embers:crystal_ember>, 1500, <embers:dust_ember>, 10);
crusher.addRecipe(<embers:crystal_ember>, <embers:dust_ember>);
//SagMill.addRecipe([<embers:dust_ember>], [1] , <embers:crystal_ember>, "NONE");


//Graphite
//SagMill.addRecipe([<nuclearcraft:dust:8>], [1] , <thermalfoundation:material:768>, "NONE");
Pulverizer.addRecipe(<nuclearcraft:dust:8>, <thermalfoundation:material:768>, 1500);
crusher.addRecipe(<thermalfoundation:material:768>, <nuclearcraft:dust:8>);

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
crusher.addRecipe(<bloodmagic:slate>, <contenttweaker:slatedust> * 2);
crusher.addRecipe(<bloodmagic:slate:1>, <contenttweaker:slatedust> * 4);
crusher.addRecipe(<bloodmagic:slate:2>, <contenttweaker:slatedust> * 8);
crusher.addRecipe(<bloodmagic:slate:3>, <contenttweaker:slatedust> * 16);
crusher.addRecipe(<bloodmagic:slate:4>, <contenttweaker:slatedust> * 32);

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
crusher.addRecipe(<ore:pristineMatter>, <contenttweaker:pristine_dust>);

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
crusher.addRecipe(<minecraft:skull:1>, <quark:black_ash>*3);
//SagMill.addRecipe([<quark:black_ash>*3], [1] , <minecraft:skull:1>, "MULTIPLY_OUTPUT");

//Thermal Ruby dust
Pulverizer.addRecipe(<techreborn:dust:43>, <techreborn:gem>, 2000);

//Marble
Crusher.addRecipe(<quark:black_ash>*3, <minecraft:skull:1>, 1024);
Manufactory.addRecipe(<minecraft:skull:1>, <quark:black_ash>*3);
Pulverizer.addRecipe(<quark:black_ash>*3, <minecraft:skull:1>, 2000);
crusher.addRecipe(<minecraft:skull:1>, <quark:black_ash>*3);

//Basalt
Crusher.addRecipe(<quark:black_ash>*3, <minecraft:skull:1>, 1024);
Manufactory.addRecipe(<minecraft:skull:1>, <quark:black_ash>*3);
Pulverizer.addRecipe(<quark:black_ash>*3, <minecraft:skull:1>, 2000);
crusher.addRecipe(<minecraft:skull:1>, <quark:black_ash>*3);


##########################################################################################
print("==================== end of parts.zs ====================");
