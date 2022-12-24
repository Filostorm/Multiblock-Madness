import crafttweaker.item.IItemStack;
import crafttweaker.item.WeightedItemStack;
import crafttweaker.oredict.IOreDict;
import crafttweaker.oredict.IOreDictEntry;
import crafttweaker.item.IIngredient;
import crafttweaker.liquid.ILiquidStack;
import mods.jei.JEI.removeAndHide;
import mods.jei.JEI.hide;
import mods.tconstruct.Casting;
import mods.tconstruct.Melting;
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
import mods.mekanism.infuser;
import mods.mekanism.crusher;
import mods.mekanism.enrichment;
import mods.mekanism.chemical.dissolution;
import mods.mekanism.chemical.injection;
import mods.mekanism.purification;
import mods.qmd.target_chamber;
import mods.qmd.ore_leacher;
import mods.rockhounding_chemistry.LabBlender;
import modtweaker.tconstruct.ITICMaterial;
import modtweaker.tconstruct.ITICMaterialDefinition;
import mods.contenttweaker.tconstruct.Material;
import mods.thermalexpansion.Transposer;
import mods.nuclearcraft.Infuser;
import crafttweaker.item.IItemTransformer;
import mods.appliedenergistics2.Grinder;
import mod.mekanism.gas.IGasStack;

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
## Tar Unification
##=======================================================

// Basically, because both Immersive Petroleum and Fossils and Archaeology are really annoying, I can't fully unify tar
// So instead, limited unification, where Solidified Tar can be melted into molten tar, which can't be converted back

<thermalfoundation:material:833>.displayName = "Solidified Tar";
<thermalfoundation:material:892>.displayName = "Oil Residue";

// Add tar balls as a tinkers material

val tarmat = <ticonmaterial:tar_slime>;
tarmat.addItem(<thermalfoundation:material:833>);

// Tar Balls -> Tar

Melting.addRecipe(<liquid:fossil_tar> * 144, <thermalfoundation:material:833>, 1000);
IngotFormer.addRecipe(<liquid:fossil_tar> * 16, <fossil:tardrop>);

// Tar Fossil Recipes

Transposer.addFillRecipe(<fossil:tar_fossil>, <fossil:biofossil>, <liquid:fossil_tar> * 16, 2000);
Infuser.addRecipe(<fossil:biofossil>, <liquid:fossil_tar> * 16, <fossil:tar_fossil>, 0.2, 0.5);


// Asphalt Concrete recipe for Tar Balls  

recipes.addShaped(<immersivepetroleum:stone_decoration> * 12, [[<ore:crystalSlag>, <thermalfoundation:material:833>, <ore:crystalSlag>],[<minecraft:gravel>, <minecraft:water_bucket>, <minecraft:gravel>], [<ore:crystalSlag>, <thermalfoundation:material:833>, <ore:crystalSlag>]]);
recipes.addShaped(<immersivepetroleum:stone_decoration> * 8, [[<ore:sand>, <thermalfoundation:material:833>, <ore:sand>],[<minecraft:gravel>, <minecraft:water_bucket>, <minecraft:gravel>], [<ore:sand>, <thermalfoundation:material:833>, <ore:sand>]]);

// Remove tar drop analysing

mods.fossils.recipes.removeAnalyzerInput(<fossil:tardrop>);


##=======================================================
## Gem Unification
##=======================================================

// Treasure2 Amulets

val unbTreTool = <treasure2:treasure_tool>.reuse();

recipes.addShaped(<treasure2:ruby_gold_ring>, [[null, <treasure2:gold_ring>, unbTreTool],[null, <minecraft:glowstone_dust>, null], [null, <ore:gemRuby>, null]]);
recipes.addShaped(<treasure2:ruby_gold_amulet>, [[null, <treasure2:gold_necklace>, unbTreTool],[null, <minecraft:glowstone_dust>, null], [null, <ore:gemRuby>, null]]);
recipes.addShaped(<treasure2:sapphire_gold_ring>, [[null, <treasure2:gold_ring>, unbTreTool],[null, <minecraft:glowstone_dust>, null], [null, <ore:gemSapphire>, null]]);
recipes.addShaped(<treasure2:sapphire_amulet>, [[null, <treasure2:gold_necklace>, unbTreTool],[null, <minecraft:glowstone_dust>, null], [null, <ore:gemSapphire>, null]]);
recipes.addShaped(<treasure2:sapphire_silver_amulet>, [[null, <treasure2:silver_necklace>, unbTreTool],[null, <minecraft:glowstone_dust>, null], [null, <ore:gemSapphire>, null]]);
recipes.addShaped(<treasure2:amethyst_silver_ring>, [[null, <treasure2:silver_ring>, unbTreTool],[null, <minecraft:glowstone_dust>, null], [null, <ore:gemAmethyst>, null]]);
recipes.addShaped(<treasure2:amethyst_gold_amulet>, [[null, <treasure2:gold_necklace>, unbTreTool],[null, <minecraft:glowstone_dust>, null], [null, <ore:gemAmethyst>, null]]);

