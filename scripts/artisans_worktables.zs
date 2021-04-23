##########################################################################################

import mods.artisanworktables.builder.RecipeBuilder;
import crafttweaker.item.IItemStack;
import crafttweaker.oredict.IOreDictEntry;
mods.unidict.removalByKind.get("Crafting").remove("plate");
mods.unidict.removalByKind.get("Crafting").remove("rod");
mods.unidict.removalByKind.get("Crafting").remove("gear");

print("==================== loading mods artisansworktables.zs ====================");
##########################################################################################


recipes.remove(<ore:plateAluminum>);
recipes.remove(<ore:plateBronze>);
recipes.remove(<ore:plateConstantan>);
recipes.remove(<ore:plateCopper>);
recipes.remove(<ore:plateElectrum>);
recipes.remove(<ore:plateGold>);
recipes.remove(<ore:plateInvar>);
recipes.remove(<ore:plateIron>);
recipes.remove(<ore:plateLead>);
recipes.remove(<ore:plateNickel>);
recipes.remove(<ore:platePlatinum>);
recipes.remove(<ore:plateSignalum>);
recipes.remove(<ore:plateSilver>);
recipes.remove(<ore:plateSteel>);
recipes.remove(<ore:plateTin>);

//Tool Box
recipes.addShaped(<artisanworktables:mechanical_toolbox>, [[<thermalfoundation:material:24>, <thermalfoundation:material:355>, <thermalfoundation:material:24>],[<minecraft:stone_button>, <artisanworktables:toolbox>, <minecraft:stone_button>], [<thermalfoundation:material:24>, <thermalfoundation:material:355>, <thermalfoundation:material:24>]]);
recipes.addShaped(<artisanworktables:toolbox>, [[<enderio:item_material:10>, <thermalfoundation:material:320>, <enderio:item_material:10>],[<minecraft:stone_button>, <minecraft:chest>, <minecraft:stone_button>], [<enderio:item_material:10>, <thermalfoundation:material:320>, <enderio:item_material:10>]]);


val recipestoRemove =
[
  <embers:plate_dawnstone>,
]
 as IItemStack[];

for item in recipestoRemove {
	recipes.remove(item);
}

//Mason

recipes.addShaped(<artisanworktables:worktable:2>, [[<minecraft:brick>, <minecraft:brick>, <minecraft:brick>],[null, <ore:logWood>, null], [<ore:logWood>, <ore:logWood>, <ore:logWood>]]);

recipes.remove(<minecraft:brick_block>);
RecipeBuilder.get("mason")
  .setName("minecraft:brick_block")
  .setShaped([
    [<minecraft:brick>, <minecraft:brick>, <minecraft:brick>],
    [<minecraft:brick>, <tconstruct:soil>, <minecraft:brick>],
    [<minecraft:brick>, <minecraft:brick>, <minecraft:brick>]])
  .addTool(<ore:artisansTrowel>, 5)
  .addOutput(<minecraft:brick_block>*2)
  .create();


//Blacksmith

recipes.addShaped(<artisanworktables:worktable:3>, [[<ore:plateInvar>, <ore:plateInvar>, <ore:plateInvar>],[null, <ore:logWood>, null], [<ore:logWood>, <ore:logWood>, <ore:logWood>]]);

// Bronze-Plates =======================================================================================================================================
recipes.addShaped(<thermalfoundation:material:355>, [[<ore:artisansHammer>.reuse().transformDamage(5)], [<ore:ingotBronze>], [<ore:ingotBronze>]]);
RecipeBuilder.get("blacksmith")
  .setShapeless([<ore:ingotBronze>])
  .setFluid(<liquid:lava> *50)
  .addTool(<ore:artisansHammer>, 10)
  .addOutput(<thermalfoundation:material:355>)
  .create();

// Tin-Plates ======================================================================================================================================
recipes.addShaped(<thermalfoundation:material:321>, [[<ore:artisansHammer>.reuse().transformDamage(5)], [<ore:ingotTin>], [<ore:ingotTin>]]);
RecipeBuilder.get("blacksmith")
  .setShapeless([<ore:ingotTin>])
  .setFluid(<liquid:lava> *50)
  .addTool(<ore:artisansHammer>, 10)
  .addOutput(<thermalfoundation:material:321>)
  .create();

