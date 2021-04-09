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
<immersiveengineering:stone_decoration:1>,
<immersiveengineering:stone_decoration:2>,
<libvulpes:structuremachine>,
<mekanism:basicblock:3>,
<mekanism:basicblock:8>,
<naturescompass:naturescompass>,
<rockhounding_chemistry:misc_blocks_a:11>,
<tcomplement:alloy_tank>,
<tcomplement:storage>,
<thermalexpansion:tank>,
<thermalfoundation:material:100>,
<thermalfoundation:material:97>,
<thermalfoundation:material:98>,
<thermalfoundation:material:99>,
<thermalfoundation:storage_resource:1>,
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
<actuallyadditions:item_bag>,
<bonsaitrees:bonsaipot:1>,
<translocators:translocator_part:1>,
<translocators:translocator_part>,
<enderio:item_material:66>,
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
<jaopca:item_stickendsteel>,
<advancedrocketry:misc:1>,
<minecraft:iron_bars>,
<enderio:block_dark_iron_bars>,
<enderio:block_end_iron_bars>,
<scannable:scanner>,
<scannable:module_blank>,
<cookingforblockheads:sink>,
<quark:reed_block>,
<quark:sugar_block>,
<thaumadditions:iron_framed_greatwood>,
<openblocks:tank>,
<fluxnetworks:fluxcontroller>,
<powersuits:powerarmorcomponent:4>,
<additionalcompression:rodblaze_compressed:1>,
<iceandfire:blindfold>,
<actuallyadditions:item_helm_obsidian>,
<actuallyadditions:item_chest_obsidian>,
<actuallyadditions:item_pants_obsidian>,
<actuallyadditions:item_boots_obsidian>,
<mekanism:saltblock>,
<tconstruct:materials:19>,
<arcanearchives:radiant_resonator>,
<randomthings:idcard>,
<fluiddrawers:tank>,
<prefab:item_bundle_of_timber>,
<jaopca:item_sticknichrome>,
<jaopca:item_gearsuperalloy>,
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
<tinker_io:fuel_input_machine>,
<tinker_io:ore_crusher>,
<tinker_io:solidfuel>,
<techreborn:alloy_smelter>,
<techreborn:iron_alloy_furnace>,
<techreborn:iron_furnace>,
<techreborn:electric_furnace>,
<additionalcompression:rodblaze_compressed>,
<natura:overworld_seed_bags:1>,
<natura:overworld_seed_bags>,
<natura:seed_bags:2>,
<natura:seed_bags:1>,
<natura:seed_bags>,
<actuallyadditions:item_helm_emerald>,
<actuallyadditions:item_chest_emerald>,
<actuallyadditions:item_pants_emerald>,
<actuallyadditions:item_boots_emerald>,
<jaopca:item_stickstainlesssteel>,
<jaopca:item_gearstainlesssteel>,
<jaopca:item_sticktough>,
]
 as IItemStack[];

for item in itemstoRemove {
	mods.jei.JEI.removeAndHide(item);
}
recipes.removeShaped(<mysticalagriculture:marble_seeds>, 
[[null, <mysticalagriculture:crafting:1>, null],
[<mysticalagriculture:crafting:1>, <mysticalagriculture:crafting:18>, <mysticalagriculture:crafting:1>], 
[null, <mysticalagriculture:crafting:1>, null]]);
recipes.removeShaped(<quark:biotite_block>, [[<quark:biotite>, <quark:biotite>],[<quark:biotite>, <quark:biotite>]]);
recipes.removeShaped(<minecraft:bread>, [[<natura:materials>, <natura:materials>, <natura:materials>]]);
recipes.removeShaped(<minecraft:bread>, [[<minecraft:wheat>, <minecraft:wheat>, <minecraft:wheat>]]);
recipes.removeShaped(<minecraft:paper> * 6, [[<ore:dustWood>, <ore:dustWood>, <ore:dustWood>]]);
//-----------------just jei things
<minecraft:quartz>.displayName = "Quartz";

//mods.jei.JEI.addItem(<tconstruct:toolforge>);

