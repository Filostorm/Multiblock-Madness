import crafttweaker.item.IItemStack;

import mods.thaumcraft.Infusion;
import mods.botaniatweaks.Agglomeration;
import mods.extendedcrafting.EnderCrafting;

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

//Ultime Ingot
Agglomeration.addRecipe(<extendedcrafting:material:32>, 
[<ore:ingotThermoconducting>, <extendedcrafting:material:48>, <ore:ingotOsmiridium>, <enderio:item_alloy_endergy_ingot:6>, <plustic:mirioningot>]
,1000000,0x004a80,0xa432a8,
<avaritia:block_resource:2>,<actuallyadditions:block_crystal_empowered:2>,<actuallyadditions:block_crystal_empowered:4>,
null, <actuallyadditions:block_crystal:2>, <actuallyadditions:block_crystal:4>
);

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



<extendedcrafting:table_basic>.addTooltip(format.lightPurple("Shift-Right click the previous tier table with the catalyst"));
<extendedcrafting:table_advanced>.addTooltip(format.lightPurple("Shift-Right click the previous tier table with the catalyst"));
<extendedcrafting:table_elite>.addTooltip(format.lightPurple("Shift-Right click the previous tier table with the catalyst"));
<extendedcrafting:table_ultimate>.addTooltip(format.lightPurple("Shift-Right click the previous tier table with the catalyst"));



//mods.iceandfire.recipes.addFireDragonForgeRecipe(<techreborn:ingot:25>, <actuallyadditions:item_crystal_empowered:3>, <extendedcrafting:material>);

<avaritia:resource:2>.addTooltip(format.lightPurple("Collected by Orbital Mining from a Space Station"));

//AR Creative Power Plug
recipes.addShaped(<libvulpes:creativepowerbattery>, [[<ore:circuitUltimate>, <extendedcrafting:material:19>, <ore:circuitUltimate>],[<extendedcrafting:material:19>, <libvulpes:forgepowerinput>, <extendedcrafting:material:19>], [<ore:circuitUltimate>, <extendedcrafting:material:19>, <mekanism:controlcircuit:3>]]);

//Infinity ingot
mods.techreborn.fusionReactor.addRecipe(<avaritia:resource:5>*4, <avaritia:resource:4>*4, <avaritia:resource:6>, 100000000, -250000, 12000, 50);


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

//Sponge
Infusion.registerRecipe("creative_flux_sponge", "", 
<thaumcraft:creative_flux_sponge>, 20, 
[<aspect:caeles>*10, <aspect:vacuos>*200, <aspect:aer>*50], 
<openblocks:sponge>, 
[<extendedcrafting:trimmed:5>,<thaumcraft:plate:3>, <botania:manaresource:8>, <thaumcraft:sanity_soap>,
<extendedcrafting:trimmed:5>,<thaumcraft:plate:3>, <botania:manaresource:8>, <thaumcraft:bath_salts>]);


//Midnight Block Uncrafting
recipes.addShapeless(<extendedcrafting:material> * 9, [<extendedcrafting:storage>]);

//Twilight Ingot
<extendedcrafting:material:48>.displayName = "Twilight Ingot";
<extendedcrafting:storage:7>.displayName = "Twilight Block";
EnderCrafting.remove(<extendedcrafting:material:48>);
EnderCrafting.addShaped(<extendedcrafting:material:48>, 
[[<twilightforest:carminite>, <embers:ingot_dawnstone>, <twilightforest:carminite>],
[<extendedcrafting:material:36>, <extendedcrafting:material:40>, <extendedcrafting:material:36>], 
[<twilightforest:carminite>, <embers:ingot_dawnstone>, <twilightforest:carminite>]]);  

//Endest Star
<extendedcrafting:material:40>.displayName = "Endest Star";
<extendedcrafting:storage:6>.displayName = "Block of Endest Stars";
<extendedcrafting:material:41>.displayName = "Endest Star Nugget";
EnderCrafting.remove(<extendedcrafting:material:40>);
EnderCrafting.addShaped(<extendedcrafting:material:40>, 
[[null, <thermalfoundation:material:1028>, null],
[<thermalfoundation:material:1028>, <actuallyadditions:item_misc:19>, <thermalfoundation:material:1028>], 
[null, <thermalfoundation:material:1028>, null]]);

