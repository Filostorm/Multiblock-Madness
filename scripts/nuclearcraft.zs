
import crafttweaker.item.IItemStack;
print("==================== loading nuclearcraft.zs ====================");
##########################################################################################

val itemstoRemove =
[
<nuclearcraft:manufactory_idle>,
]
 as IItemStack[];

for item in itemstoRemove {
	recipes.remove(item);
}

##Manufactory
##------------

/*
mods.nuclearcraft.manufactory.removeRecipeWithInput(<minecraft:clay>);
//mods.nuclearcraft.manufactory.removeRecipeWithOutput(<techreborn:dust:12>);

mods.nuclearcraft.manufactory.addRecipe(<minecraft:clay>, <techreborn:dust:12> * 4);
mods.nuclearcraft.manufactory.addRecipe(<minecraft:clay_ball>, <techreborn:dust:12>);
*/
recipes.addShaped(<nuclearcraft:manufactory_idle>, [[<thermalfoundation:material:323>, <minecraft:piston>, <thermalfoundation:material:323>],[<minecraft:flint>, <enderio:item_material>, <minecraft:flint>], [<thermalfoundation:material:323>, <nuclearcraft:part:4>, <thermalfoundation:material:323>]]);

recipes.addShaped(<contenttweaker:plating_basic> * 4, [[null, <nuclearcraft:part>, null],[<nuclearcraft:part>, null, <nuclearcraft:part>], [null, <nuclearcraft:part>, null]]);
recipes.addShaped(<nuclearcraft:alloy_furnace_idle>, [[<nuclearcraft:part>, <minecraft:redstone>, <nuclearcraft:part>],[<minecraft:brick>, <nuclearcraft:part:10>, <minecraft:brick>], [<nuclearcraft:part>, <nuclearcraft:part:4>, <nuclearcraft:part>]]);

//mods.nuclearcraft.pressurizer.addRecipe([itemInput, itemOutput, @Optional double timeMultiplier, @Optional double powerMultiplier, @Optional double processRadiation]);
//mods.nuclearcraft.pressurizer.addRecipe([<enderore:dust_ender>, <minecraft:ender_pearl>, 5, 10]);
##########################################################################################
print("==================== end of nuclearcraft.zs ====================");
