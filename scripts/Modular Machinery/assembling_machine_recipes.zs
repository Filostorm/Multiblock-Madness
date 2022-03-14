import mods.modularmachinery.RecipePrimer;
import crafttweaker.item.IItemStack;
import mods.jei.JEI.addDescription;
print("==================== loading assemblerrecipes.zs ====================");
##########################################################################################




######### Thanks Hua En! #########




/*
// --==Assembling Machine Mechanics - Brief Documentation==-- //

// General Description //

There are 4 tiers of assembling machine, unlocked at different points in the modpack:
MK I: Basic Assembling Machine (Start of Chapter 5, Tech Reborn)
MK II: Advanced Assembling Machine (Middle of Chapter 6, Advanced Rocketry)
MK III: Elite Assembling Machine (Middle of Chapter 7)
MK IV: Mass Manufacturer (End of Chapter 7, can run multiple of a single recipe at once)

New tiers build upon the old tiers and also upgrade various parts of the old tiers.

Much like GT, recipes require a minimum tier of assembling machine to run. For example, advanced circuit boards are unlocked at the MK II, meaning you can't craft them in a MK I assembling machine.

Recipes which are unlocked in lower tier assembling machines are overclocked linearly in higher tier assembling machines. This means that both speed and power consumption (RF/t) increase in tandem.

Here's the power consumption and overclocking bonuses for each tier:
MK I: 500RF/t-10kRF/t
MK II: 2500RF/t-50kRF/t [Overclocking: 5x Speed, 5x Power Consumption]
MK III: 60kRF/t-480kRF/t [Overclocking: 8x Speed, 8x Power Consumption]
MK IV: 160kRF/t-3.84MRF/t [Overclocking: 8x Speed, 8x Power Consumption]

Assembling Machines have two forms of upgrades: TR Casings and the Central Core. Both modify speed and power consumption in some way, and some even modify fluid consumption chance. However, the maximum that an
assembling machine of a certain tier can be upgraded (discounting higher tier casings than the tier above) is only slightly more than the next tier's overclocking bonus, and will be much more power (and fluid)
inefficient.

// TR Casings //
TR Casings provide a linear increase to speed and power consumption. Each assembling machine has a mininmum tier of casing required, detailed below:

MK I: Standard Machine Casings
MK II: Reinforced Machine Casings
MK III: Advanced Machine Casings
MK IV: Fusion Coils

Each coil replaced by one of a higher tier gives a 1.07x boost to both speed and power consumption. If one of an even higher tier is used, the multiplier from the previous tier stacks (for example, replacing a
standard machine casing with a fusion coil in a MK I assembling machine leads to a 1.07^3≈1.225 boost to both speed and power consumption).

// Central Core //
Depending on the material used, the central core can modify the speed and power consumption of the assembling machine by various amounts, and even have other effects (e.g. reduced fluid consumption). 

Each tier of assembling machine has a base material (e.g. refined iron for tier 1), as well as 4 upgrade materials that modify the speed and power consumption by various amounts (apart from the Mass Manufacturer, 
whose core upgrades work differently from the first three tiers of assembling machine). There are also special upgrade materials from NC:O and RH:C that have special modifiers and effects, and can be used in
any assembling machine above their minimum tier (e.g. Californium-252 can be used in any assembling machine above tier 2).

The mass manufacturer's upgrades work differently in that they only modify the input and output quantities of a recipe, effectively allowing multiples of a recipe to be processed at a time. 

// --==Crafttweaker Methods==-- //
mods.modularmachinery.RecipeBuilder.newBuilder(String recipeRegistryName, String associatedMachineRegistryName, int processingTickTime, int sortingPriority)
	.addEnergyPerTickInput(int perTick)
	.addItemOutput(IItemStack stack)
	.addItemInput(IItemStack stack)
	.addItemInput(IOreDictEntry oreDict, int amount)
	.addFluidInput(ILiquidStack stack)
	.build();

mods.modularmachinery.RecipeBuilder.newBuilder(machineName + "item name here", machineName, int processingTickTime)
	.addEnergyPerTickInput(int perTick)
	.addItemOutput(<ore:thing>, 2)
	.addItemInput(<ore:thing>)
	.addItemInput(<ore:thing>)
	.addFluidInput(<fluid:thing>)
	.build();

*/


// --==Removals==-- //


// Remove all Precision Assembler Recipes
mods.jei.JEI.removeAndHide(<advancedrocketry:precisionassemblingmachine>);
//mods.advancedrocketry.PrecisionAssembler.clear();

// Remove all TR Assembler Recipes

mods.jei.JEI.removeAndHide(<techreborn:assembling_machine>);
//mods.techreborn.assemblingMachine.removeAll();

// Remove some NC Assembler Recipes
val qmdremovals =
[
<qmd:part:4>*6,
<qmd:chemical_dust:1>*3,
<qmd:source>.withTag({particle_storage: {particle_amount: 50000000}}),
<qmd:part:6>*6,
<qmd:part:3>,
<qmd:semiconductor:4>,
<qmd:semiconductor:5>,
<qmd:semiconductor:6>,
<qmd:part:8>
]
 as IItemStack[];

for item in qmdremovals {
	mods.nuclearcraft.Assembler.removeRecipeWithOutput(item);
}


##############################################
##
##           Basic Assembling Machine (MK I)
##
##############################################

//Dummy Block for 2x TR frames
mods.modularmachinery.RecipeBuilder.newBuilder("assemblermkone" + "_advanced_redstone_block", "assemblermkone", 50)
	.addEnergyPerTickInput(1000)
	.addItemOutput(<contenttweaker:advanced_redstone_block>)
	.addItemInput(<immersiveengineering:metal_decoration0:3>)
	.addItemInput(<jaopca:item_gearzinc>)
	.addItemInput(<techreborn:cable:6>*9)
    .addFluidInput(<liquid:fluidchlorite>*1000)
	.build();


// Tech Reborn Circuits //

// Basic Circuit Board
mods.modularmachinery.RecipeBuilder.newBuilder("assemblermkone" + "_basic_circuit_board_1", "assemblermkone", 50)
	.addEnergyPerTickInput(1000)
	.addItemOutput(<techreborn:part:40>*2)
	.addItemInput(<techreborn:plates:35>)
	.addItemInput(<ore:plateElectrum>, 2)
	.build();

mods.modularmachinery.RecipeBuilder.newBuilder("assemblermkone" + "_basic_circuit_board_2", "assemblermkone", 50)
	.addEnergyPerTickInput(1000)
	.addItemOutput(<techreborn:part:40>*2)
	.addItemInput(<ore:plateAluminum>)
	.addItemInput(<ore:plateElectrum>, 2)
	.build();

// Electronic Circuit
mods.modularmachinery.RecipeBuilder.newBuilder("assemblermkone" + "_electronic_circuit_1", "assemblermkone", 150)
	.addEnergyPerTickInput(2000)
	.addItemOutput(<techreborn:part:29>)
	.addItemInput(<techreborn:part:40>)
	.addItemInput(<techreborn:cable:5>*3)
	.build();

mods.modularmachinery.RecipeBuilder.newBuilder("assemblermkone" + "_electronic_circuit_2", "assemblermkone", 200)
	.addEnergyPerTickInput(2000)
	.addItemOutput(<techreborn:part:29>)
	.addItemInput(<powersuits:powerarmorcomponent>*4)
	.addItemInput(<minecraft:redstone>*2)
    .addItemInput(<techreborn:plates:35>)
	.build();

// Advanced Circuit Board
mods.modularmachinery.RecipeBuilder.newBuilder("assemblermkone" + "_advanced_circuit_board_1", "assemblermkone", 150)
	.addEnergyPerTickInput(2000)
	.addItemOutput(<techreborn:part:41>*2)
	.addItemInput(<ore:waferSilicon>)
	.addItemInput(<ore:plateElectrum>, 4)
	.build();

mods.modularmachinery.RecipeBuilder.newBuilder("assemblermkone" + "_advanced_circuit_board_2", "assemblermkone", 150)
	.addEnergyPerTickInput(2000)
	.addItemOutput(<techreborn:part:41>)
	.addItemInput(<ore:circuitBasic>)
	.addItemInput(<ore:plateElectrum>, 2)
	.build();

// Advanced Circuit Parts
mods.modularmachinery.RecipeBuilder.newBuilder("assemblermkone" + "_advanced_circuit_parts_1", "assemblermkone", 150)
	.addEnergyPerTickInput(2000)
	.addItemOutput(<techreborn:part:42>*2)
	.addItemInput(<techreborn:dust:48>)
	.addItemInput(<minecraft:glowstone_dust>)
	.addItemInput(<advgenerators:iron_tubing>)
	.build();

mods.modularmachinery.RecipeBuilder.newBuilder("assemblermkone" + "_advanced_circuit_parts_2", "assemblermkone", 150)
	.addEnergyPerTickInput(2000)
	.addItemOutput(<techreborn:part:42>)
	.addItemInput(<techreborn:dust:28>*2)
	.addItemInput(<minecraft:glowstone_dust>)
	.addItemInput(<advgenerators:iron_tubing>)
	.build();

// Advanced Electronic Circuit
mods.modularmachinery.RecipeBuilder.newBuilder("assemblermkone" + "_advanced_electronic_circuit", "assemblermkone", 20)
	.addEnergyPerTickInput(4000)
	.addItemOutput(<techreborn:part:30>)
	.addItemInput(<techreborn:part:41>)
	.addItemInput(<techreborn:part:42>*2)
	.build();

// Processor Circuit Board
mods.modularmachinery.RecipeBuilder.newBuilder("assemblermkone" + "_processor_circuit_board", "assemblermkone", 200)
	.addEnergyPerTickInput(4000)
	.addItemOutput(<techreborn:part:43>)
	.addItemInput(<ore:circuitAdvanced>)
	.addItemInput(<ore:platePlatinum>)
	.build();

// Data Storage Circuit
mods.modularmachinery.RecipeBuilder.newBuilder("assemblermkone" + "_data_storage_circuit_1", "assemblermkone", 200)
	.addEnergyPerTickInput(4000)
	.addItemOutput(<techreborn:part:2>*4)
	.addItemInput(<ore:circuitAdvanced>)
	.addItemInput(<ore:gemEmerald>, 8)
	.build();

mods.modularmachinery.RecipeBuilder.newBuilder("assemblermkone" + "_data_storage_circuit_2", "assemblermkone", 200)
	.addEnergyPerTickInput(4000)
	.addItemOutput(<techreborn:part:2>*4)
	.addItemInput(<ore:circuitAdvanced>)
	.addItemInput(<ore:gemPeridot>, 8)
	.build();

mods.modularmachinery.RecipeBuilder.newBuilder("assemblermkone" + "_data_storage_circuit_3", "assemblermkone", 200)
	.addEnergyPerTickInput(4000)
	.addItemOutput(<techreborn:part:2>*4)
	.addItemInput(<ore:circuitAdvanced>)
	.addItemInput(<ore:dustEmerald>, 8)
	.build();

mods.modularmachinery.RecipeBuilder.newBuilder("assemblermkone" + "_data_storage_circuit_4", "assemblermkone", 200)
	.addEnergyPerTickInput(4000)
	.addItemOutput(<techreborn:part:2>*4)
	.addItemInput(<ore:circuitAdvanced>)    
	.addItemInput(<ore:dustPeridot>, 8)
	.build();

// Data Control Circuit
mods.modularmachinery.RecipeBuilder.newBuilder("assemblermkone" + "_data_control_circuit", "assemblermkone", 300)
	.addEnergyPerTickInput(5000)
	.addItemOutput(<techreborn:part:1>)
	.addItemInput(<techreborn:part:43>)    
	.addItemInput(<techreborn:part:2>)
	.build();

// Energy Flow Circuit
mods.modularmachinery.RecipeBuilder.newBuilder("assemblermkone" + "_energy_flow_circuit", "assemblermkone", 300)
	.addEnergyPerTickInput(5000)
	.addItemOutput(<techreborn:part>)
	.addItemInput(<techreborn:part:43>)
	.addItemInput(<techreborn:lapotroncrystal>)
	.build();

// Data Orb
mods.modularmachinery.RecipeBuilder.newBuilder("assemblermkone" + "_data_orb", "assemblermkone", 600)
	.addEnergyPerTickInput(10000)
	.addItemOutput(<techreborn:part:3>)
	.addItemInput(<techreborn:part:1>)
	.addItemInput(<techreborn:part:2>*8)
	.build();

