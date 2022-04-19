import crafttweaker.item.IItemStack;
import mods.actuallyadditions.AtomicReconstructor;
import mods.actuallyadditions.Empowerer;
import mods.extendedcrafting.CombinationCrafting;

print("==================== loading actuallyadditions.zs ====================");
##########################################################################################

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
    <moreplates:empowered_restonia_gear>,
    <moreplates:empowered_void_gear>,
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
    <actuallyadditions:block_phantomface>,
    <actuallyadditions:block_misc:8>,
    <actuallyadditions:block_xp_solidifier>,
]
as IItemStack[];
for item in removerecipes {
    recipes.remove(item);
}

########### Canola Oil Stuff #############
recipes.addShaped(<actuallyadditions:block_fermenting_barrel>, [[<ore:plankTreatedWood>, <actuallyadditions:item_crystal:5>, <ore:plankTreatedWood>],[<ore:plankTreatedWood>, <actuallyadditions:item_misc:13>, <ore:plankTreatedWood>], [<ore:plankTreatedWood>, <actuallyadditions:block_misc:4>, <ore:plankTreatedWood>]]);
recipes.addShaped(<actuallyadditions:block_canola_press>, [[<ore:cobblestone>, <actuallyadditions:item_crystal:5>, <ore:cobblestone>],[<ore:cobblestone>, <actuallyadditions:item_misc:13>, <ore:cobblestone>], [<ore:cobblestone>, <actuallyadditions:item_misc:7>, <ore:cobblestone>]]);

/*
=======================================================
LAB OVEN
=======================================================
**Note 1: the solute must be always used. Solvent and the Solution cannot be null
**Note 2: the catalyst must be a damageable item (any item with a durability).
//display name: alternative name for the recipe selector. Can be null if not necessary
//solute stack: the main ingredient (required)
//catalyst: the damageable ingredient (optional)
//solvent fluid: the main solvent and its quantity
//reagent fluid: the secondary solvent and its quantity (optional)
//solution fluid: the output fluid and its quantity
//byproduct: the secondary output and its quantity (optional)

mods.rockhounding_chemistry.LabOven.add(null, <minecraft:slime_ball>, null, <liquid:water>*500, null, <liquid:sulfuric_acid>*500, <liquid:silicone>*100);
mods.rockhounding_chemistry.LabOven.add("Silicone Plus", <minecraft:slime_ball>, null, <liquid:water>*500, null, <liquid:sulfuric_acid>*500, <liquid:silicone>*100);
mods.rockhounding_chemistry.LabOven.add("Silicone Mega", "slimeball", <rockhounding_chemistry:co_catalyst>, <liquid:water>*1000, null, <liquid:sulfuric_acid>*500, <liquid:silicone>*400);
*/

//Crystalized Oil
mods.rockhounding_chemistry.LabOven.add(null, <actuallyadditions:item_misc:23>, <rockhounding_chemistry:wg_catalyst>, <liquid:refinedcanolaoil>*1000, null, <liquid:crystaloil>*500, <liquid:seed_oil>*100);

//Empowered Oil
mods.rockhounding_chemistry.LabOven.add(null, <actuallyadditions:item_misc:24>, <rockhounding_chemistry:pt_catalyst>, <liquid:crystaloil>*1000, null, <liquid:empoweredoil>*500, <liquid:seed_oil>*100);

//Crystalized Oil Plus
mods.rockhounding_chemistry.LabOven.add("Crystalized Oil Plus", <actuallyadditions:item_misc:23>, <rockhounding_chemistry:wg_catalyst>, <liquid:refinedcanolaoil>*1000, <liquid:napalm>*500, <liquid:crystaloil>*2000, <liquid:seed_oil>*100);

//Empowered Oil Plus
mods.rockhounding_chemistry.LabOven.add("Empowered Oil Plus", <actuallyadditions:item_misc:24>, <rockhounding_chemistry:pt_catalyst>, <liquid:crystaloil>*1000, <liquid:refined_biofuel>*500, <liquid:empoweredoil>*2000, <liquid:seed_oil>*100);


########### Recipe Additions #############

