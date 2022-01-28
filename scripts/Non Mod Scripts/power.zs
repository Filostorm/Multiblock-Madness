import crafttweaker.item.IItemStack;
import crafttweaker.liquid.ILiquidStack;
import crafttweaker.item.IIngredient;

#priority 97

print("==================== loading mods power.zs ====================");
##########################################################################################

// New Diesel Generator Fuels //
mods.immersiveengineering.DieselHandler.addFuel(<liquid:canolaoil>, 12);
mods.immersiveengineering.DieselHandler.addFuel(<liquid:refinedcanolaoil>, 44);
mods.immersiveengineering.DieselHandler.addFuel(<liquid:crystaloil>, 244);

/*
// --==Immersive Tech Rebalance==-- //

// Steam Turbine conversion rate is now roughly 1mb steam --> 4RF
mods.immersivetechnology.SteamTurbine.removeFuel(<liquid:steam>);

# mods.immersivetechnology.SteamTurbine.addFuel(<liquid:exhauststeam> * 6300, <liquid:steam> * 6300, 1); //Revert back to this if you can find out how the IT config works
mods.immersivetechnology.SteamTurbine.addFuel(<liquid:exhauststeam> * 3150, <liquid:steam> * 3150, 1);

// Readjusting Cooling Tower, Distiller and Boiler recipes to new steam values above
//// mods.immersivetechnology.CoolingTower.addRecipe(ILiquidStack outputFluid1, ILiquidStack outputFluid2, ILiquidStack outputFluid3, ILiquidStack inputFluid1, ILiquidStack inputFluid2, int time);
mods.immersivetechnology.CoolingTower.removeRecipe(<liquid:exhauststeam>, <liquid:water>);
mods.immersivetechnology.CoolingTower.removeRecipe(<liquid:exhauststeam>, <liquid:distwater>);

mods.immersivetechnology.CoolingTower.addRecipe(<liquid:water> * 6000, <liquid:water> * 6000, <liquid:water> * 6000, <liquid:exhauststeam> * 900, <liquid:water> * 10000, 1);
mods.immersivetechnology.CoolingTower.addRecipe(<liquid:distwater> * 5500, <liquid:distwater> * 5500,<liquid:distwater> * 5500, <liquid:exhauststeam> * 9000, <liquid:distwater> * 10000, 1);

mods.immersivetechnology.Distiller.removeRecipe(<liquid:water>);
mods.immersivetechnology.Distiller.addRecipe(<liquid:distwater> * 6300, <liquid:water> * 12600, <mekanism:salt>, 1000, 2, 1);

mods.immersivetechnology.Boiler.removeRecipe(<liquid:water>);
mods.immersivetechnology.Boiler.removeRecipe(<liquid:distwater>);

mods.immersivetechnology.Boiler.addRecipe(<liquid:steam> * 11340, <liquid:water> * 6300, 2);
mods.immersivetechnology.Boiler.addRecipe(<liquid:steam> * 12600, <liquid:distwater> * 6300, 2);
*/
// New Boiler Fuel Recipes

val boilerfluidstoremove =
[
    <liquid:biodiesel>,
    <liquid:diesel>,
    <liquid:gasoline>
]
 as ILiquidStack[];

for fluid in boilerfluidstoremove {
    mods.immersivetechnology.Boiler.removeFuel(fluid);
}

val newboilerfluids =
[
    <liquid:biodiesel>*12,
    <liquid:diesel>*7,
    <liquid:gasoline>*11,
    <liquid:canolaoil>*123,
    <liquid:refinedcanolaoil>*34,
    <liquid:crystaloil>*6,
    <liquid:empoweredoil>*2,
    <liquid:creosote>*153,
    <liquid:syngas>*12,
    <liquid:blended_diesel>*7,
    <liquid:boosted_diesel>*3
]
 as ILiquidStack[];

for fluid in newboilerfluids {
    mods.immersivetechnology.Boiler.addFuel(fluid, 1, 10);
}

