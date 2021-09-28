import mods.modularmachinery.RecipePrimer;
import crafttweaker.item.IItemStack;
import mods.actuallyadditions.Empowerer;
import mods.extendedcrafting.CombinationCrafting;

print("==================== loading modular machines.zs ====================");
##########################################################################################

val itemstoRemove =
[
    <modularmachinery:blockenergyoutputhatch>,
    <modularmachinery:blockenergyoutputhatch:1>,
    <modularmachinery:blockenergyinputhatch>,
    <modularmachinery:blockenergyinputhatch:1>,
    <modularmachinery:blockinputbus:1>,
    <modularmachinery:blockinputbus>,
    <modularmachinery:blockoutputbus:1>,
    <modularmachinery:blockoutputbus>,
    <modularmachinery:blockfluidoutputhatch:1>,
    <modularmachinery:blockfluidoutputhatch>,
    <modularmachinery:blockfluidinputhatch:1>,
    <modularmachinery:blockfluidinputhatch>,
    <modularmachinery:blockcasing:4>,
    <modularmachinery:blockcontroller>,
    <modularmachinery:blockcasing>,
]
 as IItemStack[];

for item in itemstoRemove {
	recipes.remove(item);
}

val itemstoHide =
[
    <modulardiversity:blockemberinputhatch>,
    <modulardiversity:blockemberinputhatch:4>,
    <modulardiversity:blockemberinputhatch:5>,
    <modulardiversity:blockemberinputhatch:6>,
    <modulardiversity:blockemberinputhatch:7>,
    <modulardiversity:blockemberoutputhatch>,
    <modulardiversity:blockemberoutputhatch:1>,
    <modulardiversity:blockemberoutputhatch:2>,
    <modulardiversity:blockemberoutputhatch:3>,
    <modulardiversity:blockemberoutputhatch:4>,
    <modulardiversity:blockemberoutputhatch:5>,
    <modulardiversity:blockemberoutputhatch:6>,
    <modulardiversity:blockemberoutputhatch:7>,

    <modularmachinery:blockinputbus>,
    <modularmachinery:blockfluidinputhatch>,
    <modularmachinery:blockenergyinputhatch>,
    <modularmachinery:blockenergyoutputhatch>,
    <modularmachinery:blockfluidoutputhatch>,
    <modularmachinery:blockoutputbus>,

]
 as IItemStack[];


for item in itemstoHide {
	mods.jei.JEI.removeAndHide(item);
}

//Controller
//recipes.addShaped(<modularmachinery:blockcontroller>, [[<ore:circuitAdvanced>, <rockhounding_chemistry:misc_items:1>, <ore:circuitAdvanced>],[<jaopca:item_platetough>, <modularmachinery:blockcasing>, <jaopca:item_platetough>], [<actuallyadditions:block_crystal>, <moreplates:energetic_alloy_gear>, <actuallyadditions:block_crystal>]]);
recipes.addShaped(<modularmachinery:blockcontroller>, [[<thermalfoundation:material:320>, <modularmachinery:itemmodularium>, <thermalfoundation:material:320>],[<modularmachinery:itemmodularium>, <minecraft:redstone_block>, <modularmachinery:itemmodularium>], [<thermalfoundation:material:320>, <thermalfoundation:material:257>, <thermalfoundation:material:320>]]);

//Casing
recipes.addShaped(<modularmachinery:blockcasing>, [[<advgenerators:iron_frame>, <techreborn:plates:36>, <advgenerators:iron_frame>],[<techreborn:plates:36>, <contenttweaker:material_part:11>, <techreborn:plates:36>], [<advgenerators:iron_frame>, <techreborn:plates:36>, <advgenerators:iron_frame>]]);
recipes.addShaped(<modularmachinery:blockcasing> * 2, [[<advgenerators:iron_frame>, <techreborn:plates:36>, <advgenerators:iron_frame>],[<techreborn:plates:36>, <rockhounding_chemistry:alloy_parts:63>, <techreborn:plates:36>], [<advgenerators:iron_frame>, <techreborn:plates:36>, <advgenerators:iron_frame>]]);


//Modularium
//Transposer.addFillRecipe(<modularmachinery:itemmodularium>, <thermalfoundation:material:160>, <liquid:dawnstone> * 144, 10000);
mods.inworldcrafting.FluidToItem.transform(<modularmachinery:itemmodularium>, <liquid:moltenembers>, [<thermalfoundation:material>,<thermalfoundation:material:1>], false);

//Vent
recipes.addShaped(<modularmachinery:blockcasing:1>, [[<thermalfoundation:material:358>, <enderio:block_dark_iron_bars>, <thermalfoundation:material:358>],[<enderio:block_dark_iron_bars>, <modularmachinery:blockcasing>, <enderio:block_dark_iron_bars>], [<thermalfoundation:material:358>, <enderio:block_dark_iron_bars>, <thermalfoundation:material:358>]]);

//Blueprints
recipes.addShaped(<modularmachinery:itemblueprint>.withTag({dynamicmachine: "modularmachinery:mixer"}), [[<mysticalmechanics:axle_iron>, <enderio:item_material:77>, <mysticalmechanics:axle_iron>],[<enderio:item_material:77>, <mysticalmechanics:axle_iron>, <enderio:item_material:77>], [<mysticalmechanics:axle_iron>, <enderio:item_material:77>, <mysticalmechanics:axle_iron>]]);
recipes.addShaped(<modularmachinery:itemblueprint>.withTag({dynamicmachine: "modularmachinery:minifield-crafter"}), [[null, <enderio:item_material:77>, null],[<enderio:item_material:77>, <compactmachines3:fieldprojector>, <enderio:item_material:77>], [null, <enderio:item_material:77>, null]]);
recipes.addShaped(<modularmachinery:itemblueprint>.withTag({dynamicmachine: "modularmachinery:darkness-collector"}), [[null, <enderio:item_material:77>, null],[<enderio:item_material:77>, <chisel:energizedvoidstone>, <enderio:item_material:77>], [null, <enderio:item_material:77>, null]]);
recipes.addShaped(<modularmachinery:itemblueprint>.withTag({dynamicmachine: "modularmachinery:lowgravitydepositionchamber"}), [[null, <enderio:item_material:77>, null],[<enderio:item_material:77>, <qmd:containment_casing>, <enderio:item_material:77>], [null, <enderio:item_material:77>, null]]);
recipes.addShaped(<modularmachinery:itemblueprint>.withTag({dynamicmachine: "modularmachinery:heavens-forge"}), [[null, <enderio:item_material:77>, null],[<enderio:item_material:77>, <thaumicaugmentation:starfield_glass:2>, <enderio:item_material:77>], [null, <enderio:item_material:77>, null]]);

