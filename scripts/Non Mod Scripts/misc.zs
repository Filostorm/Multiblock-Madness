##########################################################################################
import crafttweaker.item.IItemStack;
import mods.jei.JEI.removeAndHide as rh;
import mods.jaopca.JAOPCA;
import mods.bloodmagic.TartaricForge;
import crafttweaker.data.IData;
import mods.tconstruct.Melting;
import crafttweaker.formatting.IFormattedText;

#priority 100

print("==================== loading misc.zs ====================");
##########################################################################################

##=======================================================
## GENERAL RECIPE REMOVAL
##=======================================================

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
<scannable:module_blank>,
<cookingforblockheads:sink>,
<thaumadditions:iron_framed_greatwood>,
<openblocks:tank>,
<fluxnetworks:fluxcontroller>,
<powersuits:powerarmorcomponent:4>,
<iceandfire:blindfold>,
<actuallyadditions:item_helm_obsidian>,
<actuallyadditions:item_chest_obsidian>,
<actuallyadditions:item_pants_obsidian>,
<actuallyadditions:item_boots_obsidian>,
<mekanism:saltblock>,
<tconstruct:materials:19>,
<randomthings:idcard>,
<fluiddrawers:tank>,
<prefab:item_bundle_of_timber>,
<jaopca:item_sticknichrome>,
<jaopca:item_gearsuperalloy>,
<actuallyadditions:item_food:4>,
<actuallyadditions:item_food:3>,
<quark:rope>,
<mob_grinding_utils:tank>,
<advancedrocketry:productrod>,
<malisisdoors:rustyladder>,
<cyclicmagic:storage_bag>,
<quark:spruce_trapdoor>,
<quark:birch_trapdoor>,
<quark:dark_oak_trapdoor>,
<quark:acacia_trapdoor>,
<quark:jungle_trapdoor>,
<mysticalworld:assorted_seeds>,
<danknull:dank_null_5>,
<xlfoodmod:chocolate>,
<immersiveposts:metal_rods:2>,
<immersiveposts:metal_rods:7>,
<immersiveposts:metal_rods:4>,
<immersiveposts:metal_rods:3>,
<randomthings:igniter>,
<libvulpes:productrod:4>,
<simplevoidworld:portal>,
<thermalfoundation:material:513>,
<thermalfoundation:material:514>,
<thermalfoundation:material:515>,
<iceandfire:chain>,
<iceandfire:chain_link>,
<extendedcrafting:material:2>,
<jaopca:item_gearthermoconducting>,
<openblocks:xp_shower>,
<aeadditions:terminal.fluid.wireless>
]
 as IItemStack[];

for item in recipestoRemove {
	recipes.remove(item);
}


##=======================================================
## HIDING ITEMS IN JEI
##=======================================================

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
// <embers:ingot_aluminum>,
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
<integrateddynamics:squeezer>,
<integrateddynamics:drying_basin>,
<openblocks:vacuum_hopper>,
<densemetals:dense_adamantine_ore>,
<enderio:item_endergy_conduit:1>,
<enderio:item_endergy_conduit:2>,
<enderio:item_endergy_conduit:3>,
<enderio:item_endergy_conduit:4>,
<enderio:item_endergy_conduit:5>,
<techreborn:chunk_loader>,
<enderio:block_stirling_generator>,
<libvulpes:coalgenerator>,
<rftools:coalgenerator>,
<integrateddynamics:coal_generator>,
<enderio:block_enhanced_combustion_generator>,
<enderio:block_combustion_generator>,
<advgenerators:steam_turbine_controller>,
<advancedrocketry:arcfurnace>,
<advancedrocketry:blastbrick>,
<tinker_io:speedupg>,
<mysticalworld:silver_sword>,
<mysticalworld:copper_sword>,
<immersiveposts:metal_rods>,
<immersiveposts:metal_rods:5>,
<mystgears:gear_wood>,
<appliedenergistics2:material:46>,
<enderio:item_material:28>,
<enderio:item_material:26>,
<enderio:item_material:27>,
<enderio:item_material:30>,
<enderio:item_material:31>,
<enderio:item_material:33>,
<qmd:dust2:3>,
<qmd:dust2:4>,
<botania_tweaks:basic_extended_crafty_crate>,
<botania_tweaks:advanced_extended_crafty_crate>,
<botania_tweaks:elite_extended_crafty_crate>,
<botania_tweaks:ultimate_extended_crafty_crate>,

<immersivetech:stone_decoration>, //Advanced Coke Oven
<immersivetech:stone_decoration_slab>,

<advgenerators:turbine_rotor_gold>,
<advgenerators:turbine_gold>,
<advgenerators:turbine_kit_gold>,
<botania_tweaks:dire_crafty_crate>,
<avaritia:extreme_crafting_table>,

<mekanism:machineblock:2>,
<qmd:ingot>
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
recipes.removeShapeless(<minecraft:dye:1>, [<minecraft:beetroot>]);

// Removing useless small dusts
val duststoRemove =
[
<techreborn:smalldust:56>,
<techreborn:smalldust:63>,
<techreborn:smalldust:64>,
<techreborn:smalldust:65>,
<techreborn:smalldust:69>,
<techreborn:smalldust>,
<techreborn:smalldust:2>,
<techreborn:smalldust:3>,
<techreborn:smalldust:4>,
<techreborn:smalldust:6>,
<techreborn:smalldust:7>,
<techreborn:smalldust:9>,
<techreborn:smalldust:10>,
<techreborn:smalldust:12>,
<techreborn:smalldust:13>,
<techreborn:smalldust:15>,
<techreborn:smalldust:17>,
<techreborn:smalldust:19>,
<techreborn:smalldust:20>,
<techreborn:smalldust:21>,
<techreborn:smalldust:25>,
<techreborn:smalldust:26>,
<techreborn:smalldust:28>,
<techreborn:smalldust:32>,
<techreborn:smalldust:33>,
<techreborn:smalldust:35>,
<techreborn:smalldust:37>,
<techreborn:smalldust:40>,
<techreborn:smalldust:44>,
<techreborn:smalldust:49>,
<techreborn:smalldust:50>,
<techreborn:smalldust:51>
]
 as IItemStack[];

