import crafttweaker.item.IItemStack;
import mods.bloodmagic.BloodAltar;
import mods.botania.ManaInfusion;
print("==================== loading mods blank.zs ====================");
##########################################################################################

val itemstoRemove =
[
	<cyclicmagic:solidifier>,
	<cyclicmagic:melter>,
	<cyclicmagic:builder_pattern>,
	<cyclicmagic:glowing_chorus>,
	<cyclicmagic:corrupted_chorus>,
	<cyclicmagic:charm_antidote>,
<cyclicmagic:charm_water>,
<cyclicmagic:charm_air>,
<cyclicmagic:charm_void>,
<cyclicmagic:charm_boat>,
<cyclicmagic:charm_fire>,
<cyclicmagic:charm_speed>,
<cyclicmagic:charm_wing>,
<cyclicmagic:block_anvil>,
<cyclicmagic:block_user>,
<cyclicmagic:block_miner_smart>,
]
 as IItemStack[];

for item in itemstoRemove {
	recipes.remove(item);
}
val itemstoRemoveandHide =
[
	<cyclicmagic:battery>,
	<cyclicmagic:cable_wireless_energy>,
	<cyclicmagic:cable_wireless_fluid>,
	<cyclicmagic:cable_wireless>,
	<cyclicmagic:exp_pylon>,
]
 as IItemStack[];

for item in itemstoRemoveandHide {
	mods.jei.JEI.removeAndHide(item);
}
recipes.addShaped(<cyclicmagic:solidifier>, [
	[<ore:plateSteel>, <embers:stamper>, <ore:plateSteel>], 
	[<ore:dustCryotheum>, null, <ore:dustCryotheum>], 
	[<ore:plateSteel>, <embers:stamper_base>, <ore:plateSteel>]
]);
recipes.addShaped(<cyclicmagic:melter>, [
	[<ore:plateSteel>, <techreborn:dynamiccell>, <ore:plateSteel>], 
	[<ore:dustPyrotheum>, <embers:block_furnace>, <ore:dustPyrotheum>], 
	[<ore:plateSteel>, <techreborn:dynamiccell>, <ore:plateSteel>]
]);

recipes.addShaped(<cyclicmagic:builder_pattern>, [[<moreplates:redstone_alloy_plate>, <ore:blockGlassHardened>, <moreplates:redstone_alloy_plate>],[<actuallyadditions:item_crystal:2>, <enderio:item_material>, <actuallyadditions:item_crystal:2>], [<moreplates:redstone_alloy_plate>, <ore:blockGlassHardened>, <moreplates:redstone_alloy_plate>]]);

//anvil
recipes.addShaped(<cyclicmagic:block_anvil>, [[<actuallyadditions:block_crystal:2>, <actuallyadditions:block_crystal:2>, <actuallyadditions:block_crystal:2>],[<advgenerators:iron_wiring>, <ore:circuitAdvanced>, <advgenerators:iron_wiring>], [<techreborn:plates:35>, <techreborn:plates:35>, <techreborn:plates:35>]]);


ManaInfusion.addInfusion(<cyclicmagic:glowing_chorus>,<minecraft:chorus_fruit>,10000);
BloodAltar.addRecipe(<cyclicmagic:corrupted_chorus>, <minecraft:chorus_fruit>, 3, 5000, 25, 25);


recipes.addShaped(<cyclicmagic:block_user>, [[<moreplates:energetic_alloy_plate>, <rockhounding_chemistry:misc_items:10>, <moreplates:energetic_alloy_plate>],[<ore:circuitBasic>, <techreborn:machine_frame>, <ore:circuitBasic>], [<moreplates:energetic_alloy_plate>, <moreplates:energetic_silver_gear>, <moreplates:energetic_alloy_plate>]]);
recipes.addShaped(<cyclicmagic:block_miner_smart>, [[<moreplates:energetic_silver_plate>, <rockhounding_chemistry:misc_items:10>, <moreplates:energetic_silver_plate>],[<ore:circuitBasic>, <techreborn:machine_frame>, <ore:circuitBasic>], [<moreplates:energetic_silver_plate>, <moreplates:energetic_alloy_gear>, <moreplates:energetic_silver_plate>]]);


##########################################################################################
print("==================== end of mods blank.zs ====================");