//Cosmic Meatballs
mods.extendedcrafting.TableCrafting.addShapeless(0, <avaritia:cosmic_meatballs>*4, [<avaritia:resource:2>, <avaritia:resource:2>, <avaritia:resource:2>, <avaritia:resource:2>, 
<avaritia:resource:2>, <avaritia:resource:2>, <avaritia:resource:2>, <avaritia:resource:2>, <xlfoodmod:super_energy_drink>, 
<xlfoodmod:grilled_cheese_sandwich>, <xlfoodmod:strawberry_icecream>, <xlfoodmod:vegetable_soup>, <xlfoodmod:cheeseburger>, <avaritia:resource:2>, 
<avaritia:resource:2>, <xlfoodmod:jambon_beurre>, <xlfoodmod:blt_sandwich>, <xlfoodmod:chicken_sandwich>, <xlfoodmod:hamburger>, <xlfoodmod:corn_bread>, 
<avaritia:resource:2>, <avaritia:resource:2>, <xlfoodmod:icecream_sandwich>, <xlfoodmod:kebab>, <nuclearcraft:foursmore>, <xlfoodmod:taco>, 
<xlfoodmod:spaghetti>, <avaritia:resource:2>, <avaritia:resource:2>, <xlfoodmod:chickenburger>, <xlfoodmod:sausage_roll>, <xlfoodmod:burrito>, 
<xlfoodmod:lasagne>, <xlfoodmod:fish_pie>, <avaritia:resource:2>, <avaritia:resource:2>, <xlfoodmod:chocolate_donut>, <xlfoodmod:enchilada>, 
<xlfoodmod:slice_of_pizza>, <xlfoodmod:beef_stew>, <xlfoodmod:hot_dog>, <avaritia:resource:2>, <avaritia:resource:2>, <avaritia:resource:2>, 
<avaritia:resource:2>, <avaritia:resource:2>, <avaritia:resource:2>, <avaritia:resource:2>, <avaritia:resource:2>]);

//Cosmic stew
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


//Endest Pearl
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

//Infinity Catalyst
mods.extendedcrafting.TableCrafting.addShaped(0, <avaritia:resource:5>, [
	[null, null, null, null, <extracells:walrus>, null, null, null, null], 
	[null, <extendedcrafting:singularity_custom:12>, null, null, <ebwizardry:astral_diamond>, null, null, <extendedcrafting:singularity_custom:5>, null], 
	[null, null, <extendedcrafting:singularity_custom:4>, null, <avaritia:cosmic_meatballs>, null, <extendedcrafting:singularity_custom:6>, null, null], 
	[null, null, null, <extendedcrafting:singularity_custom:9>, <ore:blockIridium>, <extendedcrafting:singularity_custom:7>, null, null, null], 
	[<tconstruct:sign_head>.withTag({Material: "blood_infused_iron"}), <bloodarsenal:blood_diamond:2>, <avaritia:ultimate_stew>, <contenttweaker:starmetal_block>, <extendedcrafting:material:13>, <extendedcrafting:trimmed:5>, <ore:blockCrystalMatrix>, <appliedenergistics2:material:48>, <ore:rodNdYAG>], 
	[null, null, null, <extendedcrafting:singularity_custom:8>, <ore:blockFiery>, <extendedcrafting:singularity_custom:10>, null, null, null], 
	[null, null, <extendedcrafting:singularity_custom:1>, null, <avaritia:endest_pearl>, null, <extendedcrafting:singularity_custom:2>, null, null], 
	[null, <extendedcrafting:singularity_custom:3>, null, null, <astralsorcery:itemcelestialcrystal>, null, null, <extendedcrafting:singularity_custom:11>, null], 
	[null, null, null, null, <techreborn:cloakingdevice>, null, null, null, null]
]);

//Guilty Pool
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

//Creative Tank
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
recipes.addShapeless(<mekanism:machineblock2:11>.withTag({tier: 4}), [<thermalexpansion:tank>.withTag({RSControl: 0 as byte, Creative: 1 as byte, Level: 4 as byte})]);
recipes.addShapeless(<thermalexpansion:tank>.withTag({RSControl: 0 as byte, Creative: 1 as byte, Level: 4 as byte}), [<mekanism:machineblock2:11>.withTag({tier: 4})]);

