#priority 98

import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;
import mods.thermalexpansion.Compactor;
import mods.immersiveengineering.MetalPress;
import mods.appliedenergistics2.Inscriber;
import mods.threng.Aggregator;
import mods.nuclearcraft.Infuser;
import mods.thermalexpansion.Transposer;
import mods.techreborn.blastFurnace;
import mods.thermalexpansion.InductionSmelter;
import mods.nuclearcraft.AlloyFurnace;
import mods.inworldcrafting.FluidToItem;
import mods.inworldcrafting.FluidToFluid;

print("==================== loading CTMR.zs ====================");
##########################################################################################

//Thermal Alloy
recipes.addShaped(<contenttweaker:stacc_thermal_alloy> * 3, [[<thermalfoundation:material:357>, <thermalfoundation:material:357>, <thermalfoundation:material:357>],[<thermalfoundation:material:358>, <thermalfoundation:material:358>, <thermalfoundation:material:358>], [<thermalfoundation:material:359>, <thermalfoundation:material:359>, <thermalfoundation:material:359>]]);

//Hot
mods.thermalexpansion.Infuser.addRecipe(<contenttweaker:hot_thermal_alloy>, <contenttweaker:stacc_thermal_alloy>, 25000);

//Cooled
/*
Transposer.addFillRecipe(<contenttweaker:ingot_thermal_alloy>, <contenttweaker:hot_thermal_alloy>, <liquid:emergency_coolant> * 1000, 10000);
mods.nuclearcraft.Infuser.addRecipe(<contenttweaker:hot_thermal_alloy>, <liquid:emergency_coolant>*1000, <contenttweaker:ingot_thermal_alloy>);
*/

Transposer.addFillRecipe(<contenttweaker:ingot_thermal_alloy>, <contenttweaker:hot_thermal_alloy>, <liquid:osmium> * 144, 10000);
mods.nuclearcraft.Infuser.addRecipe(<contenttweaker:hot_thermal_alloy>, <liquid:osmium>*144, <contenttweaker:ingot_thermal_alloy>);

//Fluid?
//Melting.addRecipe(<liquid:orichalcum> * 1296, <contenttweaker:sub_block_holder_0>);
//Casting.addBasinRecipe(<contenttweaker:sub_block_holder_0>, null, <liquid:orichalcum>, 1296);




//Starmetal Plated Platinum
Inscriber.addRecipe(<contenttweaker:prepared_starmetal>, <thermalfoundation:material:134>, false, <appliedenergistics2:material:45>, <astralsorcery:itemcraftingcomponent:2>);
blastFurnace.addRecipe(<contenttweaker:ingot_reinforced_starmetal>, null, <contenttweaker:prepared_starmetal>, null, 300, 512, 2000);
Aggregator.addRecipe(<contenttweaker:ingot_reinforced_starmetal>, <thermalfoundation:material:134>, <astralsorcery:itemcraftingcomponent:2>, <appliedenergistics2:material:45>);


//Mek Alloy

// mk 1-3
mods.modularmachinery.RecipeBuilder.newBuilder("assemblermkone" + "_component_mek_alloy", "assemblermkone", 50)
	.addEnergyPerTickInput(8000)
	.addItemOutput(<contenttweaker:component_mek_alloy>*2)
	.addItemInput(<mekanism:enrichedalloy>)
	.addItemInput(<mekanism:reinforcedalloy>)
	.addItemInput(<mekanism:atomicalloy>)
	.addFluidInput(<liquid:hydrochloric_acid>*250)
	.build();	

// mk 4
mods.modularmachinery.RecipeBuilder.newBuilder("assemblermkfour" + "_component_mek_alloy", "assemblermkfour", 1)
	.addEnergyPerTickInput(180000)
	.addItemOutput(<contenttweaker:component_mek_alloy>*2)
	.addItemInput(<mekanism:enrichedalloy>)
	.addItemInput(<mekanism:reinforcedalloy>)
	.addItemInput(<mekanism:atomicalloy>)
	.addFluidInput(<liquid:hydrochloric_acid>*250)
	.build();	

val depletedUranium =
[
<nuclearcraft:depleted_fuel_uranium:9>,
<nuclearcraft:depleted_fuel_uranium:10>,
<nuclearcraft:depleted_fuel_uranium:11>,
<nuclearcraft:depleted_fuel_uranium:13>,
<nuclearcraft:depleted_fuel_uranium:14>,
<nuclearcraft:depleted_fuel_uranium:15>,
]
 as IItemStack[];
for item in depletedUranium {
<ore:depletedUranium>.add(item);
}

//Staballoy
AlloyFurnace.addRecipe(<ore:ingotTitanium>, <ore:depletedUranium>*3, <contenttweaker:ingot_staballoy>);
AlloyFurnace.addRecipe(<ore:ingotTitanium>, <ore:ingotTBU>, <contenttweaker:ingot_staballoy>);
AlloyFurnace.addRecipe(<ore:ingotTitanium>*3, <ore:dustMolybdenum>, <contenttweaker:ingot_staballoy>*3);

//This is probably way too high lol
mods.nuclearcraft.FissionIrradiator.addRecipe(<contenttweaker:ingot_staballoy>, <contenttweaker:excited_mek_alloy>, 100000, 0, 0.25, 0);
mods.nuclearcraft.Radiation.setRadiationLevel(<contenttweaker:excited_mek_alloy>, 100);

