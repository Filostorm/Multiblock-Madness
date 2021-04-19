
import crafttweaker.item.IItemStack;
import mods.tconstruct.Casting;
import mods.enderio.AlloySmelter;
import mods.thermalexpansion.InductionSmelter;

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
<enderio:block_experience_obelisk>,
<enderio:item_xp_transfer>,
<enderio:item_redstone_not_filter>,
<enderio:item_redstone_or_filter>,
<enderio:item_redstone_xor_filter>,
<enderio:item_redstone_toggle_filter>,
<enderio:item_redstone_counting_filter>,
<enderio:item_redstone_sensor_filter>,
<enderio:item_redstone_timer_filter>,
<enderio:item_redstone_conduit>,
]
 as IItemStack[];

for item in itemstoRemove {
	recipes.remove(item);
}

//Simple Chassis
recipes.addShaped(<enderio:item_material>, [[<thermalfoundation:material:288>, <enderio:item_material:75>, <thermalfoundation:material:288>],[<minecraft:iron_bars>, <thermalexpansion:frame:64>, <minecraft:iron_bars>], [<thermalfoundation:material:288>, <enderio:item_material:75>, <thermalfoundation:material:288>]]);

//Cyclic Crafter
recipes.addShaped(<cyclicmagic:auto_crafter>, [[<moreplates:knightslime_plate>, <ore:workbench>, <moreplates:knightslime_plate>],[<enderio:item_capacitor_grainy>, <thermalexpansion:frame:64>, <enderio:item_capacitor_grainy>], [<moreplates:knightslime_plate>, <rockhounding_chemistry:misc_items:1>, <moreplates:knightslime_plate>]]);

//Crafter
recipes.addShaped(<enderio:block_crafter>, [[<moreplates:electrical_steel_plate>, <moreplates:electrical_steel_plate>, <moreplates:electrical_steel_plate>],[<moreplates:redstone_alloy_plate>, <cyclicmagic:auto_crafter>, <moreplates:redstone_alloy_plate>], [<enderio:item_material:11>, <ore:circuitBasic>, <enderio:item_material:11>]]);


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

AlloySmelter.removeRecipe(<enderio:item_material:75>);
mods.actuallyadditions.AtomicReconstructor.addRecipe(<enderio:item_material:75>, <enderio:item_material:20>, 5000);

//pulsating crystal
Casting.removeTableRecipe(<enderio:item_material:14>);
mods.embers.Alchemy.add(<enderio:item_material:14>, [<minecraft:diamond>,<enderio:item_alloy_ingot:5>,<enderio:item_material:22>,<enderio:item_alloy_ingot:5>,<enderio:item_material:22>], {"silver":24 to 48});

//XP Obelisk
recipes.addShaped(<enderio:block_experience_obelisk>, [[null, <enderio:item_xp_transfer>, null],[<enderio:item_alloy_ingot:7>, <enderio:block_tank>, <enderio:item_alloy_ingot:7>], [<enderio:item_alloy_ingot:1>, <enderio:item_material>, <enderio:item_alloy_ingot:1>]]);
recipes.addShaped(<enderio:item_xp_transfer>, [[null, null, <enderio:item_alloy_ingot:7>],[null, <enderio:item_material:71>, null], [<enderio:item_alloy_ingot:1>, null, null]]);


//cant make frames the normal way
InductionSmelter.removeRecipe(<enderio:item_material:51>, <enderio:item_material>);
InductionSmelter.removeRecipe(<enderio:item_material:52>, <enderio:item_material>);
mods.enderio.AlloySmelter.removeRecipe(<enderio:item_material:1>);
mods.enderio.AlloySmelter.removeRecipe(<enderio:item_material:53>);

//Redstone stuff
recipes.addShaped(<enderio:item_redstone_timer_filter>, [[<deepmoblearning:soot_covered_redstone>, <enderio:item_material:60>, <minecraft:clock>]]);
recipes.addShaped(<enderio:item_redstone_sensor_filter>, [[<minecraft:comparator>, <enderio:item_material:60>, <deepmoblearning:soot_covered_redstone>]]);
recipes.addShaped(<enderio:item_redstone_counting_filter>, [[<deepmoblearning:soot_covered_redstone>, null, null],[<deepmoblearning:soot_covered_redstone>, <enderio:item_material:60>, <deepmoblearning:soot_covered_redstone>], [<deepmoblearning:soot_covered_redstone>, null, null]]);
recipes.addShaped(<enderio:item_redstone_toggle_filter>, [[<minecraft:lever>, <enderio:item_material:60>, <deepmoblearning:soot_covered_redstone>]]);
recipes.addShaped(<enderio:item_redstone_xor_filter>, [[null, <minecraft:redstone_torch>, null],[<deepmoblearning:soot_covered_redstone>, <enderio:item_material:60>, <deepmoblearning:soot_covered_redstone>], [null, <minecraft:redstone_torch>, null]]);
recipes.addShaped(<enderio:item_redstone_or_filter>, [[null, <deepmoblearning:soot_covered_redstone>, null],[null, <enderio:item_material:60>, null], [null, <deepmoblearning:soot_covered_redstone>, null]]);
recipes.addShaped(<enderio:item_redstone_not_filter>, [[<minecraft:redstone_torch>, <enderio:item_material:60>, <deepmoblearning:soot_covered_redstone>]]);
recipes.addShaped(<enderio:item_material:60>, [[<deepmoblearning:soot_covered_redstone>, <minecraft:paper>, <deepmoblearning:soot_covered_redstone>],[<minecraft:paper>, <minecraft:iron_ingot>, <minecraft:paper>], [<deepmoblearning:soot_covered_redstone>, <minecraft:paper>, <deepmoblearning:soot_covered_redstone>]]);
recipes.addShaped(<enderio:item_redstone_conduit> * 8, [[<enderio:item_material:4>, <enderio:item_material:4>, <enderio:item_material:4>],[<deepmoblearning:soot_covered_redstone>, <deepmoblearning:soot_covered_redstone>, <deepmoblearning:soot_covered_redstone>], [<enderio:item_material:4>, <enderio:item_material:4>, <enderio:item_material:4>]]);

mods.jei.JEI.addItem(<enderio:item_broken_spawner>);
InductionSmelter.addRecipe(<enderio:item_broken_spawner>, <actuallyadditions:item_misc:20>*4, <actuallyadditions:block_crystal_empowered:5>, 15000);

##########################################################################################
print("==================== end of mods enderIO.zs ====================");
