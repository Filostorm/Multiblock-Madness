import crafttweaker.item.IItemStack;
import mods.actuallyadditions.Empowerer;
import mods.techreborn.extractor;
import mods.techreborn.wireMill;
import mods.techreborn.rollingMachine;
import mods.techreborn.blastFurnace;
import mods.nuclearcraft.ChemicalReactor;
import mods.thermalexpansion.Transposer;
import mods.thermalexpansion.Centrifuge;
import mods.thermalexpansion.InductionSmelter;
import mods.techreborn.fusionReactor;
import mods.techreborn.scrapbox;
import mods.techreborn.fluidReplicator;
import mods.techreborn.industrialElectrolyzer;
import mods.rockhounding_chemistry.ProfilingBench;
import mods.extendedcrafting.CombinationCrafting;

print("==================== loading tech_reborn.zs ====================");
##########################################################################################


val itemstoRemove =
[
<techreborn:grinder>,
<techreborn:chemical_reactor>,
<techreborn:rolling_machine>,
<techreborn:wire_mill>,
<techreborn:cable:2>,
<techreborn:cable:6>,
<techreborn:machine_frame:1>,
<techreborn:industrial_blast_furnace>,
<techreborn:industrial_electrolyzer>,
<techreborn:machine_casing:1>,
<jaopca:item_gearhslasteel>,
<techreborn:part:2>,
<techreborn:upgrades>,
<techreborn:machine_casing:2>,
<techreborn:machine_casing>,
<techreborn:reinforced_glass>,
<techreborn:part:36>,
<techreborn:machine_frame:2>,
<techreborn:part:1>,
<techreborn:part:7>,
<techreborn:solar_panel>,
<techreborn:rockcutter>,
<techreborn:ingot:21>,
<techreborn:part:3>,
<techreborn:cable:3>,
<techreborn:refined_iron_fence>,
<techreborn:implosion_compressor>,
<techreborn:industrial_grinder>,
<techreborn:quantum_chest>,
<techreborn:recycler>,
<techreborn:fluid_replicator>,
<powersuits:powerarmorcomponent:14>,
<techreborn:cable:7>,
<techreborn:cable:4>,
]
 as IItemStack[];

for item in itemstoRemove {
	recipes.remove(item);
}

val itemstoHide =
[
<techreborn:vacuum_freezer>,
<techreborn:alloy_smelter>,
<techreborn:iron_alloy_furnace>,
<techreborn:iron_furnace>,
<techreborn:electric_furnace>,
<techreborn:solid_fuel_generator>,
<techreborn:plasma_generator>,
<techreborn:wind_mill>,
<techreborn:water_mill>,
<techreborn:thermal_generator>,
<techreborn:diesel_generator>,
<techreborn:semi_fluid_generator>,
<techreborn:nuke>,
<techreborn:industrial_centrifuge>,
<techreborn:distillation_tower>,
<techreborn:plate_bending_machine>,
<jaopca:item_stickrefinediron>,
<techreborn:gas_turbine>,
<techreborn:magic_energy_absorber>,
<techreborn:magic_energy_converter>,
<techreborn:part:21>,
<techreborn:part:22>,
<techreborn:part:23>,
<techreborn:depletedsinglethoriumfuelrod>,
<techreborn:depleteddualthoriumfuelrod>,
<techreborn:depletedquadthoriumfuelrod>,
<techreborn:singlethoriumfuelrod>,
<techreborn:dualthoriumfuelrod>,
<techreborn:quadthoriumfuelrod>,
<techreborn:solid_canning_machine>,
<techreborn:part:34>,
<techreborn:plates:11>,
<techreborn:compressor>,
<techreborn:grinder>,
<techreborn:chemical_reactor>,
<techreborn:part:46>,
<techreborn:part:44>,
<techreborn:part:45>,
<techreborn:part:25>,
<techreborn:pump>,
<techreborn:plates:3>,
<techreborn:plates:4>,
<techreborn:dust:9>
]
 as IItemStack[];