for item in duststoRemove {
	mods.jei.JEI.removeAndHide(item);
}

##=======================================================
## RECIPE CONFLICTS
##=======================================================

//Metal Ladder coflict
recipes.addShaped(<malisisdoors:rustyladder> * 2, [[<minecraft:iron_ingot>, <minecraft:iron_ingot>, <minecraft:iron_ingot>],[null, null, null], [<minecraft:iron_ingot>, <minecraft:iron_ingot>, <minecraft:iron_ingot>]]);

//Trapdoor conflict
recipes.addShaped(<quark:jungle_trapdoor> * 6, [[null, <minecraft:iron_nugget>, null],[<minecraft:planks:3>, <minecraft:planks:3>, <minecraft:planks:3>], [<minecraft:planks:3>, <minecraft:planks:3>, <minecraft:planks:3>]]);
recipes.addShaped(<quark:acacia_trapdoor> * 6, [[null, <minecraft:iron_nugget>, null],[<minecraft:planks:4>, <minecraft:planks:4>, <minecraft:planks:4>], [<minecraft:planks:4>, <minecraft:planks:4>, <minecraft:planks:4>]]);
recipes.addShaped(<quark:dark_oak_trapdoor> * 6, [[null, <minecraft:iron_nugget>, null],[<minecraft:planks:5>, <minecraft:planks:5>, <minecraft:planks:5>], [<minecraft:planks:5>, <minecraft:planks:5>, <minecraft:planks:5>]]);
recipes.addShaped(<quark:birch_trapdoor> * 6, [[null, <minecraft:iron_nugget>, null],[<minecraft:planks:2>, <minecraft:planks:2>, <minecraft:planks:2>], [<minecraft:planks:2>, <minecraft:planks:2>, <minecraft:planks:2>]]);
recipes.addShaped(<quark:spruce_trapdoor> * 6, [[null, <minecraft:iron_nugget>, null],[<minecraft:planks:1>, <minecraft:planks:1>, <minecraft:planks:1>], [<minecraft:planks:1>, <minecraft:planks:1>, <minecraft:planks:1>]]);


##=======================================================
## MISCELLANEOUS RECIPE ADDITIONS
##=======================================================


// Miniaturisation Field Projector
recipes.addShapedMirrored(<compactmachines3:fieldprojector>, [[<deepmoblearning:soot_covered_plate>, <deepmoblearning:soot_covered_plate>, <deepmoblearning:soot_covered_plate>],[<enderio:item_material:62>, <randomthings:advancedredstonetorch_on>, <deepmoblearning:soot_covered_plate>], [<embers:block_caminite_brick_slab>, <embers:block_caminite_brick_slab>, <embers:block_caminite_brick_slab>]]);
//recipes.addShapedMirrored(<compactmachines3:fieldprojector>, [[<randomthings:ingredient:7>, <randomthings:ingredient:7>, <randomthings:ingredient:7>],[<randomthings:ingredient:7>, <randomthings:advancedredstonetorch_on>, <tconstruct:pan_head>.withTag({Material: "copper"})], [<embers:block_caminite_brick_slab>, <embers:block_caminite_brick_slab>, <embers:block_caminite_brick_slab>]]);

