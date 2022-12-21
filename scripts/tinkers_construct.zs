 	##########################################################################################
#modloaded tconstruct

import mods.tconstruct.Alloy;
import mods.tconstruct.Casting;
import mods.tconstruct.Drying;
import mods.tconstruct.Melting;
import mods.tcomplement.highoven.HighOven;
import mods.tcomplement.highoven.MixRecipeBuilder;
import mods.tcomplement.highoven.MixRecipeManager;
import crafttweaker.item.IItemStack;
import crafttweaker.liquid.ILiquidStack;
import crafttweaker.data.IData;
import mods.immersiveengineering.MetalPress;
import mods.rockhounding_chemistry.LabBlender;
import mods.immersiveengineering.ArcFurnace;
import mods.chisel.Carving;

#priority 100

print("==================== loading tinkersconstruct.zs ====================");
##########################################################################################

val itemstoRemove =
[
	<tinker_io:smart_output>,
	<tcomplement:melter>,
	<tcomplement:alloy_tank>,
	<tconstruct:materials:14>,
	<tcomplement:high_oven_controller>,
]
 as IItemStack[];

for item in itemstoRemove {
	recipes.remove(item);
}

val itemstoRemoveandHide =
[
	<tconstruct:toolforge>.withTag({textureBlock: {id: "enderio:block_alloy", Count: 1 as byte, Damage: 0 as short}}),
	<tconstruct:smeltery_controller>,
	<tcomplement:alloy_tank>,
	<tinker_io:upg:6>,
	<tinker_io:cd_lonesome_avenue>,
]
 as IItemStack[];

for item in itemstoRemoveandHide {
	mods.jei.JEI.removeAndHide(item);
}
 


val smelteryHeart = <ore:smelteryHeart>;
smelteryHeart.add(<tconstruct:seared_tank>);
smelteryHeart.add(<tconstruct:seared_tank:1>);
smelteryHeart.add(<tconstruct:seared_tank:2>);

### New Melter Fuels ###

	// Pyrotheum
	<liquid:pyrotheum>.definition.temperature = 5300;
	mods.tconstruct.Fuel.registerFuel(<liquid:pyrotheum> * 25, 400);

	// Embers
	<liquid:moltenembers>.definition.temperature = 6300;
	mods.tconstruct.Fuel.registerFuel(<liquid:moltenembers> * 50, 50);
	
	// Starlight
	/*<liquid:astralsorcery.liquidstarlight>.definition.temperature = 4300;
	mods.tconstruct.Fuel.registerFuel(<liquid:astralsorcery.liquidstarlight> * 50, 200);*/


### CRAFTING RECIPES ###

// High Oven Controller
recipes.addShaped(<tcomplement:high_oven_controller>, [[<tcomplement:materials:1>, <contenttweaker:noon_ingot>, <tcomplement:materials:1>],[<contenttweaker:noon_ingot>, <thaumcraft:alumentum>, <contenttweaker:noon_ingot>], [<tcomplement:materials:1>, <contenttweaker:noon_ingot>, <tcomplement:materials:1>]]);

// Melter
recipes.addShaped(<tcomplement:melter>, [[<tconstruct:materials>, <tconstruct:materials>, <tconstruct:materials>],[<tconstruct:materials>, null, <tconstruct:materials>], [<tconstruct:materials>, <tconstruct:materials>, <tconstruct:materials>]]);

// Smart IO
recipes.addShaped(<tinker_io:smart_output>, [[<tconstruct:materials>, <arcanearchives:shaped_quartz>, <tconstruct:materials>],[<arcanearchives:shaped_quartz>, <tconstruct:casting>, <arcanearchives:shaped_quartz>], [<tconstruct:materials>, <arcanearchives:shaped_quartz>, <tconstruct:materials>]]);

// Reinforcement Modifier
MetalPress.addRecipe(<tconstruct:materials:14>, <immersiveengineering:metal_decoration0:5>, <immersiveengineering:mold>, 2000);

//Limestone Flux
mods.bloodmagic.AlchemyTable.addRecipe(<contenttweaker:limestone_flux>*3, [<ore:limestoneforFlux>, <bloodmagic:cutting_fluid:1>], 200,200,1);

// Scorched Brick
LabBlender.add([<rockhounding_chemistry:chemical_items:20>*4, <actuallyadditions:item_crystal:3>, <embers:dust_ember>, <thaumcraft:stone_arcane_brick>*2], <tcomplement:materials:1>*8);

//New verison of RH seems to only accept ore dicts
//LabBlender.add([<rockhounding_chemistry:chemical_items:20>, <actuallyadditions:item_crystal:3>, <embers:dust_ember>, <thaumcraft:stone_arcane_brick>], [4, 1, 1, 2], <tcomplement:materials:1>*8);

# [Slot Upgrade I] from [Base Upgrade][+2]
craft.remake(<tinker_io:upg:1>, ["pretty",
  "□ R □",
  "R B R",
  "□ R □"], {
  "□": <ore:plateBronze>,						# Bronze Plate
  "R": <arcanearchives:radiant_chest>,         # Radiant Chest
  "B": <tinker_io:upg>,                        # Base Upgrade
});

# [Slot Upgrade II] from [Slot Upgrade I][+2]
craft.remake(<tinker_io:upg:2>, ["pretty",
  "□ * □",
  "* S *",
  "□ * □"], {
  "□": <ore:plateInvar>,						 # Invar Plate
  "*": <embers:crystal_ember>,                # Ember Crystal
  "S": <tinker_io:upg:1>,                     # Slot Upgrade I
});

# [Slot Upgrade III] from [Slot Upgrade II][+2]
craft.remake(<tinker_io:upg:3>, ["pretty",
  "□ I □",
  "I S I",
  "□ I □"], {
  "□": <ore:plateElectrum>,						 # Electrum Plate
  "I": <astralsorcery:itemusabledust>,           # Illumination Powder
  "S": <tinker_io:upg:2>,                        # Slot Upgrade II
});

