import crafttweaker.item.IItemStack;
import crafttweaker.oredict.IOreDict;

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


//<ore:NeutronPile>.add(<avaritia:resource:2>);
/*
<ore:circuitBasic>.add(<thaumcraft:mechanism_simple>);
<ore:circuitAdvanced>.add(<thaumcraft:mechanism_complex>);
*/
<ore:circuitBasic>.add(<thaumcraft:mechanism_complex>);


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

<ore:componentComputerChip>.add(<qmd:semiconductor:6>);
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
<thermalfoundation:glass>,
<thermalfoundation:glass:7>,
<thermalfoundation:glass_alloy:6>,
<thermalfoundation:glass_alloy:7>,
]
 as IItemStack[];
for item in hiddenGlass {
<ore:blockGlassHardened>.remove(item);
}

<ore:blockGlassHardened>.add(<thermalfoundation:glass:3>);

##########################################################################################
print("==================== end of ore_dic.zs ====================");