mods.jei.JEI.addItem(<tconstruct:toolforge>.withTag({textureBlock: {id: "tconstruct:metal", Count: 1 as byte, Damage: 4 as short}}));
mods.jei.JEI.addItem(<conarm:armorforge>.withTag({textureBlock: {id: "tconstruct:metal", Count: 1 as byte, Damage: 3 as short}}));
//mods.jei.JEI.addItem(<rockhounding_chemistry:machines_e:1>);
//mods.jei.JEI.addDescription(<immersiveengineering:stone_decoration:1>,"Your first Steel is made in the High Oven");
<immersiveengineering:stone_decoration:1>.addTooltip(format.darkRed("Your first Steel is made in the High Oven"));
<tombstone:crafting_ingredient:3>.addTooltip(format.darkRed("Uncommon drop from Mobs"));
mods.jei.JEI.hideCategory("Painter");
mods.jei.JEI.hideCategory("mekanism.combiner");
mods.jei.JEI.hideCategory("EIOWC");
mods.jei.JEI.hideCategory("EIOWO");
mods.jei.JEI.hideCategory("thermalexpansion.factorizer_combine");
mods.jei.JEI.hideCategory("thermalexpansion.factorizer_split");
mods.jei.JEI.hideCategory("EIOTank");
mods.jei.JEI.hideCategory("tinker_io:smart_output");
mods.jei.JEI.hideCategory("embers.dawnstone_anvil");

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

//salt block
recipes.addShaped(<mekanism:saltblock>, [[<ore:itemSalt>, <ore:itemSalt>],[<ore:itemSalt>, <ore:itemSalt>]]);

//Chest reset
recipes.addShapeless(<minecraft:chest>, [<ore:chestWood>]);

//blindfold
recipes.addShaped(<iceandfire:blindfold>, [[<minecraft:string>, <improvedbackpacks:tanned_leather>, <minecraft:string>]]);

//Id card
recipes.addShapeless(<randomthings:idcard>, [<techreborn:plates:35>,<ore:dyeBlack>]);

