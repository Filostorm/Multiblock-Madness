import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;
import crafttweaker.liquid.ILiquidStack;

import mods.thaumcraft.Infusion;
import mods.botaniatweaks.Agglomeration;
import mods.extendedcrafting.EnderCrafting;
import mods.extendedcrafting.CombinationCrafting;
import mods.actuallyadditions.Empowerer;
import mods.nuclearcraft.Crystallizer;

import mods.thermalexpansion.Crucible;
import mods.nuclearcraft.Melter;
import mods.nuclearcraft.IngotFormer;

print("==================== loading creative biz.zs ====================");
##########################################################################################

val itemstoRemove =
[
	<avaritia:resource:1>,
	<extendedcrafting:material>,
	<extendedcrafting:table_ultimate>,
	<extendedcrafting:table_basic>,
	<extendedcrafting:table_advanced>,
	<extendedcrafting:table_elite>,
	<avaritia:resource:4>,
	<avaritia:resource:3>,
	<extendedcrafting:lamp>,
	<extendedcrafting:lamp:1>,
	<extendedcrafting:material:14>,
	<extendedcrafting:material:15>,
	<extendedcrafting:material:16>,
	<extendedcrafting:material:17>,
	<extendedcrafting:material:18>,
	<extendedcrafting:material:19>
]
 as IItemStack[];

for item in itemstoRemove {
	recipes.remove(item);
}

val EXitemstoRemove =
[
	<avaritia:resource:6>,
	<avaritia:neutron_collector>,
	<avaritia:neutronium_compressor>,
	<avaritia:resource:5>,
	<avaritia:endest_pearl>,
	<avaritia:cosmic_meatballs>,
	<avaritia:ultimate_stew>,
]
 as IItemStack[];

for item in EXitemstoRemove {
	mods.avaritia.ExtremeCrafting.remove(item);
}

// ----==== RENAMING & TOOLTIPS ====---- //

<extendedcrafting:material>.displayName = "Midnight Ingot";
<extendedcrafting:storage>.displayName = "Midnight Block";
<extendedcrafting:material:1>.displayName = "Midnight Nugget";
<extendedcrafting:material:3>.displayName = "Midnight Rod";
<extendedcrafting:frame>.displayName = "Midnight Frame";
<extendedcrafting:trimmed>.displayName = "Trimmed Midnight Block";
<extendedcrafting:lamp>.displayName = "Midnight Lamp";
<extendedcrafting:trimmed:5>.displayName = "Trimmed Midnight Block";
<extendedcrafting:trimmed:4>.displayName = "Trimmed Midnight Block";
<extendedcrafting:trimmed:2>.displayName = "Trimmed Midnight Block";
<extendedcrafting:trimmed:1>.displayName = "Trimmed Midnight Block";
<extendedcrafting:material:2>.displayName = "Midnight Plate";
<extendedcrafting:trimmed:3>.displayName = "Trimmed Midnight Block";
<extendedcrafting:lamp:1>.displayName = "Midnight Lamp";

<extendedcrafting:material:49>.displayName = "Twilight Nugget";
<extendedcrafting:material:37>.displayName = "Duskstone Nugget";



<extendedcrafting:table_basic>.addTooltip(format.lightPurple("Shift-Right click the previous tier table with the catalyst"));
<extendedcrafting:table_advanced>.addTooltip(format.lightPurple("Shift-Right click the previous tier table with the catalyst"));
<extendedcrafting:table_elite>.addTooltip(format.lightPurple("Shift-Right click the previous tier table with the catalyst"));
<extendedcrafting:table_ultimate>.addTooltip(format.lightPurple("Shift-Right click the previous tier table with the catalyst"));


// ----==== ENDGAME MATERIALS ====---- //

//Midnight Block Uncrafting
recipes.addShapeless(<extendedcrafting:material> * 9, [<extendedcrafting:storage>]);

//Luminessence
recipes.removeShapeless(<extendedcrafting:material:7> * 2, [<minecraft:glowstone_dust>, <minecraft:glowstone_dust>, <minecraft:redstone>, <minecraft:gunpowder>]);
/* MOVED TO CONFIG
Vat.removeRecipe(<liquid:liquid_sunshine>);
Vat.addRecipe(<liquid:liquid_sunshine>, 0.5, <liquid:glowstone_nak>, 
[<mowziesmobs:glowing_jelly>,<randomthings:glowingmushroom>,<thermalfoundation:material:894>,<enderio:block_holy_fog>],[3,2,1.5,1], 
[<arcanearchives:radiant_dust>,<astralsorcery:itemusabledust>,<thaumcraft:nitor_yellow>,<botania:corporeaspark>],[1,1,2,3], 100000);
*/
Crystallizer.addRecipe(<liquid:liquid_sunshine>*1000, <extendedcrafting:material:7>, 1, 8);

// ExC Components
Empowerer.addRecipe(<extendedcrafting:material:14>, <extendedcrafting:material:2>, <extendedcrafting:material:7>, <actuallyadditions:item_crystal_empowered:5>, <advancedrocketry:ic>, <botania:rune:3>, 1000000, 400, [0.9, 0.8, 1]);
Empowerer.addRecipe(<extendedcrafting:material:15>, <extendedcrafting:material:2>, <extendedcrafting:material:7>, <actuallyadditions:item_crystal_empowered>, <qmd:semiconductor:4>, <botania:rune:1>, 1000000, 400, [0.9, 0.9, 0.1]);
Empowerer.addRecipe(<extendedcrafting:material:16>, <extendedcrafting:material:2>, <extendedcrafting:material:7>, <actuallyadditions:item_crystal_empowered:2>, <techreborn:part>, <botania:rune>, 1000000, 400, [0.2, 0.9, 0.9]);
Empowerer.addRecipe(<extendedcrafting:material:17>, <extendedcrafting:material:2>, <extendedcrafting:material:7>, <actuallyadditions:item_crystal_empowered:4>, <advancedrocketry:ic:2>, <botania:rune:2>, 1000000, 400, [0.1, 1, 0.1]);

CombinationCrafting.addRecipe(<extendedcrafting:material:14>, 4000000, <extendedcrafting:material:2>, 
[<extendedcrafting:material:7>, <actuallyadditions:item_crystal_empowered:5>, <advancedrocketry:ic>, <botania:rune:3>]);
CombinationCrafting.addRecipe(<extendedcrafting:material:15>, 4000000, <extendedcrafting:material:2>, 
[<extendedcrafting:material:7>, <actuallyadditions:item_crystal_empowered>, <qmd:semiconductor:4>, <botania:rune:1>]);
CombinationCrafting.addRecipe(<extendedcrafting:material:16>, 4000000, <extendedcrafting:material:2>, 
[<extendedcrafting:material:7>, <actuallyadditions:item_crystal_empowered:2>, <techreborn:part>, <botania:rune>]);
CombinationCrafting.addRecipe(<extendedcrafting:material:17>, 4000000, <extendedcrafting:material:2>, 
[<extendedcrafting:material:7>, <actuallyadditions:item_crystal_empowered:4>, <advancedrocketry:ic:2>, <botania:rune:2>]);

CombinationCrafting.addRecipe(<extendedcrafting:material:18>, 8000000, <extendedcrafting:material:2>, 
[<extendedcrafting:material:7>, <extendedcrafting:material:24>, <thermalfoundation:material:1028>, <extendedcrafting:material:7>, <extendedcrafting:material:24>, <botania:rune:8>]);
CombinationCrafting.addRecipe(<extendedcrafting:material:19>, 16000000, <extendedcrafting:material:18>, 
[<extendedcrafting:material:7>, <extendedcrafting:material:14>, <extendedcrafting:material:32>, <extendedcrafting:material:15>, <extendedcrafting:material:7>, <extendedcrafting:material:16>, <extendedcrafting:material:32>, <extendedcrafting:material:17>]);


//Entangled Singularities
mods.techreborn.implosionCompressor.addRecipe(<appliedenergistics2:material:48> * 2, null, <appliedenergistics2:material:47>, <techreborn:dust:19>*2, 40, 500);


//Twilight Ingot
<extendedcrafting:material:48>.displayName = "Twilight Ingot";
<extendedcrafting:storage:7>.displayName = "Twilight Block";
EnderCrafting.remove(<extendedcrafting:material:48>);
EnderCrafting.addShaped(<extendedcrafting:material:48>, 
[[<twilightforest:carminite>, <contenttweaker:noon_ingot>, <twilightforest:carminite>],
[<embers:ingot_dawnstone>, <extendedcrafting:material:40>, <extendedcrafting:material:36>], 
[<twilightforest:carminite>, <extendedcrafting:material>, <twilightforest:carminite>]]);  

//Endest Star
<extendedcrafting:material:40>.displayName = "Endest Star";
<extendedcrafting:storage:6>.displayName = "Block of Endest Stars";
<extendedcrafting:material:41>.displayName = "Endest Star Nugget";
EnderCrafting.remove(<extendedcrafting:material:40>);
EnderCrafting.addShaped(<extendedcrafting:material:40>, 
[[null, <thermalfoundation:material:1028>, null],
[<thermalfoundation:material:1028>, <actuallyadditions:item_misc:19>, <thermalfoundation:material:1028>], 
[null, <thermalfoundation:material:1028>, null]]);


// Crystaltine
mods.extendedcrafting.TableCrafting.remove(<extendedcrafting:material:24>);
mods.extendedcrafting.TableCrafting.addShaped(0, <extendedcrafting:material:24>, [
    [<arcanearchives:shaped_quartz>, <actuallyadditions:item_crystal_empowered:1>, <actuallyadditions:item_crystal_empowered:1>, <actuallyadditions:item_crystal_empowered:1>, <actuallyadditions:item_crystal_empowered:1>, <actuallyadditions:item_crystal_empowered:1>, <arcanearchives:shaped_quartz>], 
    [<arcanearchives:shaped_quartz>, <actuallyadditions:item_crystal_empowered:2>, <actuallyadditions:item_crystal_empowered:5>, <enderio:item_alloy_endergy_ingot:1>, <actuallyadditions:item_crystal_empowered:5>, <actuallyadditions:item_crystal_empowered:2>, <arcanearchives:shaped_quartz>], 
    [<arcanearchives:shaped_quartz>, <actuallyadditions:item_crystal_empowered:2>, <actuallyadditions:item_crystal_empowered:5>, <enderio:item_alloy_endergy_ingot:1>, <actuallyadditions:item_crystal_empowered:5>, <actuallyadditions:item_crystal_empowered:2>, <arcanearchives:shaped_quartz>], 
    [<arcanearchives:shaped_quartz>, <actuallyadditions:item_crystal_empowered:1>, <actuallyadditions:item_crystal_empowered:1>, <actuallyadditions:item_crystal_empowered:1>, <actuallyadditions:item_crystal_empowered:1>, <actuallyadditions:item_crystal_empowered:1>, <arcanearchives:shaped_quartz>]
]);

