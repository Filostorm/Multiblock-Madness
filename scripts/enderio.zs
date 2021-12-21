
import crafttweaker.item.IItemStack;
import mods.tconstruct.Casting;
import mods.thermalexpansion.InductionSmelter;
import mods.nuclearcraft.AlloyFurnace;
import mods.immersiveengineering.Crusher;

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
<enderio:item_endergy_conduit:6>,
<enderio:item_redstone_conduit>,
<enderio:item_power_conduit>,
<enderio:item_endergy_conduit:7>,
<enderio:item_power_conduit:1>,
<enderio:item_power_conduit:2>,
<enderio:item_endergy_conduit:8>,
<enderio:item_endergy_conduit:9>,
<enderio:item_endergy_conduit:10>,
<enderio:item_endergy_conduit:11>,
<enderio:block_power_monitor>,
<enderio:block_buffer:1>,
<enderio:block_impulse_hopper>,
<enderio:block_niard>,
<enderio:item_conduit_facade>,
<enderio:block_travel_anchor>,
<enderio:item_conduit_probe>,
<enderio:item_yeta_wrench>,
<enderio:item_material:68>,
<enderio:item_material:2>,
<enderio:block_travel_anchor>,
<enderio:item_ender_food>,
<enderio:item_gas_conduit:2>,
<enderio:item_capacitor_energetic_silver>,
<enderio:item_basic_capacitor:1>,
<enderio:item_basic_capacitor:2>,
<enderio:item_capacitor_vivid>,
<enderio:item_capacitor_crystalline>,
<enderio:item_capacitor_melodic>,
<enderio:item_capacitor_stellar>
]
 as IItemStack[];

for item in itemstoRemove {
	recipes.remove(item);
}

val itemstoHide =
[
	<enderio:item_gas_conduit:1>,
	<enderio:item_gas_conduit>,
]
 as IItemStack[];

for item in itemstoHide {
	mods.jei.JEI.removeAndHide(item);
}
//Parts t2
InductionSmelter.addRecipe(<enderio:item_material:2>*4, <enderio:item_material:69>*4, <techreborn:ingot:15>, 50000);
///AlloySmelter.addRecipe(<enderio:item_material:2>*4, [<enderio:item_material:69>*4, <techreborn:ingot:15>], 50000);
AlloyFurnace.addRecipe(<enderio:item_material:69>*4, <techreborn:ingot:15>, <enderio:item_material:2>*4);
//Parts t3
InductionSmelter.addRecipe(<enderio:item_material:68>*4, <enderio:item_material:2>*4, <enderio:item_alloy_endergy_ingot:2>, 50000);
//AlloySmelter.addRecipe(<enderio:item_material:68>*4, [<enderio:item_material:2>*4, <enderio:item_alloy_endergy_ingot:2>], 50000);
AlloyFurnace.addRecipe(<enderio:item_material:2>*4, <enderio:item_alloy_endergy_ingot:2>, <enderio:item_material:68>*4);

//YETA
recipes.addShaped(<enderio:item_yeta_wrench>, [[<thermalfoundation:material:160>, null, <thermalfoundation:material:160>],[null, <enderio:item_material:10>, null], [null, <thermalfoundation:material:160>, null]]);

//Probe
recipes.addShaped(<enderio:item_conduit_probe>, [[<thermalfoundation:material:224>, null, <thermalfoundation:material:224>],[<thermalfoundation:material:32>, <enderio:item_yeta_wrench>, <thermalfoundation:material:32>], [<thermalfoundation:material:32>, <enderio:item_material:20>, <thermalfoundation:material:32>]]);


//dark bars
recipes.addShaped(<enderio:block_dark_iron_bars> * 8, [[<jaopca:item_stickdarksteel>, <jaopca:item_stickdarksteel>, <jaopca:item_stickdarksteel>], [<jaopca:item_stickdarksteel>, <jaopca:item_stickdarksteel>, <jaopca:item_stickdarksteel>]]);
//end bars
recipes.addShaped(<enderio:block_end_iron_bars> * 8, [[<jaopca:item_stickendsteel>, <jaopca:item_stickendsteel>, <jaopca:item_stickendsteel>], [<jaopca:item_stickendsteel>, <jaopca:item_stickendsteel>, <jaopca:item_stickendsteel>]]);


