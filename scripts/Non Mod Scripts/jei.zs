import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;
import mods.requious.Assembly;
import mods.requious.AssemblyRecipe;
import mods.requious.SlotVisual;
import crafttweaker.liquid.ILiquidStack;
import mods.requious.GaugeDirection;
import mods.jei.JEI.addDescription;
import crafttweaker.data.IData;
import crafttweaker.formatting.IFormattedText;
import crafttweaker.enchantments.IEnchantment;
import crafttweaker.potions.IPotionEffect;

#priority -1

print("==================== loading jei.zs ====================");
##########################################################################################

##=======================================================
## JEI THINGS
##=======================================================

// --== JEI Renaming ==-- //

// Nether Quartz --> Quartz
<minecraft:quartz>.displayName = "Quartz";


// --== JEI Tooltips ==-- //

// General Tooltips
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

// Power production tooltips

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


// Power consumption tooltips

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

// Embers Documentation

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

// BM Rune Documentation
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


// TODO ET Multiblock JEI Descriptions

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


// Machine upgrade descriptions

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

//mods.jei.JEI.addDescription(<immersiveengineering:stone_decoration:1>,"Your first Steel is made in the High Oven");

// --== Item Additions to JEI ==-- //

//mods.jei.JEI.addItem(<tconstruct:toolforge>);

mods.jei.JEI.addItem(<tconstruct:toolforge>.withTag({textureBlock: {id: "tconstruct:metal", Count: 1 as byte, Damage: 4 as short}}));
mods.jei.JEI.addItem(<conarm:armorforge>.withTag({textureBlock: {id: "tconstruct:metal", Count: 1 as byte, Damage: 3 as short}}));

//mods.jei.JEI.addItem(<rockhounding_chemistry:machines_e:1>);


// --== Changing Max Stack Size ==-- //
<tombstone:impregnated_diamond>.maxStackSize = 64;
<techreborn:lapotroncrystal>.withTag({energy: 0}).maxStackSize = 64;
<techreborn:energycrystal>.withTag({energy: 0}).maxStackSize = 64;
<techreborn:lapotronicorb>.withTag({energy: 0}).maxStackSize = 64;


// --== Hiding JEI Categories ==-- //
mods.jei.JEI.hideCategory("Painter");
mods.jei.JEI.hideCategory("mekanism.combiner");
mods.jei.JEI.hideCategory("EIOWC");
mods.jei.JEI.hideCategory("EIOWO");
mods.jei.JEI.hideCategory("thermalexpansion.factorizer_combine");
mods.jei.JEI.hideCategory("thermalexpansion.factorizer_split");
mods.jei.JEI.hideCategory("EIOTank");
mods.jei.JEI.hideCategory("tinker_io:smart_output");
//mods.jei.JEI.hideCategory("embers.dawnstone_anvil");


##=======================================================
## REQUIOUS FRAKTO JEI CATEGORIES
##=======================================================

// --== Utility Functions ==-- //

// Credits to the E2E-E Dev!
// Functions that get textures from either the assembly_gauges or assembly_slots photos at the x and y coordinates supplied

function getVisGauge(u as int, w as int) as SlotVisual {
  return SlotVisual.create(1,1).addPart("requious:textures/gui/assembly_gauges.png",u,w);
}
function getVisSlots(u as int, w as int) as SlotVisual {
  return SlotVisual.create(1,1).addPart("requious:textures/gui/assembly_slots.png",u,w);
}

// Add recipes with item inputs and outputs easily
function add(ass as Assembly, chunk as IItemStack[][IIngredient[]]) {
  for inputs, outputs in chunk {
    val assRec = AssemblyRecipe.create(function(container) {
      for i, output in outputs {
        if(isNull(output)) continue;
        container.addItemOutput("item_output" ~ i, output);
      }
    });
    for i, input in inputs {
      if(isNull(input)) continue;
      assRec.requireItem("item_input"~i, input);
    }
    ass.addJEIRecipe(assRec);
  }
}

// Add item inputs and outputs easily
function addInsOuts(ass as Assembly, inputs as int[][], outputs as int[][]) {
  for j,way in ['item_input', 'item_output'] as string[] {
    for i,pair in (j==0 ? inputs : outputs) {
      ass.setJEIItemSlot(pair[0], pair[1], way ~ i);
    }
  }
}



// --== Excavator Veins ==-- //

var excavator = <assembly:excavator>;
excavator.addJEICatalyst(<immersiveengineering:metal_multiblock:11>);
excavator.addJEICatalyst(<immersiveengineering:metal_multiblock:12>);
excavator.addJEICatalyst(<immersivepetroleum:schematic>.withTag({multiblock: "IE:ExcavatorDemo", flip: 1 as byte}));
excavator.addJEICatalyst(<immersiveengineering:metal_device1:7>);
excavator.setJEIDurationSlot(3,0,"duration", getVisGauge(2,6));
excavator.setJEIItemSlot(0,0, "information", getVisSlots(4,1));
addInsOuts(excavator, [[1,0], [2,0]], [[4,0], [5,0], [6,0], [7,0], [8,0], [9,0]]);

// Adds an Excavator Vein to the RQ JEI Page. Can accept a maximum of 2 dimensions and 6 ores. Quantity of ore is determined by percentage of ore in vein.

function addvein(info as IIngredient, dimensions as IIngredient[], ores as IItemStack[]) {
    val assRec = AssemblyRecipe.create(function(container) {
      for i, output in ores {
        if(isNull(output)) continue;
        container.addItemOutput("item_output" ~ i, output);
      }
    });
    for i, input in dimensions {
      if(isNull(input)) continue;
      assRec.requireItem("item_input"~i, input);
    }
    assRec.requireItem("information", info);
    <assembly:excavator>.addJEIRecipe(assRec);
}

// List of dimensions for convenient access

val dimensionItem as IItemStack[int] = {
  0: <minecraft:grass>.withTag({display:{Name:"§a§lOverworld§r"}}),
  1: <minecraft:netherrack>.withTag({display:{Name:"§c§lThe Nether§r"}}),
  2: <minecraft:end_stone>.withTag({display:{Name:"§e§lThe End§r"}}),
  3: <chisel:voidstone>.withTag({display:{Name:"§5§lThe Beneath§r"}}),
  4: <advancedrocketry:moonturf>.withTag({display:{Name:"§f§lThe Moon"}}),
};

// List of rarities for convenient access

var rarity =
[
  <minecraft:wool>.withDisplayName("§f§lVery Common§r"),
  <minecraft:wool:8>.withDisplayName("§7§lCommon§r"),
  <minecraft:wool:13>.withDisplayName("§2§lUncommon§r"),
  <minecraft:wool:11>.withDisplayName("§9§lRare§r"),
  <minecraft:wool:10>.withDisplayName("§d§lVery Rare§r")
] as IItemStack[];

