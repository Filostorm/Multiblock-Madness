import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;
import mods.bloodmagic.TartaricForge;
import mods.bloodmagic.BloodAltar;
import mods.thaumcraft.Crucible;
import mods.thaumcraft.ArcaneWorkbench;
import mods.astralsorcery.Altar;
import mods.immersiveengineering.Squeezer;
import crafttweaker.block.IBlockState;
import mods.animus.AnimusPlugin;
import mods.bloodmagic.AlchemyTable;
import mods.nuclearcraft.Pressurizer;
import mods.tconstruct.Casting;


print("==================== loading blood_magic.zs ====================");
##########################################################################################

//Blood Altar
//InputStack, OutputStack, TierRequired, LPRequired, UsageRate, DrainRate

val itemstoRemove =
[
	<bloodmagic:sacrificial_dagger>,
	<bloodmagic:soul_snare>,
	<bloodmagic:soul_forge>,
	<twilightforest:fiery_ingot>,
	<tconstruct:soil:3>,
//	<bloodarsenal:glass_shards>,
	<bloodmagic:demon_crucible>,
	<bloodmagic:demon_pylon>,
	<bloodmagic:demon_crystallizer>,
	<twilightforest:fiery_sword>,
	<bloodmagic:blood_rune>,
	<bloodmagic:alchemy_table>,
	<bloodmagic:activation_crystal:1>,
	<bloodmagic:decorative_brick>,
	<animus:altardiviner>,
]
 as IItemStack[];

for item in itemstoRemove {
	recipes.remove(item);
}

## MOVED TO TINKERS
//Limestone Flux
//mods.bloodmagic.AlchemyTable.addRecipe(IItemStack output, IItemStack[] inputs, int syphon, int ticks, int minTier);
//mods.bloodmagic.AlchemyTable.addRecipe(<contenttweaker:limestone_flux>*3, [<ore:limestoneforFlux>, <bloodmagic:cutting_fluid:1>], 200,200,1);

//<thaumadditions:mithrillium_resonator>
<botania:conjurationcatalyst>.addTooltip(format.gold("Can be used as a catalyst in the Mark of the Falling Tower ritual"));
<botania:conjurationcatalyst>.addTooltip(format.darkRed("Requires 5,000,000 LP in your Blood Orb"));

<contenttweaker:starmetal_block>.addTooltip(format.gold("Can be used as a catalyst in the Mark of the Falling Tower ritual"));
<contenttweaker:starmetal_block>.addTooltip(format.darkRed("Requires 1,000,000 LP in your Blood Orb"));
<immersiveengineering:storage:5>.addTooltip(format.gold("Can be used as a catalyst in the Mark of the Falling Tower ritual"));
<immersiveengineering:storage:5>.addTooltip(format.darkRed("Requires 2,500,000 LP in your Blood Orb"));

//Automating Blood
//mods.immersiveengineering.Mixer.addRecipe(<liquid:lifeessence>*1000, <liquid:potion>.withTag({Potion: "minecraft:harming"})*1000, [<botania:manaresource:23>], 1024);
//New Blood Recipe
//mods.immersiveengineering.Mixer.addRecipe(<liquid:lifeessence>*1000, <liquid:refined_life_essence>*250, [<techreborn:dust:6>], 512);


Crucible.registerRecipe("BucketLife", "",
    <forge:bucketfilled>.withTag({FluidName: "lifeessence", Amount: 1000}), <minecraft:bucket>,
	[<aspect:victus> * 10, <aspect:mortuus> * 1, <aspect:auram> * 1]
);



/*
mods.bloodmagic.BloodAltar.addRecipe(IItemStack output, IItemStack input, int minimumTier, int syphon, int consumeRate, int drainRate);
The syphon value is the amount of Life Essence to syphon from the Blood Altar over the course of the craft.
The consumeRate is how quickly the Life Essence is syphoned.
The drainRate is how quickly progress is lost if the Blood Altar runs out of Life Essence during the craft.
*/

