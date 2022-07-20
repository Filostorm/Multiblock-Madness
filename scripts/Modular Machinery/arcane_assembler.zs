import mods.modularmachinery.RecipePrimer;
import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;
import crafttweaker.oredict.IOreDictEntry;
import crafttweaker.data.IData;
import mods.immersiveengineering.Mixer;
import mods.nuclearcraft.Enricher;
import crafttweaker.liquid.ILiquidStack;


// Arcane Assembler Upgrade Tooltips //
<thaumcraft:metal_alchemical_advanced>.addTooltip(format.darkAqua("Arcane Assembler Modifier: -5% Recipe Time"));
<thaumcraft:matrix_cost>.addTooltip(format.darkAqua("Arcane Assembler Modifier: -20% Fluid Use"));
<thaumcraft:matrix_speed>.addTooltip(format.darkAqua("Arcane Assembler Modifier: -20% Recipe Time"));
<thaumadditions:mithminite_block>.addTooltip(format.darkAqua("Arcane Assembler Modifier: -30% Fluid Use & Recipe Time"));

// Warded Block Breaking Tooltip //
val wardedBlocks = [
	<thaumicaugmentation:material:1>,
	<thaumicaugmentation:arcane_trapdoor_wood>,
	<thaumicaugmentation:arcane_trapdoor_metal>,
	<thaumicaugmentation:arcane_trapdoor_silverwood>,
	<thaumicaugmentation:warded_button_silverwood>,
	<thaumicaugmentation:warded_button_greatwood>,
	<thaumicaugmentation:warded_button_arcane_stone>,
	<thaumicaugmentation:warded_pressure_plate_greatwood>,
	<thaumicaugmentation:warded_pressure_plate_silverwood>,
	<thaumicaugmentation:warded_pressure_plate_arcane_stone>,
	<thaumicaugmentation:arcane_door>,
	<thaumicaugmentation:arcane_door:1>,
	<thaumicaugmentation:arcane_door:2>,
	<thaumicaugmentation:warded_chest>
] as IItemStack[];

for block in wardedBlocks {
	block.addTooltip(format.gold("Shift-Click with a Caster's Gauntlet to break"));
}

//Blueprint Recipe//
recipes.addShaped("blueprint_arcaneassembler", <modularmachinery:itemblueprint>.withTag({dynamicmachine: "modularmachinery:arcane-assembler"}), 
	[[<ore:paperBlack>, <thaumcraft:metal_alchemical>, <ore:paperBlack>], 
	[<thaumicenergistics:essentia_component_4k>, <ore:paperBlack>, <thaumicenergistics:essentia_component_4k>], 
	[<ore:paperBlack>, <thaumcraft:metal_alchemical>, <ore:paperBlack>]]
);

//Multiplies Crystal Fluid amount used in all recipes
static visCostMultiplier as int = 10;

//If this should be replaced and tweaked for each/certain recipes, you can just search it in the file
//20t will be added for every 25 Vis a Recipe is set to cost, minus the first 25
static baseDuration as int = 60;

function MMArcaneAssembler (
	recipeName as string, 		//Identifier for Recipe Builder
	output as IItemStack,
	itemInputs as IItemStack[],
	oreInputs as string[], 		//Input like: "ingotIron-2", where the number is the amount, do not omit it because it *will* error if you do
	visCost as int
) {
	
	var visCostTimeBonus as int = 0;
	if(visCost >= 50){
		visCostTimeBonus = (((visCost / 25) - 1) * 20);
	}

	var arcaneAssembler = mods.modularmachinery.RecipeBuilder.newBuilder(
		recipeName, 
		"arcane-assembler", 
		(visCostTimeBonus + baseDuration), 
		0
	);
	
	arcaneAssembler.addFluidInput(<liquid:crystal_water> * (visCost*visCostMultiplier));
	for item in itemInputs {
		arcaneAssembler.addItemInput(item);
	}
	for entry in oreInputs {
		arcaneAssembler.addItemInput(oreDict.get(entry.split("-")[0]), entry.split("-")[1] as int);
	}
	arcaneAssembler.addItemOutput(output);
	
	arcaneAssembler.build();
}

function getVisCrystal(
	aspectName as string //name of Aspect
) as IItemStack {
	return <thaumcraft:crystal_essence>.withTag({Aspects: [{amount: 1, key: aspectName as IData}]});
}

//Vars for commonly used items
var impetusJewel = <thaumicaugmentation:material:5>;
var quicksilver = <thaumcraft:quicksilver>;
var amber = <thaumcraft:amber>;
var stoneArcane = <thaumcraft:stone_arcane>;
var arcaneBrick = <thaumcraft:stone_arcane_brick>;
var stoneEldritch = <thaumcraft:stone_eldritch_tile>;
var stoneAncient = <thaumcraft:stone_ancient>;
var plankGreatwood = <thaumcraft:plank_greatwood>;
var plankSilverwood = <thaumcraft:plank_silverwood>;
var simpleMechanism = <thaumcraft:mechanism_simple>;
var complexMechanism = <thaumcraft:mechanism_complex>;
var wardingSigil = <thaumicaugmentation:material:1>;
var essentiaFilter = <thaumcraft:filter>;
var rareEarths = <thaumcraft:nugget:10>;
var primordialPearl = <thaumcraft:primordial_pearl>;
var primordialMote = <contenttweaker:primordial_mote>;
var alchConstruct = <thaumcraft:metal_alchemical>;
var visResonator = <thaumcraft:vis_resonator>;
var essentiaTube = <thaumcraft:tube>;
var zombieBrain = <thaumcraft:brain>;

/*
TODO

*/
// Water(n) -> Crystal Water(n/2)
val waterMap as int[ILiquidStack] = {
    <liquid:water>:1000,
    <liquid:distwater>:2000,
    <liquid:virgin_water>:3000,
    <liquid:hot_spring_water>:5000,
} as int[ILiquidStack];

for water, n in waterMap {
Mixer.addRecipe(<liquid:crystal_water>*(n/2), water*n, [<thaumcraft:salis_mundus>], 2048);
Enricher.addRecipe(<thaumcraft:salis_mundus>, water*n, <liquid:crystal_water>*(n/2));
}


