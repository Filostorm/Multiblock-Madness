import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;
import mods.modularmachinery.RecipePrimer;
import mods.rockhounding_chemistry.SlurryPond;
import mods.nuclearcraft.Crystallizer;
import mods.rockhounding_chemistry.Precipitator;
import mods.immersiveengineering.BlastFurnace;
import mods.techreborn.blastFurnace;
import mods.immersiveengineering.ArcFurnace;

print("==================== loading mods lunar_miner.zs ====================");
##########################################################################################

##############################################
##
##           Lunar Miner
##
##############################################

//Limestone slurry
SlurryPond.add(<rockhounding_chemistry:chemical_items:20>, <liquid:nitric_acid>*25, <liquid:limestone_slurry>*100);

//Barite
/*In the AR Config
	<Recipe timeRequired="50" power ="100000">
		<input>
			<fluidStack>limestone_slurry;1000</fluidStack>
		</input>
		<output>
			<itemStack>contenttweaker:dust_barite;1;0</itemStack>
		</output>
	</Recipe>
*/
//Optional Recipe
//Crystallizer.addRecipe(<liquid:limestone_slurry>*1000, <contenttweaker:dust_barite>);

//Barium Sulfide
//IE
BlastFurnace.addRecipe(<contenttweaker:dust_barium_sulfide>, <contenttweaker:dust_barite>, 2000);
ArcFurnace.addRecipe(<contenttweaker:dust_barium_sulfide>, <contenttweaker:dust_barite>, null, 2000, 2048, [<ore:fuelCoke>], "Alloying");
//TR
blastFurnace.addRecipe(<contenttweaker:dust_barium_sulfide>, null, <contenttweaker:dust_barite>, <ore:fuelCoke>, 200, 512, 2000);

//Barium Sulfate
Precipitator.add("Barium Sulfate", <contenttweaker:dust_barium_sulfide>, null, <liquid:sulfuric_acid>*100, <liquid:toxic_waste>*100, <contenttweaker:dust_barium_sulfate>);

// Drilling Fluid
val drillingFluid = mods.modularmachinery.RecipeBuilder.newBuilder("mixer-drilling-fluid", "mixer-dust", 100, 0);
drillingFluid.addFluidInput(<liquid:lubricant>*500);
drillingFluid.addItemInput(<techreborn:dust:12>*8);
drillingFluid.addItemInput(<rockhounding_chemistry:chemical_dusts:23>*3);
drillingFluid.addItemInput(<contenttweaker:dust_barium_sulfate>);
drillingFluid.addFluidOutput(<liquid:drilling_fluid>*500);
drillingFluid.build();

/* Will return the next update!
val missionLunar = mods.modularmachinery.RecipeBuilder.newBuilder("quarry-lunar", "quarry", 1, 0);
missionLunar.addEnergyPerTickInput(5000000);
missionLunar.addDimensionRequirement([3]);
missionLunar.addFluidInput(<liquid:drilling_fluid>*5);
missionLunar.addItemOutput(<advancedrocketry:moonturf>).setChance(0.5);
missionLunar.addItemOutput(<advancedrocketry:moonturf_dark>).setChance(0.5);
missionLunar.addItemOutput(<libvulpes:ore0:8>).setChance(0.2);
missionLunar.addItemOutput(<mekanism:oreblock>).setChance(0.2);
missionLunar.addItemOutput(<thermalfoundation:ore:6>).setChance(0.2);
missionLunar.addItemOutput(<thermalfoundation:ore:7>).setChance(0.2);
missionLunar.addItemOutput(<appliedenergistics2:sky_stone_block>).setChance(0.1);
missionLunar.addItemOutput(<mysticalworld:amethyst_ore>).setChance(0.1);
missionLunar.addItemOutput(<chisel:energizedvoidstone>).setChance(0.05);
missionLunar.addItemOutput(<astralsorcery:blockcustomore:1>).setChance(0.05);
missionLunar.addItemOutput(<astralsorcery:blockcustomore>).setChance(0.05);
missionLunar.addItemOutput(<fluxnetworks:fluxblock>).setChance(0.02);
missionLunar.build();
*/


##########################################################################################
print("==================== end of mods lunar_miner.zs ====================");
