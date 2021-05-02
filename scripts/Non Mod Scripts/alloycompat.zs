import crafttweaker.item.IItemStack as IItemStack;

print("==================== loading alloycompat.zs ====================");
##########################################################################################

######### Thanks Hua En! #########
/* 
All Alloy Furnace/Induction Smelter/Alloy Smelter inconsistencies:
Not in Induction Smelter (but in Alloy Furnace and Alloy Smelter)
All adaptive ingot recipes, including the adaptive ingot itself
Polymer Clay
Osmiridium
Vivid Alloy
End Steel
Thermoconducting Alloy
Extreme Alloy
Lithium Manganese Dioxide Alloy
Magnesium Diboride Alloy
Hard Carbon Alloy
Quartz Glass
Vibrant Quartz Glass

Can only be made in Alloy Furnace
Super Alloy
Zinc Sulfide
Niobium-Titanium
Niobium-Tin
Titanium Aluminide
Titanium Iridium (block recipe)
HSLA Steel
Zirconium-Molybdenum Alloy
Silicon Carbide
Zircaloy 
NC Carbide and Zirconium fuels

Can only be made in Induction Smelter 
Refined Iron (Iron + Limestone Flux recipe)
Spectre Ingot
Ender Biotite (Ender Air recipe)
Intermedium Ingot
Prudentium Ingot
Dawnstone Ingot
Broken Spawner (Empowered Enori recipe)
Hardened Glass 
*/

// Crafttweaker Methods //
// mods.nuclearcraft.AlloyFurnace.addRecipe(IIngredient itemInput1, IIngredient itemInput2, IIngredient itemOutput, @Optional double timeMultiplier, @Optional double powerMultiplier, @Optional double processRadiation);
// mods.thermalexpansion.InductionSmelter.addRecipe(IItemStack primaryOutput, IItemStack primaryInput, IItemStack secondaryInput, int energy, @Optional IItemStack secondaryOutput, @Optional int secondaryChance);
// mods.enderio.AlloySmelter.addRecipe(IItemStack output, IIngredient[] input, @optional int energyCost, @Optional float xp);

// --==Induction Smelter Compatability recipes==-- //
// For recipes that are not in the Induction Smelter, but are in the Alloy Furnace and Alloy Smelter

// Adaptive Ingot
mods.thermalexpansion.InductionSmelter.addRecipe(<contenttweaker:adaptive_ingot>, <contenttweaker:material_part:30>, <enderio:block_infinity>, 15000);



// Adaptive Ingot Recipes //

// Inert Ingot
mods.thermalexpansion.InductionSmelter.addRecipe(<contenttweaker:inert_ingot>*3, <contenttweaker:adaptive_ingot>, <contenttweaker:inert_ingot>, 15000);

// Energetic Silver Ingot
mods.thermalexpansion.InductionSmelter.addRecipe(<enderio:item_alloy_endergy_ingot:5>*3, <contenttweaker:adaptive_ingot>, <enderio:item_alloy_endergy_ingot:5>, 15000);

// Energetic Alloy Ingot
mods.thermalexpansion.InductionSmelter.addRecipe(<enderio:item_alloy_ingot:1>*3, <contenttweaker:adaptive_ingot>, <enderio:item_alloy_ingot:1>, 15000);

// Redstone Alloy Ingot
mods.thermalexpansion.InductionSmelter.addRecipe(<enderio:item_alloy_ingot:3>*3, <contenttweaker:adaptive_ingot>, <enderio:item_alloy_ingot:3>, 15000);

// Conductive Iron Ingot
mods.thermalexpansion.InductionSmelter.addRecipe(<enderio:item_alloy_ingot:4>*3, <contenttweaker:adaptive_ingot>, <enderio:item_alloy_ingot:4>, 15000);

// Pulsating Iron Ingot
mods.thermalexpansion.InductionSmelter.addRecipe(<enderio:item_alloy_ingot:5>*3, <contenttweaker:adaptive_ingot>, <enderio:item_alloy_ingot:5>, 15000);

// Dark Steel Ingot
mods.thermalexpansion.InductionSmelter.addRecipe(<enderio:item_alloy_ingot:6>*3, <contenttweaker:adaptive_ingot>, <enderio:item_alloy_ingot:6>, 15000);