# [Slot Upgrade IV] from [Slot Upgrade III][+2]
craft.remake(<tinker_io:upg:4>, ["pretty",
  "□ ■ □",
  "■ S ■",
  "□ ■ □"], {
  "□": <ore:plateDiamatine>, # Diamatine Plate
  "■": <ore:blockGlassHardened> | <ore:blockGlassHardenedWhite> | <ore:fusedQuartz>, # Fused Quartz
  "S": <tinker_io:upg:3>,    # Slot Upgrade III
});

# [Basin Upgrade] from [Base Upgrade][+3]
craft.remake(<tinker_io:upg:7>, ["pretty",
  "o C o",
  "C B C",
  "o ■ o"], {
  "o": <ore:obsidian>,         # Obsidian
  "C": <tconstruct:casting:1>, # Casting Basin
  "B": <tinker_io:upg>,        # Base Upgrade
  "■": <ore:blockEmerald>,     # Block of Emerald
});


### MELTING ###

// Removals //
Melting.removeRecipe(<liquid:fossil_tar>, <minecraft:coal>);
Melting.removeRecipe(<liquid:dark_steel>, <enderio:item_dark_steel_sword>);

val moltentoremove = [
<liquid:melodic_alloy>,
<liquid:crystalline_alloy>,
<liquid:enderium>,
<liquid:lumium>,
<liquid:signalum>,
<liquid:platinum>,
<liquid:lead_platinum>,
<liquid:iridium>,
<liquid:refinedobsidian>,
<liquid:refinedglowstone>,
<liquid:osgloglas>,
<liquid:osmiridium>,
<liquid:terrasteel>,
<liquid:elementium>,
<liquid:titanium>,
<liquid:osmium>,
<liquid:mirion>,
<liquid:crystalline_pink_slime>,
<liquid:stellar_alloy>,
] as ILiquidStack[];

for moltenfluid in moltentoremove {
	Melting.removeRecipe(moltenfluid);
}

// Additions //
Melting.addRecipe(<liquid:inert_metal> * 144,<contenttweaker:inert_ingot>);
Melting.addRecipe(<liquid:inert_metal> * 1296,<contenttweaker:sub_block_holder_0:2>);
Melting.addRecipe(<liquid:ender> * 1000, <actuallyadditions:block_misc:6>, 500);
Melting.addRecipe(<liquid:tough> * 1296, <contenttweaker:sub_block_holder_0:6>);
Melting.addRecipe(<liquid:quartz> * 666, <minecraft:quartz>);
Melting.addRecipe(<liquid:quartz> * 2664, <minecraft:quartz_block>);
Melting.addRecipe(<liquid:stone> * 648, <additionalcompression:cobblestone_compressed>);

Melting.addRecipe(<liquid:dawnstone> * 1296, <embers:block_dawnstone>);
Melting.addRecipe(<liquid:dawnstone> * 576, <embers:gear_dawnstone>);
Melting.addRecipe(<liquid:dawnstone> * 144, <embers:plate_dawnstone>);
Melting.addRecipe(<liquid:dawnstone> * 144, <embers:ingot_dawnstone>);
Melting.addRecipe(<liquid:dawnstone> * 16, <embers:nugget_dawnstone>);

Melting.addRecipe(<liquid:starmetal> * 1296, <contenttweaker:starmetal_block>);

## Blank Cast Resmelting
Melting.addRecipe(<liquid:alubrass> * 144, <ore:cast>);

Melting.addRecipe(<liquid:orichalcum> * 1296, <contenttweaker:sub_block_holder_0>);
Melting.addRecipe(<liquid:adamantine> * 1296, <contenttweaker:sub_block_holder_0:1>);

// Melting recipes for all 3 custom metals
// Format is fluid:[nugget,dust,ingot,plate,gear,block,ore]
val materialMelting as IItemStack[][ILiquidStack] = {
	<liquid:palladium>:[<contenttweaker:material_part:33>, <contenttweaker:material_part:35>, <contenttweaker:material_part:30>, <contenttweaker:material_part:32>, <contenttweaker:material_part:31>, <contenttweaker:sub_block_holder_0:4>, <contenttweaker:sub_block_holder_0:3>],
	<liquid:orichalcum>:[<contenttweaker:material_part:23>, <contenttweaker:material_part:25>, <contenttweaker:material_part:20>, <contenttweaker:material_part:22>, <contenttweaker:material_part:21>, <contenttweaker:sub_block_holder_0>, <contenttweaker:sub_block_holder_0:7>],
	<liquid:adamantine>:[<contenttweaker:material_part:13>, <contenttweaker:material_part:15>, <contenttweaker:material_part:10>, <contenttweaker:material_part:12>, <contenttweaker:material_part:11>, <contenttweaker:sub_block_holder_0:1>, <contenttweaker:sub_block_holder_0:8>],
} as IItemStack[][ILiquidStack];

for fluid, items in materialMelting {
	Melting.addRecipe(fluid * 16, items[0]);
	Melting.addRecipe(fluid * 144, items[1]);
	Melting.addRecipe(fluid * 144, items[2]);
	Melting.addRecipe(fluid * 144, items[3]);
	Melting.addRecipe(fluid * 576, items[4]);
	Melting.addRecipe(fluid * 1296, items[5]);
	Melting.addRecipe(fluid * 144, items[6]);
	HighOven.addMeltingOverride(fluid * 288, items[6]);
}

### ALLOYING ###

