##########################################################################################
#priority 100
import crafttweaker.item.IItemStack;
import mods.jei.JEI.removeAndHide as rh;
import mods.jaopca.JAOPCA;
print("==================== loading mods add-recipes-temp.zs ====================");
##########################################################################################

### REMOVE RECIPES ###

val recipestoRemove =
[
<actuallyadditions:block_giant_chest_large>,
<actuallyadditions:block_giant_chest_medium>,
<actuallyadditions:block_giant_chest>,
<actuallyadditions:block_misc:5>,
<actuallyadditions:block_misc:9>,
//<actuallyadditions:item_chest_to_crate_upgrade>,
//<actuallyadditions:item_medium_to_large_crate_upgrade>,
//<actuallyadditions:item_small_to_medium_crate_upgrade>,
<bloodmagic:altar>,
<chisel:block_charcoal2:1>,
<compactmachines3:fieldprojector>,
<compactmachines3:psd>,
<embers:mech_core>,
<enderio:item_material:22>,
<immersiveengineering:stone_decoration:1>,
<immersiveengineering:stone_decoration:2>,
<libvulpes:structuremachine>,
<mekanism:basicblock:3>,
<mekanism:basicblock:8>,
<naturescompass:naturescompass>,
<rockhounding_chemistry:misc_blocks_a:11>,
<tcomplement:alloy_tank>,
<tcomplement:storage>,
<tconstruct:soil>,
<thermalexpansion:frame:64>,
<thermalexpansion:frame>,
<thermalexpansion:tank>,
<thermalfoundation:material:100>,
<thermalfoundation:material:97>,
<thermalfoundation:material:98>,
<thermalfoundation:material:99>,
<thermalfoundation:storage_resource:1>,
<woot:stygianironore>,
<libvulpes:productrod:1>,
<immersiveengineering:material:1>,
<appliedenergistics2:controller>,
<appliedenergistics2:energy_acceptor>,
<waystones:bound_scroll>,
<waystones:return_scroll>,
<immersiveengineering:metal_decoration0:3>,
<immersiveengineering:metal_decoration0:4>,
<immersiveengineering:metal_decoration0:5>,
<immersiveengineering:metal_decoration0:6>,
<immersiveengineering:metal_decoration0:7>,
<advgenerators:iron_frame>,
<enderio:item_material:10>,
<enderio:item_material:9>,
<mysticalagriculture:crafting:32>,
<rftools:machine_frame>,
<botania:pool>,
<immersiveengineering:material:2>,
<jaopca:item_gearsyrmorite>,
<thermalfoundation:material:24>,
<thermalfoundation:material:25>,
<chisel:voidstone>,
<techreborn:dust:12>,
<techreborn:machine_frame>,
<immersiveengineering:material:3>,
<mekanism:machineblock2:11>,
<nuclearcraft:part:10>,
<actuallyadditions:item_bag>,
<bonsaitrees:bonsaipot:1>,
<translocators:translocator_part:1>,
<translocators:translocator_part>,
<enderio:item_material:66>,
<nuclearcraft:alloy_furnace_idle>,
<mekanism:machineblock:8>,
<actuallyadditions:block_leaf_generator>,
<modularmachinery:itemmodularium>,
<environmentaltech:litherite_crystal>,
<rockhounding_chemistry:misc_blocks_a:13>,
<minecraft:gunpowder>,
<chisel:chisel_diamond>,
<buildinggadgets:templatemanager>,
<buildinggadgets:copypastetool>,
<agricraft:crop_sticks>,
<jaopca:item_sticksyrmorite>,
<jaopca:item_stickbrass>,
<jaopca:item_stickardite>,
<jaopca:item_stickmanasteel>,
<actuallyadditions:item_misc:7>,
<actuallyadditions:item_misc:8>,
<libvulpes:productrod:10>,
<libvulpes:productrod:7>,
<libvulpes:productrod:4>,
<fossil:scarab_pickaxe>,
<jaopca:item_stickhydronalium>,
<jaopca:item_stickdarksteel>,
<advancedrocketry:misc:1>,
]
 as IItemStack[];

for item in recipestoRemove {
	recipes.remove(item);
}


