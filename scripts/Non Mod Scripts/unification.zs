#priority 98

import crafttweaker.item.IItemStack;
import crafttweaker.item.WeightedItemStack;
import crafttweaker.oredict.IOreDict;
import crafttweaker.oredict.IOreDictEntry;
import crafttweaker.item.IIngredient;
import crafttweaker.liquid.ILiquidStack;
import mods.jei.JEI.removeAndHide;
import mods.tconstruct.Casting;
import mods.immersiveengineering.Crusher;
import mods.immersiveengineering.MetalPress;
import mods.immersiveengineering.ArcFurnace;
import mods.techreborn.rollingMachine;
import mods.techreborn.extractor;
import mods.techreborn.implosionCompressor;
import mods.techreborn.industrialGrinder;
import mods.integrateddynamics.MechanicalSqueezer;
import mods.nuclearcraft.ChanceItemIngredient;
import mods.nuclearcraft.Manufactory;
import mods.nuclearcraft.Pressurizer;
import mods.nuclearcraft.Melter;
import mods.nuclearcraft.AlloyFurnace;
import mods.nuclearcraft.IngotFormer;
import mods.nuclearcraft.Crystallizer;
import mods.nuclearcraft.FissionIrradiator;
import mods.thermalexpansion.RedstoneFurnace;
import mods.thermalexpansion.Pulverizer;
import mods.thermalexpansion.Crucible;
import mods.thermalexpansion.Compactor;
import mods.thermalexpansion.InductionSmelter;
import mods.mekanism.crusher;
import mods.mekanism.enrichment;
import mods.qmd.target_chamber;
import mods.qmd.ore_leacher;

print("==================== loading unification.zs ====================");
##########################################################################################

// --==Macerator Unification==-- //

/*
mods.immersiveengineering.Crusher.addRecipe(IItemStack output, IIngredient input, int energy, @Optional IItemStack secondaryOutput, @Optional double secondaryChance);
mods.nuclearcraft.Manufactory.addRecipe(IIngredient itemInput, IIngredient itemOutput, @Optional double timeMultiplier, @Optional double powerMultiplier, @Optional double processRadiation);
mods.thermalexpansion.Pulverizer.addRecipe(IItemStack output, IItemStack input, int energy, @Optional IItemStack secondaryOutput, @Optional int secondaryChance);
mods.mekanism.crusher.addRecipe(IIngredient inputStack, IItemStack outputStack);
mods.mekanism.enrichment.addRecipe(IIngredient inputStack, IItemStack outputStack);
*/

// Dense Construction Chunk
Manufactory.addRecipe(<buildinggadgets:constructionblock_dense>, <buildinggadgets:construction_chunk_dense> * 4);

// Sky Stone Dust
crusher.addRecipe(<appliedenergistics2:sky_stone_block>, <appliedenergistics2:material:45>);

// Wool to String
Manufactory.addRecipe(<ore:wool>, <minecraft:string> * 4);

// Prismarine Crystals
crusher.addRecipe(<minecraft:prismarine_shard>, <minecraft:prismarine_crystals>);

// Flour
Crusher.addRecipe(<nuclearcraft:flour>, <minecraft:wheat>, 1024);
Crusher.addRecipe(<nuclearcraft:flour>, <natura:materials>, 1024);
Manufactory.addRecipe(<natura:materials>, <nuclearcraft:flour>);
Pulverizer.addRecipe(<nuclearcraft:flour>, <natura:materials>, 4000);
crusher.addRecipe(<minecraft:wheat>, <nuclearcraft:flour>);
crusher.addRecipe(<natura:materials>, <nuclearcraft:flour>);

// Slag into Sand
Manufactory.addRecipe(<thermalfoundation:material:864>, <minecraft:sand>);
Pulverizer.addRecipe(<minecraft:sand>, <thermalfoundation:material:864>, 4000);
crusher.addRecipe(<thermalfoundation:material:864>, <minecraft:sand>);

// Construction Paste
Manufactory.addRecipe(<buildinggadgets:construction_chunk_dense>, <buildinggadgets:constructionpaste>);

// Bonemeal
crusher.addRecipe(<minecraft:bone>, <minecraft:dye:15> * 6);

// End Stone
Crusher.addRecipe(<techreborn:dust:21>, <minecraft:end_stone>, 2048, <techreborn:dust:21>, 0.1);
crusher.addRecipe(<minecraft:end_stone>, <techreborn:dust:21>);

// Blaze Rods
enrichment.addRecipe(<minecraft:blaze_rod>, <minecraft:blaze_powder> * 4);

// Blizz Rods
Crusher.addRecipe(<thermalfoundation:material:2049> * 4, <thermalfoundation:material:2048>, 1024, <minecraft:snowball>, 0.5);
Manufactory.addRecipe(<thermalfoundation:material:2048>, <thermalfoundation:material:2049> * 4);
enrichment.addRecipe(<thermalfoundation:material:2048>, <thermalfoundation:material:2049> * 4);

// Blitz Rods
Crusher.addRecipe(<thermalfoundation:material:2051> * 4, <thermalfoundation:material:2050>, 1024, <thermalfoundation:material:772>, 0.5);
Manufactory.addRecipe(<thermalfoundation:material:2050>, <thermalfoundation:material:2051> * 4);
enrichment.addRecipe(<thermalfoundation:material:2050>, <thermalfoundation:material:2051> * 4);

// Basalz Rods
Crusher.addRecipe(<thermalfoundation:material:2053> * 4, <thermalfoundation:material:2052>, 1024, <thermalfoundation:material:770>, 0.5);
Manufactory.addRecipe(<thermalfoundation:material:2052>, <thermalfoundation:material:2053> * 4);
enrichment.addRecipe(<thermalfoundation:material:2052>, <thermalfoundation:material:2053> * 4);

// Ender Pearl Dust
Crusher.addRecipe(<techreborn:dust:20>, <minecraft:ender_pearl>, 1024);
Manufactory.addRecipe(<minecraft:ender_pearl>, <techreborn:dust:20>);
Manufactory.addRecipe(<enderore:ore_ender>, <techreborn:dust:20> * 2);
crusher.addRecipe(<minecraft:ender_pearl>, <techreborn:dust:20>);
enrichment.addRecipe(<enderore:ore_ender>, <techreborn:dust:20> * 2);

// Ingot & Gem Pulverisation //

// Grains of Prescience
Crusher.addRecipe(<enderio:item_material:34>, <enderio:item_material:19>, 1024);
Pulverizer.addRecipe(<enderio:item_material:34>, <enderio:item_material:19>, 1600);
crusher.addRecipe(<enderio:item_material:19>, <enderio:item_material:34>);

// Grains of Vibrancy
Crusher.addRecipe(<enderio:item_material:35>, <enderio:item_material:15>, 1024);
Pulverizer.addRecipe(<enderio:item_material:35>, <enderio:item_material:15>, 1600);
crusher.addRecipe(<enderio:item_material:15>, <enderio:item_material:35>);

// Grains of Piezallity
Crusher.addRecipe(<enderio:item_material:36>, <enderio:item_material:14>, 1024);
Pulverizer.addRecipe(<enderio:item_material:36>, <enderio:item_material:14>, 1600);
crusher.addRecipe(<enderio:item_material:14>, <enderio:item_material:36>);

// Grains of the End
Crusher.addRecipe(<enderio:item_material:37>, <enderio:item_material:16>, 1024);
Pulverizer.addRecipe(<enderio:item_material:37>, <enderio:item_material:16>, 1600);
crusher.addRecipe(<enderio:item_material:16>, <enderio:item_material:37>);

// Brass Dust
crusher.addRecipe(<ore:ingotBrass>, <techreborn:dust:6>);

// Zircaloy Dust
crusher.addRecipe(<ore:ingotZircaloy>, <rockhounding_chemistry:alloy_items_tech_b:6>);

// Shibuichi Dust
crusher.addRecipe(<ore:ingotShibuichi>, <rockhounding_chemistry:alloy_items_deco:12>);

// Ytterbium YAG Dust
Manufactory.addRecipe(<rockhounding_chemistry:alloy_items_gems:7>, <rockhounding_chemistry:alloy_items_gems:6>);
crusher.addRecipe(<rockhounding_chemistry:alloy_items_gems:7>, <rockhounding_chemistry:alloy_items_gems:6>);

// Erbium YAG Dust
Manufactory.addRecipe(<rockhounding_chemistry:alloy_items_gems:4>, <rockhounding_chemistry:alloy_items_gems:3>);
crusher.addRecipe(<rockhounding_chemistry:alloy_items_gems:4>, <rockhounding_chemistry:alloy_items_gems:3>);

// Neodymium YAG Dust
Manufactory.addRecipe(<rockhounding_chemistry:alloy_items_gems:1>, <rockhounding_chemistry:alloy_items_gems>);
crusher.addRecipe(<rockhounding_chemistry:alloy_items_gems:1>, <rockhounding_chemistry:alloy_items_gems>);

