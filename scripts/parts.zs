#priority 98

import crafttweaker.item.IItemStack;
import mods.techreborn.rollingMachine;
import crafttweaker.oredict.IOreDict;
import mods.immersiveengineering.Crusher;
import mods.thermalexpansion.Pulverizer;
import mods.nuclearcraft.manufactory;
import mods.techreborn.grinder;
import mods.techreborn.blastFurnace;
import mods.enderio.AlloySmelter;
import mods.immersiveengineering.ArcFurnace;
import mods.nuclearcraft.alloy_furnace;
import mods.thermalexpansion.InductionSmelter;

print("==================== loading parts.zs ====================");
##########################################################################################

val itemstoRemove =
[
	<embers:blend_caminite>,
	<tconstruct:soil>,
	<enderio:item_material:22>,
	<appliedenergistics2:quartz_glass>,
	<appliedenergistics2:quartz_vibrant_glass>,
	<deepmoblearning:polymer_clay>,
	<randomthings:ingredient:3>,
]
 as IItemStack[];

for item in itemstoRemove {
	recipes.remove(item);
}


//Binder
<enderio:item_material:22>.displayName = "Universal Binder";
recipes.addShapedMirrored(<enderio:item_material:22>*8, [[<minecraft:sand>, <minecraft:clay_ball>, <minecraft:gravel>],[<minecraft:clay_ball>, <enderio:item_material:20>, <minecraft:clay_ball>], [<minecraft:gravel>, <minecraft:clay_ball>, <minecraft:sand>]]);
recipes.addShapeless(<embers:blend_caminite>*2, [<enderio:item_material:22>,<enderio:item_material:22>]);
recipes.addShapeless(<tconstruct:soil>*4, [<enderio:item_material:22>,<enderio:item_material:22>,<enderio:item_material:22>,<enderio:item_material:22>]);
recipes.addShaped(<enderio:item_material:22>*8, [[<tconstruct:soil>, <tconstruct:soil>, <tconstruct:soil>],[<tconstruct:soil>, <enderio:item_material:20>, <tconstruct:soil>], [<tconstruct:soil>, <tconstruct:soil>, <tconstruct:soil>]]);
recipes.addShaped(<enderio:item_material:22>*8, [[<embers:blend_caminite>, <embers:blend_caminite>, <embers:blend_caminite>],[<embers:blend_caminite>, <enderio:item_material:20>, <embers:blend_caminite>], [<embers:blend_caminite>, <embers:blend_caminite>, <embers:blend_caminite>]]);


//scaffolding
mods.techreborn.assemblingMachine.addRecipe(<contenttweaker:vanasteel_scaffolding>*9, <rockhounding_chemistry:alloy_items_tech:40>*3, <contenttweaker:rod_vanasteel>*3, 100, 100);
mods.techreborn.assemblingMachine.addRecipe(<immersiveengineering:metal_decoration1:1>*9, <thermalfoundation:material:160>*3, <immersiveengineering:material:2>*3, 100, 100);
mods.techreborn.assemblingMachine.addRecipe(<contenttweaker:scal_scaffolding>*9, <rockhounding_chemistry:alloy_items_tech:4>*3, <contenttweaker:rod_scal>*3, 100, 100);
mods.techreborn.assemblingMachine.addRecipe(<contenttweaker:bam_scaffolding>*9, <rockhounding_chemistry:alloy_items_tech:7>*3, <contenttweaker:rod_bam>*3, 100, 100);
mods.techreborn.assemblingMachine.addRecipe(<contenttweaker:nimonic_scaffolding>*9, <rockhounding_chemistry:alloy_items_tech:16>*3, <contenttweaker:rod_nimonic>*3, 100, 100);
mods.techreborn.assemblingMachine.addRecipe(<contenttweaker:invar_scaffolding>*9, <thermalfoundation:material:162>*3, <moreplates:invar_stick>*3, 100, 100);
mods.techreborn.assemblingMachine.addRecipe(<immersiveengineering:metal_decoration1:5>*9, <thermalfoundation:material:132>*3, <immersiveengineering:material:3>*3, 100, 100);


