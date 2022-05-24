import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;
import mods.requious.Assembly;
import mods.requious.AssemblyRecipe;
import mods.requious.SlotVisual;
import crafttweaker.liquid.ILiquidStack;
import mods.requious.GaugeDirection;
import mods.jei.JEI.addDescription;
import crafttweaker.data.IData;
import crafttweaker.formatting.IFormattedText;
import crafttweaker.enchantments.IEnchantment;
import crafttweaker.potions.IPotionEffect;
import mods.jei.JEI.addItem;

#priority -1

print("==================== loading jei_requious.zs ====================");
##########################################################################################

##=======================================================
## UTILITY FUNCTIONS
##=======================================================

// Credits to the E2E-E Dev!
// Functions that get textures from either the assembly_gauges or assembly_slots photos at the x and y coordinates supplied

function getVisGauge(u as int, w as int) as SlotVisual {
  return SlotVisual.create(1,1).addPart("requious:textures/gui/assembly_gauges.png",u,w);
}
function getVisSlots(u as int, w as int) as SlotVisual {
  return SlotVisual.create(1,1).addPart("requious:textures/gui/assembly_slots.png",u,w);
}

// Add recipes with item inputs and outputs easily
function add(ass as Assembly, chunk as IItemStack[][IIngredient[]]) {
  for inputs, outputs in chunk {
    val assRec = AssemblyRecipe.create(function(container) {
      for i, output in outputs {
        if(isNull(output)) continue;
        container.addItemOutput("item_output" ~ i, output);
      }
    });
    for i, input in inputs {
      if(isNull(input)) continue;
      assRec.requireItem("item_input"~i, input);
    }
    ass.addJEIRecipe(assRec);
  }
}

// Add item inputs and outputs easily
function addInsOuts(ass as Assembly, inputs as int[][], outputs as int[][]) {
  for j,way in ['item_input', 'item_output'] as string[] {
    for i,pair in (j==0 ? inputs : outputs) {
      ass.setJEIItemSlot(pair[0], pair[1], way ~ i);
    }
  }
}


##=======================================================
## REQUIOUS FRAKTO JEI CATEGORIES
##=======================================================

// --== Excavator Veins ==-- //

var excavator = <assembly:excavator>;
excavator.addJEICatalyst(<immersiveengineering:metal_multiblock:11>);
excavator.addJEICatalyst(<immersiveengineering:metal_multiblock:12>);
excavator.addJEICatalyst(<immersivepetroleum:schematic>.withTag({multiblock: "IE:ExcavatorDemo", flip: 1 as byte}));
excavator.addJEICatalyst(<immersiveengineering:metal_device1:7>);
excavator.setJEIDurationSlot(3,0,"duration", getVisGauge(2,6));
excavator.setJEIItemSlot(0,0, "information", getVisSlots(4,1));
addInsOuts(excavator, [[1,0], [2,0]], [[4,0], [5,0], [6,0], [7,0], [8,0], [9,0]]);

// Adds an Excavator Vein to the RQ JEI Page. Can accept a maximum of 2 dimensions and 6 ores. Quantity of ore is determined by percentage of ore in vein.

function addvein(info as string, dimensions as IIngredient[], ores as IItemStack[]) {
    val assRec = AssemblyRecipe.create(function(container) {
      for i, output in ores {
        if(isNull(output)) continue;
        container.addItemOutput("item_output" ~ i, output);
      }
    });
    for i, input in dimensions {
      if(isNull(input)) continue;
      assRec.requireItem("item_input"~i, input);
    }
    assRec.requireItem("information", <minecraft:book>.withDisplayName(info));
    <assembly:excavator>.addJEIRecipe(assRec);
}

// List of dimensions for convenient access

val dimensionItem as IItemStack[int] = {
  0: <minecraft:grass>.withTag({display:{Name:"§a§lOverworld§r"}}),
  1: <minecraft:netherrack>.withTag({display:{Name:"§c§lThe Nether§r"}}),
  2: <minecraft:end_stone>.withTag({display:{Name:"§e§lThe End§r"}}),
  3: <chisel:voidstone>.withTag({display:{Name:"§5§lThe Beneath§r"}}),
  4: <advancedrocketry:moonturf>.withTag({display:{Name:"§f§lThe Moon"}}),
};

// List of rarities for convenient access

var rarity =
[
  <minecraft:wool>.withDisplayName("§f§lVery Common§r"),
  <minecraft:wool:8>.withDisplayName("§7§lCommon§r"),
  <minecraft:wool:13>.withDisplayName("§2§lUncommon§r"),
  <minecraft:wool:11>.withDisplayName("§9§lRare§r"),
  <minecraft:wool:10>.withDisplayName("§d§lVery Rare§r")
] as IItemStack[];

addvein("§fBauxite", [dimensionItem[0], dimensionItem[3]], [<techreborn:ore:4> * 70, <thermalfoundation:ore:4> * 19, <libvulpes:ore0:8> * 9, <rockhounding_chemistry:uninspected_mineral> * 2]);
addvein("§fCassiterite", [dimensionItem[0], dimensionItem[3]], [<thermalfoundation:ore:1> * 98, <rockhounding_chemistry:uninspected_mineral> * 2]);
addvein("§fCoal", [dimensionItem[0], dimensionItem[3]], [<minecraft:coal_ore> * 95, <minecraft:diamond_ore> * 1, <minecraft:emerald_ore> * 1, <rockhounding_chemistry:uninspected_mineral> * 2]);
addvein("§fCopper", [dimensionItem[0], dimensionItem[3]], [<thermalfoundation:ore> * 67, <minecraft:gold_ore> * 26, <thermalfoundation:ore:5> * 6, <rockhounding_chemistry:uninspected_mineral>]);
addvein("§fRare Earth", [dimensionItem[0], dimensionItem[3]], [<rockhounding_chemistry:uninspected_mineral> * 85, <minecraft:diamond_ore> * 15]);
addvein("§fSilt", [dimensionItem[0]], [<minecraft:clay> * 50, <minecraft:sand> * 30, <minecraft:gravel> * 20]);
addvein("§fGalena", [dimensionItem[0], dimensionItem[3]], [<techreborn:ore> * 51, <thermalfoundation:ore:2> * 19, <thermalfoundation:ore:3> * 28, <rockhounding_chemistry:uninspected_mineral> * 2]);
addvein("§fSilver", [dimensionItem[0], dimensionItem[3]], [<techreborn:ore> * 12, <thermalfoundation:ore:2> * 71, <thermalfoundation:ore:3> * 15, <rockhounding_chemistry:uninspected_mineral> * 2]);
addvein("§fLead", [dimensionItem[0], dimensionItem[3]], [<techreborn:ore> * 22, <thermalfoundation:ore:2> * 13, <thermalfoundation:ore:3> * 64, <rockhounding_chemistry:uninspected_mineral> * 1]);

addvein("§fIron", [dimensionItem[0], dimensionItem[3]], [<minecraft:iron_ore> * 58, <thermalfoundation:ore:5> * 21, <thermalfoundation:ore:1> * 20, <rockhounding_chemistry:uninspected_mineral> * 1]);
addvein("§fLapis", [dimensionItem[0], dimensionItem[3]], [<minecraft:lapis_ore> * 69, <minecraft:iron_ore> * 30, <rockhounding_chemistry:uninspected_mineral> * 1]);
addvein("§fMagnetite", [dimensionItem[0], dimensionItem[3]], [<minecraft:iron_ore> * 83, <minecraft:gold_ore> * 15, <rockhounding_chemistry:uninspected_mineral> * 2]);
addvein("§fNickel", [dimensionItem[0], dimensionItem[3]], [<thermalfoundation:ore:5> * 80, <thermalfoundation:ore:6> * 5, <minecraft:iron_ore> * 14, <rockhounding_chemistry:uninspected_mineral> * 2]);
addvein("§fUranium", [dimensionItem[0], dimensionItem[3]], [<nuclearcraft:ore:4> * 55, <thermalfoundation:ore:3> * 24, <nuclearcraft:ore:5> * 10, <nuclearcraft:ore:3> * 10, <rockhounding_chemistry:uninspected_mineral> * 1]);

addvein("§fRaw Stone", [dimensionItem[0]], [<minecraft:stone:1> * 20, <minecraft:stone:3> * 20, <minecraft:stone:5> * 20, <quark:limestone> * 15, <astralsorcery:blockmarble> * 15, <quark:basalt> * 15]);

addvein("§fCinnabar", [dimensionItem[0], dimensionItem[3]], [<minecraft:redstone_ore> * 67, <techreborn:ore:6> * 26, <techreborn:ore:2> * 6, <rockhounding_chemistry:uninspected_mineral> * 1]);
addvein("§fQuartzite", [dimensionItem[0], dimensionItem[3]], [<minecraft:quartz_ore> * 40, <appliedenergistics2:quartz_ore> * 41, <actuallyadditions:block_misc:3> * 14, <appliedenergistics2:charged_quartz_ore> * 5]);

