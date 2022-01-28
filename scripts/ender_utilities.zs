import crafttweaker.item.IItemStack;
print("==================== loading ender_utilities.zs ====================");
##########################################################################################

val itemstoRemove =
[
<enderutilities:dolly>,
]
 as IItemStack[];

for item in itemstoRemove {
	recipes.remove(item);
}


// Ender Alloys
recipes.remove(<enderutilities:enderpart>);
recipes.addShaped(<enderutilities:enderpart> * 2, [[null, <contenttweaker:inert_ingot>, null],[<contenttweaker:inert_ingot>, <minecraft:ender_pearl>, <contenttweaker:inert_ingot>], [null, <contenttweaker:inert_ingot>, null]]);
recipes.addShaped(<enderutilities:enderpart> * 4, [[null, <contenttweaker:material_part:20>, null],[<contenttweaker:material_part:20>, <minecraft:ender_pearl>, <contenttweaker:material_part:20>], [null, <contenttweaker:material_part:20>, null]]);
//mods.immersiveengineering.ArcFurnace.addRecipe(<enderutilities:enderpart>*2, <contenttweaker:inert_ingot>*2, null, 1000, 2048, [<thermalfoundation:material:163>*2, <minecraft:ender_pearl>], "Alloying");

// Dolly
recipes.addShaped(<enderutilities:dolly>, [[null, null, <enderutilities:enderpart>],[null, null, <enderutilities:enderpart>], [<enderutilities:enderpart>, <enderutilities:enderpart>, <enderutilities:enderpart>]]);

// Handy Bag Upgrade
recipes.addShaped("bagupgraderecipe",
    <enderutilities:handybag:1>, 
    [[<enderutilities:enderpart:21>, <enderutilities:enderpart:2>, <enderutilities:enderpart:21>],
    [<enderutilities:enderpart:2>, <enderutilities:handybag>.marked("bag"), <enderutilities:enderpart:2>], 
    [<minecraft:leather>, <enderutilities:enderpart:2>, <minecraft:leather>]],
    
	function(out, ins, cInfo) {
	    return out.withTag(ins.bag.tag);
    }, null);

// Handy Chests Upgrade
recipes.remove(<enderutilities:storage_0:6>);
recipes.addShaped(<enderutilities:storage_0:6>, [[<enderutilities:enderpart:2>, <ore:chest>, <enderutilities:enderpart:2>],[<enderutilities:enderpart:2>, <ore:chest>, <enderutilities:enderpart:2>], [<minecraft:piston>, <enderutilities:enderpart:10>, <minecraft:piston>]]);
recipes.addShaped(<enderutilities:storage_0:6>, [[<enderutilities:enderpart:2>, <enderutilities:storage_0:5>, <enderutilities:enderpart:2>], [<minecraft:piston>, <enderutilities:enderpart:10>, <minecraft:piston>]]);
recipes.addShaped(<enderutilities:storage_0:5>, [[<enderutilities:enderpart:1>, <enderutilities:storage_0:4>, <enderutilities:enderpart:1>], [<minecraft:piston>, <enderutilities:enderpart:10>, <minecraft:piston>]]);
recipes.addShaped(<enderutilities:storage_0:4>, [[<enderutilities:enderpart>, <enderutilities:storage_0:3>, <enderutilities:enderpart>], [<minecraft:piston>, <enderutilities:enderpart:10>, <minecraft:piston>]]);

##########################################################################################
print("==================== end of ender_utilities.zs ====================");
