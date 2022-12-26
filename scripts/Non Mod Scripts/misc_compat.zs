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
// Separating Recipes for Zirconium/Carbide variants of all isotopes/fuels for the Centrifugal Separator
// Format is original:[zirconium,carbide]

val fuelSeparation as IItemStack[][IItemStack] = {
	<nuclearcraft:uranium>:[<nuclearcraft:uranium:4>,<nuclearcraft:uranium:1>],
	<nuclearcraft:uranium:5>:[<nuclearcraft:uranium:9>,<nuclearcraft:uranium:6>],
	<nuclearcraft:uranium:10>:[<nuclearcraft:uranium:14>,<nuclearcraft:uranium:11>],
	<nuclearcraft:neptunium>:[<nuclearcraft:neptunium:4>,<nuclearcraft:neptunium:1>],
	<nuclearcraft:neptunium:5>:[<nuclearcraft:neptunium:9>,<nuclearcraft:neptunium:6>],
	<nuclearcraft:plutonium>:[<nuclearcraft:plutonium:4>,<nuclearcraft:plutonium:1>],
	<nuclearcraft:plutonium:5>:[<nuclearcraft:plutonium:9>,<nuclearcraft:plutonium:6>],
	<nuclearcraft:plutonium:10>:[<nuclearcraft:plutonium:14>,<nuclearcraft:plutonium:11>],
	<nuclearcraft:plutonium:15>:[<nuclearcraft:plutonium:19>,<nuclearcraft:plutonium:16>],
	<nuclearcraft:americium>:[<nuclearcraft:americium:4>,<nuclearcraft:americium:1>],
	<nuclearcraft:americium:5>:[<nuclearcraft:americium:9>,<nuclearcraft:americium:6>],
	<nuclearcraft:americium:10>:[<nuclearcraft:americium:14>,<nuclearcraft:americium:11>],
	<nuclearcraft:curium>:[<nuclearcraft:curium:4>,<nuclearcraft:curium:1>],
	<nuclearcraft:curium:5>:[<nuclearcraft:curium:9>,<nuclearcraft:curium:6>],
	<nuclearcraft:curium:10>:[<nuclearcraft:curium:14>,<nuclearcraft:curium:11>],
	<nuclearcraft:curium:15>:[<nuclearcraft:curium:19>,<nuclearcraft:curium:16>],
	<nuclearcraft:berkelium>:[<nuclearcraft:berkelium:4>,<nuclearcraft:berkelium:1>],
	<nuclearcraft:berkelium:5>:[<nuclearcraft:berkelium:9>,<nuclearcraft:berkelium:6>],
	<nuclearcraft:californium>:[<nuclearcraft:californium:4>,<nuclearcraft:californium:1>],
	<nuclearcraft:californium:5>:[<nuclearcraft:californium:9>,<nuclearcraft:californium:6>],
	<nuclearcraft:californium:10>:[<nuclearcraft:californium:14>,<nuclearcraft:californium:11>],
	<nuclearcraft:californium:15>:[<nuclearcraft:californium:19>,<nuclearcraft:californium:16>],
	<qmd:copernicium>:[<qmd:copernicium:4>,<qmd:copernicium:1>]
} as IItemStack[][IItemStack];

for fuel, sepfuel in fuelSeparation {
    Centrifuge.addRecipe([fuel, <nuclearcraft:dust:10>], sepfuel[0], null, 12000);
    Centrifuge.addRecipe([fuel, <nuclearcraft:dust:8>], sepfuel[1], null, 12000);
}



// --==Pressuriser-Enrichment Chamber Compat==-- //
enrichment.addRecipe(<nuclearcraft:gem_dust:1>, <nuclearcraft:gem>);
enrichment.addRecipe(<nuclearcraft:gem_dust:4>, <nuclearcraft:gem:1>);
enrichment.addRecipe(<nuclearcraft:gem_dust:8>, <nuclearcraft:gem:3>);

##########################################################################################
print("==================== end of misc_compat.zs ====================");