/*
// Remove Alloys //
Alloy.removeRecipe(<liquid:steel>, [<liquid:iron>, <liquid:coal>]);
Alloy.removeRecipe(<liquid:vibrant_alloy>);
Alloy.removeRecipe(<liquid:energetic_alloy>);
Alloy.removeRecipe(<liquid:pulsating_iron>);
Alloy.removeRecipe(<liquid:enderium>);
Alloy.removeRecipe(<liquid:vivid_alloy>);
Alloy.removeRecipe(<liquid:energetic_silver>);
Alloy.removeRecipe(<liquid:pigiron>);
Alloy.removeRecipe(<liquid:knightslime>);
Alloy.removeRecipe(<liquid:bloodbronze>);
Alloy.removeRecipe(<liquid:dark_steel>);
Alloy.removeRecipe(<liquid:signalum>);
Alloy.removeRecipe(<liquid:lumium>);
Alloy.removeRecipe(<liquid:hard_carbon>);
Alloy.removeRecipe(<liquid:conductive_iron>);
Alloy.removeRecipe(<liquid:unsweetened_chocolate>);
Alloy.removeRecipe(<liquid:dark_chocolate>);
Alloy.removeRecipe(<liquid:milk_chocolate>);
Alloy.removeRecipe(<liquid:hydrated_gelatin>);
Alloy.removeRecipe(<liquid:marshmallow>);
Alloy.removeRecipe(<liquid:clay>);
Alloy.removeRecipe(<liquid:tough>);
Alloy.removeRecipe(<liquid:manyullyn>);

Alloy.removeRecipe(<liquid:osmiridium>);
Alloy.removeRecipe(<liquid:mirion>);
Alloy.removeRecipe(<liquid:osgloglas>);

// Inert Metal //
Alloy.addRecipe(<liquid:inert_metal> * 72, [<liquid:silver> * 72, <liquid:lead> * 36]);
*/

### CASTING ###

// Removals //
Casting.removeTableRecipe(<tcomplement:materials:1>);
Casting.removeTableRecipe(<enderio:item_material:11>);
Casting.removeTableRecipe(<enderio:item_material:12>);
Casting.removeTableRecipe(<enderio:item_material:13>);
Casting.removeTableRecipe(<enderio:item_material:73>);
Casting.removeTableRecipe(<enderio:item_material:15>);
Casting.removeBasinRecipe(<tcomplement:scorched_block>);
Casting.removeBasinRecipe(<tcomplement:scorched_block:1>);
Casting.removeBasinRecipe(<tcomplement:scorched_block:10>);
Casting.removeBasinRecipe(<tcomplement:scorched_slab2:2>);

// Additions //
// Tough Alloy Block
Casting.addBasinRecipe(<contenttweaker:sub_block_holder_0:6>, null, <liquid:tough>, 1296);

// Fused Quartz
Casting.addBasinRecipe(<enderio:block_fused_quartz>, null, <liquid:quartz>, 2664, false, 100);

// Tool Forge
Casting.addBasinRecipe(<tconstruct:toolforge>.withTag({textureBlock: {id: "tconstruct:metal", Count: 1 as byte, Damage: 4 as short}}), <tconstruct:tooltables:3>, <liquid:pigiron>, 5184, true, 400);

// Armour Forge
Casting.addBasinRecipe(<conarm:armorforge>.withTag({textureBlock: {id: "tconstruct:metal", Count: 1 as byte, Damage: 3 as short}}), <tconstruct:tooltables:3>, <liquid:knightslime>, 5184, true, 400);

// Inert Ingot
Casting.addTableRecipe(<contenttweaker:inert_ingot>, <tconstruct:cast_custom>, <liquid:inert_metal>, 144, false, 50);
Casting.addBasinRecipe(<contenttweaker:sub_block_holder_0:2>, null, <liquid:inert_metal>, 1296);

// Ender Shard
Casting.addTableRecipe(<enderio:item_material:62>, <tconstruct:cast_custom>, <liquid:ender>, 50, false, 50);

// Dawnstone
Casting.addBasinRecipe(<embers:block_dawnstone>, null, <liquid:dawnstone>, 1296);
Casting.addTableRecipe(<embers:gear_dawnstone>, <tconstruct:cast_custom:4>, <liquid:dawnstone>, 576, false, 250);
Casting.addTableRecipe(<embers:plate_dawnstone>, <tconstruct:cast_custom:3>, <liquid:dawnstone>, 144, false, 100);
Casting.addTableRecipe(<embers:ingot_dawnstone>, <tconstruct:cast_custom>, <liquid:dawnstone>, 144, false, 100);

//Starmetal Block
Casting.addBasinRecipe(<contenttweaker:starmetal_block>, null, <liquid:starmetal>, 1296);

// Orichalcum
	Casting.addTableRecipe(<contenttweaker:material_part:20>,<tconstruct:cast_custom>, <liquid:orichalcum>, 144, false, 50);
	Casting.addTableRecipe(<contenttweaker:material_part:21>,<tconstruct:cast_custom:4>, <liquid:orichalcum>, 576, false, 200);
	Casting.addTableRecipe(<contenttweaker:material_part:22>,<tconstruct:cast_custom:3>, <liquid:orichalcum>, 144, false, 50);

Casting.addBasinRecipe(<contenttweaker:sub_block_holder_0>, null, <liquid:orichalcum>, 1296);

// Palladium
	Casting.addTableRecipe(<contenttweaker:material_part:30>,<tconstruct:cast_custom>, <liquid:palladium>, 144, false, 50);
	Casting.addTableRecipe(<contenttweaker:material_part:31>,<tconstruct:cast_custom:4>, <liquid:palladium>, 576, false, 200);
	Casting.addTableRecipe(<contenttweaker:material_part:32>,<tconstruct:cast_custom:3>, <liquid:palladium>, 144, false, 50);
	
Casting.addBasinRecipe(<contenttweaker:sub_block_holder_0:4>, null, <liquid:palladium>, 1296);

// Adamantine
	Casting.addTableRecipe(<contenttweaker:material_part:10>,<tconstruct:cast_custom>, <liquid:adamantine>, 144, false, 50);
	Casting.addTableRecipe(<contenttweaker:material_part:11>,<tconstruct:cast_custom:4>, <liquid:adamantine>, 576, false, 200);
	Casting.addTableRecipe(<contenttweaker:material_part:12>,<tconstruct:cast_custom:3>, <liquid:adamantine>, 144, false, 50);
