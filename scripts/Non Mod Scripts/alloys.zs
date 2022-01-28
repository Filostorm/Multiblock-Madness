#priority 98

import crafttweaker.item.IItemStack;
import crafttweaker.oredict.IOreDict;
import mods.immersiveengineering.ArcFurnace;
import mods.thermalexpansion.InductionSmelter;
import mods.nuclearcraft.AlloyFurnace;
import mods.techreborn.blastFurnace;
import mods.techreborn.implosionCompressor;
import mods.mekatweaker.InfuserType;
import mods.mekanism.infuser;
import mods.nuclearcraft.Melter;
import mods.tcomplement.highoven.HighOven;
import mods.tcomplement.Overrides;
import mods.tconstruct.Melting;
//import mods.enderio.AlloySmelter;

print("==================== loading alloys.zs ====================");
##########################################################################################


###################################################
##############     ALLOYS      ####################
###################################################

// Inert Ingot //
ArcFurnace.addRecipe(<contenttweaker:inert_ingot>*2, <thermalfoundation:material:130>*2, null, 400, 1024, [<thermalfoundation:material:131>]);
//AlloySmelter.addRecipe(<contenttweaker:inert_ingot>*2, [<thermalfoundation:material:130>*2,<thermalfoundation:material:131>], 5000);

// Fused Quartz //
ArcFurnace.addRecipe(<enderio:block_fused_quartz>, <ore:blockQuartz>, null, 200, 1024);

// Vibrant Alloy //
//ArcFurnace.addRecipe(<enderio:item_alloy_ingot:2>, <enderio:item_alloy_ingot:1>, null, 1200, 2048, [<minecraft:ender_pearl>]);
AlloyFurnace.removeRecipeWithOutput(<enderio:item_material:15>);
//AlloySmelter.addRecipe(<enderio:item_material:15>, [<minecraft:emerald>,<enderio:item_alloy_ingot:2>], 20000, 0.1);

// Energetic Alloy //
//AlloySmelter.removeRecipe(<enderio:item_alloy_ingot:1>);
AlloyFurnace.removeRecipeWithOutput(<enderio:item_alloy_ingot:1>);
ArcFurnace.removeRecipe(<enderio:item_alloy_ingot:1>);

ArcFurnace.addRecipe(<enderio:item_alloy_ingot:1>, <embers:ingot_dawnstone>, null, 400, 1024, [<minecraft:redstone>,<minecraft:glowstone_dust>]);
//AlloySmelter.addRecipe(<enderio:item_alloy_ingot:1>, [<minecraft:redstone>,<embers:ingot_dawnstone>,<minecraft:glowstone_dust>], 10000, 0.1);
AlloyFurnace.addRecipe(<embers:ingot_dawnstone>, <nuclearcraft:compound:2>, <enderio:item_alloy_ingot:1>);
InductionSmelter.addRecipe(<enderio:item_alloy_ingot:1>, <embers:ingot_dawnstone>, <nuclearcraft:compound:2>, 25000);

// Energetic Silver //
AlloyFurnace.removeRecipeWithOutput(<enderio:item_alloy_endergy_ingot:5>);
//AlloySmelter.removeRecipe(<enderio:item_alloy_endergy_ingot:5>);

ArcFurnace.addRecipe(<enderio:item_alloy_endergy_ingot:5>, <botania:manaresource>, null, 400, 1024, [<minecraft:redstone>,<minecraft:glowstone_dust>]);
//AlloySmelter.addRecipe(<enderio:item_alloy_endergy_ingot:5>, [<minecraft:redstone>,<botania:manaresource>,<minecraft:glowstone_dust>], 10000, 0.1);
AlloyFurnace.addRecipe(<botania:manaresource>, <nuclearcraft:compound:2>, <enderio:item_alloy_endergy_ingot:5>);
InductionSmelter.addRecipe(<enderio:item_alloy_endergy_ingot:5>, <botania:manaresource>, <nuclearcraft:compound:2>, 25000);

// Vivid Alloy //
InductionSmelter.addRecipe(<enderio:item_alloy_endergy_ingot:6>, <enderio:item_alloy_endergy_ingot:5>, <minecraft:ender_pearl>, 10000);

// Pulsating Iron //
AlloyFurnace.removeRecipeWithOutput(<enderio:item_material:14>);
//AlloySmelter.addRecipe(<enderio:item_material:14>, [<minecraft:diamond>,<enderio:item_alloy_ingot:5>], 10000, 0.1);
ArcFurnace.addRecipe(<enderio:item_alloy_ingot:5>, <minecraft:iron_ingot>, null, 600, 1024, [<minecraft:ender_pearl>], "Alloying");

// Steel //
for item in <ore:ingotSteel>.items{ArcFurnace.removeRecipe(item);}
ArcFurnace.addRecipe(<thermalfoundation:material:160>*2, <minecraft:iron_ingot>*2, <immersiveengineering:material:7>*2, 400, 512, [<ore:fuelCoke>], "Alloying");
ArcFurnace.addRecipe(<thermalfoundation:material:160>, <minecraft:iron_ingot>, <immersiveengineering:material:7>, 400, 512, [<minecraft:coal>], "Alloying");
ArcFurnace.addRecipe(<thermalfoundation:material:160>, <minecraft:iron_ingot>, <immersiveengineering:material:7>, 400, 512, [<minecraft:coal:1>*2], "Alloying");

