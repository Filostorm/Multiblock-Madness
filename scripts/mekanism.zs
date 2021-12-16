
import crafttweaker.item.IItemStack;
import mods.mekanism.infuser;
import mod.mekanism.gas.IGasStack;
import mods.mekatweaker.InfuserType;
import mods.appliedenergistics2.Grinder;


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
<mekanism:machineblock:7>.withTag({recipeType: 0}),
<mekanism:machineblock:7>.withTag({recipeType: 2}),
<mekanism:machineblock:7>.withTag({recipeType: 1}),
<mekanism:machineblock:7>.withTag({recipeType: 3}),
<mekanism:machineblock:7>.withTag({recipeType: 4}),
<mekanism:machineblock:7>.withTag({recipeType: 5}),
<mekanism:machineblock:7>.withTag({recipeType: 6}),
<mekanism:machineblock:7>.withTag({recipeType: 7}),
<mekanism:machineblock:7>.withTag({recipeType: 8}),
<mekanismgenerators:reactor:1>,
<mekanismgenerators:reactor>,
<mekanism:machineblock:4>,
<mekanism:basicblock2>,
<mekanismgenerators:solarpanel>,
<mekanism:glowplasticblock:10>,
<mekanism:glowplasticblock:2>,
<mekanism:configurator>,
<mekanism:basicblock2:1>,
<mekanismgenerators:generator:10>,
<mekanism:filterupgrade>,
<mekanism:machineblock:12>,
<mekanismgenerators:generator:8>,
<mekanism:machineblock2:4>,
]
 as IItemStack[];

for item in itemstoRemove {
	recipes.remove(item);
}

//no more GBG
	mods.jei.JEI.removeAndHide(<mekanismgenerators:generator:3>);

//Grinder.addRecipe(IItemStack output, IItemStack input, int turns, @Optional IItemStack secondary1Output, @Optional float secondary1Chance, @Optional IItemStack secondary2Output, @Optional float secondary2Chance);

Grinder.addRecipe(<thermalfoundation:material:800>, <minecraft:planks>, 4, <techreborn:smalldust:46>*2, 0.5, <techreborn:smalldust:46>*2, 0.5);


//Sepotatoer
recipes.addShaped(<mekanism:machineblock2:4>, [[<moreplates:osmium_plate>, <ore:circuitBasic>, <moreplates:osmium_plate>],[<mekanism:enrichedalloy>, <mekanism:electrolyticcore>, <mekanism:enrichedalloy>], [<moreplates:osmium_plate>, <minecraft:redstone>, <moreplates:osmium_plate>]]);

//Pump
recipes.addShaped(<mekanism:machineblock:12>, [[null, <minecraft:bucket>, null],[<ore:circuitBasic>, <immersiveengineering:metal_decoration0:5>, <ore:circuitBasic>], [<ore:platerefinedIron>, <ore:platerefinedIron>, <ore:platerefinedIron>]]);

//Filter Upgrade
recipes.addShaped(<mekanism:filterupgrade>, [[null, <thermalfoundation:glass:3>, null],[<ore:plateBam>, <ore:dustTin>, <ore:plateBam>], [null, <thermalfoundation:glass:3>, null]]);

//Evap Tank
recipes.addShaped(<mekanism:basicblock2> * 4, [[<mekanism:enrichedalloy>, <thermalfoundation:material:352>, <mekanism:enrichedalloy>],[<thermalfoundation:material:352>, <moreplates:osmium_gear>, <thermalfoundation:material:352>], [<mekanism:enrichedalloy>, <thermalfoundation:material:352>, <mekanism:enrichedalloy>]]);
recipes.addShaped(<mekanism:basicblock2> * 8, [[<mekanism:enrichedalloy>, <ore:plateVanasteel>, <mekanism:enrichedalloy>],[<ore:plateVanasteel>, <moreplates:osmium_gear>, <ore:plateVanasteel>], [<mekanism:enrichedalloy>, <ore:plateVanasteel>, <mekanism:enrichedalloy>]]);

