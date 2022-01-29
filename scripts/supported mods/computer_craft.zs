#modloaded computercraft
import crafttweaker.item.IItemStack;
import mods.tconstruct.Casting;
import mods.artisanworktables.builder.RecipeBuilder;
print("==================== loading computer_craft.zs ====================");
##########################################################################################

val itemstoRemove =
[

<computercraft:cable:1>,
]
 as IItemStack[];

for item in itemstoRemove {
	recipes.remove(item);
}

//Modem
recipes.addShaped(<computercraft:cable:1>, [[<thermalfoundation:material:32>, <thermalfoundation:material:32>, <thermalfoundation:material:32>],[<thermalfoundation:material:32>, <minecraft:redstone>, <thermalfoundation:material:32>], [<thermalfoundation:material:32>, <thermalfoundation:material:32>, <thermalfoundation:material:32>]]);

##########################################################################################
print("==================== end of computer_craft.zs ====================");