// Dark Steel //
ArcFurnace.removeRecipe(<enderio:item_alloy_ingot:6>);
ArcFurnace.addRecipe(<enderio:item_alloy_ingot:6>, <thermalfoundation:material:160>, null, 1200, 1024, [<thermalfoundation:material:770>*4], "Alloying");

// Electrical Steel //
ArcFurnace.removeRecipe(<enderio:item_alloy_ingot>);
ArcFurnace.addRecipe(<enderio:item_alloy_ingot>, <thermalfoundation:material:160>, null, 800, 1024, [<nuclearcraft:gem:6>], "Alloying");

// End Steel //
InductionSmelter.addRecipe(<enderio:item_alloy_ingot:8>, <enderio:item_alloy_ingot:6>, <nuclearcraft:compound:9>*2, 20000);

// Red Alloy //
AlloyFurnace.removeRecipeWithOutput(<enderio:item_alloy_ingot:3>);
//AlloySmelter.removeRecipe(<enderio:item_alloy_ingot:3>);
ArcFurnace.addRecipe(<enderio:item_alloy_ingot:3>, <enderio:item_alloy_ingot:4>, null, 200, 1024, [<minecraft:redstone>,<nuclearcraft:gem:6>], "Alloying");
//AlloySmelter.addRecipe(<enderio:item_alloy_ingot:3>, [<minecraft:redstone>,<enderio:item_alloy_ingot:4>,<nuclearcraft:gem:6>], 10000, 0.1);
//AlloyFurnace.addRecipe([<enderio:item_alloy_ingot:4>, <minecraft:redstone>, <nuclearcraft:gem:6>, <enderio:item_alloy_ingot:3>]);

// Knight Slime //
ArcFurnace.addRecipe(<tconstruct:ingots:3>, <minecraft:iron_ingot> , null, 600, 1024, [<tconstruct:edible:2>,<tconstruct:materials>], "Alloying");
//AlloySmelter.addRecipe(<tconstruct:ingots:3>, [<tconstruct:edible:2>,<minecraft:iron_ingot> ,<tconstruct:materials>], 10000, 0.1);

// Clear Glass //
ArcFurnace.addRecipe(<enderio:block_fused_glass>, <minecraft:glass> * 2, null, 200, 512);

// Advanced Alloy //
recipes.remove(<enderutilities:enderpart:1>);
ArcFurnace.addRecipe(<enderutilities:enderpart:1>*2, <enderutilities:enderpart>*2, null, 500, 1024, [<enderio:item_alloy_ingot:1>*2, <minecraft:ender_eye>], "Alloying");
//AlloySmelter.addRecipe(<enderutilities:enderpart:1> *2, [<enderutilities:enderpart> * 2,<enderio:item_alloy_ingot:1> * 2,<minecraft:ender_eye>], 10000);

// Enhanced Alloy //
recipes.remove(<enderutilities:enderpart:2>);
//ArcFurnace.addRecipe(<enderutilities:enderpart:2>*2, <enderutilities:enderpart:1>*2, null, 1000, 2048, [<enderio:item_alloy_ingot:8>*2, <randomthings:stableenderpearl>], "Alloying");
//AlloySmelter.addRecipe(<enderutilities:enderpart:2> * 2, [<enderutilities:enderpart:1> * 2,<enderio:item_alloy_ingot:8> * 2,<randomthings:stableenderpearl>], 15000);

// Adaptive Ingot //
//AlloySmelter.addRecipe(<contenttweaker:adaptive_ingot>, [<contenttweaker:material_part:30>, <enderio:block_infinity>], 15000);
ArcFurnace.addRecipe(<contenttweaker:adaptive_ingot>, <contenttweaker:material_part:30>, null, 500, 1024, [<enderio:block_infinity>], "Alloying");
AlloyFurnace.addRecipe(<contenttweaker:material_part:30>, <enderio:block_infinity>, <contenttweaker:adaptive_ingot>);
InductionSmelter.addRecipe(<contenttweaker:adaptive_ingot>, <contenttweaker:material_part:30>, <enderio:block_infinity>, 15000);

// Stellar Alloy //
AlloyFurnace.removeRecipeWithOutput(<enderio:item_alloy_endergy_ingot:3>*2);
//AlloySmelter.removeRecipe(<enderio:item_alloy_endergy_ingot:3>);
//AlloySmelter.addRecipe(<enderio:item_alloy_endergy_ingot:3>*2, [<minecraft:nether_star>,<enderio:item_alloy_endergy_ingot:2>,<environmentaltech:aethium_crystal>*4], 1000000, 0.0);


// Osgloglas Alloy //
//AlloySmelter.addRecipe(<plustic:osgloglasingot>, [<mekanism:ingot>,<mekanism:ingot:1>,<mekanism:ingot:3>], 500000, 0.0);
//osmerdium Alloy
//AlloySmelter.addRecipe(<plustic:osmiridiumingot>*2, [<thermalfoundation:material:135>,<mekanism:ingot:1>], 1000000, 0.0);
AlloyFurnace.removeRecipeWithOutput(<plustic:osmiridiumingot>*2);
InductionSmelter.addRecipe(<plustic:osmiridiumingot>*2, <mekanism:ingot:1>, <thermalfoundation:material:135>, 1000000);