// Starmetal Cluster
Infusion.registerRecipe("starmetal_cluster", "", 
<contenttweaker:starmetal_cluster>, 10, 
[<aspect:tenebrae>*50, <aspect:lux>*50], 
<thaumcraft:ingot:1>, 
[<jaopca:item_crystalastralstarmetal>,<jaopca:item_crystalastralstarmetal>, <jaopca:item_crystalastralstarmetal>, <jaopca:item_crystalastralstarmetal>, <jaopca:item_crystalastralstarmetal>,
<jaopca:item_crystalastralstarmetal>,<jaopca:item_crystalastralstarmetal>, <jaopca:item_crystalastralstarmetal>, <jaopca:item_crystalastralstarmetal>, <jaopca:item_crystalastralstarmetal>]);

//Crystal Matrix unpacking
recipes.addShapeless(<avaritia:resource:1> * 9, [<avaritia:block_resource:2>]);


//Ultime Ingot
Agglomeration.addRecipe(<extendedcrafting:material:32>, 
[<contenttweaker:ingot_thermal_alloy>, <extendedcrafting:material:48>, <contenttweaker:ingot_mek_alloy>, <techreborn:ingot:25>, <plustic:mirioningot>]
,1000000,0x004a80,0xa432a8,
<avaritia:block_resource:2>,<actuallyadditions:block_crystal_empowered:2>,<actuallyadditions:block_crystal_empowered:4>,
null, <actuallyadditions:block_crystal:2>, <actuallyadditions:block_crystal:4>
);


//New Neutronium Essence output
recipes.addShaped(<avaritia:resource:2> * 3, [[<mysticalagradditions:neutronium_essence>, <mysticalagradditions:neutronium_essence>, <mysticalagradditions:neutronium_essence>],[<mysticalagradditions:neutronium_essence>, <mysticalagradditions:neutronium_essence>, <mysticalagradditions:neutronium_essence>], [<mysticalagradditions:neutronium_essence>, <mysticalagradditions:neutronium_essence>, <mysticalagradditions:neutronium_essence>]]);


//mods.iceandfire.recipes.addFireDragonForgeRecipe(<techreborn:ingot:25>, <actuallyadditions:item_crystal_empowered:3>, <extendedcrafting:material>);

<avaritia:resource:2>.addTooltip(format.lightPurple("Collected by Orbital Mining from a Space Station"));

/*mods.qmd.target_chamber.addRecipe(IIngredient inputItem, IIngredient inputParticle, IIngredient outputItem, IIngredient outputParticle1, IIngredient outputParticle2, IIngredient outputParticle3, long maxEnergy, double crossSection, {long energyReleased, double processRadiation})
Note: the input particles amount is the amount of particles needed to convert the item, Its energy is the minimum energy and its focus is the minimum focus. The output particles amount is the max amount/t released per input particle/t. The convention(i.e not required but recommended) is that positive particles are in outputParticle1, neutral particles in outputParticle2 and negitive particles in outputParticle3. This is because outputParticle2 can't be steered so will always come out the back of the chamber.
*/

//Neutronium
/*
mods.qmd.target_chamber.addRecipe(<extendedcrafting:material>, ((<particle:neutron>*1000000)^50000)~2.0, <avaritia:resource:4>, 
null, null, null, 53000, 0.28, -100000, 0.001);
*/


//Infinity ingot
mods.techreborn.fusionReactor.addRecipe(<avaritia:resource:5>, <avaritia:resource:4>*4, <avaritia:resource:6>, 100000000, -25000000, 2400, 50);

//Vibrant Relic
mods.techreborn.fusionReactor.addRecipe(<fossil:time_machine>, <fossil:ancient_clock>, <contenttweaker:time_artifact>, 100000000, -25000000, 3000, 50);

// Bedrock
recipes.addShapeless(<avaritia:resource:3> * 9, [<avaritia:resource:4>]);
mods.extendedcrafting.CombinationCrafting.addRecipe(<minecraft:bedrock>, 100000000, <avaritia:block_resource:1>, 
[<enderio:block_infinity:2>,<enderio:block_infinity:2>,<enderio:block_infinity:2>,<enderio:block_infinity:2>,
<enderio:block_infinity:2>,<enderio:block_infinity:2>,<enderio:block_infinity:2>,<enderio:block_infinity:2>,
<enderio:block_infinity:2>,<enderio:block_infinity:2>,<enderio:block_infinity:2>,<enderio:block_infinity:2>,
<enderio:block_infinity:2>,<enderio:block_infinity:2>,<enderio:block_infinity:2>,<enderio:block_infinity:2>]);


// ----==== CREATIVE ITEMS ====---- //

// Creative Storage
mods.extendedcrafting.TableCrafting.addShaped(0, <storagedrawers:upgrade_creative>, [
	[<appliedenergistics2:material:47>, <actuallyadditions:block_giant_chest_large>, <mekanism:basicblock:6>.withTag({tier: 3}), <actuallyadditions:block_giant_chest_large>, <appliedenergistics2:material:47>], 
	[<actuallyadditions:block_giant_chest_large>, <storagedrawers:upgrade_storage:4>, <storagedrawers:upgrade_storage:4>, <storagedrawers:upgrade_storage:4>, <actuallyadditions:block_giant_chest_large>], 
	[<mekanism:basicblock:6>.withTag({tier: 3}), <storagedrawers:upgrade_storage:4>, <extendedcrafting:material:13>, <storagedrawers:upgrade_storage:4>, <mekanism:basicblock:6>.withTag({tier: 3})], 
	[<actuallyadditions:block_giant_chest_large>, <storagedrawers:upgrade_storage:4>, <storagedrawers:upgrade_storage:4>, <storagedrawers:upgrade_storage:4>, <actuallyadditions:block_giant_chest_large>], 
	[<appliedenergistics2:material:47>, <actuallyadditions:block_giant_chest_large>, <mekanism:basicblock:6>.withTag({tier: 3}), <actuallyadditions:block_giant_chest_large>, <appliedenergistics2:material:47>]
]);

mods.extendedcrafting.TableCrafting.addShaped(0, <mysticalagradditions:insanium:1>, [
	[null, <ore:essenceSupremium>, <ore:essenceSupremium>, <ore:essenceSupremium>, <ore:essenceSupremium>, <ore:essenceSupremium>, <ore:essenceSupremium>, <ore:essenceSupremium>, null], 
	[<ore:essenceSupremium>, <ore:essenceSupremium>, <ore:essenceInsanium>, <ore:essenceInsanium>, <ore:essenceInsanium>, <ore:essenceInsanium>, <ore:essenceInsanium>, <ore:essenceSupremium>, <ore:essenceSupremium>], 
	[<ore:essenceSupremium>, <ore:essenceInsanium>, <ore:essenceInsanium>, <techreborn:uumatter>, <techreborn:uumatter>, <techreborn:uumatter>, <ore:essenceInsanium>, <ore:essenceInsanium>, <ore:essenceSupremium>], 
	[<ore:essenceSupremium>, <ore:essenceInsanium>, <techreborn:uumatter>, <ore:shardProsperity>, <extendedcrafting:material:13>, <ore:shardProsperity>, <techreborn:uumatter>, <ore:essenceInsanium>, <ore:essenceSupremium>], 
	[<ore:essenceSupremium>, <ore:essenceInsanium>, <techreborn:uumatter>, <extendedcrafting:material:13>, <ore:seedWheat>, <extendedcrafting:material:13>, <techreborn:uumatter>, <ore:essenceInsanium>, <ore:essenceSupremium>], 
	[<ore:essenceSupremium>, <ore:essenceInsanium>, <techreborn:uumatter>, <ore:shardProsperity>, <extendedcrafting:material:13>, <ore:shardProsperity>, <techreborn:uumatter>, <ore:essenceInsanium>, <ore:essenceSupremium>], 
	[<ore:essenceSupremium>, <ore:essenceInsanium>, <ore:essenceInsanium>, <techreborn:uumatter>, <techreborn:uumatter>, <techreborn:uumatter>, <ore:essenceInsanium>, <ore:essenceInsanium>, <ore:essenceSupremium>], 
	[<ore:essenceSupremium>, <ore:essenceSupremium>, <ore:essenceInsanium>, <ore:essenceInsanium>, <ore:essenceInsanium>, <ore:essenceInsanium>, <ore:essenceInsanium>, <ore:essenceSupremium>, <ore:essenceSupremium>], 
	[null, <ore:essenceSupremium>, <ore:essenceSupremium>, <ore:essenceSupremium>, <ore:essenceSupremium>, <ore:essenceSupremium>, <ore:essenceSupremium>, <ore:essenceSupremium>, null]
]);

// Sponge
Infusion.registerRecipe("creative_flux_sponge", "", 
<thaumcraft:creative_flux_sponge>, 20, 
[<aspect:caeles>*10, <aspect:vacuos>*200, <aspect:aer>*50], 
<openblocks:sponge>, 
[<extendedcrafting:trimmed:5>,<thaumcraft:plate:3>, <botania:manaresource:8>, <thaumcraft:sanity_soap>,
<extendedcrafting:trimmed:5>,<thaumcraft:plate:3>, <botania:manaresource:8>, <thaumcraft:bath_salts>]);

// Cosmic Meatballs
mods.extendedcrafting.TableCrafting.addShapeless(0, <avaritia:cosmic_meatballs>*4, [<avaritia:resource:2>, <avaritia:resource:2>, <avaritia:resource:2>, <avaritia:resource:2>, 
<avaritia:resource:2>, <avaritia:resource:2>, <avaritia:resource:2>, <avaritia:resource:2>, <xlfoodmod:super_energy_drink>, 
<xlfoodmod:grilled_cheese_sandwich>, <xlfoodmod:strawberry_icecream>, <xlfoodmod:vegetable_soup>, <xlfoodmod:cheeseburger>, <avaritia:resource:2>, 
<avaritia:resource:2>, <xlfoodmod:jambon_beurre>, <xlfoodmod:blt_sandwich>, <xlfoodmod:chicken_sandwich>, <xlfoodmod:hamburger>, <xlfoodmod:corn_bread>, 
<avaritia:resource:2>, <avaritia:resource:2>, <xlfoodmod:icecream_sandwich>, <xlfoodmod:kebab>, <nuclearcraft:foursmore>, <xlfoodmod:taco>, 
<xlfoodmod:spaghetti>, <avaritia:resource:2>, <avaritia:resource:2>, <xlfoodmod:chickenburger>, <xlfoodmod:sausage_roll>, <xlfoodmod:burrito>, 
<xlfoodmod:lasagne>, <xlfoodmod:fish_pie>, <avaritia:resource:2>, <avaritia:resource:2>, <xlfoodmod:chocolate_donut>, <xlfoodmod:enchilada>, 
<xlfoodmod:slice_of_pizza>, <xlfoodmod:beef_stew>, <xlfoodmod:hot_dog>, <avaritia:resource:2>, <avaritia:resource:2>, <avaritia:resource:2>, 
<avaritia:resource:2>, <avaritia:resource:2>, <avaritia:resource:2>, <avaritia:resource:2>, <avaritia:resource:2>]);

