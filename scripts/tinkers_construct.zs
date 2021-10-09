 	##########################################################################################
#modloaded tconstruct
#priority 100

import mods.tconstruct.Alloy;
import mods.tconstruct.Casting;
import mods.tconstruct.Drying;
import mods.tconstruct.Melting;
import mods.tcomplement.highoven.HighOven;
import mods.tcomplement.highoven.MixRecipeBuilder;
import mods.tcomplement.highoven.MixRecipeManager;
import crafttweaker.item.IItemStack;
import crafttweaker.liquid.ILiquidStack;
import mods.immersiveengineering.MetalPress;
import mods.rockhounding_chemistry.LabBlender;

print("==================== loading mods tinkersconstruct.zs ====================");
##########################################################################################

val itemstoRemove =
[
	<tinker_io:upg:4>,
	<tinker_io:upg:2>,
	<tinker_io:smart_output>,
	<tcomplement:melter>,
	<tcomplement:alloy_tank>,
	<tconstruct:materials:14>,
]
 as IItemStack[];

for item in itemstoRemove {
	recipes.remove(item);
}

mods.jei.JEI.removeAndHide(<tconstruct:toolforge>.withTag({textureBlock: {id: "enderio:block_alloy", Count: 1 as byte, Damage: 0 as short}}));
mods.jei.JEI.removeAndHide(<tconstruct:smeltery_controller>);
/*
// smeltery controller
recipes.remove(<tconstruct:smeltery_controller>);
recipes.addShaped(<tconstruct:smeltery_controller>, [[<tconstruct:materials>, <embers:plate_dawnstone>, <tconstruct:materials>],[<embers:plate_dawnstone>, <tcomplement:melter>, <embers:plate_dawnstone>], [<tconstruct:materials>, <embers:plate_dawnstone>, <tconstruct:materials>]]);
*/

/* New Scorched Recipe
recipes.addShaped(<tcomplement:materials:1> * 8, [[<tconstruct:materials>, <tconstruct:materials>, <tconstruct:materials>],[<tconstruct:materials>, <embers:dust_ember>, <tconstruct:materials>], [<tconstruct:materials>, <tconstruct:materials>, <tconstruct:materials>]]);
recipes.addShapeless(<tcomplement:scorched_faucet>, [<embers:dust_ember>,<tconstruct:faucet>]);
recipes.addShapeless(<tcomplement:high_oven_io>, [<embers:dust_ember>,<tconstruct:smeltery_io>]);
recipes.addShapeless(<tcomplement:scorched_casting:1>, [<embers:dust_ember>,<tconstruct:casting:1>]);
recipes.addShapeless(<tcomplement:scorched_casting>, [<embers:dust_ember>,<tconstruct:casting>]);
recipes.addShapeless(<tcomplement:scorched_block:3>, [<embers:dust_ember>,<tconstruct:seared:3>]);
*/
LabBlender.add([<rockhounding_chemistry:chemical_items:20>*4, <actuallyadditions:item_crystal:3>, <embers:dust_ember>, <thaumcraft:stone_arcane_brick>*2], <tcomplement:materials:1>*8);

val smelteryHeart = <ore:smelteryHeart>;
smelteryHeart.add(<tconstruct:seared_tank>);
smelteryHeart.add(<tconstruct:seared_tank:1>);
smelteryHeart.add(<tconstruct:seared_tank:2>);

//Alloy Tank
recipes.addShaped(<tcomplement:alloy_tank>, [[<tconstruct:materials>, <tconstruct:materials>, <tconstruct:materials>],[<tconstruct:materials>, <thermalfoundation:material:291>, <tconstruct:materials>], [<tconstruct:materials>, <tconstruct:materials>, <tconstruct:materials>]]);


	<liquid:pyrotheum>.definition.temperature = 5300;
	mods.tconstruct.Fuel.registerFuel(<liquid:pyrotheum> * 25, 400);
	//Embers
	<liquid:moltenembers>.definition.temperature = 6300;
	mods.tconstruct.Fuel.registerFuel(<liquid:moltenembers> * 50, 50);
	/*
	//Starlight
	<liquid:astralsorcery.liquidstarlight>.definition.temperature = 4300;
	mods.tconstruct.Fuel.registerFuel(<liquid:astralsorcery.liquidstarlight> * 50, 200);
*/