val itemstoRemove =
[
<tconstruct:toolforge>,
<conarm:armorforge>,
<appliedenergistics2:material:40>,
<thermalfoundation:material:22>,
<thermalfoundation:material:23>,
<libvulpes:productrod:6>,
<woot:stygianirondust>,
<immersiveengineering:stone_decoration_slab:10>,
<conarm:armorstation>,
<conarm:armorforge>,
<bonsaitrees:bonsaipot>,
/*
<jaopca:block_sheetmetalgold>,
<jaopca:block_sheetmetalaluminium>,
<jaopca:block_sheetmetalnickel>,
<jaopca:block_sheetmetallead>,
<jaopca:block_sheetmetalsilver>,
<jaopca:block_sheetmetaliron>,
*/
<mysticalworld:iron_dust_tiny>,
<mysticalworld:gold_dust_tiny>,
<mysticalworld:copper_dust_tiny>,
<mysticalworld:silver_dust_tiny>,
<embers:ingot_aluminum>,
<openblocks:generic:4>,
<enderio:block_simple_crafter>,
<enderio:block_simple_wired_charger>,
<enderio:block_simple_sag_mill>,
<enderio:block_simple_stirling_generator>,
<enderio:block_simple_alloy_smelter>,
<enderio:block_simple_furnace>,
<enderio:block_decoration3:1>,
<enderio:block_decoration3:2>,
<enderio:block_decoration3:4>,
<enderio:item_material:69>,
<enderio:item_material>,
<enderio:item_material:52>,
<enderio:item_material:51>,
<immersiveengineering:metal:15>,
<immersiveengineering:metal:16>,
<extendedcrafting:handheld_table>,
<techreborn:omnitool>,
<threng:machine:2>,
<actuallyadditions:block_grinder>,
<actuallyadditions:block_grinder_double>,
<additionalcompression:string_compressed>,
]
 as IItemStack[];

for item in itemstoRemove {
	mods.jei.JEI.removeAndHide(item);
}



recipes.removeShaped(<minecraft:bread>, [[<natura:materials>, <natura:materials>, <natura:materials>]]);
recipes.removeShaped(<minecraft:bread>, [[<minecraft:wheat>, <minecraft:wheat>, <minecraft:wheat>]]);
recipes.removeShaped(<minecraft:paper> * 6, [[<ore:dustWood>, <ore:dustWood>, <ore:dustWood>]]);
//-----------------just jei things
<minecraft:quartz>.displayName = "Quartz";

//mods.jei.JEI.addItem(<tconstruct:toolforge>);

mods.jei.JEI.addItem(<tconstruct:toolforge>.withTag({textureBlock: {id: "tconstruct:metal", Count: 1 as byte, Damage: 4 as short}}));
mods.jei.JEI.addItem(<conarm:armorforge>.withTag({textureBlock: {id: "tconstruct:metal", Count: 1 as byte, Damage: 3 as short}}));
mods.jei.JEI.addItem(<tconstruct:pickaxe>.withTag({StatsOriginal: {AttackSpeedMultiplier: 1.0 as float, MiningSpeed: 20.025 as float, FreeModifiers: 3, Durability: 7251, HarvestLevel: 4, Attack: 11.2725 as float}, display: {Name: "eXcavator"}, Stats: {AttackSpeedMultiplier: 1.0 as float, MiningSpeed: 35.972034 as float, FreeModifiers: 61, Durability: 7251, HarvestLevel: 4, Attack: 11.2725 as float}, Special: {Categories: ["tool", "harvest", "aoe"]}, TinkerData: {UsedModifiers: 6, Materials: ["ma.supremium", "ma.supremium", "ma.supremium"], Modifiers: ["toolleveling", "oreexcavate", "haste", "creative"]}, Modifiers: [{identifier: "prosperous", color: -3932160, level: 1}, {identifier: "duritos", color: -3932160, level: 1}, {identifier: "toolleveling", color: 16777215, level: 1}, {identifier: "oreexcavate", current: 25, color: 13395456, level: 1, max: 25, extraInfo: "24 / 25"}, {identifier: "haste", current: 250, color: 9502720, level: 5, max: 250, extraInfo: "249 / 250"}, {identifier: "creative", color: 0, level: 64}], Traits: ["prosperous", "duritos", "toolleveling"]}));
//mods.jei.JEI.addItem(<rockhounding_chemistry:machines_e:1>);
//mods.jei.JEI.addDescription(<immersiveengineering:stone_decoration:1>,"Your first Steel is made in the High Oven");
<immersiveengineering:stone_decoration:1>.addTooltip(format.darkRed("Your first Steel is made in the High Oven"));
mods.jei.JEI.hideCategory("Painter");
mods.jei.JEI.hideCategory("mekanism.combiner");
mods.jei.JEI.hideCategory("EIOWC");
mods.jei.JEI.hideCategory("EIOWO");
mods.jei.JEI.hideCategory("thermalexpansion.factorizer_combine");
mods.jei.JEI.hideCategory("thermalexpansion.factorizer_split");
mods.jei.JEI.hideCategory("EIOTank");