addvein("§fOsmium", [dimensionItem[3]], [<mekanism:oreblock> * 56, <thermalfoundation:ore:6> * 20, <minecraft:gold_ore> * 20, <rockhounding_chemistry:uninspected_mineral> * 4]);
addvein("§fPlatinum", [dimensionItem[3]], [<thermalfoundation:ore:6> * 64, <thermalfoundation:ore:5> * 20, <mekanism:oreblock> * 14, <rockhounding_chemistry:uninspected_mineral>]);

addvein("§fGold", [dimensionItem[3]], [<minecraft:gold_ore> * 67,  <thermalfoundation:ore> * 22, <thermalfoundation:ore:5> * 6, <enderore:ore_ender> * 4, <rockhounding_chemistry:uninspected_mineral>]);
addvein("§fVoidstone", [dimensionItem[3]], [<minecraft:gold_ore> * 45, <minecraft:iron_ore> * 40, <chisel:voidstone> * 5, <mekanism:oreblock> * 8, <rockhounding_chemistry:uninspected_mineral> * 2]);

addvein("§fPyrite", [dimensionItem[1]], [<techreborn:ore:5> * 65, <techreborn:ore:7> * 19, <minecraft:iron_ore> * 15, <rockhounding_chemistry:uninspected_mineral>]);
addvein("§fSphalerite", [dimensionItem[1]], [<techreborn:ore:7> * 63, <techreborn:ore:5> * 26, <minecraft:iron_ore> * 10, <rockhounding_chemistry:uninspected_mineral>]);



// --== Pumpjack Veins ==-- //

var pumpjack = <assembly:pumpjack>;
pumpjack.addJEICatalyst(<immersivepetroleum:metal_multiblock:2>);
pumpjack.addJEICatalyst(<immersivepetroleum:schematic>.withTag({multiblock: "IP:Pumpjack"}));
pumpjack.addJEICatalyst(<immersiveengineering:metal_device1:7>);
pumpjack.setJEIDurationSlot(1, 0, "duration", getVisGauge(0,6));
pumpjack.setJEIItemSlot(0, 0, "information", getVisSlots(4,1));
pumpjack.setJEIFluidSlot(2, 0, "fluidvein");

// Adds a pumpjack fluid vein to the RQ JEI page. Min_mb_fluid, max_mb_fluid and weight are as defined in the Immersive Petroleum Config file.

function addfluidvein(veinname as string, dimension as string, min_mb_fluid as int, max_mb_fluid as int, weight as int, fluid as ILiquidStack) {
  val assRec = AssemblyRecipe.create(function(container) {
      container.addFluidOutput("fluidvein", fluid * min_mb_fluid);
    });
    assRec.requireItem("information", <minecraft:book>.withDisplayName(veinname).withLore(
      ["§fDimension: " ~ dimension, "§fMinimum Fluid: " ~ min_mb_fluid ~ "mb", "§fMaximum Fluid: " ~ max_mb_fluid ~ "mb", "§6Weight: " ~ weight]
      ));
  <assembly:pumpjack>.addJEIRecipe(assRec);  
}

addfluidvein("§fOil", "Any", 2500000, 15000000, 40, <liquid:oil>);
addfluidvein("§fLava", "Any", 250000, 1000000, 30, <liquid:lava>);
addfluidvein("§fGold", "§5Beneath", 72000, 288000, 20, <liquid:gold>);
addfluidvein("§fIron", "§5Beneath", 72000, 288000, 20, <liquid:iron>);
addfluidvein("§fNickel", "§5Beneath", 72000, 288000, 20, <liquid:nickel>);
addfluidvein("§fTin", "§5Beneath", 72000, 288000, 20, <liquid:tin>);
addfluidvein("§fCopper", "§5Beneath", 72000, 288000, 20, <liquid:copper>);
addfluidvein("§fSilver", "§5Beneath", 72000, 288000, 20, <liquid:silver>);
addfluidvein("§fPyrotheum", "§5Beneath", 50000, 500000, 10, <liquid:pyrotheum>);
addfluidvein("§fCryotheum", "§5Beneath", 50000, 500000, 10, <liquid:cryotheum>);
addfluidvein("§fAerotheum", "§5Beneath", 50000, 500000, 10, <liquid:aerotheum>);
addfluidvein("§fPetrotheum", "§5Beneath", 50000, 500000, 10, <liquid:petrotheum>);



// --== Diesel Generator Fuels ==-- //

var diesel_generator = <assembly:diesel_generator>;
diesel_generator.addJEICatalyst(<immersiveengineering:metal_multiblock:10>);
diesel_generator.addJEICatalyst(<immersivepetroleum:schematic>.withTag({multiblock: "IE:DieselGenerator"}));
diesel_generator.setJEIDurationSlot(1,0,"duration", getVisSlots(5,1));
diesel_generator.setJEIFluidSlot(0, 0, 'liquid_input');
diesel_generator.setJEIEnergySlot(2, 0, 'energy_out', "rf");


// Adds diesel generator fuels to the RQ JEI page. Format is fluid : energy per bucket.

var dieselgeneratorfuels = {
<liquid:biodiesel> : 1024000,
<liquid:diesel> : 1638400,
<liquid:blended_diesel> : 1638400,
<liquid:boosted_diesel> : 3686400,
<liquid:canolaoil> : 98304,
<liquid:refinedcanolaoil> : 360448,
<liquid:crystaloil> : 1998848
} as int[ILiquidStack];

for fluid, power in dieselgeneratorfuels {
  val assRec = AssemblyRecipe.create(function(container) {
      container.addEnergyOutput('energy_out', power, 0);
    });
    assRec.requireFluid('liquid_input', fluid * 1000);
    assRec.requireDuration("duration", power / 8192);
  diesel_generator.addJEIRecipe(assRec);
}


// --== Ore Generation ==-- //

var ore_generation = <assembly:ore_generation>;
ore_generation.addJEICatalyst(<minecraft:iron_ore>);
ore_generation.addJEICatalyst(<contenttweaker:ore_gen_info>);
ore_generation.setJEIItemSlot(0,0, "information", getVisSlots(4,1));
ore_generation.setJEIItemSlot(1,0, "rarity");
ore_generation.setJEIDurationSlot(3,0, "duration", getVisSlots(4,1));
addInsOuts(ore_generation, [[2,0]], [[4,0], [5,0], [6,0], [7,0], [8,0], [9,0]]);

/*
Adds an ore vein to the RQ JEI page. Rarity is as defined:
Value of chunk-chance =
1: Very Common
2: Common
3: Uncommon
4: Rare
5 or more: Very Rare
Note that rarity of ore veins in the nether and end are defined based on cluster-count instead of chunk-chance.
Quantity of items is defined by percentage of total weight.
*/

function addorevein(veinname as string, cluster_size as int, min_height as int, max_height as int, rarity as IItemStack, dimension as IItemStack, outputs as IItemStack[]) {
    val assRec = AssemblyRecipe.create(function(container) {
      for i, output in outputs {
        if(isNull(output)) continue;
        container.addItemOutput("item_output" ~ i, output);
      }
    });
    assRec.requireItem("item_input0", dimension);
    if (!(isNull(rarity))) {
      assRec.requireItem("rarity", rarity);
    }
    assRec.requireItem("information", <minecraft:book>.withDisplayName(veinname).withLore(
      ["§7Size: " ~ cluster_size, "§7Spawn Height: " ~ min_height ~ "-" ~ max_height]
      ));
    <assembly:ore_generation>.addJEIRecipe(assRec);
}

// Overworld Veins