addvein(<minecraft:book>.withDisplayName("§fBauxite"), [dimensionItem[0], dimensionItem[3]], [<techreborn:ore:4> * 70, <thermalfoundation:ore:4> * 19, <libvulpes:ore0:8> * 9, <rockhounding_chemistry:uninspected_mineral> * 2]);
addvein(<minecraft:book>.withDisplayName("§fCassiterite"), [dimensionItem[0], dimensionItem[3]], [<thermalfoundation:ore:1> * 98, <rockhounding_chemistry:uninspected_mineral> * 2]);
addvein(<minecraft:book>.withDisplayName("§fCoal"), [dimensionItem[0], dimensionItem[3]], [<minecraft:coal_ore> * 95, <minecraft:diamond_ore> * 1, <minecraft:emerald_ore> * 1, <rockhounding_chemistry:uninspected_mineral> * 2]);
addvein(<minecraft:book>.withDisplayName("§fCopper"), [dimensionItem[0], dimensionItem[3]], [<thermalfoundation:ore> * 67, <minecraft:gold_ore> * 26, <thermalfoundation:ore:5> * 6, <rockhounding_chemistry:uninspected_mineral>]);
addvein(<minecraft:book>.withDisplayName("§fRare Earth"), [dimensionItem[0], dimensionItem[3]], [<rockhounding_chemistry:uninspected_mineral> * 85, <minecraft:diamond_ore> * 15]);
addvein(<minecraft:book>.withDisplayName("§fSilt"), [dimensionItem[0]], [<minecraft:clay> * 50, <minecraft:sand> * 30, <minecraft:gravel> * 20]);
addvein(<minecraft:book>.withDisplayName("§fGalena"), [dimensionItem[0], dimensionItem[3]], [<techreborn:ore> * 51, <thermalfoundation:ore:2> * 19, <thermalfoundation:ore:3> * 28, <rockhounding_chemistry:uninspected_mineral> * 2]);
addvein(<minecraft:book>.withDisplayName("§fSilver"), [dimensionItem[0], dimensionItem[3]], [<techreborn:ore> * 12, <thermalfoundation:ore:2> * 71, <thermalfoundation:ore:3> * 15, <rockhounding_chemistry:uninspected_mineral> * 2]);
addvein(<minecraft:book>.withDisplayName("§fLead"), [dimensionItem[0], dimensionItem[3]], [<techreborn:ore> * 22, <thermalfoundation:ore:2> * 13, <thermalfoundation:ore:3> * 64, <rockhounding_chemistry:uninspected_mineral> * 1]);

addvein(<minecraft:book>.withDisplayName("§fIron"), [dimensionItem[0], dimensionItem[3]], [<minecraft:iron_ore> * 58, <thermalfoundation:ore:5> * 21, <thermalfoundation:ore:1> * 20, <rockhounding_chemistry:uninspected_mineral> * 1]);
addvein(<minecraft:book>.withDisplayName("§fLapis"), [dimensionItem[0], dimensionItem[3]], [<minecraft:lapis_ore> * 69, <minecraft:iron_ore> * 30, <rockhounding_chemistry:uninspected_mineral> * 1]);
addvein(<minecraft:book>.withDisplayName("§fMagnetite"), [dimensionItem[0], dimensionItem[3]], [<minecraft:iron_ore> * 83, <minecraft:gold_ore> * 15, <rockhounding_chemistry:uninspected_mineral> * 2]);
addvein(<minecraft:book>.withDisplayName("§fNickel"), [dimensionItem[0], dimensionItem[3]], [<thermalfoundation:ore:5> * 80, <thermalfoundation:ore:6> * 5, <minecraft:iron_ore> * 14, <rockhounding_chemistry:uninspected_mineral> * 2]);
addvein(<minecraft:book>.withDisplayName("§fUranium"), [dimensionItem[0], dimensionItem[3]], [<nuclearcraft:ore:4> * 55, <thermalfoundation:ore:3> * 24, <nuclearcraft:ore:5> * 10, <nuclearcraft:ore:3> * 10, <rockhounding_chemistry:uninspected_mineral> * 1]);

addvein(<minecraft:book>.withDisplayName("§fRaw Stone"), [dimensionItem[0]], [<minecraft:stone:1> * 20, <minecraft:stone:3> * 20, <minecraft:stone:5> * 20, <quark:limestone> * 15, <astralsorcery:blockmarble> * 15, <quark:basalt> * 15]);

addvein(<minecraft:book>.withDisplayName("§fCinnabar"), [dimensionItem[0], dimensionItem[3]], [<minecraft:redstone_ore> * 67, <techreborn:ore:6> * 26, <techreborn:ore:2> * 6, <rockhounding_chemistry:uninspected_mineral> * 1]);
addvein(<minecraft:book>.withDisplayName("§fQuartzite"), [dimensionItem[0], dimensionItem[3]], [<minecraft:quartz_ore> * 40, <appliedenergistics2:quartz_ore> * 41, <actuallyadditions:block_misc:3> * 14, <appliedenergistics2:charged_quartz_ore> * 5]);

addvein(<minecraft:book>.withDisplayName("§fOsmium"), [dimensionItem[3]], [<mekanism:oreblock> * 56, <thermalfoundation:ore:6> * 20, <minecraft:gold_ore> * 20, <rockhounding_chemistry:uninspected_mineral> * 4]);
addvein(<minecraft:book>.withDisplayName("§fPlatinum"), [dimensionItem[3]], [<thermalfoundation:ore:6> * 64, <thermalfoundation:ore:5> * 20, <mekanism:oreblock> * 14, <rockhounding_chemistry:uninspected_mineral>]);

addvein(<minecraft:book>.withDisplayName("§fGold"), [dimensionItem[3]], [<minecraft:gold_ore> * 67,  <thermalfoundation:ore> * 22, <thermalfoundation:ore:5> * 6, <enderore:ore_ender> * 4, <rockhounding_chemistry:uninspected_mineral>]);
addvein(<minecraft:book>.withDisplayName("§fVoidstone"), [dimensionItem[3]], [<minecraft:gold_ore> * 45, <minecraft:iron_ore> * 40, <chisel:voidstone> * 5, <mekanism:oreblock> * 8, <rockhounding_chemistry:uninspected_mineral> * 2]);

addvein(<minecraft:book>.withDisplayName("§fPyrite"), [dimensionItem[1]], [<techreborn:ore:5> * 65, <techreborn:ore:7> * 19, <minecraft:iron_ore> * 15, <rockhounding_chemistry:uninspected_mineral>]);
addvein(<minecraft:book>.withDisplayName("§fSphalerite"), [dimensionItem[1]], [<techreborn:ore:7> * 63, <techreborn:ore:5> * 26, <minecraft:iron_ore> * 10, <rockhounding_chemistry:uninspected_mineral>]);



// --== Pumpjack Veins ==-- //

var pumpjack = <assembly:pumpjack>;
pumpjack.addJEICatalyst(<immersivepetroleum:metal_multiblock:2>);
pumpjack.addJEICatalyst(<immersivepetroleum:schematic>.withTag({multiblock: "IP:Pumpjack"}));
pumpjack.addJEICatalyst(<immersiveengineering:metal_device1:7>);
pumpjack.setJEIDurationSlot(1, 0, "duration", getVisGauge(0,6));
pumpjack.setJEIItemSlot(0, 0, "information", getVisSlots(4,1));
pumpjack.setJEIFluidSlot(2, 0, "fluidvein");

// Adds a pumpjack fluid vein to the RQ JEI page. Min_mb_fluid, max_mb_fluid and weight are as defined in the Immersive Petroleum Config file.

function addfluidvein(veinname as string, dimension as string, min_mb_fluid as int, max_mb_fluid as int, weight as int, fluid as ILiquidStack) {
  val assRec = AssemblyRecipe.create(function(container) {
      container.addFluidOutput("fluidvein", fluid * min_mb_fluid);
    });
    assRec.requireItem("information", <minecraft:book>.withDisplayName(veinname).withLore(
      ["§fDimension: " ~ dimension, "§fMinimum Fluid: " ~ min_mb_fluid ~ "mb", "§fMaximum Fluid: " ~ max_mb_fluid ~ "mb", "§6Weight: " ~ weight]
      ));
  <assembly:pumpjack>.addJEIRecipe(assRec);  
}

