import crafttweaker.item.IItemStack;
import crafttweaker.item.WeightedItemStack;
import crafttweaker.oredict.IOreDict;
import crafttweaker.oredict.IOreDictEntry;
import crafttweaker.item.IIngredient;
import crafttweaker.liquid.ILiquidStack;
import mods.jei.JEI.removeAndHide;
import mods.tconstruct.Casting;
import mods.immersiveengineering.Crusher;
import mods.immersiveengineering.MetalPress;
import mods.immersiveengineering.ArcFurnace;
import mods.techreborn.rollingMachine;
import mods.techreborn.extractor;
import mods.techreborn.implosionCompressor;
import mods.techreborn.industrialGrinder;
import mods.integrateddynamics.MechanicalSqueezer;
import mods.nuclearcraft.ChanceItemIngredient;
import mods.nuclearcraft.Manufactory;
import mods.nuclearcraft.Pressurizer;
import mods.nuclearcraft.Melter;
import mods.nuclearcraft.AlloyFurnace;
import mods.nuclearcraft.IngotFormer;
import mods.nuclearcraft.Crystallizer;
import mods.nuclearcraft.FissionIrradiator;
import mods.thermalexpansion.RedstoneFurnace;
import mods.thermalexpansion.Pulverizer;
import mods.thermalexpansion.Crucible;
import mods.thermalexpansion.Compactor;
import mods.thermalexpansion.InductionSmelter;
import mods.mekanism.crusher;
import mods.mekanism.enrichment;
import mods.qmd.target_chamber;
import mods.qmd.ore_leacher;

#priority 98

print("==================== loading unification.zs ====================");
##########################################################################################

##=======================================================
## Silicon Unification
##=======================================================

// Unifying all silicon variants
furnace.remove(<libvulpes:productingot:3>);
furnace.addRecipe(<nuclearcraft:gem:6>, <ore:dustSilicon>);

Manufactory.removeRecipeWithInput(<minecraft:sand>);
Manufactory.removeRecipeWithInput(<libvulpes:productingot:3>);
Manufactory.addRecipe(<minecraft:sand>, <nuclearcraft:gem:6>);

IngotFormer.removeRecipeWithOutput(<libvulpes:productingot:3>);
IngotFormer.addRecipe(<liquid:silicon> * 144, <nuclearcraft:gem:6>);

ArcFurnace.removeRecipe(<libvulpes:productingot:3>);
ArcFurnace.addRecipe(<nuclearcraft:gem:6>, <ore:dustSilicon>, null, 100, 512);

removeAndHide(<libvulpes:productingot:3>);
removeAndHide(<appliedenergistics2:material:5>);
removeAndHide(<enderio:item_material:5>);

furnace.remove(<appliedenergistics2:material:5>);
furnace.addRecipe(<nuclearcraft:gem:6>, <nuclearcraft:gem_dust:2>);
furnace.addRecipe(<nuclearcraft:gem:6>, <appliedenergistics2:material:2>);

InductionSmelter.removeRecipe(<minecraft:sand>, <techreborn:plates:11>);
InductionSmelter.removeRecipe(<minecraft:sand>, <rockhounding_chemistry:chemical_dusts:42>);

Crusher.removeRecipesForInput(<libvulpes:productingot:3>);
Pulverizer.removeRecipe(<libvulpes:productingot:3>);
Pulverizer.addRecipe(<rockhounding_chemistry:chemical_dusts:42>, <nuclearcraft:gem:6>, 2000);

// New Silicon Wafer Recipes
Manufactory.removeRecipeWithInput(<qmd:semiconductor:2>);
Manufactory.addRecipe(<ore:bouleSilicon>, <advancedrocketry:wafer>*4);

FissionIrradiator.removeRecipeWithInput(<qmd:semiconductor:3>);
FissionIrradiator.addRecipe(<ore:waferSilicon>, <qmd:semiconductor:1>, 120000, 0, 0, 0);

