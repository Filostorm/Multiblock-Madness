import crafttweaker.item.IItemStack;
import mods.integrateddynamics.MechanicalSqueezer;

print("==================== loading integrated_dynamics.zs ====================");
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

// Squeezer
recipes.addShaped(<integrateddynamics:mechanical_squeezer>, [[<integrateddynamics:crystalized_menril_block>, <advancedrocketry:platepress>, <integrateddynamics:crystalized_menril_block>],[<rockhounding_chemistry:misc_items:1>, <enderio:item_material>, <rockhounding_chemistry:misc_items:1>], [<integrateddynamics:crystalized_menril_block>, <openblocks:tank>, <integrateddynamics:crystalized_menril_block>]]);
MechanicalSqueezer.addRecipe(<minecraft:dye:3>, <xlfoodmod:chocolate_syrup>, null, 100);

// Drying Basin
recipes.addShaped(<integrateddynamics:mechanical_drying_basin>, [[<integrateddynamics:crystalized_menril_block>, null, <integrateddynamics:crystalized_menril_block>],[<rockhounding_chemistry:misc_items:1>, <enderio:item_material>, <rockhounding_chemistry:misc_items:1>], [<integrateddynamics:crystalized_menril_block>, <minecraft:cauldron>, <integrateddynamics:crystalized_menril_block>]]);

// Energy Interface
recipes.addShaped(<integratedtunnels:part_interface_energy_item> * 2, [[<integrateddynamics:crystalized_menril_chunk>, <integrateddynamics:crystalized_menril_chunk>, <integrateddynamics:crystalized_menril_chunk>],[<integrateddynamics:crystalized_menril_chunk>, <randomthings:spectrelens>, <integrateddynamics:crystalized_menril_chunk>], [<integrateddynamics:crystalized_menril_chunk>, <integrateddynamics:crystalized_menril_chunk>, <integrateddynamics:crystalized_menril_chunk>]]);


##########################################################################################
print("==================== end of integrated_dynamics.zs ====================");