#--------------Weak blood orb
BloodAltar.removeRecipe(<minecraft:diamond>);
BloodAltar.addRecipe(<bloodmagic:blood_orb>.withTag({orb: "bloodmagic:weak"}), <twilightforest:naga_scale>, 0, 2000, 12, 12);


//Casting.addTableRecipe(<bloodmagic:blood_orb>.withTag({orb: "bloodmagic:weak"}), <twilightforest:naga_scale>, <liquid:blood>, 400, true, 200);

#--------------apprentice blood orb
BloodAltar.removeRecipe(<minecraft:redstone_block>);
BloodAltar.addRecipe(<bloodmagic:blood_orb>.withTag({orb: "bloodmagic:apprentice"}), <botania:rune:4>, 1, 5000, 15, 10);

#--------------magician blood orb
BloodAltar.removeRecipe(<minecraft:gold_block>);
BloodAltar.addRecipe(<bloodmagic:blood_orb>.withTag({orb: "bloodmagic:magician"}), <embers:ember_cluster>, 2, 20000, 200, 20);


//dawn inscription
BloodAltar.removeRecipe(<minecraft:glowstone>);
BloodAltar.addRecipe(<bloodmagic:inscription_tool:6>.withTag({uses: 10}), <embers:block_dawnstone>, 5, 200000, 100, 100);


//Awakened Activation Crystal
BloodAltar.addRecipe(<bloodmagic:activation_crystal:1>, <actuallyadditions:item_misc:19>, 3, 40000, 50, 50);


//dusk inscription
mods.thermalexpansion.InductionSmelter.addRecipe(<quark:biotite>, <actuallyadditions:item_misc:5>, <botania:manaresource:15>*8, 5000);
mods.techreborn.implosionCompressor.addRecipe(<quark:biotite_block>, null, <quark:biotite>*9, <minecraft:tnt>*16, 40, 10000);
mods.thermalexpansion.Pulverizer.removeRecipe(<quark:biotite_block>);
mods.thermalexpansion.Pulverizer.removeRecipe(<quark:biotite_slab>);
mods.thermalexpansion.Pulverizer.removeRecipe(<quark:biotite_block:1>);
mods.thermalexpansion.Pulverizer.removeRecipe(<quark:biotite_stairs>);
mods.thermalexpansion.Pulverizer.addRecipe(<quark:biotite>*9, <quark:biotite_block>, 3000);

BloodAltar.removeRecipe(<minecraft:coal_block>);
BloodAltar.addRecipe(<bloodmagic:inscription_tool:5>.withTag({uses: 10}), <quark:biotite_block>, 3, 50000, 25, 20);


//Extra Rune Recipes
recipes.removeShaped(<bloodmagic:blood_rune:3> * 4, [[<ore:stone>, <ore:stone>, <ore:stone>],[<ore:stone>, <bloodarsenal:gem:1>, <ore:stone>], [<ore:stone>, <ore:stone>, <ore:stone>]]);
recipes.removeShaped(<bloodmagic:blood_rune:4> * 4, [[<ore:stone>, <ore:stone>, <ore:stone>],[<ore:stone>, <bloodarsenal:gem>, <ore:stone>], [<ore:stone>, <ore:stone>, <ore:stone>]]);
recipes.addShaped(<bloodmagic:blood_rune:4> * 4, [[null, <bloodmagic:blood_rune>, null],[<bloodmagic:blood_rune>, <bloodarsenal:gem>, <bloodmagic:blood_rune>], [null, <bloodmagic:blood_rune>, null]]);
recipes.addShaped(<bloodmagic:blood_rune:3> * 4, [[null, <bloodmagic:blood_rune>, null],[<bloodmagic:blood_rune>, <bloodarsenal:gem:1>, <bloodmagic:blood_rune>], [null, <bloodmagic:blood_rune>, null]]);

//Blood Bronze
BloodAltar.addRecipe(<bloodtinker:blood_bronze_ingot>, <thermalfoundation:material:163>, 1, 2000, 12, 12);


