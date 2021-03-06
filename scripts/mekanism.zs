
import crafttweaker.item.IItemStack;

print("==================== loading Mekanism.zs ====================");
##########################################################################################


val itemstoRemove =
[
<mekanism:teleportationcore>, 
<mekanism:tierinstaller>,
<mekanism:tierinstaller:1>,
<mekanism:tierinstaller:2>,
<mekanism:tierinstaller:3>,
<mekanism:controlcircuit:1>,
<mekanism:controlcircuit:2>,
<mekanism:controlcircuit:3>,
<mekanism:machineblock:5>.withTag({recipeType: 0, mekData: {}}),
<mekanism:machineblock:5>.withTag({recipeType: 1, mekData: {}}),
<mekanism:machineblock:5>.withTag({recipeType: 3, mekData: {}}),
<mekanism:machineblock:5>.withTag({recipeType: 2, mekData: {}}),
<mekanism:machineblock:5>.withTag({recipeType: 4, mekData: {}}),
<mekanism:machineblock:5>.withTag({recipeType: 5, mekData: {}}),
<mekanism:machineblock:5>.withTag({recipeType: 6, mekData: {}}),
<mekanism:machineblock:5>.withTag({recipeType: 7, mekData: {}}),
<mekanism:machineblock:5>.withTag({recipeType: 8, mekData: {}}),
<mekanism:machineblock:6>.withTag({recipeType: 0, mekData: {}}),
<mekanism:machineblock:6>.withTag({recipeType: 1, mekData: {}}),
<mekanism:machineblock:6>.withTag({recipeType: 2, mekData: {}}),
<mekanism:machineblock:6>.withTag({recipeType: 3, mekData: {}}),
<mekanism:machineblock:6>.withTag({recipeType: 4, mekData: {}}),
<mekanism:machineblock:6>.withTag({recipeType: 5, mekData: {}}),
<mekanism:machineblock:6>.withTag({recipeType: 6, mekData: {}}),
<mekanism:machineblock:6>.withTag({recipeType: 8, mekData: {}}),
<mekanism:machineblock:6>.withTag({recipeType: 7, mekData: {}}),
<mekanism:machineblock:5>.withTag({recipeType: 1, mekData: {}}),
]
 as IItemStack[];

for item in itemstoRemove {
	recipes.remove(item);
}


##Metallurgic Infuser
recipes.addShaped(<mekanism:machineblock:8>, [[<minecraft:iron_ingot>, <minecraft:furnace>, <minecraft:iron_ingot>],[<minecraft:redstone>, <mekanism:basicblock:8>, <minecraft:redstone>], [<minecraft:iron_ingot>, <minecraft:furnace>, <minecraft:iron_ingot>]]);
//OutputStack[, InputStack, InfusionString]
mods.mekanism.infuser.removeRecipe(<mekanism:enrichedalloy>);
//mods.mekanism.infuser.removeRecipe(<thermalfoundation:material:163>);
//InfusionString, InputInfusion, InputStack, OutputStack //InfusionString = CARBON;TIN;DIAMOND;REDSTONE;FUNGI;BIO;OBSIDIAN
mods.mekanism.infuser.addRecipe("REDSTONE", 20, <thermalfoundation:material:132>, <mekanism:enrichedalloy>);

recipes.addShaped(<mekanism:machineblock2:11>, [[<immersiveengineering:material:8>, <embers:fluid_gauge>, <immersiveengineering:material:8>],[<moreplates:electrum_stick>, null, <moreplates:electrum_stick>], [<immersiveengineering:material:8>, <embers:pipe>, <immersiveengineering:material:8>]]);

