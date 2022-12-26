import mods.immersiveengineering.Excavator;
import mods.immersiveengineering.MineralMix;
import crafttweaker.item.IItemStack;
import crafttweaker.oredict.IOreDict;
import mods.immersiveengineering.Crusher;
import mods.tconstruct.Melting;
import mods.immersivepetroleum.Reservoir;
import crafttweaker.item.IIngredient;
import mods.thaumcraft.Infusion;
import mods.immersiveengineering.Blueprint;
import mods.immersiveengineering.BlastFurnace;
import mods.immersiveengineering.Refinery;

print("==================== loading immersive.zs ====================");
##########################################################################################
	
# *======= Recipes =======*


val removerecipes =
[   
<immersiveengineering:metal_device1:2>,
<immersiveengineering:tool>,
<immersiveengineering:blueprint>.withTag({blueprint: "components"}),
<immersiveengineering:metal_device1:13>,
<immersiveengineering:metal_device0:2>,
<immersiveengineering:metal_device0:1>,
<immersiveengineering:metal_device0>,
<techreborn:part:29>,
<techreborn:part:30>,
<immersiveengineering:metal_device1:3>,
<immersiveengineering:connector:3>,
<immersiveengineering:connector:2>,
<immersiveengineering:metal_device1:5>,
<immersiveengineering:stone_decoration>,
<immersiveengineering:material:8>,
<immersiveengineering:material:9>,
]
as IItemStack[];
for item in removerecipes {
    recipes.remove(item);
}

//*======= Excavator Veins =======*

val removeMinerals = [
	"Bauxite",
	"Cassiterite",
	"Coal",
	"Copper",
	"Cinnabar",
	"Silt",
	"Galena",
	"Gold",
	"Iron",
	"Lapis",
	"Lead",
	"Magnetite",
	"Nickel",
	"Platinum",
	"Pyrite",
	"Quarzite ",
	"Quartzite",
	"Silver",
	"Uranium"
]
as string[];

for item in removeMinerals {
	Excavator.removeMineral(item);
}

//mods.immersiveengineering.Excavator.addMineral(String name, int mineralWeight, double failChance, String[] ores, double[] chances, @Optional int[] dimensionWhitelist, @Optional boolean blacklist);

Excavator.addMineral("Bauxite", 15, 0, ["oreBauxite", "oreAluminum", "oreRutile", "oreUninspected"], [70, 19, 9, 2], [0, 10]);
Excavator.addMineral("Cassiterite", 20, 0, ["oreTin", "oreUninspected"], [98, 2], [0, 10]);
Excavator.addMineral("Coal", 20, 0, ["oreCoal", "oreDiamond", "oreEmerald", "oreUninspected"], [95, 1.5, 1.5, 2], [0, 10]);
Excavator.addMineral("Copper", 20, 0, ["oreCopper", "oreGold", "oreNickel", "oreUninspected"], [67, 26, 6, 1], [0, 10]);
Excavator.addMineral("Rare Earth", 15, 0.01, ["oreUninspected", "oreDiamond"], [85, 15], [0, 10]);
Excavator.addMineral("Silt", 15, 0, ["blockClay", "sand", "gravel"], [50, 30, 20], [0]);
Excavator.addMineral("Galena", 10, 0, ["oreGalena", "oreSilver", "oreLead", "oreUninspected"], [51, 19, 28, 2], [0, 10]);
Excavator.addMineral("Silver", 10, 0, ["oreGalena", "oreSilver", "oreLead", "oreUninspected"], [12, 71, 15, 2], [0, 10]);
Excavator.addMineral("Lead", 10, 0, ["oreGalena", "oreSilver", "oreLead", "oreUninspected"], [22, 13, 64, 1], [0, 10]);