// Coal Coke Dust
Manufactory.addRecipe(<ore:fuelCoke>, <immersiveengineering:material:17>);
Manufactory.addRecipe(<ore:blockFuelCoke>, <immersiveengineering:material:17> * 9);
Pulverizer.addRecipe(<immersiveengineering:material:17>, <immersiveengineering:material:6>, 2000);
Pulverizer.addRecipe(<immersiveengineering:material:17>, <thermalfoundation:material:802>, 2000);
Pulverizer.addRecipe(<immersiveengineering:material:17> * 9, <immersiveengineering:stone_decoration:3>, 2000);
Pulverizer.addRecipe(<immersiveengineering:material:17> * 9, <thermalfoundation:storage_resource:1>, 2000);
crusher.addRecipe(<ore:fuelCoke>, <immersiveengineering:material:17>);
crusher.addRecipe(<ore:blockFuelCoke>, <immersiveengineering:material:17> * 9);

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
	crusher.addRecipe(material, dust);
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
	extractor.removeInputRecipe(item);
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
	enrichment.addRecipe(flower, dye);
	extractor.addRecipe(dye, flower, 60, 40);
}

// Black Lotus to Black Dye
MechanicalSqueezer.addRecipe(<actuallyadditions:block_black_lotus>, <actuallyadditions:item_misc:17> * 4);

// Bluebells to Blue Dye
MechanicalSqueezer.addRecipe(<natura:bluebells_flower>, <natura:materials:8> * 4);
Pulverizer.addRecipe(<natura:materials:8> * 4, <natura:bluebells_flower>, 2000);


// Rebalancing tall flowers in the TE Pulveriser
Pulverizer.removeRecipe(<minecraft:double_plant:4>);
Pulverizer.removeRecipe(<minecraft:double_plant:5>);
Pulverizer.removeRecipe(<minecraft:double_plant>);
Pulverizer.removeRecipe(<minecraft:double_plant:1>);
Pulverizer.addRecipe(<minecraft:dye:1> * 8, <minecraft:double_plant:4>, 2000);
Pulverizer.addRecipe(<minecraft:dye:9> * 8, <minecraft:double_plant:5>, 2000);
Pulverizer.addRecipe(<minecraft:dye:11> * 8, <minecraft:double_plant>, 2000);
Pulverizer.addRecipe(<minecraft:dye:13> * 8, <minecraft:double_plant:1>, 2000);

// Gem Ore Processing Unification //

// Dilithium
Crusher.addRecipe(<libvulpes:productdust> * 2, <libvulpes:ore0>, 1024);
Pulverizer.addRecipe(<libvulpes:productdust> * 2, <libvulpes:ore0>, 3600);
enrichment.addRecipe(<libvulpes:ore0>, <libvulpes:productdust> * 2);

// Oil Sand/Shale
Crucible.removeRecipe(<thermalfoundation:ore_fluid:1>);
Crucible.removeRecipe(<thermalfoundation:ore_fluid>);
Crucible.removeRecipe(<thermalfoundation:material:892>);
Crucible.addRecipe(<liquid:oil> * 250, <thermalfoundation:material:892>, 2000);
Crusher.addRecipe(<thermalfoundation:material:892> * 3, <ore:oreClathrateOilShale>, 2048, <minecraft:flint>, 0.5);
Crusher.addRecipe(<thermalfoundation:material:892> * 3, <ore:oreClathrateOilSand>, 2048, <thermalfoundation:material:833>, 0.5);

val oilsandshale =
[
<thermalfoundation:ore_fluid:5>,
<thermalfoundation:ore_fluid:1>,
<thermalfoundation:ore_fluid>
]
 as IItemStack[];

for item in oilsandshale {
	Melter.addRecipe(item, <liquid:oil> * 1000);
	Crucible.addRecipe(<liquid:oil> * 1000, item, 4000);
	Manufactory.addRecipe(item, <thermalfoundation:material:892> * 3);
	enrichment.addRecipe(item, <thermalfoundation:material:892> * 3);
}

// Galena
Manufactory.addRecipe(<techreborn:ore>, <techreborn:dust:23> * 2);
enrichment.addRecipe(<techreborn:ore>, <techreborn:dust:23> * 2);

// Bauxite
Manufactory.addRecipe(<techreborn:ore:4>, <techreborn:dust:5> * 2);
enrichment.addRecipe(<techreborn:ore:4>, <techreborn:dust:5> * 2);

// Pyrite
Manufactory.addRecipe(<techreborn:ore:5>, <techreborn:dust:39> * 2);
enrichment.addRecipe(<techreborn:ore:5>, <techreborn:dust:39> * 5);

// Cinnabar
enrichment.addRecipe(<ore:oreCinnabar>, <thermalfoundation:material:866> * 3);

// Sphalerite
Manufactory.addRecipe(<techreborn:ore:7>, <techreborn:dust:50> * 2);
enrichment.addRecipe(<techreborn:ore:7>, <techreborn:dust:50> * 4);

// Destabilised Redstone Ore
Melter.addRecipe(<thermalfoundation:material:893>, <liquid:redstone> * 250);
Melter.addRecipe(<thermalfoundation:ore_fluid:2>, <liquid:redstone> * 1000);
enrichment.addRecipe(<thermalfoundation:ore_fluid:2>, <thermalfoundation:material:893> * 3);

// Energized Netherrack
Melter.addRecipe(<thermalfoundation:material:894>, <liquid:glowstone> * 250);
Melter.addRecipe(<thermalfoundation:ore_fluid:3>, <liquid:glowstone> * 1000);
enrichment.addRecipe(<thermalfoundation:ore_fluid:3>, <thermalfoundation:material:894> * 3);

// Resonant End Stone
Melter.addRecipe(<thermalfoundation:material:895>, <liquid:ender> * 250);
Melter.addRecipe(<thermalfoundation:ore_fluid:4>, <liquid:ender> * 1000);
enrichment.addRecipe(<thermalfoundation:ore_fluid:4>, <thermalfoundation:material:895> * 3);

// Dimensional Shard Ore
enrichment.addRecipe(<ore:oreDimensionalShard>, <rftools:dimensional_shard> * 4);

// Sodalite Ore
Manufactory.addRecipe(<techreborn:ore:11>, <techreborn:dust:48> * 6);
enrichment.addRecipe(<techreborn:ore:11>, <techreborn:dust:48> * 12);

// Black Quartz
enrichment.addRecipe(<actuallyadditions:block_misc:3>, <actuallyadditions:item_misc:5> * 2);

// Amethyst Ore
Crusher.addRecipe(<mysticalworld:amethyst_gem> * 2, <mysticalworld:amethyst_ore>, 1024);
Pulverizer.addRecipe(<mysticalworld:amethyst_gem> * 2, <mysticalworld:amethyst_ore>, 2500);
enrichment.addRecipe(<mysticalworld:amethyst_ore>, <mysticalworld:amethyst_gem> * 2);

// --==Pressuriser-Enrichment Chamber Compat==-- //
enrichment.addRecipe(<nuclearcraft:gem_dust:1>, <nuclearcraft:gem>);
enrichment.addRecipe(<nuclearcraft:gem_dust:4>, <nuclearcraft:gem:1>);
enrichment.addRecipe(<nuclearcraft:gem_dust:8>, <nuclearcraft:gem:3>);





// --==Melter Unification==-- //

/*
IngotFormer.addRecipe(ILiquidStack fluidInput, IIngredient itemOutput, @Optional double timeMultiplier, @Optional double powerMultiplier, @Optional double processRadiation);
Melter.addRecipe(IIngredient itemInput, ILiquidStack fluidOutput, @Optional double timeMultiplier, @Optional double powerMultiplier, @Optional double processRadiation);
Crucible.addRecipe(ILiquidStack output, IItemStack input, int energy);
*/


