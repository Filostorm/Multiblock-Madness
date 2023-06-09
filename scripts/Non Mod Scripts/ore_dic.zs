import crafttweaker.item.IItemStack;
import crafttweaker.oredict.IOreDict;

import crafttweaker.item.IIngredient;
import crafttweaker.oredict.IOreDictEntry;
import mods.nuclearcraft.AlloyFurnace;
import mods.nuclearcraft.Infuser;
import mods.nuclearcraft.Enricher;
import mods.nuclearcraft.IngotFormer;
import mods.nuclearcraft.Manufactory;
import mods.nuclearcraft.Melter;
import mods.nuclearcraft.DecayHastener;
import mods.nuclearcraft.FissionIrradiator;
import mods.jei.JEI;

#priority 101

print("==================== loading ore_dic.zs ====================");
##########################################################################################

<ore:plateVoid>.remove(<moreplates:void_plate>);
<ore:dustWood>.add(<techreborn:dust:46>);

<ore:dustWheat>.addAll(<ore:foodFlour>);
<ore:dustSaltpeter>.addAll(<ore:dustNiter>);

<ore:oreVoidstone>.add(<chisel:voidstone>);
<ore:basicBasalt>.add(<quark:basalt>);
<ore:basicLimestone>.add(<quark:limestone>);
<ore:basicMarble>.add(<astralsorcery:blockmarble>);


<ore:skyStone>.add(<appliedenergistics2:sky_stone_block>);

<ore:dustEnderPearl>.remove(<techreborn:dust:20>);
<ore:dustEnder>.add(<techreborn:dust:20>);
<ore:dustEnder>.add(<enderore:dust_ender>);

//Should fix wrong ore output in places
<ore:oreUranium>.remove(<immersiveengineering:ore:5>);

//<ore:NeutronPile>.add(<avaritia:resource:2>);
/*
<ore:circuitBasic>.add(<thaumcraft:mechanism_simple>);
<ore:circuitAdvanced>.add(<thaumcraft:mechanism_complex>);
*/
<ore:circuitBasic>.add(<thaumcraft:mechanism_complex>);

//AR Circuits are cool!
<ore:circuitBasic>.add(<advancedrocketry:ic>);
<ore:circuitAdvanced>.add(<advancedrocketry:ic:2>);

val tierOnePlate =
[
<thermalfoundation:material:32>,
<thermalfoundation:material:33>,
<thermalfoundation:material:320>,
<thermalfoundation:material:325>,
<thermalfoundation:material:321>,
<thermalfoundation:material:322>,
<thermalfoundation:material:323>,
]
 as IItemStack[];
for item in tierOnePlate {
<ore:tierOnePlate>.add(item);
}

val tierTwoPlate =
[
<thermalfoundation:material:353>,
<thermalfoundation:material:354>,
<thermalfoundation:material:355>,
<thermalfoundation:material:356>,
]
 as IItemStack[];
for item in tierTwoPlate {
<ore:tierTwoPlate>.add(item);
}

val Eww =
[
<tconstruct:slimesling>,
<tconstruct:slimesling:1>,
<tconstruct:slimesling:2>,
<tconstruct:slimesling:3>,
<tconstruct:slimesling:4>,
<tconstruct:slimesling:5>,
]
 as IItemStack[];
for item in Eww {
<ore:Eww>.add(item);
}

val pressurePlateWood =
[
<natura:maple_pressure_plate>,
<natura:silverbell_pressure_plate>,
<natura:amaranth_pressure_plate>,
<natura:tiger_pressure_plate>,
<natura:willow_pressure_plate>,
<natura:eucalyptus_pressure_plate>,
<natura:hopseed_pressure_plate>,
<natura:sakura_pressure_plate>,
<natura:ghostwood_pressure_plate>,
<natura:bloodwood_pressure_plate>,
<natura:fusewood_pressure_plate>,
<natura:darkwood_pressure_plate>,
<natura:redwood_pressure_plate>,
]
 as IItemStack[];
for item in pressurePlateWood {
<ore:pressurePlateWood>.add(item);
}
recipes.addShapeless(<minecraft:wooden_pressure_plate>, [<ore:pressurePlateWood>]);

<ore:ingotChocolate>.remove(<xlfoodmod:chocolate>);

<ore:ingotCopper>.add(<mysticalworld:copper_ingot>);

<ore:ingotSilver>.add(<mysticalworld:silver_ingot>);