//Assembler Blueprints
recipes.addShaped(<modularmachinery:itemblueprint>.withTag({dynamicmachine: "modularmachinery:assemblermkone"}), [[null, <enderio:item_material:77>, null],[<enderio:item_material:77>, <techreborn:refined_iron_fence>, <enderio:item_material:77>], [null, <enderio:item_material:77>, null]]);

recipes.addShaped(<modularmachinery:itemblueprint>.withTag({dynamicmachine: "modularmachinery:assemblermktwo"}), [[null, <enderio:item_material:77>, null],[<enderio:item_material:77>, <mekanism:plasticfence:15>, <enderio:item_material:77>], [null, <enderio:item_material:77>, null]]);
recipes.addShapeless(<modularmachinery:itemblueprint>.withTag({dynamicmachine: "modularmachinery:assemblermktwo"}), [<modularmachinery:itemblueprint>.withTag({dynamicmachine: "modularmachinery:assemblermkone"}).onlyWithTag({dynamicmachine: "modularmachinery:assemblermkone"}),<mekanism:plasticfence:15>]);

recipes.addShaped(<modularmachinery:itemblueprint>.withTag({dynamicmachine: "modularmachinery:assemblermkthree"}), [[null, <enderio:item_material:77>, null],[<enderio:item_material:77>, <techreborn:machine_casing:2>, <enderio:item_material:77>], [null, <enderio:item_material:77>, null]]);
recipes.addShapeless(<modularmachinery:itemblueprint>.withTag({dynamicmachine: "modularmachinery:assemblermkthree"}), [<modularmachinery:itemblueprint>.withTag({dynamicmachine: "modularmachinery:assemblermktwo"}).onlyWithTag({dynamicmachine: "modularmachinery:assemblermktwo"}),<techreborn:machine_casing:2>]);

recipes.addShaped(<modularmachinery:itemblueprint>.withTag({dynamicmachine: "modularmachinery:assemblermkfour"}), [[null, <enderio:item_material:77>, null],[<enderio:item_material:77>, <techreborn:fusion_coil>, <enderio:item_material:77>], [null, <enderio:item_material:77>, null]]);
recipes.addShapeless(<modularmachinery:itemblueprint>.withTag({dynamicmachine: "modularmachinery:assemblermkfour"}), [<modularmachinery:itemblueprint>.withTag({dynamicmachine: "modularmachinery:assemblermkthree"}).onlyWithTag({dynamicmachine: "modularmachinery:assemblermkthree"}),<techreborn:fusion_coil>]);

//Energy input
recipes.addShaped(<modularmachinery:blockenergyinputhatch:7>, [[null, <moreplates:redstone_alloy_plate>, null],[<moreplates:redstone_alloy_plate>, <modularmachinery:blockenergyinputhatch:6>, <moreplates:redstone_alloy_plate>], [null, <ore:circuitElite>, null]]);
recipes.addShaped(<modularmachinery:blockenergyinputhatch:6>, [[null, <moreplates:redstone_alloy_plate>, null],[<moreplates:redstone_alloy_plate>, <modularmachinery:blockenergyinputhatch:5>, <moreplates:redstone_alloy_plate>], [null, <ore:circuitElite>, null]]);
recipes.addShaped(<modularmachinery:blockenergyinputhatch:5>, [[null, <moreplates:redstone_alloy_plate>, null],[<moreplates:redstone_alloy_plate>, <modularmachinery:blockcasing:4>, <moreplates:redstone_alloy_plate>], [null, <ore:circuitElite>, null]]);
recipes.addShaped(<modularmachinery:blockenergyinputhatch:4>, [[null, <moreplates:redstone_alloy_plate>, null],[<moreplates:redstone_alloy_plate>, <modularmachinery:blockenergyinputhatch:3>, <moreplates:redstone_alloy_plate>], [null, <ore:circuitAdvanced>, null]]);
recipes.addShaped(<modularmachinery:blockenergyinputhatch:3>, [[null, <moreplates:redstone_alloy_plate>, null],[<moreplates:redstone_alloy_plate>, <modularmachinery:blockcasing>, <moreplates:redstone_alloy_plate>], [null, <ore:circuitAdvanced>, null]]);
recipes.addShaped(<modularmachinery:blockenergyinputhatch:2>, [[null, <thermalfoundation:material:33>, null],[<thermalfoundation:material:33>, <modularmachinery:blockenergyinputhatch:1>, <thermalfoundation:material:33>], [null, <ore:circuitBasic>, null]]);
recipes.addShaped(<modularmachinery:blockenergyinputhatch:1>, [[null, <thermalfoundation:material:33>, null],[<thermalfoundation:material:33>, <modularmachinery:itemmodularium>, <thermalfoundation:material:33>], [null, <ore:circuitBasic>, null]]);


val blockenergyinputhatch =
[
<modularmachinery:blockenergyinputhatch:7>,
<modularmachinery:blockenergyinputhatch:6>,
<modularmachinery:blockenergyinputhatch:5>,
<modularmachinery:blockenergyinputhatch:4>,
<modularmachinery:blockenergyinputhatch:3>,
<modularmachinery:blockenergyinputhatch:2>,
<modularmachinery:blockenergyinputhatch:1>,
//<modularmachinery:blockenergyinputhatch>,
]
 as IItemStack[];
for item in blockenergyinputhatch {
<ore:energyInputHatch>.add(item);
}

//Energy output
recipes.addShaped(<modularmachinery:blockenergyoutputhatch:7>, [[null, <ore:circuitElite>, null],[<moreplates:redstone_alloy_plate>, <modularmachinery:blockenergyoutputhatch:6>, <moreplates:redstone_alloy_plate>], [null, <moreplates:redstone_alloy_plate>, null]]);
recipes.addShaped(<modularmachinery:blockenergyoutputhatch:6>, [[null, <ore:circuitElite>, null],[<moreplates:redstone_alloy_plate>, <modularmachinery:blockenergyoutputhatch:5>, <moreplates:redstone_alloy_plate>], [null, <moreplates:redstone_alloy_plate>, null]]);
recipes.addShaped(<modularmachinery:blockenergyoutputhatch:5>, [[null, <ore:circuitElite>, null],[<moreplates:redstone_alloy_plate>, <modularmachinery:blockcasing:4>, <moreplates:redstone_alloy_plate>], [null, <moreplates:redstone_alloy_plate>, null]]);
recipes.addShaped(<modularmachinery:blockenergyoutputhatch:4>, [[null, <ore:circuitAdvanced>, null],[<moreplates:redstone_alloy_plate>, <modularmachinery:blockenergyoutputhatch:3>, <moreplates:redstone_alloy_plate>], [null, <moreplates:redstone_alloy_plate>, null]]);
recipes.addShaped(<modularmachinery:blockenergyoutputhatch:3>, [[null, <ore:circuitAdvanced>, null],[<moreplates:redstone_alloy_plate>, <modularmachinery:blockcasing>, <moreplates:redstone_alloy_plate>], [null, <moreplates:redstone_alloy_plate>, null]]);
recipes.addShaped(<modularmachinery:blockenergyoutputhatch:2>, [[null, <ore:circuitBasic>, null],[<thermalfoundation:material:33>, <modularmachinery:blockenergyoutputhatch:1>, <thermalfoundation:material:33>], [null, <thermalfoundation:material:33>, null]]);
recipes.addShaped(<modularmachinery:blockenergyoutputhatch:1>, [[null, <ore:circuitBasic>, null],[<thermalfoundation:material:33>, <modularmachinery:itemmodularium>, <thermalfoundation:material:33>], [null, <thermalfoundation:material:33>, null]]);

