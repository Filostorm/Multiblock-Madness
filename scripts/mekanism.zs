
import crafttweaker.item.IItemStack;
import mods.mekanism.infuser;
import mod.mekanism.gas.IGasStack;
import mods.mekatweaker.InfuserType;
import mods.appliedenergistics2.Grinder;


print("==================== loading Mekanism.zs ====================");
##########################################################################################


val itemstoRemove =
[
<mekanism:teleportationcore>,
<mekanism:tierinstaller>,
<mekanism:tierinstaller:1>,
<mekanism:tierinstaller:2>,
<mekanism:tierinstaller:3>,
<mekanism:controlcircuit:1>,
<mekanism:controlcircuit:2>,
<mekanism:controlcircuit:3>,
<mekanism:machineblock:5>.withTag({recipeType: 0}),
<mekanism:machineblock:5>.withTag({recipeType: 1}),
<mekanism:machineblock:5>.withTag({recipeType: 3}),
<mekanism:machineblock:5>.withTag({recipeType: 2}),
<mekanism:machineblock:5>.withTag({recipeType: 4}),
<mekanism:machineblock:5>.withTag({recipeType: 5}),
<mekanism:machineblock:5>.withTag({recipeType: 6}),
<mekanism:machineblock:5>.withTag({recipeType: 7}),
<mekanism:machineblock:5>.withTag({recipeType: 8}),
<mekanism:machineblock:6>.withTag({recipeType: 0}),
<mekanism:machineblock:6>.withTag({recipeType: 1}),
<mekanism:machineblock:6>.withTag({recipeType: 2}),
<mekanism:machineblock:6>.withTag({recipeType: 3}),
<mekanism:machineblock:6>.withTag({recipeType: 4}),
<mekanism:machineblock:6>.withTag({recipeType: 5}),
<mekanism:machineblock:6>.withTag({recipeType: 6}),
<mekanism:machineblock:6>.withTag({recipeType: 8}),
<mekanism:machineblock:6>.withTag({recipeType: 7}),
<mekanism:machineblock:7>.withTag({recipeType: 0}),
<mekanism:machineblock:7>.withTag({recipeType: 2}),
<mekanism:machineblock:7>.withTag({recipeType: 1}),
<mekanism:machineblock:7>.withTag({recipeType: 3}),
<mekanism:machineblock:7>.withTag({recipeType: 4}),
<mekanism:machineblock:7>.withTag({recipeType: 5}),
<mekanism:machineblock:7>.withTag({recipeType: 6}),
<mekanism:machineblock:7>.withTag({recipeType: 7}),
<mekanism:machineblock:7>.withTag({recipeType: 8}),
<mekanismgenerators:reactor:1>,
<mekanismgenerators:reactor>,
<mekanism:machineblock:4>,
<mekanism:basicblock2>,
<mekanismgenerators:solarpanel>,
<mekanism:glowplasticblock:10>,
<mekanism:glowplasticblock:2>,
<mekanism:configurator>,
<mekanism:basicblock2:1>,
<mekanismgenerators:generator:10>,
<mekanism:filterupgrade>,
<mekanism:machineblock:12>,
<mekanismgenerators:generator:8>,
<mekanism:machineblock2:4>,
<mekanism:machineblock:2>
]
 as IItemStack[];

for item in itemstoRemove {
	recipes.remove(item);
}

//no more GBG
	mods.jei.JEI.removeAndHide(<mekanismgenerators:generator:3>);

//Grinder.addRecipe(IItemStack output, IItemStack input, int turns, @Optional IItemStack secondary1Output, @Optional float secondary1Chance, @Optional IItemStack secondary2Output, @Optional float secondary2Chance);

Grinder.addRecipe(<thermalfoundation:material:800>, <minecraft:planks>, 4, <techreborn:smalldust:46>*2, 0.5, <techreborn:smalldust:46>*2, 0.5);

//Pump
recipes.addShaped(<mekanism:machineblock:12>, [[null, <minecraft:bucket>, null],[<ore:circuitBasic>, <immersiveengineering:metal_decoration0:5>, <ore:circuitBasic>], [<ore:platerefinedIron>, <ore:platerefinedIron>, <ore:platerefinedIron>]]);

//Filter Upgrade
recipes.addShaped(<mekanism:filterupgrade>, [[null, <thermalfoundation:glass:3>, null],[<ore:plateBam>, <ore:dustTin>, <ore:plateBam>], [null, <thermalfoundation:glass:3>, null]]);

//Evap Tank
recipes.addShaped(<mekanism:basicblock2> * 4, [[<mekanism:enrichedalloy>, <thermalfoundation:material:352>, <mekanism:enrichedalloy>],[<thermalfoundation:material:352>, <contenttweaker:gear_thermal_alloy>, <thermalfoundation:material:352>], [<mekanism:enrichedalloy>, <thermalfoundation:material:352>, <mekanism:enrichedalloy>]]);
recipes.addShaped(<mekanism:basicblock2> * 8, [[<mekanism:enrichedalloy>, <ore:plateVanasteel>, <mekanism:enrichedalloy>],[<ore:plateVanasteel>, <contenttweaker:gear_thermal_alloy>, <ore:plateVanasteel>], [<mekanism:enrichedalloy>, <ore:plateVanasteel>, <mekanism:enrichedalloy>]]);