for item in itemstoHide {
	mods.jei.JEI.removeAndHide(item);
}

rollingMachine.removeRecipe(<minecraft:light_weighted_pressure_plate>);

// --== JEI Tooltips ==-- //

// UU Matter
<techreborn:uumatter>.addTooltip(format.darkPurple("Collected from the Matter Fabricator"));

// Zinc
<techreborn:dust:59>.addTooltip(format.gold("Processed from Sphalerite"));
<techreborn:ingot:18>.addTooltip(format.gold("Processed from Sphalerite"));

// Aluminium
<thermalfoundation:material:132>.addTooltip(format.gold("Processed from Bauxite"));
<thermalfoundation:material:68>.addTooltip(format.gold("Processed from Bauxite"));


// --== Materials and Intermediate Components ==-- //

// Advanced Metal Mixed
recipes.addShaped(<techreborn:ingot:21> * 32, [[<ore:ingotInconel>, <ore:ingotInconel>, <ore:ingotInconel>],[<ore:ingotCosm>, <ore:ingotCosm>, <ore:ingotCosm>], [<ore:ingotNib>, <ore:ingotNib>, <ore:ingotNib>]]);
recipes.addShaped(<techreborn:ingot:21> * 8, [[<ore:ingotTungsten>, <ore:ingotTungsten>, <ore:ingotTungsten>],[<ore:ingotPlatinum>, <ore:ingotPlatinum>, <ore:ingotPlatinum>], [<ore:ingotTitanium>, <ore:ingotTitanium>, <ore:ingotTitanium>]]);
recipes.addShaped(<techreborn:ingot:21> * 2, [[<ore:ingotRefinedIron>, <ore:ingotRefinedIron>, <ore:ingotRefinedIron>],[<ore:ingotBrass>, <ore:ingotBrass>, <ore:ingotBrass>], [<ore:ingotTin>, <ore:ingotTin>, <ore:ingotTin>]]);

// Refined Iron
furnace.remove(<techreborn:ingot:19>);
blastFurnace.removeRecipe(<techreborn:ingot:19>);
mods.immersiveengineering.ArcFurnace.addRecipe(<techreborn:ingot:19>*2, <minecraft:iron_ingot>, <thermalfoundation:material:865>, 400, 512, [<contenttweaker:limestone_flux>, <contenttweaker:slatedust>], "Alloying");
mods.immersiveengineering.ArcFurnace.addRecipe(<techreborn:ingot:19>, <minecraft:iron_ingot>, <immersiveengineering:material:7>, 300, 512, [<contenttweaker:limestone_flux>], "Alloying");
mods.thermalexpansion.InductionSmelter.addRecipe(<techreborn:ingot:19>, <minecraft:iron_ingot>, <contenttweaker:limestone_flux>, 10000, <thermalfoundation:material:864>, 25);
blastFurnace.addRecipe(<techreborn:ingot:19>*2, <thermalfoundation:material:865>, <minecraft:iron_ingot>, <contenttweaker:slatedust>, 200, 256, 1000);

// Plutonium
blastFurnace.addRecipe(<techreborn:ingot:25>, null, <techreborn:dust:67>, null, 400, 768, 2500);

// Hot Tungstensteel Ingot
blastFurnace.removeRecipe(<techreborn:ingot:16>);
blastFurnace.addRecipe(<techreborn:ingot:16>, <techreborn:dust:15>*4, <techreborn:ingot:15>, <thermalfoundation:material:160>, 800, 1024, 3000);

/*
//Hot Tungstensteel
Transposer.removeFillRecipe(<techreborn:ingot:16>, <liquid:cryotheum>);
Transposer.addFillRecipe(<thermalfoundation:material:167>, <nuclearcraft:alloy:9>, <liquid:emergency_coolant> * 500, 10000);
*/