addorevein("§fOverworld Iron Vein", 40, 10, 64, rarity[0], dimensionItem[0], [<minecraft:iron_ore> * 65, <thermalfoundation:ore:5> * 20, <minecraft:gold_ore> * 14, <rockhounding_chemistry:uninspected_mineral> * 1]);
addorevein("§fOverworld Copper Vein", 40, 20, 60, rarity[1], dimensionItem[0], [<thermalfoundation:ore> * 75, <contenttweaker:sub_block_holder_0:3> * 19, <utilitybaseores:blaze_ore> * 5, <rockhounding_chemistry:uninspected_mineral> * 1]);
addorevein("§fOverworld Tin Vein", 40, 40, 80, rarity[1], dimensionItem[0], [<thermalfoundation:ore:1> * 84, <minecraft:iron_ore> * 10, <thermalfoundation:ore:3> * 5, <rockhounding_chemistry:uninspected_mineral> * 1]);
addorevein("§fOverworld Lead Vein", 30, 5, 35, rarity[2], dimensionItem[0], [<thermalfoundation:ore:3> * 65, <thermalfoundation:ore:2> * 24, <techreborn:ore> * 10, <rockhounding_chemistry:uninspected_mineral> * 1]);
addorevein("§fOverworld Silver Vein", 30, 5, 35, rarity[2], dimensionItem[0], [<thermalfoundation:ore:2> * 65, <thermalfoundation:ore:3> * 24, <techreborn:ore> * 10, <rockhounding_chemistry:uninspected_mineral> * 1]);
addorevein("§fOverworld Aluminium Vein", 25, 0, 20, rarity[2], dimensionItem[0], [<techreborn:ore:4> * 89, <thermalfoundation:ore:4> * 5, <libvulpes:ore0:8> * 5, <rockhounding_chemistry:uninspected_mineral> * 1]);
addorevein("§fOverworld Redstone Vein", 30, 5, 20, rarity[1], dimensionItem[0], [<minecraft:redstone_ore> * 64, <techreborn:ore:2> * 15, <thermalfoundation:ore_fluid:2> * 10, <thaumcraft:ore_cinnabar> * 10, <rockhounding_chemistry:uninspected_mineral> * 1]);
addorevein("§fOverworld Emerald Vein", 25, 5, 30, rarity[3], dimensionItem[0], [<enderore:ore_ender> * 39, <minecraft:emerald_ore> * 30, <utilitybaseores:slime_ore> * 20, <fossil:fossil> * 10, <rockhounding_chemistry:uninspected_mineral> * 1]);
addorevein("§fOverworld Lapis Vein", 20, 5, 20, rarity[2], dimensionItem[0], [<minecraft:lapis_ore> * 74, <techreborn:ore:3> * 15, <utilitybaseores:prismarine_ore> * 10, <rockhounding_chemistry:uninspected_mineral> * 1]);
addorevein("§fOverworld Quartz Vein", 25, 20, 70, rarity[1], dimensionItem[0], [<mysticalworld:quartz_ore> * 60, <appliedenergistics2:quartz_ore> * 30, <ebwizardry:crystal_ore> * 5, <actuallyadditions:block_misc:3> * 4, <rockhounding_chemistry:uninspected_mineral> * 1]);
addorevein("§fOverworld Coal Vein", 45, 20, 80, rarity[1], dimensionItem[0], [<minecraft:coal_ore> * 99, <rockhounding_chemistry:uninspected_mineral> * 1]);
addorevein("§fOverworld Deep Coal Vein", 45, 0, 20, rarity[3], dimensionItem[0], [<minecraft:coal_ore> * 87, <minecraft:diamond_ore> * 10, <astralsorcery:blockcustomore>, <fossil:fossil>, <rockhounding_chemistry:uninspected_mineral> * 1]);

// Beneath Veins
addorevein("§fUranium Vein", 40, 0, 100, rarity[0], dimensionItem[3], [<nuclearcraft:ore:4> * 40, <nuclearcraft:ore:5> * 15, <nuclearcraft:ore:3> * 15, <nuclearcraft:ore:7> * 15, <nuclearcraft:ore:6> * 15]);
addorevein("§fOsmium Vein", 40, 0, 100, rarity[3], dimensionItem[3], [<mekanism:oreblock> * 60, <thermalfoundation:ore:6> * 40]);

addorevein("§fBeneath Iron Vein", 40, 10, 100, rarity[0], dimensionItem[3], [<minecraft:iron_ore> * 60, <minecraft:gold_ore> * 24, <thermalfoundation:ore:5> * 15, <rockhounding_chemistry:uninspected_mineral> * 1]);
addorevein("§fBeneath Copper Vein", 40, 1, 100, rarity[0], dimensionItem[3], [<thermalfoundation:ore> * 69, <contenttweaker:sub_block_holder_0:3> * 15, <utilitybaseores:blaze_ore> * 15, <rockhounding_chemistry:uninspected_mineral> * 1]);
addorevein("§fBeneath Tin Vein", 40, 1, 100, rarity[0], dimensionItem[3], [<thermalfoundation:ore:1> * 84, <minecraft:iron_ore> * 10, <thermalfoundation:ore:3> * 5, <rockhounding_chemistry:uninspected_mineral> * 1]);
addorevein("§fBeneath Lead Vein", 30, 1, 100, rarity[1], dimensionItem[3], [<thermalfoundation:ore:3> * 65, <thermalfoundation:ore:2> * 24, <techreborn:ore> * 10, <rockhounding_chemistry:uninspected_mineral> * 1]);
addorevein("§fBeneath Silver Vein", 30, 1, 100, rarity[1], dimensionItem[3], [<thermalfoundation:ore:2> * 65, <thermalfoundation:ore:3> * 24, <techreborn:ore> * 10, <rockhounding_chemistry:uninspected_mineral> * 1]);
addorevein("§fBeneath Aluminium Vein", 35, 0, 100, rarity[0], dimensionItem[3], [<techreborn:ore:4> * 40, <libvulpes:ore0:8> * 40, <thermalfoundation:ore:4> * 20, <rockhounding_chemistry:uninspected_mineral> * 1]);
addorevein("§fBeneath Redstone Vein", 40, 5, 100, rarity[0], dimensionItem[3], [<minecraft:redstone_ore> * 64, <techreborn:ore:2> * 15, <thermalfoundation:ore_fluid:2> * 10, <thaumcraft:ore_cinnabar> * 10, <rockhounding_chemistry:uninspected_mineral> * 1]);
addorevein("§fBeneath Emerald Vein", 30, 5, 100, rarity[2], dimensionItem[3], [<fossil:fossil> * 39, <minecraft:emerald_ore> * 20, <utilitybaseores:slime_ore> * 20, <enderore:ore_ender> * 20, <rockhounding_chemistry:uninspected_mineral> * 1]);
addorevein("§fBeneath Lapis Vein", 35, 5, 100, rarity[0], dimensionItem[3], [<minecraft:lapis_ore> * 74, <techreborn:ore:3> * 15, <utilitybaseores:prismarine_ore> * 10, <rockhounding_chemistry:uninspected_mineral> * 1]);
addorevein("§fBeneath Quartz Vein", 35, 0, 100, rarity[0], dimensionItem[3], [<mysticalworld:quartz_ore> * 40, <appliedenergistics2:quartz_ore> * 40, <actuallyadditions:block_misc:3> * 10, <ebwizardry:crystal_ore> * 5, <appliedenergistics2:charged_quartz_ore> * 4, <rockhounding_chemistry:uninspected_mineral> * 1]);
addorevein("§fBeneath Deep Coal Vein", 40, 0, 100, rarity[0], dimensionItem[3], [<minecraft:coal_ore> * 87, <minecraft:diamond_ore> * 10, <astralsorcery:blockcustomore>, <fossil:fossil>, <rockhounding_chemistry:uninspected_mineral> * 1]);

// Twilight Forest Veins

addorevein("§fTwilight Forest Quartz Vein", 30, 20, 70, rarity[1], <twilightforest:twilight_sapling>.withDisplayName("§a§lTwilight Forest§r"), [<appliedenergistics2:charged_quartz_ore> * 39, <mysticalworld:quartz_ore> * 30, <actuallyadditions:block_misc:3> * 20, <ebwizardry:crystal_ore> * 10, <rockhounding_chemistry:uninspected_mineral> * 1]);

// Nether Veins

addorevein("§fCobalt Vein", 35, 10, 64, rarity[2], dimensionItem[1], [<tconstruct:ore> * 75, <techreborn:ore:7> * 15, <mysticalagriculture:nether_prosperity_ore> * 10]);
addorevein("§fArdite Vein", 35, 10, 64, rarity[2], dimensionItem[1], [<tconstruct:ore:1> * 50, <techreborn:ore:5> * 40, <thermalfoundation:ore_fluid:3> * 10]);
addorevein("§fCinnabar Vein", 25, 70, 120, rarity[1], dimensionItem[1], [<contenttweaker:sub_block_holder_0:7> * 65, <techreborn:ore:6> * 35]);
addorevein("§fNether Quartz Vein", 20, 10, 118, rarity[0], dimensionItem[1], [<minecraft:quartz_ore> * 100]);

// End Veins

addorevein("§fTungsten Vein", 30, 10, 150, rarity[2], dimensionItem[2], [<techreborn:ore:8> * 80, <quark:biotite_ore> * 10, <thermalfoundation:ore_fluid:4> * 10]);
addorevein("§fSheldonite Vein", 30, 10, 150, rarity[2], dimensionItem[2], [<techreborn:ore:9> * 75, <techreborn:ore:11> * 15, <techreborn:ore:10> * 10]);
addorevein("§fAdamantine Vein", 20, 10, 150, rarity[2], dimensionItem[2], [<contenttweaker:sub_block_holder_0:8> * 85, <rftools:dimensional_shard_ore:2> * 15]);

// Moon Veins

addorevein("§fIridium Vein", 25, 0, 40, rarity[3], dimensionItem[4], [<thermalfoundation:ore:7> * 60, <mekanism:oreblock> * 20, <thermalfoundation:ore:6> * 20]);
addorevein("§fMoon Aluminium Vein", 30, 0, 100, rarity[0], dimensionItem[4], [<libvulpes:ore0:8> * 80, <thermalfoundation:ore:4> * 18, <techreborn:ore:4> * 1, <rockhounding_chemistry:uninspected_mineral> * 1]);
addorevein("§fDilithium Vein", 30, 0, 100, rarity[0], dimensionItem[4], [<libvulpes:ore0> * 80, <rockhounding_chemistry:uninspected_mineral> * 20]);
addorevein("§fGem Vein", 30, 20, 60, rarity[0], dimensionItem[4], [<mysticalworld:amethyst_ore> * 55, <ebwizardry:crystal_ore> * 15, <densemetals:dense_diamond_ore> * 15, <chisel:energizedvoidstone> * 15]);

