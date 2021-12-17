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