//Binder
<enderio:item_material:22>.displayName = "Universal Binder";
recipes.addShapedMirrored(<enderio:item_material:22>*8, [[<ore:sand>, <minecraft:clay_ball>, <minecraft:gravel>],[<minecraft:clay_ball>, <enderio:item_material:20>, <minecraft:clay_ball>], [<minecraft:gravel>, <minecraft:clay_ball>, <ore:sand>]]);
recipes.addShapeless(<embers:blend_caminite>*4, [<enderio:item_material:22>,<enderio:item_material:22>]);
recipes.addShapeless(<tconstruct:soil>*8, [<enderio:item_material:22>,<enderio:item_material:22>,<enderio:item_material:22>,<enderio:item_material:22>]);

//Travel Anchors
recipes.addShaped(<enderio:block_travel_anchor>, [[<enderutilities:enderpart>, <enderio:item_material:4>, <enderutilities:enderpart>],[<enderio:item_material:4>, <minecraft:diamond>, <enderio:item_material:4>], [<enderutilities:enderpart>, <enderio:item_material:4>, <enderutilities:enderpart>]]);


//4x FAcad
recipes.addShaped(<enderio:item_conduit_facade> * 4, [[<enderio:item_material:4>, <enderio:item_material:4>, <enderio:item_material:4>],[<enderio:item_material:4>, null, <enderio:item_material:4>], [<enderio:item_material:4>, <enderio:item_material:4>, <enderio:item_material:4>]]);


//Simple Chassis
recipes.addShaped(<enderio:item_material>, [[<minecraft:iron_bars>, <enderio:item_material:75>, <minecraft:iron_bars>],[<moreplates:conductive_iron_gear>, <thermalexpansion:frame:64>, <moreplates:conductive_iron_gear>], [<minecraft:iron_bars>, <enderio:item_material:75>, <minecraft:iron_bars>]]);
//recipes.addShaped(<enderio:item_material>, [[<thermalfoundation:material:288>, <enderio:item_material:75>, <thermalfoundation:material:288>],[<minecraft:iron_bars>, <thermalexpansion:frame:64>, <minecraft:iron_bars>], [<thermalfoundation:material:288>, <enderio:item_material:75>, <thermalfoundation:material:288>]]);

//Cyclic Crafter
recipes.addShaped(<cyclicmagic:auto_crafter>, [[<moreplates:knightslime_plate>, <ore:workbench>, <moreplates:knightslime_plate>],[<enderio:item_capacitor_grainy>, <thermalexpansion:frame:64>, <enderio:item_capacitor_grainy>], [<moreplates:knightslime_plate>, <rockhounding_chemistry:misc_items:1>, <moreplates:knightslime_plate>]]);

//Crafter
recipes.addShaped(<enderio:block_crafter>, [[<moreplates:electrical_steel_plate>, <moreplates:electrical_steel_plate>, <moreplates:electrical_steel_plate>],[<moreplates:redstone_alloy_plate>, <cyclicmagic:auto_crafter>, <moreplates:redstone_alloy_plate>], [<enderio:item_material:11>, <ore:circuitBasic>, <enderio:item_material:11>]]);


//Painter
recipes.addShaped(<enderio:block_painter>, [[<actuallyadditions:item_misc:7>, <actuallyadditions:item_crystal:2>, <actuallyadditions:item_misc:7>],[<enderio:item_material:11>, <enderio:item_material>, <enderio:item_material:11>], [<enderio:item_alloy_ingot>, <enderio:item_alloy_ingot>, <enderio:item_alloy_ingot>]]);

//Advanced Filter
<thaumcraft:jar_brain>.addTooltip(format.darkPurple("Not consumed when used for crafting"));
recipes.addShaped(<enderio:item_advanced_item_filter>, [[<minecraft:redstone>, <minecraft:paper>, <minecraft:redstone>],[<minecraft:paper>, <thaumcraft:jar_brain>.reuse(), <minecraft:paper>], [<minecraft:redstone>, <minecraft:paper>, <minecraft:redstone>]]);