//Super Tome
/*mods.jei.JEI.removeAndHide(<akashictome:tome>);
mods.jei.JEI.addItem(<akashictome:tome>.withTag({"akashictome:data": {
	tconstruct: {ForgeCaps: {"astralsorcery:cap_item_amulet_holder": {}}, id: "tconstruct:book", Count: 1 as byte, tag: {"akashictome:definedMod": "tconstruct"}, Damage: 0 as short}, 
	integratedtunnels: {ForgeCaps: {"astralsorcery:cap_item_amulet_holder": {}}, id: "integrateddynamics:on_the_dynamics_of_integration", Count: 1 as byte, tag: {"akashictome:definedMod": "integratedtunnels"}, Damage: 0 as short}, 
	astralsorcery: {ForgeCaps: {"astralsorcery:cap_item_amulet_holder": {}}, id: "astralsorcery:itemjournal", Count: 1 as byte, tag: {"akashictome:definedMod": "astralsorcery"}, Damage: 0 as short}, 
	conarm: {ForgeCaps: {"astralsorcery:cap_item_amulet_holder": {}}, id: "conarm:book", Count: 1 as byte, tag: {"akashictome:definedMod": "conarm"}, Damage: 0 as short}, 
	immersiveengineering: {ForgeCaps: {"astralsorcery:cap_item_amulet_holder": {}}, id: "immersiveengineering:tool", Count: 1 as byte, tag: {"akashictome:definedMod": "immersiveengineering"}, Damage: 3 as short}, 
	arcanearchives: {ForgeCaps: {"astralsorcery:cap_item_amulet_holder": {}}, id: "arcanearchives:tome_arcana", Count: 1 as byte, tag: {"akashictome:definedMod": "arcanearchives", Book: "arcanearchives:xml/tome.xml"}, Damage: 0 as short}, 
	qmd: {ForgeCaps: {"astralsorcery:cap_item_amulet_holder": {}}, id: "patchouli:guide_book", Count: 1 as byte, tag: {"akashictome:definedMod": "qmd", "patchouli:book": "qmd:guide"}, Damage: 0 as short}, 
	valkyrielib: {ForgeCaps: {"astralsorcery:cap_item_amulet_holder": {}}, id: "valkyrielib:guide", Count: 1 as byte, tag: {"akashictome:definedMod": "valkyrielib"}, Damage: 0 as short}, 
	embers: {ForgeCaps: {"astralsorcery:cap_item_amulet_holder": {}}, id: "embers:codex", Count: 1 as byte, tag: {"akashictome:definedMod": "embers"}, Damage: 0 as short}, 
	rftools: {ForgeCaps: {"astralsorcery:cap_item_amulet_holder": {}}, id: "rftools:rftools_shape_manual", Count: 1 as byte, tag: {"akashictome:definedMod": "rftools"}, Damage: 0 as short}, 
	deepmoblearning: {ForgeCaps: {"astralsorcery:cap_item_amulet_holder": {}}, id: "patchouli:guide_book", Count: 1 as byte, tag: {"akashictome:definedMod": "deepmoblearning", "patchouli:book": "deepmoblearning:book"}, Damage: 0 as short}, 
	solcarrot: {id: "solcarrot:food_book", Count: 1 as byte, tag: {"akashictome:definedMod": "solcarrot"}, Damage: 0 as short}, 
	rftools1: {ForgeCaps: {"astralsorcery:cap_item_amulet_holder": {}}, id: "rftools:rftools_manual", Count: 1 as byte, tag: {"akashictome:definedMod": "rftools1"}, Damage: 0 as short}, 
	extendedcrafting: {ForgeCaps: {"astralsorcery:cap_item_amulet_holder": {}}, id: "extendedcrafting:guide", Count: 1 as byte, tag: {"akashictome:definedMod": "extendedcrafting"}, Damage: 0 as short}, 
	botania: {ForgeCaps: {"astralsorcery:cap_item_amulet_holder": {}}, id: "botania:lexicon", Count: 1 as byte, tag: {"knowledge.minecraft": 1 as byte, "akashictome:definedMod": "botania", "knowledge.alfheim": 1 as byte, "knowledge.relic": 1 as byte}, Damage: 0 as short}, 
	bloodmagic: {ForgeCaps: {"astralsorcery:cap_item_amulet_holder": {}}, id: "guideapi:bloodmagic-guide", Count: 1 as byte, tag: {"akashictome:definedMod": "bloodmagic"}, Damage: 0 as short}, 
	actuallyadditions: {ForgeCaps: {"astralsorcery:cap_item_amulet_holder": {}}, id: "actuallyadditions:item_booklet", Count: 1 as byte, tag: {"akashictome:definedMod": "actuallyadditions"}, Damage: 0 as short}, 
	cyclicmagic: {ForgeCaps: {"astralsorcery:cap_item_amulet_holder": {}}, id: "guideapi:cyclicmagic-guide", Count: 1 as byte, tag: {"akashictome:definedMod": "cyclicmagic"}, Damage: 0 as short}, 
	openblocks: {id: "openblocks:info_book", Count: 1 as byte, tag: {"akashictome:definedMod": "openblocks"}, Damage: 0 as short}, 
	cookingforblockheads: {ForgeCaps: {"astralsorcery:cap_item_amulet_holder": {}}, id: "cookingforblockheads:recipe_book", Count: 1 as byte, tag: {"akashictome:definedMod": "cookingforblockheads"}, Damage: 1 as short}, 
	nuclearcraft: {ForgeCaps: {"astralsorcery:cap_item_amulet_holder": {}}, id: "patchouli:guide_book", Count: 1 as byte, tag: {"akashictome:definedMod": "nuclearcraft", "patchouli:book": "nuclearcraft:guide"}, Damage: 0 as short}}})
);*/
recipes.addShaped(<akashictome:tome>.withTag({"akashictome:data": {
  tconstruct: {ForgeCaps: {"astralsorcery:cap_item_amulet_holder": {}}, id: "tconstruct:book", Count: 1 as byte, tag: {"akashictome:definedMod": "tconstruct"}, Damage: 0 as short}, 
  integratedtunnels: {ForgeCaps: {"astralsorcery:cap_item_amulet_holder": {}}, id: "integrateddynamics:on_the_dynamics_of_integration", Count: 1 as byte, tag: {"akashictome:definedMod": "integratedtunnels"}, Damage: 0 as short}, 
  astralsorcery: {ForgeCaps: {"astralsorcery:cap_item_amulet_holder": {}}, id: "astralsorcery:itemjournal", Count: 1 as byte, tag: {"akashictome:definedMod": "astralsorcery"}, Damage: 0 as short}, 
  immersiveengineering: {ForgeCaps: {"astralsorcery:cap_item_amulet_holder": {}}, id: "immersiveengineering:tool", Count: 1 as byte, tag: {"akashictome:definedMod": "immersiveengineering"}, Damage: 3 as short}, 
  arcanearchives: {ForgeCaps: {"astralsorcery:cap_item_amulet_holder": {}}, id: "arcanearchives:tome_arcana", Count: 1 as byte, tag: {"akashictome:definedMod": "arcanearchives", Book: "arcanearchives:xml/tome.xml"}, Damage: 0 as short}, 
  qmd: {ForgeCaps: {"astralsorcery:cap_item_amulet_holder": {}}, id: "patchouli:guide_book", Count: 1 as byte, tag: {"akashictome:definedMod": "qmd", "patchouli:book": "qmd:guide"}, Damage: 0 as short}, 
  valkyrielib: {ForgeCaps: {"astralsorcery:cap_item_amulet_holder": {}}, id: "valkyrielib:guide", Count: 1 as byte, tag: {"akashictome:definedMod": "valkyrielib"}, Damage: 0 as short}, 
  embers: {ForgeCaps: {"astralsorcery:cap_item_amulet_holder": {}}, id: "embers:codex", Count: 1 as byte, tag: {"akashictome:definedMod": "embers"}, Damage: 0 as short}, 
  rftools: {ForgeCaps: {"astralsorcery:cap_item_amulet_holder": {}}, id: "rftools:rftools_shape_manual", Count: 1 as byte, tag: {"akashictome:definedMod": "rftools"}, Damage: 0 as short}, 
  deepmoblearning: {ForgeCaps: {"astralsorcery:cap_item_amulet_holder": {}}, id: "patchouli:guide_book", Count: 1 as byte, tag: {"akashictome:definedMod": "deepmoblearning", "patchouli:book": "deepmoblearning:book"}, Damage: 0 as short}, 
  solcarrot: {id: "solcarrot:food_book", Count: 1 as byte, tag: {"akashictome:definedMod": "solcarrot"}, Damage: 0 as short}, 
  rftools1: {ForgeCaps: {"astralsorcery:cap_item_amulet_holder": {}}, id: "rftools:rftools_manual", Count: 1 as byte, tag: {"akashictome:definedMod": "rftools1"}, Damage: 0 as short},
  ebwizardry: {ForgeCaps: {"astralsorcery:cap_item_amulet_holder": {}}, id: "ebwizardry:wizard_handbook", Count: 1 as byte, tag: {"akashictome:definedMod": "ebwizardry"}, Damage: 0 as short}, 
  extendedcrafting: {ForgeCaps: {"astralsorcery:cap_item_amulet_holder": {}}, id: "extendedcrafting:guide", Count: 1 as byte, tag: {"akashictome:definedMod": "extendedcrafting"}, Damage: 0 as short}, 
  botania: {ForgeCaps: {"astralsorcery:cap_item_amulet_holder": {}}, id: "botania:lexicon", Count: 1 as byte, tag: {"knowledge.minecraft": 1 as byte, "akashictome:definedMod": "botania", "knowledge.alfheim": 1 as byte, "knowledge.relic": 1 as byte}, Damage: 0 as short}, 
  bloodmagic: {ForgeCaps: {"astralsorcery:cap_item_amulet_holder": {}}, id: "guideapi:bloodmagic-guide", Count: 1 as byte, tag: {"akashictome:definedMod": "bloodmagic"}, Damage: 0 as short}, 
  actuallyadditions: {ForgeCaps: {"astralsorcery:cap_item_amulet_holder": {}}, id: "actuallyadditions:item_booklet", Count: 1 as byte, tag: {"akashictome:definedMod": "actuallyadditions"}, Damage: 0 as short}, 
  opencomputers: {id: "opencomputers:tool", Count: 1 as byte, tag: {"akashictome:definedMod": "opencomputers"}, Damage: 4 as short}, 
  cyclicmagic: {ForgeCaps: {"astralsorcery:cap_item_amulet_holder": {}}, id: "guideapi:cyclicmagic-guide", Count: 1 as byte, tag: {"akashictome:definedMod": "cyclicmagic"}, Damage: 0 as short}, 
  openblocks: {id: "openblocks:info_book", Count: 1 as byte, tag: {"akashictome:definedMod": "openblocks"}, Damage: 0 as short}, 
  cookingforblockheads: {ForgeCaps: {"astralsorcery:cap_item_amulet_holder": {}}, id: "cookingforblockheads:recipe_book", Count: 1 as byte, tag: {"akashictome:definedMod": "cookingforblockheads"}, Damage: 1 as short}, 
  nuclearcraft: {ForgeCaps: {"astralsorcery:cap_item_amulet_holder": {}}, id: "patchouli:guide_book", Count: 1 as byte, tag: {"akashictome:definedMod": "nuclearcraft", "patchouli:book": "nuclearcraft:guide"}, Damage: 0 as short}}}),
[[null, <minecraft:gold_ingot>, null],[<minecraft:gold_ingot>, <ore:bookshelf>, <minecraft:gold_ingot>], [null, <minecraft:gold_ingot>, null]]);

