import mods.immersiveengineering.Excavator;
import mods.immersiveengineering.MineralMix;
import crafttweaker.item.IItemStack;
import crafttweaker.oredict.IOreDict;
import mods.immersiveengineering.Crusher;
import mods.tconstruct.Melting;
import mods.immersivepetroleum.Reservoir;

print("--- loading immersive.zs ---");
	
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
<jaopca:item_gearthaumium>,
]
as IItemStack[];
for item in removerecipes {
    recipes.remove(item);
}

//Excavator

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
Excavator.addMineral("Platinum", 15, 0.01, ["orePlatinum", "oreNickel", "oreIridium", "oreUninspected"], [64, 26, 9, 1], [0, 10]);
Excavator.addMineral("Uranium", 10, 0, ["oreUranium", "oreLead", "oreBoron", "oreThorium", "oreUninspected"], [55, 24, 10, 10, 1], [0, 10]);

//Excavator.addMineral("Lithium", 10, 0, ["oreLithium", "oreMagnesium", "oreUninspected"], [55, 44, 1], [0]);

Excavator.addMineral("Raw Stone", 10, 0, ["basicLimestone", "basicMarble", "basicBasalt", "stoneGranite", "stoneDiorite", "stoneAndesite"], [15, 15, 15, 20, 20, 20], [0]);


Excavator.addMineral("Cinnabar", 15, 0, ["oreRedstone", "oreCinnabar", "oreRuby", "oreUninspected"], [67, 26, 6, 1], [-1, 0]);
Excavator.addMineral("Quarzite", 15, 0, ["oreQuartz", "oreCertusQuartz", "oreQuartzBlack", "oreChargedCertusQuartz",], [40, 41, 14, 5], [-1, 0]);

//beneath
Excavator.addMineral("Osmium", 15, 0, ["oreOsmium", "orePlatinum", "oreIridium", "oreGold", "oreUninspected"], [50, 10, 6, 30, 4], [10]);
Excavator.addMineral("Gold", 15, 0, ["oreGold", "oreCopper", "oreNickel", "oreEnder","oreUninspected"], [67, 22, 6, 4, 1], [10]);
Excavator.addMineral("Stygian Iron", 15, 0, ["oreStygianiron", "oreIron", "oreVoidstone", "oreOsmium", "oreUninspected"], [45, 40, 5, 8, 2], [10]);
//nether
Excavator.addMineral("Pyrite", 15, 0, ["orePyrite", "oreSphalerite","oreIron", "oreUninspected"], [65, 19, 15, 1], [-1]);
Excavator.addMineral("Sphalerite", 15, 0, ["oreSphalerite", "orePyrite", "oreIron", "oreUninspected"], [63, 26, 10, 1], [-1]);
//<ore:oreClathrateGlowstone>

Reservoir.registerReservoir("MoltenGold", <liquid:gold>, 216000, 288000, 144, 20, [], [10], ["none"], ["all"]);
Reservoir.registerReservoir("MoltenIron", <liquid:iron>, 216000, 288000, 144, 20, [], [10], ["none"], ["all"]);
Reservoir.registerReservoir("MoltenNickel", <liquid:nickel>, 216000, 288000, 144, 20, [], [10], ["none"], ["all"]);
Reservoir.registerReservoir("MoltenTin", <liquid:tin>, 216000, 288000, 144, 20, [], [10], ["none"], ["all"]);
Reservoir.registerReservoir("Moltencopper", <liquid:copper>, 216000, 288000, 144, 20, [], [10], ["none"], ["all"]);
Reservoir.registerReservoir("Moltensilver", <liquid:silver>, 216000, 288000, 144, 20, [], [10], ["none"], ["all"]);
Reservoir.registerReservoir("Moltenlead", <liquid:lead>, 216000, 288000, 144, 20, [], [10], ["none"], ["all"]);
Reservoir.registerReservoir("Moltenpyrotheum", <liquid:pyrotheum>, 187500, 250000, 250, 20, [], [10], ["none"], ["all"]);
Reservoir.registerReservoir("Moltencryotheum", <liquid:cryotheum>, 187500, 250000, 250, 20, [], [10], ["none"], ["all"]);
Reservoir.registerReservoir("Moltenaerotheum", <liquid:aerotheum>, 187500, 250000, 250, 20, [], [10], ["none"], ["all"]);
Reservoir.registerReservoir("Moltenpetrotheum", <liquid:petrotheum>, 187500, 250000, 250, 20, [], [10], ["none"], ["all"]);


