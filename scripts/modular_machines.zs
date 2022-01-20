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
recipes.addShaped(<modularmachinery:blockcontroller>, [[<contenttweaker:plate_modularium>, <thermalfoundation:material:258>, <contenttweaker:plate_modularium>],[<thermalfoundation:material:259>, <minecraft:redstone_block>, <thermalfoundation:material:261>], [<contenttweaker:plate_modularium>, <thermalfoundation:material:257>, <contenttweaker:plate_modularium>]]);

//Casing
recipes.addShaped(<modularmachinery:blockcasing>, [[<advgenerators:iron_frame>, <techreborn:plates:36>, <advgenerators:iron_frame>],[<techreborn:plates:36>, <contenttweaker:gear_modularium>, <techreborn:plates:36>], [<advgenerators:iron_frame>, <techreborn:plates:36>, <advgenerators:iron_frame>]]);
recipes.addShaped(<modularmachinery:blockcasing> * 2, [[<advgenerators:iron_frame>, <techreborn:plates:36>, <advgenerators:iron_frame>],[<techreborn:plates:36>, <rockhounding_chemistry:alloy_parts:63>, <techreborn:plates:36>], [<advgenerators:iron_frame>, <techreborn:plates:36>, <advgenerators:iron_frame>]]);


//Modularium
//Transposer.addFillRecipe(<ore:ingotLead>, <thermalfoundation:material:160>, <liquid:dawnstone> * 144, 10000);
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
recipes.addShaped(<modulardiversity:blockmystmechinput>, [[<thermalfoundation:material:323>, <thermalfoundation:material:25>, <thermalfoundation:material:323>],[<modularmachinery:itemmodularium>, <mysticalmechanics:gearbox_frame>, <modularmachinery:itemmodularium>], [<thermalfoundation:material:323>, <deepmoblearning:soot_covered_redstone>, <thermalfoundation:material:323>]]);


//Reinforced Casing
Empowerer.addRecipe(<modularmachinery:blockcasing:4>, <modularmachinery:blockcasing>, <jaopca:item_platedensetungstencarbide>, <advancedrocketry:productgear>, 
<jaopca:item_platedensetungstencarbide>, <advancedrocketry:productgear>, 25000, 400, [0.5, 0.3, 1]);
CombinationCrafting.addRecipe(<modularmachinery:blockcasing:4>, 1000000, <modularmachinery:blockcasing>, 
[<jaopca:item_platedensetungstencarbide>, <advancedrocketry:productgear>, <jaopca:item_platedensetungstencarbide>, <advancedrocketry:productgear>]);




##############################################
##
##           Mixer
##
##############################################


##Brass
val dustBrass = mods.modularmachinery.RecipeBuilder.newBuilder("mixer-brass", "mixer-dust", 30, 0);
dustBrass.addMysticalMechanicsInput(40, 80);
dustBrass.addItemInput(<techreborn:dust:59>);
dustBrass.addItemInput(<thermalfoundation:material:64> * 2);
dustBrass.addItemOutput(<techreborn:dust:6> * 3);
dustBrass.addItemOutput(<techreborn:dust:6>).setChance(0.5);
dustBrass.build();


##Bronze
val dustBronze = mods.modularmachinery.RecipeBuilder.newBuilder("mixer-bronze", "mixer-dust", 30, 0);
dustBronze.addMysticalMechanicsInput(40, 80);
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

val dustSteel = mods.modularmachinery.RecipeBuilder.newBuilder("mixer-steel", "mixer-dust", 30, 0);
dustSteel.addMysticalMechanicsInput(40, 80);
dustSteel.addItemInput(<thermalfoundation:material>);
dustSteel.addItemInput(<ore:carbonforSteel>);
dustSteel.addItemOutput(<thermalfoundation:material:96>);
dustSteel.addItemOutput(<thermalfoundation:material:96>).setChance(0.5);
dustSteel.build();

