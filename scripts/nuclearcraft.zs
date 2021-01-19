print("==================== loading nuclearcraft.zs ====================");
##########################################################################################

##Manufactory
##------------

/*
mods.nuclearcraft.manufactory.removeRecipeWithInput(<minecraft:clay>);
//mods.nuclearcraft.manufactory.removeRecipeWithOutput(<techreborn:dust:12>);

mods.nuclearcraft.manufactory.addRecipe(<minecraft:clay>, <techreborn:dust:12> * 4);
mods.nuclearcraft.manufactory.addRecipe(<minecraft:clay_ball>, <techreborn:dust:12>);
*/

recipes.addShaped(<contenttweaker:plating_basic> * 4, [[null, <nuclearcraft:part>, null],[<nuclearcraft:part>, null, <nuclearcraft:part>], [null, <nuclearcraft:part>, null]]);
recipes.addShaped(<nuclearcraft:alloy_furnace_idle>, [[<nuclearcraft:part>, <minecraft:redstone>, <nuclearcraft:part>],[<minecraft:brick>, <nuclearcraft:part:10>, <minecraft:brick>], [<nuclearcraft:part>, <nuclearcraft:part:4>, <nuclearcraft:part>]]);

##########################################################################################
print("==================== end of nuclearcraft.zs ====================");