// Reinforced Glass
blastFurnace.addRecipe(<techreborn:reinforced_glass>*2, null, <thermalfoundation:glass:3>*2, <techreborn:plates:36>, 300, 256, 2000);

// Advanced Frame
//recipes.addShaped(<techreborn:machine_frame:1>, [[<moreplates:energetic_silver_plate>, <techreborn:plates:36>, <moreplates:energetic_silver_plate>],[<techreborn:plates:2>, <techreborn:machine_frame>, <techreborn:plates:2>], [<moreplates:energetic_silver_plate>, <techreborn:plates:36>, <moreplates:energetic_silver_plate>]]);
Empowerer.addRecipe(<techreborn:machine_frame:1>, <techreborn:machine_frame>, <jaopca:item_platedensecarbon>, <jaopca:item_platedenseintermedium>, <jaopca:item_platedenseenergeticsilver>, <jaopca:item_platedenseadvancedalloy>, 250000, 400, [0.9, 0.1, 0.2]);
CombinationCrafting.addRecipe(<techreborn:machine_frame:1>, 1000000, <techreborn:machine_frame>, 
[<jaopca:item_platedensecarbon>, <jaopca:item_platedenseintermedium>, <jaopca:item_platedenseenergeticsilver>, <jaopca:item_platedenseadvancedalloy>]);
//<techreborn:machine_frame:1>.addTooltip(format.darkPurple("Crafted with 1,000,000 RF"));

//1st Tier Casing
recipes.addShaped(<techreborn:machine_casing> * 4, [[<techreborn:plates:35>, <techreborn:plates:35>, <techreborn:plates:35>],[<ore:circuitBasic>, <techreborn:machine_frame>, <ore:circuitBasic>], [<techreborn:plates:35>, <techreborn:plates:35>, <techreborn:plates:35>]]);

//2nd tier casing
recipes.addShaped(<techreborn:machine_casing:1> * 4, [[<techreborn:machine_casing>, <ore:circuitAdvanced>, <techreborn:machine_casing>],[<jaopca:item_gearhslasteel>, <moreplates:terrasteel_plate>, <jaopca:item_gearhslasteel>], [<techreborn:machine_casing>, <ore:circuitAdvanced>, <techreborn:machine_casing>]]);
//recipes.addShaped(<techreborn:machine_casing:1> * 4, [[<ore:circuitAdvanced>, <moreplates:terrasteel_plate>, <ore:circuitAdvanced>],[<jaopca:item_platehslasteel>, <techreborn:machine_frame:1>, <jaopca:item_platehslasteel>], [<ore:circuitAdvanced>, <jaopca:item_platehslasteel>, <ore:circuitAdvanced>]]);

//3rd Tier Casing
recipes.addShaped(<techreborn:machine_casing:2>, [[<rockhounding_chemistry:alloy_parts:28>, <ore:circuitElite>, <rockhounding_chemistry:alloy_parts:28>],[<environmentaltech:litherite_crystal>, <techreborn:machine_casing:1>, <environmentaltech:litherite_crystal>], [<rockhounding_chemistry:alloy_parts:28>, <ore:circuitElite>, <rockhounding_chemistry:alloy_parts:28>]]);
//recipes.addShaped(<techreborn:machine_casing:2> * 4, [[<techreborn:plates:20>, <ore:circuitElite>, <techreborn:plates:20>],[<environmentaltech:lonsdaleite_crystal>, <techreborn:machine_frame:2>, <environmentaltech:lonsdaleite_crystal>], [<techreborn:plates:20>, <ore:circuitElite>, <techreborn:plates:20>]]);


/*
//Data Circuit
val GreenGems as IIngredient = (<techreborn:gem:2>|<minecraft:emerald>) as IIngredient;
recipes.addShaped(<techreborn:part:2>, [[null, GreenGems, null],[GreenGems, <ore:circuitAdvanced>, GreenGems], [null, GreenGems, null]]);
*/