val blockenergyoutputhatch =
[
<modularmachinery:blockenergyoutputhatch:7>,
<modularmachinery:blockenergyoutputhatch:6>,
<modularmachinery:blockenergyoutputhatch:5>,
<modularmachinery:blockenergyoutputhatch:4>,
<modularmachinery:blockenergyoutputhatch:3>,
<modularmachinery:blockenergyoutputhatch:2>,
<modularmachinery:blockenergyoutputhatch:1>,
//<modularmachinery:blockenergyoutputhatch>,
]
 as IItemStack[];
for item in blockenergyoutputhatch {
<ore:energyOutputHatch>.add(item);
}

//Fluid Input
recipes.addShaped(<modularmachinery:blockfluidinputhatch:7>, [[null, <embers:plate_dawnstone>, null],[<embers:plate_dawnstone>, <modularmachinery:blockfluidinputhatch:6>, <embers:plate_dawnstone>], [null, <minecraft:bucket>, null]]);
recipes.addShaped(<modularmachinery:blockfluidinputhatch:6>, [[null, <embers:plate_dawnstone>, null],[<embers:plate_dawnstone>, <modularmachinery:blockfluidinputhatch:5>, <embers:plate_dawnstone>], [null, <minecraft:bucket>, null]]);
recipes.addShaped(<modularmachinery:blockfluidinputhatch:5>, [[null, <embers:plate_dawnstone>, null],[<embers:plate_dawnstone>, <modularmachinery:blockcasing:4>, <embers:plate_dawnstone>], [null, <minecraft:bucket>, null]]);
recipes.addShaped(<modularmachinery:blockfluidinputhatch:4>, [[null, <embers:plate_dawnstone>, null],[<embers:plate_dawnstone>, <modularmachinery:blockfluidinputhatch:3>, <embers:plate_dawnstone>], [null, <minecraft:bucket>, null]]);
recipes.addShaped(<modularmachinery:blockfluidinputhatch:3>, [[null, <embers:plate_dawnstone>, null],[<embers:plate_dawnstone>, <modularmachinery:blockcasing>, <embers:plate_dawnstone>], [null, <minecraft:bucket>, null]]);
recipes.addShaped(<modularmachinery:blockfluidinputhatch:2>, [[null, <thermalfoundation:material:320>, null],[<thermalfoundation:material:320>, <modularmachinery:blockfluidinputhatch:1>, <thermalfoundation:material:320>], [null, <minecraft:bucket>, null]]);
recipes.addShaped(<modularmachinery:blockfluidinputhatch:1>, [[null, <thermalfoundation:material:320>, null],[<thermalfoundation:material:320>, <modularmachinery:itemmodularium>, <thermalfoundation:material:320>], [null, <minecraft:bucket>, null]]);

val blockfluidinputhatch =
[
<modularmachinery:blockfluidinputhatch:7>,
<modularmachinery:blockfluidinputhatch:6>,
<modularmachinery:blockfluidinputhatch:5>,
<modularmachinery:blockfluidinputhatch:4>,
<modularmachinery:blockfluidinputhatch:3>,
<modularmachinery:blockfluidinputhatch:2>,
<modularmachinery:blockfluidinputhatch:1>,
//<modularmachinery:blockfluidinputhatch>,
]
 as IItemStack[];
for item in blockfluidinputhatch {
<ore:fluidInputHatch>.add(item);
}



//Fluid Output
recipes.addShaped(<modularmachinery:blockfluidoutputhatch:7>, [[null, <minecraft:bucket>, null],[<embers:plate_dawnstone>, <modularmachinery:blockfluidoutputhatch:6>, <embers:plate_dawnstone>], [null, <embers:plate_dawnstone>, null]]);
recipes.addShaped(<modularmachinery:blockfluidoutputhatch:6>, [[null, <minecraft:bucket>, null],[<embers:plate_dawnstone>, <modularmachinery:blockfluidoutputhatch:5>, <embers:plate_dawnstone>], [null, <embers:plate_dawnstone>, null]]);
recipes.addShaped(<modularmachinery:blockfluidoutputhatch:5>, [[null, <minecraft:bucket>, null],[<embers:plate_dawnstone>, <modularmachinery:blockcasing:4>, <embers:plate_dawnstone>], [null, <embers:plate_dawnstone>, null]]);
recipes.addShaped(<modularmachinery:blockfluidoutputhatch:4>, [[null, <minecraft:bucket>, null],[<embers:plate_dawnstone>, <modularmachinery:blockfluidoutputhatch:3>, <embers:plate_dawnstone>], [null, <embers:plate_dawnstone>, null]]);
recipes.addShaped(<modularmachinery:blockfluidoutputhatch:3>, [[null, <minecraft:bucket>, null],[<embers:plate_dawnstone>, <modularmachinery:blockcasing>, <embers:plate_dawnstone>], [null, <embers:plate_dawnstone>, null]]);
recipes.addShaped(<modularmachinery:blockfluidoutputhatch:2>, [[null, <minecraft:bucket>, null],[<thermalfoundation:material:320>, <modularmachinery:blockfluidoutputhatch:1>, <thermalfoundation:material:320>], [null, <thermalfoundation:material:320>, null]]);
recipes.addShaped(<modularmachinery:blockfluidoutputhatch:1>, [[null, <minecraft:bucket>, null],[<thermalfoundation:material:320>, <modularmachinery:itemmodularium>, <thermalfoundation:material:320>], [null, <thermalfoundation:material:320>, null]]);