// Gold Cable
mods.modularmachinery.RecipeBuilder.newBuilder("assemblermkone" + "_gold_cable", "assemblermkone", 20)
	.addEnergyPerTickInput(500)
	.addItemOutput(<techreborn:cable:6>)
	.addItemInput(<techreborn:cable:2>)
	.addItemInput(<ore:itemRubber>)
	.build();

// HV Cable
mods.modularmachinery.RecipeBuilder.newBuilder("assemblermkone" + "_hv_cable", "assemblermkone", 20)
	.addEnergyPerTickInput(500)
	.addItemOutput(<techreborn:cable:7>)
	.addItemInput(<techreborn:cable:3>)
	.addItemInput(<ore:itemRubber>,3)
	.build();

// AA Coils //

// Basic Coil
mods.modularmachinery.RecipeBuilder.newBuilder("assemblermkone" + "_basic_coil_1", "assemblermkone", 100)
	.addEnergyPerTickInput(1000)
	.addItemOutput(<actuallyadditions:item_misc:7>)
	.addItemInput(<immersiveengineering:wirecoil>*4)
	.addItemInput(<actuallyadditions:item_crystal>)
	.build();

mods.modularmachinery.RecipeBuilder.newBuilder("assemblermkone" + "_basic_coil_2", "assemblermkone", 100)
	.addEnergyPerTickInput(1000)
	.addItemOutput(<actuallyadditions:item_misc:7>*2)
	.addItemInput(<immersiveengineering:wirecoil:1>*4)
	.addItemInput(<actuallyadditions:item_crystal>)
	.build();

mods.modularmachinery.RecipeBuilder.newBuilder("assemblermkone" + "_basic_coil_3", "assemblermkone", 100)
	.addEnergyPerTickInput(1000)
	.addItemOutput(<actuallyadditions:item_misc:7>*4)
	.addItemInput(<immersiveengineering:wirecoil:2>*4)
	.addItemInput(<actuallyadditions:item_crystal>)
	.build();

// Advanced Coil
mods.modularmachinery.RecipeBuilder.newBuilder("assemblermkone" + "_advanced_coil", "assemblermkone", 100)
	.addEnergyPerTickInput(1500)
	.addItemOutput(<actuallyadditions:item_misc:8>)
	.addItemInput(<techreborn:cable:6>*4)
	.addItemInput(<actuallyadditions:item_misc:7>)
	.build();



// Thermal Coils

// Redstone Reception Coil
mods.modularmachinery.RecipeBuilder.newBuilder("assemblermkone" + "_reception_coil", "assemblermkone", 200)
	.addEnergyPerTickInput(2000)
	.addItemOutput(<thermalfoundation:material:513>)
	.addItemInput(<actuallyadditions:item_misc:8>)
	.addItemInput(<moreplates:gold_stick> * 2)
	.addItemInput(<advgenerators:iron_wiring> * 4)
	.build();

// Redstone Transmission Coil
mods.modularmachinery.RecipeBuilder.newBuilder("assemblermkone" + "_transmission_coil", "assemblermkone", 200)
	.addEnergyPerTickInput(2000)
	.addItemOutput(<thermalfoundation:material:514>)
	.addItemInput(<actuallyadditions:item_misc:8>)
	.addItemInput(<moreplates:silver_stick> * 2)
	.addItemInput(<advgenerators:iron_wiring> * 4)
	.build();

// Redstone Conductance Coil
mods.modularmachinery.RecipeBuilder.newBuilder("assemblermkone" + "_conductance_coil", "assemblermkone", 200)
	.addEnergyPerTickInput(2000)
	.addItemOutput(<thermalfoundation:material:515>)
	.addItemInput(<actuallyadditions:item_misc:8>)
	.addItemInput(<moreplates:electrum_stick> * 2)
	.addItemInput(<advgenerators:iron_wiring> * 4)
	.build();



// Scaffoldings //

// Vanasteel Scaffolding
mods.modularmachinery.RecipeBuilder.newBuilder("assemblermkone" + "_vanasteel_scaffolding", "assemblermkone", 50)
	.addEnergyPerTickInput(500)
	.addItemOutput(<contenttweaker:vanasteel_scaffolding>*9)
	.addItemInput(<rockhounding_chemistry:alloy_items_tech:40>*3)
	.addItemInput(<contenttweaker:rod_vanasteel>*3)
	.build();

// Steel Scaffolding
mods.modularmachinery.RecipeBuilder.newBuilder("assemblermkone" + "_steel_scaffolding", "assemblermkone", 50)
	.addEnergyPerTickInput(500)
	.addItemOutput(<immersiveengineering:metal_decoration1:1>*9)
	.addItemInput(<thermalfoundation:material:160>*3)
	.addItemInput(<immersiveengineering:material:2>*3)
	.build();

// ScAl Scaffolding
mods.modularmachinery.RecipeBuilder.newBuilder("assemblermkone" + "_scal_scaffolding", "assemblermkone", 50)
	.addEnergyPerTickInput(500)
	.addItemOutput(<contenttweaker:scal_scaffolding>*9)
	.addItemInput(<rockhounding_chemistry:alloy_items_tech:4>*3)
	.addItemInput(<contenttweaker:rod_scal>*3)
	.build();

// BAM Scaffolding
mods.modularmachinery.RecipeBuilder.newBuilder("assemblermkone" + "_bam_scaffolding", "assemblermkone", 50)
	.addEnergyPerTickInput(500)
	.addItemOutput(<contenttweaker:bam_scaffolding>*9)
	.addItemInput(<rockhounding_chemistry:alloy_items_tech:7>*3)
	.addItemInput(<contenttweaker:rod_bam>*3)
	.build();

// Nimonic Scaffolding
mods.modularmachinery.RecipeBuilder.newBuilder("assemblermkone" + "_nimonic_scaffolding", "assemblermkone", 50)
	.addEnergyPerTickInput(500)
	.addItemOutput(<contenttweaker:nimonic_scaffolding>*9)
	.addItemInput(<rockhounding_chemistry:alloy_items_tech:16>*3)
	.addItemInput(<contenttweaker:rod_nimonic>*3)
	.build();

// Invar Scaffolding
mods.modularmachinery.RecipeBuilder.newBuilder("assemblermkone" + "_invar_scaffolding", "assemblermkone", 50)
	.addEnergyPerTickInput(500)
	.addItemOutput(<contenttweaker:invar_scaffolding>*9)
	.addItemInput(<thermalfoundation:material:162>*3)
	.addItemInput(<moreplates:invar_stick>*3)
	.build();

// Aluminium Scaffolding
mods.modularmachinery.RecipeBuilder.newBuilder("assemblermkone" + "_aluminium_scaffolding", "assemblermkone", 50)
	.addEnergyPerTickInput(500)
	.addItemOutput(<immersiveengineering:metal_decoration1:5>*9)
	.addItemInput(<thermalfoundation:material:132>*3)
	.addItemInput(<immersiveengineering:material:3>*3)
	.build();

// Nichrome Scaffolding
mods.modularmachinery.RecipeBuilder.newBuilder("assemblermkone" + "_nichrome_scaffolding", "assemblermkone", 50)
	.addEnergyPerTickInput(500)
	.addItemOutput(<jaopca:block_scaffoldingnichrome>*9)
	.addItemInput(<rockhounding_chemistry:alloy_items_tech:22>*3)
	.addItemInput(<jaopca:item_sticknichrome>*3)
	.build();

// Stainless Steel Scaffolding
mods.modularmachinery.RecipeBuilder.newBuilder("assemblermkone" + "_stainless_steel_scaffolding", "assemblermkone", 50)
	.addEnergyPerTickInput(500)
	.addItemOutput(<jaopca:block_scaffoldingstainlesssteel>*9)
	.addItemInput(<qmd:ingot_alloy:2>*3)
	.addItemInput(<jaopca:item_stickstainlesssteel>*3)
	.build();

// Thaumium Scaffolding
mods.modularmachinery.RecipeBuilder.newBuilder("assemblermkone" + "_thaumium_scaffolding", "assemblermkone", 50)
	.addEnergyPerTickInput(500)
	.addItemOutput(<jaopca:block_scaffoldingthaumium>*9)
	.addItemInput(<thaumcraft:ingot>*3)
	.addItemInput(<jaopca:item_stickthaumium>*3)
	.build();

// Ironwood Scaffolding
mods.modularmachinery.RecipeBuilder.newBuilder("assemblermkone" + "_ironwood_scaffolding", "assemblermkone", 50)
	.addEnergyPerTickInput(500)
	.addItemOutput(<contenttweaker:ironwood_scaffolding>*9)
	.addItemInput(<twilightforest:ironwood_ingot>*3)
	.addItemInput(<contenttweaker:rod_ironwood>*3)
	.build();

// Thermal Alloy Scaffolding
mods.modularmachinery.RecipeBuilder.newBuilder("assemblermkone" + "_thermal_alloy_scaffolding", "assemblermkone", 50)
	.addEnergyPerTickInput(500)
	.addItemOutput(<contenttweaker:scaffolding_thermal_alloy>*9)
	.addItemInput(<contenttweaker:ingot_thermal_alloy>*3)
	.addItemInput(<contenttweaker:rod_thermal_alloy>*3)
	.build();	

// Mek Alloy Scaffolding
mods.modularmachinery.RecipeBuilder.newBuilder("assemblermkone" + "_mek_alloy_scaffolding", "assemblermkone", 50)
	.addEnergyPerTickInput(500)
	.addItemOutput(<contenttweaker:scaffolding_mek_alloy>*9)
	.addItemInput(<contenttweaker:ingot_mek_alloy>*3)
	.addItemInput(<contenttweaker:rod_mek_alloy>*3)
	.build();

// PlaStick Scaffolding
mods.modularmachinery.RecipeBuilder.newBuilder("assemblermkone" + "_plastic_scaffolding", "assemblermkone", 50)
	.addEnergyPerTickInput(500)
	.addItemOutput(<contenttweaker:scaffolding_plastic>*9)
	.addItemInput(<mekanism:polyethene:2>*3)
	.addItemInput(<mekanism:polyethene:3>*3)
	.build();	

// Food //

// Deadly Energy Drink
mods.modularmachinery.RecipeBuilder.newBuilder("assemblermkone" + "_deadly_energy_drink", "assemblermkone", 50)
	.addEnergyPerTickInput(500)
	.addItemOutput(<xlfoodmod:deadly_energy_drink>)
	.addItemInput(<xlfoodmod:empty_can>)
	.addItemInput(<ore:cropRice>)
	.addItemInput(<minecraft:fermented_spider_eye>)
	.addItemInput(<minecraft:spider_eye>)
    .addFluidInput(<liquid:water> * 1000)
	.build();

// Strong Energy Drink
mods.modularmachinery.RecipeBuilder.newBuilder("assemblermkone" + "_strong_energy_drink", "assemblermkone", 50)
	.addEnergyPerTickInput(500)
	.addItemOutput(<xlfoodmod:strong_energy_drink>)
	.addItemInput(<xlfoodmod:empty_can>)
	.addItemInput(<ore:cropRice>)
	.addItemInput(<minecraft:magma_cream>)
	.addItemInput(<minecraft:blaze_powder>)
    .addFluidInput(<liquid:water> * 1000)
	.build();

// Stealthy Energy Drink
mods.modularmachinery.RecipeBuilder.newBuilder("assemblermkone" + "_stealthy_energy_drink", "assemblermkone", 50)
	.addEnergyPerTickInput(500)
	.addItemOutput(<xlfoodmod:stealthy_energy_drink>)
	.addItemInput(<xlfoodmod:empty_can>)
	.addItemInput(<ore:cropRice>)
	.addItemInput(<minecraft:sugar>)
	.addItemInput(<minecraft:golden_carrot>)
    .addFluidInput(<liquid:water> * 1000)
	.build();

// Healthy Energy Drink
mods.modularmachinery.RecipeBuilder.newBuilder("assemblermkone" + "_healthy_energy_drink", "assemblermkone", 50)
	.addEnergyPerTickInput(500)
	.addItemOutput(<xlfoodmod:healthy_energy_drink>)
	.addItemInput(<xlfoodmod:empty_can>)
	.addItemInput(<ore:cropRice>)
	.addItemInput(<minecraft:ghast_tear>)
	.addItemInput(<minecraft:speckled_melon>)
    .addFluidInput(<liquid:water> * 1000)
	.build();

// Speedy Energy Drink
mods.modularmachinery.RecipeBuilder.newBuilder("assemblermkone" + "_speedy_energy_drink", "assemblermkone", 50)
	.addEnergyPerTickInput(500)
	.addItemOutput(<xlfoodmod:speedy_energy_drink>)
	.addItemInput(<xlfoodmod:empty_can>)
	.addItemInput(<ore:cropRice>)
	.addItemInput(<minecraft:sugar>)
    .addFluidInput(<liquid:water> * 1000)
	.build();

