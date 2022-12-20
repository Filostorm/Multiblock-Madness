import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;
import crafttweaker.liquid.ILiquidStack;
import mods.jei.JEI.addDescription;
import crafttweaker.formatting.IFormattedText;
import crafttweaker.data.IData;

#priority -1

print("==================== loading jei_general.zs ====================");
##########################################################################################

##=======================================================
## JEI RENAMING
##=======================================================


// Nether Quartz --> Quartz
<minecraft:quartz>.displayName = "Quartz";


##=======================================================
## JEI TOOLTIPS
##=======================================================

// --== General Tooltips ==-- //

<mystgears:bellows_mechanical>.addTooltip(format.gold("Place by a furnace to speed up"));

<immersiveengineering:stone_decoration:1>.addTooltip(format.darkRed("Your first Steel is made in the High Oven"));

<tombstone:crafting_ingredient:3>.addTooltip(format.darkRed("Uncommon drop from Mobs"));

<contenttweaker:purpleprint>.addTooltip(format.lightPurple("Not for Crafting!"));

<contenttweaker:ore_gen_info>.addTooltip("§fPress U to view ore vein generation§r");
<immersiveengineering:metal_device1:7>.addTooltip("§fPress U to view Excavator and Pumpjack veins§r");
<advgenerators:turbine_controller>.addTooltip("§fPress U to view AG Turbine Fuels§r");
<actuallyadditions:item_mining_lens>.addTooltip("§fPress U to view Lens of the Miner ores§r");
<advancedrocketry:spacelaser>.addTooltip("§fPress U to view Orbital Laser materials§r");

<translocators:translocator_part>.addShiftTooltip((format.yellow("- Add Glowstone to increase transfer speed")), "Hold Shift to see available modifiers");
<translocators:translocator_part>.addShiftTooltip((format.red("- Add Redstone to enable toggling in/output")));
<translocators:translocator_part>.addShiftTooltip((format.gray("- Add Iron to emit a signal when input is full of filtered item")));
<translocators:translocator_part>.addShiftTooltip((format.aqua("- Add a Diamond Nugget to enable fine tuning of filter supply and demand")));
<translocators:translocator_part:1>.addShiftTooltip((format.yellow("- Add Glowstone to increase transfer speed")), "Hold Shift to see available modifiers");
<translocators:translocator_part:1>.addShiftTooltip((format.red("- Add Redstone to enable toggling in/output")));

<mekanism:tierinstaller:3>.addTooltip(format.lightPurple("Only works on Bins, Energy Cubes, Tanks and Gas Tanks"));

<techreborn:part:33>.addTooltip("§6Obtained from the Recycler§r");


// --== Power production tooltips ==-- //

<actuallyadditions:block_coal_generator>.addTooltip("Generation Rate: §630 RF/t§r");
<actuallyadditions:block_oil_generator>.addTooltip("Generation Rate: §640-400 RF/t§r");
<actuallyadditions:block_leaf_generator>.addTooltip("Generation Rate: §650 RF/t");
<actuallyadditions:block_leaf_generator>.addTooltip("§6300 RF§r per leaf");
<actuallyadditions:block_heat_collector>.addTooltip("Generation Rate: §640 RF/t§r");

<immersiveengineering:wooden_device1:1>.addTooltip("Generation Rate: §623-71 RF/t§r");
<immersiveengineering:wooden_device1>.addTooltip("Generation Rate: Max §645 RF/t§7 per Wheel\nMax §6135 RF/t§7 per structure (3 Water Wheels)");
<immersiveengineering:metal_device1:3>.addTooltip("Generation Rate: Max §6~120 RF/t§r");
<immersivepetroleum:metal_device:1>.addTooltip("Generation Rate: §6512 RF/t§r");
<immersiveengineering:metal_multiblock:10>.addTooltip("Generation Rate: §68192 RF/t§r");
<immersivetech:metal_multiblock:3>.addTooltip("Generation Rate: §612288 RF/t§r");
<immersivetech:metal_multiblock1>.addTooltip("Generation Rate: §66144 RF/t§r");

<thermalexpansion:dynamo>.addShiftTooltip("Base Generation Rate: §6200 RF/t§r");
<thermalexpansion:dynamo:1>.addShiftTooltip("Base Generation Rate: §6200 RF/t§r");
<thermalexpansion:dynamo:2>.addShiftTooltip("Base Generation Rate: §6200 RF/t§r");
<thermalexpansion:dynamo:3>.addShiftTooltip("Base Generation Rate: §6300 RF/t§r");
<thermalexpansion:dynamo:4>.addShiftTooltip("Base Generation Rate: §6300 RF/t§r");
<thermalexpansion:dynamo:5>.addShiftTooltip("Base Generation Rate: §6300 RF/t§r");

<mekanismgenerators:generator:6>.addShiftTooltip("Generation Rate: §624-192 RF/t§r");
<mekanismgenerators:generator:1>.addShiftTooltip("Generation Rate: §6~80 RF/t§r");
<mekanismgenerators:generator:1>.addShiftTooltip("Generation Rate: §6~480 RF/t§r");
<mekanismgenerators:generator:4>.addShiftTooltip("Generation Rate: §6140 RF/t§r");


// --== Power consumption tooltips ==-- //

// Actually Additions

<actuallyadditions:block_farmer>.addTooltip("§c700 RF§7 per plant planted");
<actuallyadditions:block_farmer>.addTooltip("§c600 RF§7 per plant harvested");


// Immersive Engineering

<immersiveengineering:metal_device1:5>.addTooltip("Charging Rate: §6256 RF/t§r");
<immersiveengineering:metal_multiblock>.addTooltip("Power Consumption: §c~150 RF/t§r");
<immersiveengineering:metal_multiblock:1>.addTooltip("Power Consumption: §c20-160 RF/t§r");
<immersiveengineering:metal_multiblock:4>.addTooltip("Power Consumption: §c~5 RF/t§7 per slot");
<immersiveengineering:metal_multiblock:5>.addTooltip("Power Consumption: §c~480 RF/t§r");
<immersiveengineering:metal_multiblock:7>.addTooltip("Power Consumption: §c80 RF/t§7 per slot");
<immersiveengineering:metal_multiblock:8>.addTooltip("Power Consumption: §c80 RF/t§7 per slot");
<immersiveengineering:metal_multiblock:13>.addTooltip("Power Consumption: §c512-2048 RF/t§7 per slot");
<immersiveengineering:metal_multiblock:15>.addTooltip("Power Consumption: §c6 RF/t§7 per slot");


// Miscellaneous

<enderio:block_wired_charger>.addShiftTooltip("Base Charging Rate: §610 kRF/t§r");
<enderio:block_enhanced_wired_charger>.addShiftTooltip("Base Charging Rate: §620 kRF/t§r");

<deepmoblearning:simulation_chamber>.addTooltip("Power Consumption: §c512-6666 RF/t§r");

<threng:machine>.addTooltip("Power Consumption: §c54-2500 RF/t§r");
<threng:machine:1>.addTooltip("Power Consumption: §c54-2500 RF/t§r");
<threng:machine:5>.addTooltip("Power Consumption: §c80-4166 RF/t§r");

<advancedrocketry:spacelaser>.addTooltip("Power Consumption: §c20 kRF/t§r");


// Common Power Consumption Tooltips

val machine_power = {
  // QMD Machine
  <qmd:atmosphere_collector>: 5000,

  // AE2 Machines
  <appliedenergistics2:quartz_growth_accelerator>: 16,
  <ae2stuff:grower>: 200,

  // IE Machines
  <immersivepetroleum:metal_multiblock>: 2048,
  <immersivepetroleum:metal_multiblock:2>: 1024,
  <immersivetech:metal_multiblock>: 500,
  <immersivetech:metal_multiblock1:2>: 64,
  <immersivetech:metal_multiblock1:6>: 2048,
  <immersivetech:metal_multiblock1:8>: 512,
  <immersiveengineering:metal_device1>: 32,
  <immersiveengineering:metal_device1:13>: 200,
  <immersiveengineering:metal_multiblock:6>: 16,
  <immersiveengineering:metal_multiblock:9>: 80,
  <immersiveengineering:metal_multiblock:11>: 4096,

  // DML
  <deepmoblearning:extraction_chamber>: 256,

  // Actually Additions
  <actuallyadditions:block_furnace_double>: 25,
  <actuallyadditions:block_canola_press>: 35,
} as int[IItemStack];