recipes.addShaped(<contenttweaker:scal_scaffolding> * 6, [[<rockhounding_chemistry:alloy_items_tech:4>, <rockhounding_chemistry:alloy_items_tech:4>, <rockhounding_chemistry:alloy_items_tech:4>],[null, <contenttweaker:rod_scal>, null], [<contenttweaker:rod_scal>, null, <contenttweaker:rod_scal>]]);
recipes.addShaped(<contenttweaker:bam_scaffolding> * 6, [[<rockhounding_chemistry:alloy_items_tech:7>, <rockhounding_chemistry:alloy_items_tech:7>, <rockhounding_chemistry:alloy_items_tech:7>],[null, <contenttweaker:rod_bam>, null], [<contenttweaker:rod_bam>, null, <contenttweaker:rod_bam>]]);
recipes.addShaped(<contenttweaker:nimonic_scaffolding> * 6, [[<rockhounding_chemistry:alloy_items_tech:16>, <rockhounding_chemistry:alloy_items_tech:16>, <rockhounding_chemistry:alloy_items_tech:16>],[null, <contenttweaker:rod_nimonic>, null], [<contenttweaker:rod_nimonic>, null, <contenttweaker:rod_nimonic>]]);
recipes.addShaped(<contenttweaker:vanasteel_scaffolding> * 6, [[<rockhounding_chemistry:alloy_items_tech:40>, <rockhounding_chemistry:alloy_items_tech:40>, <rockhounding_chemistry:alloy_items_tech:40>],[null, <contenttweaker:rod_vanasteel>, null], [<contenttweaker:rod_vanasteel>, null, <contenttweaker:rod_vanasteel>]]);
recipes.addShaped(<contenttweaker:invar_scaffolding> * 6, [[<thermalfoundation:material:162>, <thermalfoundation:material:162>, <thermalfoundation:material:162>],[null, <moreplates:invar_stick>, null], [<moreplates:invar_stick>, null, <moreplates:invar_stick>]]);

//restonia
//mods.immersiveengineering.MetalPress.addRecipe(<moreplates:restonia_plate>, <actuallyadditions:item_crystal>, <immersiveengineering:mold>, 2000);
mods.thermalexpansion.Compactor.addStorageRecipe(<moreplates:restonia_plate>, <actuallyadditions:item_crystal>, 1500);
mods.techreborn.plateBendingMachine.addRecipe(<moreplates:restonia_plate>, <actuallyadditions:item_crystal>, 400, 8);
mods.nuclearcraft.pressurizer.addRecipe([<actuallyadditions:item_crystal>, <moreplates:restonia_plate>]);

//void
//mods.immersiveengineering.MetalPress.addRecipe(<moreplates:void_plate>, <actuallyadditions:item_crystal:3>, <immersiveengineering:mold>, 2000);
mods.thermalexpansion.Compactor.addStorageRecipe(<moreplates:void_plate>, <actuallyadditions:item_crystal:3>, 1500);
mods.techreborn.plateBendingMachine.addRecipe(<moreplates:void_plate>, <actuallyadditions:item_crystal:3>, 400, 8);
mods.nuclearcraft.pressurizer.addRecipe([<actuallyadditions:item_crystal:3>, <moreplates:void_plate>]);

//void metal
mods.immersiveengineering.MetalPress.addRecipe(<thaumcraft:plate:3>, <thaumcraft:ingot:1>, <immersiveengineering:mold>, 2000);
mods.techreborn.plateBendingMachine.addRecipe(<thaumcraft:plate:3>, <thaumcraft:ingot:1>, 400, 8);

//Carbon Plate
mods.immersiveengineering.MetalPress.addRecipe(<techreborn:plates:2>, <thermalfoundation:storage_resource>, <immersiveengineering:mold>, 2000);