########################################################################################
# Chest with all avaliable patterns
# Credits to the E2E-E Dev!

# generate all possible patterns
var dataList_allPatterns = [] as IData;
var k = 0 as byte;
for item in loadedMods["tconstruct"].items {
	if (!item.definition.id.startsWith("tconstruct:pattern")) continue;
	if(isNull(item.tag) || isNull(item.tag.PartType)) continue;

	dataList_allPatterns += [{
		Slot: k,
		id: "tconstruct:pattern",
		Count: 1 as byte,
		Damage: 0 as short,
		tag: item.tag
	}] as IData; 
	k += 1;
}

# [Pattern_Chest] from [Oak_Chest][+4]
recipes.removeByRecipeName("tconstruct:tools/table/chest/pattern");
craft.make(<tconstruct:tooltables:4>.withTag({
		inventory: {Items: dataList_allPatterns}
	} as IData), ["pretty",
  "# a #",
  "p c p",
  "# M #"], {
  "p": <ore:pattern>,        # Blank Pattern
  "a": <tconstruct:book>,    # Materials and You
  "#": <storagedrawers:basicdrawers>,     # Drawer
  "c": <ore:chest> | <tconstruct:tooltables:4>, # Oak Chest
  "M": <conarm:book>         # Materials and You - Armory Addendum
});
########################################################################################

// Oredict Morphing Tool
recipes.remove(<morphtool:tool>);
recipes.addShaped("Morphing Tool", <morphtool:tool>, [
	[null, <ore:dyeGreen>, <ore:dyeBlue>], 
	[null, <ore:ingotIron>, <ore:dyeRed>], 
	[<ore:ingotIron>, null, null]]);

// Super Morph-O-Tool
val superMOT = <morphtool:tool>.withTag({"morphtool:is_morphing": 1 as byte, "morphtool:data": {
	rftools:             {id:"rftools:smartwrench",                         Count: 1 as byte, Damage: 0 as short},
	botania:             {id:"botania:twigwand",                            Count: 1 as byte, Damage: 0 as short, tag: {color1: 9, color2: 9}},
	enderio:             {id:"enderio:item_yeta_wrench",                    Count: 1 as byte, Damage: 0 as short},
	thermalfoundation:   {id:"thermalfoundation:wrench",                    Count: 1 as byte, Damage: 0 as short},
	actuallyadditions:   {id:"actuallyadditions:item_laser_wrench",         Count: 1 as byte, Damage: 0 as short},
	techreborn:          {id:"techreborn:wrench",                           Count: 1 as byte, Damage: 0 as short},
	opencomputers:       {id:"opencomputers:wrench",                        Count: 1 as byte, Damage: 0 as short},
	integrateddynamics:  {id:"integrateddynamics:wrench",                   Count: 1 as byte, Damage: 0 as short},
	architecturecraft:   {id:"architecturecraft:hammer",                    Count: 1 as byte, Damage: 0 as short},
	appliedenergistics2: {id:"appliedenergistics2:network_tool",            Count: 1 as byte, Damage: 0 as short},
	bloodmagic:          {id:"bloodmagic:ritual_reader",                    Count: 1 as byte, Damage: 0 as short},
	environmentaltech:   {id:"environmentaltech:tool_multiblock_assembler", Count: 1 as byte, Damage: 0 as short},
	mekanism:            {id:"mekanism:configurator",                       Count: 1 as byte, Damage: 0 as short},
	immersiveengineering:{id:"immersiveengineering:tool",                   Count: 1 as byte, Damage: 0 as short},
	arcanearchives:      {id:"arcanearchives:scepter_manipulation",         Count: 1 as byte, Damage: 0 as short},
	storagedrawers:      {id:"storagedrawers:drawer_key",                   Count: 1 as byte, Damage: 0 as short},
	},
});