//stone gear
recipes.addShaped(<enderio:item_material:10>, [[null, <ore:stone>, null],[<ore:stone>, <enderio:item_material:9>, <ore:stone>], [null, <ore:stone>, null]]);
//wood gear
recipes.addShaped(<enderio:item_material:9>, [[null, <ore:stickWood>, null],[<ore:stickWood>, null, <ore:stickWood>], [null, <ore:stickWood>, null]]);

<ore:fusedGlass>.add(<tconstruct:clear_glass>);

//AlloySmelter.removeRecipe(<enderio:item_material:75>);
mods.actuallyadditions.AtomicReconstructor.addRecipe(<enderio:item_material:75>, <enderio:item_material:20>, 5000);

//pulsating crystal
Casting.removeTableRecipe(<enderio:item_material:14>);
InductionSmelter.addRecipe(<enderio:item_material:14>, <minecraft:diamond>, <enderio:item_alloy_ingot:5>, 30000);
AlloyFurnace.addRecipe(<minecraft:diamond>, <enderio:item_alloy_ingot:5>, <enderio:item_material:14>);

Crusher.addRecipe(<enderio:item_material:36>, <enderio:item_material:14>, 1024);

//XP Obelisk
recipes.addShaped(<enderio:block_experience_obelisk>, [[null, <enderio:item_xp_transfer>, null],[<enderio:item_alloy_ingot:7>, <enderio:block_tank>, <enderio:item_alloy_ingot:7>], [<enderio:item_alloy_ingot:1>, <enderio:item_material>, <enderio:item_alloy_ingot:1>]]);
recipes.addShaped(<enderio:item_xp_transfer>, [[null, null, <enderio:item_alloy_ingot:7>],[null, <enderio:item_material:71>, null], [<enderio:item_alloy_ingot:1>, null, null]]);


//cant make frames the normal way
InductionSmelter.removeRecipe(<enderio:item_material:51>, <enderio:item_material>);
InductionSmelter.removeRecipe(<enderio:item_material:52>, <enderio:item_material>);
//mods.enderio.AlloySmelter.removeRecipe(<enderio:item_material:1>);
//mods.enderio.AlloySmelter.removeRecipe(<enderio:item_material:53>);

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

