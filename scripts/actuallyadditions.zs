import mods.actuallyadditions.Empowerer;
import crafttweaker.item.IItemStack;
print("==================== loading actually additions.zs ====================");
##########################################################################################

//atomic reconstructor

//voidstone processing
mods.actuallyadditions.AtomicReconstructor.addRecipe(<chisel:energizedvoidstone>, <chisel:voidstone>, 5000);


#######################
##     Empowerer     ##
#######################
val removestuff =
[    
    <actuallyadditions:item_crystal_empowered>,
    <actuallyadditions:block_crystal_empowered>,
    <actuallyadditions:item_crystal_empowered:1>,
    <actuallyadditions:block_crystal_empowered:1>,
    <actuallyadditions:item_crystal_empowered:2>,
    <actuallyadditions:block_crystal_empowered:2>,
    <actuallyadditions:item_crystal_empowered:3>,
    <actuallyadditions:block_crystal_empowered:3>,
    <actuallyadditions:item_crystal_empowered:4>,
    <actuallyadditions:block_crystal_empowered:4>,
    <actuallyadditions:item_crystal_empowered:5>,
    <actuallyadditions:block_crystal_empowered:5>,
    <actuallyadditions:block_misc:8>,
]
as IItemStack[];
for item in removestuff {
    Empowerer.removeRecipe(item);
}

val removerecipes =
[   
    <actuallyadditions:block_farmer>,
    <actuallyadditions:block_misc:7>,
    <actuallyadditions:item_misc:16>,
    <actuallyadditions:block_dropper>,
    <actuallyadditions:block_empowerer>,
    <actuallyadditions:block_lava_factory_controller>,
    <actuallyadditions:block_atomic_reconstructor>,
    <actuallyadditions:block_fermenting_barrel>,
    <actuallyadditions:block_canola_press>,
]
as IItemStack[];
for item in removerecipes {
    recipes.remove(item);
}

//Canola stuff
recipes.addShaped(<actuallyadditions:block_fermenting_barrel>, [[<ore:plankTreatedWood>, <actuallyadditions:item_crystal:5>, <ore:plankTreatedWood>],[<ore:plankTreatedWood>, <actuallyadditions:item_misc:13>, <ore:plankTreatedWood>], [<ore:plankTreatedWood>, <actuallyadditions:block_misc:4>, <ore:plankTreatedWood>]]);
recipes.addShaped(<actuallyadditions:block_canola_press>, [[<ore:cobblestone>, <actuallyadditions:item_crystal:5>, <ore:cobblestone>],[<ore:cobblestone>, <actuallyadditions:item_misc:13>, <ore:cobblestone>], [<ore:cobblestone>, <actuallyadditions:item_misc:7>, <ore:cobblestone>]]);


recipes.addShaped(<actuallyadditions:item_misc:16>, [[<thermalfoundation:storage_alloy>, <actuallyadditions:item_misc:7>, <thermalfoundation:storage_alloy>],[<actuallyadditions:item_misc:7>, <actuallyadditions:item_crystal>, <actuallyadditions:item_misc:7>], [<thermalfoundation:storage_alloy>, <actuallyadditions:item_misc:7>, <thermalfoundation:storage_alloy>]]);

//Small -> Med crate recipe
recipes.addShaped(<actuallyadditions:block_giant_chest_medium>, [[<immersiveengineering:treated_wood>, <actuallyadditions:block_crystal:3>, <immersiveengineering:treated_wood>],[<actuallyadditions:block_giant_chest>, <actuallyadditions:block_misc:4>, <actuallyadditions:block_giant_chest>], [<immersiveengineering:treated_wood>, <actuallyadditions:block_crystal:3>, <immersiveengineering:treated_wood>]]);


//Lava Factory
recipes.addShaped(<actuallyadditions:block_lava_factory_controller>, [[<actuallyadditions:item_misc:7>, <actuallyadditions:block_misc:9>, <actuallyadditions:item_misc:7>],[<actuallyadditions:block_crystal:5>, <embers:superheater>, <actuallyadditions:block_crystal:5>], [<minecraft:lava_bucket>, <minecraft:lava_bucket>, <minecraft:lava_bucket>]]);

//Atomic
recipes.addShapedMirrored(<actuallyadditions:block_atomic_reconstructor>, [[<thermalfoundation:material:354>, <powersuits:powerarmorcomponent>, <thermalfoundation:material:354>],[<arcanearchives:shaped_quartz>, <actuallyadditions:block_misc:9>, <minecraft:redstone_block>], [<thermalfoundation:material:354>, <powersuits:powerarmorcomponent>, <thermalfoundation:material:354>]]);

