import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;
import crafttweaker.liquid.ILiquidStack;
import mods.jei.JEI.addDescription;
import crafttweaker.formatting.IFormattedText;

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

<contenttweaker:ore_gen_info>.addTooltip("§fView uses in JEI to see ore vein generation§r");

// <translocators:translocator_part>.addTooltip("Hold Shift to see available modifiers");
// <translocators:translocator_part:1>.addTooltip("Hold Shift to see available modifiers");
<translocators:translocator_part>.addShiftTooltip((format.yellow("- Add Glowstone to increase transfer speed\n")), "Hold Shift to see available modifiers");
<translocators:translocator_part>.addShiftTooltip((format.red("- Add Redstone to enable toggling in/output\n")));
<translocators:translocator_part>.addShiftTooltip((format.gray("- Add Iron to emit a signal when input is full of filtered item\n")));
<translocators:translocator_part>.addShiftTooltip((format.aqua("- Add a Diamond Nugget to enable fine tuning of filter supply and demand")));
<translocators:translocator_part:1>.addShiftTooltip((format.yellow("- Add Glowstone to increase transfer speed\n")), "Hold Shift to see available modifiers");
<translocators:translocator_part:1>.addShiftTooltip((format.red("- Add Redstone to enable toggling in/output")));


<mekanism:tierinstaller:3>.addTooltip(format.lightPurple("Only works on Bins, Energy Cubes, Tanks and Gas Tanks"));

<bloodmagic:item_demon_crystal>.addTooltip("§bObtained from the Demon Crystalliser§r");
<bloodmagic:item_demon_crystal:1>.addTooltip("§bObtained from the Resonance of the Faceted Crystal ritual§r");
<bloodmagic:item_demon_crystal:2>.addTooltip("§bObtained from the Resonance of the Faceted Crystal ritual§r");
<bloodmagic:item_demon_crystal:3>.addTooltip("§bObtained from the Resonance of the Faceted Crystal ritual§r");
<bloodmagic:item_demon_crystal:4>.addTooltip("§bObtained from the Resonance of the Faceted Crystal ritual§r");
addDescription(<liquid:blockfluidantimatter>, "Obtained from striking Life Essence with Lightning§r");
<liquid:blockfluidantimatter>.addTooltip("§6Obtained from striking Life Essence with Lightning");

<techreborn:part:33>.addTooltip("§6Obtained from the Recycler§r");

<astralsorcery:blockgemcrystals>.addTooltip("§bCreated by throwing a Rock Crystal and Glowstone Dust in Starlight§r");
<astralsorcery:itemperkgem>.addTooltip("§bGrows from a Gem Crystal Cluster§r");
<astralsorcery:itemperkgem>.addTooltip("§bForms around Noon and Midnight§r");
<astralsorcery:itemperkgem:1>.addTooltip("§bGrows from a Gem Crystal Cluster§r");
<astralsorcery:itemperkgem:1>.addTooltip("§bForms around Night to Morning§r");
<astralsorcery:itemperkgem:2>.addTooltip("§bGrows from a Gem Crystal Cluster§r");
<astralsorcery:itemperkgem:2>.addTooltip("§bForms around Afternoon and Evening§r");

addDescription(<liquid:aetherworks.impure_aetherium_gas>, "Obtained from the Aether Collector§r");
<liquid:aetherworks.impure_aetherium_gas>.addTooltip("§9Obtained from the Aether Collector");

//mods.jei.JEI.addDescription(<immersiveengineering:stone_decoration:1>,"Your first Steel is made in the High Oven");


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

<actuallyadditions:block_furnace_double>.addTooltip("Power Consumption: §c25 RF/t§r");
<actuallyadditions:block_canola_press>.addTooltip("Power Consumption: §c35 RF/t§r");
<actuallyadditions:block_farmer>.addTooltip("§c700 RF§7 per plant planted");
<actuallyadditions:block_farmer>.addTooltip("§c600 RF§7 per plant harvested");