### CRAFTING RECIPES ###

// high oven controller
recipes.remove(<tcomplement:high_oven_controller>);
recipes.addShaped(<tcomplement:high_oven_controller>, [[<tcomplement:materials:1>, <contenttweaker:noon_ingot>, <tcomplement:materials:1>],[<contenttweaker:noon_ingot>, <thaumcraft:alumentum>, <contenttweaker:noon_ingot>], [<tcomplement:materials:1>, <contenttweaker:noon_ingot>, <tcomplement:materials:1>]]);

//Melter
recipes.addShaped(<tcomplement:melter>, [[<tconstruct:materials>, <tconstruct:materials>, <tconstruct:materials>],[<tconstruct:materials>, null, <tconstruct:materials>], [<tconstruct:materials>, <tconstruct:materials>, <tconstruct:materials>]]);



### MELTING ###
//remove
Melting.removeRecipe(<liquid:fossil_tar>, <minecraft:coal>);
Melting.removeRecipe(<liquid:dark_steel>, <enderio:item_dark_steel_sword>);

/* bottled time
recipes.remove(<randomthings:timeinabottle>.*);
Melting.removeRecipe(<liquid:gold>, <minecraft:clock>);
Melting.addRecipe(<liquid:moltenTime> * 250, <minecraft:clock>);
Casting.addBasinRecipe(<randomthings:timeinabottle>.withTag({timeData: {storedTime: 6000}}), <extrautils2:klein>, <liquid:moltenTime>, 144, true, 100);
*/
//---------Special Dusts
Melting.addRecipe(<liquid:inert_metal> * 144,<contenttweaker:inert_ingot>);
Melting.addRecipe(<liquid:inert_metal> * 1296,<contenttweaker:sub_block_holder_0:2>);
Melting.addRecipe(<liquid:ender> * 1000, <actuallyadditions:block_misc:6>, 500);
Melting.addRecipe(<liquid:tough> * 1296, <contenttweaker:sub_block_holder_0:6>);
Melting.addRecipe(<liquid:quartz> * 666, <minecraft:quartz>);
Melting.addRecipe(<liquid:quartz> * 2664, <minecraft:quartz_block>);
Melting.addRecipe(<liquid:stone> * 648, <additionalcompression:cobblestone_compressed>);


### ALLOYING ###
// remove alloys
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


//smart upgrades
recipes.addShaped(<tinker_io:upg:4>, [[<embers:nugget_dawnstone>, <minecraft:diamond>, <embers:nugget_dawnstone>],[<minecraft:diamond>, <tinker_io:upg:3>, <minecraft:diamond>], [<embers:nugget_dawnstone>, <minecraft:diamond>, <embers:nugget_dawnstone>]]);
recipes.addShaped(<tinker_io:upg:2>, [[<thermalfoundation:material:162>, <minecraft:iron_ingot>, <thermalfoundation:material:162>],[<minecraft:iron_ingot>, <tinker_io:upg:1>, <minecraft:iron_ingot>], [<thermalfoundation:material:162>, <minecraft:iron_ingot>, <thermalfoundation:material:162>]]);


/*
Alloy.removeRecipe(<liquid:osmiridium>);
Alloy.removeRecipe(<liquid:mirion>);
Alloy.removeRecipe(<liquid:osgloglas>);
*/

//inert 
Alloy.addRecipe(<liquid:inert_metal> * 72, [<liquid:silver> * 72, <liquid:lead> * 36]);

### CASTING ###
//remove
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
//new metals
Casting.addBasinRecipe(<contenttweaker:sub_block_holder_0:6>, null, <liquid:tough>, 1296);

//fused quartz
Casting.addBasinRecipe(<enderio:block_fused_quartz>, null, <liquid:quartz>, 2664, false, 100);