// Cosmic stew
mods.extendedcrafting.TableCrafting.addShaped(0, <avaritia:ultimate_stew>, [
	[<ore:nuggetCosmicNeutronium>, <natura:edibles:11>, <natura:edibles:11>, <natura:edibles:11>, <natura:edibles:11>, <natura:edibles:11>, <natura:edibles:11>, <natura:edibles:11>, <ore:nuggetCosmicNeutronium>], 
	[<ore:nuggetCosmicNeutronium>, <natura:edibles:11>, <natura:edibles:11>, <natura:edibles:11>, <natura:edibles:11>, <natura:edibles:11>, <natura:edibles:11>, <natura:edibles:11>, <ore:nuggetCosmicNeutronium>], 
	[<ore:nuggetCosmicNeutronium>, <natura:edibles:11>, <natura:edibles:11>, <natura:edibles:11>, <natura:edibles:11>, <natura:edibles:11>, <natura:edibles:11>, <natura:edibles:11>, <ore:nuggetCosmicNeutronium>], 
	[<ore:nuggetCosmicNeutronium>, <natura:edibles:11>, <natura:edibles:11>, <natura:edibles:11>, <natura:edibles:11>, <natura:edibles:11>, <natura:edibles:11>, <natura:edibles:11>, <ore:nuggetCosmicNeutronium>], 
	[<ore:nuggetCosmicNeutronium>, <natura:edibles:11>, <natura:edibles:11>, <natura:edibles:11>, <avaritia:cosmic_meatballs>, <natura:edibles:11>, <natura:edibles:11>, <natura:edibles:11>, <ore:nuggetCosmicNeutronium>], 
	[<ore:nuggetCosmicNeutronium>, <natura:edibles:11>, <natura:edibles:11>, <natura:edibles:11>, <natura:edibles:11>, <natura:edibles:11>, <natura:edibles:11>, <natura:edibles:11>, <ore:nuggetCosmicNeutronium>], 
	[<ore:nuggetCosmicNeutronium>, <natura:edibles:11>, <natura:edibles:11>, <natura:edibles:11>, <natura:edibles:11>, <natura:edibles:11>, <natura:edibles:11>, <natura:edibles:11>, <ore:nuggetCosmicNeutronium>], 
	[<ore:nuggetCosmicNeutronium>, <natura:edibles:11>, <natura:edibles:11>, <natura:edibles:11>, <natura:edibles:11>, <natura:edibles:11>, <natura:edibles:11>, <natura:edibles:11>, <ore:nuggetCosmicNeutronium>], 
	[<ore:nuggetCosmicNeutronium>, <ore:nuggetCosmicNeutronium>, <ore:nuggetCosmicNeutronium>, <ore:nuggetCosmicNeutronium>, <ore:nuggetCosmicNeutronium>, <ore:nuggetCosmicNeutronium>, <ore:nuggetCosmicNeutronium>, <ore:nuggetCosmicNeutronium>, <ore:nuggetCosmicNeutronium>]
]);

// Cosmic stew
mods.extendedcrafting.TableCrafting.addShaped(0, <avaritia:ultimate_stew>, [
	[<ore:nuggetCosmicNeutronium>, <natura:edibles:11>, <natura:edibles:11>, <natura:edibles:11>, <natura:edibles:11>, <natura:edibles:11>, <natura:edibles:11>, <natura:edibles:11>, <ore:nuggetCosmicNeutronium>], 
	[<ore:nuggetCosmicNeutronium>, <natura:edibles:11>, <natura:edibles:11>, <natura:edibles:11>, <natura:edibles:11>, <natura:edibles:11>, <natura:edibles:11>, <natura:edibles:11>, <ore:nuggetCosmicNeutronium>], 
	[<ore:nuggetCosmicNeutronium>, <natura:edibles:11>, <natura:edibles:11>, <natura:edibles:11>, <natura:edibles:11>, <natura:edibles:11>, <natura:edibles:11>, <natura:edibles:11>, <ore:nuggetCosmicNeutronium>], 
	[<ore:nuggetCosmicNeutronium>, <natura:edibles:11>, <natura:edibles:11>, <natura:edibles:11>, <natura:edibles:11>, <natura:edibles:11>, <natura:edibles:11>, <natura:edibles:11>, <ore:nuggetCosmicNeutronium>], 
	[<ore:nuggetCosmicNeutronium>, <natura:edibles:11>, <natura:edibles:11>, <natura:edibles:11>, <avaritia:cosmic_meatballs>, <natura:edibles:11>, <natura:edibles:11>, <natura:edibles:11>, <ore:nuggetCosmicNeutronium>], 
	[<ore:nuggetCosmicNeutronium>, <natura:edibles:11>, <natura:edibles:11>, <natura:edibles:11>, <natura:edibles:11>, <natura:edibles:11>, <natura:edibles:11>, <natura:edibles:11>, <ore:nuggetCosmicNeutronium>], 
	[<ore:nuggetCosmicNeutronium>, <natura:edibles:11>, <natura:edibles:11>, <natura:edibles:11>, <natura:edibles:11>, <natura:edibles:11>, <natura:edibles:11>, <natura:edibles:11>, <ore:nuggetCosmicNeutronium>], 
	[<ore:nuggetCosmicNeutronium>, <natura:edibles:11>, <natura:edibles:11>, <natura:edibles:11>, <natura:edibles:11>, <natura:edibles:11>, <natura:edibles:11>, <natura:edibles:11>, <ore:nuggetCosmicNeutronium>], 
	[<ore:nuggetCosmicNeutronium>, <ore:nuggetCosmicNeutronium>, <ore:nuggetCosmicNeutronium>, <ore:nuggetCosmicNeutronium>, <ore:nuggetCosmicNeutronium>, <ore:nuggetCosmicNeutronium>, <ore:nuggetCosmicNeutronium>, <ore:nuggetCosmicNeutronium>, <ore:nuggetCosmicNeutronium>]
]);

// Endest Pearl
mods.extendedcrafting.TableCrafting.addShaped(0, <avaritia:endest_pearl>, [
	[null, null, null, <ore:endstone>, <ore:endstone>, <ore:endstone>, null, null, null], 
	[null, null, <ore:endstone>, <ore:endstone>, <rftools:infused_enderpearl>, <ore:endstone>, <ore:endstone>, null, null], 
	[null, <ore:endstone>, <rftools:infused_enderpearl>, <randomthings:stableenderpearl>, <extendedcrafting:material:40>, <randomthings:stableenderpearl>, <rftools:infused_enderpearl>, <ore:endstone>, null], 
	[<ore:endstone>, <ore:endstone>, <randomthings:stableenderpearl>, <ore:ingotCosmicNeutronium>, <extendedcrafting:material:48>, <ore:ingotCosmicNeutronium>, <randomthings:stableenderpearl>, <ore:endstone>, <ore:endstone>], 
	[<ore:endstone>, <rftools:infused_enderpearl>, <extendedcrafting:material:40>, <extendedcrafting:material:48>, <cyclicmagic:ender_eye_orb>, <extendedcrafting:material:48>, <extendedcrafting:material:40>, <rftools:infused_enderpearl>, <ore:endstone>], 
	[<ore:endstone>, <ore:endstone>, <randomthings:stableenderpearl>, <ore:ingotCosmicNeutronium>, <extendedcrafting:material:48>, <ore:ingotCosmicNeutronium>, <randomthings:stableenderpearl>, <ore:endstone>, <ore:endstone>], 
	[null, <ore:endstone>, <rftools:infused_enderpearl>, <randomthings:stableenderpearl>, <extendedcrafting:material:40>, <randomthings:stableenderpearl>, <rftools:infused_enderpearl>, <ore:endstone>, null], 
	[null, null, <ore:endstone>, <ore:endstone>, <rftools:infused_enderpearl>, <ore:endstone>, <ore:endstone>, null, null], 
	[null, null, null, <ore:endstone>, <ore:endstone>, <ore:endstone>, null, null, null]
]);

// Infinity Catalyst
mods.extendedcrafting.TableCrafting.addShaped(0, <avaritia:resource:5>, [
	[null, null, null, null, <enderio:item_material:55>, null, null, null, null], 
	[null, <extendedcrafting:singularity_custom:12>, null, null, <ebwizardry:astral_diamond>, null, null, <extendedcrafting:singularity_custom:5>, null], 
	[null, null, <extendedcrafting:singularity_custom:4>, null, <avaritia:cosmic_meatballs>, null, <extendedcrafting:singularity_custom:6>, null, null], 
	[null, null, null, <extendedcrafting:singularity_custom:9>, <ore:blockIridium>, <extendedcrafting:singularity_custom:7>, null, null, null], 
	[<fossil:vase_amphora:2>, <bloodarsenal:blood_diamond:2>, <avaritia:ultimate_stew>, <contenttweaker:starmetal_block>, <extendedcrafting:material:13>, <extendedcrafting:trimmed:5>, <ore:blockCrystalMatrix>, <appliedenergistics2:material:48>, <ore:rodNdYAG>], 
	[null, null, null, <extendedcrafting:singularity_custom:8>, <ore:blockFiery>, <extendedcrafting:singularity_custom:10>, null, null, null], 
	[null, null, <extendedcrafting:singularity_custom:1>, null, <avaritia:endest_pearl>, null, <extendedcrafting:singularity_custom:2>, null, null], 
	[null, <extendedcrafting:singularity_custom:3>, null, null, <ore:CelestialCrystal>, null, null, <extendedcrafting:singularity_custom:11>, null], 
	[null, null, null, null, <ore:cloakingDeviceReplacement>, null, null, null, null]
]);

// AR Creative Power Plug
recipes.addShaped(<libvulpes:creativepowerbattery>, [[<ore:circuitUltimate>, <extendedcrafting:material:19>, <ore:circuitUltimate>],[<avaritia:resource:6>, <libvulpes:forgepowerinput>, <avaritia:resource:6>], [<ore:circuitUltimate>, <extendedcrafting:material:19>, <mekanism:controlcircuit:3>]]);

