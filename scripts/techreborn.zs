
import mods.techreborn.rollingMachine;
import crafttweaker.item.IItemStack;
import mods.actuallyadditions.Empowerer;
import mods.techreborn.blastFurnace;
import mods.thermalexpansion.Transposer;

print("==================== loading mods techreborn.zs ====================");
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
<techreborn:industrial_centrifuge>,
<techreborn:industrial_electrolyzer>,
<techreborn:machine_casing:1>,
<jaopca:item_gearhslasteel>,
<techreborn:part:2>,
<techreborn:upgrades>,
<techreborn:machine_casing:2>,
<techreborn:machine_casing>,
<techreborn:reinforced_glass>,
<techreborn:part:36>,
]
 as IItemStack[];

for item in itemstoRemove {
	recipes.remove(item);
}

//UU Matter
<techreborn:uumatter>.addTooltip(format.darkPurple("Collected from the Matter Fabricator"));

//Overclocker
recipes.addShaped(<techreborn:upgrades>, [[null, <techreborn:part:38>, null], [<techreborn:cable:6>, <ore:circuitElite>, <techreborn:cable:6>]]);
recipes.addShaped(<techreborn:upgrades>, [[null, <techreborn:part:8>, null], [<techreborn:cable:6>, <ore:circuitElite>, <techreborn:cable:6>]]);
recipes.addShaped(<techreborn:upgrades>, [[null, <techreborn:part:10>, null], [<techreborn:cable:6>, <ore:circuitElite>, <techreborn:cable:6>]]);

Transposer.addFillRecipe(<techreborn:part:36>, <techreborn:dynamiccell>.withTag({Fluid: {FluidName: "water", Amount: 1000}}), <liquid:cryotheum> * 250, 5000);



//refined iron
furnace.remove(<techreborn:ingot:19>);
mods.immersiveengineering.ArcFurnace.addRecipe(<techreborn:ingot:19>*2, <minecraft:iron_ingot>, <immersiveengineering:material:7>, 400, 512, [<thebetweenlands:items_misc:27>, <contenttweaker:slatedust>], "Alloying");
mods.immersiveengineering.ArcFurnace.addRecipe(<techreborn:ingot:19>, <minecraft:iron_ingot>, <immersiveengineering:material:7>, 300, 512, [<contenttweaker:slatedust>], "Alloying");
mods.thermalexpansion.InductionSmelter.addRecipe(<techreborn:ingot:19>, <minecraft:iron_ingot>, <thebetweenlands:items_misc:27>, 10000, <thermalfoundation:material:864>, 25);

//Grinder
recipes.addShaped(<techreborn:grinder>, [[<twilightforest:steeleaf_ingot>, <twilightforest:steeleaf_ingot>, <twilightforest:steeleaf_ingot>],[<ore:cobblestone>, <techreborn:machine_frame>, <ore:cobblestone>], [null, <ore:circuitBasic>, null]]);
//Chem Reactor
recipes.addShaped(<techreborn:chemical_reactor>, [[<thermalfoundation:material:354>, <ore:circuitAdvanced>, <thermalfoundation:material:354>],[<thermalfoundation:glass:3>, <techreborn:machine_frame:1>, <thermalfoundation:glass:3>], [<thermalfoundation:material:354>, <ore:circuitAdvanced>, <thermalfoundation:material:354>]]);
//Rolling Machine
recipes.addShaped(<techreborn:rolling_machine>, [[<minecraft:piston>, <ore:circuitBasic>, <minecraft:piston>],[<immersiveengineering:metal_decoration0:5>, <techreborn:machine_frame>, <immersiveengineering:metal_decoration0:5>], [<minecraft:piston>, <ore:circuitBasic>, <minecraft:piston>]]);
//Wire Mill
recipes.addShaped(<techreborn:wire_mill>, [[<ore:plateBrass>, <immersiveengineering:metal_decoration0:4>, <ore:plateBrass>],[<ore:circuitBasic>, <techreborn:machine_frame>, <ore:circuitBasic>], [<ore:plateBrass>, <minecraft:piston>, <ore:plateBrass>]]);