//Induction
recipes.addShaped(<mekanism:basicblock2:1> * 4, [[<mekanism:reinforcedalloy>, <thermalfoundation:material:352>, <mekanism:reinforcedalloy>],[<thermalfoundation:material:352>, <moreplates:osmium_gear>, <thermalfoundation:material:352>], [<mekanism:reinforcedalloy>, <thermalfoundation:material:352>, <mekanism:reinforcedalloy>]]);
recipes.addShaped(<mekanism:basicblock2:1> * 8, [[<mekanism:reinforcedalloy>, <ore:plateVanasteel>, <mekanism:reinforcedalloy>],[<ore:plateVanasteel>, <moreplates:osmium_gear>, <ore:plateVanasteel>], [<mekanism:reinforcedalloy>, <ore:plateVanasteel>, <mekanism:reinforcedalloy>]]);

//Turbine
//recipes.addShaped(<mekanismgenerators:generator:10> * 4, [[<mekanism:atomicalloy>, <thermalfoundation:material:352>, <mekanism:atomicalloy>],[<thermalfoundation:material:352>, <moreplates:osmium_gear>, <thermalfoundation:material:352>], [<mekanism:atomicalloy>, <thermalfoundation:material:352>, <mekanism:atomicalloy>]]);
//recipes.addShaped(<mekanismgenerators:generator:10> * 8, [[<mekanism:atomicalloy>, <ore:plateVanasteel>, <mekanism:atomicalloy>],[<ore:plateVanasteel>, <moreplates:osmium_gear>, <ore:plateVanasteel>], [<mekanism:atomicalloy>, <ore:plateVanasteel>, <mekanism:atomicalloy>]]);
recipes.addShaped(<mekanismgenerators:generator:8>, [[<nuclearcraft:fission_dust:3>, <powersuits:powerarmorcomponent:8>, <nuclearcraft:fission_dust:3>],[<extendedcrafting:material:48>, <techreborn:machine_frame:2>, <extendedcrafting:material:48>], [<nuclearcraft:part:3>, <extendedcrafting:material:12>, <nuclearcraft:part:3>]]);
recipes.addShaped(<mekanismgenerators:generator:10> * 4, [[<nuclearcraft:part:3>, <nuclearcraft:pellet_thorium>, <nuclearcraft:part:3>],[<jaopca:item_platesuperalloy>, <mekanismgenerators:reactor:1>, <jaopca:item_platesuperalloy>], [<nuclearcraft:part:3>, <extendedcrafting:material:18>, <nuclearcraft:part:3>]]);

//rEACTOR bIZ
recipes.addShaped(<mekanismgenerators:reactor:1> * 4, [[<techreborn:plates:38>, <mekanism:basicblock:8>, <techreborn:plates:38>],[<mekanism:basicblock:8>, <mekanism:atomicalloy>, <mekanism:basicblock:8>], [<techreborn:plates:38>, <mekanism:basicblock:8>, <techreborn:plates:38>]]);
recipes.addShaped(<mekanismgenerators:reactor>, [[<mekanism:controlcircuit:3>, <powersuits:powerarmorcomponent:8>, <mekanism:controlcircuit:3>],[<mekanismgenerators:reactor:1>, <mekanism:gastank>.withTag({tier: 3}), <mekanismgenerators:reactor:1>], [<mekanismgenerators:reactor:1>, <mekanismgenerators:reactor:1>, <mekanismgenerators:reactor:1>]]);


recipes.addShapeless(<mekanism:configurator>, [<enderio:item_yeta_wrench>,<actuallyadditions:item_battery>]);

##Metallurgic Infuser
recipes.addShaped(<mekanism:machineblock:8>, [[<minecraft:iron_ingot>, <minecraft:furnace>, <minecraft:iron_ingot>],[<minecraft:redstone>, <mekanism:basicblock:8>, <minecraft:redstone>], [<minecraft:iron_ingot>, <minecraft:furnace>, <minecraft:iron_ingot>]]);
//OutputStack[, InputStack, InfusionString]
infuser.removeRecipe(<mekanism:enrichedalloy>);
infuser.removeRecipe(<mekanism:reinforcedalloy>);
infuser.removeRecipe(<mekanism:atomicalloy>);
//infuser.removeRecipe(<thermalfoundation:material:163>);
//InfusionString, InputInfusion, InputStack, OutputStack //InfusionString = CARBON;TIN;DIAMOND;REDSTONE;FUNGI;BIO;OBSIDIAN