# Blank Slate
<bloodarsenal:slate>.displayName = "Block of Slates";
/*<bloodarsenal:slate:1>.displayName = "Block of Reinforced Slates";
<bloodarsenal:slate:2>.displayName = "Block of Imbued Slates";
<bloodarsenal:slate:3>.displayName = "Block of Demonic Slates";
<bloodarsenal:slate:4>.displayName = "Block of Ethereal Slates";*/
	BloodAltar.removeRecipe(<minecraft:stone>);
	BloodAltar.addRecipe(<bloodmagic:slate>, <thaumcraft:stone_arcane>, 0, 1000, 10, 10);

<bloodmagic:blood_shard>.addTooltip(format.red("Dropped from mobs slain by a Bound Blade"));
<bloodmagic:soul_snare>.addTooltip(format.red("Use the Sentient Sword to collect will"));

//Hellfire Forge
recipes.addShaped(<bloodmagic:soul_forge>, [[<twilightforest:fiery_ingot>, null, <twilightforest:fiery_ingot>],[<quark:magma_bricks>, <bloodmagic:monster_soul>, <quark:magma_bricks>], [<quark:magma_bricks>, <thaumcraft:pedestal_arcane>, <quark:magma_bricks>]]);
TartaricForge.removeRecipe([<bloodmagic:soul_gem>.withTag({}), <minecraft:iron_sword>]);
//TartaricForge.addRecipe(IItemStack output, IItemStack[] inputs, double minSouls, double soulDrain);
TartaricForge.removeRecipe([<minecraft:bucket>, <minecraft:string>, <minecraft:gunpowder>, <minecraft:string>]);
TartaricForge.addRecipe(<bloodmagic:component:4>,[<minecraft:bucket>, <minecraft:string>, <minecraft:gunpowder>, <thaumcraft:nugget:7>], 64,10);


recipes.addShaped(<twilightforest:fiery_sword>.withTag({ench: [{lvl: 2 as short, id: 20 as short}]}), [[null, <twilightforest:fiery_ingot>, null],[null, <twilightforest:fiery_ingot>, null], [null, <minecraft:blaze_rod>, null]]);

mods.thaumcraft.Crucible.registerRecipe("sentient_sword", "",
    <bloodmagic:sentient_sword>.withTag({ench: [{lvl: 3 as short, id: 21 as short}, {lvl: 1 as short, id: 70 as short}], RepairCost: 1}), <twilightforest:fiery_sword>.withTag({ench: [{lvl: 2 as short, id: 20 as short}]}),
	[<aspect:victus> * 30, <aspect:cognitio> * 15, <aspect:infernum> * 30]
);
mods.thaumcraft.Crucible.registerRecipe("sacrificial_dagger", "",
    <bloodmagic:sacrificial_dagger>, <twilightforest:steeleaf_sword>.withTag({ench: [{lvl: 2 as short, id: 21 as short}]}),
	[<aspect:aversio> * 20, <aspect:humanus> * 10, <aspect:mortuus> * 30]
);

//Zombie Head
//mods.bloodmagic.AlchemyTable.addRecipe(IItemStack output, IItemStack[] inputs, int syphon, int ticks, int minTier);
AlchemyTable.addRecipe(<minecraft:skull:2>, [<thaumcraft:brain>, <thaumcraft:flesh_block>], 500,200,1);

//Binding Reagent
TartaricForge.removeRecipe([<minecraft:gunpowder>, <minecraft:redstone>, <minecraft:glowstone_dust>, <minecraft:gold_nugget>]);
TartaricForge.addRecipe(<bloodmagic:component:8>,[<botania:manaresource:23>, <enderio:item_alloy_ingot:1>, <bloodarsenal:base_item:2>, <thermalfoundation:material:833>], 100,10);

//Graveyard/glass combo
TartaricForge.addRecipe(<tconstruct:soil:3>,[<quark:black_ash>, <tombstone:crafting_ingredient:3>, <randomthings:fertilizeddirt>, <bloodmagic:blood_shard>], 150,20);
//mods.botania.ElvenTrade.addRecipe([<bloodarsenal:glass_shards>], [<bloodmagic:item_demon_crystal:3>,<bloodarsenal:base_item>*9]);