### ADD ORE DICs ###

val slimyMoss = <ore:slimyMoss>;
slimyMoss.add(<tconstruct:materials:18>);
slimyMoss.add(<thebetweenlands:items_plant_drop:30>);
slimyMoss.add(<twilightforest:twilight_plant>);
slimyMoss.add(<thebetweenlands:items_crushed:27>);
slimyMoss.add(<thebetweenlands:items_plant_drop:42>);
slimyMoss.add(<thebetweenlands:items_plant_drop:29>);
slimyMoss.add(<thebetweenlands:items_crushed:55>);
slimyMoss.add(<thebetweenlands:items_crushed:38>);
slimyMoss.add(<thebetweenlands:edge_moss>);
slimyMoss.add(<thebetweenlands:cave_moss>);
slimyMoss.add(<thebetweenlands:moss>);
slimyMoss.add(<thebetweenlands:edge_moss>);



### Add recipes ###
recipes.addShapeless(<minecraft:gunpowder>, [<ore:dustCharcoal>,<ore:dustSulfur>,<ore:dustNiter>,<ore:dustNiter>]);
recipes.addShaped(<minecraft:gunpowder> * 6, [[<mysticalagriculture:creeper_essence>, <mysticalagriculture:creeper_essence>, <mysticalagriculture:creeper_essence>],[null, null, null], [null, null, null]]);
recipes.addShaped(<minecraft:gunpowder> * 15, [[<techreborn:uumatter>, <techreborn:uumatter>, <techreborn:uumatter>],[<techreborn:uumatter>, null, null], [<techreborn:uumatter>, <techreborn:uumatter>, <techreborn:uumatter>]]);


recipes.addShapeless(<tconstruct:soil> * 2, [<embers:blend_caminite>,<embers:blend_caminite>,<minecraft:gravel>,<ore:sand>]);
recipes.addShaped(<immersiveengineering:stone_decoration:2>, [[<thermalfoundation:material:352>],[<tcomplement:scorched_block:3>], [<embers:shard_ember>]]);
recipes.addShaped(<tcomplement:materials:1> * 8, [[<embers:brick_caminite>, <embers:brick_caminite>, <embers:brick_caminite>],[<embers:brick_caminite>, <embers:dust_ember>, <embers:brick_caminite>], [<embers:brick_caminite>, <embers:brick_caminite>, <embers:brick_caminite>]]);


recipes.addShapedMirrored(<compactmachines3:fieldprojector>, [[<randomthings:ingredient:7>, <randomthings:ingredient:7>, <randomthings:ingredient:7>],[<randomthings:ingredient:7>, <randomthings:advancedredstonetorch_on>, <tconstruct:pan_head>.withTag({Material: "copper"})], [<embers:block_caminite_brick_slab>, <embers:block_caminite_brick_slab>, <embers:block_caminite_brick_slab>]]);


recipes.addShapeless(<minecraft:melon> * 9, [<minecraft:melon_block>]);
recipes.addShapeless(<minecraft:paper> * 3, [<questbook:itemquestbook>]);

//recipes.remove(<thermalexpansion:reservoir>);
//recipes.addShaped(<thermalexpansion:reservoir>, [[null, <thermalfoundation:material:321>, null],[<thermalfoundation:material:320>, <forge:bucketfilled>.withTag({FluidName: "gold", Amount: 1000}), <thermalfoundation:material:320>], [null, <thermalfoundation:material:512>, null]]);

recipes.addShapeless(<minecraft:string>, [<natura:materials:3>,<natura:materials:3>,<natura:materials:3>]);

