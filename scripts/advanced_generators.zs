import crafttweaker.item.IItemStack;
import mods.thermalexpansion.Transposer;

print("==================== loading advanced_generators.zs ====================");
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

// Gas Turbine Controller
recipes.addShaped(<advgenerators:controller>, [[<techreborn:plates:35>, <ore:circuitAdvanced>, <techreborn:plates:35>],[<ore:circuitAdvanced>, <rockhounding_chemistry:misc_items:1>, <ore:circuitAdvanced>], [<techreborn:plates:35>, <ore:circuitAdvanced>, <techreborn:plates:35>]]);

// Red Wire
recipes.addShaped(<advgenerators:iron_wiring> * 8, [[null, <moreplates:redstone_alloy_plate>, <immersiveengineering:material:2>],[<moreplates:redstone_alloy_plate>, <actuallyadditions:item_misc:7>, <moreplates:redstone_alloy_plate>], [<immersiveengineering:material:2>, <moreplates:redstone_alloy_plate>, null]]);

// Iron Tubing
recipes.addShaped(<advgenerators:iron_tubing> * 8, [[null, <techreborn:plates:35>, <immersiveengineering:material:2>],[<techreborn:plates:35>, <actuallyadditions:item_misc:7>, <techreborn:plates:35>], [<immersiveengineering:material:2>, <techreborn:plates:35>, null]]);

// Iron Frame
recipes.addShaped(<advgenerators:iron_frame> * 2, [[<immersiveengineering:material:1>, <immersiveengineering:material:1>, <immersiveengineering:material:1>],[<immersiveengineering:material:1>, null, <immersiveengineering:material:1>], [<immersiveengineering:material:1>, <immersiveengineering:material:1>, <immersiveengineering:material:1>]]);

// Power IO
recipes.addShaped(<advgenerators:power_io>, [[<moreplates:electrical_steel_plate>, <immersiveengineering:metal_decoration0:4>, <moreplates:electrical_steel_plate>],[<moreplates:electrical_steel_plate>, <moreplates:restonia_gear>, <moreplates:electrical_steel_plate>], [<moreplates:electrical_steel_plate>, <immersiveengineering:metal_decoration0:5>, <moreplates:electrical_steel_plate>]]);

// Valve
recipes.addShaped(<advgenerators:pressure_valve>, [[null, <moreplates:dark_steel_plate>, null],[<advgenerators:iron_tubing>, <advgenerators:iron_tubing>, <advgenerators:iron_tubing>], [null, <moreplates:dark_steel_plate>, null]]);

// Advanced pressure valve
Transposer.addFillRecipe(<advgenerators:advanced_pressure_valve>, <advgenerators:pressure_valve>, <liquid:enderium> * 1296, 10000);

// Fix missing smelting 
//furnace.addRecipe(<minecraft:gold_ingot> * 11, <advgenerators:turbine_rotor_gold>, 0.0); // Gold turbine is removed; never had blades?
furnace.addRecipe(<tconstruct:ingots:2> * 11, <advgenerators:turbine_rotor_manyullyn>, 0.0);

##########################################################################################
print("==================== end of advanced_generators.zs ====================");
