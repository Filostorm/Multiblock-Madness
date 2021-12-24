
import mods.artisanworktables.builder.RecipeBuilder;
import crafttweaker.item.IItemStack;
import crafttweaker.oredict.IOreDictEntry;
import mods.botaniatweaks.Agglomeration;
import crafttweaker.item.IIngredient;
import mods.thaumcraft.Crucible;
import mods.modularmachinery.RecipePrimer;

print("==================== loading agricraft.zs ====================");
##########################################################################################

val itemstoRemove =
[
  <randomthings:fertilizeddirt>,
  <farmingforblockheads:fertilizer>,
  <farmingforblockheads:fertilizer:1>,
  <farmingforblockheads:fertilizer:2>,
]
 as IItemStack[];

for item in itemstoRemove {
	recipes.remove(item);
}


//--------------Farmers Table------------------
recipes.addShaped(<artisanworktables:workstation:10>, [[<thermalfoundation:material:355>, <ore:dirt>, <thermalfoundation:material:355>],[null, <immersiveengineering:treated_wood>, null], [<immersiveengineering:treated_wood>, <immersiveengineering:treated_wood>, <immersiveengineering:treated_wood>]]);

RecipeBuilder.get("farmer")
  .setShapeless([<ore:logWood>])
  .setFluid(<liquid:creosote> * 500)
  .addTool(<ore:artisansHandsaw>, 5)
//  .addTool(<ore:artisansTSquare>, 1)
  .addOutput(<agricraft:crop_sticks>*4)
  .setExtraOutputOne(<thermalfoundation:material:800>, 0.10)
  .create();
RecipeBuilder.get("farmer")
  .setShapeless([<ore:logWood>])
  .setFluid(<liquid:sap> * 250)
  .addTool(<ore:artisansHandsaw>, 5)
//  .addTool(<ore:artisansTSquare>, 1)
  .addOutput(<agricraft:crop_sticks>*8)
  .setExtraOutputOne(<thermalfoundation:material:800>, 0.10)
  .create();
RecipeBuilder.get("farmer")
  .setShapeless([<ore:logWood>])
  .setFluid(<liquid:resin> * 250)
  .addTool(<ore:artisansHandsaw>, 5)
//  .addTool(<ore:artisansTSquare>, 1)
  .addOutput(<agricraft:crop_sticks>*8)
  .setExtraOutputOne(<thermalfoundation:material:800>, 0.10)
  .create();

//Elemental Soil
RecipeBuilder.get("farmer")
  .setShaped([
    [null, <thermalfoundation:fertilizer:1>, null],
    [<thermalfoundation:fertilizer:1>, <prefab:block_compressed_dirt>, <thermalfoundation:fertilizer:1>],
    [null, <thermalfoundation:fertilizer:1>, null]])
  .setSecondaryIngredients([<thaumcraft:crystal_essence>.withTag({Aspects: [{amount: 1, key: "aer"}]}), <thaumcraft:crystal_essence>.withTag({Aspects: [{amount: 1, key: "terra"}]}), <thaumcraft:crystal_essence>.withTag({Aspects: [{amount: 1, key: "ignis"}]}), <thaumcraft:crystal_essence>.withTag({Aspects: [{amount: 1, key: "aqua"}]}), <thaumcraft:crystal_essence>.withTag({Aspects: [{amount: 1, key: "perditio"}]}), <thaumcraft:crystal_essence>.withTag({Aspects: [{amount: 1, key: "ordo"}]})])
  .addTool(<ore:artisansTrowel>, 5)
  .addOutput(<contenttweaker:elemental_soil> * 9)
  .create();
  
//Phyto-BIG BOI GROW
  RecipeBuilder.get("farmer")
  .setShapeless([<thermalfoundation:fertilizer>])
  .setFluid(<liquid:sap> * 200)
  .addOutput(<thermalfoundation:fertilizer:1>)
  .create();

//Phyto-Gro
  RecipeBuilder.get("farmer")
  .setShapeless([<cyclicmagic:peat_fuel>, <ore:dustCharcoal>, <ore:dustSaltpeter>])
  .addOutput(<thermalfoundation:fertilizer> * 4)
  .create();

  RecipeBuilder.get("farmer")
  .setShapeless([ <cyclicmagic:peat_fuel_enriched>, <ore:dustCharcoal>, <contenttweaker:limestone_flux>])
  .addOutput(<thermalfoundation:fertilizer> * 16)
  .create();


//Fertilized Soil
  RecipeBuilder.get("farmer")
  .setShaped([
    [<minecraft:dye:15>, <minecraft:rotten_flesh>, <minecraft:dye:15>],
    [<minecraft:rotten_flesh>, <minecraft:dirt>, <minecraft:rotten_flesh>],
    [<minecraft:dye:15>, <minecraft:rotten_flesh>, <minecraft:dye:15>]])
  .addTool(<ore:artisansTrowel>, 5)
  .addOutput(<randomthings:fertilizeddirt>)
  .create();


