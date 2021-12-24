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
  "Ϟ S Ϟ",
  "E D E",
  "■ L ■"], {
  "Ϟ": <thermalexpansion:cell>.withTag({Level: 4 as byte}), # Energy Cell (Resonant)
  "S": <rftools:shape_card:2>,        # Shape Card (Quarry)
  "E": <enderutilities:enderpart:16>, # Ender Core (Enhanced)
  "D": <environmentaltech:diode>,     # Diode
  "■": <ore:blockLitherite>,          # Litherite
  "L": <ore:etLaserLens>,             # Clear Laser Lens
});

# [Void Ore Miner Controller Tier 2] from [Void Ore Miner Controller Tier 1][+5]
craft.remake(<environmentaltech:void_ore_miner_cont_2>, ["pretty",
  "V P V",
  "D o D",
  "■ L ■"], {
  "V": <enderio:block_cap_bank:3>,                # Vibrant Capacitor Bank
  "P": <threng:machine:3>,                        # Preemptive Assembly Unit
  "D": <ore:craftingDiamondGrinder>,              # Diamond Grinding Head
  "o": <environmentaltech:void_ore_miner_cont_1>, # Void Ore Miner Controller Tier 1
  "■": <ore:blockErodium>,                        # Erodium
  "L": <ore:etLaserLens>,                         # Clear Laser Lens
});

# [Void Ore Miner Controller Tier 3] from [Void Ore Miner Controller Tier 2][+5]
craft.remake(<environmentaltech:void_ore_miner_cont_3>, ["pretty",
  "Ϟ Q Ϟ",
  "T V T",
  "■ L ■"], {
  "Ϟ": <mekanism:energycube>.withTag({tier: 3}),  # Ultimate Energy Cube
  "Q": <mekanism:machineblock3>,                  # Quantum Entangloporter
  "T": <ore:craftingTungstenGrinder>,             # Tungsten Grinding Head
  "V": <environmentaltech:void_ore_miner_cont_2>, # Void Ore Miner Controller Tier 2
  "■": <ore:blockKyronite>,                       # Kyronite
  "L": <ore:etLaserLens>,                         # Clear Laser Lens
});


# [Void Ore Miner Controller Tier 4] from [Void Ore Miner Controller Tier 3][+9]
craft.remake(<environmentaltech:void_ore_miner_cont_4>, ["pretty",
  "◙ ◙ o ◙ ◙",
  "■ D E D ■",
  "■ C V C ■",
  "■ ¤ L ¤ ■",
  "◙ ◙ a ◙ ◙"], {
  "◙": <environmentaltech:structure_frame_4>,     # Structure Frame Tier 4
  "o": <ore:componentControlCircuit>,             # Control Circuit
  "■": <ore:blockPladium>,                        # Pladium
  "D": <nuclearcraft:lithium_ion_battery_du>.withTag({}), # DU Lithium Ion Battery
  "E": <ore:itemEnhancedMachineChassi>,           # Enhanced Machine Chassis
  "C": <enderio:item_capacitor_crystalline>,      # Crystalline Capacitor
  "V": <environmentaltech:void_ore_miner_cont_3>, # Void Ore Miner Controller Tier 3
  "¤": <contenttweaker:gear_mek_alloy>,           # Heavy Alloy Gear
  "L": <environmentaltech:laser_core>,            # Laser Core
  "a": <ore:etLaserLens>,                         # Clear Laser Lens
});