##Split the Pearl
MMArcaneAssembler("primordial_mote", primordialMote*8, [primordialPearl], [], 20);


//Thaumcraft (mostly)
//other things are sprinkled if category is relevant


##Enchanted Fabric
MMArcaneAssembler("thaum_fabric", <thaumcraft:fabric>, [], ["blockWool-1", "string-4"], 5);


##Potion Sprayer
MMArcaneAssembler("thaum_potion_sprayer", <thaumcraft:potion_sprayer>, [<minecraft:dispenser>, <minecraft:brewing_stand>, alchConstruct], ["plateBrass-2", "plateIron-4"], 75);

##Simple Arcane Mechanism
MMArcaneAssembler("thaum_simple_mechanism", simpleMechanism, [], ["plateBrass-2", "plateIron-2", "stickWood-1"], 10);

##Complex Arcane Mechanism
MMArcaneAssembler("thaum_complex_mechanism", complexMechanism, [simpleMechanism*2, <minecraft:piston>], ["plateThaumium-2"], 50);

##Vis Resonator
MMArcaneAssembler("thaum_vis_resonator", visResonator, [getVisCrystal("aqua")], ["gemQuartz-1", "plateIron-1"], 50);

##Recharge Pedestal
MMArcaneAssembler("thaum_recharge_pedestal", <thaumcraft:recharge_pedestal>, [visResonator], ["gemDiamond-2", "ingotGold-1", "stone-3"], 100);

##Workbench Charger
MMArcaneAssembler("thaum_workbench_charger", <thaumcraft:arcane_workbench_charger>, [visResonator, plankGreatwood*2], ["ingotIron-2"], 200);

##Focal Manipulator
MMArcaneAssembler("thaum_focal_manipulator", <thaumcraft:wand_workbench>, [<thaumcraft:slab_arcane_stone>, stoneArcane*2, visResonator, <thaumcraft:table_stone>], ["plateIron-2", "ingotGold-2"], 100);

##Goggles of Revealing
MMArcaneAssembler("thaum_revealing_goggles", <thaumcraft:goggles>, [<minecraft:leather>*4, <thaumcraft:thaumometer>*2], ["ingotBrass-2"], 50);

##Blank Seal
MMArcaneAssembler("thaum_blank_control_seal", <thaumcraft:seal>*3, [<minecraft:clay_ball>, <thaumcraft:tallow>], ["dyeRed-1", "nitor-1"], 20);

##Vision Module
MMArcaneAssembler("thaum_vision_module", <thaumcraft:module:0>, [<minecraft:glass_bottle>*2, <minecraft:fermented_spider_eye>*2, simpleMechanism], ["plateBrass-2"], 50);

##Aggression Module
MMArcaneAssembler("thaum_aggression_module", <thaumcraft:module:1>, [<minecraft:blaze_powder>, simpleMechanism], ["paneGlass-3", "plateBrass-2"], 50);

##Mirrored Glass
MMArcaneAssembler("thaum_mirrored_glass", <thaumcraft:mirrored_glass>, [quicksilver], ["paneGlass-1"], 50);

##Arcane Spa
MMArcaneAssembler("thaum_arcane_spa", <thaumcraft:spa>, [<minecraft:quartz_block>*2, <minecraft:iron_bars>, stoneArcane*4, <thaumcraft:jar_normal>, simpleMechanism], [], 50);

##Essentia Tube Types
MMArcaneAssembler("thaum_essentia_tube", essentiaTube*8, [<thaumcraft:nugget:5>, <rockhounding_chemistry:gasline_duct>], ["plateIron-2", "blockGlass-1", "nuggetBrass-1"], 10);
MMArcaneAssembler("thaum_essentia_valve", <thaumcraft:tube_valve>, [essentiaTube, <minecraft:lever>], [], 10);
MMArcaneAssembler("thaum_filtered_tube", <thaumcraft:tube_filter>, [essentiaTube, essentiaFilter], [], 10);
MMArcaneAssembler("thaum_restricted_tube", <thaumcraft:tube_restrict>, [essentiaTube, getVisCrystal("terra")], [], 10);
MMArcaneAssembler("thaum_directional_tube", <thaumcraft:tube_oneway>, [essentiaTube, getVisCrystal("aqua")], [], 10);
MMArcaneAssembler("thaum_essentia_buffer", <thaumcraft:tube_buffer>, [<thaumcraft:phial>*4, essentiaTube*2, <thaumcraft:tube_valve>, <thaumcraft:tube_restrict>], ["plateIron-1"], 25);
MMArcaneAssembler("taug_glass_tube", <thaumicaugmentation:glass_tube>*8, [<thaumcraft:nugget:5>, <rockhounding_chemistry:misc_items:7>], ["blockGlass-2", "plateIron-1", "nuggetBrass-1"], 15);

##Jars
MMArcaneAssembler("thaum_warded_jar", <thaumcraft:jar_normal>, [], ["paneGlass-7", "slabWood-1"], 5);
MMArcaneAssembler("thaum_void_jar", <thaumcraft:jar_void>, [<thaumcraft:jar_normal>, getVisCrystal("perditio")], [], 50);
MMArcaneAssembler("tadd_brass_jar", <thaumadditions:jar_brass>, [<thaumcraft:jar_normal>], ["paneGlass-7", "plateBrass-1"], 7);
MMArcaneAssembler("tadd_thaumium_jar", <thaumadditions:jar_thaumium>, [<thaumadditions:jar_brass>], ["paneGlass-7", "plateThaumium-1"], 15);
MMArcaneAssembler("tadd_voidmetal_jar", <thaumadditions:jar_eldritch>, [<thaumadditions:jar_thaumium>], ["paneGlass-7", "plateVoid-1"], 150);
MMArcaneAssembler("tadd_mithrillium_jar", <thaumadditions:jar_mithrillium>, [<thaumadditions:jar_eldritch>, <thaumadditions:mithrillium_plate>], ["paneGlass-7"], 750);
MMArcaneAssembler("tadd_adaminite_jar", <thaumadditions:jar_adaminite>, [<thaumadditions:jar_mithrillium>, <thaumadditions:adaminite_plate>], ["paneGlass-7"], 1000);