//Small -> Med crate recipe
//recipes.addShaped(<actuallyadditions:block_giant_chest_medium>, [[<immersiveengineering:treated_wood>, <actuallyadditions:block_crystal:3>, <immersiveengineering:treated_wood>],[<actuallyadditions:block_giant_chest>, <actuallyadditions:block_misc:4>, <actuallyadditions:block_giant_chest>], [<immersiveengineering:treated_wood>, <actuallyadditions:block_crystal:3>, <immersiveengineering:treated_wood>]]);

// Advanced Coils
recipes.addShaped(<actuallyadditions:item_misc:8>, [[null, <techreborn:cable:6>, <immersiveengineering:material>],[<techreborn:cable:6>, <actuallyadditions:item_misc:7>, <techreborn:cable:6>], [<immersiveengineering:material>, <techreborn:cable:6>, null]]);
// assemblingMachine.addRecipe(<actuallyadditions:item_misc:8>, <actuallyadditions:item_misc:7>, <techreborn:cable:6>*4, 100, 32);

// Basic Coils
recipes.addShaped(<actuallyadditions:item_misc:7>, [[null, <immersiveengineering:wirecoil>, <immersiveengineering:material>],[<immersiveengineering:wirecoil>, <actuallyadditions:item_crystal>, <immersiveengineering:wirecoil>], [<immersiveengineering:material>, <immersiveengineering:wirecoil>, null]]);
recipes.addShaped(<actuallyadditions:item_misc:7>*2, [[null, <immersiveengineering:wirecoil:1>, <immersiveengineering:material>],[<immersiveengineering:wirecoil:1>, <actuallyadditions:item_crystal>, <immersiveengineering:wirecoil:1>], [<immersiveengineering:material>, <immersiveengineering:wirecoil:1>, null]]);
recipes.addShaped(<actuallyadditions:item_misc:7> * 4, [[null, <immersiveengineering:wirecoil:2>, <immersiveengineering:material>],[<immersiveengineering:wirecoil:2>, <actuallyadditions:item_crystal>, <immersiveengineering:wirecoil:2>], [<immersiveengineering:material>, <immersiveengineering:wirecoil:2>, null]]);
/*
assemblingMachine.addRecipe(<actuallyadditions:item_misc:7>*4, <immersiveengineering:wirecoil:2>*4, <actuallyadditions:item_crystal>, 100, 32);
assemblingMachine.addRecipe(<actuallyadditions:item_misc:7>*2, <immersiveengineering:wirecoil:1>*4, <actuallyadditions:item_crystal>, 100, 32);
assemblingMachine.addRecipe(<actuallyadditions:item_misc:7>, <immersiveengineering:wirecoil>*4, <actuallyadditions:item_crystal>, 100, 32);
*/

// Atomic Reconstructor
recipes.addShapedMirrored(<actuallyadditions:block_atomic_reconstructor>, [[<thermalfoundation:material:354>, <thermalfoundation:material:291>, <thermalfoundation:material:354>],[<arcanearchives:shaped_quartz>, <actuallyadditions:block_misc:9>, <minecraft:redstone_block>], [<thermalfoundation:material:354>, <thermalfoundation:material:291>, <thermalfoundation:material:354>]]);

// Empowerer
recipes.addShaped(<actuallyadditions:block_empowerer>, [[null, <actuallyadditions:item_crystal>, null],[null, <actuallyadditions:item_battery_double>, null], [<contenttweaker:plate_engineering>, <actuallyadditions:block_display_stand>, <contenttweaker:plate_engineering>]]);

// Ender Casing
recipes.addShaped(<actuallyadditions:block_misc:8>, [[<actuallyadditions:item_misc:5>, <actuallyadditions:item_crystal_empowered:3>, <actuallyadditions:item_misc:5>],[<actuallyadditions:item_crystal_empowered:3>, <actuallyadditions:block_misc:6>, <actuallyadditions:item_crystal_empowered:3>], [<actuallyadditions:item_misc:5>, <actuallyadditions:item_crystal_empowered:3>, <actuallyadditions:item_misc:5>]]);