Excavator.addMineral("Iron", 20, 0, ["oreIron", "oreNickel", "oreTin", "oreUninspected"], [58, 21, 20, 1], [0, 10]);
Excavator.addMineral("Lapis", 15, 0, ["oreLapis", "oreIron", "oreUninspected"], [69, 30, 1], [0, 10]);
Excavator.addMineral("Magnetite", 15, 0, ["oreIron", "oreGold", "oreUninspected"], [83, 15, 2], [0, 10]);
Excavator.addMineral("Nickel", 15, 0, ["oreNickel", "orePlatinum", "oreIron", "oreUninspected"], [80, 5, 14, 1], [0, 10]);
Excavator.addMineral("Uranium", 10, 0, ["oreUranium", "oreLead", "oreBoron", "oreThorium", "oreUninspected"], [55, 24, 10, 10, 1], [0, 10]);

//Excavator.addMineral("Lithium", 10, 0, ["oreLithium", "oreMagnesium", "oreUninspected"], [55, 44, 1], [0]);

Excavator.addMineral("Raw Stone", 10, 0, ["basicLimestone", "basicMarble", "basicBasalt", "stoneGranite", "stoneDiorite", "stoneAndesite"], [15, 15, 15, 20, 20, 20], [0]);


Excavator.addMineral("Cinnabar", 15, 0, ["oreRedstone", "oreCinnabar", "oreRuby", "oreUninspected"], [67, 26, 6, 1], [-1, 0]);
Excavator.addMineral("Quarzite", 15, 0, ["oreQuartz", "oreCertusQuartz", "oreQuartzBlack", "oreChargedCertusQuartz",], [40, 41, 14, 5], [-1, 0]);

// Beneath
Excavator.addMineral("Osmium", 15, 0, ["oreOsmium", "orePlatinum", "oreGold", "oreUninspected"], [56, 20, 20, 4], [10]);
Excavator.addMineral("Platinum", 15, 0.01, ["orePlatinum", "oreNickel", "oreOsmium", "oreUninspected"], [64, 20, 14, 1], [10]);

Excavator.addMineral("Gold", 15, 0, ["oreGold", "oreCopper", "oreNickel", "oreEnder","oreUninspected"], [67, 22, 6, 4, 1], [10]);
Excavator.addMineral("Voidstone", 15, 0, ["oreGold", "oreIron", "oreVoidstone", "oreOsmium", "oreUninspected"], [45, 40, 5, 8, 2], [10]);
// Nether
Excavator.addMineral("Pyrite", 15, 0, ["orePyrite", "oreSphalerite","oreIron", "oreUninspected"], [65, 19, 15, 1], [-1]);
Excavator.addMineral("Sphalerite", 15, 0, ["oreSphalerite", "orePyrite", "oreIron", "oreUninspected"], [63, 26, 10, 1], [-1]);
//<ore:oreClathrateGlowstone>

<rockhounding_chemistry:uninspected_mineral>.addTooltip(format.gray("Can also be found in Excavator Veins"));
<chisel:voidstone>.addTooltip(format.gray("Can also be found in Excavator Veins"));



/* Moved to Config
Reservoir.registerReservoir("MoltenGold", <liquid:gold>, 216000, 288000, 144, 60, [], [10], ["none"], ["all"]);
Reservoir.registerReservoir("MoltenIron", <liquid:iron>, 216000, 288000, 144, 60, [], [10], ["none"], ["all"]);
Reservoir.registerReservoir("MoltenNickel", <liquid:nickel>, 216000, 288000, 144, 60, [], [10], ["none"], ["all"]);
Reservoir.registerReservoir("MoltenTin", <liquid:tin>, 216000, 288000, 144, 60, [], [10], ["none"], ["all"]);
Reservoir.registerReservoir("Moltencopper", <liquid:copper>, 216000, 288000, 144, 60, [], [10], ["none"], ["all"]);
Reservoir.registerReservoir("Moltensilver", <liquid:silver>, 216000, 288000, 144, 60, [], [10], ["none"], ["all"]);
Reservoir.registerReservoir("Moltenlead", <liquid:lead>, 216000, 288000, 144, 60, [], [10], ["none"], ["all"]);
Reservoir.registerReservoir("Moltenpyrotheum", <liquid:pyrotheum>, 187500, 250000, 250, 60, [], [10], ["none"], ["all"]);
Reservoir.registerReservoir("Moltencryotheum", <liquid:cryotheum>, 187500, 250000, 250, 60, [], [10], ["none"], ["all"]);
Reservoir.registerReservoir("Moltenaerotheum", <liquid:aerotheum>, 187500, 250000, 250, 60, [], [10], ["none"], ["all"]);
Reservoir.registerReservoir("Moltenpetrotheum", <liquid:petrotheum>, 187500, 250000, 250, 60, [], [10], ["none"], ["all"]);
*/

