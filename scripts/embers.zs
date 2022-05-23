##########################################################################################
import mods.tconstruct.Alloy;
import mods.tconstruct.Melting;
import mods.tconstruct.Casting;
import crafttweaker.liquid.ILiquidStack;
import mods.embers.Mixer;
import mods.embers.EmberGeneration;
import crafttweaker.item.IItemStack;
import mods.thermalexpansion.Crucible;
import mods.botania.RuneAltar;
import mods.embers.Stamper;
import mods.astralsorcery.Lightwell;
import mods.thermalexpansion.Pulverizer;
import mods.aetherworks.MetalFormer;
import mods.nuclearcraft.Melter;
import mods.nuclearcraft.SaltMixer;
import mods.immersiveengineering.Refinery;
import mods.nuclearcraft.Crystallizer;

print("==================== loading embers.zs ====================");
##########################################################################################

val itemstoRemove =
[
<embers:beam_cannon>,
<embers:boiler>,
<mysticalmechanics:gear_gold_off>,
<mysticalmechanics:gear_gold_on>,
<embers:steam_engine>,
<embers:cinder_plinth>,
<embers:ember_bore>,
<embers:block_furnace>,
<embers:stamper>,
<embers:stamper_base>,
<embers:mixer>,
<embers:alchemy_pedestal>,
<embers:archaic_circuit>,
<embers:ashen_amulet>,
<embers:alchemy_tablet>,
<aetherworks:item_resource:2>,
]
 as IItemStack[];

for item in itemstoRemove {
	recipes.remove(item);
}


// JEI Tooltips //

<embers:ember_emitter>.addTooltip(format.red("Requires a Redstone Signal to function"));
<embers:ember_pulser>.addTooltip(format.red("Requires a Redstone Signal to function"));
<embers:ember_receiver>.addTooltip(format.red("Shift right click here first, then right click the Ember Emitter with the Tinkers hammer to connect"));
<embers:ember_funnel>.addTooltip(format.red("Shift right click here first, then right click the Ember Ejector with the Tinkers hammer to connect"));

<embers:crystal_ember>.addTooltip(format.red("Extracted from Bedrock with the Ember Bore"));
<embers:shard_ember>.addTooltip(format.red("Extracted from Bedrock with the Ember Bore"));
<embers:dust_ember>.addTooltip(format.red("Extracted from Bedrock with the Ember Bore"));
<embers:dust_ash>.addTooltip(format.red("Created by burning an item in the Cinder Plinth"));
<embers:cinder_plinth>.addTooltip(format.red("Burns items and produces ash piles"));


// Materials and Components //

// Caminite Blend
recipes.addShapeless(<embers:blend_caminite> * 4, [<embers:plate_caminite_raw>]);

// Redstone Gold Gears
recipes.addShaped(<mysticalmechanics:gear_gold_off>, [[<minecraft:redstone>, <minecraft:redstone>, <minecraft:redstone>],[<minecraft:redstone>, <ore:gearGold>, <minecraft:redstone>], [<minecraft:redstone>, <minecraft:redstone>, <minecraft:redstone>]]);
recipes.addShaped(<mysticalmechanics:gear_gold_on>, [[<minecraft:redstone_torch>, <minecraft:redstone_torch>, <minecraft:redstone_torch>],[<minecraft:redstone_torch>, <ore:gearGold>, <minecraft:redstone_torch>], [<minecraft:redstone_torch>, <minecraft:redstone_torch>, <minecraft:redstone_torch>]]);

// Infused Aspecti
mods.inworldcrafting.FluidToItem.transform(<contenttweaker:activatedaspectussilver>, <liquid:astralsorcery.liquidstarlight>, [<embers:aspectus_silver>], true);
mods.inworldcrafting.FluidToItem.transform(<contenttweaker:activatedaspectuscopper>, <liquid:astralsorcery.liquidstarlight>, [<embers:aspectus_copper>], true);
mods.inworldcrafting.FluidToItem.transform(<contenttweaker:activatedaspectusdawnstone>, <liquid:astralsorcery.liquidstarlight>, [<embers:aspectus_dawnstone>], true);