for machine, power in machine_power {
  machine.addTooltip("Power Consumption: §c" ~ power ~ " RF/t");
}

val machine_base_power = {
  // NC:O Machines
  <nuclearcraft:manufactory>: 1000,
  <nuclearcraft:separator>: 1000,
  <nuclearcraft:decay_hastener>: 1000,
  <nuclearcraft:fuel_reprocessor>: 2000,
  <nuclearcraft:alloy_furnace>: 1000,
  <nuclearcraft:infuser>: 1000,
  <nuclearcraft:melter>: 1000,
  <nuclearcraft:supercooler>: 2000,
  <nuclearcraft:electrolyzer>: 1000,
  <nuclearcraft:assembler>: 1000,
  <nuclearcraft:pressurizer>: 2000,
  <nuclearcraft:chemical_reactor>: 1000,
  <nuclearcraft:salt_mixer>: 2000,
  <nuclearcraft:crystallizer>: 1000,
  <nuclearcraft:enricher>: 1000,
  <nuclearcraft:extractor>: 1000,
  <nuclearcraft:centrifuge>: 1000,
  <nuclearcraft:rock_crusher>: 2000,

  // AE2 Machines
  <appliedenergistics2:charger>: 60,
  <appliedenergistics2:inscriber>: 20,
  <ae2stuff:inscriber>: 20,

  // EnderIO Machines
  <enderio:block_painter>: 500,
  <enderio:block_niard>: 5,
  <enderio:block_crafter>: 10,

  // QMD Machine
  <qmd:ore_leacher>: 2500
} as int[IItemStack];

for machine, power in machine_base_power {
  machine.addTooltip("Base Power Consumption: §c" ~ power ~ " RF/t");
}

val machine_base_power_shift = {
  // Thermal Machines
  <thermalexpansion:machine>: 250,
  <thermalexpansion:machine:1>: 500,
  <thermalexpansion:machine:2>: 500,
  <thermalexpansion:machine:3>: 500,
  <thermalexpansion:machine:4>: 500,
  <thermalexpansion:machine:5>: 500,
  <thermalexpansion:machine:6>: 1000,
  <thermalexpansion:machine:7>: 500,
  <thermalexpansion:machine:8>: 400,
  <thermalexpansion:machine:9>: 1000,
  <thermalexpansion:machine:10>: 500,
  <thermalexpansion:machine:11>: 50,
  <thermalexpansion:machine:12>: 250,
  <thermalexpansion:machine:13>: 500,
  <thermalexpansion:machine:14>: 100,
  <thermalexpansion:machine:15>: 100,

  // Mek Machines
  <mekanism:machineblock>: 100,
  <mekanism:machineblock:1>: 200,
  <mekanism:machineblock:3>: 100,
  <mekanism:machineblock:4>: 1600,
  <mekanism:machineblock:8>: 100,
  <mekanism:machineblock:9>: 400,
  <mekanism:machineblock:10>: 60,
  <mekanism:machineblock:12>: 40,
  <mekanism:machineblock2:0>: 100,
  <mekanism:machineblock2:1>: 200,
  <mekanism:machineblock2:2>: 200,
  <mekanism:machineblock2:3>: 800,
  <mekanism:machineblock2:4>: 160,
  <mekanism:machineblock2:5>: 60,
  <mekanism:machineblock2:6>: 800,
  <mekanism:machineblock2:7>: 400,
  <mekanism:machineblock2:8>: 800,
  <mekanism:machineblock2:9>: 200,
  <mekanism:machineblock2:12>: 200,
  <mekanism:machineblock2:13>: 2000,
  <mekanism:machineblock3:5>: 20,

  // EnderIO Machines
  <enderio:block_alloy_smelter>: 1000,
  <enderio:block_enhanced_alloy_smelter>: 4000,
  <enderio:block_sag_mill>: 100,
  <enderio:block_enhanced_sag_mill>: 4000,
  <enderio:block_vat>: 1000,
  <enderio:block_enhanced_vat>: 4000,
  <enderio:block_farm_station>: 1440,
  <enderio:block_slice_and_splice>: 20,
  <enderio:block_soul_binder>: 40,
  <enderio:block_powered_spawner>: 1280,
} as int[IItemStack];

for machine, power in machine_base_power_shift {
  machine.addShiftTooltip("Base Power Consumption: §c" ~ power ~ " RF/t");
}


// --== Embers Documentation ==-- //

<embers:ember_emitter>.addTooltip(format.red("Requires a Redstone Signal to function"));
<embers:ember_pulser>.addTooltip(format.red("Requires a Redstone Signal to function"));
<embers:ember_receiver>.addTooltip(format.red("Shift right click here first, then right click the Ember Emitter with the Tinkers hammer to connect"));
<embers:ember_funnel>.addTooltip(format.red("Shift right click here first, then right click the Ember Ejector with the Tinkers hammer to connect"));

<embers:crystal_ember>.addTooltip(format.red("Extracted from Bedrock with the Ember Bore"));
<embers:shard_ember>.addTooltip(format.red("Extracted from Bedrock with the Ember Bore"));
<embers:dust_ember>.addTooltip(format.red("Extracted from Bedrock with the Ember Bore"));
<embers:dust_ash>.addTooltip(format.red("Created by burning an item in the Cinder Plinth"));
<embers:cinder_plinth>.addTooltip(format.red("Burns items and produces ash piles"));

<embers:item_pump>.addTooltip(format.red("Requires a Redstone Signal to function"));
<embers:pump>.addTooltip(format.red("Requires a Redstone Signal to function"));
<embers:vacuum>.addTooltip(format.red("Requires a Redstone Signal to function"));
<embers:item_transfer>.addTooltip("§fFilters Items");
<embers:item_transfer>.addTooltip("§fRight click with an item to let it through");
<embers:fluid_transfer>.addTooltip("§fFilters Fluids");
<embers:fluid_transfer>.addTooltip("§fRight click with a fluid to let it through");
<embers:item_dropper>.addTooltip("§fDrops any items piped through the top");

<embers:breaker>.addTooltip("§fAutomatically breaks blocks in front of it");
<embers:breaker>.addTooltip("§fPlace a bin behind it to auto-collect drops");

<embers:bin>.addTooltip("§fAutomatically collects outputs from some Embers machines");

<embers:steam_engine>.addTooltip("§fProduces 20R with Coal and Water");
<embers:steam_engine>.addTooltip("§fProduces 40R with Steam");
<mystgears:vis_motor>.addTooltip("§fProduces 30R§r");

<embers:shard_ember>.addTooltip("§6Base Ember Value: 400§r");
<embers:crystal_ember>.addTooltip("§6Base Ember Value: 2400§r");

<embers:ember_activator>.addTooltip("§eEfficiency: 1x§r");
<embers:boiler>.addTooltip("§eEfficiency: 1.5-6x§r");
<embers:reactor>.addTooltip("§eEfficiency: 5-9x");
<embers:reactor>.addTooltip("§fPlace between Catalysis and Combustion Chamber");

<embers:catalyzer>.addTooltip("§fPart of the Ignem Reactor");
<embers:catalyzer>.addShiftTooltip("§f2x: Redstone", "§fHold §e§oShift§f for Catalysts");
<embers:catalyzer>.addShiftTooltip("§f3x: Gunpowder");
<embers:catalyzer>.addShiftTooltip("§f4x: Glowstone Dust");

<embers:combustor>.addTooltip("§fPart of the Ignem Reactor");
<embers:combustor>.addShiftTooltip("§f2x: Coal", "§fHold §e§oShift§f for Catalysts");
<embers:combustor>.addShiftTooltip("§f3x: Nether Brick");
<embers:combustor>.addShiftTooltip("§f4x: Blaze Powder");

<embers:crystal_cell>.addTooltip("§6Ember Storage Capacity: 64k-1.44M");
<embers:crystal_cell>.addTooltip("§6Insert Ember Shards/Crystals for more ember storage");