//tool forge
Casting.addBasinRecipe(<tconstruct:toolforge>.withTag({textureBlock: {id: "tconstruct:metal", Count: 1 as byte, Damage: 4 as short}}), <tconstruct:tooltables:3>, <liquid:pigiron>, 5184, true, 400);

//armor forge
Casting.addBasinRecipe(<conarm:armorforge>.withTag({textureBlock: {id: "tconstruct:metal", Count: 1 as byte, Damage: 3 as short}}), <tconstruct:tooltables:3>, <liquid:knightslime>, 5184, true, 400);

//inert ingot
Casting.addTableRecipe(<contenttweaker:inert_ingot>, <tconstruct:cast_custom>, <liquid:inert_metal>, 144, false, 50);
Casting.addBasinRecipe(<contenttweaker:sub_block_holder_0:2>, null, <liquid:inert_metal>, 1296);

//inert ingot
Casting.addTableRecipe(<contenttweaker:inert_ingot>, <tconstruct:cast_custom>, <liquid:inert_metal>, 144, false, 50);
Casting.addBasinRecipe(<contenttweaker:sub_block_holder_0:2>, null, <liquid:inert_metal>, 1296);

//Ender Shard
Casting.addTableRecipe(<enderio:item_material:62>, <tconstruct:cast_custom>, <liquid:ender>, 50, false, 50);


//Orichalcum
	Casting.addTableRecipe(<contenttweaker:material_part:20>,<tconstruct:cast_custom>, <liquid:orichalcum>, 144, false, 50);
	Casting.addTableRecipe(<contenttweaker:material_part:21>,<tconstruct:cast_custom:4>, <liquid:orichalcum>, 576, false, 200);
	Casting.addTableRecipe(<contenttweaker:material_part:22>,<tconstruct:cast_custom:3>, <liquid:orichalcum>, 144, false, 50);

Melting.addRecipe(<liquid:orichalcum> * 1296, <contenttweaker:sub_block_holder_0>);
Casting.addBasinRecipe(<contenttweaker:sub_block_holder_0>, null, <liquid:orichalcum>, 1296);
recipes.addShaped(<contenttweaker:sub_block_holder_0>, [
	[<contenttweaker:material_part:20>, <contenttweaker:material_part:20>, <contenttweaker:material_part:20>],
	[<contenttweaker:material_part:20>, <contenttweaker:material_part:20>, <contenttweaker:material_part:20>], 
	[<contenttweaker:material_part:20>, <contenttweaker:material_part:20>, <contenttweaker:material_part:20>]
]);
recipes.addShapeless(<contenttweaker:material_part:20> * 9, [<contenttweaker:sub_block_holder_0>]);

//Palladuim
	Casting.addTableRecipe(<contenttweaker:material_part:30>,<tconstruct:cast_custom>, <liquid:palladium>, 144, false, 50);
	Casting.addTableRecipe(<contenttweaker:material_part:31>,<tconstruct:cast_custom:4>, <liquid:palladium>, 576, false, 200);
	Casting.addTableRecipe(<contenttweaker:material_part:32>,<tconstruct:cast_custom:3>, <liquid:palladium>, 144, false, 50);

//Adamantine
	Casting.addTableRecipe(<contenttweaker:material_part:10>,<tconstruct:cast_custom>, <liquid:adamantine>, 144, false, 50);
	Casting.addTableRecipe(<contenttweaker:material_part:11>,<tconstruct:cast_custom:4>, <liquid:adamantine>, 576, false, 200);
	Casting.addTableRecipe(<contenttweaker:material_part:12>,<tconstruct:cast_custom:3>, <liquid:adamantine>, 144, false, 50);

Melting.addRecipe(<liquid:adamantine> * 1296, <contenttweaker:sub_block_holder_0:1>);
Casting.addBasinRecipe(<contenttweaker:sub_block_holder_0:1>, null, <liquid:adamantine>, 1296);
recipes.addShaped(<contenttweaker:sub_block_holder_0:1>, [
	[<contenttweaker:material_part:10>, <contenttweaker:material_part:10>, <contenttweaker:material_part:10>],
	[<contenttweaker:material_part:10>, <contenttweaker:material_part:10>, <contenttweaker:material_part:10>], 
	[<contenttweaker:material_part:10>, <contenttweaker:material_part:10>, <contenttweaker:material_part:10>]
]);
recipes.addShapeless(<contenttweaker:material_part:10> * 9, [<contenttweaker:sub_block_holder_0:1>]);