// Ingot Forming Recipes //
val ingotstoformmap as ILiquidStack[IItemStack] = {
<contenttweaker:inert_ingot>:<liquid:inert_metal>,
<mysticalagriculture:crafting:32>:<liquid:base_essence>,
<nuclearcraft:alloy:8>:<liquid:tin_silver>,
<qmd:ingot_alloy:2>:<liquid:stainless_steel>,
<techreborn:ingot:19>:<liquid:refined_iron>,
<mekanism:ingot>:<liquid:refinedobsidian>,
<mekanism:ingot:3>:<liquid:refinedglowstone>,
<astralsorcery:itemcraftingcomponent:1>:<liquid:starmetal>,
<bloodtinker:blood_bronze_ingot>:<liquid:bloodbronze>,
<bloodarsenal:base_item:4>:<liquid:molten_blood_infused_iron>,
<tconstruct:materials:1>:<liquid:dirt>,
<minecraft:brick>:<liquid:clay>,
<twilightforest:fiery_ingot>:<liquid:fierymetal>,
<iceandfire:dragonsteel_fire_ingot>:<liquid:dragonsteel_fire>,
<iceandfire:dragonsteel_ice_ingot>:<liquid:dragonsteel_ice>,
<botania:manaresource:7>:<liquid:elementium>,
<rockhounding_chemistry:metal_items>:<liquid:molten_vanadium>,
<rockhounding_chemistry:alloy_items_tech:1>:<liquid:molten_cube>,
<rockhounding_chemistry:alloy_items_tech:4>:<liquid:molten_scal>,
<rockhounding_chemistry:alloy_items_tech:7>:<liquid:molten_bam>,
<rockhounding_chemistry:alloy_items_tech:10>:<liquid:molten_stellite>,
<rockhounding_chemistry:alloy_items_tech:13>:<liquid:molten_cupronickel>,
<rockhounding_chemistry:alloy_items_tech:16>:<liquid:molten_nimonic>,
<rockhounding_chemistry:alloy_items_tech:19>:<liquid:molten_hastelloy>,
<rockhounding_chemistry:alloy_items_tech:22>:<liquid:molten_nichrome>,
<rockhounding_chemistry:alloy_items_tech:25>:<liquid:molten_cunife>,
<rockhounding_chemistry:alloy_items_tech:37>:<liquid:molten_hydronalium>,
<rockhounding_chemistry:alloy_items_tech:40>:<liquid:molten_vanasteel>,
<rockhounding_chemistry:alloy_items_tech:46>:<liquid:molten_tantaloy>,
<rockhounding_chemistry:alloy_items_deco:22>:<liquid:molten_corten>,
<rockhounding_chemistry:alloy_items_deco:19>:<liquid:molten_pewter>,
<rockhounding_chemistry:alloy_items_tech_b:1>:<liquid:molten_nial>,
<rockhounding_chemistry:alloy_items_tech_b:4>:<liquid:molten_inconel>,
<nuclearcraft:alloy:12>:<liquid:molten_zircaloy>,
<tcomplement:edibles:30>:<liquid:chocolate_liquor>,
} as ILiquidStack[IItemStack];

for item, liquid in ingotstoformmap {
	IngotFormer.addRecipe(liquid * 144, item);
}

// Blood
IngotFormer.addRecipe(<liquid:blood> * 160, <tconstruct:edible:3>);

// Seared Stone
IngotFormer.addRecipe(<liquid:stone> * 72, <tconstruct:materials>);

// Clear Glass
IngotFormer.addRecipe(<liquid:glass> * 1000, <tconstruct:clear_glass>);


// Melter Recipe Compat //
// For recipes in the Magma Crucible but not in the Melter

// Essence of Knowledge
Melter.addRecipe(<actuallyadditions:item_solidified_experience>, <liquid:experience> * 160, 0.5);

// Biocrude
Melter.addRecipe(<thermalfoundation:material:816>, <liquid:biocrude> * 100);
Melter.addRecipe(<thermalfoundation:material:817>, <liquid:biocrude> * 150);
Melter.addRecipe(<thermalfoundation:material:818>, <liquid:biocrude> * 100);
Melter.addRecipe(<thermalfoundation:material:819>, <liquid:biocrude> * 150);

// Dawnstone
Melter.addRecipe(<embers:nugget_dawnstone>, <liquid:dawnstone> * 16, 0.11);
Melter.addRecipe(<embers:ingot_dawnstone>, <liquid:dawnstone> * 144);
Melter.addRecipe(<embers:block_dawnstone>, <liquid:dawnstone> * 1296, 9.0);



// Magma Crucible Recipe Compat //
// For recipes in the Melter but not in the Magma Crucible

// Nugget, Ingot and Block Melting Recipes
val fluidstomeltinto = [
<liquid:electrical_steel>,
<liquid:energetic_alloy>,
<liquid:vibrant_alloy>,
<liquid:redstone_alloy>,
<liquid:conductive_iron>,
<liquid:pulsating_iron>,
<liquid:dark_steel>,
<liquid:soularium>,
<liquid:end_steel>,
<liquid:construction_alloy>,
<liquid:crude_steel>,
<liquid:crystalline_alloy>,
<liquid:melodic_alloy>,
<liquid:stellar_alloy>,
<liquid:crystalline_pink_slime>,
<liquid:energetic_silver>,
<liquid:vivid_alloy>,
<liquid:inferium>,
<liquid:prudentium>,
<liquid:intermedium>,
<liquid:superium>,
<liquid:supremium>,
<liquid:brass>,
<liquid:zinc>,
<liquid:kanthal>,
<liquid:manasteel>,
<liquid:elementium>,
<liquid:terrasteel>,
<liquid:refinedglowstone>,
<liquid:refinedobsidian>,
] as ILiquidStack[];

val nuggetstomelt = [
<enderio:item_alloy_nugget>,
<enderio:item_alloy_nugget:1>,
<enderio:item_alloy_nugget:2>,
<enderio:item_alloy_nugget:3>,
<enderio:item_alloy_nugget:4>,
<enderio:item_alloy_nugget:5>,
<enderio:item_alloy_nugget:6>,
<enderio:item_alloy_nugget:7>,
<enderio:item_alloy_nugget:8>,
<enderio:item_alloy_nugget:9>,
<enderio:item_alloy_endergy_nugget>,
<enderio:item_alloy_endergy_nugget:1>,
<enderio:item_alloy_endergy_nugget:2>,
<enderio:item_alloy_endergy_nugget:3>,
<enderio:item_alloy_endergy_nugget:4>,
<enderio:item_alloy_endergy_nugget:5>,
<enderio:item_alloy_endergy_nugget:6>,
<mysticalagriculture:crafting:40>,
<mysticalagriculture:crafting:41>,
<mysticalagriculture:crafting:42>,
<mysticalagriculture:crafting:43>,
<mysticalagriculture:crafting:44>,
<techreborn:nuggets:1>,
<techreborn:nuggets:18>,
<contenttweaker:material_part:4>,
<botania:manaresource:17>,
<botania:manaresource:19>,
<botania:manaresource:18>,
<mekanism:nugget:3>,
<mekanism:nugget>,
] as IItemStack[];

val ingotstomelt = [
<enderio:item_alloy_ingot>,
<enderio:item_alloy_ingot:1>,
<enderio:item_alloy_ingot:2>,
<enderio:item_alloy_ingot:3>,
<enderio:item_alloy_ingot:4>,
<enderio:item_alloy_ingot:5>,
<enderio:item_alloy_ingot:6>,
<enderio:item_alloy_ingot:7>,
<enderio:item_alloy_ingot:8>,
<enderio:item_alloy_ingot:9>,
<enderio:item_alloy_endergy_ingot>,
<enderio:item_alloy_endergy_ingot:1>,
<enderio:item_alloy_endergy_ingot:2>,
<enderio:item_alloy_endergy_ingot:3>,
<enderio:item_alloy_endergy_ingot:4>,
<enderio:item_alloy_endergy_ingot:5>,
<enderio:item_alloy_endergy_ingot:6>,
<mysticalagriculture:ingot_storage:1>,
<mysticalagriculture:ingot_storage:2>,
<mysticalagriculture:ingot_storage:3>,
<mysticalagriculture:ingot_storage:4>,
<mysticalagriculture:ingot_storage:5>,
<techreborn:ingot:1>,
<techreborn:ingot:18>,
<contenttweaker:material_part:5>,
<botania:manaresource>,
<botania:manaresource:7>,
<botania:manaresource:4>,
<mekanism:ingot:3>,
<mekanism:ingot>,
] as IItemStack[];

val blockstomelt = [
<enderio:block_alloy>,
<enderio:block_alloy:1>,
<enderio:block_alloy:2>,
<enderio:block_alloy:3>,
<enderio:block_alloy:4>,
<enderio:block_alloy:5>,
<enderio:block_alloy:6>,
<enderio:block_alloy:7>,
<enderio:block_alloy:8>,
<enderio:block_alloy:9>,
<enderio:block_alloy_endergy>,
<enderio:block_alloy_endergy:1>,
<enderio:block_alloy_endergy:2>,
<enderio:block_alloy_endergy:3>,
<enderio:block_alloy_endergy:4>,
<enderio:block_alloy_endergy:5>,
<enderio:block_alloy_endergy:6>,
<mysticalagriculture:crafting:33>,
<mysticalagriculture:crafting:34>,
<mysticalagriculture:crafting:35>,
<mysticalagriculture:crafting:36>,
<mysticalagriculture:crafting:37>,
<techreborn:storage:5>,
<techreborn:storage:8>,
<contenttweaker:sub_block_holder_0:5>,
<botania:storage>,
<botania:storage:2>,
<botania:storage:1>,
<mekanism:basicblock:4>,
<mekanism:basicblock:2>,
] as IItemStack[];

for i, fluid in fluidstomeltinto {
	Crucible.addRecipe(fluid * 16, nuggetstomelt[i], 500);
	Crucible.addRecipe(fluid * 144, ingotstomelt[i], 4000);
	Crucible.addRecipe(fluid * 1296, blockstomelt[i], 32000);
}