Casting.addBasinRecipe(<contenttweaker:sub_block_holder_0:1>, null, <liquid:adamantine>, 1296);

// Prudentium Gears
Melting.addRecipe(<liquid:prudentium> * 576, <moreplates:prudentium_gear>);
Casting.addTableRecipe(<moreplates:prudentium_gear>,<tconstruct:cast_custom:4>, <liquid:prudentium>, 576, false, 200);


// MORE CASTS //
val moreIngotCasting =
[
<embers:archaic_brick>,
<embers:brick_caminite>,
]
 as IItemStack[];
for item in moreIngotCasting {
Casting.addTableRecipe(<tconstruct:cast_custom>, item, <liquid:gold>, 288, true);
Casting.addTableRecipe(<tconstruct:cast_custom>, item, <liquid:alubrass>, 144, true);
Casting.addTableRecipe(<tconstruct:cast_custom>, item, <liquid:brass>, 144, true);
}
val moreGearCasting =
[
<enderio:item_material:10>,
]
 as IItemStack[];
for item in moreGearCasting {
Casting.addTableRecipe(<tconstruct:cast_custom:4>, item, <liquid:alubrass>, 144, true);
Casting.addTableRecipe(<tconstruct:cast_custom:4>, item, <liquid:brass>, 144, true);
}


### DRYING ###

// porcelain brick | Ceramics
//Drying.addRecipe(<ceramics:unfired_clay:5>, <ceramics:unfired_clay:4>, 160);


### HIGH OVEN ###

// High Oven Fuels //

// HighOven.removeFuel(IIngredient fuel);
HighOven.removeFuel(<minecraft:coal:1>);
HighOven.removeFuel(<ore:blockCharcoal>);

// HighOven.addFuel(IIngredient fuel, int time, int rate);
HighOven.addFuel(<thaumcraft:alumentum>, 3600, 50);

HighOven.addFuel(<mysticalagriculture:coal>, 6000, 15);
HighOven.addFuel(<mysticalagriculture:coal:1>, 10000, 20);
HighOven.addFuel(<mysticalagriculture:coal:2>, 15000, 30);
HighOven.addFuel(<mysticalagriculture:coal:3>, 20000, 40);
HighOven.addFuel(<mysticalagriculture:coal:4>, 30000, 60);
HighOven.addFuel(<mysticalagradditions:insanium:5>, 45000, 100);


// High Oven Recipe Removals //

// HighOven.removeMixRecipe(ILiquidStack output, @Optional ILiquidStack input);
HighOven.removeMixRecipe(<liquid:steel>); // disable any steel-producing mix recipe
HighOven.removeMixRecipe(<liquid:dark_chocolate>);

// High Oven New Recipes //

// HighOven.newMixRecipe(ILiquidStack output, ILiquidStack input, int temp);

var pigIron = HighOven.manageMixRecipe(<liquid:pigiron>, <liquid:iron>);
pigIron.addPurifier(<thaumcraft:chunk:2>, 80);

var steel = HighOven.newMixRecipe(<liquid:steel> * 144, <liquid:iron> * 144, 1350);
//steel.addOxidizer(<minecraft:redstone>, 33);
steel.addReducer(<thermalfoundation:material:771>, 33);
steel.addReducer(<rockhounding_chemistry:chemical_items:2>, 66);
steel.addPurifier(<ore:sand>, 100);
steel.addPurifier(<contenttweaker:limestone_flux>, 33);
steel.addPurifier(<rockhounding_chemistry:chemical_items:20>, 33);
steel.register();

var pulsatingiron = HighOven.newMixRecipe(<liquid:pulsating_iron> * 144, <liquid:iron> * 144, 2300);
pulsatingiron.addReducer(<enderio:item_material:20>,20);
//pulsatingiron.addPurifier(<ore:dustEnderPearl>, 100);
pulsatingiron.addPurifier(<techreborn:dust:20>, 100);
pulsatingiron.addPurifier(<enderore:dust_ender>, 100);
pulsatingiron.register();

var conductiveiron = HighOven.newMixRecipe(<liquid:conductive_iron> * 144, <liquid:iron> * 144, 1300);
conductiveiron.addReducer(<enderio:item_material:20>,20);
//conductiveiron.addPurifier(<ore:dustEnderPearl>, 100);
conductiveiron.addPurifier(<minecraft:redstone>, 100);
conductiveiron.register();

var dawnstone = HighOven.newMixRecipe(<liquid:dawnstone> * 144, <liquid:gold> * 144, 2000);
dawnstone.addOxidizer(<minecraft:glowstone_dust>, 20);
dawnstone.addReducer(<embers:shard_ember>, 100);
dawnstone.addReducer(<embers:crystal_ember>, 20);
dawnstone.addReducer(<embers:ember_cluster>, 5);
dawnstone.addReducer(<embers:wildfire_core>, 0);
dawnstone.addPurifier(<ore:dustCopper>, 100);
dawnstone.addPurifier(<rockhounding_chemistry:alloy_items_deco:15>, 20); 
dawnstone.register();

var prudentium = HighOven.newMixRecipe(<liquid:prudentium> * 36, <liquid:inferium> * 36, 1300);
prudentium.addPurifier(<mysticalagriculture:crafting:1>, 100);
prudentium.register();



/////////////////////////
// Immersive Tinker's ///
/////////////////////////
#######################################################


// Tinkers Steel Casts, Cast Chiseling
Carving.addGroup("claycast");
Carving.addGroup("cast");
Carving.addGroup("steelcast");