addorevein("§8Dark Moon Geode", 15, 0, 100, rarity[0], dimensionItem[4], [<appliedenergistics2:sky_stone_block>.withLore(["§8Geode Wall§r"]), <actuallyadditions:block_misc:3> * 33, <fluxnetworks:fluxblock> * 33, <thaumcraft:metal_void> * 33]);
addorevein("§8Ancient Moon Spike", 30, 64, 100, rarity[0], dimensionItem[4], [<thaumcraft:stone_ancient_rock> * 99, <mysticalworld:amethyst_block>]);
addorevein("§8Eldritch Moon Spike", 30, 64, 100, rarity[0], dimensionItem[4], [<thaumcraft:stone_eldritch_tile> * 99, <mysticalworld:amethyst_block>]);

// Generated Structures

addorevein("§e§lTwilight Forest Hollow Hill§r", 30, 20, 70, null, <twilightforest:twilight_plant:7>.withDisplayName("§eTwilight Forest Hollow Hill§r").withLore(["§7Ores spawn as stalacites§r"]), [<aetherworks:aether_ore>, <mysticalagriculture:prosperity_ore>, <appliedenergistics2:charged_quartz_ore>, <thaumcraft:ore_amber>, <minecraft:emerald_ore>, <techreborn:ore:2>]);
addorevein("§e§lAdvanced Rocketry Geode§r", 36, 0, 100, null, <advancedrocketry:geode>.withDisplayName("§eAdvanced Rocketry Geode§r").withLore(["§7Spawns on other planets§r"]), [<astralsorcery:blockcustomore:1>, <nuclearcraft:ore:5>, <nuclearcraft:ore:4>, <nuclearcraft:ore:3>, <thermalfoundation:ore:6>, <thermalfoundation:ore:7>]);
addorevein("§e§lAdvanced Rocketry Geode§r", 36, 0, 100, null, <advancedrocketry:geode>.withDisplayName("§eAdvanced Rocketry Geode§r").withLore(["§7Spawns on other planets§r"]), [<techreborn:ore:4>, <quark:biotite_ore>, <libvulpes:ore0:8>, <techreborn:ore:7>, <techreborn:ore:8>, <techreborn:ore:9>]);
addorevein("§e§lAdvanced Rocketry Geode§r", 36, 0, 100, null, <advancedrocketry:geode>.withDisplayName("§eAdvanced Rocketry Geode§r").withLore(["§7Spawns on other planets§r"]), [<techreborn:ore:2>]);


// --== AG Turbine Fuels ==-- //

var turbine = <assembly:turbine>;
turbine.addJEICatalyst(<advgenerators:turbine_controller>);
turbine.setJEIDurationSlot(1,0,"duration", getVisGauge(0,5));
turbine.setJEIFluidSlot(0, 0, 'liquid_input');
turbine.setJEIEnergySlot(2, 0, 'energy_out', "rf");

// Adds AG Turbine fuels to the RQ JEI page. Format is fluid : energy per bucket.

var turbinefuels = {
<liquid:biomass> : 200000,
<liquid:canolaoil> : 100000,
<liquid:refinedcanolaoil> : 360000,
<liquid:crystaloil> : 2000000,
<liquid:empoweredoil> : 7500000,
<liquid:creosote> : 80000,
<liquid:oil> : 400000,
<liquid:crude_oil> : 400000,
<liquid:biodiesel> : 1050000,
<liquid:diesel> : 1650000,
<liquid:blended_diesel> : 1650000,
<liquid:boosted_diesel> : 3700000,
<liquid:gasoline> : 1150000,
<liquid:coal> : 400000,
<liquid:refined_oil> : 1200000,
<liquid:refined_fuel> : 2000000,
<liquid:tree_oil> : 1200000,
<liquid:seed_oil> : 1000000,
<liquid:refined_biofuel> : 2500000,
<liquid:ethene> : 2750000,
<liquid:hootch> : 600000,
<liquid:fire_water> : 1200000,
<liquid:fluidmethane> : 1200000,
<liquid:fluidnitrodiesel> : 10000000,
<liquid:rocketfuel> : 20000000
} as int[ILiquidStack];

for fluid, power in turbinefuels {
  turbine.addJEIRecipe(AssemblyRecipe.create(function(container) {
      container.addEnergyOutput('energy_out', power, 0);
    }).requireFluid('liquid_input', fluid * 1000));
}



// --== Mark of the Fallen Tower ==-- //

var meteor = <assembly:fallen_tower>;
meteor.addJEICatalyst(<bloodmagic:ritual_diviner:1>.withTag({current_ritual: "meteor"}));
meteor.addJEICatalyst(<bloodmagic:ritual_controller>);
meteor.setJEIDurationSlot(1, 1,"duration", getVisGauge(0,5));
meteor.setJEIItemSlot (0, 1, 'catalyst', getVisSlots(3,1));
meteor.setJEIFluidSlot(0, 0, 'blood');

var k = 0;
for y in 0 .. 2 {
  for x in 2 .. 9 {
    meteor.setJEIItemSlot(x, y, 'item_output'~k);
    k += 1;
  }
}

// Adds Mark of the Fallen Tower Meteors to the RQ JEI page. Quantity of items is determined by percentage of total weight.

function add_meteor_recipe(catalyst as IItemStack, radius as int, bloodqty as int, out as IItemStack[]) {
  val assRec = AssemblyRecipe.create(function(container) {
      for i, output in out {
        if(isNull(output)) continue;
        container.addItemOutput("item_output" ~ i, output);
      }
    });
    assRec.requireItem("catalyst", catalyst.withLore(["§6Meteor Radius: " ~ radius]));
    assRec.requireFluid("blood", <liquid:lifeessence> * bloodqty);
  <assembly:fallen_tower>.addJEIRecipe(assRec);
}

add_meteor_recipe(<minecraft:iron_block>, 5, 1000000, [
<minecraft:iron_ore> * 37, 
<thermalfoundation:ore> * 19, 
<thermalfoundation:ore:1> * 13, 
<minecraft:redstone_ore> * 9,
<thermalfoundation:ore:3> * 7,
<thermalfoundation:ore:2> * 6,
<minecraft:lapis_ore> * 6,
<minecraft:gold_ore> * 3
]);

add_meteor_recipe(<minecraft:gold_block>,  6, 2500000, [
<minecraft:iron_ore> * 31,
<minecraft:lapis_ore> * 19,
<thermalfoundation:ore> * 15,
<minecraft:gold_ore> * 15,
<thermalfoundation:ore:1> * 9,
<minecraft:diamond_ore> * 5,
<minecraft:emerald_ore> * 3,
<minecraft:coal_ore> * 3
]);

add_meteor_recipe(<minecraft:diamond_block>, 3, 5000000, [
<minecraft:diamond_ore> * 62,
<minecraft:emerald_ore> * 17,
<minecraft:gold_ore> * 10,
<minecraft:redstone_ore> * 5,
<minecraft:iron_ore> * 5,
<minecraft:lapis_ore>
]);

add_meteor_recipe(<contenttweaker:starmetal_block>, 4, 1000000, [
<astralsorcery:blockcustomore:1> * 50,
<minecraft:packed_ice> * 25,
<appliedenergistics2:sky_stone_block> * 25
]);

add_meteor_recipe(<immersiveengineering:storage:5>, 6, 2500000, [
<nuclearcraft:ore:4> * 29,
<nuclearcraft:ore:3> * 22,
<nuclearcraft:ore:5> * 17,
<nuclearcraft:ore:6> * 16,
<nuclearcraft:ore:7> * 11,
<rockhounding_chemistry:uninspected_mineral> * 5
]);

add_meteor_recipe(<botania:conjurationcatalyst>, 4, 5000000, [
<thermalfoundation:ore:7> * 64,
<thermalfoundation:ore:6> * 18,
<mekanism:oreblock> * 18
]);



// --== Mineralis Ritual ==-- //

var mineralis_ritual = <assembly:mineralis>;
mineralis_ritual.addJEICatalyst(<astralsorcery:blockritualpedestal>);
mineralis_ritual.addJEICatalyst(<astralsorcery:itemtunedcelestialcrystal>.withTag({astralsorcery: {constellationName: "astralsorcery.constellation.mineralis", crystalProperties: {collectiveCapability: 100, size: 900, fract: 0, purity: 100, sizeOverride: -1}}}));
mineralis_ritual.addJEICatalyst(<astralsorcery:itemtunedrockcrystal>.withTag({astralsorcery: {constellationName: "astralsorcery.constellation.mineralis", crystalProperties: {collectiveCapability: 100, size: 400, fract: 0, purity: 100, sizeOverride: -1}}}));

// Adds Mineralis Ores to the RQ JEI page. Quantity is determined by weight of ore.

