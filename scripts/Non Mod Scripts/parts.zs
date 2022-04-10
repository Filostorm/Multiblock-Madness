#priority 99

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

################# PART CRAFTING REMOVAL #######################

mods.unidict.removalByKind.get("Crafting").remove("plate");
mods.unidict.removalByKind.get("Crafting").remove("rod");
mods.unidict.removalByKind.get("Crafting").remove("stick");
mods.unidict.removalByKind.get("Crafting").remove("gear");

recipes.remove(<ore:plateAluminum>);
recipes.remove(<ore:plateBronze>);
recipes.remove(<ore:plateConstantan>);
recipes.remove(<ore:plateCopper>);
recipes.remove(<ore:plateElectrum>);
recipes.remove(<ore:plateGold>);
recipes.remove(<ore:plateInvar>);
recipes.remove(<ore:plateIron>);
recipes.remove(<ore:plateLead>);
recipes.remove(<ore:plateNickel>);
recipes.remove(<ore:platePlatinum>);
recipes.remove(<ore:plateSignalum>);
recipes.remove(<ore:plateSilver>);
recipes.remove(<ore:plateSteel>);
recipes.remove(<ore:plateTin>);

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
	<jaopca:item_gearbloodbronze>,
	<jaopca:item_gearferroboron>,
	<jaopca:item_geartungstencarbide>,
	<jaopca:item_gearzinc>,
]
 as IItemStack[];

for item in itemstoRemove {
	recipes.remove(item);
}