addfluidvein("§fOil", "Any", 2500000, 15000000, 40, <liquid:oil>);
addfluidvein("§fLava", "Any", 250000, 1000000, 30, <liquid:lava>);
addfluidvein("§fGold", "§5Beneath", 72000, 288000, 20, <liquid:gold>);
addfluidvein("§fIron", "§5Beneath", 72000, 288000, 20, <liquid:iron>);
addfluidvein("§fNickel", "§5Beneath", 72000, 288000, 20, <liquid:nickel>);
addfluidvein("§fTin", "§5Beneath", 72000, 288000, 20, <liquid:tin>);
addfluidvein("§fCopper", "§5Beneath", 72000, 288000, 20, <liquid:copper>);
addfluidvein("§fSilver", "§5Beneath", 72000, 288000, 20, <liquid:silver>);
addfluidvein("§fPyrotheum", "§5Beneath", 50000, 500000, 10, <liquid:pyrotheum>);
addfluidvein("§fCryotheum", "§5Beneath", 50000, 500000, 10, <liquid:cryotheum>);
addfluidvein("§fAerotheum", "§5Beneath", 50000, 500000, 10, <liquid:aerotheum>);
addfluidvein("§fPetrotheum", "§5Beneath", 50000, 500000, 10, <liquid:petrotheum>);



// --== Diesel Generator Fuels ==-- //

var diesel_generator = <assembly:diesel_generator>;
diesel_generator.addJEICatalyst(<immersiveengineering:metal_multiblock:10>);
diesel_generator.addJEICatalyst(<immersivepetroleum:schematic>.withTag({multiblock: "IE:DieselGenerator"}));
diesel_generator.setJEIDurationSlot(1,0,"duration", getVisSlots(5,1));
diesel_generator.setJEIFluidSlot(0, 0, 'liquid_input');
diesel_generator.setJEIEnergySlot(2, 0, 'energy_out', "rf");


// Adds diesel generator fuels to the RQ JEI page. Format is fluid : energy per bucket.

var dieselgeneratorfuels = {
<liquid:biodiesel> : 1024000,
<liquid:diesel> : 1638400,
<liquid:blended_diesel> : 1638400,
<liquid:boosted_diesel> : 3686400,
<liquid:canolaoil> : 98304,
<liquid:refinedcanolaoil> : 360448,
<liquid:crystaloil> : 1998848
} as int[ILiquidStack];

for fluid, power in dieselgeneratorfuels {
  val assRec = AssemblyRecipe.create(function(container) {
      container.addEnergyOutput('energy_out', power, 0);
    });
    assRec.requireFluid('liquid_input', fluid * 1000);
    assRec.requireDuration("duration", power / 8192);
  diesel_generator.addJEIRecipe(assRec);
}


// --== Ore Generation ==-- //

var ore_generation = <assembly:ore_generation>;
ore_generation.addJEICatalyst(<minecraft:iron_ore>);
ore_generation.addJEICatalyst(<contenttweaker:ore_gen_info>);
ore_generation.setJEIItemSlot(0,0, "information", getVisSlots(4,1));
ore_generation.setJEIItemSlot(1,0, "rarity");
ore_generation.setJEIDurationSlot(3,0, "duration", getVisSlots(4,1));
addInsOuts(ore_generation, [[2,0]], [[4,0], [5,0], [6,0], [7,0], [8,0], [9,0]]);

/*
Adds an ore vein to the RQ JEI page. Rarity is as defined:
Value of chunk-chance =
1: Very Common
2: Common
3: Uncommon
4: Rare
5 or more: Very Rare
Note that rarity of ore veins in the nether and end are defined based on cluster-count instead of chunk-chance.
Quantity of items is defined by percentage of total weight.
*/

function addorevein(veinname as string, cluster_size as int, min_height as int, max_height as int, rarity as IItemStack, dimension as IItemStack, outputs as IItemStack[]) {
    val assRec = AssemblyRecipe.create(function(container) {
      for i, output in outputs {
        if(isNull(output)) continue;
        container.addItemOutput("item_output" ~ i, output);
      }
    });
    assRec.requireItem("item_input0", dimension);
    if (!(isNull(rarity))) {
      assRec.requireItem("rarity", rarity);
    }
    assRec.requireItem("information", <minecraft:book>.withDisplayName(veinname).withLore(
      ["§7Size: " ~ cluster_size, "§7Spawn Height: " ~ min_height ~ "-" ~ max_height]
      ));
    <assembly:ore_generation>.addJEIRecipe(assRec);
}

// Overworld Veins

addorevein("§fOverworld Iron Vein", 40, 10, 64, rarity[0], dimensionItem[0], [<minecraft:iron_ore> * 65, <thermalfoundation:ore:5> * 20, <minecraft:gold_ore> * 14, <rockhounding_chemistry:uninspected_mineral> * 1]);
addorevein("§fOverworld Copper Vein", 40, 20, 60, rarity[1], dimensionItem[0], [<thermalfoundation:ore> * 75, <contenttweaker:sub_block_holder_0:3> * 19, <utilitybaseores:blaze_ore> * 5, <rockhounding_chemistry:uninspected_mineral> * 1]);
addorevein("§fOverworld Tin Vein", 40, 40, 80, rarity[1], dimensionItem[0], [<thermalfoundation:ore:1> * 84, <minecraft:iron_ore> * 10, <thermalfoundation:ore:3> * 5, <rockhounding_chemistry:uninspected_mineral> * 1]);
addorevein("§fOverworld Lead Vein", 30, 5, 35, rarity[2], dimensionItem[0], [<thermalfoundation:ore:3> * 65, <thermalfoundation:ore:2> * 24, <techreborn:ore> * 10, <rockhounding_chemistry:uninspected_mineral> * 1]);
addorevein("§fOverworld Silver Vein", 30, 5, 35, rarity[2], dimensionItem[0], [<thermalfoundation:ore:2> * 65, <thermalfoundation:ore:3> * 24, <techreborn:ore> * 10, <rockhounding_chemistry:uninspected_mineral> * 1]);
addorevein("§fOverworld Aluminium Vein", 25, 0, 20, rarity[2], dimensionItem[0], [<techreborn:ore:4> * 89, <thermalfoundation:ore:4> * 5, <libvulpes:ore0:8> * 5, <rockhounding_chemistry:uninspected_mineral> * 1]);
addorevein("§fOverworld Redstone Vein", 30, 5, 20, rarity[1], dimensionItem[0], [<minecraft:redstone_ore> * 64, <techreborn:ore:2> * 15, <thermalfoundation:ore_fluid:2> * 10, <thaumcraft:ore_cinnabar> * 10, <rockhounding_chemistry:uninspected_mineral> * 1]);
addorevein("§fOverworld Emerald Vein", 25, 5, 30, rarity[3], dimensionItem[0], [<enderore:ore_ender> * 39, <minecraft:emerald_ore> * 30, <utilitybaseores:slime_ore> * 20, <fossil:fossil> * 10, <rockhounding_chemistry:uninspected_mineral> * 1]);
addorevein("§fOverworld Lapis Vein", 20, 5, 20, rarity[2], dimensionItem[0], [<minecraft:lapis_ore> * 74, <techreborn:ore:3> * 15, <utilitybaseores:prismarine_ore> * 10, <rockhounding_chemistry:uninspected_mineral> * 1]);
addorevein("§fOverworld Quartz Vein", 25, 20, 70, rarity[1], dimensionItem[0], [<mysticalworld:quartz_ore> * 60, <appliedenergistics2:quartz_ore> * 30, <ebwizardry:crystal_ore> * 5, <actuallyadditions:block_misc:3> * 4, <rockhounding_chemistry:uninspected_mineral> * 1]);
addorevein("§fOverworld Coal Vein", 45, 20, 80, rarity[1], dimensionItem[0], [<minecraft:coal_ore> * 99, <rockhounding_chemistry:uninspected_mineral> * 1]);
addorevein("§fOverworld Deep Coal Vein", 45, 0, 20, rarity[3], dimensionItem[0], [<minecraft:coal_ore> * 87, <minecraft:diamond_ore> * 10, <astralsorcery:blockcustomore>, <fossil:fossil>, <rockhounding_chemistry:uninspected_mineral> * 1]);