##Arcane Lamp
MMArcaneAssembler("thaum_arcane_lamp", <thaumcraft:lamp_arcane>, [], ["plateIron-4", "blockAmber-1"], 50);

##Arcane Levitator
MMArcaneAssembler("thaum_arcane_levitator", <thaumcraft:levitator>, [simpleMechanism], ["plankWood-4", "plateIron-2", "plateThaumium-1", "nitor-1"], 35);

##Redstone Relay
MMArcaneAssembler("thaum_redstone_relay", <thaumcraft:redstone_relay>, [<minecraft:redstone_torch>*2, simpleMechanism, <minecraft:stone_slab>*3], [], 10);

##Arcane Ear
MMArcaneAssembler("thaum_arcane_ear", <thaumcraft:arcane_ear>, [simpleMechanism, <minecraft:redstone>], ["plateBrass-2", "slabWood-2"], 15);

##Infusion Pedestal
MMArcaneAssembler("thaum_pedestal_arcane", <thaumcraft:pedestal_arcane>, [<thaumcraft:slab_arcane_stone>*6, stoneArcane], [], 10);
MMArcaneAssembler("thaum_pedestal_ancient", <thaumcraft:pedestal_ancient>, [<thaumcraft:slab_ancient>*6, stoneAncient], [], 150);
MMArcaneAssembler("thaum_pedestal_eldritch", <thaumcraft:pedestal_eldritch>, [<thaumcraft:slab_eldritch>*6, stoneEldritch], [], 150);

##Hungry Chest
MMArcaneAssembler("thaum_hungry_chest", <thaumcraft:hungry_chest>, [plankGreatwood*7], ["trapdoorWood-1"], 15);

##Essentia Filter
MMArcaneAssembler("thaum_essentia_filter", <thaumcraft:filter>, [plankSilverwood], ["ingotGold-2"], 15);

##Morphic Resonator
MMArcaneAssembler("thaum_morphic_resonator", <thaumcraft:morphic_resonator>, [rareEarths], ["paneGlass-2", "plateBrass-2"], 50);

##Arcane Alembic
MMArcaneAssembler("thaum_arcane_alembic", <thaumcraft:alembic>, [plankGreatwood*4, essentiaFilter*2, <minecraft:bucket>], ["plateBrass-2"], 50);

##Essentia Smelters
MMArcaneAssembler("thaum_essentia_smelter", <thaumcraft:smelter_basic>, [<thaumcraft:crucible>], ["livingrock-5", "plateBrass-2", "runeFireB-1"] , 50);
MMArcaneAssembler("thaum_thaumium_smelter", <thaumcraft:smelter_thaumium>, [<thaumcraft:smelter_basic>, alchConstruct], ["plateBrass-2", "plateThaumium-5"], 250);
MMArcaneAssembler("thaum_voidmetal_smelter", <thaumcraft:smelter_void>, [<thaumcraft:smelter_thaumium>, <thaumcraft:metal_alchemical_advanced>], ["plateBrass-2", "plateVoid-5"], 750);
MMArcaneAssembler("tadd_mithrillium_smelter", <thaumadditions:mithrillium_smelter>, [<thaumcraft:smelter_void>, <thaumcraft:metal_alchemical_advanced>, <thaumadditions:mithrillium_plate>*5], ["plateBrass-2"], 1000);
MMArcaneAssembler("tadd_adaminite_smelter", <thaumadditions:adaminite_smelter>, [<thaumadditions:mithrillium_smelter>, <thaumcraft:metal_alchemical_advanced>, <thaumadditions:adaminite_plate>*5], ["plateBrass-2"], 1200);
MMArcaneAssembler("tadd_mithminite_smelter", <thaumadditions:mithminite_smelter>, [<thaumadditions:adaminite_smelter>, <thaumcraft:metal_alchemical_advanced>, <thaumadditions:mithminite_plate>*5], ["plateBrass-2"], 1500);

##Advanced Alchemical Construct
MMArcaneAssembler("thaum_adv_alch_construct", <thaumcraft:metal_alchemical_advanced>, [alchConstruct*2, primordialMote], ["plateVoid-2"], 200);

##Smeltery Aux Augments
MMArcaneAssembler("thaum_aux_slurry_pump", <thaumcraft:smelter_aux>, [plankGreatwood*2, alchConstruct, <thaumcraft:tube_filter>, <thaumcraft:bellows>], ["plateBrass-2", "plateIron-2"], 100);
MMArcaneAssembler("thaum_aux_venting_port", <thaumcraft:smelter_vent>, [essentiaFilter*2, alchConstruct], ["plateBrass-2", "plateIron-4"], 150);

##Essentia Transfusers
MMArcaneAssembler("thaum_filling_essentia_transfuser", <thaumcraft:essentia_input>, [<minecraft:dispenser>, alchConstruct], ["plateBrass-2", "plateIron-2", "gearBrass-1"], 100);
MMArcaneAssembler("thaum_emptying_essentia_transfuser", <thaumcraft:essentia_output>, [<minecraft:hopper>, alchConstruct], ["plateBrass-2", "plateIron-2", "gearBrass-1"], 100);

##Arcane Bellows
MMArcaneAssembler("thaum_arcane_bellows", <thaumcraft:bellows>, [<minecraft:leather>*2], ["plankWood-4", "ingotIron-1"], 25);

##Essentia Centrifuge
MMArcaneAssembler("thaum_essentia_centrifuge", <thaumcraft:centrifuge>, [essentiaTube*2, simpleMechanism, alchConstruct, <thaumcraft:morphic_resonator>], [], 100);

##Mnemonic Matrix
MMArcaneAssembler("thaum_mnemonic_matrix", <thaumcraft:brain_box>, [<thaumcraft:mind>], ["gemAmber-4", "plateIron-4"], 50);

##Clockwork Mind
MMArcaneAssembler("thaum_clockwork_mind", <thaumcraft:mind>, [simpleMechanism, <minecraft:comparator>], ["paneGlass-3", "plateBrass-2"], 25);

