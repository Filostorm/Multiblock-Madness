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

Transposer.addFillRecipe(<contenttweaker:ingot_thermal_alloy>, <contenttweaker:hot_thermal_alloy>, <liquid:emergency_coolant> * 1000, 10000);
mods.nuclearcraft.Infuser.addRecipe(<contenttweaker:hot_thermal_alloy>, <liquid:emergency_coolant>*1000, <contenttweaker:ingot_thermal_alloy>);

/* Osmium option
Transposer.addFillRecipe(<contenttweaker:ingot_thermal_alloy>, <contenttweaker:hot_thermal_alloy>, <liquid:osmium> * 144, 10000);
mods.nuclearcraft.Infuser.addRecipe(<contenttweaker:hot_thermal_alloy>, <liquid:osmium>*144, <contenttweaker:ingot_thermal_alloy>);
*/

//Fluid?
//Melting.addRecipe(<liquid:orichalcum> * 1296, <contenttweaker:sub_block_holder_0>);
//Casting.addBasinRecipe(<contenttweaker:sub_block_holder_0>, null, <liquid:orichalcum>, 1296);

//Starmetal Plated Platinum
Inscriber.addRecipe(<contenttweaker:prepared_starmetal>, <thermalfoundation:material:134>, false, <appliedenergistics2:material:45>, <astralsorcery:itemcraftingcomponent:2>);
blastFurnace.addRecipe(<contenttweaker:ingot_reinforced_starmetal>, null, <contenttweaker:prepared_starmetal>, null, 300, 512, 2000);
Aggregator.addRecipe(<contenttweaker:ingot_reinforced_starmetal>, <thermalfoundation:material:134>, <astralsorcery:itemcraftingcomponent:2>, <appliedenergistics2:material:45>);


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
AlloyFurnace.addRecipe(<ore:ingotTitanium>*6, <ore:dustMolybdenum>, <contenttweaker:ingot_staballoy>*6);

//This is probably way too high lol
mods.nuclearcraft.FissionIrradiator.addRecipe(<contenttweaker:ingot_staballoy>, <contenttweaker:excited_mek_alloy>, 100000, 0, 0.25, 0);
mods.nuclearcraft.Radiation.setRadiationLevel(<contenttweaker:excited_mek_alloy>, 100);

//Has an upgraded alloy smelter recipe
mods.inworldcrafting.FluidToItem.transform(<contenttweaker:ingot_mek_alloy>, <liquid:radaway>, [<contenttweaker:component_mek_alloy>,<contenttweaker:excited_mek_alloy>], true);


//Mirion
blastFurnace.addRecipe(<contenttweaker:hot_cobalt>, null, <tconstruct:ingots>, <mysticalagriculture:crafting:32>, 250, 1024, 3000);

FluidToFluid.transform(<liquid:base_mirion>, <liquid:glass>, [<contenttweaker:hot_cobalt>], true);
FluidToFluid.transform(<liquid:prepared_mirion>, <liquid:base_mirion>, [<botania:manaresource>,<botania:manaresource:7>,<botania:manaresource:4>], true);
FluidToItem.transform(<plustic:mirioningot>*2, <liquid:prepared_mirion>, [<enderio:item_material:16>], true);



////////////// GRINDING BALLS //////////////////

recipes.addShaped(<contenttweaker:grindingball_mixedwill>, [
    [null, <bloodmagic:item_demon_crystal:1>, null],
    [<bloodmagic:item_demon_crystal:4>, <bloodmagic:item_demon_crystal>, <bloodmagic:item_demon_crystal:2>], 
    [null, <bloodmagic:item_demon_crystal:3>, null]
]);




##########################################################################################
print("==================== end of CTMR.zs ====================");