// Coke bricks
recipes.addShaped(<immersiveengineering:stone_decoration> * 3, [[<enderio:item_material:22>, <tconstruct:materials>, <enderio:item_material:22>],[<tconstruct:materials>, <ore:sandstone>, <tconstruct:materials>], [<enderio:item_material:22>, <tconstruct:materials>, <enderio:item_material:22>]]);


// Engineer's Hammer
recipes.addShaped(<immersiveengineering:tool>, [[null, <thermalfoundation:material:162>, <immersiveengineering:material:4>],[null, <ore:stickWood>, <thermalfoundation:material:162>], [<ore:stickWood>, null, null]]);

// Charging Station
recipes.addShaped(<immersiveengineering:metal_device1:5>, [[<thermalfoundation:material:32>, <immersiveengineering:connector>, <thermalfoundation:material:32>],[<ore:blockGlassColorless>, <ore:blockGlassColorless>, <ore:blockGlassColorless>], [<ore:plankTreatedWood>, <immersiveengineering:metal_decoration0>, <ore:plankTreatedWood>]]);


// Garden Cloche
recipes.addShaped(<immersiveengineering:metal_device1:13>, [[<ore:blockGlassColorless>, <immersiveengineering:material:26>, <ore:blockGlassColorless>],[<ore:blockGlassColorless>, null, <ore:blockGlassColorless>], [<ore:plankTreatedWood>, <immersiveengineering:material:9>, <ore:plankTreatedWood>]]);


recipes.addShaped(<immersiveengineering:metal_decoration0:6> * 2, [[<thermalfoundation:material:352>, <immersiveengineering:wirecoil:1>, <thermalfoundation:material:352>],[<immersiveengineering:wirecoil:1>, <immersiveengineering:metal_device1:2>, <immersiveengineering:wirecoil:1>], [<thermalfoundation:material:352>, <immersiveengineering:wirecoil:1>, <thermalfoundation:material:352>]]);

// Radiator Blocks
recipes.addShaped(<immersiveengineering:metal_decoration0:7> * 3, [[<thermalfoundation:material:352>, <contenttweaker:tarred_ingot>, <thermalfoundation:material:352>],[<contenttweaker:tarred_ingot>, <bloodmagic:blood_rune:1>, <contenttweaker:tarred_ingot>], [<thermalfoundation:material:352>, <contenttweaker:tarred_ingot>, <thermalfoundation:material:352>]]);


// Tar
furnace.addRecipe(<thermalfoundation:material:833>, <immersivepetroleum:material>, 0.0);

val heavyGears as IIngredient = (<mystgears:gear_thaumium>|<moreplates:ironwood_gear>) as IIngredient;

// Orb recipes
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

/*
//Light block
recipes.addShaped(<immersiveengineering:metal_decoration0:4>*3, [
	[<immersiveengineering:material:8>, <thermalfoundation:material:291>, <immersiveengineering:material:8>],
	[<moreplates:constantan_stick>, bloodOrbLeast[0].reuse(), <moreplates:constantan_stick>], 
	[<immersiveengineering:material:8>, <moreplates:ardite_gear>, <immersiveengineering:material:8>]]);
*/

//Light block
recipes.addShaped(<immersiveengineering:metal_decoration0:4>*3, [
	[<immersiveengineering:material:8>, <thermalfoundation:material:291>, <immersiveengineering:material:8>],
	[<moreplates:constantan_stick>, <bloodmagic:slate>, <moreplates:constantan_stick>], 
	[<immersiveengineering:material:8>, <moreplates:ardite_gear>, <immersiveengineering:material:8>]]);

/*
//Heavy Block
recipes.addShaped(<immersiveengineering:metal_decoration0:5>*3, [
	[<immersiveengineering:material:9>, <moreplates:cobalt_gear>, <immersiveengineering:material:9>],
	[heavyGears, <bloodmagic:slate:1>, heavyGears], 
	[<immersiveengineering:material:9>, <prefab:block_compressed_obsidian>, <immersiveengineering:material:9>]]);
*/