// Chocolate Ice Cream Ball
mods.modularmachinery.RecipeBuilder.newBuilder("assemblermkone" + "_chocolate_icecream_ball", "assemblermkone", 50)
	.addEnergyPerTickInput(500)
	.addItemOutput(<xlfoodmod:chocolate_icecream_ball>)
	.addItemInput(<minecraft:snowball>)
	.addItemInput(<xlfoodmod:vanilla_cream>)
	.addItemInput(<minecraft:dye:3>)
    .addFluidInput(<liquid:milk> * 1000)
	.build();

// Vanilla Ice Cream Ball
mods.modularmachinery.RecipeBuilder.newBuilder("assemblermkone" + "_vanilla_icecream_ball", "assemblermkone", 50)
	.addEnergyPerTickInput(500)
	.addItemOutput(<xlfoodmod:vanilla_icecream_ball>)
	.addItemInput(<minecraft:snowball>)
	.addItemInput(<xlfoodmod:vanilla_cream>)
    .addFluidInput(<liquid:milk> * 1000)
	.build();

// Strawberry Ice Cream Ball
mods.modularmachinery.RecipeBuilder.newBuilder("assemblermkone" + "_strawberry_icecream_ball", "assemblermkone", 50)
	.addEnergyPerTickInput(500)
	.addItemOutput(<xlfoodmod:strawberry_icecream_ball>)
	.addItemInput(<minecraft:snowball>)
	.addItemInput(<xlfoodmod:strawberry>)
    .addFluidInput(<liquid:milk> * 1000)
	.build();

// EnderIOs
mods.modularmachinery.RecipeBuilder.newBuilder("assemblermkone" + "_enderios", "assemblermkone", 50)
	.addEnergyPerTickInput(500)
	.addItemOutput(<enderio:item_ender_food>)
	.addItemInput(<minecraft:bowl>)
	.addItemInput(<minecraft:wheat>)
	.addItemInput(<techreborn:dust:20>)
    .addFluidInput(<liquid:milk> * 1000)
	.build();

// AA Chocolate Cake
mods.modularmachinery.RecipeBuilder.newBuilder("assemblermkone" + "_aachocolatecake", "assemblermkone", 50)
	.addEnergyPerTickInput(500)
	.addItemOutput(<actuallyadditions:item_food:8>)
	.addItemInput(<actuallyadditions:item_misc:4>)
	.addItemInput(<minecraft:egg>)
	.addItemInput(<minecraft:sugar>)
	.addItemInput(<minecraft:dye:3> * 3)
    .addFluidInput(<liquid:milk> * 3000)
	.build();

// XL Food Chocolate Cake
mods.modularmachinery.RecipeBuilder.newBuilder("assemblermkone" + "_xlfoodchocolatecake", "assemblermkone", 50)
	.addEnergyPerTickInput(500)
	.addItemOutput(<xlfoodmod:chocolate_cake>)
	.addItemInput(<minecraft:wheat> * 3)
	.addItemInput(<minecraft:sugar> * 2)
	.addItemInput(<xlfoodmod:chocolate_syrup>)
    .addFluidInput(<liquid:milk> * 3000)
	.build();

// Oreo Cake
mods.modularmachinery.RecipeBuilder.newBuilder("assemblermkone" + "_oreo_cake", "assemblermkone", 50)
	.addEnergyPerTickInput(500)
	.addItemOutput(<xlfoodmod:oreo_cake>)
	.addItemInput(<minecraft:wheat> * 3)
	.addItemInput(<minecraft:sugar> * 2)
	.addItemInput(<xlfoodmod:oreo_cookie>)
    .addFluidInput(<liquid:milk> * 3000)
	.build();

// Cheese Cake
mods.modularmachinery.RecipeBuilder.newBuilder("assemblermkone" + "_cheese_cake", "assemblermkone", 50)
	.addEnergyPerTickInput(500)
	.addItemOutput(<xlfoodmod:cheese_cake>)
	.addItemInput(<minecraft:wheat> * 3)
	.addItemInput(<minecraft:sugar> * 2)
	.addItemInput(<xlfoodmod:cheese>)
    .addFluidInput(<liquid:milk> * 3000)
	.build();

// Nether Cake
mods.modularmachinery.RecipeBuilder.newBuilder("assemblermkone" + "_nether_cake", "assemblermkone", 50)
	.addEnergyPerTickInput(500)
	.addItemOutput(<xlfoodmod:nether_cake>)
	.addItemInput(<minecraft:wheat> * 3)
	.addItemInput(<minecraft:sugar> * 2)
	.addItemInput(<minecraft:blaze_powder>)
    .addFluidInput(<liquid:milk> * 3000)
	.build();

// Strawberry Cake
mods.modularmachinery.RecipeBuilder.newBuilder("assemblermkone" + "_strawberry_cake", "assemblermkone", 50)
	.addEnergyPerTickInput(500)
	.addItemOutput(<xlfoodmod:strawberry_cake>)
	.addItemInput(<minecraft:wheat> * 3)
	.addItemInput(<minecraft:sugar> * 2)
	.addItemInput(<xlfoodmod:strawberry>)
    .addFluidInput(<liquid:milk> * 3000)
	.build();

// Pumpkin Cake
mods.modularmachinery.RecipeBuilder.newBuilder("assemblermkone" + "_pumpkin_cake", "assemblermkone", 50)
	.addEnergyPerTickInput(500)
	.addItemOutput(<xlfoodmod:pumpkin_cake>)
	.addItemInput(<minecraft:wheat> * 3)
	.addItemInput(<minecraft:sugar> * 2)
	.addItemInput(<minecraft:pumpkin>)
    .addFluidInput(<liquid:milk> * 3000)
	.build();

// Vanilla MC Cake
mods.modularmachinery.RecipeBuilder.newBuilder("assemblermkone" + "_cake_1", "assemblermkone", 50)
	.addEnergyPerTickInput(500)
	.addItemOutput(<minecraft:cake>)
	.addItemInput(<minecraft:wheat> * 3)
	.addItemInput(<minecraft:sugar> * 2)
	.addItemInput(<minecraft:egg>)
    .addFluidInput(<liquid:milk> * 3000)
	.build();

// Vanilla MC Cake (Alternate recipe)
mods.modularmachinery.RecipeBuilder.newBuilder("assemblermkone" + "_cake_2", "assemblermkone", 50)
	.addEnergyPerTickInput(500)
	.addItemOutput(<minecraft:cake>)
	.addItemInput(<enderio:item_material:70>)
	.addItemInput(<minecraft:sugar> * 2)
    .addFluidInput(<liquid:milk> * 3000)
	.build();

// Tasty Clay
mods.modularmachinery.RecipeBuilder.newBuilder("assemblermkone" + "_tasty_clay", "assemblermkone", 50)
	.addEnergyPerTickInput(500)
	.addItemOutput(<openblocks:tasty_clay> * 2)
	.addItemInput(<minecraft:dye:3>)
	.addItemInput(<minecraft:clay_ball>)
    .addFluidInput(<liquid:milk> * 1000)
	.build();

// EnderIO Capacitors //

// Basic Capacitor
mods.modularmachinery.RecipeBuilder.newBuilder("assemblermkone" + "_basic_capacitor", "assemblermkone", 200)
	.addEnergyPerTickInput(2000)
	.addItemOutput(<enderio:item_basic_capacitor>)
	.addItemInput(<ore:plateCopper>)
	.addItemInput(<actuallyadditions:item_misc:8>)
	.addItemInput(<moreplates:gold_stick> * 2)
	.addItemInput(<enderio:item_material:20> * 2)
	.build();

// Silver Capacitor
mods.modularmachinery.RecipeBuilder.newBuilder("assemblermkone" + "_silver_capacitor", "assemblermkone", 200)
	.addEnergyPerTickInput(2000)
	.addItemOutput(<enderio:item_capacitor_silver>)
	.addItemInput(<ore:plateLead>)
	.addItemInput(<actuallyadditions:item_misc:8>)
	.addItemInput(<moreplates:silver_stick> * 2)
	.addItemInput(<enderio:item_material:20> * 2)
	.build();

// Double-Layer Capacitor
mods.modularmachinery.RecipeBuilder.newBuilder("assemblermkone" + "_double_layer_capacitor", "assemblermkone", 300)
	.addEnergyPerTickInput(4000)
	.addItemOutput(<enderio:item_basic_capacitor:1>)
	.addItemInput(<enderio:item_basic_capacitor> * 2)
	.addItemInput(<ore:plateEnergeticAlloy>, 2)
	.addItemInput(<ore:dustCarbon>)
	.addItemInput(<rockhounding_chemistry:misc_items:10>)
	.build();

// Endergenic Silver Capacitor
mods.modularmachinery.RecipeBuilder.newBuilder("assemblermkone" + "_endergenic_silver_capacitor", "assemblermkone", 300)
	.addEnergyPerTickInput(4000)
	.addItemOutput(<enderio:item_capacitor_energetic_silver>)
	.addItemInput(<enderio:item_capacitor_silver> * 2)
	.addItemInput(<ore:plateEnergeticSilver>, 2)
	.addItemInput(<ore:dustCarbon>)
	.addItemInput(<rockhounding_chemistry:misc_items:10>)
	.build();

// Octadic Capacitor
mods.modularmachinery.RecipeBuilder.newBuilder("assemblermkone" + "_octadic_capacitor", "assemblermkone", 400)
	.addEnergyPerTickInput(6000)
	.addItemOutput(<enderio:item_basic_capacitor:2>)
	.addItemInput(<enderio:item_basic_capacitor:1> * 2)
	.addItemInput(<ore:plateVibrantAlloy>, 2)
	.addItemInput(<ore:dustEnergetic>, 4)
	.addItemInput(<techreborn:part>)
	.build();

// Endergised Capacitor
mods.modularmachinery.RecipeBuilder.newBuilder("assemblermkone" + "_endergised_capacitor", "assemblermkone", 400)
	.addEnergyPerTickInput(6000)
	.addItemOutput(<enderio:item_capacitor_vivid>)
	.addItemInput(<enderio:item_capacitor_energetic_silver> * 2)
	.addItemInput(<ore:plateVividAlloy>, 2)
	.addItemInput(<ore:dustEnergetic>, 4)
	.addItemInput(<techreborn:part>)
	.build();

// Miscellaneous Items //

// Basic Processor
mods.modularmachinery.RecipeBuilder.newBuilder("assemblermkone" + "_basic_processor", "assemblermkone", 100)
	.addEnergyPerTickInput(3000)
	.addItemOutput(<qmd:semiconductor:4>)
	.addItemInput(<qmd:semiconductor:1>)
	.addItemInput(<rockhounding_chemistry:misc_items:10>)
	.addItemInput(<thermalfoundation:material:515>)
	.addItemInput(<powersuits:powerarmorcomponent> * 3)
	.build();

// RFTools Quarry Card
mods.modularmachinery.RecipeBuilder.newBuilder("assemblermkone" + "_rftools_quarrycard", "assemblermkone", 500)
	.addEnergyPerTickInput(4000)
	.addItemOutput(<rftools:shape_card:2>)
	.addItemInput(<rftools:shape_card>)
	.addItemInput(<techreborn:part:6>*4)
	.addItemInput(<rockhounding_chemistry:misc_items:10>*4)
	.addItemInput(<qmd:semiconductor:4>*4)
    .addFluidInput(<liquid:liquid_nitrogen>*4000)
	.build();

// Mek Alloy
mods.modularmachinery.RecipeBuilder.newBuilder("assemblermkone" + "_component_mek_alloy", "assemblermkone", 400)
	.addEnergyPerTickInput(8000)
	.addItemOutput(<contenttweaker:component_mek_alloy>*2)
	.addItemInput(<mekanism:enrichedalloy>)
	.addItemInput(<mekanism:reinforcedalloy>)
	.addItemInput(<mekanism:atomicalloy>)
	.addFluidInput(<liquid:hydrochloric_acid>*250)
	.build();	

##############################################
##
##           Advanced Assembling Machine (MK II)
##
##############################################

// --==Advanced Rocketry==-- //

// Circuits //

// Liquid IO Circuit Board
mods.modularmachinery.RecipeBuilder.newBuilder("assemblermktwo" + "_liquid_io_circuit_board", "assemblermktwo", 200)
	.addEnergyPerTickInput(15000)
	.addItemOutput(<advancedrocketry:ic:5>)
	.addItemInput(<moreplates:vivid_alloy_plate>*3)
	.addItemInput(<appliedenergistics2:material:55>)
	.addItemInput(<enderio:item_material:41>)
	.addItemInput(<techreborn:part:43>)
	.build();