//sheetmetal
recipes.addShaped(<contenttweaker:sheetmetal_bronze> * 4, [[null, <ore:plateBronze>, null],[<ore:plateBronze>, null, <ore:plateBronze>], [null, <ore:plateBronze>, null]]);
recipes.addShaped(<contenttweaker:sheetmetal_refinediron> * 4, [[null, <techreborn:plates:35>, null],[<techreborn:plates:35>, null, <techreborn:plates:35>], [null, <techreborn:plates:35>, null]]);
recipes.addShaped(<contenttweaker:sheetmetal_thaumium> * 4, [[null, <thaumcraft:plate:2>, null],[<thaumcraft:plate:2>, null, <thaumcraft:plate:2>], [null, <thaumcraft:plate:2>, null]]);
recipes.addShaped(<contenttweaker:sheetmetal_brass> * 4, [[null, <ore:plateBrass>, null],[<ore:plateBrass>, null, <ore:plateBrass>], [null, <ore:plateBrass>, null]]);
recipes.addShaped(<contenttweaker:sheetmetal_nimonic> * 4, [[null, <rockhounding_chemistry:alloy_parts:22>, null],[<rockhounding_chemistry:alloy_parts:22>, null, <rockhounding_chemistry:alloy_parts:22>], [null, <rockhounding_chemistry:alloy_parts:22>, null]]);
recipes.addShaped(<jaopca:block_sheetmetaldarksteel> * 4, [[null, <moreplates:dark_steel_plate>, null],[<moreplates:dark_steel_plate>, null, <moreplates:dark_steel_plate>], [null, <moreplates:dark_steel_plate>, null]]);
recipes.addShaped(<jaopca:block_sheetmetalsoularium> * 4, [[null, <moreplates:soularium_plate>, null],[<moreplates:soularium_plate>, null, <moreplates:soularium_plate>], [null, <moreplates:soularium_plate>, null]]);
recipes.addShaped(<jaopca:block_sheetmetallumium> * 4, [[null, <thermalfoundation:material:358>, null],[<thermalfoundation:material:358>, null, <thermalfoundation:material:358>], [null, <thermalfoundation:material:358>, null]]);
recipes.addShaped(<jaopca:block_sheetmetalredstonealloy> * 4, [[null, <moreplates:redstone_alloy_plate>, null],[<moreplates:redstone_alloy_plate>, null, <moreplates:redstone_alloy_plate>], [null, <moreplates:redstone_alloy_plate>, null]]);
recipes.addShaped(<jaopca:block_sheetmetalscal> * 4, [[null, <rockhounding_chemistry:alloy_parts:10>, null],[<rockhounding_chemistry:alloy_parts:10>, null, <rockhounding_chemistry:alloy_parts:10>], [null, <rockhounding_chemistry:alloy_parts:10>, null]]);
recipes.addShaped(<jaopca:block_sheetmetalelectricalsteel> * 4, [[null, <moreplates:electrical_steel_plate>, null],[<moreplates:electrical_steel_plate>, null, <moreplates:electrical_steel_plate>], [null, <moreplates:electrical_steel_plate>, null]]);
recipes.addShaped(<jaopca:block_sheetmetalvanasteel> * 4, [[null, <rockhounding_chemistry:alloy_parts:4>, null],[<rockhounding_chemistry:alloy_parts:4>, null, <rockhounding_chemistry:alloy_parts:4>], [null, <rockhounding_chemistry:alloy_parts:4>, null]]);
recipes.addShaped(<jaopca:block_sheetmetaltitanium> * 4, [[null, <techreborn:plates:31>, null],[<techreborn:plates:31>, null, <techreborn:plates:31>], [null, <techreborn:plates:31>, null]]);
recipes.addShaped(<jaopca:block_sheetmetalconductiveiron> * 4, [[null, <moreplates:conductive_iron_plate>, null],[<moreplates:conductive_iron_plate>, null, <moreplates:conductive_iron_plate>], [null, <moreplates:conductive_iron_plate>, null]]);


### Rolling Machine ###
rollingMachine.addShapeless(<immersiveengineering:sheetmetal:10>*9, [<minecraft:gold_block>]);
rollingMachine.addShapeless(<contenttweaker:sheetmetal_thaumium>*9, [<thaumcraft:metal_thaumium>]);
rollingMachine.addShapeless(<contenttweaker:sheetmetal_bronze>*9, [<thermalfoundation:storage_alloy:3>]);
rollingMachine.addShapeless(<immersiveengineering:sheetmetal>*9, [<thermalfoundation:storage>]);
rollingMachine.addShapeless(<immersiveengineering:sheetmetal:1>*9, [<thermalfoundation:storage:4>]);
rollingMachine.addShapeless(<immersiveengineering:sheetmetal:2>*9, [<thermalfoundation:storage:3>]);
rollingMachine.addShapeless(<contenttweaker:sheetmetal_refinediron>*9, [<techreborn:storage2:10>]);
rollingMachine.addShapeless(<contenttweaker:sheetmetal_brass>*9, [<ore:blockBrass>]);
rollingMachine.addShapeless(<contenttweaker:sheetmetal_nimonic>*9, [<rockhounding_chemistry:alloy_blocks_tech:5>]);
rollingMachine.addShapeless(<immersiveengineering:sheetmetal:9>*9, [<minecraft:iron_block>]);
rollingMachine.addShapeless(<immersiveengineering:sheetmetal:8>*9, [<thermalfoundation:storage_alloy>]);
rollingMachine.addShapeless(<jaopca:block_sheetmetaldarksteel>*9, [<enderio:block_alloy:6>]);
rollingMachine.addShapeless(<jaopca:block_sheetmetalsoularium>*9, [<enderio:block_alloy:7>]);
rollingMachine.addShapeless(<jaopca:block_sheetmetallumium>*9, [<thermalfoundation:storage_alloy:6>]);
rollingMachine.addShapeless(<jaopca:block_sheetmetalredstonealloy>*9, [<enderio:block_alloy:3>]);
rollingMachine.addShapeless(<jaopca:block_sheetmetalscal>*9,[<rockhounding_chemistry:alloy_blocks_tech:1>]);
rollingMachine.addShapeless(<jaopca:block_sheetmetalelectricalsteel>*9,[<enderio:block_alloy>]);
rollingMachine.addShapeless(<jaopca:block_sheetmetalvanasteel>*9,[<rockhounding_chemistry:alloy_blocks_tech:13>]);
rollingMachine.addShapeless(<jaopca:block_sheetmetaltitanium>*9,[<techreborn:storage:2>]);
rollingMachine.addShapeless(<jaopca:block_sheetmetalconductiveiron>*9,[<enderio:block_alloy:4>]);