/* Bugged idk
//Diamond Plating
recipes.addShaped(<powersuits:powerarmorcomponent:11>, [[<techreborn:plates:5>, <techreborn:plates:5>],[<ore:circuitElite>, <techreborn:plates:5>], [<techreborn:plates:5>, <techreborn:plates:5>]]);
recipes.removeShapeless(<thermalfoundation:material:327> * 5, [ <powersuits:powerarmorcomponent:11>]);
recipes.addShapeless(<techreborn:plates:5> * 5, [<powersuits:powerarmorcomponent:11>]);
*/


// --== Machines and Tools ==-- //

//Iron Fence
<techreborn:refined_iron_fence>.displayName = "Refined Iron Fence";
recipes.addShaped(<techreborn:refined_iron_fence> * 3, [[<techreborn:ingot:19>, <jaopca:item_stickrefinediron>, <techreborn:ingot:19>], [<techreborn:ingot:19>, <jaopca:item_stickrefinediron>, <techreborn:ingot:19>]]);


//NO MORE GRINDER, COMPRESSOR AND CHEMICAL REACTOR
// Q Chest
recipes.addShaped(<techreborn:quantum_chest>, [[<techreborn:part:3>, <techreborn:part:24>, <techreborn:part:3>],[<ore:machineBlockHighlyAdvanced>, <aeadditions:storage.component:1>, <ore:machineBlockHighlyAdvanced>], [<techreborn:part:3>, <techreborn:digital_chest>, <techreborn:part:3>]]);

// Recycler
recipes.addShaped(<techreborn:recycler>, [[null, <ore:circuitAdvanced>, null],[<ore:dirt>, <techreborn:machine_frame>, <ore:dirt>], [<minecraft:glowstone_dust>, <ore:dirt>, <minecraft:glowstone_dust>]]);

// Implosion Compressor
recipes.addShaped(<techreborn:implosion_compressor>, [[<moreplates:osmium_plate>, <techreborn:part:3>, <moreplates:osmium_plate>],[<mekanism:obsidiantnt>, <techreborn:machine_frame:1>, <mekanism:obsidiantnt>], [<moreplates:osmium_plate>, <thermalfoundation:material:262>, <moreplates:osmium_plate>]]);

// Industrial Grinder
recipes.addShaped(<techreborn:industrial_grinder>, [[<moreplates:osmium_plate>, <techreborn:part:3>, <moreplates:osmium_plate>],[<techreborn:part:4>, <techreborn:machine_frame:1>, <techreborn:part:4>], [<moreplates:osmium_plate>, <thermalfoundation:material:262>, <moreplates:osmium_plate>]]);

// Fluid Replicator
recipes.addShaped(<techreborn:fluid_replicator>, [[<techreborn:plates:33>, <techreborn:part>, <techreborn:plates:33>],[<techreborn:part>, <techreborn:machine_frame:2>, <techreborn:part>], [<techreborn:part:17>, <techreborn:industrial_electrolyzer>, <techreborn:part:17>]]);

//Rockcutter
recipes.addShaped(<techreborn:rockcutter>.withTag({ench: [{lvl: 1 as short, id: 33 as short}], energy: 0}), [[<mekanism:otherdust>, <techreborn:ingot:19>, null],[<mekanism:otherdust>, <techreborn:ingot:19>, null], [<mekanism:otherdust>, <ore:circuitBasic>, <techreborn:rebattery>]]);

//Overclocker
recipes.addShaped(<techreborn:upgrades>, [[null, <techreborn:part:38>, null], [<techreborn:cable:6>, <ore:circuitElite>, <techreborn:cable:6>]]);
recipes.addShaped(<techreborn:upgrades>, [[null, <techreborn:part:8>, null], [<techreborn:cable:6>, <ore:circuitElite>, <techreborn:cable:6>]]);
recipes.addShaped(<techreborn:upgrades>, [[null, <techreborn:part:10>, null], [<techreborn:cable:6>, <ore:circuitElite>, <techreborn:cable:6>]]);