//Conduits
recipes.addShaped(<enderio:item_endergy_conduit:11> * 8, [[<enderio:item_material:4>, <enderio:item_material:75>, <enderio:item_material:4>],[<enderio:item_alloy_endergy_ingot:3>, <enderio:item_endergy_conduit:10>, <enderio:item_alloy_endergy_ingot:3>], [<enderio:item_material:4>, <enderio:item_material:75>, <enderio:item_material:4>]]);
recipes.addShaped(<enderio:item_endergy_conduit:11> * 8, [[<enderio:item_material:4>, <enderio:item_material:75>, <enderio:item_material:4>],[<enderio:item_alloy_endergy_ingot:3>, <enderio:item_alloy_endergy_ingot:3>, <enderio:item_alloy_endergy_ingot:3>], [<enderio:item_material:4>, <enderio:item_material:75>, <enderio:item_material:4>]]);
recipes.addShaped(<enderio:item_endergy_conduit:10> * 8, [[<enderio:item_material:4>, <enderio:item_material:75>, <enderio:item_material:4>],[<enderio:item_alloy_endergy_ingot:2>, <enderio:item_endergy_conduit:9>, <enderio:item_alloy_endergy_ingot:2>], [<enderio:item_material:4>, <enderio:item_material:75>, <enderio:item_material:4>]]);
recipes.addShaped(<enderio:item_endergy_conduit:10> * 8, [[<enderio:item_material:4>, <enderio:item_material:75>, <enderio:item_material:4>],[<enderio:item_alloy_endergy_ingot:2>, <enderio:item_alloy_endergy_ingot:2>, <enderio:item_alloy_endergy_ingot:2>], [<enderio:item_material:4>, <enderio:item_material:75>, <enderio:item_material:4>]]);
recipes.addShaped(<enderio:item_endergy_conduit:9> * 8, [[<enderio:item_material:4>, <enderio:item_material:75>, <enderio:item_material:4>],[<enderio:item_alloy_endergy_ingot:4>, <enderio:item_endergy_conduit:8>, <enderio:item_alloy_endergy_ingot:4>], [<enderio:item_material:4>, <enderio:item_material:75>, <enderio:item_material:4>]]);
recipes.addShaped(<enderio:item_endergy_conduit:9> * 8, [[<enderio:item_material:4>, <enderio:item_material:75>, <enderio:item_material:4>],[<enderio:item_alloy_endergy_ingot:4>, <enderio:item_alloy_endergy_ingot:4>, <enderio:item_alloy_endergy_ingot:4>], [<enderio:item_material:4>, <enderio:item_material:75>, <enderio:item_material:4>]]);
recipes.addShaped(<enderio:item_endergy_conduit:8> * 8, [[<enderio:item_material:4>, <enderio:item_material:75>, <enderio:item_material:4>],[<enderio:item_alloy_endergy_ingot:1>, <enderio:item_power_conduit:2>, <enderio:item_alloy_endergy_ingot:1>], [<enderio:item_material:4>, <enderio:item_material:75>, <enderio:item_material:4>]]);
recipes.addShaped(<enderio:item_endergy_conduit:8> * 8, [[<enderio:item_material:4>, <enderio:item_material:75>, <enderio:item_material:4>],[<enderio:item_alloy_endergy_ingot:1>, <enderio:item_alloy_endergy_ingot:1>, <enderio:item_alloy_endergy_ingot:1>], [<enderio:item_material:4>, <enderio:item_material:75>, <enderio:item_material:4>]]);
recipes.addShaped(<enderio:item_power_conduit:2> * 8, [[<enderio:item_material:4>, <enderio:item_material:75>, <enderio:item_material:4>],[<enderio:item_alloy_ingot:2>, <enderio:item_alloy_ingot:2>, <enderio:item_alloy_ingot:2>], [<enderio:item_material:4>, <enderio:item_material:75>, <enderio:item_material:4>]]);
recipes.addShaped(<enderio:item_power_conduit:2> * 8, [[<enderio:item_material:4>, <enderio:item_material:75>, <enderio:item_material:4>],[<enderio:item_alloy_ingot:2>, <enderio:item_power_conduit:1>, <enderio:item_alloy_ingot:2>], [<enderio:item_material:4>, <enderio:item_material:75>, <enderio:item_material:4>]]);
recipes.addShaped(<enderio:item_power_conduit:2> * 8, [[<enderio:item_material:4>, <enderio:item_material:75>, <enderio:item_material:4>],[<enderio:item_alloy_ingot:2>, <enderio:item_endergy_conduit:7>, <enderio:item_alloy_ingot:2>], [<enderio:item_material:4>, <enderio:item_material:75>, <enderio:item_material:4>]]);
recipes.addShaped(<enderio:item_power_conduit:1> * 8, [[<enderio:item_material:4>, <enderio:item_material:75>, <enderio:item_material:4>],[<enderio:item_alloy_ingot:1>, <enderio:item_power_conduit>, <enderio:item_alloy_ingot:1>], [<enderio:item_material:4>, <enderio:item_material:75>, <enderio:item_material:4>]]);
recipes.addShaped(<enderio:item_power_conduit:1> * 8, [[<enderio:item_material:4>, <enderio:item_material:75>, <enderio:item_material:4>],[<enderio:item_alloy_ingot:1>, <enderio:item_alloy_ingot:1>, <enderio:item_alloy_ingot:1>], [<enderio:item_material:4>, <enderio:item_material:75>, <enderio:item_material:4>]]);
recipes.addShaped(<enderio:item_endergy_conduit:7> * 8, [[<enderio:item_material:4>, <enderio:item_material:75>, <enderio:item_material:4>],[<enderio:item_alloy_endergy_ingot:5>, <enderio:item_alloy_endergy_ingot:5>, <enderio:item_alloy_endergy_ingot:5>], [<enderio:item_material:4>, <enderio:item_material:75>, <enderio:item_material:4>]]);
recipes.addShaped(<enderio:item_endergy_conduit:7> * 8, [[<enderio:item_material:4>, <enderio:item_material:75>, <enderio:item_material:4>],[<enderio:item_alloy_endergy_ingot:5>, <enderio:item_power_conduit>, <enderio:item_alloy_endergy_ingot:5>], [<enderio:item_material:4>, <enderio:item_material:75>, <enderio:item_material:4>]]);
recipes.addShaped(<enderio:item_power_conduit> * 8, [[<enderio:item_material:4>, <enderio:item_material:75>, <enderio:item_material:4>],[<enderio:item_alloy_ingot:4>, <enderio:item_alloy_ingot:4>, <enderio:item_alloy_ingot:4>], [<enderio:item_material:4>, <enderio:item_material:75>, <enderio:item_material:4>]]);
recipes.addShaped(<enderio:item_power_conduit> * 8, [[<enderio:item_material:4>, <enderio:item_material:75>, <enderio:item_material:4>],[<enderio:item_alloy_ingot:4>, <enderio:item_endergy_conduit:6>, <enderio:item_alloy_ingot:4>], [<enderio:item_material:4>, <enderio:item_material:75>, <enderio:item_material:4>]]);
recipes.addShaped(<enderio:item_endergy_conduit:6> * 8, [[<enderio:item_material:4>, <enderio:item_material:20>, <enderio:item_material:4>],[<thermalfoundation:material:161>, <thermalfoundation:material:161>, <thermalfoundation:material:161>], [<enderio:item_material:4>, <enderio:item_material:20>, <enderio:item_material:4>]]);

