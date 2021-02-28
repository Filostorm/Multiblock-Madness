import crafttweaker.item.IItemStack;
print("==================== loading mods blank.zs ====================");
##########################################################################################

val itemstoRemove =
[
	<advgenerators:controller>,
	<advgenerators:iron_wiring>,
]
 as IItemStack[];

for item in itemstoRemove {
	recipes.remove(item);
}


recipes.addShaped(<advgenerators:controller>, [[<moreplates:redstone_alloy_plate>, <ore:circuitAdvanced>, <moreplates:redstone_alloy_plate>],[<ore:circuitAdvanced>, <rockhounding_chemistry:misc_items:1>, <ore:circuitAdvanced>], [<moreplates:redstone_alloy_plate>, <ore:circuitAdvanced>, <moreplates:redstone_alloy_plate>]]);
recipes.addShaped(<advgenerators:iron_wiring> * 8, [[null, <moreplates:redstone_alloy_plate>, <immersiveengineering:material:2>],[<moreplates:redstone_alloy_plate>, <actuallyadditions:item_misc:7>, <moreplates:redstone_alloy_plate>], [<immersiveengineering:material:2>, <moreplates:redstone_alloy_plate>, null]]);

##########################################################################################
print("==================== end of mods blank.zs ====================");