val mineralisList = [
<minecraft:coal_ore> * 64,
<minecraft:iron_ore> * 30,
<thermalfoundation:ore:1> * 18,
<thermalfoundation:ore> * 13,
<thermalfoundation:ore:3> * 12,
<minecraft:redstone_ore> * 8,
<thermalfoundation:ore:4> * 7,
<minecraft:gold_ore> * 6,
<appliedenergistics2:quartz_ore> * 6,
<thermalfoundation:ore:5> * 3,
<thermalfoundation:ore:2> * 2,
<minecraft:diamond_ore> * 2,
<minecraft:lapis_ore>,
<minecraft:emerald_ore>,
] as IItemStack[];

k = 0;
for y in 0 .. (mineralisList.length / 9 + 1) as int {
  for x in 0 .. 9 {
    mineralis_ritual.setJEIItemSlot(x, y, 'item_output'~k);
    k += 1;
  }
}

add(mineralis_ritual, {[] : mineralisList});



// --== Neromantic Prime ==-- //

var neromantic_prime = <assembly:neromantic_prime>;
neromantic_prime.addJEICatalyst(<astralsorcery:blockbore>);
neromantic_prime.addJEICatalyst(<astralsorcery:blockborehead>);
neromantic_prime.addJEICatalyst(<astralsorcery:blockchalice>);
neromantic_prime.setJEIDurationSlot(1, 0, "duration", getVisGauge(0,6));
neromantic_prime.setJEIItemSlot(0, 0, "information", getVisSlots(4,1));
neromantic_prime.setJEIFluidSlot(2, 0, "fluidvein");

// Adds a Neromatic Prime Vein to the RQ JEI Page. Fluid quantities are defined by guaranteedMbAmount.

function add_nero_vein(FluidName as string, guaranteedMbAmount as int, additionalRandomMbAmount as int, rarity as int, fluid as ILiquidStack) {
  val assRec = AssemblyRecipe.create(function(container) {
      container.addFluidOutput("fluidvein", fluid);
    });
    assRec.requireItem("information", <minecraft:book>.withDisplayName(FluidName).withLore(
      ["§fMinimum Fluid: " ~ guaranteedMbAmount ~ "mb", "§fMaximum Additional Fluid: " ~ additionalRandomMbAmount ~ "mb", "§6Weight: " ~ rarity]
      ));
  <assembly:neromantic_prime>.addJEIRecipe(assRec);
}

add_nero_vein("§fWater", 2147483647, 2147483647, 14000, <liquid:water> * 4000000);
add_nero_vein("§fLava", 4000000, 1000000, 7500, <liquid:lava> * 4000000);
add_nero_vein("§fCrystal Oil", 600000, 400000, 800, <liquid:crystaloil> * 600000);
add_nero_vein("§fEmpowered Oil", 350000, 150000, 200, <liquid:empoweredoil> * 350000);
add_nero_vein("§fRedstone", 120000, 70000, 500, <liquid:redstone> * 120000);
add_nero_vein("§fGlowstone", 120000, 70000, 500, <liquid:glowstone> * 120000);
add_nero_vein("§fEnder", 140000, 60000, 250, <liquid:ender> * 140000);
add_nero_vein("§fPyrotheum", 200000, 120000, 200, <liquid:pyrotheum> * 200000);
add_nero_vein("§fCryotheum", 200000, 120000, 200, <liquid:cryotheum> * 200000);  
add_nero_vein("§fNaphtha", 480000, 400000, 600, <liquid:refined_oil> * 480000);
add_nero_vein("§fRefined Fuel", 450000, 300000, 550, <liquid:refined_fuel> * 450000);
add_nero_vein("§fIron", 600000, 350000, 900, <liquid:iron> * 600000);
add_nero_vein("§fGold", 400000, 350000, 600, <liquid:gold> * 400000);
add_nero_vein("§fCobalt", 150000, 150000, 80, <liquid:cobalt> * 150000);
add_nero_vein("§fArdite", 150000, 150000, 80, <liquid:ardite> * 150000);
add_nero_vein("§fEmerald", 60000, 90000, 30, <liquid:emerald> * 60000);
add_nero_vein("§fOil", 500000, 350000, 900, <liquid:crude_oil> * 500000);
add_nero_vein("§fNitro Diesel", 400000, 250000, 450, <liquid:fluidnitrodiesel> * 400000);
add_nero_vein("§fMana", 550000, 120000, 1500, <liquid:mana> * 550000);



// --== Chalice Interactions ==-- //

var chalice_interactions = <assembly:chalice>;
chalice_interactions.addJEICatalyst(<astralsorcery:blockchalice>);
chalice_interactions.setJEIDurationSlot(1,0,"duration", getVisGauge(0,6));
chalice_interactions.setJEIFluidSlot(0, 0, "fluid_input0");
chalice_interactions.setJEIFluidSlot(2, 0, "fluid_input1");
chalice_interactions.setJEIItemSlot(1, 1, "item_output0");
chalice_interactions.setJEIItemSlot(0, 2, "item_output1");
chalice_interactions.setJEIItemSlot(2, 2, "item_output2");

// Adds a Chalice Interaction to the RQ JEI Page. Item Quantities are determined by the weight of the item.

function add_everflow_chalice(input1 as ILiquidStack, input2 as ILiquidStack, out as IItemStack[]) {
  val assRec = AssemblyRecipe.create(function(container) {
      for i, output in out {
        if(isNull(output)) continue;
        container.addItemOutput("item_output" ~ i, output);
      }
    });
    assRec.requireFluid("fluid_input0", input1);
    assRec.requireFluid("fluid_input1", input2);
  <assembly:chalice>.addJEIRecipe(assRec);
}

add_everflow_chalice(<liquid:water> * 10, <liquid:lava> * 10, [<minecraft:cobblestone> * 60, <minecraft:stone> * 30, <minecraft:obsidian> * 10]);
add_everflow_chalice(<liquid:water> * 10, <liquid:astralsorcery.liquidstarlight> * 10, [<minecraft:ice> * 100]);
add_everflow_chalice(<liquid:lava> * 10, <liquid:astralsorcery.liquidstarlight> * 10, [<minecraft:sand> * 99, <astralsorcery:blockcustomsandore> * 1]);
add_everflow_chalice(<liquid:petrotheum> * 25, <liquid:astralsorcery.liquidstarlight> * 100, [<appliedenergistics2:sky_stone_block> * 89, <appliedenergistics2:smooth_sky_stone_block> * 10, <contenttweaker:starmetal_block> * 1]);



// --== Lens of the Miner ==-- //

var lens_of_the_miner = <assembly:lens_of_the_miner>;
lens_of_the_miner.addJEICatalyst(<actuallyadditions:item_mining_lens>);
lens_of_the_miner.addJEICatalyst(<actuallyadditions:block_atomic_reconstructor>);
lens_of_the_miner.setJEIDurationSlot(1,0,"duration", getVisGauge(4,2));
addInsOuts(lens_of_the_miner, [[0,0]], [[2,0]]);

// Adds a Mining Lens ore to the RQ JEI Page. 

function addMiningLensOre(base as IIngredient, oreDictName as string, weight as int) as void {
  val ore = oreDict[oreDictName];
  if(ore.items.length == 0) return;
  val output = ore.firstItem.withLore(["§e§lWeight: " ~ weight]);
  add(<assembly:lens_of_the_miner>, {[base] as IIngredient[] : [output]});
}

function addMiningLensStoneOre(oreDictName as string, weight as int) {
  addMiningLensOre(<minecraft:stone>, oreDictName, weight);
}
function addMiningLensNetherOre(oreDictName as string, weight as int) {
  addMiningLensOre(<minecraft:netherrack>, oreDictName, weight);
}

// Values taken from:
// https://github.com/Ellpeck/ActuallyAdditions/blob/main/src/main/java/de/ellpeck/actuallyadditions/common/items/lens/LensMining.java
addMiningLensStoneOre("oreCoal", 5000);
addMiningLensStoneOre("oreIron", 3000);
addMiningLensStoneOre("oreGold", 500);
addMiningLensStoneOre("oreDiamond", 50);
addMiningLensStoneOre("oreLapis", 250);
addMiningLensStoneOre("oreRedstone", 200);
addMiningLensStoneOre("oreEmerald", 30);

addMiningLensStoneOre("oreCopper", 2000);
addMiningLensStoneOre("oreTin", 1800);
addMiningLensStoneOre("oreLead", 1500);
addMiningLensStoneOre("oreSilver", 1000);
addMiningLensStoneOre("oreNickel", 100);
addMiningLensStoneOre("orePlatinum", 20);
addMiningLensStoneOre("oreAluminum", 1200);
addMiningLensStoneOre("oreAluminium", 1200);
addMiningLensStoneOre("oreOsmium", 1500);
addMiningLensStoneOre("oreUranium", 400);
addMiningLensStoneOre("oreCertusQuartz", 800);
addMiningLensStoneOre("oreQuartzBlack", 3000);
addMiningLensStoneOre("oreRuby", 40);
addMiningLensStoneOre("orePeridot", 40);
addMiningLensStoneOre("oreTopaz", 40);
addMiningLensStoneOre("oreSapphire", 40);
addMiningLensStoneOre("oreAmber", 150);