#################################   RECONSTRUCTOR   #####################
// Dragon Eggs
AtomicReconstructor.addRecipe(<iceandfire:dragonegg_red>, <iceandfire:dragonegg_blue>, 250000);
AtomicReconstructor.addRecipe(<iceandfire:dragonegg_blue>, <iceandfire:dragonegg_green>, 250000);

AtomicReconstructor.addRecipe(<iceandfire:dragonegg_green>, <iceandfire:dragonegg_sapphire>, 250000);
AtomicReconstructor.addRecipe(<iceandfire:dragonegg_sapphire>, <iceandfire:dragonegg_bronze>, 250000);

AtomicReconstructor.addRecipe(<iceandfire:dragonegg_bronze>, <iceandfire:dragonegg_silver>, 250000);
AtomicReconstructor.addRecipe(<iceandfire:dragonegg_silver>, <iceandfire:dragonegg_gray>, 250000);

AtomicReconstructor.addRecipe(<iceandfire:dragonegg_gray>, <iceandfire:dragonegg_white>, 250000);
AtomicReconstructor.addRecipe(<iceandfire:dragonegg_white>, <iceandfire:dragonegg_red>, 250000);

AtomicReconstructor.addRecipe(<iceandfire:dragonforge_ice_brick>, <iceandfire:dragonforge_fire_brick>, 30000);
AtomicReconstructor.addRecipe(<iceandfire:dragonforge_fire_brick>, <iceandfire:dragonforge_ice_brick>, 30000);

AtomicReconstructor.addRecipe(<iceandfire:dragonforge_ice_core_disabled>, <iceandfire:dragonforge_fire_core_disabled>, 250000);
AtomicReconstructor.addRecipe(<iceandfire:dragonforge_fire_core_disabled>, <iceandfire:dragonforge_ice_core_disabled>, 250000);

AtomicReconstructor.addRecipe(<iceandfire:ice_dragon_blood>, <iceandfire:fire_dragon_blood>, 20000);
AtomicReconstructor.addRecipe(<iceandfire:fire_dragon_blood>, <iceandfire:ice_dragon_blood>, 20000);

// Voidstone Processing
mods.actuallyadditions.AtomicReconstructor.addRecipe(<chisel:energizedvoidstone>, <chisel:voidstone>, 5000);

#################################   EMPOWERER   #####################
//mods.actuallyadditions.Empowerer.addRecipe(IItemStack output, IItemStack input, IItemStack modifier1, IItemStack modifier2, IItemStack modifier3, IItemStack modifier4, int energyPerStand, int time, float[] particleColourArray);

// Emeradic
//Empowerer.addRecipe(<actuallyadditions:item_crystal_empowered:4>, <actuallyadditions:item_crystal:4>, <mekanism:glowplasticblock:10>, <enderio:item_material:15>, <thermalfoundation:fertilizer:2>, <contenttweaker:ingot_xp>, 50000, 200, [0.1, 1, 0.1]);
Empowerer.addRecipe(<actuallyadditions:block_crystal_empowered:4>, <actuallyadditions:block_crystal:4>, <mekanism:glowplasticblock:10>, <enderio:item_material:15>, <thermalfoundation:fertilizer:2>, <contenttweaker:block_xp>, 100000, 400, [0.1, 1, 0.1]);

//CombinationCrafting.addRecipe(<actuallyadditions:item_crystal_empowered:4>, 200000, <actuallyadditions:item_crystal:4>, [<mekanism:glowplasticblock:10>, <enderio:item_material:15>, <thermalfoundation:fertilizer:2>, <contenttweaker:ingot_xp>]);
CombinationCrafting.addRecipe(<actuallyadditions:block_crystal_empowered:4>, 400000, <actuallyadditions:block_crystal:4>, 
[<mekanism:glowplasticblock:10>, <enderio:item_material:15>, <thermalfoundation:fertilizer:2>, <contenttweaker:block_xp>]);