<embers:ember_emitter>.addTooltip("§6Ember Transfer Rate: 40 per packet§r");
<embers:ember_pulser>.addTooltip("§6Ember Transfer Rate: 400 per packet§r");
<embers:ember_pipe>.addTooltip("§6Ember Transfer Rate: Infinite§r");
<embers:ember_pipe>.addTooltip("§fUsed to transfer Ember from the Ignem Reactor");
<embers:ember_pipe>.addTooltip("§4Highly Dangerous!§r");

<embers:auto_hammer>.addTooltip("§fUsed to automate the Dawnstone Anvil");

<embers:stirling>.addTooltip("§fPlace next to any Embers machine to halve Ember cost");
<embers:stirling>.addTooltip("§fPlace two to reduce Ember cost to 25%");
<embers:stirling>.addTooltip("§fRequires Steam");

<embers:catalytic_plug>.addTooltip("§fPlace next to any Embers machine to double machine speed");
<embers:catalytic_plug>.addTooltip("§fPlace two to quadruple machine speed");
<embers:catalytic_plug>.addTooltip("§fRequires Alchemical Slurry");

<embers:mini_boiler>.addTooltip("§fPlace next to any Embers machine and supply water to produce steam");

<embers:heat_coil>.addTooltip("§fSmelts items with Ember power");

<embers:inferno_forge>.addTooltip("§fUsed to upgrade Embers Gear");

<embers:large_tank>.addTooltip("§fStores fluids");
<embers:large_tank>.addTooltip("§fPlace Caminite Rings on top to increase fluid storage");

<embers:stone_edge>.addTooltip("§fEach Ring increases the reservoir's fluid storage by 40B");
<embers:charger>.addTooltip("§fCharges Embers items with Ember");
<embers:ember_siphon>.addTooltip("§fPlace under an Embers Charger to invert its function");

<embers:ember_injector>.addTooltip("§fGenerates metal with Embers Crystal Seeds");
<embers:ember_injector>.addTooltip("§fPlace next to crystal seed and supply with Ember");

val embers_crystal_seeds = [
  <embers:seed_iron>,
  <embers:seed_gold>,
  <embers:seed_copper>,
  <embers:seed_silver>,
  <embers:seed_lead>,
  <embers:seed_dawnstone>,
  <embers:seed_aluminum>,
  <embers:seed_nickel>,
  <embers:seed_tin>
] as IItemStack[];

for seed in embers_crystal_seeds {
  seed.addTooltip("§fGenerates metal with the Ember Injector");
}


<embers:tinker_lens>.addTooltip("§fHold in hand to examine functionality of embers machines");
<embers:ember_detector>.addTooltip("§6Used to find ember-rich locations§r");
<embers:field_chart>.addTooltip("§6Used to find ember-rich locations");
<embers:ember_gauge>.addTooltip("§fPlace on Embers machine to view Embers amount");
<embers:fluid_gauge>.addTooltip("§fPlace on Embers machine to view Fluid amount");
<embers:clockwork_attenuator>.addTooltip("§fPlace on Embers machine to control speed");
<embers:clockwork_attenuator>.addTooltip("§fRight Click / Shift Right Click to change speed");

<embers:mech_actuator_single>.addTooltip("§fPlace next to a suitable Embers machine to power with §eMechanical Power§r§r");
<embers:mech_actuator>.addTooltip("§fPlace next to a suitable Embers machine to power with §eMechanical Power§r§r");

val mechanical_embers_machines = [
  <embers:ember_bore>,
  <embers:mechanical_pump>,
  <embers:stamper>,
  <embers:mixer>,
  <embers:auto_hammer>
] as IItemStack[];

for machines in mechanical_embers_machines {
  machines.addTooltip("§fCan be powered with §eMechanical Power");
}

<mystgears:redstone_dynamo>.addTooltip("§fConverts Mechanical Power to RF");
<mystgears:essentia_motor>.addTooltip(format.white("Produces 40R with machina"));
<mystgears:essentia_motor>.addTooltip(format.white("Produces 70R with motus"));
<mystgears:essentia_motor>.addTooltip(format.white("Produces 100R with potentia"));

<mystgears:windup_box>.addTooltip(format.white("Stores Mechanical Energy"));
<mystgears:windup_box>.addTooltip(format.white("A Redstone Signal enables output Mechanical Power"));

<mystgears:crafter_mechanical>.addTooltip(format.white("Crafts items with Mechanical Power"));
<mystgears:mechanical_dial>.addTooltip(format.white("Place on Embers machine to view Rotational Speed"));

<mystgears:drill_diamond>.addTooltip(format.white("Breaks blocks in front of it with Mechanical Power"));
<mystgears:drill>.addTooltip(format.white("Breaks blocks in front of it with Mechanical Power"));

<mystgears:mechanical_turret>.addTooltip(format.white("Auto-Fires Ember Bullets when equipped with the Ember Gatling Gun"));

// --== Astral Documentation ==-- //

val astralblockgem = [
  <astralsorcery:blockgemcrystals>,
  <astralsorcery:blockgemcrystals:1>,
  <astralsorcery:blockgemcrystals:2>,
  <astralsorcery:blockgemcrystals:3>,
  <astralsorcery:blockgemcrystals:4>
] as IItemStack[];

for block in astralblockgem {
  block.addTooltip("§bCreated by throwing a Rock Crystal and Glowstone Dust in Starlight§r");
}


val astralcelestialgem = [
  <astralsorcery:blockcelestialcrystals>,
  <astralsorcery:blockcelestialcrystals:1>,
  <astralsorcery:blockcelestialcrystals:2>,
  <astralsorcery:blockcelestialcrystals:3>,
  <astralsorcery:blockcelestialcrystals:4>
] as IItemStack[];

for block in astralcelestialgem {
  block.addTooltip("§bCreated by throwing a Rock Crystal and Stardust in Starlight§r");
}

<astralsorcery:itemperkgem>.addTooltip("§bGrows from a Gem Crystal Cluster§r");
<astralsorcery:itemperkgem>.addTooltip("§bForms around Noon and Midnight§r");
<astralsorcery:blockgemcrystals:2>.addTooltip("§bForms around Noon and Midnight§r");
<astralsorcery:itemperkgem:1>.addTooltip("§bGrows from a Gem Crystal Cluster§r");
<astralsorcery:itemperkgem:1>.addTooltip("§bForms around Night to Morning§r");
<astralsorcery:blockgemcrystals:3>.addTooltip("§bForms around Night to Morning§r");
<astralsorcery:itemperkgem:2>.addTooltip("§bGrows from a Gem Crystal Cluster§r");
<astralsorcery:itemperkgem:2>.addTooltip("§bForms around Afternoon and Evening§r");
<astralsorcery:blockgemcrystals:4>.addTooltip("§bForms around Afternoon and Evening§r");

<astralsorcery:itemhandtelescope>.addTooltip("§bUsed to find bright constellations at night§r");
<astralsorcery:blockmachine>.addTooltip("§bUsed to find dim constellations at night§r");
<astralsorcery:blockobservatory>.addTooltip("§bUsed to find faint constellations at night§r");
<astralsorcery:itemsextant>.addTooltip("§bRight click certain blocks to view multiblock visualisations§r");
<astralsorcery:itemsextant>.addTooltip("§bAlso used to find generated structures at night§r");

<astralsorcery:itemknowledgeshare>.addTooltip("§bUsed to transfer Astral Knowledge progress between players§r");
<astralsorcery:itemknowledgeshare>.addTooltip("§bRight click to store your Astral Knowledge progress§r");

<astralsorcery:blockcelestialgateway>.addTooltip("§bUsed for teleportation§r");
<astralsorcery:blockcelestialgateway>.addTooltip("§bConstruct celestial gateways and stand on them to teleport between them§r");

<astralsorcery:blockritualpedestal>.addTooltip("§bPress U to view ritual effects§r");
<astralsorcery:blockmapdrawingtable>.addTooltip("§bPress U to view Refraction Table recipes§r");
<astralsorcery:iteminfusedglass>.addTooltip("§bPress U to view Refraction Table recipes§r");
<astralsorcery:blockattunementaltar>.addTooltip("§bPress U to view Attunement Altar recipes§r");
<astralsorcery:blockchalice>.addTooltip("§bPress U to view chalice fluid interaction recipes§r");