//Induction
recipes.addShaped(<mekanism:basicblock2:1> * 4, [[<mekanism:reinforcedalloy>, <thermalfoundation:material:352>, <mekanism:reinforcedalloy>],[<thermalfoundation:material:352>, <contenttweaker:gear_thermal_alloy>, <thermalfoundation:material:352>], [<mekanism:reinforcedalloy>, <thermalfoundation:material:352>, <mekanism:reinforcedalloy>]]);
recipes.addShaped(<mekanism:basicblock2:1> * 8, [[<mekanism:reinforcedalloy>, <ore:plateVanasteel>, <mekanism:reinforcedalloy>],[<ore:plateVanasteel>, <contenttweaker:gear_thermal_alloy>, <ore:plateVanasteel>], [<mekanism:reinforcedalloy>, <ore:plateVanasteel>, <mekanism:reinforcedalloy>]]);

//Turbine
//recipes.addShaped(<mekanismgenerators:generator:10> * 4, [[<mekanism:atomicalloy>, <thermalfoundation:material:352>, <mekanism:atomicalloy>],[<thermalfoundation:material:352>, <moreplates:osmium_gear>, <thermalfoundation:material:352>], [<mekanism:atomicalloy>, <thermalfoundation:material:352>, <mekanism:atomicalloy>]]);
//recipes.addShaped(<mekanismgenerators:generator:10> * 8, [[<mekanism:atomicalloy>, <ore:plateVanasteel>, <mekanism:atomicalloy>],[<ore:plateVanasteel>, <moreplates:osmium_gear>, <ore:plateVanasteel>], [<mekanism:atomicalloy>, <ore:plateVanasteel>, <mekanism:atomicalloy>]]);

# [Rotational Complex] from [Highly Advanced Machine Frame][+8]
craft.remake(<mekanismgenerators:generator:8>, ["pretty",
  "□ □ E □ □",
  "п S D S п",
  "▬ D ■ D ▬",
  "п C T C п",
  "□ □ T □ □"], {
  "□": <ore:plateElite>,                     # Elite Plating
  "E": <ore:componentEVCapacitor>,           # EV Capacitor
  "п": <contenttweaker:plate_mek_alloy>,     # Heavy Alloy Plate
  "S": <enderio:item_capacitor_stellar>,     # Stellar Capacitor
  "D": <contenttweaker:component_mek_alloy>, # Dense Component
  "▬": <extendedcrafting:material:48>,       # Twilight Ingot
  "■": <ore:machineBlockHighlyAdvanced> | <ore:machineBlockElite>, # Highly Advanced Machine Frame
  "C": <extendedcrafting:material:12>,       # Crystaltine Catalyst
  "T": <mekanismgenerators:generator:7>,     # Turbine Rotor
});

recipes.addShaped(<mekanismgenerators:generator:10> * 4, [[<nuclearcraft:part:3>, <nuclearcraft:pellet_thorium>, <nuclearcraft:part:3>],[<jaopca:item_platesuperalloy>, <mekanismgenerators:reactor:1>, <jaopca:item_platesuperalloy>], [<nuclearcraft:part:3>, <extendedcrafting:material:18>, <nuclearcraft:part:3>]]);

//rEACTOR bIZZ
recipes.addShaped(<mekanismgenerators:reactor:1> * 4, [[<techreborn:plates:38>, <mekanism:basicblock:8>, <techreborn:plates:38>],[<mekanism:basicblock:8>, <contenttweaker:gear_mek_alloy>, <mekanism:basicblock:8>], [<techreborn:plates:38>, <mekanism:basicblock:8>, <techreborn:plates:38>]]);
recipes.addShaped(<mekanismgenerators:reactor>, [[<mekanism:controlcircuit:3>, <powersuits:powerarmorcomponent:8>, <mekanism:controlcircuit:3>],[<mekanismgenerators:reactor:1>, <mekanism:gastank>.withTag({tier: 3}), <mekanismgenerators:reactor:1>], [<mekanismgenerators:reactor:1>, <mekanismgenerators:reactor:1>, <mekanismgenerators:reactor:1>]]);


recipes.addShapeless(<mekanism:configurator>, [<enderio:item_yeta_wrench>,<actuallyadditions:item_battery>]);


//OutputStack[, InputStack, InfusionString]
infuser.removeRecipe(<mekanism:enrichedalloy>);
infuser.removeRecipe(<mekanism:reinforcedalloy>);
infuser.removeRecipe(<mekanism:atomicalloy>);
//infuser.removeRecipe(<thermalfoundation:material:163>);
//InfusionString, InputInfusion, InputStack, OutputStack //InfusionString = CARBON;TIN;DIAMOND;REDSTONE;FUNGI;BIO;OBSIDIAN

