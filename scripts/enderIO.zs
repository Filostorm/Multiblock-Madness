
import crafttweaker.item.IItemStack;
import mods.tconstruct.Casting;
print("==================== loading mods enderIO.zs ====================");
##########################################################################################

val itemstoRemove =
[
<enderio:item_material:14>,
<enderio:item_material:15>,
]
 as IItemStack[];

for item in itemstoRemove {
	recipes.remove(item);
}

//stone gear
recipes.addShaped(<enderio:item_material:10>, [[null, <ore:stone>, null],[<ore:stone>, <enderio:item_material:9>, <ore:stone>], [null, <ore:stone>, null]]);
//wood gear
recipes.addShaped(<enderio:item_material:9>, [[null, <ore:stickWood>, null],[<ore:stickWood>, null, <ore:stickWood>], [null, <ore:stickWood>, null]]);
//composit
recipes.addShaped(<enderio:item_material:22> * 8, [[<minecraft:gravel>, <embers:blend_caminite>, <minecraft:gravel>],[<embers:blend_caminite>, <ore:sand>, <embers:blend_caminite>], [<minecraft:gravel>, <embers:blend_caminite>, <minecraft:gravel>]]);

val fusedGlass = <ore:fusedGlass>;
fusedGlass.add(<tconstruct:clear_glass>);

//Pulsating
mods.enderio.AlloySmelter.addRecipe(<enderio:item_material:14>, [<minecraft:diamond>,<enderio:item_alloy_ingot:5>], 10000, 0.1);
mods.nuclearcraft.alloy_furnace.removeRecipeWithOutput(<enderio:item_material:14>);
Casting.removeTableRecipe(<enderio:item_material:14>);
//Vibrant
mods.enderio.AlloySmelter.addRecipe(<enderio:item_material:15>, [<minecraft:emerald>,<enderio:item_alloy_ingot:2>], 20000, 0.1);
mods.nuclearcraft.alloy_furnace.removeRecipeWithOutput(<enderio:item_material:15>);
Casting.removeTableRecipe(<enderio:item_material:15>);

//Inert Metal
mods.enderio.AlloySmelter.addRecipe(<contenttweaker:inert_ingot>*2, [<thermalfoundation:material:130>*2,<thermalfoundation:material:131>], 5000);

//Ender Alloys
mods.enderio.AlloySmelter.addRecipe(<enderutilities:enderpart:1> *2, [<enderutilities:enderpart> * 2,<enderio:item_alloy_ingot:1> * 2,<minecraft:ender_eye>], 10000);
mods.enderio.AlloySmelter.addRecipe(<enderutilities:enderpart:2> * 2, [<enderutilities:enderpart:1> * 2,<enderio:item_alloy_ingot:8> * 2,<randomthings:stableenderpearl>], 15000);

mods.thermalexpansion.InductionSmelter.removeRecipe(<enderio:item_material:51>, <enderio:item_material>);
mods.thermalexpansion.InductionSmelter.removeRecipe(<enderio:item_material:52>, <enderio:item_material>);
mods.enderio.AlloySmelter.removeRecipe(<enderio:item_material:1>);
mods.enderio.AlloySmelter.removeRecipe(<enderio:item_material:53>);
##########################################################################################
print("==================== end of mods enderIO.zs ====================");