// Guilty Pool
mods.extendedcrafting.TableCrafting.addShaped(0, <botania:pool:1>, [
	[null, null, null, null, null, null, null, null, null], 
	[null, null, null, null, null, null, null, null, null], 
	[null, null, null, null, null, null, null, null, null], 
	[<botania:shimmerrock>, <botania:shimmerrock>, <botania:shimmerrock>, null, null, null, <botania:shimmerrock>, <botania:shimmerrock>, <botania:shimmerrock>], 
	[<botania:shimmerrock>, <extendedcrafting:material:13>, <ore:plateCrystalMatrix>, <ore:ingotInfinity>, <ore:ingotInfinity>, <ore:ingotInfinity>, <ore:plateCrystalMatrix>, <extendedcrafting:material:13>, <botania:shimmerrock>], 
	[<botania:shimmerrock>, <ore:runePrideB>, <ore:plateCrystalMatrix>, <ore:ingotInfinity>, <ore:ingotInfinity>, <ore:ingotInfinity>, <ore:plateCrystalMatrix>, <ore:runeGluttonyB>, <botania:shimmerrock>], 
	[<botania:shimmerrock>, <ore:eternalLifeEssence>, <ore:plateCrystalMatrix>, <ore:plateCrystalMatrix>, <ore:plateCrystalMatrix>, <ore:plateCrystalMatrix>, <ore:plateCrystalMatrix>, <ore:eternalLifeEssence>, <botania:shimmerrock>], 
	[<botania:shimmerrock>, <extendedcrafting:material:13>, <ore:eternalLifeEssence>, <ore:runeLustB>, <avaritia:resource:5>, <ore:runeGreedB>, <ore:eternalLifeEssence>, <extendedcrafting:material:13>, <botania:shimmerrock>], 
	[<botania:shimmerrock>, <botania:shimmerrock>, <botania:shimmerrock>, <botania:shimmerrock>, <botania:shimmerrock>, <botania:shimmerrock>, <botania:shimmerrock>, <botania:shimmerrock>, <botania:shimmerrock>]
]);
recipes.addShapeless(<botania:pool:1>, [<botania:manatablet>.withTag({mana: 500000, creative: 1 as byte})]);
recipes.addShapeless(<botania:manatablet>.withTag({mana: 500000, creative: 1 as byte}), [<botania:pool:1>]);

// Creative Tank
mods.extendedcrafting.TableCrafting.addShaped(0,<mekanism:machineblock2:11>.withTag({tier: 4}), [
	[<techreborn:quantum_tank>, <thaumadditions:mithminite_plate>, <ore:ingotCosmicNeutronium>, <ore:ingotCosmicNeutronium>, <ore:ingotCosmicNeutronium>, <ore:ingotCosmicNeutronium>, <ore:ingotCosmicNeutronium>, <thaumadditions:mithminite_plate>, <techreborn:quantum_tank>], 
	[<thaumadditions:mithminite_plate>, <avaritia:resource:5>, <ore:plateCrystalMatrix>, <ore:plateCrystalMatrix>, <ore:plateCrystalMatrix>, <ore:plateCrystalMatrix>, <ore:plateCrystalMatrix>, <avaritia:resource:5>, <thaumadditions:mithminite_plate>], 
	[<ore:ingotCosmicNeutronium>, <ore:plateCrystalMatrix>, <avaritia:resource:5>, <ore:ingotInfinity>, <ore:ingotInfinity>, <ore:ingotInfinity>, <avaritia:resource:5>, <ore:plateCrystalMatrix>, <ore:ingotCosmicNeutronium>], 
	[<ore:ingotCosmicNeutronium>, <ore:plateCrystalMatrix>, <ore:ingotInfinity>, <techreborn:cable:8>, <techreborn:cable:8>, <techreborn:cable:8>, <ore:ingotInfinity>, <ore:plateCrystalMatrix>, <ore:ingotCosmicNeutronium>], 
	[<ore:ingotCosmicNeutronium>, <ore:plateCrystalMatrix>, <ore:ingotInfinity>, <techreborn:cable:8>, <thermalexpansion:frame:148>, <techreborn:cable:8>, <ore:ingotInfinity>, <ore:plateCrystalMatrix>, <ore:ingotCosmicNeutronium>], 
	[<ore:ingotCosmicNeutronium>, <ore:plateCrystalMatrix>, <ore:ingotInfinity>, <techreborn:cable:8>, <techreborn:cable:8>, <techreborn:cable:8>, <ore:ingotInfinity>, <ore:plateCrystalMatrix>, <ore:ingotCosmicNeutronium>], 
	[<ore:ingotCosmicNeutronium>, <ore:plateCrystalMatrix>, <avaritia:resource:5>, <ore:ingotInfinity>, <ore:ingotInfinity>, <ore:ingotInfinity>, <avaritia:resource:5>, <ore:plateCrystalMatrix>, <ore:ingotCosmicNeutronium>], 
	[<thaumadditions:mithminite_plate>, <avaritia:resource:5>, <ore:plateCrystalMatrix>, <ore:plateCrystalMatrix>, <ore:plateCrystalMatrix>, <ore:plateCrystalMatrix>, <ore:plateCrystalMatrix>, <avaritia:resource:5>, <thaumadditions:mithminite_plate>], 
	[<techreborn:quantum_tank>, <thaumadditions:mithminite_plate>, <ore:ingotCosmicNeutronium>, <ore:ingotCosmicNeutronium>, <ore:ingotCosmicNeutronium>, <ore:ingotCosmicNeutronium>, <ore:ingotCosmicNeutronium>, <thaumadditions:mithminite_plate>, <techreborn:quantum_tank>]
]);
/*
mods.extendedcrafting.TableCrafting.addShaped(0, <mekanism:machineblock2:11>.withTag({tier: 4}), [
	[<fluiddrawers:tank>, <ore:ingotCosmicNeutronium>, <ore:ingotCosmicNeutronium>, <ore:ingotCosmicNeutronium>, <ore:ingotCosmicNeutronium>, <ore:ingotCosmicNeutronium>, <ore:ingotCosmicNeutronium>, <ore:ingotCosmicNeutronium>, <fluiddrawers:tank>], 
	[<ore:ingotCosmicNeutronium>, <extendedcrafting:material:13>, <ore:plateCrystalMatrix>, <ore:plateCrystalMatrix>, <thermalexpansion:tank>.withTag({RSControl: 0 as byte, Creative: 0 as byte, Level: 4 as byte}), <ore:plateCrystalMatrix>, <ore:plateCrystalMatrix>, <extendedcrafting:material:13>, <ore:ingotCosmicNeutronium>], 
	[<ore:ingotCosmicNeutronium>, <ore:plateCrystalMatrix>, <mekanism:machineblock2:11>.withTag({tier: 3}), <extracells:storage.component:10>, <extracells:storage.component:10>, <extracells:storage.component:10>, <mekanism:machineblock2:11>.withTag({tier: 3}), <ore:plateCrystalMatrix>, <ore:ingotCosmicNeutronium>], 
	[<ore:ingotCosmicNeutronium>, <ore:plateCrystalMatrix>, <extracells:storage.component:10>, <techreborn:quantum_tank>, <ore:ingotInfinity>, <techreborn:quantum_tank>, <extracells:storage.component:10>, <ore:plateCrystalMatrix>, <ore:ingotCosmicNeutronium>], 
	[<ore:ingotCosmicNeutronium>, <thermalexpansion:tank>.withTag({RSControl: 0 as byte, Creative: 0 as byte, Level: 4 as byte}), <extracells:storage.component:10>, <ore:ingotInfinity>, <avaritia:resource:5>, <ore:ingotInfinity>, <extracells:storage.component:10>, <thermalexpansion:tank>.withTag({RSControl: 0 as byte, Creative: 0 as byte, Level: 4 as byte}), <ore:ingotCosmicNeutronium>], 
	[<ore:ingotCosmicNeutronium>, <ore:plateCrystalMatrix>, <extracells:storage.component:10>, <techreborn:quantum_tank>, <ore:ingotInfinity>, <techreborn:quantum_tank>, <extracells:storage.component:10>, <ore:plateCrystalMatrix>, <ore:ingotCosmicNeutronium>], 
	[<ore:ingotCosmicNeutronium>, <ore:plateCrystalMatrix>, <mekanism:machineblock2:11>.withTag({tier: 3}), <extracells:storage.component:10>, <extracells:storage.component:10>, <extracells:storage.component:10>, <mekanism:machineblock2:11>.withTag({tier: 3}), <ore:plateCrystalMatrix>, <ore:ingotCosmicNeutronium>], 
	[<ore:ingotCosmicNeutronium>, <extendedcrafting:material:13>, <ore:plateCrystalMatrix>, <ore:plateCrystalMatrix>, <thermalexpansion:tank>.withTag({RSControl: 0 as byte, Creative: 0 as byte, Level: 4 as byte}), <ore:plateCrystalMatrix>, <ore:plateCrystalMatrix>, <extendedcrafting:material:13>, <ore:ingotCosmicNeutronium>], 
	[<fluiddrawers:tank>, <ore:ingotCosmicNeutronium>, <ore:ingotCosmicNeutronium>, <ore:ingotCosmicNeutronium>, <ore:ingotCosmicNeutronium>, <ore:ingotCosmicNeutronium>, <ore:ingotCosmicNeutronium>, <ore:ingotCosmicNeutronium>, <fluiddrawers:tank>]
]);
*/
recipes.addShapeless(<mekanism:machineblock2:11>.withTag({tier: 4}), [<thermalexpansion:tank>.withTag({RSControl: 0 as byte, Creative: 1 as byte, Level: 4 as byte})]);
recipes.addShapeless(<thermalexpansion:tank>.withTag({RSControl: 0 as byte, Creative: 1 as byte, Level: 4 as byte}), [<mekanism:machineblock2:11>.withTag({tier: 4})]);

// Creative Essentia Cell
mods.extendedcrafting.TableCrafting.addShaped(0, <thaumicenergistics:essentia_cell_creative>, [
	[<threng:material:14>, <threng:material:14>, <threng:material:14>, <threng:material:14>, <threng:material:14>, <threng:material:14>, <threng:material:14>, <threng:material:14>, <threng:material:14>], 
	[<threng:material:14>, <ore:ingotInfinity>, <extendedcrafting:material:48>, <extendedcrafting:material:48>, <thaumadditions:mithrillium_resonator>, <extendedcrafting:material:48>, <extendedcrafting:material:48>, <ore:ingotInfinity>, <threng:material:14>], 
	[<threng:material:14>, <extendedcrafting:material:48>, <thaumadditions:jar_mithminite>, <thaumadditions:jar_mithminite>, <thaumadditions:aspect_combiner>, <thaumadditions:jar_mithminite>, <thaumadditions:jar_mithminite>, <extendedcrafting:material:48>, <threng:material:14>], 
	[<threng:material:14>, <extendedcrafting:material:48>, <thaumadditions:jar_mithminite>, <thaumicenergistics:essentia_component_64k>, <thaumicenergistics:essentia_component_64k>, <thaumicenergistics:essentia_component_64k>, <thaumadditions:jar_mithminite>, <extendedcrafting:material:48>, <threng:material:14>], 
	[<threng:material:14>, <thaumadditions:mithrillium_resonator>, <thaumadditions:jar_mithminite>, <thaumicenergistics:essentia_component_64k>, <thaumcraft:creative_flux_sponge>, <thaumicenergistics:essentia_component_64k>, <thaumadditions:jar_mithminite>, <thaumadditions:mithrillium_resonator>, <threng:material:14>], 
	[<threng:material:14>, <extendedcrafting:material:48>, <thaumadditions:jar_mithminite>, <thaumicenergistics:essentia_component_64k>, <thaumicenergistics:essentia_component_64k>, <thaumicenergistics:essentia_component_64k>, <thaumadditions:jar_mithminite>, <extendedcrafting:material:48>, <threng:material:14>], 
	[<threng:material:14>, <extendedcrafting:material:48>, <thaumadditions:jar_mithminite>, <thaumadditions:jar_mithminite>, <thaumadditions:mithminite_smelter>, <thaumadditions:jar_mithminite>, <thaumadditions:jar_mithminite>, <extendedcrafting:material:48>, <threng:material:14>], 
	[<threng:material:14>, <ore:ingotInfinity>, <extendedcrafting:material:48>, <extendedcrafting:material:48>, <thaumadditions:mithrillium_resonator>, <extendedcrafting:material:48>, <extendedcrafting:material:48>, <ore:ingotInfinity>, <threng:material:14>], 
	[<threng:material:14>, <threng:material:14>, <threng:material:14>, <threng:material:14>, <threng:material:14>, <threng:material:14>, <threng:material:14>, <threng:material:14>, <threng:material:14>]
]);