InfuserType.addTypeObject(<techreborn:ingot:3>, "CHROME", 100);
<techreborn:ingot:3>.addTooltip(format.white("100 Chromium"));

InfuserType.addTypeObject(<contenttweaker:compressed_chrome>, "CHROME", 200);
<contenttweaker:compressed_chrome>.addTooltip(format.white("200 Chromium"));

mods.mekanism.enrichment.addRecipe(<techreborn:ingot:3>, <contenttweaker:compressed_chrome>);

infuser.addRecipe("REDSTONE", 20, <thermalfoundation:material:132>, <mekanism:enrichedalloy>);
infuser.addRecipe("DIAMOND", 10, <thermalfoundation:material:134>, <mekanism:reinforcedalloy>);
infuser.addRecipe("OBSIDIAN", 10, <techreborn:ingot:15>, <mekanism:atomicalloy>);


//Basic Tank
recipes.addShaped(<mekanism:machineblock2:11>, [[<thermalfoundation:material:321>, <embers:fluid_gauge>, <thermalfoundation:material:321>],[<moreplates:electrum_stick>, null, <moreplates:electrum_stick>], [<thermalfoundation:material:321>, <embers:pipe>, <thermalfoundation:material:321>]]);

//Advanced Circuit
recipes.addShaped(<mekanism:controlcircuit:1>, [[null, <mekanism:enrichediron>, null],[<mekanism:enrichedalloy>, <mekanism:controlcircuit>, <mekanism:enrichedalloy>], [null, <mekanism:enrichediron>, null]]);
//Elite Circuit
recipes.addShaped(<mekanism:controlcircuit:2>, [[null, <moreplates:refined_obsidian_plate>, null],[<mekanism:reinforcedalloy>, <mekanism:controlcircuit:1>, <mekanism:reinforcedalloy>], [null, <moreplates:refined_obsidian_plate>, null]]);
//Ultimate Circuit
recipes.addShaped(<mekanism:controlcircuit:3>, [[null, <thermalfoundation:material:327>, null],[<mekanism:atomicalloy>, <mekanism:controlcircuit:2>, <mekanism:atomicalloy>], [null, <thermalfoundation:material:327>, null]]);

recipes.addShapeless("basictoadvancedtank",
    <mekanism:machineblock2:11>.withTag({tier: 1}), 
    [<mekanism:tierinstaller:1>,<mekanism:machineblock2:11>.marked("tank")],
	function(out, ins, cInfo) {
	    return out.withTag(ins.tank.tag + {tier: 1});
    }, null);

recipes.addShapeless("advancedtoelitetank",
    <mekanism:machineblock2:11>.withTag({tier: 2}),  
    [<mekanism:tierinstaller:2>,<mekanism:machineblock2:11>.withTag({tier: 1}).marked("tank")],
	function(out, ins, cInfo) {
	    return out.withTag(ins.tank.tag + {tier: 2});
    }, null);
    
recipes.addShapeless("elitetoultimatetank",
    <mekanism:machineblock2:11>.withTag({tier: 3}),  
    [<mekanism:tierinstaller:3>,<mekanism:machineblock2:11>.withTag({tier: 2}).marked("tank")],
	function(out, ins, cInfo) {
	    return out.withTag(ins.tank.tag + {tier: 3});
    }, null);
    


//Tier Installers
recipes.addShaped(<mekanism:tierinstaller:3>, [[<mekanism:atomicalloy>, <ore:circuitUltimate>, <mekanism:atomicalloy>],[<techreborn:plates:38>, <ore:plankWood>, <techreborn:plates:38>], [<mekanism:atomicalloy>, <ore:circuitUltimate>, <mekanism:atomicalloy>]]);
recipes.addShaped(<mekanism:tierinstaller:2>, [[<mekanism:reinforcedalloy>, <ore:circuitElite>, <mekanism:reinforcedalloy>],[<moreplates:vivid_alloy_gear>, <ore:plankWood>, <moreplates:vivid_alloy_gear>], [<mekanism:reinforcedalloy>, <ore:circuitElite>, <mekanism:reinforcedalloy>]]);
recipes.addShaped(<mekanism:tierinstaller:1>, [[<mekanism:enrichedalloy>, <ore:circuitAdvanced>, <mekanism:enrichedalloy>],[<moreplates:energetic_alloy_gear>, <ore:plankWood>, <moreplates:energetic_alloy_gear>], [<mekanism:enrichedalloy>, <ore:circuitAdvanced>, <mekanism:enrichedalloy>]]);
recipes.addShaped(<mekanism:tierinstaller>, [[<moreplates:redstone_alloy_plate>, <ore:circuitBasic>, <moreplates:redstone_alloy_plate>],[<moreplates:electrical_steel_gear>, <ore:plankWood>, <moreplates:electrical_steel_gear>], [<moreplates:redstone_alloy_plate>, <ore:circuitBasic>, <moreplates:redstone_alloy_plate>]]);

