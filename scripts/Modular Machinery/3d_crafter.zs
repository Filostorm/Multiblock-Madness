import mods.modularmachinery.RecipePrimer;
import crafttweaker.item.IItemStack;
import mods.actuallyadditions.Empowerer;
import mods.extendedcrafting.CombinationCrafting;

print("==================== loading 3d_crafter.zs ====================");
##########################################################################################

##############################################
##
##           Mini Field Crafter
##
##############################################

##Tech Reborn Basic Frame
val TRBasicFrame2 = mods.modularmachinery.RecipeBuilder.newBuilder("minifield-crafter-trbasicframe2", "minifield-crafter", 400, 0);
TRBasicFrame2.addEnergyPerTickInput(2000);
TRBasicFrame2.addItemInput(<techreborn:part:29>);
TRBasicFrame2.addItemInput(<immersiveengineering:metal_decoration0:3>);
TRBasicFrame2.addItemInput(<rockhounding_chemistry:misc_blocks_a:13> * 6);
TRBasicFrame2.addItemInput(<contenttweaker:sheetmetal_refinediron> * 20);
TRBasicFrame2.addItemOutput(<techreborn:machine_frame>);
TRBasicFrame2.build();

##Tech Reborn Basic Frame 2
val TRBasicFrame = mods.modularmachinery.RecipeBuilder.newBuilder("minifield-crafter-trbasicframe", "minifield-crafter", 400, 0);
TRBasicFrame.addEnergyPerTickInput(2000);
TRBasicFrame.addItemInput(<techreborn:part:29>);
TRBasicFrame.addItemInput(<contenttweaker:advanced_redstone_block>);
TRBasicFrame.addItemInput(<rockhounding_chemistry:misc_blocks_a:13> * 6);
TRBasicFrame.addItemInput(<contenttweaker:sheetmetal_refinediron> * 20);
TRBasicFrame.addItemOutput(<techreborn:machine_frame>*2);
TRBasicFrame.build();

##Mekanism Steel Casing
val MekanismSteelCasing = mods.modularmachinery.RecipeBuilder.newBuilder("minifield-crafter-mekanismsteelcasing", "minifield-crafter", 400, 0);
MekanismSteelCasing.addEnergyPerTickInput(4000);
MekanismSteelCasing.addItemInput(<techreborn:part:43>);
MekanismSteelCasing.addItemInput(<mekanism:basicblock>);
MekanismSteelCasing.addItemInput(<jaopca:block_sheetmetalelectricalsteel> * 12);
MekanismSteelCasing.addItemInput(<contenttweaker:scaffolding_thermal_alloy> * 14);
MekanismSteelCasing.addItemOutput(<mekanism:basicblock:8>);
MekanismSteelCasing.build();

val MekanismSteelCasing2 = mods.modularmachinery.RecipeBuilder.newBuilder("minifield-crafter-mekanismsSteelcasing2", "minifield-crafter", 400, 0);
MekanismSteelCasing2.addEnergyPerTickInput(4000);
MekanismSteelCasing2.addItemInput(<techreborn:part:43>);
MekanismSteelCasing2.addItemInput(<mekanism:basicblock>);
MekanismSteelCasing2.addItemInput(<jaopca:block_sheetmetalvanasteel> * 12);
MekanismSteelCasing2.addItemInput(<contenttweaker:scaffolding_thermal_alloy> * 14);
MekanismSteelCasing2.addItemOutput(<mekanism:basicblock:8>*2);
MekanismSteelCasing2.build();

##Thermal Machine Frame
val ThermalFrame = mods.modularmachinery.RecipeBuilder.newBuilder("minifield-crafter-thermalframe", "minifield-crafter", 400, 0);
ThermalFrame.addEnergyPerTickInput(4000);
ThermalFrame.addItemInput(<techreborn:part:43>);
ThermalFrame.addItemInput(<thermalfoundation:storage:6>);
ThermalFrame.addItemInput(<immersiveengineering:sheetmetal:8> * 8);
ThermalFrame.addItemInput(<thermalfoundation:glass:3> * 6);
ThermalFrame.addItemInput(<immersiveengineering:sheetmetal:1> * 8);
ThermalFrame.addItemInput(<contenttweaker:invar_scaffolding> * 4);
ThermalFrame.addItemOutput(<thermalexpansion:frame>);
ThermalFrame.build();

