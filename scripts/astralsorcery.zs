import crafttweaker.item.IItemStack;
import mods.tconstruct.Casting;
import mods.tconstruct.Melting;
print("==================== loading Astral Sorcery ====================");
##########################################################################################

val itemstoRemove =
[
	<minecraft:beacon>,
]
 as IItemStack[];

for item in itemstoRemove {
	recipes.remove(item);
}


//<astralsorcery:blockinfusedwood>.addTooltip(format.aqua("Drop any log into liquid Starlight to create"));
<astralsorcery:itemcelestialcrystal>.addTooltip(format.aqua("Grows from a Celestal Crystal Cluster"));

//Wand with no starlight
recipes.addShaped(<astralsorcery:itemwand>, [[null, <astralsorcery:itemcraftingcomponent>, <arcanearchives:shaped_quartz>],[null, <ore:stoneMarble>, <astralsorcery:itemcraftingcomponent>], [<ore:stoneMarble>, null, null]]);


//mods.astralsorcery.Lightwell.addLiquefaction(IItemStack input, ILiquidStack output, float productionMultiplier, float shatterMultiplier, int colorhex);


mods.astralsorcery.LightTransmutation.removeTransmutation(<astralsorcery:blockcustomore:1>, true);
mods.astralsorcery.LightTransmutation.addTransmutation(<contenttweaker:sub_block_holder_0:7>, <astralsorcery:blockcustomore:1>, 9);

//1000 max starlight for first tier altar
mods.astralsorcery.Altar.addDiscoveryAltarRecipe("internal/altar/upgrade_tier2", <astralsorcery:blockaltar:1>, 950, 200, [

			<arcanearchives:containment_field>, <astralsorcery:blockblackmarble>, <arcanearchives:containment_field>,

			<astralsorcery:blockmarble:2>, <contenttweaker:activatedaspectusdawnstone>, <astralsorcery:blockmarble:2>,

			<astralsorcery:blockmarble:4>, <botania:storage>, <astralsorcery:blockmarble:4>]);

//2000 max starlight 2nd tier
mods.astralsorcery.Altar.addAttunementAltarRecipe("internal/altar/illuminator", <astralsorcery:blockworldilluminator>, 1500, 300, [

			<astralsorcery:itemcraftingcomponent:2>, <chisel:energizedvoidstone:2>, <astralsorcery:itemcraftingcomponent:2>,
			<chisel:energizedvoidstone:2>, <thaumictinkerer:energetic_nitor>, <chisel:energizedvoidstone:2>,
			<astralsorcery:itemcraftingcomponent:2>, <chisel:energizedvoidstone:2>, <astralsorcery:itemcraftingcomponent:2>,
			<astralsorcery:itemusabledust>, <astralsorcery:itemusabledust>, <astralsorcery:itemusabledust>, <astralsorcery:itemusabledust>]);


mods.astralsorcery.Altar.addAttunementAltarRecipe("internal/altar/upgrade_tier3", <astralsorcery:blockaltar:2>, 1900, 400, [

			<astralsorcery:itemcraftingcomponent>, null, <astralsorcery:itemcraftingcomponent>,
			<astralsorcery:blockmarble:2>, <astralsorcery:itemrockcrystalsimple>, <astralsorcery:blockmarble:2>,
			<moreplates:energetic_silver_plate>, <contenttweaker:starmetal_block>, <moreplates:energetic_silver_plate>,
			<embers:focal_lens>, <embers:focal_lens>, <embers:focal_lens>, <embers:focal_lens>]);

