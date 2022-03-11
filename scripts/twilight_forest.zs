import crafttweaker.item.IItemStack;
import mods.botania.PureDaisy;
import mods.botania.ManaInfusion;
import mods.thermalexpansion.Transposer;
import mods.tconstruct.Casting;
import mods.immersiveengineering.ArcFurnace;
import mods.nuclearcraft.AlloyFurnace;
import mods.thermalexpansion.InductionSmelter;
import mods.arcanearchives.GCT;
import mods.thaumcraft.Crucible;
import mods.tcomplement.Overrides;
import mods.tconstruct.Melting;
import crafttweaker.item.IIngredient;


print("==================== loading twilight_forest.zs ====================");
##########################################################################################

val itemstoRemove =
[
	<randomthings:weatheregg>,
	<randomthings:weatheregg:1>,
	<randomthings:weatheregg:2>,
	<twilightforest:fiery_pickaxe>,
	<twilightforest:fiery_leggings>,
	<twilightforest:fiery_helmet>,
	<twilightforest:fiery_boots>,
	<twilightforest:fiery_chestplate>,
]
 as IItemStack[];

for item in itemstoRemove {
	recipes.remove(item);
}

<twilightforest:uberous_soil>.addTooltip(format.gold("Looted from Troll Caves"));

<twilightforest:transformation_powder>.addTooltip(format.gold("Found in Twilight Forest hollow hills"));

<twilightforest:charm_of_keeping_1>.addTooltip(format.gold("Found in Twilight Forest structures"));
<twilightforest:charm_of_life_1>.addTooltip(format.gold("Found in Twilight Forest structures"));

<twilightforest:torchberries>.addTooltip(format.gold("Found underground or as a drop from Skeleton Druids"));

//LiveRoot, might add more steps
PureDaisy.addRecipe(<twilightforest:root>, <twilightforest:root:1>);
<twilightforest:liveroot>.addTooltip(format.green("Harvested from Liveroots in the Twilight Forest"));


//mods.botania.ManaInfusion.addAlchemy(IItemStack output, IIngredient input, int mana);
//Noon Ingot
ManaInfusion.addAlchemy(<contenttweaker:noon_ingot>, <twilightforest:torchberries>, 10000);

//Constilation papers
ManaInfusion.addAlchemy(<astralsorcery:itemconstellationpaper>, <twilightforest:magic_map_empty>, 25000);


//Combustible Ingot tier one crafting
Casting.addTableRecipe(<contenttweaker:tarred_ingot>, <contenttweaker:noon_ingot>, <liquid:gasoline>, 1000, true, 50);
//tier two crafting
ArcFurnace.addRecipe(<contenttweaker:tarred_ingot>, <contenttweaker:noon_ingot>, null, 400, 1024, [<thermalfoundation:material:833>*8]);
//AlloySmelter.addRecipe(<contenttweaker:tarred_ingot>, [<thermalfoundation:material:833>*8,<contenttweaker:noon_ingot>], 10000, 0.1);
AlloyFurnace.addRecipe(<contenttweaker:noon_ingot>, <thermalfoundation:material:833>*8, <contenttweaker:tarred_ingot>);
InductionSmelter.addRecipe(<contenttweaker:tarred_ingot>, <contenttweaker:noon_ingot>, <thermalfoundation:material:833>*8, 25000);

//Fiery Ingot
recipes.addShapeless(<twilightforest:fiery_ingot>, [<ore:hotStuff>,<contenttweaker:tarred_ingot>]);
Transposer.addFillRecipe(<twilightforest:fiery_ingot>, <contenttweaker:tarred_ingot>, <liquid:pyrotheum> * 2000, 10000);


//Steelleaf looting
recipes.addShapeless(<twilightforest:steeleaf_ingot> * 6, [<twilightforest:steeleaf_chestplate>]);
recipes.addShapeless(<twilightforest:steeleaf_ingot> * 2, [<twilightforest:steeleaf_boots>]);
recipes.addShapeless(<twilightforest:steeleaf_ingot> * 5, [<twilightforest:steeleaf_leggings>]);
recipes.addShapeless(<twilightforest:steeleaf_ingot> * 3, [<twilightforest:steeleaf_helmet>]);


//Eggs even though I only need one
Crucible.registerRecipe("weather_egg_storm", "",
    <randomthings:weatheregg:2>, <minecraft:fire_charge>,
	[<aspect:potentia> * 20, <aspect:aer> * 20]
);

Crucible.registerRecipe("weather_egg_sun", "",
    <randomthings:weatheregg>, <minecraft:fire_charge>,
	[<aspect:lux> * 20, <aspect:aer> * 20]
);

