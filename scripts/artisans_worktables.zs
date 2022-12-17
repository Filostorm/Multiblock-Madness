##########################################################################################
import mods.artisanworktables.builder.RecipeBuilder;
import crafttweaker.item.IItemStack;
import crafttweaker.oredict.IOreDictEntry;

#priority 98

print("==================== loading artisans_worktables.zs ====================");
##########################################################################################

val recipestoRemove =
[
  <embers:plate_dawnstone>,
  <randomthings:fertilizeddirt>,
  <farmingforblockheads:fertilizer>,
  <farmingforblockheads:fertilizer:1>,
  <farmingforblockheads:fertilizer:2>,
]
 as IItemStack[];

for item in recipestoRemove {
	recipes.remove(item);
}


//Tool Box
recipes.addShaped(<artisanworktables:mechanical_toolbox>, [[<thermalfoundation:material:24>, <thermalfoundation:material:355>, <thermalfoundation:material:24>],[<minecraft:stone_button>, <artisanworktables:toolbox>, <minecraft:stone_button>], [<thermalfoundation:material:24>, <thermalfoundation:material:355>, <thermalfoundation:material:24>]]);
recipes.addShaped(<artisanworktables:toolbox>, [[<enderio:item_material:10>, <thermalfoundation:material:320>, <enderio:item_material:10>],[<minecraft:stone_button>, <minecraft:chest>, <minecraft:stone_button>], [<enderio:item_material:10>, <thermalfoundation:material:320>, <enderio:item_material:10>]]);


//--------------Mason Table------------------//

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


//--------------Blacksmith------------------//

recipes.addShaped(<artisanworktables:worktable:3>, [
  [<ore:plateInvar>, <ore:plateInvar>, <ore:plateInvar>],
  [null, <ore:logWood>, null], 
  [<ore:logWood>, <ore:logWood>, <ore:logWood>]]);


//--------------Plates------------------

