import mods.modularmachinery.RecipePrimer;
import crafttweaker.item.IItemStack;
import mods.actuallyadditions.Empowerer;
import mods.extendedcrafting.CombinationCrafting;

print("==================== loading modular_machines.zs ====================");
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

//Modularium
//Transposer.addFillRecipe(<ore:ingotLead>, <thermalfoundation:material:160>, <liquid:dawnstone> * 144, 10000);
mods.inworldcrafting.FluidToItem.transform(<modularmachinery:itemmodularium>, <liquid:moltenembers>, [<thermalfoundation:material>,<thermalfoundation:material:1>], false);

//Controller
//recipes.addShaped(<modularmachinery:blockcontroller>, [[<ore:circuitAdvanced>, <rockhounding_chemistry:misc_items:1>, <ore:circuitAdvanced>],[<jaopca:item_platetough>, <modularmachinery:blockcasing>, <jaopca:item_platetough>], [<actuallyadditions:block_crystal>, <moreplates:energetic_alloy_gear>, <actuallyadditions:block_crystal>]]);
recipes.addShaped(<modularmachinery:blockcontroller>, [[<contenttweaker:plate_modularium>, <thermalfoundation:material:258>, <contenttweaker:plate_modularium>],[<thermalfoundation:material:259>, <minecraft:redstone_block>, <thermalfoundation:material:261>], [<contenttweaker:plate_modularium>, <thermalfoundation:material:257>, <contenttweaker:plate_modularium>]]);

//Casing
recipes.addShaped(<modularmachinery:blockcasing>, [[<advgenerators:iron_frame>, <techreborn:plates:36>, <advgenerators:iron_frame>],[<techreborn:plates:36>, <contenttweaker:gear_modularium>, <techreborn:plates:36>], [<advgenerators:iron_frame>, <techreborn:plates:36>, <advgenerators:iron_frame>]]);
recipes.addShaped(<modularmachinery:blockcasing> * 2, [[<advgenerators:iron_frame>, <techreborn:plates:36>, <advgenerators:iron_frame>],[<techreborn:plates:36>, <rockhounding_chemistry:alloy_parts:63>, <techreborn:plates:36>], [<advgenerators:iron_frame>, <techreborn:plates:36>, <advgenerators:iron_frame>]]);

//Reinforced Casing
Empowerer.addRecipe(<modularmachinery:blockcasing:4>, <modularmachinery:blockcasing>, <jaopca:item_platedensetungstencarbide>, <advancedrocketry:productgear>, 
<jaopca:item_platedensetungstencarbide>, <advancedrocketry:productgear>, 25000, 400, [0.5, 0.3, 1]);
CombinationCrafting.addRecipe(<modularmachinery:blockcasing:4>, 1000000, <modularmachinery:blockcasing>, 
[<jaopca:item_platedensetungstencarbide>, <advancedrocketry:productgear>, <jaopca:item_platedensetungstencarbide>, <advancedrocketry:productgear>]);

//Vent
recipes.addShaped(<modularmachinery:blockcasing:1>, [[<thermalfoundation:material:358>, <enderio:block_dark_iron_bars>, <thermalfoundation:material:358>],[<enderio:block_dark_iron_bars>, <modularmachinery:blockcasing>, <enderio:block_dark_iron_bars>], [<thermalfoundation:material:358>, <enderio:block_dark_iron_bars>, <thermalfoundation:material:358>]]);

//Blueprints
recipes.addShaped(<modularmachinery:itemblueprint>.withTag({dynamicmachine: "modularmachinery:mixer"}), [[<mysticalmechanics:axle_iron>, <enderio:item_material:77>, <mysticalmechanics:axle_iron>],[<enderio:item_material:77>, <mysticalmechanics:axle_iron>, <enderio:item_material:77>], [<mysticalmechanics:axle_iron>, <enderio:item_material:77>, <mysticalmechanics:axle_iron>]]);
recipes.addShaped(<modularmachinery:itemblueprint>.withTag({dynamicmachine: "modularmachinery:minifield-crafter"}), [[null, <enderio:item_material:77>, null],[<enderio:item_material:77>, <compactmachines3:fieldprojector>, <enderio:item_material:77>], [null, <enderio:item_material:77>, null]]);
recipes.addShaped(<modularmachinery:itemblueprint>.withTag({dynamicmachine: "modularmachinery:darkness-collector"}), [[null, <enderio:item_material:77>, null],[<enderio:item_material:77>, <chisel:energizedvoidstone>, <enderio:item_material:77>], [null, <enderio:item_material:77>, null]]);
recipes.addShaped(<modularmachinery:itemblueprint>.withTag({dynamicmachine: "modularmachinery:lowgravitydepositionchamber"}), [[null, <enderio:item_material:77>, null],[<enderio:item_material:77>, <qmd:containment_casing>, <enderio:item_material:77>], [null, <enderio:item_material:77>, null]]);
recipes.addShaped(<modularmachinery:itemblueprint>.withTag({dynamicmachine: "modularmachinery:heavens-forge"}), [[null, <enderio:item_material:77>, null],[<enderio:item_material:77>, <thaumicaugmentation:starfield_glass:2>, <enderio:item_material:77>], [null, <enderio:item_material:77>, null]]);
recipes.addShaped(<modularmachinery:itemblueprint>.withTag({dynamicmachine: "modularmachinery:crystal_infuser"}), [[null, <enderio:item_material:77>, null],[<enderio:item_material:77>, <botania:quartz:1>, <enderio:item_material:77>], [null, <enderio:item_material:77>, null]]);