Melting.addRecipe(<liquid:moltenbedrock> * 100, <minecraft:bedrock>,6000);

Alloy.addRecipe(<liquid:moltentokeniron> * 1000, [<liquid:iron> * 1296, <liquid:moltenbedrock> * 1000]);
Alloy.addRecipe(<liquid:moltentokenbronze> * 1000, [<liquid:bronze> * 1296, <liquid:moltenbedrock> * 1000]);
Alloy.addRecipe(<liquid:moltentokensteel> * 1000, [<liquid:steel> * 1296, <liquid:moltenbedrock> * 1000]);
Alloy.addRecipe(<liquid:moltentokenrefinediron> * 1000, [<liquid:refined_iron> * 1296, <liquid:moltenbedrock> * 1000]);
Alloy.addRecipe(<liquid:moltentokenosmium> * 1000, [<liquid:osmium> * 1296, <liquid:moltenbedrock> * 1000]);
Alloy.addRecipe(<liquid:moltentokeniridium> * 1000, [<liquid:iridium> * 1296, <liquid:moltenbedrock> * 1000]);
Alloy.addRecipe(<liquid:moltentokenultimate> * 1000, [<liquid:ultimate> * 1296, <liquid:moltenbedrock> * 1000]);
Alloy.addRecipe(<liquid:moltentokeninfinity> * 1000, [<liquid:infinity> * 1296, <liquid:moltenbedrock> * 1000]);


val Tokens as ILiquidStack[IItemStack] = {
	<contenttweaker:token_tier1>: <liquid:moltentokeniron>,
	<contenttweaker:token_tier2>: <liquid:moltentokenbronze>,
	<contenttweaker:token_tier3>: <liquid:moltentokensteel>,
	<contenttweaker:token_tier4>: <liquid:moltentokenrefinediron>,
	<contenttweaker:token_tier5>: <liquid:moltentokenosmium>,
	<contenttweaker:token_tier6>: <liquid:moltentokeniridium>,
	<contenttweaker:token_tier7>: <liquid:moltentokenultimate>,
	<contenttweaker:token_tier8>: <liquid:moltentokeninfinity>,
} as ILiquidStack[IItemStack];
for token, molten in Tokens {
Casting.addTableRecipe(token, <avaritia:resource:5>, molten, 1000, false, 50);
}
/*
val adventureTokens as ILiquidStack[IItemStack] = {
	<contenttweaker:adventure_token_tier1>: <liquid:moltentokeniron>,
	<contenttweaker:adventure_token_tier2>: <liquid:moltentokenbronze>,
	<contenttweaker:adventure_token_tier3>: <liquid:moltentokensteel>,
	<contenttweaker:adventure_token_tier4>: <liquid:moltentokenrefinediron>,
	<contenttweaker:adventure_token_tier5>: <liquid:moltentokenosmium>,
} as ILiquidStack[IItemStack];
for token, molten in adventureTokens {
Casting.addTableRecipe(token, <avaritia:infinity_sword>, molten, 1000, false, 50);
}
val techTokens as ILiquidStack[IItemStack] = {
	<contenttweaker:tech_token_tier1>: <liquid:moltentokeniron>,
	<contenttweaker:tech_token_tier2>: <liquid:moltentokenbronze>,
	<contenttweaker:tech_token_tier3>: <liquid:moltentokensteel>,
	<contenttweaker:tech_token_tier4>: <liquid:moltentokenrefinediron>,
	<contenttweaker:tech_token_tier5>: <liquid:moltentokenosmium>,
} as ILiquidStack[IItemStack];
for token, molten in techTokens {
Casting.addTableRecipe(token, <avaritiaio:infinitecapacitor>, molten, 1000, false, 50);
}
val exploringTokens as ILiquidStack[IItemStack] = {
	<contenttweaker:exploring_token_tier1>: <liquid:moltentokeniron>,
	<contenttweaker:exploring_token_tier2>: <liquid:moltentokenbronze>,
	<contenttweaker:exploring_token_tier3>: <liquid:moltentokensteel>,
	<contenttweaker:exploring_token_tier4>: <liquid:moltentokenrefinediron>,
	<contenttweaker:exploring_token_tier5>: <liquid:moltentokenosmium>,
} as ILiquidStack[IItemStack];
for token, molten in exploringTokens {
Casting.addTableRecipe(token, <avaritia:infinity_axe>, molten, 1000, false, 50);
}
val magicTokens as ILiquidStack[IItemStack] = {
	<contenttweaker:magic_token_tier1>: <liquid:moltentokeniron>,
	<contenttweaker:magic_token_tier2>: <liquid:moltentokenbronze>,
	<contenttweaker:magic_token_tier3>: <liquid:moltentokensteel>,
	<contenttweaker:magic_token_tier4>: <liquid:moltentokenrefinediron>,
	<contenttweaker:magic_token_tier5>: <liquid:moltentokenosmium>,
} as ILiquidStack[IItemStack];
for token, molten in magicTokens {
Casting.addTableRecipe(token, <avaritia:infinity_bow>, molten, 1000, false, 50);
}
*/