recipes.addShaped(<advgenerators:iron_frame> * 2, [[<immersiveengineering:material:1>, <immersiveengineering:material:1>, <immersiveengineering:material:1>],[<immersiveengineering:material:1>, null, <immersiveengineering:material:1>], [<immersiveengineering:material:1>, <immersiveengineering:material:1>, <immersiveengineering:material:1>]]);

recipes.addShapeless(<twilightforest:steeleaf_ingot> * 6, [<twilightforest:steeleaf_chestplate>]);
recipes.addShapeless(<twilightforest:steeleaf_ingot> * 2, [<twilightforest:steeleaf_boots>]);
recipes.addShapeless(<twilightforest:steeleaf_ingot> * 5, [<twilightforest:steeleaf_leggings>]);
recipes.addShapeless(<twilightforest:steeleaf_ingot> * 3, [<twilightforest:steeleaf_helmet>]);

recipes.addShaped(<translocators:translocator_part:1> * 2, [[<moreplates:energetic_silver_plate>, <enderutilities:enderpart>, <moreplates:energetic_silver_plate>],[<enderutilities:enderpart>, <minecraft:piston>, <enderutilities:enderpart>], [<moreplates:energetic_silver_plate>, <enderutilities:enderpart>, <moreplates:energetic_silver_plate>]]);
recipes.addShaped(<translocators:translocator_part> * 2, [[<moreplates:energetic_alloy_plate>, <enderutilities:enderpart>, <moreplates:energetic_alloy_plate>],[<enderutilities:enderpart>, <minecraft:piston>, <enderutilities:enderpart>], [<moreplates:energetic_alloy_plate>, <enderutilities:enderpart>, <moreplates:energetic_alloy_plate>]]);

<translocators:translocator_part>.addTooltip("Hold Shift to see available modifiers");
<translocators:translocator_part:1>.addTooltip("Hold Shift to see available modifiers");
<translocators:translocator_part>.addShiftTooltip((format.yellow("- Add Glowstone to increase transfer speed\n"))+(format.red("- Add Redstone to enable toggling in/output\n"))+(format.gray("- Add Iron to emit a signal when input is full of filtered item\n"))+(format.aqua("- Add a Diamond Nugget to enable fine tuning of filter supply and demand")));
<translocators:translocator_part:1>.addShiftTooltip((format.yellow("- Add Glowstone to increase transfer speed\n"))+(format.red("- Add Redstone to enable toggling in/output\n"))+(format.gray("- Add Iron to emit a signal when input is full of filtered item\n"))+(format.aqua("- Add a Diamond Nugget to enable fine tuning of filter supply and demand")));

//inert block
recipes.addShaped(<contenttweaker:sub_block_holder_0:1>, [[<contenttweaker:inert_ingot>, <contenttweaker:inert_ingot>, <contenttweaker:inert_ingot>],[<contenttweaker:inert_ingot>, <contenttweaker:inert_ingot>, <contenttweaker:inert_ingot>], [<contenttweaker:inert_ingot>, <contenttweaker:inert_ingot>, <contenttweaker:inert_ingot>]]);
recipes.addShapeless(<contenttweaker:inert_ingot> * 9, [<contenttweaker:sub_block_holder_0:1>]);

//tough alloy
recipes.addShaped(<contenttweaker:sub_block_holder_0:8>, [[<nuclearcraft:alloy:1>, <nuclearcraft:alloy:1>, <nuclearcraft:alloy:1>],[<nuclearcraft:alloy:1>, <nuclearcraft:alloy:1>, <nuclearcraft:alloy:1>], [<nuclearcraft:alloy:1>, <nuclearcraft:alloy:1>, <nuclearcraft:alloy:1>]]);
recipes.addShapeless(<nuclearcraft:alloy:1> * 9, [<contenttweaker:sub_block_holder_0:8>]);

//crop sticks
recipes.addShaped(<agricraft:crop_sticks> * 4, [[<immersiveengineering:material>, <immersiveengineering:material>],[<immersiveengineering:material>, <immersiveengineering:material>]]);


