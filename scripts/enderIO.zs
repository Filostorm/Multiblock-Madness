
import crafttweaker.item.IItemStack;
import mods.tconstruct.Casting;
print("==================== loading mods enderIO.zs ====================");
##########################################################################################

val itemstoRemove =
[
<enderio:item_material:14>,
<enderio:item_material:15>,
<enderio:item_material>,
<enderio:block_painter>,
<enderio:block_crafter>,
<cyclicmagic:auto_crafter>,
<enderio:item_material:11>,
<enderio:item_material:12>,
<enderio:item_material:13>,
<enderio:item_material:73>,
]
 as IItemStack[];

for item in itemstoRemove {
	recipes.remove(item);
}

//Simple Chassis
recipes.addShaped(<enderio:item_material>, [[<enderio:item_material:11>, <minecraft:iron_bars>, <enderio:item_material:11>],[<minecraft:iron_bars>, <thermalexpansion:frame:64>, <minecraft:iron_bars>], [<enderio:item_material:11>, <minecraft:iron_bars>, <enderio:item_material:11>]]);

//Cyclic Crafter
recipes.addShaped(<cyclicmagic:auto_crafter>, [[<moreplates:knightslime_plate>, <ore:workbench>, <moreplates:knightslime_plate>],[<enderio:item_capacitor_grainy>, <thermalexpansion:frame:64>, <enderio:item_capacitor_grainy>], [<moreplates:knightslime_plate>, <rockhounding_chemistry:misc_items:1>, <moreplates:knightslime_plate>]]);

//Crafter
recipes.addShaped(<enderio:block_crafter>, [[<moreplates:electrical_steel_plate>, <moreplates:electrical_steel_plate>, <moreplates:electrical_steel_plate>],[<moreplates:redstone_alloy_plate>, <enderio:item_material>, <moreplates:redstone_alloy_plate>], [<enderio:item_material:11>, <cyclicmagic:auto_crafter>, <enderio:item_material:11>]]);


//Painter
recipes.addShaped(<enderio:block_painter>, [[<actuallyadditions:item_misc:7>, <actuallyadditions:item_crystal:2>, <actuallyadditions:item_misc:7>],[<enderio:item_material:11>, <enderio:item_material>, <enderio:item_material:11>], [<enderio:item_alloy_ingot>, <enderio:item_alloy_ingot>, <enderio:item_alloy_ingot>]]);

//composit
//recipes.addShaped(<enderio:item_material:22> * 8, [[<minecraft:gravel>, <embers:blend_caminite>, <minecraft:gravel>],[<embers:blend_caminite>, <ore:sand>, <embers:blend_caminite>], [<minecraft:gravel>, <embers:blend_caminite>, <minecraft:gravel>]]);
//Grout
//recipes.addShapeless(<tconstruct:soil> * 2, [<embers:blend_caminite>,<embers:blend_caminite>,<minecraft:gravel>,<ore:sand>]);

//stone gear
recipes.addShaped(<enderio:item_material:10>, [[null, <ore:stone>, null],[<ore:stone>, <enderio:item_material:9>, <ore:stone>], [null, <ore:stone>, null]]);
//wood gear
recipes.addShaped(<enderio:item_material:9>, [[null, <ore:stickWood>, null],[<ore:stickWood>, null, <ore:stickWood>], [null, <ore:stickWood>, null]]);

<ore:fusedGlass>.add(<tconstruct:clear_glass>);

//cant make frames the normal way
mods.thermalexpansion.InductionSmelter.removeRecipe(<enderio:item_material:51>, <enderio:item_material>);
mods.thermalexpansion.InductionSmelter.removeRecipe(<enderio:item_material:52>, <enderio:item_material>);
mods.enderio.AlloySmelter.removeRecipe(<enderio:item_material:1>);
mods.enderio.AlloySmelter.removeRecipe(<enderio:item_material:53>);
##########################################################################################
print("==================== end of mods enderIO.zs ====================");