Transposer.addFillRecipe(<techreborn:part:36>, <techreborn:dynamiccell>.withTag({Fluid: {FluidName: "water", Amount: 1000}}), <liquid:cryotheum> * 250, 5000);

//Data Control
recipes.addShaped(<techreborn:part:1>*4, [[<ore:circuitAdvanced>, <techreborn:part:2>, <ore:circuitAdvanced>],[<techreborn:part:2>, <jaopca:item_platestainlesssteel>, <techreborn:part:2>], [<ore:circuitAdvanced>, <techreborn:part:2>, <ore:circuitAdvanced>]]);

// Grinder
//recipes.addShaped(<techreborn:grinder>, [[<minecraft:flint>, <minecraft:flint>, <minecraft:flint>],[<ore:cobblestone>, <techreborn:machine_frame>, <ore:cobblestone>], [null, <ore:circuitBasic>, null]]);
// Chem Reactor
recipes.addShaped(<techreborn:chemical_reactor>, [[<thermalfoundation:material:354>, <ore:circuitAdvanced>, <thermalfoundation:material:354>],[<thermalfoundation:glass:3>, <techreborn:machine_frame:1>, <thermalfoundation:glass:3>], [<thermalfoundation:material:354>, <ore:circuitAdvanced>, <thermalfoundation:material:354>]]);
// Rolling Machine
recipes.addShaped(<techreborn:rolling_machine>, [[<minecraft:piston>, <ore:circuitBasic>, <minecraft:piston>],[<immersiveengineering:metal_decoration0:5>, <techreborn:machine_frame>, <immersiveengineering:metal_decoration0:5>], [<minecraft:piston>, <ore:circuitBasic>, <minecraft:piston>]]);
// Wire Mill
recipes.addShaped(<techreborn:wire_mill>, [[<ore:plateBrass>, <immersiveengineering:metal_decoration0:4>, <ore:plateBrass>],[<ore:circuitBasic>, <techreborn:machine_frame>, <ore:circuitBasic>], [<ore:plateBrass>, <minecraft:piston>, <ore:plateBrass>]]);

// Electrolyzer
recipes.addShaped(<techreborn:industrial_electrolyzer>, [[<moreplates:electrical_steel_plate>, <thermalfoundation:material:513>, <moreplates:electrical_steel_plate>],[<ore:circuitAdvanced>, <techreborn:machine_frame:1>, <ore:circuitAdvanced>], [<moreplates:electrical_steel_plate>, <thermalfoundation:material:514>, <moreplates:electrical_steel_plate>]]);

// Blast Furnace
recipes.addShaped(<techreborn:industrial_blast_furnace>, [[<ore:circuitAdvanced>, <techreborn:part:13>, <ore:circuitAdvanced>],[<techreborn:part:13>, <techreborn:machine_frame:1>, <techreborn:part:13>], [<actuallyadditions:block_furnace_double>, <techreborn:part:13>, <actuallyadditions:block_furnace_double>]]);

//Solar Panel
recipes.addShaped(<techreborn:solar_panel>, [[<enderio:item_material:38>, <enderio:item_material:38>, <enderio:item_material:38>],[<ore:paneGlassColorless>, <ore:paneGlassColorless>, <ore:paneGlassColorless>], [<ore:circuitBasic>, <techreborn:machine_frame>, <ore:circuitBasic>]]);

//Reflectors
recipes.addShaped(<techreborn:part:28>, [[null, <techreborn:part:26>, null],[<techreborn:part:26>, <ore:dustBeryllium>, <techreborn:part:26>], [null, <techreborn:part:26>, null]]);