##Vis Battery
MMArcaneAssembler("thaum_vis_battery", <thaumcraft:vis_battery>, [<thaumcraft:slab_arcane_stone>*8, visResonator, <libvulpes:battery:0>], [], 50);

##Vis Generator
MMArcaneAssembler("thaum_vis_generator", <thaumcraft:vis_generator>, [<minecraft:redstone>, rareEarths*2, <minecraft:piston>, visResonator], ["plankWood-4"], 25);

##Flux Condenser
MMArcaneAssembler("thaum_flux_condenser", <thaumcraft:condenser>, [<thaumcraft:morphic_resonator>, complexMechanism, essentiaTube], ["plateBrass-4", "plankWood-2"], 500);
MMArcaneAssembler("thaum_flux_condenser_lattice", <thaumcraft:condenser_lattice>, [essentiaFilter], ["gemQuartz-6", "plateThaumium-2"], 100);

##Stabilizer
MMArcaneAssembler("thaum_stabilizer", <thaumcraft:stabilizer>, [<thaumcraft:slab_arcane_stone>*2, <minecraft:redstone_block>, stoneArcane*2, visResonator, <thaumcraft:inlay>*2, complexMechanism], [], 250);

##Redstone Inlay
MMArcaneAssembler("thaum_redstone_inlay", <thaumcraft:inlay>*2, [<minecraft:redstone>], ["ingotGold-1"], 25);

##Arcane Pattern Crafter
MMArcaneAssembler("thaum_pattern_crafter", <thaumcraft:pattern_crafter>, [visResonator, <minecraft:hopper>, simpleMechanism*2, plankGreatwood], ["workbench-1"], 50);

##Paving Stones
MMArcaneAssembler("thaum_paving_stone_travel", <thaumcraft:paving_stone_travel>*4, [arcaneBrick*4, getVisCrystal("aer"), getVisCrystal("terra")], [], 50);
MMArcaneAssembler("thaum_paving_stone_warding", <thaumcraft:paving_stone_barrier>*4, [arcaneBrick*4, getVisCrystal("ignis"), getVisCrystal("ordo")], [], 50);

##Arcane Activator Rail
MMArcaneAssembler("thaum_arcane_activator_rail", <thaumcraft:activator_rail>, [<minecraft:activator_rail>], [], 10);

##Thaumometer
MMArcaneAssembler("thaum_thaumometer", <thaumcraft:thaumometer>, [], ["paneGlass-1", "plateBronze-4", "preciousGems-4"], 20);

##Thaumic Dioptra
MMArcaneAssembler("thaum_dioptra", <thaumcraft:dioptra>, [visResonator, <thaumcraft:thaumometer>, stoneArcane*5], ["plateIron-2"], 50);


//Thaumic Augmentation
##Warding Sigil
MMArcaneAssembler("taug_warding_sigil", wardingSigil*3, [<thaumcraft:brain>, <thaumcraft:tallow>*2], ["dyePurple-2"], 10);

##Warded Chest
MMArcaneAssembler("taug_warding_sigil", <thaumicaugmentation:warded_chest>, [wardingSigil], ["chestWood-1", "plateThaumium-5"], 75);

##Vis Regenerator
MMArcaneAssembler("taug_vis_regenerator", <thaumicaugmentation:vis_regenerator>, [plankGreatwood*4, <minecraft:iron_bars>, <thaumicaugmentation:material:0>, simpleMechanism], ["plateIron-2"], 100);

##Fortified Glass
MMArcaneAssembler("taug_fortified_glass", <thaumicaugmentation:fortified_glass>*8, [wardingSigil], ["blockGlass-8"], 20);

##Starfield Glasses
MMArcaneAssembler("taug_starfield_glass_rift", <thaumicaugmentation:starfield_glass:0>*8, [<thaumicaugmentation:fortified_glass>*8, <minecraft:ender_pearl>], [], 30);
MMArcaneAssembler("taug_starfield_glass_mirror", <thaumicaugmentation:starfield_glass:2>*8, [<thaumicaugmentation:fortified_glass>*8, <thaumcraft:mirrored_glass>], [], 30);
MMArcaneAssembler("taug_starfield_glass_fracture", <thaumicaugmentation:starfield_glass:1>*8, [<thaumicaugmentation:fortified_glass>*8, <thaumicaugmentation:stone>], [], 30);

##Vis Regeneration Lattice
MMArcaneAssembler("taug_vis_regen_lattice", <thaumicaugmentation:material:0>, [plankSilverwood*4, <thaumcraft:leaves_silverwood>*4, essentiaFilter], [], 25);

##Impetus Tech
MMArcaneAssembler("taug_impetus_relay", <thaumicaugmentation:impetus_relay>, [impetusJewel, <embers:ember_relay>], ["plateVoid-1"], 25);
MMArcaneAssembler("taug_impetus_gate", <thaumicaugmentation:impetus_gate>, [wardingSigil, <thaumicaugmentation:impetus_relay>, <minecraft:comparator>], ["plateVoid-2"], 100);
MMArcaneAssembler("taug_impetus_drainer", <thaumicaugmentation:impetus_drainer>, [impetusJewel, stoneEldritch*2, <minecraft:iron_bars>], ["plateVoid-4", "blockVoid-1"], 50);
MMArcaneAssembler("taug_impetus_diffuser", <thaumicaugmentation:impetus_diffuser>, [impetusJewel, stoneArcane*2], ["plateIron-2", "plateVoid-3"], 50);
MMArcaneAssembler("taug_impetus_generator", <thaumicaugmentation:impetus_generator>, [stoneEldritch*4, <minecraft:redstone>, rareEarths*2, <minecraft:piston>, impetusJewel], [], 100);

##Void Recharge Pedestal
MMArcaneAssembler("taug_void_recharge_pedestal", <thaumicaugmentation:void_recharge_pedestal>, [getVisCrystal("alienis")*2, impetusJewel, quicksilver, stoneEldritch*3], ["plateVoid-2"], 75);

##Extradimensional Monitor
MMArcaneAssembler("taug_rift_monitor", <thaumicaugmentation:rift_monitor>, [<thaumcraft:slab_eldritch>*3, <thaumcraft:thaumometer>, <thaumcraft:stone_eldritch_tile>*3], [], 50);