/* We should make this a universial script for all added parts :D
val generalmelting as IItemStack[][ILiquidStack] = {
	<liquid:base_essence>:[<mysticalagriculture:crafting:39>,<mysticalagriculture:crafting:32>, null, <mysticalagriculture:ingot_storage>,],
	<liquid:pigiron>:[<tconstruct:nuggets:4>,<tconstruct:ingots:4>, null, <tconstruct:metal:4>,],
	<liquid:knightslime>:[<tconstruct:nuggets:3>,<tconstruct:ingots:3>, null, <tconstruct:metal:3>,],
	<liquid:alumite>:[<plustic:alumitenugget>,<plustic:alumiteingot>, null, <plustic:alumiteblock>,],
	<liquid:osgloglas>:[<plustic:osgloglasnugget>,<plustic:osgloglasingot>, null, <plustic:osgloglasblock>,],
	<liquid:osmiridium>:[<plustic:osmiridiumnugget>,<plustic:osmiridiumingot>, null, <plustic:osmiridiumblock>,],
	<liquid:mirion>:[<plustic:mirionnugget>,<plustic:mirioningot>, null, <plustic:mirionblock>,],
	<liquid:thaumium>:[<thaumcraft:nugget:6>,<thaumcraft:ingot>, null, <thaumcraft:metal_thaumium>,],
	<liquid:alubrass>:[<tconstruct:nuggets:5>,<tconstruct:ingots:5>, null, <tconstruct:metal:5>,],
	<liquid:soulium>:[<mysticalagriculture:crafting:45>,<mysticalagriculture:crafting:38>, null, <mysticalagriculture:ingot_storage:6>,],
	<liquid:refined_iron>:[<techreborn:nuggets:19>,<techreborn:ingot:19>, null, <techreborn:storage2:10>,],
	<liquid:dawnstone>:[<embers:nugget_dawnstone>,<embers:ingot_dawnstone>, null, <embers:block_dawnstone>,],
	<liquid:elementium>:[<botania:manaresource:19>,<botania:manaresource:7>, null, <botania:storage:2>,],
	<liquid:molten_vanasteel>:[<rockhounding_chemistry:alloy_items_tech:41>,<rockhounding_chemistry:alloy_items_tech:40>,<rockhounding_chemistry:alloy_items_tech:39>,<rockhounding_chemistry:alloy_blocks_tech:13>],
	<liquid:molten_cunife>:[<rockhounding_chemistry:alloy_items_tech:26>,<rockhounding_chemistry:alloy_items_tech:25>,<rockhounding_chemistry:alloy_items_tech:24>,<rockhounding_chemistry:alloy_blocks_tech:8>],
	<liquid:molten_inconel>:[<rockhounding_chemistry:alloy_items_tech_b:5>,<rockhounding_chemistry:alloy_items_tech_b:4>,<rockhounding_chemistry:alloy_items_tech_b:3>,<rockhounding_chemistry:alloy_blocks_tech_b:1>],
	<liquid:molten_corten>:[<rockhounding_chemistry:alloy_items_deco:23>,<rockhounding_chemistry:alloy_items_deco:22>,<rockhounding_chemistry:alloy_items_deco:21>,<rockhounding_chemistry:alloy_blocks_deco:7>],
	<liquid:molten_zircaloy>:[<rockhounding_chemistry:alloy_items_tech_b:8>,<nuclearcraft:alloy:12>,<rockhounding_chemistry:alloy_items_tech_b:6>,<rockhounding_chemistry:alloy_blocks_tech_b:2>],
	<liquid:molten_stellite>:[<rockhounding_chemistry:alloy_items_tech:11>,<rockhounding_chemistry:alloy_items_tech:10>,<rockhounding_chemistry:alloy_items_tech:9>,<rockhounding_chemistry:alloy_blocks_tech:3>],
	<liquid:molten_nimonic>:[<rockhounding_chemistry:alloy_items_tech:17>,<rockhounding_chemistry:alloy_items_tech:16>,<rockhounding_chemistry:alloy_items_tech:15>,<rockhounding_chemistry:alloy_blocks_tech:5>],
	<liquid:molten_nial>:[<rockhounding_chemistry:alloy_items_tech_b:2>,<rockhounding_chemistry:alloy_items_tech_b:1>,<rockhounding_chemistry:alloy_items_tech_b>,<rockhounding_chemistry:alloy_blocks_tech_b>],
	<liquid:molten_pewter>:[<rockhounding_chemistry:alloy_items_deco:20>,<rockhounding_chemistry:alloy_items_deco:19>,<rockhounding_chemistry:alloy_items_deco:18>,<rockhounding_chemistry:alloy_blocks_deco:6>],
	<liquid:molten_scal>:[<rockhounding_chemistry:alloy_items_tech:5>,<rockhounding_chemistry:alloy_items_tech:4>,<rockhounding_chemistry:alloy_items_tech:3>,<rockhounding_chemistry:alloy_blocks_tech:1>],
	<liquid:molten_tantaloy>:[<rockhounding_chemistry:alloy_items_tech:47>,<rockhounding_chemistry:alloy_items_tech:45>,<rockhounding_chemistry:alloy_items_tech:46>,<rockhounding_chemistry:alloy_blocks_tech:15>],
	<liquid:molten_cupronickel>:[<rockhounding_chemistry:alloy_items_tech:14>,<rockhounding_chemistry:alloy_items_tech:12>,<rockhounding_chemistry:alloy_items_tech:13>,<rockhounding_chemistry:alloy_blocks_tech:4>],
	<liquid:molten_bam>:[<rockhounding_chemistry:alloy_items_tech:8>,<rockhounding_chemistry:alloy_items_tech:6>,<rockhounding_chemistry:alloy_items_tech:7>,<rockhounding_chemistry:alloy_blocks_tech:2>],
	<liquid:molten_cube>:[<rockhounding_chemistry:alloy_items_tech:2>,<rockhounding_chemistry:alloy_items_tech>,<rockhounding_chemistry:alloy_items_tech:1>,<rockhounding_chemistry:alloy_blocks_tech>],
	<liquid:molten_nichrome>:[<rockhounding_chemistry:alloy_items_tech:23>,<rockhounding_chemistry:alloy_items_tech:21>,<rockhounding_chemistry:alloy_items_tech:22>,<rockhounding_chemistry:alloy_blocks_tech:7>],
	<liquid:molten_hydronalium>:[<rockhounding_chemistry:alloy_items_tech:38>,<rockhounding_chemistry:alloy_items_tech:36>,<rockhounding_chemistry:alloy_items_tech:37>,<rockhounding_chemistry:alloy_blocks_tech:12>],
	<liquid:molten_hastelloy>:[<rockhounding_chemistry:alloy_items_tech:20>,<rockhounding_chemistry:alloy_items_tech:18>,<rockhounding_chemistry:alloy_items_tech:19>,<rockhounding_chemistry:alloy_blocks_tech:6>],
	<liquid:starmetal>:[<jaopca:item_nuggetastralstarmetal>,<astralsorcery:itemcraftingcomponent:1>,<astralsorcery:itemcraftingcomponent:2>,<contenttweaker:starmetal_block>],
	<liquid:inert_metal>:[null, <contenttweaker:inert_ingot>, null, <contenttweaker:sub_block_holder_0:2>],
	<liquid:fierymetal>:[null, <twilightforest:fiery_ingot>, null, <twilightforest:block_storage:1>],
	<liquid:knightmetal>:[null, <twilightforest:knightmetal_ingot>, null, <twilightforest:knightmetal_block>],
	<liquid:dragonsteel_ice>:[null, <iceandfire:dragonsteel_ice_ingot>, null, <iceandfire:dragonsteel_ice_block>],
	<liquid:dragonsteel_fire>:[null, <iceandfire:dragonsteel_fire_ingot>, null, <iceandfire:dragonsteel_fire_block>],
	<liquid:molten_blood_infused_iron>:[null, <bloodarsenal:base_item:4>, null, <bloodarsenal:blood_infused_iron_block>],
	<liquid:bloodbronze>:[null, <bloodtinker:blood_bronze_ingot>, null, <bloodtinker:blood_bronze_block>],
	<liquid:stainless_steel>:[null, <qmd:ingot_alloy:2>, null, <jaopca:block_blockstainlesssteel>],
	<liquid:tin_silver>:[null, <nuclearcraft:alloy:8>, null, <jaopca:block_blocktinsilver>],
} as IItemStack[][ILiquidStack];

for fluid, material in generalmelting {

	if (!(isNull(material[0]))) {
		Crucible.addRecipe(fluid * 16, material[0], 500);
		Melter.addRecipe(material[0], fluid * 16, 0.11);
	}

	if (!(isNull(material[1]))) {
		Crucible.addRecipe(fluid * 144, material[1], 4000);
		Melter.addRecipe(material[1], fluid * 144);
	}

	if (!(isNull(material[2]))) {
		Crucible.addRecipe(fluid * 144, material[2], 4000);
		Melter.addRecipe(material[2], fluid * 144);
	}

	if (!(isNull(material[3]))) {
		Crucible.addRecipe(fluid * 1296, material[3], 32000);
		Melter.addRecipe(material[3], fluid * 1296, 9.0);
	}
}
*/