// Soularium Ingot
mods.thermalexpansion.InductionSmelter.addRecipe(<enderio:item_alloy_ingot:7>*3, <contenttweaker:adaptive_ingot>, <enderio:item_alloy_ingot:7>, 15000);

// Electrical Steel Ingot
mods.thermalexpansion.InductionSmelter.addRecipe(<enderio:item_alloy_ingot>*3, <contenttweaker:adaptive_ingot>, <enderio:item_alloy_ingot>, 15000);

// Ferroboron Alloy Ingot
mods.thermalexpansion.InductionSmelter.addRecipe(<nuclearcraft:alloy:6>*3, <contenttweaker:adaptive_ingot>, <nuclearcraft:alloy:6>, 15000);

// Aluminum Brass Ingot
mods.thermalexpansion.InductionSmelter.addRecipe(<tconstruct:ingots:5>*3, <contenttweaker:adaptive_ingot>, <tconstruct:ingots:5>, 15000);

// Steel Ingot
mods.thermalexpansion.InductionSmelter.addRecipe(<thermalfoundation:material:160>*3, <contenttweaker:adaptive_ingot>, <thermalfoundation:material:160>, 15000);

// Electrum Ingot
mods.thermalexpansion.InductionSmelter.addRecipe(<thermalfoundation:material:161>*3, <contenttweaker:adaptive_ingot>, <thermalfoundation:material:161>, 15000);

// Invar Ingot
mods.thermalexpansion.InductionSmelter.addRecipe(<thermalfoundation:material:162>*3, <contenttweaker:adaptive_ingot>, <thermalfoundation:material:162>, 15000);

// Bronze Ingot
mods.thermalexpansion.InductionSmelter.addRecipe(<thermalfoundation:material:163>*3, <contenttweaker:adaptive_ingot>, <thermalfoundation:material:163>, 15000);

// Constantan Ingot
mods.thermalexpansion.InductionSmelter.addRecipe(<thermalfoundation:material:164>*3, <contenttweaker:adaptive_ingot>, <thermalfoundation:material:164>, 15000);



// Polymer Clay Recipes //
mods.thermalexpansion.InductionSmelter.addRecipe(<deepmoblearning:polymer_clay>*4, <minecraft:iron_ingot>, <enderio:item_material:22>*2, 5000);
mods.thermalexpansion.InductionSmelter.addRecipe(<deepmoblearning:polymer_clay>*8, <minecraft:gold_ingot>, <enderio:item_material:22>*4, 10000);
mods.thermalexpansion.InductionSmelter.addRecipe(<deepmoblearning:polymer_clay>*16, <thermalfoundation:material:134>, <enderio:item_material:22>*8, 15000);
mods.thermalexpansion.InductionSmelter.addRecipe(<deepmoblearning:polymer_clay>*32, <randomthings:ingredient:3>, <enderio:item_material:22>*16, 20000);

// Osmiridium
mods.thermalexpansion.InductionSmelter.addRecipe(<plustic:osmiridiumingot>*2, <mekanism:ingot:1>, <thermalfoundation:material:135>, 1000000);

// Vivid Alloy
mods.thermalexpansion.InductionSmelter.addRecipe(<enderio:item_alloy_endergy_ingot:6>*2, <enderio:item_alloy_endergy_ingot:5>, <minecraft:ender_pearl>, 10000);

// End Steel
mods.thermalexpansion.InductionSmelter.addRecipe(<enderio:item_alloy_ingot:8>*2, <enderio:item_alloy_ingot:6>, <nuclearcraft:compound:9>*2, 20000);

// Thermoconducting Alloy
mods.thermalexpansion.InductionSmelter.addRecipe(<nuclearcraft:alloy:11>*2, <nuclearcraft:alloy:10>, <nuclearcraft:gem:5>, 9000);

// Extreme Alloy
mods.thermalexpansion.InductionSmelter.addRecipe(<nuclearcraft:alloy:10>, <nuclearcraft:alloy:1>, <nuclearcraft:alloy:2>, 16000);

// Lithium Manganese Dioxide Alloy
mods.thermalexpansion.InductionSmelter.addRecipe(<nuclearcraft:alloy:4>*2, <nuclearcraft:ingot:15>, <nuclearcraft:ingot:6>, 6000);