recipes.addShaped("Superwrench", superMOT, [
	[null, <mystgears:gear_thaumium>, null],
	[<thermalfoundation:material:290>, <morphtool:tool>, <jaopca:item_gearbloodbronze>], 
	[null, <thermalfoundation:material:288>, null]
]);

//Simple Void World
recipes.addShaped(<simplevoidworld:portal>, [[<minecraft:obsidian>, <aetherworks:item_resource:2>, <minecraft:obsidian>],[<aetherworks:item_resource:2>, <actuallyadditions:block_crystal:2>, <aetherworks:item_resource:2>], [<minecraft:obsidian>, <aetherworks:item_resource:2>, <minecraft:obsidian>]]);

//Chainz
recipes.addShaped(<quark:chain>, [[null, null, <iceandfire:chain_link>],[null, <iceandfire:chain_link>, null], [<iceandfire:chain_link>, null, null]]);
recipes.addShaped(<iceandfire:chain>, [[null, <quark:chain>, <quark:chain>],[null, <quark:chain>, null], [<quark:chain>, <quark:chain>, null]]);

recipes.removeShaped(<minecraft:chainmail_chestplate>, [[<iceandfire:chain_link>, null, <iceandfire:chain_link>],[<iceandfire:chain_link>, <iceandfire:chain_link>, <iceandfire:chain_link>], [<iceandfire:chain_link>, <iceandfire:chain_link>, <iceandfire:chain_link>]]);
recipes.removeShaped(<minecraft:chainmail_boots>, [[<iceandfire:chain_link>, null, <iceandfire:chain_link>],[<iceandfire:chain_link>, null, <iceandfire:chain_link>], [null, null, null]]);
recipes.removeShaped(<minecraft:chainmail_helmet>, [[<iceandfire:chain_link>, <iceandfire:chain_link>, <iceandfire:chain_link>],[<iceandfire:chain_link>, null, <iceandfire:chain_link>], [null, null, null]]);
recipes.removeShaped(<minecraft:chainmail_leggings>, [[<iceandfire:chain_link>, <iceandfire:chain_link>, <iceandfire:chain_link>],[<iceandfire:chain_link>, null, <iceandfire:chain_link>], [<iceandfire:chain_link>, null, <iceandfire:chain_link>]]);


//Salt Block
recipes.addShaped(<mekanism:saltblock>, [[<ore:itemSalt>, <ore:itemSalt>],[<ore:itemSalt>, <ore:itemSalt>]]);

//Chest reset
recipes.addShapeless(<minecraft:chest>, [<ore:chestWood>]);

//blindfold
recipes.addShaped(<iceandfire:blindfold>, [[<minecraft:string>, <improvedbackpacks:tanned_leather>, <minecraft:string>]]);

//Id card
recipes.addShapeless(<randomthings:idcard>, [<techreborn:plates:35>,<ore:dyeBlack>]);

//Tier 1 Drawer
//recipes.addShaped(<storagedrawers:upgrade_storage>, [[<ore:stickWood>, <ore:stickWood>, <ore:stickWood>],[<minecraft:flint>, <storagedrawers:upgrade_template>, <minecraft:flint>], [<ore:stickWood>, <ore:stickWood>, <ore:stickWood>]]);

//Rope
recipes.addShaped(<quark:rope> * 2, [[<ore:string>, <ore:string>, <ore:string>],[<ore:string>, <ore:string>, <ore:string>], [<ore:string>, <ore:string>, <ore:string>]]);

//XP Tank
recipes.addShaped(<mob_grinding_utils:tank>, [[<thermalfoundation:material:32>, <minecraft:glass_pane>, <thermalfoundation:material:32>],[<moreplates:invar_stick>, <openblocks:tank>, <moreplates:invar_stick>], [<thermalfoundation:material:32>, <minecraft:glass_pane>, <thermalfoundation:material:32>]]);

// XP Shower
recipes.addShaped(<openblocks:xp_shower>, [[null, null, null],[<contenttweaker:plate_engineering>, <jaopca:item_platehslasteel>, <jaopca:item_platehslasteel>], [null, null, <enderio:block_dark_iron_bars>]]);


//Igniter
recipes.addShapedMirrored(<randomthings:igniter>, [[<ore:cobblestone>, <ore:cobblestone>, <ore:netherrack>],[<ore:cobblestone>, <enderio:item_material>, <ore:netherrack>], [<ore:cobblestone>, <ore:cobblestone>, <ore:netherrack>]]);

//Broken powersuit recipe
recipes.addShaped(<powersuits:powerarmorcomponent:4>, [[<thermalfoundation:material:327>, <techreborn:part:17>, <thermalfoundation:material:327>],[<powersuits:powerarmorcomponent:12>, <powersuits:powerarmorcomponent:7>, <powersuits:powerarmorcomponent:12>], [<advancedrocketry:jetpack>, null, <advancedrocketry:jetpack>]]);

//Prefab
recipes.addShaped(<prefab:item_bundle_of_timber>, [[<ore:logWood>, <ore:logWood>, <ore:logWood>],[<ore:logWood>, <minecraft:string>, <ore:logWood>], [<ore:logWood>, <ore:logWood>, <ore:logWood>]]);

//Beet Seeds
recipes.addShapeless(<minecraft:beetroot_seeds>, [<minecraft:beetroot>]);

/* should be fixed by now
//No more cooked carrots!
furnace.remove(<mysticalworld:cooked_carrot>, <minecraft:carrot>);
recipes.removeShapeless(<mysticalworld:stuffed_aubergine>, [<mysticalworld:cooked_carrot>, <minecraft:beetroot>, <mysticalworld:cooked_aubergine>, <minecraft:carrot>]);
*/