// Lightwell Aspecti Recipes
Lightwell.addLiquefaction(<embers:aspectus_silver>, <liquid:silver>, 1.2, 1.5, 0xcfcfcf);
Lightwell.addLiquefaction(<embers:aspectus_copper>, <liquid:copper>, 1.2, 1.5, 0xff9b4a);
Lightwell.addLiquefaction(<embers:aspectus_iron>, <liquid:iron>, 1.2, 1.5, 0xa6a6a6);
Lightwell.addLiquefaction(<embers:aspectus_lead>, <liquid:lead>, 1.2, 1.5, 0x5c6f7a);
Lightwell.addLiquefaction(<embers:aspectus_dawnstone>, <liquid:dawnstone>, 1.2, 1.5, 0xe89e43);

// Molten Embers
/*
Melting.addRecipe(<liquid:moltenembers> * 100, <embers:shard_ember>,1000);
Melting.addRecipe(<liquid:moltenembers> * 600, <embers:crystal_ember>,2000);
Melting.addRecipe(<liquid:moltenembers> * 2000, <embers:ember_cluster>,4000);
Melting.addRecipe(<liquid:moltenembers> * 50, <embers:dust_ember>,1000);
*/

Lightwell.addLiquefaction(<embers:shard_ember>, <liquid:moltenembers>, 1, 0.6, 0xc97c28);
Lightwell.addLiquefaction(<embers:crystal_ember>, <liquid:moltenembers>, 2, 0.6, 0xc97c28);
Lightwell.addLiquefaction(<embers:ember_cluster>, <liquid:moltenembers>, 10, 0.6, 0xc97c28); 

// Lens
recipes.addShaped(<aetherworks:item_resource:2>, [[null, <ore:ingotBronze>, null],[<ore:ingotBronze>, <aetherworks:item_resource>, <ore:ingotBronze>], [null, <ore:ingotBronze>, null]]);

//Archaic Brick
Casting.addTableRecipe(<embers:archaic_brick>, <embers:brick_caminite>, <liquid:inert_metal>, 72, true, 50);
mods.thermalexpansion.Transposer.addFillRecipe(<embers:archaic_brick>, <embers:brick_caminite>, <liquid:inert_metal> * 72, 2000);
mods.nuclearcraft.Infuser.addRecipe(<embers:brick_caminite>, <liquid:inert_metal> * 72, <embers:archaic_brick>);

// Archaic Circuit
recipes.addShaped(<embers:archaic_circuit>, [[null, <embers:archaic_brick>, null],[<embers:archaic_brick>, <thermalfoundation:material:320>, <embers:archaic_brick>], [null, <embers:archaic_brick>, null]]);

// Ashen Amulet
RuneAltar.addRecipe(<embers:ashen_amulet>,[<embers:archaic_circuit>, <thaumcraft:baubles>, <improvedbackpacks:tanned_leather>, <improvedbackpacks:tanned_leather>, <embers:dust_ash>, <embers:dust_ash>, <embers:dust_ash>, <embers:dust_ash>], 15000);


// Machines //

// Boiler
recipes.addShaped(<embers:boiler>, [[<thermalfoundation:material:128>, <thermalfoundation:material:128>, <thermalfoundation:material:128>],[<thermalfoundation:material:32>, <minecraft:furnace>, <thermalfoundation:material:32>], [<thermalfoundation:material:32>, <thermalfoundation:storage_alloy:3>, <thermalfoundation:material:32>]]);
recipes.addShaped(<embers:boiler>, [[null, <embers:ember_activator>, null], [<thermalfoundation:material:32>, <thermalfoundation:storage_alloy:3>, <thermalfoundation:material:32>]]);