val CasttoSteelCast as IItemStack[IItemStack] = {
<tconstruct:cast>:<contenttweaker:steelcast>,
<tconstruct:cast>.withTag({PartType: "conarm:armor_plate"}):<contenttweaker:steelcast_armor_plate>,
<tconstruct:cast>.withTag({PartType: "conarm:armor_trim"}):<contenttweaker:steelcast_armor_trim>,
<tconstruct:cast>.withTag({PartType: "tconstruct:arrow_head"}):<contenttweaker:steelcast_arrow_head>,
<tconstruct:cast>.withTag({PartType: "tconstruct:arrow_shaft"}):<contenttweaker:steelcast_arrow_shaft>,
<tconstruct:cast>.withTag({PartType: "tconstruct:axe_head"}):<contenttweaker:steelcast_axe_head>,
<tconstruct:cast>.withTag({PartType: "plustic:battery_cell"}):<contenttweaker:steelcast_battery_cell>,
<tconstruct:cast>.withTag({PartType: "tconstruct:binding"}):<contenttweaker:steelcast_binding>,
<tconstruct:cast>.withTag({PartType: "conarm:boots_core"}):<contenttweaker:steelcast_boots_core>,
<tconstruct:cast>.withTag({PartType: "tconstruct:bow_limb"}):<contenttweaker:steelcast_bow_limb>,
<tconstruct:cast>.withTag({PartType: "tconstruct:bow_string"}):<contenttweaker:steelcast_bow_string>,
<tconstruct:cast>.withTag({PartType: "tconstruct:broad_axe_head"}):<contenttweaker:steelcast_broad_axe_head>,
<tconstruct:cast>.withTag({PartType: "conarm:chest_core"}):<contenttweaker:steelcast_chest_core>,
<tconstruct:cast>.withTag({PartType: "tcomplement:chisel_head"}):<contenttweaker:steelcast_chisel_head>,
<tconstruct:cast>.withTag({PartType: "tconstruct:cross_guard"}):<contenttweaker:steelcast_cross_guard>,
<tconstruct:cast>.withTag({PartType: "tconstruct:excavator_head"}):<contenttweaker:steelcast_excavator_head>,
<tconstruct:cast>.withTag({PartType: "tconstruct:fletching"}):<contenttweaker:steelcast_fletching>,
<tconstruct:cast>.withTag({PartType: "tconstruct:hammer_head"}):<contenttweaker:steelcast_hammer_head>,
<tconstruct:cast>.withTag({PartType: "tconstruct:hand_guard"}):<contenttweaker:steelcast_hand_guard>,
<tconstruct:cast>.withTag({PartType: "conarm:helmet_core"}):<contenttweaker:steelcast_helmet_core>,
<tconstruct:cast>.withTag({PartType: "tconstruct:kama_head"}):<contenttweaker:steelcast_kama_head>,
<tconstruct:cast>.withTag({PartType: "tconstruct:knife_blade"}):<contenttweaker:steelcast_knife_blade>,
<tconstruct:cast>.withTag({PartType: "tconstruct:large_plate"}):<contenttweaker:steelcast_large_plate>,
<tconstruct:cast>.withTag({PartType: "tconstruct:large_sword_blade"}):<contenttweaker:steelcast_large_sword_blade>,
<tconstruct:cast>.withTag({PartType: "plustic:laser_medium"}):<contenttweaker:steelcast_laser_medium>,
<tconstruct:cast>.withTag({PartType: "conarm:leggings_core"}):<contenttweaker:steelcast_leggings_core>,
<tconstruct:cast>.withTag({PartType: "tconstruct:pan_head"}):<contenttweaker:steelcast_pan_head>,
<tconstruct:cast>.withTag({PartType: "tconstruct:pick_head"}):<contenttweaker:steelcast_pick_head>,
<tconstruct:cast>.withTag({PartType: "plustic:pipe_piece"}):<contenttweaker:steelcast_pipe_piece>,
<tconstruct:cast>.withTag({PartType: "conarm:polishing_kit"}):<contenttweaker:steelcast_polishing_kit>,
<tconstruct:cast>.withTag({PartType: "tconstruct:scythe_head"}):<contenttweaker:steelcast_scythe_head>,
<tconstruct:cast>.withTag({PartType: "tconstruct:sharpening_kit"}):<contenttweaker:steelcast_sharpening_kit>,
<tconstruct:cast>.withTag({PartType: "tconstruct:shovel_head"}):<contenttweaker:steelcast_shovel_head>,
<tconstruct:cast>.withTag({PartType: "tconstruct:sign_head"}):<contenttweaker:steelcast_sign_head>,
<tconstruct:cast>.withTag({PartType: "tconstruct:sword_blade"}):<contenttweaker:steelcast_sword_blade>,
<tconstruct:cast>.withTag({PartType: "tconstruct:tool_rod"}):<contenttweaker:steelcast_tool_rod>,
<tconstruct:cast>.withTag({PartType: "tconstruct:tough_binding"}):<contenttweaker:steelcast_tough_binding>,
<tconstruct:cast>.withTag({PartType: "tconstruct:tough_tool_rod"}):<contenttweaker:steelcast_tough_tool_rod>,
<tconstruct:cast>.withTag({PartType: "tconstruct:wide_guard"}):<contenttweaker:steelcast_wide_guard>,
} as IItemStack[IItemStack];

for brasscast, steelcast in CasttoSteelCast {
	recipes.addShapeless(steelcast, [brasscast, <ore:plateSteel>]);
	Carving.addVariation("cast", brasscast);
	Carving.addVariation("steelcast", steelcast);
}

Carving.addVariation("cast", <tcomplement:cast>);
Carving.addVariation("cast", <tconstruct:cast>.withTag({PartType: "tconstruct:shard"}));
Carving.addVariation("cast", <tconstruct:cast_custom>);
Carving.addVariation("cast", <tconstruct:cast_custom:1>);
Carving.addVariation("cast", <tconstruct:cast_custom:2>);
Carving.addVariation("cast", <tconstruct:cast_custom:3>);
Carving.addVariation("cast", <tconstruct:cast_custom:4>);