InfuserType.addTypeObject(<techreborn:ingot:3>, "CHROME", 100);
<techreborn:ingot:3>.addTooltip(format.white("100 Chromium"));

InfuserType.addTypeObject(<contenttweaker:compressed_chrome>, "CHROME", 200);
<contenttweaker:compressed_chrome>.addTooltip(format.white("200 Chromium"));

mods.mekanism.enrichment.addRecipe(<techreborn:ingot:3>, <contenttweaker:compressed_chrome>);

infuser.addRecipe("REDSTONE", 20, <thermalfoundation:material:132>, <mekanism:enrichedalloy>);
infuser.addRecipe("DIAMOND", 10, <thermalfoundation:material:134>, <mekanism:reinforcedalloy>);
infuser.addRecipe("OBSIDIAN", 10, <techreborn:ingot:15>, <mekanism:atomicalloy>);


//Basic Tank
recipes.addShaped(<mekanism:machineblock2:11>, [[<thermalfoundation:material:321>, <embers:fluid_gauge>, <thermalfoundation:material:321>],[<moreplates:electrum_stick>, null, <moreplates:electrum_stick>], [<thermalfoundation:material:321>, <embers:pipe>, <thermalfoundation:material:321>]]);

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

//tele core
recipes.addShapedMirrored(<mekanism:teleportationcore>, [[<moreplates:osgloglas_plate>, <threng:material:6>, <enderio:item_material:35>],[<mekanism:atomicalloy>, <waystones:warp_stone>, <mekanism:atomicalloy>], [<enderio:item_material:35>, <threng:material:6>, <moreplates:osgloglas_plate>]]);
  
//Green Plastic
recipes.addShaped(<mekanism:glowplasticblock:2>, [[<appliedenergistics2:paint_ball:33>, <appliedenergistics2:paint_ball:33>, <appliedenergistics2:paint_ball:33>],[<appliedenergistics2:paint_ball:33>, <mekanism:plasticblock:15>, <appliedenergistics2:paint_ball:33>], [<appliedenergistics2:paint_ball:33>, <appliedenergistics2:paint_ball:33>, <appliedenergistics2:paint_ball:33>]]);
recipes.addShaped(<mekanism:glowplasticblock:2>, [[<appliedenergistics2:paint_ball:33>, <appliedenergistics2:paint_ball:33>, <appliedenergistics2:paint_ball:33>],[<appliedenergistics2:paint_ball:33>, <mekanism:plasticblock:2>, <appliedenergistics2:paint_ball:33>], [<appliedenergistics2:paint_ball:33>, <appliedenergistics2:paint_ball:33>, <appliedenergistics2:paint_ball:33>]]);

//Lime Plastic
recipes.addShaped(<mekanism:glowplasticblock:10>, [[<appliedenergistics2:paint_ball:25>, <appliedenergistics2:paint_ball:25>, <appliedenergistics2:paint_ball:25>],[<appliedenergistics2:paint_ball:25>, <mekanism:plasticblock:15>, <appliedenergistics2:paint_ball:25>], [<appliedenergistics2:paint_ball:25>, <appliedenergistics2:paint_ball:25>, <appliedenergistics2:paint_ball:25>]]);
recipes.addShaped(<mekanism:glowplasticblock:10>, [[<appliedenergistics2:paint_ball:25>, <appliedenergistics2:paint_ball:25>, <appliedenergistics2:paint_ball:25>],[<appliedenergistics2:paint_ball:25>, <mekanism:plasticblock:10>, <appliedenergistics2:paint_ball:25>], [<appliedenergistics2:paint_ball:25>, <appliedenergistics2:paint_ball:25>, <appliedenergistics2:paint_ball:25>]]);

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
