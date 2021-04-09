import crafttweaker.item.IItemStack;
print("==================== loading mods woot.zs ====================");
##########################################################################################
/*
val itemstoRemove =
[
]
 as IItemStack[];

for item in itemstoRemove {
	recipes.remove(item);
}
*/

recipes.addShapeless(<botania:quartz:2>, [<minecraft:quartz>,<embers:dust_ember>]);
recipes.addShaped("wootcontrollerrecipe",
    <woot:controller>,

    [
    [<woot:factorybase>, <woot:factorycore:1>, <woot:factorybase>],
    [<woot:factorycore:1>, <woot:endershard>.marked("shard"), <woot:factorycore:1>], 
    [<woot:factorybase>, <woot:factorycore:1>, <woot:factorybase>]
    ],

	function(out, ins, cInfo) {
	    return out.withTag(ins.shard.tag);
    }, null);
recipes.addShaped(<woot:stygianirondust>, [[<techreborn:dust:33>, <thermalfoundation:material:770>, <techreborn:dust:33>],[<thermalfoundation:material:770>, <thermalfoundation:material>, <thermalfoundation:material:770>], [<techreborn:dust:33>, <thermalfoundation:material:770>, <techreborn:dust:33>]]);
recipes.addShaped(<woot:stygianirondust>, [[<thermalfoundation:material:770>, <techreborn:dust:33>, <thermalfoundation:material:770>],[<techreborn:dust:33>, <thermalfoundation:material>, <techreborn:dust:33>], [<thermalfoundation:material:770>, <techreborn:dust:33>, <thermalfoundation:material:770>]]);


<ore:ingotStygianiron>.add(<woot:stygianironingot>);
<ore:plateStygianiron>.add(<woot:stygianironplate>);
<ore:blockStygianiron>.add(<woot:stygianiron>);


##########################################################################################
print("==================== end of mods woot.zs ====================");