target_chamber.removeRecipeWithInput(<qmd:semiconductor:3>, ((<particle:boron_ion>*1000000)^600)~2.0);
target_chamber.addRecipe(<ore:waferSilicon>, ((<particle:boron_ion>*1000000)^600)~2.0, <qmd:semiconductor>, 
null, null, null, 
1000, 1.0, 0, 0);

removeAndHide(<qmd:semiconductor:3>);

Crystallizer.removeRecipeWithOutput(<qmd:semiconductor:2>);
Crystallizer.addRecipe(<liquid:silicon> * 576, <qmd:semiconductor:2>);


##=======================================================
## Cinnabar, Quicksilver & Mercury Unification
##=======================================================

// Cinnabar //

// Removing Small Cinnabar
removeAndHide(<techreborn:smalldust:11>);
recipes.remove(<techreborn:dust:11>);

// Adding a temporary cinnabar dust to cinnabar recipe (can be removed when cinnabar ore has been changed to drop TE cinnabar)
furnace.addRecipe(<thermalfoundation:material:866>, <techreborn:dust:11>);

RedstoneFurnace.removeRecipe(<techreborn:dust:11>);
RedstoneFurnace.addRecipe(<thermalfoundation:material:866>, <techreborn:dust:11>, 2000);

// Removing cinnabar electrolysis (has inconsistent mercury ratios)
mods.techreborn.industrialElectrolyzer.removeInputRecipe(<techreborn:dust:11>);

// Adding TE cinnabar to quicksilver smelting
furnace.addRecipe(<thaumcraft:quicksilver>, <thermalfoundation:material:866>);

/* Quicksilver to Cinnabar pulverisation
Crusher.addRecipe(<thermalfoundation:material:866>, <ore:quicksilver>, 2048);
Manufactory.addRecipe(<ore:quicksilver>, <thermalfoundation:material:866>);
Pulverizer.addRecipe(<thermalfoundation:material:866>, <thaumcraft:quicksilver>, 2000);
crusher.addRecipe(<ore:quicksilver>, <thermalfoundation:material:866>);
SagMill.addRecipe([<thermalfoundation:material:866>], [1] , <ore:quicksilver>, "NONE");
*/

// Quicksilver/Mercury //

// 1 Quicksilver ⇌ 144mb Mercury
Crucible.addRecipe(<liquid:mercury> * 144, <thaumcraft:quicksilver>, 4000);
Crucible.addRecipe(<liquid:mercury> * 144, <thermalfoundation:material:866>, 4000);

Melter.removeRecipeWithInput(<qmd:ingot2:2>);

Melter.addRecipe(<thaumcraft:quicksilver>, <liquid:mercury> * 144);
Melter.addRecipe(<ore:dustCinnabar>, <liquid:mercury> * 144);

IngotFormer.removeRecipeWithOutput(<qmd:ingot2:2>);
IngotFormer.addRecipe(<liquid:mercury> * 144, <thaumcraft:quicksilver>);

// Replacing Mercury with Quicksilver //

// New Ore Leacher Recipes
ore_leacher.removeRecipeWithOutput(<minecraft:redstone> * 12, <qmd:ingot2:2> * 3, null);
ore_leacher.removeRecipeWithOutput(<qmd:ingot2:2>, <thermalfoundation:material:771>, null);

ore_leacher.addRecipe(<ore:oreRedstone>, <liquid:nitric_acid>*16, <liquid:hydrochloric_acid>*16, <liquid:sulfuric_acid>*16, <minecraft:redstone>*12, <thaumcraft:quicksilver>*3, null, 1.0, 1.0, 0);
ore_leacher.addRecipe(<ore:dustRedstone>, <liquid:nitric_acid>*16, <liquid:hydrochloric_acid>*16, <liquid:sulfuric_acid>*16, 
ChanceItemIngredient.create(<thaumcraft:quicksilver>, 50, 0), 
ChanceItemIngredient.create(<thermalfoundation:material:771>, 50, 0), 
null, 1.0, 1.0, 0.001);