//Ender Casing
recipes.addShaped(<actuallyadditions:block_misc:8>, [[<minecraft:ender_pearl>, <actuallyadditions:item_crystal_empowered:3>, <minecraft:ender_pearl>],[<actuallyadditions:item_crystal_empowered:3>, <actuallyadditions:block_misc:2>, <actuallyadditions:item_crystal_empowered:3>], [<minecraft:ender_pearl>, <actuallyadditions:item_crystal_empowered:3>, <minecraft:ender_pearl>]]);

#################################   EMPOWERER   #####################
recipes.addShaped(<actuallyadditions:block_empowerer>, [[null, <actuallyadditions:item_crystal>, null],[null, <actuallyadditions:item_battery_double>, null], [<techreborn:machine_frame>, <actuallyadditions:block_display_stand>, <techreborn:machine_frame>]]);


//mods.actuallyadditions.Empowerer.addRecipe(IItemStack output, IItemStack input, IItemStack modifier1, IItemStack modifier2, IItemStack modifier3, IItemStack modifier4, int energyPerStand, int time, float[] particleColourArray);
//emeradic
Empowerer.addRecipe(<actuallyadditions:item_crystal_empowered:4>, <actuallyadditions:item_crystal:4>, <appliedenergistics2:paint_ball:33>, <enderio:item_material:15>, <thermalfoundation:fertilizer:2>, <plustic:osgloglasingot>, 5000, 200, [0.1, 1, 0.1]);
Empowerer.addRecipe(<actuallyadditions:block_crystal_empowered:4>, <actuallyadditions:block_crystal:4>, <appliedenergistics2:paint_ball:33>, <enderio:item_material:15>, <thermalfoundation:fertilizer:2>, <plustic:osgloglasblock>, 10000, 400, [0.1, 1, 0.1]);
##Might add this if it needs to be harder idk
/*
recipes.remove(<mekanism:glowplasticblock:2>);
recipes.addShaped(<mekanism:glowplasticblock:2>, [[<appliedenergistics2:paint_ball:33>, <appliedenergistics2:paint_ball:33>, <appliedenergistics2:paint_ball:33>],[<appliedenergistics2:paint_ball:33>, <mekanism:plasticblock:15>, <appliedenergistics2:paint_ball:33>], [<appliedenergistics2:paint_ball:33>, <appliedenergistics2:paint_ball:33>, <appliedenergistics2:paint_ball:33>]]);
recipes.addShaped(<mekanism:glowplasticblock:2>, [[<appliedenergistics2:paint_ball:33>, <appliedenergistics2:paint_ball:33>, <appliedenergistics2:paint_ball:33>],[<appliedenergistics2:paint_ball:33>, <mekanism:plasticblock:2>, <appliedenergistics2:paint_ball:33>], [<appliedenergistics2:paint_ball:33>, <appliedenergistics2:paint_ball:33>, <appliedenergistics2:paint_ball:33>]]);

*/

//restonia <actuallyadditions:item_crystal>
Empowerer.addRecipe(<actuallyadditions:item_crystal_empowered>, <actuallyadditions:item_crystal>, <thermalfoundation:bait:2>, <mekanism:enrichedalloy>, <minecraft:tnt>, <techreborn:ingot:20>, 5000, 200, [0.9, 0.1, 0.2]);
Empowerer.addRecipe(<actuallyadditions:block_crystal_empowered>, <actuallyadditions:block_crystal>, <thermalfoundation:bait:2>, <mekanism:enrichedalloy>, <minecraft:tnt>, <techreborn:ingot:20>, 10000, 400, [0.9, 0.1, 0.2]);

mods.actuallyadditions.AtomicReconstructor.removeRecipe(<moreplates:restonia_plate>);

//enori
Empowerer.addRecipe(<actuallyadditions:item_crystal_empowered:5>, <actuallyadditions:item_crystal:5>, <ore:dustSalt>, <botania:petal>, <thermalfoundation:material:166>, <advgenerators:controller>, 5000, 200, [0.9, 0.8, 1]);
Empowerer.addRecipe(<actuallyadditions:block_crystal_empowered:5>, <actuallyadditions:block_crystal:5>, <ore:blockSalt>, <botania:petalblock>, <thermalfoundation:storage_alloy:6>, <advgenerators:controller>, 10000, 400, [0.9, 0.8, 1]);

//diamintine
Empowerer.addRecipe(<actuallyadditions:item_crystal_empowered:2>, <actuallyadditions:item_crystal:2>, <tombstone:crafting_ingredient:2>, <moreplates:elementium_gear>, <appliedenergistics2:material:12>, <bloodmagic:slate:2>, 5000, 200, [0.2, 0.9, 0.9]);
Empowerer.addRecipe(<actuallyadditions:block_crystal_empowered:2>, <actuallyadditions:block_crystal:2>, <tombstone:crafting_ingredient:2>, <moreplates:elementium_gear>, <appliedenergistics2:material:12>, <bloodmagic:slate:2>, 10000, 400, [0.2, 0.9, 0.9]);

