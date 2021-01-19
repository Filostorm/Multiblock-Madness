import crafttweaker.item.IItemStack;
print("==================== loading mods blank.zs ====================");
##########################################################################################

val itemstoRemove =
[
	<advgenerators:controller>,
]
 as IItemStack[];

for item in itemstoRemove {
	recipes.remove(item);
}


recipes.addShaped(<advgenerators:controller>, [[<moreplates:redstone_alloy_plate>, <powersuits:powerarmorcomponent>, <moreplates:redstone_alloy_plate>],[<powersuits:powerarmorcomponent>, <rockhounding_chemistry:misc_items:1>, <powersuits:powerarmorcomponent>], [<moreplates:redstone_alloy_plate>, <powersuits:powerarmorcomponent>, <moreplates:redstone_alloy_plate>]]);

##########################################################################################
print("==================== end of mods blank.zs ====================");