// Beneath Veins
addorevein("§fUranium Vein", 40, 0, 100, rarity[0], dimensionItem[3], [<nuclearcraft:ore:4> * 40, <nuclearcraft:ore:5> * 15, <nuclearcraft:ore:3> * 15, <nuclearcraft:ore:7> * 15, <nuclearcraft:ore:6> * 15]);
addorevein("§fOsmium Vein", 40, 0, 100, rarity[3], dimensionItem[3], [<mekanism:oreblock> * 60, <thermalfoundation:ore:6> * 40]);

addorevein("§fBeneath Iron Vein", 40, 10, 100, rarity[0], dimensionItem[3], [<minecraft:iron_ore> * 60, <minecraft:gold_ore> * 24, <thermalfoundation:ore:5> * 15, <rockhounding_chemistry:uninspected_mineral> * 1]);
addorevein("§fBeneath Copper Vein", 40, 1, 100, rarity[0], dimensionItem[3], [<thermalfoundation:ore> * 69, <contenttweaker:sub_block_holder_0:3> * 15, <utilitybaseores:blaze_ore> * 15, <rockhounding_chemistry:uninspected_mineral> * 1]);
addorevein("§fBeneath Tin Vein", 40, 1, 100, rarity[0], dimensionItem[3], [<thermalfoundation:ore:1> * 84, <minecraft:iron_ore> * 10, <thermalfoundation:ore:3> * 5, <rockhounding_chemistry:uninspected_mineral> * 1]);
addorevein("§fBeneath Lead Vein", 30, 1, 100, rarity[1], dimensionItem[3], [<thermalfoundation:ore:3> * 65, <thermalfoundation:ore:2> * 24, <techreborn:ore> * 10, <rockhounding_chemistry:uninspected_mineral> * 1]);
addorevein("§fBeneath Silver Vein", 30, 1, 100, rarity[1], dimensionItem[3], [<thermalfoundation:ore:2> * 65, <thermalfoundation:ore:3> * 24, <techreborn:ore> * 10, <rockhounding_chemistry:uninspected_mineral> * 1]);
addorevein("§fBeneath Aluminium Vein", 35, 0, 100, rarity[0], dimensionItem[3], [<techreborn:ore:4> * 40, <libvulpes:ore0:8> * 40, <thermalfoundation:ore:4> * 20, <rockhounding_chemistry:uninspected_mineral> * 1]);
addorevein("§fBeneath Redstone Vein", 40, 5, 100, rarity[0], dimensionItem[3], [<minecraft:redstone_ore> * 64, <techreborn:ore:2> * 15, <thermalfoundation:ore_fluid:2> * 10, <thaumcraft:ore_cinnabar> * 10, <rockhounding_chemistry:uninspected_mineral> * 1]);
addorevein("§fBeneath Emerald Vein", 30, 5, 100, rarity[2], dimensionItem[3], [<fossil:fossil> * 39, <minecraft:emerald_ore> * 20, <utilitybaseores:slime_ore> * 20, <enderore:ore_ender> * 20, <rockhounding_chemistry:uninspected_mineral> * 1]);
addorevein("§fBeneath Lapis Vein", 35, 5, 100, rarity[0], dimensionItem[3], [<minecraft:lapis_ore> * 74, <techreborn:ore:3> * 15, <utilitybaseores:prismarine_ore> * 10, <rockhounding_chemistry:uninspected_mineral> * 1]);
addorevein("§fBeneath Quartz Vein", 35, 0, 100, rarity[0], dimensionItem[3], [<mysticalworld:quartz_ore> * 40, <appliedenergistics2:quartz_ore> * 40, <actuallyadditions:block_misc:3> * 10, <ebwizardry:crystal_ore> * 5, <appliedenergistics2:charged_quartz_ore> * 4, <rockhounding_chemistry:uninspected_mineral> * 1]);
addorevein("§fBeneath Deep Coal Vein", 40, 0, 100, rarity[0], dimensionItem[3], [<minecraft:coal_ore> * 87, <minecraft:diamond_ore> * 10, <astralsorcery:blockcustomore>, <fossil:fossil>, <rockhounding_chemistry:uninspected_mineral> * 1]);

// Twilight Forest Veins

addorevein("§fTwilight Forest Quartz Vein", 30, 20, 70, rarity[1], <twilightforest:twilight_sapling>.withDisplayName("§a§lTwilight Forest§r"), [<appliedenergistics2:charged_quartz_ore> * 39, <mysticalworld:quartz_ore> * 30, <actuallyadditions:block_misc:3> * 20, <ebwizardry:crystal_ore> * 10, <rockhounding_chemistry:uninspected_mineral> * 1]);

// Nether Veins

addorevein("§fCobalt Vein", 35, 10, 64, rarity[2], dimensionItem[1], [<tconstruct:ore> * 75, <techreborn:ore:7> * 15, <mysticalagriculture:nether_prosperity_ore> * 10]);
addorevein("§fArdite Vein", 35, 10, 64, rarity[2], dimensionItem[1], [<tconstruct:ore:1> * 50, <techreborn:ore:5> * 40, <thermalfoundation:ore_fluid:3> * 10]);
addorevein("§fCinnabar Vein", 25, 70, 120, rarity[1], dimensionItem[1], [<contenttweaker:sub_block_holder_0:7> * 65, <techreborn:ore:6> * 35]);
addorevein("§fNether Quartz Vein", 20, 10, 118, rarity[0], dimensionItem[1], [<minecraft:quartz_ore> * 100]);

// End Veins

addorevein("§fTungsten Vein", 30, 10, 150, rarity[2], dimensionItem[2], [<techreborn:ore:8> * 80, <quark:biotite_ore> * 10, <thermalfoundation:ore_fluid:4> * 10]);
addorevein("§fSheldonite Vein", 30, 10, 150, rarity[2], dimensionItem[2], [<techreborn:ore:9> * 75, <techreborn:ore:11> * 15, <techreborn:ore:10> * 10]);
addorevein("§fAdamantine Vein", 20, 10, 150, rarity[2], dimensionItem[2], [<contenttweaker:sub_block_holder_0:8> * 85, <rftools:dimensional_shard_ore:2> * 15]);

// Moon Veins

addorevein("§fIridium Vein", 25, 0, 40, rarity[3], dimensionItem[4], [<thermalfoundation:ore:7> * 60, <mekanism:oreblock> * 20, <thermalfoundation:ore:6> * 20]);
addorevein("§fMoon Aluminium Vein", 30, 0, 100, rarity[0], dimensionItem[4], [<libvulpes:ore0:8> * 80, <thermalfoundation:ore:4> * 18, <techreborn:ore:4> * 1, <rockhounding_chemistry:uninspected_mineral> * 1]);
addorevein("§fDilithium Vein", 30, 0, 100, rarity[0], dimensionItem[4], [<libvulpes:ore0> * 80, <rockhounding_chemistry:uninspected_mineral> * 20]);
addorevein("§fGem Vein", 30, 20, 60, rarity[0], dimensionItem[4], [<mysticalworld:amethyst_ore> * 55, <ebwizardry:crystal_ore> * 15, <densemetals:dense_diamond_ore> * 15, <chisel:energizedvoidstone> * 15]);

