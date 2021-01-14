import crafttweaker.item.IItemStack;
import mods.techreborn.rollingMachine;
import crafttweaker.oredict.IOreDict;
print("==================== loading parts.zs ====================");
##########################################################################################
/*
val platestoadd =
[
]
 as IItemStack[];

for item in itemstoRemove {
}
*/

//scaffolding
mods.techreborn.assemblingMachine.addRecipe(<contenttweaker:vanasteel_scaffolding>*9, <rockhounding_chemistry:alloy_items_tech:40>*3, <contenttweaker:rod_vanasteel>*3, 100, 100);
mods.techreborn.assemblingMachine.addRecipe(<immersiveengineering:metal_decoration1:1>*9, <thermalfoundation:material:160>*3, <immersiveengineering:material:2>*3, 100, 100);
mods.techreborn.assemblingMachine.addRecipe(<contenttweaker:scal_scaffolding>*9, <rockhounding_chemistry:alloy_items_tech:4>*3, <contenttweaker:rod_scal>*3, 100, 100);
mods.techreborn.assemblingMachine.addRecipe(<contenttweaker:bam_scaffolding>*9, <rockhounding_chemistry:alloy_items_tech:7>*3, <contenttweaker:rod_bam>*3, 100, 100);
mods.techreborn.assemblingMachine.addRecipe(<contenttweaker:nimonic_scaffolding>*9, <rockhounding_chemistry:alloy_items_tech:16>*3, <contenttweaker:rod_nimonic>*3, 100, 100);
mods.techreborn.assemblingMachine.addRecipe(<contenttweaker:invar_scaffolding>*9, <thermalfoundation:material:162>*3, <moreplates:invar_stick>*3, 100, 100);

recipes.addShaped(<contenttweaker:scal_scaffolding> * 6, [[<rockhounding_chemistry:alloy_items_tech:4>, <rockhounding_chemistry:alloy_items_tech:4>, <rockhounding_chemistry:alloy_items_tech:4>],[null, <contenttweaker:rod_scal>, null], [<contenttweaker:rod_scal>, null, <contenttweaker:rod_scal>]]);
recipes.addShaped(<contenttweaker:bam_scaffolding> * 6, [[<rockhounding_chemistry:alloy_items_tech:7>, <rockhounding_chemistry:alloy_items_tech:7>, <rockhounding_chemistry:alloy_items_tech:7>],[null, <contenttweaker:rod_bam>, null], [<contenttweaker:rod_bam>, null, <contenttweaker:rod_bam>]]);
recipes.addShaped(<contenttweaker:nimonic_scaffolding> * 6, [[<rockhounding_chemistry:alloy_items_tech:16>, <rockhounding_chemistry:alloy_items_tech:16>, <rockhounding_chemistry:alloy_items_tech:16>],[null, <contenttweaker:rod_nimonic>, null], [<contenttweaker:rod_nimonic>, null, <contenttweaker:rod_nimonic>]]);
recipes.addShaped(<contenttweaker:vanasteel_scaffolding> * 6, [[<rockhounding_chemistry:alloy_items_tech:40>, <rockhounding_chemistry:alloy_items_tech:40>, <rockhounding_chemistry:alloy_items_tech:40>],[null, <contenttweaker:rod_vanasteel>, null], [<contenttweaker:rod_vanasteel>, null, <contenttweaker:rod_vanasteel>]]);
recipes.addShaped(<contenttweaker:invar_scaffolding> * 6, [[<thermalfoundation:material:162>, <thermalfoundation:material:162>, <thermalfoundation:material:162>],[null, <moreplates:invar_stick>, null], [<moreplates:invar_stick>, null, <moreplates:invar_stick>]]);

//restonia
//mods.immersiveengineering.MetalPress.addRecipe(<moreplates:restonia_plate>, <actuallyadditions:item_crystal>, <immersiveengineering:mold>, 2000);
mods.thermalexpansion.Compactor.addStorageRecipe(<moreplates:restonia_plate>, <actuallyadditions:item_crystal>, 1500);
mods.techreborn.compressor.addRecipe(<moreplates:restonia_plate>, <actuallyadditions:item_crystal>, 400, 8);
mods.nuclearcraft.pressurizer.addRecipe([<actuallyadditions:item_crystal>, <moreplates:restonia_plate>]);

//void
//mods.immersiveengineering.MetalPress.addRecipe(<moreplates:void_plate>, <actuallyadditions:item_crystal:3>, <immersiveengineering:mold>, 2000);
mods.thermalexpansion.Compactor.addStorageRecipe(<moreplates:void_plate>, <actuallyadditions:item_crystal:3>, 1500);
mods.techreborn.compressor.addRecipe(<moreplates:void_plate>, <actuallyadditions:item_crystal:3>, 400, 8);
mods.nuclearcraft.pressurizer.addRecipe([<actuallyadditions:item_crystal:3>, <moreplates:void_plate>]);

