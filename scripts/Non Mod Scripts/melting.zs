import crafttweaker.item.IItemStack;
import crafttweaker.item.WeightedItemStack;
import crafttweaker.oredict.IOreDict;
import crafttweaker.oredict.IOreDictEntry;
import crafttweaker.liquid.ILiquidStack;
import mods.jei.JEI.removeAndHide;
import mods.nuclearcraft.Melter;
import mods.nuclearcraft.IngotFormer;
import mods.thermalexpansion.Crucible;
import mods.tcomplement.Overrides;
import mods.tcomplement.highoven.HighOven;
import mods.tconstruct.Melting;
import mods.immersiveengineering.ArcFurnace;

#priority 98

print("==================== loading melting.zs ====================");
##########################################################################################

###################################################
############     MELTING       ####################
###################################################

// --==Melter Unification==-- //

/*
IngotFormer.addRecipe(ILiquidStack fluidInput, IIngredient itemOutput, @Optional double timeMultiplier, @Optional double powerMultiplier, @Optional double processRadiation);
Melter.addRecipe(IIngredient itemInput, ILiquidStack fluidOutput, @Optional double timeMultiplier, @Optional double powerMultiplier, @Optional double processRadiation);
Crucible.addRecipe(ILiquidStack output, IItemStack input, int energy);
*/


// --==Ingot Forming Recipes==-- //
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


// --==Melter Recipe Compat==-- //
// For recipes in the Magma Crucible but not in the Melter

// Essence of Knowledge
Melter.addRecipe(<actuallyadditions:item_solidified_experience>, <liquid:experience> * 160, 0.5);

// Biocrude
Melter.addRecipe(<thermalfoundation:material:816>, <liquid:biocrude> * 100);
Melter.addRecipe(<thermalfoundation:material:817>, <liquid:biocrude> * 150);
Melter.addRecipe(<thermalfoundation:material:818>, <liquid:biocrude> * 100);
Melter.addRecipe(<thermalfoundation:material:819>, <liquid:biocrude> * 150);




// --==Magma Crucible Recipe Compat==-- //
// For recipes in the Melter but not in the Magma Crucible

// Nugget, Ingot and Block Melting Recipes

val magmacruciblemelting as IItemStack[][ILiquidStack] = {
	<liquid:electrical_steel>:[<enderio:item_alloy_nugget>,<enderio:item_alloy_ingot>,<enderio:block_alloy>],
	<liquid:energetic_alloy>:[<enderio:item_alloy_nugget:1>,<enderio:item_alloy_ingot:1>,<enderio:block_alloy:1>],
	<liquid:vibrant_alloy>:[<enderio:item_alloy_nugget:2>,<enderio:item_alloy_ingot:2>,<enderio:block_alloy:2>],
	<liquid:redstone_alloy>:[<enderio:item_alloy_nugget:3>,<enderio:item_alloy_ingot:3>,<enderio:block_alloy:3>],
	<liquid:conductive_iron>:[<enderio:item_alloy_nugget:4>,<enderio:item_alloy_ingot:4>,<enderio:block_alloy:4>],
	<liquid:pulsating_iron>:[<enderio:item_alloy_nugget:5>,<enderio:item_alloy_ingot:5>,<enderio:block_alloy:5>],
	<liquid:dark_steel>:[<enderio:item_alloy_nugget:6>,<enderio:item_alloy_ingot:6>,<enderio:block_alloy:6>],
	<liquid:soularium>:[<enderio:item_alloy_nugget:7>,<enderio:item_alloy_ingot:7>,<enderio:block_alloy:7>],
	<liquid:end_steel>:[<enderio:item_alloy_nugget:8>,<enderio:item_alloy_ingot:8>,<enderio:block_alloy:8>],
	<liquid:construction_alloy>:[<enderio:item_alloy_nugget:9>,<enderio:item_alloy_ingot:9>,<enderio:block_alloy:9>],
	<liquid:crude_steel>:[<enderio:item_alloy_endergy_nugget>,<enderio:item_alloy_endergy_ingot>,<enderio:block_alloy_endergy>],
	<liquid:crystalline_alloy>:[<enderio:item_alloy_endergy_nugget:1>,<enderio:item_alloy_endergy_ingot:1>,<enderio:block_alloy_endergy:1>],
	<liquid:melodic_alloy>:[<enderio:item_alloy_endergy_nugget:2>,<enderio:item_alloy_endergy_ingot:2>,<enderio:block_alloy_endergy:2>],
	<liquid:stellar_alloy>:[<enderio:item_alloy_endergy_nugget:3>,<enderio:item_alloy_endergy_ingot:3>,<enderio:block_alloy_endergy:3>],
	<liquid:crystalline_pink_slime>:[<enderio:item_alloy_endergy_nugget:4>,<enderio:item_alloy_endergy_ingot:4>,<enderio:block_alloy_endergy:4>],
	<liquid:energetic_silver>:[<enderio:item_alloy_endergy_nugget:5>,<enderio:item_alloy_endergy_ingot:5>,<enderio:block_alloy_endergy:5>],
	<liquid:vivid_alloy>:[<enderio:item_alloy_endergy_nugget:6>,<enderio:item_alloy_endergy_ingot:6>,<enderio:block_alloy_endergy:6>],
	<liquid:inferium>:[<mysticalagriculture:crafting:40>,<mysticalagriculture:crafting:33>,<mysticalagriculture:ingot_storage:1>,],
	<liquid:prudentium>:[<mysticalagriculture:crafting:41>,<mysticalagriculture:crafting:34>,<mysticalagriculture:ingot_storage:2>,],
	<liquid:intermedium>:[<mysticalagriculture:crafting:42>,<mysticalagriculture:crafting:35>,<mysticalagriculture:ingot_storage:3>,],
	<liquid:superium>:[<mysticalagriculture:crafting:43>,<mysticalagriculture:crafting:36>,<mysticalagriculture:ingot_storage:4>,],
	<liquid:supremium>:[<mysticalagriculture:crafting:44>,<mysticalagriculture:crafting:37>,<mysticalagriculture:ingot_storage:5>,],
	<liquid:brass>:[<techreborn:nuggets:1>,<techreborn:ingot:1>,<techreborn:storage:5>],
	<liquid:zinc>:[<techreborn:nuggets:18>,<techreborn:ingot:18>,<techreborn:storage:8>],
	<liquid:kanthal>:[<contenttweaker:material_part:4>,<contenttweaker:material_part:5>,<contenttweaker:sub_block_holder_0:5>],
	<liquid:manasteel>:[<botania:manaresource:17>,<botania:manaresource>,<botania:storage>],
	<liquid:terrasteel>:[<botania:manaresource:18>,<botania:manaresource:4>,<botania:storage:1>],
	<liquid:refinedglowstone>:[<mekanism:nugget:3>,<mekanism:ingot:3>,<mekanism:basicblock:4>],
	<liquid:refinedobsidian>:[<mekanism:nugget>,<mekanism:ingot>,<mekanism:basicblock:2>],
} as IItemStack[][ILiquidStack];

