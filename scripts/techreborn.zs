import mods.techreborn.rollingMachine;
import crafttweaker.item.IItemStack;

print("==================== loading mods techreborn.zs ====================");
##########################################################################################


val itemstoRemove =
[
<techreborn:grinder>,
<techreborn:chemical_reactor>,
<techreborn:rolling_machine>,
<techreborn:wire_mill>,
<techreborn:cable:2>,
<techreborn:cable:6>,
<techreborn:industrial_blast_furnace>,
]
 as IItemStack[];

for item in itemstoRemove {
	recipes.remove(item);
}

//Grinder
recipes.addShaped(<techreborn:grinder>, [[<twilightforest:steeleaf_ingot>, <twilightforest:steeleaf_ingot>, <twilightforest:steeleaf_ingot>],[<ore:cobblestone>, <techreborn:machine_frame>, <ore:cobblestone>], [null, <ore:circuitBasic>, null]]);
//Chem Reactor
recipes.addShaped(<techreborn:chemical_reactor>, [[<thermalfoundation:material:354>, <ore:circuitAdvanced>, <thermalfoundation:material:354>],[<thermalfoundation:glass:3>, <techreborn:machine_frame:1>, <thermalfoundation:glass:3>], [<thermalfoundation:material:354>, <ore:circuitAdvanced>, <thermalfoundation:material:354>]]);
//Rolling Machine
recipes.addShaped(<techreborn:rolling_machine>, [[<minecraft:piston>, <ore:circuitBasic>, <minecraft:piston>],[<immersiveengineering:metal_decoration0:5>, <techreborn:machine_frame>, <immersiveengineering:metal_decoration0:5>], [<minecraft:piston>, <ore:circuitBasic>, <minecraft:piston>]]);
//Wire Mill
recipes.addShaped(<techreborn:wire_mill>, [[<thaumcraft:plate>, <immersiveengineering:metal_decoration0:4>, <thaumcraft:plate>],[<ore:circuitBasic>, <techreborn:machine_frame>, <ore:circuitBasic>], [<thaumcraft:plate>, <minecraft:piston>, <thaumcraft:plate>]]);

furnace.remove(<techreborn:ingot:19>);
//refined iron
mods.immersiveengineering.ArcFurnace.addRecipe(<techreborn:ingot:19>*2, <minecraft:iron_ingot>, <immersiveengineering:material:7>, 400, 512, [<thebetweenlands:items_misc:27>, <contenttweaker:slatedust>], "Alloying");
mods.immersiveengineering.ArcFurnace.addRecipe(<techreborn:ingot:19>, <minecraft:iron_ingot>, <immersiveengineering:material:7>, 300, 512, [<contenttweaker:slatedust>], "Alloying");

### Assembling Machine ###

//Gold Cable
mods.techreborn.assemblingMachine.addRecipe(<techreborn:cable:6>, <techreborn:cable:2>, <ore:itemRubber>, 100, 100);


### Rolling Machine ###

//heating coils
rollingMachine.removeRecipe(<techreborn:part:15>);
rollingMachine.removeRecipe(<techreborn:part:14>);
rollingMachine.removeRecipe(<techreborn:part:13>);
rollingMachine.addShaped(<techreborn:part:15>*2, [[<contenttweaker:material_part:5>,<contenttweaker:material_part:5>,<contenttweaker:material_part:5>],[<contenttweaker:material_part:5>,null,<contenttweaker:material_part:5>],[<contenttweaker:material_part:5>,<contenttweaker:material_part:5>,<contenttweaker:material_part:5>]]);
rollingMachine.addShaped(<techreborn:part:14>*2, [[<rockhounding_chemistry:alloy_items_tech:22>,<rockhounding_chemistry:alloy_items_tech:22>,<rockhounding_chemistry:alloy_items_tech:22>],[<rockhounding_chemistry:alloy_items_tech:22>,null,<rockhounding_chemistry:alloy_items_tech:22>],[<rockhounding_chemistry:alloy_items_tech:22>,<rockhounding_chemistry:alloy_items_tech:22>,<rockhounding_chemistry:alloy_items_tech:22>]]);


//Terrasteel coil
rollingMachine.addShaped(<contenttweaker:terrasteel_coil>*4, [[<botania:manaresource:4>,<botania:manaresource:4>,<botania:manaresource:4>],[<botania:manaresource:4>,null,<botania:manaresource:4>],[<botania:manaresource:4>,<botania:manaresource:4>,<botania:manaresource:4>]]);


//Constantan Heating Coil
<techreborn:part:13>.displayName = "Constantan Heating Coil";
val ingotConstantan = <ore:ingotConstantan>;
ingotConstantan.add(<rockhounding_chemistry:alloy_items_tech:13>);
mods.techreborn.rollingMachine.addShaped(<techreborn:part:13>*2, [[<ore:ingotConstantan>,<ore:ingotConstantan>,<ore:ingotConstantan>],[<ore:ingotConstantan>,null,<ore:ingotConstantan>],[<ore:ingotConstantan>,<ore:ingotConstantan>,<ore:ingotConstantan>]]);


### Ginder ###
/*Clay Dust
mods.techreborn.grinder.removeRecipe(<techreborn:dust:12>*9);
mods.techreborn.grinder.addRecipe(<techreborn:dust:12>*4, <minecraft:clay>, 300, 4);
mods.techreborn.grinder.addRecipe(<techreborn:dust:12>, <minecraft:clay_ball>, 150, 2);
*/

mods.techreborn.industrialGrinder.addRecipe(<thermalfoundation:material:70>, null, null, null, <randomthings:ingredient:3>, null, <liquid:alchemical_redstone>*500, 200, 512);

### BLAST FURNACE ###
//mods.techreborn.blastFurnace.removeInputRecipe(IIngredient iIngredient)
// 3880 is max heat
##########################################################################################
print("==================== end of mods techreborn.zs ====================");
