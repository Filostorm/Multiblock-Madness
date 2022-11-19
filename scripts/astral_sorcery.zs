import crafttweaker.item.IItemStack;
import mods.tconstruct.Casting;
import mods.tconstruct.Melting;
import mods.astralsorcery.LiquidInteraction;
import mods.thaumcraft.Infusion;
import mods.astralsorcery.Altar;
import mods.astralsorcery.LightTransmutation;
import mods.astralsorcery.StarlightInfusion;
import mods.appliedenergistics2.Grinder;
import mods.astralsorcery.Lightwell;
import mods.astralsorcery.Utils;
import crafttweaker.event.EntityJoinWorldEvent;
import crafttweaker.data.IData;
import crafttweaker.player.IPlayer;
import crafttweaker.entity.IEntity;

print("==================== loading astral_sorcery.zs ====================");
##########################################################################################

val itemstoRemove =
[
	<minecraft:beacon>,
]
 as IItemStack[];

for item in itemstoRemove {
	recipes.remove(item);
}



//Grinder.addRecipe(IItemStack output, IItemStack input, int turns, @Optional IItemStack secondary1Output, @Optional float secondary1Chance, @Optional IItemStack secondary2Output, @Optional float secondary2Chance);
//StarDust
Grinder.addRecipe(<astralsorcery:itemcraftingcomponent:2>, <astralsorcery:itemcraftingcomponent:1>, 4);
Grinder.addRecipe(<astralsorcery:itemcraftingcomponent:2>, <astralsorcery:blockcustomore:1>, 4, <astralsorcery:itemcraftingcomponent:2>, 1);


//<astralsorcery:blockinfusedwood>.addTooltip(format.aqua("Drop any log into liquid Starlight to create"));
<astralsorcery:itemcelestialcrystal>.addTooltip(format.aqua("Grows from a Celestal Crystal Cluster"));

//Wand with no starlight
recipes.addShaped(<astralsorcery:itemwand>, [[null, <astralsorcery:itemcraftingcomponent>, <arcanearchives:shaped_quartz>],[null, <ore:stoneMarble>, <astralsorcery:itemcraftingcomponent>], [<ore:stoneMarble>, null, null]]);


//mods.astralsorcery.Lightwell.addLiquefaction(IItemStack input, ILiquidStack output, float productionMultiplier, float shatterMultiplier, int colorhex);

//Starmetal
LightTransmutation.removeTransmutation(<astralsorcery:blockcustomore:1>, true);
LightTransmutation.addTransmutation(<contenttweaker:sub_block_holder_0:7>, <astralsorcery:blockcustomore:1>, 20);

//1000 max starlight for first tier altar
Altar.addDiscoveryAltarRecipe("internal/altar/upgrade_tier2", <astralsorcery:blockaltar:1>, 950, 200, [

			<arcanearchives:containment_field>, <astralsorcery:blockblackmarble>, <arcanearchives:containment_field>,

			<astralsorcery:blockmarble:2>, <contenttweaker:activatedaspectusdawnstone>, <astralsorcery:blockmarble:2>,

			<astralsorcery:blockmarble:4>, <botania:storage>, <astralsorcery:blockmarble:4>]);

//2000 max starlight 2nd tier


<ore:littleLight>.add(<thaumictinkerer:energetic_nitor>);
<ore:littleLight>.add(<bloodmagic:sigil_blood_light>);
<ore:littleLight>.add(<embers:glimmer_lamp>);

Altar.addAttunementAltarRecipe("internal/altar/illuminator", <astralsorcery:blockworldilluminator>, 1500, 300, [
			<astralsorcery:itemcraftingcomponent:2>, <chisel:energizedvoidstone:2>, <astralsorcery:itemcraftingcomponent:2>,
			<chisel:energizedvoidstone:2>, <ore:littleLight>, <chisel:energizedvoidstone:2>,
			<astralsorcery:itemcraftingcomponent:2>, <chisel:energizedvoidstone:2>, <astralsorcery:itemcraftingcomponent:2>,
			<astralsorcery:itemusabledust>, <astralsorcery:itemusabledust>, <astralsorcery:itemusabledust>, <astralsorcery:itemusabledust>]);

Altar.addAttunementAltarRecipe("internal/altar/upgrade_tier3", <astralsorcery:blockaltar:2>, 1900, 400, [
			<astralsorcery:itemcraftingcomponent>, null, <astralsorcery:itemcraftingcomponent>,
			<astralsorcery:blockmarble:2>, <astralsorcery:itemrockcrystalsimple>, <astralsorcery:blockmarble:2>,
			<moreplates:energetic_silver_plate>, <contenttweaker:starmetal_block>, <moreplates:energetic_silver_plate>,
			<embers:focal_lens>, <embers:focal_lens>, <embers:focal_lens>, <embers:focal_lens>]);