// Magnesium Diboride Alloy
mods.thermalexpansion.InductionSmelter.addRecipe(<nuclearcraft:alloy:3>*3, <nuclearcraft:ingot:7>, <nuclearcraft:ingot:5>*2, 4000);

// Hard Carbon Alloy
mods.thermalexpansion.InductionSmelter.addRecipe(<nuclearcraft:alloy:2>*2, <rockhounding_chemistry:metal_items:7>*2, <minecraft:diamond>, 8000);
mods.thermalexpansion.InductionSmelter.addRecipe(<nuclearcraft:alloy:2>*2, <nuclearcraft:ingot:8>*2, <minecraft:diamond>, 8000);

// Quartz Glass
mods.thermalexpansion.InductionSmelter.addRecipe(<appliedenergistics2:quartz_glass>, <enderio:block_fused_quartz>, <appliedenergistics2:material:2>, 15000);
mods.thermalexpansion.InductionSmelter.addRecipe(<appliedenergistics2:quartz_glass>, <thermalfoundation:glass:3>, <appliedenergistics2:material:2>, 15000);

// Vibrant Quartz Glass
mods.thermalexpansion.InductionSmelter.addRecipe(<appliedenergistics2:quartz_vibrant_glass>, <appliedenergistics2:quartz_glass>, <minecraft:glowstone_dust>*2, 15000);



// --==Induction Smelter/Alloy Smelter Compatability recipes==-- //
// For recipes that can only be made in the Alloy Furnace

// Super Alloy
mods.thermalexpansion.InductionSmelter.addRecipe(<qmd:ingot_alloy:6>*3, <rockhounding_chemistry:alloy_items_tech:22>*2, <qmd:ingot_alloy:3>, 50000);
mods.enderio.AlloySmelter.addRecipe(<qmd:ingot_alloy:6>*3, [<ore:ingotNichrome>*2, <ore:ingotNiobiumTitanium>], 50000);

// Zinc Sulfide
mods.thermalexpansion.InductionSmelter.addRecipe(<qmd:chemical_dust:7>, <techreborn:dust:59>, <thermalfoundation:material:771>, 10000);
mods.enderio.AlloySmelter.addRecipe(<qmd:chemical_dust:7>, [<ore:dustZinc>, <ore:dustSulfur>], 10000);

// Niobium-Titanium
mods.thermalexpansion.InductionSmelter.addRecipe(<qmd:ingot_alloy:3>*2, <qmd:ingot:1>, <techreborn:ingot:14>, 30000);
mods.enderio.AlloySmelter.addRecipe(<qmd:ingot_alloy:3>*2, [<ore:ingotNiobium>, <ore:ingotTitanium>], 30000);

// Niobium-Tin
mods.thermalexpansion.InductionSmelter.addRecipe(<qmd:ingot_alloy:1>*4, <qmd:ingot:1>*3, <thermalfoundation:material:129>, 20000);
mods.enderio.AlloySmelter.addRecipe(<qmd:ingot_alloy:1>*4, [<ore:ingotNiobium>*3, <ore:ingotTin>], 20000);

// Titanium Aluminide
mods.thermalexpansion.InductionSmelter.addRecipe(<advancedrocketry:productingot>*3, <thermalfoundation:material:132>*7, <techreborn:ingot:14>*3, 30000);
mods.enderio.AlloySmelter.addRecipe(<advancedrocketry:productingot>*3, [<ore:ingotAluminum>*7, <ore:ingotTitanium>*3], 30000);

// Titanium Iridium
mods.thermalexpansion.InductionSmelter.addRecipe(<advancedrocketry:productingot:1>*2, <techreborn:ingot:14>, <thermalfoundation:material:135>, 100000);
mods.enderio.AlloySmelter.addRecipe(<advancedrocketry:productingot:1>*2, [<ore:ingotTitanium>, <ore:ingotIridium>], 100000);

// HSLA Steel
mods.thermalexpansion.InductionSmelter.addRecipe(<nuclearcraft:alloy:15>*16, <minecraft:iron_ingot>*15, <nuclearcraft:compound:10>, 100000);
mods.enderio.AlloySmelter.addRecipe(<nuclearcraft:alloy:15>*16, [<minecraft:iron_ingot>*15, <nuclearcraft:compound:10>], 100000);