val blockfluidoutputhatch =
[
<modularmachinery:blockfluidoutputhatch:7>,
<modularmachinery:blockfluidoutputhatch:6>,
<modularmachinery:blockfluidoutputhatch:5>,
<modularmachinery:blockfluidoutputhatch:4>,
<modularmachinery:blockfluidoutputhatch:3>,
<modularmachinery:blockfluidoutputhatch:2>,
<modularmachinery:blockfluidoutputhatch:1>,
//<modularmachinery:blockfluidoutputhatch>,
]
 as IItemStack[];
for item in blockfluidoutputhatch {
<ore:fluidOutputHatch>.add(item);
}

//Item Output
recipes.addShaped(<modularmachinery:blockoutputbus:6>, [[null, <ironchest:iron_chest>, null],[<moreplates:electrical_steel_plate>, <modularmachinery:blockoutputbus:5>, <moreplates:electrical_steel_plate>], [null, <moreplates:electrical_steel_plate>, null]]);
recipes.addShaped(<modularmachinery:blockoutputbus:5>, [[null, <ironchest:iron_chest>, null],[<moreplates:electrical_steel_plate>, <modularmachinery:blockcasing:4>, <moreplates:electrical_steel_plate>], [null, <moreplates:electrical_steel_plate>, null]]);
recipes.addShaped(<modularmachinery:blockoutputbus:4>, [[null, <ironchest:iron_chest>, null],[<moreplates:electrical_steel_plate>, <modularmachinery:blockoutputbus:3>, <moreplates:electrical_steel_plate>], [null, <moreplates:electrical_steel_plate>, null]]);
recipes.addShaped(<modularmachinery:blockoutputbus:3>, [[null, <ironchest:iron_chest>, null],[<moreplates:electrical_steel_plate>, <modularmachinery:blockcasing>, <moreplates:electrical_steel_plate>], [null, <moreplates:electrical_steel_plate>, null]]);
recipes.addShaped(<modularmachinery:blockoutputbus:2>, [[null, <minecraft:chest>, null],[<thermalfoundation:material:32>, <modularmachinery:blockoutputbus:1>, <thermalfoundation:material:32>], [null, <thermalfoundation:material:32>, null]]);
recipes.addShaped(<modularmachinery:blockoutputbus:1>, [[null, <minecraft:chest>, null],[<thermalfoundation:material:32>, <modularmachinery:itemmodularium>, <thermalfoundation:material:32>], [null, <thermalfoundation:material:32>, null]]);

val blockoutputbus =
[
<modularmachinery:blockoutputbus:6>,
<modularmachinery:blockoutputbus:5>,
<modularmachinery:blockoutputbus:4>,
<modularmachinery:blockoutputbus:3>,
<modularmachinery:blockoutputbus:2>,
<modularmachinery:blockoutputbus:1>,
//<modularmachinery:blockoutputbus>,
]
 as IItemStack[];
for item in blockoutputbus {
<ore:itemOutputHatch>.add(item);
}

//Item Input
recipes.addShaped(<modularmachinery:blockinputbus:6>, [[null, <moreplates:electrical_steel_plate>, null],[<moreplates:electrical_steel_plate>, <modularmachinery:blockinputbus:5>, <moreplates:electrical_steel_plate>], [null, <ironchest:iron_chest>, null]]);
recipes.addShaped(<modularmachinery:blockinputbus:5>, [[null, <moreplates:electrical_steel_plate>, null],[<moreplates:electrical_steel_plate>, <modularmachinery:blockcasing:4>, <moreplates:electrical_steel_plate>], [null, <ironchest:iron_chest>, null]]);
recipes.addShaped(<modularmachinery:blockinputbus:4>, [[null, <moreplates:electrical_steel_plate>, null],[<moreplates:electrical_steel_plate>, <modularmachinery:blockinputbus:3>, <moreplates:electrical_steel_plate>], [null, <ironchest:iron_chest>, null]]);
recipes.addShaped(<modularmachinery:blockinputbus:3>, [[null, <moreplates:electrical_steel_plate>, null],[<moreplates:electrical_steel_plate>, <modularmachinery:blockcasing>, <moreplates:electrical_steel_plate>], [null, <ironchest:iron_chest>, null]]);
recipes.addShaped(<modularmachinery:blockinputbus:2>, [[null, <thermalfoundation:material:32>, null],[<thermalfoundation:material:32>, <modularmachinery:blockinputbus:1>, <thermalfoundation:material:32>], [null, <minecraft:chest>, null]]);
recipes.addShaped(<modularmachinery:blockinputbus:1>, [[null, <thermalfoundation:material:32>, null],[<thermalfoundation:material:32>, <modularmachinery:itemmodularium>, <thermalfoundation:material:32>], [null, <minecraft:chest>, null]]);

val blockinputbus =
[
<modularmachinery:blockinputbus:6>,
<modularmachinery:blockinputbus:5>,
<modularmachinery:blockinputbus:4>,
<modularmachinery:blockinputbus:3>,
<modularmachinery:blockinputbus:2>,
<modularmachinery:blockinputbus:1>,
//<modularmachinery:blockinputbus>,
]
 as IItemStack[];
for item in blockinputbus {
<ore:itemInputHatch>.add(item);
}

//Ember Input
recipes.addShaped(<modulardiversity:blockemberinputhatch:3>, [[<embers:caster_orb>, <embers:archaic_circuit>, <embers:caster_orb>],[<embers:archaic_circuit>, <modulardiversity:blockemberinputhatch:2>, <embers:archaic_circuit>], [<embers:caster_orb>, <embers:archaic_circuit>, <embers:caster_orb>]]);
recipes.addShaped(<modulardiversity:blockemberinputhatch:2>, [[<embers:crystal_ember>, <ore:plateElectrum>, <embers:crystal_ember>],[<ore:plateElectrum>, <modulardiversity:blockemberinputhatch:1>, <ore:plateElectrum>], [<embers:crystal_ember>, <ore:plateElectrum>, <embers:crystal_ember>]]);
recipes.addShaped(<modulardiversity:blockemberinputhatch:1>, [[<ore:plateGold>, <contenttweaker:activatedaspectussilver>, <ore:plateGold>],[<contenttweaker:activatedaspectuscopper>, <ore:gearTin>, <contenttweaker:activatedaspectuscopper>], [<ore:plateGold>, <contenttweaker:activatedaspectussilver>, <ore:plateGold>]]);

val blockemberinput =
[
    <modulardiversity:blockemberinputhatch:1>,
    <modulardiversity:blockemberinputhatch:2>,
    <modulardiversity:blockemberinputhatch:3>,
]
 as IItemStack[];