recipes.addShapeless(<mysticalworld:amethyst_gem>, [<treasure2:amethyst>]);


// --== Sapphire ==-- //

recipes.addShapeless(<techreborn:gem:1>, [<treasure2:sapphire>]);
recipes.addShapeless(<techreborn:gem:1>, [<iceandfire:sapphire_gem>]);
recipes.remove(<iceandfire:sapphire_block>);
furnace.remove(<iceandfire:sapphire_gem>);

// enrichment.removeRecipe(<iceandfire:sapphire_gem>);
enrichment.addRecipe(<techreborn:ore:3>, <techreborn:gem:1> * 2);
Crusher.removeRecipe(<iceandfire:sapphire_gem>);
Crusher.addRecipe(<techreborn:gem:1> * 2, <techreborn:ore:3>, 1024);

// --== Ruby ==-- //

recipes.addShapeless(<techreborn:gem>, [<treasure2:ruby>]);

// enrichment.removeRecipe(<treasure2:ruby>);
enrichment.addRecipe(<techreborn:ore:2>, <techreborn:gem> * 2);
Crusher.removeRecipe(<treasure2:ruby>);
Crusher.addRecipe(<techreborn:gem> * 2, <techreborn:ore:2>, 1024);

val gemsToRemove = [
	<treasure2:sapphire>,
	<treasure2:ruby>,
	<treasure2:amethyst>,
	<iceandfire:sapphire_gem>,
	<iceandfire:sapphire_block>
] as IItemStack[];

for gem in gemsToRemove {
	removeAndHide(gem);
}

##=======================================================
## Metal Unification
##=======================================================

// Removing useless furnace recipes
val furnToRemove = {
	<enderio:item_material:27>:<thermalfoundation:material:129>,
	<enderio:item_material:26>:<thermalfoundation:material:128>,
	<enderio:item_material:31>:<tconstruct:ingots>,
	<actuallyadditions:item_dust:2>:<minecraft:diamond>,
	<libvulpes:productdust:3>:<nuclearcraft:gem:6>,
	<natura:materials:2>:<minecraft:bread>,
	<enderio:item_material:21>:<minecraft:bread>,
	<appliedenergistics2:material:4>:<minecraft:bread>,
	<natura:materials:1>:<minecraft:bread>,
	<enderio:item_material:30>:<tconstruct:ingots:1>,
	<actuallyadditions:item_dust:3>:<minecraft:emerald>,
} as IItemStack[IItemStack];

for input, output in furnToRemove {
	furnace.remove(output, input);
}

// Removing useless crusher recipes
crusher.removeRecipe(<techreborn:dust:45>, <iceandfire:sapphire_gem>);
crusher.removeRecipe(<techreborn:dust:45>, <treasure2:sapphire>);
crusher.removeRecipe(<techreborn:dust:43>, <treasure2:ruby>);

// Removing useless metallurgic infuser recipes

val hohlarumRemove = [
	<techreborn:dust:24>,
	<rockhounding_chemistry:chemical_dusts:28>,
	<enderio:item_material:25>,
	<bloodmagic:component:20>,
	<libvulpes:productdust:2>,
	<mekanism:dust:1>,
	<immersiveengineering:metal:19>,
	<appliedenergistics2:material:51>,
	<actuallyadditions:item_dust:1>
] as IItemStack[];

for item in hohlarumRemove {
	infuser.removeRecipe(<mekanismgenerators:hohlraum>, item);
}

