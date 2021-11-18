import crafttweaker.item.IItemStack;
import mods.botania.ElvenTrade;
import mods.astralsorcery.Altar;
import mods.bloodmagic.BloodAltar;
import mods.bloodmagic.AlchemyTable;
import mods.immersiveengineering.Squeezer;

print("==================== loading Deep Mob Learning.zs ====================");
##########################################################################################

val itemstoRemove =
[
	<deepmoblearning:machine_casing>,
	<deepmoblearning:soot_covered_plate>,
	<deepmoblearning:data_model_dragon>,
	<deepmoblearning:data_model_wither>,
	<deepmoblearning:trial_keystone>,
	<deepmoblearning:trial_key>,
	<deepmoblearning:simulation_chamber>,
	<deepmoblearning:glitch_infused_leggings>,
	<deepmoblearning:glitch_infused_sword>,
	<deepmoblearning:glitch_infused_helmet>,
	<deepmoblearning:glitch_infused_chestplate>,
	<deepmoblearning:glitch_infused_boots>,
	<deepmoblearning:extraction_chamber>,
	<deepmoblearningbm:digital_agonizer>,
]
 as IItemStack[];

for item in itemstoRemove {
	recipes.remove(item);
}

<deepmoblearning:machine_casing>.displayName = "Soot-covered Machine Frame";

//No more free Nether Stars
recipes.removeShaped(<minecraft:nether_star>, [[<minecraft:skull:1>, <deepmoblearning:living_matter_extraterrestrial>, <minecraft:skull:1>],[<minecraft:soul_sand>, <minecraft:soul_sand>, <minecraft:soul_sand>], [null, <minecraft:soul_sand>, null]]);



//Sooty Plates
recipes.addShaped(<deepmoblearning:soot_covered_plate>, [[<actuallyadditions:item_misc:10>, <actuallyadditions:item_misc:10>, <actuallyadditions:item_misc:10>],
[<actuallyadditions:item_misc:10>, <ore:tierOnePlate>, <actuallyadditions:item_misc:10>], 
[<actuallyadditions:item_misc:10>, <actuallyadditions:item_misc:10>, <actuallyadditions:item_misc:10>]]);

recipes.addShaped(<deepmoblearning:soot_covered_plate>*2, [[<actuallyadditions:item_misc:10>, <actuallyadditions:item_misc:10>, <actuallyadditions:item_misc:10>],
[<actuallyadditions:item_misc:10>, <ore:tierTwoPlate>, <actuallyadditions:item_misc:10>], 
[<actuallyadditions:item_misc:10>, <actuallyadditions:item_misc:10>, <actuallyadditions:item_misc:10>]]);
//Sooty Casings
recipes.addShaped(<contenttweaker:sooty_block>*4, [[null, <deepmoblearning:soot_covered_plate>, null],[<deepmoblearning:soot_covered_plate>, null, <deepmoblearning:soot_covered_plate>], [null, <deepmoblearning:soot_covered_plate>, null]]);

//Keys
recipes.addShaped(<deepmoblearning:trial_key>, [[null, <mekanism:otherdust>, <minecraft:ender_pearl>],[<mekanism:otherdust>, <arcanearchives:radiant_key>, <mekanism:otherdust>], [<deepmoblearning:soot_covered_redstone>, <mekanism:otherdust>, null]]);

//Extraction Chamber
recipes.addShaped(<deepmoblearning:extraction_chamber>, [[<bloodmagic:blood_rune:1>, <immersiveengineering:material:27>, <bloodmagic:blood_rune:1>],[<moreplates:diamatine_plate>, <deepmoblearning:machine_casing>, <moreplates:diamatine_plate>], [<bloodmagic:blood_rune:1>, <immersiveengineering:metal_decoration0:4>, <bloodmagic:blood_rune:1>]]);

//Agonizer
recipes.addShaped(<deepmoblearningbm:digital_agonizer>, [[<bloodmagic:blood_rune:3>, <bloodarsenal:gem:1>, <bloodmagic:blood_rune:3>],[<moreplates:restonia_gear>, <deepmoblearning:machine_casing>, <moreplates:restonia_gear>], [<bloodmagic:blood_rune:3>, <immersiveengineering:metal_decoration0:5>, <bloodmagic:blood_rune:3>]]);