for item in blockemberinput {
<ore:blockemberinput>.add(item);
}

//Mech Power Input
recipes.addShaped(<modulardiversity:blockmystmechinput>, [[<thermalfoundation:material:323>, <thermalfoundation:material:25>, <thermalfoundation:material:323>],[<modularmachinery:itemmodularium>, <mysticalmechanics:gearbox_frame>, <modularmachinery:itemmodularium>], [<thermalfoundation:material:323>, <deepmoblearning:soot_covered_redstone>, <thermalfoundation:material:323>]]);


//Reinforced Casing
Empowerer.addRecipe(<modularmachinery:blockcasing:4>, <modularmachinery:blockcasing>, <jaopca:item_platedensetungstencarbide>, <advancedrocketry:productgear>, 
<jaopca:item_platedensetungstencarbide>, <advancedrocketry:productgear>, 25000, 400, [0.5, 0.3, 1]);
CombinationCrafting.addRecipe(<modularmachinery:blockcasing:4>, 1000000, <modularmachinery:blockcasing>, 
[<jaopca:item_platedensetungstencarbide>, <advancedrocketry:productgear>, <jaopca:item_platedensetungstencarbide>, <advancedrocketry:productgear>]);

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
MekanismSteelCasing.addItemInput(<immersiveengineering:metal_decoration1:1> * 14);
MekanismSteelCasing.addItemOutput(<mekanism:basicblock:8>);
MekanismSteelCasing.build();

val MekanismSteelCasing2 = mods.modularmachinery.RecipeBuilder.newBuilder("minifield-crafter-mekanismsSteelcasing2", "minifield-crafter", 400, 0);
MekanismSteelCasing2.addEnergyPerTickInput(4000);
MekanismSteelCasing2.addItemInput(<techreborn:part:43>);
MekanismSteelCasing2.addItemInput(<mekanism:basicblock>);
MekanismSteelCasing2.addItemInput(<jaopca:block_sheetmetalvanasteel> * 12);
MekanismSteelCasing2.addItemInput(<immersiveengineering:metal_decoration1:1> * 14);
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
IndustruialChassis.addItemInput(<enderio:block_dark_iron_bars> * 18);
IndustruialChassis.addItemInput(<jaopca:block_sheetmetaldarksteel> * 8);
IndustruialChassis.addItemOutput(<enderio:item_material:1>);
IndustruialChassis.build();

val IndustruialChassis2 = mods.modularmachinery.RecipeBuilder.newBuilder("minifield-crafter-industruialchassis2", "minifield-crafter", 400, 0);
IndustruialChassis2.addEnergyPerTickInput(6000);
IndustruialChassis2.addItemInput(<thaumcraft:phial:1>.withTag({Aspects: [{amount: 10, key: "machina"}]}));
IndustruialChassis2.addItemInput(<rockhounding_chemistry:alloy_blocks_tech:14>);
IndustruialChassis2.addItemInput(<enderio:block_dark_iron_bars> * 18);
IndustruialChassis2.addItemInput(<jaopca:block_sheetmetaldarksteel> * 8);
IndustruialChassis2.addItemOutput(<enderio:item_material:1>*2);
IndustruialChassis2.build();

##Soul Machine Chassis
val SoulChassis = mods.modularmachinery.RecipeBuilder.newBuilder("minifield-crafter-soulchassis", "minifield-crafter", 400, 0);
SoulChassis.addEnergyPerTickInput(6000);
SoulChassis.addItemInput(<thaumcraft:phial:1>.withTag({Aspects: [{amount: 10, key: "spiritus"}]}));
SoulChassis.addItemInput(<techreborn:storage:10>);
SoulChassis.addItemInput(<enderio:block_dark_iron_bars> * 18);
SoulChassis.addItemInput(<jaopca:block_sheetmetalsoularium> * 8);
SoulChassis.addItemOutput(<enderio:item_material:53>);
SoulChassis.build();

val SoulChassis2 = mods.modularmachinery.RecipeBuilder.newBuilder("minifield-crafter-soulchassis2", "minifield-crafter", 400, 0);
SoulChassis2.addEnergyPerTickInput(6000);
SoulChassis2.addItemInput(<thaumcraft:phial:1>.withTag({Aspects: [{amount: 10, key: "spiritus"}]}));
SoulChassis2.addItemInput(<rockhounding_chemistry:alloy_blocks_tech:14>);
SoulChassis2.addItemInput(<enderio:block_dark_iron_bars> * 18);
SoulChassis2.addItemInput(<jaopca:block_sheetmetalsoularium> * 8);
SoulChassis2.addItemOutput(<enderio:item_material:53>*2);
SoulChassis2.build();

##Enhanced Machine Chassis
val EnhancedChassis = mods.modularmachinery.RecipeBuilder.newBuilder("minifield-crafter-Enhancedchassis", "minifield-crafter", 400, 0);
EnhancedChassis.addEnergyPerTickInput(10000);
EnhancedChassis.addItemInput(<thaumcraft:phial:1>.withTag({Aspects: [{amount: 10, key: "alienis"}]}));
EnhancedChassis.addItemInput(<techreborn:storage:2>);
EnhancedChassis.addItemInput(<enderio:block_end_iron_bars> * 18);
EnhancedChassis.addItemInput(<jaopca:block_sheetmetallumium> * 8);
EnhancedChassis.addItemOutput(<enderio:item_material:66>);
EnhancedChassis.build();

val EnhancedChassis2 = mods.modularmachinery.RecipeBuilder.newBuilder("minifield-crafter-Enhancedchassis2", "minifield-crafter", 400, 0);
EnhancedChassis2.addEnergyPerTickInput(10000);
EnhancedChassis2.addItemInput(<thaumcraft:phial:1>.withTag({Aspects: [{amount: 10, key: "alienis"}]}));
EnhancedChassis2.addItemInput(<rockhounding_chemistry:alloy_blocks_tech:11>);
EnhancedChassis2.addItemInput(<enderio:block_end_iron_bars> * 18);
EnhancedChassis2.addItemInput(<jaopca:block_sheetmetallumium> * 8);
EnhancedChassis2.addItemOutput(<enderio:item_material:66>*2);
EnhancedChassis2.build();


##Advanced Rockety Frame
val ARFrame = mods.modularmachinery.RecipeBuilder.newBuilder("minifield-crafter-arframe", "minifield-crafter", 400, 0);
ARFrame.addEnergyPerTickInput(3000);
ARFrame.addItemInput(<mekanism:atomicalloy>);
ARFrame.addItemInput(<jaopca:block_scaffoldingstainlesssteel> * 18);
ARFrame.addItemInput(<jaopca:block_sheetmetaltitanium> * 9);
ARFrame.addItemOutput(<libvulpes:structuremachine>);
ARFrame.build();