//Super Tome
recipes.addShaped(<akashictome:tome>.withTag({"akashictome:data": 
{tconstruct: {ForgeCaps: {"astralsorcery:cap_item_amulet_holder": {AS_Amulet_HolderLeast: -5854321833218265537 as long, AS_Amulet_HolderMost: -3354768958829737557 as long}}, id: "tconstruct:book", Count: 1 as byte, tag: {"akashictome:definedMod": "tconstruct"}, Damage: 0 as short}, 
deepresonance: {ForgeCaps: {"astralsorcery:cap_item_amulet_holder": {}}, id: "deepresonance:dr_manual", Count: 1 as byte, tag: {"akashictome:definedMod": "deepresonance"}, Damage: 0 as short}, 
astralsorcery: {ForgeCaps: {"astralsorcery:cap_item_amulet_holder": {}}, id: "astralsorcery:itemjournal", Count: 1 as byte, tag: {"akashictome:definedMod": "astralsorcery"}, Damage: 0 as short}, 
conarm: {ForgeCaps: {"astralsorcery:cap_item_amulet_holder": {}}, id: "conarm:book", Count: 1 as byte, tag: {"akashictome:definedMod": "conarm"}, Damage: 0 as short}, 
immersiveengineering: {ForgeCaps: {"astralsorcery:cap_item_amulet_holder": {}}, id: "immersiveengineering:tool", Count: 1 as byte, tag: {"akashictome:definedMod": "immersiveengineering"}, Damage: 3 as short}, 
arcanearchives: {ForgeCaps: {"astralsorcery:cap_item_amulet_holder": {}}, id: "arcanearchives:tome_arcana", Count: 1 as byte, tag: {"akashictome:definedMod": "arcanearchives", Book: "arcanearchives:xml/tome.xml"}, Damage: 0 as short}, 
valkyrielib: {ForgeCaps: {"astralsorcery:cap_item_amulet_holder": {}}, id: "valkyrielib:guide", Count: 1 as byte, tag: {"akashictome:definedMod": "valkyrielib"}, Damage: 0 as short}, 
embers: {ForgeCaps: {"astralsorcery:cap_item_amulet_holder": {}}, id: "embers:codex", Count: 1 as byte, tag: {"akashictome:definedMod": "embers"}, Damage: 0 as short}, cfm: {id: "cfm:item_recipe_book", Count: 1 as byte, tag: {"akashictome:definedMod": "cfm"}, Damage: 0 as short}, 
rftools: {ForgeCaps: {"astralsorcery:cap_item_amulet_holder": {}}, id: "rftools:rftools_shape_manual", Count: 1 as byte, tag: {"akashictome:definedMod": "rftools"}, Damage: 0 as short}, 
deepmoblearning: {ForgeCaps: {"astralsorcery:cap_item_amulet_holder": {}}, id: "patchouli:guide_book", Count: 1 as byte, tag: {"akashictome:definedMod": "deepmoblearning", "patchouli:book": "deepmoblearning:book"}, Damage: 0 as short}, 
solcarrot: {id: "solcarrot:food_book", Count: 1 as byte, tag: {"akashictome:definedMod": "solcarrot"}, Damage: 0 as short}, 
rftools1: {ForgeCaps: {"astralsorcery:cap_item_amulet_holder": {}}, id: "rftools:rftools_manual", Count: 1 as byte, tag: {"akashictome:definedMod": "rftools1"}, Damage: 0 as short}, 
extendedcrafting: {ForgeCaps: {"astralsorcery:cap_item_amulet_holder": {}}, id: "extendedcrafting:guide", Count: 1 as byte, tag: {"akashictome:definedMod": "extendedcrafting"}, Damage: 0 as short}, 
botania: {ForgeCaps: {"astralsorcery:cap_item_amulet_holder": {}}, id: "botania:lexicon", Count: 1 as byte, tag: {"akashictome:definedMod": "botania"}, Damage: 0 as short}, 
thaumcraft: {ForgeCaps: {"astralsorcery:cap_item_amulet_holder": {}}, id: "thaumcraft:thaumonomicon", Count: 1 as byte, tag: {"akashictome:definedMod": "thaumcraft"}, Damage: 0 as short}, 
actuallyadditions: {ForgeCaps: {"astralsorcery:cap_item_amulet_holder": {}}, id: "actuallyadditions:item_booklet", Count: 1 as byte, tag: {"akashictome:definedMod": "actuallyadditions"}, Damage: 0 as short}, 
bloodmagic: {ForgeCaps: {"astralsorcery:cap_item_amulet_holder": {}}, id: "guideapi:bloodmagic-guide", Count: 1 as byte, tag: {"akashictome:definedMod": "bloodmagic"}, Damage: 0 as short}, 
twilightforest: {ForgeCaps: {"astralsorcery:cap_item_amulet_holder": {}}, id: "patchouli:guide_book", Count: 1 as byte, tag: {"akashictome:definedMod": "twilightforest", "patchouli:book": "twilightforest:guide"}, Damage: 0 as short}, 
openblocks: {id: "openblocks:info_book", Count: 1 as byte, tag: {"akashictome:definedMod": "openblocks"}, Damage: 0 as short}, 
cyclicmagic: {ForgeCaps: {"astralsorcery:cap_item_amulet_holder": {}}, id: "guideapi:cyclicmagic-guide", Count: 1 as byte, tag: {"akashictome:definedMod": "cyclicmagic"}, Damage: 0 as short}, 
cookingforblockheads: {ForgeCaps: {"astralsorcery:cap_item_amulet_holder": {}}, id: "cookingforblockheads:recipe_book", Count: 1 as byte, tag: {"akashictome:definedMod": "cookingforblockheads"}, Damage: 1 as short}}}), 
[[null, <minecraft:gold_ingot>, null],[<minecraft:gold_ingot>, <ore:bookshelf>, <minecraft:gold_ingot>], [null, <minecraft:gold_ingot>, null]]);

//Broken powersuit recipe
recipes.addShaped(<powersuits:powerarmorcomponent:4>, [[<thermalfoundation:material:327>, <techreborn:part:17>, <thermalfoundation:material:327>],[<powersuits:powerarmorcomponent:12>, <powersuits:powerarmorcomponent:7>, <powersuits:powerarmorcomponent:12>], [<advancedrocketry:jetpack>, null, <advancedrocketry:jetpack>]]);

//Prefab
recipes.addShaped(<prefab:item_bundle_of_timber>, [[<ore:logWood>, <ore:logWood>, <ore:logWood>],[<ore:logWood>, <minecraft:string>, <ore:logWood>], [<ore:logWood>, <ore:logWood>, <ore:logWood>]]);


//Iron Bars
recipes.addShaped(<minecraft:iron_bars> * 8, [[<tconstruct:tool_rod>.withTag({Material: "iron"}), <tconstruct:tool_rod>.withTag({Material: "iron"}), <tconstruct:tool_rod>.withTag({Material: "iron"})], [<tconstruct:tool_rod>.withTag({Material: "iron"}), <tconstruct:tool_rod>.withTag({Material: "iron"}), <tconstruct:tool_rod>.withTag({Material: "iron"})]]);

