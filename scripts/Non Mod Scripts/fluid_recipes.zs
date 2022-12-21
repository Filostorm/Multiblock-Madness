import crafttweaker.item.IItemStack;
import crafttweaker.liquid.ILiquidStack;
import crafttweaker.item.IIngredient;
import mods.thermalexpansion.Transposer;
import mods.nuclearcraft.Infuser;
import mods.nuclearcraft.Extractor;
import mods.thermalexpansion.Imbuer;
import mods.nuclearcraft.Enricher;

#priority 98

print("==================== loading fluid_recipes.zs ====================");
##########################################################################################

###################################################
########     FLUID INFUSION       #################
###################################################

/*
Transposer.addFillRecipe(IItemStack output, IItemStack input, ILiquidStack fluid, int energy);
Infuser.addRecipe(IIngredient itemInput, ILiquidStack fluidInput, IIngredient itemOutput, @Optional double timeMultiplier, @Optional double powerMultiplier, @Optional double processRadiation);
*/

// --== Fluid Transposer Compat ==-- //
// For recipes in the Fluid Infuser but not in the Fluid Transposer

// Oxygen Recipes

val oxygenRecipes = {
    <nuclearcraft:dust:14>:<techreborn:dust:31>,
    <nuclearcraft:ingot:14>:<nuclearcraft:ingot:11>,
    <nuclearcraft:dust:15>:<nuclearcraft:dust:14>,
    <nuclearcraft:ingot:15>:<nuclearcraft:ingot:14>,
    <qmd:chemical_dust:4>:<thermalfoundation:material:64>,
    <qmd:chemical_dust>:<techreborn:dust:55>,
    <qmd:chemical_dust:5>:<qmd:dust:6>,
} as IItemStack[IItemStack];

for output, input in oxygenRecipes {
    Transposer.addFillRecipe(output, input, <liquid:oxygen> * 1000, 10000);
    Transposer.addFillRecipe(output, input, <liquid:liquidoxygen> * 1000, 10000);
}

// Strontium Chloride
Transposer.addFillRecipe(<qmd:chemical_dust:6>, <qmd:dust:14>, <liquid:hydrochloric_acid> * 2000, 10000);

// Silicon Carbide Fiber
Transposer.addFillRecipe(<nuclearcraft:part:13>, <powersuits:powerarmorcomponent:14>, <liquid:fluidsilicon> * 288, 20000);
Transposer.addFillRecipe(<nuclearcraft:part:13>, <powersuits:powerarmorcomponent:14>, <liquid:silicon> * 288, 20000);

// Supercold Ice
Transposer.addFillRecipe(<nuclearcraft:supercold_ice>, <minecraft:ice>, <liquid:liquid_helium> * 50, 1000);
Transposer.addFillRecipe(<nuclearcraft:supercold_ice>, <minecraft:packed_ice>, <liquid:liquid_helium> * 50, 1000);

// Discharge Lamps
for item in <ore:blockGlassHardened>.items {
    Transposer.addFillRecipe(<nuclearcraft:tritium_lamp>, item, <liquid:tritium> * 1000, 10000);
    Transposer.addFillRecipe(<nuclearcraft:tritium_lamp>, item, <liquid:liquidtritium> * 1000, 10000);
}

val QMDlamps = {
    <qmd:discharge_lamp:1>:[<liquid:hydrogen>, <liquid:liquidhydrogen>, <liquid:fluidhydrogen>],
    <qmd:discharge_lamp:2>:[<liquid:helium>],
    <qmd:discharge_lamp:3>:[<liquid:nitrogen>, <liquid:fluidnitrogen>],
    <qmd:discharge_lamp:4>:[<liquid:oxygen>, <liquid:liquidoxygen>],
    <qmd:discharge_lamp:5>:[<liquid:neon>],
    <qmd:discharge_lamp:6>:[<liquid:argon>],
} as ILiquidStack[][IItemStack];

for lamp, fluids in QMDlamps {
    for fluid in fluids {
        Transposer.addFillRecipe(lamp, <qmd:discharge_lamp>, fluid * 250, 10000);
    }
}