//Iron Bars
recipes.addShaped(<minecraft:iron_bars> * 8, [[<tconstruct:tool_rod>.withTag({Material: "iron"}), <tconstruct:tool_rod>.withTag({Material: "iron"}), <tconstruct:tool_rod>.withTag({Material: "iron"})], [<tconstruct:tool_rod>.withTag({Material: "iron"}), <tconstruct:tool_rod>.withTag({Material: "iron"}), <tconstruct:tool_rod>.withTag({Material: "iron"})]]);

//The Hacatu Fix
recipes.addShaped(<minecraft:iron_bars> * 8, [[<ore:stickIron>, <ore:stickIron>, <ore:stickIron>], [<ore:stickIron>, <ore:stickIron>, <ore:stickIron>]]);

recipes.addShapeless(<minecraft:gunpowder>, [<ore:dustCharcoal>,<ore:dustSulfur>,<ore:dustNiter>,<ore:dustNiter>]);
recipes.addShaped(<minecraft:gunpowder> * 6, [[<mysticalagriculture:creeper_essence>, <mysticalagriculture:creeper_essence>, <mysticalagriculture:creeper_essence>],[null, null, null], [null, null, null]]);
recipes.addShaped(<minecraft:gunpowder> * 15, [[<techreborn:uumatter>, <techreborn:uumatter>, <techreborn:uumatter>],[<techreborn:uumatter>, null, null], [<techreborn:uumatter>, <techreborn:uumatter>, <techreborn:uumatter>]]);


recipes.addShaped(<immersiveengineering:stone_decoration:2>, [[<thermalfoundation:material:352>],[<tcomplement:scorched_block:3>], [<embers:shard_ember>]]);

recipes.addShapeless(<minecraft:paper> * 3, [<betterquesting:quest_book>]);

//recipes.remove(<thermalexpansion:reservoir>);
//recipes.addShaped(<thermalexpansion:reservoir>, [[null, <thermalfoundation:material:321>, null],[<thermalfoundation:material:320>, <forge:bucketfilled>.withTag({FluidName: "gold", Amount: 1000}), <thermalfoundation:material:320>], [null, <thermalfoundation:material:512>, null]]);

recipes.addShapeless(<minecraft:string>, [<natura:materials:3>,<natura:materials:3>,<natura:materials:3>]);

recipes.addShaped(<translocators:translocator_part:1> * 2, [[<moreplates:energetic_silver_plate>, <enderutilities:enderpart>, <moreplates:energetic_silver_plate>],[<enderutilities:enderpart>, <minecraft:piston>, <enderutilities:enderpart>], [<moreplates:energetic_silver_plate>, <enderutilities:enderpart>, <moreplates:energetic_silver_plate>]]);
recipes.addShaped(<translocators:translocator_part> * 2, [[<moreplates:energetic_alloy_plate>, <enderutilities:enderpart>, <moreplates:energetic_alloy_plate>],[<enderutilities:enderpart>, <minecraft:piston>, <enderutilities:enderpart>], [<moreplates:energetic_alloy_plate>, <enderutilities:enderpart>, <moreplates:energetic_alloy_plate>]]);

recipes.addShaped(<minecraft:end_stone>, [[<minecraft:sandstone>, <minecraft:sandstone>, <minecraft:sandstone>],[<minecraft:sandstone>, <minecraft:skull:5>.reuse(), <minecraft:sandstone>], [<minecraft:sandstone>, <minecraft:sandstone>, <minecraft:sandstone>]]);

recipes.addShaped(<minecraft:hopper>, [[<minecraft:iron_ingot>, null, <minecraft:iron_ingot>],[<minecraft:iron_ingot>, <tconstruct:wooden_hopper>, <minecraft:iron_ingot>],[null, <minecraft:iron_ingot>, null]]);


// Upgrade Chisel
recipes.addShaped(<chisel:chisel_diamond>, [[null, <minecraft:diamond>],[<chisel:chisel_iron>, null]]);

// Copy Paste Gadget
recipes.addShaped(<buildinggadgets:templatemanager>, [[<thermalfoundation:material:353>, <minecraft:redstone>, <thermalfoundation:material:353>],[<minecraft:emerald>, <techreborn:machine_frame>, <minecraft:emerald>], [<thermalfoundation:material:353>, <minecraft:dye:4>, <thermalfoundation:material:353>]]);
recipes.addShaped(<buildinggadgets:copypastetool>, [[<techreborn:plates:35>, <minecraft:redstone>, <techreborn:plates:35>],[<minecraft:emerald>, <immersiveengineering:material:26>, <minecraft:emerald>], [<techreborn:plates:35>, <minecraft:dye:4>, <techreborn:plates:35>]]);


// Void Stone
furnace.addRecipe(<chisel:energizedvoidstone:2>, <chisel:energizedvoidstone>, 1.0);

// Ender Pearl from Ender Dust
mods.inworldcrafting.ExplosionCrafting.explodeItemRecipe(<minecraft:ender_pearl>, <enderore:dust_ender>, 75);

// Scanner
# [Scanner] from [Basic Logic Chip][+5]
craft.remake(<scannable:scanner>, ["pretty",
  "I A I",
  "P B P",
  "□ ¤ □"], {
  "I": <ore:barsIron>,                        # Iron Bars
  "A": <immersiveengineering:toolupgrade:6>,  # Amplifier Electron Tubes
  "P": <ore:manaPearl>,                       # Mana Pearl
  "B": <rockhounding_chemistry:misc_items:1>, # Basic Logic Chip
  "□": <ore:plateSteel>,                      # Steel Plate
  "¤": <ore:gearPrudentium>,              # Energetic Alloy Gear
});

recipes.addShaped(<scannable:module_blank> * 3, [[<moreplates:pulsating_iron_plate>, <moreplates:pulsating_iron_plate>, <moreplates:pulsating_iron_plate>],[<enderio:item_material:22>, <minecraft:paper>, <enderio:item_material:22>], [<enderio:item_material:22>, <moreplates:void_plate>, <enderio:item_material:22>]]);



// Openblocks tank
recipes.addShaped(<openblocks:tank>, [[<minecraft:obsidian>, <ore:paneGlass>, <minecraft:obsidian>],[<ore:paneGlass>, <ore:paneGlass>, <ore:paneGlass>], [<minecraft:obsidian>, <ore:paneGlass>, <minecraft:obsidian>]]);