// Control Circuit Board
mods.modularmachinery.RecipeBuilder.newBuilder("assemblermktwo" + "_control_circuit_board", "assemblermktwo", 200)
	.addEnergyPerTickInput(15000)
	.addItemOutput(<advancedrocketry:ic:3>)
	.addItemInput(<moreplates:vibrant_alloy_plate>*3)
	.addItemInput(<ore:circuitElite>)
	.addItemInput(<advgenerators:controller>)
	.addItemInput(<techreborn:part:43>)
	.build();

// Item IO Circuit Board
mods.modularmachinery.RecipeBuilder.newBuilder("assemblermktwo" + "_item_io_circuit_board", "assemblermktwo", 200)
	.addEnergyPerTickInput(15000)
	.addItemOutput(<advancedrocketry:ic:4>)
	.addItemInput(<moreplates:end_steel_plate>*3)
	.addItemInput(<rockhounding_chemistry:misc_items:10>)
	.addItemInput(<rockhounding_chemistry:misc_items:11>)
	.addItemInput(<techreborn:part:43>)
	.build();

// Data Storage Unit
mods.modularmachinery.RecipeBuilder.newBuilder("assemblermktwo" + "_data_storage_unit", "assemblermktwo", 400)
	.addEnergyPerTickInput(15000)
	.addItemOutput(<advancedrocketry:dataunit>)
	.addItemInput(<minecraft:redstone>)
	.addItemInput(<advancedrocketry:ic>)
	.addItemInput(<minecraft:emerald>)
	.build();

// Tracking Unit
mods.modularmachinery.RecipeBuilder.newBuilder("assemblermktwo" + "_tracking_unit", "assemblermktwo", 200)
	.addEnergyPerTickInput(7500)
	.addItemOutput(<advancedrocketry:ic:1>)
	.addItemInput(<minecraft:ender_eye>)
	.addItemInput(<minecraft:redstone>)
	.addItemInput(<advancedrocketry:itemcircuitplate>)
	.build();

// Space Elevator Chip
mods.modularmachinery.RecipeBuilder.newBuilder("assemblermktwo" + "_space_elevator_chip", "assemblermktwo", 200)
	.addEnergyPerTickInput(7500)
	.addItemOutput(<advancedrocketry:elevatorchip>)
	.addItemInput(<advancedrocketry:spacestationchip>)
	.addItemInput(<advancedrocketry:ic:1>)
	.build();



// Tools and Gadgets //

// Lens
mods.modularmachinery.RecipeBuilder.newBuilder("assemblermktwo" + "_lens", "assemblermktwo", 200)
	.addEnergyPerTickInput(15000)
	.addItemOutput(<advancedrocketry:blocklens>)
	.addItemInput(<minecraft:glass>*3)
	.addItemInput(<advancedrocketry:lens>*3)
	.addItemInput(<immersiveengineering:material:1>)
	.build();

// Atmosphere Analyser
mods.modularmachinery.RecipeBuilder.newBuilder("assemblermktwo" + "_atmosphere_analyser", "assemblermktwo", 200)
	.addEnergyPerTickInput(15000)
	.addItemOutput(<advancedrocketry:atmanalyser>)
	.addItemInput(<advancedrocketry:misc>)
	.addItemInput(<libvulpes:battery>)
	.addItemInput(<advancedrocketry:ic:2>)
	.addItemInput(<advancedrocketry:lens>)
	.addItemInput(<thermalfoundation:material:321>)
	.build();

// Beacon Finder
mods.modularmachinery.RecipeBuilder.newBuilder("assemblermktwo" + "_beacon_finder", "assemblermktwo", 200)
	.addEnergyPerTickInput(15000)
	.addItemOutput(<advancedrocketry:beaconfinder>)
	.addItemInput(<advancedrocketry:ic:1>)
	.addItemInput(<advancedrocketry:itemupgrade:4>)
	.build();

// Biome Changer Remote
mods.modularmachinery.RecipeBuilder.newBuilder("assemblermktwo" + "_biome_changer_remote", "assemblermktwo", 200)
	.addEnergyPerTickInput(15000)
	.addItemOutput(<advancedrocketry:biomechanger>)
	.addItemInput(<advancedrocketry:ic:1>)
	.addItemInput(<advancedrocketry:ic:2>)
	.addItemInput(<advancedrocketry:misc>)
	.addItemInput(<libvulpes:battery>)
	.addItemInput(<thermalfoundation:material:321>)
	.build();

// Biome Changer
mods.modularmachinery.RecipeBuilder.newBuilder("assemblermktwo" + "_biome_changer", "assemblermktwo", 200)
	.addEnergyPerTickInput(15000)
	.addItemOutput(<advancedrocketry:satelliteprimaryfunction:5>)
	.addItemInput(<libvulpes:productrod:4>*2)
	.addItemInput(<libvulpes:productrod:7>)
	.addItemInput(<advancedrocketry:wafer>)
	.addItemInput(<advancedrocketry:ic:2>)
	.build();


// Space Suit Upgrades //

// Airtight Seal
mods.modularmachinery.RecipeBuilder.newBuilder("assemblermktwo" + "_airtight_seal", "assemblermktwo", 400)
	.addEnergyPerTickInput(30000)
	.addItemOutput(<minecraft:enchanted_book>.withTag({StoredEnchantments: [{lvl: 1 as short, id: 15 as short}]}))
	.addItemInput(<advancedrocketry:pressuretank:3>)
	.addItemInput(<mekanism:polyethene:2> * 4)
	.addItemInput(<actuallyadditions:item_crystal_empowered:5> * 4)
	.addItemInput(<advancedrocketry:ic:2> * 2)
	.addFluidInput(<liquid:liquid_oxygen>*2000)
	.build();

// Bionic Leg Upgrade
mods.modularmachinery.RecipeBuilder.newBuilder("assemblermktwo" + "_bionic_leg_upgrade", "assemblermktwo", 400)
	.addEnergyPerTickInput(30000)
	.addItemOutput(<advancedrocketry:itemupgrade:2>)
	.addItemInput(<libvulpes:motor>)
	.addItemInput(<advancedrocketry:ic:2>)
	.addItemInput(<advancedrocketry:ic:3>)
	.build();

// Padded Landing Boots
mods.modularmachinery.RecipeBuilder.newBuilder("assemblermktwo" + "_padded_landing_boots", "assemblermktwo", 400)
	.addEnergyPerTickInput(30000)
	.addItemOutput(<advancedrocketry:itemupgrade:3>)
	.addItemInput(<advancedrocketry:ic:3>)
	.addItemInput(<advancedrocketry:ic:2>)
	.addItemInput(<minecraft:feather>)
	.addItemInput(<minecraft:leather_boots>)
	.build();

// Anti-Fog Visor
mods.modularmachinery.RecipeBuilder.newBuilder("assemblermktwo" + "_antifog_visor", "assemblermktwo", 400)
	.addEnergyPerTickInput(30000)
	.addItemOutput(<advancedrocketry:itemupgrade:4>)
	.addItemInput(<advancedrocketry:ic:3>)
	.addItemInput(<advancedrocketry:ic:2>)
	.addItemInput(<libvulpes:battery>)
	.addItemInput(<advancedrocketry:lens>)
	.build();

// Hover Upgrade
mods.modularmachinery.RecipeBuilder.newBuilder("assemblermktwo" + "_hover_upgrade", "assemblermktwo", 400)
	.addEnergyPerTickInput(30000)
	.addItemOutput(<advancedrocketry:itemupgrade>)
	.addItemInput(<advancedrocketry:ic:3>)
	.addItemInput(<advancedrocketry:ic:2>)
	.addItemInput(<minecraft:redstone>)
	.addItemInput(<minecraft:redstone_torch>)
	.build();

// Flight Speed Control Upgrade
mods.modularmachinery.RecipeBuilder.newBuilder("assemblermktwo" + "_flight_speed_control_upgrade", "assemblermktwo", 400)
	.addEnergyPerTickInput(30000)
	.addItemOutput(<advancedrocketry:itemupgrade:1>)
	.addItemInput(<advancedrocketry:ic:3>)
	.addItemInput(<advancedrocketry:ic:2>)
	.addItemInput(<minecraft:diamond>)
	.addItemInput(<minecraft:fire_charge>)
	.build();

// --==AE2==-- //

// Logic Processor
mods.modularmachinery.RecipeBuilder.newBuilder("assemblermktwo" + "_logic_processor", "assemblermktwo", 50)
	.addEnergyPerTickInput(2500)
	.addItemOutput(<appliedenergistics2:material:22>)
	.addItemInput(<nuclearcraft:gem:6>)
	.addItemInput(<minecraft:redstone>)
	.addItemInput(<minecraft:gold_ingot>)
	.build();

// Calculation Processor
mods.modularmachinery.RecipeBuilder.newBuilder("assemblermktwo" + "_calculation_processor", "assemblermktwo", 50)
	.addEnergyPerTickInput(2500)
	.addItemOutput(<appliedenergistics2:material:23>)
	.addItemInput(<nuclearcraft:gem:6>)
	.addItemInput(<minecraft:redstone>)
	.addItemInput(<appliedenergistics2:material:10>)
	.build();

// Engineering Processor
mods.modularmachinery.RecipeBuilder.newBuilder("assemblermktwo" + "_engineering_processor", "assemblermktwo", 50)
	.addEnergyPerTickInput(2500)
	.addItemOutput(<appliedenergistics2:material:24>)
	.addItemInput(<nuclearcraft:gem:6>)
	.addItemInput(<minecraft:redstone>)
	.addItemInput(<minecraft:diamond>)
	.build();

// Massively Parallel Processor
mods.modularmachinery.RecipeBuilder.newBuilder("assemblermktwo" + "_massively_parallel_processor", "assemblermktwo", 100)
	.addEnergyPerTickInput(15000)
	.addItemOutput(<threng:material:6>)
	.addItemInput(<nuclearcraft:gem:6>)
	.addItemInput(<minecraft:redstone>)
	.addItemInput(<threng:material:5>)
	.build();

// Speculative Processor
mods.modularmachinery.RecipeBuilder.newBuilder("assemblermktwo" + "_speculative_processor", "assemblermktwo", 400)
	.addEnergyPerTickInput(50000)
	.addItemOutput(<threng:material:14>)
	.addItemInput(<nuclearcraft:gem:6>)
	.addItemInput(<minecraft:redstone>)
	.addItemInput(<threng:material:13>)
	.build();

// Fluix Logic Unit
mods.modularmachinery.RecipeBuilder.newBuilder("assemblermktwo" + "_fluix_logic_unit", "assemblermktwo", 100)
	.addEnergyPerTickInput(15000)
	.addItemOutput(<threng:material:4>)
	.addItemInput(<threng:material>*4)
	.addItemInput(<appliedenergistics2:material:22>)
	.addItemInput(<appliedenergistics2:material:24>)
	.addItemInput(<rockhounding_chemistry:misc_items:10>)
	.build();



// --==QMD==-- //

// Advanced Processor
mods.modularmachinery.RecipeBuilder.newBuilder("assemblermktwo" + "_advanced_processor", "assemblermktwo", 100)
	.addEnergyPerTickInput(15000)
	.addItemOutput(<qmd:semiconductor:5>)
	.addItemInput(<qmd:semiconductor:4>)
	.addItemInput(<qmd:chemical_dust:5>)
	.addItemInput(<qmd:semiconductor>)
	.addItemInput(<ore:plateTungstensteel>)
	.build();

// Plastic Scintillator
mods.modularmachinery.RecipeBuilder.newBuilder("assemblermktwo" + "_plastic_scintillator", "assemblermktwo", 100)
	.addEnergyPerTickInput(7500)
	.addItemOutput(<qmd:part:3>)
	.addItemInput(<nuclearcraft:part:6>*2)
	.addItemInput(<ore:dyeBlue>)
	.build();

// Gold Plated Tungsten Wire
mods.modularmachinery.RecipeBuilder.newBuilder("assemblermktwo" + "_goldtungsten_wire", "assemblermktwo", 100)
	.addEnergyPerTickInput(7500)
	.addItemOutput(<qmd:part:6>*6)
	.addItemInput(<ore:ingotTungsten>, 4)
	.addItemInput(<ore:ingotGold>, 2)
	.build();

// Tungsten Filament
mods.modularmachinery.RecipeBuilder.newBuilder("assemblermktwo" + "_tungsten_filament", "assemblermktwo", 100)
	.addEnergyPerTickInput(7500)
	.addItemOutput(<qmd:source>.withTag({particle_storage: {particle_amount: 50000000}}))
	.addItemInput(<ore:ingotTungsten>, 2)
	.build();