<astralsorcery:blocktreebeacon>.addTooltip("§bConverts trees into spectral trees that drop tree items§r");

<astralsorcery:itemshiftingstar>.withTag({astralsorcery: {starAttunement: "astralsorcery.constellation.discidia"}}).addTooltip("§bResets all attunement perk selections§r");
<astralsorcery:itemshiftingstar>.withTag({astralsorcery: {starAttunement: "astralsorcery.constellation.discidia"}}).addTooltip("§bChanges base attunement to Discidia§r");
<astralsorcery:itemshiftingstar>.withTag({astralsorcery: {starAttunement: "astralsorcery.constellation.discidia"}}).addTooltip("§bAll attunement levels are kept§r");
<astralsorcery:itemshiftingstar>.withTag({astralsorcery: {starAttunement: "astralsorcery.constellation.armara"}}).addTooltip("§bResets all attunement perk selections§r");
<astralsorcery:itemshiftingstar>.withTag({astralsorcery: {starAttunement: "astralsorcery.constellation.armara"}}).addTooltip("§bChanges base attunement to Armara§r");
<astralsorcery:itemshiftingstar>.withTag({astralsorcery: {starAttunement: "astralsorcery.constellation.armara"}}).addTooltip("§bAll attunement levels are kept§r");
<astralsorcery:itemshiftingstar>.withTag({astralsorcery: {starAttunement: "astralsorcery.constellation.vicio"}}).addTooltip("§bResets all attunement perk selections§r");
<astralsorcery:itemshiftingstar>.withTag({astralsorcery: {starAttunement: "astralsorcery.constellation.vicio"}}).addTooltip("§bChanges base attunement to Vicio§r");
<astralsorcery:itemshiftingstar>.withTag({astralsorcery: {starAttunement: "astralsorcery.constellation.vicio"}}).addTooltip("§bAll attunement levels are kept§r");
<astralsorcery:itemshiftingstar>.withTag({astralsorcery: {starAttunement: "astralsorcery.constellation.aevitas"}}).addTooltip("§bResets all attunement perk selections§r");
<astralsorcery:itemshiftingstar>.withTag({astralsorcery: {starAttunement: "astralsorcery.constellation.aevitas"}}).addTooltip("§bChanges base attunement to Aevitas§r");
<astralsorcery:itemshiftingstar>.withTag({astralsorcery: {starAttunement: "astralsorcery.constellation.aevitas"}}).addTooltip("§bAll attunement levels are kept§r");
<astralsorcery:itemshiftingstar>.withTag({astralsorcery: {starAttunement: "astralsorcery.constellation.evorsio"}}).addTooltip("§bResets all attunement perk selections§r");
<astralsorcery:itemshiftingstar>.withTag({astralsorcery: {starAttunement: "astralsorcery.constellation.evorsio"}}).addTooltip("§bChanges base attunement to Evorsio§r");
<astralsorcery:itemshiftingstar>.withTag({astralsorcery: {starAttunement: "astralsorcery.constellation.evorsio"}}).addTooltip("§bAll attunement levels are kept§r");
<astralsorcery:itemperkseal>.addTooltip("§bBlocks the effect of an attunement perk§r");
<astralsorcery:itemperkseal>.addTooltip("§bDouble click a disabled perk to reenable it§r");


addDescription(<astralsorcery:blockritualpedestal>, [
  "Ritual Effects:",
  "Aevitas: Nearby living entities receive Regeneration, plants experience accelerated growth",
  "",
  "Armara: Hostile mobs and projectiles are repelled away from the Pedestal",
  "",
  "Discidia: Hostile mobs nearby take damage over time",
  "",
  "Evoriso: Breaks solid blocks near the Pedestal",
  "",
  "Vicio: Grants creative flight to entities nearby",
  "",
  "Bootes: Nearby animals 'shed' their drops as if they were slain",
  "",
  "Fornax: Nearby blocks become their burnt or smelted counterparts",
  "",
  "Horologium: Nearby machines experience bonus ticks and work faster",
  "",
  "Lucerna: Prevents hostile mobs from spawning nearby",
  "",
  "Mineralis: Nearby stone is converted into ores, possible ores shown in JEI",
  "",
  "Octans: Nearby water blocks become easier to fish",
  "",
  "Pelotorio: Higher chance of entities spawning nearby, including hostile mobs",
  "",
  "",
  "Ritual Modifiers:",
  "Gelu: Increases range, reduces potency",
  "",
  "Ulteria: Increases potency, reduces range",
  "",
  "Vorux: Increases range and potency, increases crystal fracture rate",
  "",
  "Alcara: Corrupts the effect of the original ritual, increases crystal fracture rate",
  "",
  "",
  "Alcara Ritual Effects:",
  "Aevitas: Nearby living entities receive Weakness IV, Mining Fatigue III, Hunger III, and Bleeding III, has a chance to destroy crops",
  "",
  "Armara: Hostile mobs and projectiles are buffed in speed and attack strength",
  "",
  "Discidia: Hostile mobs near the Pedestal receive Resistance III, Damages players, Nearby animals receive Inner Wealth",
  "",
  "Evoriso: Places random solid blocks in a 33x33x33 cube around the Pedestal", 
  "",
  "Vicio: Entities near the Pedestal receive Fatigue and Slowness",
  "",
  "Bootes: Kills animals instantly while also granting them Inner Wealth",
  "",
  "Fornax: Places Ice near the pedestal",
  "",
  "Horologium: Freezes both mobs and machines",
  "",
  "Lucerna: Makes the night last longer in the world it's in",
  "",
  "Mineralis: Creates 3x3 stone platforms underneath entities when there is space beneath them, which may contain ores",
  "",
  "Octans: Places water near the pedestal",
  "",
  "Pelotrio: Skeletons within range are turned to Wither Skeletons and given Inner Wealth IV"
]);

<astralsorcery:itemcape>.withTag({astralsorcery: {constellationName: "astralsorcery.constellation.pelotrio"}}).addTooltip("§bCreates spectral tools that break blocks or attack mobs§r");
<astralsorcery:itemcape>.withTag({astralsorcery: {constellationName: "astralsorcery.constellation.bootes"}}).addTooltip("§bGives a chance of spawning a Flare when attacked§r");
<astralsorcery:itemcape>.withTag({astralsorcery: {constellationName: "astralsorcery.constellation.octans"}}).addTooltip("§bGives Water Breathing§r");
<astralsorcery:itemcape>.withTag({astralsorcery: {constellationName: "astralsorcery.constellation.horologium"}}).addTooltip("§bNearby entities freeze momentarily when being attacked§r");
<astralsorcery:itemcape>.withTag({astralsorcery: {constellationName: "astralsorcery.constellation.mineralis"}}).addTooltip("§bWhen holding a block in hand, outlines identical blocks in world§r");
<astralsorcery:itemcape>.withTag({astralsorcery: {constellationName: "astralsorcery.constellation.lucerna"}}).addTooltip("§bHostile mobs emit light particles revealing their locations§r");
<astralsorcery:itemcape>.withTag({astralsorcery: {constellationName: "astralsorcery.constellation.evorsio"}}).addTooltip("§bSpeeds up block breaking§r");
<astralsorcery:itemcape>.withTag({astralsorcery: {constellationName: "astralsorcery.constellation.evorsio"}}).addTooltip("§bDeals significant damage to nearby hostile mobs when one is slain§r");
<astralsorcery:itemcape>.withTag({astralsorcery: {constellationName: "astralsorcery.constellation.aevitas"}}).addTooltip("§bRegenerates health and hunger§r");
<astralsorcery:itemcape>.withTag({astralsorcery: {constellationName: "astralsorcery.constellation.vicio"}}).addTooltip("§bGives elytra-like gliding§r");
<astralsorcery:itemcape>.withTag({astralsorcery: {constellationName: "astralsorcery.constellation.armara"}}).addTooltip("§bSometimes blocks attacks§r");
<astralsorcery:itemcape>.withTag({astralsorcery: {constellationName: "astralsorcery.constellation.discidia"}}).addTooltip("§bWhen attacked, damage taken is stored§r");
<astralsorcery:itemcape>.withTag({astralsorcery: {constellationName: "astralsorcery.constellation.discidia"}}).addTooltip("§bStored damage is released upon hitting an entity§r");
<astralsorcery:itemcape>.withTag({astralsorcery: {constellationName: "astralsorcery.constellation.fornax"}}).addTooltip("§bWhile on fire:§r");
<astralsorcery:itemcape>.withTag({astralsorcery: {constellationName: "astralsorcery.constellation.fornax"}}).addTooltip("§bConverts fire damage into healing§r");
<astralsorcery:itemcape>.withTag({astralsorcery: {constellationName: "astralsorcery.constellation.fornax"}}).addTooltip("§bMelts or burns block beneath feet§r");