// Prosperity Shard //
//AlloySmelter.addRecipe(<mysticalagriculture:crafting:5>*4, [<minecraft:quartz_block>, <minecraft:lapis_block>], 15000);
InductionSmelter.addRecipe(<mysticalagriculture:crafting:5>*4, <minecraft:quartz_block>, <minecraft:lapis_block>, 15000);
AlloyFurnace.addRecipe(<minecraft:quartz_block>, <minecraft:lapis_block>, <mysticalagriculture:crafting:5>*4);

// Quartz Glass //
//AlloySmelter.addRecipe(<appliedenergistics2:quartz_glass>, [<ore:blockGlassHardened>, <appliedenergistics2:material:2>], 15000);
ArcFurnace.addRecipe(<appliedenergistics2:quartz_glass>, <ore:blockGlassHardened>, null, 500, 1024, [<appliedenergistics2:material:2>], "Alloying");
AlloyFurnace.addRecipe(<ore:blockGlassHardened>, <appliedenergistics2:material:2>, <appliedenergistics2:quartz_glass>);
InductionSmelter.addRecipe(<appliedenergistics2:quartz_glass>, <enderio:block_fused_quartz>, <appliedenergistics2:material:2>, 15000);
InductionSmelter.addRecipe(<appliedenergistics2:quartz_glass>, <thermalfoundation:glass:3>, <appliedenergistics2:material:2>, 15000);

// Vibrant Quartz Glass //
//AlloySmelter.addRecipe(<appliedenergistics2:quartz_vibrant_glass>, [<ore:blockGlassHardened>, <appliedenergistics2:material:2>,<minecraft:glowstone_dust>*2], 15000);
ArcFurnace.addRecipe(<appliedenergistics2:quartz_vibrant_glass>, <appliedenergistics2:quartz_glass>, null, 500, 1024, [<minecraft:glowstone_dust>*2], "Alloying");
AlloyFurnace.addRecipe(<appliedenergistics2:quartz_glass>, <minecraft:glowstone_dust>*2, <appliedenergistics2:quartz_vibrant_glass>);
InductionSmelter.addRecipe(<appliedenergistics2:quartz_vibrant_glass>, <appliedenergistics2:quartz_glass>, <minecraft:glowstone_dust>*2, 15000);

// Polymer Clay //
//AlloySmelter.addRecipe(<deepmoblearning:polymer_clay>*32, [<randomthings:ingredient:3>, <enderio:item_material:22>*16], 20000);
ArcFurnace.addRecipe(<deepmoblearning:polymer_clay>*32, <randomthings:ingredient:3>, null, 1200, 512, [<enderio:item_material:22>*16], "Alloying");
AlloyFurnace.addRecipe(<randomthings:ingredient:3>, <enderio:item_material:22>*16, <deepmoblearning:polymer_clay>*32);
InductionSmelter.addRecipe(<deepmoblearning:polymer_clay>*32, <randomthings:ingredient:3>, <enderio:item_material:22>*16, 20000);

//AlloySmelter.addRecipe(<deepmoblearning:polymer_clay>*16, [<thermalfoundation:material:134>, <enderio:item_material:22>*8], 15000);
ArcFurnace.addRecipe(<deepmoblearning:polymer_clay>*16, <thermalfoundation:material:134>, null, 800, 512, [<enderio:item_material:22>*8], "Alloying");
AlloyFurnace.addRecipe(<thermalfoundation:material:134>, <enderio:item_material:22>*8, <deepmoblearning:polymer_clay>*16);
InductionSmelter.addRecipe(<deepmoblearning:polymer_clay>*16, <thermalfoundation:material:134>, <enderio:item_material:22>*8, 15000);

//AlloySmelter.addRecipe(<deepmoblearning:polymer_clay>*8, [<minecraft:gold_ingot>, <enderio:item_material:22>*4], 10000);
ArcFurnace.addRecipe(<deepmoblearning:polymer_clay>*8, <minecraft:gold_ingot>, null, 600, 512, [<enderio:item_material:22>*4], "Alloying");
AlloyFurnace.addRecipe(<minecraft:gold_ingot>, <enderio:item_material:22>*4, <deepmoblearning:polymer_clay>*8);
InductionSmelter.addRecipe(<deepmoblearning:polymer_clay>*8, <minecraft:gold_ingot>, <enderio:item_material:22>*4, 10000);

//AlloySmelter.addRecipe(<deepmoblearning:polymer_clay>*4, [<minecraft:iron_ingot>, <enderio:item_material:22>*2], 5000);
ArcFurnace.addRecipe(<deepmoblearning:polymer_clay>*4, <minecraft:iron_ingot>, null, 600, 512, [<enderio:item_material:22>*2], "Alloying");
AlloyFurnace.addRecipe(<minecraft:iron_ingot>, <enderio:item_material:22>*2, <deepmoblearning:polymer_clay>*4);
InductionSmelter.addRecipe(<deepmoblearning:polymer_clay>*4, <minecraft:iron_ingot>, <enderio:item_material:22>*2, 5000);