//Creative Essentia Cell
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

//Wireless Termanal
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

//COil
mods.extendedcrafting.TableCrafting.addShaped(0, <randomthings:spectrecoil_genesis>, [
	[null, null, null, null, null, null, null, null, null], 
	[null, null, null, null, null, null, null, null, null], 
	[null, null, <extendedcrafting:trimmed:5>, <extendedcrafting:trimmed:5>, <extendedcrafting:trimmed:5>, <extendedcrafting:trimmed:5>, <extendedcrafting:trimmed:5>, null, null], 
	[null, <extendedcrafting:trimmed:5>, <extendedcrafting:trimmed:5>, <extendedcrafting:lamp:1>, <thermalexpansion:cell>.withTag({Recv: 25000, RSControl: 0 as byte, Facing: 4 as byte, Creative: 0 as byte, Energy: 0, Level: 4 as byte, SideCache: [2, 1, 1, 1, 1, 1] as byte[] as byte[], Send: 25000}), <extendedcrafting:lamp:1>, <extendedcrafting:trimmed:5>, <extendedcrafting:trimmed:5>, null], 
	[<extendedcrafting:trimmed:5>, <extendedcrafting:trimmed:5>, <mekanism:basicblock2:3>.withTag({tier: 3}), <ore:blockInfinity>, <avaritia:resource:5>, <ore:blockInfinity>, <mekanism:basicblock2:3>.withTag({tier: 3}), <extendedcrafting:trimmed:5>, <extendedcrafting:trimmed:5>], 
	[null, <extendedcrafting:trimmed:5>, <extendedcrafting:trimmed:5>, <extendedcrafting:lamp:1>, <thermalexpansion:cell>.withTag({Recv: 25000, RSControl: 0 as byte, Facing: 4 as byte, Creative: 0 as byte, Energy: 0, Level: 4 as byte, SideCache: [2, 1, 1, 1, 1, 1] as byte[] as byte[], Send: 25000}), <extendedcrafting:lamp:1>, <extendedcrafting:trimmed:5>, <extendedcrafting:trimmed:5>, null], 
	[null, null, <extendedcrafting:trimmed:5>, <extendedcrafting:trimmed:5>, <extendedcrafting:trimmed:5>, <extendedcrafting:trimmed:5>, <extendedcrafting:trimmed:5>, null, null], 
	[null, null, null, null, null, null, null, null, null], 
	[null, null, null, null, null, null, null, null, null]
]);

//Creative Cell
mods.extendedcrafting.TableCrafting.addShaped(0, <appliedenergistics2:creative_storage_cell>, [
	[<threng:material:14>, <threng:material:14>, <threng:material:14>, <threng:material:14>, <threng:material:14>, <threng:material:14>, <threng:material:14>, <threng:material:14>, <threng:material:14>], 
	[<threng:material:14>, <ore:ingotInfinity>, <extendedcrafting:material:48>, <extendedcrafting:material:48>, <ae2wtlib:wut_creative>.reuse(), <extendedcrafting:material:48>, <extendedcrafting:material:48>, <ore:ingotInfinity>, <threng:material:14>], 
	[<threng:material:14>, <extendedcrafting:material:48>, <techreborn:quantum_chest>, <techreborn:quantum_chest>, <techreborn:quantum_chest>, <techreborn:quantum_chest>, <techreborn:quantum_chest>, <extendedcrafting:material:48>, <threng:material:14>], 
	[<threng:material:14>, <extendedcrafting:material:48>, <techreborn:quantum_chest>, <extracells:storage.component:3>, <extracells:storage.component:3>, <extracells:storage.component:3>, <techreborn:quantum_chest>, <extendedcrafting:material:48>, <threng:material:14>], 
	[<threng:material:14>, <mekanism:machineblock2:11>.withTag({tier: 4}).reuse(), <techreborn:quantum_chest>, <extracells:storage.component:3>, <storagedrawers:upgrade_creative>, <extracells:storage.component:3>, <techreborn:quantum_chest>, <randomthings:spectrecoil_genesis>.reuse(), <threng:material:14>], 
	[<threng:material:14>, <extendedcrafting:material:48>, <techreborn:quantum_chest>, <extracells:storage.component:3>, <extracells:storage.component:3>, <extracells:storage.component:3>, <techreborn:quantum_chest>, <extendedcrafting:material:48>, <threng:material:14>], 
	[<threng:material:14>, <extendedcrafting:material:48>, <techreborn:quantum_chest>, <techreborn:quantum_chest>, <techreborn:quantum_chest>, <techreborn:quantum_chest>, <techreborn:quantum_chest>, <extendedcrafting:material:48>, <threng:material:14>], 
	[<threng:material:14>, <ore:ingotInfinity>, <extendedcrafting:material:48>, <extendedcrafting:material:48>, <botania:pool:1>.reuse(), <extendedcrafting:material:48>, <extendedcrafting:material:48>, <ore:ingotInfinity>, <threng:material:14>], 
	[<threng:material:14>, <threng:material:14>, <threng:material:14>, <threng:material:14>, <threng:material:14>, <threng:material:14>, <threng:material:14>, <threng:material:14>, <threng:material:14>]
]);
recipes.addShapeless(<appliedenergistics2:creative_storage_cell>, [<storagedrawers:upgrade_creative:1>]);
recipes.addShapeless(<storagedrawers:upgrade_creative:1>, [<appliedenergistics2:creative_storage_cell>]);