addMiningLensNetherOre("oreQuartz", 3000);
addMiningLensNetherOre("oreCobalt", 50);
addMiningLensNetherOre("oreArdite", 50);



// --== Smeltery Fuels ==-- //

var smeltery_fuels = <assembly:smeltery_fuel>;
smeltery_fuels.addJEICatalyst(<tcomplement:melter>);
smeltery_fuels.addJEICatalyst(<tcomplement:high_oven_controller>);
smeltery_fuels.setJEIFluidSlot(0, 0, "fuel");
smeltery_fuels.setJEIDurationSlot(1, 0, "duration", getVisGauge(1, 1));
smeltery_fuels.setJEIItemSlot(2, 0, "heat", getVisSlots(2,0));

// Adds a smeltery fuel to the RQ JEI Page. 

function add_smeltery_fuel(fluid as ILiquidStack, duration as int) {
  val assRec = AssemblyRecipe.create(function(container) {
      container.addItemOutput("heat", <embers:ember_detector>.withDisplayName("§e" ~ fluid.temperature ~ "K"));
    });
    assRec.requireFluid("fuel", fluid);
    assRec.requireDuration("duration", duration);
  <assembly:smeltery_fuel>.addJEIRecipe(assRec);  
}

add_smeltery_fuel(<liquid:lava> * 50, 80);
add_smeltery_fuel(<liquid:pyrotheum> * 25, 400);
add_smeltery_fuel(<liquid:moltenembers> * 50, 50);



// --== Laser Drill Ores ==-- //
var laser_drill = <assembly:laser_drill>;
laser_drill.addJEICatalyst(<advancedrocketry:spacelaser>);

// Adds laser drill ores to the RQ JEI Page. 

val laserDrillList = [
<quark:biotite_ore>,
<astralsorcery:blockcustomore:1>,
<mekanism:oreblock>,
<thermalfoundation:ore:6>,
<aetherworks:aether_ore>,
<minecraft:diamond_ore>,
<avaritia:resource:2>,
<appliedenergistics2:sky_stone_block>
] as IItemStack[];

var l = 0;
for y in 0 .. (laserDrillList.length / 9 + 1) as int {
  for x in 0 .. 9 {
    laser_drill.setJEIItemSlot(x, y, 'item_output'~l);
    l += 1;
  }
}

add(laser_drill, {[] : laserDrillList});



// --== Opencomputers 3D Printer ==-- //

var oc_printer3d = <assembly:oc_printer3d>;
oc_printer3d.addJEICatalyst(<opencomputers:printer>);
oc_printer3d.setJEIDurationSlot(2,0,"duration", SlotVisual.arrowRight());
addInsOuts(oc_printer3d, [[0,0],[1,0]], [[3,0]]);
add(oc_printer3d, {[<opencomputers:material:28>, <ore:dye>] : [<opencomputers:print>]});



// --== Opencomputers Electronics Assembler ==-- //

var electronics_assembler = <assembly:electronics_assembler>;
electronics_assembler.addJEICatalyst(<opencomputers:assembler>);
electronics_assembler.setJEIDurationSlot(1,0,"duration", SlotVisual.arrowRight());
addInsOuts(electronics_assembler, [[0,0]], [[2,0]]);
add(electronics_assembler, {[<opencomputers:case1> | <opencomputers:case2> | <opencomputers:case3>] : [<opencomputers:robot>]});
add(electronics_assembler, {[<opencomputers:material:17> | <opencomputers:material:18>] : [<opencomputers:misc>]});
add(electronics_assembler, {[<opencomputers:material:23> | <opencomputers:material:24>] : [<opencomputers:misc:1>]});



// --== Oil Generator ==-- //

var oil_generator = <assembly:oil_generator>;
oil_generator.addJEICatalyst(<actuallyadditions:block_oil_generator>);
oil_generator.setJEIDurationSlot(1,0,"duration", getVisSlots(5,1));
oil_generator.setJEIFluidSlot(0, 0, 'liquid_input');
oil_generator.setJEIEnergySlot(2, 0, 'energy_out', "rf");

// Adds Oil Generator Fuels to the RQ JEI Page.

var oilgeneratorfuels = {
<liquid:canolaoil> : [2000, 80000],
<liquid:refinedcanolaoil> : [2400, 192000],
<liquid:crystaloil> : [5600, 560000],
<liquid:empoweredoil> : [8000, 960000]
} as int[][ILiquidStack];

for fluid, values in oilgeneratorfuels {
  val assRec = AssemblyRecipe.create(function(container) {
      container.addEnergyOutput('energy_out', values[1]);
    });
    assRec.requireFluid('liquid_input', fluid * 1000);
    assRec.requireDuration("duration", values[0]);
  oil_generator.addJEIRecipe(assRec);
}



// --== Ember Bore ==-- //

var ember_bore = <assembly:ember_bore>;
ember_bore.addJEICatalyst(<embers:ember_bore>);
ember_bore.setJEIItemSlot(0,0, "information", getVisSlots(4,1));
ember_bore.setJEIDurationSlot(1, 0, "duration", getVisGauge(2,6));

k = 0;
for x in 2 .. 5 {
  ember_bore.setJEIItemSlot(x, 0, 'item_output'~k);
  k += 1;
}


val emberlist = [<embers:dust_ember>, <embers:shard_ember>, <embers:crystal_ember>] as IItemStack[];

val emberRecipes = AssemblyRecipe.create(function(container) {
      for i, output in emberlist {
        container.addItemOutput('item_output'~i, output);
      }
    });
emberRecipes.requireItem("information", <minecraft:book>.withDisplayName("§fAny Dimension"));
ember_bore.addJEIRecipe(emberRecipes);

// --== Stellar Refraction Table ==-- //
// TODO Can consider replacing books with items representing enchants for better readability?
var refraction_table = <assembly:refraction_table>;
refraction_table.addJEICatalyst(<astralsorcery:blockmapdrawingtable>);
refraction_table.addJEICatalyst(<astralsorcery:iteminfusedglass>);
refraction_table.setJEIItemSlot(0, 0, "constellation");
refraction_table.setJEIDurationSlot(1, 0, "duration", getVisSlots(1,7));
refraction_table.setJEIItemSlot(2, 0, "enchantment");
refraction_table.setJEIItemSlot(3, 0, "potion");


// Doesn't work because CT can't cast IData[] to IData
// function enchantedBook(enchantments as int[][]) as IItemStack {
//   var enchantmentList = [] as IData[];
//   for enchantment in enchantments {
//     var enchantment_nbt = {
//       lvl: enchantment[1],
//       id: enchantment[0]
//     } as IData;
//     enchantmentList += enchantment_nbt;
//   }
//   return <minecraft:enchanted_book>.withTag({StoredEnchantments: enchantmentList});
// }

// Returns an enchanted book given a 2D array of enchantment ids to levels. Can only accept up to 4 enchants

function enchantedBook(enchantments as IEnchantment[]) as IItemStack {
  var enchant_count = enchantments.length;

  if (enchant_count == 1) {
    return <minecraft:enchanted_book>.withTag({StoredEnchantments: enchantments[0].makeTag().ench});
  }
  else if (enchant_count == 2) {
    return <minecraft:enchanted_book>.withTag({StoredEnchantments: [enchantments[0].makeTag().ench[0], 
    enchantments[1].makeTag().ench[0]]});
  }
  else if (enchant_count == 3) {
    return <minecraft:enchanted_book>.withTag({StoredEnchantments: [enchantments[0].makeTag().ench[0], 
    enchantments[1].makeTag().ench[0], enchantments[2].makeTag().ench[0]]});
  }
  else if (enchant_count == 4) {
    return <minecraft:enchanted_book>.withTag({StoredEnchantments: [enchantments[0].makeTag().ench[0], 
    enchantments[1].makeTag().ench[0], enchantments[2].makeTag().ench[0], enchantments[3].makeTag().ench[0]]});    
  }
}

// Adds Refraction Table outputs to the RQ JEI Page.

function addRefractionRecipe(info as string, enchantments as IEnchantment[], potions as IPotionEffect[]) {
    val assRec = AssemblyRecipe.create(function(container) {
      container.addItemOutput("enchantment", enchantedBook(enchantments));
      container.addItemOutput("potion", itemUtils.createPotion(potions).withDisplayName("§fStardew"));
    });
    assRec.requireItem("constellation", <astralsorcery:itemconstellationpaper>.withTag(
      {astralsorcery: {constellationName: "astralsorcery.constellation." ~ info}}
      ).withDisplayName("§f" ~ info));
    <assembly:refraction_table>.addJEIRecipe(assRec);
}

