import crafttweaker.item.IItemStack;
import mods.immersiveengineering.Crusher;
import mods.thermalexpansion.Pulverizer;
import mods.nuclearcraft.manufactory;
import mods.techreborn.grinder;
print("==================== loading crushing.zs ====================");
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



//clay dust
Crusher.removeRecipe(<minecraft:clay_ball>);
Crusher.addRecipe(<techreborn:dust:12>*4,<minecraft:clay>, 2048);
Crusher.addRecipe(<techreborn:dust:12>,<minecraft:clay_ball>, 1024);
grinder.removeRecipe(<techreborn:dust:12>*9);
grinder.addRecipe(<techreborn:dust:12>*4, <minecraft:clay>, 300, 4);
grinder.addRecipe(<techreborn:dust:12>, <minecraft:clay_ball>, 150, 2);
manufactory.removeRecipeWithInput(<minecraft:clay>);
manufactory.addRecipe(<minecraft:clay>, <techreborn:dust:12> * 4);
manufactory.addRecipe(<minecraft:clay_ball>, <techreborn:dust:12>);
Pulverizer.removeRecipe(<minecraft:clay>);
Pulverizer.addRecipe(<techreborn:dust:12>*4, <minecraft:clay>, 2000);
Pulverizer.addRecipe(<techreborn:dust:12>, <minecraft:clay_ball>, 1500);

//limestone
val limestoneforFlux = <ore:limestoneforFlux>;
limestoneforFlux.add(<quark:limestone>);
limestoneforFlux.add(<quark:limestone:1>);
limestoneforFlux.add(<thebetweenlands:polished_limestone>);
limestoneforFlux.add(<thebetweenlands:limestone>);
limestoneforFlux.add(<chisel:limestone2:7>);
for item in limestoneforFlux.items{
Crusher.addRecipe(<thebetweenlands:items_misc:27>*3, item, 2048, <thebetweenlands:items_misc:27>, 0.5);
Pulverizer.addRecipe(<thebetweenlands:items_misc:27>*4, item, 1500, <thebetweenlands:items_misc:27>, 50);
}
manufactory.addRecipe(<ore:limestoneforFlux>, <thebetweenlands:items_misc:27>*4);
grinder.addRecipe(<thebetweenlands:items_misc:27>*4, <ore:limestoneforFlux>, 300, 4);





//sulfur
Crusher.addRecipe(<thermalfoundation:material:771>*3, <thebetweenlands:items_misc:18>, 2048, <thermalfoundation:material:771>, 0.5);
manufactory.addRecipe(<thebetweenlands:items_misc:18>, <thermalfoundation:material:771>*4);
grinder.addRecipe(<thermalfoundation:material:771>*4, <thebetweenlands:items_misc:18>, 300, 4);
Pulverizer.addRecipe(<thermalfoundation:material:771>*4, <thebetweenlands:items_misc:18>, 1500, <thermalfoundation:material:771>, 50);
for i in 0 to 30{
	Crusher.addRecipe(<thermalfoundation:material:771>*5, <soot:sulfur_clump>.withTag({size: (i)}), 2048, <thermalfoundation:material:771>*2, 0.5);
	manufactory.addRecipe(<soot:sulfur_clump>.withTag({size: (i)}), <thermalfoundation:material:771>*6);
	grinder.addRecipe(<thermalfoundation:material:771>*6, <soot:sulfur_clump>.withTag({size: (i)}), 300, 4);
	Pulverizer.addRecipe(<thermalfoundation:material:771>*6, <soot:sulfur_clump>.withTag({size: (i)}), 1500, <thermalfoundation:material:771>, 50);
	}

//Slates
Crusher.addRecipe(<contenttweaker:slatedust>, <bloodmagic:slate>, 2048);
Crusher.addRecipe(<contenttweaker:slatedust>*2, <bloodmagic:slate:1>, 2048);
Crusher.addRecipe(<contenttweaker:slatedust>*4, <bloodmagic:slate:2>, 2048);
Crusher.addRecipe(<contenttweaker:slatedust>*8, <bloodmagic:slate:3>, 2048);
Crusher.addRecipe(<contenttweaker:slatedust>*16, <bloodmagic:slate:4>, 2048);
manufactory.addRecipe(<bloodmagic:slate>, <contenttweaker:slatedust>);
manufactory.addRecipe(<bloodmagic:slate:1>, <contenttweaker:slatedust>*2);
manufactory.addRecipe(<bloodmagic:slate:2>, <contenttweaker:slatedust>*4);
manufactory.addRecipe(<bloodmagic:slate:3>, <contenttweaker:slatedust>*8);
manufactory.addRecipe(<bloodmagic:slate:4>, <contenttweaker:slatedust>*16);
Pulverizer.addRecipe(<contenttweaker:slatedust>, <bloodmagic:slate>, 1000);
Pulverizer.addRecipe(<contenttweaker:slatedust>*2, <bloodmagic:slate:1>, 1000);
Pulverizer.addRecipe(<contenttweaker:slatedust>*4, <bloodmagic:slate:2>, 1000);
Pulverizer.addRecipe(<contenttweaker:slatedust>*8, <bloodmagic:slate:3>, 1000);
Pulverizer.addRecipe(<contenttweaker:slatedust>*16, <bloodmagic:slate:4>, 1000);
grinder.addRecipe(<contenttweaker:slatedust>, <bloodmagic:slate>, 300, 4);
grinder.addRecipe(<contenttweaker:slatedust>*2, <bloodmagic:slate:1>, 300, 4);
grinder.addRecipe(<contenttweaker:slatedust>*4, <bloodmagic:slate:2>, 300, 4);
grinder.addRecipe(<contenttweaker:slatedust>*8, <bloodmagic:slate:3>, 300, 4);
grinder.addRecipe(<contenttweaker:slatedust>*16, <bloodmagic:slate:4>, 300, 4);

##########################################################################################
print("==================== end of crushing.zs ====================");