// Miscellaneous Items //

// Crystalline Capacitor
mods.modularmachinery.RecipeBuilder.newBuilder("assemblermktwo" + "_crystalline_capacitor_octadic", "assemblermktwo", 200)
	.addEnergyPerTickInput(30000)
	.addItemOutput(<enderio:item_capacitor_crystalline>)
	.addItemInput(<enderio:item_basic_capacitor:2> * 2)
	.addItemInput(<ore:ingotCrystallineAlloy>, 2)
	.addItemInput(<ore:dustPrismarine>, 2)
	.addItemInput(<ore:circuitElite>)
	.addItemInput(<enderio:item_material:45>)
	.build();

mods.modularmachinery.RecipeBuilder.newBuilder("assemblermktwo" + "_crystalline_capacitor_vivid", "assemblermktwo", 200)
	.addEnergyPerTickInput(30000)
	.addItemOutput(<enderio:item_capacitor_crystalline>)
	.addItemInput(<enderio:item_capacitor_vivid> * 2)
	.addItemInput(<ore:ingotCrystallineAlloy>, 2)
	.addItemInput(<ore:dustPrismarine>, 2)
	.addItemInput(<ore:circuitElite>)
	.addItemInput(<enderio:item_material:45>)
	.build();

// Melodic Capacitor
mods.modularmachinery.RecipeBuilder.newBuilder("assemblermktwo" + "_melodic_capacitor", "assemblermktwo", 400)
	.addEnergyPerTickInput(50000)
	.addItemOutput(<enderio:item_capacitor_melodic>)
	.addItemInput(<enderio:item_capacitor_crystalline> * 2)
	.addItemInput(<ore:plateMelodicAlloy>, 4)
	.addItemInput(<ore:plateEndSteel>, 2)
	.addItemInput(<ore:circuitUltimate>)
	.addItemInput(<enderio:item_material:16>)
	.addFluidInput(<liquid:ender_distillation> * 1000)
	.build();

// Machine Circuitry
mods.modularmachinery.RecipeBuilder.newBuilder("assemblermktwo" + "_machine_circuitry", "assemblermktwo", 400)
	.addEnergyPerTickInput(10000)
	.addItemOutput(<modularmachinery:blockcasing:5>)
	.addItemInput(<advancedrocketry:ic:5>)
	.addItemInput(<advancedrocketry:ic:3>)
	.addItemInput(<advancedrocketry:ic:4>)
	.addItemInput(<modularmachinery:blockcasing>)
	.addFluidInput(<liquid:liquid_nitrogen>*2000)
	.build();

// Connectors
mods.modularmachinery.RecipeBuilder.newBuilder("assemblermktwo" + "_connector", "assemblermktwo", 200)
	.addEnergyPerTickInput(30000)
	.addItemOutput(<environmentaltech:connector>)
	.addItemInput(<powersuits:powerarmorcomponent:6>)
	.addItemInput(<techreborn:part:28>)
	.addItemInput(<nuclearcraft:part:2>)
	.addItemInput(<advgenerators:iron_wiring>*2)
	.build();

##############################################
##
##           Elite Assembling Machine (MK III)
##
##############################################

// Mekanism Laser Acceptor
mods.modularmachinery.RecipeBuilder.newBuilder("assemblermkthree" + "_mekanism_laser_acceptor", "assemblermkthree", 400)
	.addEnergyPerTickInput(400000)
	.addItemOutput(<modulardiversity:blockmeklaseracceptor>)
	.addItemInput(<modularmachinery:blockcasing:4>)
	.addItemInput(<environmentaltech:laser_core>*2)
	.addItemInput(<rockhounding_chemistry:alloy_parts:34>*4)
	.addItemInput(<mekanismgenerators:reactorglass:1>*2)
	.addFluidInput(<liquid:liquid_nitrogen>*4000)
	.build();

// Highly Advanced Machine Frame
mods.modularmachinery.RecipeBuilder.newBuilder("assemblermkthree" + "_highly_advanced_machine_frame", "assemblermkthree", 50)
	.addEnergyPerTickInput(200000)
	.addItemOutput(<techreborn:machine_frame:2>)
	.addItemInput(<techreborn:machine_frame:1>)
	.addItemInput(<jaopca:item_gearsuperalloy>*4)
	.addItemInput(<techreborn:plates:38>*4)
	.addFluidInput(<liquid:liquid_nitrogen>*4000)
	.build();

// Lapotron Crystal
mods.modularmachinery.RecipeBuilder.newBuilder("assemblermkthree" + "_lapotron_crystal", "assemblermkthree", 50)
	.addEnergyPerTickInput(120000)
	.addItemOutput(<techreborn:lapotroncrystal>*4)
	.addItemInput(<contenttweaker:lazurite_gem>)
	.addItemInput(<ore:circuitAdvanced>)
	.addFluidInput(<liquid:lapis>*4000)
	.build();

// Lapotronic Energy Orb
mods.modularmachinery.RecipeBuilder.newBuilder("assemblermkthree" + "_lapotronic_energy_orb", "assemblermkthree", 100)
	.addEnergyPerTickInput(240000)
	.addItemOutput(<techreborn:lapotronicorb>*4)
	.addItemInput(<ore:lapotronCrystal>,8)
	.addItemInput(<ore:plateiridiumAlloy>)
	.addFluidInput(<liquid:lapis>*8000)
	.build();

// EV Capacitor
mods.modularmachinery.RecipeBuilder.newBuilder("assemblermkthree" + "_ev_capacitor", "assemblermkthree", 200)
	.addEnergyPerTickInput(480000)
	.addItemOutput(<powersuits:powerarmorcomponent:8>*4)
	.addItemInput(<ore:componentWiring>,6)
	.addItemInput(<ore:componentHVCapacitor>,2)
	.addItemInput(<ore:componentComputerChip>)
	.addFluidInput(<liquid:liquid_nitrogen>*2000)
	.build();

// Stellar Capacitor
mods.modularmachinery.RecipeBuilder.newBuilder("assemblermkthree" + "_stellar_capacitor", "assemblermkthree", 200)
	.addEnergyPerTickInput(480000)
	.addItemOutput(<enderio:item_capacitor_stellar>)
	.addItemInput(<enderio:item_capacitor_melodic> * 2)
	.addItemInput(<ore:plateStellarAlloy>, 4)
	.addItemInput(<minecraft:shulker_shell> * 2)
	.addItemInput(<powersuits:powerarmorcomponent:8>)
	.addItemInput(<enderio:item_material:44>)
	.addItemInput(<enderio:item_material:19>)
	.addFluidInput(<liquid:vapor_of_levity> * 2000)
	.build();

// BSCCO Dust
mods.modularmachinery.RecipeBuilder.newBuilder("assemblermkthree" + "_bscco_dust", "assemblermkthree", 50)
	.addEnergyPerTickInput(60000)
	.addItemOutput(<qmd:chemical_dust:1>*3)
	.addItemInput(<ore:dustBismuth>, 2)
	.addItemInput(<qmd:dust:14>*2)
	.addItemInput(<ore:dustCalcium>, 2)
	.addItemInput(<qmd:chemical_dust:4>*3)
	.build();

// BSCCO Wire
mods.modularmachinery.RecipeBuilder.newBuilder("assemblermkthree" + "_bscco_wire", "assemblermkthree", 50)
	.addEnergyPerTickInput(60000)
	.addItemOutput(<qmd:part:4>*6)
	.addItemInput(<qmd:chemical_dust:1>*3)
	.addItemInput(<powersuits:powerarmorcomponent:1>)
	.build();

// Elite Processor
mods.modularmachinery.RecipeBuilder.newBuilder("assemblermkthree" + "_elite_processor", "assemblermkthree", 50)
	.addEnergyPerTickInput(120000)
	.addItemOutput(<qmd:semiconductor:6>)
	.addItemInput(<qmd:semiconductor:5>)
	.addItemInput(<qmd:part:4>*4)
	.addItemInput(<qmd:chemical_dust:5>)
	.addItemInput(<ore:plateOsmiridium>)
	.build();

// Neodymium Magnet
mods.modularmachinery.RecipeBuilder.newBuilder("assemblermkthree" + "_neodymium_magnet", "assemblermkthree", 50)
	.addEnergyPerTickInput(60000)
	.addItemOutput(<qmd:part:8>)
	.addItemInput(<ore:ingotFerroboron>, 2)
	.addItemInput(<ore:ingotNeodymium>)
	.build();

##############################################
##
##           Mass Manufacturer (MK IV)
##
##############################################

//--== MK I Recipes for MK IV assembler ==--//

// Because MM is buggy and adapters for recipes that are too short cause JEI to crash

// Tech Reborn Circuits //

//Dummy Block for 2x TR frames
mods.modularmachinery.RecipeBuilder.newBuilder("assemblermkfour" + "_advanced_redstone_block", "assemblermkfour", 1)
	.addEnergyPerTickInput(320000)
	.addItemOutput(<contenttweaker:advanced_redstone_block>)
	.addItemInput(<immersiveengineering:metal_decoration0:3>)
	.addItemInput(<jaopca:item_gearzinc>)
	.addItemInput(<techreborn:cable:6>*9)
    .addFluidInput(<liquid:fluidchlorite>*1000)
	.build();

// Basic Circuit Board
mods.modularmachinery.RecipeBuilder.newBuilder("assemblermkfour" + "_basic_circuit_board_1", "assemblermkfour", 1)
	.addEnergyPerTickInput(320000)
	.addItemOutput(<techreborn:part:40>*2)
	.addItemInput(<techreborn:plates:35>)
	.addItemInput(<ore:plateElectrum>, 2)
	.build();

mods.modularmachinery.RecipeBuilder.newBuilder("assemblermkfour" + "_basic_circuit_board_2", "assemblermkfour", 1)
	.addEnergyPerTickInput(320000)
	.addItemOutput(<techreborn:part:40>*2)
	.addItemInput(<ore:plateAluminum>)
	.addItemInput(<ore:plateElectrum>, 2)
	.build();

// Electronic Circuit
mods.modularmachinery.RecipeBuilder.newBuilder("assemblermkfour" + "_electronic_circuit_1", "assemblermkfour", 1)
	.addEnergyPerTickInput(640000)
	.addItemOutput(<techreborn:part:29>)
	.addItemInput(<techreborn:part:40>)
	.addItemInput(<techreborn:cable:5>*3)
	.build();

mods.modularmachinery.RecipeBuilder.newBuilder("assemblermkfour" + "_electronic_circuit_2", "assemblermkfour", 1)
	.addEnergyPerTickInput(640000)
	.addItemOutput(<techreborn:part:29>)
	.addItemInput(<powersuits:powerarmorcomponent>*4)
	.addItemInput(<minecraft:redstone>*2)
    .addItemInput(<techreborn:plates:35>)
	.build();

// Advanced Circuit Board
mods.modularmachinery.RecipeBuilder.newBuilder("assemblermkfour" + "_advanced_circuit_board_1", "assemblermkfour", 1)
	.addEnergyPerTickInput(640000)
	.addItemOutput(<techreborn:part:41>*2)
	.addItemInput(<ore:waferSilicon>)
	.addItemInput(<ore:plateElectrum>, 4)
	.build();

mods.modularmachinery.RecipeBuilder.newBuilder("assemblermkfour" + "_advanced_circuit_board_2", "assemblermkfour", 1)
	.addEnergyPerTickInput(640000)
	.addItemOutput(<techreborn:part:41>)
	.addItemInput(<ore:circuitBasic>)
	.addItemInput(<ore:plateElectrum>, 2)
	.build();

// Advanced Circuit Parts
mods.modularmachinery.RecipeBuilder.newBuilder("assemblermkfour" + "_advanced_circuit_parts_1", "assemblermkfour", 1)
	.addEnergyPerTickInput(640000)
	.addItemOutput(<techreborn:part:42>*2)
	.addItemInput(<techreborn:dust:48>)
	.addItemInput(<minecraft:glowstone_dust>)
	.addItemInput(<advgenerators:iron_tubing>)
	.build();

mods.modularmachinery.RecipeBuilder.newBuilder("assemblermkfour" + "_advanced_circuit_parts_2", "assemblermkfour", 1)
	.addEnergyPerTickInput(640000)
	.addItemOutput(<techreborn:part:42>)
	.addItemInput(<techreborn:dust:28>*2)
	.addItemInput(<minecraft:glowstone_dust>)
	.addItemInput(<advgenerators:iron_tubing>)
	.build();

