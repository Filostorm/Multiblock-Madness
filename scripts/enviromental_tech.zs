import crafttweaker.item.IItemStack;
import mods.rockhounding_chemistry.PullingCrucible;
import crafttweaker.item.IIngredient;

print("==================== loading mods enviromental tech.zs ====================");
##########################################################################################

val itemstoRemove =
[
<environmentaltech:void_res_miner_cont_1>,
<environmentaltech:void_res_miner_cont_2>,
<environmentaltech:void_res_miner_cont_3>,
<environmentaltech:void_res_miner_cont_4>,
<environmentaltech:void_res_miner_cont_5>,
<environmentaltech:void_res_miner_cont_6>,
<environmentaltech:void_botanic_miner_cont_1>,
<environmentaltech:void_botanic_miner_cont_2>,
<environmentaltech:void_botanic_miner_cont_3>,
<environmentaltech:void_botanic_miner_cont_4>,
<environmentaltech:void_botanic_miner_cont_6>,
<environmentaltech:void_botanic_miner_cont_5>,
<environmentaltech:laser_core>,
//<etlunar:lunarvoltaic_cell>,
<environmentaltech:connector>,
<environmentaltech:laser_lens_crystal>,
<environmentaltech:photovoltaic_cell>,
<environmentaltech:diode>,
]
 as IItemStack[];

for item in itemstoRemove {
	recipes.remove(item);
}

// Diode
recipes.addShaped(<environmentaltech:diode>, [[<advancedrocketry:productplate>, <powersuits:powerarmorcomponent:13>, <advancedrocketry:productplate>],[<advancedrocketry:productplate>, <threng:material:5>, <advancedrocketry:productplate>], [<advancedrocketry:productplate>, <astralsorcery:iteminfusedglass>, <advancedrocketry:productplate>]]);

// Laser Core
recipes.addShaped(<environmentaltech:laser_core>, [[<advgenerators:iron_frame>, <threng:material:5>, <advgenerators:iron_frame>],[<environmentaltech:connector>, <threng:material:5>, <environmentaltech:connector>], [<advgenerators:iron_frame>, <threng:material:5>, <advgenerators:iron_frame>]]);
recipes.addShaped(<environmentaltech:laser_core>*4, [[<advgenerators:iron_frame>, <rockhounding_chemistry:alloy_items_gems:1>, <advgenerators:iron_frame>],[<environmentaltech:connector>, <rockhounding_chemistry:alloy_items_gems:1>, <environmentaltech:connector>], [<advgenerators:iron_frame>, <rockhounding_chemistry:alloy_items_gems:1>, <advgenerators:iron_frame>]]);

/* Lunar Biz
//lunarvoltaic cell
recipes.addShaped(<etlunar:lunarvoltaic_cell>, [[null, <threng:material:1>, null],[<threng:material:1>, <extendedcrafting:material:2>, <threng:material:1>], [null, <threng:material:1>, null]]);
*/
val MinerTooltip =
[
<environmentaltech:void_ore_miner_cont_1>,
<environmentaltech:void_ore_miner_cont_2>,
<environmentaltech:void_ore_miner_cont_3>,
<environmentaltech:void_ore_miner_cont_4>,
<environmentaltech:void_ore_miner_cont_5>,
<environmentaltech:void_ore_miner_cont_6>,
<environmentaltech:void_res_miner_cont_1>,
<environmentaltech:void_res_miner_cont_2>,
<environmentaltech:void_res_miner_cont_3>,
<environmentaltech:void_res_miner_cont_4>,
<environmentaltech:void_res_miner_cont_5>,
<environmentaltech:void_res_miner_cont_6>,
<environmentaltech:void_botanic_miner_cont_1>,
<environmentaltech:void_botanic_miner_cont_2>,
<environmentaltech:void_botanic_miner_cont_3>,
<environmentaltech:void_botanic_miner_cont_4>,
<environmentaltech:void_botanic_miner_cont_6>,
<environmentaltech:void_botanic_miner_cont_5>,
]
 as IItemStack[];

for item in MinerTooltip {
item.addTooltip(format.green("Sneak-right click to change modes"));
}

// Photo cell
recipes.addShaped(<environmentaltech:photovoltaic_cell>, [[<mekanismgenerators:solarpanel>, <techreborn:reinforced_glass>, <mekanismgenerators:solarpanel>],[<techreborn:reinforced_glass>, <thermalfoundation:material:327>, <techreborn:reinforced_glass>], [<mekanismgenerators:solarpanel>, <techreborn:reinforced_glass>, <mekanismgenerators:solarpanel>]]);

