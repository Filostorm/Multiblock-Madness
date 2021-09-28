##########################################################################################

import mods.artisanworktables.builder.RecipeBuilder;
import crafttweaker.item.IItemStack;
import crafttweaker.oredict.IOreDictEntry;

print("==================== loading mods artisansworktables.zs ====================");
##########################################################################################
mods.unidict.removalByKind.get("Crafting").remove("plate");
mods.unidict.removalByKind.get("Crafting").remove("rod");
mods.unidict.removalByKind.get("Crafting").remove("gear");

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



val artisansPlates as IItemStack[IOreDictEntry] = {
	<ore:ingotBronze>: <thermalfoundation:material:355>,
  <ore:ingotTin>:<thermalfoundation:material:321>,
  <ore:ingotGold>:<thermalfoundation:material:33>,
  <ore:ingotCopper>:<thermalfoundation:material:320>,
  <ore:ingotIron>:<thermalfoundation:material:32>,
  <ore:ingotSilver>:<thermalfoundation:material:322>,
  <ore:ingotLead>:<thermalfoundation:material:323>,
  <ore:ingotNickel>:<thermalfoundation:material:325>,
  <ore:ingotInvar>:<thermalfoundation:material:354>,
  <ore:ingotElectrum>:<thermalfoundation:material:353>,
  <ore:ingotConstantan>:<thermalfoundation:material:356>,
  <ore:ingotSteel>:<thermalfoundation:material:352>,
  <ore:ingotDawnstone>:<embers:plate_dawnstone>,
  <ore:ingotIronwood>:<moreplates:ironwood_plate>,
  <ore:ingotBrass>:<thaumcraft:plate>,
  <ore:ingotThaumium>:<thaumcraft:plate:2>,
  <ore:gemQuartz>:<moreplates:nether_quartz_plate>,
  
} as IItemStack[IOreDictEntry];

for ingot, plate in artisansPlates {
recipes.addShaped(plate, [[<ore:artisansHammer>.reuse().transformDamage(5)], [ingot], [ingot]]);
RecipeBuilder.get("blacksmith")
  .setShapeless([ingot])
  .setFluid(<liquid:lava> *25)
  .addTool(<ore:artisansHammer>, 5)
  .addOutput(plate)
  .create();
}

val artisansCrystalPlates as IItemStack[IItemStack] = {
  <actuallyadditions:item_crystal>:<moreplates:restonia_plate>,
  <actuallyadditions:item_crystal:3>:<moreplates:void_plate>,
  <actuallyadditions:item_crystal:5>:<moreplates:enori_plate>,
  <actuallyadditions:item_crystal:2>: <moreplates:diamatine_plate>,
} as IItemStack[IItemStack];
for ingot, plate in artisansCrystalPlates {
recipes.addShaped(plate, [[<ore:artisansHammer>.reuse().transformDamage(5)], [ingot], [ingot]]);
RecipeBuilder.get("blacksmith")
  .setShapeless([ingot])
  .setFluid(<liquid:lava> *25)
  .addTool(<ore:artisansHammer>, 5)
  .addOutput(plate)
  .create();
}
//--------------Rods------------------

val artisansRods as IItemStack[IOreDictEntry] = {
  <ore:ingotSteel>:<immersiveengineering:material:2>,
  <ore:ingotIron>:<immersiveengineering:material:1>,
  <ore:ingotInvar>:<moreplates:invar_stick>,
  <ore:ingotElectrum>:<moreplates:electrum_stick>,
  <ore:ingotConstantan>:<moreplates:constantan_stick>,
  <ore:ingotBrass>:<jaopca:item_stickbrass>,
  <ore:ingotGold>:<moreplates:gold_stick>,
	<ore:ingotBronze>: <moreplates:bronze_stick>,
  <ore:ingotArdite>:<jaopca:item_stickardite>,
  <ore:ingotCopper>:<libvulpes:productrod:4>,
  <ore:ingotThaumium>:<jaopca:item_stickthaumium>,
  <ore:ingotIronwood>:<contenttweaker:rod_ironwood>,
} as IItemStack[IOreDictEntry];

for ingot, rod in artisansRods {
RecipeBuilder.get("blacksmith")
  .setShaped([
    [null, null, ingot],
    [null, ingot, null],
    [ingot, null, null]])
  .setFluid(<liquid:lava> * 25)
  .addTool(<ore:artisansPliers>, 10)
  .addOutput(rod*3)
  .create();
}



//--------------Gears------------------
recipes.addShaped(<artisanworktables:workstation:3>, [
[<thermalfoundation:material:352>, <thermalfoundation:material:352>, <thermalfoundation:material:352>],
[<thermalfoundation:material:352>, <artisanworktables:worktable:3>, <thermalfoundation:material:352>], 
[<ore:blockSeared>, <ore:blockSeared>, <ore:blockSeared>]
]);


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

    //Copper
  RecipeBuilder.get("blacksmith")
  .setShaped([
    [null, <ore:ingotCopper>, null],
    [<ore:ingotCopper>, <ore:stickCopper>, <ore:ingotCopper>],
    [null, <ore:ingotCopper>, null]])
  .setFluid(<liquid:lava> * 50)
  .addTool(<ore:artisansFile>, 20)
  .addTool(<ore:artisansHammer>, 20)
  .addOutput(<thermalfoundation:material:256>)
  .create();

    //Bronze
  RecipeBuilder.get("blacksmith")
  .setShaped([
    [null, <ore:ingotBronze>, null],
    [<ore:ingotBronze>, <ore:stickBronze>, <ore:ingotBronze>],
    [null, <ore:ingotBronze>, null]])
  .setFluid(<liquid:lava> * 50)
  .addTool(<ore:artisansFile>, 20)
  .addTool(<ore:artisansHammer>, 20)
  .addOutput(<thermalfoundation:material:291>)
  .create();

    //Ironwood
  RecipeBuilder.get("blacksmith")
  .setShaped([
    [null, <ore:ingotIronwood>, null],
    [<ore:ingotIronwood>, <contenttweaker:rod_ironwood>, <ore:ingotIronwood>],
    [null, <ore:ingotIronwood>, null]])
  .setFluid(<liquid:lava> * 50)
  .addTool(<ore:artisansFile>, 20)
  .addTool(<ore:artisansHammer>, 20)
  .addOutput(<moreplates:ironwood_gear>)
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