// Heavy Block
recipes.addShaped(<immersiveengineering:metal_decoration0:5>*3, [
	[<immersiveengineering:material:9>, <moreplates:cobalt_gear>, <immersiveengineering:material:9>],
	[heavyGears, bloodOrbLeast[1].reuse(), heavyGears], 
	[<immersiveengineering:material:9>, <prefab:block_compressed_obsidian>, <immersiveengineering:material:9>]]);


// Redstone block
recipes.addShaped(<immersiveengineering:metal_decoration0:3> * 1, [[<ore:plateSteel>, <actuallyadditions:item_crystal>, <ore:plateSteel>],[<actuallyadditions:item_crystal>, <mysticalmechanics:gear_gold_on>, <actuallyadditions:item_crystal>], [<ore:plateSteel>, <actuallyadditions:item_crystal>, <ore:plateSteel>]]);


// Kinetic Dynamo
recipes.addShaped(<immersiveengineering:metal_device1:2>, [[<thermalfoundation:material:32>, <thermalfoundation:material:32>, <thermalfoundation:material:32>],[<minecraft:redstone>, <immersiveengineering:metal_decoration0>, <minecraft:redstone>], [<thermalfoundation:material:32>, <thermalfoundation:material:32>, <thermalfoundation:material:32>]]);

// Capacitors
recipes.addShaped(<immersiveengineering:metal_device0:2>, [[<moreplates:electrical_steel_plate>, <moreplates:electrical_steel_plate>, <moreplates:electrical_steel_plate>],[<thermalfoundation:material:324>, <immersiveengineering:metal_device0:1>, <thermalfoundation:material:324>], [<ore:plankTreatedWood>, <minecraft:redstone_block>, <ore:plankTreatedWood>]]);
recipes.addShaped(<immersiveengineering:metal_device0:1>, [[<thermalfoundation:material:356>, <thermalfoundation:material:356>, <thermalfoundation:material:356>],[<thermalfoundation:material:353>, <immersiveengineering:metal_device0>, <thermalfoundation:material:353>], [<ore:plankTreatedWood>, <minecraft:redstone_block>, <ore:plankTreatedWood>]]);

// LV Power
recipes.addShaped(<immersiveengineering:metal_device0>, [[<thermalfoundation:material:32>, <thermalfoundation:material:32>, <thermalfoundation:material:32>],[<thermalfoundation:material:320>, <thermalfoundation:storage:3>, <thermalfoundation:material:320>], [<ore:plankTreatedWood>, <minecraft:redstone>, <ore:plankTreatedWood>]]);

// MV Connectors
recipes.addShaped(<immersiveengineering:connector:3> * 8, [[null, null, null],[null, <enderio:item_alloy_ingot:4>, null], [<minecraft:hardened_clay>, <enderio:item_alloy_ingot:4>, <minecraft:hardened_clay>]]);
recipes.addShaped(<immersiveengineering:connector:2> * 4, [[null, <enderio:item_alloy_ingot:4>, null],[<minecraft:hardened_clay>, <enderio:item_alloy_ingot:4>, <minecraft:hardened_clay>], [<minecraft:hardened_clay>, <enderio:item_alloy_ingot:4>, <minecraft:hardened_clay>]]);

// Blueprint
recipes.addShaped(<immersiveengineering:blueprint>.withTag({blueprint: "components"}), [[<thermalfoundation:material:164>, <thermalfoundation:material:162>, <thermalfoundation:material:161>],[<ore:dyeBlue>, <ore:dyeBlue>, <ore:dyeBlue>], [<minecraft:paper>, <minecraft:paper>, <minecraft:paper>]]);