// Gold-Plates =======================================================================================================================================
recipes.addShaped(<thermalfoundation:material:33>, [[<ore:artisansHammer>.reuse().transformDamage(5)], [<ore:ingotGold>], [<ore:ingotGold>]]);
RecipeBuilder.get("blacksmith")
  .setShapeless([<ore:ingotGold>])
  .setFluid(<liquid:lava> *50)
  .addTool(<ore:artisansHammer>, 10)
  .addOutput(<thermalfoundation:material:33>)
  .create();

// Copper-Plates =======================================================================================================================================
recipes.addShaped(<thermalfoundation:material:320>, [[<ore:artisansHammer>.reuse().transformDamage(5)], [<ore:ingotCopper>], [<ore:ingotCopper>]]);
RecipeBuilder.get("blacksmith")
  .setShapeless([<ore:ingotCopper>])
  .setFluid(<liquid:lava> *50)
  .addTool(<ore:artisansHammer>, 10)
  .addOutput(<thermalfoundation:material:320>)
  .create();

// Iron-Plates ======================================================================================================================================
recipes.addShaped(<thermalfoundation:material:32>, [[<ore:artisansHammer>.reuse().transformDamage(5)], [<ore:ingotIron>], [<ore:ingotIron>]]);
RecipeBuilder.get("blacksmith")
  .setShapeless([<ore:ingotIron>])
  .setFluid(<liquid:lava> *50)
  .addTool(<ore:artisansHammer>, 10)
  .addOutput(<thermalfoundation:material:32>)
  .create();

// Silver Plates ======================================================================================================================================
recipes.addShaped(<thermalfoundation:material:322>, [[<ore:artisansHammer>.reuse().transformDamage(5)], [<ore:ingotSilver>], [<ore:ingotSilver>]]);
RecipeBuilder.get("blacksmith")
  .setShapeless([<ore:ingotSilver>])
  .setFluid(<liquid:lava> *50)
  .addTool(<ore:artisansHammer>, 10)
  .addOutput(<thermalfoundation:material:322>)
  .create();

// Lead Plates =======================================================================================================================================
recipes.addShaped(<thermalfoundation:material:323>, [[<ore:artisansHammer>.reuse().transformDamage(5)], [<ore:ingotLead>], [<ore:ingotLead>]]);
RecipeBuilder.get("blacksmith")
  .setShapeless([<ore:ingotLead>])
  .setFluid(<liquid:lava> *50)
  .addTool(<ore:artisansHammer>, 10)
  .addOutput(<thermalfoundation:material:323>)
  .create();

// Nickel Plates =======================================================================================================================================
recipes.addShaped(<thermalfoundation:material:325>, [[<ore:artisansHammer>.reuse().transformDamage(5)], [<ore:ingotNickel>], [<ore:ingotNickel>]]);
RecipeBuilder.get("blacksmith")
  .setShapeless([<ore:ingotNickel>])
  .setFluid(<liquid:lava> *50)
  .addTool(<ore:artisansHammer>, 10)
  .addOutput(<thermalfoundation:material:325>)
  .create();

// Invar Plate =======================================================================================================================================
recipes.addShaped(<thermalfoundation:material:354>, [[<ore:artisansHammer>.reuse().transformDamage(5)], [<ore:ingotInvar>], [<ore:ingotInvar>]]);
RecipeBuilder.get("blacksmith")
  .setShapeless([<ore:ingotInvar>])
  .setFluid(<liquid:lava> *50)
  .addTool(<ore:artisansHammer>, 10)
  .addOutput(<thermalfoundation:material:354>)
  .create();

// Electrum Plate =======================================================================================================================================
recipes.addShaped(<thermalfoundation:material:353>, [[<ore:artisansHammer>.reuse().transformDamage(5)], [<ore:ingotElectrum>], [<ore:ingotElectrum>]]);
RecipeBuilder.get("blacksmith")
  .setShapeless([<ore:ingotElectrum>])
  .setFluid(<liquid:lava> *50)
  .addTool(<ore:artisansHammer>, 10)
  .addOutput(<thermalfoundation:material:353>)
  .create();

// Constatan Plate =======================================================================================================================================
recipes.addShaped(<thermalfoundation:material:356>, [[<ore:artisansHammer>.reuse().transformDamage(5)], [<ore:ingotConstantan>], [<ore:ingotConstantan>]]);
RecipeBuilder.get("blacksmith")
  .setShapeless([<ore:ingotConstantan>])
  .setFluid(<liquid:lava> *50)
  .addTool(<ore:artisansHammer>, 10)
  .addOutput(<thermalfoundation:material:356>)
  .create();