// New Fuel Reprocessor Recipes
val fuelstorewrite =
[
<qmd:waste_spallation:1>,
<qmd:waste_spallation:2>,
<qmd:waste_spallation:3>,
<qmd:waste_spallation:4>,
<qmd:waste_spallation:5>,
<qmd:waste_spallation:6>,
<qmd:waste_spallation:8>,
<qmd:waste_spallation:7>,
<qmd:waste_spallation:9>
]
 as IItemStack[];

for item in fuelstorewrite {
	mods.nuclearcraft.FuelReprocessor.removeRecipeWithInput(item);
}

mods.nuclearcraft.FuelReprocessor.addRecipe(<qmd:waste_spallation:1>, 
ChanceItemIngredient.create(<nuclearcraft:fission_dust:1>, 9, 0), 
ChanceItemIngredient.create(<nuclearcraft:fission_dust:2>, 15, 0), 
ChanceItemIngredient.create(<rockhounding_chemistry:chemical_dusts:20>, 40, 0), 
ChanceItemIngredient.create(<thermalfoundation:material:67>, 35, 0), 
ChanceItemIngredient.create(<thaumcraft:quicksilver>, 1, 0), 
null, 
null, 
null);

mods.nuclearcraft.FuelReprocessor.addRecipe(<qmd:waste_spallation:2>, 
ChanceItemIngredient.create(<nuclearcraft:fission_dust:1>, 13, 0), 
ChanceItemIngredient.create(<nuclearcraft:fission_dust:2>, 17, 0), 
ChanceItemIngredient.create(<rockhounding_chemistry:chemical_dusts:20>, 16, 0), 
ChanceItemIngredient.create(<thermalfoundation:material:67>, 50, 0), 
ChanceItemIngredient.create(<thaumcraft:quicksilver>, 4, 0), 
null, 
null, 
null);

mods.nuclearcraft.FuelReprocessor.addRecipe(<qmd:waste_spallation:3>, 
ChanceItemIngredient.create(<nuclearcraft:fission_dust:2>, 22, 0), 
ChanceItemIngredient.create(<rockhounding_chemistry:chemical_dusts:20>, 15, 0), 
ChanceItemIngredient.create(<thermalfoundation:material:67>, 55, 0), 
ChanceItemIngredient.create(<thaumcraft:quicksilver>, 5, 0), 
ChanceItemIngredient.create(<thermalfoundation:material:1>, 1, 0), 
ChanceItemIngredient.create(<thermalfoundation:material:70>, 2, 0), 
null, 
null);

mods.nuclearcraft.FuelReprocessor.addRecipe(<qmd:waste_spallation:4>, 
ChanceItemIngredient.create(<nuclearcraft:fission_dust:2>, 22, 0), 
ChanceItemIngredient.create(<rockhounding_chemistry:chemical_dusts:20>, 14, 0), 
ChanceItemIngredient.create(<thermalfoundation:material:67>, 55, 0), 
ChanceItemIngredient.create(<thaumcraft:quicksilver>, 5, 0), 
ChanceItemIngredient.create(<thermalfoundation:material:1>, 1, 0), 
ChanceItemIngredient.create(<thermalfoundation:material:70>, 3, 0), 
null, 
null);

mods.nuclearcraft.FuelReprocessor.addRecipe(<qmd:waste_spallation:5>, 
ChanceItemIngredient.create(<nuclearcraft:fission_dust:2>, 36, 0), 
ChanceItemIngredient.create(<rockhounding_chemistry:chemical_dusts:20>, 17, 0), 
ChanceItemIngredient.create(<thermalfoundation:material:67>, 34, 0), 
ChanceItemIngredient.create(<thaumcraft:quicksilver>, 7, 0),
ChanceItemIngredient.create(<thermalfoundation:material:1>, 2, 0), 
ChanceItemIngredient.create(<thermalfoundation:material:70>, 4, 0), 
null, 
null);