Transposer.addFillRecipe(<qmd:discharge_lamp2:1>, <qmd:discharge_lamp:6>, <liquid:mercury> * 144, 10000);
Transposer.addFillRecipe(<qmd:discharge_lamp2>, <qmd:discharge_lamp:6>, <liquid:moltensodium> * 144, 10000);
Transposer.addFillRecipe(<qmd:discharge_lamp2>, <qmd:discharge_lamp:6>, <liquid:liquidsodium> * 144, 10000);
Transposer.addFillRecipe(<qmd:discharge_lamp2>, <qmd:discharge_lamp:6>, <liquid:fluidsodium> * 144, 10000);

// End Stone

val oreSandstoneRed = [
    <minecraft:sandstone>,
    <minecraft:sandstone:1>,
    <minecraft:sandstone:2>,
    <minecraft:red_sandstone>,
    <minecraft:red_sandstone:1>,
    <minecraft:red_sandstone:2>,
] as IItemStack[];

for item in oreSandstoneRed {
    Transposer.addFillRecipe(<minecraft:end_stone>, item, <liquid:ender> * 250, 10000);
}

// Treated Wood Planks

for item in <ore:plankWood>.items {
    Transposer.addFillRecipe(<immersiveengineering:treated_wood>, item, <liquid:creosote> * 125, 2000);
}

// Clay
Transposer.addFillRecipe(<minecraft:clay_ball>, <minecraft:brick>, <liquid:water> * 2000, 10000);
Transposer.addFillRecipe(<minecraft:clay>, <minecraft:hardened_clay>, <liquid:water> * 4000, 40000);
// Transposer.addFillRecipe(<minecraft:clay>, <minecraft:dirt>, <liquid:water> * 2000, 10000);
// Transposer.addFillRecipe(<minecraft:clay>, <minecraft:dirt:1>, <liquid:water> * 2000, 10000);
// Transposer.addFillRecipe(<minecraft:clay>, <minecraft:dirt:2>, <liquid:water> * 2000, 10000);
// Transposer.addFillRecipe(<minecraft:clay>, <minecraft:grass>, <liquid:water> * 2000, 10000);


// Canisters

val canisters = {
    <qmd:canister:1>.withTag({particle_storage: {particle_amount: 10000000}}):[<liquid:hydrogen>, <liquid:liquidhydrogen>, <liquid:fluidhydrogen>],
    <qmd:canister:2>.withTag({particle_storage: {particle_amount: 10000000}}):[<liquid:deuterium>, <liquid:liquiddeuterium>],
    <qmd:canister:3>.withTag({particle_storage: {particle_amount: 10000000}}):[<liquid:tritium>, <liquid:liquidtritium>],
    <qmd:canister:4>.withTag({particle_storage: {particle_amount: 10000000}}):[<liquid:helium_3>],
    <qmd:canister:5>.withTag({particle_storage: {particle_amount: 10000000}}):[<liquid:helium>],
    <qmd:canister:6>.withTag({particle_storage: {particle_amount: 10000000}}):[<liquid:diborane>],
} as ILiquidStack[][IItemStack];

for item, fluids in canisters {
    for fluid in fluids {
        Transposer.addFillRecipe(item, <qmd:canister>, fluid * 10000, 10000);
    }
}

// NC Infinite Sources
Transposer.addFillRecipe(<nuclearcraft:water_source>, <nuclearcraft:part:11>, <fluid:water> * 2000, 10000);
Transposer.addFillRecipe(<nuclearcraft:cobblestone_generator>, <nuclearcraft:water_source>, <fluid:lava> * 1000, 10000);

// Enderium Accelerator Cooler
Transposer.addFillRecipe(<qmd:accelerator_cooler2:14>, <qmd:part>, <liquid:enderium> * 576, 10000);


// Various NC/QMD Items
// Format is [input,output]:liquid