addorevein("§8Dark Moon Geode", 15, 0, 100, rarity[0], dimensionItem[4], [<appliedenergistics2:sky_stone_block>.withLore(["§8Geode Wall§r"]), <actuallyadditions:block_misc:3> * 33, <fluxnetworks:fluxblock> * 33, <thaumcraft:metal_void> * 33]);
addorevein("§8Ancient Moon Spike", 30, 64, 100, rarity[0], dimensionItem[4], [<thaumcraft:stone_ancient_rock> * 99, <mysticalworld:amethyst_block>]);
addorevein("§8Eldritch Moon Spike", 30, 64, 100, rarity[0], dimensionItem[4], [<thaumcraft:stone_eldritch_tile> * 99, <mysticalworld:amethyst_block>]);

// Generated Structures

addorevein("§e§lTwilight Forest Hollow Hill§r", 30, 20, 70, null, <twilightforest:twilight_plant:7>.withDisplayName("§eTwilight Forest Hollow Hill§r").withLore(["§7Ores spawn as stalacites§r"]), [<aetherworks:aether_ore>, <mysticalagriculture:prosperity_ore>, <appliedenergistics2:charged_quartz_ore>, <thaumcraft:ore_amber>, <minecraft:emerald_ore>, <techreborn:ore:2>]);
addorevein("§e§lAdvanced Rocketry Geode§r", 36, 0, 100, null, <advancedrocketry:geode>.withDisplayName("§eAdvanced Rocketry Geode§r").withLore(["§7Spawns on other planets§r"]), [<astralsorcery:blockcustomore:1>, <nuclearcraft:ore:5>, <nuclearcraft:ore:4>, <nuclearcraft:ore:3>, <thermalfoundation:ore:6>, <thermalfoundation:ore:7>]);
addorevein("§e§lAdvanced Rocketry Geode§r", 36, 0, 100, null, <advancedrocketry:geode>.withDisplayName("§eAdvanced Rocketry Geode§r").withLore(["§7Spawns on other planets§r"]), [<techreborn:ore:4>, <quark:biotite_ore>, <libvulpes:ore0:8>, <techreborn:ore:7>, <techreborn:ore:8>, <techreborn:ore:9>]);
addorevein("§e§lAdvanced Rocketry Geode§r", 36, 0, 100, null, <advancedrocketry:geode>.withDisplayName("§eAdvanced Rocketry Geode§r").withLore(["§7Spawns on other planets§r"]), [<techreborn:ore:2>]);


// --== AG Turbine Fuels ==-- //

var turbine = <assembly:turbine>;
turbine.addJEICatalyst(<advgenerators:turbine_controller>);
turbine.setJEIDurationSlot(1,0,"duration", getVisGauge(0,5));
turbine.setJEIFluidSlot(0, 0, 'liquid_input');
turbine.setJEIEnergySlot(2, 0, 'energy_out', "rf");

// Adds AG Turbine fuels to the RQ JEI page. Format is fluid : energy per bucket.

var turbinefuels = {
<liquid:biomass> : 200000,
<liquid:canolaoil> : 100000,
<liquid:refinedcanolaoil> : 360000,
<liquid:crystaloil> : 2000000,
<liquid:empoweredoil> : 7500000,
<liquid:creosote> : 80000,
<liquid:oil> : 400000,
<liquid:crude_oil> : 400000,
<liquid:biodiesel> : 1050000,
<liquid:diesel> : 1650000,
<liquid:blended_diesel> : 1650000,
<liquid:boosted_diesel> : 3700000,
<liquid:gasoline> : 1150000,
<liquid:coal> : 400000,
<liquid:refined_oil> : 1200000,
<liquid:refined_fuel> : 2000000,
<liquid:tree_oil> : 1200000,
<liquid:seed_oil> : 1000000,
<liquid:refined_biofuel> : 2500000,
<liquid:ethene> : 2750000,
<liquid:hootch> : 600000,
<liquid:fire_water> : 1200000,
<liquid:fluidmethane> : 1200000,
<liquid:fluidnitrodiesel> : 10000000,
<liquid:rocketfuel> : 20000000
} as int[ILiquidStack];

for fluid, power in turbinefuels {
  turbine.addJEIRecipe(AssemblyRecipe.create(function(container) {
      container.addEnergyOutput('energy_out', power, 0);
    }).requireFluid('liquid_input', fluid * 1000));
}



// --== Mark of the Fallen Tower ==-- //

var meteor = <assembly:fallen_tower>;
meteor.addJEICatalyst(<bloodmagic:ritual_diviner:1>.withTag({current_ritual: "meteor"}));
meteor.addJEICatalyst(<bloodmagic:ritual_controller>);
meteor.setJEIDurationSlot(1, 1,"duration", getVisGauge(0,5));
meteor.setJEIItemSlot (0, 1, 'catalyst', getVisSlots(3,1));
meteor.setJEIFluidSlot(0, 0, 'blood');

var k = 0;
for y in 0 .. 2 {
  for x in 2 .. 9 {
    meteor.setJEIItemSlot(x, y, 'item_output'~k);
    k += 1;
  }
}

// Adds Mark of the Fallen Tower Meteors to the RQ JEI page. Quantity of items is determined by percentage of total weight.

function add_meteor_recipe(catalyst as IItemStack, radius as int, bloodqty as int, out as IItemStack[]) {
  val assRec = AssemblyRecipe.create(function(container) {
      for i, output in out {
        if(isNull(output)) continue;
        container.addItemOutput("item_output" ~ i, output);
      }
    });
    assRec.requireItem("catalyst", catalyst.withLore(["§6Meteor Radius: " ~ radius]));
    assRec.requireFluid("blood", <liquid:lifeessence> * bloodqty);
  <assembly:fallen_tower>.addJEIRecipe(assRec);
}

add_meteor_recipe(<minecraft:iron_block>, 5, 1000000, [
<minecraft:iron_ore> * 37, 
<thermalfoundation:ore> * 19, 
<thermalfoundation:ore:1> * 13, 
<minecraft:redstone_ore> * 9,
<thermalfoundation:ore:3> * 7,
<thermalfoundation:ore:2> * 6,
<minecraft:lapis_ore> * 6,
<minecraft:gold_ore> * 3
]);

add_meteor_recipe(<minecraft:gold_block>,  6, 2500000, [
<minecraft:iron_ore> * 31,
<minecraft:lapis_ore> * 19,
<thermalfoundation:ore> * 15,
<minecraft:gold_ore> * 15,
<thermalfoundation:ore:1> * 9,
<minecraft:diamond_ore> * 5,
<minecraft:emerald_ore> * 3,
<minecraft:coal_ore> * 3
]);

add_meteor_recipe(<minecraft:diamond_block>, 3, 5000000, [
<minecraft:diamond_ore> * 62,
<minecraft:emerald_ore> * 17,
<minecraft:gold_ore> * 10,
<minecraft:redstone_ore> * 5,
<minecraft:iron_ore> * 5,
<minecraft:lapis_ore>
]);

add_meteor_recipe(<contenttweaker:starmetal_block>, 4, 1000000, [
<astralsorcery:blockcustomore:1> * 50,
<minecraft:packed_ice> * 25,
<appliedenergistics2:sky_stone_block> * 25
]);

add_meteor_recipe(<immersiveengineering:storage:5>, 6, 2500000, [
<nuclearcraft:ore:4> * 29,
<nuclearcraft:ore:3> * 22,
<nuclearcraft:ore:5> * 17,
<nuclearcraft:ore:6> * 16,
<nuclearcraft:ore:7> * 11,
<rockhounding_chemistry:uninspected_mineral> * 5
]);

add_meteor_recipe(<botania:conjurationcatalyst>, 4, 5000000, [
<thermalfoundation:ore:7> * 64,
<thermalfoundation:ore:6> * 18,
<mekanism:oreblock> * 18
]);



// --== Mineralis Ritual ==-- //