// Other Melting Recipes
val meltingMap as ILiquidStack[IItemStack] = {
<minecraft:dirt>:<liquid:dirt>,
<minecraft:clay_ball>:<liquid:clay>,
<minecraft:brick>:<liquid:clay>,
<nuclearcraft:ingot:11>:<liquid:manganese>,
<techreborn:dust:31>:<liquid:manganese>,
<minecraft:prismarine_shard>:<liquid:prismarine>,
<minecraft:prismarine_crystals>:<liquid:prismarine>,
<techreborn:dust:6>:<liquid:brass>,
<techreborn:dust:59>:<liquid:zinc>,
<contenttweaker:material_part:7>:<liquid:kanthal>,
<enderio:item_material:74>:<liquid:soularium>,
<nuclearcraft:gem:6>:<liquid:silicon>,
<nuclearcraft:alloy:2>:<liquid:hard_carbon>,
<nuclearcraft:ingot:15>:<liquid:manganese_dioxide>,
<nuclearcraft:dust:15>:<liquid:manganese_dioxide>,
<nuclearcraft:compound:11>:<liquid:alugentum>,
<nuclearcraft:alloy:9>:<liquid:lead_platinum>,
<nuclearcraft:dust:10>:<liquid:zirconium>,
<nuclearcraft:ingot:10>:<liquid:zirconium>,
<rockhounding_chemistry:chemical_dusts:44>:<liquid:sodium>,
<qmd:ingot:11>:<liquid:sodium>,
<rockhounding_chemistry:chemical_dusts:41>:<liquid:potassium>,
<qmd:ingot:12>:<liquid:potassium>,
<nuclearcraft:fission_dust:6>:<liquid:molybdenum>,
<rockhounding_chemistry:metal_items:12>:<liquid:molybdenum>,
<rockhounding_chemistry:chemical_dusts:37>:<liquid:niobium>,
<qmd:ingot:1>:<liquid:niobium>,
<qmd:dust:6>:<liquid:hafnium>,
<qmd:ingot:6>:<liquid:hafnium>,
<rockhounding_chemistry:chemical_dusts:23>:<liquid:calcium>,
<qmd:ingot:13>:<liquid:calcium>,
<qmd:dust:14>:<liquid:strontium>,
<qmd:ingot:14>:<liquid:strontium>,
<rockhounding_chemistry:chemical_dusts:15>:<liquid:yttrium>,
<qmd:ingot2>:<liquid:yttrium>,
<rockhounding_chemistry:chemical_dusts:8>:<liquid:neodymium>,
<qmd:ingot2:1>:<liquid:neodymium>,
<nuclearcraft:fission_dust:5>:<liquid:strontium_90>,
<nuclearcraft:fission_dust:7>:<liquid:ruthenium_106>,
<nuclearcraft:fission_dust:8>:<liquid:caesium_137>,
<nuclearcraft:fission_dust:9>:<liquid:promethium_147>,
<qmd:dust2:2>:<liquid:iodine>,
<rockhounding_chemistry:chemical_dusts:10>:<liquid:samarium>,
<rockhounding_chemistry:chemical_dusts:12>:<liquid:terbium>,
<rockhounding_chemistry:chemical_dusts:2>:<liquid:erbium>,
<rockhounding_chemistry:chemical_dusts:14>:<liquid:ytterbium>,
<nuclearcraft:fission_dust>:<liquid:bismuth>,
<nuclearcraft:fission_dust:2>:<liquid:polonium>,
<nuclearcraft:fission_dust:1>:<liquid:radium>,
<nuclearcraft:fission_dust:10>:<liquid:europium_155>,
<nuclearcraft:uranium>:<liquid:uranium_233>,
<nuclearcraft:uranium:5>:<liquid:uranium_235>,
<nuclearcraft:uranium:10>:<liquid:uranium_238>,
<nuclearcraft:neptunium>:<liquid:neptunium_236>,
<nuclearcraft:neptunium:5>:<liquid:neptunium_237>,
<nuclearcraft:plutonium>:<liquid:plutonium_238>,
<nuclearcraft:plutonium:5>:<liquid:plutonium_239>,
<nuclearcraft:plutonium:10>:<liquid:plutonium_241>,
<nuclearcraft:plutonium:15>:<liquid:plutonium_242>,
<nuclearcraft:californium>:<liquid:californium_249>,
<nuclearcraft:californium:5>:<liquid:californium_250>,
<nuclearcraft:californium:10>:<liquid:californium_251>,
<nuclearcraft:californium:15>:<liquid:californium_252>,
<nuclearcraft:americium>:<liquid:americium_241>,
<nuclearcraft:americium:5>:<liquid:americium_242>,
<nuclearcraft:americium:10>:<liquid:americium_243>,
<nuclearcraft:curium>:<liquid:curium_243>,
<nuclearcraft:curium:5>:<liquid:curium_245>,
<nuclearcraft:curium:10>:<liquid:curium_246>,
<nuclearcraft:curium:15>:<liquid:curium_247>,
<nuclearcraft:berkelium>:<liquid:berkelium_247>,
<nuclearcraft:berkelium:5>:<liquid:berkelium_248>,
<nuclearcraft:pellet_thorium>:<liquid:tbu>,
<nuclearcraft:pellet_uranium>:<liquid:leu_233>,
<nuclearcraft:pellet_uranium:2>:<liquid:heu_233>,
<nuclearcraft:pellet_uranium:4>:<liquid:leu_235>,
<nuclearcraft:pellet_uranium:6>:<liquid:heu_235>,
<nuclearcraft:pellet_neptunium>:<liquid:len_236>,
<nuclearcraft:pellet_neptunium:2>:<liquid:hen_236>,
<nuclearcraft:pellet_plutonium>:<liquid:lep_239>,
<nuclearcraft:pellet_plutonium:2>:<liquid:hep_239>,
<nuclearcraft:pellet_plutonium:4>:<liquid:lep_241>,
<nuclearcraft:pellet_plutonium:6>:<liquid:hep_241>,
<nuclearcraft:pellet_mixed>:<liquid:mix_239>,
<nuclearcraft:pellet_mixed:2>:<liquid:mix_241>,
<nuclearcraft:pellet_americium>:<liquid:lea_242>,
<nuclearcraft:pellet_americium:2>:<liquid:hea_242>,
<nuclearcraft:pellet_curium>:<liquid:lecm_243>,
<nuclearcraft:pellet_curium:2>:<liquid:hecm_243>,
<nuclearcraft:pellet_curium:4>:<liquid:lecm_245>,
<nuclearcraft:pellet_curium:6>:<liquid:hecm_245>,
<nuclearcraft:pellet_curium:8>:<liquid:lecm_247>,
<nuclearcraft:pellet_curium:10>:<liquid:hecm_247>,
<nuclearcraft:pellet_berkelium>:<liquid:leb_248>,
<nuclearcraft:pellet_berkelium:2>:<liquid:heb_248>,
<nuclearcraft:pellet_californium>:<liquid:lecf_249>,
<nuclearcraft:pellet_californium:2>:<liquid:hecf_249>,
<nuclearcraft:pellet_californium:4>:<liquid:lecf_251>,
<nuclearcraft:pellet_californium:6>:<liquid:hecf_251>,
} as ILiquidStack[IItemStack];

for item, liquid in meltingMap {
	Crucible.addRecipe(liquid * 144, item, 4000);
}

val gemmeltingMap as ILiquidStack[IItemStack] = {
<thermalfoundation:material:771>:<liquid:sulfur>,
<nuclearcraft:compound:5>:<liquid:naoh>,
<nuclearcraft:compound:6>:<liquid:koh>,
<nuclearcraft:gem_dust:10>:<liquid:arsenic>,
<nuclearcraft:gem:5>:<liquid:bas>,
<nuclearcraft:gem_dust:5>:<liquid:fluorite>,
<nuclearcraft:gem:2>:<liquid:fluorite>,
<nuclearcraft:gem_dust:8>:<liquid:villiaumite>,
<nuclearcraft:gem:3>:<liquid:villiaumite>,
<nuclearcraft:gem_dust:9>:<liquid:carobbiite>,
<nuclearcraft:gem:4>:<liquid:carobbiite>,
} as ILiquidStack[IItemStack];

for item, liquid in gemmeltingMap {
	Crucible.addRecipe(liquid * 666, item, 4000);
}

val smoremeltingMap as ILiquidStack[IItemStack] = {
<nuclearcraft:ground_cocoa_nibs>:<liquid:chocolate_liquor>,
<nuclearcraft:cocoa_butter>:<liquid:cocoa_butter>,
<nuclearcraft:milk_chocolate>:<liquid:milk_chocolate>,
<nuclearcraft:unsweetened_chocolate>:<liquid:unsweetened_chocolate>,
} as ILiquidStack[IItemStack];

for item, liquid in smoremeltingMap {
	Crucible.addRecipe(liquid * 144, item, 500);
}