mods.astralsorcery.Altar.addConstellationAltarRecipe("internal/altar/upgrade_tier4", <astralsorcery:blockaltar:3>, 3800, 500, [

			<actuallyadditions:item_crystal_empowered:5>, <astralsorcery:blockblackmarble>, <actuallyadditions:item_crystal_empowered:5>,
			<astralsorcery:blockblackmarble>, <astralsorcery:itemcelestialcrystal>, <astralsorcery:blockblackmarble>,
			<actuallyadditions:item_crystal_empowered:5>, <astralsorcery:blockblackmarble>, <actuallyadditions:item_crystal_empowered:5>,
			<actuallyadditions:item_crystal_empowered:5>, <actuallyadditions:item_crystal_empowered:5>, <actuallyadditions:item_crystal_empowered:5>, <actuallyadditions:item_crystal_empowered:5>,
			<astralsorcery:itemcraftingcomponent:4>, <astralsorcery:itemcraftingcomponent:4>,
			<cyclicmagic:crystallized_obsidian>, <cyclicmagic:crystallized_obsidian>,
			<cyclicmagic:crystallized_obsidian>, <cyclicmagic:crystallized_obsidian>,
			<astralsorcery:itemcraftingcomponent:4>, <astralsorcery:itemcraftingcomponent:4>]);

//mods.astralsorcery.Altar.addTraitAltarRecipe(string recipeLocation, IItemStack output, int starlight, int craftTickTime, IIngredient[] inputs, @optional String iRequiredConstellationFocusName);
mods.astralsorcery.Altar.addTraitAltarRecipe("mm:shaped/internal/altar/beacon", <minecraft:beacon>, 5000, 400, [

	<botania:manaresource:2>, <botania:manaresource:2>, <botania:manaresource:2>,
	<botania:manaresource:2>, <deepmoblearning:pristine_matter_wither>, <botania:manaresource:2>, 
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
mods.astralsorcery.Altar.addDiscoveryAltarRecipe("internal/altar/illuminationpowder", <astralsorcery:itemusabledust>*16, 250, 200, [

			null, <arcanearchives:radiant_dust>, null,

	<arcanearchives:radiant_dust>, <jaopca:item_dustaquamarine>, <arcanearchives:radiant_dust>,

			null, <arcanearchives:radiant_dust>, null]);

			
/*
mods.astralsorcery.Altar.addAttunementAltarRecipe("multiblockmadness:shaped/internal/altar/runealtar", <botania:runealtar>, 500, 300, [

			<arcanearchives:quartz_sliver>, <arcanearchives:quartz_sliver>, <arcanearchives:quartz_sliver>,

			<botania:livingrock>, <botania:livingrock>, <botania:livingrock>,

			<botania:livingrock>, <astralsorcery:itemshiftingstar>, <botania:livingrock>,

			<botania:manaresource:23>, <botania:manaresource:23>, <bloodmagic:blood_rune>, <bloodmagic:blood_rune>]);
*/

//Starmetal Block recipes
recipes.addShapeless(<astralsorcery:itemcraftingcomponent:1> * 9, [<contenttweaker:starmetal_block>]);
recipes.addShaped(<contenttweaker:starmetal_block>, [[<astralsorcery:itemcraftingcomponent:1>, <astralsorcery:itemcraftingcomponent:1>, <astralsorcery:itemcraftingcomponent:1>],[<astralsorcery:itemcraftingcomponent:1>, <astralsorcery:itemcraftingcomponent:1>, <astralsorcery:itemcraftingcomponent:1>], [<astralsorcery:itemcraftingcomponent:1>, <astralsorcery:itemcraftingcomponent:1>, <astralsorcery:itemcraftingcomponent:1>]]);
Melting.addRecipe(<liquid:starmetal> * 1296, <contenttweaker:starmetal_block>);
Casting.addBasinRecipe(<contenttweaker:starmetal_block>, null, <liquid:starmetal>, 1296);

<astralsorcery:itemperkseal>.addTooltip(format.lightPurple("Used to activate the Twilight Forest Portal"));

//Illumination Powder
mods.astralsorcery.StarlightInfusion.addInfusion(<arcanearchives:radiant_dust>, <astralsorcery:itemusabledust>, false, 0.1, 200);


##########################################################################################
print("==================== end of Astral Sorcery ====================");