// Specter Ingot //
InductionSmelter.addRecipe(<randomthings:ingredient:3>, <contenttweaker:inert_ingot>, <randomthings:ingredient:2>, 10000);
InductionSmelter.addRecipe(<randomthings:ingredient:3>*2, <contenttweaker:material_part:20>, <randomthings:ingredient:2>, 10000);
ArcFurnace.addRecipe(<randomthings:ingredient:3>*2, <contenttweaker:material_part:20>, null, 500, 1024, [<randomthings:ingredient:2>], "Alloying");
ArcFurnace.addRecipe(<randomthings:ingredient:3>, <contenttweaker:inert_ingot>, null, 500, 1024, [<randomthings:ingredient:2>], "Alloying");

// Titanium Iridium //
AlloyFurnace.removeRecipeWithOutput(<advancedrocketry:productingot:1>*2);

// Bimetal Gear //
InductionSmelter.addRecipe(<enderio:item_material:11>, <thermalfoundation:material:288>, <enderio:item_material:20>*4, 10000);
ArcFurnace.addRecipe(<enderio:item_material:11>, <thermalfoundation:material:288>, null, 500, 1024, [<enderio:item_material:20>*4], "Alloying");
//AlloySmelter.addRecipe(<enderio:item_material:11>, [<thermalfoundation:material:288>, <enderio:item_material:20>*4], 10000);

// Dark Gear //
InductionSmelter.addRecipe(<enderio:item_material:73>, <enderio:item_material:11>, <enderio:item_alloy_ingot:6>*4, 25000);
ArcFurnace.addRecipe(<enderio:item_material:73>, <enderio:item_material:11>, null, 500, 2048, [<enderio:item_alloy_ingot:6>*4], "Alloying");
//AlloySmelter.addRecipe(<enderio:item_material:73>, [<enderio:item_material:11>, <enderio:item_alloy_ingot:6>*4], 25000);

// Energetic Gear //
InductionSmelter.addRecipe(<enderio:item_material:12>, <enderio:item_material:73>, <enderio:item_alloy_ingot:1>*4, 50000);
//AlloySmelter.addRecipe(<enderio:item_material:12>, [<enderio:item_material:73>, <enderio:item_alloy_ingot:1>*4], 50000);

// Vibrant Gear //
InductionSmelter.addRecipe(<enderio:item_material:13>, <enderio:item_material:12>, <enderio:item_alloy_ingot:2>*4, 100000);
//AlloySmelter.addRecipe(<enderio:item_material:13>, [<enderio:item_material:12>, <enderio:item_alloy_ingot:2>*4], 100000);

// Manyullyn //
furnace.remove(<tconstruct:ingots:2>);
AlloyFurnace.removeRecipeWithOutput(<tconstruct:ingots:2>);
AlloyFurnace.removeRecipeWithOutput(<tconstruct:metal:2>);
AlloyFurnace.removeRecipeWithOutput(<tconstruct:nuggets:2>);
ArcFurnace.removeRecipe(<tconstruct:ingots:2>);
blastFurnace.addRecipe(<tconstruct:ingots:2>, null, <tconstruct:ingots>, <tconstruct:ingots:1>, 200, 256, 1500);

// Dawnstone //
//ArcFurnace.addRecipe(<embers:ingot_dawnstone>*2, <minecraft:gold_ingot>*2, null, 500, 4096, [<thermalfoundation:material:128>*2,<minecraft:glowstone_dust>*2,<embers:shard_ember>], "Alloying");
InductionSmelter.addRecipe(<embers:ingot_dawnstone>*4, <rockhounding_chemistry:alloy_items_deco:4>*4, <embers:shard_ember>, 75000);

// Duskstone //
	recipes.remove(<extendedcrafting:material:36>);
<extendedcrafting:material:36>.displayName = "Duskstone Ingot";
<extendedcrafting:storage:5>.displayName = "Duskstone Block";
//AlloySmelter.addRecipe(<extendedcrafting:material:36>, [<techreborn:ingot:15>, <minecraft:ender_eye>,<quark:biotite>], 100000);

// Ferroboron //
ArcFurnace.addRecipe(<nuclearcraft:alloy:6>*2, <thermalfoundation:material:160>, null, 500, 2048, [<nuclearcraft:ingot:5>], "Alloying");
InductionSmelter.addRecipe(<nuclearcraft:alloy:6>*2, <thermalfoundation:material:160>, <nuclearcraft:ingot:5>, 75000);

// Tough Alloy //
ArcFurnace.addRecipe(<nuclearcraft:alloy:1>*2, <nuclearcraft:alloy:6>, null, 1000, 2048, [<nuclearcraft:ingot:6>], "Alloying");
InductionSmelter.addRecipe(<nuclearcraft:alloy:1>*2, <nuclearcraft:alloy:6>, <nuclearcraft:ingot:6>, 75000);

// Thermoconducting Alloy
InductionSmelter.addRecipe(<nuclearcraft:alloy:11>*2, <nuclearcraft:alloy:10>, <nuclearcraft:gem:5>, 9000);

// Extreme Alloy
InductionSmelter.addRecipe(<nuclearcraft:alloy:10>, <nuclearcraft:alloy:1>, <nuclearcraft:alloy:2>, 16000);

// Lithium Manganese Dioxide Alloy
InductionSmelter.addRecipe(<nuclearcraft:alloy:4>*2, <nuclearcraft:ingot:15>, <nuclearcraft:ingot:6>, 6000);