infuser.removeRecipe(<mekanism:controlcircuit>, <qmd:ingot:8>);
infuser.removeRecipe(<mekanism:controlcircuit>, <rockhounding_chemistry:metal_items:2>);

infuser.removeRecipe(<mekanism:otherdust:5>, <techreborn:dust:35>);
infuser.removeRecipe(<mekanism:otherdust:5>, <nuclearcraft:gem_dust:3>);
infuser.removeRecipe(<mekanism:otherdust:5>, <enderio:item_material:29>);
infuser.removeRecipe(<mekanism:otherdust:5>, <mekanism:otherdust:6>);

// Fixing Enrichment Chamber Recipes

enrichment.removeRecipe(<nuclearcraft:gem_dust>);
enrichment.removeRecipe(<actuallyadditions:item_dust:3>);

enrichment.addRecipe(<mekanism:otherdust>, <minecraft:diamond>);
enrichment.addRecipe(<techreborn:dust:18>, <minecraft:emerald>);

// Removing useless purification, chemical injection, chemical dissolution and quartz grindstone recipes
val oresToRemove = [
	[<embers:ore_copper>, <immersiveengineering:ore>, <techreborn:ore2>, <mekanism:oreblock:1>, <nuclearcraft:ore>, <libvulpes:ore0:4>],
	[<embers:ore_tin>, <nuclearcraft:ore:1>, <mekanism:oreblock:2>, <libvulpes:ore0:5>, <techreborn:ore2:1>],
	[<techreborn:ore:13>, <immersiveengineering:ore:3>, <embers:ore_silver>, <iceandfire:silver_ore>],
	[<nuclearcraft:ore:2>, <techreborn:ore:12>, <immersiveengineering:ore:2>, <embers:ore_lead>],
	[<embers:ore_nickel>, <immersiveengineering:ore:4>],
	[<immersiveengineering:ore:1>, <libvulpes:ore0:9>],
	[<techreborn:ore:1>, <libvulpes:ore0:10>]
] as IItemStack[][];

val slurryToRemove = [
	<gas:copper>,
	<gas:tin>,
	<gas:silver>,
	<gas:lead>,
	<gas:slurryNickel>,
	<gas:slurryAluminium>,
	<gas:slurryIridium>
] as IGasStack[];

val shardsToRemove = [
	<mekanism:shard:3>,
	<mekanism:shard:4>,
	<mekanism:shard:5>,
	<mekanism:shard:6>,
	<jaopca:item_shardnickel>,
	<jaopca:item_shardaluminium>,
	<jaopca:item_shardiridium>
] as IItemStack[];

val clumpsToRemove = [
	<mekanism:clump:3>,
	<mekanism:clump:4>,
	<mekanism:clump:5>,
	<mekanism:clump:6>,
	<jaopca:item_clumpnickel>,
	<jaopca:item_clumpaluminium>,
	<jaopca:item_clumpiridium>,
] as IItemStack[];

val dustsToRemove = [
	<thermalfoundation:material:64>,
	<thermalfoundation:material:65>,
	<thermalfoundation:material:66>,
	<thermalfoundation:material:67>,
	<thermalfoundation:material:69>,
	<thermalfoundation:material:68>,
	<thermalfoundation:material:71>
] as IItemStack[];

for i, ores in oresToRemove {
	for ore in ores {
		dissolution.removeRecipe(slurryToRemove[i], ore);
		injection.removeRecipe(shardsToRemove[i], ore);
		purification.removeRecipe(clumpsToRemove[i], ore);
		Grinder.removeRecipe(ore);
	}
}

// Removing more useless quartz grindstone recipes