//Colored Fertilizer
  RecipeBuilder.get("farmer")
  .setShaped([
    [<ore:dyeGreen>, <ore:dyeGreen>, <ore:dyeGreen>],
    [<minecraft:gold_nugget>, <minecraft:wheat_seeds>, <minecraft:gold_nugget>],
    [<minecraft:dye:15>, <minecraft:dye:15>, <minecraft:dye:15>]])
  .addOutput(<farmingforblockheads:fertilizer:1> * 4)
  .create();

  RecipeBuilder.get("farmer")
  .setShaped([
    [<ore:dyeYellow>, <ore:dyeYellow>, <ore:dyeYellow>],
    [<minecraft:gold_nugget>, <minecraft:wheat_seeds>, <minecraft:gold_nugget>],
    [<minecraft:dye:15>, <minecraft:dye:15>, <minecraft:dye:15>]])
  .addOutput(<farmingforblockheads:fertilizer:2> * 4)
  .create();

  RecipeBuilder.get("farmer")
  .setShaped([
    [<ore:dyeRed>, <ore:dyeRed>, <ore:dyeRed>],
    [<minecraft:gold_nugget>, <minecraft:wheat_seeds>, <minecraft:gold_nugget>],
    [<minecraft:dye:15>, <minecraft:dye:15>, <minecraft:dye:15>]])
  .addOutput(<farmingforblockheads:fertilizer> * 4)
  .create();


//Blueprint
recipes.addShaped(<modularmachinery:itemblueprint>.withTag({dynamicmachine: "modularmachinery:crystal_infuser"}), [[null, <enderio:item_material:77>, null],[<enderio:item_material:77>, <botania:quartz:1>, <enderio:item_material:77>], [null, <enderio:item_material:77>, null]]);

//Mana Input
recipes.addShaped(<modulardiversity:blockmanainputhatch>, [[<thermalfoundation:material:357>, <mysticalagriculture:infusion_crystal>, <thermalfoundation:material:357>],[<modularmachinery:itemmodularium>, <botania:rfgenerator>, <modularmachinery:itemmodularium>], [<thermalfoundation:material:357>, <botania:tinyplanet>, <thermalfoundation:material:357>]]);


##Terrestrial Crystal
val crystalInfusing = mods.modularmachinery.RecipeBuilder.newBuilder("crystal_infuser_celestial", "crystal_infuser", 400, 0);
crystalInfusing.addManaInput(2000);
crystalInfusing.addItemInput(<ore:CelestialCrystal>);
crystalInfusing.addItemInput(<bloodmagic:slate:3>);
crystalInfusing.addItemInput(<actuallyadditions:item_fertilizer>);
crystalInfusing.addItemInput(<thermalfoundation:fertilizer:2>*4);
crystalInfusing.addItemInput(<mysticalagriculture:mystical_fertilizer>*3);
crystalInfusing.addItemInput(<botania:rune:2>);
crystalInfusing.addItemOutput(<contenttweaker:terrestrial_crystal>);
crystalInfusing.build();

##Terrestrial Crystal recharging
val crystalReInfusing = mods.modularmachinery.RecipeBuilder.newBuilder("crystal_infuser_dun", "crystal_infuser", 400, 0);
crystalReInfusing.addManaInput(2000);
crystalReInfusing.addItemInput(<contenttweaker:dun_crystal>);
crystalReInfusing.addItemInput(<botania:rune:2>);
crystalReInfusing.addItemOutput(<contenttweaker:terrestrial_crystal>).setChance(0.9);
crystalReInfusing.build();



  //Growth Catalyst all recipes temp
val CatalystMap as IItemStack[IItemStack] = {
<minecraft:iron_block>:<jaopca:block_growthcatalystiron>,
<minecraft:gold_block>:<jaopca:block_growthcatalystgold>,
<thermalfoundation:storage:1>:<jaopca:block_growthcatalysttin>,
<thermalfoundation:storage:6>:<jaopca:block_growthcatalystplatinum>,
<mekanism:basicblock>:<jaopca:block_growthcatalystosmium>,
<thermalfoundation:storage:3>:<jaopca:block_growthcatalystlead>,
<minecraft:diamond_block>:<jaopca:block_growthcatalystdiamond>,
<thermalfoundation:storage:5>:<jaopca:block_growthcatalystnickel>,
<thermalfoundation:storage>:<jaopca:block_growthcatalystcopper>,
<thermalfoundation:storage:2>:<jaopca:block_growthcatalystsilver>,
<minecraft:lapis_block>:<jaopca:block_growthcatalystlapis>,
<minecraft:emerald_block>:<jaopca:block_growthcatalystemerald>,
<thermalfoundation:storage:4>:<jaopca:block_growthcatalystaluminium>,
<minecraft:quartz_block>:<jaopca:block_growthcatalystquartz>
} as IItemStack[IItemStack];

for block, catalyst in CatalystMap {
Agglomeration.addRecipe(<contenttweaker:dun_crystal>, 
[<enderutilities:enderpart:11>,<contenttweaker:terrestrial_crystal>,<aetherworks:item_resource>]
,250000,0xe8991a,0x118507,
<mysticalagriculture:growth_accelerator>,block,block,
null, catalyst, catalyst);
}

//White Petal
Crucible.registerRecipe("white_petal", "",
    <agricraft:agri_seed>.withTag({agri_analyzed: 0 as byte, agri_strength: 1 as byte, agri_gain: 1 as byte, agri_seed: "botania:white_flower_plant", agri_growth: 1 as byte}), <botania:doubleflower1>,
	[<aspect:sensus> * 20, <aspect:herba> * 10]
);

##########################################################################################
print("==================== end of agricraft.zs ====================");