### Grinder ###
mods.techreborn.industrialGrinder.addRecipe(<thermalfoundation:material:70>, <mekanism:dust:2>, <jaopca:item_dusttinyiridium>, null, <randomthings:ingredient:3>, null, <liquid:alchemical_redstone>*500, 200, 512);

### Assembling Machine ###
/*
//Gold Cable
assemblingMachine.addRecipe(<techreborn:cable:6>, <techreborn:cable:2>, <ore:itemRubber>, 100, 32);
*/


//Glass Fiber Cable
ProfilingBench.add(<techreborn:reinforced_glass>, <techreborn:cable:4>*2, 1);


############################################
############  Rolling Machine  #############
############################################

// Heating coils
rollingMachine.removeRecipe(<techreborn:part:15>);
rollingMachine.removeRecipe(<techreborn:part:14>);
rollingMachine.removeRecipe(<techreborn:part:13>);
rollingMachine.addShaped(<techreborn:part:15>*2, [[<contenttweaker:material_part:5>,<contenttweaker:material_part:5>,<contenttweaker:material_part:5>],[<contenttweaker:material_part:5>,null,<contenttweaker:material_part:5>],[<contenttweaker:material_part:5>,<contenttweaker:material_part:5>,<contenttweaker:material_part:5>]]);
rollingMachine.addShaped(<techreborn:part:14>*2, [[<rockhounding_chemistry:alloy_items_tech:22>,<rockhounding_chemistry:alloy_items_tech:22>,<rockhounding_chemistry:alloy_items_tech:22>],[<rockhounding_chemistry:alloy_items_tech:22>,null,<rockhounding_chemistry:alloy_items_tech:22>],[<rockhounding_chemistry:alloy_items_tech:22>,<rockhounding_chemistry:alloy_items_tech:22>,<rockhounding_chemistry:alloy_items_tech:22>]]);

//Terrasteel coil
//rollingMachine.addShaped(<contenttweaker:terrasteel_coil>*4, [[<botania:manaresource:4>,<botania:manaresource:4>,<botania:manaresource:4>],[<botania:manaresource:4>,null,<botania:manaresource:4>],[<botania:manaresource:4>,<botania:manaresource:4>,<botania:manaresource:4>]]);

// Cupronickel/Constantan Heating Coil
<techreborn:part:13>.displayName = "Constantan Heating Coil";
<ore:ingotConstantan>.add(<rockhounding_chemistry:alloy_items_tech:13>);
rollingMachine.addShaped(<techreborn:part:13>*2, [[<ore:ingotConstantan>,<ore:ingotConstantan>,<ore:ingotConstantan>],[<ore:ingotConstantan>,null,<ore:ingotConstantan>],[<ore:ingotConstantan>,<ore:ingotConstantan>,<ore:ingotConstantan>]]);

//mods.techreborn.rollingMachine.addShaped(<techreborn:part:13>*2, [[<rockhounding_chemistry:alloy_items_tech:13>,<rockhounding_chemistry:alloy_items_tech:13>,<rockhounding_chemistry:alloy_items_tech:13>],[<rockhounding_chemistry:alloy_items_tech:13>,null,<rockhounding_chemistry:alloy_items_tech:13>],[<rockhounding_chemistry:alloy_items_tech:13>,<rockhounding_chemistry:alloy_items_tech:13>,<rockhounding_chemistry:alloy_items_tech:13>]]);

############################################
##############  Centrifuge  ################
############################################

//mods.thermalexpansion.Centrifuge.addRecipe(WeightedItemStack[] outputs, IItemStack input, ILiquidStack fluid, int energy);


// Rubber Wood
Centrifuge.addRecipe([<techreborn:part:31> % 50, <rockhounding_chemistry:chemical_dusts:24> % 25, <thermalfoundation:material:816> % 25], <techreborn:rubber_log>, <liquid:fluidmethane>*100, 4000);