val claycast = [
<tconstruct:clay_cast>.withTag({PartType: "conarm:armor_plate"}),
<tconstruct:clay_cast>.withTag({PartType: "conarm:armor_trim"}),
<tconstruct:clay_cast>.withTag({PartType: "tconstruct:arrow_head"}),
<tconstruct:clay_cast>.withTag({PartType: "tconstruct:arrow_shaft"}),
<tconstruct:clay_cast>.withTag({PartType: "tconstruct:axe_head"}),
<tconstruct:clay_cast>.withTag({PartType: "plustic:battery_cell"}),
<tconstruct:clay_cast>.withTag({PartType: "tconstruct:binding"}),
<tconstruct:clay_cast>.withTag({PartType: "conarm:boots_core"}),
<tconstruct:clay_cast>.withTag({PartType: "tconstruct:bow_limb"}),
<tconstruct:clay_cast>.withTag({PartType: "tconstruct:bow_string"}),
<tconstruct:clay_cast>.withTag({PartType: "tconstruct:broad_axe_head"}),
<tconstruct:clay_cast>.withTag({PartType: "conarm:chest_core"}),
<tconstruct:clay_cast>.withTag({PartType: "tcomplement:chisel_head"}),
<tconstruct:clay_cast>.withTag({PartType: "tconstruct:cross_guard"}),
<tconstruct:clay_cast>.withTag({PartType: "tconstruct:excavator_head"}),
<tconstruct:clay_cast>.withTag({PartType: "tconstruct:fletching"}),
<tconstruct:clay_cast>.withTag({PartType: "tconstruct:hammer_head"}),
<tconstruct:clay_cast>.withTag({PartType: "tconstruct:hand_guard"}),
<tconstruct:clay_cast>.withTag({PartType: "conarm:helmet_core"}),
<tconstruct:clay_cast>.withTag({PartType: "tconstruct:kama_head"}),
<tconstruct:clay_cast>.withTag({PartType: "tconstruct:knife_blade"}),
<tconstruct:clay_cast>.withTag({PartType: "tconstruct:large_plate"}),
<tconstruct:clay_cast>.withTag({PartType: "tconstruct:large_sword_blade"}),
<tconstruct:clay_cast>.withTag({PartType: "plustic:laser_medium"}),
<tconstruct:clay_cast>.withTag({PartType: "conarm:leggings_core"}),
<tconstruct:clay_cast>.withTag({PartType: "tconstruct:pan_head"}),
<tconstruct:clay_cast>.withTag({PartType: "tconstruct:pick_head"}),
<tconstruct:clay_cast>.withTag({PartType: "plustic:pipe_piece"}),
<tconstruct:clay_cast>.withTag({PartType: "conarm:polishing_kit"}),
<tconstruct:clay_cast>.withTag({PartType: "tconstruct:scythe_head"}),
<tconstruct:clay_cast>.withTag({PartType: "tconstruct:sharpening_kit"}),
<tconstruct:clay_cast>.withTag({PartType: "tconstruct:shovel_head"}),
<tconstruct:clay_cast>.withTag({PartType: "tconstruct:sign_head"}),
<tconstruct:clay_cast>.withTag({PartType: "tconstruct:sword_blade"}),
<tconstruct:clay_cast>.withTag({PartType: "tconstruct:tool_rod"}),
<tconstruct:clay_cast>.withTag({PartType: "tconstruct:tough_binding"}),
<tconstruct:clay_cast>.withTag({PartType: "tconstruct:tough_tool_rod"}),
<tconstruct:clay_cast>.withTag({PartType: "tconstruct:wide_guard"}),
<tconstruct:clay_cast>.withTag({PartType: "tconstruct:shard"}),
<tcomplement:cast_clay>,
] as IItemStack[];

for cast in claycast {
	Carving.addVariation("claycast", cast);
}


