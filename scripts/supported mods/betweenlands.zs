##########################################################################################

#modloaded thebetweenlands

import crafttweaker.item.IIngredient;
import crafttweaker.item.IItemStack;
import crafttweaker.liquid.ILiquidStack;
import crafttweaker.oredict.IOreDict;
import crafttweaker.oredict.IOreDictEntry;
import mods.advancedrocketry.Lathe;
import mods.advancedrocketry.PlatePresser;
import mods.embers.Stamper;
//import mods.enderio.SagMill;
import mods.immersiveengineering.ArcFurnace;
import mods.immersiveengineering.Crusher;
import mods.nuclearcraft.Manufactory;
import mods.nuclearcraft.Melter;
import mods.nuclearcraft.Pressurizer;
import mods.rockhounding_chemistry.ChemicalExtractor;
import mods.rockhounding_chemistry.LeachingVat;
import mods.rockhounding_chemistry.MineralSizer;
import mods.tcomplement.highoven.HighOven;
import mods.tcomplement.Overrides;
import mods.tconstruct.Melting;
import mods.techreborn.assemblingMachine;
import mods.techreborn.blastFurnace;
import mods.techreborn.grinder;
import mods.techreborn.implosionCompressor;
import mods.techreborn.industrialGrinder;
import mods.techreborn.plateBendingMachine;
import mods.techreborn.rollingMachine;
import mods.thermalexpansion.Compactor;
import mods.thermalexpansion.Crucible;
import mods.thermalexpansion.Pulverizer;
import mods.rockhounding_chemistry.MaterialCabinet;

print("==================== loading mods betweenlands.zs ====================");
##########################################################################################

<ore:itemRubber>.add(<thebetweenlands:items_misc:23>);

val itemstoRemove =
[
<jaopca:item_sticksyrmorite>,
<jaopca:item_gearsyrmorite>,
]
 as IItemStack[];

for item in itemstoRemove {
	recipes.remove(item);
}


### CRAFTING RECIPES ###

//crafting the talisman 
recipes.addShaped(<thebetweenlands:swamp_talisman:1>, [[<thaumcraft:stone_arcane>, <thaumcraft:stone_arcane>, <thaumcraft:stone_arcane>],[<thaumcraft:stone_arcane>, <astralsorcery:itemusabledust:1>, <thaumcraft:stone_arcane>], [<thaumcraft:stone_arcane>, <thaumcraft:stone_arcane>, <thaumcraft:stone_arcane>]]);
recipes.addShaped(<thebetweenlands:swamp_talisman:2>, [[<thaumcraft:stone_arcane>, <thaumcraft:stone_arcane>, <thaumcraft:stone_arcane>],[<thaumcraft:stone_arcane>, <actuallyadditions:item_misc:7>, <thaumcraft:stone_arcane>], [<thaumcraft:stone_arcane>, <thaumcraft:stone_arcane>, <thaumcraft:stone_arcane>]]);
recipes.addShaped(<thebetweenlands:swamp_talisman:3>, [[<thaumcraft:stone_arcane>, <thaumcraft:stone_arcane>, <thaumcraft:stone_arcane>],[<thaumcraft:stone_arcane>, <arcanearchives:scintillating_inlay>, <thaumcraft:stone_arcane>], [<thaumcraft:stone_arcane>, <thaumcraft:stone_arcane>, <thaumcraft:stone_arcane>]]);
recipes.addShaped(<thebetweenlands:swamp_talisman:4>, [[<thaumcraft:stone_arcane>, <thaumcraft:stone_arcane>, <thaumcraft:stone_arcane>],[<thaumcraft:stone_arcane>, <embers:crystal_ember>, <thaumcraft:stone_arcane>], [<thaumcraft:stone_arcane>, <thaumcraft:stone_arcane>, <thaumcraft:stone_arcane>]]);

