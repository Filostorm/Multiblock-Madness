#modloaded woot
import crafttweaker.item.IItemStack;
import mods.tconstruct.Casting;
import mods.artisanworktables.builder.RecipeBuilder;
print("==================== loading woot.zs ====================");
##########################################################################################

val itemstoRemove =
[
<woot:stygianironore>,
<woot:stygianironplate>,
<woot:stygianirondust>,
]
 as IItemStack[];

for item in itemstoRemove {
	recipes.remove(item);
}


<ore:oreStygianiron>.add(<woot:stygianironore>);

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

// Stygian Iron Plates =======================================================================================================================================
recipes.addShaped(<woot:stygianironplate>, [[<ore:artisansHammer>.reuse().transformDamage(5)], [<woot:stygianironingot>], [<woot:stygianironingot>]]);
RecipeBuilder.get("blacksmith")
  .setShapeless([<woot:stygianironingot>])
  .setFluid(<liquid:lava> *50)
  .addTool(<ore:artisansHammer>, 10)
  .addOutput(<woot:stygianironplate>)
  .create();

//ender shard
Casting.addTableRecipe(<woot:endershard>, <botania:quartz:2>, <liquid:ender>, 250, true, 200);
##########################################################################################
print("==================== end of woot.zs ====================");