//Steam Engine
recipes.addShaped(<embers:steam_engine>, [[null, <embers:pipe>, <embers:pipe>],[<mysticalmechanics:axle_iron>, <ore:gearIron> , <ore:plateCopper>], [<embers:block_caminite_brick_slab>, <embers:block_caminite_brick_slab>, <embers:block_caminite_brick_slab>]]);

//Steam fix?
mods.embers.EmberGeneration.removeSteamEngineFuel(<liquid:steam>);
mods.embers.EmberGeneration.addSteamEngineFuel(<liquid:steam>, 4.0, 1, [100]);

//Cinder Plinth
recipes.addShaped(<embers:cinder_plinth>, [[null, <thermalfoundation:material:323>, null],[<moreplates:constantan_stick>, <arcanearchives:phoenixway>, <moreplates:constantan_stick>], [<thermalfoundation:material:323>, <embers:block_caminite_brick>, <thermalfoundation:material:323>]]);

// Beam Cannon
recipes.addShaped(<embers:beam_cannon>, [[<moreplates:energetic_alloy_plate>, <embers:crystal_ember>, <moreplates:energetic_alloy_plate>],[<moreplates:energetic_alloy_plate>, <embers:crystal_ember>, <moreplates:energetic_alloy_plate>], [<embers:ingot_dawnstone>, <embers:block_caminite_brick>, <embers:ingot_dawnstone>]]);

// Pedestal
recipes.addShaped(<embers:alchemy_pedestal>, [[<embers:plate_dawnstone>, null, <embers:plate_dawnstone>],[<techreborn:plates:35>, <embers:crystal_ember>, <techreborn:plates:35>], [<embers:stairs_caminite_brick>, <thermalfoundation:storage>, <embers:stairs_caminite_brick>]]);

// Mixer
recipes.addShaped(<embers:mixer>, [[<thermalfoundation:material:32>, <thermalfoundation:material:32>, <thermalfoundation:material:32>],[<thermalfoundation:material:32>, <thermalfoundation:storage_alloy:3>, <thermalfoundation:material:32>], [<botania:manaresource>, <embers:mech_core>, <botania:manaresource>]]);

// Stamper
recipes.addShaped(<embers:stamper>, [[<embers:brick_caminite>, <ore:plateCopper>, <embers:brick_caminite>],[<embers:brick_caminite>, <minecraft:iron_block>, <embers:brick_caminite>], [<embers:brick_caminite>, null, <embers:brick_caminite>]]);
recipes.addShaped(<embers:stamper_base>, [[null, null, null],[<ore:ingotIron>, null, <ore:ingotIron>], [<embers:block_caminite_brick>, <minecraft:bucket>, <embers:block_caminite_brick>]]);

// Ember bore
recipes.addShaped(<embers:ember_bore>, [[<embers:stairs_caminite_brick>, <ore:plateCopper>, <embers:stairs_caminite_brick>],[<embers:stairs_caminite_brick>, <embers:mech_core>, <embers:stairs_caminite_brick>], [<thermalfoundation:material:657>, <thermalfoundation:material:657>, <thermalfoundation:material:657>]]);

// Melter
recipes.addShaped(<embers:block_furnace>, [[<embers:brick_caminite>, <embers:plate_caminite>, <embers:brick_caminite>],[<embers:brick_caminite>, <thermalfoundation:material:320>, <embers:brick_caminite>], [<ore:ingotIron>, <morefurnaces:furnaceblock>, <ore:ingotIron>]]);

// Alchemy Table
recipes.addShaped(<embers:alchemy_tablet>, [[null, <embers:plate_dawnstone>, null],[<embers:stairs_caminite_brick>, <moreplates:energetic_silver_plate>, <embers:stairs_caminite_brick>], [<embers:block_caminite_brick>, <embers:ingot_dawnstone>, <embers:block_caminite_brick>]]);


## Embers Mixer ##