recipes.addShaped(<immersiveengineering:blueprint>.withTag({blueprint: "Circuits"}),[
	[<ore:platerefinedIron>, <ore:alloyBasic>, <ore:platerefinedIron>], 
	[<ore:dyeBlue>, <ore:dyeBlue>, <ore:dyeBlue>], 
	[<ore:paper>, <ore:paper>, <ore:paper>]
]);
Blueprint.addRecipe("Circuits", <techreborn:part:29>, [<immersiveengineering:material:27>,<techreborn:plates:35>,<minecraft:redstone>*2,<techreborn:cable:5>*6]);
Blueprint.addRecipe("Circuits", <techreborn:part:30>, [<techreborn:part:29>,<minecraft:redstone>*4,<minecraft:glowstone_dust>*2,<minecraft:dye:4>*2]);

// Electrodes
Blueprint.removeRecipe(<immersiveengineering:graphite_electrode>);
mods.immersiveengineering.MetalPress.removeRecipe(<immersiveengineering:graphite_electrode>);
//Blueprint.addRecipe("electrode", <immersiveengineering:graphite_electrode>.withTag({Unbreakable: 1 as byte}), [<rockhounding_chemistry:alloy_items_tech:31>,<rockhounding_chemistry:alloy_items_tech:31>,<rockhounding_chemistry:alloy_items_tech:31>,<rockhounding_chemistry:alloy_items_tech:31>]);

Infusion.registerRecipe("electrodes", "", 
<immersiveengineering:graphite_electrode>.withTag({Unbreakable: 1 as byte}), 3, 
[<aspect:machina>*50, <aspect:fabrico>*50, <aspect:ordo>*25], 
<bloodmagic:slate:2>, 
[<immersiveengineering:material:19>, <immersivepetroleum:material>, <immersivepetroleum:material>,<immersivepetroleum:material>,
<immersiveengineering:material:19>, <immersivepetroleum:material>, <immersivepetroleum:material>, <immersivepetroleum:material>]);

Infusion.registerRecipe("electrodestar", "", 
<immersiveengineering:graphite_electrode>.withTag({Unbreakable: 1 as byte}), 3, 
[<aspect:machina>*50, <aspect:fabrico>*50, <aspect:ordo>*25], 
<bloodmagic:slate:2>, 
[<immersiveengineering:material:19>, <thermalfoundation:material:833>, <thermalfoundation:material:833>,<thermalfoundation:material:833>,
<immersiveengineering:material:19>, <thermalfoundation:material:833>, <thermalfoundation:material:833>, <thermalfoundation:material:833>]);


// Concrete
recipes.addShaped(<immersiveengineering:stone_decoration_slab:5>, [[<immersiveengineering:stone_device:4>], [<immersiveengineering:stone_device:4>]]);
recipes.addShaped(<immersiveengineering:stone_device:4>, [[<immersiveengineering:stone_device:3>], [<immersiveengineering:stone_device:3>]]);
recipes.addShaped(<immersiveengineering:stone_decoration:5>, [[<immersiveengineering:stone_device:4>], [<immersiveengineering:stone_device:5>]]);

##----------alloy kiln remove
mods.jei.JEI.removeAndHide(<immersiveengineering:stone_decoration:10>);

val removeKilnConstantan = <ore:ingotConstantan>;
val removeKilnElectrum =  <ore:ingotElectrum>;
val removeKilnInvar = <ore:ingotInvar>;
val removeKilnBronze =  <ore:ingotBronze>;
val removeKilnBrass =  <ore:ingotBrass>;

for item in removeKilnConstantan.items{
mods.immersiveengineering.AlloySmelter.removeRecipe(item);
}
for item in removeKilnElectrum.items{
mods.immersiveengineering.AlloySmelter.removeRecipe(item);
}
for item in removeKilnInvar.items{
mods.immersiveengineering.AlloySmelter.removeRecipe(item);
}
for item in removeKilnBronze.items{
mods.immersiveengineering.AlloySmelter.removeRecipe(item);
}
for item in removeKilnBrass.items{
mods.immersiveengineering.AlloySmelter.removeRecipe(item);
}

Crusher.removeRecipe(<techreborn:dust:5>*2);
Crusher.addRecipe(<techreborn:dust:5>*2, <techreborn:ore:4>, 2048, <thermalfoundation:material:68>, 0.1);

//Crusher.addRecipe(<appliedenergistics2:material:46>, <minecraft:ender_pearl>, 1024);

