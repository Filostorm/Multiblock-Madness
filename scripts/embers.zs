##########################################################################################
import mods.tconstruct.Alloy;
import mods.tconstruct.Melting;
import mods.tconstruct.Casting;
import crafttweaker.liquid.ILiquidStack;
import crafttweaker.oredict.IOreDictEntry;
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
<embers:inferno_forge>,
]
 as IItemStack[];

for item in itemstoRemove {
	recipes.remove(item);
}

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
Lightwell.addLiquefaction(<contenttweaker:aspectus_gold>, <liquid:gold>, 1.2, 1.5, 0xd3d92b);
Lightwell.addLiquefaction(<contenttweaker:aspectus_tin>, <liquid:tin>, 1.2, 1.5, 0xd5dbd8);
Lightwell.addLiquefaction(<contenttweaker:aspectus_nickel>, <liquid:nickel>, 1.2, 1.5, 0xc8db97);

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

// Inferno Forge
recipes.addShaped(<embers:inferno_forge>, [[<ore:blockDawnstone>, <ore:plateIron>, <ore:blockDawnstone>],[<ore:ingotDawnstone>, <ore:blockCopper>, <ore:ingotDawnstone>], [<embers:block_caminite_brick>, <embers:superheater>, <embers:block_caminite_brick>]]);

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
mods.thermalexpansion.Imbuer.addRecipe(<liquid:aetherworks.aetherium_gas> * 244, <contenttweaker:crystal_seed>, <liquid:aerotheum> * 500, 10000);


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

# [Windup Box] from [Gold Gear][+3]
craft.remake(<mystgears:windup_box>, ["pretty",
  "▬ ▬ ▬",
  "I ¤ ◙",
  "▬ ▬ ▬"], {
  "▬": <ore:ingotIron>,                    # Iron Ingot
  "I": <mysticalmechanics:axle_iron>,      # Iron Axle
  "¤": <ore:gearGold>,                     # Gold Gear
  "◙": <mysticalmechanics:mergebox_frame>, # Mergebox Frame
});

//Stamper alt recipes for if infuser doesnt work
Stamper.add(<botania:dreamwood:5>, <liquid:aetherworks.aetherium_gas>*18, <embers:stamp_flat>, <botania:dreamwood>);
Stamper.add(<astralsorcery:itemcraftingcomponent:4>, <liquid:aetherworks.aetherium_gas>*144, <embers:stamp_flat>, <astralsorcery:itemcraftingcomponent>);

//Contenttweaker Aspectus Creation
val customAspecti = {
<contenttweaker:aspectus_gold> : <liquid:gold>,
<contenttweaker:aspectus_tin> : <liquid:tin>,
<contenttweaker:aspectus_nickel> : <liquid:nickel>
} as ILiquidStack[IItemStack];

for aspectus, molten in customAspecti {
	Stamper.add(aspectus, molten*576, <embers:stamp_plate>, <embers:shard_ember>);
}

# [Moonlight Amplifier] from [Resonating Gem][+3]
craft.remake(<aetherworks:moonlight_amplifier>, ["pretty",
  "▬ e ▬",
  "▬ ◊ e",
  "A A A"], {
  "▬": <ore:ingotDawnstone>,                    # Dawnstone Ingot
  "e": <ore:lensAether>,                        # Aetherium Lens
  "◊": <astralsorcery:itemcraftingcomponent:4>, # Resonating Gem
  "A": <embers:archaic_brick>,                  # Archaic Brick
});

##=======================================================
## STAMPER RECIPES
##=======================================================

val stamperRecipesToRemove =
[
	<mystgears:gear_infinity>,
	<mystgears:gear_terrasteel>,
	<mystgears:gear_diamond>,
	<techreborn:ingot:15>,
	<thermalfoundation:material:132>,
	<thermalfoundation:material:260>,
	<techreborn:plates:32>,
	<thermalfoundation:material:324>,
]
 as IItemStack[];

for item in stamperRecipesToRemove {
	Stamper.remove(item);
}