<immersiveengineering:metal_device1>.addTooltip("Power Consumption: §c32 RF/t§r");
<immersiveengineering:metal_device1:13>.addTooltip("Power Consumption: §c200 RF/t§r");
<immersiveengineering:metal_device1:5>.addTooltip("Charging Rate: §6256 RF/t§r");
<immersiveengineering:metal_multiblock>.addTooltip("Power Consumption: §c~150 RF/t§r");
<immersiveengineering:metal_multiblock:1>.addTooltip("Power Consumption: §c20-160 RF/t§r");
<immersiveengineering:metal_multiblock:4>.addTooltip("Power Consumption: §c~5 RF/t§7 per slot");
<immersiveengineering:metal_multiblock:5>.addTooltip("Power Consumption: §c~480 RF/t§r");
<immersiveengineering:metal_multiblock:6>.addTooltip("Power Consumption: §c16 RF/t§r");
<immersiveengineering:metal_multiblock:7>.addTooltip("Power Consumption: §c80 RF/t§7 per slot");
<immersiveengineering:metal_multiblock:8>.addTooltip("Power Consumption: §c80 RF/t§7 per slot");
<immersiveengineering:metal_multiblock:9>.addTooltip("Power Consumption: §c80 RF/t§r");
<immersiveengineering:metal_multiblock:11>.addTooltip("Power Consumption: §c4096 RF/t§r");
<immersiveengineering:metal_multiblock:13>.addTooltip("Power Consumption: §c512-2048 RF/t§7 per slot");
<immersiveengineering:metal_multiblock:15>.addTooltip("Power Consumption: §c6 RF/t§7 per slot");

<immersivepetroleum:metal_multiblock>.addTooltip("Power Consumption: §c2048 RF/t§r");
<immersivepetroleum:metal_multiblock:2>.addTooltip("Power Consumption: §c1024 RF/t§r");

<immersivetech:metal_multiblock>.addTooltip("Power Consumption: §c500 RF/t§r");
<immersivetech:metal_multiblock1:2>.addTooltip("Power Consumption: §c64 RF/t§r");
<immersivetech:metal_multiblock1:6>.addTooltip("Power Consumption: §c2048 RF/t§r");
<immersivetech:metal_multiblock1:8>.addTooltip("Power Consumption: §c512 RF/t§r");

<deepmoblearning:simulation_chamber>.addTooltip("Power Consumption: §c512-6666 RF/t§r");
<deepmoblearning:extraction_chamber>.addTooltip("Power Consumption: §c256 RF/t§r");


<enderio:block_painter>.addTooltip("Base Power Consumption: §c500 RF/t§r");
<enderio:block_niard>.addTooltip("Base Power Consumption: §c5 RF/t§r");
<enderio:block_crafter>.addTooltip("Base Power Consumption: §c10 RF/t§r");

<nuclearcraft:manufactory>.addTooltip("Base Power Consumption: §c1000 RF/t§r");
<nuclearcraft:separator>.addTooltip("Base Power Consumption: §c1000 RF/t§r");
<nuclearcraft:decay_hastener>.addTooltip("Base Power Consumption: §c1000 RF/t§r");
<nuclearcraft:fuel_reprocessor>.addTooltip("Base Power Consumption: §c2000 RF/t§r");
<nuclearcraft:alloy_furnace>.addTooltip("Base Power Consumption: §c1000 RF/t§r");
<nuclearcraft:infuser>.addTooltip("Base Power Consumption: §c1000 RF/t§r");
<nuclearcraft:melter>.addTooltip("Base Power Consumption: §c1000 RF/t§r");
<nuclearcraft:supercooler>.addTooltip("Base Power Consumption: §c400-2000 RF/t§r");
<nuclearcraft:electrolyzer>.addTooltip("Base Power Consumption: §c1000 RF/t§r");

<nuclearcraft:assembler>.addTooltip("Base Power Consumption: §c1000 RF/t§r");
<nuclearcraft:pressurizer>.addTooltip("Base Power Consumption: §c1000-2000 RF/t§r");
<nuclearcraft:chemical_reactor>.addTooltip("Base Power Consumption: §c500-1000 RF/t§r");
<nuclearcraft:salt_mixer>.addTooltip("Base Power Consumption: §c2000 RF/t§r");
<nuclearcraft:crystallizer>.addTooltip("Base Power Consumption: §c1000 RF/t§r");
<nuclearcraft:enricher>.addTooltip("Base Power Consumption: §c1000 RF/t§r");
<nuclearcraft:extractor>.addTooltip("Base Power Consumption: §c1000 RF/t§r");
<nuclearcraft:centrifuge>.addTooltip("Base Power Consumption: §c1000 RF/t§r");
<nuclearcraft:rock_crusher>.addTooltip("Base Power Consumption: §c2000 RF/t§r");

<appliedenergistics2:charger>.addTooltip("Power Consumption: §c~60 RF/t§r");
<appliedenergistics2:inscriber>.addTooltip("Base Power Consumption: §c20 RF/t§r");
<ae2stuff:inscriber>.addTooltip("Base Power Consumption: §c20 RF/t§r");
<appliedenergistics2:quartz_growth_accelerator>.addTooltip("Power Consumption: §c16 RF/t§r");
<ae2stuff:grower>.addTooltip("Power Consumption: §c200 RF/t§r");