Altar.addConstellationAltarRecipe("internal/altar/upgrade_tier4", <astralsorcery:blockaltar:3>, 3800, 500, [
			<actuallyadditions:item_crystal_empowered:5>, <contenttweaker:ingot_reinforced_starmetal>, <actuallyadditions:item_crystal_empowered:5>,
			<contenttweaker:ingot_reinforced_starmetal>, <astralsorcery:itemcelestialcrystal>, <contenttweaker:ingot_reinforced_starmetal>,
			<actuallyadditions:item_crystal_empowered:5>, <contenttweaker:ingot_reinforced_starmetal>, <actuallyadditions:item_crystal_empowered:5>,
			<actuallyadditions:item_crystal_empowered:5>, <actuallyadditions:item_crystal_empowered:5>, <actuallyadditions:item_crystal_empowered:5>, <actuallyadditions:item_crystal_empowered:5>,
			<astralsorcery:itemcraftingcomponent:4>, <astralsorcery:itemcraftingcomponent:4>,
			<cyclicmagic:crystallized_obsidian>, <cyclicmagic:crystallized_obsidian>,
			<cyclicmagic:crystallized_obsidian>, <cyclicmagic:crystallized_obsidian>,
			<astralsorcery:itemcraftingcomponent:4>, <astralsorcery:itemcraftingcomponent:4>]);

//Altar.addTraitAltarRecipe(string recipeLocation, IItemStack output, int starlight, int craftTickTime, IIngredient[] inputs, @optional String iRequiredConstellationFocusName);
Altar.addTraitAltarRecipe("mm:shaped/internal/altar/beacon", <minecraft:beacon>, 5000, 400, [

	<botania:manaresource:2>, <botania:manaresource:2>, <botania:manaresource:2>,
	<botania:manaresource:2>, <minecraft:nether_star>, <botania:manaresource:2>, 
	<botania:manaresource:2>, <botania:manaresource:2>, <botania:manaresource:2>,
	<thermalfoundation:glass_alloy:6>, <thermalfoundation:glass_alloy:6>, <minecraft:obsidian>, <minecraft:obsidian>,
	<thermalfoundation:glass_alloy:6>, 	<thermalfoundation:glass_alloy:6>,	
	<thermalfoundation:glass_alloy:6>, <thermalfoundation:glass_alloy:6>, 

	<thermalfoundation:glass_alloy:6>, <thermalfoundation:glass_alloy:6>,
	<minecraft:obsidian>, <minecraft:obsidian>,

	<thermalfoundation:glass_alloy:6>, <thermalfoundation:glass_alloy:6>,
	<thermalfoundation:glass_alloy:6>, <minecraft:obsidian>,

	//Outer Items, indices 25+

	<actuallyadditions:item_crystal_empowered:1>, <actuallyadditions:item_crystal_empowered:1>, <actuallyadditions:item_crystal_empowered:1>, <actuallyadditions:item_crystal_empowered:1>

]);

//illumination powder
Altar.addDiscoveryAltarRecipe("internal/altar/illuminationpowder", <astralsorcery:itemusabledust>*16, 250, 200, [

			null, <arcanearchives:radiant_dust>, null,
	<arcanearchives:radiant_dust>, <jaopca:item_dustaquamarine>, <arcanearchives:radiant_dust>,
			null, <arcanearchives:radiant_dust>, null]);

			
/*
Altar.addAttunementAltarRecipe("multiblockmadness:shaped/internal/altar/runealtar", <botania:runealtar>, 500, 300, [
			<arcanearchives:quartz_sliver>, <arcanearchives:quartz_sliver>, <arcanearchives:quartz_sliver>,
			<botania:livingrock>, <botania:livingrock>, <botania:livingrock>,
			<botania:livingrock>, <astralsorcery:itemshiftingstar>, <botania:livingrock>,
			<botania:manaresource:23>, <botania:manaresource:23>, <bloodmagic:blood_rune>, <bloodmagic:blood_rune>]);
*/

//Illumination Powder
StarlightInfusion.addInfusion(<arcanearchives:radiant_dust>, <astralsorcery:itemusabledust>*8, false, 0.5, 200);

//Lens x2 recipe
StarlightInfusion.addInfusion(<botania:managlasspane>, <astralsorcery:itemcraftingcomponent:3>*2, false, 0.75, 200);

//Skystone
LightTransmutation.addTransmutation(<embers:ashen_stone>, <appliedenergistics2:sky_stone_block>, 5);