//Teleportation core
recipes.addShapedMirrored(<mekanism:teleportationcore>, [[<moreplates:osgloglas_plate>, <threng:material:6>, <enderio:item_material:35>],[<contenttweaker:component_mek_alloy>, <waystones:warp_stone>, <contenttweaker:component_mek_alloy>], [<enderio:item_material:35>, <threng:material:6>, <moreplates:osgloglas_plate>]]);
  
//Green Plastic
recipes.addShaped(<mekanism:glowplasticblock:2>, [[<appliedenergistics2:paint_ball:33>, <appliedenergistics2:paint_ball:33>, <appliedenergistics2:paint_ball:33>],[<appliedenergistics2:paint_ball:33>, <mekanism:plasticblock:15>, <appliedenergistics2:paint_ball:33>], [<appliedenergistics2:paint_ball:33>, <appliedenergistics2:paint_ball:33>, <appliedenergistics2:paint_ball:33>]]);
recipes.addShaped(<mekanism:glowplasticblock:2>, [[<appliedenergistics2:paint_ball:33>, <appliedenergistics2:paint_ball:33>, <appliedenergistics2:paint_ball:33>],[<appliedenergistics2:paint_ball:33>, <mekanism:plasticblock:2>, <appliedenergistics2:paint_ball:33>], [<appliedenergistics2:paint_ball:33>, <appliedenergistics2:paint_ball:33>, <appliedenergistics2:paint_ball:33>]]);

//Lime Plastic
recipes.addShaped(<mekanism:glowplasticblock:10>, [[<appliedenergistics2:paint_ball:25>, <appliedenergistics2:paint_ball:25>, <appliedenergistics2:paint_ball:25>],[<appliedenergistics2:paint_ball:25>, <mekanism:plasticblock:15>, <appliedenergistics2:paint_ball:25>], [<appliedenergistics2:paint_ball:25>, <appliedenergistics2:paint_ball:25>, <appliedenergistics2:paint_ball:25>]]);
recipes.addShaped(<mekanism:glowplasticblock:10>, [[<appliedenergistics2:paint_ball:25>, <appliedenergistics2:paint_ball:25>, <appliedenergistics2:paint_ball:25>],[<appliedenergistics2:paint_ball:25>, <mekanism:plasticblock:10>, <appliedenergistics2:paint_ball:25>], [<appliedenergistics2:paint_ball:25>, <appliedenergistics2:paint_ball:25>, <appliedenergistics2:paint_ball:25>]]);

//Digital Miner
recipes.addShaped(<mekanism:machineblock:4>, [[<contenttweaker:component_mek_alloy>, <mekanism:controlcircuit:2>, <contenttweaker:component_mek_alloy>],[<mekanism:teleportationcore>, <mekanism:basicblock:8>, <mekanism:teleportationcore>], [<mekanism:robit>, <appliedenergistics2:material:47>, <mekanism:robit>]]);

//Solar Panel
recipes.addShaped(<mekanismgenerators:solarpanel>, [[<ore:paneGlass>, <ore:paneGlass>, <ore:paneGlass>],[<enderio:item_material:38>, <mekanism:enrichedalloy>, <enderio:item_material:38>], [<moreplates:osmium_plate>, <moreplates:osmium_plate>, <moreplates:osmium_plate>]]);


//Solar Neutron Activator
//InputGas[, OutputGas]
mods.mekanism.solarneutronactivator.removeRecipe(<gas:lithium>, <gas:tritium>);
//InputGas, OutputGas
mods.mekanism.solarneutronactivator.addRecipe(<gas:lithium>*2, <gas:tritium>*2);

//NO MORE SALT HACKS
mods.mekanism.GasConversion.unregister(<ore:dustSalt>, <gas:hydrogenchloride>);
mods.mekanism.GasConversion.unregister(<ore:itemSalt>, <gas:hydrogenchloride>);

//Osmium Dust
mods.mekanism.GasConversion.register(<mekanism:dust:2>, <gas:liquidosmium> * 200);


//New Recipes
# [Metallurgic Infuser] from [Steel Casing][+5]
craft.remake(<mekanism:machineblock:8>, ["pretty",
  "§ ¤ §",
  "E ⌂ E",
  "R n R"], {
  "§": <contenttweaker:ingot_reinforced_starmetal>, # Reinforced Starmetal
  "¤": <contenttweaker:gear_thermal_alloy>,         # Fluid Enriched Alloy Gear
  "E": <ore:circuitElite>,                          # Data Control Circuit
  "⌂": <mekanism:basicblock:8>,                     # Steel Casing
  "R": <advgenerators:iron_wiring>,                 # Redstone-Iron Wiring
  "n": <contenttweaker:plate_engineering>,          # Engineers Masterpiece
});

# [Enrichment Chamber] from [Steel Casing][+4]
craft.remake(<mekanism:machineblock>, ["pretty",
  "□ B □",
  "A ⌂ A",
  "□ d □"], {
  "□": <contenttweaker:plate_thermal_alloy>,  # Fluid Enriched Alloy Plate
  "B": <mekanism:gastank>.withTag({tier: 0}), # Basic Gas Tank
  "A": <ore:circuitAdvanced>,                 # Advanced Electronic Circuit
  "⌂": <mekanism:basicblock:8>,               # Steel Casing
  "d": <ore:alloyAdvanced> | <ore:itemEnrichedAlloy>, # Enriched Alloy
});