// Tank Drawer
recipes.addShaped(<fluiddrawers:tank>, [[<mekanism:basicblock:9>, <mekanism:basicblock:9>, <mekanism:basicblock:9>],[<mekanism:basicblock:9>, <mekanism:machineblock2:11>, <mekanism:basicblock:9>], [<mekanism:basicblock:9>, <mekanism:basicblock:9>, <mekanism:basicblock:9>]]);
recipes.addShaped(<fluiddrawers:tank>, [[<mekanism:basicblock:9>, <mekanism:basicblock:9>, <mekanism:basicblock:9>],[<mekanism:basicblock:9>, <thermalexpansion:tank>, <mekanism:basicblock:9>], [<mekanism:basicblock:9>, <mekanism:basicblock:9>, <mekanism:basicblock:9>]]);

/* Added by Cyclic
<minecraft:snowball>.maxStackSize = 64;
<minecraft:ender_pearl>.maxStackSize = 64;
recipes.addShapeless(<minecraft:melon> * 9, [<minecraft:melon_block>]);

.displayName = "Constantan Heating Coil";
.addTooltip(format.aqua("Grows from a Celestal Crystal Cluster"));
*/


// Quest Book

recipes.addShapeless(<betterquesting:quest_book>, [<minecraft:book>,<minecraft:leather>]);


// Food Items //

// Missing Salads
recipes.addShaped(<mysticalworld:aubergine_salad> * 3, [[<mysticalworld:aubergine>, <xlfoodmod:lettuce>, <mysticalworld:aubergine>],[<xlfoodmod:lettuce>, <mysticalworld:aubergine>, <xlfoodmod:lettuce>], [<minecraft:bowl>, <minecraft:bowl>, <minecraft:bowl>]]);
recipes.addShaped(<mysticalworld:beetroot_salad> * 3, [[<minecraft:beetroot>, <xlfoodmod:lettuce>, <minecraft:beetroot>],[<xlfoodmod:lettuce>, <minecraft:beetroot>, <xlfoodmod:lettuce>], [<minecraft:bowl>, <minecraft:bowl>, <minecraft:bowl>]]);

// Choco
furnace.remove(<xlfoodmod:chocolate_syrup>, <minecraft:dye:3>);
furnace.addRecipe(<nuclearcraft:roasted_cocoa_beans>, <minecraft:dye:3>, 0.0);

// Food Fluid Recipes
mods.nuclearcraft.Infuser.addRecipe(<minecraft:egg>, <liquid:milk> * 1000, <actuallyadditions:item_food>, 0.5);
mods.thermalexpansion.Transposer.addFillRecipe(<actuallyadditions:item_food>, <minecraft:egg>, <liquid:milk> * 1000, 2000);

mods.nuclearcraft.Infuser.addRecipe(<minecraft:dye:3> * 6, <liquid:milk> * 1000, <actuallyadditions:item_food:9> * 3, 0.5);
mods.thermalexpansion.Transposer.addFillRecipe(<actuallyadditions:item_food:9> * 3, <minecraft:dye:3> * 6, <liquid:milk> * 1000, 2000);

mods.nuclearcraft.IngotFormer.addRecipe(<liquid:milk> * 1500, <xlfoodmod:cheese>, 0.5);

mods.nuclearcraft.Infuser.addRecipe(<mekanism:salt>, <liquid:milk> * 5000, <xlfoodmod:butter> * 2, 0.5);
mods.thermalexpansion.Transposer.addFillRecipe(<xlfoodmod:butter> * 2, <mekanism:salt>, <liquid:milk> * 5000, 2000);

mods.nuclearcraft.Infuser.addRecipe(<xlfoodmod:cooked_dough>, <liquid:milk> * 1000, <xlfoodmod:waffle>, 0.5);
mods.thermalexpansion.Transposer.addFillRecipe(<xlfoodmod:waffle>, <xlfoodmod:cooked_dough>, <liquid:milk> * 1000, 2000);

mods.nuclearcraft.Infuser.addRecipe(<minecraft:wheat>, <liquid:water> * 250, <xlfoodmod:dough> * 2, 0.5);
mods.thermalexpansion.Transposer.addFillRecipe(<xlfoodmod:dough> * 2, <minecraft:wheat>, <liquid:water> * 1000, 2000);


# [Sound Box] from [Note Block][+1]
craft.remake(<randomthings:soundbox>, ["pretty",
  "  ◊  ",
  "◊ ■ ◊",
  "  ◊  "], {
  "◊": <ore:gemLapis>, # Lapis Lazuli
  "■": <minecraft:noteblock>,                      # Note Block
});

// Red Sand
mods.thermalexpansion.Transposer.addFillRecipe(<minecraft:sand:1>, <minecraft:sand>, <liquid:blood> * 10, 2000);
mods.nuclearcraft.Infuser.addRecipe(<minecraft:sand>, <liquid:blood> * 10, <minecraft:sand:1>);

////////////// GRINDING BALLS //////////////////

recipes.addShaped(<contenttweaker:grindingball_mixedwill>, [
    [null, <bloodmagic:item_demon_crystal:1>, null],
    [<bloodmagic:item_demon_crystal:4>, <bloodmagic:item_demon_crystal>, <bloodmagic:item_demon_crystal:2>], 
    [null, <bloodmagic:item_demon_crystal:3>, null]
]);

//Hell Shelf Stuff
recipes.remove(<apotheosis:hellshelf>);
TartaricForge.addRecipe(<contenttweaker:book_block>,[<minecraft:book>, <botania:manainkwell>, <thaumadditions:phantom_ink_phial>, <botania:rune:8>], 1000,100);

//soda can stack fix
<xlfoodmod:super_energy_drink>.maxStackSize = 64;

//chocolate ingot fix
recipes.addShapeless(<tcomplement:edibles:10>, [<nuclearcraft:milk_chocolate>]);
recipes.addShapeless(<tcomplement:edibles:11>, [<nuclearcraft:dark_chocolate>]);
recipes.addShapeless(<nuclearcraft:milk_chocolate>, [<tcomplement:edibles:10>]);
recipes.addShapeless(<nuclearcraft:dark_chocolate>, [<tcomplement:edibles:11>]);