addRefractionRecipe("discidia", [<enchantment:minecraft:sharpness> * 7, <enchantment:minecraft:power> * 7], [<potion:minecraft:strength>.makePotionEffect(7200, 3)]);
addRefractionRecipe("armara", [<enchantment:minecraft:protection> * 5], [<potion:minecraft:resistance>.makePotionEffect(7200, 2)]);
addRefractionRecipe("vicio", [<enchantment:minecraft:feather_falling> * 5], [<potion:minecraft:speed>.makePotionEffect(7200, 3)]);
addRefractionRecipe("aevitas", [<enchantment:minecraft:mending> * 3], [<potion:minecraft:regeneration>.makePotionEffect(7200, 3)]);
addRefractionRecipe("evorsio", [<enchantment:minecraft:efficiency> * 5], [<potion:minecraft:haste>.makePotionEffect(7200, 3)]);
addRefractionRecipe("lucerna", [<enchantment:astralsorcery:enchantment.as.nightvision> * 1], [<potion:minecraft:night_vision>.makePotionEffect(7200, 2)]);
addRefractionRecipe("mineralis", [<enchantment:minecraft:fortune> * 3], [<potion:minecraft:haste>.makePotionEffect(7200, 3)]);
addRefractionRecipe("horologium", [<enchantment:minecraft:fortune> * 6, <enchantment:minecraft:looting> * 6], 
[<potion:minecraft:speed>.makePotionEffect(7200, 4), <potion:minecraft:haste>.makePotionEffect(7200, 8)]);
addRefractionRecipe("octans", [<enchantment:minecraft:respiration> * 4], [<potion:minecraft:water_breathing>.makePotionEffect(7200, 4)]);
addRefractionRecipe("bootes", [<enchantment:minecraft:silk_touch> * 1], [<potion:minecraft:saturation>.makePotionEffect(7200, 5)]);
addRefractionRecipe("fornax", [<enchantment:minecraft:fire_aspect> * 3, <enchantment:minecraft:flame> * 2, 
<enchantment:astralsorcery:enchantment.as.smelting> * 1], [<potion:minecraft:fire_resistance>.makePotionEffect(7200, 0)]);
addRefractionRecipe("pelotrio", [<enchantment:minecraft:infinity> * 1, <enchantment:minecraft:lure> * 6], 
[<potion:minecraft:regeneration>.makePotionEffect(7200, 4), <potion:minecraft:absorption>.makePotionEffect(7200, 4)]);
addRefractionRecipe("gelu", [<enchantment:minecraft:frost_walker> * 2, <enchantment:minecraft:feather_falling> * 4, <enchantment:minecraft:unbreaking> * 4], 
[<potion:minecraft:resistance>.makePotionEffect(7200, 2), <potion:minecraft:fire_resistance>.makePotionEffect(7200, 0), <potion:minecraft:slowness>.makePotionEffect(7200, 1)]);
addRefractionRecipe("ulteria", [<enchantment:minecraft:unbreaking> * 3, <enchantment:minecraft:fire_protection> * 6, 
<enchantment:minecraft:blast_protection> * 6, <enchantment:minecraft:projectile_protection> * 6], 
[<potion:minecraft:absorption>.makePotionEffect(7200, 2), <potion:minecraft:regeneration>.makePotionEffect(7200, 1), <potion:minecraft:weakness>.makePotionEffect(7200, 2)]);
addRefractionRecipe("alcara", [<enchantment:minecraft:sweeping> * 7, <enchantment:minecraft:lure> * 5, <enchantment:minecraft:luck_of_the_sea> * 6], 
[<potion:minecraft:luck>.makePotionEffect(7200, 4), <potion:minecraft:invisibility>.makePotionEffect(7200, 1),<potion:minecraft:hunger>.makePotionEffect(7200, 2)]);
addRefractionRecipe("vorux", [<enchantment:minecraft:smite> * 7, <enchantment:minecraft:bane_of_arthropods> * 7, 
<enchantment:minecraft:sharpness> * 4, <enchantment:minecraft:power> * 4], 
[<potion:minecraft:strength>.makePotionEffect(7200, 3), <potion:minecraft:resistance>.makePotionEffect(7200, 1),<potion:minecraft:mining_fatigue>.makePotionEffect(7200, 3)]);


// --== Apotheosis Enchants ==-- //

var apotheosis_enchants = <assembly:apotheosis_enchants>;
apotheosis_enchants.setJEIItemSlot(0, 0, "type");
apotheosis_enchants.addJEICatalyst(<minecraft:enchanting_table>);
apotheosis_enchants.addJEICatalyst(<apotheosis:hellshelf>);

k = 0;
for y in 0 .. 4 {
  for x in 2 .. 9 {
    apotheosis_enchants.setJEIItemSlot(x, y, 'enchant_book'~k);
    k += 1;
  }
}

// Adds Enchantments to the RQ JEI page. 

function add_enchants(type as IItemStack, enchantments as IEnchantment[]) {
  val assRec = AssemblyRecipe.create(function(container) {
      for i, enchantment in enchantments {
        if(isNull(enchantment)) continue;
        // If enchantment is an eio enchantment, create the book using the id
          container.addItemOutput("enchant_book" ~ i, enchantedBook([enchantment]));
      }});
    assRec.requireItem("type", type);
  <assembly:apotheosis_enchants>.addJEIRecipe(assRec);
}

// Adds tooltips for enchanted books of all levels of the given IEnchantment and adds the highest level book to JEI.

function bookTooltips(enchantment as IEnchantment) {
  // If enchantment is an eio enchantment, redirect to eio_book_tooltips
  var eio_enchants = {
    <enchantment:enderio:repellent> * 20:37,
    <enchantment:enderio:shimmer> * 1:39,
    <enchantment:enderio:soulbound> * 1:31,
    <enchantment:enderio:witherarrow> * 1:36,
    <enchantment:enderio:witherweapon> * 1:38,
  } as int[IEnchantment];

  if (eio_enchants.keys has enchantment) {
    bookTooltips_int(eio_enchants[enchantment], enchantment.level);
  }
  else
  {
    // Add maximum level tooltip to the highest level book
    val maxbook = <minecraft:enchanted_book>.withTag({StoredEnchantments: enchantment.makeTag().ench});
    maxbook.addTooltip("§2Maximum Level");

    // If highest level is 1, no additional actions required
    val highestlevel = enchantment.level;
    if (highestlevel > 1) {
      // Loop through all lower-level books, add belowmaxleveldesc tooltip
      val belowmaxleveldesc = "§6Max Level: " ~ highestlevel as string;
      val enchant_definition = enchantment.definition;

      for i in 1 to highestlevel {
        var lowerlevelenchant = enchant_definition * i;
        <minecraft:enchanted_book>.withTag({StoredEnchantments: lowerlevelenchant.makeTag().ench}).addTooltip(belowmaxleveldesc);
      }

      // Add highest level book to JEI (doesn't work for some reason)
      // addItem(maxbook);
    }
  }
}

// Does the same thing as the above function, but accepts the enchantment_id and highestlevel as inputs.
// This is solely because EIO enchants are janky

function bookTooltips_int(ench_id as int, highestlevel as int) {
  val maxbook = <minecraft:enchanted_book>.withTag({StoredEnchantments: {lvl: highestlevel, id: ench_id}});
  maxbook.addTooltip("§2Maximum Level");

  if (highestlevel > 1) {
    val belowmaxleveldesc = "§6Max Level: " ~ highestlevel as string;
    for i in 1 to highestlevel {
      <minecraft:enchanted_book>.withTag({StoredEnchantments: {lvl: i, id: ench_id}}).addTooltip(belowmaxleveldesc);
    }
  }
}


var ench_desc_items = [<minecraft:enchanting_table>, <apotheosis:hellshelf>] as IItemStack[];
addDescription(ench_desc_items, "These JEI pages contain max level enchants in text form, if you prefer.");


val general_enchants = [
  <enchantment:minecraft:mending> * 7,
  <enchantment:minecraft:unbreaking> * 16,
  <enchantment:apotheosis:life_mending> * 5,
  <enchantment:cofhcore:soulbound> * 17,
  <enchantment:tombstone:soulbound> * 1,
  <enchantment:cofhcore:holding> * 17, // All powered items
  <enchantment:cofhcore:insight> * 17, // All tools and weapons
  <enchantment:endercore:xpboost> * 17, // All tools and weapons
  <enchantment:openblocks:flim_flam> * 17, // Weaopons and armour
  <enchantment:apotheosis:splitting> * 18, // Anvil
  <enchantment:capsule:recall> * 1, // Capsules
  <enchantment:minecraft:vanishing_curse> * 1,
  <enchantment:enderio:soulbound> * 1, // Broken
  <enchantment:enderio:shimmer> * 1 // Broken
] as IEnchantment[];

add_enchants(<minecraft:book>.withDisplayName("§fGeneral Enchants"), general_enchants);
var general_enchants_description = "General Enchants:" as string;
for enchant in general_enchants {
  bookTooltips(enchant);
  general_enchants_description += "\n" ~ enchant.displayName ~ "§r";
}
addDescription(ench_desc_items, general_enchants_description);