val ARFrame2 = mods.modularmachinery.RecipeBuilder.newBuilder("minifield-crafter-arframe2", "minifield-crafter", 400, 0);
ARFrame2.addEnergyPerTickInput(3000);
ARFrame2.addItemInput(<mekanism:atomicalloy>);
ARFrame2.addItemInput(<contenttweaker:nimonic_scaffolding> * 18);
ARFrame2.addItemInput(<jaopca:block_sheetmetaltitanium> * 9);
ARFrame2.addItemOutput(<libvulpes:structuremachine>*2);
ARFrame2.build();

##Actually Additions Iron Casing
val AAIronCasing = mods.modularmachinery.RecipeBuilder.newBuilder("minifield-crafter-aaironaasing", "minifield-crafter", 400, 0);
AAIronCasing.addEnergyPerTickInput(1000);
AAIronCasing.addItemInput(<immersiveengineering:sheetmetal:9> * 20);
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
NCChassis2.addItemInput(<contenttweaker:plating_elite> * 8);
NCChassis2.addItemInput(<contenttweaker:bam_scaffolding> * 18);
NCChassis2.addItemInput(<contenttweaker:sub_block_holder_0:6>);
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


##############################################
##
##           Mixer
##
##############################################

/*
##Brass
val dustBrass = mods.modularmachinery.RecipeBuilder.newBuilder("mixer-brass", "mixer", 100, 0);
dustBrass.addMysticalMechanicsInput(10, 50);
dustBrass.addItemInput(<techreborn:dust:59>);
dustBrass.addItemInput(<thermalfoundation:material:64> * 2);
dustBrass.addItemOutput(<techreborn:dust:6> * 3);
dustBrass.addItemOutput(<techreborn:dust:6>).setChance(0.5);
dustBrass.build();


##Bronze
val dustBronze = mods.modularmachinery.RecipeBuilder.newBuilder("mixer-bronze", "mixer", 100, 0);
dustBronze.addMysticalMechanicsInput(10, 50);
dustBronze.addItemInput(<thermalfoundation:material:65>);
dustBronze.addItemInput(<thermalfoundation:material:64> * 3);
dustBronze.addItemOutput(<thermalfoundation:material:99> * 4);
dustBronze.addItemOutput(<thermalfoundation:material:99>).setChance(0.5);
dustBronze.build();

##Steel
val carbonforSteel = <ore:carbonforSteel>;
carbonforSteel.add(<immersiveengineering:material:17>);
carbonforSteel.add(<rockhounding_chemistry:chemical_dusts:24>);
carbonforSteel.add(<thermalfoundation:material:768>);
carbonforSteel.add(<nuclearcraft:dust:8>);

val dustSteel = mods.modularmachinery.RecipeBuilder.newBuilder("mixer-steel", "mixer", 100, 0);
dustSteel.addMysticalMechanicsInput(10, 50);
dustSteel.addItemInput(<thermalfoundation:material>);
dustSteel.addItemInput(<ore:carbonforSteel>);
dustSteel.addItemOutput(<thermalfoundation:material:96>);
dustSteel.addItemOutput(<thermalfoundation:material:96>).setChance(0.5);
dustSteel.build();

##Electrum
val dustElectrum = mods.modularmachinery.RecipeBuilder.newBuilder("mixer-electrum", "mixer", 100, 0);
dustElectrum.addMysticalMechanicsInput(10, 50);
dustElectrum.addItemInput(<thermalfoundation:material:66>);
dustElectrum.addItemInput(<thermalfoundation:material:1>);
dustElectrum.addItemOutput(<thermalfoundation:material:97> * 2);
dustElectrum.addItemOutput(<thermalfoundation:material:97>).setChance(0.5);
dustElectrum.build();

##Energetic
val dustEnergetic = mods.modularmachinery.RecipeBuilder.newBuilder("mixer-energetic", "mixer", 100, 0);
dustEnergetic.addMysticalMechanicsInput(10, 50);
dustEnergetic.addItemInput(<minecraft:glowstone_dust>);
dustEnergetic.addItemInput(<minecraft:redstone>);
dustEnergetic.addItemOutput(<nuclearcraft:compound:2> * 2);
dustEnergetic.addItemOutput(<nuclearcraft:compound:2>).setChance(0.5);
dustEnergetic.build();

##Dimentional
val dustDimentional = mods.modularmachinery.RecipeBuilder.newBuilder("mixer-dimentional", "mixer", 100, 0);
dustDimentional.addMysticalMechanicsInput(10, 50);
dustDimentional.addItemInput(<thermalfoundation:material:770> * 4);
dustDimentional.addItemInput(<ore:dustEndstone>);
dustDimentional.addItemOutput(<nuclearcraft:compound:9> * 2);
dustDimentional.addItemOutput(<nuclearcraft:compound:9>).setChance(0.5);
dustDimentional.build();

##Invar
val dustInvar = mods.modularmachinery.RecipeBuilder.newBuilder("mixer-invar", "mixer", 100, 0);
dustInvar.addMysticalMechanicsInput(10, 50);
dustInvar.addItemInput(<thermalfoundation:material> * 2);
dustInvar.addItemInput(<thermalfoundation:material:69>);
dustInvar.addItemOutput(<thermalfoundation:material:98> * 3);
dustInvar.addItemOutput(<thermalfoundation:material:98>).setChance(0.5);
dustInvar.build();

##CarbonManganese
val dustCarbonManganese = mods.modularmachinery.RecipeBuilder.newBuilder("mixer-carbonmanganese", "mixer", 100, 0);
dustCarbonManganese.addMysticalMechanicsInput(10, 50);
dustCarbonManganese.addItemInput(<ore:dustGraphite>);
dustCarbonManganese.addItemInput(<ore:dustManganese>);
dustCarbonManganese.addItemOutput(<nuclearcraft:compound:10> * 2);
dustCarbonManganese.addItemOutput(<nuclearcraft:compound:10>).setChance(0.5);
dustCarbonManganese.build();

##Flux Dust
val dustFlux = mods.modularmachinery.RecipeBuilder.newBuilder("mixer-flux", "mixer", 100, 0);
dustFlux.addMysticalMechanicsInput(10, 50);
dustFlux.addItemInput(<thermalfoundation:material:770> * 4);
dustFlux.addItemInput(<enderio:item_material:20> * 4);
dustFlux.addItemInput(<minecraft:redstone> * 4);
dustFlux.addItemOutput(<fluxnetworks:flux>*2);
dustFlux.addItemOutput(<fluxnetworks:flux>).setChance(0.5);
dustFlux.build();

##RichSlag
val RichSlag = mods.modularmachinery.RecipeBuilder.newBuilder("mixer-richslag", "mixer", 100, 0);
RichSlag.addMysticalMechanicsInput(20, 50);
RichSlag.addItemInput(<thermalfoundation:material:864>*32);
RichSlag.addItemInput(<rockhounding_chemistry:chemical_dusts:39>);
RichSlag.addItemInput(<rockhounding_chemistry:chemical_dusts:41>);
RichSlag.addFluidInput(<liquid:refined_biofuel>* 800);
RichSlag.addItemOutput(<thermalfoundation:material:865>*32);
RichSlag.build();
*/
//Smeltery Stuff