//Ash
TartaricForge.removeRecipe([<minecraft:dye:15>, <minecraft:gunpowder>, <minecraft:redstone>, <minecraft:coal>]);
ArcaneWorkbench.registerShapedRecipe("CTAsh", "", 200, [<aspect:ignis>,<aspect:terra>,<aspect:perditio>],
<bloodmagic:arcane_ashes>, 
[[<jaopca:item_dustaquamarine>, <contenttweaker:slatedust>, <embers:dust_ash>],
[<contenttweaker:slatedust>, <botania:manaresource:23>, <contenttweaker:slatedust>], 
[<embers:dust_ash>, <contenttweaker:slatedust>, <minecraft:redstone>]]
);

//crystl brik
recipes.addShaped(<bloodmagic:decorative_brick:2>, [[<environmentaltech:kyronite_crystal>, <bloodmagic:item_demon_crystal:1>, <environmentaltech:kyronite_crystal>],[<bloodmagic:item_demon_crystal:3>, <extendedcrafting:material:12>, <bloodmagic:item_demon_crystal:4>], [<environmentaltech:kyronite_crystal>, <bloodmagic:item_demon_crystal:2>, <environmentaltech:kyronite_crystal>]]);
recipes.addShaped(<bloodmagic:decorative_brick:3> * 4, [[<bloodmagic:decorative_brick:2>, <bloodmagic:decorative_brick:2>],[<bloodmagic:decorative_brick:2>, <bloodmagic:decorative_brick:2>]]);


//Altar.addTraitAltarRecipe(string recipeLocation, IItemStack output, int starlight, int craftTickTime, IIngredient[] inputs, @optional String iRequiredConstellationFocusName);

TartaricForge.removeRecipe([<bloodmagic:soul_forge>, <minecraft:stone>, <minecraft:dye:4>, <minecraft:glass>]);
TartaricForge.removeRecipe([<bloodmagic:item_demon_crystal>, <minecraft:stone>, <minecraft:dye:4>, <minecraft:iron_block>]);
TartaricForge.removeRecipe([<minecraft:diamond>, <minecraft:stone>, <minecraft:dye:4>, <minecraft:cauldron>]);
Altar.addTraitAltarRecipe("mm:shaped/internal/altar/demon_crystallizer", <bloodmagic:demon_crystallizer>, 5000, 400, [

	<techreborn:plates:32>, <enderio:item_material:16>, <techreborn:plates:32>,
	<techreborn:plates:32>, <bloodmagic:soul_forge>, <techreborn:plates:32>, 
	<techreborn:plates:32>, <bloodmagic:blood_shard>, <techreborn:plates:32>,

	<cyclicmagic:spikes_diamond>, <cyclicmagic:spikes_diamond>, <techreborn:plates:32>, <techreborn:plates:32>,
	null, 	null,	
	<techreborn:plates:32>, <techreborn:plates:32>, 
	null, null,
	<techreborn:plates:32>, <techreborn:plates:32>,
	null, null,
	null, <techreborn:plates:32>,
	//Outer Items, indices 25+
	<bloodmagic:monster_soul>, <bloodmagic:monster_soul>, <bloodmagic:monster_soul>, <bloodmagic:monster_soul>, <bloodmagic:monster_soul>
]);

Altar.addTraitAltarRecipe("mm:shaped/internal/altar/demon_pylon", <bloodmagic:demon_pylon>, 5000, 400, [

	<techreborn:plates:32>, <enderio:item_material:17>, <techreborn:plates:32>,
	<techreborn:plates:32>, <botania:pylon>, <techreborn:plates:32>, 
	<techreborn:plates:32>, <bloodmagic:blood_shard>, <techreborn:plates:32>,

	null, null, <techreborn:plates:32>, <techreborn:plates:32>,
	null, null,	
	<techreborn:plates:32>, <techreborn:plates:32>, 
	null, null,
	<techreborn:plates:32>, <techreborn:plates:32>,
	<cyclicmagic:spikes_diamond>, null,
	null, <techreborn:plates:32>,
	//Outer Items, indices 25+
	<bloodmagic:monster_soul>, <bloodmagic:monster_soul>, <bloodmagic:monster_soul>, <bloodmagic:monster_soul>, <bloodmagic:monster_soul>
]);