// Dawnstone
Mixer.remove(<liquid:dawnstone> * 8);
Mixer.add(<liquid:dawnstone> * 144,[<liquid:gold> * 144,<liquid:copper> * 144,<liquid:glowstone> * 125]);

// Inert Metal
Mixer.add(<liquid:inert_metal> * 72, [<liquid:silver> * 72, <liquid:lead> * 36]);

EmberGeneration.addMetalCoefficient(<embers:block_dawnstone>,3);

mods.embers.Alchemy.add(<embers:seed_dawnstone>, [<minecraft:quartz>,<embers:ingot_dawnstone>,<embers:ingot_dawnstone>,<embers:shard_ember>,<embers:shard_ember>], {"iron":48 to 64,"dawnstone":48 to 64});
//mods.embers.Alchemy.remove(IItemStack <output>);

// Remove Tungsten Melting
mods.embers.Melter.remove(<liquid:tungsten>);

//Glowstone Flows up :(
//mods.embers.Melter.add(<liquid:glowstone> * 250, <minecraft:glowstone_dust>);
//mods.embers.Melter.add(<liquid:glowstone> * 1000, <minecraft:glowstone>);

//New Aspectus recipes
/*
val aspectustoRemove =
[
<embers:aspectus_iron>,
<embers:aspectus_copper>,
<embers:aspectus_silver>,
<embers:aspectus_lead>,
<embers:aspectus_dawnstone>,
]
 as IItemStack[];

for aspectusOld in aspectustoRemove {
Stamper.remove(aspectusOld);
}

val AspectusMap as ILiquidStack[IItemStack] = {
<embers:aspectus_iron>:<liquid:iron>,
<embers:aspectus_copper>:<liquid:copper>,
<embers:aspectus_silver>:<liquid:silver>,
<embers:aspectus_lead>:<liquid:lead>,
<embers:aspectus_dawnstone>:<liquid:dawnstone>,
} as ILiquidStack[IItemStack];

for aspectusNew, molten in AspectusMap {
Stamper.add(aspectusNew, molten*576, <embers:stamp_plate>, <astralsorcery:itemrockcrystalsimple>);
}
*/

#################### AETHERIUM ##########################
// More Melting
Melter.addRecipe(<aetherworks:item_resource>, <liquid:aetherworks.aetherium_gas>*16);
Crucible.addRecipe(<liquid:aetherworks.aetherium_gas>*16, <aetherworks:item_resource>, 4000);

/*
//More Mixing
SaltMixer.addRecipe(<liquid:aetherworks.impure_aetherium_gas>*8, <liquid:electrum>*8, <liquid:aetherworks.aetherium_gas>*16);
Refinery.addRecipe(<liquid:aetherworks.aetherium_gas>*16, <liquid:aetherworks.impure_aetherium_gas>*8, <liquid:electrum>*8, 2048);
*/
mods.embers.Mixer.remove(<liquid:aetherworks.aetherium_gas>*16);

//No more crystals from ore
Pulverizer.removeRecipe(<aetherworks:aether_ore>);

//Condensed Aetherium
mods.thermalexpansion.Refinery.addRecipe(<liquid:condensed_aetherium> * 10, <minecraft:glowstone_dust>, <liquid:aetherworks.impure_aetherium_gas> * 20, 10000);

//Geode
Crystallizer.addRecipe(<liquid:condensed_aetherium> * 10, <thermalfoundation:geode>);


///CRACKING GEODES
mods.embers.DawnstoneAnvil.add([<contenttweaker:crystal_seed>*4],<thermalfoundation:geode>,null);

//Gas Form
mods.nuclearcraft.Enricher.addRecipe(<contenttweaker:crystal_seed>, <liquid:aerotheum> * 500, <liquid:aetherworks.aetherium_gas> * 244);