// Magnesium Diboride Alloy
InductionSmelter.addRecipe(<nuclearcraft:alloy:3>*3, <nuclearcraft:ingot:7>, <nuclearcraft:ingot:5>*2, 4000);

// Hard Carbon Alloy
InductionSmelter.addRecipe(<nuclearcraft:alloy:2>*2, <rockhounding_chemistry:metal_items:7>*2, <minecraft:diamond>, 8000);
InductionSmelter.addRecipe(<nuclearcraft:alloy:2>*2, <nuclearcraft:ingot:8>*2, <minecraft:diamond>, 8000);

// Nichrome //
AlloyFurnace.removeRecipeWithOutput(<rockhounding_chemistry:alloy_items_tech:22>*2);
AlloyFurnace.removeRecipeWithOutput(<rockhounding_chemistry:alloy_items_tech:23>*2);
AlloyFurnace.removeRecipeWithOutput(<rockhounding_chemistry:alloy_blocks_tech:7>*2);
infuser.addRecipe("CHROME", 25, <thermalfoundation:material:133>, <rockhounding_chemistry:alloy_items_tech:22>);

// Stainless Steel //
AlloyFurnace.removeRecipeWithOutput(<qmd:ingot_alloy:2>*6);
AlloyFurnace.removeRecipeWithOutput(<jaopca:block_blockstainlesssteel>*6);
infuser.addRecipe("CHROME", 20, <nuclearcraft:alloy:15>, <qmd:ingot_alloy:2>);

// Super Alloy //
InductionSmelter.addRecipe(<qmd:ingot_alloy:6>*3, <rockhounding_chemistry:alloy_items_tech:22>*2, <qmd:ingot_alloy:3>, 50000);
//AlloySmelter.addRecipe(<qmd:ingot_alloy:6>*3, [<ore:ingotNichrome>*2, <ore:ingotNiobiumTitanium>], 50000);

// Zinc Sulfide //
InductionSmelter.addRecipe(<qmd:chemical_dust:7>, <techreborn:dust:59>, <thermalfoundation:material:771>, 10000);
//AlloySmelter.addRecipe(<qmd:chemical_dust:7>, [<ore:dustZinc>, <ore:dustSulfur>], 10000);

// Niobium-Titanium //
InductionSmelter.addRecipe(<qmd:ingot_alloy:3>*2, <qmd:ingot:1>, <techreborn:ingot:14>, 30000);
//AlloySmelter.addRecipe(<qmd:ingot_alloy:3>*2, [<ore:ingotNiobium>, <ore:ingotTitanium>], 30000);

// Niobium-Tin //
InductionSmelter.addRecipe(<qmd:ingot_alloy:1>*4, <qmd:ingot:1>*3, <thermalfoundation:material:129>, 20000);
//AlloySmelter.addRecipe(<qmd:ingot_alloy:1>*4, [<ore:ingotNiobium>*3, <ore:ingotTin>], 20000);


// Zirconium-Molybdenum Alloy //
InductionSmelter.addRecipe(<nuclearcraft:alloy:16>*16, <rockhounding_chemistry:metal_items:12>*15, <nuclearcraft:ingot:10>, 100000);
//AlloySmelter.addRecipe(<nuclearcraft:alloy:16>*16, [<ore:ingotMolybdenum>*15, <ore:ingotZirconium>], 100000);

// Silicon Carbide //
InductionSmelter.addRecipe(<nuclearcraft:alloy:13>*2, <nuclearcraft:gem:6>, <rockhounding_chemistry:metal_items:7>, 10000);
InductionSmelter.addRecipe(<nuclearcraft:alloy:13>*2, <nuclearcraft:gem:6>, <nuclearcraft:ingot:8>, 10000);
//AlloySmelter.addRecipe(<nuclearcraft:alloy:13>*2, [<ore:itemSilicon>, <ore:ingotGraphite>], 10000);

// Zircaloy //
InductionSmelter.addRecipe(<rockhounding_chemistry:alloy_items_tech_b:7>*8, <nuclearcraft:ingot:10>*7, <thermalfoundation:material:129>, 40000);
//AlloySmelter.addRecipe(<rockhounding_chemistry:alloy_items_tech_b:7>*8, [<ore:ingotZirconium>*7, <ore:ingotTin>], 40000);

// Titanium Aluminide //
InductionSmelter.addRecipe(<advancedrocketry:productingot>*3, <thermalfoundation:material:132>*7, <techreborn:ingot:14>*3, 30000);
//AlloySmelter.addRecipe(<advancedrocketry:productingot>*3, [<ore:ingotAluminum>*7, <ore:ingotTitanium>*3], 30000);

// Titanium Iridium //
InductionSmelter.addRecipe(<advancedrocketry:productingot:1>*2, <techreborn:ingot:14>, <thermalfoundation:material:135>, 100000);
//AlloySmelter.addRecipe(<advancedrocketry:productingot:1>*2, [<ore:ingotTitanium>, <ore:ingotIridium>], 100000);

// --==Alloy Smelter Compatability recipes==-- //
// For recipes that can only be made in the Induction Smelter

// Refined Iron (Iron + Limestone Flux recipe)
//AlloySmelter.addRecipe(<techreborn:ingot:19>, [<minecraft:iron_ingot>, <contenttweaker:limestone_flux>], 10000);