//Cheaper stuff
recipes.addShaped(<enderio:block_niard>, [[<minecraft:bucket>, <enderio:block_tank>, <minecraft:bucket>],[<minecraft:piston>, <enderio:item_material>, <minecraft:piston>], [<enderio:item_alloy_ingot>, <enderio:block_dark_iron_bars>, <enderio:item_alloy_ingot>]]);
recipes.addShaped(<enderio:block_impulse_hopper>, [[<enderio:item_alloy_ingot>, <minecraft:hopper>, <enderio:item_alloy_ingot>],[<enderio:item_material:12>, <enderio:item_material>, <enderio:item_material:12>], [<enderio:item_alloy_ingot>, <enderio:item_alloy_ingot:3>, <enderio:item_alloy_ingot>]]);
recipes.addShaped(<enderio:block_buffer:1>, [[<minecraft:iron_ingot>, <enderio:item_alloy_ingot>, <minecraft:iron_ingot>],[<enderio:item_alloy_ingot>, <enderio:item_material>, <enderio:item_alloy_ingot>], [<minecraft:iron_ingot>, <enderio:item_alloy_ingot>, <minecraft:iron_ingot>]]);
recipes.addShaped(<enderio:block_power_monitor>, [[<enderio:item_alloy_ingot>, <enderio:item_conduit_probe>, <enderio:item_alloy_ingot>],[<enderio:item_alloy_ingot>, <enderio:item_material>, <enderio:item_alloy_ingot>], [<enderio:item_alloy_ingot>, <enderio:item_power_conduit>, <enderio:item_alloy_ingot>]]);

// Fixed EnderIOs Recipe
recipes.addShapeless(<enderio:item_ender_food>, [<minecraft:bowl>,<minecraft:milk_bucket>,<minecraft:wheat>,<ore:dustEnder>]);

//New Gas Conduit recipe
recipes.addShaped(<enderio:item_gas_conduit:2> * 8, [[<enderio:item_liquid_conduit:2>, <enderio:item_liquid_conduit:2>, <enderio:item_liquid_conduit:2>],[<rockhounding_chemistry:gasline_duct>, <mekanism:atomicalloy>, <rockhounding_chemistry:gasline_duct>], [<enderio:item_liquid_conduit:2>, <enderio:item_liquid_conduit:2>, <enderio:item_liquid_conduit:2>]]);


# [Alloy Smelter] from [Industrial Machine Chassis][+5]
craft.remake(<enderio:block_alloy_smelter>, ["pretty",
  "E ☼ E",
  "□ M □",
  "¤ B ¤"], {
  "E": <contenttweaker:plate_engineering>, # Engineers Masterpiece
  "☼": <ore:gearThermoconducting>,         # Thermoconducting Gear
  "□": <contenttweaker:plate_mek_alloy>,   # Heavy Alloy Plate
  "M": <ore:itemMachineChassi>,            # Industrial Machine Chassis
  "¤": <ore:gearVibrant>,                  # Vibrant Bimetal Gear
  "B": <ore:processorBasic>,               # Basic Processor
});