##Bronze
val fluidBronze = mods.modularmachinery.RecipeBuilder.newBuilder("mixer-fluid-bronze", "mixer", 240, 0);
fluidBronze.addEmberInput(200);
fluidBronze.addMysticalMechanicsInput(40, 80);
fluidBronze.addItemInput(<ore:ingotCopper>,3);
fluidBronze.addItemInput(<ore:ingotTin>);
fluidBronze.addFluidOutput(<liquid:bronze>*576);
fluidBronze.build();

##constantan
val fluidconstantan = mods.modularmachinery.RecipeBuilder.newBuilder("mixer-fluid-constantan", "mixer", 120, 0);
fluidconstantan.addEmberInput(200);
fluidconstantan.addMysticalMechanicsInput(40, 80);
fluidconstantan.addItemInput(<ore:ingotCopper>);
fluidconstantan.addItemInput(<ore:ingotNickel>);
fluidconstantan.addFluidOutput(<liquid:constantan>*288);
fluidconstantan.build();

##invar
val fluidinvar = mods.modularmachinery.RecipeBuilder.newBuilder("mixer-fluid-invar", "mixer", 180, 0);
fluidinvar.addEmberInput(200);
fluidinvar.addMysticalMechanicsInput(40, 80);
fluidinvar.addItemInput(<ore:ingotIron>,2);
fluidinvar.addItemInput(<ore:ingotNickel>);
fluidinvar.addFluidOutput(<liquid:invar>*432);
fluidinvar.build();

##electrum
val fluidelectrum = mods.modularmachinery.RecipeBuilder.newBuilder("mixer-fluid-electrum", "mixer", 120, 0);
fluidelectrum.addEmberInput(200);
fluidelectrum.addMysticalMechanicsInput(40, 80);
fluidelectrum.addItemInput(<ore:ingotGold>);
fluidelectrum.addItemInput(<ore:ingotSilver>);
fluidelectrum.addFluidOutput(<liquid:electrum>*288);
fluidelectrum.build();

##inert_metal
val fluidinert_metal = mods.modularmachinery.RecipeBuilder.newBuilder("mixer-fluid-inert_metal", "mixer", 120, 0);
fluidinert_metal.addEmberInput(200);
fluidinert_metal.addMysticalMechanicsInput(40, 80);
fluidinert_metal.addItemInput(<ore:ingotSilver>,2);
fluidinert_metal.addItemInput(<ore:ingotLead>);
fluidinert_metal.addFluidOutput(<liquid:inert_metal>*288);
fluidinert_metal.build();

##conductive_iron
val fluidconductive_iron = mods.modularmachinery.RecipeBuilder.newBuilder("mixer-fluid-conductive_iron", "mixer", 60, 0);
fluidconductive_iron.addEmberInput(200);
fluidconductive_iron.addMysticalMechanicsInput(60, 100);
fluidconductive_iron.addItemInput(<minecraft:iron_ingot>);
fluidconductive_iron.addItemInput(<minecraft:redstone>);
fluidconductive_iron.addFluidOutput(<liquid:conductive_iron>*144);
fluidconductive_iron.build();

##pulsating_iron
val fluidpulsating_iron = mods.modularmachinery.RecipeBuilder.newBuilder("mixer-fluid-pulsating_iron", "mixer", 60, 0);
fluidpulsating_iron.addEmberInput(200);
fluidpulsating_iron.addMysticalMechanicsInput(60, 100);
fluidpulsating_iron.addItemInput(<minecraft:iron_ingot>);
fluidpulsating_iron.addItemInput(<minecraft:ender_pearl>);
fluidpulsating_iron.addFluidOutput(<liquid:pulsating_iron>*144);
fluidpulsating_iron.build();

##Quartz for fused
val fluidquartz = mods.modularmachinery.RecipeBuilder.newBuilder("mixer-fluid-quartz", "mixer", 100, 0);
fluidquartz.addEmberInput(200);
fluidquartz.addMysticalMechanicsInput(20, 60);
fluidquartz.addItemInput(<minecraft:quartz>);
fluidquartz.addFluidOutput(<liquid:quartz>*666);
fluidquartz.build();

##Glass
val fluidglass = mods.modularmachinery.RecipeBuilder.newBuilder("mixer-fluid-glass", "mixer", 100, 0);
fluidglass.addEmberInput(200);
fluidglass.addMysticalMechanicsInput(20, 60);
fluidglass.addItemInput(<minecraft:sand>);
fluidglass.addFluidOutput(<liquid:glass>*1000);
fluidglass.build();

##Blood
val fluidblood = mods.modularmachinery.RecipeBuilder.newBuilder("mixer-fluid-blood", "mixer", 50, 0);
fluidblood.addEmberInput(200);
fluidblood.addMysticalMechanicsInput(20, 60);
fluidblood.addItemInput(<ore:listAllmeatraw>);
fluidblood.addFluidOutput(<liquid:blood>*40);
fluidblood.build();


##############################################
##
##           Shadow Condensor
##
##############################################

<iceandfire:dragonsteel_ice_block>.addTooltip(format.darkPurple("Shadow Condenser fluid modifier"));
<deepmoblearning:infused_ingot_block>.addTooltip(format.darkPurple("Shadow Condenser item modifier"));
<environmentaltech:aethium>.addTooltip(format.darkPurple("Shadow Condenser speed modifier"));
<thaumcraft:metal_void>.addTooltip(format.darkPurple("Shadow Condenser 2x output modifier"));
<thaumadditions:mithrillium_block>.addTooltip(format.darkPurple("Shadow Condenser 3x output modifier"));
<thaumadditions:adaminite_block>.addTooltip(format.darkPurple("Shadow Condenser 4x output modifier"));
<thaumadditions:mithminite_block>.addTooltip(format.darkPurple("Shadow Condenser output 5x modifier"));