##Electrum
val dustElectrum = mods.modularmachinery.RecipeBuilder.newBuilder("mixer-electrum", "mixer-dust", 30, 0);
dustElectrum.addMysticalMechanicsInput(40, 80);
dustElectrum.addItemInput(<thermalfoundation:material:66>);
dustElectrum.addItemInput(<thermalfoundation:material:1>);
dustElectrum.addItemOutput(<thermalfoundation:material:97> * 2);
dustElectrum.addItemOutput(<thermalfoundation:material:97>).setChance(0.5);
dustElectrum.build();

##Energetic
val dustEnergetic = mods.modularmachinery.RecipeBuilder.newBuilder("mixer-energetic", "mixer-dust", 30, 0);
dustEnergetic.addMysticalMechanicsInput(40, 80);
dustEnergetic.addItemInput(<minecraft:glowstone_dust>);
dustEnergetic.addItemInput(<minecraft:redstone>);
dustEnergetic.addItemOutput(<nuclearcraft:compound:2> * 2);
dustEnergetic.addItemOutput(<nuclearcraft:compound:2>).setChance(0.5);
dustEnergetic.build();

##Dimentional
val dustDimentional = mods.modularmachinery.RecipeBuilder.newBuilder("mixer-dimentional", "mixer-dust", 30, 0);
dustDimentional.addMysticalMechanicsInput(40, 80);
dustDimentional.addItemInput(<thermalfoundation:material:770> * 4);
dustDimentional.addItemInput(<ore:dustEndstone>);
dustDimentional.addItemOutput(<nuclearcraft:compound:9> * 2);
dustDimentional.addItemOutput(<nuclearcraft:compound:9>).setChance(0.5);
dustDimentional.build();

##Invar
val dustInvar = mods.modularmachinery.RecipeBuilder.newBuilder("mixer-invar", "mixer-dust", 30, 0);
dustInvar.addMysticalMechanicsInput(40, 80);
dustInvar.addItemInput(<thermalfoundation:material> * 2);
dustInvar.addItemInput(<thermalfoundation:material:69>);
dustInvar.addItemOutput(<thermalfoundation:material:98> * 3);
dustInvar.addItemOutput(<thermalfoundation:material:98>).setChance(0.5);
dustInvar.build();

##CarbonManganese
val dustCarbonManganese = mods.modularmachinery.RecipeBuilder.newBuilder("mixer-carbonmanganese", "mixer-dust", 30, 0);
dustCarbonManganese.addMysticalMechanicsInput(40, 80);
dustCarbonManganese.addItemInput(<ore:dustCarbon>);
dustCarbonManganese.addItemInput(<ore:dustManganese>);
dustCarbonManganese.addItemOutput(<nuclearcraft:compound:10> * 2);
dustCarbonManganese.addItemOutput(<nuclearcraft:compound:10>).setChance(0.5);
dustCarbonManganese.build();

##Flux Dust
val dustFlux = mods.modularmachinery.RecipeBuilder.newBuilder("mixer-flux", "mixer-dust", 30, 0);
dustFlux.addMysticalMechanicsInput(40, 80);
dustFlux.addItemInput(<thermalfoundation:material:770> * 4);
dustFlux.addItemInput(<enderio:item_material:20> * 4);
dustFlux.addItemInput(<minecraft:redstone> * 4);
dustFlux.addItemOutput(<fluxnetworks:flux>*2);
dustFlux.addItemOutput(<fluxnetworks:flux>).setChance(0.5);
dustFlux.build();

##RichSlag
val RichSlag = mods.modularmachinery.RecipeBuilder.newBuilder("mixer-richslag", "mixer-dust", 100, 0);
RichSlag.addMysticalMechanicsInput(40, 80);
RichSlag.addItemInput(<thermalfoundation:material:864>*32);
RichSlag.addItemInput(<rockhounding_chemistry:chemical_dusts:39>);
RichSlag.addItemInput(<rockhounding_chemistry:chemical_dusts:41>);
RichSlag.addFluidInput(<liquid:refined_biofuel>* 800);
RichSlag.addItemOutput(<thermalfoundation:material:865>*32);
RichSlag.build();