// Wireless Termanal
mods.extendedcrafting.TableCrafting.addShaped(0, <ae2wtlib:wut_creative>.withTag({StoredTerminals: [{ForgeCaps: {"astralsorcery:cap_item_amulet_holder": {}}, id: "wft:wft_creative", Count: 1 as byte, Damage: 0 as short}, {ForgeCaps: {"astralsorcery:cap_item_amulet_holder": {}}, id: "wct:wct_creative", Count: 1 as byte, Damage: 0 as short}], IsInRange: 0 as byte, SelectedTerminal: 0, internalCurrentPower: 1600000.0}), [
	[<enderutilities:frame>, <enderutilities:frame>, <enderutilities:frame>, <enderutilities:frame>, <enderio:item_capacitor_stellar>, <enderutilities:frame>, <enderutilities:frame>, <enderutilities:frame>, <enderutilities:frame>], 
	[<enderutilities:frame>, <enderio:block_enhanced_wireless_charger>, <ore:plateStellarAlloy>, <ore:plateStellarAlloy>, <appliedenergistics2:wireless_access_point>, <ore:plateStellarAlloy>, <ore:plateStellarAlloy>, <enderio:block_enhanced_wireless_charger>, <enderutilities:frame>], 
	[<enderutilities:frame>, <ore:plateStellarAlloy>, <appliedenergistics2:material:42>, <ae2stuff:wireless>, <environmentaltech:nano_cont_ranged_6>, <ae2stuff:wireless>, <appliedenergistics2:material:42>, <ore:plateStellarAlloy>, <enderutilities:frame>], 
	[<enderutilities:frame>, <ore:plateStellarAlloy>, <ae2stuff:wireless>, <avaritia:endest_pearl>, <extendedcrafting:singularity_custom:13>, <avaritia:endest_pearl>, <ae2stuff:wireless>, <ore:plateStellarAlloy>, <enderutilities:frame>], 
	[<enderio:item_capacitor_stellar>, <appliedenergistics2:wireless_access_point>, <environmentaltech:nano_cont_ranged_6>, <extendedcrafting:singularity_custom:13>, <ae2wtlib:wut>, <extendedcrafting:singularity_custom:13>, <environmentaltech:nano_cont_ranged_6>, <appliedenergistics2:wireless_access_point>, <enderio:item_capacitor_stellar>], 
	[<enderutilities:frame>, <ore:plateStellarAlloy>, <ae2stuff:wireless>, <avaritia:endest_pearl>, <extendedcrafting:singularity_custom:13>, <avaritia:endest_pearl>, <ae2stuff:wireless>, <ore:plateStellarAlloy>, <enderutilities:frame>], 
	[<enderutilities:frame>, <ore:plateStellarAlloy>, <appliedenergistics2:material:42>, <ae2stuff:wireless>, <environmentaltech:nano_cont_ranged_6>, <ae2stuff:wireless>, <appliedenergistics2:material:42>, <ore:plateStellarAlloy>, <enderutilities:frame>], 
	[<enderutilities:frame>, <enderio:block_enhanced_wireless_charger>, <ore:plateStellarAlloy>, <ore:plateStellarAlloy>, <appliedenergistics2:wireless_access_point>, <ore:plateStellarAlloy>, <ore:plateStellarAlloy>, <enderio:block_enhanced_wireless_charger>, <enderutilities:frame>], 
	[<enderutilities:frame>, <enderutilities:frame>, <enderutilities:frame>, <enderutilities:frame>, <enderio:item_capacitor_stellar>, <enderutilities:frame>, <enderutilities:frame>, <enderutilities:frame>, <enderutilities:frame>]
]);

// Genesis Coil
mods.extendedcrafting.TableCrafting.addShaped(0, <randomthings:spectrecoil_genesis>, [
	[null, null, null, null, null, null, null, null, null], 
	[null, null, null, null, null, null, null, null, null], 
	[null, null, <extendedcrafting:trimmed:5>, <extendedcrafting:trimmed:5>, <extendedcrafting:trimmed:5>, <extendedcrafting:trimmed:5>, <extendedcrafting:trimmed:5>, null, null], 
	[null, <extendedcrafting:trimmed:5>, <extendedcrafting:trimmed:5>, <extendedcrafting:lamp:1>, <thermalexpansion:frame:148>, <extendedcrafting:lamp:1>, <extendedcrafting:trimmed:5>, <extendedcrafting:trimmed:5>, null], 
	[<extendedcrafting:trimmed:5>, <extendedcrafting:trimmed:5>, <mekanism:basicblock2:3>.withTag({tier: 3}), <ore:blockInfinity>, <avaritia:resource:5>, <ore:blockInfinity>, <mekanism:basicblock2:3>.withTag({tier: 3}), <extendedcrafting:trimmed:5>, <extendedcrafting:trimmed:5>], 
	[null, <extendedcrafting:trimmed:5>, <extendedcrafting:trimmed:5>, <extendedcrafting:lamp:1>, <thermalexpansion:frame:148>, <extendedcrafting:lamp:1>, <extendedcrafting:trimmed:5>, <extendedcrafting:trimmed:5>, null], 
	[null, null, <extendedcrafting:trimmed:5>, <extendedcrafting:trimmed:5>, <extendedcrafting:trimmed:5>, <extendedcrafting:trimmed:5>, <extendedcrafting:trimmed:5>, null, null], 
	[null, null, null, null, null, null, null, null, null], 
	[null, null, null, null, null, null, null, null, null]
]);

//Clock
<fossil:ancient_clock>.addTooltip(format.gold("Can be found guarded by Anubus"));
mods.extendedcrafting.TableCrafting.addShaped(0, <fossil:ancient_clock>, [
	[null, null, null, <contenttweaker:solar_ingot>, <contenttweaker:solar_ingot>, <contenttweaker:solar_ingot>, null, null, null], 
	[null, <contenttweaker:solar_ingot>, <contenttweaker:solar_ingot>, <ore:ingotCosmicNeutronium>, <avaritia:endest_pearl>, <ore:ingotCosmicNeutronium>, <contenttweaker:solar_ingot>, <contenttweaker:solar_ingot>, null], 
	[null, <contenttweaker:solar_ingot>, <ore:ingotCosmicNeutronium>, <contenttweaker:solar_ingot>, <avaritia:endest_pearl>, <contenttweaker:solar_ingot>, <ore:ingotCosmicNeutronium>, <contenttweaker:solar_ingot>, null], 
	[<contenttweaker:solar_ingot>, <ore:ingotCosmicNeutronium>, <contenttweaker:solar_ingot>, <contenttweaker:solar_ingot>, <avaritia:endest_pearl>, <contenttweaker:solar_ingot>, <contenttweaker:solar_ingot>, <ore:ingotCosmicNeutronium>, <contenttweaker:solar_ingot>], 
	[<contenttweaker:solar_ingot>, <ore:ingotCosmicNeutronium>, <contenttweaker:solar_ingot>, <contenttweaker:solar_ingot>, <apotheosis:hellshelf>, <avaritia:endest_pearl>, <avaritia:endest_pearl>, <ore:ingotCosmicNeutronium>, <contenttweaker:solar_ingot>], 
	[<contenttweaker:solar_ingot>, <ore:ingotCosmicNeutronium>, <contenttweaker:solar_ingot>, <contenttweaker:solar_ingot>, <contenttweaker:solar_ingot>, <contenttweaker:solar_ingot>, <contenttweaker:solar_ingot>, <ore:ingotCosmicNeutronium>, <contenttweaker:solar_ingot>], 
	[null, <contenttweaker:solar_ingot>, <ore:ingotCosmicNeutronium>, <contenttweaker:solar_ingot>, <contenttweaker:solar_ingot>, <contenttweaker:solar_ingot>, <ore:ingotCosmicNeutronium>, <contenttweaker:solar_ingot>, null], 
	[null, <contenttweaker:solar_ingot>, <contenttweaker:solar_ingot>, <ore:ingotCosmicNeutronium>, <ore:ingotCosmicNeutronium>, <ore:ingotCosmicNeutronium>, <contenttweaker:solar_ingot>, <contenttweaker:solar_ingot>, null], 
	[null, null, null, <contenttweaker:solar_ingot>, <contenttweaker:solar_ingot>, <contenttweaker:solar_ingot>, null, null, null]
]);
recipes.remove(<fossil:time_machine>);
mods.extendedcrafting.TableCrafting.addShaped(0, <fossil:time_machine>, [
	[<ore:plateStellarAlloy>, <ore:plateStellarAlloy>, <ore:plateStellarAlloy>, <ore:growthcatalystGold>, <ore:growthcatalystGold>, <ore:growthcatalystGold>, <ore:plateStellarAlloy>, <ore:plateStellarAlloy>, <ore:plateStellarAlloy>], 
	[<ore:plateStellarAlloy>, <ore:compressedObsidian2>, <ore:compressedObsidian2>, <ore:gearCosmicNeutronium>, <ore:gearCosmicNeutronium>, <ore:gearCosmicNeutronium>, <ore:compressedObsidian2>, <ore:compressedObsidian2>, <ore:plateStellarAlloy>], 
	[<ore:growthcatalystGold>, <ore:compressedObsidian2>, <ore:compressedObsidian2>, <ore:gearCosmicNeutronium>, <extendedcrafting:singularity_ultimate>, <ore:gearCosmicNeutronium>, <ore:compressedObsidian2>, <ore:compressedObsidian2>, <ore:growthcatalystGold>], 
	[<ore:plateStellarAlloy>, <ore:compressedObsidian2>, <ore:compressedObsidian2>, <ore:gearCosmicNeutronium>, <ore:gearCosmicNeutronium>, <ore:gearCosmicNeutronium>, <ore:compressedObsidian2>, <ore:compressedObsidian2>, <ore:plateStellarAlloy>], 
	[<ore:plateStellarAlloy>, <ore:plateStellarAlloy>, <ore:plateStellarAlloy>, <ore:growthcatalystGold>, <ore:growthcatalystGold>, <ore:growthcatalystGold>, <ore:plateStellarAlloy>, <ore:plateStellarAlloy>, <ore:plateStellarAlloy>]
]);