val ThermalFrame2 = mods.modularmachinery.RecipeBuilder.newBuilder("minifield-crafter-thermalframe2", "minifield-crafter", 400, 0);
ThermalFrame2.addEnergyPerTickInput(4000);
ThermalFrame2.addItemInput(<techreborn:part:43>);
ThermalFrame2.addItemInput(<thermalfoundation:storage:6>);
ThermalFrame2.addItemInput(<immersiveengineering:sheetmetal:8> * 8);
ThermalFrame2.addItemInput(<thermalfoundation:glass:3> * 6);
ThermalFrame2.addItemInput(<jaopca:block_sheetmetalscal> * 8);
ThermalFrame2.addItemInput(<contenttweaker:invar_scaffolding> * 4);
ThermalFrame2.addItemOutput(<thermalexpansion:frame>*2);
ThermalFrame2.build();

##Industruial Machine Chassis
val IndustruialChassis = mods.modularmachinery.RecipeBuilder.newBuilder("minifield-crafter-industruialchassis", "minifield-crafter", 400, 0);
IndustruialChassis.addEnergyPerTickInput(6000);
IndustruialChassis.addItemInput(<thaumcraft:phial:1>.withTag({Aspects: [{amount: 10, key: "machina"}]}));
IndustruialChassis.addItemInput(<techreborn:storage:10>);
IndustruialChassis.addItemInput(<contenttweaker:scaffolding_mek_alloy> * 18);
IndustruialChassis.addItemInput(<jaopca:block_sheetmetaldarksteel> * 8);
IndustruialChassis.addItemOutput(<enderio:item_material:1>);
IndustruialChassis.build();

val IndustruialChassis2 = mods.modularmachinery.RecipeBuilder.newBuilder("minifield-crafter-industruialchassis2", "minifield-crafter", 400, 0);
IndustruialChassis2.addEnergyPerTickInput(6000);
IndustruialChassis2.addItemInput(<thaumcraft:phial:1>.withTag({Aspects: [{amount: 10, key: "machina"}]}));
IndustruialChassis2.addItemInput(<rockhounding_chemistry:alloy_blocks_tech:14>);
IndustruialChassis2.addItemInput(<contenttweaker:scaffolding_mek_alloy> * 18);
IndustruialChassis2.addItemInput(<jaopca:block_sheetmetaldarksteel> * 8);
IndustruialChassis2.addItemOutput(<enderio:item_material:1>*2);
IndustruialChassis2.build();

##Soul Machine Chassis
val SoulChassis = mods.modularmachinery.RecipeBuilder.newBuilder("minifield-crafter-soulchassis", "minifield-crafter", 400, 0);
SoulChassis.addEnergyPerTickInput(6000);
SoulChassis.addItemInput(<thaumcraft:phial:1>.withTag({Aspects: [{amount: 10, key: "spiritus"}]}));
SoulChassis.addItemInput(<techreborn:storage:10>);
SoulChassis.addItemInput(<contenttweaker:scaffolding_mek_alloy> * 18);
SoulChassis.addItemInput(<jaopca:block_sheetmetalsoularium> * 8);
SoulChassis.addItemOutput(<enderio:item_material:53>);
SoulChassis.build();

val SoulChassis2 = mods.modularmachinery.RecipeBuilder.newBuilder("minifield-crafter-soulchassis2", "minifield-crafter", 400, 0);
SoulChassis2.addEnergyPerTickInput(6000);
SoulChassis2.addItemInput(<thaumcraft:phial:1>.withTag({Aspects: [{amount: 10, key: "spiritus"}]}));
SoulChassis2.addItemInput(<rockhounding_chemistry:alloy_blocks_tech:14>);
SoulChassis2.addItemInput(<contenttweaker:scaffolding_mek_alloy> * 18);
SoulChassis2.addItemInput(<jaopca:block_sheetmetalsoularium> * 8);
SoulChassis2.addItemOutput(<enderio:item_material:53>*2);
SoulChassis2.build();

##Enhanced Machine Chassis
val EnhancedChassis = mods.modularmachinery.RecipeBuilder.newBuilder("minifield-crafter-Enhancedchassis", "minifield-crafter", 400, 0);
EnhancedChassis.addEnergyPerTickInput(10000);
EnhancedChassis.addItemInput(<thaumcraft:phial:1>.withTag({Aspects: [{amount: 10, key: "alienis"}]}));
EnhancedChassis.addItemInput(<techreborn:storage:2>);
EnhancedChassis.addItemInput(<enderio:block_end_iron_bars> * 18);
EnhancedChassis.addItemInput(<jaopca:block_sheetmetalstellite> * 8);
EnhancedChassis.addItemOutput(<enderio:item_material:66>);
EnhancedChassis.build();