//The Hacatu Fix
recipes.addShaped(<minecraft:iron_bars> * 8, [[<ore:stickIron>, <ore:stickIron>, <ore:stickIron>], [<ore:stickIron>, <ore:stickIron>, <ore:stickIron>]]);

//Radiant Resonators
recipes.addShaped(<arcanearchives:radiant_resonator>, [[<thermalfoundation:material:33>, <minecraft:iron_bars>, <thermalfoundation:material:33>],[<contenttweaker:greatwood_handle>, <minecraft:water_bucket>, <contenttweaker:greatwood_handle>], [<contenttweaker:greatwood_handle>, null, <contenttweaker:greatwood_handle>]]);
<arcanearchives:radiant_resonator>.addTooltip(format.red("Max 3 per player"));

//dark bars
recipes.addShaped(<enderio:block_dark_iron_bars> * 8, [[<jaopca:item_stickdarksteel>, <jaopca:item_stickdarksteel>, <jaopca:item_stickdarksteel>], [<jaopca:item_stickdarksteel>, <jaopca:item_stickdarksteel>, <jaopca:item_stickdarksteel>]]);
//end bars
recipes.addShaped(<enderio:block_end_iron_bars> * 8, [[<jaopca:item_stickendsteel>, <jaopca:item_stickendsteel>, <jaopca:item_stickendsteel>], [<jaopca:item_stickendsteel>, <jaopca:item_stickendsteel>, <jaopca:item_stickendsteel>]]);

recipes.addShapeless(<minecraft:gunpowder>, [<ore:dustCharcoal>,<ore:dustSulfur>,<ore:dustNiter>,<ore:dustNiter>]);
recipes.addShaped(<minecraft:gunpowder> * 6, [[<mysticalagriculture:creeper_essence>, <mysticalagriculture:creeper_essence>, <mysticalagriculture:creeper_essence>],[null, null, null], [null, null, null]]);
recipes.addShaped(<minecraft:gunpowder> * 15, [[<techreborn:uumatter>, <techreborn:uumatter>, <techreborn:uumatter>],[<techreborn:uumatter>, null, null], [<techreborn:uumatter>, <techreborn:uumatter>, <techreborn:uumatter>]]);


recipes.addShaped(<immersiveengineering:stone_decoration:2>, [[<thermalfoundation:material:352>],[<tcomplement:scorched_block:3>], [<embers:shard_ember>]]);


recipes.addShapedMirrored(<compactmachines3:fieldprojector>, [[<deepmoblearning:soot_covered_plate>, <deepmoblearning:soot_covered_plate>, <deepmoblearning:soot_covered_plate>],[<enderio:item_material:62>, <randomthings:advancedredstonetorch_on>, <deepmoblearning:soot_covered_plate>], [<embers:block_caminite_brick_slab>, <embers:block_caminite_brick_slab>, <embers:block_caminite_brick_slab>]]);
//recipes.addShapedMirrored(<compactmachines3:fieldprojector>, [[<randomthings:ingredient:7>, <randomthings:ingredient:7>, <randomthings:ingredient:7>],[<randomthings:ingredient:7>, <randomthings:advancedredstonetorch_on>, <tconstruct:pan_head>.withTag({Material: "copper"})], [<embers:block_caminite_brick_slab>, <embers:block_caminite_brick_slab>, <embers:block_caminite_brick_slab>]]);

//Fix blaze blocks
recipes.addShapeless(<botania:blazeblock> * 9, [<additionalcompression:rodblaze_compressed:1>]);
recipes.addShaped(<additionalcompression:rodblaze_compressed:1>, [[<botania:blazeblock>, <botania:blazeblock>, <botania:blazeblock>],[<botania:blazeblock>, <botania:blazeblock>, <botania:blazeblock>], [<botania:blazeblock>, <botania:blazeblock>, <botania:blazeblock>]]);
recipes.addShapeless(<additionalcompression:rodblaze_compressed:1> * 9, [<additionalcompression:rodblaze_compressed:2>]);


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
<translocators:translocator_part:1>.addShiftTooltip((format.yellow("- Add Glowstone to increase transfer speed\n"))+(format.red("- Add Redstone to enable toggling in/output")));

//crop sticks
recipes.addShaped(<agricraft:crop_sticks> * 4, [[<immersiveengineering:material>, <immersiveengineering:material>],[<immersiveengineering:material>, <immersiveengineering:material>]]);


