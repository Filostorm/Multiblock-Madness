import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;
import mods.mekanism.enrichment;
import mods.nuclearcraft.Separator;
import mods.thermalexpansion.Centrifuge;

#priority 98

print("==================== loading misc_compat.zs ====================");
##########################################################################################

// --==Separator-Centrifugal Separator Compat==-- //

/*
mods.nuclearcraft.Separator.addRecipe(IIngredient itemInput, IIngredient itemOutput1, IIngredient itemOutput2, @Optional double timeMultiplier, @Optional double powerMultiplier, @Optional double processRadiation);
mods.thermalexpansion.Centrifuge.addRecipe(WeightedItemStack[] outputs, IItemStack input, ILiquidStack fluid, int energy);
*/

// Magnesium
Centrifuge.addRecipe([<qmd:isotope:2> * 8, <qmd:isotope:3>], <nuclearcraft:ingot:7> * 9, null, 60000);
Centrifuge.addRecipe([<qmd:isotope:2> * 8, <qmd:isotope:3>], <techreborn:dust:30> * 9, null, 60000);

// Calcium
Centrifuge.addRecipe([<qmd:isotope:8>], <qmd:ingot:13> * 8, null, 60000);
Centrifuge.addRecipe([<qmd:isotope:8>], <rockhounding_chemistry:chemical_dusts:23> * 8, null, 60000);

// Uranium
Centrifuge.addRecipe([<nuclearcraft:uranium:10> * 9, <nuclearcraft:uranium:5>], <immersiveengineering:metal:5> * 10, null, 50000);
Centrifuge.addRecipe([<nuclearcraft:uranium:10> * 9, <nuclearcraft:uranium:5>], <immersiveengineering:metal:14> * 10, null, 50000);

// Boron
Centrifuge.addRecipe([<nuclearcraft:boron:1> * 9, <nuclearcraft:boron> * 3], <nuclearcraft:ingot:5> * 12, null, 60000);
Centrifuge.addRecipe([<nuclearcraft:boron:1> * 9, <nuclearcraft:boron> * 3], <nuclearcraft:dust:5> * 12, null, 60000);

// Lithium
Centrifuge.addRecipe([<nuclearcraft:lithium:1> * 9, <nuclearcraft:lithium>], <nuclearcraft:ingot:6> * 10, null, 50000);
Centrifuge.addRecipe([<nuclearcraft:lithium:1> * 9, <nuclearcraft:lithium>], <mekanism:otherdust:4> * 10, null, 50000);


// NC Fuels Separator Compat




// --==Pressuriser-Enrichment Chamber Compat==-- //
enrichment.addRecipe(<nuclearcraft:gem_dust:1>, <nuclearcraft:gem>);
enrichment.addRecipe(<nuclearcraft:gem_dust:4>, <nuclearcraft:gem:1>);
enrichment.addRecipe(<nuclearcraft:gem_dust:8>, <nuclearcraft:gem:3>);

##########################################################################################
print("==================== end of misc_compat.zs ====================");