Altar.addTraitAltarRecipe("mm:shaped/internal/altar/demon_crucible", <bloodmagic:demon_crucible>, 5000, 400, [

	<techreborn:plates:32>, <enderio:item_material:19>, <techreborn:plates:32>,
	<techreborn:plates:32>, <thaumcraft:crucible>, <techreborn:plates:32>, 
	<techreborn:plates:32>, <bloodmagic:blood_shard>, <techreborn:plates:32>,

	null, null, <techreborn:plates:32>, <techreborn:plates:32>,
	<cyclicmagic:spikes_diamond>, 	<cyclicmagic:spikes_diamond>,	
	<techreborn:plates:32>, <techreborn:plates:32>, 
	null, null,
	<techreborn:plates:32>, <techreborn:plates:32>,
	null, null,
	null, <techreborn:plates:32>,
	//Outer Items, indices 25+
	<bloodmagic:monster_soul>, <bloodmagic:monster_soul>, <bloodmagic:monster_soul>, <bloodmagic:monster_soul>, <bloodmagic:monster_soul>
]);


//Loose Traction 
recipes.addShaped(<bloodmagic:upgrade_tome>.withTag({level: 0, key: "bloodmagic.upgrade.slippery"}), [[null, <minecraft:ice>, null],[<minecraft:ice>, <bloodmagic:upgrade_tome>.withTag({level: 9, key: "bloodmagic.upgrade.slowness"}).onlyWithTag({level: 9, key: "bloodmagic.upgrade.slowness"}), <minecraft:ice>], [null, <minecraft:ice>, null]]);

//Blank Runes
Squeezer.addRecipe(<bloodmagic:blood_rune>, <liquid:stone>*288, <contenttweaker:slatedust> * 4, 256);

// compressor.addRecipe(<bloodmagic:blood_rune>, <contenttweaker:slatedust>*4, 600, 50);
Pressurizer.addRecipe(<contenttweaker:slatedust>*4, <bloodmagic:blood_rune>);

