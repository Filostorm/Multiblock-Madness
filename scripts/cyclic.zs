import crafttweaker.item.IItemStack;
import mods.bloodmagic.BloodAltar;
import mods.botania.ManaInfusion;
print("==================== loading cyclic.zs ====================");
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
	<cyclicmagic:auto_packager>,
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
	<cyclicmagic:fluid_placer>,
	<cyclicmagic:fluid_pump>,
	<cyclicmagic:fluid_pipe>,
	<cyclicmagic:energy_pump>,
	<cyclicmagic:energy_pipe>,
	<cyclicmagic:item_pipe_sort>,
	<cyclicmagic:bundled_pipe>,
	<cyclicmagic:item_pump>,
	<cyclicmagic:item_pipe>,
	<cyclicmagic:sandstone_sword>,
	<cyclicmagic:sandstone_hoe>,
	<cyclicmagic:sandstone_spade>,
	<cyclicmagic:sandstone_axe>,
	<cyclicmagic:sandstone_pickaxe>,
	<cyclicmagic:netherbrick_hoe>,
	<cyclicmagic:netherbrick_spade>,
	<cyclicmagic:netherbrick_axe>,
	<cyclicmagic:netherbrick_pickaxe>,
	<cyclicmagic:block_workbench>,
	<cyclicmagic:fire_starter>,
]
 as IItemStack[];

for item in itemstoRemoveandHide {
	mods.jei.JEI.removeAndHide(item);
}

//Melter etc
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

//Packager
recipes.addShaped(<cyclicmagic:auto_packager>, [[<ore:dyeLightBlue>, <embers:archaic_circuit>, <ore:dyeLightBlue>],[<ore:craftingTableWood>, <thermalexpansion:frame:64>, <ore:craftingTableWood>], [<ore:dyeLightBlue>, <embers:archaic_circuit>, <ore:dyeLightBlue>]]);

//Builder
recipes.addShaped(<cyclicmagic:builder_pattern>, [[<moreplates:redstone_alloy_plate>, <ore:blockGlassHardened>, <moreplates:redstone_alloy_plate>],[<actuallyadditions:item_crystal:2>, <enderio:item_material>, <actuallyadditions:item_crystal:2>], [<moreplates:redstone_alloy_plate>, <ore:blockGlassHardened>, <moreplates:redstone_alloy_plate>]]);

//anvil
recipes.addShaped(<cyclicmagic:block_anvil>, [[<actuallyadditions:block_crystal:2>, <actuallyadditions:block_crystal:2>, <actuallyadditions:block_crystal:2>],[<advgenerators:iron_wiring>, <ore:circuitAdvanced>, <advgenerators:iron_wiring>], [<techreborn:plates:35>, <techreborn:plates:35>, <techreborn:plates:35>]]);

//Chorus
ManaInfusion.addAlchemy(<cyclicmagic:glowing_chorus>,<minecraft:chorus_fruit>,20000);
BloodAltar.addRecipe(<cyclicmagic:corrupted_chorus>, <minecraft:chorus_fruit>, 3, 5000, 25, 25);

//Users Things
recipes.addShaped(<cyclicmagic:block_user>, [[<moreplates:energetic_alloy_plate>, <rockhounding_chemistry:misc_items:10>, <moreplates:energetic_alloy_plate>],[<ore:circuitBasic>, <enderio:item_material>, <ore:circuitBasic>], [<moreplates:energetic_alloy_plate>, <moreplates:energetic_silver_gear>, <moreplates:energetic_alloy_plate>]]);
recipes.addShaped(<cyclicmagic:block_miner_smart>, [[<moreplates:energetic_silver_plate>, <rockhounding_chemistry:misc_items:10>, <moreplates:energetic_silver_plate>],[<ore:circuitBasic>, <enderio:item_material>, <ore:circuitBasic>], [<moreplates:energetic_silver_plate>, <moreplates:energetic_alloy_gear>, <moreplates:energetic_silver_plate>]]);


##########################################################################################
print("==================== end of cyclic.zs ====================");