# [Crusher] from [Steel Casing][+4]
craft.remake(<mekanism:machineblock:3>, ["pretty",
  "□ D □",
  "A ⌂ A",
  "□ d □"], {
  "□": <contenttweaker:plate_thermal_alloy>, # Fluid Enriched Alloy Plate
  "D": <ore:craftingDiamondGrinder>,         # Diamond Grinding Head
  "A": <ore:circuitAdvanced>,                # Advanced Electronic Circuit
  "⌂": <mekanism:basicblock:8>,              # Steel Casing
  "d": <ore:alloyAdvanced> | <ore:itemEnrichedAlloy>, # Enriched Alloy
});

# [Energized Smelter] from [Steel Casing][+4]
craft.remake(<mekanism:machineblock:10>, ["pretty",
  "□ K □",
  "A ⌂ A",
  "□ ♥ □"], {
  "□": <contenttweaker:plate_thermal_alloy>, # Fluid Enriched Alloy Plate
  "K": <techreborn:part:15>,                 # Kanthal Heating Coil
  "A": <ore:circuitAdvanced>,                # Advanced Electronic Circuit
  "⌂": <mekanism:basicblock:8>,              # Steel Casing
  "♥": <thermalfoundation:material:513>,     # Redstone Reception Coil
});

# [Osmium Compressor] from [Steel Casing][+4]
craft.remake(<mekanism:machineblock:1>, ["pretty",
  "□ M □",
  "E ⌂ E",
  "□ D □"], {
  "□": <contenttweaker:plate_thermal_alloy>, # Fluid Enriched Alloy Plate
  "M": <ore:solenoidMagnesiumDiboride>,      # Magnesium Diboride Solenoid
  "E": <ore:circuitElite>,                   # Data Control Circuit
  "⌂": <mekanism:basicblock:8>,              # Steel Casing
  "D": <contenttweaker:component_mek_alloy>, # Dense Component
});

# [Precision Sawmill] from [Steel Casing][+5]
craft.remake(<mekanism:machineblock2:5>, ["pretty",
  "□ d □",
  "A ⌂ I",
  "□ E □"], {
  "□": <contenttweaker:plate_thermal_alloy>, # Fluid Enriched Alloy Plate
  "d": <ore:circuitAdvanced>,                # Advanced Electronic Circuit
  "A": <ore:alloyAdvanced> | <ore:itemEnrichedAlloy>, # Enriched Alloy
  "⌂": <mekanism:basicblock:8>,              # Steel Casing
  "I": <advancedrocketry:sawbladeiron>,      # Iron Saw Blade
  "E": <contenttweaker:plate_engineering>,   # Engineers Masterpiece
});

# [Electrolytic Separator] from [Electrolytic Core][+4]
craft.remake(<mekanism:machineblock2:4>, ["pretty",
  "□ M □",
  "E l E",
  "□ ♥ □"], {
  "□": <contenttweaker:rod_thermal_alloy>, # Fluid Enriched Alloy Rod
  "M": <ore:circuitMaster>,              # Energy Flow Circuit
  "E": <ore:alloyElite>,                 # Reinforced Alloy
  "l": <mekanism:electrolyticcore>,      # Electrolytic Core
  "♥": <thermalfoundation:material:513>, # Redstone Reception Coil
});

# [Rotary Condensentrator] from [Steel Casing][+4]
craft.remake(<mekanism:machineblock2>, ["pretty",
  "□ A □",
  "B ⌂ a",
  "□ A □"], {
  "□": <contenttweaker:rod_thermal_alloy>, # Fluid Enriched Alloy Rod
  "A": <ore:circuitAdvanced>,                 # Advanced Electronic Circuit
  "B": <mekanism:gastank>.withTag({tier: 0}), # Basic Gas Tank
  "⌂": <mekanism:basicblock:8>,               # Steel Casing
  "a": <mekanism:machineblock2:11>.withTag({tier: 0}), # Basic Fluid Tank
});

# [Pressurized Reaction Chamber] from [Enrichment Chamber][+5]
craft.remake(<mekanism:machineblock2:10>, ["pretty",
  "l C l",
  "□ n □",
  "E g E"], {
  "l": <ore:circuitElite>,                    # Data Control Circuit
  "C": <rockhounding_chemistry:misc_items:9>, # Compressing Unit
  "E": <ore:alloyElite>,                      # Reinforced Alloy
  "n": <mekanism:machineblock>,               # Enrichment Chamber
  "□": <contenttweaker:rod_thermal_alloy>, # Fluid Enriched Alloy Rod
  "g": <contenttweaker:plate_engineering>,    # Engineers Masterpiece
});