val uselessGrindertoRemove = [
	<immersiveengineering:metal>,
	<embers:ingot_copper>,
	<libvulpes:productingot:4>,
	<nuclearcraft:ingot>,
	<rockhounding_chemistry:metal_items:11>,
	<techreborn:ingot:4>,
	<mysticalworld:copper_ingot>,
	<mekanism:ingot:5>,
	<nuclearcraft:alloy>,
	<mekanism:ingot:2>,
	<techreborn:ingot:2>,
	<nuclearcraft:ingot:12>,
	<rockhounding_chemistry:metal_items:3>,
	<libvulpes:productingot:9>,
	<qmd:ingot:5>,
	<embers:ingot_nickel>,
	<techreborn:ingot:9>,
	<immersiveengineering:metal:4>,
	<rockhounding_chemistry:metal_items:13>,
	<nuclearcraft:ingot:2>,
	<immersiveengineering:metal:2>,
	<techreborn:ingot:8>,
	<rockhounding_chemistry:metal_items:5>,
	<embers:ingot_lead>,
	<nuclearcraft:ingot:13>,
	<iceandfire:silver_ingot>,
	<techreborn:ingot:11>,
	<mysticalworld:silver_ingot>,
	<embers:ingot_silver>,
	<libvulpes:productingot:5>,
	<nuclearcraft:ingot:1>,
	<mekanism:ingot:6>,
	<embers:ingot_tin>,
	<qmd:ingot:10>,
	<techreborn:ingot:10>,
	<rockhounding_chemistry:metal_items:6>,
	<qmd:ingot:8>,
	<rockhounding_chemistry:metal_items:2>,
	<techreborn:ingot:13>,
	<techreborn:ingot>,
	<immersiveengineering:metal:1>,
	<techreborn:ingot:5>,
	<immersiveengineering:metal:7>,
	<plustic:invaringot>,
	<techreborn:ingot:6>,
	<rockhounding_chemistry:metal_items:9>,
	<qmd:ingot:7>,
	<jaopca:item_crystalplatinum>,
	<mekanism:crystal:1>,
	<mekanism:crystal:2>,
	<mekanism:crystal:3>,
	<mekanism:crystal:4>,
	<mekanism:crystal:5>,
	<mekanism:crystal:6>,
	<jaopca:item_crystalaluminium>,
	<jaopca:item_crystalnickel>,
	<mekanism:crystal>,
	<immersiveengineering:metal:3>,
] as IItemStack[];

for item in uselessGrindertoRemove {
	Grinder.removeRecipe(item);
}


##=======================================================
## Fluid Unification
##=======================================================

val TRfluids = [
	<liquid:fluiddeuterium>,
	<liquid:fluidtritium>,
	<liquid:fluidhelium>,
	<liquid:fluidmercury>,
	<liquid:fluidberylium>,
	<liquid:fluidpotassium>,
	<liquid:fluidnitrogen>,
	<liquid:fluidcalcium>,
	<liquid:fluidsodium>,
	<liquid:fluidlithium>,
	<liquid:fluidsilicon>,
	<liquid:fluidcompressedair>,
	<liquid:fluidhydrogen>,
] as ILiquidStack[];

for fluid in TRfluids {
	hide(fluid);
}

##=======================================================
## Other Unifications
##=======================================================

// Ender Pearl Dust Compat
AlloyFurnace.addRecipe(<enderio:item_alloy_ingot:1>, <techreborn:dust:20>, <enderio:item_alloy_ingot:2>, 1, 2);
AlloyFurnace.addRecipe(<minecraft:iron_ingot>, <techreborn:dust:20>, <enderio:item_alloy_ingot:5>, 1, 2);
AlloyFurnace.addRecipe(<enderio:item_alloy_endergy_ingot:5>, <techreborn:dust:20>, <enderio:item_alloy_endergy_ingot:6>, 1, 2);
Melter.addRecipe(<techreborn:dust:20>, <liquid:ender> * 250, 0.5, 1.5);
Pressurizer.addRecipe(<techreborn:dust:20>, <minecraft:ender_pearl>);

// Removing RH:C Graphite Compound
removeAndHide(<rockhounding_chemistry:chemical_items:8>);
furnace.remove(<rockhounding_chemistry:metal_items:7>, <rockhounding_chemistry:chemical_items:8>);
LabBlender.remove(<rockhounding_chemistry:chemical_items:8>);
LabBlender.remove(<rockhounding_chemistry:chemical_items:8>);
LabBlender.remove(<rockhounding_chemistry:chemical_items:8>);

// Removing TR Brass Plate
Casting.removeTableRecipe(<techreborn:plates:18>);
Casting.addTableRecipe(<thaumcraft:plate>, <tconstruct:cast_custom:3>, <liquid:brass>, 144);
Pressurizer.removeRecipeWithOutput(<techreborn:plates:18>);
Pressurizer.addRecipe(<ore:ingotBrass>, <thaumcraft:plate>);
removeAndHide(<techreborn:plates:18>);

##########################################################################################
print("==================== end of unification.zs ====================");
