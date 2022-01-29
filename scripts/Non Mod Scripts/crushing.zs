import crafttweaker.item.IItemStack;
import crafttweaker.item.WeightedItemStack;
import crafttweaker.oredict.IOreDict;
import crafttweaker.oredict.IOreDictEntry;
import crafttweaker.item.IIngredient;
import crafttweaker.liquid.ILiquidStack;
import mods.jei.JEI.removeAndHide;
import mods.immersiveengineering.Crusher;
import mods.techreborn.extractor;
import mods.techreborn.implosionCompressor;
import mods.techreborn.industrialGrinder;
import mods.integrateddynamics.MechanicalSqueezer;
import mods.nuclearcraft.Manufactory;
import mods.nuclearcraft.Melter;
import mods.thermalexpansion.Pulverizer;
import mods.thermalexpansion.Crucible;
import mods.mekanism.crusher;
import mods.mekanism.enrichment;

#priority 98

print("==================== loading crushing.zs ====================");
##########################################################################################

###################################################
############     CRUSHING      ####################
###################################################

/*
mods.immersiveengineering.Crusher.addRecipe(IItemStack output, IIngredient input, int energy, @Optional IItemStack secondaryOutput, @Optional double secondaryChance);
mods.nuclearcraft.Manufactory.addRecipe(IIngredient itemInput, IIngredient itemOutput, @Optional double timeMultiplier, @Optional double powerMultiplier, @Optional double processRadiation);
mods.thermalexpansion.Pulverizer.addRecipe(IItemStack output, IItemStack input, int energy, @Optional IItemStack secondaryOutput, @Optional int secondaryChance);
mods.mekanism.crusher.addRecipe(IIngredient inputStack, IItemStack outputStack);
mods.mekanism.enrichment.addRecipe(IIngredient inputStack, IItemStack outputStack);
*/

// Clay Dust
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

// Limestone
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


// Radiant Dust
Crusher.addRecipe(<arcanearchives:radiant_dust>*9, <arcanearchives:storage_raw_quartz>, 1024, <arcanearchives:radiant_dust>*3, 0.5);
Manufactory.addRecipe(<arcanearchives:storage_raw_quartz>, <arcanearchives:radiant_dust>*9);
Pulverizer.addRecipe(<arcanearchives:radiant_dust>*9, <arcanearchives:storage_raw_quartz>, 1500, <arcanearchives:radiant_dust>*3, 50);
crusher.addRecipe(<arcanearchives:storage_raw_quartz>, <arcanearchives:radiant_dust>*9);
//SagMill.addRecipe([<arcanearchives:radiant_dust>*9], [1] , <arcanearchives:storage_raw_quartz>, "MULTIPLY_OUTPUT");


// Ember Grit
Crusher.addRecipe(<embers:dust_ember>, <embers:crystal_ember>, 2048, <embers:dust_ember>, 0.1);
Manufactory.addRecipe(<embers:crystal_ember>, <embers:dust_ember>);
Pulverizer.addRecipe(<embers:dust_ember>, <embers:crystal_ember>, 1500, <embers:dust_ember>, 10);
crusher.addRecipe(<embers:crystal_ember>, <embers:dust_ember>);
//SagMill.addRecipe([<embers:dust_ember>], [1] , <embers:crystal_ember>, "NONE");


// Graphite
//SagMill.addRecipe([<nuclearcraft:dust:8>], [1] , <thermalfoundation:material:768>, "NONE");
Pulverizer.addRecipe(<nuclearcraft:dust:8>, <thermalfoundation:material:768>, 1500);
crusher.addRecipe(<thermalfoundation:material:768>, <nuclearcraft:dust:8>);

// Slates
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

// Silicon dust
Crusher.addRecipe(<rockhounding_chemistry:chemical_dusts:42>, <nuclearcraft:gem:6>, 1024);
Manufactory.addRecipe(<nuclearcraft:gem:6>, <rockhounding_chemistry:chemical_dusts:42>);
//SagMill.addRecipe([<rockhounding_chemistry:chemical_dusts:42>], [1] , <nuclearcraft:gem:6>, "NONE");

// Skystone dust
Crusher.addRecipe(<appliedenergistics2:material:45>, <appliedenergistics2:sky_stone_block>, 1024);
//SagMill.addRecipe([<appliedenergistics2:material:45>], [1] , <appliedenergistics2:sky_stone_block>, "NONE");


// Pristine dust
Crusher.addRecipe(<contenttweaker:pristine_dust>, <ore:pristineMatter>, 1024);
Manufactory.addRecipe(<ore:pristineMatter>, <contenttweaker:pristine_dust>);
crusher.addRecipe(<ore:pristineMatter>, <contenttweaker:pristine_dust>);

val pristines = <ore:pristineMatter>;

for item in pristines.items {
Pulverizer.addRecipe(<contenttweaker:pristine_dust>, item, 10000);
}

//SagMill.addRecipe([<contenttweaker:pristine_dust>], [1] , <ore:pristineMatter>, "NONE");

// Flux BLocks
Crusher.addRecipe(<fluxnetworks:fluxcore>*4, <fluxnetworks:fluxblock>, 1024, <fluxnetworks:flux>*5, 0.9);
Pulverizer.addRecipe(<fluxnetworks:fluxcore>*4, <fluxnetworks:fluxblock>, 1500, <fluxnetworks:flux>*5, 90);
//SagMill.addRecipe([<fluxnetworks:fluxcore>*4,<fluxnetworks:flux>*5], [1,0.9] , <fluxnetworks:fluxblock>, "NONE");

// Plutonium
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

// Wither Ash
Crusher.addRecipe(<quark:black_ash>*3, <minecraft:skull:1>, 1024);
Manufactory.addRecipe(<minecraft:skull:1>, <quark:black_ash>*3);
Pulverizer.addRecipe(<quark:black_ash>*3, <minecraft:skull:1>, 2000);
crusher.addRecipe(<minecraft:skull:1>, <quark:black_ash>*3);
//SagMill.addRecipe([<quark:black_ash>*3], [1] , <minecraft:skull:1>, "MULTIPLY_OUTPUT");

// Thermal Ruby dust
Pulverizer.addRecipe(<techreborn:dust:43>, <techreborn:gem>, 2000);

// Marble
Crusher.addRecipe(<quark:black_ash>*3, <minecraft:skull:1>, 1024);
Manufactory.addRecipe(<minecraft:skull:1>, <quark:black_ash>*3);
Pulverizer.addRecipe(<quark:black_ash>*3, <minecraft:skull:1>, 2000);
crusher.addRecipe(<minecraft:skull:1>, <quark:black_ash>*3);

// Basalt
Crusher.addRecipe(<quark:black_ash>*3, <minecraft:skull:1>, 1024);
Manufactory.addRecipe(<minecraft:skull:1>, <quark:black_ash>*3);
Pulverizer.addRecipe(<quark:black_ash>*3, <minecraft:skull:1>, 2000);
crusher.addRecipe(<minecraft:skull:1>, <quark:black_ash>*3);


// --==Macerator Unification==-- //

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

##########################################################################################
print("==================== end of crushing.zs ====================");