//Sim Chamber
recipes.addShaped(<deepmoblearning:simulation_chamber>, [[<moreplates:osgloglas_plate>, <actuallyadditions:item_crystal_empowered>, <moreplates:osgloglas_plate>],[<actuallyadditions:item_crystal_empowered>, <deepmoblearning:machine_casing>, <actuallyadditions:item_crystal_empowered>], [<moreplates:osgloglas_plate>, <techreborn:part:2>, <moreplates:osgloglas_plate>]]);


//Pick-a-Matter
//mods.bloodmagic.AlchemyTable.addRecipe(IItemStack output, IItemStack[] inputs, int syphon, int ticks, int minTier);

//Thermal
mods.bloodmagic.AlchemyTable.addRecipe(<deepmoblearning:pristine_matter_thermal_elemental>, [<contenttweaker:pristine_dust>, <ore:dustElemental>], 1000,100,2);

//TF Stuff
mods.bloodmagic.AlchemyTable.addRecipe(<deepmoblearning:pristine_matter_twilight_glacier>, [<contenttweaker:pristine_dust>, <twilightforest:arctic_fur>], 2000,100,1);
mods.bloodmagic.AlchemyTable.addRecipe(<deepmoblearning:pristine_matter_twilight_darkwood>, [<contenttweaker:pristine_dust>, <twilightforest:twilight_log:3>], 2000,100,1);
mods.bloodmagic.AlchemyTable.addRecipe(<deepmoblearning:pristine_matter_twilight_swamp>, [<contenttweaker:pristine_dust>, <minecraft:waterlily>], 2000,100,1);
mods.bloodmagic.AlchemyTable.addRecipe(<deepmoblearning:pristine_matter_twilight_forest>, [<contenttweaker:pristine_dust>, <twilightforest:firefly>], 2000,100,1);


//Pre kill bosses
recipes.addShapeless(<deepmoblearning:data_model_dragon>.withTag({tier: 1, killCount: 1, totalKillCount: 1}), [<deepmoblearning:data_model_blank>,<minecraft:dragon_egg>]);
recipes.addShapeless(<deepmoblearning:data_model_wither>.withTag({tier: 1, killCount: 1, totalKillCount: 1}), [<deepmoblearning:data_model_blank>,<minecraft:nether_star>]);

//Glitch
/*
ElvenTrade.addRecipe([<deepmoblearning:glitch_infused_sword>], [<botania:elementiumsword>,<enderio:item_material:18>,<deepmoblearning:glitch_infused_ingot>*8]);
ElvenTrade.addRecipe([<deepmoblearning:glitch_infused_helmet>], [<botania:elementiumhelm>,<enderio:item_material:18>,<deepmoblearning:glitch_infused_ingot>*5]);
ElvenTrade.addRecipe([<deepmoblearning:glitch_infused_chestplate>], [<botania:elementiumchest>,<enderio:item_material:18>,<deepmoblearning:glitch_infused_ingot>*8]);
ElvenTrade.addRecipe([<deepmoblearning:glitch_infused_leggings>], [<botania:elementiumlegs>,<enderio:item_material:18>,<deepmoblearning:glitch_infused_ingot>*7]);
ElvenTrade.addRecipe([<deepmoblearning:glitch_infused_boots>], [<botania:elementiumboots>,<enderio:item_material:18>,<deepmoblearning:glitch_infused_ingot>*4]);
*/
BloodAltar.addRecipe(<contenttweaker:blood_crystal>, <contenttweaker:pristine_dust>, 2, 10000, 25, 20);

Altar.addAttunementAltarRecipe("mm:shaped/internal/altar/glitchsword",<deepmoblearning:glitch_infused_sword>, 1500, 300, [
	null, null, <deepmoblearning:glitch_infused_ingot>,
	<tconstruct:wide_guard>.withTag({Material: "dragonbone"}).onlyWithTag({Material: "dragonbone"}), <deepmoblearning:glitch_infused_ingot>, null, 
	<contenttweaker:greatwood_handle>, <tconstruct:wide_guard>.withTag({Material: "dragonbone"}).onlyWithTag({Material: "dragonbone"}), null,
	<contenttweaker:blood_crystal>, <contenttweaker:blood_crystal>, <contenttweaker:blood_crystal>, <contenttweaker:blood_crystal>
	]);