##=======================================================
##LEACHING VAT
##=======================================================
//mods.rockhounding_chemistry.LeachingVat.add(<thermalfoundation:geode>, [<minecraft:diamond>, <minecraft:emerald>, <minecraft:dye:4>, <techreborn:gem:1>, <techreborn:gem>,<techreborn:gem:4>,<techreborn:gem:3>,<thaumcraft:amber>,<techreborn:gem:2>], [2.10F, 5.69F, 7.51F, 3.80F, 10.07F, 8.40F, 12.93F, 4.32F, 5.20F], <liquid:crystal_slurry>*1000);

mods.rockhounding_chemistry.LeachingVat.add(<thermalfoundation:geode>, [
	<contenttweaker:crystal_seed>,
	<aetherworks:item_resource>,
	<rftools:dimensional_shard>,
	<mysticalagriculture:crafting:5>,
	<mysticalagradditions:stuff>, //Netherstar shard
	<minecraft:prismarine_shard>,
	<twilightforest:armor_shard>,
	<actuallyadditions:item_crystal_shard>,
	<actuallyadditions:item_crystal_shard:1>,
	<actuallyadditions:item_crystal_shard:2>,
	<actuallyadditions:item_crystal_shard:3>,
	<actuallyadditions:item_crystal_shard:4>,
	<actuallyadditions:item_crystal_shard:5>
	],
 	[
	 2.10F,
	 3.18F,
	 7.06F,
	 8.72F,
	 5.23F,
	 6.49F,
	 4.57F,
	 9.20F,
	 11.83F,
	 8.50F,
	 10.02F,
	 11.39F,
	 12.15F
	], <liquid:crystal_slurry> * 300);

##=======================================================
##RETENTION VAT
##=======================================================
//mods.rockhounding_chemistry.RetentionVat.add(<liquid:crystal_slurry>*300, [<ebwizardry:magic_crystal>, <astralsorcery:itemcraftingcomponent>, <actuallyadditions:item_crystal:4>, <appliedenergistics2:material:7>, <botania:manaresource:2>, <contenttweaker:crystal_seed>, <treasure2:onyx>], [3.18F, 4.88F, 7.51F, 3.30F, 12.05F, 9.79F, 15.01F]);

mods.rockhounding_chemistry.RetentionVat.add(<liquid:crystal_slurry> * 200, [<ebwizardry:magic_crystal>, <techreborn:gem>, <astralsorcery:itemcraftingcomponent>, <techreborn:gem:4>, <techreborn:gem:3>, <techreborn:gem:1>, <techreborn:gem:2>, <thaumcraft:amber>, <treasure2:onyx>], [2.79F, 3.18F, 4.88F, 7.51F, 3.30F, 12.05F, 9.79F, 11.13F, 15.01F]);

//remove old recipes
MetalFormer.removeRecipesByOutput(<aetherworks:item_resource:3>);
MetalFormer.removeRecipesByOutput(<aetherworks:item_resource:4>);
MetalFormer.removeRecipesByOutput(<aetherworks:item_resource:5>);

//New Materials
MetalFormer.addRecipe(<embers:ingot_dawnstone>, <liquid:aetherworks.aetherium_gas>*144, <aetherworks:item_resource:4>, 2100);
MetalFormer.addRecipe(<mysticalworld:amethyst_gem>, <liquid:aetherworks.aetherium_gas>*576, <aetherworks:item_resource:5>, 2500);


//Bad Crashing, Bad!
<mysticalmechanics:gearbox_frame>.addTooltip(format.red("Only rotate with an AE Quartz Wrench"));
<mysticalmechanics:mergebox_frame>.addTooltip(format.red("Only rotate with an AE Quartz Wrench"));

//Stamper alt recipes for if infuser doesnt work
Stamper.add(<botania:dreamwood:5>, <liquid:aetherworks.aetherium_gas>*18, <embers:stamp_flat>, <botania:dreamwood>);
Stamper.add(<astralsorcery:itemcraftingcomponent:4>, <liquid:aetherworks.aetherium_gas>*144, <embers:stamp_flat>, <astralsorcery:itemcraftingcomponent>);
##########################################################################################
print("==================== end of embers.zs ====================");