##sootyredstone
val sootyredstone = mods.modularmachinery.RecipeBuilder.newBuilder("mixer-sootyredstone", "mixer-dust", 20, 0);
sootyredstone.addMysticalMechanicsInput(40, 80);
sootyredstone.addItemInput(<minecraft:redstone>);
sootyredstone.addItemInput(<thermalfoundation:material:768>);
sootyredstone.addItemOutput(<deepmoblearning:soot_covered_redstone>);
sootyredstone.build();

##itemmodularium
val itemmodularium = mods.modularmachinery.RecipeBuilder.newBuilder("mixer-itemmodularium", "mixer-dust", 20, 0);
itemmodularium.addMysticalMechanicsInput(40, 80);
itemmodularium.addItemInput(<thermalfoundation:material>);
itemmodularium.addItemInput(<thermalfoundation:material:1>);
itemmodularium.addFluidInput(<liquid:moltenembers>* 100);
itemmodularium.addItemOutput(<modularmachinery:itemmodularium>);
itemmodularium.build();


// Food //

// Deadly Energy Drink
mods.modularmachinery.RecipeBuilder.newBuilder("mixer-dust" + "_deadly_energy_drink", "mixer-dust", 50)
    .addMysticalMechanicsInput(40, 80)
	.addItemOutput(<xlfoodmod:deadly_energy_drink>)
	.addItemInput(<xlfoodmod:empty_can>)
	.addItemInput(<ore:cropRice>)
	.addItemInput(<minecraft:fermented_spider_eye>)
	.addItemInput(<minecraft:spider_eye>)
    .addFluidInput(<liquid:water> * 1000)
	.build();

// Strong Energy Drink
mods.modularmachinery.RecipeBuilder.newBuilder("mixer-dust" + "_strong_energy_drink", "mixer-dust", 50)
    .addMysticalMechanicsInput(40, 80)
	.addItemOutput(<xlfoodmod:strong_energy_drink>)
	.addItemInput(<xlfoodmod:empty_can>)
	.addItemInput(<ore:cropRice>)
	.addItemInput(<minecraft:magma_cream>)
	.addItemInput(<minecraft:blaze_powder>)
    .addFluidInput(<liquid:water> * 1000)
	.build();

// Stealthy Energy Drink
mods.modularmachinery.RecipeBuilder.newBuilder("mixer-dust" + "_stealthy_energy_drink", "mixer-dust", 50)
    .addMysticalMechanicsInput(40, 80)
	.addItemOutput(<xlfoodmod:stealthy_energy_drink>)
	.addItemInput(<xlfoodmod:empty_can>)
	.addItemInput(<ore:cropRice>)
	.addItemInput(<minecraft:sugar>)
	.addItemInput(<minecraft:golden_carrot>)
    .addFluidInput(<liquid:water> * 1000)
	.build();


// Healthy Energy Drink
mods.modularmachinery.RecipeBuilder.newBuilder("mixer-dust" + "_healthy_energy_drink", "mixer-dust", 50)
    .addMysticalMechanicsInput(40, 80)
	.addItemOutput(<xlfoodmod:healthy_energy_drink>)
	.addItemInput(<xlfoodmod:empty_can>)
	.addItemInput(<ore:cropRice>)
	.addItemInput(<minecraft:ghast_tear>)
	.addItemInput(<minecraft:speckled_melon>)
    .addFluidInput(<liquid:water> * 1000)
	.build();

// Speedy Energy Drink
mods.modularmachinery.RecipeBuilder.newBuilder("mixer-dust" + "_speedy_energy_drink", "mixer-dust", 50)
    .addMysticalMechanicsInput(40, 80)
	.addItemOutput(<xlfoodmod:speedy_energy_drink>)
	.addItemInput(<xlfoodmod:empty_can>)
	.addItemInput(<ore:cropRice>)
	.addItemInput(<minecraft:sugar>)
    .addFluidInput(<liquid:water> * 1000)
	.build();