//Advanced Circuit
recipes.addShaped(<mekanism:controlcircuit:1>, [[null, <mekanism:enrichediron>, null],[<mekanism:enrichedalloy>, <mekanism:controlcircuit>, <mekanism:enrichedalloy>], [null, <mekanism:enrichediron>, null]]);
//Elite Circuit
recipes.addShaped(<mekanism:controlcircuit:2>, [[null, <moreplates:refined_obsidian_plate>, null],[<mekanism:reinforcedalloy>, <mekanism:controlcircuit:1>, <mekanism:reinforcedalloy>], [null, <moreplates:refined_obsidian_plate>, null]]);
//Ultimate Circuit
recipes.addShaped(<mekanism:controlcircuit:3>, [[null, <thermalfoundation:material:327>, null],[<mekanism:atomicalloy>, <mekanism:controlcircuit:2>, <mekanism:atomicalloy>], [null, <thermalfoundation:material:327>, null]]);

recipes.addShapeless("basictoadvancedtank",
    <mekanism:machineblock2:11>.withTag({tier: 1}), 
    [<mekanism:tierinstaller:1>,<mekanism:machineblock2:11>.marked("tank")],
	function(out, ins, cInfo) {
	    return out.withTag(ins.tank.tag + {tier: 1});
    }, null);

recipes.addShapeless("advancedtoelitetank",
    <mekanism:machineblock2:11>.withTag({tier: 2}),  
    [<mekanism:tierinstaller:2>,<mekanism:machineblock2:11>.withTag({tier: 1}).marked("tank")],
	function(out, ins, cInfo) {
	    return out.withTag(ins.tank.tag + {tier: 2});
    }, null);
    
recipes.addShapeless("elitetoultimatetank",
    <mekanism:machineblock2:11>.withTag({tier: 3}),  
    [<mekanism:tierinstaller:3>,<mekanism:machineblock2:11>.withTag({tier: 2}).marked("tank")],
	function(out, ins, cInfo) {
	    return out.withTag(ins.tank.tag + {tier: 3});
    }, null);
    

//Tier Installers
recipes.addShaped(<mekanism:tierinstaller:3>, [[<mekanism:atomicalloy>, <ore:circuitUltimate>, <mekanism:atomicalloy>],[<techreborn:plates:38>, <ore:plankWood>, <techreborn:plates:38>], [<mekanism:atomicalloy>, <ore:circuitUltimate>, <mekanism:atomicalloy>]]);
recipes.addShaped(<mekanism:tierinstaller:2>, [[<mekanism:reinforcedalloy>, <ore:circuitElite>, <mekanism:reinforcedalloy>],[<moreplates:vivid_alloy_gear>, <ore:plankWood>, <moreplates:vivid_alloy_gear>], [<mekanism:reinforcedalloy>, <ore:circuitElite>, <mekanism:reinforcedalloy>]]);
recipes.addShaped(<mekanism:tierinstaller:1>, [[<mekanism:enrichedalloy>, <ore:circuitAdvanced>, <mekanism:enrichedalloy>],[<moreplates:energetic_alloy_gear>, <ore:plankWood>, <moreplates:energetic_alloy_gear>], [<mekanism:enrichedalloy>, <ore:circuitAdvanced>, <mekanism:enrichedalloy>]]);
recipes.addShaped(<mekanism:tierinstaller>, [[<moreplates:redstone_alloy_plate>, <ore:circuitBasic>, <moreplates:redstone_alloy_plate>],[<moreplates:electrical_steel_gear>, <ore:plankWood>, <moreplates:electrical_steel_gear>], [<moreplates:redstone_alloy_plate>, <ore:circuitBasic>, <moreplates:redstone_alloy_plate>]]);


recipes.addShapedMirrored(<mekanism:teleportationcore>, [[<moreplates:osgloglas_plate>, <threng:material:14>, <enderio:item_material:35>],[<mekanism:atomicalloy>, <waystones:warp_stone>, <mekanism:atomicalloy>], [<enderio:item_material:35>, <threng:material:14>, <moreplates:osgloglas_plate>]]);
  

##########################################################################################
print("==================== end of Mekanism.zs ====================");