### Compressed Platess ###
mods.techreborn.compressor.addRecipe(<jaopca:item_platedenseadvancedalloy>, <techreborn:plates:36>*9, 600, 50);
mods.techreborn.compressor.addRecipe(<jaopca:item_platedensecarbon>, <techreborn:plates:2>*9, 600, 50);
mods.techreborn.compressor.addRecipe(<jaopca:item_platedenseenergeticalloy>, <moreplates:energetic_alloy_plate>*9, 600, 50);
mods.techreborn.compressor.addRecipe(<jaopca:item_platedenseenergeticsilver>, <moreplates:energetic_silver_plate>*9, 600, 50);
mods.techreborn.compressor.addRecipe(<jaopca:item_platedenseintermedium>, <moreplates:intermedium_plate>*9, 600, 50);


###################################################
############     CRUSHING      ####################
###################################################
//clay dust
Crusher.removeRecipe(<minecraft:clay_ball>);
Crusher.addRecipe(<techreborn:dust:12>*4,<minecraft:clay>, 2048);
Crusher.addRecipe(<techreborn:dust:12>,<minecraft:clay_ball>, 1024);
grinder.removeRecipe(<techreborn:dust:12>*9);
grinder.addRecipe(<techreborn:dust:12>*4, <minecraft:clay>, 300, 4);
grinder.addRecipe(<techreborn:dust:12>, <minecraft:clay_ball>, 150, 2);
manufactory.removeRecipeWithInput(<minecraft:clay>);
manufactory.addRecipe(<minecraft:clay>, <techreborn:dust:12> * 4);
manufactory.addRecipe(<minecraft:clay_ball>, <techreborn:dust:12>);
Pulverizer.removeRecipe(<minecraft:clay>);
Pulverizer.addRecipe(<techreborn:dust:12>*4, <minecraft:clay>, 2000);
Pulverizer.addRecipe(<techreborn:dust:12>, <minecraft:clay_ball>, 1500);

//limestone
val limestoneforFlux = <ore:limestoneforFlux>;
limestoneforFlux.add(<quark:limestone>);
limestoneforFlux.add(<quark:limestone:1>);
limestoneforFlux.add(<thebetweenlands:polished_limestone>);
limestoneforFlux.add(<thebetweenlands:limestone>);
limestoneforFlux.add(<chisel:limestone2:7>);
for item in limestoneforFlux.items{
Crusher.addRecipe(<thebetweenlands:items_misc:27>*3, item, 2048, <thebetweenlands:items_misc:27>, 0.5);
Pulverizer.addRecipe(<thebetweenlands:items_misc:27>*4, item, 1500, <thebetweenlands:items_misc:27>, 50);
}
manufactory.addRecipe(<ore:limestoneforFlux>, <thebetweenlands:items_misc:27>*4);
grinder.addRecipe(<thebetweenlands:items_misc:27>*4, <ore:limestoneforFlux>, 300, 4);

//sulfur
Crusher.addRecipe(<thermalfoundation:material:771>*3, <thebetweenlands:items_misc:18>, 2048, <thermalfoundation:material:771>, 0.5);
manufactory.addRecipe(<thebetweenlands:items_misc:18>, <thermalfoundation:material:771>*4);
grinder.addRecipe(<thermalfoundation:material:771>*4, <thebetweenlands:items_misc:18>, 300, 4);
Pulverizer.addRecipe(<thermalfoundation:material:771>*4, <thebetweenlands:items_misc:18>, 1500, <thermalfoundation:material:771>, 50);
for i in 0 to 30{
	Crusher.addRecipe(<thermalfoundation:material:771>*5, <soot:sulfur_clump>.withTag({size: (i)}), 2048, <thermalfoundation:material:771>*2, 0.5);
	manufactory.addRecipe(<soot:sulfur_clump>.withTag({size: (i)}), <thermalfoundation:material:771>*6);
	grinder.addRecipe(<thermalfoundation:material:771>*6, <soot:sulfur_clump>.withTag({size: (i)}), 300, 4);
	Pulverizer.addRecipe(<thermalfoundation:material:771>*6, <soot:sulfur_clump>.withTag({size: (i)}), 1500, <thermalfoundation:material:771>, 50);
	}