# [Enhanced Alloy Smelter] from [Alloy Smelter][+5]
craft.remake(<enderio:block_enhanced_alloy_smelter>, ["pretty",
  "□ V □",
  "B A B",
  "¤ E ¤"], {
  "□": <ore:plateStellarAlloy>,         # Stellar Alloy Plate
  "V": <ore:componentEVCapacitor>,      # EV Capacitor
  "B": <extendedcrafting:material:14>,  # Basic Component
  "A": <enderio:block_alloy_smelter>,   # Alloy Smelter
  "¤": <ore:gearStellite>,              # Stellite Gear
  "E": <ore:itemEnhancedMachineChassi>, # Enhanced Machine Chassis
});

# [Enchanter] from [Enchantment Table][+3]
craft.remake(<enderio:block_enchanter>, ["pretty",
  "* B *",
  "¤ E ¤",
  "  ¤  "], {
  "*": <actuallyadditions:item_crystal_empowered:5>, # Empowered Enori Crystal
  "B": <minecraft:book>,             # Book
  "¤": <ore:gearDark>,               # Dark Bimetal Gear
  "E": <minecraft:enchanting_table>, # Enchantment Table
});

# [SAG Mill] from [Industrial Machine Chassis][+5]
craft.remake(<enderio:block_sag_mill>, ["pretty",
  "D T D",
  "□ M □",
  "¤ B ¤"], {
  "D": <contenttweaker:component_mek_alloy>, # Dense Component
  "T": <ore:craftingTungstenGrinder>,        # Tungsten Grinding Head
  "□": <contenttweaker:plate_mek_alloy>,     # Heavy Alloy Plate
  "M": <ore:itemMachineChassi>,              # Industrial Machine Chassis
  "¤": <ore:gearVibrant>,                    # Vibrant Bimetal Gear
  "B": <ore:processorBasic>,                 # Basic Processor
});

# [Enhanced SAG Mill] from [SAG Mill][+5]
craft.remake(<enderio:block_enhanced_sag_mill>, ["pretty",
  "□ V □",
  "B S B",
  "¤ E ¤"], {
  "□": <ore:plateStellarAlloy>,         # Stellar Alloy Plate
  "V": <ore:componentEVCapacitor>,      # EV Capacitor
  "B": <extendedcrafting:material:14>,  # Basic Component
  "S": <enderio:block_sag_mill>,        # SAG Mill
  "¤": <ore:gearStellite>,              # Stellite Gear
  "E": <ore:itemEnhancedMachineChassi>, # Enhanced Machine Chassis
});

# [The Vat] from [Industrial Machine Chassis][+5]
craft.remake(<enderio:block_vat>, ["pretty",
  "п A п",
  "□ M □",
  "¤ B ¤"], {
  "п": <ore:plateThermoconducting>,      # Thermoconducting Plate
  "A": <mekanism:machineblock2:11>.withTag({tier: 1}), # Advanced Fluid Tank
  "□": <contenttweaker:plate_mek_alloy>, # Heavy Alloy Plate
  "M": <ore:itemMachineChassi>,          # Industrial Machine Chassis
  "¤": <ore:gearVibrant>,                # Vibrant Bimetal Gear
  "B": <ore:processorBasic>,             # Basic Processor
});

# [The Enhanced Vat] from [The Vat][+5]
craft.remake(<enderio:block_enhanced_vat>, ["pretty",
  "□ V □",
  "B T B",
  "¤ E ¤"], {
  "□": <ore:plateStellarAlloy>,         # Stellar Alloy Plate
  "V": <ore:componentEVCapacitor>,      # EV Capacitor
  "B": <extendedcrafting:material:14>,  # Basic Component
  "T": <enderio:block_vat>,             # The Vat
  "¤": <ore:gearStellite>,              # Stellite Gear
  "E": <ore:itemEnhancedMachineChassi>, # Enhanced Machine Chassis
});
# [Farming Station] from [Soul Machine Chassis][+5]
craft.remake(<enderio:block_farm_station>, ["pretty",
  "* Z *",
  "□ S □",
  "¤ ╳ ¤"], {
  "*": <ore:itemVibrantCrystal>,    # Vibrant Crystal
  "Z": <ore:skullZombieController>, # Z-Logic Controller
  "□": <ore:plateSoularium>,        # Soularium Plate
  "S": <ore:itemSoulMachineChassi>, # Soul Machine Chassis
  "¤": <ore:gearEnergized>,         # Energized Bimetal Gear
  "╳": <ore:itemPulsatingCrystal>,  # Pulsating Crystal
});

