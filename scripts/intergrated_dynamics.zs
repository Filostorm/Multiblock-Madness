import crafttweaker.item.IItemStack;
import mods.integrateddynamics.MechanicalSqueezer;
print("==================== loading mods blank.zs ====================");
##########################################################################################

val itemstoRemove =
[
]
 as IItemStack[];

for item in itemstoRemove {
	recipes.remove(item);
}

/*
val tinyDustMap as IItemStack[IItemStack] = {
} as IItemStack[IItemStack];

for tinyDust, material in tinyDustMap {
	mods.fossils.recipes.addSifterOutput(material, tinyDust, 1);
}


<techreborn:part:13>.displayName = "Constantan Heating Coil";
<astralsorcery:itemcelestialcrystal>.addTooltip(format.aqua("Grows from a Celestal Crystal Cluster"));
*/

//squeezer
recipes.addShaped(<integrateddynamics:mechanical_squeezer>, [[<integrateddynamics:crystalized_menril_block>, <advancedrocketry:platepress>, <integrateddynamics:crystalized_menril_block>],[<rockhounding_chemistry:misc_items:1>, <enderio:item_material>, <rockhounding_chemistry:misc_items:1>], [<integrateddynamics:crystalized_menril_block>, <openblocks:tank>, <integrateddynamics:crystalized_menril_block>]]);
recipes.addShapeless(<minecraft:iron_block>, [<integrateddynamics:squeezer>]);
MechanicalSqueezer.addRecipe(<minecraft:dye:3>, <xlfoodmod:chocolate_syrup>, null, 100);

//drying basin
recipes.addShapeless(<minecraft:iron_ingot> * 2, [<integrateddynamics:drying_basin>]);
recipes.addShaped(<integrateddynamics:mechanical_drying_basin>, [[<integrateddynamics:crystalized_menril_block>, null, <integrateddynamics:crystalized_menril_block>],[<rockhounding_chemistry:misc_items:1>, <enderio:item_material>, <rockhounding_chemistry:misc_items:1>], [<integrateddynamics:crystalized_menril_block>, <minecraft:cauldron>, <integrateddynamics:crystalized_menril_block>]]);



##########################################################################################
print("==================== end of mods blank.zs ====================");