val MidnightIngot = mods.modularmachinery.RecipeBuilder.newBuilder("midnight-ingot", "darkness-collector", 2000, 0);
//MidnightIngot.addItemInput(<techreborn:ingot:25>);
MidnightIngot.addItemInput(<thermalfoundation:material:135>);
MidnightIngot.addItemInput(<actuallyadditions:item_crystal_empowered:3>);
MidnightIngot.addItemInput(<mysticalagradditions:stuff:3>);
MidnightIngot.addItemInput(<environmentaltech:aethium_crystal>);
MidnightIngot.addFluidInput(<liquid:ender_distillation>*4000);
MidnightIngot.addItemOutput(<extendedcrafting:material>);
MidnightIngot.addDimensionRequirement([10]);
MidnightIngot.build();

val VoidSeed = mods.modularmachinery.RecipeBuilder.newBuilder("void-seed", "darkness-collector", 2000, 0);
//VoidSeed.addItemInput(<techreborn:ingot:25>);
VoidSeed.addItemInput(<thaumcraft:nugget:7>);
VoidSeed.addFluidInput(<liquid:ender_distillation>*4000);
VoidSeed.addItemOutput(<thaumcraft:void_seed>);
VoidSeed.addDimensionRequirement([10]);
VoidSeed.build();



##############################################
##
##           Forge of the Heavens
##
##############################################

<avaritia:block_resource:2>.addTooltip(format.aqua("Forge of the Heavens fluid modifier"));

##CyrstaltineIngot
val CyrstaltineIngot = mods.modularmachinery.RecipeBuilder.newBuilder("forge-cyrstaltineingot", "heavens-forge", 400, 0);
CyrstaltineIngot.addMekanismLaserInput(50000000);
CyrstaltineIngot.addItemInput(<extendedcrafting:material:24>);
CyrstaltineIngot.addItemInput(<ore:CelestialCrystal>);
CyrstaltineIngot.addItemInput(<avaritia:resource>*4);
CyrstaltineIngot.addItemInput(<moreplates:stellar_alloy_plate>*8);
CyrstaltineIngot.addItemInput(<actuallyadditions:item_crystal_empowered:2>*4);
CyrstaltineIngot.addFluidInput(<liquid:astralsorcery.liquidstarlight>* 10000);
CyrstaltineIngot.addFluidInput(<liquid:empoweredoil>* 10000);
CyrstaltineIngot.addItemOutput(<avaritia:resource:1>);
CyrstaltineIngot.build();

##PositiveDispositionMatrix
val PositiveDispositionMatrix = mods.modularmachinery.RecipeBuilder.newBuilder("forge-positivedispositionmatrix", "heavens-forge", 400, 0);
PositiveDispositionMatrix.addMekanismLaserInput(100000000);
PositiveDispositionMatrix.addItemInput(<rockhounding_chemistry:alloy_items_gems:4>);
PositiveDispositionMatrix.addItemInput(<contenttweaker:material_part:10>);
PositiveDispositionMatrix.addItemInput(<rockhounding_chemistry:alloy_items_deco:22>);
PositiveDispositionMatrix.addItemInput(<libvulpes:productgem>);
PositiveDispositionMatrix.addFluidInput(<liquid:vapor_of_levity>* 5000);
PositiveDispositionMatrix.addItemOutput(<contenttweaker:matrix_deposition_+>);
PositiveDispositionMatrix.build();

##NegitiveDispositionMatrix
val NegitiveDispositionMatrix = mods.modularmachinery.RecipeBuilder.newBuilder("forge-negitivedispositionmatrix", "heavens-forge", 400, 0);
NegitiveDispositionMatrix.addMekanismLaserInput(100000000);
NegitiveDispositionMatrix.addItemInput(<rockhounding_chemistry:alloy_items_gems:7>);
NegitiveDispositionMatrix.addItemInput(<rockhounding_chemistry:alloy_items_deco:31>);
NegitiveDispositionMatrix.addItemInput(<avaritia:resource:1>);
NegitiveDispositionMatrix.addItemInput(<extendedcrafting:material>);
NegitiveDispositionMatrix.addFluidInput(<liquid:acrylic_acid>* 5000);
NegitiveDispositionMatrix.addItemOutput(<contenttweaker:matrix_deposition_->);
NegitiveDispositionMatrix.build();

##NeutroniumNugget
val NeutroniumNugget = mods.modularmachinery.RecipeBuilder.newBuilder("forge-neutroniumnugget", "heavens-forge", 100, 0);
NeutroniumNugget.addMekanismLaserInput(1000000);
NeutroniumNugget.addItemInput(<avaritia:resource:2>*9);
NeutroniumNugget.addFluidInput(<liquid:liquid_neon>* 1000);
NeutroniumNugget.addItemOutput(<avaritia:resource:3>);
NeutroniumNugget.build();

##NeutroniumIngot
val NeutroniumIngot = mods.modularmachinery.RecipeBuilder.newBuilder("forge-neutroniumingot", "heavens-forge", 200, 0);
NeutroniumIngot.addMekanismLaserInput(100000000);
NeutroniumIngot.addItemInput(<avaritia:resource:3>*9);
NeutroniumIngot.addGasInput("fusionfuel", 10000);
NeutroniumIngot.addItemOutput(<avaritia:resource:4>);
NeutroniumIngot.build();

##MignightLampLuminessence
val MignightLampLuminessence = mods.modularmachinery.RecipeBuilder.newBuilder("forge-mignightlampluminessence", "heavens-forge", 300, 0);
MignightLampLuminessence.addMekanismLaserInput(10000000);
MignightLampLuminessence.addItemInput(<extendedcrafting:frame>);
MignightLampLuminessence.addItemInput(<extendedcrafting:storage:1>);
MignightLampLuminessence.addFluidInput(<liquid:argon>* 10000);
MignightLampLuminessence.addItemOutput(<extendedcrafting:lamp:1>);
MignightLampLuminessence.build();

##MignightLampGlowstone
val MignightLampGlowstone = mods.modularmachinery.RecipeBuilder.newBuilder("forge-mignightlampglowstone", "heavens-forge", 300, 0);
MignightLampGlowstone.addMekanismLaserInput(10000000);
MignightLampGlowstone.addItemInput(<extendedcrafting:frame>);
MignightLampGlowstone.addItemInput(<minecraft:glowstone>);
MignightLampGlowstone.addFluidInput(<liquid:argon>* 10000);
MignightLampGlowstone.addItemOutput(<extendedcrafting:lamp>);
MignightLampGlowstone.build();
##########################################################################################
print("==================== end of modular machines.zs ====================");