##Stability Field Generator
MMArcaneAssembler("taug_rift_stability_generator", <thaumicaugmentation:stability_field_generator>, [<thaumcraft:slab_arcane_stone> * 2, complexMechanism, stoneArcane *2, <minecraft:redstone>], ["plateBrass-2", "blockAmber-1"], 250);

##Reinforced Jar
MMArcaneAssembler("taug_rift_jar", <thaumicaugmentation:rift_jar>, [wardingSigil, <thaumcraft:jar_normal>], ["plateIron-1"], 25);

##Arcane Terraformer
MMArcaneAssembler("taug_arcane_terraformer", <thaumicaugmentation:arcane_terraformer>, [<thaumcraft:potion_sprayer>, essentiaTube*3, impetusJewel], ["plateThaumium-4"], 150);

##Biome Focus
MMArcaneAssembler("taug_biome_focus", <thaumicaugmentation:biome_selector>, [<thaumcraft:focus_1>], ["plateBrass-4", "plateThaumium-4"], 25);


##TAug Keys
MMArcaneAssembler("taug_key_thaumium", <thaumicaugmentation:key:2>, [zombieBrain], ["nuggetThaumium-4"], 5);
MMArcaneAssembler("taug_key_brass", <thaumicaugmentation:key:1>, [zombieBrain], ["nuggetBrass-4"], 5);
MMArcaneAssembler("taug_key_iron", <thaumicaugmentation:key:0>, [zombieBrain], ["nuggetIron-4"], 5);


//Thaumic Additions
##Flight Device
MMArcaneAssembler("tadd_flight_device", <thaumadditions:levitation_device>, [complexMechanism*2, <thaumcraft:levitator>, <thaumcraft:alumentum>], ["plateIron-4", "nitor-1"], 20);

##Adaminite Fabric
MMArcaneAssembler("tadd_adaminite_fabric", <thaumadditions:adaminite_fabric>*2, [<thaumcraft:fabric>*8], ["ingotAdaminite-1"], 200);

##Mithminite Fabric
MMArcaneAssembler("tadd_mithminite_fabric", <thaumadditions:mithminite_fabric>*2, [<thaumadditions:adaminite_fabric>*4], ["ingotMithminite-1"], 400);

##Disenchant Fabric
MMArcaneAssembler("tadd_disenchant_fabric", <thaumadditions:disenchant_fabric>, [<thaumcraft:fabric>*4, <thaumcraft:salis_mundus>], [], 150);

##Entity Cell
MMArcaneAssembler("tadd_entity_cell", <thaumadditions:dna_sample>, [<thaumcraft:morphic_resonator>*2, simpleMechanism*2], ["plateThaumium-1", "ingotThaumium-4"], 100);

##Dawn Totem
MMArcaneAssembler("tadd_dawn_totem", <thaumadditions:dawn_totem>, [<thaumcraft:shimmerleaf>, plankSilverwood*4, getVisCrystal("auram")*4], [], 50);

##Twilight Totem
MMArcaneAssembler("tadd_twilight_totem", <thaumadditions:twilight_totem>, [<thaumadditions:taintwood_planks>*4, <thaumcraft:fabric>*4, getVisCrystal("vitium")], [], 50);

//Thaumic Tinkerer
##Dynamism Tablet
MMArcaneAssembler("thaumtinkerer_dynamism_tablet", <thaumictinkerer:animation_tablet>, [<thaumcraft:seal>], ["ingotIron-3", "ingotGold-2"], 20);

##Essentia Funnel
MMArcaneAssembler("thaumtinkerer_essentia_funnel", <thaumictinkerer:funnel>, [], ["stone-2", "ingotThaumium-1"], 60);

##Dissimulation Block
MMArcaneAssembler("thaumtinkerer_dissimulation", <thaumictinkerer:dissimulation>, [stoneArcane*5], ["gemPrismarine-2", "clay-2"], 30);

##Transvector Interface
MMArcaneAssembler("thaumtinker_transvector_interface", <thaumictinkerer:transvector_interface>, [stoneArcane*4, <minecraft:ender_pearl>, <thaumictinkerer:dissimulation>], ["gemLapis-2", "dustRedstone-2"], 200);

##Transvector Dislocator
MMArcaneAssembler("thaumtinkerer_transvector_dislocator", <thaumictinkerer:transvector_dislocator>, [<thaumictinkerer:transvector_interface>, <minecraft:comparator>, <thaumcraft:mirrored_glass>], [], 200);


//Mystical Gears
##Mystical Gears Motors
MMArcaneAssembler("mystgears_vis_motor", <mystgears:vis_motor>, [visResonator, <mysticalmechanics:axle_iron>], ["nuggetIron-2", "plankWood-2"], 25);
MMArcaneAssembler("mystgears_essentia_motor", <mystgears:essentia_motor>, [plankGreatwood*4, essentiaTube, <thaumcraft:morphic_resonator>, <mysticalmechanics:gearbox_frame>], ["plateBrass-2"], 35);

##Mechanical Pattern Crafter
MMArcaneAssembler("mystgears_mech_pattern_crafter", <mystgears:crafter_mechanical>, [<mysticalmechanics:axle_iron>, <minecraft:hopper>, simpleMechanism*2, plankGreatwood], ["workbench-1"], 50);


//Thaumic Energistics
##TEnergistics Devices
MMArcaneAssembler("tenergistics_essentia_storagebus", <thaumicenergistics:essentia_storage>, [<appliedenergistics2:interface>, <minecraft:piston>, <minecraft:sticky_piston>, <thaumcraft:salis_mundus>], [], 20);
MMArcaneAssembler("tenergistics_essentia_importbus", <thaumicenergistics:essentia_import>, [essentiaTube, <thaumcraft:salis_mundus>*2, <thaumicenergistics:coalescence_core>], ["ingotIron-2"], 20);
MMArcaneAssembler("tenergistics_essentia_exportbus", <thaumicenergistics:essentia_export>, [essentiaTube, <thaumcraft:salis_mundus>*2, <thaumicenergistics:diffusion_core>], ["ingotIron-2"], 20);