//VOIDSTONE BOIIIIII
<bloodmagic:sanguine_book>.addTooltip(format.darkPurple("Primal Voidstone Eye is used as the tier 3 Capstones"));
<chisel:energizedvoidstone:6>.addTooltip(format.darkPurple("Used as the tier 3 Capstones for the Blood Altar"));
AlchemyTable.addRecipe(<chisel:energizedvoidstone:6> *4, [<botania:thirdeye>,<chisel:energizedvoidstone>,<chisel:energizedvoidstone>,<chisel:energizedvoidstone>,<chisel:energizedvoidstone>], 1000, 100, 2);
AnimusPlugin.removeComponentMapping(<blockstate:minecraft:glowstone>,"GLOWSTONE");
AnimusPlugin.removeComponentMapping(<blockstate:minecraft:sea_lantern>,"GLOWSTONE");
AnimusPlugin.removeComponentMapping(<blockstate:chisel:glowstone:variation=0>,"GLOWSTONE");
AnimusPlugin.removeComponentMapping(<blockstate:chisel:glowstone:variation=1>,"GLOWSTONE");
AnimusPlugin.removeComponentMapping(<blockstate:chisel:glowstone:variation=10>,"GLOWSTONE");
AnimusPlugin.removeComponentMapping(<blockstate:chisel:glowstone:variation=11>,"GLOWSTONE");
AnimusPlugin.removeComponentMapping(<blockstate:chisel:glowstone:variation=12>,"GLOWSTONE");
AnimusPlugin.removeComponentMapping(<blockstate:chisel:glowstone:variation=13>,"GLOWSTONE");
AnimusPlugin.removeComponentMapping(<blockstate:chisel:glowstone:variation=14>,"GLOWSTONE");
AnimusPlugin.removeComponentMapping(<blockstate:chisel:glowstone:variation=15>,"GLOWSTONE");
AnimusPlugin.removeComponentMapping(<blockstate:chisel:glowstone:variation=2>,"GLOWSTONE");
AnimusPlugin.removeComponentMapping(<blockstate:chisel:glowstone:variation=3>,"GLOWSTONE");
AnimusPlugin.removeComponentMapping(<blockstate:chisel:glowstone:variation=4>,"GLOWSTONE");
AnimusPlugin.removeComponentMapping(<blockstate:chisel:glowstone:variation=5>,"GLOWSTONE");
AnimusPlugin.removeComponentMapping(<blockstate:chisel:glowstone:variation=6>,"GLOWSTONE");
AnimusPlugin.removeComponentMapping(<blockstate:chisel:glowstone:variation=7>,"GLOWSTONE");
AnimusPlugin.removeComponentMapping(<blockstate:chisel:glowstone:variation=8>,"GLOWSTONE");
AnimusPlugin.removeComponentMapping(<blockstate:chisel:glowstone:variation=9>,"GLOWSTONE");
AnimusPlugin.removeComponentMapping(<blockstate:chisel:glowstone1:variation=0>,"GLOWSTONE");
AnimusPlugin.removeComponentMapping(<blockstate:chisel:glowstone1:variation=1>,"GLOWSTONE");
AnimusPlugin.removeComponentMapping(<blockstate:chisel:glowstone1:variation=10>,"GLOWSTONE");
AnimusPlugin.removeComponentMapping(<blockstate:chisel:glowstone1:variation=11>,"GLOWSTONE");
AnimusPlugin.removeComponentMapping(<blockstate:chisel:glowstone1:variation=12>,"GLOWSTONE");
AnimusPlugin.removeComponentMapping(<blockstate:chisel:glowstone1:variation=13>,"GLOWSTONE");
AnimusPlugin.removeComponentMapping(<blockstate:chisel:glowstone1:variation=14>,"GLOWSTONE");
AnimusPlugin.removeComponentMapping(<blockstate:chisel:glowstone1:variation=2>,"GLOWSTONE");
AnimusPlugin.removeComponentMapping(<blockstate:chisel:glowstone1:variation=3>,"GLOWSTONE");
AnimusPlugin.removeComponentMapping(<blockstate:chisel:glowstone1:variation=4>,"GLOWSTONE");
AnimusPlugin.removeComponentMapping(<blockstate:chisel:glowstone1:variation=5>,"GLOWSTONE");
AnimusPlugin.removeComponentMapping(<blockstate:chisel:glowstone1:variation=6>,"GLOWSTONE");
AnimusPlugin.removeComponentMapping(<blockstate:chisel:glowstone1:variation=7>,"GLOWSTONE");
AnimusPlugin.removeComponentMapping(<blockstate:chisel:glowstone1:variation=8>,"GLOWSTONE");
AnimusPlugin.removeComponentMapping(<blockstate:chisel:glowstone1:variation=9>,"GLOWSTONE");
AnimusPlugin.removeComponentMapping(<blockstate:chisel:glowstone2:variation=0>,"GLOWSTONE");


AnimusPlugin.addComponentMapping(<blockstate:chisel:energizedvoidstone:variation=6>, "GLOWSTONE");

// Altar Diviner
recipes.addShapeless(<animus:altardiviner>, [<bloodmagic:sanguine_book>, <bloodmagic:blood_rune>]);

//alchemy_table
recipes.addShaped(<bloodmagic:alchemy_table>, [
	[<botania:vial>, <moreplates:gold_stick>, <botania:vial>],
	[<moreplates:gold_stick>, <moreplates:restonia_plate>, <moreplates:gold_stick>], 
	[<thaumcraft:stone_arcane>, <thaumcraft:stone_arcane>, <thaumcraft:stone_arcane>]
]);

<bloodmagic:ritual_stone:3>.addTooltip(format.green("Use an Earth Inscription Tool on a blank Ritual Stone"));

/*
val runeUncrafting =
[
<bloodmagic:blood_rune:10>,
<bloodmagic:blood_rune:9>,
<bloodmagic:blood_rune:8>,
<bloodmagic:blood_rune:7>,
<bloodmagic:blood_rune:6>,
<bloodmagic:blood_rune:5>,
<bloodmagic:blood_rune:4>,
<bloodmagic:blood_rune:3>,
<bloodmagic:blood_rune:1>,
]
 as IItemStack[];

for item in runeUncrafting {
recipes.addShapeless(<bloodmagic:blood_rune>, [item]);
}*/