# [Slice'N'Splice] from [Soul Machine Chassis][+4]
craft.remake(<enderio:block_slice_and_splice>, ["pretty",
  "□ k □",
  "□ S □",
  "¤ B ¤"], {
  "□": <ore:plateStellite>,         # Stellite Plate
  "k": <ore:itemSkull>,             # Enderman Head
  "S": <ore:itemSoulMachineChassi>, # Soul Machine Chassis
  "¤": <ore:gearEnergized>,         # Energized Bimetal Gear
  "B": <ore:processorBasic>,        # Basic Processor
});

# [Soul Binder] from [Soul Machine Chassis][+6]
craft.remake(<enderio:block_soul_binder>, ["pretty",
  "□ k □",
  "e S h",
  "¤ B ¤"], {
  "□": <ore:plateStellite>,            # Stellite Plate
  "k": <enderio:block_enderman_skull>, # Enderman Head
  "e": <minecraft:skull:4>,            # Creeper Head
  "S": <ore:itemSoulMachineChassi>,    # Soul Machine Chassis
  "h": <minecraft:skull:2>,            # Zombie Head
  "¤": <ore:gearStellite>,             # Stellite Gear
  "B": <ore:processorBasic>,           # Basic Processor
});

# [Basic Capacitor Bank] from [Restonia Crystal Block][+2]
craft.remake(<enderio:block_cap_bank:1>, ["pretty",
  "□ B □",
  "B * B",
  "□ B □"], {
  "□": <ore:plateElectricalSteel>,        # Electrical Steel Plate
  "B": <enderio:item_basic_capacitor>,    # Basic Capacitor
  "*": <actuallyadditions:block_crystal>, # Restonia Crystal Block
});

# [Capacitor Bank] from [Double-Layer Capacitor][+3]
craft.remake(<enderio:block_cap_bank:2>, ["pretty",
  "□ A □",
  "B D B",
  "□ A □"], {
  "□": <ore:plateEnergeticAlloy>,              # Energetic Alloy Plate
  "A": <rockhounding_chemistry:misc_items:10>, # Advanced Logic Chip
  "B": <enderio:block_cap_bank:1>,             # Basic Capacitor Bank
  "D": <enderio:item_basic_capacitor:1>,       # Double-Layer Capacitor
});

# [Vibrant Capacitor Bank] from [Vibrant Crystal][+3]
craft.remake(<enderio:block_cap_bank:3>, ["pretty",
  "□ O □",
  "C * C",
  "□ O □"], {
  "□": <ore:plateVibrantAlloy>,          # Vibrant Alloy Plate
  "O": <enderio:item_basic_capacitor:2>, # Octadic Capacitor
  "C": <enderio:block_cap_bank:2>,       # Capacitor Bank
  "*": <ore:itemVibrantCrystal>,         # Vibrant Crystal
});

# [Basic Capacitor] from [Circuit Board][+3]
craft.remake(<enderio:item_basic_capacitor>, ["pretty",
  "▲ □ ▲",
  "╱ C ╱",
  "╱   ╱"], {
  "▲": <ore:dustBedrock>,                      # Grains of Infinity
  "□": <ore:plateCopper>, # Copper Plate
  "╱": <ore:stickGold>,                        # Gold Rod
  "C": <immersiveengineering:material:27>,     # Circuit Board
});

# [Silver Capacitor] from [Circuit Board][+3]
craft.remake(<enderio:item_capacitor_silver>, ["pretty",
  "▲ □ ▲",
  "╱ C ╱",
  "╱   ╱"], {
  "▲": <ore:dustBedrock>,                    # Grains of Infinity
  "□": <ore:plateLead>, # Lead Plate
  "╱": <ore:stickSilver>,                    # Silver Rod
  "C": <immersiveengineering:material:27>,   # Circuit Board
});

##########################################################################################
print("==================== end of mods enderIO.zs ====================");