<astralsorcery:itemwand>.withTag({astralsorcery: {AugmentName: "astralsorcery.constellation.armara"}}).addTooltip("§bCreates a shield that gives Absorption and Resistance when attacked§r");
<astralsorcery:itemwand>.withTag({astralsorcery: {AugmentName: "astralsorcery.constellation.aevitas"}}).addTooltip("§bCreates a temporary floor under your feet while held§r");
<astralsorcery:itemwand>.withTag({astralsorcery: {AugmentName: "astralsorcery.constellation.vicio"}}).addTooltip("§bLaunches you through the air§r");
<astralsorcery:itemwand>.withTag({astralsorcery: {AugmentName: "astralsorcery.constellation.discidia"}}).addTooltip("§bIncreases damage of consecutive hits on the same mob up to 2x§r");
<astralsorcery:itemwand>.withTag({astralsorcery: {AugmentName: "astralsorcery.constellation.evorsio"}}).addTooltip("§bGives a chance of AOE mining§r");

<astralsorcery:itemgrapplewand>.addTooltip("§bActs as a grappling hook§r");
<astralsorcery:itemilluminationwand>.addTooltip("§bRight click to place lights§r");
<astralsorcery:itemilluminationwand>.addTooltip("§bShift right click to make block indestructable§r");
<astralsorcery:itemarchitectwand>.addTooltip("§bActs as a builder's wand§r");
<astralsorcery:itemarchitectwand>.addShiftTooltip("§bShift Right Click blocks to select them§r", "§bHold §6Shift§b for controls§r");
<astralsorcery:itemarchitectwand>.addShiftTooltip("§bRight Click to place blocks§r");
<astralsorcery:itemarchitectwand>.addShiftTooltip("§bLeft Click air to deselect blocks§r");
<astralsorcery:itemexchangewand>.addTooltip("§bActs as an exchanging gadget§r");
<astralsorcery:itemexchangewand>.addShiftTooltip("§bShift Right Click blocks to select them§r", "§bHold §6Shift§b for controls§r");
<astralsorcery:itemexchangewand>.addShiftTooltip("§bRight Click to replace blocks§r");
<astralsorcery:itemexchangewand>.addShiftTooltip("§bLeft Click air to deselect blocks§r");


<astralsorcery:blockworldilluminator>.addTooltip("§bIlluminates a large area around it§r");

<astralsorcery:blockborehead:1>.addTooltip("§bTraps entities§r");
<astralsorcery:blockborehead>.addTooltip("§bMines fluid veins, fills nearby Chalices with mined fluid§r");
<astralsorcery:blockborehead>.addTooltip("§bSearch for fluid veins with the Ichosic Resonator§r");
<astralsorcery:blockborehead>.addTooltip("§bPress U to view Neromatic Prime fluids§r");
<astralsorcery:blockbore>.addTooltip("§bPress U to view Neromatic Prime fluids§r");

<astralsorcery:blockrituallink>.addTooltip("§bUsed to transport ritual effects to any location§r");
<astralsorcery:blockrituallink>.addTooltip("§bPlace 5 blocks above ritual pedestal and link to another ritual anchor§r");

<astralsorcery:itemskyresonator>.addTooltip("§bFosic: Find areas with high starlight at night§r");
<astralsorcery:itemskyresonator>.addTooltip("§bDomic: View range of rituals§r");
<astralsorcery:itemskyresonator>.addTooltip("§bIchosic: Find Neromatic Prime fluid veins at night§r");

<astralsorcery:itemenchantmentamulet>.addTooltip("§bIncreases the level of up to 3 random enchantments§r");
<astralsorcery:itemenchantmentamulet>.addTooltip("§bEnchantments randomly selected upon crafting§r");

<astralsorcery:itemcoloredlens:6>.addTooltip("§bRays passing through can pass through blocks, losing potency§r");


// --== BM Documentation ==-- //
// Credits to the E2E-E Dev!
// TODO

<bloodmagic:blood_rune:1>.addTooltip("§f+20% Crafting / Orb filling speed");
<bloodmagic:blood_rune:3>.addTooltip("§f+10% LP from rituals/dagger of sacrifice");
<bloodmagic:blood_rune:4>.addTooltip("§f+10% LP from sacrificial dagger");
<bloodmagic:blood_rune:5>.addTooltip("§fx1.2 altar transfer rate");
<bloodmagic:blood_rune:6>.addTooltip("§f+2000 LP capacity");
<bloodmagic:blood_rune:7>.addTooltip("§fx1.1 LP capacity");
<bloodmagic:blood_rune:8>.addTooltip("§f+2% maximum blood orb capacity");
<bloodmagic:blood_rune:9>.addTooltip("§f-1 tick between processes (default is 20)");
<bloodmagic:blood_rune:10>.addTooltip("§f+1000 Charge");

<bloodmagic:item_demon_crystal>.addTooltip("§bObtained from the Demon Crystalliser§r");
<bloodmagic:item_demon_crystal:1>.addTooltip("§bObtained from the Resonance of the Faceted Crystal ritual§r");
<bloodmagic:item_demon_crystal:2>.addTooltip("§bObtained from the Resonance of the Faceted Crystal ritual§r");
<bloodmagic:item_demon_crystal:3>.addTooltip("§bObtained from the Resonance of the Faceted Crystal ritual§r");
<bloodmagic:item_demon_crystal:4>.addTooltip("§bObtained from the Resonance of the Faceted Crystal ritual§r");
addDescription(<liquid:blockfluidantimatter>, "Obtained from striking Life Essence with Lightning§r");
<liquid:blockfluidantimatter>.addTooltip("§6Obtained from striking Life Essence with Lightning");

addDescription(<liquid:aetherworks.impure_aetherium_gas>, "Obtained from the Aether Collector§r");
<liquid:aetherworks.impure_aetherium_gas>.addTooltip("§9Obtained from the Aether Collector");

<animus:fragmenthealing>.addTooltip(format.white("Gives Regeneration, more fragments increase Regeneration"));
<animus:fragmenthealing>.addTooltip(format.darkRed("Cannot be removed from inventory!"));


<bloodmagic:sigil_divination>.addTooltip(format.white("Displays Blood Altar and Life Essence Network information"));

<bloodmagic:sigil_air>.addTooltip(format.white("Launches you forward"));
<bloodmagic:sigil_air>.addTooltip(format.red("LP Cost: 50 LP"));

<bloodmagic:sigil_water>.addTooltip(format.white("Creates Water"));
<bloodmagic:sigil_water>.addTooltip(format.red("LP Cost: 100 LP"));

<bloodmagic:sigil_lava>.addTooltip(format.white("Creates Lava"));
<bloodmagic:sigil_lava>.addTooltip(format.red("LP Cost: 1000 LP"));

<bloodmagic:sigil_void>.addTooltip(format.white("Removes fluid source blocks"));
<bloodmagic:sigil_void>.addTooltip(format.red("LP Cost: 50 LP"));

<bloodmagic:sigil_green_grove>.addTooltip(format.white("Grows all plants within a radius"));
<bloodmagic:sigil_green_grove>.addTooltip(format.white("Right click plant to grow instantly"));
<bloodmagic:sigil_green_grove>.addTooltip(format.red("LP Cost: 30 LP/s, 150LP per click"));

<bloodmagic:sigil_blood_light>.addTooltip(format.white("Right click to place lights"));
<bloodmagic:sigil_blood_light>.addTooltip(format.red("LP Cost: 10 LP"));

<bloodmagic:sigil_elemental_affinity>.addTooltip(format.white("Immunity to drowning, fire and fall damage"));
<bloodmagic:sigil_elemental_affinity>.addTooltip(format.red("LP Cost: 20 LP/s"));