# [Void Ore Miner Controller Tier 5] from [Void Ore Miner Controller Tier 4][+14]
craft.remake(<environmentaltech:void_ore_miner_cont_5>, ["pretty",
  "⌂ ◙ ◙ n ◙ ◙ ⌂",
  "■ E e C e E ■",
  "■ l ◘ M ◘ l ■",
  "■ P M V M P ■",
  "■ l ◘ L ◘ l ■",
  "■ E ¤ L ¤ E ■",
  "⌂ ◙ ◙ a ◙ ◙ ⌂"], {
  "⌂": <techreborn:machine_casing:2>,               # Advanced Machine Casing
  "◙": <environmentaltech:structure_frame_5>,       # Structure Frame Tier 5
  "n": <enderutilities:enderpart:17>,               # Ender Core (Advanced)
  "■": <ore:blockIonite>,                           # Ionite
  "E": <extendedcrafting:material:40>,              # Endest Star
  "e": <enderio:item_capacitor_melodic>,            # Melodic Capacitor
  "C": <ore:componentComputerChip>,                 # Computer Chip
  "l": <extendedcrafting:material:10>,              # Elite Catalyst
  "◘": <mekanism:basicblock2:3>.withTag({tier: 2}), # Elite Induction Cell
  "M": <libvulpes:structuremachine>,                # Machine Structure
  "P": <ore:growthcatalystPlatinum>,                # Platinum Growth Catalyst
  "V": <environmentaltech:void_ore_miner_cont_4>,   # Void Ore Miner Controller Tier 4
  "L": <environmentaltech:laser_core>,              # Laser Core
  "¤": <ore:gearTitaniumIridium>,                   # Titanium Iridium Alloy Gear
  "a": <ore:etLaserLens>,                           # Clear Laser Lens
});

# [Void Ore Miner Controller Tier 6] from [Void Ore Miner Controller Tier 5][+18]
craft.remake(<environmentaltech:void_ore_miner_cont_6>, ["pretty",
  "F ◙ ◙ ◙ n ◙ ◙ ◙ F",
  "■ ▬ C M r M C ▬ ■",
  "■ C V S ▀ S V C ■",
  "■ M E ◘ ▄ ◘ E M ■",
  "n O E ▄ o ▄ E O n",
  "■ M E ◘ L ◘ E M ■",
  "■ C V * L * V C ■",
  "■ ▬ C M L M C ▬ ■",
  "F ◙ ◙ ◙ a ◙ ◙ ◙ F"], {
  "F": <techreborn:fusion_coil>,                    # Fusion Coil
  "◙": <environmentaltech:structure_frame_6>,       # Structure Frame Tier 6
  "n": <enderutilities:enderpart:17>,               # Ender Core (Advanced)
  "■": <ore:blockAethium>,                          # Aethium
  "▬": <extendedcrafting:material:48>,              # Twilight Ingot
  "C": <extendedcrafting:material:18>,              # Crystaltine Component
  "M": <appliedenergistics2:quantum_ring>,          # ME Quantum Ring
  "r": <extendedcrafting:material:12>,              # Crystaltine Catalyst
  "V": <ore:componentEVCapacitor>,                  # EV Capacitor
  "S": <enderio:item_capacitor_stellar>,            # Stellar Capacitor
  "▀": <ore:blockMirion>,                           # Mirion Block
  "E": <nuclearcraft:lithium_ion_battery_elite>, # Elite Lithium Ion Battery
  "◘": <mekanism:basicblock2:3>.withTag({tier: 3}), # Ultimate Induction Cell
  "▄": <ore:machineBlockHighlyAdvanced> | <ore:machineBlockElite>, # Highly Advanced Machine Frame
  "O": <ore:growthcatalystOsmium>,                  # Osmium Growth Catalyst
  "o": <environmentaltech:void_ore_miner_cont_5>,   # Void Ore Miner Controller Tier 5
  "L": <environmentaltech:laser_core>,              # Laser Core
  "*": <ore:gearCrystalMatrix>,                     # Crystal Matrix Gear
  "a": <ore:etLaserLens>,                           # Clear Laser Lens
});




// Structure Frames //

# [Structure Frame Tier 1] from [Structure Panel][+4]
craft.remake(<environmentaltech:structure_frame_1>, ["pretty",
  "□ I □",
  "* S *",
  "□ ╳ □"], {
  "□": <ore:plateOsgloglas>,                # Osgloglas Plate
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
  "B": <thermalfoundation:material:1028>,     # Mana Dust
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