// Tokens
val Tokens as ILiquidStack[IItemStack] = {
	<contenttweaker:token_tier1>: <liquid:moltentokeniron>,
	<contenttweaker:token_tier2>: <liquid:moltentokenbronze>,
	<contenttweaker:token_tier3>: <liquid:moltentokensteel>,
	<contenttweaker:token_tier4>: <liquid:moltentokenrefinediron>,
	<contenttweaker:token_tier5>: <liquid:moltentokenosmium>,
	<contenttweaker:token_tier6>: <liquid:moltentokeniridium>,
	<contenttweaker:token_tier7>: <liquid:moltentokenultimate>,
	<contenttweaker:token_tier8>: <liquid:moltentokeninfinity>,
} as ILiquidStack[IItemStack];
for token, molten in Tokens {
// Casting.addTableRecipe(token, <avaritia:resource:5>, molten, 1000, false, 50);
mods.nuclearcraft.Infuser.addRecipe(<avaritia:resource:5>, molten * 1000, token, 20.0, 16.0);
mods.thermalexpansion.Transposer.addFillRecipe(token, <avaritia:resource:5>, molten * 1000, 8000000);
}


//Creative Cell
mods.extendedcrafting.TableCrafting.addShaped(0, <appliedenergistics2:creative_storage_cell>, [
	[<threng:material:14>, <threng:material:14>, <threng:material:14>, <threng:material:14>, <threng:material:14>, <threng:material:14>, <threng:material:14>, <threng:material:14>, <threng:material:14>], 
	[<threng:material:14>, <ore:ingotInfinity>, <extendedcrafting:material:48>, <extendedcrafting:material:48>, <storagedrawers:upgrade_creative>, <extendedcrafting:material:48>, <extendedcrafting:material:48>, <ore:ingotInfinity>, <threng:material:14>], 
	[<threng:material:14>, <extendedcrafting:material:48>, <techreborn:quantum_chest>, <techreborn:quantum_chest>, <techreborn:quantum_chest>, <techreborn:quantum_chest>, <techreborn:quantum_chest>, <extendedcrafting:material:48>, <threng:material:14>], 
	[<threng:material:14>, <extendedcrafting:material:48>, <techreborn:quantum_chest>, <aeadditions:storage.component:3>, <aeadditions:storage.component:3>, <aeadditions:storage.component:3>, <techreborn:quantum_chest>, <extendedcrafting:material:48>, <threng:material:14>], 
	[<threng:material:14>, <storagedrawers:upgrade_creative>, <techreborn:quantum_chest>, <aeadditions:storage.component:3>, <contenttweaker:time_artifact>, <aeadditions:storage.component:3>, <techreborn:quantum_chest>, <storagedrawers:upgrade_creative>, <threng:material:14>], 
	[<threng:material:14>, <extendedcrafting:material:48>, <techreborn:quantum_chest>, <aeadditions:storage.component:3>, <aeadditions:storage.component:3>, <aeadditions:storage.component:3>, <techreborn:quantum_chest>, <extendedcrafting:material:48>, <threng:material:14>], 
	[<threng:material:14>, <extendedcrafting:material:48>, <techreborn:quantum_chest>, <techreborn:quantum_chest>, <techreborn:quantum_chest>, <techreborn:quantum_chest>, <techreborn:quantum_chest>, <extendedcrafting:material:48>, <threng:material:14>], 
	[<threng:material:14>, <ore:ingotInfinity>, <extendedcrafting:material:48>, <extendedcrafting:material:48>, <storagedrawers:upgrade_creative>, <extendedcrafting:material:48>, <extendedcrafting:material:48>, <ore:ingotInfinity>, <threng:material:14>], 
	[<threng:material:14>, <threng:material:14>, <threng:material:14>, <threng:material:14>, <threng:material:14>, <threng:material:14>, <threng:material:14>, <threng:material:14>, <threng:material:14>]
]);
recipes.addShapeless(<appliedenergistics2:creative_storage_cell>, [<storagedrawers:upgrade_creative:1>]);
recipes.addShapeless(<storagedrawers:upgrade_creative:1>, [<appliedenergistics2:creative_storage_cell>]);


// Temporary Ultimate Crafting Table Avaritia Recipes //
val avaritiaitemstoRemove =
[
<avaritia:infinity_helmet>,
<avaritia:infinity_chestplate>,
<avaritia:infinity_pants>,
<avaritia:infinity_boots>,
<avaritia:infinity_sword>,
<avaritia:infinity_pickaxe>.withTag({ench: [{lvl: 10 as short, id: 35 as short}]}),
<avaritia:infinity_shovel>,
<avaritia:infinity_axe>,
<avaritia:infinity_hoe>,
<avaritia:skullfire_sword>,
<avaritia:infinity_bow>,
<avaritiaio:infinitecapacitor>,
<mysticalmechanics:creative_mech_source>,
]
 as IItemStack[];

for item in avaritiaitemstoRemove {
	mods.avaritia.ExtremeCrafting.remove(item);
}

mods.extendedcrafting.TableCrafting.addShaped(0, <avaritia:infinity_helmet>, [
	[null, null, <ore:ingotCosmicNeutronium>, <ore:ingotCosmicNeutronium>, <ore:ingotCosmicNeutronium>, <ore:ingotCosmicNeutronium>, <ore:ingotCosmicNeutronium>, null, null], 
	[null, <ore:ingotCosmicNeutronium>, <ore:ingotInfinity>, <ore:ingotInfinity>, <ore:ingotInfinity>, <ore:ingotInfinity>, <ore:ingotInfinity>, <ore:ingotCosmicNeutronium>, null], 
	[null, <ore:ingotCosmicNeutronium>, null, <avaritia:resource:5>, <ore:ingotInfinity>, <avaritia:resource:5>, null, <ore:ingotCosmicNeutronium>, null], 
	[null, <ore:ingotCosmicNeutronium>, <ore:ingotInfinity>, <ore:ingotInfinity>, <ore:ingotInfinity>, <ore:ingotInfinity>, <ore:ingotInfinity>, <ore:ingotCosmicNeutronium>, null], 
	[null, <ore:ingotCosmicNeutronium>, <ore:ingotInfinity>, <ore:ingotInfinity>, <ore:ingotInfinity>, <ore:ingotInfinity>, <ore:ingotInfinity>, <ore:ingotCosmicNeutronium>, null], 
	[null, <ore:ingotCosmicNeutronium>, <ore:ingotInfinity>, null, <ore:ingotInfinity>, null, <ore:ingotInfinity>, <ore:ingotCosmicNeutronium>, null]
]);

mods.extendedcrafting.TableCrafting.addShaped(0, <avaritia:infinity_chestplate>, [
	[null, <ore:ingotCosmicNeutronium>, <ore:ingotCosmicNeutronium>, null, null, null, <ore:ingotCosmicNeutronium>, <ore:ingotCosmicNeutronium>, null], 
	[<ore:ingotCosmicNeutronium>, <ore:ingotCosmicNeutronium>, <ore:ingotCosmicNeutronium>, null, null, null, <ore:ingotCosmicNeutronium>, <ore:ingotCosmicNeutronium>, <ore:ingotCosmicNeutronium>], 
	[<ore:ingotCosmicNeutronium>, <ore:ingotCosmicNeutronium>, <ore:ingotCosmicNeutronium>, null, null, null, <ore:ingotCosmicNeutronium>, <ore:ingotCosmicNeutronium>, <ore:ingotCosmicNeutronium>], 
	[null, <ore:ingotCosmicNeutronium>, <ore:ingotInfinity>, <ore:ingotInfinity>, <ore:ingotInfinity>, <ore:ingotInfinity>, <ore:ingotInfinity>, <ore:ingotCosmicNeutronium>, null], 
	[null, <ore:ingotCosmicNeutronium>, <ore:ingotInfinity>, <ore:ingotInfinity>, <ore:blockCrystalMatrix>, <ore:ingotInfinity>, <ore:ingotInfinity>, <ore:ingotCosmicNeutronium>, null], 
	[null, <ore:ingotCosmicNeutronium>, <ore:ingotInfinity>, <ore:ingotInfinity>, <ore:ingotInfinity>, <ore:ingotInfinity>, <ore:ingotInfinity>, <ore:ingotCosmicNeutronium>, null], 
	[null, <ore:ingotCosmicNeutronium>, <ore:ingotInfinity>, <ore:ingotInfinity>, <ore:ingotInfinity>, <ore:ingotInfinity>, <ore:ingotInfinity>, <ore:ingotCosmicNeutronium>, null], 
	[null, <ore:ingotCosmicNeutronium>, <ore:ingotInfinity>, <ore:ingotInfinity>, <ore:ingotInfinity>, <ore:ingotInfinity>, <ore:ingotInfinity>, <ore:ingotCosmicNeutronium>, null], 
	[null, null, <ore:ingotCosmicNeutronium>, <ore:ingotCosmicNeutronium>, <ore:ingotCosmicNeutronium>, <ore:ingotCosmicNeutronium>, <ore:ingotCosmicNeutronium>, null, null]
]);

mods.extendedcrafting.TableCrafting.addShaped(0, <avaritia:infinity_pants>, [
	[<ore:ingotCosmicNeutronium>, <ore:ingotCosmicNeutronium>, <ore:ingotCosmicNeutronium>, <ore:ingotCosmicNeutronium>, <ore:ingotCosmicNeutronium>, <ore:ingotCosmicNeutronium>, <ore:ingotCosmicNeutronium>, <ore:ingotCosmicNeutronium>, <ore:ingotCosmicNeutronium>], 
	[<ore:ingotCosmicNeutronium>, <ore:ingotInfinity>, <ore:ingotInfinity>, <ore:ingotInfinity>, <avaritia:resource:5>, <ore:ingotInfinity>, <ore:ingotInfinity>, <ore:ingotInfinity>, <ore:ingotCosmicNeutronium>], 
	[<ore:ingotCosmicNeutronium>, <ore:ingotInfinity>, <ore:ingotCosmicNeutronium>, <ore:ingotCosmicNeutronium>, <avaritia:resource:5>, <ore:ingotCosmicNeutronium>, <ore:ingotCosmicNeutronium>, <ore:ingotInfinity>, <ore:ingotCosmicNeutronium>], 
	[<ore:ingotCosmicNeutronium>, <ore:ingotInfinity>, <ore:ingotCosmicNeutronium>, null, null, null, <ore:ingotCosmicNeutronium>, <ore:ingotInfinity>, <ore:ingotCosmicNeutronium>], 
	[<ore:ingotCosmicNeutronium>, <ore:blockCrystalMatrix>, <ore:ingotCosmicNeutronium>, null, null, null, <ore:ingotCosmicNeutronium>, <ore:blockCrystalMatrix>, <ore:ingotCosmicNeutronium>], 
	[<ore:ingotCosmicNeutronium>, <ore:ingotInfinity>, <ore:ingotCosmicNeutronium>, null, null, null, <ore:ingotCosmicNeutronium>, <ore:ingotInfinity>, <ore:ingotCosmicNeutronium>], 
	[<ore:ingotCosmicNeutronium>, <ore:ingotInfinity>, <ore:ingotCosmicNeutronium>, null, null, null, <ore:ingotCosmicNeutronium>, <ore:ingotInfinity>, <ore:ingotCosmicNeutronium>], 
	[<ore:ingotCosmicNeutronium>, <ore:ingotInfinity>, <ore:ingotCosmicNeutronium>, null, null, null, <ore:ingotCosmicNeutronium>, <ore:ingotInfinity>, <ore:ingotCosmicNeutronium>], 
	[<ore:ingotCosmicNeutronium>, <ore:ingotCosmicNeutronium>, <ore:ingotCosmicNeutronium>, null, null, null, <ore:ingotCosmicNeutronium>, <ore:ingotCosmicNeutronium>, <ore:ingotCosmicNeutronium>]
]);