// Steel Plates =======================================================================================================================================
recipes.addShaped(<thermalfoundation:material:352>, [[<ore:artisansHammer>.reuse().transformDamage(5)], [<ore:ingotSteel>], [<ore:ingotSteel>]]);
RecipeBuilder.get("blacksmith")
  .setShapeless([<ore:ingotSteel>])
  .setFluid(<liquid:lava> *50)
  .addTool(<ore:artisansHammer>, 10)
  .addOutput(<thermalfoundation:material:352>)
  .create();

// Dawnstone Plates =======================================================================================================================================
recipes.addShaped(<embers:plate_dawnstone>, [[<ore:artisansHammer>.reuse().transformDamage(5)], [<embers:ingot_dawnstone>], [<embers:ingot_dawnstone>]]);
RecipeBuilder.get("blacksmith")
  .setShapeless([<embers:ingot_dawnstone>])
  .setFluid(<liquid:lava> *50)
  .addTool(<ore:artisansHammer>, 10)
  .addOutput(<embers:plate_dawnstone>)
  .create();



// Ironwood Plates =======================================================================================================================================
recipes.addShaped(<moreplates:ironwood_plate>, [[<ore:artisansHammer>.reuse().transformDamage(5)], [<twilightforest:ironwood_ingot>], [<twilightforest:ironwood_ingot>]]);
RecipeBuilder.get("blacksmith")
  .setShapeless([<twilightforest:ironwood_ingot>])
  .setFluid(<liquid:lava> *50)
  .addTool(<ore:artisansHammer>, 10)
  .addOutput(<moreplates:ironwood_plate>)
  .create();

// Brass Plates =======================================================================================================================================
recipes.addShaped(<thaumcraft:plate>, [[<ore:artisansHammer>.reuse().transformDamage(5)], [<ore:ingotBrass>], [<ore:ingotBrass>]]);
RecipeBuilder.get("blacksmith")
  .setShapeless([<ore:ingotBrass>])
  .setFluid(<liquid:lava> *50)
  .addTool(<ore:artisansHammer>, 10)
  .addOutput(<thaumcraft:plate>)
  .create();

// Thaumaum Plates =======================================================================================================================================
recipes.addShaped(<thaumcraft:plate:2>, [[<ore:artisansHammer>.reuse().transformDamage(5)], [<thaumcraft:ingot>], [<thaumcraft:ingot>]]);
RecipeBuilder.get("blacksmith")
  .setShapeless([<thaumcraft:ingot>])
  .setFluid(<liquid:lava> *50)
  .addTool(<ore:artisansHammer>, 10)
  .addOutput(<thaumcraft:plate:2>)
  .create();

// Restonia Plates =======================================================================================================================================
recipes.addShaped(<moreplates:restonia_plate>, [[<ore:artisansHammer>.reuse().transformDamage(5)], [<actuallyadditions:item_crystal>], [<actuallyadditions:item_crystal>]]);
RecipeBuilder.get("blacksmith")
  .setShapeless([<actuallyadditions:item_crystal>])
  .setFluid(<liquid:lava> *50)
  .addTool(<ore:artisansHammer>, 10)
  .addOutput(<moreplates:restonia_plate>)
  .create();


  // Void Plates =======================================================================================================================================
recipes.addShaped(<moreplates:void_plate>, [[<ore:artisansHammer>.reuse().transformDamage(5)], [<actuallyadditions:item_crystal:3>], [<actuallyadditions:item_crystal:3>]]);
RecipeBuilder.get("blacksmith")
  .setShapeless([<actuallyadditions:item_crystal:3>])
  .setFluid(<liquid:lava> *50)
  .addTool(<ore:artisansHammer>, 10)
  .addOutput(<moreplates:void_plate>)
  .create();

  // Enori Plates =======================================================================================================================================
recipes.addShaped(<moreplates:enori_plate>, [[<ore:artisansHammer>.reuse().transformDamage(5)], [<actuallyadditions:item_crystal:5>], [<actuallyadditions:item_crystal:5>]]);
RecipeBuilder.get("blacksmith")
  .setShapeless([<actuallyadditions:item_crystal:5>])
  .setFluid(<liquid:lava> *50)
  .addTool(<ore:artisansHammer>, 10)
  .addOutput(<moreplates:enori_plate>)
  .create();

  // Quartz Plates =======================================================================================================================================