//LiquidInteraction.addInteraction(ILiquidStack liquidIn1, float chanceConsumption1, ILiquidStack liquidIn2, float chanceConsumption2, int weight, IItemStack output);
LiquidInteraction.addInteraction(<liquid:petrotheum> * 50, 0.5, <liquid:astralsorcery.liquidstarlight> * 200, 0.5, 89, <appliedenergistics2:sky_stone_block>);
LiquidInteraction.addInteraction(<liquid:petrotheum> * 50, 0.5, <liquid:astralsorcery.liquidstarlight> * 200, 0.5, 10, <appliedenergistics2:smooth_sky_stone_block>);
LiquidInteraction.addInteraction(<liquid:petrotheum> * 50, 0.5, <liquid:astralsorcery.liquidstarlight> * 200, 0.5, 1, <contenttweaker:starmetal_block>);
//Netherack, Magma Block, Ash (not Ketchum, the block one)
LiquidInteraction.addInteraction(<liquid:fiery_essence> * 20, 0.5, <liquid:lifeessence> * 125, 0.5, 65, <minecraft:magma>);
LiquidInteraction.addInteraction(<liquid:fiery_essence> * 20, 0.5, <liquid:lifeessence> * 125, 0.5, 20, <minecraft:netherrack>);
LiquidInteraction.addInteraction(<liquid:fiery_essence> * 20, 0.5, <liquid:lifeessence> * 125, 0.5, 15, <iceandfire:ash>);
//Corrosive Demonic Will
LiquidInteraction.addInteraction(<liquid:hydrofluoric_acid> * 100, 0.5, <liquid:molten_demon_will> * 10, 0.5, 53, <bloodmagic:monster_soul:1>.withTag({souls: 2.0}));
LiquidInteraction.addInteraction(<liquid:hydrofluoric_acid> * 100, 0.5, <liquid:molten_demon_will> * 10, 0.5, 52, <bloodmagic:monster_soul:1>.withTag({souls: 2.1}));
LiquidInteraction.addInteraction(<liquid:hydrofluoric_acid> * 100, 0.5, <liquid:molten_demon_will> * 10, 0.5, 51, <bloodmagic:monster_soul:1>.withTag({souls: 2.2}));
LiquidInteraction.addInteraction(<liquid:hydrofluoric_acid> * 100, 0.5, <liquid:molten_demon_will> * 10, 0.5, 50, <bloodmagic:monster_soul:1>.withTag({souls: 2.3}));
LiquidInteraction.addInteraction(<liquid:hydrofluoric_acid> * 100, 0.5, <liquid:molten_demon_will> * 10, 0.5, 49, <bloodmagic:monster_soul:1>.withTag({souls: 2.4}));
LiquidInteraction.addInteraction(<liquid:hydrofluoric_acid> * 100, 0.5, <liquid:molten_demon_will> * 10, 0.5, 47, <bloodmagic:monster_soul:1>.withTag({souls: 2.5}));
LiquidInteraction.addInteraction(<liquid:hydrofluoric_acid> * 100, 0.5, <liquid:molten_demon_will> * 10, 0.6, 46, <bloodmagic:monster_soul:1>.withTag({souls: 2.6}));
LiquidInteraction.addInteraction(<liquid:hydrofluoric_acid> * 100, 0.5, <liquid:molten_demon_will> * 10, 0.6, 45, <bloodmagic:monster_soul:1>.withTag({souls: 2.7}));
LiquidInteraction.addInteraction(<liquid:hydrofluoric_acid> * 100, 0.5, <liquid:molten_demon_will> * 10, 0.6, 44, <bloodmagic:monster_soul:1>.withTag({souls: 2.8}));
LiquidInteraction.addInteraction(<liquid:hydrofluoric_acid> * 100, 0.5, <liquid:molten_demon_will> * 10, 0.6, 43, <bloodmagic:monster_soul:1>.withTag({souls: 2.9}));
LiquidInteraction.addInteraction(<liquid:hydrofluoric_acid> * 100, 0.5, <liquid:molten_demon_will> * 10, 0.6, 41, <bloodmagic:monster_soul:1>.withTag({souls: 3.0}));
LiquidInteraction.addInteraction(<liquid:hydrofluoric_acid> * 100, 0.5, <liquid:molten_demon_will> * 10, 0.7, 40, <bloodmagic:monster_soul:1>.withTag({souls: 3.1}));
LiquidInteraction.addInteraction(<liquid:hydrofluoric_acid> * 100, 0.5, <liquid:molten_demon_will> * 10, 0.7, 39, <bloodmagic:monster_soul:1>.withTag({souls: 3.2}));
LiquidInteraction.addInteraction(<liquid:hydrofluoric_acid> * 100, 0.5, <liquid:molten_demon_will> * 10, 0.7, 38, <bloodmagic:monster_soul:1>.withTag({souls: 3.3}));
LiquidInteraction.addInteraction(<liquid:hydrofluoric_acid> * 100, 0.5, <liquid:molten_demon_will> * 10, 0.7, 37, <bloodmagic:monster_soul:1>.withTag({souls: 3.4}));
LiquidInteraction.addInteraction(<liquid:hydrofluoric_acid> * 100, 0.5, <liquid:molten_demon_will> * 10, 0.7, 36, <bloodmagic:monster_soul:1>.withTag({souls: 3.5}));
LiquidInteraction.addInteraction(<liquid:hydrofluoric_acid> * 100, 0.5, <liquid:molten_demon_will> * 10, 0.8, 34, <bloodmagic:monster_soul:1>.withTag({souls: 3.6}));
LiquidInteraction.addInteraction(<liquid:hydrofluoric_acid> * 100, 0.5, <liquid:molten_demon_will> * 10, 0.8, 33, <bloodmagic:monster_soul:1>.withTag({souls: 3.7}));
LiquidInteraction.addInteraction(<liquid:hydrofluoric_acid> * 100, 0.5, <liquid:molten_demon_will> * 10, 0.8, 32, <bloodmagic:monster_soul:1>.withTag({souls: 3.8}));
LiquidInteraction.addInteraction(<liquid:hydrofluoric_acid> * 100, 0.5, <liquid:molten_demon_will> * 10, 0.8, 31, <bloodmagic:monster_soul:1>.withTag({souls: 3.9}));
LiquidInteraction.addInteraction(<liquid:hydrofluoric_acid> * 100, 0.5, <liquid:molten_demon_will> * 10, 0.9, 30, <bloodmagic:monster_soul:1>.withTag({souls: 4.0}));
LiquidInteraction.addInteraction(<liquid:hydrofluoric_acid> * 100, 0.5, <liquid:molten_demon_will> * 10, 0.9, 28, <bloodmagic:monster_soul:1>.withTag({souls: 4.1}));
LiquidInteraction.addInteraction(<liquid:hydrofluoric_acid> * 100, 0.5, <liquid:molten_demon_will> * 10, 0.9, 26, <bloodmagic:monster_soul:1>.withTag({souls: 4.2}));
LiquidInteraction.addInteraction(<liquid:hydrofluoric_acid> * 100, 0.5, <liquid:molten_demon_will> * 10, 0.9, 24, <bloodmagic:monster_soul:1>.withTag({souls: 4.3}));
LiquidInteraction.addInteraction(<liquid:hydrofluoric_acid> * 100, 0.5, <liquid:molten_demon_will> * 10, 0.9, 22, <bloodmagic:monster_soul:1>.withTag({souls: 4.4}));
LiquidInteraction.addInteraction(<liquid:hydrofluoric_acid> * 100, 0.5, <liquid:molten_demon_will> * 10, 0.9, 20, <bloodmagic:monster_soul:1>.withTag({souls: 4.5}));
//Destructive Demonic Will
LiquidInteraction.addInteraction(<liquid:napalm> * 100, 0.5, <liquid:molten_demon_will> * 10, 0.5, 53, <bloodmagic:monster_soul:2>.withTag({souls: 2.0}));
LiquidInteraction.addInteraction(<liquid:napalm> * 100, 0.5, <liquid:molten_demon_will> * 10, 0.5, 52, <bloodmagic:monster_soul:2>.withTag({souls: 2.1}));
LiquidInteraction.addInteraction(<liquid:napalm> * 100, 0.5, <liquid:molten_demon_will> * 10, 0.5, 51, <bloodmagic:monster_soul:2>.withTag({souls: 2.2}));
LiquidInteraction.addInteraction(<liquid:napalm> * 100, 0.5, <liquid:molten_demon_will> * 10, 0.5, 50, <bloodmagic:monster_soul:2>.withTag({souls: 2.3}));
LiquidInteraction.addInteraction(<liquid:napalm> * 100, 0.5, <liquid:molten_demon_will> * 10, 0.5, 49, <bloodmagic:monster_soul:2>.withTag({souls: 2.4}));
LiquidInteraction.addInteraction(<liquid:napalm> * 100, 0.5, <liquid:molten_demon_will> * 10, 0.5, 47, <bloodmagic:monster_soul:2>.withTag({souls: 2.5}));
LiquidInteraction.addInteraction(<liquid:napalm> * 100, 0.5, <liquid:molten_demon_will> * 10, 0.6, 46, <bloodmagic:monster_soul:2>.withTag({souls: 2.6}));
LiquidInteraction.addInteraction(<liquid:napalm> * 100, 0.5, <liquid:molten_demon_will> * 10, 0.6, 45, <bloodmagic:monster_soul:2>.withTag({souls: 2.7}));
LiquidInteraction.addInteraction(<liquid:napalm> * 100, 0.5, <liquid:molten_demon_will> * 10, 0.6, 44, <bloodmagic:monster_soul:2>.withTag({souls: 2.8}));
LiquidInteraction.addInteraction(<liquid:napalm> * 100, 0.5, <liquid:molten_demon_will> * 10, 0.6, 43, <bloodmagic:monster_soul:2>.withTag({souls: 2.9}));
LiquidInteraction.addInteraction(<liquid:napalm> * 100, 0.5, <liquid:molten_demon_will> * 10, 0.6, 41, <bloodmagic:monster_soul:2>.withTag({souls: 3.0}));
LiquidInteraction.addInteraction(<liquid:napalm> * 100, 0.5, <liquid:molten_demon_will> * 10, 0.7, 40, <bloodmagic:monster_soul:2>.withTag({souls: 3.1}));
LiquidInteraction.addInteraction(<liquid:napalm> * 100, 0.5, <liquid:molten_demon_will> * 10, 0.7, 39, <bloodmagic:monster_soul:2>.withTag({souls: 3.2}));
LiquidInteraction.addInteraction(<liquid:napalm> * 100, 0.5, <liquid:molten_demon_will> * 10, 0.7, 38, <bloodmagic:monster_soul:2>.withTag({souls: 3.3}));
LiquidInteraction.addInteraction(<liquid:napalm> * 100, 0.5, <liquid:molten_demon_will> * 10, 0.7, 37, <bloodmagic:monster_soul:2>.withTag({souls: 3.4}));
LiquidInteraction.addInteraction(<liquid:napalm> * 100, 0.5, <liquid:molten_demon_will> * 10, 0.7, 36, <bloodmagic:monster_soul:2>.withTag({souls: 3.5}));
LiquidInteraction.addInteraction(<liquid:napalm> * 100, 0.5, <liquid:molten_demon_will> * 10, 0.8, 34, <bloodmagic:monster_soul:2>.withTag({souls: 3.6}));
LiquidInteraction.addInteraction(<liquid:napalm> * 100, 0.5, <liquid:molten_demon_will> * 10, 0.8, 33, <bloodmagic:monster_soul:2>.withTag({souls: 3.7}));
LiquidInteraction.addInteraction(<liquid:napalm> * 100, 0.5, <liquid:molten_demon_will> * 10, 0.8, 32, <bloodmagic:monster_soul:2>.withTag({souls: 3.8}));
LiquidInteraction.addInteraction(<liquid:napalm> * 100, 0.5, <liquid:molten_demon_will> * 10, 0.8, 31, <bloodmagic:monster_soul:2>.withTag({souls: 3.9}));
LiquidInteraction.addInteraction(<liquid:napalm> * 100, 0.5, <liquid:molten_demon_will> * 10, 0.9, 30, <bloodmagic:monster_soul:2>.withTag({souls: 4.0}));
LiquidInteraction.addInteraction(<liquid:napalm> * 100, 0.5, <liquid:molten_demon_will> * 10, 0.9, 28, <bloodmagic:monster_soul:2>.withTag({souls: 4.1}));
LiquidInteraction.addInteraction(<liquid:napalm> * 100, 0.5, <liquid:molten_demon_will> * 10, 0.9, 26, <bloodmagic:monster_soul:2>.withTag({souls: 4.2}));
LiquidInteraction.addInteraction(<liquid:napalm> * 100, 0.5, <liquid:molten_demon_will> * 10, 0.9, 24, <bloodmagic:monster_soul:2>.withTag({souls: 4.3}));
LiquidInteraction.addInteraction(<liquid:napalm> * 100, 0.5, <liquid:molten_demon_will> * 10, 0.9, 22, <bloodmagic:monster_soul:2>.withTag({souls: 4.4}));
LiquidInteraction.addInteraction(<liquid:napalm> * 100, 0.5, <liquid:molten_demon_will> * 10, 0.9, 20, <bloodmagic:monster_soul:2>.withTag({souls: 4.5}));
//Vengeful Demonic Will
LiquidInteraction.addInteraction(<liquid:pigiron> * 144, 0.5, <liquid:molten_demon_will> * 10, 0.5, 53, <bloodmagic:monster_soul:3>.withTag({souls: 2.0}));
LiquidInteraction.addInteraction(<liquid:pigiron> * 144, 0.5, <liquid:molten_demon_will> * 10, 0.5, 52, <bloodmagic:monster_soul:3>.withTag({souls: 2.1}));
LiquidInteraction.addInteraction(<liquid:pigiron> * 144, 0.5, <liquid:molten_demon_will> * 10, 0.5, 51, <bloodmagic:monster_soul:3>.withTag({souls: 2.2}));
LiquidInteraction.addInteraction(<liquid:pigiron> * 144, 0.5, <liquid:molten_demon_will> * 10, 0.5, 50, <bloodmagic:monster_soul:3>.withTag({souls: 2.3}));
LiquidInteraction.addInteraction(<liquid:pigiron> * 144, 0.5, <liquid:molten_demon_will> * 10, 0.5, 49, <bloodmagic:monster_soul:3>.withTag({souls: 2.4}));
LiquidInteraction.addInteraction(<liquid:pigiron> * 144, 0.5, <liquid:molten_demon_will> * 10, 0.5, 47, <bloodmagic:monster_soul:3>.withTag({souls: 2.5}));
LiquidInteraction.addInteraction(<liquid:pigiron> * 144, 0.5, <liquid:molten_demon_will> * 10, 0.6, 46, <bloodmagic:monster_soul:3>.withTag({souls: 2.6}));
LiquidInteraction.addInteraction(<liquid:pigiron> * 144, 0.5, <liquid:molten_demon_will> * 10, 0.6, 45, <bloodmagic:monster_soul:3>.withTag({souls: 2.7}));
LiquidInteraction.addInteraction(<liquid:pigiron> * 144, 0.5, <liquid:molten_demon_will> * 10, 0.6, 44, <bloodmagic:monster_soul:3>.withTag({souls: 2.8}));
LiquidInteraction.addInteraction(<liquid:pigiron> * 144, 0.5, <liquid:molten_demon_will> * 10, 0.6, 43, <bloodmagic:monster_soul:3>.withTag({souls: 2.9}));
LiquidInteraction.addInteraction(<liquid:pigiron> * 144, 0.5, <liquid:molten_demon_will> * 10, 0.6, 41, <bloodmagic:monster_soul:3>.withTag({souls: 3.0}));
LiquidInteraction.addInteraction(<liquid:pigiron> * 144, 0.5, <liquid:molten_demon_will> * 10, 0.7, 40, <bloodmagic:monster_soul:3>.withTag({souls: 3.1}));
LiquidInteraction.addInteraction(<liquid:pigiron> * 144, 0.5, <liquid:molten_demon_will> * 10, 0.7, 39, <bloodmagic:monster_soul:3>.withTag({souls: 3.2}));
LiquidInteraction.addInteraction(<liquid:pigiron> * 144, 0.5, <liquid:molten_demon_will> * 10, 0.7, 38, <bloodmagic:monster_soul:3>.withTag({souls: 3.3}));
LiquidInteraction.addInteraction(<liquid:pigiron> * 144, 0.5, <liquid:molten_demon_will> * 10, 0.7, 37, <bloodmagic:monster_soul:3>.withTag({souls: 3.4}));
LiquidInteraction.addInteraction(<liquid:pigiron> * 144, 0.5, <liquid:molten_demon_will> * 10, 0.7, 36, <bloodmagic:monster_soul:3>.withTag({souls: 3.5}));
LiquidInteraction.addInteraction(<liquid:pigiron> * 144, 0.5, <liquid:molten_demon_will> * 10, 0.8, 34, <bloodmagic:monster_soul:3>.withTag({souls: 3.6}));
LiquidInteraction.addInteraction(<liquid:pigiron> * 144, 0.5, <liquid:molten_demon_will> * 10, 0.8, 33, <bloodmagic:monster_soul:3>.withTag({souls: 3.7}));
LiquidInteraction.addInteraction(<liquid:pigiron> * 144, 0.5, <liquid:molten_demon_will> * 10, 0.8, 32, <bloodmagic:monster_soul:3>.withTag({souls: 3.8}));
LiquidInteraction.addInteraction(<liquid:pigiron> * 144, 0.5, <liquid:molten_demon_will> * 10, 0.8, 31, <bloodmagic:monster_soul:3>.withTag({souls: 3.9}));
LiquidInteraction.addInteraction(<liquid:pigiron> * 144, 0.5, <liquid:molten_demon_will> * 10, 0.9, 30, <bloodmagic:monster_soul:3>.withTag({souls: 4.0}));
LiquidInteraction.addInteraction(<liquid:pigiron> * 144, 0.5, <liquid:molten_demon_will> * 10, 0.9, 28, <bloodmagic:monster_soul:3>.withTag({souls: 4.1}));
LiquidInteraction.addInteraction(<liquid:pigiron> * 144, 0.5, <liquid:molten_demon_will> * 10, 0.9, 26, <bloodmagic:monster_soul:3>.withTag({souls: 4.2}));
LiquidInteraction.addInteraction(<liquid:pigiron> * 144, 0.5, <liquid:molten_demon_will> * 10, 0.9, 24, <bloodmagic:monster_soul:3>.withTag({souls: 4.3}));
LiquidInteraction.addInteraction(<liquid:pigiron> * 144, 0.5, <liquid:molten_demon_will> * 10, 0.9, 22, <bloodmagic:monster_soul:3>.withTag({souls: 4.4}));
LiquidInteraction.addInteraction(<liquid:pigiron> * 144, 0.5, <liquid:molten_demon_will> * 10, 0.9, 20, <bloodmagic:monster_soul:3>.withTag({souls: 4.5}));
//Steadfast Demonic Will
LiquidInteraction.addInteraction(<liquid:liquidfusionfuel> * 10, 0.5, <liquid:molten_demon_will> * 10, 0.5, 53, <bloodmagic:monster_soul:4>.withTag({souls: 2.0}));
LiquidInteraction.addInteraction(<liquid:liquidfusionfuel> * 10, 0.5, <liquid:molten_demon_will> * 10, 0.5, 52, <bloodmagic:monster_soul:4>.withTag({souls: 2.1}));
LiquidInteraction.addInteraction(<liquid:liquidfusionfuel> * 10, 0.5, <liquid:molten_demon_will> * 10, 0.5, 51, <bloodmagic:monster_soul:4>.withTag({souls: 2.2}));
LiquidInteraction.addInteraction(<liquid:liquidfusionfuel> * 10, 0.5, <liquid:molten_demon_will> * 10, 0.5, 50, <bloodmagic:monster_soul:4>.withTag({souls: 2.3}));
LiquidInteraction.addInteraction(<liquid:liquidfusionfuel> * 10, 0.5, <liquid:molten_demon_will> * 10, 0.5, 49, <bloodmagic:monster_soul:4>.withTag({souls: 2.4}));
LiquidInteraction.addInteraction(<liquid:liquidfusionfuel> * 10, 0.5, <liquid:molten_demon_will> * 10, 0.5, 47, <bloodmagic:monster_soul:4>.withTag({souls: 2.5}));
LiquidInteraction.addInteraction(<liquid:liquidfusionfuel> * 10, 0.5, <liquid:molten_demon_will> * 10, 0.6, 46, <bloodmagic:monster_soul:4>.withTag({souls: 2.6}));
LiquidInteraction.addInteraction(<liquid:liquidfusionfuel> * 10, 0.5, <liquid:molten_demon_will> * 10, 0.6, 45, <bloodmagic:monster_soul:4>.withTag({souls: 2.7}));
LiquidInteraction.addInteraction(<liquid:liquidfusionfuel> * 10, 0.5, <liquid:molten_demon_will> * 10, 0.6, 44, <bloodmagic:monster_soul:4>.withTag({souls: 2.8}));
LiquidInteraction.addInteraction(<liquid:liquidfusionfuel> * 10, 0.5, <liquid:molten_demon_will> * 10, 0.6, 43, <bloodmagic:monster_soul:4>.withTag({souls: 2.9}));
LiquidInteraction.addInteraction(<liquid:liquidfusionfuel> * 10, 0.5, <liquid:molten_demon_will> * 10, 0.6, 41, <bloodmagic:monster_soul:4>.withTag({souls: 3.0}));
LiquidInteraction.addInteraction(<liquid:liquidfusionfuel> * 10, 0.5, <liquid:molten_demon_will> * 10, 0.7, 40, <bloodmagic:monster_soul:4>.withTag({souls: 3.1}));
LiquidInteraction.addInteraction(<liquid:liquidfusionfuel> * 10, 0.5, <liquid:molten_demon_will> * 10, 0.7, 39, <bloodmagic:monster_soul:4>.withTag({souls: 3.2}));
LiquidInteraction.addInteraction(<liquid:liquidfusionfuel> * 10, 0.5, <liquid:molten_demon_will> * 10, 0.7, 38, <bloodmagic:monster_soul:4>.withTag({souls: 3.3}));
LiquidInteraction.addInteraction(<liquid:liquidfusionfuel> * 10, 0.5, <liquid:molten_demon_will> * 10, 0.7, 37, <bloodmagic:monster_soul:4>.withTag({souls: 3.4}));
LiquidInteraction.addInteraction(<liquid:liquidfusionfuel> * 10, 0.5, <liquid:molten_demon_will> * 10, 0.7, 36, <bloodmagic:monster_soul:4>.withTag({souls: 3.5}));
LiquidInteraction.addInteraction(<liquid:liquidfusionfuel> * 10, 0.5, <liquid:molten_demon_will> * 10, 0.8, 34, <bloodmagic:monster_soul:4>.withTag({souls: 3.6}));
LiquidInteraction.addInteraction(<liquid:liquidfusionfuel> * 10, 0.5, <liquid:molten_demon_will> * 10, 0.8, 33, <bloodmagic:monster_soul:4>.withTag({souls: 3.7}));
LiquidInteraction.addInteraction(<liquid:liquidfusionfuel> * 10, 0.5, <liquid:molten_demon_will> * 10, 0.8, 32, <bloodmagic:monster_soul:4>.withTag({souls: 3.8}));
LiquidInteraction.addInteraction(<liquid:liquidfusionfuel> * 10, 0.5, <liquid:molten_demon_will> * 10, 0.8, 31, <bloodmagic:monster_soul:4>.withTag({souls: 3.9}));
LiquidInteraction.addInteraction(<liquid:liquidfusionfuel> * 10, 0.5, <liquid:molten_demon_will> * 10, 0.9, 30, <bloodmagic:monster_soul:4>.withTag({souls: 4.0}));
LiquidInteraction.addInteraction(<liquid:liquidfusionfuel> * 10, 0.5, <liquid:molten_demon_will> * 10, 0.9, 28, <bloodmagic:monster_soul:4>.withTag({souls: 4.1}));
LiquidInteraction.addInteraction(<liquid:liquidfusionfuel> * 10, 0.5, <liquid:molten_demon_will> * 10, 0.9, 26, <bloodmagic:monster_soul:4>.withTag({souls: 4.2}));
LiquidInteraction.addInteraction(<liquid:liquidfusionfuel> * 10, 0.5, <liquid:molten_demon_will> * 10, 0.9, 24, <bloodmagic:monster_soul:4>.withTag({souls: 4.3}));
LiquidInteraction.addInteraction(<liquid:liquidfusionfuel> * 10, 0.5, <liquid:molten_demon_will> * 10, 0.9, 22, <bloodmagic:monster_soul:4>.withTag({souls: 4.4}));
LiquidInteraction.addInteraction(<liquid:liquidfusionfuel> * 10, 0.5, <liquid:molten_demon_will> * 10, 0.9, 20, <bloodmagic:monster_soul:4>.withTag({souls: 4.5}));