// Lapis dust
Centrifuge.addRecipe([<techreborn:dust:28> % 75, <techreborn:smalldust:48> % 50, <techreborn:smalldust:39> % 25, <techreborn:smalldust:8> % 25], <actuallyadditions:item_dust:4>, null, 10000);

// Redstone
Centrifuge.addRecipe([<rockhounding_chemistry:chemical_dusts:42> % 10, <techreborn:dust:43> % 30, <techreborn:dust:39> % 50], <minecraft:redstone>, <liquid:mercury>*10, 10000);

// Glowstone
Centrifuge.addRecipe([<minecraft:redstone> % 25, <thermalfoundation:material:1> % 25], <minecraft:glowstone_dust>, <liquid:helium>*100, 10000);

// Endstone
Centrifuge.addRecipe([<techreborn:smalldust:55> % 5, <minecraft:sand> % 25], <nuclearcraft:gem_dust:11>, <liquid:helium>*100, 10000);

// Netherrack
Centrifuge.addRecipe([<thermalfoundation:material:771> % 25, <minecraft:redstone> % 5, <thermalfoundation:material:768> % 5, <minecraft:gold_nugget> % 5], <techreborn:dust:33>, <liquid:lava>*10, 10000);

// Sodalite
Centrifuge.addRecipe([<rockhounding_chemistry:chemical_dusts:44> % 100, <nuclearcraft:gem:6> % 80, <thermalfoundation:material:68> % 15], <techreborn:dust:48>, <liquid:fluidchlorite>*50, 10000);

// Remove cell recipes
fusionReactor.removeRecipe(<techreborn:dynamiccell>.withTag({Fluid: {FluidName: "fluidheliumplasma", Amount: 1000}}));
fusionReactor.removeRecipe(<techreborn:dynamiccell>.withTag({Fluid: {FluidName: "fluidhelium3", Amount: 1000}}));

// More Helium
recipes.addShaped(<techreborn:part:7>, [[null, <thermalfoundation:material:129>, null],[<thermalfoundation:material:129>, <techreborn:dynamiccell>.withTag({Fluid: {FluidName: "helium", Amount: 1000}}).onlyWithTag({Fluid: {FluidName: "helium", Amount: 1000}}), <thermalfoundation:material:129>], [null, <thermalfoundation:material:129>, null]]);

scrapbox.addScrapboxDrop(<jaopca:item_dusttinyiridium>);
scrapbox.removeRecipe(<thermalfoundation:material:199>);

############################################
##############  Fluid Replicator  ##########
############################################

// Remove liquid recipes
fluidReplicator.removeRecipe(<liquid:water>);
fluidReplicator.removeRecipe(<liquid:lava>);
fluidReplicator.removeRecipe(<liquid:fluidmercury>);

// Heavy water
fluidReplicator.addRecipe(2,<liquid:heavy_water>,10, 1000);
// Enderium
fluidReplicator.addRecipe(2,<liquid:enderium>,100, 1000);
// liquid helium	
fluidReplicator.addRecipe(2,<liquid:liquid_helium>,10, 1000);
// Iridium
fluidReplicator.addRecipe(64,<liquid:iridium>,1000, 10000);
// Water
fluidReplicator.addRecipe(1,<liquid:water>*10000 ,10, 1000);
// Lava
fluidReplicator.addRecipe(1,<liquid:lava>,10, 1000);
// Mercury
fluidReplicator.addRecipe(4, <liquid:mercury>, 200, 20);

############################################
##############  Recipe Rebalance  ##########
############################################

//Extractor Recipe Rebalance
extractor.removeInputRecipe(<techreborn:rubber_sapling>);
extractor.removeInputRecipe(<techreborn:rubber_log>);
extractor.removeInputRecipe(<minecraft:slime_ball>);
extractor.removeInputRecipe(<techreborn:part:31>);
extractor.addRecipe(<techreborn:part:32>, <techreborn:rubber_sapling>, 120, 40);
extractor.addRecipe(<techreborn:part:32>, <techreborn:rubber_log>, 120, 40);
extractor.addRecipe(<techreborn:part:32>*2, <minecraft:slime_ball>, 120, 40);
extractor.addRecipe(<techreborn:part:32>*3, <techreborn:part:31>, 120, 40);