//centrifuge
recipes.addShaped(<techreborn:industrial_centrifuge>, [[<moreplates:electrical_steel_plate>, <ore:circuitAdvanced>, <moreplates:electrical_steel_plate>],[<immersiveengineering:toolupgrade:13>, <techreborn:machine_frame:1>, <rockhounding_chemistry:misc_items:21>], [<moreplates:electrical_steel_plate>, <ore:circuitAdvanced>, <moreplates:electrical_steel_plate>]]);

//electrolyzer
recipes.addShaped(<techreborn:industrial_electrolyzer>, [[<moreplates:electrical_steel_plate>, <arcanearchives:radiant_tank>, <moreplates:electrical_steel_plate>],[<ore:circuitAdvanced>, <techreborn:machine_frame:1>, <ore:circuitAdvanced>], [<moreplates:electrical_steel_plate>, <immersiveengineering:metal_device1:8>, <moreplates:electrical_steel_plate>]]);


### Assembling Machine ###

//Gold Cable
mods.techreborn.assemblingMachine.addRecipe(<techreborn:cable:6>, <techreborn:cable:2>, <ore:itemRubber>, 100, 100);


### Rolling Machine ###

mods.mekatweaker.InfuserType.addTypeObject(<techreborn:ingot:3>, "CHROME", 100);
mods.mekanism.infuser.addRecipe("CHROME", 25, <thermalfoundation:material:133>, <rockhounding_chemistry:alloy_items_tech:22>);


//heating coils
rollingMachine.removeRecipe(<techreborn:part:15>);
rollingMachine.removeRecipe(<techreborn:part:14>);
rollingMachine.removeRecipe(<techreborn:part:13>);
rollingMachine.addShaped(<techreborn:part:15>*2, [[<contenttweaker:material_part:5>,<contenttweaker:material_part:5>,<contenttweaker:material_part:5>],[<contenttweaker:material_part:5>,null,<contenttweaker:material_part:5>],[<contenttweaker:material_part:5>,<contenttweaker:material_part:5>,<contenttweaker:material_part:5>]]);
rollingMachine.addShaped(<techreborn:part:14>*2, [[<rockhounding_chemistry:alloy_items_tech:22>,<rockhounding_chemistry:alloy_items_tech:22>,<rockhounding_chemistry:alloy_items_tech:22>],[<rockhounding_chemistry:alloy_items_tech:22>,null,<rockhounding_chemistry:alloy_items_tech:22>],[<rockhounding_chemistry:alloy_items_tech:22>,<rockhounding_chemistry:alloy_items_tech:22>,<rockhounding_chemistry:alloy_items_tech:22>]]);


//Terrasteel coil
//rollingMachine.addShaped(<contenttweaker:terrasteel_coil>*4, [[<botania:manaresource:4>,<botania:manaresource:4>,<botania:manaresource:4>],[<botania:manaresource:4>,null,<botania:manaresource:4>],[<botania:manaresource:4>,<botania:manaresource:4>,<botania:manaresource:4>]]);



//Blast Furnace
recipes.addShaped(<techreborn:industrial_blast_furnace>, [[<ore:circuitAdvanced>, <techreborn:part:13>, <ore:circuitAdvanced>],[<techreborn:part:13>, <techreborn:machine_frame:1>, <techreborn:part:13>], [<techreborn:electric_furnace>, <techreborn:part:13>, <techreborn:electric_furnace>]]);

//Kanthal Heating Coil
<techreborn:part:13>.displayName = "Constantan Heating Coil";
<ore:ingotConstantan>.add(<rockhounding_chemistry:alloy_items_tech:13>);

mods.techreborn.rollingMachine.addShaped(<techreborn:part:13>*2, [[<ore:ingotConstantan>,<ore:ingotConstantan>,<ore:ingotConstantan>],[<ore:ingotConstantan>,null,<ore:ingotConstantan>],[<ore:ingotConstantan>,<ore:ingotConstantan>,<ore:ingotConstantan>]]);

//Advanced Frame
//recipes.addShaped(<techreborn:machine_frame:1>, [[<moreplates:energetic_silver_plate>, <techreborn:plates:36>, <moreplates:energetic_silver_plate>],[<techreborn:plates:2>, <techreborn:machine_frame>, <techreborn:plates:2>], [<moreplates:energetic_silver_plate>, <techreborn:plates:36>, <moreplates:energetic_silver_plate>]]);
Empowerer.addRecipe(<techreborn:machine_frame:1>, <techreborn:machine_frame>, <jaopca:item_platedensecarbon>, <jaopca:item_platedenseintermedium>, <jaopca:item_platedenseenergeticsilver>, <jaopca:item_platedenseadvancedalloy>, 1000000, 400, [0.9, 0.1, 0.2]);
<techreborn:machine_frame:1>.addTooltip(format.darkPurple("Crafted with 1,000,000 RF"));