// Advanced Electronic Circuit
mods.modularmachinery.RecipeBuilder.newBuilder("assemblermkfour" + "_advanced_electronic_circuit", "assemblermkfour", 1)
	.addEnergyPerTickInput(1280000)
	.addItemOutput(<techreborn:part:30>)
	.addItemInput(<techreborn:part:41>)
	.addItemInput(<techreborn:part:42>*2)
	.build();

// Processor Circuit Board
mods.modularmachinery.RecipeBuilder.newBuilder("assemblermkfour" + "_processor_circuit_board", "assemblermkfour", 1)
	.addEnergyPerTickInput(1280000)
	.addItemOutput(<techreborn:part:43>)
	.addItemInput(<ore:circuitAdvanced>)
	.addItemInput(<ore:platePlatinum>)
	.build();

// Data Storage Circuit
mods.modularmachinery.RecipeBuilder.newBuilder("assemblermkfour" + "_data_storage_circuit_1", "assemblermkfour", 1)
	.addEnergyPerTickInput(1280000)
	.addItemOutput(<techreborn:part:2>*4)
	.addItemInput(<ore:circuitAdvanced>)
	.addItemInput(<ore:gemEmerald>, 8)
	.build();

mods.modularmachinery.RecipeBuilder.newBuilder("assemblermkfour" + "_data_storage_circuit_2", "assemblermkfour", 1)
	.addEnergyPerTickInput(1280000)
	.addItemOutput(<techreborn:part:2>*4)
	.addItemInput(<ore:circuitAdvanced>)
	.addItemInput(<ore:gemPeridot>, 8)
	.build();

mods.modularmachinery.RecipeBuilder.newBuilder("assemblermkfour" + "_data_storage_circuit_3", "assemblermkfour", 1)
	.addEnergyPerTickInput(1280000)
	.addItemOutput(<techreborn:part:2>*4)
	.addItemInput(<ore:circuitAdvanced>)
	.addItemInput(<ore:dustEmerald>, 8)
	.build();

mods.modularmachinery.RecipeBuilder.newBuilder("assemblermkfour" + "_data_storage_circuit_4", "assemblermkfour", 1)
	.addEnergyPerTickInput(1280000)
	.addItemOutput(<techreborn:part:2>*4)
	.addItemInput(<ore:circuitAdvanced>)    
	.addItemInput(<ore:dustPeridot>, 8)
	.build();

// Data Control Circuit
mods.modularmachinery.RecipeBuilder.newBuilder("assemblermkfour" + "_data_control_circuit", "assemblermkfour", 1)
	.addEnergyPerTickInput(1600000)
	.addItemOutput(<techreborn:part:1>)
	.addItemInput(<techreborn:part:43>)    
	.addItemInput(<techreborn:part:2>)
	.build();

// Energy Flow Circuit
mods.modularmachinery.RecipeBuilder.newBuilder("assemblermkfour" + "_energy_flow_circuit", "assemblermkfour", 1)
	.addEnergyPerTickInput(1600000)
	.addItemOutput(<techreborn:part>)
	.addItemInput(<techreborn:part:43>)
	.addItemInput(<techreborn:lapotroncrystal>)
	.build();

// Data Orb
mods.modularmachinery.RecipeBuilder.newBuilder("assemblermkfour" + "_data_orb", "assemblermkfour", 2)
	.addEnergyPerTickInput(3200000)
	.addItemOutput(<techreborn:part:3>)
	.addItemInput(<techreborn:part:1>)
	.addItemInput(<techreborn:part:2>*8)
	.build();

// Gold Cable
mods.modularmachinery.RecipeBuilder.newBuilder("assemblermkfour" + "_gold_cable", "assemblermkfour", 1)
	.addEnergyPerTickInput(160000)
	.addItemOutput(<techreborn:cable:6>)
	.addItemInput(<techreborn:cable:2>)
	.addItemInput(<ore:itemRubber>)
	.build();

// HV Cable
mods.modularmachinery.RecipeBuilder.newBuilder("assemblermkfour" + "_hv_cable", "assemblermkfour", 1)
	.addEnergyPerTickInput(160000)
	.addItemOutput(<techreborn:cable:7>)
	.addItemInput(<techreborn:cable:3>)
	.addItemInput(<ore:itemRubber>,3)
	.build();





// AA Coils //

// Basic Coil
mods.modularmachinery.RecipeBuilder.newBuilder("assemblermkfour" + "_basic_coil_1", "assemblermkfour", 1)
	.addEnergyPerTickInput(320000)
	.addItemOutput(<actuallyadditions:item_misc:7>)
	.addItemInput(<immersiveengineering:wirecoil>*4)
	.addItemInput(<actuallyadditions:item_crystal>)
	.build();

mods.modularmachinery.RecipeBuilder.newBuilder("assemblermkfour" + "_basic_coil_2", "assemblermkfour", 1)
	.addEnergyPerTickInput(320000)
	.addItemOutput(<actuallyadditions:item_misc:7>*2)
	.addItemInput(<immersiveengineering:wirecoil:1>*4)
	.addItemInput(<actuallyadditions:item_crystal>)
	.build();

mods.modularmachinery.RecipeBuilder.newBuilder("assemblermkfour" + "_basic_coil_3", "assemblermkfour", 1)
	.addEnergyPerTickInput(320000)
	.addItemOutput(<actuallyadditions:item_misc:7>*4)
	.addItemInput(<immersiveengineering:wirecoil:2>*4)
	.addItemInput(<actuallyadditions:item_crystal>)
	.build();

// Advanced Coil
mods.modularmachinery.RecipeBuilder.newBuilder("assemblermkfour" + "_advanced_coil", "assemblermkfour", 1)
	.addEnergyPerTickInput(480000)
	.addItemOutput(<actuallyadditions:item_misc:8>)
	.addItemInput(<techreborn:cable:6>*4)
	.addItemInput(<actuallyadditions:item_misc:7>)
	.build();



// Thermal Coils

// Redstone Reception Coil
mods.modularmachinery.RecipeBuilder.newBuilder("assemblermkfour" + "_reception_coil", "assemblermkfour", 1)
	.addEnergyPerTickInput(720000)
	.addItemOutput(<thermalfoundation:material:513>)
	.addItemInput(<actuallyadditions:item_misc:8>)
	.addItemInput(<moreplates:gold_stick> * 2)
	.addItemInput(<advgenerators:iron_wiring> * 4)
	.build();

// Redstone Transmission Coil
mods.modularmachinery.RecipeBuilder.newBuilder("assemblermkfour" + "_transmission_coil", "assemblermkfour", 1)
	.addEnergyPerTickInput(720000)
	.addItemOutput(<thermalfoundation:material:514>)
	.addItemInput(<actuallyadditions:item_misc:8>)
	.addItemInput(<moreplates:silver_stick> * 2)
	.addItemInput(<advgenerators:iron_wiring> * 4)
	.build();

// Redstone Conductance Coil
mods.modularmachinery.RecipeBuilder.newBuilder("assemblermkfour" + "_conductance_coil", "assemblermkfour", 1)
	.addEnergyPerTickInput(720000)
	.addItemOutput(<thermalfoundation:material:515>)
	.addItemInput(<actuallyadditions:item_misc:8>)
	.addItemInput(<moreplates:electrum_stick> * 2)
	.addItemInput(<advgenerators:iron_wiring> * 4)
	.build();



// Scaffoldings //

// Vanasteel Scaffolding
mods.modularmachinery.RecipeBuilder.newBuilder("assemblermkfour" + "_vanasteel_scaffolding", "assemblermkfour", 1)
	.addEnergyPerTickInput(180000)
	.addItemOutput(<contenttweaker:vanasteel_scaffolding>*9)
	.addItemInput(<rockhounding_chemistry:alloy_items_tech:40>*3)
	.addItemInput(<contenttweaker:rod_vanasteel>*3)
	.build();

// Steel Scaffolding
mods.modularmachinery.RecipeBuilder.newBuilder("assemblermkfour" + "_steel_scaffolding", "assemblermkfour", 1)
	.addEnergyPerTickInput(180000)
	.addItemOutput(<immersiveengineering:metal_decoration1:1>*9)
	.addItemInput(<thermalfoundation:material:160>*3)
	.addItemInput(<immersiveengineering:material:2>*3)
	.build();

// ScAl Scaffolding
mods.modularmachinery.RecipeBuilder.newBuilder("assemblermkfour" + "_scal_scaffolding", "assemblermkfour", 1)
	.addEnergyPerTickInput(180000)
	.addItemOutput(<contenttweaker:scal_scaffolding>*9)
	.addItemInput(<rockhounding_chemistry:alloy_items_tech:4>*3)
	.addItemInput(<contenttweaker:rod_scal>*3)
	.build();

// BAM Scaffolding
mods.modularmachinery.RecipeBuilder.newBuilder("assemblermkfour" + "_bam_scaffolding", "assemblermkfour", 1)
	.addEnergyPerTickInput(180000)
	.addItemOutput(<contenttweaker:bam_scaffolding>*9)
	.addItemInput(<rockhounding_chemistry:alloy_items_tech:7>*3)
	.addItemInput(<contenttweaker:rod_bam>*3)
	.build();

// Nimonic Scaffolding
mods.modularmachinery.RecipeBuilder.newBuilder("assemblermkfour" + "_nimonic_scaffolding", "assemblermkfour", 1)
	.addEnergyPerTickInput(180000)
	.addItemOutput(<contenttweaker:nimonic_scaffolding>*9)
	.addItemInput(<rockhounding_chemistry:alloy_items_tech:16>*3)
	.addItemInput(<contenttweaker:rod_nimonic>*3)
	.build();

// Invar Scaffolding
mods.modularmachinery.RecipeBuilder.newBuilder("assemblermkfour" + "_invar_scaffolding", "assemblermkfour", 1)
	.addEnergyPerTickInput(180000)
	.addItemOutput(<contenttweaker:invar_scaffolding>*9)
	.addItemInput(<thermalfoundation:material:162>*3)
	.addItemInput(<moreplates:invar_stick>*3)
	.build();

// Aluminium Scaffolding
mods.modularmachinery.RecipeBuilder.newBuilder("assemblermkfour" + "_aluminium_scaffolding", "assemblermkfour", 1)
	.addEnergyPerTickInput(180000)
	.addItemOutput(<immersiveengineering:metal_decoration1:5>*9)
	.addItemInput(<thermalfoundation:material:132>*3)
	.addItemInput(<immersiveengineering:material:3>*3)
	.build();

// Nichrome Scaffolding
mods.modularmachinery.RecipeBuilder.newBuilder("assemblermkfour" + "_nichrome_scaffolding", "assemblermkfour", 1)
	.addEnergyPerTickInput(180000)
	.addItemOutput(<jaopca:block_scaffoldingnichrome>*9)
	.addItemInput(<rockhounding_chemistry:alloy_items_tech:22>*3)
	.addItemInput(<jaopca:item_sticknichrome>*3)
	.build();

// Stainless Steel Scaffolding
mods.modularmachinery.RecipeBuilder.newBuilder("assemblermkfour" + "_stainless_steel_scaffolding", "assemblermkfour", 1)
	.addEnergyPerTickInput(180000)
	.addItemOutput(<jaopca:block_scaffoldingstainlesssteel>*9)
	.addItemInput(<qmd:ingot_alloy:2>*3)
	.addItemInput(<jaopca:item_stickstainlesssteel>*3)
	.build();

// Thaumium Scaffolding
mods.modularmachinery.RecipeBuilder.newBuilder("assemblermkfour" + "_thaumium_scaffolding", "assemblermkfour", 1)
	.addEnergyPerTickInput(180000)
	.addItemOutput(<jaopca:block_scaffoldingthaumium>*9)
	.addItemInput(<thaumcraft:ingot>*3)
	.addItemInput(<jaopca:item_stickthaumium>*3)
	.build();

// Ironwood Scaffolding
mods.modularmachinery.RecipeBuilder.newBuilder("assemblermkfour" + "_ironwood_scaffolding", "assemblermkfour", 1)
	.addEnergyPerTickInput(180000)
	.addItemOutput(<contenttweaker:ironwood_scaffolding>*9)
	.addItemInput(<twilightforest:ironwood_ingot>*3)
	.addItemInput(<contenttweaker:rod_ironwood>*3)
	.build();

// Thermal Alloy Scaffolding
mods.modularmachinery.RecipeBuilder.newBuilder("assemblermkfour" + "_thermal_alloy_scaffolding", "assemblermkfour", 1)
	.addEnergyPerTickInput(180000)
	.addItemOutput(<contenttweaker:scaffolding_thermal_alloy>*9)
	.addItemInput(<contenttweaker:ingot_thermal_alloy>*3)
	.addItemInput(<contenttweaker:rod_thermal_alloy>*3)
	.build();	