//Creative Storage
mods.extendedcrafting.TableCrafting.addShaped(0, <storagedrawers:upgrade_creative>, [
	[<appliedenergistics2:material:47>, <actuallyadditions:block_giant_chest_large>, <mekanism:basicblock:6>.withTag({tier: 3}), <actuallyadditions:block_giant_chest_large>, <appliedenergistics2:material:47>], 
	[<actuallyadditions:block_giant_chest_large>, <storagedrawers:upgrade_storage:4>, <storagedrawers:upgrade_storage:4>, <storagedrawers:upgrade_storage:4>, <actuallyadditions:block_giant_chest_large>], 
	[<mekanism:basicblock:6>.withTag({tier: 3}), <storagedrawers:upgrade_storage:4>, <extendedcrafting:material:13>, <storagedrawers:upgrade_storage:4>, <mekanism:basicblock:6>.withTag({tier: 3})], 
	[<actuallyadditions:block_giant_chest_large>, <storagedrawers:upgrade_storage:4>, <storagedrawers:upgrade_storage:4>, <storagedrawers:upgrade_storage:4>, <actuallyadditions:block_giant_chest_large>], 
	[<appliedenergistics2:material:47>, <actuallyadditions:block_giant_chest_large>, <mekanism:basicblock:6>.withTag({tier: 3}), <actuallyadditions:block_giant_chest_large>, <appliedenergistics2:material:47>]
]);


/*mods.qmd.target_chamber.addRecipe(IIngredient inputItem, IIngredient inputParticle, IIngredient outputItem, IIngredient outputParticle1, IIngredient outputParticle2, IIngredient outputParticle3, long maxEnergy, double crossSection, {long energyReleased, double processRadiation})
Note: the input particles amount is the amount of particles needed to convert the item, Its energy is the minimum energy and its focus is the minimum focus. The output particles amount is the max amount/t released per input particle/t. The convention(i.e not required but recommended) is that positive particles are in outputParticle1, neutral particles in outputParticle2 and negitive particles in outputParticle3. This is because outputParticle2 can't be steered so will always come out the back of the chamber.
*/

mods.qmd.target_chamber.addRecipe(<extendedcrafting:material>, ((<particle:neutron>*1000000)^50000)~2.0, <avaritia:resource:4>, 
null, null, null, 53000, 0.28, -100000, 0.001);

mods.extendedcrafting.CombinationCrafting.addRecipe(<minecraft:bedrock>, 100000000, <avaritia:block_resource:1>, 
[<enderio:block_infinity:2>,<enderio:block_infinity:2>,<enderio:block_infinity:2>,<enderio:block_infinity:2>,
<enderio:block_infinity:2>,<enderio:block_infinity:2>,<enderio:block_infinity:2>,<enderio:block_infinity:2>,
<enderio:block_infinity:2>,<enderio:block_infinity:2>,<enderio:block_infinity:2>,<enderio:block_infinity:2>,
<enderio:block_infinity:2>,<enderio:block_infinity:2>,<enderio:block_infinity:2>,<enderio:block_infinity:2>]);

##########################################################################################
print("==================== end of creative biz.zs ====================");