//1st Tier Casing
recipes.addShaped(<techreborn:machine_casing> * 4, [[<techreborn:plates:35>, <techreborn:plates:35>, <techreborn:plates:35>],[<ore:circuitBasic>, <techreborn:machine_frame>, <ore:circuitBasic>], [<techreborn:plates:35>, <techreborn:plates:35>, <techreborn:plates:35>]]);

//2nd tier casing
recipes.addShaped(<techreborn:machine_casing:1> * 4, [[<techreborn:machine_casing>, <ore:circuitAdvanced>, <techreborn:machine_casing>],[<jaopca:item_gearhslasteel>, <moreplates:terrasteel_plate>, <jaopca:item_gearhslasteel>], [<techreborn:machine_casing>, <ore:circuitAdvanced>, <techreborn:machine_casing>]]);
//recipes.addShaped(<techreborn:machine_casing:1> * 4, [[<ore:circuitAdvanced>, <moreplates:terrasteel_plate>, <ore:circuitAdvanced>],[<jaopca:item_platehslasteel>, <techreborn:machine_frame:1>, <jaopca:item_platehslasteel>], [<ore:circuitAdvanced>, <jaopca:item_platehslasteel>, <ore:circuitAdvanced>]]);

//3rd Tier Casing
recipes.addShaped(<techreborn:machine_casing:2>, [[<techreborn:plates:20>, <ore:circuitElite>, <techreborn:plates:20>],[<environmentaltech:lonsdaleite_crystal>, <techreborn:machine_casing:1>, <environmentaltech:lonsdaleite_crystal>], [<techreborn:plates:20>, <ore:circuitElite>, <techreborn:plates:20>]]);
//recipes.addShaped(<techreborn:machine_casing:2> * 4, [[<techreborn:plates:20>, <ore:circuitElite>, <techreborn:plates:20>],[<environmentaltech:lonsdaleite_crystal>, <techreborn:machine_frame:2>, <environmentaltech:lonsdaleite_crystal>], [<techreborn:plates:20>, <ore:circuitElite>, <techreborn:plates:20>]]);


//Reinforced Glass
blastFurnace.addRecipe(<techreborn:reinforced_glass>*2, null, <thermalfoundation:glass:3>*2, <techreborn:plates:36>, 1200, 50, 2000);

### Ginder ###
/*Clay Dust
mods.techreborn.grinder.removeRecipe(<techreborn:dust:12>*9);
mods.techreborn.grinder.addRecipe(<techreborn:dust:12>*4, <minecraft:clay>, 300, 4);
mods.techreborn.grinder.addRecipe(<techreborn:dust:12>, <minecraft:clay_ball>, 150, 2);
*/

mods.techreborn.industrialGrinder.addRecipe(<thermalfoundation:material:70>, null, null, null, <randomthings:ingredient:3>, null, <liquid:alchemical_redstone>*500, 200, 512);

### BLAST FURNACE ###
//mods.techreborn.blastFurnace.removeInputRecipe(IIngredient iIngredient)
// 3880 is max heat


### Centrifuge ###
// Needs to be ore dic. Might circle around to it
val CentrifugetoRemove =
[
<techreborn:dust:59>,
<thermalfoundation:material:65>,
<thermalfoundation:material:66>,
<thermalfoundation:material:70>,
<thermalfoundation:material:69>,
<thermalfoundation:material:67>,
<thermalfoundation:material>,
<thermalfoundation:material:98>,
<thermalfoundation:material:1>,
<techreborn:dust:15>,
<thermalfoundation:material:64>,
<thermalfoundation:material:99>,
<techreborn:dust:6>,
<techreborn:dynamiccell>*16,
]
 as IItemStack[];

for item in CentrifugetoRemove {
mods.techreborn.centrifuge.removeInputRecipe(item, null);
}

##########################################################################################
print("==================== end of mods techreborn.zs ====================");
