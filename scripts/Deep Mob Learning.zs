import crafttweaker.item.IItemStack;
print("==================== loading Deep Mob Learning.zs ====================");
##########################################################################################

val itemstoRemove =
[
	<deepmoblearning:machine_casing>,
	<deepmoblearning:soot_covered_plate>,
]
 as IItemStack[];

for item in itemstoRemove {
	recipes.remove(item);
}



val SootyPlates =
[
<thermalfoundation:material:32>,
<thermalfoundation:material:33>,
<thermalfoundation:material:320>,
<thermalfoundation:material:325>,
<thermalfoundation:material:321>,
<thermalfoundation:material:322>,
<thermalfoundation:material:323>,
]
 as IItemStack[];
for item in SootyPlates {
<ore:sootyPlates>.add(item);
}

recipes.addShaped(<deepmoblearning:soot_covered_plate>, [[<actuallyadditions:item_misc:10>, <actuallyadditions:item_misc:10>, <actuallyadditions:item_misc:10>],
[<actuallyadditions:item_misc:10>, <ore:sootyPlates>, <actuallyadditions:item_misc:10>], 
[<actuallyadditions:item_misc:10>, <actuallyadditions:item_misc:10>, <actuallyadditions:item_misc:10>]]);

recipes.addShaped(<deepmoblearning:machine_casing>, [[<deepmoblearning:soot_covered_plate>, <actuallyadditions:item_crystal_empowered>, <deepmoblearning:soot_covered_plate>],
[<actuallyadditions:item_crystal_empowered>, <moreplates:osgloglas_gear>, <actuallyadditions:item_crystal_empowered>], 
[<deepmoblearning:soot_covered_plate>, <actuallyadditions:item_crystal_empowered>, <deepmoblearning:soot_covered_plate>]]);

##########################################################################################
print("==================== end of Deep Mob Learning.zs ====================");