<ore:dustPhosphorous>.remove(<techreborn:dust:37>);
<ore:dustPhosphorus>.add(<techreborn:dust:37>);

//<ore:lapotronCrystal>.add(<contenttweaker:lazurite_gem>);

//<ore:componentComputerChip>.add(<qmd:semiconductor:6>);
//<ore:stickInvar>.add(<tconstruct:tool_rod>.withTag({Material: "invar"}));


<ore:oreEnderEssence>.add(<utilitybaseores:ender_ore>);

<ore:blockWarpCoreRim>.add(<techreborn:storage:2>);

<ore:waferSilicon>.add(<qmd:semiconductor:3>);
<ore:siliconWafer>.add(<advancedrocketry:wafer>);

//Item is removed
//<ore:foodChocolatebar>.remove(<xlfoodmod:chocolate>);


<ore:hotStuff>.add(<twilightforest:fiery_tears>);
<ore:hotStuff>.add(<twilightforest:fiery_blood>);
<ore:hotStuff>.add(<iceandfire:fire_dragon_blood>);

val listAllmeatraw =
[
<minecraft:chicken>,
<minecraft:rabbit>,
<minecraft:porkchop>,
<minecraft:beef>,
<minecraft:mutton>,
<minecraft:rotten_flesh>,
]
 as IItemStack[];
for item in listAllmeatraw {
<ore:listAllmeatraw>.add(item);
}

val pristineMatter =
[
<deepmoblearning:pristine_matter_zombie>,
<deepmoblearning:pristine_matter_skeleton>,
<deepmoblearning:pristine_matter_creeper>,
<deepmoblearning:pristine_matter_slime>,
<deepmoblearning:pristine_matter_spider>,
<deepmoblearning:pristine_matter_guardian>,
<deepmoblearning:pristine_matter_thermal_elemental>,
<deepmoblearning:pristine_matter_tinker_slime>,
<deepmoblearning:pristine_matter_twilight_forest>,
<deepmoblearning:pristine_matter_twilight_swamp>,
<deepmoblearning:pristine_matter_twilight_darkwood>,
<deepmoblearning:pristine_matter_twilight_glacier>,
<deepmoblearning:pristine_matter_slime>,
<deepmoblearning:pristine_matter_witch>,
<deepmoblearning:pristine_matter_blaze>,
<deepmoblearning:pristine_matter_ghast>,
<deepmoblearning:pristine_matter_wither_skeleton>,
<deepmoblearning:pristine_matter_enderman>,
<deepmoblearning:pristine_matter_wither>,
<deepmoblearning:pristine_matter_dragon>,
<deepmoblearning:pristine_matter_shulker>,
]
 as IItemStack[];
for item in pristineMatter {
<ore:pristineMatter>.add(item);
}

val dustElemental =
[
<thermalfoundation:material:1024>,
<thermalfoundation:material:1025>,
<thermalfoundation:material:1026>,
<thermalfoundation:material:1027>,
]
 as IItemStack[];
for item in dustElemental {
<ore:dustElemental>.add(item);
}



<ore:CelestialCrystal>.add(<contenttweaker:stable_celestial_crystal>);
<ore:CelestialCrystal>.add(<astralsorcery:itemcelestialcrystal>);

<ore:oreAmethest>.add(<mysticalworld:amethyst_ore>);

<ore:concrete>.add(<minecraft:concrete>);

<ore:dustCinnabar>.add(<thermalfoundation:material:866>);
<ore:quicksilver>.add(<qmd:ingot2:2>);


<ore:ingotInert>.add(<contenttweaker:inert_ingot>);

<ore:ingotAdaptive>.add(<contenttweaker:adaptive_ingot>);

// Removing oredict from hidden items
<ore:ingotTungsten>.remove(<qmd:ingot>);

val bricksForMixer =
[
<embers:archaic_bricks>,
<embers:ashen_brick>,
<embers:block_caminite_brick>,
]
 as IItemStack[];
for item in bricksForMixer {
<ore:bricksForMixer>.add(item);
}

//Smingot for turbine
<ore:ingotSmore>.add(<nuclearcraft:moresmore>);