//converting at very low rate
recipes.addShaped(<thebetweenlands:log_weedwood>, [[<ore:logWood>, <ore:logWood>, <ore:logWood>],[<ore:logWood>, <thebetweenlands:swamp_talisman>.reuse(), <ore:logWood>], [<ore:logWood>, <ore:logWood>, <ore:logWood>]]);
recipes.addShaped(<thebetweenlands:smooth_betweenstone>, [[<minecraft:stone>, <minecraft:stone>, <minecraft:stone>],[<minecraft:stone>, <thebetweenlands:swamp_talisman>.reuse(), <minecraft:stone>], [<minecraft:stone>, <minecraft:stone>, <minecraft:stone>]]);
recipes.addShaped(<thebetweenlands:scabyst_ore>, [[<minecraft:lapis_ore>, <minecraft:lapis_ore>, <minecraft:lapis_ore>],[<minecraft:lapis_ore>, <thebetweenlands:swamp_talisman>.reuse(), <minecraft:lapis_ore>], [<minecraft:lapis_ore>, <minecraft:lapis_ore>, <minecraft:lapis_ore>]]);
recipes.addShaped(<thebetweenlands:items_misc:18>, [[<minecraft:coal>, <minecraft:coal>, <minecraft:coal>],[<minecraft:coal>, <thebetweenlands:swamp_talisman>.reuse(), <minecraft:coal>], [<minecraft:coal>, <minecraft:coal>, <minecraft:coal>]]);
recipes.addShaped(<thebetweenlands:items_misc:19>, [[<minecraft:diamond>, <minecraft:diamond>, <minecraft:diamond>],[<minecraft:diamond>, <thebetweenlands:swamp_talisman>.reuse(), <minecraft:diamond>], [<minecraft:diamond>, <minecraft:diamond>, <minecraft:diamond>]]);
recipes.addShaped(<thebetweenlands:syrmorite_ore>, [[<minecraft:gold_ore>, <minecraft:gold_ore>, <minecraft:gold_ore>],[<minecraft:gold_ore>, <thebetweenlands:swamp_talisman>.reuse(), <minecraft:gold_ore>], [<minecraft:gold_ore>, <minecraft:gold_ore>, <minecraft:gold_ore>]]);
recipes.addShaped(<thebetweenlands:octine_ore>, [[<minecraft:iron_ore>, <minecraft:iron_ore>, <minecraft:iron_ore>],[<minecraft:iron_ore>, <thebetweenlands:swamp_talisman>.reuse(), <minecraft:iron_ore>], [<minecraft:iron_ore>, <minecraft:iron_ore>, <minecraft:iron_ore>]]);
recipes.addShaped(<thebetweenlands:cragrock>, [[<minecraft:cobblestone>, <minecraft:cobblestone>, <minecraft:cobblestone>],[<minecraft:cobblestone>, <thebetweenlands:swamp_talisman>.reuse(), <minecraft:cobblestone>], [<minecraft:cobblestone>, <minecraft:cobblestone>, <minecraft:cobblestone>]]);

recipes.addShaped(<thebetweenlands:items_misc:14>, [[<ore:slimyMoss>, <ore:slimyMoss>, <ore:slimyMoss>],[<ore:slimyMoss>, <minecraft:bone>, <ore:slimyMoss>], [<ore:slimyMoss>, <ore:slimyMoss>, <ore:slimyMoss>]]);
recipes.addShaped(<thebetweenlands:slimy_bone_block>, [[<minecraft:bone>, <minecraft:bone>, <minecraft:bone>],[<minecraft:bone>, <tconstruct:materials:19>, <minecraft:bone>], [<minecraft:bone>, <minecraft:bone>, <minecraft:bone>]]);

//syrmorite TC material

val syrmorite = mods.contenttweaker.tconstruct.MaterialBuilder.create("syrmorite");
syrmorite.color = 0x294187;
syrmorite.craftable = false;
syrmorite.castable = true;
syrmorite.representativeItem = <thebetweenlands:items_misc:11>;
syrmorite.addItem(<thebetweenlands:items_misc:11>);
syrmorite.liquid = <liquid:syrmorite>;
syrmorite.localizedName = "Syrmorite";
syrmorite.addHeadMaterialStats(622, 6.45, 2.5, 2);
syrmorite.addHandleMaterialStats(1.6, -220);
syrmorite.addExtraMaterialStats(96);
syrmorite.addBowMaterialStats(0.65, 0.77, 0.33);
syrmorite.addProjectileMaterialStats();
syrmorite.addMaterialTrait("magnetic1", "head");
syrmorite.addMaterialTrait("heavy", "handle");
syrmorite.register();