// Alchemical Brass to Molten Brass
Crucible.addRecipe(<liquid:brass> * 144, <thaumcraft:ingot:2>, 4000);
Crucible.addRecipe(<liquid:brass> * 1296, <thaumcraft:metal_brass>, 32000);

// Manganese Block to Molten Manganeses
Crucible.addRecipe(<liquid:manganese> * 1296, <nuclearcraft:ingot_block:11>, 32000);

// Liquid Clay
Crucible.addRecipe(<liquid:clay> * 576, <minecraft:clay>, 16000);
Crucible.addRecipe(<liquid:clay> * 576, <minecraft:brick_block>, 16000);
Crucible.addRecipe(<liquid:clay> * 576, <minecraft:hardened_clay>, 16000);

// Molten Glass
Crucible.addRecipe(<liquid:glass> * 1000, <minecraft:sand>, 10000);
Crucible.addRecipe(<liquid:glass> * 1000, <minecraft:sand:1>, 10000);

val glassMelting = <ore:blockGlass>;

for item in glassMelting.items{
Crucible.addRecipe(<liquid:glass> * 1000, item, 10000);
}

// Molten Obsidian
Crucible.addRecipe(<liquid:obsidian> * 72, <thermalfoundation:material:770>, 4000);

// Molten Nether Brick
Crucible.addRecipe(<liquid:nether_brick> * 72, <minecraft:netherrack>, 3000);
Crucible.addRecipe(<liquid:nether_brick> * 72, <minecraft:netherbrick>, 3000);
Crucible.addRecipe(<liquid:nether_brick> * 288, <minecraft:nether_brick>, 12000);

// Molten Slime
Crucible.addRecipe(<liquid:slime> * 144, <minecraft:slime_ball>, 2000);
Crucible.addRecipe(<liquid:slime> * 576, <tconstruct:slime_congealed>, 8000);
Crucible.addRecipe(<liquid:slime> * 1296, <minecraft:slime>, 18000);

// Molten End Stone
Crucible.addRecipe(<liquid:end_stone> * 72, <techreborn:dust:21>, 4000);
Crucible.addRecipe(<liquid:end_stone> * 288, <minecraft:end_stone>, 16000);
Crucible.addRecipe(<liquid:end_stone> * 288, <minecraft:end_bricks>, 16000);

// Molten Purpur
Crucible.addRecipe(<liquid:purpur> * 72, <minecraft:chorus_fruit_popped>, 3000);
Crucible.addRecipe(<liquid:purpur> * 288, <minecraft:purpur_block>, 12000);

// Molten Quartz
Crucible.addRecipe(<liquid:quartz> * 74, <thaumcraft:nugget:9>, 500);
Crucible.addRecipe(<liquid:quartz> * 666, <minecraft:quartz>, 4000);
Crucible.addRecipe(<liquid:quartz> * 2664, <minecraft:quartz_block>, 16000);

// Molten Lapis
Crucible.addRecipe(<liquid:lapis> * 666, <minecraft:dye:4>, 4000);
Crucible.addRecipe(<liquid:lapis> * 5994, <minecraft:lapis_block>, 32000);

// Molten Diamond
Crucible.addRecipe(<liquid:diamond> * 74, <thermalfoundation:material:16>, 500);
Crucible.addRecipe(<liquid:diamond> * 666, <minecraft:diamond>, 4000);
Crucible.addRecipe(<liquid:diamond> * 5994, <minecraft:diamond_block>, 32000);

// Molten Emerald
Crucible.addRecipe(<liquid:emerald> * 74, <thermalfoundation:material:17>, 500);
Crucible.addRecipe(<liquid:emerald> * 666, <minecraft:emerald>, 4000);
Crucible.addRecipe(<liquid:emerald> * 5994, <minecraft:emerald_block>, 32000);

// Brine
Crucible.addRecipe(<liquid:brine> * 15, <mekanism:salt>, 500);

// Molten Sugar
Crucible.addRecipe(<liquid:sugar> * 144, <minecraft:sugar>, 1000);

// Gelatin
Crucible.addRecipe(<liquid:gelatin> * 144, <nuclearcraft:gelatin>, 1000);

// Liquid Marshmallow
Crucible.addRecipe(<liquid:marshmallow> * 144, <nuclearcraft:marshmallow>, 1000);

// Strontium-90 Block to Molten Strontium
Crucible.addRecipe(<liquid:strontium_90> * 1296, <qmd:strontium_90_block>, 32000);



// Magma Crucible & Melter Recipe Compat //
// For recipes in the TiC Melter, but not in the NC Melter or Magma Crucible

// Nugget, Ingot and Block Melting Recipes
val fluidstomeltintotwo = [
<liquid:base_essence>,
<liquid:pigiron>,
<liquid:knightslime>,
<liquid:alumite>,
<liquid:osgloglas>,
<liquid:osmiridium>,
<liquid:mirion>,
<liquid:thaumium>,
<liquid:alubrass>,
<liquid:soulium>,
<liquid:refined_iron>,
] as ILiquidStack[];

val nuggetstomelttwo = [
<mysticalagriculture:crafting:39>,
<tconstruct:nuggets:4>,
<tconstruct:nuggets:3>,
<plustic:alumitenugget>,
<plustic:osgloglasnugget>,
<plustic:osmiridiumnugget>,
<plustic:mirionnugget>,
<thaumcraft:nugget:6>,
<tconstruct:nuggets:5>,
<mysticalagriculture:crafting:45>,
<techreborn:nuggets:19>,
] as IItemStack[];

val ingotstomelttwo = [
<mysticalagriculture:crafting:32>,
<tconstruct:ingots:4>,
<tconstruct:ingots:3>,
<plustic:alumiteingot>,
<plustic:osgloglasingot>,
<plustic:osmiridiumingot>,
<plustic:mirioningot>,
<thaumcraft:ingot>,
<tconstruct:ingots:5>,
<mysticalagriculture:crafting:38>,
<techreborn:ingot:19>,
] as IItemStack[];

val blockstomelttwo = [
<mysticalagriculture:ingot_storage>,
<tconstruct:metal:4>,
<tconstruct:metal:3>,
<plustic:alumiteblock>,
<plustic:osgloglasblock>,
<plustic:osmiridiumblock>,
<plustic:mirionblock>,
<thaumcraft:metal_thaumium>,
<tconstruct:metal:5>,
<mysticalagriculture:ingot_storage:6>,
<techreborn:storage2:10>,
] as IItemStack[];

for i, fluid in fluidstomeltintotwo {
Crucible.addRecipe(fluid * 16, nuggetstomelttwo[i], 500);
Crucible.addRecipe(fluid * 144, ingotstomelttwo[i], 4000);
Crucible.addRecipe(fluid * 1296, blockstomelttwo[i], 32000);
Melter.addRecipe(nuggetstomelttwo[i], fluid * 16, 0.11);
Melter.addRecipe(ingotstomelttwo[i], fluid * 144);
Melter.addRecipe(blockstomelttwo[i], fluid * 1296, 9.0);
}


// Nugget, Ingot, Dust and Block Melting Recipes
val fluidstomeltintothree = [
<liquid:molten_vanasteel>,
<liquid:molten_cunife>,
<liquid:molten_inconel>,
<liquid:molten_corten>,
<liquid:molten_zircaloy>,
<liquid:molten_stellite>,
<liquid:molten_nimonic>,
<liquid:molten_nial>,
<liquid:molten_pewter>,
<liquid:molten_scal>,
<liquid:molten_tantaloy>,
<liquid:molten_cupronickel>,
<liquid:molten_bam>,
<liquid:molten_cube>,
<liquid:molten_nichrome>,
<liquid:molten_hydronalium>,
<liquid:molten_hastelloy>,
] as ILiquidStack[];

val nuggetstomeltthree = [
<rockhounding_chemistry:alloy_items_tech:41>,
<rockhounding_chemistry:alloy_items_tech:26>,
<rockhounding_chemistry:alloy_items_tech_b:5>,
<rockhounding_chemistry:alloy_items_deco:23>,
<rockhounding_chemistry:alloy_items_tech_b:8>,
<rockhounding_chemistry:alloy_items_tech:11>,
<rockhounding_chemistry:alloy_items_tech:17>,
<rockhounding_chemistry:alloy_items_tech_b:2>,
<rockhounding_chemistry:alloy_items_deco:20>,
<rockhounding_chemistry:alloy_items_tech:5>,
<rockhounding_chemistry:alloy_items_tech:47>,
<rockhounding_chemistry:alloy_items_tech:14>,
<rockhounding_chemistry:alloy_items_tech:8>,
<rockhounding_chemistry:alloy_items_tech:2>,
<rockhounding_chemistry:alloy_items_tech:23>,
<rockhounding_chemistry:alloy_items_tech:38>,
<rockhounding_chemistry:alloy_items_tech:20>,
] as IItemStack[];