//hammer
recipes.addShaped(<immersiveengineering:tool>, [[null, <thermalfoundation:material:162>, <immersiveengineering:material:4>],[null, <minecraft:stick>, <thermalfoundation:material:162>], [<minecraft:stick>, null, null]]);

//Garden
recipes.addShaped(<immersiveengineering:metal_device1:13>, [[<ore:blockGlassColorless>, <immersiveengineering:material:26>, <ore:blockGlassColorless>],[<ore:blockGlassColorless>, null, <ore:blockGlassColorless>], [<ore:plankTreatedWood>, <immersiveengineering:material:9>, <ore:plankTreatedWood>]]);


recipes.addShaped(<immersiveengineering:metal_decoration0:6> * 2, [[<thermalfoundation:material:352>, <immersiveengineering:wirecoil:1>, <thermalfoundation:material:352>],[<immersiveengineering:wirecoil:1>, <immersiveengineering:metal_device1:2>, <immersiveengineering:wirecoil:1>], [<thermalfoundation:material:352>, <immersiveengineering:wirecoil:1>, <thermalfoundation:material:352>]]);
recipes.addShaped(<immersiveengineering:metal_decoration0:7> * 2, [[<thermalfoundation:material:352>, <thebetweenlands:octine_ingot>, <thermalfoundation:material:352>],[<thebetweenlands:octine_ingot>, <minecraft:water_bucket>, <thebetweenlands:octine_ingot>], [<thermalfoundation:material:352>, <thebetweenlands:octine_ingot>, <thermalfoundation:material:352>]]);

//Heavy Block
recipes.addShaped(<immersiveengineering:metal_decoration0:5> * 2, [[<thermalfoundation:material:352>, <immersiveengineering:material:9>, <thermalfoundation:material:352>],[<jaopca:item_gearsyrmorite>, <immersiveengineering:wirecoil:1>, <jaopca:item_gearsyrmorite>], [<thermalfoundation:material:352>, <immersiveengineering:material:9>, <thermalfoundation:material:352>]]);

recipes.addShaped(<immersiveengineering:metal_decoration0:5> * 2, [[<thermalfoundation:material:352>, <immersiveengineering:material:9>, <thermalfoundation:material:352>],[<jaopca:item_gearthaumium>, <immersiveengineering:wirecoil:1>, <jaopca:item_gearthaumium>], [<thermalfoundation:material:352>, <immersiveengineering:material:9>, <thermalfoundation:material:352>]]);

//Redstone block
recipes.addShaped(<immersiveengineering:metal_decoration0:3> * 1, [[<thermalfoundation:material:32>, <actuallyadditions:item_crystal>, <thermalfoundation:material:32>],[<actuallyadditions:item_crystal>, <advgenerators:iron_wiring>, <actuallyadditions:item_crystal>], [<thermalfoundation:material:32>, <actuallyadditions:item_crystal>, <thermalfoundation:material:32>]]);
recipes.addShaped(<immersiveengineering:metal_decoration0:3> * 3, [[<thermalfoundation:material:352>, <actuallyadditions:item_crystal>, <thermalfoundation:material:352>],[<actuallyadditions:item_crystal>, <mysticalmechanics:gear_gold_on>, <actuallyadditions:item_crystal>], [<thermalfoundation:material:352>, <actuallyadditions:item_crystal>, <thermalfoundation:material:352>]]);

//Light block
recipes.addShaped(<immersiveengineering:metal_decoration0:4> * 2, [[<thermalfoundation:material:32>, <immersiveengineering:material:8>, <thermalfoundation:material:32>],[<moreplates:constantan_stick>, <moreplates:ardite_gear>, <moreplates:constantan_stick>], [<thermalfoundation:material:32>, <immersiveengineering:material:8>, <thermalfoundation:material:32>]]);

//Kinetic Dynamo
recipes.addShaped(<immersiveengineering:metal_device1:2>, [[<thermalfoundation:material:32>, <thermalfoundation:material:32>, <thermalfoundation:material:32>],[<minecraft:redstone>, <immersiveengineering:metal_decoration0>, <minecraft:redstone>], [<thermalfoundation:material:32>, <thermalfoundation:material:32>, <thermalfoundation:material:32>]]);