val EnhancedChassis2 = mods.modularmachinery.RecipeBuilder.newBuilder("minifield-crafter-Enhancedchassis2", "minifield-crafter", 400, 0);
EnhancedChassis2.addEnergyPerTickInput(10000);
EnhancedChassis2.addItemInput(<thaumcraft:phial:1>.withTag({Aspects: [{amount: 10, key: "alienis"}]}));
EnhancedChassis2.addItemInput(<rockhounding_chemistry:alloy_blocks_tech:11>);
EnhancedChassis2.addItemInput(<enderio:block_end_iron_bars> * 18);
EnhancedChassis2.addItemInput(<jaopca:block_sheetmetalstellite> * 8);
EnhancedChassis2.addItemOutput(<enderio:item_material:66>*2);
EnhancedChassis2.build();


##Advanced Rockety Frame
val ARFrame = mods.modularmachinery.RecipeBuilder.newBuilder("minifield-crafter-arframe", "minifield-crafter", 400, 0);
ARFrame.addEnergyPerTickInput(3000);
ARFrame.addItemInput(<contenttweaker:component_mek_alloy>);
ARFrame.addItemInput(<jaopca:block_scaffoldingstainlesssteel> * 12);
ARFrame.addItemInput(<contenttweaker:scaffolding_plastic> * 6);
ARFrame.addItemInput(<jaopca:block_sheetmetaltitanium> * 9);
ARFrame.addItemOutput(<libvulpes:structuremachine>);
ARFrame.build();

val ARFrame2 = mods.modularmachinery.RecipeBuilder.newBuilder("minifield-crafter-arframe2", "minifield-crafter", 400, 0);
ARFrame2.addEnergyPerTickInput(3000);
ARFrame2.addItemInput(<contenttweaker:component_mek_alloy>);
ARFrame2.addItemInput(<contenttweaker:nimonic_scaffolding> * 12);
ARFrame2.addItemInput(<contenttweaker:scaffolding_plastic> * 6);
ARFrame2.addItemInput(<jaopca:block_sheetmetaltitanium> * 9);
ARFrame2.addItemOutput(<libvulpes:structuremachine>*2);
ARFrame2.build();

##Actually Additions Iron Casing
val AAIronCasing = mods.modularmachinery.RecipeBuilder.newBuilder("minifield-crafter-aaironaasing", "minifield-crafter", 400, 0);
AAIronCasing.addEnergyPerTickInput(1000);
AAIronCasing.addItemInput(<jaopca:block_sheetmetaltinsilver> * 20);
AAIronCasing.addItemInput(<immersiveengineering:wooden_decoration:1>*6);
AAIronCasing.addItemInput(<actuallyadditions:block_misc:2>);
AAIronCasing.addItemInput(<immersiveengineering:wirecoil:1>);
AAIronCasing.addItemOutput(<actuallyadditions:block_misc:9>);
AAIronCasing.build();

##Profiling Bench
val RHBench = mods.modularmachinery.RecipeBuilder.newBuilder("minifield-crafter-rhbench", "minifield-crafter", 400, 0);
RHBench.addEnergyPerTickInput(1000);
RHBench.addItemInput(<immersiveengineering:stone_decoration:6> * 8);
RHBench.addItemInput(<contenttweaker:invar_scaffolding> * 4);
RHBench.addItemInput(<minecraft:piston>);
RHBench.addItemInput(<thermalfoundation:storage_alloy:2>);
RHBench.addItemInput(<thermalfoundation:material:291>);
RHBench.addItemOutput(<rockhounding_chemistry:machines_a:11>);
RHBench.build();

##Energy Acceptor
val AEAcceptor = mods.modularmachinery.RecipeBuilder.newBuilder("minifield-crafter-aeacceptor", "minifield-crafter", 400, 0);
AEAcceptor.addEnergyPerTickInput(1000);
AEAcceptor.addItemInput(<appliedenergistics2:sky_stone_block> * 8);
AEAcceptor.addItemInput(<storagenetwork:master>);
AEAcceptor.addItemInput(<appliedenergistics2:fluix_block>);
AEAcceptor.addItemInput(<appliedenergistics2:quartz_glass> * 6);
AEAcceptor.addItemInput(<contenttweaker:sheetmetal_refinediron> * 12);
AEAcceptor.addItemOutput(<appliedenergistics2:energy_acceptor>);
AEAcceptor.build();