//Lollipop Recipes, becuse why not?
mods.jei.JEI.addItem(<tombstone:lollipop:0>);
recipes.addShaped(<tombstone:lollipop:0>, [[<tombstone:crafting_ingredient:3>, <ore:dyeYellow>], [<minecraft:stick>, <minecraft:sugar>]]);
recipes.addShaped(<tombstone:lollipop:1>, [[<tombstone:crafting_ingredient:3>, <ore:dyeBlue>], [<minecraft:stick>, <minecraft:sugar>]]);
recipes.addShaped(<tombstone:lollipop:2>, [[<tombstone:crafting_ingredient:3>, <ore:dyeLime>], [<minecraft:stick>, <minecraft:sugar>]]);
recipes.addShaped(<tombstone:lollipop:3>, [[<tombstone:crafting_ingredient:3>, <ore:dyePurple>], [<minecraft:stick>, <minecraft:sugar>]]);
recipes.addShaped(<tombstone:lollipop:4>, [[<tombstone:crafting_ingredient:3>, <ore:dyeRed>], [<minecraft:stick>, <minecraft:sugar>]]);

//coffee and cappuccino recipe fix
recipes.removeShapeless(<xlfoodmod:coffee>, [<xlfoodmod:coffee>, <minecraft:milk_bucket>]);
recipes.addShapeless(<xlfoodmod:cappuccino>, [<xlfoodmod:coffee>, <minecraft:milk_bucket>]);

//bowl fix for natura
recipes.removeShaped(<natura:empty_bowls> * 4, [[<natura:nether_planks>, null, <natura:nether_planks>], [null, <natura:nether_planks>, null]]);
recipes.removeShaped(<natura:empty_bowls:1> * 4, [[<natura:nether_planks:1>, null, <natura:nether_planks:1>], [null, <natura:nether_planks:1>, null]]);
recipes.removeShaped(<natura:empty_bowls:2> * 4, [[<natura:nether_planks:2>, null, <natura:nether_planks:2>], [null, <natura:nether_planks:2>, null]]);
recipes.removeShaped(<natura:empty_bowls:3> * 4, [[<natura:nether_planks:3>, null, <natura:nether_planks:3>], [null, <natura:nether_planks:3>, null]]);
recipes.addShaped(<natura:empty_bowls> * 4, [[<natura:nether_planks>, <ore:artisansHandsaw>.reuse().transformDamage(5), <natura:nether_planks>], [null, <natura:nether_planks>, null]]);
recipes.addShaped(<natura:empty_bowls:1> * 4, [[<natura:nether_planks:1>, <ore:artisansHandsaw>.reuse().transformDamage(5), <natura:nether_planks:1>], [null, <natura:nether_planks:1>, null]]);
recipes.addShaped(<natura:empty_bowls:2> * 4, [[<natura:nether_planks:2>, <ore:artisansHandsaw>.reuse().transformDamage(5), <natura:nether_planks:2>], [null, <natura:nether_planks:2>, null]]);
recipes.addShaped(<natura:empty_bowls:3> * 4, [[<natura:nether_planks:3>, <ore:artisansHandsaw>.reuse().transformDamage(5), <natura:nether_planks:3>], [null, <natura:nether_planks:3>, null]]);

//santa hat all year round
recipes.addShaped(<tombstone:christmas_hat>, [[<ore:dyeRed>, <apotheosis:lucky_foot>, <ore:dyeRed>], [<tombstone:crafting_ingredient:3>, <iceandfire:sheep_helmet>, <tombstone:crafting_ingredient:3>]]);

// Compressed Clay Fix
recipes.removeShaped(<additionalcompression:clay_compressed>, [[<minecraft:clay_ball>, <minecraft:clay_ball>, <minecraft:clay_ball>], [<minecraft:clay_ball>, <minecraft:clay_ball>, <minecraft:clay_ball>], [<minecraft:clay_ball>, <minecraft:clay_ball>, <minecraft:clay_ball>]]);
recipes.addShaped(<additionalcompression:clay_compressed>, [[<minecraft:clay>, <minecraft:clay>, <minecraft:clay>], [<minecraft:clay>, <minecraft:clay>, <minecraft:clay>], [<minecraft:clay>, <minecraft:clay>, <minecraft:clay>]]);

Melting.removeRecipe(<liquid:clay>, <additionalcompression:clay_compressed>);

// AE2 Wireless Terminals
recipes.addShapeless(<wft:wft>, [<appliedenergistics2:wireless_fluid_terminal>]);
recipes.addShapeless(<appliedenergistics2:wireless_fluid_terminal>, [<wft:wft>]);
recipes.addShapeless(<wct:wct>, [<appliedenergistics2:wireless_crafting_terminal>]);
recipes.addShapeless(<appliedenergistics2:wireless_crafting_terminal>, [<wct:wct>]);
recipes.addShaped(<aeadditions:terminal.fluid.wireless>, [[null, <appliedenergistics2:material:41>, null],[<ore:gemLapis>, <appliedenergistics2:part:520>, <ore:gemLapis>], [null, <appliedenergistics2:dense_energy_cell>, null]]);


// Depreciation Warning for JAOPCA Blocks
// TODO Remove these blocks in 3.3/4.0!
val jaopcablks = [
<jaopca:block_blockstainlesssteel>, <jaopca:block_blockthermoconducting>, <jaopca:block_blocktinsilver>
] as IItemStack[];

for block in jaopcablks {
	recipes.remove(block);
	block.addTooltip(format.red("Will be removed in next update!"));
	block.addTooltip(format.red("Convert to CoT version with the crafting recipe"));
}

recipes.addShapeless(<contenttweaker:tinsilverblock>, [<jaopca:block_blocktinsilver>]);
recipes.addShapeless(<contenttweaker:thermoconductingblock>, [<jaopca:block_blockthermoconducting>]);
recipes.addShapeless(<contenttweaker:cfecrblock>, [<jaopca:block_blockstainlesssteel>]);


##########################################################################################
print("==================== end of misc.zs ====================");