// Chocolate Ice Cream Ball
mods.modularmachinery.RecipeBuilder.newBuilder("mixer-dust" + "_chocolate_icecream_ball", "mixer-dust", 50)
    .addMysticalMechanicsInput(40, 80)
	.addItemOutput(<xlfoodmod:chocolate_icecream_ball>)
	.addItemInput(<minecraft:snowball>)
	.addItemInput(<xlfoodmod:vanilla_cream>)
	.addItemInput(<minecraft:dye:3>)
    .addFluidInput(<liquid:milk> * 1000)
	.build();

// Vanilla Ice Cream Ball
mods.modularmachinery.RecipeBuilder.newBuilder("mixer-dust" + "_vanilla_icecream_ball", "mixer-dust", 50)
    .addMysticalMechanicsInput(40, 80)
	.addItemOutput(<xlfoodmod:vanilla_icecream_ball>)
	.addItemInput(<minecraft:snowball>)
	.addItemInput(<xlfoodmod:vanilla_cream>)
    .addFluidInput(<liquid:milk> * 1000)
	.build();

// Strawberry Ice Cream Ball
mods.modularmachinery.RecipeBuilder.newBuilder("mixer-dust" + "_strawberry_icecream_ball", "mixer-dust", 50)
    .addMysticalMechanicsInput(40, 80)
	.addItemOutput(<xlfoodmod:strawberry_icecream_ball>)
	.addItemInput(<minecraft:snowball>)
	.addItemInput(<xlfoodmod:strawberry>)
    .addFluidInput(<liquid:milk> * 1000)
	.build();

// EnderIOs
mods.modularmachinery.RecipeBuilder.newBuilder("mixer-dust" + "_enderios", "mixer-dust", 50)
    .addMysticalMechanicsInput(40, 80)
	.addItemOutput(<enderio:item_ender_food>)
	.addItemInput(<minecraft:bowl>)
	.addItemInput(<minecraft:wheat>)
	.addItemInput(<techreborn:dust:20>)
    .addFluidInput(<liquid:milk> * 1000)
	.build();

// AA Chocolate Cake
mods.modularmachinery.RecipeBuilder.newBuilder("mixer-dust" + "_aachocolatecake", "mixer-dust", 50)
    .addMysticalMechanicsInput(40, 80)
	.addItemOutput(<actuallyadditions:item_food:8>)
	.addItemInput(<actuallyadditions:item_misc:4>)
	.addItemInput(<minecraft:egg>)
	.addItemInput(<minecraft:sugar>)
	.addItemInput(<minecraft:dye:3> * 3)
    .addFluidInput(<liquid:milk> * 3000)
	.build();

// XL Food Chocolate Cake
mods.modularmachinery.RecipeBuilder.newBuilder("mixer-dust" + "_xlfoodchocolatecake", "mixer-dust", 50)
    .addMysticalMechanicsInput(40, 80)
	.addItemOutput(<xlfoodmod:chocolate_cake>)
	.addItemInput(<minecraft:wheat> * 3)
	.addItemInput(<minecraft:sugar> * 2)
	.addItemInput(<xlfoodmod:chocolate_syrup>)
    .addFluidInput(<liquid:milk> * 3000)
	.build();

// Oreo Cake
mods.modularmachinery.RecipeBuilder.newBuilder("mixer-dust" + "_oreo_cake", "mixer-dust", 50)
    .addMysticalMechanicsInput(40, 80)
	.addItemOutput(<xlfoodmod:oreo_cake>)
	.addItemInput(<minecraft:wheat> * 3)
	.addItemInput(<minecraft:sugar> * 2)
	.addItemInput(<xlfoodmod:oreo_cookie>)
    .addFluidInput(<liquid:milk> * 3000)
	.build();