# [Purification Chamber] from [Enrichment Chamber][+4]
craft.remake(<mekanism:machineblock:9>, ["pretty",
  "□ S □",
  "E n E",
  "□ U □"], {
  "□": <contenttweaker:plate_thermal_alloy>, # Fluid Enriched Alloy Plate
  "S": <ore:componentSolenoid>,              # Solenoid
  "E": <ore:circuitElite>,                   # Data Control Circuit
  "n": <mekanism:machineblock>,              # Enrichment Chamber
  "U": <ore:alloyUltimate>,                  # Atomic Alloy
});

# [Chemical Injection Chamber] from [Purification Chamber][+5]
craft.remake(<mekanism:machineblock2:3>, ["pretty",
  "□ C □",
  "D P D",
  "m ¤ m"], {
  "□": <contenttweaker:plate_mek_alloy>,     # Heavy Alloy Plate
  "C": <advancedrocketry:ic:3>,              # Control Circuit Board
  "D": <contenttweaker:component_mek_alloy>, # Dense Component
  "P": <mekanism:machineblock:9>,            # Purification Chamber
  "m": <ore:motor>,                          # Electric Motor
  "¤": <contenttweaker:gear_thermal_alloy>,  # Fluid Enriched Alloy Gear
});

# [Chemical Infuser] from [Steel Casing][+4]
craft.remake(<mekanism:machineblock2:2>, ["pretty",
  "□ l □",
  "E ⌂ E",
  "◘ l ◘"], {
  "□": <ore:plateElite>,                            # Elite Plating
  "l": <ore:circuitElite>,                          # Data Control Circuit
  "E": <mekanism:gastank>.withTag({tier: 2}),       # Elite Gas Tank
  "⌂": <mekanism:basicblock:8>,                     # Steel Casing
  "◘": <nuclearcraft:lithium_ion_cell>.withTag({}), # Lithium Ion Cell
});

# [Chemical Oxidizer] from [Steel Casing][+3]
craft.remake(<mekanism:machineblock2:1>, ["pretty",
  "□ E □",
  "R ⌂ R",
  "□ E □"], {
  "□": <ore:plateElite>,          # Elite Plating
  "E": <ore:circuitElite>,        # Data Control Circuit
  "R": <ore:componentRubberHose>, # Insulated Rubber Hose
  "⌂": <mekanism:basicblock:8>,   # Steel Casing
});

# [Chemical Dissolution Chamber] from [Industrial Machine Chassis][+5]
craft.remake(<mekanism:machineblock2:6>, ["pretty",
  "□ U □",
  "m M m",
  "¤ I ¤"], {
  "□": <contenttweaker:plate_mek_alloy>, # Heavy Alloy Plate
  "U": <ore:circuitUltimate>,            # Ultimate Control Circuit
  "m": <ore:motor>,                      # Electric Motor
  "M": <ore:itemMachineChassi>,          # Industrial Machine Chassis
  "¤": <ore:gearEnoriEmpowered>,         # Empowered Enori Gear
  "I": <advancedrocketry:ic:4>,          # Item IO Circuit Board
});

# [Chemical Washer] from [Industrial Machine Chassis][+5]
craft.remake(<mekanism:machineblock2:7>, ["pretty",
  "□ U □",
  "I M I",
  "¤ L ¤"], {
  "□": <contenttweaker:plate_mek_alloy>, # Heavy Alloy Plate
  "U": <ore:circuitUltimate>,            # Ultimate Control Circuit
  "I": <nuclearcraft:water_source>,      # Infinite Water Source
  "M": <ore:itemMachineChassi>,          # Industrial Machine Chassis
  "¤": <ore:gearDiamatineEmpowered>,     # Empowered Diamatine Gear
  "L": <advancedrocketry:ic:5>,          # Liquid IO Circuit Board
});

# [Chemical Crystallizer] from [Industrial Machine Chassis][+5]
craft.remake(<mekanism:machineblock2:8>, ["pretty",
  "□ U □",
  "S M S",
  "¤ C ¤"], {
  "□": <contenttweaker:plate_mek_alloy>, # Heavy Alloy Plate
  "U": <ore:circuitUltimate>,            # Ultimate Control Circuit
  "S": <ore:componentSolenoid>,          # Solenoid
  "M": <ore:itemMachineChassi>,          # Industrial Machine Chassis
  "¤": <ore:gearEmeradicEmpowered>,      # Empowered Emeradic Gear
  "C": <advancedrocketry:ic:3>,          # Control Circuit Board
});

# [Thermal Evaporation Controller] from [Control Circuit][+3]
craft.remake(<mekanism:basicblock:14>, ["pretty",
  "■ R ■",
  "S C S",
  "■ ■ ■"], {
  "■": <mekanism:basicblock2>,        # Thermal Evaporation Block
  "R": <ore:glassReinforced>,         # Reinforced Glass
  "S": <ore:componentSolenoid>,       # Solenoid
  "C": <ore:componentControlCircuit>, # Control Circuit
});