// New Gas Turbine Fuel Recipes

val gasturbinefluidstoremove =
[
    <liquid:biodiesel>,
    <liquid:diesel>,
    <liquid:gasoline>
]
 as ILiquidStack[];

for fluid in gasturbinefluidstoremove {
    mods.immersivetechnology.GasTurbine.removeFuel(fluid);
}

val newgasturbinefluids =
[
    <liquid:biodiesel>*120,
    <liquid:diesel>*70,
    <liquid:gasoline>*110,
    <liquid:canolaoil>*1230,
    <liquid:refinedcanolaoil>*340,
    <liquid:crystaloil>*60,
    <liquid:empoweredoil>*20,
    <liquid:creosote>*1530,
    <liquid:syngas>*120,
    <liquid:blended_diesel>*70,
    <liquid:boosted_diesel>*30
]
 as ILiquidStack[];

for fluid in newgasturbinefluids {
    mods.immersivetechnology.GasTurbine.addFuel(<liquid:fluegas> * 1000, fluid, 10);
}
/*
// New Solar Tower Recipes
mods.immersivetechnology.SolarTower.removeRecipe(<liquid:water>);
mods.immersivetechnology.SolarTower.removeRecipe(<liquid:distwater>);
mods.immersivetechnology.SolarTower.addRecipe(<liquid:steam> * 22680, <liquid:water> * 12600, 10);
mods.immersivetechnology.SolarTower.addRecipe(<liquid:steam> * 25200, <liquid:distwater> * 12600, 10);
*/
// --==Thermal Dynamo Rebalance==-- //

// Compression Dynamo //
val fuelstoremove =
[
<liquid:refined_fuel>,
<liquid:oil>,
<liquid:diesel>,
<liquid:hootch>,
<liquid:canolaoil>,
<liquid:refinedcanolaoil>,
<liquid:crystaloil>,
<liquid:empoweredoil>,
<liquid:creosote>,
<liquid:crude_oil>,
<liquid:refined_oil>,
<liquid:coal>,
<liquid:refined_biofuel>,
<liquid:biodiesel>,
<liquid:gasoline>,
<liquid:tree_oil>,
<liquid:seed_oil>,
<liquid:fire_water>,
<liquid:rocket_fuel>
]
 as ILiquidStack[];

for fluid in fuelstoremove {
    mods.thermalexpansion.CompressionDynamo.removeFuel(fluid);
}

// Canola
mods.thermalexpansion.CompressionDynamo.addFuel(<liquid:canolaoil>, 100000);
mods.thermalexpansion.CompressionDynamo.addFuel(<liquid:refinedcanolaoil>, 360000);
mods.thermalexpansion.CompressionDynamo.addFuel(<liquid:crystaloil>, 2000000);
mods.thermalexpansion.CompressionDynamo.addFuel(<liquid:empoweredoil>, 7500000);

// Miscellaneous Early Game Fuels
mods.thermalexpansion.CompressionDynamo.addFuel(<liquid:creosote>, 80000);
mods.thermalexpansion.CompressionDynamo.addFuel(<liquid:biomass>, 200000);
mods.thermalexpansion.CompressionDynamo.addFuel(<liquid:oil>, 400000);
mods.thermalexpansion.CompressionDynamo.addFuel(<liquid:crude_oil>, 400000);
mods.thermalexpansion.CompressionDynamo.addFuel(<liquid:coal>, 400000);
mods.thermalexpansion.CompressionDynamo.addFuel(<liquid:syngas>, 1000000);

// IE fuels
mods.thermalexpansion.CompressionDynamo.addFuel(<liquid:diesel>, 1650000);
mods.thermalexpansion.CompressionDynamo.addFuel(<liquid:biodiesel>, 1050000);
mods.thermalexpansion.CompressionDynamo.addFuel(<liquid:gasoline>, 1150000);
mods.thermalexpansion.CompressionDynamo.addFuel(<liquid:blended_diesel>, 1650000);
mods.thermalexpansion.CompressionDynamo.addFuel(<liquid:boosted_diesel>, 3700000);