##TEnergistics Cores
MMArcaneAssembler("tenergistics_diffusion_core", <thaumicenergistics:diffusion_core>, [<appliedenergistics2:material:22>], ["nuggetQuicksilver-6", "dustFluix-1", "gemQuartz-1"], 10);
MMArcaneAssembler("tenergistics_coalescense_core", <thaumicenergistics:coalescence_core>, [<appliedenergistics2:material:22>], ["nuggetQuicksilver-6", "dustFluix-1", "gemCertusQuartz-1"], 10);

##TEnergistics Storage Components
MMArcaneAssembler("tenergistics_storage_1k", <thaumicenergistics:essentia_component_1k>, [<appliedenergistics2:material:22>, <thaumcraft:salis_mundus>*4], ["plateBrass-4"], 10);
MMArcaneAssembler("tenergistics_storage_4k", <thaumicenergistics:essentia_component_4k>, [<appliedenergistics2:material:23>, <thaumcraft:salis_mundus>, <thaumicenergistics:essentia_component_1k>*3], ["plateThaumium-4"], 10);
MMArcaneAssembler("tenergistics_storage_16k", <thaumicenergistics:essentia_component_16k>, [<appliedenergistics2:material:24>, <thaumcraft:salis_mundus>, <thaumicenergistics:essentia_component_4k>*3], ["plateVoid-4"], 10);
MMArcaneAssembler("tenergistics_storage_64k", <thaumicenergistics:essentia_component_64k>, [<appliedenergistics2:material:24>, <thaumcraft:salis_mundus>, <thaumicenergistics:essentia_component_16k>*3], ["plateMithrillium-4"], 10);

##Charging Upgrade
MMArcaneAssembler("tenergistics_charging_upgrade", <thaumicenergistics:upgrade_arcane>, [<appliedenergistics2:material:28>, <thaumcraft:arcane_workbench_charger>], [], 25);


//MBM Custom Recipes
##Arcane Stone
MMArcaneAssembler("mbm_arcanestone", <thaumcraft:stone_arcane>*8, [<embers:ashen_stone>*8, <thaumcraft:crystal_essence>], [], 10);

##Arcane Ashes
MMArcaneAssembler("mbm_arcane_ashes", <bloodmagic:arcane_ashes>, [<embers:dust_ash>*2, <contenttweaker:slatedust>*4], ["dustAquamarine-1", "dustRedstone-1", "powderMana-1"], 200);

##Alchemy Catalyst
MMArcaneAssembler("mbm_alchemy_catalyst", <botania:alchemycatalyst>, [<twilightforest:naga_scale>*2, <twilightforest:transformation_powder>, <twilightforest:magic_map_focus>], ["livingrock-4", "anyCharm-1"], 100);

##Crystal Growth Powder
MMArcaneAssembler("mbm_crystal_growth_powder", <contenttweaker:vis_meal>*3, [<minecraft:gravel>*6, <thaumcraft:salis_mundus>, <botania:fertilizer>], ["dustBedrock-1"], 25);


//Are these recipes below Necessary in any way? no.
//is it kind of funny to have them? yes.

//Thaumcraft funnies
##Infusion Stones
MMArcaneAssembler("thaum_infusionstone_speed", <thaumcraft:matrix_speed>, [stoneArcane*4], ["blockDiamond-1", "nitor-4"], 500);
MMArcaneAssembler("thaum_infusionstone_cost", <thaumcraft:matrix_cost>, [stoneArcane*4, <thaumcraft:alumentum>*4], ["blockDiamond-1"], 500);

##Caster's Gauntlet
MMArcaneAssembler("thaum_gauntlet", <thaumcraft:caster_basic>, [<minecraft:leather>*4, visResonator, <thaumcraft:thaumometer>], ["ingotIron-3"], 100);

##Essentia Resonator
MMArcaneAssembler("thaum_essentia_resonator", <thaumcraft:resonator>, [getVisCrystal("ordo")], ["plateIron-4", "gemQuartz-1", "stickWood-1"], 50);

##Sanity Checker
MMArcaneAssembler("thaum_sanity_checker", <thaumcraft:sanity_checker>, [<thaumcraft:mirrored_glass>, zombieBrain], ["nuggetBrass-3"], 20);

##Focus Pouch
MMArcaneAssembler("thaum_focus_pouch", <thaumcraft:focus_pouch>, [<minecraft:leather>*7, <thaumcraft:baubles:2>], ["ingotGold-1"], 25);

##Thaumaturge's Armor
MMArcaneAssembler("thaum_thaumaturge_robe", <thaumcraft:cloth_chest>, [<thaumcraft:fabric>*8, getVisCrystal("ignis")], [], 100);
MMArcaneAssembler("thaum_thaumaturge_legs", <thaumcraft:cloth_legs>, [<thaumcraft:fabric>*7, getVisCrystal("aqua")], [], 100);
MMArcaneAssembler("thaum_thaumaturge_boots", <thaumcraft:cloth_boots>, [<thaumcraft:fabric>*4, getVisCrystal("terra")], [], 100);

##Arcane Grappler
MMArcaneAssembler("thaum_grappler_head", <thaumcraft:grapple_gun_tip>, [rareEarths*4, <minecraft:tripwire_hook>], ["plateBrass-4"], 25);
MMArcaneAssembler("thaum_grappler_spool", <thaumcraft:grapple_gun_spool>, [simpleMechanism, <minecraft:tripwire_hook>], ["string-7"], 25);
MMArcaneAssembler("thaum_arcane_grappler", <thaumcraft:grapple_gun>, [<thaumcraft:grapple_gun_tip>, <thaumcraft:grapple_gun_spool>], ["plateIron-2", "plateBrass-1", "plankWood-1"], 75);

##Automated Crossbows
MMArcaneAssembler("thaum_auto_crossbow", <thaumcraft:turret:0>, [simpleMechanism, <thaumcraft:mind:0>, plankGreatwood, <minecraft:bow>], ["stickWood-2", "plateIron-1"], 100);
MMArcaneAssembler("thaum_adv_auto_crossbow", <thaumcraft:turret:1>, [<thaumcraft:turret:0>, <thaumcraft:mind:1>], ["plateIron-4"], 150);