// Most Parts
var matpresser as IItemStack[string] = {
	"electrical_steel" : <enderio:item_alloy_ingot>,
	"energetic_alloy" : <enderio:item_alloy_ingot:1>,
	"vibrant_alloy" : <enderio:item_alloy_ingot:2>,
	"redstone_alloy" : <enderio:item_alloy_ingot:3>,
	"conductive_iron": <enderio:item_alloy_ingot:4>,
	"pulsating_iron" : <enderio:item_alloy_ingot:5>,
	"dark_steel" : <enderio:item_alloy_ingot:6>,
	"soularium" : <enderio:item_alloy_ingot:7>,
	"end_steel" : <enderio:item_alloy_ingot:8>,
	"construction_alloy" : <enderio:item_alloy_ingot:9>,
	"fierymetal" : <twilightforest:fiery_ingot>,
	"knightmetal" : <twilightforest:knightmetal_ingot>,
	"obsidian" : <minecraft:obsidian>,
	"iron" : <minecraft:iron_ingot>,
	"pigiron" : <ore:ingotPigiron>.firstItem,
	"knightslime" : <tconstruct:ingots:3>,
	"cobalt" : <tconstruct:ingots>,
	"ardite" : <tconstruct:ingots:1>,
	"manyullyn" : <tconstruct:ingots:2>,
	"copper" : <thermalfoundation:material:128>,
	"bronze" : <ore:ingotBronze>.firstItem,
	"lead" : <ore:ingotLead>.firstItem,
	"silver" : <ore:ingotSilver>.firstItem,
	"electrum" : <ore:ingotElectrum>.firstItem,
	"steel" : <thermalfoundation:material:160>,
	"constantan" : <thermalfoundation:material:164>,
	"dragonsteel_fire" : <iceandfire:dragonsteel_fire_ingot>,
	"dragonsteel_ice" : <iceandfire:dragonsteel_ice_ingot>,
	"blood_infused_iron" : <bloodarsenal:base_item:4>,
	"tar_slime" : <thermalfoundation:material:833>,
	"ma.soulium" : <mysticalagriculture:crafting:38>,
	"ma.base_essence" : <mysticalagriculture:crafting:5>,
	"ma.inferium" : <mysticalagriculture:crafting:33>,
	"ma.prudentium" : <mysticalagriculture:crafting:34>,
	"ma.intermedium" : <mysticalagriculture:crafting:35>,
	"ma.superium": <mysticalagriculture:crafting:36>,
	"ma.supremium" : <mysticalagriculture:crafting:37>,
	"alumite" : <plustic:alumiteingot>,
	"nickel" : <ore:ingotNickel>.firstItem,
	"invar" : <ore:ingotInvar>.firstItem,
	"iridium" : <thermalfoundation:material:135>,
	"osmium" : <mekanism:ingot:1>,
	"refinedobsidian" : <mekanism:ingot>,
	"refinedglowstone" : <mekanism:ingot:3>,
	"osgloglas" : <plustic:osgloglasingot>,
	"osmiridium" : <plustic:osmiridiumingot>,
	"titanium" : <techreborn:ingot:14>,
	"lumium_plustic" : <thermalfoundation:material:166>,
	"signalum_plustic" : <thermalfoundation:material:165>,
	"platinum_plustic" : <thermalfoundation:material:134>,
	"enderium_plustic" : <thermalfoundation:material:167>,
	"infinity_avaritia_plustic" : <avaritia:resource:6>,
	"thaumium" : <thaumcraft:ingot>,
	"starmetal" : <astralsorcery:itemcraftingcomponent:1>,
	"boron" : <nuclearcraft:ingot:5>,
	"tough" : <nuclearcraft:alloy:1>,
	"hard_carbon" : <nuclearcraft:alloy:2>,
	"thorium" : <techreborn:ingot:23>,
	"uranium" : <immersiveengineering:metal:5>,
	"magnesium" : <nuclearcraft:ingot:7>,
	"chocolate" :  <nuclearcraft:milk_chocolate>,
	"bloodbronze" : <bloodtinker:blood_bronze_ingot>,
	"mirion" : <plustic:mirioningot>,
	"manasteel" : <botania:manaresource>,
	"elementium" : <botania:manaresource:7>,
	"terrasteel" : <botania:manaresource:4>,
	"emerald_plustic" : <minecraft:emerald>,
};

var tconPartsMappresser as int[IItemStack[]] = {
	[<tconstruct:tool_rod> , <contenttweaker:steelcast_tool_rod>] : 1,
	[<tconstruct:pick_head> , <contenttweaker:steelcast_pick_head>] : 3,
	[<tconstruct:shovel_head> , <contenttweaker:steelcast_shovel_head>] : 2,
	[<tconstruct:axe_head> , <contenttweaker:steelcast_axe_head>] : 3,
	[<tconstruct:sword_blade> , <contenttweaker:steelcast_sword_blade>] : 2,
	[<tconstruct:kama_head> , <contenttweaker:steelcast_kama_head>] : 2,
	[<tconstruct:wide_guard> , <contenttweaker:steelcast_wide_guard>] : 1,
	[<tconstruct:hand_guard> , <contenttweaker:steelcast_hand_guard>] : 1,
	[<tconstruct:binding> , <contenttweaker:steelcast_binding>] : 1,
	[<tconstruct:pan_head> , <contenttweaker:steelcast_pan_head>] : 4,
	[<tconstruct:sign_head> , <contenttweaker:steelcast_sign_head>] : 3,
	[<tconstruct:sharpening_kit> , <contenttweaker:steelcast_sharpening_kit>] : 2,
	[<tconstruct:arrow_head> , <contenttweaker:steelcast_arrow_head>] : 2,
	[<tconstruct:knife_blade> , <contenttweaker:steelcast_knife_blade>] : 1,
	[<tconstruct:cross_guard> , <contenttweaker:steelcast_cross_guard>] : 1,
	[<tconstruct:tough_binding> , <contenttweaker:steelcast_tough_binding>] : 3,
	[<tconstruct:tough_tool_rod> , <contenttweaker:steelcast_tough_tool_rod>] : 3,
	[<tconstruct:scythe_head> , <contenttweaker:steelcast_scythe_head>] : 8,
	[<tconstruct:large_sword_blade> , <contenttweaker:steelcast_large_sword_blade>] : 8,
	[<tconstruct:broad_axe_head> , <contenttweaker:steelcast_broad_axe_head>] : 8,
	[<tconstruct:excavator_head> , <contenttweaker:steelcast_excavator_head>] : 8,
	[<tconstruct:hammer_head> , <contenttweaker:steelcast_hammer_head>] : 8,
	[<tconstruct:large_plate> , <contenttweaker:steelcast_large_plate>] : 8,
	[<tcomplement:chisel_head> , <contenttweaker:steelcast_chisel_head>] : 1,
	[<conarm:boots_core> , <contenttweaker:steelcast_boots_core>] : 4,
	[<conarm:leggings_core> , <contenttweaker:steelcast_leggings_core>] : 5,
	[<conarm:chest_core> , <contenttweaker:steelcast_chest_core>] : 6,
	[<conarm:helmet_core> , <contenttweaker:steelcast_helmet_core>] : 4, 
	[<conarm:armor_plate> , <contenttweaker:steelcast_armor_plate>] : 3,
	[<conarm:armor_trim> , <contenttweaker:steelcast_armor_trim>] : 1,
	[<plustic:pipe_piece> , <contenttweaker:steelcast_pipe_piece>] : 12,
	[<conarm:polishing_kit> , <contenttweaker:steelcast_polishing_kit>] : 2,
	[<tconstruct:bow_limb> , <contenttweaker:steelcast_bow_limb>] : 3,	
};

for mat, ingot in matpresser {
	for item, quantity in tconPartsMappresser {
		MetalPress.addRecipe(item[0].withTag({Material: mat}), ingot, item[1], 2000, quantity);
//		ArcFurnace.addRecipe(ingot * quantity, item[0].withTag({Material: mat}), null, 100, 512);
	}
}