// Restonia <actuallyadditions:item_crystal>
//Empowerer.addRecipe(<actuallyadditions:item_crystal_empowered>, <actuallyadditions:item_crystal>, <thermalfoundation:bait:2>, <mekanism:enrichedalloy>, <minecraft:tnt>, <techreborn:ingot:20>, 50000, 200, [0.9, 0.1, 0.2]);
Empowerer.addRecipe(<actuallyadditions:block_crystal_empowered>, <actuallyadditions:block_crystal>, <thermalfoundation:bait:2>, <mekanism:enrichedalloy>, <minecraft:tnt>, <techreborn:ingot:16>, 100000, 400, [0.9, 0.1, 0.2]);

//CombinationCrafting.addRecipe(<actuallyadditions:item_crystal_empowered>, 200000, <actuallyadditions:item_crystal>, [<thermalfoundation:bait:2>, <mekanism:enrichedalloy>, <minecraft:tnt>, <techreborn:ingot:16>]);
CombinationCrafting.addRecipe(<actuallyadditions:block_crystal_empowered>, 400000, <actuallyadditions:block_crystal>, 
[<thermalfoundation:bait:2>, <mekanism:enrichedalloy>, <minecraft:tnt>, <techreborn:ingot:16>]);

AtomicReconstructor.removeRecipe(<moreplates:restonia_plate>);

// Enori
//Empowerer.addRecipe(<actuallyadditions:item_crystal_empowered:5>, <actuallyadditions:item_crystal:5>, <ore:dustSalt>, <botania:petal>, <jaopca:item_shardtitanium>, <advgenerators:controller>, 50000, 200, [0.9, 0.8, 1]);
Empowerer.addRecipe(<actuallyadditions:block_crystal_empowered:5>, <actuallyadditions:block_crystal:5>, <ore:blockSalt>, <botania:petalblock>, <contenttweaker:clump_titanium>, <advgenerators:controller>, 100000, 400, [0.9, 0.8, 1]);
AtomicReconstructor.removeRecipe(<moreplates:enori_plate>);

//CombinationCrafting.addRecipe(<actuallyadditions:item_crystal_empowered:5>, 200000, <actuallyadditions:item_crystal:5>, [<ore:dustSalt>, <botania:petal>, <jaopca:item_shardtitanium>, <advgenerators:controller>]);
CombinationCrafting.addRecipe(<actuallyadditions:block_crystal_empowered:5>, 400000, <actuallyadditions:block_crystal:5>, 
[<ore:blockSalt>, <botania:petalblock>, <contenttweaker:clump_titanium>, <advgenerators:controller>]);

// Diamatine
//Empowerer.addRecipe(<actuallyadditions:item_crystal_empowered:2>, <actuallyadditions:item_crystal:2>, <tombstone:impregnated_diamond>, <moreplates:elementium_gear>, <appliedenergistics2:material:12>, <bloodmagic:slate:2>, 50000, 200, [0.2, 0.9, 0.9]);
Empowerer.addRecipe(<actuallyadditions:block_crystal_empowered:2>, <actuallyadditions:block_crystal:2>, <tombstone:impregnated_diamond>, <moreplates:elementium_gear>, <appliedenergistics2:material:12>, <bloodmagic:slate:2>, 100000, 400, [0.2, 0.9, 0.9]);

//CombinationCrafting.addRecipe(<actuallyadditions:item_crystal_empowered:2>, 200000, <actuallyadditions:item_crystal:2>, [<tombstone:impregnated_diamond>, <moreplates:elementium_gear>, <appliedenergistics2:material:12>, <bloodmagic:slate:2>]);
CombinationCrafting.addRecipe(<actuallyadditions:block_crystal_empowered:2>, 400000, <actuallyadditions:block_crystal:2>, 
[<tombstone:impregnated_diamond>, <moreplates:elementium_gear>, <appliedenergistics2:material:12>, <bloodmagic:slate:2>]);

