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
]
as IItemStack[];
for item in removerecipes {
    recipes.remove(item);
}

recipes.addShaped(<actuallyadditions:item_misc:16>, [[<thermalfoundation:storage_alloy>, <actuallyadditions:item_misc:7>, <thermalfoundation:storage_alloy>],[<actuallyadditions:item_misc:7>, <actuallyadditions:item_crystal>, <actuallyadditions:item_misc:7>], [<thermalfoundation:storage_alloy>, <actuallyadditions:item_misc:7>, <thermalfoundation:storage_alloy>]]);

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
Empowerer.addRecipe(<actuallyadditions:item_crystal_empowered>, <actuallyadditions:item_crystal>, <thermalfoundation:bait:2>, <botania:manaresource:6>, <minecraft:tnt>, <techreborn:ingot:20>, 5000, 200, [0.9, 0.1, 0.2]);
Empowerer.addRecipe(<actuallyadditions:block_crystal_empowered>, <actuallyadditions:block_crystal>, <thermalfoundation:bait:2>, <botania:manaresource:6>, <minecraft:tnt>, <techreborn:ingot:20>, 10000, 400, [0.9, 0.1, 0.2]);

mods.actuallyadditions.AtomicReconstructor.removeRecipe(<moreplates:restonia_plate>);

//enori
Empowerer.addRecipe(<actuallyadditions:item_crystal_empowered:5>, <actuallyadditions:item_crystal:5>, <animania:salt_lick>, <botania:petal>, <mysticalagriculture:iron_essence>, <advgenerators:controller>, 5000, 200, [0.9, 0.8, 1]);
Empowerer.addRecipe(<actuallyadditions:block_crystal_empowered:5>, <actuallyadditions:block_crystal:5>, <animania:salt_lick>, <botania:petalblock>, <mysticalagriculture:iron_essence>, <advgenerators:controller>, 10000, 400, [0.9, 0.8, 1]);

//diamintine
Empowerer.addRecipe(<actuallyadditions:item_crystal_empowered:2>, <actuallyadditions:item_crystal:2>, <tombstone:crafting_ingredient:2>, <moreplates:elementium_gear>, <appliedenergistics2:material:12>, <bloodmagic:slate:2>, 5000, 200, [0.2, 0.9, 0.9]);
Empowerer.addRecipe(<actuallyadditions:block_crystal_empowered:2>, <actuallyadditions:block_crystal:2>, <tombstone:crafting_ingredient:2>, <moreplates:elementium_gear>, <appliedenergistics2:material:12>, <bloodmagic:slate:2>, 10000, 400, [0.2, 0.9, 0.9]);

//void
Empowerer.addRecipe(<actuallyadditions:item_crystal_empowered:3>, <actuallyadditions:item_crystal:3>, <enderio:item_material:20>, <chisel:voidstonerunic>, <thaumcraft:plate:2>, <bloodmagic:component:4>, 5000, 200, [0.2, 0.1, 0.5]); // 0.5, 0.3, 1 white core purple beam. like this one
Empowerer.addRecipe(<actuallyadditions:block_crystal_empowered:3>, <actuallyadditions:block_crystal:3>, <enderio:block_infinity>, <chisel:voidstonerunic>, <thaumcraft:plate:2>, <bloodmagic:component:4>, 10000, 400, [0.2, 0.1, 0.5]);

mods.appliedenergistics2.Inscriber.addRecipe(<chisel:voidstonerunic>, <chisel:energizedvoidstone>, true, <chisel:chisel_diamond>);

mods.techreborn.plateBendingMachine.removeRecipe(<moreplates:void_plate>);
mods.immersiveengineering.MetalPress.removeRecipe(<moreplates:void_plate>);
mods.actuallyadditions.AtomicReconstructor.removeRecipe(<thaumcraft:plate:3>);

//palis
Empowerer.addRecipe(<actuallyadditions:item_crystal_empowered:1>, <actuallyadditions:item_crystal:1>, <bloodmagic:component:28>, <jaopca:item_stickmanasteel>, <astralsorcery:itemcraftingcomponent:4>, <thaumcraft:fabric>, 5000, 200, [0.1, 0.2, 1]);
Empowerer.addRecipe(<actuallyadditions:block_crystal_empowered:1>, <actuallyadditions:block_crystal:1>, <bloodmagic:component:28>, <jaopca:item_stickmanasteel>, <astralsorcery:itemcraftingcomponent:4>, <thaumcraft:fabric>, 10000, 400, [0.1, 0.2, 1]);

//Casing
recipes.addShaped(<actuallyadditions:block_misc:7> * 4, [[<actuallyadditions:block_crystal:5>, <actuallyadditions:block_misc:9>, <actuallyadditions:block_crystal:5>]]);
//Farmer
recipes.addShaped(<actuallyadditions:block_farmer>, [[<minecraft:wheat_seeds>, <thermalfoundation:material:288>, <minecraft:wheat_seeds>],[<thermalfoundation:material:288>, <actuallyadditions:block_misc:7>, <thermalfoundation:material:288>], [<minecraft:wheat_seeds>, <thermalfoundation:material:288>, <minecraft:wheat_seeds>]]);

//Aadvanced Coils
recipes.addShaped(<actuallyadditions:item_misc:8>, [[null, <techreborn:cable:6>, <immersiveengineering:material>],[<techreborn:cable:6>, <actuallyadditions:item_misc:7>, <techreborn:cable:6>], [<immersiveengineering:material>, <techreborn:cable:6>, null]]);

//Basic Coils
recipes.addShaped(<actuallyadditions:item_misc:7> * 2, [[null, <immersiveengineering:wirecoil:2>, <immersiveengineering:material>],[<immersiveengineering:wirecoil:2>, <actuallyadditions:item_crystal>, <immersiveengineering:wirecoil:2>], [<immersiveengineering:material>, <immersiveengineering:wirecoil:2>, null]]);
recipes.addShaped(<actuallyadditions:item_misc:7>, [[null, <immersiveengineering:wirecoil:1>, <immersiveengineering:material>],[<immersiveengineering:wirecoil:1>, <actuallyadditions:item_crystal>, <immersiveengineering:wirecoil:1>], [<immersiveengineering:material>, <immersiveengineering:wirecoil:1>, null]]);

//Leaf Gen
recipes.addShaped(<actuallyadditions:block_leaf_generator>, [[<actuallyadditions:item_crystal:5>, <actuallyadditions:block_misc:9>, <actuallyadditions:item_crystal:5>],[<actuallyadditions:item_crystal>, <ore:treeLeaves>, <actuallyadditions:item_crystal>], [<actuallyadditions:item_crystal:5>, <actuallyadditions:item_misc:7>, <actuallyadditions:item_crystal:5>]]);

##########################################################################################
print("==================== end of actually additions.zs ====================");