recipes.addShaped(<minecraft:end_stone>, [[<minecraft:stone>, <minecraft:stone>, <minecraft:stone>],[<minecraft:stone>, <minecraft:skull:5>.reuse(), <minecraft:stone>], [<minecraft:stone>, <minecraft:stone>, <minecraft:stone>]]);
recipes.addShaped(<minecraft:hopper>, [[<minecraft:iron_ingot>, null, <minecraft:iron_ingot>],[<minecraft:iron_ingot>, <tconstruct:wooden_hopper>, <minecraft:iron_ingot>],[null, <minecraft:iron_ingot>, null]]);


//upgrade chisel
recipes.addShaped(<chisel:chisel_diamond>, [[null, <minecraft:diamond>],[<chisel:chisel_iron>, null]]);

//copy paste
recipes.addShaped(<buildinggadgets:templatemanager>, [[<thermalfoundation:material:353>, <minecraft:redstone>, <thermalfoundation:material:353>],[<minecraft:emerald>, <techreborn:machine_frame>, <minecraft:emerald>], [<thermalfoundation:material:353>, <minecraft:dye:4>, <thermalfoundation:material:353>]]);
recipes.addShaped(<buildinggadgets:copypastetool>, [[<techreborn:plates:35>, <minecraft:redstone>, <techreborn:plates:35>],[<minecraft:emerald>, <immersiveengineering:material:26>, <minecraft:emerald>], [<techreborn:plates:35>, <minecraft:dye:4>, <techreborn:plates:35>]]);




//Furnace
furnace.addRecipe(<chisel:energizedvoidstone:2>, <chisel:energizedvoidstone>, 1.0);

mods.inworldcrafting.ExplosionCrafting.explodeItemRecipe(<minecraft:ender_pearl>, <enderore:dust_ender>, 75);

//scanner
recipes.addShaped(<scannable:scanner>, [[<minecraft:iron_bars>, null, <minecraft:iron_bars>],[<botania:manaresource:1>, <rockhounding_chemistry:misc_items:1>, <botania:manaresource:1>], [<moreplates:conductive_iron_plate>, <embers:ember_detector>, <moreplates:conductive_iron_plate>]]);
recipes.addShaped(<scannable:module_blank> * 3, [[<moreplates:pulsating_iron_plate>, <moreplates:pulsating_iron_plate>, <moreplates:pulsating_iron_plate>],[<enderio:item_material:22>, <minecraft:paper>, <enderio:item_material:22>], [<enderio:item_material:22>, <rockhounding_chemistry:misc_items:1>, <enderio:item_material:22>]]);



//Openblocks tank
recipes.addShaped(<openblocks:tank>, [[<minecraft:obsidian>, <ore:paneGlass>, <minecraft:obsidian>],[<ore:paneGlass>, <ore:paneGlass>, <ore:paneGlass>], [<minecraft:obsidian>, <ore:paneGlass>, <minecraft:obsidian>]]);

//Tank Drawer
recipes.addShaped(<fluiddrawers:tank>, [[<mekanism:basicblock:9>, <mekanism:basicblock:9>, <mekanism:basicblock:9>],[<mekanism:basicblock:9>, <mekanism:machineblock2:11>, <mekanism:basicblock:9>], [<mekanism:basicblock:9>, <mekanism:basicblock:9>, <mekanism:basicblock:9>]]);
recipes.addShaped(<fluiddrawers:tank>, [[<mekanism:basicblock:9>, <mekanism:basicblock:9>, <mekanism:basicblock:9>],[<mekanism:basicblock:9>, <thermalexpansion:tank>, <mekanism:basicblock:9>], [<mekanism:basicblock:9>, <mekanism:basicblock:9>, <mekanism:basicblock:9>]]);


<contenttweaker:purpleprint>.addTooltip(format.lightPurple("Not for Crafting!"));

/* Added by Cyclic
<minecraft:snowball>.maxStackSize = 64;
<minecraft:ender_pearl>.maxStackSize = 64;
recipes.addShapeless(<minecraft:melon> * 9, [<minecraft:melon_block>]);

.displayName = "Constantan Heating Coil";
.addTooltip(format.aqua("Grows from a Celestal Crystal Cluster"));
*/


##########################################################################################
print("==================== end of mods add-recipes-temp.zs ====================");