<bloodmagic:sigil_magnetism>.addTooltip(format.white("Attracts items within a 5 block radius"));
<bloodmagic:sigil_magnetism>.addTooltip(format.red("LP Cost: 5 LP/s"));

<bloodmagic:sigil_suppression>.addTooltip(format.white("Removes fluids within a 5 block radius temporarily"));
<bloodmagic:sigil_suppression>.addTooltip(format.red("LP Cost: 400 LP every few seconds"));

<bloodmagic:sigil_haste>.addTooltip(format.white("Gives Speed, Jump Boost and Step Assist"));
<bloodmagic:sigil_haste>.addTooltip(format.red("LP Cost: 25 LP/s"));

<bloodmagic:sigil_fast_miner>.addTooltip(format.white("Gives Haste"));
<bloodmagic:sigil_fast_miner>.addTooltip(format.red("LP Cost: 10 LP/s"));

<bloodmagic:sigil_seer>.addTooltip(format.white("Displays more Blood Altar and Life Essence Network information"));

<bloodmagic:sigil_phantom_bridge>.addTooltip(format.white("Creates a temporary floor under your feet"));
<bloodmagic:sigil_phantom_bridge>.addTooltip(format.red("LP Cost: 10 LP/s, 1 LP per block created"));

<bloodmagic:sigil_whirlwind>.addTooltip(format.white("Deflects Projectiles"));
<bloodmagic:sigil_whirlwind>.addTooltip(format.red("LP Cost: 50 LP/s"));

<bloodmagic:sigil_compression>.addTooltip(format.white("Compresses items into block form"));
<bloodmagic:sigil_compression>.addTooltip(format.red("LP Cost: 40 LP/s"));

<bloodmagic:sigil_ender_severance>.addTooltip(format.white("Prevents endermen from teleporting within a 10 block radius"));
<bloodmagic:sigil_ender_severance>.addTooltip(format.red("LP Cost: 10 LP/s"));

<bloodmagic:sigil_holding>.addTooltip(format.white("Holds multiple sigils"));

<bloodmagic:sigil_teleposition>.addTooltip(format.white("Teleports you to linked teleposer"));
<bloodmagic:sigil_teleposition>.addTooltip(format.red("LP Cost: 1000 LP"));

<bloodmagic:sigil_transposition>.addTooltip(format.white("Stores and places blocks"));
<bloodmagic:sigil_transposition>.addTooltip(format.white("Shift click to store block, right click to place"));
<bloodmagic:sigil_transposition>.addTooltip(format.red("LP Cost: 5000 LP"));

// TODO find cost

<bloodmagic:sigil_claw>.addTooltip(format.white("Allows you to cling to walls"));
// <bloodmagic:sigil_claw>.addTooltip(format.red("LP Cost: 1000 LP"));

<bloodmagic:sigil_bounce>.addTooltip(format.white("Allows you to bounce"));
// <bloodmagic:sigil_bounce>.addTooltip(format.red("LP Cost: 1000 LP"));

<bloodmagic:sigil_frost>.addTooltip(format.white("Temporarily freezes water around you"));
// <bloodmagic:sigil_frost>.addTooltip(format.red("LP Cost: 1000 LP"));

<bloodarsenal:sigil_augmented_holding>.addTooltip(format.white("Holds even more sigils"));

<bloodarsenal:sigil_lightning>.addTooltip(format.white("Summons lightning, shift right click for more lightning"));
// <bloodarsenal:sigil_lightning>.addTooltip(format.red("LP Cost: 1000 LP"));

<bloodarsenal:sigil_divinity>.addTooltip(format.white("Makes you invincible"));
// <bloodarsenal:sigil_divinity>.addTooltip(format.red("LP Cost: 1000 LP"));

<bloodarsenal:sigil_swimming>.addTooltip(format.white("Gives water breathing, increases swimming speed and underwater mining speed"));
// <bloodarsenal:sigil_swimming>.addTooltip(format.red("LP Cost: 1000 LP"));

<bloodarsenal:sigil_ender>.addTooltip(format.white("Right click to open ender chest"));
<bloodarsenal:sigil_ender>.addTooltip(format.white("Shift Right click to teleport"));
// <bloodarsenal:sigil_ender>.addTooltip(format.red("LP Cost: 1000 LP"));

<animus:sigil_chains>.addTooltip(format.white("Can transport mobs"));
// <animus:sigil_chains>.addTooltip(format.red("LP Cost: 1000 LP"));

<animus:sigil_transposition>.addTooltip(format.white("Moves blocks"));
// <animus:sigil_transposition>.addTooltip(format.red("LP Cost: 1000 LP"));

<animus:sigil_consumption>.addTooltip(format.white("Spreads Antimatter to all blocks of the same type nearby"));
// <animus:sigil_consumption>.addTooltip(format.red("LP Cost: 1000 LP"));

<animus:sigil_storm>.addTooltip(format.white("Summons lightning"));
// <animus:sigil_storm>.addTooltip(format.red("LP Cost: 1000 LP"));

<animus:sigil_leech>.addTooltip(format.white("Consumes plants in inventory and around you to restore hunger"));
// <animus:sigil_leech>.addTooltip(format.red("LP Cost: 1000 LP"));

<bloodarsenal:sigil_sentience>.addTooltip(format.white("Summons a spectral version of the tool in your main hand"));
<bloodarsenal:sigil_sentience>.addTooltip(format.white("Spectral tools act on blocks and mobs from afar"));
// <bloodarsenal:sigil_sentience>.addTooltip(format.red("LP Cost: 1000 LP"));

<bloodarsenal:self_sacrifice_amulet>.addTooltip(format.white("Collects LP when taking damage"));
<bloodarsenal:sacrifice_amulet>.addTooltip(format.white("Collects LP when dealing damage to mobs"));
<bloodarsenal:vampire_ring>.addTooltip(format.white("Collects LP from nearby bleeding mobs"));

// TODO add stats

<bloodmagic:sacrificial_dagger>.addTooltip(format.white("Deals self-damage which is converted into LP at a nearby Blood Altar"));
<bloodmagic:dagger_of_sacrifice>.addTooltip(format.white("Instantly kills mobs when near a Blood Altar"));
<bloodmagic:dagger_of_sacrifice>.addTooltip(format.white("Adds LP per mob kill"));
<bloodarsenal:glass_sacrificial_dagger>.addTooltip(format.white("Gives more LP than the Sacrificial Dagger"));
<bloodarsenal:glass_dagger_of_sacrifice>.addTooltip(format.white("Gives more LP than the Dagger of Sacrifice"));

<bloodarsenal:altare_aenigmatica>.addTooltip(format.white("Helpful for automating the Blood Altar"));
addDescription(<bloodarsenal:altare_aenigmatica>,
"This block can be used to automate charging a blood orb and crafting items on a single Blood Altar!",
"",
"Place the block facing the Blood Altar. The green dot must be facing the Blood Altar. Then, right click a blood orb with the block.",
"Now, place the blood orb in the orb slot and input any items you want to convert into the 9 slots on the left.",
"The block will automatically switch between charging the blood orb and converting items placed in the 9 slots.");

<bloodarsenal:stasis_plate>.addTooltip(format.white("Used in Blood Arsenal Rituals"));


// --== TC Documentation ==-- //
// TODO


// --== ET Multiblock JEI Descriptions ==-- //

val nanobot_modifier = [
  <environmentaltech:modifier_speed>,
  <environmentaltech:modifier_creative_flight>,
  <environmentaltech:modifier_flight_speed>,
  <environmentaltech:modifier_haste>,
  <environmentaltech:modifier_strength>,
  <environmentaltech:modifier_jump_boost>,
  <environmentaltech:modifier_regeneration>,
  <environmentaltech:modifier_resistance>,
  <environmentaltech:modifier_fire_resistance>,
  <environmentaltech:modifier_water_breathing>,
  <environmentaltech:modifier_invisibility>,
  <environmentaltech:modifier_night_vision>,
  <environmentaltech:modifier_health_boost>,
  <environmentaltech:modifier_saturation>,
  <environmentaltech:modifier_glowing>,
  <environmentaltech:modifier_luck>
  ] as IItemStack[];