var mineralis_ritual = <assembly:mineralis>;
mineralis_ritual.addJEICatalyst(<astralsorcery:blockritualpedestal>);
mineralis_ritual.addJEICatalyst(<astralsorcery:itemtunedcelestialcrystal>.withTag({astralsorcery: {constellationName: "astralsorcery.constellation.mineralis", crystalProperties: {collectiveCapability: 100, size: 900, fract: 0, purity: 100, sizeOverride: -1}}}));
mineralis_ritual.addJEICatalyst(<astralsorcery:itemtunedrockcrystal>.withTag({astralsorcery: {constellationName: "astralsorcery.constellation.mineralis", crystalProperties: {collectiveCapability: 100, size: 400, fract: 0, purity: 100, sizeOverride: -1}}}));

// Adds Mineralis Ores to the RQ JEI page. Quantity is determined by weight of ore.

val mineralisList = [
<minecraft:coal_ore> * 64,
<minecraft:iron_ore> * 30,
<thermalfoundation:ore:1> * 18,
<thermalfoundation:ore> * 13,
<thermalfoundation:ore:3> * 12,
<minecraft:redstone_ore> * 8,
<thermalfoundation:ore:4> * 7,
<minecraft:gold_ore> * 6,
<appliedenergistics2:quartz_ore> * 6,
<thermalfoundation:ore:5> * 3,
<thermalfoundation:ore:2> * 2,
<minecraft:diamond_ore> * 2,
<minecraft:lapis_ore>,
<minecraft:emerald_ore>,
] as IItemStack[];

k = 0;
for y in 0 .. (mineralisList.length / 9 + 1) as int {
  for x in 0 .. 9 {
    mineralis_ritual.setJEIItemSlot(x, y, 'item_output'~k);
    k += 1;
  }
}

add(mineralis_ritual, {[] : mineralisList});



// --== Neromantic Prime ==-- //

var neromantic_prime = <assembly:neromantic_prime>;
neromantic_prime.addJEICatalyst(<astralsorcery:blockbore>);
neromantic_prime.addJEICatalyst(<astralsorcery:blockborehead>);
neromantic_prime.addJEICatalyst(<astralsorcery:blockchalice>);
neromantic_prime.setJEIDurationSlot(1, 0, "duration", getVisGauge(0,6));
neromantic_prime.setJEIItemSlot(0, 0, "information", getVisSlots(4,1));
neromantic_prime.setJEIFluidSlot(2, 0, "fluidvein");

// Adds a Neromatic Prime Vein to the RQ JEI Page. Fluid quantities are defined by guaranteedMbAmount.

function add_nero_vein(FluidName as string, guaranteedMbAmount as int, additionalRandomMbAmount as int, rarity as int, fluid as ILiquidStack) {
  val assRec = AssemblyRecipe.create(function(container) {
      container.addFluidOutput("fluidvein", fluid);
    });
    assRec.requireItem("information", <minecraft:book>.withDisplayName(FluidName).withLore(
      ["§fMinimum Fluid: " ~ guaranteedMbAmount ~ "mb", "§fMaximum Additional Fluid: " ~ additionalRandomMbAmount ~ "mb", "§6Weight: " ~ rarity]
      ));
  <assembly:neromantic_prime>.addJEIRecipe(assRec);
}

add_nero_vein("§fWater", 2147483647, 2147483647, 14000, <liquid:water> * 4000000);
add_nero_vein("§fLava", 4000000, 1000000, 7500, <liquid:lava> * 4000000);
add_nero_vein("§fCrystal Oil", 600000, 400000, 800, <liquid:crystaloil> * 600000);
add_nero_vein("§fEmpowered Oil", 350000, 150000, 200, <liquid:empoweredoil> * 350000);
add_nero_vein("§fRedstone", 120000, 70000, 500, <liquid:redstone> * 120000);
add_nero_vein("§fGlowstone", 120000, 70000, 500, <liquid:glowstone> * 120000);
add_nero_vein("§fEnder", 140000, 60000, 250, <liquid:ender> * 140000);
add_nero_vein("§fPyrotheum", 200000, 120000, 200, <liquid:pyrotheum> * 200000);
add_nero_vein("§fCryotheum", 200000, 120000, 200, <liquid:cryotheum> * 200000);  
add_nero_vein("§fNaphtha", 480000, 400000, 600, <liquid:refined_oil> * 480000);
add_nero_vein("§fRefined Fuel", 450000, 300000, 550, <liquid:refined_fuel> * 450000);
add_nero_vein("§fIron", 600000, 350000, 900, <liquid:iron> * 600000);
add_nero_vein("§fGold", 400000, 350000, 600, <liquid:gold> * 400000);
add_nero_vein("§fCobalt", 150000, 150000, 80, <liquid:cobalt> * 150000);
add_nero_vein("§fArdite", 150000, 150000, 80, <liquid:ardite> * 150000);
add_nero_vein("§fEmerald", 60000, 90000, 30, <liquid:emerald> * 60000);
add_nero_vein("§fOil", 500000, 350000, 900, <liquid:crude_oil> * 500000);
add_nero_vein("§fNitro Diesel", 400000, 250000, 450, <liquid:fluidnitrodiesel> * 400000);
add_nero_vein("§fMana", 550000, 120000, 1500, <liquid:mana> * 550000);



// --== Chalice Interactions ==-- //

var chalice_interactions = <assembly:chalice>;
chalice_interactions.addJEICatalyst(<astralsorcery:blockchalice>);
chalice_interactions.setJEIDurationSlot(1,0,"duration", getVisGauge(0,6));
chalice_interactions.setJEIFluidSlot(0, 0, "fluid_input0");
chalice_interactions.setJEIFluidSlot(2, 0, "fluid_input1");
chalice_interactions.setJEIItemSlot(1, 1, "item_output0");
chalice_interactions.setJEIItemSlot(0, 2, "item_output1");
chalice_interactions.setJEIItemSlot(2, 2, "item_output2");

// Adds a Chalice Interaction to the RQ JEI Page. Item Quantities are determined by the weight of the item.

function add_everflow_chalice(input1 as ILiquidStack, input2 as ILiquidStack, out as IItemStack[]) {
  val assRec = AssemblyRecipe.create(function(container) {
      for i, output in out {
        if(isNull(output)) continue;
        container.addItemOutput("item_output" ~ i, output);
      }
    });
    assRec.requireFluid("fluid_input0", input1);
    assRec.requireFluid("fluid_input1", input2);
  <assembly:chalice>.addJEIRecipe(assRec);
}

add_everflow_chalice(<liquid:water> * 10, <liquid:lava> * 10, [<minecraft:cobblestone> * 60, <minecraft:stone> * 30, <minecraft:obsidian> * 10]);
add_everflow_chalice(<liquid:water> * 10, <liquid:astralsorcery.liquidstarlight> * 10, [<minecraft:ice> * 100]);
add_everflow_chalice(<liquid:lava> * 10, <liquid:astralsorcery.liquidstarlight> * 10, [<minecraft:sand> * 99, <astralsorcery:blockcustomsandore> * 1]);
add_everflow_chalice(<liquid:petrotheum> * 25, <liquid:astralsorcery.liquidstarlight> * 100, [<appliedenergistics2:sky_stone_block> * 89, <appliedenergistics2:smooth_sky_stone_block> * 10, <contenttweaker:starmetal_block> * 1]);



// --== Lens of the Miner ==-- //

var lens_of_the_miner = <assembly:lens_of_the_miner>;
lens_of_the_miner.addJEICatalyst(<actuallyadditions:item_mining_lens>);
lens_of_the_miner.addJEICatalyst(<actuallyadditions:block_atomic_reconstructor>);
lens_of_the_miner.setJEIDurationSlot(1,0,"duration", getVisGauge(4,2));
addInsOuts(lens_of_the_miner, [[0,0]], [[2,0]]);

