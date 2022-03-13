import crafttweaker.item.IItemStack;
print("==================== loading qmd.zs ====================");
##########################################################################################
/*
val itemstoRemove =
[
]
 as IItemStack[];

for item in itemstoRemove {
	recipes.remove(item);
}


val tinyDustMap as IItemStack[IItemStack] = {
} as IItemStack[IItemStack];

for tinyDust, material in tinyDustMap {
	mods.fossils.recipes.addSifterOutput(material, tinyDust, 1);
}


<techreborn:part:13>.displayName = "Constantan Heating Coil";
<astralsorcery:itemcelestialcrystal>.addTooltip(format.aqua("Grows from a Celestal Crystal Cluster"));
*/

mods.nuclearcraft.Melter.addRecipe(<rockhounding_chemistry:alloy_items_gems:1>, <liquid:nd_yag>*432);
mods.thermalexpansion.Crucible.addRecipe(<liquid:nd_yag>*432, <rockhounding_chemistry:alloy_items_gems:1>, 4000);


// Recoherent's QMD Neutronium
// Thanks Reco!

// Elite Plating
recipes.addShaped(<contenttweaker:plating_elite> * 4, [[null, <nuclearcraft:part:3>, null],[<nuclearcraft:part:3>, null, <nuclearcraft:part:3>], [null, <nuclearcraft:part:3>, null]]);

// Neutronium
mods.qmd.accelerator_source.addRecipe(<contenttweaker:incoherent>, ((<particle:filon>*10000)^30000)~1.02);
mods.qmd.target_chamber.addRecipe(<contenttweaker:neutronic>, ((<particle:filon>*1000000)^50000)~2.0, <avaritia:resource:4>, null, null, null, 53000, 0.28, -100000, 0.001);

##########################################################################################
print("==================== end of qmd.zs ====================");