##ME Controller
val MEController = mods.modularmachinery.RecipeBuilder.newBuilder("minifield-crafter-mecntroller", "minifield-crafter", 400, 0);
MEController.addEnergyPerTickInput(5000);
MEController.addItemInput(<threng:material:4>);
MEController.addItemInput(<appliedenergistics2:fluix_block>*8);
MEController.addItemInput(<appliedenergistics2:quartz_vibrant_glass>*12);
MEController.addItemInput(<thermalfoundation:storage:6> * 6);
MEController.addItemInput(<techreborn:machine_frame:1>);
MEController.addItemOutput(<appliedenergistics2:controller>);
MEController.build();


##Small Crate
val AASmallCrate = mods.modularmachinery.RecipeBuilder.newBuilder("minifield-crafter-aasmallcrate", "minifield-crafter", 400, 0);
AASmallCrate.addEnergyPerTickInput(1000);
AASmallCrate.addItemInput(<minecraft:chest>);
AASmallCrate.addItemInput(<actuallyadditions:block_misc:4> * 2);
AASmallCrate.addItemInput(<immersiveengineering:treated_wood> * 24);
AASmallCrate.addItemOutput(<actuallyadditions:block_giant_chest>);
AASmallCrate.build();

##Medium Crate
val AAMediumCrate = mods.modularmachinery.RecipeBuilder.newBuilder("minifield-crafter-aamediumcrate", "minifield-crafter", 400, 0);
AAMediumCrate.addEnergyPerTickInput(2000);
AAMediumCrate.addItemInput(<minecraft:chest>);
AAMediumCrate.addItemInput(<actuallyadditions:block_crystal:3>);
AAMediumCrate.addItemInput(<actuallyadditions:block_misc:4> * 2);
AAMediumCrate.addItemInput(<immersiveengineering:treated_wood> * 24);
AAMediumCrate.addItemOutput(<actuallyadditions:block_giant_chest_medium>);
AAMediumCrate.build();

##Large Crate
val AALargeCrate = mods.modularmachinery.RecipeBuilder.newBuilder("minifield-crafter-aalargecrate", "minifield-crafter", 400, 0);
AALargeCrate.addEnergyPerTickInput(4000);
AALargeCrate.addItemInput(<minecraft:chest>);
AALargeCrate.addItemInput(<chisel:energizedvoidstone:2>);
AALargeCrate.addItemInput(<actuallyadditions:block_misc:4> * 2);
AALargeCrate.addItemInput(<immersiveengineering:treated_wood> * 24);
AALargeCrate.addItemOutput(<actuallyadditions:block_giant_chest_large>);
AALargeCrate.build();

##Thermal Tank
val ThermalTank = mods.modularmachinery.RecipeBuilder.newBuilder("minifield-crafter-thermaltank", "minifield-crafter", 400, 0);
ThermalTank.addEnergyPerTickInput(1000);
ThermalTank.addItemInput(<ore:fusedGlass>, 12);
ThermalTank.addItemInput(<chisel:technical:5> * 2);
ThermalTank.addItemInput(<immersiveengineering:sheetmetal> * 12);
ThermalTank.addItemInput(<thermalfoundation:material:512>);
ThermalTank.addItemOutput(<thermalexpansion:tank>);
ThermalTank.build();

##Nuclearcraft Chassis
val NCChassis = mods.modularmachinery.RecipeBuilder.newBuilder("minifield-crafter-ncchassis", "minifield-crafter", 400, 0);
NCChassis.addEnergyPerTickInput(4000);
NCChassis.addItemInput(<contenttweaker:plating_basic> * 8);
NCChassis.addItemInput(<contenttweaker:bam_scaffolding> * 18);
NCChassis.addItemInput(<contenttweaker:sub_block_holder_0:6>);
NCChassis.addItemInput(<nuclearcraft:part:7>);
NCChassis.addItemOutput(<nuclearcraft:part:10>);
NCChassis.build();