val NCItems = {
[<nuclearcraft:fission_heater_port>,<nuclearcraft:fission_heater_port2:12>]:<liquid:liquid_nitrogen>,
[<nuclearcraft:fission_heater_port>,<nuclearcraft:fission_heater_port2:13>]:<liquid:liquid_helium>,
[<nuclearcraft:part:14>,<nuclearcraft:solid_fission_sink>]:<liquid:water>,
[<nuclearcraft:part:14>,<nuclearcraft:solid_fission_sink2:12>]:<liquid:liquid_nitrogen>,
[<nuclearcraft:part:14>,<nuclearcraft:solid_fission_sink2:13>]:<liquid:liquid_helium>,
[<nuclearcraft:salt_fission_heater>,<nuclearcraft:salt_fission_heater2:12>]:<liquid:liquid_nitrogen>,
[<nuclearcraft:salt_fission_heater>,<nuclearcraft:salt_fission_heater2:13>]:<liquid:liquid_helium>,
[<nuclearcraft:part:11>,<nuclearcraft:heavy_water_moderator>]:<liquid:heavywater>,
[<qmd:part:1>,<qmd:particle_chamber_detector>]:<liquid:liquid_hydrogen>,
[<qmd:part:7>,<qmd:particle_chamber_detector:2>]:<liquid:liquid_argon>,
[<qmd:part>,<qmd:accelerator_cooler1>]:<liquid:water>,
[<qmd:part>,<qmd:accelerator_cooler2:12>]:<liquid:liquid_nitrogen>,
[<qmd:part>,<qmd:accelerator_cooler2:13>]:<liquid:liquid_helium>,
[<qmd:part>,<qmd:accelerator_cooler2:15>]:<liquid:cryotheum>,
} as ILiquidStack[IItemStack[]];

for items, fluid in NCItems {
    Transposer.addFillRecipe(items[1], items[0], fluid * 1000, 10000);
}


// --==NC Fuels for Fluid Transposer==-- //
// Recipes for Oxide/Nitride variants of all isotopes/fuels for the Fluid Transposer
// Format is original:[oxide,nitride]