// Crystal Lens
recipes.addShaped(<environmentaltech:laser_lens_crystal>, [[<environmentaltech:kyronite_crystal>, <environmentaltech:kyronite_crystal>, <environmentaltech:kyronite_crystal>],[<environmentaltech:kyronite_crystal>, <ore:etLaserLens>, <environmentaltech:kyronite_crystal>], [<environmentaltech:kyronite_crystal>, <environmentaltech:kyronite_crystal>, <environmentaltech:kyronite_crystal>]]);

# [Clear Laser Lens] from [Hardened Iridium Glass]
craft.remake(<environmentaltech:laser_lens>, ["pretty",
  "■   ■",
  "■ ■ ■",
  "■   ■"], {
  "■": <ore:blockGlassHardened>, # Hardened Iridium Glass
});

# [Clear Laser Lens]*4 from [Didymium Glass (Borderless)]
craft.remake(<environmentaltech:laser_lens> * 4, ["pretty",
  "D   D",
  "D D D",
  "D   D"], {
  "D": <rockhounding_chemistry:didymium_glass>, # Didymium Glass (Borderless)
});

# [Structure Panel] from [Connector][+2]
craft.remake(<environmentaltech:structure_panel>, ["pretty",
  "p D p",
  "D C D",
  "p D p"], {
  "p": <ore:platetungstensteel> | <ore:plateTungstensteel>, # Tungstensteel Plate
  "D": <enderio:block_dark_iron_bars>, # Dark Iron Bars
  "C": <environmentaltech:connector>,  # Connector
});

# [Null Modifier] from [Interconnect][+4]
craft.remake(<environmentaltech:modifier_null>, ["pretty",
  "□ ▬ □",
  "E I E",
  "□ n □"], {
  "□": <ore:plateSuperAlloy>,              # Super Alloy Plate
  "▬": <ore:ingotMirion>,                  # Mirion Ingot
  "E": <bloodmagic:slate:4>,               # Ethereal Slate
  "I": <environmentaltech:interconnect>,   # Interconnect
  "n": <contenttweaker:plate_engineering>, # Engineers Masterpiece
});

//Block Uncrafting
recipes.addShapeless(<environmentaltech:litherite_crystal> * 9, [<environmentaltech:litherite>]);

//Start of stuff for making the crystals
val crystals =[
	<environmentaltech:litherite_crystal>,
	<environmentaltech:erodium_crystal>,
	<environmentaltech:kyronite_crystal>,
	<environmentaltech:pladium_crystal>,
	<environmentaltech:ionite_crystal>,
	<environmentaltech:aethium_crystal>,
] as IItemStack[];
for item in crystals {
item.addTooltip(format.gold("Craftable"));
}

//Litherite
PullingCrucible.add(<actuallyadditions:item_crystal_empowered:4>, <thermalfoundation:material:1028>, <environmentaltech:litherite_crystal>*4);

//Tier 3
mods.nuclearcraft.Infuser.addRecipe(<environmentaltech:erodium_crystal>, <liquid:refined_life_essence>*250, <environmentaltech:kyronite_crystal>);

//Tier 4
mods.nuclearcraft.FissionIrradiator.addRecipe(<environmentaltech:kyronite_crystal>, <environmentaltech:pladium_crystal>, 200000, 0, 0.15, 0);



# [Clear Laser Lens] from [Hardened Iridium Glass]*2
craft.remake(<environmentaltech:laser_lens>, ["pretty",
  "■   ■",
  "■ ■ ■",
  "■   ■"], {
  "■": <thermalfoundation:glass:7>, # Hardened Iridium Glass
});




//// CONTROLLERS

# [Void Ore Miner Controller Tier 1] from [Diode][+5]
craft.remake(<environmentaltech:void_ore_miner_cont_1>, ["pretty",
  "E S E",
  "¤ D ¤",
  "■ L ■"], {
  "E": <enderutilities:enderpart:16>, # Ender Core (Enhanced)
  "S": <rftools:shape_card:2>,        # Shape Card (Quarry)
  "¤": <ore:gearHastelloy>,           # Hastelloy Gear
  "D": <environmentaltech:diode>,     # Diode
  "■": <ore:blockLitherite>,          # Litherite
  "L": <ore:etLaserLens>,             # Clear Laser Lens
});

# [Void Ore Miner Controller Tier 2] from [Void Ore Miner Controller Tier 1][+5]
craft.remake(<environmentaltech:void_ore_miner_cont_2>, ["pretty",
  "E Q E",
  "¤ V ¤",
  "■ L ■"], {
  "E": <enderio:item_capacitor_vivid>,            # Endergised Capacitor
  "Q": <mekanism:machineblock3>,                  # Quantum Entangloporter
  "¤": <contenttweaker:gear_thermal_alloy>,       # Hardened Thermalloy Gear
  "V": <environmentaltech:void_ore_miner_cont_1>, # Void Ore Miner Controller Tier 1
  "■": <ore:blockErodium>,                        # Erodium Tiles
  "L": <ore:etLaserLens>,                         # Clear Laser Lens
});