for fluid, material in magmacruciblemelting {
	Crucible.addRecipe(fluid * 16, material[0], 500);
	Crucible.addRecipe(fluid * 144, material[1], 4000);
	Crucible.addRecipe(fluid * 1296, material[2], 32000);
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




// --==Magma Crucible & Melter Recipe Compat==-- //
// For recipes in the TiC Melter, but not in the NC Melter or Magma Crucible

// Nugget, Ingot, Dust and Block Melting Recipes
// 1st material is nuggets, 2nd material is ingots, 3rd material is dusts, 4th material is blocks

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


// Blood
Melter.addRecipe(<minecraft:rotten_flesh>, <liquid:blood> * 40, 0.5);
Crucible.addRecipe(<liquid:blood> * 40, <minecraft:rotten_flesh>, 2000);

// Molten Dawnstone
Crucible.addRecipe(<liquid:dawnstone> * 576, <embers:gear_dawnstone>, 16000);
Crucible.addRecipe(<liquid:dawnstone> * 144, <embers:plate_dawnstone>, 4000);

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

// Molten Bedrock
Crucible.addRecipe(<liquid:moltenbedrock> * 100, <minecraft:bedrock>, 4000000);
Melter.addRecipe(<minecraft:bedrock>, <liquid:moltenbedrock> * 100, 10.0, 16.0);




// --==Melting Removals==-- //

// Refined Obsidian (Finally) //
Melter.removeRecipeWithInput(<mekanism:otherdust:5>);
Melting.removeRecipe(<liquid:refinedobsidian>, <mekanism:otherdust:5>);
Overrides.removeRecipe(<liquid:refinedobsidian>, <mekanism:otherdust:5>);
HighOven.removeMeltingOverride(<liquid:refinedobsidian>, <mekanism:otherdust:5>);
ArcFurnace.removeRecipe(<mekanism:ingot>);
Melter.addRecipe(<mekanism:ingot>, <liquid:refinedobsidian> * 144);

// Refined Iron melting bug //
val ironChestDupe =
[
	<ironchest:iron_chest>,
	<ironchest:wood_iron_chest_upgrade>,
]
 as IItemStack[];

for item in ironChestDupe {
	Melting.removeRecipe(<liquid:refined_iron>, item);
	Overrides.removeRecipe(<liquid:refined_iron>, item);
	HighOven.removeMeltingOverride(<liquid:refined_iron>, item);
}

##########################################################################################
print("==================== end of melting.zs ====================");