mods.extendedcrafting.TableCrafting.addShaped(0, <avaritia:infinity_boots>, [
	[null, <ore:ingotCosmicNeutronium>, <ore:ingotCosmicNeutronium>, <ore:ingotCosmicNeutronium>, null, <ore:ingotCosmicNeutronium>, <ore:ingotCosmicNeutronium>, <ore:ingotCosmicNeutronium>, null], 
	[null, <ore:ingotCosmicNeutronium>, <ore:ingotInfinity>, <ore:ingotCosmicNeutronium>, null, <ore:ingotCosmicNeutronium>, <ore:ingotInfinity>, <ore:ingotCosmicNeutronium>, null], 
	[null, <ore:ingotCosmicNeutronium>, <ore:ingotInfinity>, <ore:ingotCosmicNeutronium>, null, <ore:ingotCosmicNeutronium>, <ore:ingotInfinity>, <ore:ingotCosmicNeutronium>, null], 
	[<ore:ingotCosmicNeutronium>, <ore:ingotCosmicNeutronium>, <ore:ingotInfinity>, <ore:ingotCosmicNeutronium>, null, <ore:ingotCosmicNeutronium>, <ore:ingotInfinity>, <ore:ingotCosmicNeutronium>, <ore:ingotCosmicNeutronium>], 
	[<ore:ingotCosmicNeutronium>, <ore:ingotInfinity>, <ore:ingotInfinity>, <ore:ingotCosmicNeutronium>, null, <ore:ingotCosmicNeutronium>, <ore:ingotInfinity>, <ore:ingotInfinity>, <ore:ingotCosmicNeutronium>], 
	[<ore:ingotCosmicNeutronium>, <ore:ingotCosmicNeutronium>, <ore:ingotCosmicNeutronium>, <ore:ingotCosmicNeutronium>, null, <ore:ingotCosmicNeutronium>, <ore:ingotCosmicNeutronium>, <ore:ingotCosmicNeutronium>, <ore:ingotCosmicNeutronium>]
]);

mods.extendedcrafting.TableCrafting.addShaped(0, <avaritia:infinity_sword>, [
	[null, null, null, null, null, null, null, <ore:ingotInfinity>, <ore:ingotInfinity>], 
	[null, null, null, null, null, null, <ore:ingotInfinity>, <ore:ingotInfinity>, <ore:ingotInfinity>], 
	[null, null, null, null, null, <ore:ingotInfinity>, <ore:ingotInfinity>, <ore:ingotInfinity>, null], 
	[null, null, null, null, <ore:ingotInfinity>, <ore:ingotInfinity>, <ore:ingotInfinity>, null, null], 
	[null, <ore:ingotCrystalMatrix>, null, <ore:ingotInfinity>, <ore:ingotInfinity>, <ore:ingotInfinity>, null, null, null], 
	[null, null, <ore:ingotCrystalMatrix>, <ore:ingotInfinity>, <ore:ingotInfinity>, null, null, null, null], 
	[null, null, <ore:ingotCosmicNeutronium>, <ore:ingotCrystalMatrix>, null, null, null, null, null], 
	[null, <ore:ingotCosmicNeutronium>, null, null, <ore:ingotCrystalMatrix>, null, null, null, null], 
	[<avaritia:resource:5>, null, null, null, null, null, null, null, null]
]);

mods.extendedcrafting.TableCrafting.addShaped(0, <avaritia:infinity_pickaxe>.withTag({ench: [{lvl: 10 as short, id: 35 as short}]}), [
	[null, <ore:ingotInfinity>, <ore:ingotInfinity>, <ore:ingotInfinity>, <ore:ingotInfinity>, <ore:ingotInfinity>, <ore:ingotInfinity>, <ore:ingotInfinity>, null], 
	[<ore:ingotInfinity>, <ore:ingotInfinity>, <ore:ingotInfinity>, <ore:ingotInfinity>, <ore:blockCrystalMatrix>, <ore:ingotInfinity>, <ore:ingotInfinity>, <ore:ingotInfinity>, <ore:ingotInfinity>], 
	[<ore:ingotInfinity>, <ore:ingotInfinity>, null, null, <ore:ingotCosmicNeutronium>, null, null, <ore:ingotInfinity>, <ore:ingotInfinity>], 
	[null, null, null, null, <ore:ingotCosmicNeutronium>, null, null, null, null], 
	[null, null, null, null, <ore:ingotCosmicNeutronium>, null, null, null, null], 
	[null, null, null, null, <ore:ingotCosmicNeutronium>, null, null, null, null], 
	[null, null, null, null, <ore:ingotCosmicNeutronium>, null, null, null, null], 
	[null, null, null, null, <ore:ingotCosmicNeutronium>, null, null, null, null], 
	[null, null, null, null, <ore:ingotCosmicNeutronium>, null, null, null, null]
]);

mods.extendedcrafting.TableCrafting.addShaped(0, <avaritia:infinity_bow>, [
	[null, null, null, <ore:ingotInfinity>, <ore:ingotInfinity>, null, null, null, null], 
	[null, null, <ore:ingotInfinity>, null, <ore:wool>, null, null, null, null], 
	[null, <ore:ingotInfinity>, null, null, <ore:wool>, null, null, null, null], 
	[<ore:ingotInfinity>, null, null, null, <ore:wool>, null, null, null, null], 
	[<ore:blockCrystalMatrix>, null, null, null, <ore:wool>, null, null, null, null], 
	[<ore:ingotInfinity>, null, null, null, <ore:wool>, null, null, null, null], 
	[null, <ore:ingotInfinity>, null, null, <ore:wool>, null, null, null, null], 
	[null, null, <ore:ingotInfinity>, null, <ore:wool>, null, null, null, null], 
	[null, null, null, <ore:ingotInfinity>, <ore:ingotInfinity>, null, null, null, null]
]);

mods.extendedcrafting.TableCrafting.addShaped(0, <avaritia:infinity_shovel>, [
	[null, null, null, null, null, null, <ore:ingotInfinity>, <ore:ingotInfinity>, <ore:ingotInfinity>], 
	[null, null, null, null, null, <ore:ingotInfinity>, <ore:ingotInfinity>, <ore:blockInfinity>, <ore:ingotInfinity>], 
	[null, null, null, null, null, null, <ore:ingotInfinity>, <ore:ingotInfinity>, <ore:ingotInfinity>], 
	[null, null, null, null, null, <ore:ingotCosmicNeutronium>, null, <ore:ingotInfinity>, null], 
	[null, null, null, null, <ore:ingotCosmicNeutronium>, null, null, null, null], 
	[null, null, null, <ore:ingotCosmicNeutronium>, null, null, null, null, null], 
	[null, null, <ore:ingotCosmicNeutronium>, null, null, null, null, null, null], 
	[null, <ore:ingotCosmicNeutronium>, null, null, null, null, null, null, null], 
	[<ore:ingotCosmicNeutronium>, null, null, null, null, null, null, null, null]
]);

mods.extendedcrafting.TableCrafting.addShaped(0, <avaritia:infinity_axe>, [
	[null, null, null, <ore:ingotInfinity>, null, null, null, null, null], 
	[null, null, <ore:ingotInfinity>, <ore:ingotInfinity>, <ore:ingotInfinity>, <ore:ingotInfinity>, <ore:ingotInfinity>, null, null], 
	[null, null, null, <ore:ingotInfinity>, <ore:ingotInfinity>, <ore:ingotInfinity>, <ore:ingotInfinity>, null, null], 
	[null, null, null, null, null, <ore:ingotInfinity>, <ore:ingotCosmicNeutronium>, null, null], 
	[null, null, null, null, null, null, <ore:ingotCosmicNeutronium>, null, null], 
	[null, null, null, null, null, null, <ore:ingotCosmicNeutronium>, null, null], 
	[null, null, null, null, null, null, <ore:ingotCosmicNeutronium>, null, null], 
	[null, null, null, null, null, null, <ore:ingotCosmicNeutronium>, null, null], 
	[null, null, null, null, null, null, <ore:ingotCosmicNeutronium>, null, null]
]);

mods.extendedcrafting.TableCrafting.addShaped(0, <avaritia:infinity_hoe>, [
	[null, null, null, null, null, <ore:ingotCosmicNeutronium>, null, null, null], 
	[null, <ore:ingotInfinity>, <ore:ingotInfinity>, <ore:ingotInfinity>, <ore:ingotInfinity>, <ore:ingotInfinity>, <ore:ingotInfinity>, null, null], 
	[<ore:ingotInfinity>, <ore:ingotInfinity>, <ore:ingotInfinity>, <ore:ingotInfinity>, <ore:ingotInfinity>, <ore:ingotInfinity>, <ore:ingotInfinity>, null, null], 
	[<ore:ingotInfinity>, null, null, null, null, <ore:ingotInfinity>, <ore:ingotInfinity>, null, null], 
	[null, null, null, null, null, <ore:ingotCosmicNeutronium>, null, null, null], 
	[null, null, null, null, null, <ore:ingotCosmicNeutronium>, null, null, null], 
	[null, null, null, null, null, <ore:ingotCosmicNeutronium>, null, null, null], 
	[null, null, null, null, null, <ore:ingotCosmicNeutronium>, null, null, null], 
	[null, null, null, null, null, <ore:ingotCosmicNeutronium>, null, null, null]
]);

mods.extendedcrafting.TableCrafting.addShaped(0, <avaritia:skullfire_sword>, [
	[null, null, null, null, null, null, null, <ore:ingotCrystalMatrix>, <ore:powderBlaze>], 
	[null, null, null, null, null, null, <ore:ingotCrystalMatrix>, <ore:powderBlaze>, <ore:ingotCrystalMatrix>], 
	[null, null, null, null, null, <ore:ingotCrystalMatrix>, <ore:powderBlaze>, <ore:ingotCrystalMatrix>, null], 
	[null, null, null, null, <ore:ingotCrystalMatrix>, <ore:powderBlaze>, <ore:ingotCrystalMatrix>, null, null], 
	[null, <ore:bone>, null, <ore:ingotCrystalMatrix>, <ore:powderBlaze>, <ore:ingotCrystalMatrix>, null, null, null], 
	[null, null, <ore:bone>, <ore:powderBlaze>, <ore:ingotCrystalMatrix>, null, null, null, null], 
	[null, null, <ore:logWood>, <ore:bone>, null, null, null, null, null], 
	[null, <ore:logWood>, null, null, <ore:bone>, null, null, null, null], 
	[<ore:netherStar>, null, null, null, null, null, null, null, null]
]);