# [Void Ore Miner Controller Tier 3] from [Void Ore Miner Controller Tier 2][+5]
craft.remake(<environmentaltech:void_ore_miner_cont_3>, ["pretty",
  "C P C",
  "¤ V ¤",
  "■ L ■"], {
  "C": <enderio:item_capacitor_crystalline>,      # Crystalline Capacitor
  "P": <threng:machine:3>,                        # Preemptive Assembly Unit
  "¤": <contenttweaker:gear_mek_alloy>,           # Heavy Alloy Gear
  "V": <environmentaltech:void_ore_miner_cont_2>, # Void Ore Miner Controller Tier 2
  "■": <ore:blockKyronite>,                       # Kyronite Paver
  "L": <ore:etLaserLens>,                         # Clear Laser Lens
});

# [Emerald Growth Catalyst]*59 from [Void Ore Miner Controller Tier 4][+9]
craft.remake(<environmentaltech:void_ore_miner_cont_4>, ["pretty",
  "□ □ □ □ □",
  "□ A E l □",
  "□ B V U □",
  "□ ▲ L ▲ □",
  "■ ■ L ■ ■"], {
  "□": <ore:plateStellite>,                       # Stellite Plate
  "A": <extendedcrafting:material:9>,             # Advanced Catalyst
  "E": <enderutilities:enderpart:16>,             # Ender Core (Enhanced)
  "l": <extendedcrafting:material:10>,            # Elite Catalyst
  "B": <extendedcrafting:material:8>,             # Basic Catalyst
  "V": <environmentaltech:void_ore_miner_cont_3>, # Void Ore Miner Controller Tier 4
  "U": <extendedcrafting:material:11>,            # Ultimate Catalyst
  "▲": <ore:dustMana>,                            # Mana Dust
  "L": <ore:etLaserLens>,                         # Clear Laser Lens
  "■": <ore:blockPladium>,                        # Pladium
});

# [Emerald Growth Catalyst]*59 from [Void Ore Miner Controller Tier 4][+10]
craft.remake(<environmentaltech:void_ore_miner_cont_5>, ["pretty",
  "□ □ □ □ □ □ □",
  "□ P E d E P □",
  "□ E P d P E □",
  "□ § § V § § □",
  "□ ¤ § L § ¤ □",
  "□ n F L F n □",
  "■ ■ ■ L ■ ■ ■"], {
  "□": <ore:plateStellarAlloy>,                     # Stellar Alloy Plate
  "P": <ore:growthcatalystPlatinum>,                # Platinum Growth Catalyst
  "E": <ore:growthcatalystEmerald>,                 # Emerald Growth Catalyst
  "d": <enderutilities:enderpart:17>,               # Ender Core (Advanced)
  "§": <contenttweaker:ingot_reinforced_starmetal>, # Reinforced Starmetal
  "V": <environmentaltech:void_ore_miner_cont_4>,   # Void Ore Miner Controller Tier 4
  "¤": <ore:gearTitaniumIridium>,                   # Titanium Iridium Alloy Gear
  "L": <ore:etLaserLens>,                           # Clear Laser Lens
  "n": <extendedcrafting:material:40>,              # Endest Star
  "F": <techreborn:fusion_coil>,                    # Fusion Coil
  "■": <ore:blockIonite>,                           # Ionite Paver
});

# [Emerald Growth Catalyst]*59 from [Void Ore Miner Controller Tier 5][+13]
craft.remake(<environmentaltech:void_ore_miner_cont_6>, ["pretty",
  "C C C C C C C C C",
  "C ▬ ▬ E S E ▬ ▬ C",
  "C ▬ - ¤ ☼ ¤ - ▬ C",
  "C E ¤ M § M ¤ E C",
  "C S ☼ § V § ☼ S C",
  "C E D M L M D E C",
  "C ▬ - * L * - ▬ C",
  "C ▬ ▬ S L S ▬ ▬ C",
  "■ ■ ■ ■ L ■ ■ ■ ■"], {
  "C": <extendedcrafting:material:18>,            # Crystaltine Component
  "▬": <ore:ingotMirion>,                         # Mirion Ingot
  "E": <enderutilities:enderpart:17>,             # Ender Core (Advanced)
  "S": <enderio:item_capacitor_stellar>,          # Stellar Capacitor
  "-": <extendedcrafting:material:48>,            # Twilight Ingot
  "¤": <contenttweaker:gear_thermal_alloy>,       # Hardened Thermalloy Gear
  "☼": <contenttweaker:gear_mek_alloy>,           # Heavy Alloy Gear
  "M": <appliedenergistics2:quantum_ring>,        # ME Quantum Ring
  "§": <contenttweaker:plate_engineering>,        # Mechanical Plating
  "V": <environmentaltech:void_ore_miner_cont_5>, # Void Ore Miner Controller Tier 5
  "D": <contenttweaker:component_mek_alloy>,      # Dense Component
  "L": <environmentaltech:laser_core>,            # Laser Core
  "*": <ore:gearCrystalMatrix>,                   # Crystal Matrix Gear
  "■": <ore:blockAethium>,                        # Aethium Tiles
});