val artisansPlates as IItemStack[IOreDictEntry] = {
	<ore:ingotBronze>: <thermalfoundation:material:355>,
  <ore:ingotTin>:<thermalfoundation:material:321>,
  <ore:ingotGold>:<thermalfoundation:material:33>,
  //<ore:ingotCopper>:<thermalfoundation:material:320>,
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
  <ore:ingotTinSilver>:<jaopca:item_platetinsilver>,
  <ore:gemQuartz>:<moreplates:nether_quartz_plate>,
  <ore:ingotConductiveIron>:<moreplates:conductive_iron_plate>,
  <ore:ingotPulsatingIron>:<moreplates:pulsating_iron_plate>,
  <ore:ingotPalladium>:<contenttweaker:material_part:32>,
  <ore:ingotOrichalcum>:<contenttweaker:material_part:22>,
  <ore:ingotKnightslime>:<moreplates:knightslime_plate>
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
  <modularmachinery:itemmodularium>:<contenttweaker:plate_modularium>,
  <thermalfoundation:material:128>:<thermalfoundation:material:320>, // COPPER
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


//--------------Gears------------------

recipes.addShaped(<artisanworktables:workstation:3>, [
[<thermalfoundation:material:352>, <thermalfoundation:material:352>, <thermalfoundation:material:352>],
[<thermalfoundation:material:352>, <artisanworktables:worktable:3>, <thermalfoundation:material:352>], 
[<ore:blockSeared>, <ore:blockSeared>, <ore:blockSeared>]
]);

<ore:stickIronwood>.add(<contenttweaker:rod_ironwood>);

val artisansGears as IOreDictEntry[][IItemStack] = {
  <thermalfoundation:material:24>:[<ore:ingotIron>,<ore:stickIron>],
  <thermalfoundation:material:25>:[<ore:ingotGold>,<ore:stickGold>],
  <thermalfoundation:material:256>:[<ore:ingotCopper>,<ore:stickCopper>],
  <thermalfoundation:material:257>:[<ore:ingotTin>,<ore:stickTin>],
  <thermalfoundation:material:258>:[<ore:ingotSilver>,<ore:stickSilver>],
  <thermalfoundation:material:259>:[<ore:ingotLead>,<ore:stickLead>],
  <thermalfoundation:material:261>:[<ore:ingotNickel>,<ore:stickNickel>],
  <thermalfoundation:material:291>:[<ore:ingotBronze>,<ore:stickBronze>],
  <thermalfoundation:material:292>:[<ore:ingotConstantan>,<ore:stickConstantan>],
  <thermalfoundation:material:289>:[<ore:ingotElectrum>,<ore:stickElectrum>],
  <thermalfoundation:material:290>:[<ore:ingotInvar>,<ore:stickInvar>],
  <moreplates:conductive_iron_gear>:[<ore:ingotConductiveIron>,<ore:stickConductiveIron>],
  <thaumicperiphery:gear_brass>:[<ore:ingotBrass>,<ore:stickBrass>],
  <moreplates:cobalt_gear>:[<ore:ingotCobalt>,<ore:stickCobalt>],
  <moreplates:ardite_gear>:[<ore:ingotArdite>,<ore:stickArdite>],
  <mystgears:gear_thaumium>:[<ore:ingotThaumium>,<ore:stickThaumium>],
  <mystgears:gear_manasteel>:[<ore:ingotManasteel>,<ore:stickManasteel>],
  <moreplates:ironwood_gear>:[<ore:ingotIronwood>,<ore:stickIronwood>],
  <contenttweaker:material_part:31>:[<ore:ingotPalladium>,<ore:stickPalladium>],
  <contenttweaker:material_part:21>:[<ore:ingotOrichalcum>,<ore:stickOrichalcum>],
  <thermalfoundation:material:288>:[<ore:ingotSteel>,<ore:stickSteel>],
  <embers:gear_dawnstone>:[<ore:ingotDawnstone>,<ore:stickDawnstone>],
  <moreplates:prudentium_gear>:[<ore:ingotPrudentium>,<ore:stickPrudentium>],
  <contenttweaker:gear_modularium>:[<ore:ingotModularium>,<ore:stickModularium>]
} as IOreDictEntry[][IItemStack];

for gear, material in artisansGears {
  RecipeBuilder.get("blacksmith")
  .setShaped([
    [null, material[0], null],
    [material[0], material[1], material[0]],
    [null, material[0], null]])
  .setFluid(<liquid:lava> * 50)
  .addTool(<ore:artisansFile>, 20)
  .addTool(<ore:artisansHammer>, 20)
  .addOutput(gear)
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
  <ore:ingotPalladium>:<contenttweaker:material_part:34>,
  <ore:ingotOrichalcum>:<contenttweaker:material_part:24>,
  <ore:ingotManasteel>:<jaopca:item_stickmanasteel>,
  <ore:ingotSilver>:<moreplates:silver_stick>,
  <ore:ingotNickel>:<immersiveposts:metal_rods:4>,
  <ore:ingotLead>:<immersiveposts:metal_rods:2>,
  <ore:ingotTin>:<moreplates:tin_stick>,
  <ore:ingotConductiveIron>:<contenttweaker:rod_conductive_iron>,
  <ore:ingotCobalt>:<jaopca:item_stickcobalt>,
  <ore:ingotDawnstone>:<contenttweaker:rod_dawnstone>,
  <ore:ingotPrudentium>:<jaopca:item_stickprudentium>,
  <ore:ingotModularium>:<contenttweaker:rod_modularium>
} as IItemStack[IOreDictEntry];

for ingot, rod in artisansRods {
RecipeBuilder.get("blacksmith")
  .setShaped([
    [null, null, ingot],
    [null, ingot, null],
    [ingot, null, null]])
  .setFluid(<liquid:lava> * 25)
  .addTool(<ore:artisansPliers>, 5)
  .addOutput(rod*3)
  .create();
}

  
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


//--------------Farmers Table------------------//

recipes.addShaped(<artisanworktables:workstation:10>, [[<thermalfoundation:material:355>, <ore:dirt>, <thermalfoundation:material:355>],[null, <immersiveengineering:treated_wood>, null], [<immersiveengineering:treated_wood>, <immersiveengineering:treated_wood>, <immersiveengineering:treated_wood>]]);

// Crop Sticks
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


##########################################################################################
print("==================== end of artisans_worktables.zs ====================");