for modifier in nanobot_modifier {
  modifier.addTooltip("§fNano Bot Beacon Modifier§r");
}

val miner_modifier = [
  <environmentaltech:modifier_speed>,
  <environmentaltech:modifier_luck>,
  <environmentaltech:modifier_accuracy>
] as IItemStack[];

for modifier in miner_modifier {
  modifier.addTooltip("§fMiner Modifier§r");
}

<environmentaltech:modifier_piezo>.addTooltip("§fSolar Array Modifier");
<environmentaltech:modifier_piezo>.addTooltip("§fAllows Solar Array to work in rain");

// Solar Arrays
// Map format: [solars]: [[tier], [power output ranging from litherite to aethium solar cells], [modifiers, structure frames, solar cells], [dimensions]]
val et_solars = {
  <environmentaltech:solar_cont_1>:[[1], [549, 729, 1098, 1467, 2205, 2943], [4,16,9], ["5x2x5"]],
  <environmentaltech:solar_cont_2>:[[2], [4300, 5734, 8601, 11468, 17203, 22937], [4,24,25], ["7x2x7"]],
  <environmentaltech:solar_cont_3>:[[3], [39016, 52022, 78033, 104044, 156067, 208089], [8,32,49], ["9x2x9"]],
  <environmentaltech:solar_cont_4>:[[4], [109247, 145662, 218494, 291325, 436988, 582651], [8,40,81], ["11x2x11"]],
  <environmentaltech:solar_cont_5>:[[5], [456950, 609266, 913900, 1218533, 1827800, 2437066], [12,48,121], ["13x2x13"]],
  <environmentaltech:solar_cont_6>:[[6], [1787014, 2382685, 3574028, 4765371, 7148057, 9530743], [12,56,169], ["15x2x15"]],
} as IData[][][IItemStack];

for solar, values in et_solars {
  addDescription(solar, ["Power Output:",
  "Litherite Cells: " ~ values[1][0] ~ " RF/t",
  "Erodium Cells: " ~ values[1][1] ~ " RF/t",
  "Kyronite Cells: " ~ values[1][2] ~ " RF/t",
  "Pladium Cells: " ~ values[1][3] ~ " RF/t",
  "Ionite Cells: " ~ values[1][4] ~ " RF/t",
  "Aethium Cells: " ~ values[1][5] ~ " RF/t",
  "",
  "Dimensions: " ~ values[3][0],
  "",
  "Required Blocks:",
  "" ~ values[2][0] ~ " Null or Piezo Modifiers in any combination",
  "" ~ values[2][1] ~ " Structure Frames tier " ~ values[0][0] ~ " or above",
  "" ~ values[2][2] ~ " Solar Cells of any type"
  ]);
}

// Void Miners
// Map format: [miners]:[[tier], [base power, max power], [base operation time, fastest operation time], 
// [speed modifier count, accuracy modifier count], [modifiers, structure frames, structure panels, laser cores], [dimensions]]
val et_miners = {
  [<environmentaltech:void_ore_miner_cont_2>]:[[2], [3125, 19668], [320, 80], [4, 0], [4,32,16,3], ["7x5x7"]],
  [<environmentaltech:void_ore_miner_cont_3>]:[[3], [6250, 74787], [160, 32], [5, 3], [8,56,52,4], ["11x6x11"]],
  [<environmentaltech:void_ore_miner_cont_4>]:[[4], [12500, 224928], [80, 16], [5, 7], [12,56,56,5], ["11x7x11"]],
  [<environmentaltech:void_ore_miner_cont_5>]:[[5], [25000, 1368391], [40, 4], [6, 10], [16,72,36,6], ["11x8x11"]],
  [<environmentaltech:void_ore_miner_cont_6>]:[[6], [50000, 8324860], [20, 1], [7, 13], [20,92,56,6], ["13x8x13"]],
  [<environmentaltech:void_res_miner_cont_2>, <environmentaltech:void_botanic_miner_cont_2>]:[[2], [200, 1258], [320, 80], [4, 0], [4,32,16,3], ["7x5x7"]],
  [<environmentaltech:void_res_miner_cont_3>, <environmentaltech:void_botanic_miner_cont_3>]:[[3], [400, 4786], [160, 32], [5, 3], [8,56,52,4], ["11x6x11"]],
  [<environmentaltech:void_res_miner_cont_4>, <environmentaltech:void_botanic_miner_cont_4>]:[[4], [800, 14395], [80, 16], [5, 7], [12,56,56,5], ["11x7x11"]],
  [<environmentaltech:void_res_miner_cont_5>, <environmentaltech:void_botanic_miner_cont_5>]:[[5], [1600, 87577], [40, 4], [6, 10], [16,72,36,6], ["11x8x11"]],
  [<environmentaltech:void_res_miner_cont_6>, <environmentaltech:void_botanic_miner_cont_6>]:[[6], [3200, 532790], [20, 1], [7, 13], [20,92,56,6], ["13x8x13"]],
} as IData[][][IItemStack[]];

for miners, values in et_miners {
  addDescription(miners, [
    "Base power consumption:", 
    "" ~ values[1][0] ~ " RF/t",
    "Max power consumption:", 
    "" ~ values[1][1] ~ " RF/t",
    "Base operation time: " ~ values[2][0] ~ " t",
    "Fastest operation time: " ~ values[2][1] ~ " t",
    "",
    "Optimal Modifier Combination: " ~ values[3][0] ~ " speed & " ~ values[3][1] ~ " luck modifiers",
    "Dimensions: " ~ values[5][0],
    "",
    "Required Blocks:",
		"" ~ values[4][0] ~ " Null or Miner Modifiers in any combination",
		"" ~ values[4][1] ~ " Structure Frames tier " ~ values[0][0] ~ " or above",
		"" ~ values[4][2] ~ " Structure Panels",
		"" ~ values[4][3] ~ " Laser Cores",
		"1 Laser Lens of any type"
  ]);
}

// Map format: [miners]: [[power consumption, operation time], [structure frames, structure panels, laser cores]]
val t1_et_miners = {
  [<environmentaltech:void_ore_miner_cont_1>]: [[2500, 400], [24, 20, 2]],
  [<environmentaltech:void_res_miner_cont_1>, <environmentaltech:void_botanic_miner_cont_1>]: [[160, 400], [24, 20, 2]],
} as IData[][][IItemStack[]];

for miners, values in t1_et_miners {
  addDescription(miners, [
    "Power Consumption: " ~ values[0][0] ~ " RF/t",
    "Operation time: " ~ values[0][1] ~ " t",
    "Dimensions: 7x4x7",
    "",
    "Required Blocks:",
		"" ~ values[1][0] ~ " Structure Frames tier 1 or above",
		"" ~ values[1][1] ~ " Structure Panels",
		"" ~ values[1][2] ~ " Laser Cores",
		"1 Laser Lens of any type"
  ]);
}

// Beacons
// Map format: [beacons]: [[tier], [modifiers, structure frames, structure panels], [dimensions]]
val et_beacons = {
  [<environmentaltech:nano_cont_ranged_1>, <environmentaltech:nano_cont_personal_1>]: [[1], [4,20,12], ["5x3x5"]],
  [<environmentaltech:nano_cont_ranged_2>, <environmentaltech:nano_cont_personal_2>]: [[2], [8,36,24], ["7x4x7"]],
  [<environmentaltech:nano_cont_ranged_3>, <environmentaltech:nano_cont_personal_3>]: [[3], [12,56,40], ["9x5x9"]],
  [<environmentaltech:nano_cont_ranged_4>, <environmentaltech:nano_cont_personal_4>]: [[4], [16,80,60], ["11x6x11"]],
  [<environmentaltech:nano_cont_ranged_5>, <environmentaltech:nano_cont_personal_5>]: [[5], [20,108,84], ["13x7x13"]],
  [<environmentaltech:nano_cont_ranged_6>, <environmentaltech:nano_cont_personal_6>]: [[6], [24,140,112], ["15x8x15"]],
} as IData[][][IItemStack[]];

for beacons, values in et_beacons {
  addDescription(beacons, [
    "Dimensions: " ~ values[2][0],
    "",
    "Required Blocks:",
		"" ~ values[1][0] ~ " Null or Beacon Modifiers in any combination",
		"" ~ values[1][1] ~ " Structure Frames tier " ~ values[0][0] ~ " or above",
		"" ~ values[1][2] ~ " Structure Panels"
  ]);
}