// Structure Frames //

# [Structure Frame Tier 1] from [Structure Panel][+4]
craft.remake(<environmentaltech:structure_frame_1>, ["pretty",
  "□ I □",
  "* S *",
  "□ ╳ □"], {
  "□": <ore:plateThermoconducting>,         # Thermoconducting Plate
  "I": <enderutilities:enderpart:11>,       # Inactive Ender Core (Enhanced)
  "*": <ore:crystalLitherite>,              # Litherite Crystal
  "S": <environmentaltech:interconnect>,    # Interconnect
  "╳": <ore:itemPrecientCrystal>,           # Prescient Crystal
});

# [Structure Frame Tier 2] from [Structure Frame Tier 1][+4]
craft.remake(<environmentaltech:structure_frame_2>, ["pretty",
  "□ D □",
  "* ◙ *",
  "□ ╳ □"], {
  "□": <contenttweaker:plate_thermal_alloy>,  # Fluid Enriched Alloy Plate
  "D": <techreborn:part:3>,                   # Data Orb
  "*": <ore:crystalErodium>,                  # Erodium Crystal
  "◙": <environmentaltech:structure_frame_1>, # Structure Frame Tier 1
  "╳": <ore:itemWeatherCrystal>,              # Weather Crystal
});

# [Structure Frame Tier 3] from [Structure Frame Tier 2][+4]
craft.remake(<environmentaltech:structure_frame_3>, ["pretty",
  "□ E □",
  "* ◙ *",
  "□ B □"], {
  "□": <contenttweaker:plate_mek_alloy>,      # Heavy Alloy Plate
  "E": <ore:circuitElite>,                    # Elite Control Circuit
  "*": <ore:crystalKyronite>,                 # Kyronite Crystal
  "◙": <environmentaltech:structure_frame_2>, # Structure Frame Tier 2
  "B": <extendedcrafting:material:14>,        # Basic Component
});

# [Structure Frame Tier 4] from [Structure Frame Tier 3][+4]
craft.remake(<environmentaltech:structure_frame_4>, ["pretty",
  "□ B □",
  "* ◙ *",
  "□ A □"], {
  "□": <ore:plateMithril>,                    # Mana Infused Plate
  "B": <ore:processorBasic>,                  # Basic Processor
  "*": <ore:crystalPladium>,                  # Pladium Crystal
  "◙": <environmentaltech:structure_frame_3>, # Structure Frame Tier 3
  "A": <extendedcrafting:material:15>,        # Advanced Component
});

# [Structure Frame Tier 5] from [Structure Frame Tier 4][+4]
craft.remake(<environmentaltech:structure_frame_5>, ["pretty",
  "□ U □",
  "* ◙ *",
  "□ E □"], {
  "□": <ore:plateOsmiridium>,                 # Osmiridium Plate
  "U": <ore:circuitUltimate>,                 # Ultimate Control Circuit
  "*": <ore:crystalIonite>,                   # Ionite Crystal
  "◙": <environmentaltech:structure_frame_4>, # Structure Frame Tier 4
  "E": <extendedcrafting:material:16>,        # Elite Component
});

# [Structure Frame Tier 6] from [Structure Frame Tier 5][+4]
craft.remake(<environmentaltech:structure_frame_6>, ["pretty",
  "□ I □",
  "* ◙ *",
  "□ U □"], {
  "□": <ore:plateStellarAlloy>,               # Stellar Alloy Plate
  "I": <enderutilities:enderpart:12>,         # Inactive Ender Core (Advanced)
  "*": <ore:crystalAethium>,                  # Aethium Crystal
  "◙": <environmentaltech:structure_frame_5>, # Structure Frame Tier 5
  "U": <extendedcrafting:material:17>,        # Ultimate Component
});



##########################################################################################
print("==================== end of mods enviromental tech.zs ====================");