val ingotstomeltthree = [
<rockhounding_chemistry:alloy_items_tech:40>,
<rockhounding_chemistry:alloy_items_tech:25>,
<rockhounding_chemistry:alloy_items_tech_b:4>,
<rockhounding_chemistry:alloy_items_deco:22>,
<nuclearcraft:alloy:12>,
<rockhounding_chemistry:alloy_items_tech:10>,
<rockhounding_chemistry:alloy_items_tech:16>,
<rockhounding_chemistry:alloy_items_tech_b:1>,
<rockhounding_chemistry:alloy_items_deco:19>,
<rockhounding_chemistry:alloy_items_tech:4>,
<rockhounding_chemistry:alloy_items_tech:45>,
<rockhounding_chemistry:alloy_items_tech:12>,
<rockhounding_chemistry:alloy_items_tech:6>,
<rockhounding_chemistry:alloy_items_tech>,
<rockhounding_chemistry:alloy_items_tech:21>,
<rockhounding_chemistry:alloy_items_tech:36>,
<rockhounding_chemistry:alloy_items_tech:18>,
] as IItemStack[];

val duststomeltthree = [
<rockhounding_chemistry:alloy_items_tech:39>,
<rockhounding_chemistry:alloy_items_tech:24>,
<rockhounding_chemistry:alloy_items_tech_b:3>,
<rockhounding_chemistry:alloy_items_deco:21>,
<rockhounding_chemistry:alloy_items_tech_b:6>,
<rockhounding_chemistry:alloy_items_tech:9>,
<rockhounding_chemistry:alloy_items_tech:15>,
<rockhounding_chemistry:alloy_items_tech_b>,
<rockhounding_chemistry:alloy_items_deco:18>,
<rockhounding_chemistry:alloy_items_tech:3>,
<rockhounding_chemistry:alloy_items_tech:46>,
<rockhounding_chemistry:alloy_items_tech:13>,
<rockhounding_chemistry:alloy_items_tech:7>,
<rockhounding_chemistry:alloy_items_tech:1>,
<rockhounding_chemistry:alloy_items_tech:22>,
<rockhounding_chemistry:alloy_items_tech:37>,
<rockhounding_chemistry:alloy_items_tech:19>,
] as IItemStack[];

val blockstomeltthree = [
<rockhounding_chemistry:alloy_blocks_tech:13>,
<rockhounding_chemistry:alloy_blocks_tech:8>,
<rockhounding_chemistry:alloy_blocks_tech_b:1>,
<rockhounding_chemistry:alloy_blocks_deco:7>,
<rockhounding_chemistry:alloy_blocks_tech_b:2>,
<rockhounding_chemistry:alloy_blocks_tech:3>,
<rockhounding_chemistry:alloy_blocks_tech:5>,
<rockhounding_chemistry:alloy_blocks_tech_b>,
<rockhounding_chemistry:alloy_blocks_deco:6>,
<rockhounding_chemistry:alloy_blocks_tech:1>,
<rockhounding_chemistry:alloy_blocks_tech:15>,
<rockhounding_chemistry:alloy_blocks_tech:4>,
<rockhounding_chemistry:alloy_blocks_tech:2>,
<rockhounding_chemistry:alloy_blocks_tech>,
<rockhounding_chemistry:alloy_blocks_tech:7>,
<rockhounding_chemistry:alloy_blocks_tech:12>,
<rockhounding_chemistry:alloy_blocks_tech:6>,
] as IItemStack[];

for i, fluid in fluidstomeltintothree {
Crucible.addRecipe(fluid * 16, nuggetstomeltthree[i], 500);
Crucible.addRecipe(fluid * 144, ingotstomeltthree[i], 4000);
Crucible.addRecipe(fluid * 144, duststomeltthree[i], 4000);
Crucible.addRecipe(fluid * 1296, blockstomeltthree[i], 32000);
Melter.addRecipe(nuggetstomeltthree[i], fluid * 16, 0.11);
Melter.addRecipe(ingotstomeltthree[i], fluid * 144);
Melter.addRecipe(duststomeltthree[i], fluid * 144);
Melter.addRecipe(blockstomeltthree[i], fluid * 1296, 9.0);
}



// Ingot and Block Melting Recipes
val fluidstomeltintofour = [
<liquid:inert_metal>,
<liquid:fierymetal>,
<liquid:knightmetal>,
<liquid:dragonsteel_ice>,
<liquid:dragonsteel_fire>,
<liquid:molten_blood_infused_iron>,
<liquid:bloodbronze>,
<liquid:stainless_steel>,
<liquid:tin_silver>
] as ILiquidStack[];

val ingotstomeltfour = [
<contenttweaker:inert_ingot>,
<twilightforest:fiery_ingot>,
<twilightforest:knightmetal_ingot>,
<iceandfire:dragonsteel_ice_ingot>,
<iceandfire:dragonsteel_fire_ingot>,
<bloodarsenal:base_item:4>,
<bloodtinker:blood_bronze_ingot>,
<qmd:ingot_alloy:2>,
<nuclearcraft:alloy:8>,
] as IItemStack[];

val blockstomeltfour = [
<contenttweaker:sub_block_holder_0:2>,
<twilightforest:block_storage:1>,
<twilightforest:knightmetal_block>,
<iceandfire:dragonsteel_ice_block>,
<iceandfire:dragonsteel_fire_block>,
<bloodarsenal:blood_infused_iron_block>,
<bloodtinker:blood_bronze_block>,
<jaopca:block_blockstainlesssteel>,
<jaopca:block_blocktinsilver>,
] as IItemStack[];

for i, fluid in fluidstomeltintofour {
Crucible.addRecipe(fluid * 144, ingotstomeltfour[i], 4000);
Crucible.addRecipe(fluid * 1296, blockstomeltfour[i], 32000);
Melter.addRecipe(ingotstomeltfour[i], fluid * 144);
Melter.addRecipe(blockstomeltfour[i], fluid * 1296, 9.0);
}

// Blood
Melter.addRecipe(<minecraft:rotten_flesh>, <liquid:blood> * 40, 0.5);
Crucible.addRecipe(<liquid:blood> * 40, <minecraft:rotten_flesh>, 2000);

// Molten Ferroboron
Crucible.addRecipe(<liquid:ferroboron> * 144, <nuclearcraft:alloy:6>, 4000);
Melter.addRecipe(<nuclearcraft:alloy:6>, <liquid:ferroboron> * 144);

// Molten Tough Alloy
Crucible.addRecipe(<liquid:tough> * 144, <nuclearcraft:alloy:1>, 4000);
Melter.addRecipe(<nuclearcraft:alloy:1>, <liquid:tough> * 144);

// Molten Vanadium
Crucible.addRecipe(<liquid:molten_vanadium> * 144, <rockhounding_chemistry:chemical_dusts:52>, 4000);
Crucible.addRecipe(<liquid:molten_vanadium> * 144, <rockhounding_chemistry:metal_items>, 4000);
Melter.addRecipe(<rockhounding_chemistry:chemical_dusts:52>, <liquid:molten_vanadium> * 144);
Melter.addRecipe(<rockhounding_chemistry:metal_items>, <liquid:molten_vanadium> * 144);

// Molten Ultimate
mods.tconstruct.Melting.removeRecipe(<liquid:ultimate>);
Crucible.addRecipe(<liquid:ultimate> * 16, <extendedcrafting:material:33>, 30000);
Crucible.addRecipe(<liquid:ultimate> * 144, <extendedcrafting:material:32>, 200000);
Crucible.addRecipe(<liquid:ultimate> * 1296, <extendedcrafting:storage:4>, 1800000);
Melter.addRecipe(<extendedcrafting:material:33>, <liquid:ultimate> * 16, 0.11, 8.0);
Melter.addRecipe(<extendedcrafting:material:32>, <liquid:ultimate> * 144, 1.0, 8.0);
Melter.addRecipe(<extendedcrafting:storage:4>, <liquid:ultimate> * 1296, 9.0, 8.0);

// Molten Infinity
mods.tconstruct.Melting.removeRecipe(<liquid:infinity>);
Crucible.addRecipe(<liquid:infinity> * 144, <avaritia:resource:6>, 400000);
Crucible.addRecipe(<liquid:infinity> * 1296, <avaritia:block_resource:1>, 3600000);
Melter.addRecipe(<avaritia:resource:6>, <liquid:infinity> * 144, 1.0, 16.0);
Melter.addRecipe(<avaritia:block_resource:1>, <liquid:infinity> * 1296, 9.0, 16.0);





// --==Silicon Unification==-- //

// Unifying all silicon variants
furnace.remove(<libvulpes:productingot:3>);
furnace.addRecipe(<nuclearcraft:gem:6>, <ore:dustSilicon>);

Manufactory.removeRecipeWithInput(<minecraft:sand>);
Manufactory.removeRecipeWithInput(<libvulpes:productingot:3>);
Manufactory.addRecipe(<minecraft:sand>, <nuclearcraft:gem:6>);

IngotFormer.removeRecipeWithOutput(<libvulpes:productingot:3>);
IngotFormer.addRecipe(<liquid:silicon> * 144, <nuclearcraft:gem:6>);