// Mek Alloy Scaffolding
mods.modularmachinery.RecipeBuilder.newBuilder("assemblermkfour" + "_mek_alloy_scaffolding", "assemblermkfour", 1)
	.addEnergyPerTickInput(180000)
	.addItemOutput(<contenttweaker:scaffolding_mek_alloy>*9)
	.addItemInput(<contenttweaker:ingot_mek_alloy>*3)
	.addItemInput(<contenttweaker:rod_mek_alloy>*3)
	.build();	

// PlaStick Scaffolding
mods.modularmachinery.RecipeBuilder.newBuilder("assemblermkfour" + "_plastic_scaffolding", "assemblermkfour", 1)
	.addEnergyPerTickInput(180000)
	.addItemOutput(<contenttweaker:scaffolding_plastic>*9)
	.addItemInput(<mekanism:polyethene:2>*3)
	.addItemInput(<mekanism:polyethene:3>*3)
	.build();	

// Food //

// Deadly Energy Drink
mods.modularmachinery.RecipeBuilder.newBuilder("assemblermkfour" + "_deadly_energy_drink", "assemblermkfour", 1)
	.addEnergyPerTickInput(180000)
	.addItemOutput(<xlfoodmod:deadly_energy_drink>)
	.addItemInput(<xlfoodmod:empty_can>)
	.addItemInput(<ore:cropRice>)
	.addItemInput(<minecraft:fermented_spider_eye>)
	.addItemInput(<minecraft:spider_eye>)
    .addFluidInput(<liquid:water> * 1000)
	.build();

// Strong Energy Drink
mods.modularmachinery.RecipeBuilder.newBuilder("assemblermkfour" + "_strong_energy_drink", "assemblermkfour", 1)
	.addEnergyPerTickInput(180000)
	.addItemOutput(<xlfoodmod:strong_energy_drink>)
	.addItemInput(<xlfoodmod:empty_can>)
	.addItemInput(<ore:cropRice>)
	.addItemInput(<minecraft:magma_cream>)
	.addItemInput(<minecraft:blaze_powder>)
    .addFluidInput(<liquid:water> * 1000)
	.build();

// Stealthy Energy Drink
mods.modularmachinery.RecipeBuilder.newBuilder("assemblermkfour" + "_stealthy_energy_drink", "assemblermkfour", 1)
	.addEnergyPerTickInput(180000)
	.addItemOutput(<xlfoodmod:stealthy_energy_drink>)
	.addItemInput(<xlfoodmod:empty_can>)
	.addItemInput(<ore:cropRice>)
	.addItemInput(<minecraft:sugar>)
	.addItemInput(<minecraft:golden_carrot>)
    .addFluidInput(<liquid:water> * 1000)
	.build();

// Healthy Energy Drink
mods.modularmachinery.RecipeBuilder.newBuilder("assemblermkfour" + "_healthy_energy_drink", "assemblermkfour", 1)
	.addEnergyPerTickInput(180000)
	.addItemOutput(<xlfoodmod:healthy_energy_drink>)
	.addItemInput(<xlfoodmod:empty_can>)
	.addItemInput(<ore:cropRice>)
	.addItemInput(<minecraft:ghast_tear>)
	.addItemInput(<minecraft:speckled_melon>)
    .addFluidInput(<liquid:water> * 1000)
	.build();

// Speedy Energy Drink
mods.modularmachinery.RecipeBuilder.newBuilder("assemblermkfour" + "_speedy_energy_drink", "assemblermkfour", 1)
	.addEnergyPerTickInput(180000)
	.addItemOutput(<xlfoodmod:speedy_energy_drink>)
	.addItemInput(<xlfoodmod:empty_can>)
	.addItemInput(<ore:cropRice>)
	.addItemInput(<minecraft:sugar>)
    .addFluidInput(<liquid:water> * 1000)
	.build();

// Chocolate Ice Cream Ball
mods.modularmachinery.RecipeBuilder.newBuilder("assemblermkfour" + "_chocolate_icecream_ball", "assemblermkfour", 1)
	.addEnergyPerTickInput(180000)
	.addItemOutput(<xlfoodmod:chocolate_icecream_ball>)
	.addItemInput(<minecraft:snowball>)
	.addItemInput(<xlfoodmod:vanilla_cream>)
	.addItemInput(<minecraft:dye:3>)
    .addFluidInput(<liquid:milk> * 1000)
	.build();

// Vanilla Ice Cream Ball
mods.modularmachinery.RecipeBuilder.newBuilder("assemblermkfour" + "_vanilla_icecream_ball", "assemblermkfour", 1)
	.addEnergyPerTickInput(180000)
	.addItemOutput(<xlfoodmod:vanilla_icecream_ball>)
	.addItemInput(<minecraft:snowball>)
	.addItemInput(<xlfoodmod:vanilla_cream>)
    .addFluidInput(<liquid:milk> * 1000)
	.build();

// Strawberry Ice Cream Ball
mods.modularmachinery.RecipeBuilder.newBuilder("assemblermkfour" + "_strawberry_icecream_ball", "assemblermkfour", 1)
	.addEnergyPerTickInput(180000)
	.addItemOutput(<xlfoodmod:strawberry_icecream_ball>)
	.addItemInput(<minecraft:snowball>)
	.addItemInput(<xlfoodmod:strawberry>)
    .addFluidInput(<liquid:milk> * 1000)
	.build();

// EnderIOs
mods.modularmachinery.RecipeBuilder.newBuilder("assemblermkfour" + "_enderios", "assemblermkfour", 1)
	.addEnergyPerTickInput(180000)
	.addItemOutput(<enderio:item_ender_food>)
	.addItemInput(<minecraft:bowl>)
	.addItemInput(<minecraft:wheat>)
	.addItemInput(<techreborn:dust:20>)
    .addFluidInput(<liquid:milk> * 1000)
	.build();

// AA Chocolate Cake
mods.modularmachinery.RecipeBuilder.newBuilder("assemblermkfour" + "_aachocolatecake", "assemblermkfour", 1)
	.addEnergyPerTickInput(180000)
	.addItemOutput(<actuallyadditions:item_food:8>)
	.addItemInput(<actuallyadditions:item_misc:4>)
	.addItemInput(<minecraft:egg>)
	.addItemInput(<minecraft:sugar>)
	.addItemInput(<minecraft:dye:3> * 3)
    .addFluidInput(<liquid:milk> * 3000)
	.build();

// XL Food Chocolate Cake
mods.modularmachinery.RecipeBuilder.newBuilder("assemblermkfour" + "_xlfoodchocolatecake", "assemblermkfour", 1)
	.addEnergyPerTickInput(180000)
	.addItemOutput(<xlfoodmod:chocolate_cake>)
	.addItemInput(<minecraft:wheat> * 3)
	.addItemInput(<minecraft:sugar> * 2)
	.addItemInput(<xlfoodmod:chocolate_syrup>)
    .addFluidInput(<liquid:milk> * 3000)
	.build();

// Oreo Cake
mods.modularmachinery.RecipeBuilder.newBuilder("assemblermkfour" + "_oreo_cake", "assemblermkfour", 1)
	.addEnergyPerTickInput(180000)
	.addItemOutput(<xlfoodmod:oreo_cake>)
	.addItemInput(<minecraft:wheat> * 3)
	.addItemInput(<minecraft:sugar> * 2)
	.addItemInput(<xlfoodmod:oreo_cookie>)
    .addFluidInput(<liquid:milk> * 3000)
	.build();

// Cheese Cake
mods.modularmachinery.RecipeBuilder.newBuilder("assemblermkfour" + "_cheese_cake", "assemblermkfour", 1)
	.addEnergyPerTickInput(180000)
	.addItemOutput(<xlfoodmod:cheese_cake>)
	.addItemInput(<minecraft:wheat> * 3)
	.addItemInput(<minecraft:sugar> * 2)
	.addItemInput(<xlfoodmod:cheese>)
    .addFluidInput(<liquid:milk> * 3000)
	.build();

// Nether Cake
mods.modularmachinery.RecipeBuilder.newBuilder("assemblermkfour" + "_nether_cake", "assemblermkfour", 1)
	.addEnergyPerTickInput(180000)
	.addItemOutput(<xlfoodmod:nether_cake>)
	.addItemInput(<minecraft:wheat> * 3)
	.addItemInput(<minecraft:sugar> * 2)
	.addItemInput(<minecraft:blaze_powder>)
    .addFluidInput(<liquid:milk> * 3000)
	.build();

// Strawberry Cake
mods.modularmachinery.RecipeBuilder.newBuilder("assemblermkfour" + "_strawberry_cake", "assemblermkfour", 1)
	.addEnergyPerTickInput(180000)
	.addItemOutput(<xlfoodmod:strawberry_cake>)
	.addItemInput(<minecraft:wheat> * 3)
	.addItemInput(<minecraft:sugar> * 2)
	.addItemInput(<xlfoodmod:strawberry>)
    .addFluidInput(<liquid:milk> * 3000)
	.build();

// Pumpkin Cake
mods.modularmachinery.RecipeBuilder.newBuilder("assemblermkfour" + "_pumpkin_cake", "assemblermkfour", 1)
	.addEnergyPerTickInput(180000)
	.addItemOutput(<xlfoodmod:pumpkin_cake>)
	.addItemInput(<minecraft:wheat> * 3)
	.addItemInput(<minecraft:sugar> * 2)
	.addItemInput(<minecraft:pumpkin>)
    .addFluidInput(<liquid:milk> * 3000)
	.build();

// Vanilla MC Cake
mods.modularmachinery.RecipeBuilder.newBuilder("assemblermkfour" + "_cake_1", "assemblermkfour", 1)
	.addEnergyPerTickInput(180000)
	.addItemOutput(<minecraft:cake>)
	.addItemInput(<minecraft:wheat> * 3)
	.addItemInput(<minecraft:sugar> * 2)
	.addItemInput(<minecraft:egg>)
    .addFluidInput(<liquid:milk> * 3000)
	.build();

// Vanilla MC Cake (Alternate recipe)
mods.modularmachinery.RecipeBuilder.newBuilder("assemblermkfour" + "_cake_2", "assemblermkfour", 1)
	.addEnergyPerTickInput(180000)
	.addItemOutput(<minecraft:cake>)
	.addItemInput(<enderio:item_material:70>)
	.addItemInput(<minecraft:sugar> * 2)
    .addFluidInput(<liquid:milk> * 3000)
	.build();

// Tasty Clay
mods.modularmachinery.RecipeBuilder.newBuilder("assemblermkfour" + "_tasty_clay", "assemblermkfour", 1)
	.addEnergyPerTickInput(180000)
	.addItemOutput(<openblocks:tasty_clay> * 2)
	.addItemInput(<minecraft:dye:3>)
	.addItemInput(<minecraft:clay_ball>)
    .addFluidInput(<liquid:milk> * 1000)
	.build();

// EnderIO Capacitors //

// Basic Capacitor
mods.modularmachinery.RecipeBuilder.newBuilder("assemblermkfour" + "_basic_capacitor", "assemblermkfour", 1)
	.addEnergyPerTickInput(640000)
	.addItemOutput(<enderio:item_basic_capacitor>)
	.addItemInput(<ore:plateCopper>)
	.addItemInput(<actuallyadditions:item_misc:8>)
	.addItemInput(<moreplates:gold_stick> * 2)
	.addItemInput(<enderio:item_material:20> * 2)
	.build();

// Silver Capacitor
mods.modularmachinery.RecipeBuilder.newBuilder("assemblermkfour" + "_silver_capacitor", "assemblermkfour", 1)
	.addEnergyPerTickInput(640000)
	.addItemOutput(<enderio:item_capacitor_silver>)
	.addItemInput(<ore:plateLead>)
	.addItemInput(<actuallyadditions:item_misc:8>)
	.addItemInput(<moreplates:silver_stick> * 2)
	.addItemInput(<enderio:item_material:20> * 2)
	.build();

// Double-Layer Capacitor
mods.modularmachinery.RecipeBuilder.newBuilder("assemblermkfour" + "_double_layer_capacitor", "assemblermkfour", 1)
	.addEnergyPerTickInput(1280000)
	.addItemOutput(<enderio:item_basic_capacitor:1>)
	.addItemInput(<enderio:item_basic_capacitor> * 2)
	.addItemInput(<ore:plateEnergeticAlloy>, 2)
	.addItemInput(<ore:dustCarbon>)
	.addItemInput(<rockhounding_chemistry:misc_items:10>)
	.build();