// Recipes for ingot, plate and gear stamper recipes up to ch3
// Format is fluid:[ingot, plate, gear]
val stamperList = {
	<liquid:molten_modularium>:[<modularmachinery:itemmodularium>, <contenttweaker:plate_modularium>, <contenttweaker:gear_modularium>],
	<liquid:conductive_iron>:[<enderio:item_alloy_ingot:4>, <moreplates:conductive_iron_plate>, <moreplates:conductive_iron_gear>],
	<liquid:pulsating_iron>:[<enderio:item_alloy_ingot:5>, <moreplates:pulsating_iron_plate>, null],
	<liquid:inert_metal>:[<contenttweaker:inert_ingot>, null, null],
	<liquid:invar>:[<thermalfoundation:material:162>, <thermalfoundation:material:354>, <thermalfoundation:material:290>],
	<liquid:constantan>:[<thermalfoundation:material:164>, <thermalfoundation:material:356>, <thermalfoundation:material:292>],
	<liquid:brass>:[<techreborn:ingot:1>, <thaumcraft:plate>, null],
	<liquid:manasteel>:[<botania:manaresource>, null, null],
	<liquid:thaumium>:[<thaumcraft:ingot>, null, null],
	<liquid:steel>:[<thermalfoundation:material:160>, <thermalfoundation:material:352>, <thermalfoundation:material:288>],
	<liquid:knightslime>:[<tconstruct:ingots:3>, <moreplates:knightslime_plate>, null],
	<liquid:pigiron>:[<tconstruct:ingots:4>, null, null],
	<liquid:prudentium>:[<mysticalagriculture:crafting:34>, null, <moreplates:prudentium_gear>],
	<liquid:ardite>:[<tconstruct:ingots:1>, null, <moreplates:ardite_gear>],
	<liquid:cobalt>:[<tconstruct:ingots>, null, <moreplates:cobalt_gear>],
	<liquid:orichalcum>:[<contenttweaker:material_part:20>, <contenttweaker:material_part:22>, <contenttweaker:material_part:21>],
	<liquid:palladium>:[<contenttweaker:material_part:30>, <contenttweaker:material_part:32>, <contenttweaker:material_part:31>],
	<liquid:starmetal>:[<astralsorcery:itemcraftingcomponent:1>, null, null],
	<liquid:electrum>:[<thermalfoundation:material:161>, <thermalfoundation:material:353>, <thermalfoundation:material:289>],
	<liquid:bronze>:[<thermalfoundation:material:163>, <thermalfoundation:material:355>, <thermalfoundation:material:291>],
} as IItemStack[][ILiquidStack];

for fluid, parts in stamperList {
	if (!(isNull(parts[0]))) {
		Stamper.add(parts[0], fluid * 144, <embers:stamp_bar>);
	}

	if (!(isNull(parts[1]))) {
		Stamper.add(parts[1], fluid * 144, <embers:stamp_plate>);
	}

	if (!(isNull(parts[2]))) {
		Stamper.add(parts[2], fluid * 576, <embers:stamp_gear>);
	}
}

##=======================================================
## MIXER RECIPES
##=======================================================

// Dawnstone
Mixer.remove(<liquid:dawnstone> * 8);
Mixer.add(<liquid:dawnstone> * 36,[<liquid:gold> * 36,<liquid:copper> * 36,<liquid:glowstone> * 25]);

// Inert Metal
Mixer.add(<liquid:inert_metal> * 16, [<liquid:silver> * 16, <liquid:lead> * 8]);

EmberGeneration.addMetalCoefficient(<embers:block_dawnstone>,3);

mods.embers.Alchemy.add(<embers:seed_dawnstone>, [<minecraft:quartz>,<embers:ingot_dawnstone>,<embers:ingot_dawnstone>,<embers:shard_ember>,<embers:shard_ember>], {"iron":48 to 64,"dawnstone":48 to 64});
//mods.embers.Alchemy.remove(IItemStack <output>);

// Other Metals
// Mixer.remove(<liquid:electrum> * 8);
// Mixer.remove(<liquid:bronze> * 8);

Mixer.add(<liquid:bronze> * 16, [<liquid:copper> * 12, <liquid:tin> * 4]);
Mixer.add(<liquid:electrum> * 16, [<liquid:silver> * 8, <liquid:gold> * 8]);
Mixer.add(<liquid:constantan> * 16, [<liquid:copper> * 8, <liquid:nickel> * 8]);
Mixer.add(<liquid:invar> * 12, [<liquid:iron> * 8, <liquid:nickel> * 4]);
Mixer.add(<liquid:conductive_iron>* 36, [<liquid:iron> * 36, <liquid:redstone> * 25]);
Mixer.add(<liquid:pulsating_iron> * 72, [<liquid:iron> * 72, <liquid:ender> * 125]);

##=======================================================
## MELTER RECIPES
##=======================================================

// Dust Melting Recipes
val dustMelting = {
	<liquid:iron>:<thermalfoundation:material>,
	<liquid:gold>:<thermalfoundation:material:1>,
	<liquid:silver>:<thermalfoundation:material:66>,
	<liquid:copper>:<thermalfoundation:material:64>,
	<liquid:lead>:<thermalfoundation:material:67>,
	<liquid:nickel>:<thermalfoundation:material:69>,
	<liquid:tin>:<thermalfoundation:material:65>,
} as IItemStack[ILiquidStack];

for fluid, item in dustMelting {
	mods.embers.Melter.add(fluid * 144, item);
}