//octine TC material

val octine = mods.contenttweaker.tconstruct.MaterialBuilder.create("octine");
octine.color = 0xffb120;
octine.craftable = false;
octine.castable = true;
octine.representativeItem = <thebetweenlands:octine_ingot>;
octine.addItem(<thebetweenlands:octine_ingot>);
octine.liquid = <liquid:octine>;
octine.localizedName = "Octine";
octine.addHeadMaterialStats(777, 8.8, 8.5, 3);
octine.addHandleMaterialStats(0.7, 367);
octine.addExtraMaterialStats(-2);
octine.addBowMaterialStats(0.56, 0.42, 0.66);
octine.addProjectileMaterialStats();
octine.addMaterialTrait("flammable", "head");
octine.addMaterialTrait("autosmelt", "head");
octine.addMaterialTrait("aridiculous", "handle");
octine.register();

//valonite TC material

val valonite = mods.contenttweaker.tconstruct.MaterialBuilder.create("valonite");
valonite.color = 0xd8b8d8;
valonite.craftable = true;
valonite.castable = false;
valonite.representativeItem = <thebetweenlands:items_misc:19>;
valonite.addItem(<thebetweenlands:items_misc:19>);
valonite.localizedName = "Valonite";
valonite.addHeadMaterialStats(146, 9, 9.5, 3);
valonite.addHandleMaterialStats(1.0, 12);
valonite.addExtraMaterialStats(146);
valonite.addBowMaterialStats(0.62, 0.58, 0.58);
valonite.addProjectileMaterialStats();
valonite.addMaterialTrait("momentum", "head");
valonite.addMaterialTrait("fractured", "handle");
valonite.register();

val clusterFluidMap as ILiquidStack[IOreDictEntry] = {
	<ore:clusterOctine>: <fluid:octine>,
	<ore:clusterSyrmorite>: <fluid:syrmorite>,
} as ILiquidStack[IOreDictEntry];

for cluster, fluid in clusterFluidMap {
	Melting.addRecipe(fluid*288, cluster);
	mods.embers.Melter.add(fluid*432, cluster);
}

//Octine
MineralSizer.add(<thebetweenlands:octine_ore>, [<jaopca:item_crushedlumpoctine>*2], [8]);
LeachingVat.add(<jaopca:item_crushedlumpoctine>, [<jaopca:item_leachedshardoctine>*2], [2.83F], <liquid:leachate>*50);
ChemicalExtractor.add("Sulfide", <jaopca:item_leachedshardoctine>, ["dustOctine", "dustBlaze", "dustPhosphorus"], [200, 25, 15]);
val octineProcessing =[
	<jaopca:item_crushedlumpoctine>,
	<jaopca:item_leachedshardoctine>,
] as IItemStack[];

for item in octineProcessing {
furnace.addRecipe(<thebetweenlands:octine_ingot>,item, 0.1);
Melting.addRecipe(<liquid:octine> * 144, item);
Crusher.addRecipe(<jaopca:item_dustoctine>, item, 1024, <jaopca:item_dustsmalloctine>*2, 1);
Pulverizer.addRecipe(<jaopca:item_dustoctine>, item, 2000, <jaopca:item_dustsmalloctine>*2);
}

//Syrmorite
MineralSizer.add(<thebetweenlands:syrmorite_ore>, [<jaopca:item_crushedlumpsyrmorite>*2], [8]);
LeachingVat.add(<jaopca:item_crushedlumpsyrmorite>, [<jaopca:item_leachedshardsyrmorite>*2], [7.68F], <liquid:leachate>*50);
ChemicalExtractor.add("Sulfide", <jaopca:item_leachedshardsyrmorite>, ["dustSyrmorite", "dustVanadium", "dustGold"], [200, 20, 12]);
val syrmoriteProcessing =[
	<jaopca:item_crushedlumpsyrmorite>,
	<jaopca:item_leachedshardsyrmorite>,
] as IItemStack[];