recipes.addShaped(<minecraft:end_stone>, [[<minecraft:stone>, <minecraft:stone>, <minecraft:stone>],[<minecraft:stone>, <minecraft:skull:5>.reuse(), <minecraft:stone>], [<minecraft:stone>, <minecraft:stone>, <minecraft:stone>]]);
recipes.addShaped(<minecraft:hopper>, [[<minecraft:iron_ingot>, null, <minecraft:iron_ingot>],[<minecraft:iron_ingot>, <tconstruct:wooden_hopper>, <minecraft:iron_ingot>],[null, <minecraft:iron_ingot>, null]]);

//trav sack
recipes.addShaped(<actuallyadditions:item_bag>, [[<mysticalagriculture:crafting:23>, <minecraft:leather>, <mysticalagriculture:crafting:23>],[<mysticalagriculture:crafting:23>, <actuallyadditions:block_crystal:3>, <mysticalagriculture:crafting:23>], [<minecraft:leather>, <tconstruct:tough_tool_rod>.withTag({Material: "treatedwood"}), <minecraft:leather>]]);

//upgrade chisel
recipes.addShaped(<chisel:chisel_diamond>, [[null, <minecraft:diamond>],[<chisel:chisel_iron>, null]]);

//copy paste
recipes.addShaped(<buildinggadgets:templatemanager>, [[<thermalfoundation:material:353>, <minecraft:redstone>, <thermalfoundation:material:353>],[<minecraft:emerald>, <techreborn:machine_frame>, <minecraft:emerald>], [<thermalfoundation:material:353>, <minecraft:dye:4>, <thermalfoundation:material:353>]]);
recipes.addShaped(<buildinggadgets:copypastetool>, [[<techreborn:plates:35>, <minecraft:redstone>, <techreborn:plates:35>],[<minecraft:emerald>, <immersiveengineering:material:26>, <minecraft:emerald>], [<techreborn:plates:35>, <minecraft:dye:4>, <techreborn:plates:35>]]);


recipes.remove(<nuclearcraft:dominos>);
mods.extendedcrafting.TableCrafting.addShaped(<nuclearcraft:dominos>, [
    [<actuallyadditions:item_misc:4>, <actuallyadditions:item_misc:4>, <actuallyadditions:item_misc:4>, <actuallyadditions:item_misc:4>, <actuallyadditions:item_misc:4>],
    [<actuallyadditions:item_misc:4>, <ore:listAllporkcooked>, <ore:mushroomAny>, <ore:listAllbeefcooked>, <actuallyadditions:item_misc:4>],
    [<actuallyadditions:item_misc:4>, <ore:mushroomAny>, <ore:listAllchickencooked>, <ore:mushroomAny>, <actuallyadditions:item_misc:4>],
    [<actuallyadditions:item_misc:4>, <ore:listAllbeefcooked>, <ore:mushroomAny>, <ore:listAllporkcooked>, <actuallyadditions:item_misc:4>],
    [<actuallyadditions:item_misc:4>, <actuallyadditions:item_misc:4>, <actuallyadditions:item_misc:4>, <actuallyadditions:item_misc:4>, <actuallyadditions:item_misc:4>]
]);  

//Furnace
furnace.addRecipe(<chisel:energizedvoidstone:2>, <chisel:energizedvoidstone>, 1.0);

mods.inworldcrafting.ExplosionCrafting.explodeItemRecipe(<minecraft:ender_pearl>, <enderore:dust_ender>, 75);
mods.inworldcrafting.FluidToItem.transform(<contenttweaker:activatedaspectussilver>, <liquid:astralsorcery.liquidstarlight>, [<embers:aspectus_silver>], true);
mods.inworldcrafting.FluidToItem.transform(<contenttweaker:activatedaspectuscopper>, <liquid:astralsorcery.liquidstarlight>, [<embers:aspectus_copper>], true);


<ore:plateVoid>.remove(<moreplates:void_plate>);

<ore:dustWood>.add(<techreborn:dust:46>);
<ore:dustWheat>.addAll(<ore:foodFlour>);
<minecraft:snowball>.maxStackSize = 64;
<minecraft:ender_pearl>.maxStackSize = 64;


//mods.agricraft.CropProduct.add(<agricraft:agri_seed>.withTag({agri_seed: "resource:jaslumine_plant"}), <jaopca:item_dusttinyaluminium>, 10);

##########################################################################################
print("==================== end of mods add-recipes-temp.zs ====================");