//Has an upgraded alloy smelter recipe
mods.inworldcrafting.FluidToItem.transform(<contenttweaker:ingot_mek_alloy>, <liquid:radaway>, [<contenttweaker:component_mek_alloy>,<contenttweaker:excited_mek_alloy>], true);


//Miron
blastFurnace.addRecipe(<contenttweaker:hot_cobalt>, null, <tconstruct:ingots>, <mysticalagriculture:crafting:32>, 250, 1024, 3000);

FluidToFluid.transform(<liquid:base_mirion>, <liquid:glass>, [<contenttweaker:hot_cobalt>], true);
FluidToFluid.transform(<liquid:prepared_mirion>, <liquid:base_mirion>, [<botania:manaresource>,<botania:manaresource:7>,<botania:manaresource:4>], true);
FluidToItem.transform(<plustic:mirioningot>*2, <liquid:prepared_mirion>, [<enderio:item_material:17>], true);


################# PLATES #######################
val mapNewPlates as IItemStack[IItemStack] = {
	<modularmachinery:itemmodularium>:<contenttweaker:plate_modularium>,
	<contenttweaker:ingot_thermal_alloy>:<contenttweaker:plate_thermal_alloy>,
	<contenttweaker:ingot_mek_alloy>:<contenttweaker:plate_mek_alloy>,
} as IItemStack[IItemStack];

for material, output in mapNewPlates {
	MetalPress.addRecipe(output, material, <immersiveengineering:mold>, 2000);
	Compactor.addStorageRecipe(output, material, 2000);
}


################# Rods #######################
val mapNewRods as IItemStack[IItemStack] = {
	<contenttweaker:ingot_thermal_alloy>:<contenttweaker:rod_thermal_alloy>,
} as IItemStack[IItemStack];

for material, output in mapNewRods {
	MetalPress.addRecipe(output*2, material, <immersiveengineering:mold:2>, 2000);
}



################# GEARS #######################
val mapNewGears as IItemStack[IItemStack] = {
	<modularmachinery:itemmodularium>:<contenttweaker:gear_modularium>,
	<contenttweaker:ingot_thermal_alloy>:<contenttweaker:gear_thermal_alloy>,
	<contenttweaker:ingot_mek_alloy>:<contenttweaker:gear_mek_alloy>,
} as IItemStack[IItemStack];

for material, output in mapNewGears {
	MetalPress.addRecipe(output, material*4, <immersiveengineering:mold:1>, 2000);
	Compactor.addGearRecipe(output, material*4, 4000);
}


################# BLOCKS #######################
val mapNewBlocks as IItemStack[IItemStack] = {
	<contenttweaker:ingot_thermal_alloy>:<contenttweaker:block_thermal_alloy>,
	<contenttweaker:ingot_mek_alloy>:<contenttweaker:block_mek_alloy>,
} as IItemStack[IItemStack];

for ingot, block in mapNewBlocks {
recipes.addShaped(block, [
	[ingot, ingot, ingot],
	[ingot, ingot, ingot], 
	[ingot, ingot, ingot]
]);
recipes.addShapeless(ingot * 9, [block]);
}


################# SCAFFOLDING #######################

recipes.addShaped(<contenttweaker:scaffolding_thermal_alloy> * 6, [
	[<contenttweaker:ingot_thermal_alloy>, <contenttweaker:ingot_thermal_alloy>, <contenttweaker:ingot_thermal_alloy>],
	[null, <contenttweaker:rod_thermal_alloy>, null], 
	[<contenttweaker:rod_thermal_alloy>, null, <contenttweaker:rod_thermal_alloy>]]);

// mk 1-3
mods.modularmachinery.RecipeBuilder.newBuilder("assemblermkone" + "_thermal_alloy_scaffolding", "assemblermkone", 50)
	.addEnergyPerTickInput(500)
	.addItemOutput(<contenttweaker:scaffolding_thermal_alloy>*9)
	.addItemInput(<contenttweaker:ingot_thermal_alloy>*3)
	.addItemInput(<contenttweaker:rod_thermal_alloy>*3)
	.build();	

// mk 4
mods.modularmachinery.RecipeBuilder.newBuilder("assemblermkfour" + "_thermal_alloy_scaffolding", "assemblermkfour", 1)
	.addEnergyPerTickInput(180000)
	.addItemOutput(<contenttweaker:scaffolding_thermal_alloy>*9)
	.addItemInput(<contenttweaker:ingot_thermal_alloy>*3)
	.addItemInput(<contenttweaker:rod_thermal_alloy>*3)
	.build();	




################# SHEETMETAL #######################
var SheetmetalPlate as IItemStack[IItemStack] = {
<contenttweaker:plate_thermal_alloy>:<contenttweaker:sheetmetal_thermal_alloy>,
<contenttweaker:plate_mek_alloy>:<contenttweaker:sheetmetal_mek_alloy>,
};
for material, output in SheetmetalPlate {
recipes.addShaped(output * 4, [[null, material, null],[material, null, material], [null, material, null]]);
}

##########################################################################################
print("==================== end of CTMR.zs ====================");