// Cheese Cake
mods.modularmachinery.RecipeBuilder.newBuilder("mixer-dust" + "_cheese_cake", "mixer-dust", 50)
    .addMysticalMechanicsInput(40, 80)
	.addItemOutput(<xlfoodmod:cheese_cake>)
	.addItemInput(<minecraft:wheat> * 3)
	.addItemInput(<minecraft:sugar> * 2)
	.addItemInput(<xlfoodmod:cheese>)
    .addFluidInput(<liquid:milk> * 3000)
	.build();

// Nether Cake
mods.modularmachinery.RecipeBuilder.newBuilder("mixer-dust" + "_nether_cake", "mixer-dust", 50)
    .addMysticalMechanicsInput(40, 80)
	.addItemOutput(<xlfoodmod:nether_cake>)
	.addItemInput(<minecraft:wheat> * 3)
	.addItemInput(<minecraft:sugar> * 2)
	.addItemInput(<minecraft:blaze_powder>)
    .addFluidInput(<liquid:milk> * 3000)
	.build();

// Strawberry Cake
mods.modularmachinery.RecipeBuilder.newBuilder("mixer-dust" + "_strawberry_cake", "mixer-dust", 50)
    .addMysticalMechanicsInput(40, 80)
	.addItemOutput(<xlfoodmod:strawberry_cake>)
	.addItemInput(<minecraft:wheat> * 3)
	.addItemInput(<minecraft:sugar> * 2)
	.addItemInput(<xlfoodmod:strawberry>)
    .addFluidInput(<liquid:milk> * 3000)
	.build();

// Pumpkin Cake
mods.modularmachinery.RecipeBuilder.newBuilder("mixer-dust" + "_pumpkin_cake", "mixer-dust", 50)
    .addMysticalMechanicsInput(40, 80)
	.addItemOutput(<xlfoodmod:pumpkin_cake>)
	.addItemInput(<minecraft:wheat> * 3)
	.addItemInput(<minecraft:sugar> * 2)
	.addItemInput(<minecraft:pumpkin>)
    .addFluidInput(<liquid:milk> * 3000)
	.build();

// Vanilla MC Cake
mods.modularmachinery.RecipeBuilder.newBuilder("mixer-dust" + "_cake_1", "mixer-dust", 50)
    .addMysticalMechanicsInput(40, 80)
	.addItemOutput(<minecraft:cake>)
	.addItemInput(<minecraft:wheat> * 3)
	.addItemInput(<minecraft:sugar> * 2)
	.addItemInput(<minecraft:egg>)
    .addFluidInput(<liquid:milk> * 3000)
	.build();

// Vanilla MC Cake (Alternate recipe)
mods.modularmachinery.RecipeBuilder.newBuilder("mixer-dust" + "_cake_2", "mixer-dust", 50)
    .addMysticalMechanicsInput(40, 80)
	.addItemOutput(<minecraft:cake>)
	.addItemInput(<enderio:item_material:70>)
	.addItemInput(<minecraft:sugar> * 2)
    .addFluidInput(<liquid:milk> * 3000)
	.build();

// Tasty Clay
mods.modularmachinery.RecipeBuilder.newBuilder("mixer-dust" + "_tasty_clay", "mixer-dust", 50)
    .addMysticalMechanicsInput(40, 80)
	.addItemOutput(<openblocks:tasty_clay> * 2)
	.addItemInput(<minecraft:dye:3>)
	.addItemInput(<minecraft:clay_ball>)
    .addFluidInput(<liquid:milk> * 1000)
	.build();




//Smeltery Stuff

##Bronze
val fluidBronze = mods.modularmachinery.RecipeBuilder.newBuilder("mixer-fluid-bronze", "mixer", 240, 0);
fluidBronze.addEmberInput(160);
fluidBronze.addMysticalMechanicsInput(20, 39);
fluidBronze.addItemInput(<ore:ingotCopper>,3);
fluidBronze.addItemInput(<ore:ingotTin>);
fluidBronze.addFluidOutput(<liquid:bronze>*576);
fluidBronze.build();

