import crafttweaker.item.IItemStack;
print("==================== loading open_computers.zs ====================");
##########################################################################################

val itemstoRemove =
[
	<opencomputers:hoverboots>,
]
 as IItemStack[];

for item in itemstoRemove {
	recipes.remove(item);
}


recipes.addShaped(<opencomputers:hoverboots>, [[<techreborn:plates:31>, <opencomputers:upgrade:28>, <techreborn:plates:31>],[<improvedbackpacks:tanned_leather>, <opencomputers:material:23>, <improvedbackpacks:tanned_leather>], [<techreborn:plates:31>, <opencomputers:capacitor>, <techreborn:plates:31>]]);

##########################################################################################
print("==================== end of open_computers.zs ====================");