// Ore Melting Recipes
/*
val oreMelting = {
	<liquid:cobalt>:<ore:oreCobalt>,
	<liquid:ardite>:<ore:oreArdite>,
	<liquid:starmetal>:<ore:oreAstralStarmetal>,
} as IOreDictEntry[ILiquidStack];

for fluid, ore in oreMelting {
	mods.embers.Melter.add(fluid * 288, ore, fluid * 16);
}
*/
mods.embers.Melter.add(<liquid:cobalt> * 288, <ore:oreCobalt>, <liquid:iron> * 16);
mods.embers.Melter.add(<liquid:ardite> * 288, <ore:oreArdite>, <liquid:gold> * 16);
mods.embers.Melter.add(<liquid:starmetal> * 288, <ore:oreAstralStarmetal>, <liquid:astralsorcery.liquidstarlight> * 16);


// Ingot, Nugget, Dust and Plate melting recipes for all metals up to ch3
// Format is fluid:[nugget,ingot,dust,plate]
val meltingList = {
	<liquid:ardite>:[<tconstruct:nuggets:1>, <tconstruct:ingots:1>, <jaopca:item_dustardite>, null],
	<liquid:cobalt>:[<tconstruct:nuggets>, <tconstruct:ingots>, <rockhounding_chemistry:chemical_dusts:25>, null],
	<liquid:knightslime>:[<tconstruct:nuggets:3>, <tconstruct:ingots:3>, null, <moreplates:knightslime_plate>],
	<liquid:invar>:[<thermalfoundation:material:226>, <thermalfoundation:material:162>, <thermalfoundation:material:98>, <thermalfoundation:material:354>],
	<liquid:pulsating_iron>:[<enderio:item_alloy_nugget:5>, <enderio:item_alloy_ingot:5>, null, <moreplates:pulsating_iron_plate>],
	<liquid:steel>:[<thermalfoundation:material:224>, <thermalfoundation:material:160>, <thermalfoundation:material:96>, <thermalfoundation:material:352>],
	<liquid:thaumium>:[<thaumcraft:nugget:6>, <thaumcraft:ingot>, null, <thaumcraft:plate:2>],
	<liquid:constantan>:[<thermalfoundation:material:228>, <thermalfoundation:material:164>, <thermalfoundation:material:100>, <thermalfoundation:material:356>],
	<liquid:prudentium>:[<mysticalagriculture:crafting:41>, <mysticalagriculture:crafting:34>, null, null],
	<liquid:conductive_iron>:[<enderio:item_alloy_nugget:4>, <enderio:item_alloy_ingot:4>, null, <moreplates:conductive_iron_plate>],
	<liquid:pigiron>:[<tconstruct:nuggets:4>, <tconstruct:ingots:4>, null, null],
	<liquid:manasteel>:[<botania:manaresource:17>, <botania:manaresource>, null, null],
	<liquid:palladium>:[<contenttweaker:material_part:33>, <contenttweaker:material_part:30>, <contenttweaker:material_part:35>, <contenttweaker:material_part:32>],
	<liquid:orichalcum>:[<contenttweaker:material_part:23>, <contenttweaker:material_part:20>, <contenttweaker:material_part:25>, <contenttweaker:material_part:22>],
	<liquid:starmetal>:[<jaopca:item_nuggetastralstarmetal>, <astralsorcery:itemcraftingcomponent:1>, <astralsorcery:itemcraftingcomponent:2>, null],
	<liquid:bronze>:[<thermalfoundation:material:227>, <thermalfoundation:material:163>, <thermalfoundation:material:99>, <thermalfoundation:material:355>],
	<liquid:electrum>:[<thermalfoundation:material:225>, <thermalfoundation:material:161>, <thermalfoundation:material:97>, <thermalfoundation:material:353>]
} as IItemStack[][ILiquidStack];

for fluid, items in meltingList {
	mods.embers.Melter.add(fluid * 16, items[0]);
	mods.embers.Melter.add(fluid * 144, items[1]);

	if (!(isNull(items[2]))) {
		mods.embers.Melter.add(fluid * 144, items[2]);
	}

	if (!(isNull(items[3]))) {
		mods.embers.Melter.add(fluid * 144, items[3]);
	}
}

// Modularium Melting Recipes
mods.embers.Melter.add(<liquid:molten_modularium> * 144, <modularmachinery:itemmodularium>);
mods.embers.Melter.add(<liquid:molten_modularium> * 144, <contenttweaker:plate_modularium>);

// Inert Metal Melting
mods.embers.Melter.add(<liquid:inert_metal> * 144, <contenttweaker:inert_ingot>);

// Brass Melting Recipes
mods.embers.Melter.add(<liquid:brass> * 16, <ore:nuggetBrass>);
mods.embers.Melter.add(<liquid:brass> * 144, <ore:ingotBrass>);
mods.embers.Melter.add(<liquid:brass> * 144, <ore:plateBrass>);

// Remove Tungsten and Aluminium Melting
mods.embers.Melter.remove(<liquid:tungsten>);
mods.embers.Melter.remove(<liquid:tungsten>);
mods.embers.Melter.remove(<liquid:tungsten>);
mods.embers.Melter.remove(<liquid:aluminum>);

##########################################################################################
print("==================== end of embers.zs ====================");