//void metal
mods.immersiveengineering.MetalPress.addRecipe(<thaumcraft:plate:3>, <thaumcraft:ingot:1>, <immersiveengineering:mold>, 2000);
mods.techreborn.plateBendingMachine.addRecipe(<thaumcraft:plate:3>, <thaumcraft:ingot:1>, 400, 8);



//sheetmetal
recipes.addShaped(<contenttweaker:sheetmetal_bronze> * 4, [[null, <ore:plateBronze>, null],[<ore:plateBronze>, null, <ore:plateBronze>], [null, <ore:plateBronze>, null]]);
recipes.addShaped(<contenttweaker:sheetmetal_refinediron> * 4, [[null, <techreborn:plates:35>, null],[<techreborn:plates:35>, null, <techreborn:plates:35>], [null, <techreborn:plates:35>, null]]);
recipes.addShaped(<contenttweaker:sheetmetal_thaumium> * 4, [[null, <thaumcraft:plate:2>, null],[<thaumcraft:plate:2>, null, <thaumcraft:plate:2>], [null, <thaumcraft:plate:2>, null]]);
recipes.addShaped(<contenttweaker:sheetmetal_brass> * 4, [[null, <ore:plateBrass>, null],[<ore:plateBrass>, null, <ore:plateBrass>], [null, <ore:plateBrass>, null]]);
recipes.addShaped(<contenttweaker:sheetmetal_nimonic> * 4, [[null, <rockhounding_chemistry:alloy_parts:22>, null],[<rockhounding_chemistry:alloy_parts:22>, null, <rockhounding_chemistry:alloy_parts:22>], [null, <rockhounding_chemistry:alloy_parts:22>, null]]);
recipes.addShaped(<jaopca:block_sheetmetaldarksteel> * 4, [[null, <moreplates:dark_steel_plate>, null],[<moreplates:dark_steel_plate>, null, <moreplates:dark_steel_plate>], [null, <moreplates:dark_steel_plate>, null]]);
recipes.addShaped(<jaopca:block_sheetmetalsoularium> * 4, [[null, <moreplates:soularium_plate>, null],[<moreplates:soularium_plate>, null, <moreplates:soularium_plate>], [null, <moreplates:soularium_plate>, null]]);
recipes.addShaped(<jaopca:block_sheetmetallumium> * 4, [[null, <thermalfoundation:material:358>, null],[<thermalfoundation:material:358>, null, <thermalfoundation:material:358>], [null, <thermalfoundation:material:358>, null]]);
recipes.addShaped(<jaopca:block_sheetmetalredstonealloy> * 4, [[null, <moreplates:redstone_alloy_plate>, null],[<moreplates:redstone_alloy_plate>, null, <moreplates:redstone_alloy_plate>], [null, <moreplates:redstone_alloy_plate>, null]]);

### Rolling Machine ###
rollingMachine.addShapeless(<immersiveengineering:sheetmetal:10>*9, [<minecraft:gold_block>]);
rollingMachine.addShapeless(<contenttweaker:sheetmetal_thaumium>*9, [<thaumcraft:metal_thaumium>]);
rollingMachine.addShapeless(<contenttweaker:sheetmetal_bronze>*9, [<thermalfoundation:storage_alloy:3>]);
rollingMachine.addShapeless(<immersiveengineering:sheetmetal>*9, [<thermalfoundation:storage>]);
rollingMachine.addShapeless(<immersiveengineering:sheetmetal:1>*9, [<thermalfoundation:storage:4>]);
rollingMachine.addShapeless(<immersiveengineering:sheetmetal:2>*9, [<thermalfoundation:storage:3>]);
rollingMachine.addShapeless(<contenttweaker:sheetmetal_refinediron>*9, [<techreborn:storage2:10>]);
rollingMachine.addShapeless(<contenttweaker:sheetmetal_brass>*9, [<ore:blockBrass>]);
rollingMachine.addShapeless(<contenttweaker:sheetmetal_nimonic>*9, [<rockhounding_chemistry:alloy_blocks_tech:5>]);
rollingMachine.addShapeless(<immersiveengineering:sheetmetal:9>*9, [<minecraft:iron_block>]);
rollingMachine.addShapeless(<immersiveengineering:sheetmetal:8>*9, [<thermalfoundation:storage_alloy>]);
rollingMachine.addShapeless(<jaopca:block_sheetmetaldarksteel>*9, [<enderio:block_alloy:6>]);
rollingMachine.addShapeless(<jaopca:block_sheetmetalsoularium>*9, [<enderio:block_alloy:7>]);
rollingMachine.addShapeless(<jaopca:block_sheetmetallumium>*9, [<thermalfoundation:storage_alloy:6>]);
rollingMachine.addShapeless(<jaopca:block_sheetmetalredstonealloy>*9, [<enderio:block_alloy:3>]);

##########################################################################################
print("==================== end of parts.zs ====================");
