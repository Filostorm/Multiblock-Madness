import crafttweaker.item.IItemStack as IItemStack;

print("==================== loading empowererexccompat.zs ====================");
##########################################################################################

//Thanks Hua En!

// Emeradic
mods.extendedcrafting.CombinationCrafting.addRecipe(<actuallyadditions:item_crystal_empowered:4>, 20000, <actuallyadditions:item_crystal:4>, 
[<mekanism:glowplasticblock:2>, <enderio:item_material:15>, <thermalfoundation:fertilizer:2>, <contenttweaker:ingot_xp>]);
mods.extendedcrafting.CombinationCrafting.addRecipe(<actuallyadditions:block_crystal_empowered:4>, 40000, <actuallyadditions:block_crystal:4>, 
[<mekanism:glowplasticblock:2>, <enderio:item_material:15>, <thermalfoundation:fertilizer:2>, <contenttweaker:block_xp>]);

// Restonia
mods.extendedcrafting.CombinationCrafting.addRecipe(<actuallyadditions:item_crystal_empowered>, 20000, <actuallyadditions:item_crystal>, 
[<thermalfoundation:bait:2>, <mekanism:enrichedalloy>, <minecraft:tnt>, <techreborn:ingot:20>]);
mods.extendedcrafting.CombinationCrafting.addRecipe(<actuallyadditions:block_crystal_empowered>, 40000, <actuallyadditions:block_crystal>, 
[<thermalfoundation:bait:2>, <mekanism:enrichedalloy>, <minecraft:tnt>, <techreborn:ingot:20>]);

// Enori
mods.extendedcrafting.CombinationCrafting.addRecipe(<actuallyadditions:item_crystal_empowered:5>, 20000, <actuallyadditions:item_crystal:5>, 
[<ore:dustSalt>, <botania:petal>, <jaopca:item_shardtitanium>, <advgenerators:controller>]);
mods.extendedcrafting.CombinationCrafting.addRecipe(<actuallyadditions:block_crystal_empowered:5>, 40000, <actuallyadditions:block_crystal:5>, 
[<ore:blockSalt>, <botania:petalblock>, <jaopca:item_shardtitanium>, <advgenerators:controller>]);

// Diamatine
mods.extendedcrafting.CombinationCrafting.addRecipe(<actuallyadditions:item_crystal_empowered:2>, 20000, <actuallyadditions:item_crystal:2>, 
[<tombstone:crafting_ingredient:2>, <moreplates:elementium_gear>, <appliedenergistics2:material:12>, <bloodmagic:slate:2>]);
mods.extendedcrafting.CombinationCrafting.addRecipe(<actuallyadditions:block_crystal_empowered:2>, 40000, <actuallyadditions:block_crystal:2>, 
[<tombstone:crafting_ingredient:2>, <moreplates:elementium_gear>, <appliedenergistics2:material:12>, <bloodmagic:slate:2>]);

// Void
mods.extendedcrafting.CombinationCrafting.addRecipe(<actuallyadditions:item_crystal_empowered:3>, 20000, <actuallyadditions:item_crystal:3>, 
[<enderio:item_material:20>, <chisel:energizedvoidstone:4>, <thaumcraft:plate:2>, <thaumcraft:nugget:7>]);

mods.extendedcrafting.CombinationCrafting.addRecipe(<actuallyadditions:block_crystal_empowered:3>, 40000, <actuallyadditions:block_crystal:3>, 
[<enderio:block_infinity>, <chisel:energizedvoidstone:4>, <thaumcraft:plate:2>, <thaumcraft:ingot:1>]);

// Palis
mods.extendedcrafting.CombinationCrafting.addRecipe(<actuallyadditions:item_crystal_empowered:1>, 20000, <actuallyadditions:item_crystal:1>, 
[<moreplates:cobalt_gear>, <jaopca:item_stickmanasteel>, <astralsorcery:itemcraftingcomponent:4>, <thaumcraft:fabric>]);
mods.extendedcrafting.CombinationCrafting.addRecipe(<actuallyadditions:block_crystal_empowered:1>, 40000, <actuallyadditions:block_crystal:1>, 
[<moreplates:cobalt_gear>, <jaopca:item_stickmanasteel>, <astralsorcery:itemcraftingcomponent:4>, <thaumcraft:fabric>]);

// Advanced Machine Frame
mods.extendedcrafting.CombinationCrafting.addRecipe(<techreborn:machine_frame:1>, 1000000, <techreborn:machine_frame>, 
[<jaopca:item_platedensecarbon>, <jaopca:item_platedenseintermedium>, <jaopca:item_platedenseenergeticsilver>, <jaopca:item_platedenseadvancedalloy>]);

// Canola Seeds
mods.extendedcrafting.CombinationCrafting.addRecipe(<actuallyadditions:item_misc:24>, 4000, <actuallyadditions:item_misc:23>, 
[<actuallyadditions:item_canola_seed>, <actuallyadditions:item_canola_seed>, <actuallyadditions:item_canola_seed>, <actuallyadditions:item_canola_seed>]);

##########################################################################################
print("==================== end of empowerercexccompat.zs ====================");
