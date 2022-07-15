#modloaded ae2fc

import crafttweaker.item.IItemStack;
import mods.techreborn.blastFurnace;
import mods.modularmachinery.RecipePrimer;

print("==================== loading refined_storage.zs ====================");
##########################################################################################



val itemstoRemove = [
	<ae2fc:ingredient_buffer>,
	<ae2fc:fluid_discretizer>,
	<ae2fc:fluid_pattern_encoder>,
] as IItemStack[];

for item in itemstoRemove {
	recipes.remove(item);
}
//Fluid crafting stuff
recipes.addShaped(<ae2fc:ingredient_buffer> * 2, [[<rockhounding_chemistry:alloy_parts:10>, <appliedenergistics2:material:35>, <rockhounding_chemistry:alloy_parts:10>],[<appliedenergistics2:material:44>, <appliedenergistics2:quartz_glass>, <appliedenergistics2:material:43>], [<rockhounding_chemistry:alloy_parts:10>, <appliedenergistics2:material:54>, <rockhounding_chemistry:alloy_parts:10>]]);
recipes.addShaped(<ae2fc:ingredient_buffer>, [[<thermalfoundation:material:324>, <appliedenergistics2:material:35>, <thermalfoundation:material:324>],[<appliedenergistics2:material:44>, <appliedenergistics2:quartz_glass>, <appliedenergistics2:material:43>], [<thermalfoundation:material:324>, <appliedenergistics2:material:54>, <thermalfoundation:material:324>]]);
recipes.addShaped(<ae2fc:fluid_discretizer>, [[<moreplates:dark_steel_plate>, <threng:material>, <moreplates:dark_steel_plate>],[<appliedenergistics2:part:221>, <threng:material:4>, <appliedenergistics2:part:220>], [<moreplates:dark_steel_plate>, <threng:material>, <moreplates:dark_steel_plate>]]);
recipes.addShaped(<ae2fc:fluid_pattern_encoder>, [[<actuallyadditions:block_crystal:1>, <appliedenergistics2:material:24>, <actuallyadditions:block_crystal:1>],[<moreplates:dark_steel_plate>, <ore:workbench>, <moreplates:dark_steel_plate>], [<moreplates:dark_steel_plate>, <moreplates:dark_steel_plate>, <moreplates:dark_steel_plate>]]);

##########################################################################################
print("==================== end of refined_storage.zs ====================");