##Thaumcraft Banners
val colors = [
	"White",
	"Orange",
	"Magenta",
	"LightBlue",
	"Yellow",
	"Lime",
	"Pink",
	"Gray",
	"LightGray",
	"Cyan",
	"Purple",
	"Blue",
	"Brown",
	"Green",
	"Red",
	"Black"
] as string[];

for color in colors {
	var bannertype = color.toLowerCase();
	if(color == "LightGray") {
		bannertype = "silver";
	}
	MMArcaneAssembler("thaum_banner"~color.toLowerCase(), itemUtils.getItem("thaumcraft:banner_"~bannertype), [],  ["stickWood-2", "slabWood-1", "wool"~color~"-3"], 10);
}


//TAug funnies
val wardedDeviceTypes = {
	"arcane_stone" : stoneArcane,
	"greatwood" : plankGreatwood,
	"silverwood" : plankSilverwood
} as IItemStack[string];

for type in wardedDeviceTypes {
	MMArcaneAssembler("taug_arcane_pressureplate_"~type, itemUtils.getItem("thaumicaugmentation:warded_pressure_plate_"~type), [wardingSigil, itemUtils.getItem("thaumicaugmentation:pressure_plate_"~type)], [], 5);
	MMArcaneAssembler("taug_arcane_button_"~type, itemUtils.getItem("thaumicaugmentation:warded_button_"~type), [wardingSigil, itemUtils.getItem("thaumicaugmentation:button_"~type)], [], 5);
	MMArcaneAssembler("taug_pressureplate_"~type, itemUtils.getItem("thaumicaugmentation:pressure_plate_"~type), [wardedDeviceTypes[type]*2, getVisCrystal("terra")], [], 5);
	MMArcaneAssembler("taug_button_"~type, itemUtils.getItem("thaumicaugmentation:button_"~type), [wardedDeviceTypes[type], getVisCrystal("ordo")], [], 5);
}

##TAug Doors
MMArcaneAssembler("taug_door_greatwood", <thaumicaugmentation:arcane_door:0>, [wardingSigil, plankGreatwood*6, getVisCrystal("ordo")], ["plateBrass-2"], 100);
MMArcaneAssembler("taug_door_thaumium", <thaumicaugmentation:arcane_door:1>, [wardingSigil, getVisCrystal("ordo")], ["plateThaumium-6", "plateIron-2"], 100);
MMArcaneAssembler("taug_door_silverwood", <thaumicaugmentation:arcane_door:2>, [wardingSigil, plankSilverwood*6, getVisCrystal("ordo")], ["plateIron-2"], 100);

##TAug Trapdoors
MMArcaneAssembler("taug_trapdoor_greatwood", <thaumicaugmentation:arcane_trapdoor_wood>*2, [wardingSigil, plankGreatwood*6, getVisCrystal("terra")], ["plateBrass-2"], 100);
MMArcaneAssembler("taug_trapdoor_thaumium", <thaumicaugmentation:arcane_trapdoor_metal>*2, [wardingSigil, getVisCrystal("terra")], ["plateIron-2", "plateThaumium-6"], 100);
MMArcaneAssembler("taug_trapdoor_silverwood", <thaumicaugmentation:arcane_trapdoor_silverwood>*2, [wardingSigil, plankSilverwood*6, getVisCrystal("terra")], ["plateIron-2"], 100);

##TAug Modifiers (Augment Parts)
val taugModifiers = {
	"experience" : ["gemEmerald;2", "gemLapis;1"],
	"overworld" : ["dirt;1", "stone;1"],
	"nether" : ["minecraft:netherrack;0;1", "minecraft:glowstone;0;1"],
	"end" : ["minecraft:end_stone;0;1", "minecraft:obsidian;0;1"],
	"emptiness" : ["thaumicaugmentation:stone;0;1", "thaumicaugmentation:stone;1;1"],
	"frenzy" : ["thaumcraft:module;1;1", "thaumcraft:mechanism_simple;0;1"]
} as string[][string];

for modifier in taugModifiers {
	var modifierAssembler = mods.modularmachinery.RecipeBuilder.newBuilder("taug_modifier_"~modifier, "arcane-assembler", 60, 0);
	for item in taugModifiers[modifier] {
		if(item.contains(":")) {
			modifierAssembler.addItemInput(itemUtils.getItem(item.split(";")[0], item.split(";")[1] as int) * item.split(";")[2] as int);
		} else {
			modifierAssembler.addItemInput(oreDict.get(item.split(";")[0]), item.split(";")[1] as int);
		}
	}
	modifierAssembler.addItemInput(visResonator);
	modifierAssembler.addFluidInput(<fluid:crystal_water> * (15 * visCostMultiplier));
	modifierAssembler.addItemOutput(<thaumicaugmentation:augment_builder_power>.withTag({id: "thaumicaugmentation:strength_"~modifier as IData}));
	modifierAssembler.build();
}

##Vis Battery Aug
MMArcaneAssembler("taug_augment_battery", <thaumicaugmentation:augment_vis_battery>, [stoneArcane*4, <thaumcraft:vis_battery>*4, <thaumcraft:morphic_resonator>], [], 50);

##Impetus Conductor
MMArcaneAssembler("taug_impetus_conductor", <thaumicaugmentation:augment_caster_rift_energy_storage>, [<thaumicaugmentation:material:3>], ["plateThaumium-1"], 25);

##Thaumium Caster's Gauntlet
MMArcaneAssembler("taug_thaumium_gauntlet", <thaumicaugmentation:gauntlet>.withTag({cap: {slots: 3}, color: 8022208}), [visResonator, <thaumcraft:thaumometer>, <thaumcraft:fabric>*4], ["plateThaumium-3"], 250);

##Fracture Locator
MMArcaneAssembler("taug_fracture_locator", <thaumicaugmentation:fracture_locator>, [rareEarths, getVisCrystal("vacuos")*4], ["plateBrass-4"], 25);