<thermalexpansion:machine>.addShiftTooltip("Base Power Consumption: §c250 RF/t§r");
<thermalexpansion:machine:1>.addShiftTooltip("Base Power Consumption: §c500 RF/t§r");
<thermalexpansion:machine:2>.addShiftTooltip("Base Power Consumption: §c500 RF/t§r");
<thermalexpansion:machine:3>.addShiftTooltip("Base Power Consumption: §c500 RF/t§r");
<thermalexpansion:machine:4>.addShiftTooltip("Base Power Consumption: §c500 RF/t§r");
<thermalexpansion:machine:5>.addShiftTooltip("Base Power Consumption: §c500 RF/t§r");
<thermalexpansion:machine:6>.addShiftTooltip("Base Power Consumption: §c1000 RF/t§r");
<thermalexpansion:machine:7>.addShiftTooltip("Base Power Consumption: §c500 RF/t§r");
<thermalexpansion:machine:8>.addShiftTooltip("Base Power Consumption: §c400 RF/t§r");
<thermalexpansion:machine:9>.addShiftTooltip("Base Power Consumption: §c1000 RF/t§r");
<thermalexpansion:machine:10>.addShiftTooltip("Base Power Consumption: §c500 RF/t§r");
<thermalexpansion:machine:11>.addShiftTooltip("Base Power Consumption: §c50 RF/t§r");
<thermalexpansion:machine:12>.addShiftTooltip("Base Power Consumption: §c250 RF/t§r");
<thermalexpansion:machine:13>.addShiftTooltip("Base Power Consumption: §c500 RF/t§r");
<thermalexpansion:machine:14>.addShiftTooltip("Base Power Consumption: §c100 RF/t§r");
<thermalexpansion:machine:15>.addShiftTooltip("Base Power Consumption: §c100 RF/t§r");

<mekanism:machineblock>.addShiftTooltip("Base Power Consumption: §c100 RF/t§r");
<mekanism:machineblock:1>.addShiftTooltip("Base Power Consumption: §c200 RF/t§r");
<mekanism:machineblock:3>.addShiftTooltip("Base Power Consumption: §c100 RF/t§r");
<mekanism:machineblock:4>.addShiftTooltip("Base Power Consumption: §c1600 RF/t§r");
<mekanism:machineblock:8>.addShiftTooltip("Base Power Consumption: §c100 RF/t§r");
<mekanism:machineblock:9>.addShiftTooltip("Base Power Consumption: §c400 RF/t§r");
<mekanism:machineblock:10>.addShiftTooltip("Base Power Consumption: §c60 RF/t§r");
<mekanism:machineblock:12>.addShiftTooltip("Base Power Consumption: §c40 RF/t§r");
<mekanism:machineblock2:0>.addShiftTooltip("Base Power Consumption: §c100 RF/t§r");
<mekanism:machineblock2:1>.addShiftTooltip("Base Power Consumption: §c200 RF/t§r");
<mekanism:machineblock2:2>.addShiftTooltip("Base Power Consumption: §c200 RF/t§r");
<mekanism:machineblock2:3>.addShiftTooltip("Base Power Consumption: §c800 RF/t§r");
<mekanism:machineblock2:4>.addShiftTooltip("Base Power Consumption: §c160 RF/t§r");
<mekanism:machineblock2:5>.addShiftTooltip("Base Power Consumption: §c60 RF/t§r");
<mekanism:machineblock2:6>.addShiftTooltip("Base Power Consumption: §c800 RF/t§r");
<mekanism:machineblock2:7>.addShiftTooltip("Base Power Consumption: §c400 RF/t§r");
<mekanism:machineblock2:8>.addShiftTooltip("Base Power Consumption: §c800 RF/t§r");
<mekanism:machineblock2:9>.addShiftTooltip("Base Power Consumption: §c200 RF/t§r");
<mekanism:machineblock2:12>.addShiftTooltip("Base Power Consumption: §c200 RF/t§r");
<mekanism:machineblock2:13>.addShiftTooltip("Base Power Consumption: §c2000 RF/t§r");
<mekanism:machineblock3:5>.addShiftTooltip("Base Power Consumption: §c20 RF/t§r");

<enderio:block_alloy_smelter>.addShiftTooltip("Base Power Consumption: §c1000 RF/t§r");
<enderio:block_enhanced_alloy_smelter>.addShiftTooltip("Base Power Consumption: §c4000 RF/t§r");
<enderio:block_sag_mill>.addShiftTooltip("Base Power Consumption: §c100 RF/t§r");
<enderio:block_enhanced_sag_mill>.addShiftTooltip("Base Power Consumption: §c4000 RF/t§r");
<enderio:block_vat>.addShiftTooltip("Base Power Consumption: §c1000 RF/t§r");
<enderio:block_enhanced_vat>.addShiftTooltip("Base Power Consumption: §c4000 RF/t§r");
<enderio:block_wired_charger>.addShiftTooltip("Base Charging Rate: §610 kRF/t§r");
<enderio:block_enhanced_wired_charger>.addShiftTooltip("Base Charging Rate: §620 kRF/t§r");
<enderio:block_farm_station>.addShiftTooltip("Base Power Consumption: §c1440 RF/t§r");
<enderio:block_slice_and_splice>.addShiftTooltip("Base Power Consumption: §c20 kRF/t§r");
<enderio:block_soul_binder>.addShiftTooltip("Base Power Consumption: §c40 kRF/t§r");
<enderio:block_powered_spawner>.addShiftTooltip("Base Power Consumption: §c1280 RF/t§r");