##Nuclearcraft Chassis2
val NCChassis2 = mods.modularmachinery.RecipeBuilder.newBuilder("minifield-crafter-ncchassis2", "minifield-crafter", 400, 0);
NCChassis2.addEnergyPerTickInput(4000);
NCChassis2.addItemInput(<contenttweaker:plating_basic> * 8);
NCChassis2.addItemInput(<contenttweaker:bam_scaffolding> * 18);
NCChassis2.addItemInput(<jaopca:block_blockthermoconducting>);
NCChassis2.addItemInput(<nuclearcraft:part:7>);
NCChassis2.addItemOutput(<nuclearcraft:part:10>*2);
NCChassis2.build();

##RF Tools Frame
val RFToolsFrame = mods.modularmachinery.RecipeBuilder.newBuilder("minifield-crafter-rftoolsframe", "minifield-crafter", 400, 0);
RFToolsFrame.addEnergyPerTickInput(3000);
RFToolsFrame.addItemInput(<jaopca:block_scaffoldingthaumium> * 18);
RFToolsFrame.addItemInput(<immersiveengineering:stone_decoration:8> * 8);
RFToolsFrame.addItemInput(<actuallyadditions:block_crystal:1>);
RFToolsFrame.addItemInput(<actuallyadditions:item_misc:7>);
RFToolsFrame.addItemOutput(<rftools:machine_frame>);
RFToolsFrame.build();

##RF Tools Frame 2
val RFToolsFrame2 = mods.modularmachinery.RecipeBuilder.newBuilder("minifield-crafter-rftoolsframe2", "minifield-crafter", 400, 0);
RFToolsFrame2.addEnergyPerTickInput(3000);
RFToolsFrame2.addItemInput(<contenttweaker:ironwood_scaffolding> * 18);
RFToolsFrame2.addItemInput(<immersiveengineering:stone_decoration:8> * 8);
RFToolsFrame2.addItemInput(<actuallyadditions:block_crystal:1>);
RFToolsFrame2.addItemInput(<actuallyadditions:item_misc:7>);
RFToolsFrame2.addItemOutput(<rftools:machine_frame>);
RFToolsFrame2.build();

##Embers Core
val EmbersCore = mods.modularmachinery.RecipeBuilder.newBuilder("minifield-crafter-emberscore", "minifield-crafter", 400, 0);
EmbersCore.addEnergyPerTickInput(1000);
EmbersCore.addItemInput(<minecraft:redstone_block>);
EmbersCore.addItemInput(<immersiveengineering:sheetmetal:2> * 12);
EmbersCore.addItemInput(<immersiveengineering:sheetmetal:9> * 8);
EmbersCore.addItemInput(<minecraft:compass>);
EmbersCore.addItemOutput(<embers:mech_core>);
EmbersCore.build();

##Compact Machine Wall
val MachineWall = mods.modularmachinery.RecipeBuilder.newBuilder("minifield-crafter-machinewall", "minifield-crafter", 100, 0);
MachineWall.addEnergyPerTickInput(1000);
MachineWall.addItemInput(<minecraft:iron_block>);
MachineWall.addItemInput(<minecraft:redstone>*2);
MachineWall.addItemOutput(<compactmachines3:wallbreakable>*16);
MachineWall.build();

##Compact Machine 1
val MachineOne = mods.modularmachinery.RecipeBuilder.newBuilder("minifield-crafter-machineone", "minifield-crafter", 200, 0);
MachineOne.addEnergyPerTickInput(1000);
MachineOne.addItemInput(<compactmachines3:wallbreakable>*26);
MachineOne.addItemInput(<minecraft:ender_pearl>);
MachineOne.addItemOutput(<compactmachines3:machine>);
MachineOne.build();

##Compact Machine 2
val MachineTwo = mods.modularmachinery.RecipeBuilder.newBuilder("minifield-crafter-machinetwo", "minifield-crafter", 300, 0);
MachineTwo.addEnergyPerTickInput(2000);
MachineTwo.addItemInput(<compactmachines3:wallbreakable>*26);
MachineTwo.addItemInput(<minecraft:iron_block>);
MachineTwo.addItemInput(<minecraft:ender_pearl>);
MachineTwo.addItemOutput(<compactmachines3:machine:1>);
MachineTwo.build();

##Compact Machine 3
val MachineThree = mods.modularmachinery.RecipeBuilder.newBuilder("minifield-crafter-machinethree", "minifield-crafter", 600, 0);
MachineThree.addEnergyPerTickInput(4000);
MachineThree.addItemInput(<compactmachines3:wallbreakable>*26);
MachineThree.addItemInput(<minecraft:gold_block>);
MachineThree.addItemInput(<minecraft:ender_pearl>);
MachineThree.addItemOutput(<compactmachines3:machine:2>);
MachineThree.build();

