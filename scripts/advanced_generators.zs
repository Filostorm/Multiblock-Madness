import crafttweaker.item.IItemStack;
import mods.thermalexpansion.Transposer;
print("==================== loading mods blank.zs ====================");
##########################################################################################

val itemstoRemove =
[
	<advgenerators:controller>,
	<advgenerators:iron_wiring>,
	<advgenerators:iron_tubing>,
	<advgenerators:power_io>,
	<advgenerators:pressure_valve>,
	<advancedrocketry:seat>,
]
 as IItemStack[];

for item in itemstoRemove {
	recipes.remove(item);
}


recipes.addShaped(<advgenerators:controller>, [[<techreborn:plates:35>, <ore:circuitAdvanced>, <techreborn:plates:35>],[<ore:circuitAdvanced>, <rockhounding_chemistry:misc_items:1>, <ore:circuitAdvanced>], [<techreborn:plates:35>, <ore:circuitAdvanced>, <techreborn:plates:35>]]);

//Red Wire
recipes.addShaped(<advgenerators:iron_wiring> * 8, [[null, <moreplates:redstone_alloy_plate>, <immersiveengineering:material:2>],[<moreplates:redstone_alloy_plate>, <actuallyadditions:item_misc:7>, <moreplates:redstone_alloy_plate>], [<immersiveengineering:material:2>, <moreplates:redstone_alloy_plate>, null]]);

//Iron Tubing
recipes.addShaped(<advgenerators:iron_tubing> * 8, [[null, <techreborn:plates:35>, <immersiveengineering:material:2>],[<techreborn:plates:35>, <actuallyadditions:item_misc:7>, <techreborn:plates:35>], [<immersiveengineering:material:2>, <techreborn:plates:35>, null]]);


//Advanced pressure valve
Transposer.addFillRecipe(<advgenerators:advanced_pressure_valve>, <advgenerators:pressure_valve>, <liquid:enderium> * 1296, 10000);

//POwer IO
recipes.addShaped(<advgenerators:power_io>, [[<moreplates:electrical_steel_plate>, <immersiveengineering:metal_decoration0:4>, <moreplates:electrical_steel_plate>],[<moreplates:electrical_steel_plate>, <moreplates:restonia_gear>, <moreplates:electrical_steel_plate>], [<moreplates:electrical_steel_plate>, <immersiveengineering:metal_decoration0:5>, <moreplates:electrical_steel_plate>]]);

//Valve
recipes.addShaped(<advgenerators:pressure_valve>, [[null, <moreplates:dark_steel_plate>, null],[<advgenerators:iron_tubing>, <advgenerators:iron_tubing>, <advgenerators:iron_tubing>], [null, <moreplates:dark_steel_plate>, null]]);

//Seat
recipes.addShaped(<advancedrocketry:seat>, [[<thermalfoundation:rockwool:7>, <thermalfoundation:rockwool:7>, <thermalfoundation:rockwool:7>]]);

##########################################################################################
print("==================== end of mods blank.zs ====================");
