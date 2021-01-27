##########################################################################################
import mods.tconstruct.Alloy;
import mods.tconstruct.Melting;
import mods.tconstruct.Casting;
import crafttweaker.liquid.ILiquidStack;
import mods.embers.Mixer;
import mods.embers.EmberGeneration;
print("==================== loading mods embers.zs ====================");
##########################################################################################

recipes.addShapeless(<embers:blend_caminite> * 2, [<embers:plate_caminite_raw>]);

recipes.remove(<embers:boiler>);
recipes.addShaped(<embers:boiler>, [[<thermalfoundation:material:128>, <thermalfoundation:material:128>, <thermalfoundation:material:128>],[<thermalfoundation:material:32>, <minecraft:furnace>, <thermalfoundation:material:32>], [<thermalfoundation:material:32>, <thermalfoundation:storage_alloy:3>, <thermalfoundation:material:32>]]);
recipes.addShaped(<embers:boiler>, [[null, <embers:ember_activator>, null], [<thermalfoundation:material:32>, <thermalfoundation:storage_alloy:3>, <thermalfoundation:material:32>]]);


<embers:crystal_ember>.addTooltip(format.red("Extracted from Bedrock with the Ember Bore"));
<embers:shard_ember>.addTooltip(format.red("Extracted from Bedrock with the Ember Bore"));
<embers:dust_ember>.addTooltip(format.red("Extracted from Bedrock with the Ember Bore"));

recipes.remove(<mysticalmechanics:gear_gold_off>);
recipes.addShaped(<mysticalmechanics:gear_gold_off>, [[<minecraft:redstone>, <minecraft:redstone>, <minecraft:redstone>],[<minecraft:redstone>, <ore:gearGold>, <minecraft:redstone>], [<minecraft:redstone>, <minecraft:redstone>, <minecraft:redstone>]]);

recipes.remove(<mysticalmechanics:gear_gold_on>);
recipes.addShaped(<mysticalmechanics:gear_gold_on>, [[<minecraft:redstone_torch>, <minecraft:redstone_torch>, <minecraft:redstone_torch>],[<minecraft:redstone_torch>, <ore:gearGold>, <minecraft:redstone_torch>], [<minecraft:redstone_torch>, <minecraft:redstone_torch>, <minecraft:redstone_torch>]]);

recipes.remove(<embers:steam_engine>);
recipes.addShaped(<embers:steam_engine>, [[null, <embers:pipe>, <embers:pipe>],[<mysticalmechanics:axle_iron>, <thermalfoundation:material:290> , <ore:plateBronze>], [<embers:block_caminite_brick_slab>, <embers:block_caminite_brick_slab>, <embers:block_caminite_brick_slab>]]);

recipes.remove(<embers:cinder_plinth>);
recipes.addShaped(<embers:cinder_plinth>, [[null, <thermalfoundation:material:323>, null],[<techreborn:ingot:19>, <embers:superheater>, <techreborn:ingot:19>], [<thermalfoundation:material:323>, <embers:block_caminite_brick>, <thermalfoundation:material:323>]]);


//Dawnstone
Melting.addRecipe(<liquid:dawnstone> * 1296, <embers:block_dawnstone>);
Melting.addRecipe(<liquid:dawnstone> * 576, <embers:gear_dawnstone>);
Melting.addRecipe(<liquid:dawnstone> * 144, <embers:plate_dawnstone>);
Melting.addRecipe(<liquid:dawnstone> * 144, <embers:ingot_dawnstone>);
Melting.addRecipe(<liquid:moltenembers> * 100, <embers:shard_ember>,1000);
Melting.addRecipe(<liquid:moltenembers> * 600, <embers:crystal_ember>,2000);
Melting.addRecipe(<liquid:moltenembers> * 2000, <embers:ember_cluster>,4000);
Melting.addRecipe(<liquid:moltenembers> * 50, <embers:dust_ember>,1000);
Mixer.remove(<liquid:dawnstone> * 8);
Mixer.add(<liquid:dawnstone> * 144,[<liquid:gold> * 144,<liquid:copper> * 144,<liquid:glowstone> * 125]);

EmberGeneration.addMetalCoefficient(<embers:block_dawnstone>,3);

Casting.addTableRecipe(<embers:gear_dawnstone>, <tconstruct:cast_custom:4>, <liquid:dawnstone>, 576, false, 250);
Casting.addTableRecipe(<embers:plate_dawnstone>, <tconstruct:cast_custom:3>, <liquid:dawnstone>, 144, false, 100);
Casting.addTableRecipe(<embers:ingot_dawnstone>, <tconstruct:cast_custom>, <liquid:dawnstone>, 144, false, 100);
Casting.addBasinRecipe(<embers:block_dawnstone>, null, <liquid:dawnstone>, 1296);

mods.embers.Alchemy.add(<embers:seed_dawnstone>, [<minecraft:quartz>,<embers:ingot_dawnstone>,<embers:ingot_dawnstone>,<embers:shard_ember>,<embers:shard_ember>], {"iron":48 to 64,"dawnstone":48 to 64});
//mods.embers.Alchemy.remove(IItemStack <output>);

//inert metal
Mixer.add(<liquid:inert_metal> * 3, [<liquid:silver> * 2, <liquid:lead> * 1]);


recipes.remove(<embers:stamper>);
recipes.remove(<embers:stamper_base>);
recipes.addShaped(<embers:stamper>, [[<embers:brick_caminite>, <ore:plateCopper>, <embers:brick_caminite>],[<embers:brick_caminite>, <minecraft:iron_block>, <embers:brick_caminite>], [<embers:brick_caminite>, null, <embers:brick_caminite>]]);
recipes.addShaped(<embers:stamper_base>, [[null, null, null],[<ore:ingotIron>, null, <ore:ingotIron>], [<embers:block_caminite_brick>, <minecraft:bucket>, <embers:block_caminite_brick>]]);

recipes.remove(<embers:ember_bore>);
recipes.addShaped(<embers:ember_bore>, [[<embers:stairs_caminite_brick>, <ore:plateCopper>, <embers:stairs_caminite_brick>],[<embers:stairs_caminite_brick>, <embers:mech_core>, <embers:stairs_caminite_brick>], [<thermalfoundation:material:657>, <thermalfoundation:material:657>, <thermalfoundation:material:657>]]);

recipes.remove(<embers:block_furnace>);
recipes.addShaped(<embers:block_furnace>, [[<embers:brick_caminite>, <embers:plate_caminite>, <embers:brick_caminite>],[<embers:brick_caminite>, <thermalfoundation:material:320>, <embers:brick_caminite>], [<ore:ingotIron>, <techreborn:iron_furnace>, <ore:ingotIron>]]);

##########################################################################################
print("==================== end of mods embers.zs ====================");

//(any[], ZenTypeNative: crafttweaker.liquid.ILiquidStack[])