##Bronzefast
val fluidBronzeFast = mods.modularmachinery.RecipeBuilder.newBuilder("mixer-fluid-bronze-fast", "mixer", 160, 0);
fluidBronzeFast.addEmberInput(160);
fluidBronzeFast.addMysticalMechanicsInput(40, 80);
fluidBronzeFast.addItemInput(<ore:ingotCopper>,3);
fluidBronzeFast.addItemInput(<ore:ingotTin>);
fluidBronzeFast.addFluidOutput(<liquid:bronze>*576);
fluidBronzeFast.build();

##constantan
val fluidconstantan = mods.modularmachinery.RecipeBuilder.newBuilder("mixer-fluid-constantan", "mixer", 120, 0);
fluidconstantan.addEmberInput(80);
fluidconstantan.addMysticalMechanicsInput(20, 39);
fluidconstantan.addItemInput(<ore:ingotCopper>);
fluidconstantan.addItemInput(<ore:ingotNickel>);
fluidconstantan.addFluidOutput(<liquid:constantan>*288);
fluidconstantan.build();

##constantanFast
val fluidconstantanFast = mods.modularmachinery.RecipeBuilder.newBuilder("mixer-fluid-constantan-fast", "mixer", 80, 0);
fluidconstantanFast.addEmberInput(80);
fluidconstantanFast.addMysticalMechanicsInput(40, 80);
fluidconstantanFast.addItemInput(<ore:ingotCopper>);
fluidconstantanFast.addItemInput(<ore:ingotNickel>);
fluidconstantanFast.addFluidOutput(<liquid:constantan>*288);
fluidconstantanFast.build();

##invar
val fluidinvar = mods.modularmachinery.RecipeBuilder.newBuilder("mixer-fluid-invar", "mixer", 180, 0);
fluidinvar.addEmberInput(120);
fluidinvar.addMysticalMechanicsInput(20, 39);
fluidinvar.addItemInput(<ore:ingotIron>,2);
fluidinvar.addItemInput(<ore:ingotNickel>);
fluidinvar.addFluidOutput(<liquid:invar>*432);
fluidinvar.build();

##invarFast
val fluidinvarFast = mods.modularmachinery.RecipeBuilder.newBuilder("mixer-fluid-invar-fast", "mixer", 120, 0);
fluidinvarFast.addEmberInput(120);
fluidinvarFast.addMysticalMechanicsInput(40, 80);
fluidinvarFast.addItemInput(<ore:ingotIron>,2);
fluidinvarFast.addItemInput(<ore:ingotNickel>);
fluidinvarFast.addFluidOutput(<liquid:invar>*432);
fluidinvarFast.build();

##electrum
val fluidelectrum = mods.modularmachinery.RecipeBuilder.newBuilder("mixer-fluid-electrum", "mixer", 120, 0);
fluidelectrum.addEmberInput(80);
fluidelectrum.addMysticalMechanicsInput(20, 39);
fluidelectrum.addItemInput(<ore:ingotGold>);
fluidelectrum.addItemInput(<ore:ingotSilver>);
fluidelectrum.addFluidOutput(<liquid:electrum>*288);
fluidelectrum.build();

##electrumFast
val fluidelectrumFast = mods.modularmachinery.RecipeBuilder.newBuilder("mixer-fluid-electrum-fast", "mixer", 80, 0);
fluidelectrumFast.addEmberInput(80);
fluidelectrumFast.addMysticalMechanicsInput(40, 80);
fluidelectrumFast.addItemInput(<ore:ingotGold>);
fluidelectrumFast.addItemInput(<ore:ingotSilver>);
fluidelectrumFast.addFluidOutput(<liquid:electrum>*288);
fluidelectrumFast.build();

##inert_metal
val fluidinert_metal = mods.modularmachinery.RecipeBuilder.newBuilder("mixer-fluid-inert_metal", "mixer", 120, 0);
fluidinert_metal.addEmberInput(80);
fluidinert_metal.addMysticalMechanicsInput(20, 39);
fluidinert_metal.addItemInput(<ore:ingotSilver>,2);
fluidinert_metal.addItemInput(<ore:ingotLead>);
fluidinert_metal.addFluidOutput(<liquid:inert_metal>*288);
fluidinert_metal.build();

