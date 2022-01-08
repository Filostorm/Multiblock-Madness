
import crafttweaker.item.IItemStack;
import mods.techreborn.blastFurnace;
import mods.nuclearcraft.IngotFormer;
import mods.nuclearcraft.Infuser;
print("==================== loading nuclearcraft.zs ====================");
##########################################################################################

val itemstoRemove =
[
<nuclearcraft:manufactory>,
<nuclearcraft:alloy_furnace>,
<nuclearcraft:part:10>,
<nuclearcraft:part:4>,
<nuclearcraft:part:3>,
<nuclearcraft:part:2>
]
 as IItemStack[];

for item in itemstoRemove {
	recipes.remove(item);
}


<nuclearcraft:fission_irradiator>.addTooltip(format.green("Refer to the Nuclear Engineering chapter"));

//sink
recipes.addShaped(<cookingforblockheads:sink>, [[<thermalfoundation:material:32>, <thermalfoundation:material:32>, <thermalfoundation:material:32>],[<minecraft:hardened_clay>, <nuclearcraft:water_source_compact>, <minecraft:hardened_clay>], [<minecraft:hardened_clay>, <minecraft:hardened_clay>, <minecraft:hardened_clay>]]);


# [Steel Chassis] from [Simple Machine Chassis][+3]
craft.remake(<nuclearcraft:part:12>, ["pretty",
  "╱ □ ╱",
  "п S п",
  "╱ □ ╱"], {
  "╱": <ore:stickTough> | <ore:rodTough>, # Tough Rod
  "□": <ore:plateElectricalSteel>,        # Electrical Steel Plate
  "п": <ore:plateTitaniumAluminide>,      # Titanium Aluminide Plate
  "S": <ore:itemSimpleMachineChassi>,     # Simple Machine Chassis
});

##Manufactory
##------------

recipes.addShaped(<nuclearcraft:manufactory>, [[<thermalfoundation:material:323>, <minecraft:piston>, <thermalfoundation:material:323>],[<minecraft:flint>, <nuclearcraft:part:10>, <minecraft:flint>], [<thermalfoundation:material:323>, <nuclearcraft:part:4>, <thermalfoundation:material:323>]]);

recipes.addShaped(<contenttweaker:plating_basic> * 4, [[null, <nuclearcraft:part>, null],[<nuclearcraft:part>, null, <nuclearcraft:part>], [null, <nuclearcraft:part>, null]]);
recipes.addShaped(<nuclearcraft:alloy_furnace>, [[<nuclearcraft:part>, <minecraft:redstone>, <nuclearcraft:part>],[<minecraft:brick>, <nuclearcraft:part:10>, <minecraft:brick>], [<nuclearcraft:part>, <nuclearcraft:part:4>, <nuclearcraft:part>]]);

//mods.nuclearcraft.pressurizer.addRecipe([itemInput, itemOutput, @Optional double timeMultiplier, @Optional double powerMultiplier, @Optional double processRadiation]);
//mods.nuclearcraft.pressurizer.addRecipe([<enderore:dust_ender>, <minecraft:ender_pearl>, 5, 10]);

recipes.remove(<nuclearcraft:dominos>);
mods.extendedcrafting.TableCrafting.addShaped(<nuclearcraft:dominos>, [
    [<actuallyadditions:item_misc:4>, <actuallyadditions:item_misc:4>, <actuallyadditions:item_misc:4>, <actuallyadditions:item_misc:4>, <actuallyadditions:item_misc:4>],
    [<actuallyadditions:item_misc:4>, <xlfoodmod:cheese>, <ore:mushroomAny>, <xlfoodmod:sausage>, <actuallyadditions:item_misc:4>],
    [<actuallyadditions:item_misc:4>, <ore:mushroomAny>, <xlfoodmod:bacon>, <ore:mushroomAny>, <actuallyadditions:item_misc:4>],
    [<actuallyadditions:item_misc:4>, <xlfoodmod:sausage>, <ore:mushroomAny>, <xlfoodmod:cheese>, <actuallyadditions:item_misc:4>],
    [<actuallyadditions:item_misc:4>, <actuallyadditions:item_misc:4>, <actuallyadditions:item_misc:4>, <actuallyadditions:item_misc:4>, <actuallyadditions:item_misc:4>]
]);  

//Ender Pearl
IngotFormer.addRecipe(<liquid:ender>*250, <minecraft:ender_pearl>);


blastFurnace.addRecipe(<nuclearcraft:ingot:14>, null, <nuclearcraft:dust:14>, null, 200, 256, 1500);

//Solanoid
recipes.addShaped(<nuclearcraft:part:4> * 2, [[null, <powersuits:powerarmorcomponent>, <immersiveengineering:material:2>],[<powersuits:powerarmorcomponent>, <immersiveengineering:material:2>, <powersuits:powerarmorcomponent>], [<immersiveengineering:material:2>, <powersuits:powerarmorcomponent>, null]]);


//Rad Stuff
Infuser.removeRecipeWithOutput(<nuclearcraft:radaway>);
Infuser.removeRecipeWithOutput(<nuclearcraft:radaway_slow>);
Infuser.addRecipe(<mekanism:polyethene:2>*2, <liquid:radaway>*250, <nuclearcraft:radaway>);
Infuser.addRecipe(<mekanism:polyethene:2>*2, <liquid:radaway_slow>*250, <nuclearcraft:radaway_slow>);

// DU & Elite Plating
recipes.addShaped(<nuclearcraft:part:3>, [[<nuclearcraft:compound:1>, <ore:ingotMagnesiumDiboride>, <nuclearcraft:compound:1>],[<ore:ingotThermoconducting>, <nuclearcraft:part:2>, <ore:ingotThermoconducting>], [<nuclearcraft:compound:1>, <ore:ingotMagnesiumDiboride>, <nuclearcraft:compound:1>]]);
recipes.addShaped(<nuclearcraft:part:2>, [[<mekanism:polyethene:2>, <nuclearcraft:uranium:10>, <mekanism:polyethene:2>],[<nuclearcraft:uranium:10>, <nuclearcraft:part:1>, <nuclearcraft:uranium:10>], [<mekanism:polyethene:2>, <nuclearcraft:uranium:10>, <mekanism:polyethene:2>]]);


//SICSIC
Infuser.addRecipe(<powersuits:powerarmorcomponent:14>*1, <liquid:silicon>*576, <nuclearcraft:part:13>);
Infuser.addRecipe(<powersuits:powerarmorcomponent:14>*1, <liquid:fluidsilicon>*576, <nuclearcraft:part:13>);
blastFurnace.addRecipe(<nuclearcraft:alloy:14>, null, <nuclearcraft:alloy:13>, <nuclearcraft:part:13>, 200, 512, 3000);

##########################################################################################
print("==================== end of nuclearcraft.zs ====================");
