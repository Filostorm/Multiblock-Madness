import crafttweaker.item.IItemStack;
import mods.advancedrocketry.Crystallizer;
import mods.rockhounding_chemistry.PullingCrucible;
import mods.advancedrocketry.PrecisionAssembler;

print("==================== loading mods enviromental tech.zs ====================");
##########################################################################################

val itemstoRemove =
[
<environmentaltech:void_res_miner_cont_1>,
<environmentaltech:void_res_miner_cont_2>,
<environmentaltech:void_res_miner_cont_3>,
<environmentaltech:void_res_miner_cont_4>,
<environmentaltech:void_res_miner_cont_5>,
<environmentaltech:void_res_miner_cont_6>,
<environmentaltech:void_botanic_miner_cont_1>,
<environmentaltech:void_botanic_miner_cont_2>,
<environmentaltech:void_botanic_miner_cont_3>,
<environmentaltech:void_botanic_miner_cont_4>,
<environmentaltech:void_botanic_miner_cont_6>,
<environmentaltech:void_botanic_miner_cont_5>,
<environmentaltech:laser_core>,
//<etlunar:lunarvoltaic_cell>,
<environmentaltech:connector>,
]
 as IItemStack[];

for item in itemstoRemove {
	recipes.remove(item);
}

//laser core
recipes.addShaped(<environmentaltech:laser_core>, [[<advgenerators:iron_frame>, <threng:material:5>, <advgenerators:iron_frame>],[<environmentaltech:connector>, <threng:material:5>, <environmentaltech:connector>], [<advgenerators:iron_frame>, <threng:material:5>, <advgenerators:iron_frame>]]);
recipes.addShaped(<environmentaltech:laser_core>*4, [[<advgenerators:iron_frame>, <rockhounding_chemistry:alloy_items_gems:1>, <advgenerators:iron_frame>],[<environmentaltech:connector>, <rockhounding_chemistry:alloy_items_gems:1>, <environmentaltech:connector>], [<advgenerators:iron_frame>, <rockhounding_chemistry:alloy_items_gems:1>, <advgenerators:iron_frame>]]);

/* Lunar Biz
//lunarvoltaic cell
recipes.addShaped(<etlunar:lunarvoltaic_cell>, [[null, <threng:material:1>, null],[<threng:material:1>, <extendedcrafting:material:2>, <threng:material:1>], [null, <threng:material:1>, null]]);
*/
//Litherite
Crystallizer.addRecipe(<environmentaltech:litherite_crystal>, 1200, 10000, <thermalfoundation:material:1028>, <actuallyadditions:item_crystal_empowered:4>); 
PullingCrucible.add(<actuallyadditions:item_crystal_empowered:4>, <thermalfoundation:material:1028>, <environmentaltech:litherite_crystal>*4);

val MinerTooltip =
[
<environmentaltech:void_ore_miner_cont_1>,
<environmentaltech:void_ore_miner_cont_2>,
<environmentaltech:void_ore_miner_cont_3>,
<environmentaltech:void_ore_miner_cont_4>,
<environmentaltech:void_ore_miner_cont_5>,
<environmentaltech:void_ore_miner_cont_6>,
<environmentaltech:void_res_miner_cont_1>,
<environmentaltech:void_res_miner_cont_2>,
<environmentaltech:void_res_miner_cont_3>,
<environmentaltech:void_res_miner_cont_4>,
<environmentaltech:void_res_miner_cont_5>,
<environmentaltech:void_res_miner_cont_6>,
<environmentaltech:void_botanic_miner_cont_1>,
<environmentaltech:void_botanic_miner_cont_2>,
<environmentaltech:void_botanic_miner_cont_3>,
<environmentaltech:void_botanic_miner_cont_4>,
<environmentaltech:void_botanic_miner_cont_6>,
<environmentaltech:void_botanic_miner_cont_5>,
]
 as IItemStack[];

for item in MinerTooltip {
item.addTooltip(format.green("Sneak-right click to change modes"));
}


PrecisionAssembler.addRecipe(<environmentaltech:connector>, 2400, 25000, <techreborn:part:28>*4, <moreplates:redstone_alloy_plate>);
##########################################################################################
print("==================== end of mods enviromental tech.zs ====================");