Altar.addAttunementAltarRecipe("mm:shaped/internal/altar/glitchboots",<deepmoblearning:glitch_infused_boots>, 1500, 300, [
	<deepmoblearning:glitch_infused_ingot>, null, <deepmoblearning:glitch_infused_ingot>,
	<deepmoblearning:glitch_infused_ingot>, null, <deepmoblearning:glitch_infused_ingot>,
	null, null, null,
	<contenttweaker:blood_crystal>, <contenttweaker:blood_crystal>, <contenttweaker:blood_crystal>, <contenttweaker:blood_crystal>
	]);

Altar.addAttunementAltarRecipe("mm:shaped/internal/altar/glitchleggingd",<deepmoblearning:glitch_infused_leggings>, 1500, 300, [
	<deepmoblearning:glitch_infused_ingot>, <deepmoblearning:glitch_infused_ingot>, <deepmoblearning:glitch_infused_ingot>,
	<deepmoblearning:glitch_infused_ingot>, null, <deepmoblearning:glitch_infused_ingot>,
	<deepmoblearning:glitch_infused_ingot>, null, <deepmoblearning:glitch_infused_ingot>,
	<contenttweaker:blood_crystal>, <contenttweaker:blood_crystal>, <contenttweaker:blood_crystal>, <contenttweaker:blood_crystal>
	]);

Altar.addAttunementAltarRecipe("mm:shaped/internal/altar/glitchchestplate",<deepmoblearning:glitch_infused_chestplate>, 1500, 300, [
	<deepmoblearning:glitch_infused_ingot>, null, <deepmoblearning:glitch_infused_ingot>,
	<deepmoblearning:glitch_infused_ingot>, <deepmoblearning:glitch_infused_ingot>, <deepmoblearning:glitch_infused_ingot>,
	<deepmoblearning:glitch_infused_ingot>, <deepmoblearning:glitch_infused_ingot>, <deepmoblearning:glitch_infused_ingot>,
	<contenttweaker:blood_crystal>, <contenttweaker:blood_crystal>, <contenttweaker:blood_crystal>, <contenttweaker:blood_crystal>
	]);

Altar.addAttunementAltarRecipe("mm:shaped/internal/altar/glitchhelmet",<deepmoblearning:glitch_infused_helmet>, 1500, 300, [
	<deepmoblearning:glitch_infused_ingot>, <deepmoblearning:glitch_infused_ingot>, <deepmoblearning:glitch_infused_ingot>,
	<deepmoblearning:glitch_infused_ingot>, null, <deepmoblearning:glitch_infused_ingot>,
	null, null, null,
	<contenttweaker:blood_crystal>, <contenttweaker:blood_crystal>, <contenttweaker:blood_crystal>, <contenttweaker:blood_crystal>
	]);
	
Squeezer.addRecipe(<contenttweaker:blank_matter>, <liquid:clay>*250, <deepmoblearning:polymer_clay> * 8, 256);

val MobAlchemy as IItemStack[IItemStack] = {
<deepmoblearning:pristine_matter_zombie>:<minecraft:rotten_flesh>,
<deepmoblearning:pristine_matter_skeleton>:<minecraft:bone>,
<deepmoblearning:pristine_matter_creeper>:<minecraft:gunpowder>,
<deepmoblearning:pristine_matter_spider>:<minecraft:spider_eye>,
<deepmoblearning:pristine_matter_slime>:<minecraft:slime_ball>,
<deepmoblearning:pristine_matter_witch>:<minecraft:redstone>,
<deepmoblearning:pristine_matter_blaze>:<minecraft:blaze_rod>,
} as IItemStack[IItemStack];

for matter, item in MobAlchemy {
	AlchemyTable.addRecipe(matter, [<contenttweaker:blank_matter>,<aetherworks:item_resource>, item,item,item,item], 1000,200,3);
}
##########################################################################################
print("==================== end of Deep Mob Learning.zs ====================");