//MORE CASTS
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


//Dawnstone block
Melting.addRecipe(<liquid:dawnstone> * 1296, <embers:block_dawnstone>);
Casting.addBasinRecipe(<embers:block_dawnstone>, null, <liquid:dawnstone>, 1296);

############################################################
//inert block
recipes.addShaped(<contenttweaker:sub_block_holder_0:2>, [[<contenttweaker:inert_ingot>, <contenttweaker:inert_ingot>, <contenttweaker:inert_ingot>],[<contenttweaker:inert_ingot>, <contenttweaker:inert_ingot>, <contenttweaker:inert_ingot>], [<contenttweaker:inert_ingot>, <contenttweaker:inert_ingot>, <contenttweaker:inert_ingot>]]);
recipes.addShapeless(<contenttweaker:inert_ingot> * 9, [<contenttweaker:sub_block_holder_0:2>]);

//tough alloy
recipes.addShaped(<contenttweaker:sub_block_holder_0:6>, [[<nuclearcraft:alloy:1>, <nuclearcraft:alloy:1>, <nuclearcraft:alloy:1>],[<nuclearcraft:alloy:1>, <nuclearcraft:alloy:1>, <nuclearcraft:alloy:1>], [<nuclearcraft:alloy:1>, <nuclearcraft:alloy:1>, <nuclearcraft:alloy:1>]]);
recipes.addShapeless(<nuclearcraft:alloy:1> * 9, [<contenttweaker:sub_block_holder_0:6>]);

############################################################

### HIGH OVEN ###
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


// HighOven.removeMixRecipe(ILiquidStack output, @Optional ILiquidStack input);
HighOven.removeMixRecipe(<liquid:steel>); // disable any steel-producing mix recipe
HighOven.removeMixRecipe(<liquid:dark_chocolate>);
//New steel recipe
// HighOven.newMixRecipe(ILiquidStack output, ILiquidStack input, int temp);


var pigIron = HighOven.manageMixRecipe(<liquid:pigiron>, <liquid:iron>);
pigIron.addPurifier(<thaumcraft:chunk:2>, 80);


//Limestone Flux
mods.bloodmagic.AlchemyTable.addRecipe(<contenttweaker:limestone_flux>*3, [<ore:limestoneforFlux>, <bloodmagic:cutting_fluid:1>], 200,200,1);


var steel = HighOven.newMixRecipe(<liquid:steel> * 144, <liquid:iron> * 144, 1350);
//steel.addOxidizer(<minecraft:redstone>, 33);
steel.addReducer(<thermalfoundation:material:771>, 33);
steel.addReducer(<rockhounding_chemistry:chemical_items:2>, 80);
steel.addPurifier(<ore:sand>, 100);
steel.addPurifier(<contenttweaker:limestone_flux>, 33);
steel.addPurifier(<rockhounding_chemistry:chemical_items:20>, 80);
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