// Spectre Ingot
//AlloySmelter.addRecipe(<randomthings:ingredient:3>, [<contenttweaker:inert_ingot>, <randomthings:ingredient:2>], 10000);
//AlloySmelter.addRecipe(<randomthings:ingredient:3>*2, [<ore:ingotOrichalcum>, <randomthings:ingredient:2>], 10000);

// Ender Biotite (Ender Air recipe)
//AlloySmelter.addRecipe(<quark:biotite>, [<ore:gemQuartzBlack>, <botania:manaresource:15>*8], 5000);

// Intermedium Ingot
//AlloySmelter.addRecipe(<mysticalagriculture:crafting:35>, [<ore:ingotPrudentium>, <ore:essenceIntermedium>*4], 10000);

// Prudentium Ingot
//AlloySmelter.addRecipe(<mysticalagriculture:crafting:34>, [<ore:ingotInferium>, <ore:essencePrudentium>*4], 5000);

// Dawnstone Ingot
//AlloySmelter.addRecipe(<embers:ingot_dawnstone>*4, [<ore:ingotRosegold>*4, <embers:shard_ember>], 75000);

// Broken Spawner (Empowered Enori recipe)
//AlloySmelter.addRecipe(<enderio:item_broken_spawner>, [<actuallyadditions:item_misc:20>*4, <actuallyadditions:block_crystal_empowered:5>], 15000);

// Hardened Glass 
//AlloySmelter.addRecipe(<thermalfoundation:glass:3>, [<ore:dustObsidian>*4, <ore:dustLead>], 8000);


// Pink Slime ingot //
InductionSmelter.addRecipe(<enderio:item_alloy_endergy_ingot:4>, <enderio:item_alloy_endergy_ingot:1>, <tconstruct:ingots:3>, 50000);
//AlloySmelter.addRecipe(<enderio:item_alloy_endergy_ingot:4>, [<enderio:item_alloy_endergy_ingot:1>, <tconstruct:ingots:3>], 50000);
AlloyFurnace.addRecipe(<enderio:item_alloy_endergy_ingot:1>, <tconstruct:ingots:3>, <enderio:item_alloy_endergy_ingot:4>);

// Crystal ingot //
InductionSmelter.addRecipe(<enderio:item_alloy_endergy_ingot:1>, <minecraft:gold_ingot>, <enderio:item_material:36>, 20000);

// Melodic //
AlloyFurnace.removeRecipeWithOutput(<enderio:item_alloy_endergy_ingot:2>);
//AlloySmelter.removeRecipe(<enderio:item_alloy_endergy_ingot:2>);
//AlloySmelter.addRecipe(<enderio:item_alloy_endergy_ingot:2>, [<enderio:item_alloy_endergy_ingot:4>, <enderio:item_alloy_ingot:8>,<minecraft:chorus_fruit_popped>], 100000);


// Tungsten Carbide //
AlloyFurnace.removeRecipeWithOutput(<qmd:ingot_alloy>*2);
AlloyFurnace.addRecipe(<ore:ingotTungsten>, <ore:ingotGraphite>, <qmd:ingot_alloy>*2);
InductionSmelter.addRecipe(<qmd:ingot_alloy>*2, <techreborn:ingot:15>, <rockhounding_chemistry:metal_items:7>, 40000);
//AlloySmelter.addRecipe(<qmd:ingot_alloy>*2, [<ore:ingotTungsten>, <ore:ingotGraphite>], 40000);


// Brass //
InductionSmelter.removeRecipe(<techreborn:dust:59>, <thermalfoundation:material:64>*3); 
InductionSmelter.removeRecipe(<techreborn:ingot:18>, <thermalfoundation:material:64>*3); 
InductionSmelter.removeRecipe(<techreborn:ingot:18>, <thermalfoundation:material:128>*3); 
InductionSmelter.removeRecipe(<techreborn:dust:59>, <thermalfoundation:material:128>*3); 
ArcFurnace.removeRecipe(<thaumcraft:ingot:2>);

AlloyFurnace.removeRecipeWithOutput(<techreborn:ingot:1>*4);

AlloyFurnace.addRecipe(<ore:ingotCopper>*2, <ore:ingotZinc>, <techreborn:ingot:1>*3);
InductionSmelter.addRecipe(<techreborn:ingot:1>*3, <thermalfoundation:material:128>*2, <techreborn:ingot:18>, 40000);
//AlloySmelter.addRecipe(<techreborn:ingot:1>*3, [<ore:ingotCopper>*2, <ore:ingotZinc>], 40000);



// Rose Gold //
//AlloySmelter.addRecipe(<rockhounding_chemistry:alloy_items_deco:4>*4, [<minecraft:gold_ingot>*3, <ore:ingotCopper>,<ore:nuggetSilver>], 20000);