recipes.addShaped(<moreplates:nether_quartz_plate>, [[<ore:artisansHammer>.reuse().transformDamage(5)], [<minecraft:quartz>], [<minecraft:quartz>]]);
RecipeBuilder.get("blacksmith")
  .setShapeless([<minecraft:quartz>])
  .setFluid(<liquid:lava> *50)
  .addTool(<ore:artisansHammer>, 10)
  .addOutput(<moreplates:nether_quartz_plate>)
  .create();


//--------------Rods------------------
//Steel rod
RecipeBuilder.get("blacksmith")
  .setShaped([
    [null, null, <thermalfoundation:material:160>],
    [null, <thermalfoundation:material:160>, null],
    [<thermalfoundation:material:160>, null, null]])
  .setFluid(<liquid:lava> * 50)
  .addTool(<ore:artisansPliers>, 15)
  .addOutput(<immersiveengineering:material:2>*3)
  .create();

//Iron rod
RecipeBuilder.get("blacksmith")
    .setShaped([
    [null, null, <minecraft:iron_ingot>],
    [null, <minecraft:iron_ingot>, null],
    [<minecraft:iron_ingot>, null, null]])
  .setFluid(<liquid:lava> * 50)
  .addTool(<ore:artisansPliers>, 15)
  .addOutput(<immersiveengineering:material:1>*3)
  .create();

//Invar rod
RecipeBuilder.get("blacksmith")
    .setShaped([
    [null, null, <thermalfoundation:material:162>],
    [null, <thermalfoundation:material:162>, null],
    [<thermalfoundation:material:162>, null, null]])
  .setFluid(<liquid:lava> * 50)
  .addTool(<ore:artisansPliers>, 15)
  .addOutput(<moreplates:invar_stick>*3)
  .create();

  //electrum rod
RecipeBuilder.get("blacksmith")
    .setShaped([
    [null, null, <thermalfoundation:material:161>],
    [null, <thermalfoundation:material:161>, null],
    [<thermalfoundation:material:161>, null, null]])
  .setFluid(<liquid:lava> * 50)
  .addTool(<ore:artisansPliers>, 15)
  .addOutput(<moreplates:electrum_stick>*3)
  .create();

  //constantan rod
RecipeBuilder.get("blacksmith")
    .setShaped([
    [null, null, <thermalfoundation:material:164>],
    [null, <thermalfoundation:material:164>, null],
    [<thermalfoundation:material:164>, null, null]])
  .setFluid(<liquid:lava> * 50)
  .addTool(<ore:artisansPliers>, 15)
  .addOutput(<moreplates:constantan_stick>*3)
  .create();

  //syrmorite rod
RecipeBuilder.get("blacksmith")
    .setShaped([
    [null, null, <thebetweenlands:items_misc:11>],
    [null, <thebetweenlands:items_misc:11>, null],
    [<thebetweenlands:items_misc:11>, null, null]])
  .setFluid(<liquid:lava> * 50)
  .addTool(<ore:artisansPliers>, 15)
  .addOutput(<jaopca:item_sticksyrmorite>*3)
  .create();

  //brass rod
RecipeBuilder.get("blacksmith")
    .setShaped([
    [null, null, <ore:ingotBrass>],
    [null, <ore:ingotBrass>, null],
    [<ore:ingotBrass>, null, null]])
  .setFluid(<liquid:lava> * 50)
  .addTool(<ore:artisansPliers>, 15)
  .addOutput(<jaopca:item_stickbrass>*3)
  .create();

  //ardite rod
RecipeBuilder.get("blacksmith")
    .setShaped([
    [null, null, <tconstruct:ingots:1>],
    [null, <tconstruct:ingots:1>, null],
    [<tconstruct:ingots:1>, null, null]])
  .setFluid(<liquid:lava> * 50)
  .addTool(<ore:artisansPliers>, 15)
  .addOutput(<jaopca:item_stickardite>*3)
  .create();

  //gold rod
RecipeBuilder.get("blacksmith")
    .setShaped([
    [null, null, <minecraft:gold_ingot>],
    [null, <minecraft:gold_ingot>, null],
    [<minecraft:gold_ingot>, null, null]])
  .setFluid(<liquid:lava> * 50)
  .addTool(<ore:artisansPliers>, 15)
  .addOutput(<moreplates:gold_stick>*3)
  .create();






//--------------Gears------------------
recipes.addShaped(<artisanworktables:workstation:3>, [[<thermalfoundation:material:352>, <thermalfoundation:material:352>, <thermalfoundation:material:352>],[<thermalfoundation:material:352>, <artisanworktables:worktable:3>, <thermalfoundation:material:352>], [<ore:blockSeared>, <ore:blockSeared>, <ore:blockSeared>]]);


