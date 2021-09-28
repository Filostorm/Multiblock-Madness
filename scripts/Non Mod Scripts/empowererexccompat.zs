import crafttweaker.item.IItemStack as IItemStack;
import mods.extendedcrafting.CombinationCrafting;

print("==================== loading empowererexccompat.zs ====================");
##########################################################################################

//Thanks Hua En!

// Emeradic
//CombinationCrafting.addRecipe(<actuallyadditions:item_crystal_empowered:4>, 200000, <actuallyadditions:item_crystal:4>, [<mekanism:glowplasticblock:10>, <enderio:item_material:15>, <thermalfoundation:fertilizer:2>, <contenttweaker:ingot_xp>]);
CombinationCrafting.addRecipe(<actuallyadditions:block_crystal_empowered:4>, 400000, <actuallyadditions:block_crystal:4>, 
[<mekanism:glowplasticblock:10>, <enderio:item_material:15>, <thermalfoundation:fertilizer:2>, <contenttweaker:block_xp>]);

// Restonia
//CombinationCrafting.addRecipe(<actuallyadditions:item_crystal_empowered>, 200000, <actuallyadditions:item_crystal>, [<thermalfoundation:bait:2>, <mekanism:enrichedalloy>, <minecraft:tnt>, <techreborn:ingot:20>]);
CombinationCrafting.addRecipe(<actuallyadditions:block_crystal_empowered>, 400000, <actuallyadditions:block_crystal>, 
[<thermalfoundation:bait:2>, <mekanism:enrichedalloy>, <minecraft:tnt>, <techreborn:ingot:20>]);

// Enori
//CombinationCrafting.addRecipe(<actuallyadditions:item_crystal_empowered:5>, 200000, <actuallyadditions:item_crystal:5>, [<ore:dustSalt>, <botania:petal>, <jaopca:item_shardtitanium>, <advgenerators:controller>]);
CombinationCrafting.addRecipe(<actuallyadditions:block_crystal_empowered:5>, 400000, <actuallyadditions:block_crystal:5>, 
[<ore:blockSalt>, <botania:petalblock>, <jaopca:item_shardtitanium>, <advgenerators:controller>]);

// Diamatine
//CombinationCrafting.addRecipe(<actuallyadditions:item_crystal_empowered:2>, 200000, <actuallyadditions:item_crystal:2>, [<tombstone:impregnated_diamond>, <moreplates:elementium_gear>, <appliedenergistics2:material:12>, <bloodmagic:slate:2>]);
CombinationCrafting.addRecipe(<actuallyadditions:block_crystal_empowered:2>, 400000, <actuallyadditions:block_crystal:2>, 
[<tombstone:impregnated_diamond>, <moreplates:elementium_gear>, <appliedenergistics2:material:12>, <bloodmagic:slate:2>]);

// Void
//CombinationCrafting.addRecipe(<actuallyadditions:item_crystal_empowered:3>, 200000, <actuallyadditions:item_crystal:3>, [<enderio:item_material:20>, <chisel:energizedvoidstone:4>, <thaumcraft:plate:2>, <thaumcraft:nugget:7>]);

CombinationCrafting.addRecipe(<actuallyadditions:block_crystal_empowered:3>, 400000, <actuallyadditions:block_crystal:3>, 
[<enderio:block_infinity>, <chisel:energizedvoidstone:4>, <thaumcraft:plate:2>, <thaumcraft:ingot:1>]);

// Palis
//CombinationCrafting.addRecipe(<actuallyadditions:item_crystal_empowered:1>, 200000, <actuallyadditions:item_crystal:1>, [<moreplates:cobalt_gear>, <jaopca:item_stickmanasteel>, <astralsorcery:itemcraftingcomponent:4>, <thaumcraft:fabric>]);
CombinationCrafting.addRecipe(<actuallyadditions:block_crystal_empowered:1>, 400000, <actuallyadditions:block_crystal:1>, 
[<moreplates:cobalt_gear>, <jaopca:item_stickmanasteel>, <astralsorcery:itemcraftingcomponent:4>, <thaumcraft:fabric>]);

// Advanced Machine Frame
CombinationCrafting.addRecipe(<techreborn:machine_frame:1>, 1000000, <techreborn:machine_frame>, 
[<jaopca:item_platedensecarbon>, <jaopca:item_platedenseintermedium>, <jaopca:item_platedenseenergeticsilver>, <jaopca:item_platedenseadvancedalloy>]);

// Canola Seeds
CombinationCrafting.addRecipe(<actuallyadditions:item_misc:24>, 40000, <actuallyadditions:item_misc:23>, 
[<actuallyadditions:item_canola_seed>, <actuallyadditions:item_canola_seed>, <actuallyadditions:item_canola_seed>, <actuallyadditions:item_canola_seed>]);

##########################################################################################
print("==================== end of empowerercexccompat.zs ====================");