val softGlass =
[
<thermalfoundation:glass_alloy:1>,
<thermalfoundation:glass_alloy:2>,
<thermalfoundation:glass_alloy:3>,
<thermalfoundation:glass_alloy:4>,
<thermalfoundation:glass_alloy:5>,
<thermalfoundation:glass_alloy>,
<thermalfoundation:glass>,
<thermalfoundation:glass:1>,
<thermalfoundation:glass:2>,
<thermalfoundation:glass:4>,
<thermalfoundation:glass:5>,
<thermalfoundation:glass:6>,
<thermalfoundation:glass:8>,
]
 as IItemStack[];
for item in softGlass {
<ore:blockGlassHardened>.remove(item);
	mods.jei.JEI.removeAndHide(item);
}

val hiddenGlass =
[
<thermalfoundation:glass:7>,
<thermalfoundation:glass_alloy:6>,
<thermalfoundation:glass_alloy:7>,
]
 as IItemStack[];
for item in hiddenGlass {
<ore:blockGlassHardened>.remove(item);
}

<ore:blockGlassHardened>.add(<thermalfoundation:glass:3>);

//TSN880's Techreborn battery oredicts
<ore:energyCrystalReplacement>.add(<techreborn:energycrystal>);
<ore:energyCrystalReplacement>.add(<contenttweaker:inactive_energy_crystal>);
<ore:cloakingDeviceReplacement>.add(<techreborn:cloakingdevice>);
<ore:cloakingDeviceReplacement>.add(<contenttweaker:inactive_cloaking_device>);
<ore:lapotronCrystalReplacement>.add(<techreborn:lapotroncrystal>);
<ore:lapotronCrystalReplacement>.add(<contenttweaker:inactive_lapotron_crystal>);
<ore:lapotronicOrbReplacement>.add(<techreborn:lapotronicorb>);
<ore:lapotronicOrbReplacement>.add(<contenttweaker:inactive_lapotronic_orb>);
<ore:trbatteryReplacement>.add(<techreborn:rebattery>);
<ore:trbatteryReplacement>.add(<contenttweaker:inactive_trbattery>);
<ore:lithiumBatteryReplacement>.add(<techreborn:lithiumbattery>);
<ore:lithiumBatteryReplacement>.add(<contenttweaker:inactive_lithium_battery>);
<ore:mekTabletReplacement>.add(<mekanism:energytablet>);
<ore:mekTabletReplacement>.add(<contenttweaker:inactive_energy_tablet>);

<ore:stickConductiveIron>.add(<contenttweaker:rod_conductive_iron>);
<ore:stickDawnstone>.add(<contenttweaker:rod_dawnstone>);
<ore:stickModularium>.add(<contenttweaker:rod_modularium>);
<ore:stickHeavyAlloy>.add(<contenttweaker:rod_mek_alloy>);
<ore:stickThermalAlloy>.add(<contenttweaker:rod_thermal_alloy>);
<ore:stickNimonic>.add(<contenttweaker:rod_nimonic>);
<ore:stickVanasteel>.add(<contenttweaker:rod_vanasteel>);
<ore:stickScal>.add(<contenttweaker:rod_scal>);
<ore:stickBam>.add(<contenttweaker:rod_bam>);

<ore:gearHeavyAlloy>.add(<contenttweaker:gear_mek_alloy>);
<ore:gearThermalAlloy>.add(<contenttweaker:gear_thermal_alloy>);
<ore:gearModularium>.add(<contenttweaker:gear_modularium>);

<ore:ingotHeavyAlloy>.add(<contenttweaker:ingot_mek_alloy>);
<ore:ingotThermalAlloy>.add(<contenttweaker:ingot_thermal_alloy>);
<ore:ingotModularium>.add(<modularmachinery:itemmodularium>);

<ore:plateHeavyAlloy>.add(<contenttweaker:plate_mek_alloy>);
<ore:plateThermalAlloy>.add(<contenttweaker:plate_thermal_alloy>);
<ore:plateModularium>.add(<contenttweaker:plate_modularium>);

<ore:blockIronwood>.add(<twilightforest:block_storage>);
<ore:blockAstralStarmetal>.add(<contenttweaker:starmetal_block>);
<ore:blockRefinedIron>.add(<techreborn:storage2:10>);
<ore:blockTerrasteel>.add(<botania:storage:1>);
<ore:blockThermalAlloy>.add(<contenttweaker:block_thermal_alloy>);

<ore:foodMeat>.add(<mysticalworld:venison>);
<ore:foodMeat>.add(<twilightforest:raw_meef>);
<ore:listAllmeatraw>.add(<twilightforest:raw_meef>);

<ore:tar>.add(<thermalfoundation:material:833>);