//Ritual Dismantler
TartaricForge.removeRecipe([<bloodmagic:item_demon_crystal:2>, <bloodmagic:item_demon_crystal:2>, <bloodmagic:blood_shard>, <bloodmagic:ritual_diviner>]);
mods.inworldcrafting.FluidToItem.transform(<bloodmagic:ritual_dismantler>, <liquid:liquid_death>, [<bloodmagic:ritual_diviner>,<bloodmagic:blood_shard>], true);

//"Easy" Blood Diamonds
mods.inworldcrafting.FluidToItem.transform(<bloodarsenal:blood_diamond>, <liquid:refined_life_essence>, [<botania:manaresource:2>,<minecraft:dragon_breath>], true);

# [Bloodstone Brick] from [Weak Blood Shard][+2]
craft.remake(<bloodmagic:decorative_brick:1>*2, ["pretty",
  "¤ S ¤",
  "S W S",
  "¤ S ¤"], {
  "¤": <ore:plateBloodBronze>,          # Blood Bronze Plate
  "S": <tcomplement:scorched_block:3>, # Scorched Bricks
  "W": <bloodmagic:blood_shard>,       # Weak Blood Shard
});
//Brick Swaping
recipes.addShaped(<bloodmagic:decorative_brick:1> * 4, [[<bloodmagic:decorative_brick>, <bloodmagic:decorative_brick>],[<bloodmagic:decorative_brick>, <bloodmagic:decorative_brick>]]);
furnace.addRecipe(<bloodmagic:decorative_brick>, <bloodmagic:decorative_brick:1>, 0.0);

val bloodOrb = [
	<bloodmagic:blood_orb>.withTag({orb: "bloodmagic:weak"}),
	<bloodmagic:blood_orb>.withTag({orb: "bloodmagic:apprentice"}),
	<bloodmagic:blood_orb>.withTag({orb: "bloodmagic:magician"}),
	<bloodmagic:blood_orb>.withTag({orb: "bloodmagic:master"}),
	<bloodmagic:blood_orb>.withTag({orb: "bloodmagic:archmage"}),
	<bloodmagic:blood_orb>.withTag({orb: "bloodmagic:transcendent"}),
] as IItemStack[];

val bloodOrbLeast = [
	bloodOrb[0]|bloodOrb[1]|bloodOrb[2]|bloodOrb[3]|bloodOrb[4]|bloodOrb[5],
	bloodOrb[1]|bloodOrb[2]|bloodOrb[3]|bloodOrb[4]|bloodOrb[5],
	bloodOrb[2]|bloodOrb[3]|bloodOrb[4]|bloodOrb[5],
	bloodOrb[3]|bloodOrb[4]|bloodOrb[5],
	bloodOrb[4]|bloodOrb[5],
	bloodOrb[5],
] as IIngredient[];

# [Stasis Plate] from [Colored Lens][+3]
craft.remake(<bloodarsenal:stasis_plate>, ["pretty",
  "□ □ □",
  "□ C □",
  "▬ W ▬"], {
  "□": <bloodarsenal:base_item:5>,        # Stasis Plate
  "C": <astralsorcery:itemcoloredlens:3>, # Colored Lens
  "▬": <ore:ingotBloodInfusedIron>,       # Blood Infused Iron Ingot
  "W": bloodOrbLeast[3].reuse(), # any of the last 3 tiers of Blood Orb
});

//Inert Blood-Iron Ingot
TartaricForge.removeRecipe([<minecraft:iron_ingot>, <bloodarsenal:base_item:2>, <bloodmagic:component:8>, <forge:bucketfilled>.withTag({FluidName: "lifeessence", Amount: 1000})]);
TartaricForge.addRecipe(<bloodarsenal:base_item:3>,[<ore:ingotRefinedIron>, <contenttweaker:blood_crystal>, <bloodmagic:component:8>, <ore:quartzMana>], 128,32);

##########################################################################################
print("==================== end of blood_magic.zs ====================");