// Thermal Fuels
mods.thermalexpansion.CompressionDynamo.addFuel(<liquid:refined_oil>, 1200000);
mods.thermalexpansion.CompressionDynamo.addFuel(<liquid:refined_fuel>, 2000000);
mods.thermalexpansion.CompressionDynamo.addFuel(<liquid:tree_oil>, 1200000);
mods.thermalexpansion.CompressionDynamo.addFuel(<liquid:seed_oil>, 1000000);
mods.thermalexpansion.CompressionDynamo.addFuel(<liquid:refined_biofuel>, 2500000);

// Grassoline Rebalance
mods.thermalexpansion.Refinery.removeRecipe(<liquid:biocrude>);
mods.thermalexpansion.Refinery.addRecipe(<liquid:refined_biofuel> * 400, null, <liquid:biocrude> * 200, 5000);

// EnderIO Fuels
mods.thermalexpansion.CompressionDynamo.addFuel(<liquid:hootch>, 600000);
mods.thermalexpansion.CompressionDynamo.addFuel(<liquid:fire_water>, 1200000);
mods.thermalexpansion.CompressionDynamo.addFuel(<liquid:rocket_fuel>, 1500000);

// AR Rocket Fuel
mods.thermalexpansion.CompressionDynamo.addFuel(<liquid:rocketfuel>, 20000000);

// Other Fuels
mods.thermalexpansion.CompressionDynamo.addFuel(<liquid:fluidnitrodiesel>, 10000000);

// Reactant Dynamo //

// Nerf Pyrotheum fuel value in Magmatic Dynamo
mods.thermalexpansion.MagmaticDynamo.removeFuel(<liquid:pyrotheum>);
mods.thermalexpansion.MagmaticDynamo.addFuel(<liquid:pyrotheum>, 1200000);

// Buff Elemental Reactions
mods.thermalexpansion.ReactantDynamo.removeReactionElemental(<thermalfoundation:material:1025>, <liquid:pyrotheum>);
mods.thermalexpansion.ReactantDynamo.removeReactionElemental(<thermalfoundation:material:1024>, <liquid:cryotheum>);
mods.thermalexpansion.ReactantDynamo.removeReactionElemental(<thermalfoundation:material:1027>, <liquid:aerotheum>);
mods.thermalexpansion.ReactantDynamo.removeReactionElemental(<thermalfoundation:material:1026>, <liquid:petrotheum>);

mods.thermalexpansion.ReactantDynamo.removeReaction(<thermalfoundation:material:1025>, <liquid:pyrotheum>);
mods.thermalexpansion.ReactantDynamo.removeReaction(<thermalfoundation:material:1024>, <liquid:cryotheum>);
mods.thermalexpansion.ReactantDynamo.removeReaction(<thermalfoundation:material:1027>, <liquid:aerotheum>);
mods.thermalexpansion.ReactantDynamo.removeReaction(<thermalfoundation:material:1026>, <liquid:petrotheum>);

mods.thermalexpansion.ReactantDynamo.addReactionElemental(<thermalfoundation:material:1025>, <liquid:pyrotheum>, 480000);
mods.thermalexpansion.ReactantDynamo.addReactionElemental(<thermalfoundation:material:1024>, <liquid:cryotheum>, 480000);
mods.thermalexpansion.ReactantDynamo.addReactionElemental(<thermalfoundation:material:1027>, <liquid:aerotheum>, 550000);
mods.thermalexpansion.ReactantDynamo.addReactionElemental(<thermalfoundation:material:1026>, <liquid:petrotheum>, 550000);

// Removing Heat Generators & Lava Heat Exchangers //
mods.jei.JEI.removeAndHide(<mekanismgenerators:generator>);
mods.jei.JEI.removeAndHide(<enderio:block_lava_generator>);

##########################################################################################
print("==================== end of mods power.zs ====================");