//Assembler Blueprints
recipes.addShaped(<modularmachinery:itemblueprint>.withTag({dynamicmachine: "modularmachinery:assemblermkone"}), [[null, <enderio:item_material:77>, null],[<enderio:item_material:77>, <techreborn:refined_iron_fence>, <enderio:item_material:77>], [null, <enderio:item_material:77>, null]]);

recipes.addShaped(<modularmachinery:itemblueprint>.withTag({dynamicmachine: "modularmachinery:assemblermktwo"}), [[null, <enderio:item_material:77>, null],[<enderio:item_material:77>, <mekanism:plasticfence:15>, <enderio:item_material:77>], [null, <enderio:item_material:77>, null]]);
recipes.addShapeless(<modularmachinery:itemblueprint>.withTag({dynamicmachine: "modularmachinery:assemblermktwo"}), [<modularmachinery:itemblueprint>.withTag({dynamicmachine: "modularmachinery:assemblermkone"}).onlyWithTag({dynamicmachine: "modularmachinery:assemblermkone"}),<mekanism:plasticfence:15>]);

recipes.addShaped(<modularmachinery:itemblueprint>.withTag({dynamicmachine: "modularmachinery:assemblermkthree"}), [[null, <enderio:item_material:77>, null],[<enderio:item_material:77>, <techreborn:machine_casing:2>, <enderio:item_material:77>], [null, <enderio:item_material:77>, null]]);
recipes.addShapeless(<modularmachinery:itemblueprint>.withTag({dynamicmachine: "modularmachinery:assemblermkthree"}), [<modularmachinery:itemblueprint>.withTag({dynamicmachine: "modularmachinery:assemblermktwo"}).onlyWithTag({dynamicmachine: "modularmachinery:assemblermktwo"}),<techreborn:machine_casing:2>]);

recipes.addShaped(<modularmachinery:itemblueprint>.withTag({dynamicmachine: "modularmachinery:assemblermkfour"}), [[null, <enderio:item_material:77>, null],[<enderio:item_material:77>, <techreborn:fusion_coil>, <enderio:item_material:77>], [null, <enderio:item_material:77>, null]]);
recipes.addShapeless(<modularmachinery:itemblueprint>.withTag({dynamicmachine: "modularmachinery:assemblermkfour"}), [<modularmachinery:itemblueprint>.withTag({dynamicmachine: "modularmachinery:assemblermkthree"}).onlyWithTag({dynamicmachine: "modularmachinery:assemblermkthree"}),<techreborn:fusion_coil>]);

recipes.addShaped(<modularmachinery:itemblueprint>.withTag({dynamicmachine: "modularmachinery:mixer-dust"}), [[null, <nuclearcraft:compound:2>, null],[<nuclearcraft:compound:2>, <enderio:item_material:77>, <nuclearcraft:compound:2>], [null, <nuclearcraft:compound:2>, null]]);
recipes.addShaped(<modularmachinery:itemblueprint>.withTag({dynamicmachine: "modularmachinery:mixer-dust"}), [[null, <nuclearcraft:compound:2>, null],[<nuclearcraft:compound:2>, <modularmachinery:itemblueprint>.withTag({dynamicmachine: "modularmachinery:mixer"}).onlyWithTag({dynamicmachine: "modularmachinery:mixer"}), <nuclearcraft:compound:2>], [null, <nuclearcraft:compound:2>, null]]);


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
recipes.addShaped(<modulardiversity:blockmystmechinput>, [[<thermalfoundation:material:323>, <thermalfoundation:material:25>, <thermalfoundation:material:323>],[<contenttweaker:gear_modularium>, <mysticalmechanics:gearbox_frame>, <contenttweaker:gear_modularium>], [<thermalfoundation:material:323>, <deepmoblearning:soot_covered_redstone>, <thermalfoundation:material:323>]]);

//Mana Input
recipes.addShaped(<modulardiversity:blockmanainputhatch>, [[<thermalfoundation:material:357>, <mysticalagriculture:infusion_crystal>, <thermalfoundation:material:357>],[<contenttweaker:gear_modularium>, <botania:rfgenerator>, <contenttweaker:gear_modularium>], [<thermalfoundation:material:357>, <botania:tinyplanet>, <thermalfoundation:material:357>]]);

##########################################################################################
print("==================== end of modular_machines.zs ====================");