// Lightning Rods

val et_lightning_rods = {
  <environmentaltech:lightning_cont_1>: [[1], [4,3,3], ["3x7x3"]],
  <environmentaltech:lightning_cont_2>: [[1], [4,4,4], ["3x9x3"]],
  <environmentaltech:lightning_cont_3>: [[1], [4,5,5], ["3x11x3"]],
  <environmentaltech:lightning_cont_4>: [[1], [13,4,16], ["3x13x3"]],
  <environmentaltech:lightning_cont_5>: [[1], [13,6,22], ["3x18x3"]],
  <environmentaltech:lightning_cont_6>: [[1], [13,8,28], ["3x23x3"]],
} as IData[][][IItemStack];

for lightning_rods, values in et_lightning_rods {
  addDescription(lightning_rods, [
    "Dimensions: " ~ values[2][0],
    "",
    "Required Blocks:",
    "" ~ values[1][0] ~ " Structure Frames tier " ~ values[0][0] ~ " or above",
		"" ~ values[1][1] ~ " Lightning Rods",
		"" ~ values[1][2] ~ " Insulated Lightning Rods"
  ]);
}


// --== Machine upgrade descriptions ==-- //

var shiftToolTip = "§7Hold §e§oShift§7 for Details§r" as string;

<techreborn:upgrades>.addShiftTooltip("§aReduces Recipe Time to 0.33x.", shiftToolTip);
<techreborn:upgrades>.addShiftTooltip("§4Multiplies Power Consumption by 4x.");

<techreborn:upgrades:2>.addShiftTooltip("§aIncreases power storage by 160kRF.§r", shiftToolTip);

<techreborn:upgrades:1>.addShiftTooltip("§aMultiplies Maximum Power Input by 4x.§r", shiftToolTip);

var reinforcedUpgrade = "§4Increases Energy per Operation to 1.25x.";
var augmentSlot = "§aAdds an extra augment slot.";
var signalumUpgrade1 = "§aIncreases Power Usage to 2.5x.";
var signalumUpgrade2 = "§4Increases Energy per Operation to 1.5x.";
var resonantUpgrade1 = "§aIncreases Power Usage to 8x.";
var resonantUpgrade2 = "§4Increases Energy per Operation to 2x.";

<thermalfoundation:upgrade:1>.addShiftTooltip(augmentSlot);
<thermalfoundation:upgrade:1>.addShiftTooltip(reinforcedUpgrade);
<thermalfoundation:upgrade:33>.addShiftTooltip(augmentSlot);
<thermalfoundation:upgrade:33>.addShiftTooltip(reinforcedUpgrade);

<thermalfoundation:upgrade:2>.addShiftTooltip(signalumUpgrade1);
<thermalfoundation:upgrade:2>.addShiftTooltip(augmentSlot);
<thermalfoundation:upgrade:2>.addShiftTooltip(signalumUpgrade2);
<thermalfoundation:upgrade:34>.addShiftTooltip(signalumUpgrade1);
<thermalfoundation:upgrade:34>.addShiftTooltip(augmentSlot);
<thermalfoundation:upgrade:34>.addShiftTooltip(signalumUpgrade2);

<thermalfoundation:upgrade:3>.addShiftTooltip(resonantUpgrade1);
<thermalfoundation:upgrade:3>.addShiftTooltip(augmentSlot);
<thermalfoundation:upgrade:3>.addShiftTooltip(resonantUpgrade2);
<thermalfoundation:upgrade:35>.addShiftTooltip(resonantUpgrade1);
<thermalfoundation:upgrade:35>.addShiftTooltip(augmentSlot);
<thermalfoundation:upgrade:35>.addShiftTooltip(resonantUpgrade2);

<techreborn:part:15>.addTooltip(format.white("Blast Furnace Upgrade: +500 Heat"));
<techreborn:part:14>.addTooltip(format.white("Blast Furnace Upgrade: +500 Heat"));
<techreborn:machine_casing:1>.addShiftTooltip(format.white("Blast Furnace Modifier: +20 Heat"));
<techreborn:machine_casing:2>.addShiftTooltip(format.white("Blast Furnace Modifier: +20 Heat"));

addDescription(<techreborn:industrial_blast_furnace>,
"Base Heat: 1020",
"",
"General Upgrades",
"Filling inside with Lava: +500 Heat",
"4 Kanthal Heating Coils: +500 Heat",
"4 Nichrome Heating Coils: +500 Heat",
"",
"Casing Upgrades",
"Reinforced Machine Casing: +20 Heat each",
"Advanced Machine Casing: +40 Heat each");


##=======================================================
## JEI ITEM ADDITIONS
##=======================================================

// Fake Angel Ring
<contenttweaker:angelring_fake>.addShiftTooltip(format.blue("-Vicio Ritual (Limited Area)"), format.gold("Looking for flight? Hold shift:"));
<contenttweaker:angelring_fake>.addShiftTooltip(format.blue("-Glowing Chorus Fruit (2:00 Per)"));
<contenttweaker:angelring_fake>.addShiftTooltip(format.blue("-Thaumostaic Harness (Requires stored Vis)"));
<contenttweaker:angelring_fake>.addShiftTooltip(format.gray("-Air Sigil (Launches you when used)"));
<contenttweaker:angelring_fake>.addShiftTooltip(format.gold("-Glitch Armor"));
<contenttweaker:angelring_fake>.addShiftTooltip(format.blue("-Vicio Star Mantle (Requires a perk for Creative Flight)"));
<contenttweaker:angelring_fake>.addShiftTooltip(format.gold("-Mithnimite Armor"));
<contenttweaker:angelring_fake>.addShiftTooltip(format.blue("-Jetpack (Requires Hydrogen)"));
<contenttweaker:angelring_fake>.addShiftTooltip(format.blue("-Wings of the Bat (Needs to Recharge)"));
<contenttweaker:angelring_fake>.addShiftTooltip(format.blue("-Environmental Controller (Limited Area)"));
<contenttweaker:angelring_fake>.addShiftTooltip(format.gold("-Supremium Armor"));
<contenttweaker:angelring_fake>.addShiftTooltip(format.blue("-Flugel Tiara (Eye of the Flugel for infinite time)"));
<contenttweaker:angelring_fake>.addShiftTooltip(format.blue("-Ranged Nano Bot Beacon (Limited Area)"));
<contenttweaker:angelring_fake>.addShiftTooltip(format.gold("-Personal Nano Bot Beacon"));


//mods.jei.JEI.addItem(<tconstruct:toolforge>);

mods.jei.JEI.addItem(<tconstruct:toolforge>.withTag({textureBlock: {id: "tconstruct:metal", Count: 1 as byte, Damage: 4 as short}}));
mods.jei.JEI.addItem(<conarm:armorforge>.withTag({textureBlock: {id: "tconstruct:metal", Count: 1 as byte, Damage: 3 as short}}));

//mods.jei.JEI.addItem(<rockhounding_chemistry:machines_e:1>);


##=======================================================
## CHANGING MAX STACK SIZE
##=======================================================

<tombstone:impregnated_diamond>.maxStackSize = 64;
<techreborn:lapotroncrystal>.withTag({energy: 0}).maxStackSize = 64;
<techreborn:energycrystal>.withTag({energy: 0}).maxStackSize = 64;
<techreborn:lapotronicorb>.withTag({energy: 0}).maxStackSize = 64;


##=======================================================
## HIDING JEI CATEGORIES
##=======================================================

mods.jei.JEI.hideCategory("Painter");
mods.jei.JEI.hideCategory("mekanism.combiner");
mods.jei.JEI.hideCategory("EIOWC");
mods.jei.JEI.hideCategory("EIOWO");
mods.jei.JEI.hideCategory("thermalexpansion.factorizer_combine");
mods.jei.JEI.hideCategory("thermalexpansion.factorizer_split");
mods.jei.JEI.hideCategory("EIOTank");
mods.jei.JEI.hideCategory("tinker_io:smart_output");
//mods.jei.JEI.hideCategory("embers.dawnstone_anvil");


##########################################################################################
print("==================== end of jei_general.zs ====================");