//Steel
  RecipeBuilder.get("blacksmith")
  .setShaped([
    [null, <thermalfoundation:material:160>, null],
    [<thermalfoundation:material:160>, <ore:stickSteel>, <thermalfoundation:material:160>],
    [null, <thermalfoundation:material:160>, null]])
  .setFluid(<liquid:lava> * 50)
  .addTool(<ore:artisansFile>, 20)
  .addTool(<ore:artisansHammer>, 20)
  .addOutput(<thermalfoundation:material:288>)
  .create();

  //Iron
  RecipeBuilder.get("blacksmith")
  .setShaped([
    [null, <minecraft:iron_ingot>, null],
    [<minecraft:iron_ingot>, <ore:stickIron>, <minecraft:iron_ingot>],
    [null, <minecraft:iron_ingot>, null]])
  .setFluid(<liquid:lava> * 50)
  .addTool(<ore:artisansFile>, 20)
  .addTool(<ore:artisansHammer>, 20)
  .addOutput(<thermalfoundation:material:24>)
  .create();

  //Gold
  RecipeBuilder.get("blacksmith")
  .setShaped([
    [null, <minecraft:gold_ingot>, null],
    [<minecraft:gold_ingot>, <ore:stickGold>, <minecraft:gold_ingot>],
    [null, <minecraft:gold_ingot>, null]])
  .setFluid(<liquid:lava> * 50)
  .addTool(<ore:artisansFile>, 20)
  .addTool(<ore:artisansHammer>, 20)
  .addOutput(<thermalfoundation:material:25>)
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


  //Brass
  RecipeBuilder.get("blacksmith")
  .setShaped([
    [null, <ore:ingotBrass>, null],
    [<ore:ingotBrass>, <ore:stickBrass>, <ore:ingotBrass>],
    [null, <ore:ingotBrass>, null]])
  .setFluid(<liquid:lava> * 50)
  .addTool(<ore:artisansFile>, 20)
  .addTool(<ore:artisansHammer>, 20)
  .addOutput(<thaumicperiphery:gear_brass>)
  .create();

  //Constantan
  RecipeBuilder.get("blacksmith")
  .setShaped([
    [null, <thermalfoundation:material:164>, null],
    [<thermalfoundation:material:164>, <ore:stickConstantan>, <thermalfoundation:material:164>],
    [null, <thermalfoundation:material:164>, null]])
  .setFluid(<liquid:lava> * 50)
  .addTool(<ore:artisansFile>, 20)
  .addTool(<ore:artisansHammer>, 20)
  .addOutput(<thermalfoundation:material:292>)
  .create();

    //Ardite
  RecipeBuilder.get("blacksmith")
  .setShaped([
    [null, <tconstruct:ingots:1>, null],
    [<tconstruct:ingots:1>, <ore:stickArdite>, <tconstruct:ingots:1>],
    [null, <tconstruct:ingots:1>, null]])
  .setFluid(<liquid:lava> * 50)
  .addTool(<ore:artisansFile>, 20)
  .addTool(<ore:artisansHammer>, 20)
  .addOutput(<moreplates:ardite_gear>)
  .create();



###   ARMOR    ###
recipes.addShaped(<artisanworktables:workshop:3>, [[<moreplates:ironwood_plate>, <moreplates:ironwood_plate>, <moreplates:ironwood_plate>],[<moreplates:ironwood_plate>, <artisanworktables:workstation:3>, <moreplates:ironwood_plate>], [<ore:plankTreatedWood>, <ore:plankTreatedWood>, <ore:plankTreatedWood>]]);

////Palladium 
RecipeBuilder.get("blacksmith")
  .setShaped([
    [<contenttweaker:material_part:32>, <contenttweaker:material_part:32>, <contenttweaker:material_part:32>, <contenttweaker:material_part:32>, <contenttweaker:material_part:32>],
    [<contenttweaker:material_part:32>, <improvedbackpacks:tanned_leather>, <improvedbackpacks:tanned_leather>, <improvedbackpacks:tanned_leather>, <contenttweaker:material_part:32>],
    [<contenttweaker:material_part:32>, <improvedbackpacks:tanned_leather>, null, <improvedbackpacks:tanned_leather>, <contenttweaker:material_part:32>]])
  .setFluid(<liquid:pyrotheum> * 1000)
  .addTool(<ore:artisansHammer>, 50)
  .addTool(<ore:artisansPliers>, 25)
  .addTool(<ore:artisansFile>, 25)
  .addOutput(<contenttweaker:palladium_head>)
  .create();