// Endergenic Silver Capacitor
mods.modularmachinery.RecipeBuilder.newBuilder("assemblermkfour" + "_endergenic_silver_capacitor", "assemblermkfour", 1)
	.addEnergyPerTickInput(1280000)
	.addItemOutput(<enderio:item_capacitor_energetic_silver>)
	.addItemInput(<enderio:item_capacitor_silver> * 2)
	.addItemInput(<ore:plateEnergeticSilver>, 2)
	.addItemInput(<ore:dustCarbon>)
	.addItemInput(<rockhounding_chemistry:misc_items:10>)
	.build();

// Octadic Capacitor
mods.modularmachinery.RecipeBuilder.newBuilder("assemblermkfour" + "_octadic_capacitor", "assemblermkfour", 1)
	.addEnergyPerTickInput(1920000)
	.addItemOutput(<enderio:item_basic_capacitor:2>)
	.addItemInput(<enderio:item_basic_capacitor:1> * 2)
	.addItemInput(<ore:plateVibrantAlloy>, 2)
	.addItemInput(<ore:dustEnergetic>, 4)
	.addItemInput(<techreborn:part>)
	.build();

// Endergised Capacitor
mods.modularmachinery.RecipeBuilder.newBuilder("assemblermkfour" + "_endergised_capacitor", "assemblermkfour", 1)
	.addEnergyPerTickInput(1920000)
	.addItemOutput(<enderio:item_capacitor_vivid>)
	.addItemInput(<enderio:item_capacitor_energetic_silver> * 2)
	.addItemInput(<ore:plateVividAlloy>, 2)
	.addItemInput(<ore:dustEnergetic>, 4)
	.addItemInput(<techreborn:part>)
	.build();


// Miscellaneous Items //

// Basic Processor
mods.modularmachinery.RecipeBuilder.newBuilder("assemblermkfour" + "_basic_processor", "assemblermkfour", 1)
	.addEnergyPerTickInput(960000)
	.addItemOutput(<qmd:semiconductor:4>)
	.addItemInput(<qmd:semiconductor:1>)
	.addItemInput(<rockhounding_chemistry:misc_items:10>)
	.addItemInput(<thermalfoundation:material:515>)
	.addItemInput(<powersuits:powerarmorcomponent> * 3)
	.build();

// RFTools Quarry Card
mods.modularmachinery.RecipeBuilder.newBuilder("assemblermkfour" + "_rftools_quarrycard", "assemblermkfour", 2)
	.addEnergyPerTickInput(1280000)
	.addItemOutput(<rftools:shape_card:2>)
	.addItemInput(<rftools:shape_card>)
	.addItemInput(<techreborn:part:6>*4)
	.addItemInput(<rockhounding_chemistry:misc_items:10>*4)
	.addItemInput(<qmd:semiconductor:4>*4)
    .addFluidInput(<liquid:liquid_nitrogen>*4000)
	.build();

// Mek Alloy
mods.modularmachinery.RecipeBuilder.newBuilder("assemblermkfour" + "_component_mek_alloy", "assemblermkfour", 1)
	.addEnergyPerTickInput(2560000)
	.addItemOutput(<contenttweaker:component_mek_alloy>*2)
	.addItemInput(<mekanism:enrichedalloy>)
	.addItemInput(<mekanism:reinforcedalloy>)
	.addItemInput(<mekanism:atomicalloy>)
	.addFluidInput(<liquid:hydrochloric_acid>*250)
	.build();	

//--== Lapotronic Orb & EV Capacitor Recipes for MK IV assembler ==--//

// Because MM doesn't want to adapt these recipes

// Lapotronic Energy Orb
mods.modularmachinery.RecipeBuilder.newBuilder("assemblermkfour" + "_lapotronic_energy_orb", "assemblermkfour", 12)
	.addEnergyPerTickInput(1920000)
	.addItemOutput(<techreborn:lapotronicorb>*4)
	.addItemInput(<ore:lapotronCrystal>,8)
	.addItemInput(<ore:plateiridiumAlloy>)
	.addFluidInput(<liquid:lapis>*8000)
	.build();

// EV Capacitor
mods.modularmachinery.RecipeBuilder.newBuilder("assemblermkfour" + "_ev_capacitor", "assemblermkfour", 25)
	.addEnergyPerTickInput(3840000)
	.addItemOutput(<powersuits:powerarmorcomponent:8>*4)
	.addItemInput(<ore:componentWiring>,6)
	.addItemInput(<ore:componentHVCapacitor>,2)
	.addItemInput(<ore:componentComputerChip>)
	.addFluidInput(<liquid:liquid_nitrogen>*2000)
	.build();


##############################################
##
##           Assembling Machine Upgrade Tooltips/JEI Descriptions
##
##############################################

// Basic Assembling Machine Modifiers //

// Tooltips
var t1modifiers as IItemStack[] = [
<techreborn:storage2:10>,
<thermalfoundation:storage:6>,
<thermalfoundation:storage_alloy:7>,
<mekanism:basicblock>,
<plustic:osgloglasblock>
];

for item in t1modifiers {
	item.addTooltip(format.white("Basic Assembling Machine Modifier"));
}

// JEI Descriptions
addDescription(<thermalfoundation:storage:6>, "When used as Basic Assembling Machine Modifier:", "2x Speed, 2.67x Power Consumption");
addDescription(<thermalfoundation:storage_alloy:7>, "When used as Basic Assembling Machine Modifier:", "2.5x Speed, 5x Power Consumption");
addDescription(<mekanism:basicblock>, "When used as Basic Assembling Machine Modifier:", "3x Speed, 4x Power Consumption");
addDescription(<plustic:osgloglasblock>, "When used as Basic Assembling Machine Modifier:", "3.75x Speed, 7.5x Power Consumption");


addDescription(<modularmachinery:itemblueprint>.withTag({dynamicmachine: "modularmachinery:assemblermkone"}), 
"Central block modifer:",
"Platinum: 2x Speed, 2.67x Power Consumption",
"Enderium: 2.5x Speed, 5x Power Consumption",
"Osmium: 3x Speed, 4x Power Consumption",
"Osgloglas: 3.75x Speed, 7.5x Power Consumption");

// Advanced Assembling Machine Modifiers //

// Tooltips
var t2modifiers as IItemStack[] = [

//<techreborn:storage:2>,
//<techreborn:storage:10>,

<techreborn:storage2>,
<thermalfoundation:storage:7>,
<plustic:osmiridiumblock>,
<enderio:block_alloy_endergy:3>
];

for item in t2modifiers {
	item.addTooltip(format.white("Advanced Assembling Machine Modifier"));
}

// JEI Descriptions
addDescription(<techreborn:storage2>, "When used as Advanced Assembling Machine Modifier:", "1.5x Speed, 3x Power Consumption");
addDescription(<thermalfoundation:storage:7>, "When used as Advanced Assembling Machine Modifier:", "3x Speed, 4x Power Consumption");
addDescription(<plustic:osmiridiumblock>, "When used as Advanced Assembling Machine Modifier:", "3.75x Speed, 7.5x Power Consumption");
addDescription(<enderio:block_alloy_endergy:3>, "When used as Advanced Assembling Machine Modifier:", "4.8x Speed, 1.2x Fluid Consumption, 10.8x Power Consumption");


addDescription(<modularmachinery:itemblueprint>.withTag({dynamicmachine: "modularmachinery:assemblermktwo"}), 
"Central block modifer",
"Tungstensteel: 1.5x Speed, 3x Power Consumption",
"Iridium: 3x Speed, 4x Power Consumption",
"Osmiridium: 3.75x Speed, 7.5x Power Consumption",
"Stellar Alloy: 4.8x Speed, 1.2x Fluid Consumption, 10.8x Power Consumption");

// Elite Assembling Machine Modifiers //

// Tooltips
var t3modifiers as IItemStack[] = [
<extendedcrafting:storage>,
<extendedcrafting:storage:3>,
<extendedcrafting:storage:7>
];

for item in t3modifiers {
	item.addTooltip(format.blue("Elite Assembling Machine Modifier"));
}

// JEI Descriptions
addDescription(<extendedcrafting:storage:3>, "When used as Elite Assembling Machine Modifier:", "2x Speed, 2.66x Power Consumption");
addDescription(<extendedcrafting:storage:7>, "When used as Elite Assembling Machine Modifier:", "2.5x Speed, 5x Power Consumption");


addDescription(<modularmachinery:itemblueprint>.withTag({dynamicmachine: "modularmachinery:assemblermkthree"}), 
"Central block modifer",
"Crystaltine: 2x Speed, 2.66x Power Consumption",
"Twilight Ingot: 2.5x Speed, 5x Power Consumption",
"Crystal Matrix: 3x Speed, 4x Power Consumption",
"Ultimate Ingot: 3.75x Speed, 1.3x Fluid Consumption, 7.5x Power Consumption");


// Mass Manufacturer Modifiers //

// Tooltips
var t4modifiers as IItemStack[] = [
<avaritia:block_resource>,
<avaritia:block_resource:1>
];

for item in t4modifiers {
	item.addTooltip(format.aqua("Mass Manufacturer Modifier"));
}

var t34modifiers as IItemStack[] = [
<avaritia:block_resource:2>,
<extendedcrafting:storage:4>
];

for item in t34modifiers {
	item.addTooltip(format.aqua("Elite Assembling Machine and Mass Manufacturer Modifier"));
}

// JEI Descriptions
addDescription(<avaritia:block_resource>, "When used as Mass Manufacturer Modifier:", "Multiplies recipes' input and output by 4, 3x Power Consumption");
addDescription(<avaritia:block_resource:1>, "When used as Mass Manufacturer Modifier:", "Multiplies recipes' input and output by 16, 25% chance to not consume fluid, 4x Power Consumption");

addDescription(<avaritia:block_resource:2>, "Can be used in both Elite Assembling Machine and Mass Manufacturer.", "", "When used as Elite Assembling Machine Modifier:", 
"3x Speed, 4x Power Consumption");
addDescription(<extendedcrafting:storage:4>, "Can be used in both Elite Assembling Machine and Mass Manufacturer.", "", "When used as Elite Assembling Machine Modifier:", 
"3.75x Speed, 1.3x Fluid Consumption, 7.5x Power Consumption", "", "When used as Mass Manufacturer Modifier:", "Multiplies recipes' input and output by 2, 2x Power Consumption");



addDescription(<modularmachinery:itemblueprint>.withTag({dynamicmachine: "modularmachinery:assemblermkfour"}), 
"Central block modifer",
"Ultimate Ingot: Multiplies recipes' input and output by 2, 2x Power Consumption",
"Neutronium: Multiplies recipes' input and output by 4, 3x Power Consumption",
"Infinity Ingot: Multiplies recipes' input and output by 16, 25% chance to not consume fluid, 4x Power Consumption");

/*
// Special Modifiers //

// Tooltips

var specialmodifiers as IItemStack[] = [
<nuclearcraft:fertile_isotope:5>,
<nuclearcraft:fertile_isotope:6>,
<rockhounding_chemistry:alloy_blocks_tech:15>,
<rockhounding_chemistry:alloy_blocks_deco>,
<rockhounding_chemistry:alloy_blocks_deco:11>
];

for item in specialmodifiers {
	item.addTooltip(format.aqua("Assembling Machine Special Modifier"));
}

//JEI Descriptions
addDescription(<nuclearcraft:fertile_isotope:5>, "Can be used in all Assembling Machine multiblocks.", "", "When used as Assembling Machine Modifier:", "10% chance to not consume fluid, 1.5x Power Consumption");
addDescription(<nuclearcraft:fertile_isotope:6>, "Can be used in all Assembling Machine multiblocks above Advanced tier.", "", "When used as Assembling Machine Modiffier:", 
"20% chance to not consume fluid, 2x Power Consumption");
addDescription(<rockhounding_chemistry:alloy_blocks_tech:15>, "Can be used in all Assembling Machine multiblocks except Mass Manufacturer.", "", "When used as Assembling Machine Modifier:", 
"0.5x Speed, 0.5x Power Consumption");
addDescription(<rockhounding_chemistry:alloy_blocks_deco>, "Can be used in all Assembling Machine multiblocks except Mass Manufacturer.", "", "When used as Assembling Machine Modifier:", 
"0.125x Speed, 0.0625x Power Consumption");
addDescription(<rockhounding_chemistry:alloy_blocks_deco:11>, "Can be used in both Advanced Assembling Machine and Elite Assembling Machine", "", "When used as Assembling Machine Modifier:", 
"5x Speed, 5.5x Power Consumption, 5% chance for item outputs to be destroyed");

*/

##########################################################################################
print("==================== end of assemblerrecipes.zs ====================");
