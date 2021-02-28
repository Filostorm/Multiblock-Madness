import crafttweaker.item.IItemStack;
print("==================== loading mods blank.zs ====================");
##########################################################################################

val itemstoRemove =
[
	<cyclicmagic:solidifier>,
	<cyclicmagic:melter>,
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
##########################################################################################
print("==================== end of mods blank.zs ====================");