RecipeBuilder.get("blacksmith")
  .setShaped([
    [<contenttweaker:material_part:32>, <contenttweaker:material_part:32>, null, <contenttweaker:material_part:32>, <contenttweaker:material_part:32>],
    [<contenttweaker:material_part:32>, <improvedbackpacks:tanned_leather>, null, <improvedbackpacks:tanned_leather>, <contenttweaker:material_part:32>],
    [<contenttweaker:material_part:32>, <improvedbackpacks:tanned_leather>, <improvedbackpacks:tanned_leather>, <improvedbackpacks:tanned_leather>, <contenttweaker:material_part:32>],
    [<contenttweaker:material_part:32>, <contenttweaker:material_part:32>, <contenttweaker:material_part:32>, <contenttweaker:material_part:32>, <contenttweaker:material_part:32>],
    [null, <contenttweaker:material_part:32>, <contenttweaker:material_part:32>, <contenttweaker:material_part:32>, null]])
  .setFluid(<liquid:pyrotheum> * 1000)
  .addTool(<ore:artisansHammer>, 50)
  .addTool(<ore:artisansPliers>, 25)
  .addTool(<ore:artisansFile>, 25)
  .addOutput(<contenttweaker:palladium_chest>)
  .create();
RecipeBuilder.get("blacksmith")
  .setShaped([
    [<contenttweaker:material_part:32>, <contenttweaker:material_part:32>, <improvedbackpacks:tanned_leather>, <contenttweaker:material_part:32>, <contenttweaker:material_part:32>],
    [<contenttweaker:material_part:32>, <improvedbackpacks:tanned_leather>, null, <improvedbackpacks:tanned_leather>, <contenttweaker:material_part:32>],
    [<contenttweaker:material_part:32>, <improvedbackpacks:tanned_leather>, null, <improvedbackpacks:tanned_leather>, <contenttweaker:material_part:32>],
    [<contenttweaker:material_part:32>, <improvedbackpacks:tanned_leather>, null, <improvedbackpacks:tanned_leather>, <contenttweaker:material_part:32>],
    [<contenttweaker:material_part:32>, <contenttweaker:material_part:32>, null, <contenttweaker:material_part:32>, <contenttweaker:material_part:32>]])
  .setFluid(<liquid:pyrotheum> * 1000)
  .addTool(<ore:artisansHammer>, 50)
  .addTool(<ore:artisansPliers>, 25)
  .addTool(<ore:artisansFile>, 25)
  .addOutput(<contenttweaker:palladium_legs>)
  .create();
RecipeBuilder.get("blacksmith")
  .setShaped([
    [<contenttweaker:material_part:32>, <improvedbackpacks:tanned_leather>, null, <improvedbackpacks:tanned_leather>, <contenttweaker:material_part:32>],
    [<contenttweaker:material_part:32>, <improvedbackpacks:tanned_leather>, null, <improvedbackpacks:tanned_leather>, <contenttweaker:material_part:32>],
    [<contenttweaker:material_part:32>, <contenttweaker:material_part:32>, null, <contenttweaker:material_part:32>, <contenttweaker:material_part:32>]])
  .setFluid(<liquid:pyrotheum> * 1000)
  .addTool(<ore:artisansHammer>, 50)
  .addTool(<ore:artisansPliers>, 25)
  .addTool(<ore:artisansFile>, 25)
  .addOutput(<contenttweaker:palladium_feet>)
  .create();

////Orichalcum
RecipeBuilder.get("blacksmith")
  .setShaped([
    [<contenttweaker:material_part:22>, <contenttweaker:material_part:22>, <contenttweaker:material_part:22>, <contenttweaker:material_part:22>, <contenttweaker:material_part:22>],
    [<contenttweaker:material_part:22>, <improvedbackpacks:tanned_leather>, <improvedbackpacks:tanned_leather>, <improvedbackpacks:tanned_leather>, <contenttweaker:material_part:22>],
    [<contenttweaker:material_part:22>, <improvedbackpacks:tanned_leather>, null, <improvedbackpacks:tanned_leather>, <contenttweaker:material_part:22>]])
  .setFluid(<liquid:pyrotheum> * 1000)
  .addTool(<ore:artisansHammer>, 50)
  .addTool(<ore:artisansPliers>, 25)
  .addTool(<ore:artisansFile>, 25)
  .addOutput(<contenttweaker:orichalcum_head>)
  .create();