//Capasitators
recipes.addShaped(<immersiveengineering:metal_device0:2>, [[<moreplates:electrical_steel_plate>, <moreplates:electrical_steel_plate>, <moreplates:electrical_steel_plate>],[<thermalfoundation:material:324>, <immersiveengineering:metal_device0:1>, <thermalfoundation:material:324>], [<ore:plankTreatedWood>, <minecraft:redstone_block>, <ore:plankTreatedWood>]]);
recipes.addShaped(<immersiveengineering:metal_device0:1>, [[<thermalfoundation:material:356>, <thermalfoundation:material:356>, <thermalfoundation:material:356>],[<thermalfoundation:material:353>, <immersiveengineering:metal_device0>, <thermalfoundation:material:353>], [<ore:plankTreatedWood>, <minecraft:redstone_block>, <ore:plankTreatedWood>]]);
recipes.addShaped(<immersiveengineering:metal_device0>, [[<thermalfoundation:material:32>, <thermalfoundation:material:32>, <thermalfoundation:material:32>],[<thermalfoundation:material:320>, <thermalfoundation:storage:3>, <thermalfoundation:material:320>], [<ore:plankTreatedWood>, <minecraft:redstone>, <ore:plankTreatedWood>]]);


//Blueprint
recipes.addShaped(<immersiveengineering:blueprint>.withTag({blueprint: "components"}), [[<thermalfoundation:material:164>, <thermalfoundation:material:162>, <thermalfoundation:material:161>],[<ore:dyeBlue>, <ore:dyeBlue>, <ore:dyeBlue>], [<minecraft:paper>, <minecraft:paper>, <minecraft:paper>]]);

recipes.addShaped(<immersiveengineering:blueprint>.withTag({blueprint: "Circuits"}),[
	[<ore:platerefinedIron>, <ore:alloyBasic>, <ore:platerefinedIron>], 
	[<ore:gemLapis>, <ore:gemLapis>, <ore:gemLapis>], 
	[<ore:paper>, <ore:paper>, <ore:paper>]
]);
mods.immersiveengineering.Blueprint.addRecipe("Circuits", <techreborn:part:29>, [<immersiveengineering:material:27>,<techreborn:plates:35>,<minecraft:redstone>*2,<techreborn:cable:5>*6]);
mods.immersiveengineering.Blueprint.addRecipe("Circuits", <techreborn:part:30>, [<techreborn:part:29>,<minecraft:redstone>*4,<minecraft:glowstone_dust>*2,<minecraft:dye:4>*2]);

recipes.addShaped(<immersiveengineering:blueprint>.withTag({blueprint: "Torches"}), [[<minecraft:torch>, <minecraft:dye:4>, <minecraft:torch>],[<minecraft:dye:4>, <minecraft:paper>, <minecraft:dye:4>], [<minecraft:torch>, <minecraft:dye:4>, <minecraft:torch>]]);
mods.immersiveengineering.Blueprint.addRecipe("electrode", <immersiveengineering:graphite_electrode>, [<rockhounding_chemistry:alloy_items_tech:32>,<rockhounding_chemistry:alloy_items_tech:32>,<rockhounding_chemistry:alloy_items_tech:32>,<rockhounding_chemistry:alloy_items_tech:32>]);
mods.immersiveengineering.Blueprint.addRecipe("Torches", <minecraft:torch>*8, [<minecraft:coal>,<ore:stickWood>]);
mods.immersiveengineering.Blueprint.addRecipe("Torches", <thebetweenlands:sulfur_torch>*8, [<thebetweenlands:items_misc:18>,<ore:stickWood>]);



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



val removeArc =
[   
<techreborn:ingot:3>,
]
as IItemStack[];

for item in removeArc {
mods.immersiveengineering.ArcFurnace.removeRecipe(item);
}


//
### METAL PRESS #########

//mods.immersiveengineering.MetalPress.addRecipe(IItemStack output, IIngredient input, IItemStack mold, int energy, @Optional int inputSize);

mods.immersiveengineering.MetalPress.addRecipe(<contenttweaker:rod_nimonic>*2, <rockhounding_chemistry:alloy_items_tech:16>, <immersiveengineering:mold:2>, 2000);
mods.immersiveengineering.MetalPress.addRecipe(<contenttweaker:rod_scal>*2, <rockhounding_chemistry:alloy_items_tech:4>, <immersiveengineering:mold:2>, 2000);
mods.immersiveengineering.MetalPress.addRecipe(<contenttweaker:rod_vanasteel>*2, <rockhounding_chemistry:alloy_items_tech:40>, <immersiveengineering:mold:2>, 2000);
mods.immersiveengineering.MetalPress.addRecipe(<contenttweaker:rod_bam>*2, <rockhounding_chemistry:alloy_items_tech:7>, <immersiveengineering:mold:2>, 2000);

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
	print("--- immersive.zs initialized ---");