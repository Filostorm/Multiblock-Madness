
import crafttweaker.item.IItemStack;
import mods.mekanism.infuser;
import mod.mekanism.gas.IGasStack;
import mods.mekatweaker.InfuserType;

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
<mekanism:machineblock:5>.withTag({recipeType: 0}),
<mekanism:machineblock:5>.withTag({recipeType: 1}),
<mekanism:machineblock:5>.withTag({recipeType: 3}),
<mekanism:machineblock:5>.withTag({recipeType: 2}),
<mekanism:machineblock:5>.withTag({recipeType: 4}),
<mekanism:machineblock:5>.withTag({recipeType: 5}),
<mekanism:machineblock:5>.withTag({recipeType: 6}),
<mekanism:machineblock:5>.withTag({recipeType: 7}),
<mekanism:machineblock:5>.withTag({recipeType: 8}),
<mekanism:machineblock:6>.withTag({recipeType: 0}),
<mekanism:machineblock:6>.withTag({recipeType: 1}),
<mekanism:machineblock:6>.withTag({recipeType: 2}),
<mekanism:machineblock:6>.withTag({recipeType: 3}),
<mekanism:machineblock:6>.withTag({recipeType: 4}),
<mekanism:machineblock:6>.withTag({recipeType: 5}),
<mekanism:machineblock:6>.withTag({recipeType: 6}),
<mekanism:machineblock:6>.withTag({recipeType: 8}),
<mekanism:machineblock:6>.withTag({recipeType: 7}),
<mekanism:machineblock:5>.withTag({recipeType: 1}),
<mekanism:machineblock:4>,
<mekanism:basicblock2>,
<mekanismgenerators:solarpanel>,
]
 as IItemStack[];

for item in itemstoRemove {
	recipes.remove(item);
}

##Metallurgic Infuser
recipes.addShaped(<mekanism:machineblock:8>, [[<minecraft:iron_ingot>, <minecraft:furnace>, <minecraft:iron_ingot>],[<minecraft:redstone>, <mekanism:basicblock:8>, <minecraft:redstone>], [<minecraft:iron_ingot>, <minecraft:furnace>, <minecraft:iron_ingot>]]);
//OutputStack[, InputStack, InfusionString]
infuser.removeRecipe(<mekanism:enrichedalloy>);
infuser.removeRecipe(<mekanism:reinforcedalloy>);
infuser.removeRecipe(<mekanism:atomicalloy>);
//infuser.removeRecipe(<thermalfoundation:material:163>);
//InfusionString, InputInfusion, InputStack, OutputStack //InfusionString = CARBON;TIN;DIAMOND;REDSTONE;FUNGI;BIO;OBSIDIAN

InfuserType.addTypeObject(<techreborn:ingot:3>, "CHROME", 100);
InfuserType.addTypeObject(<contenttweaker:compressed_chrome>, "CHROME", 400);
mods.mekanism.enrichment.addRecipe(<techreborn:ingot:3>, <contenttweaker:compressed_chrome>);

infuser.addRecipe("REDSTONE", 20, <thermalfoundation:material:132>, <mekanism:enrichedalloy>);
infuser.addRecipe("DIAMOND", 10, <thermalfoundation:material:134>, <mekanism:reinforcedalloy>);
infuser.addRecipe("OBSIDIAN", 10, <techreborn:ingot:15>, <mekanism:atomicalloy>);

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
    

//Evap tank 
recipes.addShaped(<mekanism:basicblock2> * 4, [[<mekanism:enrichedalloy>, <thermalfoundation:material:352>, <mekanism:enrichedalloy>],[<thermalfoundation:material:352>, <mekanism:ingot:1>, <thermalfoundation:material:352>], [<mekanism:enrichedalloy>, <thermalfoundation:material:352>, <mekanism:enrichedalloy>]]);