<ore:gemSapphire>.remove(<iceandfire:sapphire_gem>);
<ore:gemRuby>.remove(<treasure2:ruby>);
<ore:ruby>.remove(<treasure2:ruby>);
// <ore:oreSapphire>.remove(<iceandfire:sapphire_ore>);
<ore:gemSapphire>.remove(<treasure2:sapphire>);
<ore:sapphire>.remove(<treasure2:sapphire>);

<ore:blockSapphire>.remove(<iceandfire:sapphire_block>);

val scaffoldinglist = {
	<ore:scaffoldingVanasteel>:<contenttweaker:vanasteel_scaffolding>,
	<ore:scaffoldingScal>:<contenttweaker:scal_scaffolding>,
	<ore:scaffoldingBam>:<contenttweaker:bam_scaffolding>,
	<ore:scaffoldingNimonic>:<contenttweaker:nimonic_scaffolding>,
	<ore:scaffoldingInvar>:<contenttweaker:invar_scaffolding>,
	<ore:scaffoldingIronwood>:<contenttweaker:ironwood_scaffolding>,
	<ore:scaffoldingThermalAlloy>:<contenttweaker:scaffolding_thermal_alloy>,
	<ore:scaffoldingHeavyAlloy>:<contenttweaker:scaffolding_mek_alloy>,
} as IItemStack[IOreDictEntry];

for ore, scaf in scaffoldinglist {
	ore.add(scaf);
}


// Thanks to FishingPole and NCEIB for the additional blocks and ingots!

var oreEntries = ["blockManganeseOxide", "blockManganeseDioxide", "blockFerroboron", "blockHardCarbon", "blockThermoconducting", "blockExtreme",
"blockHSLASteel", "blockSiliconCarbide", "blockSiCSiCCMC", "blockLeadPlatinum", "blockTinSilver", 
"blockLithiumManganeseDioxide", "blockMagnesiumDiboride", "blockZirconiumMolybdenum", "blockMolybdenum", "blockBoronArsenide",
"blockBoronNitride", "blockCarobbiite", "blockFluorite", "blockSilicon", "blockRhodochrosite", "blockVilliaumite", "blockBismuth",
"blockCaesium137", "blockEuropium155", "blockPolonium", "blockPromethium147", "blockProtactinium233", "blockRadium", "blockRuthenium106", "blockTBP",
"blockCarbonManganese", "blockCalcium", "blockHafnium", "blockNeodymium", "blockNiobium", "blockPotassium", "blockSodium",
"blockYttrium", "blockStainlessSteel", "blockNiobiumTin", "blockNiobiumTitanium", "blockTungstenCarbide", "blockSuperAlloy",
"blockErbium", "blockIodine", "blockSamarium", "blockTerbium", "blockYtterbium",
"blockVanadium", "blockCarbon", "blockAdvancedAlloy", "blockModularium"] as string[];