##Impulse Cannon Augs
MMArcaneAssembler("taug_impulseaug_railgun", <thaumicaugmentation:impulse_cannon_augment:0>, [impetusJewel, getVisCrystal("ordo")], ["plateVoid-4"], 150);
MMArcaneAssembler("taug_impulseaug_burst", <thaumicaugmentation:impulse_cannon_augment:1>, [impetusJewel*3, getVisCrystal("perditio")], ["plateVoid-6"], 150);

##Celestial Observer
MMArcaneAssembler("taug_celestial_observer", <thaumicaugmentation:celestial_observer_placer>, [<thaumcraft:thaumometer>, <thaumcraft:mind:0>, plankGreatwood*2, simpleMechanism], ["ingotGold-2", "blockGlass-2"], 100);

##Impetus Resonator
MMArcaneAssembler("taug_impetus_resonator", <thaumicaugmentation:impetus_linker>, [impetusJewel], ["plateVoid-3", "stickWood-1"], 125);


//TAdditions funnies
##Adaminite Robes
MMArcaneAssembler("tadd_adaminite_hood", <thaumadditions:adaminite_hood>, [<thaumadditions:adaminite_fabric>*5, <thaumadditions:mithrillium_resonator>, getVisCrystal("aer")], [], 200);
MMArcaneAssembler("tadd_adaminite_robe", <thaumadditions:adaminite_robe>, [<thaumadditions:adaminite_fabric>*7, <thaumadditions:mithrillium_resonator>, getVisCrystal("ignis")], [], 200);
MMArcaneAssembler("tadd_adaminite_belt", <thaumadditions:adaminite_belt>, [<thaumadditions:adaminite_fabric>*3, <thaumadditions:mithrillium_resonator>, getVisCrystal("aqua")], [], 200);
MMArcaneAssembler("tadd_adaminite_boots", <thaumadditions:adaminite_boots>, [<thaumadditions:adaminite_fabric>*4, <thaumadditions:mithrillium_resonator>, getVisCrystal("terra")], [], 200);

##Fragrant Pendant
MMArcaneAssembler("tadd_fragrant_pendant", <thaumadditions:fragnant_pendant>, [essentiaFilter*2, amber, <thaumcraft:salis_mundus>, <thaumcraft:baubles:4>, <thaumadditions:odour_powder>], [], 50);

##Vis Scribing Tools
MMArcaneAssembler("tadd_vis_scribing_tools", <thaumadditions:vis_scribing_tools>, [<thaumcraft:scribing_tools>, getVisCrystal("praecantatio")*2, <thaumcraft:phial:1>.withTag({Aspects: [{amount: 10, key: "auram"}]})], ["blockGlass-2"], 200);

##Essentia Pistol
MMArcaneAssembler("tadd_essentia_gun", <thaumadditions:essentia_pistol>, [simpleMechanism, <minecraft:stone_button>, plankGreatwood*2, <thaumadditions:aura_disperser>], ["ingotThaumium-2"], 100);

##Seal Globe
MMArcaneAssembler("tadd_seal_globe", <thaumadditions:seal_globe>, [getVisCrystal("imperium"), visResonator], ["ingotGold-2", "blockGlass-5"], 100);

##Arcane Seal
MMArcaneAssembler("tadd_seal", <thaumadditions:seal>*2, [], ["woolBlock-1", "nuggetGold-4",], 50);

##Bone-eye
MMArcaneAssembler("tadd_boneeye", <thaumadditions:bone_eye>, [<minecraft:spider_eye>], ["ingotThaumium-1", "gemQuartz-2"], 100);
/*
//Currently not in 3.0.3+, commented out for now, uncomment when updating tadditions
##Crystal Lamp
MMArcaneAssembler("tadd_crystal_lamp", <thaumadditions:crystal_lamp>, [plankGreatwood*4, getVisCrystal("lux")], ["nitor-1"], 30);
*/
##Tome of Knowledge Sharing
MMArcaneAssembler("tadd_knowledge_sharing_tome", <thaumadditions:knowledge_tome>, [<thaumcraft:scribing_tools>, <thaumcraft:curio:1>, <thaumcraft:thaumonomicon>], [], 100);

##Crystal Blocks
val aspectList = [
	#Thaumcraft
	"aer",
	"terra",
	"ignis",
	"aqua",
	"ordo",
	"perditio",
	"vacuos",
	"lux",
	"motus",
	"gelum",
	"vitreus",
	"metallum",
	"victus",
	"mortuus",
	"potentia",
	"permutatio",
	"praecantatio",
	"auram",
	"alkimia",
	"vitium",
	"tenebrae",
	"alienis",
	"volatus",
	"herba",
	"instrumentum",
	"fabrico",
	"machina",
	"vinculum",
	"spiritus",
	"cognitio",
	"sensus",
	"aversio",
	"praemunio",
	"desiderium",
	"exanimis",
	"bestia",
	"humanus",
	
	#Thaumic Additions
	"fluctus",
	"sonus",
	"exitium",
	"caeles",
	"draco",
	"infernum",
	"ventus",
	"visum",
	"imperium",
	
	#Ice and Fire
	"mythus",
	
	#Fossils and Archeology
	"chronos",
	"anteanus",
	"priscus"
] as string[];

for aspect in aspectList {
	MMArcaneAssembler("tadd_crystal_block_"~aspect, <thaumadditions:crystal_block>.withTag({Aspect: aspect as IData}), [getVisCrystal(aspect)*8, <thaumadditions:salt_essence>.withTag({Aspects: [{amount: 1, key: aspect as IData}]})], [], 10);
}


//TEnergistics Funnies
##TEnergistics Terminals
MMArcaneAssembler("tenergistics_arcane_terminal", <thaumicenergistics:arcane_terminal>, [<appliedenergistics2:part:380>, <thaumcraft:arcane_workbench>, <appliedenergistics2:material:23>], [], 50);
MMArcaneAssembler("tenergistics_essentia_terminal", <thaumicenergistics:essentia_terminal>, [<appliedenergistics2:part:180>, <appliedenergistics2:material:22>, <thaumcraft:salis_mundus>, <thaumicenergistics:diffusion_core>, <thaumicenergistics:coalescence_core>], [], 25);