//Tier Installers
recipes.addShaped(<mekanism:tierinstaller:3>, [[<mekanism:atomicalloy>, <ore:circuitUltimate>, <mekanism:atomicalloy>],[<techreborn:plates:38>, <ore:plankWood>, <techreborn:plates:38>], [<mekanism:atomicalloy>, <ore:circuitUltimate>, <mekanism:atomicalloy>]]);
recipes.addShaped(<mekanism:tierinstaller:2>, [[<mekanism:reinforcedalloy>, <ore:circuitElite>, <mekanism:reinforcedalloy>],[<moreplates:vivid_alloy_gear>, <ore:plankWood>, <moreplates:vivid_alloy_gear>], [<mekanism:reinforcedalloy>, <ore:circuitElite>, <mekanism:reinforcedalloy>]]);
recipes.addShaped(<mekanism:tierinstaller:1>, [[<mekanism:enrichedalloy>, <ore:circuitAdvanced>, <mekanism:enrichedalloy>],[<moreplates:energetic_alloy_gear>, <ore:plankWood>, <moreplates:energetic_alloy_gear>], [<mekanism:enrichedalloy>, <ore:circuitAdvanced>, <mekanism:enrichedalloy>]]);
recipes.addShaped(<mekanism:tierinstaller>, [[<moreplates:redstone_alloy_plate>, <ore:circuitBasic>, <moreplates:redstone_alloy_plate>],[<moreplates:electrical_steel_gear>, <ore:plankWood>, <moreplates:electrical_steel_gear>], [<moreplates:redstone_alloy_plate>, <ore:circuitBasic>, <moreplates:redstone_alloy_plate>]]);

//tele core
recipes.addShapedMirrored(<mekanism:teleportationcore>, [[<moreplates:osgloglas_plate>, <threng:material:6>, <enderio:item_material:35>],[<mekanism:atomicalloy>, <waystones:warp_stone>, <mekanism:atomicalloy>], [<enderio:item_material:35>, <threng:material:6>, <moreplates:osgloglas_plate>]]);
  
recipes.remove(<mekanism:glowplasticblock:2>);
recipes.addShaped(<mekanism:glowplasticblock:2>, [[<appliedenergistics2:paint_ball:33>, <appliedenergistics2:paint_ball:33>, <appliedenergistics2:paint_ball:33>],[<appliedenergistics2:paint_ball:33>, <mekanism:plasticblock:15>, <appliedenergistics2:paint_ball:33>], [<appliedenergistics2:paint_ball:33>, <appliedenergistics2:paint_ball:33>, <appliedenergistics2:paint_ball:33>]]);
recipes.addShaped(<mekanism:glowplasticblock:2>, [[<appliedenergistics2:paint_ball:33>, <appliedenergistics2:paint_ball:33>, <appliedenergistics2:paint_ball:33>],[<appliedenergistics2:paint_ball:33>, <mekanism:plasticblock:2>, <appliedenergistics2:paint_ball:33>], [<appliedenergistics2:paint_ball:33>, <appliedenergistics2:paint_ball:33>, <appliedenergistics2:paint_ball:33>]]);

//Digital Miner
recipes.addShaped(<mekanism:machineblock:4>, [[<mekanism:atomicalloy>, <mekanism:controlcircuit:2>, <mekanism:atomicalloy>],[<mekanism:teleportationcore>, <mekanism:basicblock:8>, <mekanism:teleportationcore>], [<mekanism:robit>, <appliedenergistics2:material:47>, <mekanism:robit>]]);

//Solar Panel
recipes.addShaped(<mekanismgenerators:solarpanel>, [[<ore:paneGlass>, <ore:paneGlass>, <ore:paneGlass>],[<enderio:item_material:38>, <mekanism:enrichedalloy>, <enderio:item_material:38>], [<moreplates:osmium_plate>, <moreplates:osmium_plate>, <moreplates:osmium_plate>]]);


//Solar Neutron Activator
//InputGas[, OutputGas]
mods.mekanism.solarneutronactivator.removeRecipe(<gas:lithium>, <gas:tritium>);
//InputGas, OutputGas
mods.mekanism.solarneutronactivator.addRecipe(<gas:lithium>*2, <gas:tritium>*2);

//NO MORE SALT HACKS
mods.mekanism.GasConversion.unregister(<ore:dustSalt>, <gas:hydrogenchloride>);
mods.mekanism.GasConversion.unregister(<ore:itemSalt>, <gas:hydrogenchloride>);

//Osmium Dust
mods.mekanism.GasConversion.register(<mekanism:dust:2>, <gas:liquidosmium> * 200);

##########################################################################################
print("==================== end of Mekanism.zs ====================");