mods.nuclearcraft.FuelReprocessor.addRecipe(<qmd:waste_spallation:6>, 
ChanceItemIngredient.create(<nuclearcraft:fission_dust:2>, 21, 0), 
ChanceItemIngredient.create(<rockhounding_chemistry:chemical_dusts:20>, 12, 0), 
ChanceItemIngredient.create(<thermalfoundation:material:67>, 55, 0), 
ChanceItemIngredient.create(<thaumcraft:quicksilver>, 7, 0),
ChanceItemIngredient.create(<thermalfoundation:material:1>, 1, 0), 
ChanceItemIngredient.create(<thermalfoundation:material:70>, 4, 0), 
null, 
null);

mods.nuclearcraft.FuelReprocessor.addRecipe(<qmd:waste_spallation:8>, 
ChanceItemIngredient.create(<nuclearcraft:fission_dust:2>, 10, 0), 
ChanceItemIngredient.create(<rockhounding_chemistry:chemical_dusts:20>, 7, 0), 
ChanceItemIngredient.create(<thermalfoundation:material:67>, 62, 0), 
ChanceItemIngredient.create(<thaumcraft:quicksilver>, 11, 0),
ChanceItemIngredient.create(<thermalfoundation:material:1>, 2, 0), 
ChanceItemIngredient.create(<thermalfoundation:material:70>, 8, 0), 
null, 
null);

mods.nuclearcraft.FuelReprocessor.addRecipe(<qmd:waste_spallation:7>, 
ChanceItemIngredient.create(<nuclearcraft:fission_dust:2>, 36, 0), 
ChanceItemIngredient.create(<rockhounding_chemistry:chemical_dusts:20>, 6, 0), 
ChanceItemIngredient.create(<thermalfoundation:material:67>, 39, 0), 
ChanceItemIngredient.create(<thaumcraft:quicksilver>, 10, 0),
ChanceItemIngredient.create(<thermalfoundation:material:1>, 2, 0), 
ChanceItemIngredient.create(<thermalfoundation:material:70>, 7, 0), 
null, 
null);

mods.nuclearcraft.FuelReprocessor.addRecipe(<qmd:waste_spallation:9>, 
ChanceItemIngredient.create(<thermalfoundation:material:67>, 58, 0), 
ChanceItemIngredient.create(<thaumcraft:quicksilver>, 18, 0), 
ChanceItemIngredient.create(<thermalfoundation:material:1>, 3, 0), 
ChanceItemIngredient.create(<thermalfoundation:material:70>, 10, 0),
ChanceItemIngredient.create(<thermalfoundation:material:71>, 6, 0), 
ChanceItemIngredient.create(<mekanism:dust:2>, 5, 0), 
null, 
null);

// New Target Chamber Recipes
target_chamber.removeRecipeWithInput(<qmd:ingot2:2>, (<particle:proton>*50000000)^200000);
target_chamber.removeRecipeWithInput(<qmd:ingot2:2>, (<particle:proton>*5000000)^6580000);
target_chamber.removeRecipeWithInput(<qmd:ingot2:2>, (<particle:proton>*5000000)^1540000);
target_chamber.removeRecipeWithInput(<qmd:ingot2:2>, <particle:antiproton>*1000000);
target_chamber.removeRecipeWithInput(<qmd:ingot2:2>, (<particle:deuteron>*10000000)^13100000);
target_chamber.removeRecipeWithInput(<qmd:ingot2:2>, <particle:antideuteron>*1000000);

target_chamber.addRecipe(<thaumcraft:quicksilver>, (<particle:proton>*50000000)^200000, <qmd:waste_fission>, 
null, <particle:neutron>, null, 
1000000, 0.02, 0, 0);