val tool_enchants = [
  <enchantment:minecraft:efficiency> * 16,
  <enchantment:minecraft:silk_touch> * 1,
  <enchantment:minecraft:fortune> * 5,
  <enchantment:cofhcore:smashing> * 1,
  <enchantment:cyclicmagic:enchantment.autosmelt> * 18,
  <enchantment:astralsorcery:enchantment.as.smelting> * 1,
  <enchantment:cofhcore:smelting> * 1,
  <enchantment:apotheosis:depth_miner> * 13,
  <enchantment:cyclicmagic:enchantment.excavation> * 18,
  <enchantment:cyclicmagic:enchantment.magnet> * 18,
  <enchantment:randomthings:magnetic> * 16,
  <enchantment:cyclicmagic:enchantment.expboost> * 18,
  <enchantment:fossil:archeology> * 14,
  <enchantment:fossil:paleontology> * 14,
  <enchantment:endercore:autosmelt> * 1 // Broken
] as IEnchantment[];

add_enchants(<minecraft:diamond_pickaxe>.withDisplayName("§fTool Enchants"), tool_enchants);
var tool_enchants_description = "Tool Enchants:" as string;
for enchant in tool_enchants {
  bookTooltips(enchant);
  tool_enchants_description += "\n" ~ enchant.displayName ~ "§r";
}
addDescription(ench_desc_items, tool_enchants_description);


val fishing_rod_enchants = [
  <enchantment:minecraft:luck_of_the_sea> * 16,
  <enchantment:minecraft:lure> * 16
] as IEnchantment[];

add_enchants(<minecraft:fishing_rod>.withDisplayName("§fFishing Rod Enchants"), fishing_rod_enchants);
var fishing_rod_enchants_description = "Fishing Rod Enchants:" as string;
for enchant in fishing_rod_enchants {
  bookTooltips(enchant);
  fishing_rod_enchants_description += "\n" ~ enchant.displayName ~ "§r";
}
addDescription(ench_desc_items, fishing_rod_enchants_description);


val hoe_enchants = [
  <enchantment:apotheosis:natures_blessing> * 15,
  <enchantment:apotheosis:tempting> * 1
] as IEnchantment[];

add_enchants(<minecraft:diamond_hoe>.withDisplayName("§fHoe Enchants"), hoe_enchants);
var hoe_enchants_description = "Hoe Enchants:" as string;
for enchant in hoe_enchants {
  bookTooltips(enchant);
  hoe_enchants_description += "\n" ~ enchant.displayName ~ "§r";
}
addDescription(ench_desc_items, hoe_enchants_description);


val shield_enchants = [
  <enchantment:apotheosis:reflective> * 21,
  <enchantment:apotheosis:shield_bash> * 16
] as IEnchantment[];

add_enchants(<minecraft:shield>.withDisplayName("§fShield Enchants"), shield_enchants);
var shield_enchants_description = "Shield Enchants:" as string;
for enchant in shield_enchants {
  bookTooltips(enchant);
  shield_enchants_description += "\n" ~ enchant.displayName ~ "§r";
}
addDescription(ench_desc_items, shield_enchants_description);


val weapon_enchants = [
  <enchantment:minecraft:sharpness> * 18,
  <enchantment:minecraft:smite> * 24,
  <enchantment:minecraft:bane_of_arthropods> * 24,
  <enchantment:apotheosis:mounted_strike> * 17,
  <enchantment:apotheosis:hell_infusion> * 14,
  <enchantment:minecraft:sweeping> * 22,
  <enchantment:cofhcore:vorpal> * 17,
  <enchantment:minecraft:looting> * 16,
  <enchantment:apotheosis:scavenger> * 3,
  <enchantment:apotheosis:capturing> * 16,
  <enchantment:cyclicmagic:enchantment.beheading> * 18,
  <enchantment:apotheosis:knowledge> * 10,
  <enchantment:cofhcore:leech> * 16,
  <enchantment:cyclicmagic:enchantment.lifeleech> * 18,
  <enchantment:minecraft:knockback> * 16,
  <enchantment:minecraft:fire_aspect> * 16,
  <enchantment:tombstone:magic_siphon> * 5,
  <enchantment:tombstone:plague_bringer> * 3,
  <enchantment:ebwizardry:flaming_weapon> * 20,
  <enchantment:ebwizardry:freezing_weapon> * 20,
  <enchantment:ebwizardry:magic_sword> * 18,
  <enchantment:cyclicmagic:enchantment.venom> * 18,
  <enchantment:enderio:witherweapon> * 1 // Broken
] as IEnchantment[];

add_enchants(<minecraft:diamond_sword>.withDisplayName("§fWeapon Enchants"), weapon_enchants);
var weapon_enchants_description = "Weapon Enchants:" as string;
for enchant in weapon_enchants {
  bookTooltips(enchant);
  weapon_enchants_description += "\n" ~ enchant.displayName ~ "§r";
}
addDescription(ench_desc_items, weapon_enchants_description);


val bow_enchants = [
  <enchantment:minecraft:power> * 20,
  <enchantment:minecraft:punch> * 10,
  <enchantment:minecraft:flame> * 1,
  <enchantment:minecraft:infinity> * 1,
  <enchantment:apotheosis:true_infinity> * 1,
  <enchantment:cyclicmagic:enchantment.multishot> * 18,
  <enchantment:cofhcore:multishot> * 17,
  <enchantment:cyclicmagic:enchantment.quickdraw> * 18,
  <enchantment:ebwizardry:magic_bow> * 20,
  <enchantment:enderio:witherarrow> * 1 // Broken
] as IEnchantment[];

add_enchants(<minecraft:bow>.withDisplayName("§fBow Enchants"), bow_enchants);
var bow_enchants_description = "Bow Enchants:" as string;
for enchant in bow_enchants {
  bookTooltips(enchant);
  bow_enchants_description += "\n" ~ enchant.displayName ~ "§r";
}
addDescription(ench_desc_items, bow_enchants_description);


val armour_enchants = [
  <enchantment:minecraft:protection> * 19,
  <enchantment:minecraft:projectile_protection> * 34,
  <enchantment:minecraft:blast_protection> * 25,
  <enchantment:minecraft:fire_protection> * 25,
  <enchantment:ebwizardry:frost_protection> * 25,  
  <enchantment:ebwizardry:magic_protection> * 25,
  <enchantment:ebwizardry:shock_protection> * 25,
  <enchantment:apotheosis:magic_protection> * 7,
  <enchantment:openblocks:last_stand> * 2,
  <enchantment:minecraft:thorns> * 16,
  <enchantment:apotheosis:icy_thorns> * 8,
  <enchantment:apotheosis:berserk> * 7,
  <enchantment:openblocks:explosive> * 3,
  <enchantment:tombstone:blessing> * 1,
  <enchantment:apotheosis:rebounding> * 21,
  <enchantment:advancedrocketry:spacebreathing> * 20,
  <enchantment:minecraft:binding_curse> * 1,
  <enchantment:enderio:repellent> * 20 // Broken
] as IEnchantment[];

add_enchants(<minecraft:armor_stand>.withDisplayName("§fArmour Enchants"), armour_enchants);
var armour_enchants_description = "Armour Enchants:" as string;
for enchant in armour_enchants {
  bookTooltips(enchant);
  armour_enchants_description += "\n" ~ enchant.displayName ~ "§r";
}
addDescription(ench_desc_items, armour_enchants_description);


val helmet_enchants = [
  <enchantment:minecraft:respiration> * 18,
  <enchantment:minecraft:aqua_affinity> * 1,
  <enchantment:astralsorcery:enchantment.as.nightvision> * 20,
] as IEnchantment[];

add_enchants(<minecraft:diamond_helmet>.withDisplayName("§fHelmet Enchants"), helmet_enchants);
var helmet_enchants_description = "Helmet Enchants:" as string;
for enchant in helmet_enchants {
  bookTooltips(enchant);
  helmet_enchants_description += "\n" ~ enchant.displayName ~ "§r";
}
addDescription(ench_desc_items, helmet_enchants_description);


val chestplate_enchants = [
  <enchantment:cyclicmagic:enchantment.reach> * 18,
  <enchantment:tombstone:curse_of_bones> * 3
] as IEnchantment[];

add_enchants(<minecraft:diamond_chestplate>.withDisplayName("§fChestplate Enchants"), chestplate_enchants);
var chestplate_enchants_description = "Chestplate Enchants:" as string;
for enchant in chestplate_enchants {
  bookTooltips(enchant);
  chestplate_enchants_description += "\n" ~ enchant.displayName ~ "§r";
}
addDescription(ench_desc_items, chestplate_enchants_description);


val boot_enchants = [
  <enchantment:minecraft:feather_falling> * 33,
  <enchantment:minecraft:depth_strider> * 19,
  <enchantment:minecraft:frost_walker> * 19,
  <enchantment:cyclicmagic:enchantment.waterwalking> * 18,
  <enchantment:apotheosis:stable_footing> * 1,  
  <enchantment:cyclicmagic:enchantment.launch> * 18,
  <enchantment:tombstone:shadow_step> * 17
] as IEnchantment[];

add_enchants(<minecraft:diamond_boots>.withDisplayName("§fBoot Enchants"), boot_enchants);
var boot_enchants_description = "Boot Enchants:" as string;
for enchant in boot_enchants {
  bookTooltips(enchant);
  boot_enchants_description += "\n" ~ enchant.displayName ~ "§r";
}
addDescription(ench_desc_items, boot_enchants_description);


##########################################################################################
print("==================== end of jei_requious.zs ====================");