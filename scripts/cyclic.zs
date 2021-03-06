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
	<cyclicmagic:uncrafting_block>,
	<cyclicmagic:battery>,
	<cyclicmagic:glowing_chorus>,
	<cyclicmagic:corrupted_chorus>,
]
 as IItemStack[];

for item in itemstoRemove {
	recipes.remove(item);
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


ManaInfusion.addInfusion(<cyclicmagic:glowing_chorus>,<minecraft:chorus_fruit>,10000);
BloodAltar.addRecipe(<cyclicmagic:corrupted_chorus>, <minecraft:chorus_fruit>, 3, 5000, 25, 25);

##########################################################################################
print("==================== end of mods blank.zs ====================");
