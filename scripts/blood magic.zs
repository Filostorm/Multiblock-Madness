import crafttweaker.item.IItemStack;
import mods.bloodmagic.TartaricForge;
import mods.bloodmagic.BloodAltar;
print("==================== loading blood magic.zs ====================");
##########################################################################################

//Blood Altar
//InputStack, OutputStack, TierRequired, LPRequired, UsageRate, DrainRate

val itemstoRemove =
[
	<bloodmagic:sacrificial_dagger>,
	<bloodmagic:soul_snare>,
	<bloodmagic:soul_forge>,
	<twilightforest:fiery_ingot>,
]
 as IItemStack[];

for item in itemstoRemove {
	recipes.remove(item);
}

#--------------Weak blood orb
BloodAltar.removeRecipe(<minecraft:diamond>);
BloodAltar.addRecipe(<bloodmagic:blood_orb>.withTag({orb: "bloodmagic:weak"}), <twilightforest:naga_scale>, 0, 2000, 12, 12);

#--------------apprentice blood orb
BloodAltar.removeRecipe(<minecraft:redstone_block>);
BloodAltar.addRecipe(<bloodmagic:blood_orb>.withTag({orb: "bloodmagic:apprentice"}), <botania:rune:4>, 1, 5000, 30, 20);

#--------------magician blood orb
BloodAltar.removeRecipe(<minecraft:gold_block>);
BloodAltar.addRecipe(<bloodmagic:blood_orb>.withTag({orb: "bloodmagic:magician"}), <embers:ember_cluster>, 2, 25000, 30, 20);


//dawn inscription
BloodAltar.removeRecipe(<minecraft:glowstone>);
BloodAltar.addRecipe(<bloodmagic:inscription_tool:6>.withTag({uses: 10}), <embers:block_dawnstone>, 3, 200000, 12, 12);

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

recipes.addShaped(<bloodmagic:soul_forge>, [[<twilightforest:fiery_ingot>, null, <twilightforest:fiery_ingot>],[<quark:magma_bricks>, <bloodmagic:monster_soul>, <quark:magma_bricks>], [<quark:magma_bricks>, <thaumcraft:pedestal_arcane>, <quark:magma_bricks>]]);
TartaricForge.removeRecipe([<bloodmagic:soul_gem>.withTag({}), <minecraft:iron_sword>]);
//TartaricForge.addRecipe(IItemStack output, IItemStack[] inputs, double minSouls, double soulDrain);
TartaricForge.removeRecipe([<minecraft:bucket>, <minecraft:string>, <minecraft:gunpowder>, <minecraft:string>]);
TartaricForge.addRecipe(<bloodmagic:component:4>,[<minecraft:bucket>, <minecraft:string>, <minecraft:gunpowder>, <thaumcraft:nugget:7>], 64,10);

<ore:hotStuff>.add(<twilightforest:fiery_tears>);
<ore:hotStuff>.add(<twilightforest:fiery_blood>);
//<ore:hotStuff>add(<iceandfire:fire_dragon_blood>);
recipes.addShapeless(<twilightforest:fiery_ingot>, [<ore:hotStuff>,<thebetweenlands:octine_ingot>]);


mods.thaumcraft.Crucible.registerRecipe("sentient_sword", "",
    <bloodmagic:sentient_sword>.withTag({ench: [{lvl: 3 as short, id: 21 as short}]}), <botania:manasteelsword>,
	[<aspect:victus> * 30, <aspect:cognitio> * 15, <aspect:infernum> * 30]
);
mods.thaumcraft.Crucible.registerRecipe("sacrificial_dagger", "",
    <bloodmagic:sacrificial_dagger>, <thebetweenlands:bone_sword>,
	[<aspect:aversio> * 20, <aspect:humanus> * 10, <aspect:mortuus> * 30]
);

//mods.bloodmagic.AlchemyTable.addRecipe(IItemStack output, IItemStack[] inputs, int syphon, int ticks, int minTier);
mods.bloodmagic.AlchemyTable.addRecipe(<minecraft:skull:2>, [<thaumcraft:brain>, <additionalcompression:meatrotten_compressed>], 500,200,0);


##########################################################################################
print("==================== end of blood magic.zs ====================");
