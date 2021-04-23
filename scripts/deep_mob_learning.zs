import crafttweaker.item.IItemStack;
print("==================== loading Deep Mob Learning.zs ====================");
##########################################################################################

val itemstoRemove =
[
	<deepmoblearning:machine_casing>,
	<deepmoblearning:soot_covered_plate>,
	<deepmoblearning:data_model_dragon>,
	<deepmoblearning:data_model_wither>,
]
 as IItemStack[];

for item in itemstoRemove {
	recipes.remove(item);
}


recipes.removeShaped(<minecraft:nether_star>, [[<minecraft:skull:1>, <deepmoblearning:living_matter_extraterrestrial>, <minecraft:skull:1>],[<minecraft:soul_sand>, <minecraft:soul_sand>, <minecraft:soul_sand>], [null, <minecraft:soul_sand>, null]]);


recipes.addShaped(<deepmoblearning:soot_covered_plate>, [[<actuallyadditions:item_misc:10>, <actuallyadditions:item_misc:10>, <actuallyadditions:item_misc:10>],
[<actuallyadditions:item_misc:10>, <ore:basicPlates>, <actuallyadditions:item_misc:10>], 
[<actuallyadditions:item_misc:10>, <actuallyadditions:item_misc:10>, <actuallyadditions:item_misc:10>]]);

recipes.addShaped(<deepmoblearning:machine_casing>, [[<deepmoblearning:soot_covered_plate>, <actuallyadditions:item_crystal_empowered>, <deepmoblearning:soot_covered_plate>],
[<actuallyadditions:item_crystal_empowered>, <moreplates:osgloglas_gear>, <actuallyadditions:item_crystal_empowered>], 
[<deepmoblearning:soot_covered_plate>, <actuallyadditions:item_crystal_empowered>, <deepmoblearning:soot_covered_plate>]]);


//Pre kill bosses
recipes.addShapeless(<deepmoblearning:data_model_dragon>.withTag({tier: 1, killCount: 1, totalKillCount: 1}), [<deepmoblearning:data_model_blank>,<minecraft:dragon_egg>]);
recipes.addShapeless(<deepmoblearning:data_model_wither>.withTag({tier: 1, killCount: 1, totalKillCount: 1}), [<deepmoblearning:data_model_blank>,<minecraft:nether_star>]);

##########################################################################################
print("==================== end of Deep Mob Learning.zs ====================");
