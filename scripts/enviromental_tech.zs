import crafttweaker.item.IItemStack;
import mods.rockhounding_chemistry.PullingCrucible;
import crafttweaker.item.IIngredient;

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
<environmentaltech:laser_lens_crystal>,
<environmentaltech:photovoltaic_cell>,
<environmentaltech:diode>,
]
 as IItemStack[];

for item in itemstoRemove {
	recipes.remove(item);
}

//Diode
recipes.addShaped(<environmentaltech:diode>, [[<advancedrocketry:productplate>, <powersuits:powerarmorcomponent:13>, <advancedrocketry:productplate>],[<advancedrocketry:productplate>, <threng:material:5>, <advancedrocketry:productplate>], [<advancedrocketry:productplate>, <astralsorcery:iteminfusedglass>, <advancedrocketry:productplate>]]);

//laser core
recipes.addShaped(<environmentaltech:laser_core>, [[<advgenerators:iron_frame>, <threng:material:5>, <advgenerators:iron_frame>],[<environmentaltech:connector>, <threng:material:5>, <environmentaltech:connector>], [<advgenerators:iron_frame>, <threng:material:5>, <advgenerators:iron_frame>]]);
recipes.addShaped(<environmentaltech:laser_core>*4, [[<advgenerators:iron_frame>, <rockhounding_chemistry:alloy_items_gems:1>, <advgenerators:iron_frame>],[<environmentaltech:connector>, <rockhounding_chemistry:alloy_items_gems:1>, <environmentaltech:connector>], [<advgenerators:iron_frame>, <rockhounding_chemistry:alloy_items_gems:1>, <advgenerators:iron_frame>]]);

/* Lunar Biz
//lunarvoltaic cell
recipes.addShaped(<etlunar:lunarvoltaic_cell>, [[null, <threng:material:1>, null],[<threng:material:1>, <extendedcrafting:material:2>, <threng:material:1>], [null, <threng:material:1>, null]]);
*/
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

//Photo cell
recipes.addShaped(<environmentaltech:photovoltaic_cell>, [[<mekanismgenerators:solarpanel>, <techreborn:reinforced_glass>, <mekanismgenerators:solarpanel>],[<techreborn:reinforced_glass>, <thermalfoundation:material:327>, <techreborn:reinforced_glass>], [<mekanismgenerators:solarpanel>, <techreborn:reinforced_glass>, <mekanismgenerators:solarpanel>]]);

//Crystal Lens
recipes.addShaped(<environmentaltech:laser_lens_crystal>, [[<environmentaltech:kyronite_crystal>, <environmentaltech:kyronite_crystal>, <environmentaltech:kyronite_crystal>],[<environmentaltech:kyronite_crystal>, <ore:etLaserLens>, <environmentaltech:kyronite_crystal>], [<environmentaltech:kyronite_crystal>, <environmentaltech:kyronite_crystal>, <environmentaltech:kyronite_crystal>]]);



//Start of stuff for making the crystals
val crystals =[
	<environmentaltech:litherite_crystal>,
	<environmentaltech:erodium_crystal>,
	<environmentaltech:kyronite_crystal>,
	<environmentaltech:pladium_crystal>,
	<environmentaltech:ionite_crystal>,
	<environmentaltech:aethium_crystal>,
] as IItemStack[];
for item in crystals {
item.addTooltip(format.gold("Craftable"));
}

//Litherite
PullingCrucible.add(<actuallyadditions:item_crystal_empowered:4>, <thermalfoundation:material:1028>, <environmentaltech:litherite_crystal>*4);

//Tier 3
mods.nuclearcraft.Infuser.addRecipe(<environmentaltech:erodium_crystal>, <liquid:refined_life_essence>*250, <environmentaltech:kyronite_crystal>);

//Tier 4
mods.nuclearcraft.FissionIrradiator.addRecipe(<environmentaltech:kyronite_crystal>, <environmentaltech:pladium_crystal>, 200000, 0, 0.15, 0);

##########################################################################################
print("==================== end of mods enviromental tech.zs ====================");