// Void
//Empowerer.addRecipe(<actuallyadditions:item_crystal_empowered:3>, <actuallyadditions:item_crystal:3>, <enderio:item_material:20>, <chisel:energizedvoidstone:4>, <thaumcraft:plate:2>, <thaumcraft:nugget:7>, 50000, 200, [0.2, 0.1, 0.5]); // 0.5, 0.3, 1 white core purple beam. like this one
Empowerer.addRecipe(<actuallyadditions:block_crystal_empowered:3>, <actuallyadditions:block_crystal:3>, <enderio:block_infinity>, <chisel:energizedvoidstone:4>, <thaumcraft:plate:2>, <thaumcraft:ingot:1>, 100000, 400, [0.2, 0.1, 0.5]);

//CombinationCrafting.addRecipe(<actuallyadditions:item_crystal_empowered:3>, 200000, <actuallyadditions:item_crystal:3>, [<enderio:item_material:20>, <chisel:energizedvoidstone:4>, <thaumcraft:plate:2>, <thaumcraft:nugget:7>]);
CombinationCrafting.addRecipe(<actuallyadditions:block_crystal_empowered:3>, 400000, <actuallyadditions:block_crystal:3>, 
[<enderio:block_infinity>, <chisel:energizedvoidstone:4>, <thaumcraft:plate:2>, <thaumcraft:ingot:1>]);

AtomicReconstructor.removeRecipe(<thaumcraft:plate:3>);

// Palis
//Empowerer.addRecipe(<actuallyadditions:item_crystal_empowered:1>, <actuallyadditions:item_crystal:1>, <moreplates:cobalt_gear>, <jaopca:item_stickmanasteel>, <astralsorcery:itemcraftingcomponent:4>, <thaumcraft:fabric>, 50000, 200, [0.1, 0.2, 1]);
Empowerer.addRecipe(<actuallyadditions:block_crystal_empowered:1>, <actuallyadditions:block_crystal:1>, <moreplates:cobalt_gear>, <jaopca:item_stickmanasteel>, <astralsorcery:itemcraftingcomponent:4>, <thaumcraft:fabric>, 100000, 400, [0.1, 0.2, 1]);

//CombinationCrafting.addRecipe(<actuallyadditions:item_crystal_empowered:1>, 200000, <actuallyadditions:item_crystal:1>, [<moreplates:cobalt_gear>, <jaopca:item_stickmanasteel>, <astralsorcery:itemcraftingcomponent:4>, <thaumcraft:fabric>]);
CombinationCrafting.addRecipe(<actuallyadditions:block_crystal_empowered:1>, 400000, <actuallyadditions:block_crystal:1>, 
[<moreplates:cobalt_gear>, <jaopca:item_stickmanasteel>, <astralsorcery:itemcraftingcomponent:4>, <thaumcraft:fabric>]);

// Canola Seeds
CombinationCrafting.addRecipe(<actuallyadditions:item_misc:24>, 40000, <actuallyadditions:item_misc:23>, 
[<actuallyadditions:item_canola_seed>, <actuallyadditions:item_canola_seed>, <actuallyadditions:item_canola_seed>, <actuallyadditions:item_canola_seed>]);


########### More Recipe Additions #############

//Lava Factory
recipes.addShaped(<actuallyadditions:block_lava_factory_controller>, [[<actuallyadditions:item_misc:7>, <actuallyadditions:block_misc:9>, <actuallyadditions:item_misc:7>],[<actuallyadditions:block_crystal:5>, <embers:superheater>, <actuallyadditions:block_crystal:5>], [<minecraft:lava_bucket>, <minecraft:lava_bucket>, <minecraft:lava_bucket>]]);

// Casing
recipes.addShaped(<actuallyadditions:block_misc:7> * 4, [[<actuallyadditions:block_crystal:5>, <actuallyadditions:block_misc:9>, <actuallyadditions:block_crystal:5>]]);
// Farmer
recipes.addShaped(<actuallyadditions:block_farmer>, [[<actuallyadditions:item_misc:7>, <thermalfoundation:material:288>, <actuallyadditions:item_misc:7>],[<thermalfoundation:material:288>, <actuallyadditions:block_misc:7>, <thermalfoundation:material:288>], [<actuallyadditions:item_misc:7>, <thermalfoundation:material:288>, <actuallyadditions:item_misc:7>]]);