RecipeBuilder.get("blacksmith")
  .setShaped([
    [<contenttweaker:material_part:22>, <contenttweaker:material_part:22>, null, <contenttweaker:material_part:22>, <contenttweaker:material_part:22>],
    [<contenttweaker:material_part:22>, <improvedbackpacks:tanned_leather>, null, <improvedbackpacks:tanned_leather>, <contenttweaker:material_part:22>],
    [<contenttweaker:material_part:22>, <improvedbackpacks:tanned_leather>, <improvedbackpacks:tanned_leather>, <improvedbackpacks:tanned_leather>, <contenttweaker:material_part:22>],
    [<contenttweaker:material_part:22>, <contenttweaker:material_part:22>, <contenttweaker:material_part:22>, <contenttweaker:material_part:22>, <contenttweaker:material_part:22>],
    [null, <contenttweaker:material_part:22>, <contenttweaker:material_part:22>, <contenttweaker:material_part:22>, null]])
  .setFluid(<liquid:pyrotheum> * 1000)
  .addTool(<ore:artisansHammer>, 50)
  .addTool(<ore:artisansPliers>, 25)
  .addTool(<ore:artisansFile>, 25)
  .addOutput(<contenttweaker:orichalcum_chest>)
  .create();

  RecipeBuilder.get("blacksmith")
  .setShaped([
    [<contenttweaker:material_part:22>, <contenttweaker:material_part:22>, <improvedbackpacks:tanned_leather>, <contenttweaker:material_part:22>, <contenttweaker:material_part:22>],
    [<contenttweaker:material_part:22>, <improvedbackpacks:tanned_leather>, null, <improvedbackpacks:tanned_leather>, <contenttweaker:material_part:22>],
    [<contenttweaker:material_part:22>, <improvedbackpacks:tanned_leather>, null, <improvedbackpacks:tanned_leather>, <contenttweaker:material_part:22>],
    [<contenttweaker:material_part:22>, <improvedbackpacks:tanned_leather>, null, <improvedbackpacks:tanned_leather>, <contenttweaker:material_part:22>],
    [<contenttweaker:material_part:22>, <contenttweaker:material_part:22>, null, <contenttweaker:material_part:22>, <contenttweaker:material_part:22>]])
  .setFluid(<liquid:pyrotheum> * 1000)
  .addTool(<ore:artisansHammer>, 50)
  .addTool(<ore:artisansPliers>, 25)
  .addTool(<ore:artisansFile>, 25)
  .addOutput(<contenttweaker:orichalcum_legs>)
  .create();

  RecipeBuilder.get("blacksmith")
  .setShaped([
    [<contenttweaker:material_part:22>, <improvedbackpacks:tanned_leather>, null, <improvedbackpacks:tanned_leather>, <contenttweaker:material_part:22>],
    [<contenttweaker:material_part:22>, <improvedbackpacks:tanned_leather>, null, <improvedbackpacks:tanned_leather>, <contenttweaker:material_part:22>],
    [<contenttweaker:material_part:22>, <contenttweaker:material_part:22>, null, <contenttweaker:material_part:22>, <contenttweaker:material_part:22>]])
  .setFluid(<liquid:pyrotheum> * 1000)
  .addTool(<ore:artisansHammer>, 50)
  .addTool(<ore:artisansPliers>, 25)
  .addTool(<ore:artisansFile>, 25)
  .addOutput(<contenttweaker:orichalcum_feet>)
  .create();

////Adamantine
RecipeBuilder.get("blacksmith")
  .setShaped([
    [<contenttweaker:material_part:12>, <contenttweaker:material_part:12>, <contenttweaker:material_part:12>, <contenttweaker:material_part:12>, <contenttweaker:material_part:12>],
    [<contenttweaker:material_part:12>, <improvedbackpacks:tanned_leather>, <improvedbackpacks:tanned_leather>, <improvedbackpacks:tanned_leather>, <contenttweaker:material_part:12>],
    [<contenttweaker:material_part:12>, <improvedbackpacks:tanned_leather>, null, <improvedbackpacks:tanned_leather>, <contenttweaker:material_part:12>]])
  .setFluid(<liquid:pyrotheum> * 1000)
  .addTool(<ore:artisansHammer>, 50)
  .addTool(<ore:artisansPliers>, 25)
  .addTool(<ore:artisansFile>, 25)
  .addOutput(<contenttweaker:adamantine_head>)
  .create();
