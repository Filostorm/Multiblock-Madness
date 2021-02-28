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


print("==================== loading mods tinkersconstruct.zs ====================");
##########################################################################################

	mods.jei.JEI.removeAndHide(<tconstruct:toolforge>.withTag({textureBlock: {id: "enderio:block_alloy", Count: 1 as byte, Damage: 0 as short}}));

recipes.addShapeless(<tcomplement:scorched_faucet>, [<embers:dust_ember>,<tconstruct:faucet>]);
recipes.addShapeless(<tcomplement:high_oven_io>, [<embers:dust_ember>,<tconstruct:smeltery_io>]);
recipes.addShapeless(<tcomplement:scorched_casting:1>, [<embers:dust_ember>,<tconstruct:casting:1>]);
recipes.addShapeless(<tcomplement:scorched_casting>, [<embers:dust_ember>,<tconstruct:casting>]);
recipes.addShapeless(<tcomplement:scorched_block:3>, [<embers:dust_ember>,<tconstruct:seared:3>]);

val smelteryHeart = <ore:smelteryHeart>;
smelteryHeart.add(<tconstruct:seared_tank>);
smelteryHeart.add(<tconstruct:seared_tank:1>);
smelteryHeart.add(<tconstruct:seared_tank:2>);



	<liquid:pyrotheum>.definition.temperature = 5300;
	mods.tconstruct.Fuel.registerFuel(<liquid:pyrotheum> * 25, 400);
	<liquid:moltenembers>.definition.temperature = 6300;
	mods.tconstruct.Fuel.registerFuel(<liquid:moltenembers> * 50, 50);

### CRAFTING RECIPES ###

// high oven controller
recipes.remove(<tcomplement:high_oven_controller>);
recipes.addShaped(<tcomplement:high_oven_controller>, [[<tcomplement:materials:1>, <thebetweenlands:octine_ingot>, <tcomplement:materials:1>],[<thebetweenlands:octine_ingot>, <thaumcraft:alumentum>, <thebetweenlands:octine_ingot>], [<tcomplement:materials:1>, <thebetweenlands:octine_ingot>, <tcomplement:materials:1>]]);

// smeltery controller
recipes.remove(<tconstruct:smeltery_controller>);
recipes.addShaped(<tconstruct:smeltery_controller>, [[<tconstruct:materials>, <contenttweaker:activatedaspectuscopper>, <tconstruct:materials>],[<contenttweaker:activatedaspectussilver>, <tcomplement:melter>, <contenttweaker:activatedaspectussilver>], [<tconstruct:materials>, <contenttweaker:activatedaspectuscopper>, <tconstruct:materials>]]);



### MELTING ###
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
Melting.addRecipe(<liquid:stone> * 288, <thebetweenlands:cragrock>);
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

//Doesnt seem to work for these
Alloy.removeRecipe(<liquid:osmiridium>);
Alloy.removeRecipe(<liquid:mirion>);
Alloy.removeRecipe(<liquid:osgloglas>);

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

//ender shard
Casting.addTableRecipe(<woot:endershard>, <botania:quartz:2>, <liquid:ender>, 250, true, 200);

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

// HighOven.removeMixRecipe(ILiquidStack output, @Optional ILiquidStack input);
HighOven.removeMixRecipe(<liquid:steel>); // disable any steel-producing mix recipe

//New steel recipe
// HighOven.newMixRecipe(ILiquidStack output, ILiquidStack input, int temp);

var steel = HighOven.newMixRecipe(<liquid:steel> * 144, <liquid:iron> * 144, 1350);
steel.addOxidizer(<minecraft:redstone>, 33);
steel.addReducer(<thermalfoundation:material:771>, 33);
steel.addPurifier(<ore:sand>, 100);
steel.addPurifier(<thebetweenlands:items_misc:27>, 33);
steel.register();

var pulsatingiron = HighOven.newMixRecipe(<liquid:pulsating_iron> * 144, <liquid:iron> * 144, 2300);
pulsatingiron.addReducer(<enderio:item_material:20>,20);
//pulsatingiron.addPurifier(<ore:dustEnderPearl>, 100);
pulsatingiron.addPurifier(<ore:dustEnder>, 100);
pulsatingiron.register();

var conductiveiron = HighOven.newMixRecipe(<liquid:conductive_iron> * 144, <liquid:iron> * 144, 1300);
conductiveiron.addReducer(<enderio:item_material:20>,20);
//conductiveiron.addPurifier(<ore:dustEnderPearl>, 100);
conductiveiron.addPurifier(<minecraft:redstone>, 80);
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


// removals

##########################################################################################
print("==================== end of mods tinkersconstruct.zs ====================");