// Drill Core
recipes.addShaped(<actuallyadditions:item_misc:16>, [[<thermalfoundation:storage_alloy>, <actuallyadditions:item_misc:7>, <thermalfoundation:storage_alloy>],[<actuallyadditions:item_misc:7>, <actuallyadditions:item_crystal>, <actuallyadditions:item_misc:7>], [<thermalfoundation:storage_alloy>, <actuallyadditions:item_misc:7>, <thermalfoundation:storage_alloy>]]);

// Leaf Gen
recipes.addShaped(<actuallyadditions:block_leaf_generator>, [[<actuallyadditions:item_crystal:5>, <actuallyadditions:block_misc:9>, <actuallyadditions:item_crystal:5>],[<actuallyadditions:item_crystal>, <ore:treeLeaves>, <actuallyadditions:item_crystal>], [<actuallyadditions:item_crystal:5>, <actuallyadditions:item_misc:7>, <actuallyadditions:item_crystal:5>]]);

// Dropper
recipes.addShaped(<actuallyadditions:block_dropper>, [[<ore:cobblestone>, <actuallyadditions:item_crystal:1>, <ore:cobblestone>],[<ore:cobblestone>, <minecraft:dropper>, <actuallyadditions:item_misc:7>], [<ore:cobblestone>, <actuallyadditions:item_crystal:1>, <ore:cobblestone>]]);

// Travel Sack
recipes.addShaped(<actuallyadditions:item_bag>, [[<mysticalagriculture:crafting:23>, <minecraft:leather>, <mysticalagriculture:crafting:23>],[<mysticalagriculture:crafting:23>, <actuallyadditions:block_crystal:3>, <mysticalagriculture:crafting:23>], [<minecraft:leather>, <tconstruct:tough_tool_rod>.withTag({Material: "treatedwood"}), <minecraft:leather>]]);

// XP Solidifer
recipes.addShaped(<actuallyadditions:block_xp_solidifier>, [[<actuallyadditions:item_solidified_experience>, <actuallyadditions:item_solidified_experience>, <actuallyadditions:item_solidified_experience>],[<actuallyadditions:block_crystal:2>, <actuallyadditions:item_misc:8>, <actuallyadditions:block_crystal:2>], [<actuallyadditions:item_solidified_experience>, <actuallyadditions:item_solidified_experience>, <actuallyadditions:item_solidified_experience>]]);

// Moved Paper cups

<ore:foodCookedFish>.add(<minecraft:cooked_fish>);
<ore:foodCookedFish>.add(<minecraft:cooked_fish:1>);
<ore:foodCookedFish>.add(<fossil:sturgeon_cooked>);
<ore:foodCookedFish>.add(<fossil:alligator_gar_cooked>);
<ore:foodCookedFish>.add(<fossil:coelacanth_cooked>);


<ore:paperCup>.add(<actuallyadditions:item_misc>);
<ore:paperCup>.add(<xlfoodmod:paper_cup>);

recipes.addShaped(<actuallyadditions:item_food:4>, [[<actuallyadditions:item_food:5>, <actuallyadditions:item_food:5>, <actuallyadditions:item_food:5>], [null, <ore:paperCup>, null]]);
recipes.addShaped(<actuallyadditions:item_food:3>, [[<actuallyadditions:item_food:5>, <ore:foodCookedFish>, <actuallyadditions:item_food:5>], [null, <ore:paperCup>, null]]);

// Phantom Face
recipes.addShaped(<actuallyadditions:block_phantomface>, [[null, <ore:chestWood>, null],[<actuallyadditions:item_crystal:2>, <actuallyadditions:block_misc:6>, <actuallyadditions:item_crystal:2>], [null, <actuallyadditions:item_misc:8>, null]]);

# [Laser Wrench] from [Basic Coil][+1]
craft.remake(<actuallyadditions:item_laser_wrench>, ["pretty",
  "    B",
  "  *  ",
  "*    "], {
  "B": <actuallyadditions:item_misc:7>,    # Basic Coil
  "*": <actuallyadditions:item_crystal:5>, # Enori Crystal
});

##########################################################################################
print("==================== end of actuallyadditions.zs ====================");