// Zirconium-Molybdenum Alloy
mods.thermalexpansion.InductionSmelter.addRecipe(<nuclearcraft:alloy:16>*16, <rockhounding_chemistry:metal_items:12>*15, <nuclearcraft:ingot:10>, 100000);
mods.enderio.AlloySmelter.addRecipe(<nuclearcraft:alloy:16>*16, [<ore:ingotMolybdenum>*15, <ore:ingotZirconium>], 100000);

// Silicon Carbide
mods.thermalexpansion.InductionSmelter.addRecipe(<nuclearcraft:alloy:13>*2, <nuclearcraft:gem:6>, <rockhounding_chemistry:metal_items:7>, 10000);
mods.thermalexpansion.InductionSmelter.addRecipe(<nuclearcraft:alloy:13>*2, <nuclearcraft:gem:6>, <nuclearcraft:ingot:8>, 10000);
mods.enderio.AlloySmelter.addRecipe(<nuclearcraft:alloy:13>*2, [<ore:itemSilicon>, <ore:ingotGraphite>], 10000);

// Zircaloy 
mods.thermalexpansion.InductionSmelter.addRecipe(<rockhounding_chemistry:alloy_items_tech_b:7>*8, <nuclearcraft:ingot:10>*7, <thermalfoundation:material:129>, 40000);
mods.enderio.AlloySmelter.addRecipe(<rockhounding_chemistry:alloy_items_tech_b:7>*8, [<ore:ingotZirconium>*7, <ore:ingotTin>], 40000);



// --==Alloy Smelter Compatability recipes==-- //
// For recipes that can only be made in the Induction Smelter

// Refined Iron (Iron + Limestone Flux recipe)
mods.enderio.AlloySmelter.addRecipe(<techreborn:ingot:19>, [<minecraft:iron_ingot>, <thebetweenlands:items_misc:27>], 10000);

// Spectre Ingot
mods.enderio.AlloySmelter.addRecipe(<randomthings:ingredient:3>, [<contenttweaker:inert_ingot>, <randomthings:ingredient:2>], 10000);
mods.enderio.AlloySmelter.addRecipe(<randomthings:ingredient:3>*2, [<ore:ingotOrichalcum>, <randomthings:ingredient:2>], 10000);

// Ender Biotite (Ender Air recipe)
mods.enderio.AlloySmelter.addRecipe(<quark:biotite>, [<ore:gemQuartzBlack>, <botania:manaresource:15>*8], 5000);

// Intermedium Ingot
mods.enderio.AlloySmelter.addRecipe(<mysticalagriculture:crafting:35>, [<ore:ingotPrudentium>, <ore:essenceIntermedium>*4], 10000);

// Prudentium Ingot
mods.enderio.AlloySmelter.addRecipe(<mysticalagriculture:crafting:34>, [<ore:ingotInferium>, <ore:essencePrudentium>*4], 5000);

// Dawnstone Ingot
mods.enderio.AlloySmelter.addRecipe(<embers:ingot_dawnstone>*4, [<ore:ingotRosegold>*4, <embers:shard_ember>], 75000);

// Broken Spawner (Empowered Enori recipe)
mods.enderio.AlloySmelter.addRecipe(<enderio:item_broken_spawner>, [<actuallyadditions:item_misc:20>*4, <actuallyadditions:block_crystal_empowered:5>], 15000);

// Hardened Glass 
mods.enderio.AlloySmelter.addRecipe(<thermalfoundation:glass:3>, [<ore:dustObsidian>*4, <ore:dustLead>], 8000);



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
mods.thermalexpansion.InductionSmelter.addRecipe(ZircFuel[i], item, <rockhounding_chemistry:metal_items:1>, 20000);
mods.enderio.AlloySmelter.addRecipe(ZircFuel[i], [item, <ore:ingotZirconium>], 20000);
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
mods.thermalexpansion.InductionSmelter.addRecipe(CarbFuel[i], item, <rockhounding_chemistry:metal_items:7>, 20000);
mods.thermalexpansion.InductionSmelter.addRecipe(CarbFuel[i], item, <nuclearcraft:ingot:8>, 20000);
mods.enderio.AlloySmelter.addRecipe(CarbFuel[i], [item, <ore:ingotGraphite>], 20000);
}

##########################################################################################
print("==================== end of alloycompat.zs ====================");