// Wire Mill Recipe Rebalance
wireMill.removeAll();
wireMill.addRecipe(<techreborn:cable>*3, <thermalfoundation:material:128>, 80, 40);
wireMill.addRecipe(<techreborn:cable:1>*4, <thermalfoundation:material:129>, 120, 40);
wireMill.addRecipe(<techreborn:cable:2>*6, <minecraft:gold_ingot>, 160, 40);
wireMill.addRecipe(<techreborn:cable:3>*6, <techreborn:ingot:19>, 160, 40);
wireMill.addRecipe(<powersuits:powerarmorcomponent:14>, <advancedrocketry:misc:1>, 200, 128);

// Sodium Persulfate Chain
mods.nuclearcraft.ChemicalReactor.addRecipe(<liquid:sulfur> * 1000, <liquid:sodium> * 1000, <liquid:fluidsodiumsulfide> * 2000, null);
mods.nuclearcraft.ChemicalReactor.addRecipe(<liquid:fluidsodiumsulfide> * 1000, <liquid:fluidcompressedair> * 1000, <liquid:fluidsodiumpersulfate> * 2000, null);
mods.nuclearcraft.ChemicalReactor.addRecipe(<liquid:fluidsodiumsulfide> * 1000, <liquid:compressed_air> * 1000, <liquid:fluidsodiumpersulfate> * 2000, null);

// Removing useless TR Electrolyser recipes
industrialElectrolyzer.removeInputRecipe(<techreborn:dynamiccell>.withTag({Fluid: {FluidName: "fluidmethane", Amount: 1000}}));
industrialElectrolyzer.removeInputRecipe(<techreborn:dynamiccell>.withTag({Fluid: {FluidName: "fluidsulfuricacid", Amount: 1000}}));

// Removing useless TR IBF recipes
blastFurnace.removeInputRecipe(<techreborn:smalldust:23>);
blastFurnace.removeInputRecipe(<techreborn:smalldust:51>);
blastFurnace.removeInputRecipe(<thermalfoundation:material:96>);
blastFurnace.removeInputRecipe(<techreborn:dust:10>);
blastFurnace.removeInputRecipe(<techreborn:smalldust:10>);
blastFurnace.removeInputRecipe(<techreborn:dynamiccell>.withTag({Fluid: {FluidName: "fluidsilicon", Amount: 1000}}));

//no BONES
industrialElectrolyzer.removeInputRecipe(<minecraft:dye:15>*3);

//Don't use ender dust
industrialElectrolyzer.removeInputRecipe(<techreborn:dust:20>);

//TOO MUCH TNT
mods.techreborn.implosionCompressor.addRecipe(<techreborn:plates:38>, <techreborn:dust:15>*4, <techreborn:ingot:22>, <mekanism:obsidiantnt>, 20, 32);

//For making the Infinity Catlysts
<techreborn:cloakingdevice>.maxStackSize = 64;

# [Quantum Tank] from [Basic Tank][+4]
craft.remake(<techreborn:quantum_tank>, ["pretty",
  "A s A",
  "U B U",
  "A S A"], {
  "A": <ore:plateiridiumAlloy> | <ore:plateIridiumAlloy>, # Iridium Alloy Plate
  "s": <advancedrocketry:misc>,           # User Interface
  "U": <ore:circuitUltimate>,             # Ultimate Control Circuit
  "B": <fluiddrawers:tank>,               # Basic Tank
  "S": <appliedenergistics2:material:47>, # Singularity
});
##########################################################################################
print("==================== end of tech_reborn.zs ====================");