//Slates
Crusher.addRecipe(<contenttweaker:slatedust>, <bloodmagic:slate>, 2048);
Crusher.addRecipe(<contenttweaker:slatedust>*2, <bloodmagic:slate:1>, 2048);
Crusher.addRecipe(<contenttweaker:slatedust>*4, <bloodmagic:slate:2>, 2048);
Crusher.addRecipe(<contenttweaker:slatedust>*8, <bloodmagic:slate:3>, 2048);
Crusher.addRecipe(<contenttweaker:slatedust>*16, <bloodmagic:slate:4>, 2048);
manufactory.addRecipe(<bloodmagic:slate>, <contenttweaker:slatedust>);
manufactory.addRecipe(<bloodmagic:slate:1>, <contenttweaker:slatedust>*2);
manufactory.addRecipe(<bloodmagic:slate:2>, <contenttweaker:slatedust>*4);
manufactory.addRecipe(<bloodmagic:slate:3>, <contenttweaker:slatedust>*8);
manufactory.addRecipe(<bloodmagic:slate:4>, <contenttweaker:slatedust>*16);
Pulverizer.addRecipe(<contenttweaker:slatedust>, <bloodmagic:slate>, 1000);
Pulverizer.addRecipe(<contenttweaker:slatedust>*2, <bloodmagic:slate:1>, 1000);
Pulverizer.addRecipe(<contenttweaker:slatedust>*4, <bloodmagic:slate:2>, 1000);
Pulverizer.addRecipe(<contenttweaker:slatedust>*8, <bloodmagic:slate:3>, 1000);
Pulverizer.addRecipe(<contenttweaker:slatedust>*16, <bloodmagic:slate:4>, 1000);
grinder.addRecipe(<contenttweaker:slatedust>, <bloodmagic:slate>, 300, 4);
grinder.addRecipe(<contenttweaker:slatedust>*2, <bloodmagic:slate:1>, 300, 4);
grinder.addRecipe(<contenttweaker:slatedust>*4, <bloodmagic:slate:2>, 300, 4);
grinder.addRecipe(<contenttweaker:slatedust>*8, <bloodmagic:slate:3>, 300, 4);
grinder.addRecipe(<contenttweaker:slatedust>*16, <bloodmagic:slate:4>, 300, 4);

Crusher.addRecipe(<nuclearcraft:dust:8>, <thermalfoundation:material:768>, 2048);
Crusher.addRecipe(<rockhounding_chemistry:chemical_dusts:24>,<techreborn:plates:2>, 2048);

//Silicon dust
Crusher.addRecipe(<libvulpes:productdust:3>, <nuclearcraft:gem:6>, 1024);
manufactory.addRecipe(<nuclearcraft:gem:6>, <libvulpes:productdust:3>);
grinder.addRecipe(<libvulpes:productdust:3>, <nuclearcraft:gem:6>, 300, 4);

###################################################
##############     ALLOYS      ####################
###################################################

//inert ingot
ArcFurnace.addRecipe(<contenttweaker:inert_ingot>*2, <thermalfoundation:material:130>*2, null, 400, 1024, [<thermalfoundation:material:131>]);
AlloySmelter.addRecipe(<contenttweaker:inert_ingot>*2, [<thermalfoundation:material:130>*2,<thermalfoundation:material:131>], 5000);

//fused quartz
ArcFurnace.addRecipe(<enderio:block_fused_quartz>, <ore:blockQuartz>, null, 200, 1024);

//vibrant alloy
//ArcFurnace.addRecipe(<enderio:item_alloy_ingot:2>, <enderio:item_alloy_ingot:1>, null, 1200, 2048, [<minecraft:ender_pearl>]);
mods.nuclearcraft.alloy_furnace.removeRecipeWithOutput(<enderio:item_material:15>);
AlloySmelter.addRecipe(<enderio:item_material:15>, [<minecraft:emerald>,<enderio:item_alloy_ingot:2>], 20000, 0.1);

//energetic alloy
AlloySmelter.removeRecipe(<enderio:item_alloy_ingot:1>);
mods.nuclearcraft.alloy_furnace.removeRecipeWithOutput([<enderio:item_alloy_ingot:1>]);
ArcFurnace.removeRecipe(<enderio:item_alloy_ingot:1>);

ArcFurnace.addRecipe(<enderio:item_alloy_ingot:1>, <embers:ingot_dawnstone>, null, 400, 1024, [<minecraft:redstone>,<minecraft:glowstone_dust>]);
AlloySmelter.addRecipe(<enderio:item_alloy_ingot:1>, [<minecraft:redstone>,<embers:ingot_dawnstone>,<minecraft:glowstone_dust>], 10000, 0.1);
alloy_furnace.addRecipe([<embers:ingot_dawnstone>, <nuclearcraft:compound:2>, <enderio:item_alloy_ingot:1>]);

//energetic silver
alloy_furnace.removeRecipeWithOutput([<enderio:item_alloy_endergy_ingot:5>]);
AlloySmelter.removeRecipe(<enderio:item_alloy_endergy_ingot:5>);