// Arrow Shaft
MetalPress.addRecipe(<tconstruct:arrow_shaft>.withTag({Material: "fierymetal"}), <twilightforest:fiery_ingot>, <contenttweaker:steelcast_arrow_shaft>, 2000, 2);
MetalPress.addRecipe(<tconstruct:arrow_shaft>.withTag({Material: "enderium_plustic"}), <thermalfoundation:material:167>, <contenttweaker:steelcast_arrow_shaft>, 2000, 2);

//ArcFurnace.addRecipe(<twilightforest:fiery_ingot> * 2, <tconstruct:arrow_shaft>.withTag({Material: "fierymetal"}), null, 100, 512);
//ArcFurnace.addRecipe(<thermalfoundation:material:167> * 2, <tconstruct:arrow_shaft>.withTag({Material: "enderium_plustic"}), null, 100, 512);

// Fletching
MetalPress.addRecipe(<tconstruct:fletching>.withTag({Material: "nickel"}), <thermalfoundation:material:133>, <contenttweaker:steelcast_fletching>, 2000, 2);
MetalPress.addRecipe(<tconstruct:fletching>.withTag({Material: "invar"}), <thermalfoundation:material:162>, <contenttweaker:steelcast_fletching>, 2000, 2);
MetalPress.addRecipe(<tconstruct:fletching>.withTag({Material: "titanium"}), <techreborn:ingot:14>, <contenttweaker:steelcast_fletching>, 2000, 2);

/*ArcFurnace.addRecipe(<thermalfoundation:material:133> * 2, <tconstruct:fletching>.withTag({Material: "nickel"}), null, 100, 512);
ArcFurnace.addRecipe(<thermalfoundation:material:162> * 2, <tconstruct:fletching>.withTag({Material: "invar"}), null, 100, 512);
ArcFurnace.addRecipe(<techreborn:ingot:14> * 2, <tconstruct:fletching>.withTag({Material: "titanium"}), null, 100, 512);*/

// Laser Medium
MetalPress.addRecipe(<plustic:laser_medium>.withTag({Material: "refinedobsidian"}), <mekanism:ingot>, <contenttweaker:steelcast_laser_medium>, 2000, 8);
MetalPress.addRecipe(<plustic:laser_medium>.withTag({Material: "refinedglowstone"}), <mekanism:ingot:3>, <contenttweaker:steelcast_laser_medium>, 2000, 8);
MetalPress.addRecipe(<plustic:laser_medium>.withTag({Material: "infinity_avaritia_plustic"}), <avaritia:resource:6>, <contenttweaker:steelcast_laser_medium>, 2000, 8);
MetalPress.addRecipe(<plustic:laser_medium>.withTag({Material: "starmetal"}), <astralsorcery:itemcraftingcomponent:1>, <contenttweaker:steelcast_laser_medium>, 2000, 8);

/*ArcFurnace.addRecipe(<mekanism:ingot>, <plustic:laser_medium>.withTag({Material: "refinedobsidian"}), null, 100, 512);
ArcFurnace.addRecipe(<mekanism:ingot:3>, <plustic:laser_medium>.withTag({Material: "refinedglowstone"}), null, 100, 512);
ArcFurnace.addRecipe(<avaritia:resource:6>, <plustic:laser_medium>.withTag({Material: "infinity_avaritia_plustic"}), null, 100, 512);
ArcFurnace.addRecipe(<astralsorcery:itemcraftingcomponent:1>, <plustic:laser_medium>.withTag({Material: "starmetal"}), null, 100, 512);*/

// Bowstring
MetalPress.addRecipe(<tconstruct:bow_string>.withTag({Material: "soularium"}), <enderio:item_alloy_ingot:7>, <contenttweaker:steelcast_bow_string>, 2000, 1);

//ArcFurnace.addRecipe(<enderio:item_alloy_ingot:7>, <tconstruct:bow_string>.withTag({Material: "soularium"}), null, 100, 512);

// Battery Cell
MetalPress.addRecipe(<plustic:battery_cell>.withTag({Material: "manyullyn"}), <tconstruct:ingots:2>, <contenttweaker:steelcast_battery_cell>, 2000, 8);
MetalPress.addRecipe(<plustic:battery_cell>.withTag({Material: "copper"}), <thermalfoundation:material:128>, <contenttweaker:steelcast_battery_cell>, 2000, 8);
MetalPress.addRecipe(<plustic:battery_cell>.withTag({Material: "silver"}), <thermalfoundation:material:130>, <contenttweaker:steelcast_battery_cell>, 2000, 8);
MetalPress.addRecipe(<plustic:battery_cell>.withTag({Material: "nickel"}), <thermalfoundation:material:133>, <contenttweaker:steelcast_battery_cell>, 2000, 8);
MetalPress.addRecipe(<plustic:battery_cell>.withTag({Material: "osmium"}), <mekanism:ingot:1>, <contenttweaker:steelcast_battery_cell>, 2000, 8);

/*ArcFurnace.addRecipe(<tconstruct:ingots:2> * 8, <plustic:battery_cell>.withTag({Material: "manyullyn"}), null, 100, 512);
ArcFurnace.addRecipe(<thermalfoundation:material:128> * 8, <plustic:battery_cell>.withTag({Material: "copper"}), null, 100, 512);
ArcFurnace.addRecipe(<thermalfoundation:material:130> * 8, <plustic:battery_cell>.withTag({Material: "silver"}), null, 100, 512);
ArcFurnace.addRecipe(<thermalfoundation:material:133> * 8, <plustic:battery_cell>.withTag({Material: "nickel"}), null, 100, 512);
ArcFurnace.addRecipe(<mekanism:ingot:1> * 8, <plustic:battery_cell>.withTag({Material: "osmium"}), null, 100, 512);*/

##########################################################################################
print("==================== end of tinkersconstruct.zs ====================");