target_chamber.addRecipe(<thaumcraft:quicksilver>, (<particle:proton>*5000000)^6580000, <qmd:waste_spallation2:3>, 
<particle:proton>, null, <particle:antiproton>, 
20000000, 0.2, -6580000, 0);

target_chamber.addRecipe(<thaumcraft:quicksilver>, (<particle:proton>*5000000)^1540000, <qmd:waste_spallation2:3>, 
<particle:pion_plus>, null, <particle:pion_minus>, 
5000000, 0.2, -1540000, 0);

target_chamber.addRecipe(<thaumcraft:quicksilver>, <particle:antiproton>*1000000, <qmd:waste_spallation2:3>, 
<particle:pion_plus>, <particle:pion_naught>, <particle:pion_minus>, 
10000000, 1.0, 1460000, 0);

target_chamber.addRecipe(<thaumcraft:quicksilver>, (<particle:deuteron>*10000000)^13100000, <qmd:waste_spallation2:3>, 
<particle:deuteron>, null, <particle:antideuteron>, 
20000000, 0.1, -13100000, 0);

target_chamber.addRecipe(<thaumcraft:quicksilver>, <particle:antideuteron>*1000000, <qmd:waste_spallation2:3>, 
<particle:pion_plus>*4, <particle:pion_naught>*4, <particle:pion_minus>*4, 
10000000, 1.0, 2090000, 0);

// New Industrial Grinder Mercury Recipes
industrialGrinder.addRecipe(<thermalfoundation:material:1>*3, <techreborn:smalldust:14>, <techreborn:smalldust:34>, null, <ore:oreGold>, null, <liquid:mercury>*288, 100, 128);
industrialGrinder.addRecipe(<minecraft:diamond>*2, <techreborn:smalldust:16>*3, null, null, <ore:oreDiamond>, null, <liquid:mercury>*288, 100, 64);
industrialGrinder.addRecipe(<minecraft:emerald>*2, <techreborn:smalldust:18>*3, null, null, <ore:oreEmerald>, null, <liquid:mercury>*288, 100, 64);
industrialGrinder.addRecipe(<thermalfoundation:material:64>*3, <thermalfoundation:material:1>, null, null, <ore:oreCopper>, null, <liquid:mercury>*288, 100, 64);
industrialGrinder.addRecipe(<techreborn:dust:23>*2, <thermalfoundation:material:771>, <thermalfoundation:material:66>, null, <ore:oreGalena>, null, <liquid:mercury>*288, 100, 64);
industrialGrinder.addRecipe(<thermalfoundation:material:70>*3, <thermalfoundation:material:69>, <techreborn:smalldust:66>, null, <ore:oreSheldonite>, null, <liquid:mercury>*288, 100, 64);
industrialGrinder.addRecipe(<thermalfoundation:material:69>*3, <techreborn:smalldust:27>, <thermalfoundation:material:70>, null, <ore:oreNickel>, null, <liquid:mercury>*288, 100, 64);
industrialGrinder.addRecipe(<techreborn:dust:33>*8, <minecraft:gold_nugget>, null, null, <minecraft:netherrack>*8, null, <liquid:mercury>*288, 800, 64);
industrialGrinder.addRecipe(<contenttweaker:material_part:15>*3, null, null, null, <ore:oreAdamantine>, null, <liquid:mercury>*288, 100, 128);
industrialGrinder.addRecipe(<astralsorcery:itemcraftingcomponent:2>*3, null, null, null, <ore:oreAstralStarmetal>, null, <liquid:mercury>*288, 100, 128);
industrialGrinder.addRecipe(<rockhounding_chemistry:chemical_dusts:21>*3, null, null, null, <ore:oreBoron>, null, <liquid:mercury>*288, 100, 128);
industrialGrinder.addRecipe(<mekanism:otherdust:4>*3, null, null, null, <ore:oreLithium>, null, <liquid:mercury>*288, 100, 128);
industrialGrinder.addRecipe(<techreborn:dust:30>*3, null, null, null, <ore:oreMagnesium>, null, <liquid:mercury>*288, 100, 128);
industrialGrinder.addRecipe(<contenttweaker:material_part:25>*3, null, null, null, <ore:oreOrichalcum>, null, <liquid:mercury>*288, 100, 128);
industrialGrinder.addRecipe(<contenttweaker:material_part:35>*3, null, null, null, <ore:orePalladium>, null, <liquid:mercury>*288, 100, 128);
industrialGrinder.addRecipe(<thermalfoundation:material:70>*3, <thermalfoundation:material:71>, null, null, <ore:orePlatinum>, null, <liquid:mercury>*288, 100, 128);