################# BLOCKS #######################


val mapNewBlocks as IItemStack[IItemStack] = {
	<contenttweaker:ingot_thermal_alloy>:<contenttweaker:block_thermal_alloy>,
	<contenttweaker:ingot_mek_alloy>:<contenttweaker:block_mek_alloy>,
	<contenttweaker:inert_ingot>:<contenttweaker:sub_block_holder_0:2>,
	<nuclearcraft:alloy:1>:<contenttweaker:sub_block_holder_0:6>,
	<contenttweaker:material_part:20>:<contenttweaker:sub_block_holder_0>,
	<contenttweaker:material_part:10>:<contenttweaker:sub_block_holder_0:1>,
	<contenttweaker:material_part:30>:<contenttweaker:sub_block_holder_0:4>,
	<astralsorcery:itemcraftingcomponent:1>:<contenttweaker:starmetal_block>,
} as IItemStack[IItemStack];

for ingot, block in mapNewBlocks {
recipes.addShaped(block, [
	[ingot, ingot, ingot],
	[ingot, ingot, ingot], 
	[ingot, ingot, ingot]
]);
recipes.addShapeless(ingot * 9, [block]);
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


################# SCAFFOLDING #######################

val scaffoldingRecipes as IItemStack[][IItemStack] = {
	<contenttweaker:scal_scaffolding>:[<rockhounding_chemistry:alloy_items_tech:4>, <contenttweaker:rod_scal>],
	<contenttweaker:bam_scaffolding>:[<rockhounding_chemistry:alloy_items_tech:7>, <contenttweaker:rod_bam>],
	<contenttweaker:nimonic_scaffolding>:[<rockhounding_chemistry:alloy_items_tech:16>, <contenttweaker:rod_nimonic>],
	<contenttweaker:vanasteel_scaffolding>:[<rockhounding_chemistry:alloy_items_tech:40>, <contenttweaker:rod_vanasteel>],
	<contenttweaker:invar_scaffolding>:[<thermalfoundation:material:162>, <moreplates:invar_stick>],
	<jaopca:block_scaffoldingnichrome>:[<rockhounding_chemistry:alloy_items_tech:22>, <jaopca:item_sticknichrome>],
	<jaopca:block_scaffoldingstainlesssteel>:[<qmd:ingot_alloy:2>, <jaopca:item_stickstainlesssteel>],
	<jaopca:block_scaffoldingthaumium>:[<thaumcraft:ingot>, <jaopca:item_stickthaumium>],
	<contenttweaker:ironwood_scaffolding>:[<twilightforest:ironwood_ingot>, <contenttweaker:rod_ironwood>],
	<contenttweaker:scaffolding_thermal_alloy>:[<contenttweaker:ingot_thermal_alloy>, <contenttweaker:rod_thermal_alloy>],
	<contenttweaker:scaffolding_mek_alloy>:[<contenttweaker:ingot_mek_alloy>, <contenttweaker:rod_mek_alloy>],
	<contenttweaker:scaffolding_plastic>:[<mekanism:polyethene:2>, <mekanism:polyethene:3>],
} as IItemStack[][IItemStack];

for scaffolding, material in scaffoldingRecipes {
recipes.addShaped(scaffolding * 6, [
	[material[0], material[0], material[0]],
	[null, material[1], null], 
	[material[1], null, material[1]]]);
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
<jaopca:block_sheetmetalstellite>:<rockhounding_chemistry:alloy_parts:16>,
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
<jaopca:block_sheetmetalstellite>:<liquid:molten_stellite>,
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
<jaopca:block_sheetmetalstellite>:<rockhounding_chemistry:alloy_blocks_tech:3>,
<jaopca:block_sheetmetaltinsilver>:<jaopca:block_blocktinsilver>,
<immersiveengineering:sheetmetal:3>:<thermalfoundation:storage:2>,
<immersiveengineering:sheetmetal:4>:<thermalfoundation:storage:5>,
<immersiveengineering:sheetmetal:5>:<immersiveengineering:storage:5>,
<immersiveengineering:sheetmetal:6>:<thermalfoundation:storage_alloy:4>,
<immersiveengineering:sheetmetal:7>:<thermalfoundation:storage_alloy:1>,
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


##########################################################################################
print("==================== end of parts.zs ====================");