for item in syrmoriteProcessing {
furnace.addRecipe(<thebetweenlands:items_misc:11>,item, 0.1);
Melting.addRecipe(<liquid:syrmorite> * 144, item);
Crusher.addRecipe(<jaopca:item_dustsyrmorite>, item, 1024, <jaopca:item_dustsmallsyrmorite>*2, 1);
Pulverizer.addRecipe(<jaopca:item_dustsyrmorite>, item, 2000, <jaopca:item_dustsmallsyrmorite>*2);
}


// Syrmorite Scaffolding
mods.modularmachinery.RecipeBuilder.newBuilder("assemblermkone" + "_syrmorite_scaffolding", "assemblermkone", 50)
	.addEnergyPerTickInput(500)
	.addItemOutput(<jaopca:block_scaffoldingsyrmorite>*9)
	.addItemInput(<thebetweenlands:items_misc:11>*3)
	.addItemInput(<jaopca:item_sticksyrmorite>*3)
	.build();

// Syrmorite Scaffolding
mods.modularmachinery.RecipeBuilder.newBuilder("assemblermkfour" + "_syrmorite_scaffolding", "assemblermkfour", 1)
	.addEnergyPerTickInput(180000)
	.addItemOutput(<jaopca:block_scaffoldingsyrmorite>*9)
	.addItemInput(<thebetweenlands:items_misc:11>*3)
	.addItemInput(<jaopca:item_sticksyrmorite>*3)
	.build();



//sulfur
Crusher.addRecipe(<thermalfoundation:material:771>*3, <thebetweenlands:items_misc:18>, 1024, <thermalfoundation:material:771>, 0.5);
Manufactory.addRecipe(<thebetweenlands:items_misc:18>, <thermalfoundation:material:771>*4);
grinder.addRecipe(<thermalfoundation:material:771>*4, <thebetweenlands:items_misc:18>, 300, 4);
Pulverizer.addRecipe(<thermalfoundation:material:771>*4, <thebetweenlands:items_misc:18>, 1500, <thermalfoundation:material:771>, 50);
//SagMill.addRecipe([<thermalfoundation:material:771>*3], [1] , <thebetweenlands:items_misc:18>, "MULTIPLY_OUTPUT");


RecipeBuilder.get("blacksmith")
  .setShaped([
    [null, null, <ore:ingotSyrmorite>],
    [null, <ore:ingotSyrmorite>, null],
    [<ore:ingotSyrmorite>, null, null]])
  .setFluid(<liquid:lava> * 25)
  .addTool(<ore:artisansPliers>, 10)
  .addOutput(<jaopca:item_sticksyrmorite>*3)
  .create();

  //Syrmorite
  RecipeBuilder.get("blacksmith")
  .setShaped([
    [null, <thebetweenlands:items_misc:11>, null],
    [<thebetweenlands:items_misc:11>, <jaopca:item_sticksyrmorite>, <thebetweenlands:items_misc:11>],
    [null, <thebetweenlands:items_misc:11>, null]])
  .setFluid(<liquid:lava> * 50)
  .addTool(<ore:artisansFile>, 20)
  .addTool(<ore:artisansHammer>, 20)
  .addOutput(<jaopca:item_gearsyrmorite>)
  .create();


recipes.addShaped(<jaopca:block_scaffoldingsyrmorite> * 6, [[<thebetweenlands:items_misc:11>, <thebetweenlands:items_misc:11>, <thebetweenlands:items_misc:11>],[null, <jaopca:item_sticksyrmorite>, null], [<jaopca:item_sticksyrmorite>, null, <jaopca:item_sticksyrmorite>]]);

Lathe.addRecipe(<jaopca:item_sticksyrmorite>*4, 60, 2000, <thebetweenlands:items_misc:11>);

Melting.addRecipe(<liquid:stone> * 288, <thebetweenlands:cragrock>);

MaterialCabinet.add("Sy", "dustSyrmorite", "Syrmorite");
MaterialCabinet.add("Oc", "dustOctine", "Octine");

##########################################################################################
print("==================== end of mods betweenlands.zs ====================");
