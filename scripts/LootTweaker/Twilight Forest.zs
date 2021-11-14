import loottweaker.LootTweaker;
import loottweaker.vanilla.loot.LootTable;
import loottweaker.vanilla.loot.LootPool;
import crafttweaker.item.IItemStack as IItemStack;
#modloaded loottweaker

print("==================== loading TF Loot.zs ====================");
##########################################################################################



# *======= Variables =======*

	val useless = LootTweaker.getTable("twilightforest/structures:useless");
	val useless_pool = useless.getPool("main");

	
	val common_table = [
<quark:arrow_torch>,
<appliedenergistics2:quartz_fixture>,
<contenttweaker:vis_meal>,
<cyclicmagic:peat_unbaked>,
<cyclicmagic:apple>,
<enderutilities:enderpart:51>,
<twilightforest:charm_of_life_1>,
<twilightforest:charm_of_keeping_1>,
<fossil:tardrop>,
<fossil:ancient_glass>,
<deepmoblearning:living_matter_twilight>,
<randomthings:ingredient:10>,
<quark:redstone_inductor>,
<mowziesmobs:dart>,
	] as IItemStack[];
	
	for item in common_table {
	useless_pool.addItemEntry(item, 20);
	}

	val uncommon_table = [
<cyclicmagic:glowing_chorus>,
<artisanworktables:artisans_hammer_diamond>,
<artisanworktables:artisans_cutters_diamond>,
<artisanworktables:artisans_handsaw_diamond>,
<artisanworktables:artisans_pliers_diamond>,
<artisanworktables:artisans_trowel_diamond>,
<artisanworktables:artisans_file_diamond>,
<quark:arrow_torch>,
<treasure2:mirthas_torch>,
<appliedenergistics2:quartz_fixture>,
<contenttweaker:vis_meal>,
<cyclicmagic:peat_unbaked>,
<cyclicmagic:apple>,
<ebwizardry:ring_lightning_melee>,
<cyclicmagic:block_library>,
<enderutilities:enderpart:51>,
<embers:glimmer_shard>.withTag({light: 800}),
<mystgears:vis_motor>,
<twilightforest:charm_of_life_1>,
<twilightforest:charm_of_keeping_1>,
<enderio:block_death_pouch>,
<fossil:tardrop>,
<fossil:ancient_glass>,
<enderio:block_solar_panel>,
<enderio:block_travel_anchor>,
<deepmoblearning:living_matter_twilight>,
<randomthings:ingredient:10>,
<quark:redstone_inductor>,
<quark:golden_frog_leg>,
<mowziesmobs:dart>,
<mowziesmobs:blowgun>,
	] as IItemStack[];
	
	for item in uncommon_table {
	useless_pool.addItemEntry(item, 10);
	}

	val rare_table = [
<immersiveengineering:toolbox>,
<toolbelt:belt>,
<cyclicmagic:glowing_chorus>,
<artisanworktables:artisans_hammer_diamond>,
<artisanworktables:artisans_cutters_diamond>,
<artisanworktables:artisans_handsaw_diamond>,
<artisanworktables:artisans_pliers_diamond>,
<artisanworktables:artisans_trowel_diamond>,
<artisanworktables:artisans_file_diamond>,
<ebwizardry:charm_feeding>,
<ebwizardry:charm_sixth_sense>,
<ebwizardry:amulet_absorption>,
<ebwizardry:amulet_transience>,
<ebwizardry:amulet_recovery>,
<ebwizardry:amulet_glide>,
<ebwizardry:amulet_wither_immunity>,
<ebwizardry:amulet_fire_protection>,
<ebwizardry:amulet_potential>,
<cyclicmagic:apple>,
<ebwizardry:ring_lightning_melee>,
<cyclicmagic:block_library>,
<enderutilities:enderpart:51>,
<jaopca:block_growthcatalystquartz>,
<jaopca:block_growthcatalystcopper>,
<jaopca:block_growthcatalystgold>,
<jaopca:block_growthcatalystiron>,
<jaopca:block_growthcatalystlead>,
<jaopca:block_growthcatalystnickel>,
<jaopca:block_growthcatalystsilver>,
<jaopca:block_growthcatalysttin>,
<jaopca:block_growthcatalystlapis>,
<enderio:item_travel_staff>.withTag({"enderio.darksteel.upgrade.energyUpgrade": {level: 0}}),
<embers:glimmer_lamp>.withTag({light: 1200}),
<mystgears:vis_motor>,
<enderio:block_death_pouch>,
<enderio:block_solar_panel>,
<enderio:block_travel_anchor>,
<iceandfire:jar_pixie:4>,
<iceandfire:jar_pixie:3>,
<iceandfire:jar_pixie:2>,
<iceandfire:jar_pixie:1>,
<iceandfire:jar_pixie>,
	] as IItemStack[];
	
	for item in rare_table {
	useless_pool.addItemEntry(item, 1);
	}
	
		
##########################################################################################
print("==================== end of TF Loot.zs ====================");