val fuelalloying as IItemStack[][IItemStack] = {
    <nuclearcraft:uranium>:[<nuclearcraft:uranium:2>,<nuclearcraft:uranium:3>],
    <nuclearcraft:uranium:5>:[<nuclearcraft:uranium:7>,<nuclearcraft:uranium:8>],
    <nuclearcraft:uranium:10>:[<nuclearcraft:uranium:12>,<nuclearcraft:uranium:13>],
    <nuclearcraft:neptunium>:[<nuclearcraft:neptunium:2>,<nuclearcraft:neptunium:3>],
    <nuclearcraft:neptunium:5>:[<nuclearcraft:neptunium:7>,<nuclearcraft:neptunium:8>],
    <nuclearcraft:plutonium>:[<nuclearcraft:plutonium:2>,<nuclearcraft:plutonium:3>],
    <nuclearcraft:plutonium:5>:[<nuclearcraft:plutonium:7>,<nuclearcraft:plutonium:8>],
    <nuclearcraft:plutonium:10>:[<nuclearcraft:plutonium:12>,<nuclearcraft:plutonium:13>],
    <nuclearcraft:plutonium:15>:[<nuclearcraft:plutonium:17>,<nuclearcraft:plutonium:18>],
    <nuclearcraft:americium>:[<nuclearcraft:americium:2>,<nuclearcraft:americium:3>],
    <nuclearcraft:americium:5>:[<nuclearcraft:americium:7>,<nuclearcraft:americium:8>],
    <nuclearcraft:americium:10>:[<nuclearcraft:americium:12>,<nuclearcraft:americium:13>],
    <nuclearcraft:curium>:[<nuclearcraft:curium:2>,<nuclearcraft:curium:3>],
    <nuclearcraft:curium:5>:[<nuclearcraft:curium:7>,<nuclearcraft:curium:8>],
    <nuclearcraft:curium:10>:[<nuclearcraft:curium:12>,<nuclearcraft:curium:13>],
    <nuclearcraft:curium:15>:[<nuclearcraft:curium:17>,<nuclearcraft:curium:18>],
    <nuclearcraft:berkelium>:[<nuclearcraft:berkelium:2>,<nuclearcraft:berkelium:3>],
    <nuclearcraft:berkelium:5>:[<nuclearcraft:berkelium:7>,<nuclearcraft:berkelium:8>],
    <nuclearcraft:californium>:[<nuclearcraft:californium:2>,<nuclearcraft:californium:3>],
    <nuclearcraft:californium:5>:[<nuclearcraft:californium:7>,<nuclearcraft:californium:8>],
    <nuclearcraft:californium:10>:[<nuclearcraft:californium:12>,<nuclearcraft:californium:13>],
    <nuclearcraft:californium:15>:[<nuclearcraft:californium:17>,<nuclearcraft:californium:18>],
    <qmd:copernicium>:[<qmd:copernicium:2>,<qmd:copernicium:3>],
    <nuclearcraft:pellet_uranium>:[<nuclearcraft:fuel_uranium:1>,<nuclearcraft:fuel_uranium:2>],
    <nuclearcraft:pellet_uranium:2>:[<nuclearcraft:fuel_uranium:5>,<nuclearcraft:fuel_uranium:6>],
    <nuclearcraft:pellet_uranium:4>:[<nuclearcraft:fuel_uranium:9>,<nuclearcraft:fuel_uranium:10>],
    <nuclearcraft:pellet_uranium:6>:[<nuclearcraft:fuel_uranium:13>,<nuclearcraft:fuel_uranium:14>],
    <nuclearcraft:pellet_neptunium>:[<nuclearcraft:fuel_neptunium:1>,<nuclearcraft:fuel_neptunium:2>],
    <nuclearcraft:pellet_neptunium:2>:[<nuclearcraft:fuel_neptunium:5>,<nuclearcraft:fuel_neptunium:6>],
    <nuclearcraft:pellet_plutonium>:[<nuclearcraft:fuel_plutonium:1>,<nuclearcraft:fuel_plutonium:2>],
    <nuclearcraft:pellet_plutonium:2>:[<nuclearcraft:fuel_plutonium:5>,<nuclearcraft:fuel_plutonium:6>],
    <nuclearcraft:pellet_plutonium:4>:[<nuclearcraft:fuel_plutonium:9>,<nuclearcraft:fuel_plutonium:10>],
    <nuclearcraft:pellet_plutonium:6>:[<nuclearcraft:fuel_plutonium:13>,<nuclearcraft:fuel_plutonium:14>],
    <nuclearcraft:pellet_americium>:[<nuclearcraft:fuel_americium:1>,<nuclearcraft:fuel_americium:2>],
    <nuclearcraft:pellet_americium:2>:[<nuclearcraft:fuel_americium:5>,<nuclearcraft:fuel_americium:6>],
    <nuclearcraft:pellet_curium>:[<nuclearcraft:fuel_curium:1>,<nuclearcraft:fuel_curium:2>],
    <nuclearcraft:pellet_curium:2>:[<nuclearcraft:fuel_curium:5>,<nuclearcraft:fuel_curium:6>],
    <nuclearcraft:pellet_curium:4>:[<nuclearcraft:fuel_curium:9>,<nuclearcraft:fuel_curium:10>],
    <nuclearcraft:pellet_curium:6>:[<nuclearcraft:fuel_curium:13>,<nuclearcraft:fuel_curium:14>],
    <nuclearcraft:pellet_curium:8>:[<nuclearcraft:fuel_curium:17>,<nuclearcraft:fuel_curium:18>],
    <nuclearcraft:pellet_curium:10>:[<nuclearcraft:fuel_curium:21>,<nuclearcraft:fuel_curium:22>],
    <nuclearcraft:pellet_berkelium>:[<nuclearcraft:fuel_berkelium:1>,<nuclearcraft:fuel_berkelium:2>],
    <nuclearcraft:pellet_berkelium:2>:[<nuclearcraft:fuel_berkelium:5>,<nuclearcraft:fuel_berkelium:6>],
    <nuclearcraft:pellet_californium>:[<nuclearcraft:fuel_californium:1>,<nuclearcraft:fuel_californium:2>],
    <nuclearcraft:pellet_californium:2>:[<nuclearcraft:fuel_californium:5>,<nuclearcraft:fuel_californium:6>],
    <nuclearcraft:pellet_californium:4>:[<nuclearcraft:fuel_californium:9>,<nuclearcraft:fuel_californium:10>],
    <nuclearcraft:pellet_californium:6>:[<nuclearcraft:fuel_californium:13>,<nuclearcraft:fuel_californium:14>],
    <qmd:pellet_copernicium>:[<qmd:fuel_copernicium:1>,<qmd:fuel_copernicium:2>],
} as IItemStack[][IItemStack];