// Adds a Mining Lens ore to the RQ JEI Page. 

function addMiningLensOre(base as IIngredient, oreDictName as string, weight as int) as void {
  val ore = oreDict[oreDictName];
  if(ore.items.length == 0) return;
  val output = ore.firstItem.withLore(["§e§lWeight: " ~ weight]);
  add(<assembly:lens_of_the_miner>, {[base] as IIngredient[] : [output]});
}

function addMiningLensStoneOre(oreDictName as string, weight as int) {
  addMiningLensOre(<minecraft:stone>, oreDictName, weight);
}
function addMiningLensNetherOre(oreDictName as string, weight as int) {
  addMiningLensOre(<minecraft:netherrack>, oreDictName, weight);
}

// Values taken from:
// https://github.com/Ellpeck/ActuallyAdditions/blob/main/src/main/java/de/ellpeck/actuallyadditions/common/items/lens/LensMining.java
addMiningLensStoneOre("oreCoal", 5000);
addMiningLensStoneOre("oreIron", 3000);
addMiningLensStoneOre("oreGold", 500);
addMiningLensStoneOre("oreDiamond", 50);
addMiningLensStoneOre("oreLapis", 250);
addMiningLensStoneOre("oreRedstone", 200);
addMiningLensStoneOre("oreEmerald", 30);

addMiningLensStoneOre("oreCopper", 2000);
addMiningLensStoneOre("oreTin", 1800);
addMiningLensStoneOre("oreLead", 1500);
addMiningLensStoneOre("oreSilver", 1000);
addMiningLensStoneOre("oreNickel", 100);
addMiningLensStoneOre("orePlatinum", 20);
addMiningLensStoneOre("oreAluminum", 1200);
addMiningLensStoneOre("oreAluminium", 1200);
addMiningLensStoneOre("oreOsmium", 1500);
addMiningLensStoneOre("oreUranium", 400);
addMiningLensStoneOre("oreCertusQuartz", 800);
addMiningLensStoneOre("oreQuartzBlack", 3000);
addMiningLensStoneOre("oreRuby", 40);
addMiningLensStoneOre("orePeridot", 40);
addMiningLensStoneOre("oreTopaz", 40);
addMiningLensStoneOre("oreSapphire", 40);
addMiningLensStoneOre("oreAmber", 150);

addMiningLensNetherOre("oreQuartz", 3000);
addMiningLensNetherOre("oreCobalt", 50);
addMiningLensNetherOre("oreArdite", 50);



// --== Smeltery Fuels ==-- //

var smeltery_fuels = <assembly:smeltery_fuel>;
smeltery_fuels.addJEICatalyst(<tcomplement:melter>);
smeltery_fuels.addJEICatalyst(<tcomplement:high_oven_controller>);
smeltery_fuels.setJEIFluidSlot(0, 0, "fuel");
smeltery_fuels.setJEIDurationSlot(1, 0, "duration", getVisGauge(1, 1));
smeltery_fuels.setJEIItemSlot(2, 0, "heat", getVisSlots(2,0));

// Adds a smeltery fuel to the RQ JEI Page. 

function add_smeltery_fuel(fluid as ILiquidStack, duration as int) {
  val assRec = AssemblyRecipe.create(function(container) {
      container.addItemOutput("heat", <embers:ember_detector>.withDisplayName("§e" ~ fluid.temperature ~ "K"));
    });
    assRec.requireFluid("fuel", fluid);
    assRec.requireDuration("duration", duration);
  <assembly:smeltery_fuel>.addJEIRecipe(assRec);  
}

add_smeltery_fuel(<liquid:lava> * 50, 80);
add_smeltery_fuel(<liquid:pyrotheum> * 25, 400);
add_smeltery_fuel(<liquid:moltenembers> * 50, 50);



// --== Laser Drill Ores ==-- //
var laser_drill = <assembly:laser_drill>;
laser_drill.addJEICatalyst(<advancedrocketry:spacelaser>);

// Adds laser drill ores to the RQ JEI Page. 

val laserDrillList = [
<quark:biotite_ore>,
<astralsorcery:blockcustomore:1>,
<mekanism:oreblock>,
<thermalfoundation:ore:6>,
<aetherworks:aether_ore>,
<minecraft:diamond_ore>,
<avaritia:resource:2>,
<appliedenergistics2:sky_stone_block>
] as IItemStack[];

var l = 0;
for y in 0 .. (laserDrillList.length / 9 + 1) as int {
  for x in 0 .. 9 {
    laser_drill.setJEIItemSlot(x, y, 'item_output'~l);
    l += 1;
  }
}

add(laser_drill, {[] : laserDrillList});



// --== Opencomputers 3D Printer ==-- //

var oc_printer3d = <assembly:oc_printer3d>;
oc_printer3d.addJEICatalyst(<opencomputers:printer>);
oc_printer3d.setJEIDurationSlot(2,0,"duration", SlotVisual.arrowRight());
addInsOuts(oc_printer3d, [[0,0],[1,0]], [[3,0]]);
add(oc_printer3d, {[<opencomputers:material:28>, <ore:dye>] : [<opencomputers:print>]});



// --== Opencomputers Electronics Assembler ==-- //

var electronics_assembler = <assembly:electronics_assembler>;
electronics_assembler.addJEICatalyst(<opencomputers:assembler>);
electronics_assembler.setJEIDurationSlot(1,0,"duration", SlotVisual.arrowRight());
addInsOuts(electronics_assembler, [[0,0]], [[2,0]]);
add(electronics_assembler, {[<opencomputers:case1> | <opencomputers:case2> | <opencomputers:case3>] : [<opencomputers:robot>]});
add(electronics_assembler, {[<opencomputers:material:17> | <opencomputers:material:18>] : [<opencomputers:misc>]});
add(electronics_assembler, {[<opencomputers:material:23> | <opencomputers:material:24>] : [<opencomputers:misc:1>]});



// --== Oil Generator ==-- //

var oil_generator = <assembly:oil_generator>;
oil_generator.addJEICatalyst(<actuallyadditions:block_oil_generator>);
oil_generator.setJEIDurationSlot(1,0,"duration", getVisSlots(5,1));
oil_generator.setJEIFluidSlot(0, 0, 'liquid_input');
oil_generator.setJEIEnergySlot(2, 0, 'energy_out', "rf");

// Adds Oil Generator Fuels to the RQ JEI Page.

var oilgeneratorfuels = {
<liquid:canolaoil> : [2000, 80000],
<liquid:refinedcanolaoil> : [2400, 192000],
<liquid:crystaloil> : [5600, 560000],
<liquid:empoweredoil> : [8000, 960000]
} as int[][ILiquidStack];

for fluid, values in oilgeneratorfuels {
  val assRec = AssemblyRecipe.create(function(container) {
      container.addEnergyOutput('energy_out', values[1]);
    });
    assRec.requireFluid('liquid_input', fluid * 1000);
    assRec.requireDuration("duration", values[0]);
  oil_generator.addJEIRecipe(assRec);
}



// --== Ember Bore ==-- //

var ember_bore = <assembly:ember_bore>;
ember_bore.addJEICatalyst(<embers:ember_bore>);
ember_bore.setJEIItemSlot(0,0, "information", getVisSlots(4,1));
ember_bore.setJEIDurationSlot(1, 0, "duration", getVisGauge(2,6));

k = 0;
for x in 2 .. 5 {
  ember_bore.setJEIItemSlot(x, 0, 'item_output'~k);
  k += 1;
}


val emberlist = [<embers:dust_ember>, <embers:shard_ember>, <embers:crystal_ember>] as IItemStack[];