##inert_metalFast
val fluidinert_metalFast = mods.modularmachinery.RecipeBuilder.newBuilder("mixer-fluid-inert_metal-fast", "mixer", 80, 0);
fluidinert_metalFast.addEmberInput(80);
fluidinert_metalFast.addMysticalMechanicsInput(40, 80);
fluidinert_metalFast.addItemInput(<ore:ingotSilver>,2);
fluidinert_metalFast.addItemInput(<ore:ingotLead>);
fluidinert_metalFast.addFluidOutput(<liquid:inert_metal>*288);
fluidinert_metalFast.build();

##tin_silver
val fluidtin_silver = mods.modularmachinery.RecipeBuilder.newBuilder("mixer-fluid-tin-silver", "mixer", 240, 0);
fluidtin_silver.addEmberInput(80);
fluidtin_silver.addMysticalMechanicsInput(20, 39);
fluidtin_silver.addItemInput(<ore:ingotSilver>);
fluidtin_silver.addItemInput(<ore:ingotTin>,3);
fluidtin_silver.addFluidOutput(<liquid:tin_silver>*576);
fluidtin_silver.build();

##tin_silverFast
val fluidtin_silverFast = mods.modularmachinery.RecipeBuilder.newBuilder("mixer-fluid-tin-silver-fast", "mixer", 160, 0);
fluidtin_silverFast.addEmberInput(80);
fluidtin_silverFast.addMysticalMechanicsInput(40, 80);
fluidtin_silverFast.addItemInput(<ore:ingotSilver>);
fluidtin_silverFast.addItemInput(<ore:ingotTin>,3);
fluidtin_silverFast.addFluidOutput(<liquid:tin_silver>*576);
fluidtin_silverFast.build();



##conductive_iron
val fluidconductive_iron = mods.modularmachinery.RecipeBuilder.newBuilder("mixer-fluid-conductive_iron", "mixer", 60, 0);
fluidconductive_iron.addEmberInput(80);
fluidconductive_iron.addMysticalMechanicsInput(40, 59);
fluidconductive_iron.addItemInput(<minecraft:iron_ingot>);
fluidconductive_iron.addItemInput(<minecraft:redstone>);
fluidconductive_iron.addFluidOutput(<liquid:conductive_iron>*144);
fluidconductive_iron.build();

##conductive_ironFast
val fluidconductive_ironFast = mods.modularmachinery.RecipeBuilder.newBuilder("mixer-fluid-conductive_iron-fast", "mixer", 40, 0);
fluidconductive_ironFast.addEmberInput(80);
fluidconductive_ironFast.addMysticalMechanicsInput(60, 100);
fluidconductive_ironFast.addItemInput(<minecraft:iron_ingot>);
fluidconductive_ironFast.addItemInput(<minecraft:redstone>);
fluidconductive_ironFast.addFluidOutput(<liquid:conductive_iron>*144);
fluidconductive_ironFast.build();

##pulsating_iron
val fluidpulsating_iron = mods.modularmachinery.RecipeBuilder.newBuilder("mixer-fluid-pulsating_iron", "mixer", 60, 0);
fluidpulsating_iron.addEmberInput(80);
fluidpulsating_iron.addMysticalMechanicsInput(40, 59);
fluidpulsating_iron.addItemInput(<minecraft:iron_ingot>);
fluidpulsating_iron.addItemInput(<minecraft:ender_pearl>);
fluidpulsating_iron.addFluidOutput(<liquid:pulsating_iron>*144);
fluidpulsating_iron.build();