ArcFurnace.addRecipe(<enderio:item_alloy_endergy_ingot:5>, <botania:manaresource>, null, 400, 1024, [<minecraft:redstone>,<minecraft:glowstone_dust>]);
AlloySmelter.addRecipe(<enderio:item_alloy_endergy_ingot:5>, [<minecraft:redstone>,<botania:manaresource>,<minecraft:glowstone_dust>], 10000, 0.1);
alloy_furnace.addRecipe([<botania:manaresource>, <nuclearcraft:compound:2>, <enderio:item_alloy_endergy_ingot:5>]);

//Pulsating
alloy_furnace.removeRecipeWithOutput(<enderio:item_material:14>);
AlloySmelter.addRecipe(<enderio:item_material:14>, [<minecraft:diamond>,<enderio:item_alloy_ingot:5>], 10000, 0.1);
ArcFurnace.addRecipe(<enderio:item_alloy_ingot:5>, <minecraft:iron_ingot>, null, 600, 1024, [<minecraft:ender_pearl>], "Alloying");

//Steel
for item in <ore:ingotSteel>.items{ArcFurnace.removeRecipe(item);}
ArcFurnace.addRecipe(<thermalfoundation:material:160>*2, <minecraft:iron_ingot>*2, <immersiveengineering:material:7>*2, 400, 512, [<immersiveengineering:material:6>], "Alloying");
ArcFurnace.addRecipe(<thermalfoundation:material:160>, <minecraft:iron_ingot>, <immersiveengineering:material:7>, 400, 512, [<minecraft:coal>], "Alloying");
ArcFurnace.addRecipe(<thermalfoundation:material:160>, <minecraft:iron_ingot>, <immersiveengineering:material:7>, 400, 512, [<minecraft:coal:1>*2], "Alloying");

//Dark Steel
ArcFurnace.removeRecipe(<enderio:item_alloy_ingot:6>);
ArcFurnace.addRecipe(<enderio:item_alloy_ingot:6>, <thermalfoundation:material:160>, null, 1200, 1024, [<thermalfoundation:material:770>*4], "Alloying");

//Electrical Steel
ArcFurnace.removeRecipe(<enderio:item_alloy_ingot>);
ArcFurnace.addRecipe(<enderio:item_alloy_ingot>, <thermalfoundation:material:160>, null, 800, 1024, [<nuclearcraft:gem:6>], "Alloying");

//Red Alloy
alloy_furnace.removeRecipeWithOutput([<enderio:item_alloy_ingot:3>]);
AlloySmelter.removeRecipe(<enderio:item_alloy_ingot:3>);
ArcFurnace.addRecipe(<enderio:item_alloy_ingot:3>, <enderio:item_alloy_ingot:4>, null, 600, 1024, [<minecraft:redstone>,<nuclearcraft:gem:6>], "Alloying");
AlloySmelter.addRecipe(<enderio:item_alloy_ingot:3>, [<minecraft:redstone>,<enderio:item_alloy_ingot:4>,<nuclearcraft:gem:6>], 10000, 0.1);
//alloy_furnace.addRecipe([<enderio:item_alloy_ingot:4>, <minecraft:redstone>, <nuclearcraft:gem:6>, <enderio:item_alloy_ingot:3>]);

//Knight Slime
ArcFurnace.addRecipe(<tconstruct:ingots:3>, <minecraft:iron_ingot> , null, 600, 1024, [<tconstruct:edible:2>,<tconstruct:materials>], "Alloying");
AlloySmelter.addRecipe(<tconstruct:ingots:3>, [<tconstruct:edible:2>,<minecraft:iron_ingot> ,<tconstruct:materials>], 10000, 0.1);

//Clear Glass
ArcFurnace.addRecipe(<enderio:block_fused_glass>, <minecraft:glass> * 2, null, 200, 512);

//Advanced Alloy
recipes.remove(<enderutilities:enderpart:1>);
ArcFurnace.addRecipe(<enderutilities:enderpart:1>*2, <enderutilities:enderpart>*2, null, 500, 1024, [<enderio:item_alloy_ingot:1>*2, <minecraft:ender_eye>], "Alloying");
AlloySmelter.addRecipe(<enderutilities:enderpart:1> *2, [<enderutilities:enderpart> * 2,<enderio:item_alloy_ingot:1> * 2,<minecraft:ender_eye>], 10000);

//Enhanced Alloy
recipes.remove(<enderutilities:enderpart:2>);
//ArcFurnace.addRecipe(<enderutilities:enderpart:2>*2, <enderutilities:enderpart:1>*2, null, 1000, 2048, [<enderio:item_alloy_ingot:8>*2, <randomthings:stableenderpearl>], "Alloying");
AlloySmelter.addRecipe(<enderutilities:enderpart:2> * 2, [<enderutilities:enderpart:1> * 2,<enderio:item_alloy_ingot:8> * 2,<randomthings:stableenderpearl>], 15000);