# [Basic Energy Cube] from [Steel Casing][+3]
craft.remake(<mekanism:energycube>.withTag({tier: 0}), ["pretty",
  "□ b □",
  "п ⌂ п",
  "□ b □"], {
  "□": <ore:plateRestonia>,                  # Restonia Plate
  "b": <ore:battery>,                        # Energy Tablet
  "п": <contenttweaker:plate_thermal_alloy>, # Fluid Enriched Alloy Plate
  "⌂": <mekanism:basicblock:8>,              # Steel Casing
});

# [Superheating Element] from [Steel Casing][+2]
craft.remake(<mekanism:basicblock2:5>, ["pretty",
  "A □ A",
  "□ ⌂ □",
  "A □ A"], {
  "A": <ore:alloyAdvanced> | <ore:itemEnrichedAlloy>, # Enriched Alloy
  "□": <ore:plateCopper>, # Copper Plate
  "⌂": <mekanism:basicblock:8>,                # Steel Casing
});

# [Resistive Heater] from [Superheating Element][+4]
craft.remake(<mekanism:machineblock3:4>, ["pretty",
  "B □ B",
  "□ S □",
  "¤ b ¤"], {
  "B": <ore:circuitBasic>,       # Basic Control Circuit
  "□": <ore:plateRestonia>,      # Restonia Plate
  "S": <mekanism:basicblock2:5>, # Superheating Element
  "¤": <ore:gearTin>,            # Tin Gear
  "b": <ore:battery>,            # Energy Tablet
});

# [Formulaic Assemblicator] from [Simple Machine Chassis][+4]
craft.remake(<mekanism:machineblock3:5>, ["pretty",
  "□ w □",
  "B S B",
  "□ c □"], {
  "□": <ore:plateSteel>,              # Steel Plate
  "w": <ore:workbench> | <ore:crafterWood> | <ore:craftingTableWood>, # Crafting Table
  "B": <ore:circuitBasic>,            # Electronic Circuit
  "S": <ore:itemSimpleMachineChassi>, # Simple Machine Chassis
  "c": <ore:chest> | <ore:chestWood>, # Oak Chest
});

# [Seismic Vibrator] from [Factory Block][+3]
craft.remake(<mekanism:machineblock2:9>, ["pretty",
  "S ■ S",
  "S t S",
  "□ t □"], {
  "S": <ore:scaffoldingSteel>,              # Steel Scaffolding
  "■": <chisel:technical:5>,                # Factory Block
  "t": <ore:fenceSteel>,                    # Steel Fence
  "□": <ore:plateTin>, # Tin Plate
});

# [Seismic Reader] from [Void Plate][+4]
craft.remake(<mekanism:seismicreader>, ["pretty",
  "п B п",
  ": V □",
  "□ □ □"], {
  "п": <ore:plateTin>,   # Tin Plate
  "B": <rockhounding_chemistry:misc_items:1>, # Basic Logic Chip
  ":": <ore:oc:materialNumPad>,               # Numeric Keypad
  "V": <moreplates:void_plate>,               # Void Plate
  "□": <ore:plateSteel>,                      # Steel Plate
});

# [Gauge Dropper] from [Steel Plate][+1]
craft.remake(<mekanism:gaugedropper>, ["pretty",
  "  □  ",
  "G   G",
  "G G G"], {
  "□": <ore:plateSteel>,                           # Steel Plate
  "G": <ore:paneGlassColorless> | <ore:paneGlass>, # Glass Pane
});

# [Chargepad] from [Pulsating Iron Plate][+3]
craft.remake(<mekanism:machineblock:14>, ["pretty",
  "     ",
  "п P п",
  "□ S □"], {
  "п": <ore:plateDarkSteel>,       # Dark Steel Plate
  "P": <ore:platePulsatingIron>,   # Pulsating Iron Plate
  "□": <ore:plateElectricalSteel>, # Electrical Steel Plate
  "S": <actuallyadditions:item_battery>, # Single Battery
});

# [Electric Bow] from [Single Battery][+2]
craft.remake(<mekanism:electricbow>, ["pretty",
  "  ╱ S",
  "i   S",
  "  ╱ S"], {
  "╱": <ore:stickSteel>,             # Steel Rod
  "S": <randomthings:ingredient:12>, # Spectre String
  "i": <actuallyadditions:item_battery>, # Single Battery
});

# [Turbine Blade] from [Mechanical Plating][+1]
craft.remake(<mekanismgenerators:turbineblade>, ["pretty",
  "  □  ",
  "□ § □",
  "  □  "], {
  "□": <ore:plateTitaniumIridium>,         # Titanium Iridium Alloy Plate
  "§": <contenttweaker:plate_engineering>, # Mechanical Plating
});

# [Turbine Rotor] from [Dense Component][+2]
craft.remake(<mekanismgenerators:generator:7>, ["pretty",
  "□ § □",
  "□ D □",
  "□ § □"], {
  "□": <ore:plateHastelloy>,                 # Hastelloy Plate
  "§": <contenttweaker:plate_engineering>,   # Mechanical Plating
  "D": <contenttweaker:component_mek_alloy>, # Dense Component
});

