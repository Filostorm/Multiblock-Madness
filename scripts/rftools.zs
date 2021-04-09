import crafttweaker.item.IItemStack;
print("==================== loading rftools.zs ====================");
##########################################################################################


val itemstoRemove =
[
    <rftools:space_chamber>,
    <rftools:shape_card:2>,
    <rftools:powercell>,
    <rftools:dimensional_shard>,
    <rftools:environmental_controller>,
]
 as IItemStack[];

for item in itemstoRemove {
	recipes.remove(item);
}
	mods.jei.JEI.removeAndHide(<rftools:powercell_simple>);

recipes.addShaped(<rftools:space_chamber> * 2, [[<minecraft:stained_glass:11>, <minecraft:stained_glass:11>, <minecraft:stained_glass:11>],[<minecraft:stained_glass:11>, <rftools:machine_frame>, <minecraft:stained_glass:11>], [<minecraft:stained_glass:11>, <minecraft:stained_glass:11>, <minecraft:stained_glass:11>]]);

//Quarry
recipes.addShaped(<rftools:shape_card:2>, [[<techreborn:plates:31>, <techreborn:plates:32>, <techreborn:plates:31>],[<techreborn:plates:32>, <rftools:shape_card>, <techreborn:plates:32>], [<techreborn:plates:31>, <techreborn:plates:32>, <techreborn:plates:31>]]);

//Powercell
recipes.addShapedMirrored(<rftools:powercell> * 2, [[<minecraft:prismarine>, <randomthings:spectrelens>, <minecraft:redstone_block>],[<randomthings:spectrelens>, <rftools:machine_frame>, <randomthings:spectrelens>], [<minecraft:redstone_block>, <randomthings:spectrelens>, <minecraft:prismarine>]]);

//Enviromental controller
recipes.addShaped(<rftools:environmental_controller>, [[<minecraft:ender_pearl>, <minecraft:beacon>, <minecraft:ender_pearl>],[<actuallyadditions:block_crystal_empowered:5>, <rftools:machine_frame>, <actuallyadditions:block_crystal_empowered:2>], [<minecraft:ender_pearl>, <actuallyadditions:block_crystal_empowered:4>, <minecraft:ender_pearl>]]);


##########################################################################################
print("==================== end of rftools.zs ====================");