for fuel, newfuel in fuelalloying {
    Transposer.addFillRecipe(newfuel[0], fuel, <liquid:oxygen> * 1000, 12000);
    Transposer.addFillRecipe(newfuel[0], fuel, <liquid:liquidoxygen> * 1000, 12000);
    Transposer.addFillRecipe(newfuel[1], fuel, <liquid:nitrogen> * 1000, 12000);
    Transposer.addFillRecipe(newfuel[1], fuel, <liquid:fluidnitrogen> * 1000, 12000);
}


// --== Fluid Infuser Compat ==-- //
// For selected recipes in the Fluid Transposer but not in the Fluid Infuser
// Not all recipes are added to the Fluid Infuser for the purposes of gating

// Cryotheum Processing
Infuser.addRecipe(<ore:oreCinnabar>, <liquid:cryotheum> * 200, <thermalfoundation:material:866> * 4, 0.5);
Infuser.addRecipe(<thermalfoundation:material:893>, <liquid:cryotheum> * 200, <minecraft:redstone> * 2, 0.5);
Infuser.addRecipe(<thermalfoundation:material:894>, <liquid:cryotheum> * 200, <minecraft:glowstone_dust>, 0.5);
Infuser.addRecipe(<thermalfoundation:material:895>, <liquid:cryotheum> * 200, <minecraft:ender_pearl>, 0.5);


// (useless) Cryotheum Dust Recipes

Infuser.addRecipe(<thermalfoundation:material:1025>, <liquid:water> * 1000, <minecraft:ice>, 0.2, 0.2);
Infuser.addRecipe(<thermalfoundation:material:1025>, <liquid:redstone> * 1000, <minecraft:redstone> * 10, 0.2, 0.2);
Infuser.addRecipe(<thermalfoundation:material:1025>, <liquid:glowstone> * 1000, <minecraft:glowstone_dust> * 4, 0.2, 0.2);
Infuser.addRecipe(<thermalfoundation:material:1025>, <liquid:ender> * 1000, <minecraft:ender_pearl> * 4, 0.2, 0.2);

// Random Block Recipes

Infuser.addRecipe(<minecraft:ice>, <liquid:cryotheum> * 200, <minecraft:packed_ice>, 0.2, 0.2);
Infuser.addRecipe(<minecraft:sponge>, <liquid:water> * 1000, <minecraft:sponge:1>, 0.2, 0.2);
Infuser.addRecipe(<minecraft:cobblestone>, <liquid:water> * 250, <minecraft:mossy_cobblestone>, 0.5);
Infuser.addRecipe(<buildinggadgets:constructionblockpowder>, <liquid:water> * 1000, <buildinggadgets:constructionblock_dense>, 0.5);

// Bottle & Bowl recipes

Infuser.addRecipe(<minecraft:glass_bottle>, <liquid:water> * 250, <minecraft:potion>.withTag({Potion: "minecraft:water"}), 0.2, 0.2);
Infuser.addRecipe(<minecraft:glass_bottle>, <liquid:xpjuice> * 250, <minecraft:experience_bottle>, 0.2, 0.2);
Infuser.addRecipe(<minecraft:glass_bottle>, <liquid:experience> * 250, <minecraft:experience_bottle>, 0.2, 0.2);
Infuser.addRecipe(<minecraft:bowl>, <liquid:mushroom_stew> * 250, <minecraft:mushroom_stew>, 0.2, 0.2);

###################################################
########     FLUID EXTRACTION       ###############
###################################################

/*
Transposer.addExtractRecipe(ILiquidStack output, IItemStack input, int energy);
Transposer.addExtractRecipe(ILiquidStack output, IItemStack input, int energy, WeightedItemStack itemOut);
Extractor.addRecipe(IIngredient itemInput, IIngredient itemOutput, ILiquidStack fluidOutput, @Optional double timeMultiplier, @Optional double powerMultiplier, @Optional double processRadiation);
*/


// --== Fluid Transposer Compat ==-- //
// For recipes in the Fluid Extractor but not in the Fluid Transposer

Transposer.addExtractRecipe(<liquid:helium_3> * 250, <advancedrocketry:moonturf_dark>, 10000, <minecraft:gravel>);
Transposer.addExtractRecipe(<liquid:cocoa_butter> * 144, <nuclearcraft:ground_cocoa_nibs>, 10000, <nuclearcraft:cocoa_solids>);


// --== Fluid Extractor Compat ==-- //
// For selected recipes in the Fluid Transposer but not in the Fluid Extractor
// Not all recipes are added to the Fluid Extractor for the purposes of gating