Crucible.registerRecipe("weather_egg_rain", "",
    <randomthings:weatheregg:1>, <minecraft:fire_charge>,
	[<aspect:aqua> * 20, <aspect:aer> * 20]
);

//Gem for opening the portal
GCT.replaceRecipe("stormway", <arcanearchives:stormway>.withTag({charge: 30, infinite: 0 as byte, toggle: 0 as byte}), [<arcanearchives:shaped_quartz>,<ore:nitor>,<randomthings:weatheregg:2>,<minecraft:redstone>*16]);
<arcanearchives:stormway>.addTooltip(format.lightPurple("Used to activate the Twilight Forest Portal"));




/*
//Ember [is] Boring 
val twilightforestMainBiomes = mods.embers.EmberBore.create([7], ["twilightforest:mushroom_forest"]);
twilightforestMainBiomes.addOutput(<twilightforest:torchberries>,100);
*/
/*
twilightforest:twilight_lake	Twilight Lake
-twilightforest:twilight_forest	Twilight Forest
-twilightforest:dense_twilight_forest	Dense Twilight Forest
-twilightforest:twilight_highlands	Twilight Highlands
-twilightforest:mushroom_forest	Mushroom Forest
-twilightforest:twilight_swamp	Twilight Swamp
-twilightforest:twilight_stream	Twilight Stream
-twilightforest:snowy_forest	Snowy Forest
-twilightforest:twilight_glacier	Twilight Glacier
-twilightforest:twilight_clearing	Twilight Clearing
-twilightforest:oak_savannah	Oak Savanna
-twilightforest:firefly_forest	Firefly Forest
-twilightforest:deep_mushroom_forest	Deep Mushroom Forest
-twilightforest:dark_forest	Dark Forest
-twilightforest:enchanted_forest	Enchanted Forest
-twilightforest:fire_swamp	Fire Swamp
-twilightforest:dark_forest_center	Dark Forest Center
-twilightforest:highlands_center	Final Plateau
-twilightforest:thornlands	Thornlands
-twilightforest:spooky_forest	Spooky Forest
*/
/*
Ember Bore
The default set is used when none of the other sets apply.
EmberBoreSet mods.embers.EmberBore.getDefault()
Integer[] boreset.dimensions = [<dimension1>,<dimension2>,...] (getter/setter)
String[] boreset.biomes = [<biome1>,<biome2>,...] (getter/setter)
WeightedItemStack[] boreset.stacks (getter)
boreset.addOutput(WeightedItemStack <output>)
boreset.removeOutput(IItemStack <output>)
Clears all outputs for this set
boreset.clear()
*/
//Fiery Stuff so arc furnace isn't a bad boy
recipes.addShaped(<twilightforest:fiery_leggings>, [[<twilightforest:fiery_ingot>, <twilightforest:fiery_ingot>, <twilightforest:fiery_ingot>],[<twilightforest:fiery_ingot>, null, <twilightforest:fiery_ingot>], [<twilightforest:fiery_ingot>, null, <twilightforest:fiery_ingot>]]);
recipes.addShaped(<twilightforest:fiery_helmet>, [[<twilightforest:fiery_ingot>, <twilightforest:fiery_ingot>, <twilightforest:fiery_ingot>],[<twilightforest:fiery_ingot>, null, <twilightforest:fiery_ingot>]]);
recipes.addShaped(<twilightforest:fiery_boots>, [[<twilightforest:fiery_ingot>, null, <twilightforest:fiery_ingot>],[<twilightforest:fiery_ingot>, null, <twilightforest:fiery_ingot>]]);
recipes.addShaped(<twilightforest:fiery_chestplate>, [[<twilightforest:fiery_ingot>, null, <twilightforest:fiery_ingot>],[<twilightforest:fiery_ingot>, <twilightforest:fiery_ingot>, <twilightforest:fiery_ingot>], [<twilightforest:fiery_ingot>, <twilightforest:fiery_ingot>, <twilightforest:fiery_ingot>]]);
recipes.addShaped(<twilightforest:fiery_pickaxe>, [[<twilightforest:fiery_ingot>, <twilightforest:fiery_ingot>, <twilightforest:fiery_ingot>],[null, <minecraft:blaze_rod>, null], [null, <minecraft:blaze_rod>, null]]);

//transformation_powder
recipes.addShapeless(<twilightforest:transformation_powder>, [<deepmoblearning:living_matter_twilight>,<astralsorcery:itemusabledust>,<astralsorcery:itemusabledust>]);

##########################################################################################
print("==================== end of twilight_forest.zs ====================");