//mods.immersiveengineering.ArcFurnace.removeRecipe(<thermalfoundation:material:132>);
//mods.immersiveengineering.ArcFurnace.addRecipe(IItemStack output, IIngredient input, IItemStack slag, int time, int energyPerTick, @Optional IIngredient[] additives, @Optional String specialRecipeType);
//mods.immersiveengineering.ArcFurnace.addRecipe(<minecraft:diamond>, <ore:logWood>, <minecraft:dirt>, 2000, 2048);
//mods.immersiveengineering.ArcFurnace.addRecipe(<minecraft:diamond>, <ore:logWood>, <minecraft:dirt>, 2000, 2048, [<ore:oreIron>, <ore:oreGold>]);
//mods.immersiveengineering.ArcFurnace.addRecipe(<minecraft:diamond>, <ore:logWood>, <minecraft:dirt>, 2000, 2048, [<ore:oreIron>, <ore:oreGold>], "Ores");




//
### METAL PRESS #########

//mods.immersiveengineering.MetalPress.addRecipe(IItemStack output, IIngredient input, IItemStack mold, int energy, @Optional int inputSize);

val reuseMold = [
<immersiveengineering:mold>,
<immersiveengineering:mold:1>,
<immersiveengineering:mold:2>,
<immersiveengineering:mold:3>,
<immersiveengineering:mold:4>,
<immersiveengineering:mold:5>,
<immersiveengineering:mold:6>,
<immersiveengineering:mold:7>,
]
as IItemStack[];
for item in reuseMold {
Melting.addRecipe(<liquid:steel> * 720,item);
}

//ThermoElectric
recipes.addShaped(<immersiveengineering:metal_device1:3>, [[<thermalfoundation:material:160>, <thermalfoundation:material:160>, <thermalfoundation:material:160>],[<thermalfoundation:material:356>, <immersiveengineering:metal_decoration0:4>, <thermalfoundation:material:356>], [<thermalfoundation:material:356>, <thermalfoundation:material:356>, <thermalfoundation:material:356>]]);

//More Fuels
BlastFurnace.addFuel(<thaumcraft:alumentum>, 7200);
BlastFurnace.addFuel(<mysticalagriculture:coal>, 2400);
BlastFurnace.addFuel(<mysticalagriculture:coal:1>, 4800);
BlastFurnace.addFuel(<mysticalagriculture:coal:2>, 9600);
BlastFurnace.addFuel(<mysticalagriculture:coal:3>, 19200);
BlastFurnace.addFuel(<mysticalagriculture:coal:4>, 38400);
BlastFurnace.addFuel(<mysticalagradditions:insanium:5>, 76800);



//Boosted Diesel
Refinery.addRecipe(<liquid:blended_diesel>*16, <liquid:biodiesel>*8, <liquid:diesel>*8, 512);
mods.immersiveengineering.Mixer.addRecipe(<liquid:boosted_diesel>*250, <liquid:blended_diesel>*250, [<aetherworks:item_resource>], 512);
mods.immersiveengineering.DieselHandler.addFuel(<liquid:boosted_diesel>, 450);
mods.immersiveengineering.DieselHandler.addFuel(<liquid:blended_diesel>, 200);
mods.nuclearcraft.Enricher.addRecipe(<aetherworks:item_resource>, <liquid:blended_diesel>*250, <liquid:boosted_diesel>*250);
mods.thermalexpansion.Imbuer.addRecipe(<liquid:boosted_diesel>*250, <aetherworks:item_resource>, <liquid:blended_diesel>*250, 10000);


/* Might change later idk
//Components
Blueprint.removeRecipe(<immersiveengineering:material:8>);
Blueprint.removeRecipe(<immersiveengineering:material:9>);
Blueprint.addRecipe("components", <immersiveengineering:material:8>, [<ore:ingotCopper>, <ore:plateIron>,<ore:plateIron>, <bloodmagic:slate>]);
Blueprint.addRecipe("components", <immersiveengineering:material:9>, [<ore:ingotCopper>, <ore:plateSteel>,<ore:plateSteel>, <bloodmagic:slate:1>]);
*/

##########################################################################################
print("==================== end of immersive.zs ====================");