##pulsating_ironFast
val fluidpulsating_ironFast = mods.modularmachinery.RecipeBuilder.newBuilder("mixer-fluid-pulsating_iron-fast", "mixer", 40, 0);
fluidpulsating_ironFast.addEmberInput(80);
fluidpulsating_ironFast.addMysticalMechanicsInput(60, 100);
fluidpulsating_ironFast.addItemInput(<minecraft:iron_ingot>);
fluidpulsating_ironFast.addItemInput(<minecraft:ender_pearl>);
fluidpulsating_ironFast.addFluidOutput(<liquid:pulsating_iron>*144);
fluidpulsating_ironFast.build();

##Quartz for fused
val fluidquartz = mods.modularmachinery.RecipeBuilder.newBuilder("mixer-fluid-quartz", "mixer", 80, 0);
fluidquartz.addEmberInput(80);
//fluidquartz.addMysticalMechanicsInput(20, 60);
fluidquartz.addItemInput(<minecraft:quartz>);
fluidquartz.addFluidOutput(<liquid:quartz>*666);
fluidquartz.build();

##Glass
val fluidglass = mods.modularmachinery.RecipeBuilder.newBuilder("mixer-fluid-glass", "mixer", 80, 0);
fluidglass.addEmberInput(80);
//fluidglass.addMysticalMechanicsInput(20, 60);
fluidglass.addItemInput(<minecraft:sand>);
fluidglass.addFluidOutput(<liquid:glass>*1000);
fluidglass.build();

##Blood
val fluidblood = mods.modularmachinery.RecipeBuilder.newBuilder("mixer-fluid-blood", "mixer", 50, 0);
fluidblood.addEmberInput(40);
//fluidblood.addMysticalMechanicsInput(20, 60);
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
<thaumadditions:mithminite_block>.addTooltip(format.darkPurple("Shadow Condenser 5x output modifier"));

val MidnightIngot = mods.modularmachinery.RecipeBuilder.newBuilder("midnight-ingot", "darkness-collector", 2000, 0);
//MidnightIngot.addItemInput(<techreborn:ingot:25>);
MidnightIngot.addItemInput(<thermalfoundation:material:135>);
MidnightIngot.addItemInput(<actuallyadditions:item_crystal_empowered:3>);
MidnightIngot.addItemInput(<mysticalagradditions:stuff:3>);
MidnightIngot.addItemInput(<environmentaltech:kyronite_crystal>);
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

##CyrstalMatrixIngot
val CyrstalMatrixIngot = mods.modularmachinery.RecipeBuilder.newBuilder("forge-cyrstalmatrixingot", "heavens-forge", 400, 0);
CyrstalMatrixIngot.addMekanismLaserInput(50000000);
CyrstalMatrixIngot.addItemInput(<extendedcrafting:material:24>);
CyrstalMatrixIngot.addItemInput(<ore:CelestialCrystal>);
CyrstalMatrixIngot.addItemInput(<contenttweaker:crystal_lattice>*2);
CyrstalMatrixIngot.addItemInput(<moreplates:stellar_alloy_plate>*8);
CyrstalMatrixIngot.addItemInput(<actuallyadditions:item_crystal_empowered:2>*4);
CyrstalMatrixIngot.addFluidInput(<liquid:astralsorcery.liquidstarlight>* 10000);
CyrstalMatrixIngot.addFluidInput(<liquid:empoweredoil>* 10000);
CyrstalMatrixIngot.addItemOutput(<avaritia:resource:1>);
CyrstalMatrixIngot.build();

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


##Mirion
val Mirion = mods.modularmachinery.RecipeBuilder.newBuilder("forge-mirion", "heavens-forge", 300, 0);
Mirion.addMekanismLaserInput(10000000);
Mirion.addItemInput(<botania:manaresource>);
Mirion.addItemInput(<botania:manaresource:4>);
Mirion.addItemInput(<botania:manaresource:7>);
Mirion.addFluidInput(<liquid:cobalt>* 144);
Mirion.addFluidInput(<liquid:base_essence>* 144);
Mirion.addItemOutput(<plustic:mirioningot>);
Mirion.build();





##########################################################################################
print("==================== end of modular machines.zs ====================");