Altar.removeAltarRecipe("astralsorcery:shaped/internal/altar/chalice");

Infusion.registerRecipe("chalice", "", 
<astralsorcery:blockchalice>, 5, 
[<aspect:praecantatio>*150, <aspect:potentia>*100, <aspect:vinculum>*100, <aspect:vacuos>*50], 
<arcanearchives:radiant_tank>, 
[<astralsorcery:blockmarble:6>,<rockhounding_chemistry:alloy_parts:51>, <astralsorcery:blockmarble:6>, <actuallyadditions:item_crystal_empowered:1>,
<astralsorcery:blockmarble:6>,<rockhounding_chemistry:alloy_parts:51>, <astralsorcery:blockmarble:6>, <actuallyadditions:item_crystal_empowered:1>]);

//Stable Celestial Crystal
Lightwell.addLiquefaction(<contenttweaker:stable_celestial_crystal>, <liquid:astralsorcery.liquidstarlight>, 2, 0.6, 0x6603fc);

//Utils.getCrystalORIngredient(boolean hasToBeCelestial, boolean hasToBeAttuned);
//val attunedCrystal = Utils.getCrystalORIngredient(false, true);


/*work on this later
//Early Collectors
Altar.addAttunementAltarRecipe("internal/altar/collectorcrystal", <astralsorcery:blockcollectorcrystal>, 1500, 200, [

			<astralsorcery:itemcraftingcomponent:2>, <bloodmagic:slate:1>, <astralsorcery:itemcraftingcomponent:2>,

			<botania:manaresource:23>, <astralsorcery:itemtunedrockcrystal>.marked("crystal"), <botania:manaresource:23>,

			<astralsorcery:itemcraftingcomponent:2>, <bloodmagic:slate:1>, <astralsorcery:itemcraftingcomponent:2>,

			<arcanearchives:shaped_quartz>, <arcanearchives:shaped_quartz>, <arcanearchives:shaped_quartz>, <arcanearchives:shaped_quartz>]
);*/


/*events.onEntityJoinWorld(function(event as crafttweaker.event.EntityJoinWorldEvent){
    if(event.entity.definition.id == "minecraft:item"){
        val will = event.entity.getPickedResult();
        if(will.matches(<bloodmagic:monster_soul:*>)){
            if(!isNull(will.tag.MBM_will_info)){
                val willTag = will.tag.MBM_will_info;
                if(!isNull(willTag.min) && !isNull(willTag.max)){
                    will.withTag({
                        souls: event.world.getRandom().nextDouble(willTag.min, willTag.max)
                    });
                }
            }
        }
    }
});*/

##########################################################################################
print("==================== end of astral_sorcery.zs ====================");