var oreBlocks = { <ore:blockManganeseOxide>: <nuclearcraft:ingot_block:14>, <ore:blockManganeseDioxide>: <nuclearcraft:ingot_block:15>,
<ore:blockFerroboron>: <contenttweaker:ferroboronblock>, 
<ore:blockHardCarbon>: <contenttweaker:hardcarbonblock>, <ore:blockThermoconducting>: <contenttweaker:thermoconductingblock>, 
<ore:blockExtreme>: <contenttweaker:extremeblock>, <ore:blockHSLASteel>: <contenttweaker:hslasteelblock>, <ore:blockSiliconCarbide>: <contenttweaker:sicblock>,
<ore:blockSiCSiCCMC>: <contenttweaker:sicsiccmcblock>, <ore:blockLeadPlatinum>: <contenttweaker:leadplatinumblock>,
<ore:blockTinSilver>: <contenttweaker:tinsilverblock>, 
<ore:blockLithiumManganeseDioxide>: <contenttweaker:limno2block>, <ore:blockMagnesiumDiboride>: <contenttweaker:mgb2block>, 
<ore:blockZirconiumMolybdenum>: <contenttweaker:zrmoblock>, <ore:blockMolybdenum>: <contenttweaker:moblock>, <ore:blockBoronArsenide>: <contenttweaker:basblock>,
<ore:blockBoronNitride>: <contenttweaker:bnblock>, <ore:blockCarobbiite>: <contenttweaker:carobblock>, <ore:blockFluorite>: <contenttweaker:fluorblock>,
<ore:blockSilicon>: <contenttweaker:siblock>, <ore:blockRhodochrosite>: <contenttweaker:rhodoblock>, <ore:blockVilliaumite>: <contenttweaker:villiblock>,
<ore:blockBismuth>: <contenttweaker:biblock>, <ore:blockCaesium137>: <contenttweaker:cs137block>,
<ore:blockEuropium155>: <contenttweaker:eu155block>, <ore:blockPolonium>: <contenttweaker:poblock>, <ore:blockPromethium147>: <contenttweaker:pm147block>,
<ore:blockProtactinium233>: <contenttweaker:pa233block>, <ore:blockRadium>: <contenttweaker:rablock>, <ore:blockRuthenium106>: <contenttweaker:ru106block>,
<ore:blockTBP>: <contenttweaker:tbpblock>, <ore:blockCarbonManganese>: <contenttweaker:cmnblock>,
<ore:blockCalcium>: <contenttweaker:cablock>, <ore:blockHafnium>: <contenttweaker:hfblock>,
<ore:blockNeodymium>: <contenttweaker:ndblock>, <ore:blockNiobium>: <contenttweaker:nbblock>, <ore:blockPotassium>: <contenttweaker:kblock>, 
<ore:blockSodium>: <contenttweaker:nablock>, <ore:blockYttrium>: <contenttweaker:yblock>,
<ore:blockStainlessSteel>: <contenttweaker:cfecrblock>, 
<ore:blockNiobiumTin>: <contenttweaker:nbsnblock>, <ore:blockNiobiumTitanium>: <contenttweaker:nbtiblock>, 
<ore:blockTungstenCarbide>: <contenttweaker:wcblock>, 
<ore:blockSuperAlloy>: <contenttweaker:superalloyblock>, <ore:blockErbium>: <contenttweaker:erblock>,
<ore:blockIodine>: <contenttweaker:iblock>, <ore:blockSamarium>: <contenttweaker:smblock>, <ore:blockTerbium>: <contenttweaker:tbblock>,
<ore:blockYtterbium>: <contenttweaker:ybblock>,
<ore:blockVanadium>: <contenttweaker:vanadiumblock>, <ore:blockCarbon>: <contenttweaker:carbonblock>, 
<ore:blockAdvancedAlloy>: <contenttweaker:advancedalloyblock>, <ore:blockModularium>: <contenttweaker:modulariumblock>} as IItemStack[IOreDictEntry];

for entry in oreEntries {
	oreDict.entry;
	}
	
for oreName, oreBlock in oreBlocks {
	oreName.add(oreBlock);
	}


oreDict.gemSilicon;
<ore:gemSilicon>.add(<nuclearcraft:gem:6>);

var oreEntriesIngots = ["ingotBismuth", "ingotCaesium137", "ingotEuropium155", "ingotPolonium", "ingotPromethium147",
"ingotProtactinium233", "ingotRadium", "ingotRuthenium106", "ingotTBP", "ingotCarbonManganese",
"ingotErbium", "ingotIodine", "ingotSamarium", "ingotTerbium", "ingotYtterbium"] as string[];

var oreIngots = { <ore:ingotBismuth>: <contenttweaker:biingot>, <ore:ingotCaesium137>: <contenttweaker:cs137ingot>, <ore:ingotEuropium155>: <contenttweaker:eu155ingot>,
<ore:ingotPolonium>: <contenttweaker:poingot>, <ore:ingotPromethium147>: <contenttweaker:pm147ingot>, <ore:ingotProtactinium233>: <contenttweaker:pa233ingot>,
<ore:ingotRadium>: <contenttweaker:raingot>, <ore:ingotRuthenium106>: <contenttweaker:ru106ingot>, <ore:ingotTBP>: <contenttweaker:tbpingot>,
<ore:ingotCarbonManganese>: <contenttweaker:cmningot>,<ore:ingotErbium>: <contenttweaker:eringot>, <ore:ingotIodine>: <contenttweaker:iingot>, 
<ore:ingotSamarium>: <contenttweaker:smingot>, <ore:ingotTerbium>: <contenttweaker:tbingot>, <ore:ingotYtterbium>: <contenttweaker:ybingot>} as IItemStack[IOreDictEntry];

for entry in oreEntriesIngots {
	oreDict.entry;
}
	
for oreName, oreIngot in oreIngots {
	oreName.add(oreIngot);
}

##########################################################################################
print("==================== end of ore_dic.zs ====================");