mods.extendedcrafting.TableCrafting.addShaped(0, <avaritiaio:infinitecapacitor>, [
	[null, <ore:ingotInfinity>, <ore:ingotInfinity>, <avaritia:resource:5>, <ore:ingotInfinity>, <ore:ingotInfinity>, <ore:ingotInfinity>, <ore:ingotInfinity>, null], 
	[null, <ore:ingotInfinity>, <ore:ingotCrystalMatrix>, <avaritia:resource:5>, <ore:ingotCrystalMatrix>, <ore:ingotCrystalMatrix>, <ore:ingotCrystalMatrix>, <ore:ingotInfinity>, null], 
	[null, <ore:ingotInfinity>, <ore:ingotCrystalMatrix>, <avaritia:resource:5>, <ore:ingotCrystalMatrix>, <ore:ingotCrystalMatrix>, <ore:ingotCrystalMatrix>, <ore:ingotInfinity>, null], 
	[null, <ore:ingotInfinity>, <ore:ingotCrystalMatrix>, <avaritia:resource:5>, <ore:ingotCrystalMatrix>, <ore:ingotCrystalMatrix>, <ore:ingotCrystalMatrix>, <ore:ingotInfinity>, null], 
	[null, <ore:ingotInfinity>, <ore:ingotCrystalMatrix>, <avaritia:resource:5>, <ore:ingotCrystalMatrix>, <ore:ingotCrystalMatrix>, <ore:ingotCrystalMatrix>, <ore:ingotInfinity>, null], 
	[null, <ore:ingotInfinity>, <ore:ingotCrystalMatrix>, <avaritia:resource:5>, <ore:ingotCrystalMatrix>, <ore:ingotCrystalMatrix>, <ore:ingotCrystalMatrix>, <ore:ingotInfinity>, null], 
	[null, <ore:ingotInfinity>, <ore:ingotInfinity>, <avaritia:resource:5>, <ore:ingotInfinity>, <ore:ingotInfinity>, <ore:ingotInfinity>, <ore:ingotInfinity>, null], 
	[null, null, <ore:ingotCosmicNeutronium>, null, null, null, <ore:ingotCosmicNeutronium>, null, null], 
	[null, null, <ore:ingotCosmicNeutronium>, null, null, null, <ore:ingotCosmicNeutronium>, null, null]
]);

mods.extendedcrafting.TableCrafting.addShaped(0, <mysticalmechanics:creative_mech_source>, [
	[<ore:gearInfinity>, <mysticalmechanics:mergebox_frame>, <ore:gearInfinity>, <mysticalmechanics:axle_iron>, <mysticalmechanics:mergebox_frame>, <mysticalmechanics:axle_iron>, <ore:gearInfinity>, <mysticalmechanics:mergebox_frame>, <ore:gearInfinity>], 
	[<mysticalmechanics:mergebox_frame>, <ore:gearCrystalMatrix>, <mysticalmechanics:axle_iron>, <ore:gearCrystalMatrix>, <mysticalmechanics:axle_iron>, <ore:gearCrystalMatrix>, <mysticalmechanics:axle_iron>, <ore:gearCrystalMatrix>, <mysticalmechanics:mergebox_frame>], 
	[<ore:gearInfinity>, <mysticalmechanics:axle_iron>, <mystgears:windup_box>, <mysticalmechanics:gearbox_frame>, <ore:gearCosmicNeutronium>, <mysticalmechanics:gearbox_frame>, <mystgears:windup_box>, <mysticalmechanics:axle_iron>, <ore:gearInfinity>], 
	[<mysticalmechanics:axle_iron>, <ore:gearCrystalMatrix>, <mysticalmechanics:gearbox_frame>, <ore:gearCosmicNeutronium>, <mysticalmechanics:mergebox_frame>, <ore:gearCosmicNeutronium>, <mysticalmechanics:gearbox_frame>, <ore:gearCrystalMatrix>, <mysticalmechanics:axle_iron>], 
	[<mysticalmechanics:mergebox_frame>, <mysticalmechanics:axle_iron>, <ore:gearCosmicNeutronium>, <mysticalmechanics:mergebox_frame>, <avaritia:resource:5>, <mysticalmechanics:mergebox_frame>, <ore:gearCosmicNeutronium>, <mysticalmechanics:axle_iron>, <mysticalmechanics:mergebox_frame>], 
	[<mysticalmechanics:axle_iron>, <ore:gearCrystalMatrix>, <mysticalmechanics:gearbox_frame>, <ore:gearCosmicNeutronium>, <mysticalmechanics:mergebox_frame>, <ore:gearCosmicNeutronium>, <mysticalmechanics:gearbox_frame>, <ore:gearCrystalMatrix>, <mysticalmechanics:axle_iron>], 
	[<ore:gearInfinity>, <mysticalmechanics:axle_iron>, <mystgears:windup_box>, <mysticalmechanics:gearbox_frame>, <ore:gearCosmicNeutronium>, <mysticalmechanics:gearbox_frame>, <mystgears:windup_box>, <mysticalmechanics:axle_iron>, <ore:gearInfinity>], 
	[<mysticalmechanics:mergebox_frame>, <ore:gearCrystalMatrix>, <mysticalmechanics:axle_iron>, <ore:gearCrystalMatrix>, <mysticalmechanics:axle_iron>, <ore:gearCrystalMatrix>, <mysticalmechanics:axle_iron>, <ore:gearCrystalMatrix>, <mysticalmechanics:mergebox_frame>], 
	[<ore:gearInfinity>, <mysticalmechanics:mergebox_frame>, <ore:gearInfinity>, <mysticalmechanics:axle_iron>, <mysticalmechanics:mergebox_frame>, <mysticalmechanics:axle_iron>, <ore:gearInfinity>, <mysticalmechanics:mergebox_frame>, <ore:gearInfinity>]
]);


///////////////////////////////////////////////
//////////// MBD Recipes ///////////////////////
/////////////////////////////////////////////////
val bloodOrb = [
	<bloodmagic:blood_orb>.withTag({orb: "bloodmagic:weak"}),
	<bloodmagic:blood_orb>.withTag({orb: "bloodmagic:apprentice"}),
	<bloodmagic:blood_orb>.withTag({orb: "bloodmagic:magician"}),
	<bloodmagic:blood_orb>.withTag({orb: "bloodmagic:master"}),
	<bloodmagic:blood_orb>.withTag({orb: "bloodmagic:archmage"}),
	<bloodmagic:blood_orb>.withTag({orb: "bloodmagic:transcendent"}),
] as IItemStack[];

val bloodOrbLeast = [
	bloodOrb[0]|bloodOrb[1]|bloodOrb[2]|bloodOrb[3]|bloodOrb[4]|bloodOrb[5],
	bloodOrb[1]|bloodOrb[2]|bloodOrb[3]|bloodOrb[4]|bloodOrb[5],
	bloodOrb[2]|bloodOrb[3]|bloodOrb[4]|bloodOrb[5],
	bloodOrb[3]|bloodOrb[4]|bloodOrb[5],
	bloodOrb[4]|bloodOrb[5],
	bloodOrb[5],
] as IIngredient[];

<multiblocked:divine_altar>.addTooltip(format.gold("Place under the Jar"));
# [tile.multiblocked.divine_altar.name] from [Archmage Blood Orb][+4]
craft.remake(<multiblocked:divine_altar>, ["pretty",
  "□ R □",
  "E A E",
  "□ B □"], {
  "□": <ore:plateAdaminite>,              # Adaminite Plate
  "R": <bloodmagic:teleposition_focus:2>, # Reinforced Teleposition Focus
  "E": <bloodmagic:slate:4>,              # Ethereal Slate
  "A": bloodOrbLeast[4].reuse(), # Archmage Blood Orb
  "B": <bloodtinker:bloody_thorn_ring>,   # Bloodrose Ring
});

# [tile.multiblocked.laser_combiner.name] from [Steel Chassis][+4]
craft.remake(<multiblocked:laser_combiner>, ["pretty",
  "□ U □",
  "L ◙ L",
  "□ T □"], {
  "□": <ore:plateElite>,               # Elite Plating
  "U": <advancedrocketry:misc>,        # User Interface
  "L": <qmd:discharge_lamp2:1>,                  # Laser Assembly
  "◙": <ore:steelFrame>,               # Steel Chassis
  "T": <extendedcrafting:material:13>, # The Ultimate Catalyst
});

# [tile.multiblocked.part_fluid_in.name] from [Steel Chassis][+3]
craft.remake(<multiblocked:part_fluid_in>, ["pretty",
  "□ L □",
  "F ◙ F",
  "□ L □"], {
  "□": <ore:plateElite>,                    # Elite Plating
  "L": <translocators:translocator_part:1>, # Liquid Translocator
  "F": <actuallyadditions:block_laser_relay_fluids>, # Fluid Laser Relay
  "◙": <ore:steelFrame>,                    # Steel Chassis
});

# [tile.multiblocked.part_power_in.name] from [Steel Chassis][+3]
craft.remake(<multiblocked:part_power_in>, ["pretty",
  "□ G □",
  "G ◙ G",
  "□ ¤ □"], {
  "□": <ore:plateElite>,                     # Elite Plating
  "G": <fluxnetworks:gargantuanfluxstorage>, # Gargantuan Flux Storage
  "◙": <ore:steelFrame>,                     # Steel Chassis
  "¤": <ore:gearInfinity>,                   # Infinity Gear
});

# [tile.multiblocked.part_item_in.name] from [Steel Chassis][+3]
craft.remake(<multiblocked:part_item_in>, ["pretty",
  "□ I □",
  "A ◙ A",
  "□ I □"], {
  "□": <ore:plateElite>,                  # Elite Plating
  "I": <translocators:translocator_part>, # Item Translocator
  "A": <actuallyadditions:block_laser_relay_item_whitelist>, # Advanced Item Laser Relay
  "◙": <ore:steelFrame>,                  # Steel Chassis
});

# [tile.multiblocked.part_item_out.name] from [Steel Chassis][+3]
craft.remake(<multiblocked:part_item_out>, ["pretty",
  "□ A □",
  "I ◙ I",
  "□ A □"], {
  "□": <ore:plateElite>,                  # Elite Plating
  "A": <actuallyadditions:block_laser_relay_item_whitelist>, # Advanced Item Laser Relay
  "I": <translocators:translocator_part>, # Item Translocator
  "◙": <ore:steelFrame>,                  # Steel Chassis
});
##########################################################################################
print("==================== end of creative biz.zs ====================");
