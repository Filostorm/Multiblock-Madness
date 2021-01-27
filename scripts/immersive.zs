import mods.immersiveengineering.Excavator;
import mods.immersiveengineering.MineralMix;
import crafttweaker.item.IItemStack;
import crafttweaker.oredict.IOreDict;
import mods.immersiveengineering.Crusher;
print("--- loading immersive.zs ---");
	
# *======= Recipes =======*


val removerecipes =
[   
<immersiveengineering:metal_device1:2>,
<immersiveengineering:tool>,
<immersiveengineering:blueprint>.withTag({blueprint: "components"}),
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
<ore:basicBasalt>.add(<quark:basalt>);
<ore:basicLimestone>.add(<quark:limestone>);
<ore:basicMarble>.add(<astralsorcery:blockmarble>);
Excavator.addMineral("Raw Stone", 10, 0, ["basicLimestone", "basicMarble", "basicBasalt", "stoneGranite", "stoneDiorite", "stoneAndesite"], [15, 15, 15, 20, 20, 20], [0]);


Excavator.addMineral("Cinnabar", 15, 0, ["oreRedstone", "oreCinnabar", "oreRuby", "oreUninspected"], [67, 26, 6, 1], [-1, 0]);
Excavator.addMineral("Quarzite", 15, 0, ["oreQuartz", "oreCertusQuartz", "oreQuartzBlack", "oreChargedCertusQuartz",], [40, 41, 14, 5], [-1, 0]);


<ore:oreStygianiron>.add(<woot:stygianironore>);
<ore:oreVoidstone>.add(<chisel:voidstone>);

//beneath
Excavator.addMineral("Osmium", 15, 0, ["oreOsmium", "orePlatinum", "oreIridium", "oreGold", "oreUninspected"], [50, 10, 6, 30, 4], [10]);
Excavator.addMineral("Gold", 15, 0, ["oreGold", "oreCopper", "oreNickel", "oreEnder","oreUninspected"], [67, 22, 6, 4, 1], [10]);
Excavator.addMineral("Stygian Iron", 15, 0, ["oreStygianiron", "oreIron", "oreVoidstone", "oreOsmium", "oreUninspected"], [45, 40, 5, 8, 2], [10]);
//nether
Excavator.addMineral("Pyrite", 15, 0, ["orePyrite", "oreSphalerite","oreIron", "oreUninspected"], [65, 19, 15, 1], [-1]);
Excavator.addMineral("Sphalerite", 15, 0, ["oreSphalerite", "orePyrite", "oreIron", "oreUninspected"], [63, 26, 10, 1], [-1]);
//<ore:oreClathrateGlowstone>

//hammer
recipes.addShaped(<immersiveengineering:tool>, [[null, <thermalfoundation:material:162>, <immersiveengineering:material:4>],[null, <minecraft:stick>, <thermalfoundation:material:162>], [<minecraft:stick>, null, null]]);


recipes.addShaped(<immersiveengineering:metal_decoration0:6> * 2, [[<thermalfoundation:material:352>, <immersiveengineering:wirecoil:1>, <thermalfoundation:material:352>],[<immersiveengineering:wirecoil:1>, <immersiveengineering:metal_device1:2>, <immersiveengineering:wirecoil:1>], [<thermalfoundation:material:352>, <immersiveengineering:wirecoil:1>, <thermalfoundation:material:352>]]);
recipes.addShaped(<immersiveengineering:metal_decoration0:7> * 2, [[<thermalfoundation:material:352>, <thebetweenlands:octine_ingot>, <thermalfoundation:material:352>],[<thebetweenlands:octine_ingot>, <minecraft:water_bucket>, <thebetweenlands:octine_ingot>], [<thermalfoundation:material:352>, <thebetweenlands:octine_ingot>, <thermalfoundation:material:352>]]);
recipes.addShaped(<immersiveengineering:metal_decoration0:5> * 2, [[<thermalfoundation:material:352>, <immersiveengineering:material:9>, <thermalfoundation:material:352>],[<jaopca:item_gearsyrmorite>, <immersiveengineering:wirecoil:1>, <jaopca:item_gearsyrmorite>], [<thermalfoundation:material:352>, <immersiveengineering:material:9>, <thermalfoundation:material:352>]]);

//Redstone block
recipes.addShaped(<immersiveengineering:metal_decoration0:3> * 1, [[<thermalfoundation:material:32>, <actuallyadditions:item_crystal>, <thermalfoundation:material:32>],[<actuallyadditions:item_crystal>, <advgenerators:iron_wiring>, <actuallyadditions:item_crystal>], [<thermalfoundation:material:32>, <actuallyadditions:item_crystal>, <thermalfoundation:material:32>]]);
recipes.addShaped(<immersiveengineering:metal_decoration0:3> * 3, [[<thermalfoundation:material:352>, <actuallyadditions:item_crystal>, <thermalfoundation:material:352>],[<actuallyadditions:item_crystal>, <mysticalmechanics:gear_gold_on>, <actuallyadditions:item_crystal>], [<thermalfoundation:material:352>, <actuallyadditions:item_crystal>, <thermalfoundation:material:352>]]);

//Light block
recipes.addShaped(<immersiveengineering:metal_decoration0:4> * 2, [[<thermalfoundation:material:32>, <immersiveengineering:material:8>, <thermalfoundation:material:32>],[<moreplates:constantan_stick>, <moreplates:ardite_gear>, <moreplates:constantan_stick>], [<thermalfoundation:material:32>, <immersiveengineering:material:8>, <thermalfoundation:material:32>]]);

//Kinetic Dynamo
recipes.addShaped(<immersiveengineering:metal_device1:2>, [[<thermalfoundation:material:32>, <thermalfoundation:material:32>, <thermalfoundation:material:32>],[<minecraft:redstone>, <immersiveengineering:metal_decoration0>, <minecraft:redstone>], [<thermalfoundation:material:32>, <thermalfoundation:material:32>, <thermalfoundation:material:32>]]);


recipes.addShaped(<immersiveengineering:blueprint>.withTag({blueprint: "components"}), [[<thermalfoundation:material:164>, <thermalfoundation:material:162>, <thermalfoundation:material:161>],[<ore:dyeBlue>, <ore:dyeBlue>, <ore:dyeBlue>], [<minecraft:paper>, <minecraft:paper>, <minecraft:paper>]]);


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

mods.immersiveengineering.ArcFurnace.removeRecipe(<enderio:item_alloy_ingot:1>);

//mods.immersiveengineering.ArcFurnace.removeRecipe(<thermalfoundation:material:132>);
//mods.immersiveengineering.ArcFurnace.addRecipe(IItemStack output, IIngredient input, IItemStack slag, int time, int energyPerTick, @Optional IIngredient[] additives, @Optional String specialRecipeType);
//mods.immersiveengineering.ArcFurnace.addRecipe(<minecraft:diamond>, <ore:logWood>, <minecraft:dirt>, 2000, 2048);
//mods.immersiveengineering.ArcFurnace.addRecipe(<minecraft:diamond>, <ore:logWood>, <minecraft:dirt>, 2000, 2048, [<ore:oreIron>, <ore:oreGold>]);
//mods.immersiveengineering.ArcFurnace.addRecipe(<minecraft:diamond>, <ore:logWood>, <minecraft:dirt>, 2000, 2048, [<ore:oreIron>, <ore:oreGold>], "Ores");



//inert ingot
mods.immersiveengineering.ArcFurnace.addRecipe(<contenttweaker:inert_ingot>*2, <thermalfoundation:material:130>*2, null, 400, 1024, [<thermalfoundation:material:131>]);

//fused quartz
mods.immersiveengineering.ArcFurnace.addRecipe(<enderio:block_fused_quartz>, <ore:blockQuartz>, null, 200, 1024);

//vibrant alloy
//mods.immersiveengineering.ArcFurnace.addRecipe(<enderio:item_alloy_ingot:2>, <enderio:item_alloy_ingot:1>, null, 1200, 2048, [<minecraft:ender_pearl>]);
//energetic alloy
mods.immersiveengineering.ArcFurnace.addRecipe(<enderio:item_alloy_ingot:1>, <minecraft:gold_ingot>, null, 400, 1024, [<nuclearcraft:compound:2>*2]);
//energetic silver
mods.immersiveengineering.ArcFurnace.addRecipe(<enderio:item_alloy_endergy_ingot:5>, <thermalfoundation:material:130>, null, 400, 1024, [<nuclearcraft:compound:2>*2]);
//pulsating iron
mods.immersiveengineering.ArcFurnace.addRecipe(<enderio:item_alloy_ingot:5>, <minecraft:iron_ingot>, null, 300, 1024, [<minecraft:ender_pearl>], "Alloying");

### METAL PRESS #########

//mods.immersiveengineering.MetalPress.addRecipe(IItemStack output, IIngredient input, IItemStack mold, int energy, @Optional int inputSize);

mods.immersiveengineering.MetalPress.addRecipe(<contenttweaker:rod_nimonic>*2, <rockhounding_chemistry:alloy_items_tech:16>, <immersiveengineering:mold:2>, 2000);
mods.immersiveengineering.MetalPress.addRecipe(<contenttweaker:rod_scal>*2, <rockhounding_chemistry:alloy_items_tech:4>, <immersiveengineering:mold:2>, 2000);
mods.immersiveengineering.MetalPress.addRecipe(<contenttweaker:rod_vanasteel>*2, <rockhounding_chemistry:alloy_items_tech:40>, <immersiveengineering:mold:2>, 2000);
mods.immersiveengineering.MetalPress.addRecipe(<contenttweaker:rod_bam>*2, <rockhounding_chemistry:alloy_items_tech:7>, <immersiveengineering:mold:2>, 2000);

	print("--- immersive.zs initialized ---");