removeAndHide(<qmd:ingot2:2>);


##=======================================================
## Carbon Unification
##=======================================================

// Carbon Bricks
MetalPress.addRecipe(<advancedrocketry:misc:1>, <minecraft:coal_block>, <immersiveengineering:mold>, 2000);
MetalPress.addRecipe(<advancedrocketry:misc:1>, <thermalfoundation:storage_resource>, <immersiveengineering:mold>, 2000);
MetalPress.addRecipe(<advancedrocketry:misc:1>*3, <ore:blockFuelCoke>, <immersiveengineering:mold>, 2000);

Compactor.addStorageRecipe(<advancedrocketry:misc:1>, <minecraft:coal_block>, 4000);
Compactor.addStorageRecipe(<advancedrocketry:misc:1>, <thermalfoundation:storage_resource>, 4000);
Compactor.addStorageRecipe(<advancedrocketry:misc:1>*3, <thermalfoundation:storage_resource:1>, 4000);
Compactor.addStorageRecipe(<advancedrocketry:misc:1>*3, <immersiveengineering:stone_decoration:3>, 4000);

Pressurizer.addRecipe(<minecraft:coal_block>, <advancedrocketry:misc:1>);
Pressurizer.addRecipe(<thermalfoundation:storage_resource>, <advancedrocketry:misc:1>);
Pressurizer.addRecipe(<ore:blockFuelCoke>, <advancedrocketry:misc:1>*3);

Pressurizer.removeRecipeWithInput(<techreborn:part:34>);

// Smelting recipe for Carbon Bricks
furnace.addRecipe(<advancedrocketry:misc:1>, <ore:dustCarbon>);


##=======================================================
## Other Unifications
##=======================================================

// --==Pressuriser-Enrichment Chamber Compat==-- //
enrichment.addRecipe(<nuclearcraft:gem_dust:1>, <nuclearcraft:gem>);
enrichment.addRecipe(<nuclearcraft:gem_dust:4>, <nuclearcraft:gem:1>);
enrichment.addRecipe(<nuclearcraft:gem_dust:8>, <nuclearcraft:gem:3>);

// Ender Pearl Dust Compat
AlloyFurnace.addRecipe(<enderio:item_alloy_ingot:1>, <techreborn:dust:20>, <enderio:item_alloy_ingot:2>, 1, 2);
AlloyFurnace.addRecipe(<minecraft:iron_ingot>, <techreborn:dust:20>, <enderio:item_alloy_ingot:5>, 1, 2);
AlloyFurnace.addRecipe(<enderio:item_alloy_endergy_ingot:5>, <techreborn:dust:20>, <enderio:item_alloy_endergy_ingot:6>, 1, 2);
Melter.addRecipe(<techreborn:dust:20>, <liquid:ender> * 250, 0.5, 1.5);
Pressurizer.addRecipe(<techreborn:dust:20>, <minecraft:ender_pearl>);

// Removing RH:C Graphite Compound
removeAndHide(<rockhounding_chemistry:chemical_items:8>);
furnace.remove(<rockhounding_chemistry:metal_items:7>, <rockhounding_chemistry:chemical_items:8>);


##########################################################################################
print("==================== end of unification.zs ====================");