// --== Embers Documentation ==-- //

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


// --== BM Rune Documentation ==-- //
// Credits to the E2E-E Dev!

<bloodmagic:blood_rune:1>.addTooltip("§f+20% Crafting / Orb filling speed");
<bloodmagic:blood_rune:3>.addTooltip("§f+10% LP from rituals/dagger of sacrifice");
<bloodmagic:blood_rune:4>.addTooltip("§f+10% LP from sacrificial dagger");
<bloodmagic:blood_rune:5>.addTooltip("§fx1.2 altar transfer rate");
<bloodmagic:blood_rune:6>.addTooltip("§f+2000 LP capacity");
<bloodmagic:blood_rune:7>.addTooltip("§fx1.1 LP capacity");
<bloodmagic:blood_rune:8>.addTooltip("§f+2% maximum blood orb capacity");
<bloodmagic:blood_rune:9>.addTooltip("§f-1 tick between processes (default is 20)");
<bloodmagic:blood_rune:10>.addTooltip("§f+1000 Charge");


// TODO ET Multiblock JEI Descriptions ==-- //

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

// # Solar Panels
// val or_above = " " ~ desc.local("et.or_above");
// for i,a in [
// 	[4,16,9],
// 	[4,24,25],
// 	[8,32,49],
// 	[8,40,81],
// 	[12,48,121],
// 	[12,56,169],
// ] as int[][] {
// 	desc.jei(
// 		itemUtils.getItem("environmentaltech:solar_cont_"~(i+1)),
// 		"solar_cont", a[0], a[1], (i+1) as string ~ (i==5?"":or_above), a[2]
// 	);
// }

// # Void Ore Miner
// desc.jei(<environmentaltech:void_ore_miner_cont_1>, "et_cont_1", 24, 20, 2);

// for i,a in [
// 	[4,32,16,3],
// 	[8,56,52,4],
// 	[12,56,56,5],
// 	[16,72,36,6],
// 	[20,92,56,6],
// ] as int[][] {
// 	desc.jei(
// 		itemUtils.getItem("environmentaltech:void_ore_miner_cont_"~(i+2)),
// 		"et_miner_cont_any", a[0], a[1], (i+2) as string ~ (i==4?"":or_above), a[2], a[3]
// 	);
// }

// # Void Resource Miner
// desc.jei(<environmentaltech:void_res_miner_cont_1>, "et_cont_1", 24, 20, 2 );
// for i,a in [
// 	[4,32,16,3],
// 	[8,56,52,4],
// 	[12,56,56,5],
// 	[16,72,36,6],
// 	[20,92,56,6],
// ] as int[][] {
// 	desc.jei(
// 		itemUtils.getItem("environmentaltech:void_res_miner_cont_"~(i+2)),
// 		"et_miner_cont_any", a[0], a[1], (i+2) as string ~ (i==4?"":or_above), a[2], a[3]
// 	);
// }

// # Nanobot Beacon
// for i,a in [
// 	[4,20,12],
// 	[8,36,24],
// 	[12,56,40],
// 	[16,80,60],
// 	[20,108,84],
// 	[24,140,112],
// ] as int[][] {
// 	desc.jei(
// 		itemUtils.getItem("environmentaltech:nano_cont_personal_"~(i+1)),
// 		"nano_cont_personal", a[0], a[1], (i+1) as string ~ (i==5?"":or_above), a[2]
// 	);
// }

// # Lightning Rod
// for i,a in [
// 	[4,3,3],
// 	[4,4,4],
// 	[4,5,5],
// 	[13,4,16],
// 	[13,6,22],
// 	[13,8,28],
// ] as int[][] {
// 	desc.jei(
// 		itemUtils.getItem("environmentaltech:nano_cont_personal_"~(i+1)),
// 		"nano_cont_personal", a[0], (i+1) as string ~ (i==5?"":or_above), a[1], a[2]
// 	);
// }


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
<contenttweaker:angelring_fake>.addShiftTooltip(format.blue("-Nanobot Beacon (Limited Area)"));

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