//void
Empowerer.addRecipe(<actuallyadditions:item_crystal_empowered:3>, <actuallyadditions:item_crystal:3>, <enderio:item_material:20>, <chisel:energizedvoidstone:4>, <thaumcraft:plate:2>, <bloodmagic:component:4>, 5000, 200, [0.2, 0.1, 0.5]); // 0.5, 0.3, 1 white core purple beam. like this one
Empowerer.addRecipe(<actuallyadditions:block_crystal_empowered:3>, <actuallyadditions:block_crystal:3>, <enderio:block_infinity>, <chisel:energizedvoidstone:4>, <thaumcraft:plate:2>, <bloodmagic:component:4>, 10000, 400, [0.2, 0.1, 0.5]);

mods.techreborn.plateBendingMachine.removeRecipe(<moreplates:void_plate>);
mods.immersiveengineering.MetalPress.removeRecipe(<moreplates:void_plate>);
mods.actuallyadditions.AtomicReconstructor.removeRecipe(<thaumcraft:plate:3>);

//palis
Empowerer.addRecipe(<actuallyadditions:item_crystal_empowered:1>, <actuallyadditions:item_crystal:1>, <bloodmagic:component:28>, <jaopca:item_stickmanasteel>, <astralsorcery:itemcraftingcomponent:4>, <thaumcraft:fabric>, 5000, 200, [0.1, 0.2, 1]);
Empowerer.addRecipe(<actuallyadditions:block_crystal_empowered:1>, <actuallyadditions:block_crystal:1>, <bloodmagic:component:28>, <jaopca:item_stickmanasteel>, <astralsorcery:itemcraftingcomponent:4>, <thaumcraft:fabric>, 10000, 400, [0.1, 0.2, 1]);

//Casing
recipes.addShaped(<actuallyadditions:block_misc:7> * 4, [[<actuallyadditions:block_crystal:5>, <actuallyadditions:block_misc:9>, <actuallyadditions:block_crystal:5>]]);
//Farmer
recipes.addShaped(<actuallyadditions:block_farmer>, [[<actuallyadditions:item_misc:7>, <thermalfoundation:material:288>, <actuallyadditions:item_misc:7>],[<thermalfoundation:material:288>, <actuallyadditions:block_misc:7>, <thermalfoundation:material:288>], [<actuallyadditions:item_misc:7>, <thermalfoundation:material:288>, <actuallyadditions:item_misc:7>]]);

//Aadvanced Coils
recipes.addShaped(<actuallyadditions:item_misc:8>, [[null, <techreborn:cable:6>, <immersiveengineering:material>],[<techreborn:cable:6>, <actuallyadditions:item_misc:7>, <techreborn:cable:6>], [<immersiveengineering:material>, <techreborn:cable:6>, null]]);

//Basic Coils
recipes.addShaped(<actuallyadditions:item_misc:7> * 2, [[null, <immersiveengineering:wirecoil:2>, <immersiveengineering:material>],[<immersiveengineering:wirecoil:2>, <actuallyadditions:item_crystal>, <immersiveengineering:wirecoil:2>], [<immersiveengineering:material>, <immersiveengineering:wirecoil:2>, null]]);
recipes.addShaped(<actuallyadditions:item_misc:7>, [[null, <immersiveengineering:wirecoil:1>, <immersiveengineering:material>],[<immersiveengineering:wirecoil:1>, <actuallyadditions:item_crystal>, <immersiveengineering:wirecoil:1>], [<immersiveengineering:material>, <immersiveengineering:wirecoil:1>, null]]);

//Leaf Gen
recipes.addShaped(<actuallyadditions:block_leaf_generator>, [[<actuallyadditions:item_crystal:5>, <actuallyadditions:block_misc:9>, <actuallyadditions:item_crystal:5>],[<actuallyadditions:item_crystal>, <ore:treeLeaves>, <actuallyadditions:item_crystal>], [<actuallyadditions:item_crystal:5>, <actuallyadditions:item_misc:7>, <actuallyadditions:item_crystal:5>]]);

//Dropper
recipes.addShaped(<actuallyadditions:block_dropper>, [[<ore:cobblestone>, <actuallyadditions:item_crystal:1>, <ore:cobblestone>],[<ore:cobblestone>, <minecraft:dropper>, <actuallyadditions:item_misc:7>], [<ore:cobblestone>, <actuallyadditions:item_crystal:1>, <ore:cobblestone>]]);



##########################################################################################
print("==================== end of actually additions.zs ====================");