RecipeBuilder.get("blacksmith")
  .setShaped([
    [<contenttweaker:material_part:12>, <contenttweaker:material_part:12>, null, <contenttweaker:material_part:12>, <contenttweaker:material_part:12>],
    [<contenttweaker:material_part:12>, <improvedbackpacks:tanned_leather>, null, <improvedbackpacks:tanned_leather>, <contenttweaker:material_part:12>],
    [<contenttweaker:material_part:12>, <improvedbackpacks:tanned_leather>, <improvedbackpacks:tanned_leather>, <improvedbackpacks:tanned_leather>, <contenttweaker:material_part:12>],
    [<contenttweaker:material_part:12>, <contenttweaker:material_part:12>, <contenttweaker:material_part:12>, <contenttweaker:material_part:12>, <contenttweaker:material_part:12>],
    [null, <contenttweaker:material_part:12>, <contenttweaker:material_part:12>, <contenttweaker:material_part:12>, null]])
   .setFluid(<liquid:pyrotheum> * 1000)
  .addTool(<ore:artisansHammer>, 50)
  .addTool(<ore:artisansPliers>, 25)
  .addTool(<ore:artisansFile>, 25)
  .addOutput(<contenttweaker:adamantine_chest>)
  .create();
RecipeBuilder.get("blacksmith")
  .setShaped([
    [<contenttweaker:material_part:12>, <contenttweaker:material_part:12>, <improvedbackpacks:tanned_leather>, <contenttweaker:material_part:12>, <contenttweaker:material_part:12>],
    [<contenttweaker:material_part:12>, <improvedbackpacks:tanned_leather>, null, <improvedbackpacks:tanned_leather>, <contenttweaker:material_part:12>],
    [<contenttweaker:material_part:12>, <improvedbackpacks:tanned_leather>, null, <improvedbackpacks:tanned_leather>, <contenttweaker:material_part:12>],
    [<contenttweaker:material_part:12>, <improvedbackpacks:tanned_leather>, null, <improvedbackpacks:tanned_leather>, <contenttweaker:material_part:12>],
    [<contenttweaker:material_part:12>, <contenttweaker:material_part:12>, null, <contenttweaker:material_part:12>, <contenttweaker:material_part:12>]])
  .setFluid(<liquid:pyrotheum> * 1000)
  .addTool(<ore:artisansHammer>, 50)
  .addTool(<ore:artisansPliers>, 25)
  .addTool(<ore:artisansFile>, 25)
  .addOutput(<contenttweaker:adamantine_legs>)
  .create();
  RecipeBuilder.get("blacksmith")
  .setShaped([
    [<contenttweaker:material_part:12>, <improvedbackpacks:tanned_leather>, null, <improvedbackpacks:tanned_leather>, <contenttweaker:material_part:12>],
    [<contenttweaker:material_part:12>, <improvedbackpacks:tanned_leather>, null, <improvedbackpacks:tanned_leather>, <contenttweaker:material_part:12>],
    [<contenttweaker:material_part:12>, <contenttweaker:material_part:12>, null, <contenttweaker:material_part:12>, <contenttweaker:material_part:12>]])
  .setFluid(<liquid:pyrotheum> * 1000)
  .addTool(<ore:artisansHammer>, 50)
  .addTool(<ore:artisansPliers>, 25)
  .addTool(<ore:artisansFile>, 25)
  .addOutput(<contenttweaker:adamantine_feet>)
  .create();



//--------------Wires------------------
<ore:artisansCutters>.add(<immersiveengineering:tool:1>);

val WireCutting as IItemStack[IOreDictEntry] = {
  <ore:plateCopper>:<immersiveengineering:material:20>,
  <ore:plateElectrum>:<immersiveengineering:material:21>,
  <ore:plateAluminum>:<immersiveengineering:material:22>,
  <ore:plateSteel>:<immersiveengineering:material:23>,
} as IItemStack[IOreDictEntry];

for plate, wire in WireCutting {
  RecipeBuilder.get("blacksmith")
  .setShapeless([plate])
  .setFluid(<liquid:lava> * 25)
  .addTool(<ore:artisansCutters>, 10)
  .addOutput(wire)
  .create();
	recipes.remove(wire);
}
##########################################################################################
print("==================== end of mods artisansworktables.zs ====================");