// XP Ingot //
val xpMap as int[IItemStack] = {
<actuallyadditions:item_solidified_experience>:10,
<minecraft:experience_bottle>:20,
<mysticalagriculture:xp_droplet>:20,
<deepmoblearning:living_matter_overworldian>:10,
<deepmoblearning:living_matter_hellish>:15,
<deepmoblearning:living_matter_extraterrestrial>:20,
<deepmoblearning:living_matter_twilight>:30,
} as int[IItemStack];
for matter, qty in xpMap {
InfuserType.addTypeObject(matter, "EXPERIENCE", qty);
}
infuser.addRecipe("EXPERIENCE", 50, <mekanism:ingot:3>, <contenttweaker:ingot_xp>);
recipes.addShaped(<contenttweaker:block_xp>, 
[[<contenttweaker:ingot_xp>,<contenttweaker:ingot_xp>,<contenttweaker:ingot_xp>],
[<contenttweaker:ingot_xp>,<contenttweaker:ingot_xp>,<contenttweaker:ingot_xp>],
[<contenttweaker:ingot_xp>,<contenttweaker:ingot_xp>,<contenttweaker:ingot_xp>]]);
recipes.addShapeless(<contenttweaker:ingot_xp>*9, [<contenttweaker:block_xp>]);

// Refined Obsidian (Finally) //
Melter.removeRecipeWithInput(<mekanism:otherdust:5>);
Melting.removeRecipe(<liquid:refinedobsidian>, <mekanism:otherdust:5>);
Overrides.removeRecipe(<liquid:refinedobsidian>, <mekanism:otherdust:5>);
HighOven.removeMeltingOverride(<liquid:refinedobsidian>, <mekanism:otherdust:5>);
ArcFurnace.removeRecipe(<mekanism:ingot>);


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

// Adaptive Ingot Recipes //
val alloystoAdapt =
[
<contenttweaker:inert_ingot>,
<enderio:item_alloy_endergy_ingot:5>,
<enderio:item_alloy_ingot:1>,
<enderio:item_alloy_ingot:3>,
<enderio:item_alloy_ingot:4>,
<enderio:item_alloy_ingot:5>,
<enderio:item_alloy_ingot:6>,
<enderio:item_alloy_ingot:7>,
<enderio:item_alloy_ingot>,
<nuclearcraft:alloy:6>,
<tconstruct:ingots:5>,
<thermalfoundation:material:160>,
<thermalfoundation:material:161>,
<thermalfoundation:material:162>,
<thermalfoundation:material:163>,
<thermalfoundation:material:164>,
]
 as IItemStack[];

for item in alloystoAdapt {
//AlloySmelter.addRecipe(item * 3, [<contenttweaker:adaptive_ingot>, item], 15000);
ArcFurnace.addRecipe(item * 3, <contenttweaker:adaptive_ingot>, null, 500, 1024, [item], "Alloying");
AlloyFurnace.addRecipe(<contenttweaker:adaptive_ingot>, item, item * 3);
InductionSmelter.addRecipe(item * 3, <contenttweaker:adaptive_ingot>, item, 15000);
}

// --==NC Fuels for Induction Furnace/Alloy Smelter==-- //
// Recipes for Zirconium/Carbide variants of all isotopes/fuels for the Induction Furnace/Alloy Smelter

val NormFuel = [
<nuclearcraft:uranium>,
<nuclearcraft:uranium:5>,
<nuclearcraft:uranium:10>,
<nuclearcraft:neptunium>,
<nuclearcraft:neptunium:5>,
<nuclearcraft:plutonium>,
<nuclearcraft:plutonium:5>,
<nuclearcraft:plutonium:10>,
<nuclearcraft:plutonium:15>,
<nuclearcraft:americium>,
<nuclearcraft:americium:5>,
<nuclearcraft:americium:10>,
<nuclearcraft:curium>,
<nuclearcraft:curium:5>,
<nuclearcraft:curium:10>,
<nuclearcraft:curium:15>,
<nuclearcraft:berkelium>,
<nuclearcraft:berkelium:5>,
<nuclearcraft:californium>,
<nuclearcraft:californium:5>,
<nuclearcraft:californium:10>,
<nuclearcraft:californium:15>,
<nuclearcraft:pellet_thorium>,
<nuclearcraft:pellet_uranium>,
<nuclearcraft:pellet_uranium:2>,
<nuclearcraft:pellet_uranium:4>,
<nuclearcraft:pellet_uranium:6>,
<nuclearcraft:pellet_neptunium>,
<nuclearcraft:pellet_neptunium:2>,
<nuclearcraft:pellet_plutonium>,
<nuclearcraft:pellet_plutonium:2>,
<nuclearcraft:pellet_plutonium:4>,
<nuclearcraft:pellet_plutonium:6>,
<nuclearcraft:pellet_mixed>,
<nuclearcraft:pellet_mixed:2>,
<nuclearcraft:pellet_americium>,
<nuclearcraft:pellet_americium:2>,
<nuclearcraft:pellet_curium>,
<nuclearcraft:pellet_curium:2>,
<nuclearcraft:pellet_curium:4>,
<nuclearcraft:pellet_curium:6>,
<nuclearcraft:pellet_curium:8>,
<nuclearcraft:pellet_curium:10>,
<nuclearcraft:pellet_berkelium>,
<nuclearcraft:pellet_berkelium:2>,
<nuclearcraft:pellet_californium>,
<nuclearcraft:pellet_californium:2>,
<nuclearcraft:pellet_californium:4>,
<nuclearcraft:pellet_californium:6>
] as IItemStack[];