### DRYING ###

// porcelain brick | Ceramics
//Drying.addRecipe(<ceramics:unfired_clay:5>, <ceramics:unfired_clay:4>, 160);

## Blank Cast Resmelting
Melting.addRecipe(<liquid:alubrass> * 144, <ore:cast>);


//Smart IO
recipes.addShaped(<tinker_io:smart_output>, [[<tconstruct:materials>, <arcanearchives:shaped_quartz>, <tconstruct:materials>],[<arcanearchives:shaped_quartz>, <tconstruct:casting>, <arcanearchives:shaped_quartz>], [<tconstruct:materials>, <arcanearchives:shaped_quartz>, <tconstruct:materials>]]);

//Reinforcement Modefier
MetalPress.addRecipe(<tconstruct:materials:14>, <immersiveengineering:metal_decoration0:5>, <immersiveengineering:mold>, 2000);

/*
/////////////////////////
// Tinker's Gregstruct //
/////////////////////////
#######################################################
	#Bronze Tier Materials at LV Exruder for Basic Parts (Keep Casting)
var matLVKeepCast as IItemStack[string] = {
	"invar" : <ore:ingotInvar>.firstItem,
	"nickel" : <ore:ingotNickel>.firstItem,
	"lead" : <ore:ingotLead>.firstItem,
	"iron" : <minecraft:iron_ingot>,
	"pigiron" : <ore:ingotPigiron>.firstItem,
	"electrum" : <ore:ingotElectrum>.firstItem,
	"silver" : <ore:ingotSilver>.firstItem,
	"bronze" : <ore:ingotBronze>.firstItem,
	"restonia_actadd_plustic" : <actuallyadditions:item_crystal>,
	"void_actadd_plustic" : <actuallyadditions:item_crystal:3>,
	"fluixcrystal_plustic" : <ore:crystalFluix>.firstItem,
	"palis_actadd_plustic" : <actuallyadditions:item_crystal:1>,
	"paper" : <minecraft:paper>,
	"enori_actadd_plustic" : <actuallyadditions:item_crystal:5>,
};

var tconPartsMapLVKeepCast as IData[][IItemStack] = {
	<tconstruct:tool_rod> : [2, "tconstruct:tool_rod"],
	<tconstruct:pick_head> : [3, "tconstruct:pick_head"],
	<tconstruct:shovel_head> : [2, "tconstruct:shovel_head"],
	<tconstruct:axe_head> : [2, "tconstruct:axe_head"],
	<tconstruct:sword_blade> : [4, "tconstruct:sword_blade"],
	<tconstruct:kama_head> : [2, "tconstruct:kama_head"],
	<tconstruct:wide_guard> : [2 , "tconstruct:wide_guard"],
	<tconstruct:hand_guard> : [2, "tconstruct:hand_guard"],
	<tconstruct:binding> : [2, "tconstruct:binding"],
	<tconstruct:pan_head> : [4, "tconstruct:pan_head"],
	<tconstruct:sign_head> : [4, "tconstruct:sign_head"],
	<tconstruct:sharpening_kit> : [2, "tconstruct:sharpening_kit"],
	<tconstruct:bow_limb> : [4, "tconstruct:bow_limb"],
	<tconstruct:arrow_head> : [2, "tconstruct:arrow_head"],
	<tcomplement:chisel_head> : [1, "tcomplement:chisel_head"]
};

for mat, ingot in matLVKeepCast {
	for part, info in tconPartsMapLVKeepCast {
		mods.gregtech.recipe.RecipeMap.getByName("extruder").recipeBuilder()
			.inputs(ingot * info[0])
			.notConsumable(<tconstruct:cast>.withTag({PartType: info[1]}))
			.outputs(part.withTag({Material: mat}))
			.duration(300* info[0])
			.EUt(30)
			.buildAndRegister();
	}
}
*/

##########################################################################################
print("==================== end of mods tinkersconstruct.zs ====================");
