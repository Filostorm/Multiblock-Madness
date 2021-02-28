import crafttweaker.item.IItemStack;
import mods.bonsaitrees.TreeDrops;
print("==================== loading bonsai.zs ====================");
##########################################################################################
/*
val itemstoRemove =
[
]
 as IItemStack[];

for item in itemstoRemove {
	recipes.remove(item);
}
*/

TreeDrops.addTreeDrop("thaumcraft:silverwood", <thaumcraft:nugget:5>, 0.33);
##########################################################################################
print("==================== end of bonsai.zs ====================");