// Zirconium Fuels and Isotopes
val ZircFuel = [
<nuclearcraft:uranium:4>,
<nuclearcraft:uranium:9>,
<nuclearcraft:uranium:14>,
<nuclearcraft:neptunium:4>,
<nuclearcraft:neptunium:9>,
<nuclearcraft:plutonium:4>,
<nuclearcraft:plutonium:9>,
<nuclearcraft:plutonium:14>,
<nuclearcraft:plutonium:19>,
<nuclearcraft:americium:4>,
<nuclearcraft:americium:9>,
<nuclearcraft:americium:14>,
<nuclearcraft:curium:4>,
<nuclearcraft:curium:9>,
<nuclearcraft:curium:14>,
<nuclearcraft:curium:19>,
<nuclearcraft:berkelium:4>,
<nuclearcraft:berkelium:9>,
<nuclearcraft:californium:4>,
<nuclearcraft:californium:9>,
<nuclearcraft:californium:14>,
<nuclearcraft:californium:19>,
<nuclearcraft:fuel_thorium:3>,
<nuclearcraft:fuel_uranium:3>,
<nuclearcraft:fuel_uranium:7>,
<nuclearcraft:fuel_uranium:11>,
<nuclearcraft:fuel_uranium:15>,
<nuclearcraft:fuel_neptunium:3>,
<nuclearcraft:fuel_neptunium:7>,
<nuclearcraft:fuel_plutonium:3>,
<nuclearcraft:fuel_plutonium:7>,
<nuclearcraft:fuel_plutonium:11>,
<nuclearcraft:fuel_plutonium:15>,
<nuclearcraft:fuel_mixed:3>,
<nuclearcraft:fuel_mixed:7>,
<nuclearcraft:fuel_americium:3>,
<nuclearcraft:fuel_americium:7>,
<nuclearcraft:fuel_curium:3>,
<nuclearcraft:fuel_curium:7>,
<nuclearcraft:fuel_curium:11>,
<nuclearcraft:fuel_curium:15>,
<nuclearcraft:fuel_curium:19>,
<nuclearcraft:fuel_curium:23>,
<nuclearcraft:fuel_berkelium:3>,
<nuclearcraft:fuel_berkelium:7>,
<nuclearcraft:fuel_californium:3>,
<nuclearcraft:fuel_californium:7>,
<nuclearcraft:fuel_californium:11>,
<nuclearcraft:fuel_californium:15>,
] as IItemStack[];

for i, item in NormFuel {
InductionSmelter.addRecipe(ZircFuel[i], item, <rockhounding_chemistry:metal_items:1>, 20000);
//AlloySmelter.addRecipe(ZircFuel[i], [item, <ore:ingotZirconium>], 20000);
}


// Carbide Fuels and Isotopes
val CarbFuel = [
<nuclearcraft:uranium:1>,
<nuclearcraft:uranium:6>,
<nuclearcraft:uranium:11>,
<nuclearcraft:neptunium:1>,
<nuclearcraft:neptunium:6>,
<nuclearcraft:plutonium:1>,
<nuclearcraft:plutonium:6>,
<nuclearcraft:plutonium:11>,
<nuclearcraft:plutonium:16>,
<nuclearcraft:americium:1>,
<nuclearcraft:americium:6>,
<nuclearcraft:americium:11>,
<nuclearcraft:curium:1>,
<nuclearcraft:curium:6>,
<nuclearcraft:curium:11>,
<nuclearcraft:curium:16>,
<nuclearcraft:berkelium:1>,
<nuclearcraft:berkelium:6>,
<nuclearcraft:californium:1>,
<nuclearcraft:californium:6>,
<nuclearcraft:californium:11>,
<nuclearcraft:californium:16>,
<nuclearcraft:pellet_thorium:1>,
<nuclearcraft:pellet_uranium:1>,
<nuclearcraft:pellet_uranium:3>,
<nuclearcraft:pellet_uranium:5>,
<nuclearcraft:pellet_uranium:7>,
<nuclearcraft:pellet_neptunium:1>,
<nuclearcraft:pellet_neptunium:3>,
<nuclearcraft:pellet_plutonium:1>,
<nuclearcraft:pellet_plutonium:3>,
<nuclearcraft:pellet_plutonium:5>,
<nuclearcraft:pellet_plutonium:7>,
<nuclearcraft:pellet_mixed:1>,
<nuclearcraft:pellet_mixed:3>,
<nuclearcraft:pellet_americium:1>,
<nuclearcraft:pellet_americium:3>,
<nuclearcraft:pellet_curium:1>,
<nuclearcraft:pellet_curium:3>,
<nuclearcraft:pellet_curium:5>,
<nuclearcraft:pellet_curium:7>,
<nuclearcraft:pellet_curium:9>,
<nuclearcraft:pellet_curium:11>,
<nuclearcraft:pellet_berkelium:1>,
<nuclearcraft:pellet_berkelium:3>,
<nuclearcraft:pellet_californium:1>,
<nuclearcraft:pellet_californium:3>,
<nuclearcraft:pellet_californium:5>,
<nuclearcraft:pellet_californium:7>
] as IItemStack[];

for i, item in NormFuel {
InductionSmelter.addRecipe(CarbFuel[i], item, <rockhounding_chemistry:metal_items:7>, 20000);
InductionSmelter.addRecipe(CarbFuel[i], item, <nuclearcraft:ingot:8>, 20000);
//AlloySmelter.addRecipe(CarbFuel[i], [item, <ore:ingotGraphite>], 20000);
}

##########################################################################################
print("==================== end of alloys.zs ====================");
