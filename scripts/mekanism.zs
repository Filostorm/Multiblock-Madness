print("==================== loading Mekanism.zs ====================");
##########################################################################################


##Metallurgic Infuser
recipes.addShaped(<mekanism:machineblock:8>, [[<minecraft:iron_ingot>, <minecraft:furnace>, <minecraft:iron_ingot>],[<minecraft:redstone>, <mekanism:basicblock:8>, <minecraft:redstone>], [<minecraft:iron_ingot>, <minecraft:furnace>, <minecraft:iron_ingot>]]);
//OutputStack[, InputStack, InfusionString]
mods.mekanism.infuser.removeRecipe(<mekanism:enrichedalloy>);
//mods.mekanism.infuser.removeRecipe(<thermalfoundation:material:163>);
//InfusionString, InputInfusion, InputStack, OutputStack //InfusionString = CARBON;TIN;DIAMOND;REDSTONE;FUNGI;BIO;OBSIDIAN
mods.mekanism.infuser.addRecipe("REDSTONE", 20, <thermalfoundation:material:132>, <mekanism:enrichedalloy>);

recipes.addShaped(<mekanism:machineblock2:11>, [[<immersiveengineering:material:8>, <embers:fluid_gauge>, <immersiveengineering:material:8>],[<moreplates:electrum_stick>, null, <moreplates:electrum_stick>], [<immersiveengineering:material:8>, <embers:pipe>, <immersiveengineering:material:8>]]);


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
    
    
##########################################################################################
print("==================== end of Mekanism.zs ====================");