//Adaptive Ingot
AlloySmelter.addRecipe(<contenttweaker:adaptive_ingot>, [<contenttweaker:material_part:30>, <enderio:block_infinity>], 15000);
ArcFurnace.addRecipe(<contenttweaker:adaptive_ingot>, <contenttweaker:material_part:30>, null, 500, 1024, [<enderio:block_infinity>], "Alloying");
alloy_furnace.addRecipe([<contenttweaker:material_part:30>, <enderio:block_infinity>, <contenttweaker:adaptive_ingot>]);

//Stellar Alloy
alloy_furnace.removeRecipeWithOutput([<enderio:item_alloy_endergy_ingot:3>*2]);
AlloySmelter.removeRecipe(<enderio:item_alloy_endergy_ingot:3>);
AlloySmelter.addRecipe(<enderio:item_alloy_endergy_ingot:3>*2, [<minecraft:nether_star>,<enderio:item_alloy_endergy_ingot:2>,<environmentaltech:aethium_crystal>*4], 1000000, 0.0);

//osgloglas Alloy
AlloySmelter.addRecipe(<plustic:osgloglasingot>, [<mekanism:ingot>,<mekanism:ingot:1>,<mekanism:ingot:3>], 500000, 0.0);

//osmerdium Alloy
AlloySmelter.addRecipe(<plustic:osmiridiumingot>*2, [<thermalfoundation:material:135>,<mekanism:ingot:1>], 1000000, 0.0);

//Prosperity shard
AlloySmelter.addRecipe(<mysticalagriculture:crafting:5>*4, [<minecraft:quartz_block>, <minecraft:lapis_block>], 15000);
ArcFurnace.addRecipe(<mysticalagriculture:crafting:5>*4, <minecraft:quartz_block>, null, 500, 1024, [<minecraft:lapis_block>], "Alloying");
alloy_furnace.addRecipe([<minecraft:quartz_block>, <minecraft:lapis_block>, <mysticalagriculture:crafting:5>*4]);

//Quartz Glass
AlloySmelter.addRecipe(<appliedenergistics2:quartz_glass>, [<ore:blockGlassHardened>, <appliedenergistics2:material:2>], 15000);
ArcFurnace.addRecipe(<appliedenergistics2:quartz_glass>, <ore:blockGlassHardened>, null, 500, 1024, [<appliedenergistics2:material:2>], "Alloying");
alloy_furnace.addRecipe([<ore:blockGlassHardened>, <appliedenergistics2:material:2>, <appliedenergistics2:quartz_glass>]);

//Vib Quartz Glass
AlloySmelter.addRecipe(<appliedenergistics2:quartz_vibrant_glass>, [<ore:blockGlassHardened>, <appliedenergistics2:material:2>,<minecraft:glowstone_dust>*2], 15000);
ArcFurnace.addRecipe(<appliedenergistics2:quartz_vibrant_glass>, <ore:blockGlassHardened>, null, 500, 1024, [<appliedenergistics2:material:2>,<minecraft:glowstone_dust>*2], "Alloying");
alloy_furnace.addRecipe([<appliedenergistics2:quartz_glass>, <minecraft:glowstone_dust>*2, <appliedenergistics2:quartz_vibrant_glass>]);

//polymer_clay
AlloySmelter.addRecipe(<deepmoblearning:polymer_clay>*32, [<randomthings:ingredient:3>, <enderio:item_material:22>*32], 20000);
ArcFurnace.addRecipe(<deepmoblearning:polymer_clay>*32, <randomthings:ingredient:3>, null, 1200, 512, [<enderio:item_material:22>*32], "Alloying");
alloy_furnace.addRecipe([<randomthings:ingredient:3>, <enderio:item_material:22>*32, <deepmoblearning:polymer_clay>*32]);

AlloySmelter.addRecipe(<deepmoblearning:polymer_clay>*16, [<thermalfoundation:material:134>, <enderio:item_material:22>*16], 15000);
ArcFurnace.addRecipe(<deepmoblearning:polymer_clay>*16, <thermalfoundation:material:134>, null, 800, 512, [<enderio:item_material:22>*16], "Alloying");
alloy_furnace.addRecipe([<thermalfoundation:material:134>, <enderio:item_material:22>*16, <deepmoblearning:polymer_clay>*16]);

AlloySmelter.addRecipe(<deepmoblearning:polymer_clay>*8, [<minecraft:gold_ingot>, <enderio:item_material:22>*8], 10000);
ArcFurnace.addRecipe(<deepmoblearning:polymer_clay>*8, <minecraft:gold_ingot>, null, 600, 512, [<enderio:item_material:22>*8], "Alloying");
alloy_furnace.addRecipe([<minecraft:gold_ingot>, <enderio:item_material:22>*8, <deepmoblearning:polymer_clay>*8]);