##TCconstruct
val TCconstruct = mods.modularmachinery.RecipeBuilder.newBuilder("minifield-crafter-tcconstruct", "minifield-crafter", 400, 0);
TCconstruct.addEnergyPerTickInput(2000);
TCconstruct.addItemInput(<thaumcraft:plank_greatwood>);
TCconstruct.addItemInput(<immersiveengineering:sheetmetal:8>*8);
TCconstruct.addItemInput(<thaumcraft:tube>*12);
TCconstruct.addItemInput(<thaumcraft:tube_valve>*6);
TCconstruct.addItemInput(<embers:gear_dawnstone>);
TCconstruct.addItemOutput(<thaumcraft:metal_alchemical>*3);
TCconstruct.build();

##SootyFrame
val SootyFrame = mods.modularmachinery.RecipeBuilder.newBuilder("minifield-crafter-SootyFrame", "minifield-crafter", 400, 0);
SootyFrame.addEnergyPerTickInput(2000);
SootyFrame.addItemInput(<contenttweaker:sooty_block> * 20);
SootyFrame.addItemInput(<jaopca:block_sheetmetalpulsatingiron> * 6);
SootyFrame.addItemInput(<bloodtinker:blood_bronze_block>);
SootyFrame.addItemInput(<moreplates:knightmetal_gear>);
SootyFrame.addItemOutput(<deepmoblearning:machine_casing>);
SootyFrame.build();


##bonsai
val bonsai = mods.modularmachinery.RecipeBuilder.newBuilder("minifield-crafter-bonsai", "minifield-crafter", 400, 0);
bonsai.addEnergyPerTickInput(2000);
bonsai.addItemInput(<minecraft:brick_block> * 12);
bonsai.addItemInput(<minecraft:stone_slab:4> * 9);
bonsai.addItemInput(<contenttweaker:sheetmetal_bronze> * 4);
bonsai.addItemInput(<minecraft:hopper>);
bonsai.addItemOutput(<bonsaitrees:bonsaipot:1>);
bonsai.build();

##manapool
val manapool = mods.modularmachinery.RecipeBuilder.newBuilder("minifield-crafter-manapool", "minifield-crafter", 400, 0);
manapool.addEnergyPerTickInput(2000);
manapool.addItemInput(<botania:livingrock> * 12);
manapool.addItemInput(<botania:livingrock0slab> * 9);
manapool.addItemInput(<contenttweaker:sheetmetal_brass> * 4);
manapool.addItemInput(<astralsorcery:itemusabledust>);
manapool.addItemOutput(<botania:pool>);
manapool.build();

##plateEngineering
val plateEngineering = mods.modularmachinery.RecipeBuilder.newBuilder("minifield-crafter-plateengineering", "minifield-crafter", 200, 0);
plateEngineering.addEnergyPerTickInput(4000);
plateEngineering.addItemInput(<immersiveengineering:metal_decoration1:1> * 16);
plateEngineering.addItemInput(<immersiveengineering:metal_decoration0:3>);   //Redstone
plateEngineering.addItemInput(<immersiveengineering:metal_decoration0:7>*2); // Radiatior
plateEngineering.addItemInput(<immersiveengineering:metal_decoration0:4>*2); // Light
plateEngineering.addItemInput(<immersiveengineering:metal_decoration0:5>*2); // Heavy
plateEngineering.addItemInput(<immersiveengineering:metal_decoration0:6>*2); // Genorator
plateEngineering.addItemInput(<immersiveengineering:material:26>);
plateEngineering.addItemOutput(<contenttweaker:plate_engineering>*2);
plateEngineering.build();

##hellShelf
val hellShelf = mods.modularmachinery.RecipeBuilder.newBuilder("minifield-crafter-hellshelf", "minifield-crafter", 400, 0);
hellShelf.addEnergyPerTickInput(4000);
hellShelf.addItemInput(<tcomplement:scorched_block:3> * 18);
hellShelf.addItemInput(<contenttweaker:book_block> * 8);
hellShelf.addItemInput(<ebwizardry:crystal_block>);
hellShelf.addItemInput(<minecraft:nether_star>);
hellShelf.addItemOutput(<apotheosis:hellshelf>*2);
hellShelf.build();

##########################################################################################
print("==================== end of 3d_crafter.zs ====================");