ArcFurnace.removeRecipe(<libvulpes:productingot:3>);
ArcFurnace.addRecipe(<nuclearcraft:gem:6>, <ore:dustSilicon>, null, 100, 512);

removeAndHide(<libvulpes:productingot:3>);
removeAndHide(<appliedenergistics2:material:5>);
removeAndHide(<enderio:item_material:5>);

furnace.remove(<appliedenergistics2:material:5>);
furnace.addRecipe(<nuclearcraft:gem:6>, <nuclearcraft:gem_dust:2>);
furnace.addRecipe(<nuclearcraft:gem:6>, <appliedenergistics2:material:2>);

InductionSmelter.removeRecipe(<minecraft:sand>, <techreborn:plates:11>);
InductionSmelter.removeRecipe(<minecraft:sand>, <rockhounding_chemistry:chemical_dusts:42>);

Crusher.removeRecipesForInput(<libvulpes:productingot:3>);
Pulverizer.removeRecipe(<libvulpes:productingot:3>);
Pulverizer.addRecipe(<rockhounding_chemistry:chemical_dusts:42>, <nuclearcraft:gem:6>, 2000);

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
Manufactory.removeRecipeWithInput(<qmd:semiconductor:2>);
Manufactory.addRecipe(<ore:bouleSilicon>, <advancedrocketry:wafer>*4);

FissionIrradiator.removeRecipeWithInput(<qmd:semiconductor:3>);
FissionIrradiator.addRecipe(<ore:waferSilicon>, <qmd:semiconductor:1>, 120000, 0, 0, 0);

target_chamber.removeRecipeWithInput(<qmd:semiconductor:3>, ((<particle:boron_ion>*120000)^600)~2.0);
target_chamber.addRecipe(<ore:waferSilicon>, ((<particle:boron_ion>*120000)^600)~2.0, <qmd:semiconductor>, 
null, null, null, 
1000, 1.0, 0, 0);

removeAndHide(<qmd:semiconductor:3>);

Crystallizer.removeRecipeWithOutput(<qmd:semiconductor:2>);
Crystallizer.addRecipe(<liquid:silicon> * 576, <qmd:semiconductor:2>);

// --=Cinnabar, Quicksilver & Mercury Unification ==-- //

// Cinnabar //

// Removing Small Cinnabar
removeAndHide(<techreborn:smalldust:11>);
recipes.remove(<techreborn:dust:11>);

// Adding a temporary cinnabar dust to cinnabar recipe (can be removed when cinnabar ore has been changed to drop TE cinnabar)
furnace.addRecipe(<thermalfoundation:material:866>, <techreborn:dust:11>);

RedstoneFurnace.removeRecipe(<techreborn:dust:11>);
RedstoneFurnace.addRecipe(<thermalfoundation:material:866>, <techreborn:dust:11>, 2000);

// Removing cinnabar electrolysis (has inconsistent mercury ratios)
mods.techreborn.industrialElectrolyzer.removeInputRecipe(<techreborn:dust:11>);

// Adding TE cinnabar to quicksilver smelting
furnace.addRecipe(<thaumcraft:quicksilver>, <thermalfoundation:material:866>);

/* Quicksilver to Cinnabar pulverisation
Crusher.addRecipe(<thermalfoundation:material:866>, <ore:quicksilver>, 2048);
Manufactory.addRecipe(<ore:quicksilver>, <thermalfoundation:material:866>);
Pulverizer.addRecipe(<thermalfoundation:material:866>, <thaumcraft:quicksilver>, 2000);
crusher.addRecipe(<ore:quicksilver>, <thermalfoundation:material:866>);
SagMill.addRecipe([<thermalfoundation:material:866>], [1] , <ore:quicksilver>, "NONE");
*/

// Quicksilver/Mercury //

// 1 Quicksilver ⇌ 144mb Mercury
Crucible.addRecipe(<liquid:mercury> * 144, <thaumcraft:quicksilver>, 4000);
Crucible.addRecipe(<liquid:mercury> * 144, <thermalfoundation:material:866>, 4000);

Melter.removeRecipeWithInput(<qmd:ingot2:2>);

Melter.addRecipe(<thaumcraft:quicksilver>, <liquid:mercury> * 144);
Melter.addRecipe(<ore:dustCinnabar>, <liquid:mercury> * 144);

IngotFormer.removeRecipeWithOutput(<qmd:ingot2:2>);
IngotFormer.addRecipe(<liquid:mercury> * 144, <thaumcraft:quicksilver>);

// Replacing Mercury with Quicksilver //

// New Ore Leacher Recipes
ore_leacher.removeRecipeWithOutput(<minecraft:redstone> * 12, <qmd:ingot2:2> * 3, null);
ore_leacher.removeRecipeWithOutput(<qmd:ingot2:2>, <thermalfoundation:material:771>, null);

ore_leacher.addRecipe(<ore:oreRedstone>, <liquid:nitric_acid>*16, <liquid:hydrochloric_acid>*16, <liquid:sulfuric_acid>*16, <minecraft:redstone>*12, <thaumcraft:quicksilver>*3, null, 1.0, 1.0, 0);
ore_leacher.addRecipe(<ore:dustRedstone>, <liquid:nitric_acid>*16, <liquid:hydrochloric_acid>*16, <liquid:sulfuric_acid>*16, 
ChanceItemIngredient.create(<thaumcraft:quicksilver>, 50, 0), 
ChanceItemIngredient.create(<thermalfoundation:material:771>, 50, 0), 
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
ChanceItemIngredient.create(<nuclearcraft:fission_dust:1>, 9, 0), 
ChanceItemIngredient.create(<nuclearcraft:fission_dust:2>, 15, 0), 
ChanceItemIngredient.create(<rockhounding_chemistry:chemical_dusts:20>, 40, 0), 
ChanceItemIngredient.create(<thermalfoundation:material:67>, 35, 0), 
ChanceItemIngredient.create(<thaumcraft:quicksilver>, 1, 0), 
null, 
null, 
null);

mods.nuclearcraft.FuelReprocessor.addRecipe(<qmd:waste_spallation:2>, 
ChanceItemIngredient.create(<nuclearcraft:fission_dust:1>, 13, 0), 
ChanceItemIngredient.create(<nuclearcraft:fission_dust:2>, 17, 0), 
ChanceItemIngredient.create(<rockhounding_chemistry:chemical_dusts:20>, 16, 0), 
ChanceItemIngredient.create(<thermalfoundation:material:67>, 50, 0), 
ChanceItemIngredient.create(<thaumcraft:quicksilver>, 4, 0), 
null, 
null, 
null);

mods.nuclearcraft.FuelReprocessor.addRecipe(<qmd:waste_spallation:3>, 
ChanceItemIngredient.create(<nuclearcraft:fission_dust:2>, 22, 0), 
ChanceItemIngredient.create(<rockhounding_chemistry:chemical_dusts:20>, 15, 0), 
ChanceItemIngredient.create(<thermalfoundation:material:67>, 55, 0), 
ChanceItemIngredient.create(<thaumcraft:quicksilver>, 5, 0), 
ChanceItemIngredient.create(<thermalfoundation:material:1>, 1, 0), 
ChanceItemIngredient.create(<thermalfoundation:material:70>, 2, 0), 
null, 
null);

mods.nuclearcraft.FuelReprocessor.addRecipe(<qmd:waste_spallation:4>, 
ChanceItemIngredient.create(<nuclearcraft:fission_dust:2>, 22, 0), 
ChanceItemIngredient.create(<rockhounding_chemistry:chemical_dusts:20>, 14, 0), 
ChanceItemIngredient.create(<thermalfoundation:material:67>, 55, 0), 
ChanceItemIngredient.create(<thaumcraft:quicksilver>, 5, 0), 
ChanceItemIngredient.create(<thermalfoundation:material:1>, 1, 0), 
ChanceItemIngredient.create(<thermalfoundation:material:70>, 3, 0), 
null, 
null);

mods.nuclearcraft.FuelReprocessor.addRecipe(<qmd:waste_spallation:5>, 
ChanceItemIngredient.create(<nuclearcraft:fission_dust:2>, 36, 0), 
ChanceItemIngredient.create(<rockhounding_chemistry:chemical_dusts:20>, 17, 0), 
ChanceItemIngredient.create(<thermalfoundation:material:67>, 34, 0), 
ChanceItemIngredient.create(<thaumcraft:quicksilver>, 7, 0),
ChanceItemIngredient.create(<thermalfoundation:material:1>, 2, 0), 
ChanceItemIngredient.create(<thermalfoundation:material:70>, 4, 0), 
null, 
null);

mods.nuclearcraft.FuelReprocessor.addRecipe(<qmd:waste_spallation:6>, 
ChanceItemIngredient.create(<nuclearcraft:fission_dust:2>, 21, 0), 
ChanceItemIngredient.create(<rockhounding_chemistry:chemical_dusts:20>, 12, 0), 
ChanceItemIngredient.create(<thermalfoundation:material:67>, 55, 0), 
ChanceItemIngredient.create(<thaumcraft:quicksilver>, 7, 0),
ChanceItemIngredient.create(<thermalfoundation:material:1>, 1, 0), 
ChanceItemIngredient.create(<thermalfoundation:material:70>, 4, 0), 
null, 
null);