Extractor.addRecipe(<minecraft:mushroom_stew>, <minecraft:bowl>, <liquid:mushroom_stew> * 250, 0.2, 0.2);
Extractor.addRecipe(<minecraft:sponge:1>, <minecraft:sponge>, <liquid:water> * 1000, 0.2, 0.2);
Extractor.addRecipe(<minecraft:potion>.withTag({Potion: "minecraft:water"}), <minecraft:glass_bottle>, <liquid:water> * 250, 0.4, 0.2);
Extractor.addRecipe(<minecraft:cactus>, null, <liquid:water> * 500, 0.5, 0.5);
Extractor.addRecipe(<minecraft:chorus_fruit_popped>, null, <liquid:liquidchorus> * 125, 0.5, 0.5);
Extractor.addRecipe(<integrateddynamics:menril_log>, null, <liquid:menrilresin> * 1000, 0.5, 0.5);



###################################################
########     FLUID ENRICHMENT       ###############
###################################################

/*
Imbuer.addRecipe(ILiquidStack output, IItemStack input, ILiquidStack inputFluid, int energy);
Enricher.addRecipe(IIngredient itemInput, ILiquidStack fluidInput, ILiquidStack fluidOutput, @Optional double timeMultiplier, @Optional double powerMultiplier, @Optional double processRadiation);
*/


// --== Alchemical Imbuer Compat ==-- //
// For recipes in the Fluid Enrichment Chamber but not in the Alchemical Imbuer

// Napalm
Imbuer.addRecipe(<liquid:napalm> * 500, <thermalfoundation:material:68> * 3, <liquid:gasoline> * 500, 12000);
Enricher.addRecipe(<thermalfoundation:material:68> * 3, <liquid:gasoline> * 500, <liquid:napalm> * 500);

// Water Enrichment
val slowEnrichment = {
    <nuclearcraft:gem_dust:4>:<liquid:boron_nitride_solution>,
    <nuclearcraft:gem_dust:5>:<liquid:fluorite_water>,
    <nuclearcraft:compound>:<liquid:calcium_sulfate_solution>,
    <nuclearcraft:compound:3>:<liquid:sodium_fluoride_solution>,
    <nuclearcraft:compound:4>:<liquid:potassium_fluoride_solution>,
    <nuclearcraft:compound:5>:<liquid:sodium_hydroxide_solution>,
    <mekanism:salt>:<liquid:sodium_chloride_solution>,
} as ILiquidStack[IItemStack];

for item, fluid in slowEnrichment {
    Imbuer.addRecipe(fluid * 666, item, <liquid:water> * 1000, 10000);
}

val fastEnrichment = {
    <nuclearcraft:compound:6>:<liquid:potassium_hydroxide_solution>,
    <nuclearcraft:compound:7>:<liquid:borax_solution>,
    <nuclearcraft:compound:8>:<liquid:irradiated_borax_solution>
} as ILiquidStack[IItemStack];

for item, fluid in fastEnrichment {
    Imbuer.addRecipe(fluid * 666, item, <liquid:water> * 1000, 5000);
}


// RadAway
Imbuer.addRecipe(<liquid:radaway> * 250, <nuclearcraft:glowing_mushroom> * 3, <liquid:ethanol> * 250, 5000);
Imbuer.addRecipe(<liquid:radaway_slow> * 250, <nuclearcraft:glowing_mushroom> * 3, <liquid:redstone_ethanol> * 250, 5000);

// Sodium Tungstate
Imbuer.addRecipe(<liquid:sodium_tungstate_solution> * 666, <qmd:chemical_dust>, <liquid:sodium_hydroxide_solution> * 1332, 10000);

// Lead Nitrate
Imbuer.addRecipe(<liquid:lead_nitrate_solution> * 666, <thermalfoundation:material:67>, <liquid:nitric_acid> * 1332, 10000);

// Neodymium Doped YAG
Imbuer.addRecipe(<liquid:yag> * 48, <qmd:ingot2>, <liquid:alumina> * 120, 50000);
Imbuer.addRecipe(<liquid:nd_yag> * 1296, <qmd:ingot2:1>, <liquid:yag> * 1296, 50000);

##########################################################################################
print("==================== end of fluid_recipes.zs ====================");