# [Turbine Valve]*2 from [Ultimate Control Circuit][+1]
craft.remake(<mekanismgenerators:generator:11> * 2, ["pretty",
  "  ⌂  ",
  "⌂ U ⌂",
  "  ⌂  "], {
  "⌂": <mekanismgenerators:generator:10>, # Turbine Casing
  "U": <ore:circuitUltimate>,             # Ultimate Control Circuit
});

# [Turbine Vent]*2 from [Heavy Alloy Scaffolding][+1]
craft.remake(<mekanismgenerators:generator:12> * 2, ["pretty",
  "  ⌂  ",
  "⌂ § ⌂",
  "  ⌂  "], {
  "⌂": <mekanismgenerators:generator:10>,      # Turbine Casing
  "§": <contenttweaker:scaffolding_mek_alloy>, # Heavy Alloy Scaffolding
});

# [Saturating Condenser] from [Bucket][+2]
craft.remake(<mekanismgenerators:generator:13>, ["pretty",
  "п □ п",
  "□ ~ □",
  "п □ п"], {
  "п": <ore:plateElite>,      # Elite Plating
  "□": <ore:plateSuperAlloy>, # Super Alloy Plate
  "~": <minecraft:bucket>,    # Bucket
});

# [Electromagnetic Coil] from [Energy Tablet][+2]
craft.remake(<mekanismgenerators:generator:9>, ["pretty",
  "□ п □",
  "п b п",
  "□ п □"], {
  "□": <contenttweaker:plate_mek_alloy>, # Heavy Alloy Plate
  "п": <ore:plateTinite>,                # Tinite Plate
  "b": <ore:battery>,                    # Energy Tablet
});

# [Pressure Disperser] from [Dense Component][+2]
craft.remake(<mekanism:basicblock2:6>, ["pretty",
  "□ / □",
  "/ D /",
  "□ / □"], {
  "□": <contenttweaker:plate_thermal_alloy>, # Hardened Thermalloy Plate
  "/": <contenttweaker:rod_thermal_alloy>,   # Hardened Thermalloy Rod
  "D": <contenttweaker:component_mek_alloy>, # Dense Component
});

# [Solar Neutron Activator] from [Industrial Machine Chassis][+4]
craft.remake(<mekanism:machineblock3:1>, ["pretty",
  "D S D",
  "U M U",
  "□ □ □"], {
  "D": <contenttweaker:component_mek_alloy>, # Dense Component
  "S": <mekanismgenerators:solarpanel>,      # Solar Panel
  "U": <ore:circuitUltimate>,                # Ultimate Control Circuit
  "M": <ore:itemMachineChassi>,              # Industrial Machine Chassis
  "□": <ore:plateElite>,                     # Elite Plating
});

# [Fuelwood Heater] from [Superheating Element][+4]
craft.remake(<mekanism:machineblock3:6>, ["pretty",
  "B □ B",
  "□ S □",
  "¤ P ¤"], {
  "B": <ore:circuitBasic>,                       # Basic Control Circuit
  "□": <ore:plateRestonia>,                      # Restonia Plate
  "S": <mekanism:basicblock2:5>,                 # Superheating Element
  "¤": <ore:gearTin>,                            # Tin Gear
  "P": <actuallyadditions:block_furnace_double>, # Powered Furnace
});

# [Laser] from [Steel Casing][+3]
craft.remake(<mekanism:machineblock2:13>, ["pretty",
  "D b  ",
  "D ⌂ L",
  "D b  "], {
  "D": <contenttweaker:component_mek_alloy>, # Dense Component
  "b": <ore:battery>,                        # Energy Tablet
  "⌂": <mekanism:basicblock:8>,              # Steel Casing
  "L": <ore:etLaserLens>,                    # Clear Laser Lens
});

# [Laser Amplifier] from [Basic Energy Cube][+2]
craft.remake(<mekanism:machineblock2:14>, ["pretty",
  "□ □ □",
  "□ Ϟ L",
  "□ □ □"], {
  "□": <contenttweaker:plate_mek_alloy>,         # Heavy Alloy Plate
  "Ϟ": <mekanism:energycube>, # Basic Energy Cube
  "L": <ore:etLaserLens>,                        # Clear Laser Lens
});

# [Teleporter] from [Teleportation Core][+2]
craft.remake(<mekanism:machineblock:11>, ["pretty",
  "E ⌂ E",
  "⌂ T ⌂",
  "E ⌂ E"], {
  "E": <ore:circuitElite>,           # Elite Control Circuit
  "⌂": <mekanism:basicblock:8>,      # Steel Casing
  "T": <mekanism:teleportationcore>, # Teleportation Core
});

# [Portable Teleporter] from [Teleportation Core][+2]
craft.remake(<mekanism:portableteleporter>, ["pretty",
  "  b  ",
  "E T E",
  "  b  "], {
  "b": <ore:battery>,                # Energy Tablet
  "E": <ore:circuitElite>,           # Elite Control Circuit
  "T": <mekanism:teleportationcore>, # Teleportation Core
});

##########################################################################################
print("==================== end of Mekanism.zs ====================");