val emberRecipes = AssemblyRecipe.create(function(container) {
      for i, output in emberlist {
        container.addItemOutput('item_output'~i, output);
      }
    });
emberRecipes.requireItem("information", <minecraft:book>.withDisplayName("§fAny Dimension"));
ember_bore.addJEIRecipe(emberRecipes);

// --== Stellar Refraction Table ==-- //
// TODO Can consider replacing books with items representing enchants for better readability?
var refraction_table = <assembly:refraction_table>;
refraction_table.addJEICatalyst(<astralsorcery:blockmapdrawingtable>);
refraction_table.addJEICatalyst(<astralsorcery:iteminfusedglass>);
refraction_table.setJEIItemSlot(0, 0, "constellation");
refraction_table.setJEIDurationSlot(1, 0, "duration", getVisSlots(1,7));
refraction_table.setJEIItemSlot(2, 0, "enchantment");
refraction_table.setJEIItemSlot(3, 0, "potion");


// Doesn't work because CT can't cast IData[] to IData
// function enchantedBook(enchantments as int[][]) as IItemStack {
//   var enchantmentList = [] as IData[];
//   for enchantment in enchantments {
//     var enchantment_nbt = {
//       lvl: enchantment[1],
//       id: enchantment[0]
//     } as IData;
//     enchantmentList += enchantment_nbt;
//   }
//   return <minecraft:enchanted_book>.withTag({StoredEnchantments: enchantmentList});
// }

// Returns an enchanted book given a 2D array of enchantment ids to levels. Can only accept up to 4 enchants

function enchantedBook(enchantments as IEnchantment[]) as IItemStack {
  var enchant_count = enchantments.length;

  if (enchant_count == 1) {
    return <minecraft:enchanted_book>.withTag({StoredEnchantments: enchantments[0].makeTag().ench});
  }
  else if (enchant_count == 2) {
    return <minecraft:enchanted_book>.withTag({StoredEnchantments: [enchantments[0].makeTag().ench[0], 
    enchantments[1].makeTag().ench[0]]});
  }
  else if (enchant_count == 3) {
    return <minecraft:enchanted_book>.withTag({StoredEnchantments: [enchantments[0].makeTag().ench[0], 
    enchantments[1].makeTag().ench[0], enchantments[2].makeTag().ench[0]]});
  }
  else if (enchant_count == 4) {
    return <minecraft:enchanted_book>.withTag({StoredEnchantments: [enchantments[0].makeTag().ench[0], 
    enchantments[1].makeTag().ench[0], enchantments[2].makeTag().ench[0], enchantments[3].makeTag().ench[0]]});    
  }
}

// Adds Refraction Table outputs to the RQ JEI Page.

function addRefractionRecipe(info as string, enchantments as IEnchantment[], potions as IPotionEffect[]) {
    val assRec = AssemblyRecipe.create(function(container) {
      container.addItemOutput("enchantment", enchantedBook(enchantments));
      container.addItemOutput("potion", itemUtils.createPotion(potions).withDisplayName("§fStardew"));
    });
    assRec.requireItem("constellation", <astralsorcery:itemconstellationpaper>.withTag(
      {astralsorcery: {constellationName: "astralsorcery.constellation." ~ info}}
      ).withDisplayName("§f" ~ info));
    <assembly:refraction_table>.addJEIRecipe(assRec);
}

addRefractionRecipe("discidia", [<enchantment:minecraft:sharpness> * 7, <enchantment:minecraft:power> * 7], [<potion:minecraft:strength>.makePotionEffect(7200, 3)]);
addRefractionRecipe("armara", [<enchantment:minecraft:protection> * 5], [<potion:minecraft:resistance>.makePotionEffect(7200, 2)]);
addRefractionRecipe("vicio", [<enchantment:minecraft:feather_falling> * 5], [<potion:minecraft:speed>.makePotionEffect(7200, 3)]);
addRefractionRecipe("aevitas", [<enchantment:minecraft:mending> * 3], [<potion:minecraft:regeneration>.makePotionEffect(7200, 3)]);
addRefractionRecipe("evorsio", [<enchantment:minecraft:efficiency> * 5], [<potion:minecraft:haste>.makePotionEffect(7200, 3)]);
addRefractionRecipe("lucerna", [<enchantment:astralsorcery:enchantment.as.nightvision> * 1], [<potion:minecraft:night_vision>.makePotionEffect(7200, 2)]);
addRefractionRecipe("mineralis", [<enchantment:minecraft:fortune> * 3], [<potion:minecraft:haste>.makePotionEffect(7200, 3)]);
addRefractionRecipe("horologium", [<enchantment:minecraft:fortune> * 6, <enchantment:minecraft:looting> * 6], 
[<potion:minecraft:speed>.makePotionEffect(7200, 4), <potion:minecraft:haste>.makePotionEffect(7200, 8)]);
addRefractionRecipe("octans", [<enchantment:minecraft:respiration> * 4], [<potion:minecraft:water_breathing>.makePotionEffect(7200, 4)]);
addRefractionRecipe("bootes", [<enchantment:minecraft:silk_touch> * 1], [<potion:minecraft:saturation>.makePotionEffect(7200, 5)]);
addRefractionRecipe("fornax", [<enchantment:minecraft:fire_aspect> * 3, <enchantment:minecraft:flame> * 2, 
<enchantment:astralsorcery:enchantment.as.smelting> * 1], [<potion:minecraft:fire_resistance>.makePotionEffect(7200, 0)]);
addRefractionRecipe("pelotrio", [<enchantment:minecraft:infinity> * 1, <enchantment:minecraft:lure> * 6], 
[<potion:minecraft:regeneration>.makePotionEffect(7200, 4), <potion:minecraft:absorption>.makePotionEffect(7200, 4)]);
addRefractionRecipe("gelu", [<enchantment:minecraft:frost_walker> * 2, <enchantment:minecraft:feather_falling> * 4, <enchantment:minecraft:unbreaking> * 4], 
[<potion:minecraft:resistance>.makePotionEffect(7200, 2), <potion:minecraft:fire_resistance>.makePotionEffect(7200, 0), <potion:minecraft:slowness>.makePotionEffect(7200, 1)]);
addRefractionRecipe("ulteria", [<enchantment:minecraft:unbreaking> * 3, <enchantment:minecraft:fire_protection> * 6, 
<enchantment:minecraft:blast_protection> * 6, <enchantment:minecraft:projectile_protection> * 6], 
[<potion:minecraft:absorption>.makePotionEffect(7200, 2), <potion:minecraft:regeneration>.makePotionEffect(7200, 1), <potion:minecraft:weakness>.makePotionEffect(7200, 2)]);
addRefractionRecipe("alcara", [<enchantment:minecraft:sweeping> * 7, <enchantment:minecraft:lure> * 5, <enchantment:minecraft:luck_of_the_sea> * 6], 
[<potion:minecraft:luck>.makePotionEffect(7200, 4), <potion:minecraft:invisibility>.makePotionEffect(7200, 1),<potion:minecraft:hunger>.makePotionEffect(7200, 2)]);
addRefractionRecipe("vorux", [<enchantment:minecraft:smite> * 7, <enchantment:minecraft:bane_of_arthropods> * 7, 
<enchantment:minecraft:sharpness> * 4, <enchantment:minecraft:power> * 4], 
[<potion:minecraft:strength>.makePotionEffect(7200, 3), <potion:minecraft:resistance>.makePotionEffect(7200, 1),<potion:minecraft:mining_fatigue>.makePotionEffect(7200, 3)]);


// TODO --== Apotheosis Enchants ==-- //
var apotheosis_enchants = <assembly:apotheosis_enchants>;

##########################################################################################
print("==================== end of jei.zs ====================");