AlloySmelter.addRecipe(<deepmoblearning:polymer_clay>*4, [<minecraft:iron_ingot>, <enderio:item_material:22>*4], 5000);
ArcFurnace.addRecipe(<deepmoblearning:polymer_clay>*4, <minecraft:iron_ingot>, null, 600, 512, [<enderio:item_material:22>*4], "Alloying");
alloy_furnace.addRecipe([<minecraft:iron_ingot>, <enderio:item_material:22>*4, <deepmoblearning:polymer_clay>*4]);

//Specter Ingot
InductionSmelter.addRecipe(<randomthings:ingredient:3>, <contenttweaker:inert_ingot>, <randomthings:ingredient:2>, 10000);
InductionSmelter.addRecipe(<randomthings:ingredient:3>*2, <contenttweaker:material_part:20>, <randomthings:ingredient:2>, 10000);
ArcFurnace.addRecipe(<randomthings:ingredient:3>*2, <contenttweaker:material_part:20>, null, 500, 1024, [<randomthings:ingredient:2>], "Alloying");
ArcFurnace.addRecipe(<randomthings:ingredient:3>, <contenttweaker:inert_ingot>, null, 500, 1024, [<randomthings:ingredient:2>], "Alloying");

//Titanium Iridium
alloy_furnace.removeRecipeWithOutput([<advancedrocketry:productingot:1>*2]);

//Bimetal Gear
InductionSmelter.addRecipe(<enderio:item_material:11>, <thermalfoundation:material:288>, <enderio:item_material:20>*4, 10000);
ArcFurnace.addRecipe(<enderio:item_material:11>, <thermalfoundation:material:288>, null, 500, 1024, [<enderio:item_material:20>*4], "Alloying");
AlloySmelter.addRecipe(<enderio:item_material:11>, [<thermalfoundation:material:288>, <enderio:item_material:20>*4], 10000);

//Dark Gear
InductionSmelter.addRecipe(<enderio:item_material:73>, <enderio:item_material:11>, <enderio:item_alloy_ingot:6>*4, 25000);
ArcFurnace.addRecipe(<enderio:item_material:73>, <enderio:item_material:11>, null, 500, 2048, [<enderio:item_alloy_ingot:6>*4], "Alloying");
AlloySmelter.addRecipe(<enderio:item_material:73>, [<enderio:item_material:11>, <enderio:item_alloy_ingot:6>*4], 25000);

//Energetic Gear
InductionSmelter.addRecipe(<enderio:item_material:12>, <enderio:item_material:73>, <enderio:item_alloy_ingot:1>*4, 50000);
ArcFurnace.addRecipe(<enderio:item_material:12>, <enderio:item_material:73>, null, 500, 4096, [<enderio:item_alloy_ingot:1>*4], "Alloying");
AlloySmelter.addRecipe(<enderio:item_material:12>, [<enderio:item_material:73>, <enderio:item_alloy_ingot:1>*4], 50000);

//Vibrant Gear
InductionSmelter.addRecipe(<enderio:item_material:13>, <enderio:item_material:12>, <enderio:item_alloy_ingot:2>*4, 100000);
AlloySmelter.addRecipe(<enderio:item_material:13>, [<enderio:item_material:12>, <enderio:item_alloy_ingot:2>*4], 100000);

val alloystoAdapt =
[
<contenttweaker:inert_ingot>,
<enderio:item_alloy_endergy_ingot:5>,
<enderio:item_alloy_ingot:1>,
<enderio:item_alloy_ingot:3>,
<enderio:item_alloy_ingot:4>,
<enderio:item_alloy_ingot:5>,
<enderio:item_alloy_ingot:6>,
<enderio:item_alloy_ingot:7>,
<enderio:item_alloy_ingot>,
<nuclearcraft:alloy:1>,
<nuclearcraft:alloy:6>,
<tconstruct:ingots:2>,
<tconstruct:ingots:5>,
<thermalfoundation:material:160>,
<thermalfoundation:material:161>,
<thermalfoundation:material:162>,
<thermalfoundation:material:163>,
<thermalfoundation:material:164>,
]
 as IItemStack[];

for item in alloystoAdapt {
AlloySmelter.addRecipe(item * 3, [<contenttweaker:adaptive_ingot>, item], 15000);
ArcFurnace.addRecipe(item * 3, <contenttweaker:adaptive_ingot>, null, 500, 1024, [item], "Alloying");
alloy_furnace.addRecipe([<contenttweaker:adaptive_ingot>, item, item * 3]);
}




##########################################################################################
print("==================== end of parts.zs ====================");