mods.nuclearcraft.FuelReprocessor.addRecipe(<qmd:waste_spallation:8>, 
ChanceItemIngredient.create(<nuclearcraft:fission_dust:2>, 10, 0), 
ChanceItemIngredient.create(<rockhounding_chemistry:chemical_dusts:20>, 7, 0), 
ChanceItemIngredient.create(<thermalfoundation:material:67>, 62, 0), 
ChanceItemIngredient.create(<thaumcraft:quicksilver>, 11, 0),
ChanceItemIngredient.create(<thermalfoundation:material:1>, 2, 0), 
ChanceItemIngredient.create(<thermalfoundation:material:70>, 8, 0), 
null, 
null);

mods.nuclearcraft.FuelReprocessor.addRecipe(<qmd:waste_spallation:7>, 
ChanceItemIngredient.create(<nuclearcraft:fission_dust:2>, 36, 0), 
ChanceItemIngredient.create(<rockhounding_chemistry:chemical_dusts:20>, 6, 0), 
ChanceItemIngredient.create(<thermalfoundation:material:67>, 39, 0), 
ChanceItemIngredient.create(<thaumcraft:quicksilver>, 10, 0),
ChanceItemIngredient.create(<thermalfoundation:material:1>, 2, 0), 
ChanceItemIngredient.create(<thermalfoundation:material:70>, 7, 0), 
null, 
null);

mods.nuclearcraft.FuelReprocessor.addRecipe(<qmd:waste_spallation:9>, 
ChanceItemIngredient.create(<thermalfoundation:material:67>, 58, 0), 
ChanceItemIngredient.create(<thaumcraft:quicksilver>, 18, 0), 
ChanceItemIngredient.create(<thermalfoundation:material:1>, 3, 0), 
ChanceItemIngredient.create(<thermalfoundation:material:70>, 10, 0),
ChanceItemIngredient.create(<thermalfoundation:material:71>, 6, 0), 
ChanceItemIngredient.create(<mekanism:dust:2>, 5, 0), 
null, 
null);

/* These need to be updated!
// New Target Chamber Recipes
target_chamber.removeRecipeWithInput(<qmd:ingot2:2>, (<particle:proton>*487000)^200000);
target_chamber.removeRecipeWithInput(<qmd:ingot2:2>, (<particle:proton>*480000)^6580000);
target_chamber.removeRecipeWithInput(<qmd:ingot2:2>, (<particle:proton>*480000)^1540000);
target_chamber.removeRecipeWithInput(<qmd:ingot2:2>, <particle:antiproton>*240000);
target_chamber.removeRecipeWithInput(<qmd:ingot2:2>, (<particle:deuteron>*960000)^13100000);
target_chamber.removeRecipeWithInput(<qmd:ingot2:2>, <particle:antideuteron>*240000);

target_chamber.addRecipe(<thaumcraft:quicksilver>, (<particle:proton>*487000)^200000, <qmd:waste_fission>, 
null, <particle:neutron>, null, 
1000000, 0.01, 0, 0);

target_chamber.addRecipe(<thaumcraft:quicksilver>, (<particle:proton>*480000)^6580000, <qmd:waste_spallation2:3>, 
<particle:proton>, null, <particle:antiproton>, 
20000000, 0.1, -6580000, 0);

target_chamber.addRecipe(<thaumcraft:quicksilver>, (<particle:proton>*480000)^1540000, <qmd:waste_spallation2:3>, 
<particle:pion_plus>, null, <particle:pion_minus>, 
5000000, 0.2, -1540000, 0);

target_chamber.addRecipe(<thaumcraft:quicksilver>, <particle:antiproton>*240000, <qmd:waste_spallation2:3>, 
<particle:pion_plus>, <particle:pion_naught>, <particle:pion_minus>, 
10000000, 1.0, 1460000, 0);

target_chamber.addRecipe(<thaumcraft:quicksilver>, (<particle:deuteron>*960000)^13100000, <qmd:waste_spallation2:3>, 
<particle:deuteron>, null, <particle:antideuteron>, 
20000000, 0.05, -13100000, 0);

target_chamber.addRecipe(<thaumcraft:quicksilver>, <particle:antideuteron>*240000, <qmd:waste_spallation2:3>, 
<particle:pion_plus>*4, <particle:pion_naught>*4, <particle:pion_minus>*4, 
10000000, 1.0, 2090000, 0);
*/
// New Industrial Grinder Mercury Recipes
industrialGrinder.addRecipe(<thermalfoundation:material:1>*3, <techreborn:smalldust:14>, <techreborn:smalldust:34>, null, <ore:oreGold>, null, <liquid:mercury>*288, 100, 128);
industrialGrinder.addRecipe(<minecraft:diamond>*2, <techreborn:smalldust:16>*3, null, null, <ore:oreDiamond>, null, <liquid:mercury>*288, 100, 64);
industrialGrinder.addRecipe(<minecraft:emerald>*2, <techreborn:smalldust:18>*3, null, null, <ore:oreEmerald>, null, <liquid:mercury>*288, 100, 64);
industrialGrinder.addRecipe(<thermalfoundation:material:64>*3, <thermalfoundation:material:1>, null, null, <ore:oreCopper>, null, <liquid:mercury>*288, 100, 64);
industrialGrinder.addRecipe(<techreborn:dust:23>*2, <thermalfoundation:material:771>, <thermalfoundation:material:66>, null, <ore:oreGalena>, null, <liquid:mercury>*288, 100, 64);
industrialGrinder.addRecipe(<thermalfoundation:material:70>*3, <thermalfoundation:material:69>, <techreborn:smalldust:66>, null, <ore:oreSheldonite>, null, <liquid:mercury>*288, 100, 64);
industrialGrinder.addRecipe(<thermalfoundation:material:69>*3, <techreborn:smalldust:27>, <thermalfoundation:material:70>, null, <ore:oreNickel>, null, <liquid:mercury>*288, 100, 64);
industrialGrinder.addRecipe(<techreborn:dust:33>*8, <minecraft:gold_nugget>, null, null, <minecraft:netherrack>*8, null, <liquid:mercury>*288, 800, 64);
industrialGrinder.addRecipe(<contenttweaker:material_part:15>*3, null, null, null, <ore:oreAdamantine>, null, <liquid:mercury>*288, 100, 128);
industrialGrinder.addRecipe(<astralsorcery:itemcraftingcomponent:2>*3, null, null, null, <ore:oreAstralStarmetal>, null, <liquid:mercury>*288, 100, 128);
industrialGrinder.addRecipe(<rockhounding_chemistry:chemical_dusts:21>*3, null, null, null, <ore:oreBoron>, null, <liquid:mercury>*288, 100, 128);
industrialGrinder.addRecipe(<mekanism:otherdust:4>*3, null, null, null, <ore:oreLithium>, null, <liquid:mercury>*288, 100, 128);
industrialGrinder.addRecipe(<techreborn:dust:30>*3, null, null, null, <ore:oreMagnesium>, null, <liquid:mercury>*288, 100, 128);
industrialGrinder.addRecipe(<contenttweaker:material_part:25>*3, null, null, null, <ore:oreOrichalcum>, null, <liquid:mercury>*288, 100, 128);
industrialGrinder.addRecipe(<contenttweaker:material_part:35>*3, null, null, null, <ore:orePalladium>, null, <liquid:mercury>*288, 100, 128);
industrialGrinder.addRecipe(<thermalfoundation:material:70>*3, <thermalfoundation:material:71>, null, null, <ore:orePlatinum>, null, <liquid:mercury>*288, 100, 128);

removeAndHide(<qmd:ingot2:2>);

// Removing RH:C Graphite Compound
removeAndHide(<rockhounding_chemistry:chemical_items:8>);
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

Pressurizer.removeRecipeWithInput(<techreborn:part:34>);

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
	removeAndHide(item);
}

// Ender Pearl Dust Compat
AlloyFurnace.addRecipe(<enderio:item_alloy_ingot:1>, <techreborn:dust:20>, <enderio:item_alloy_ingot:2>, 1, 2);
AlloyFurnace.addRecipe(<minecraft:iron_ingot>, <techreborn:dust:20>, <enderio:item_alloy_ingot:5>, 1, 2);
AlloyFurnace.addRecipe(<enderio:item_alloy_endergy_ingot:5>, <techreborn:dust:20>, <enderio:item_alloy_endergy_ingot:6>, 1, 2);
Melter.addRecipe(<techreborn:dust:20>, <liquid:ender> * 250, 0.5, 1.5);
Pressurizer.addRecipe(<techreborn:dust:20>, <minecraft:ender_pearl>);


##########################################################################################
print("==================== end of unification.zs ====================");
