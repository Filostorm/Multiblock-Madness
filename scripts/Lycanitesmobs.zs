#modloaded lycanitesmobs
import crafttweaker.item.IItemStack;
import mods.tcomplement.highoven.HighOven;
import mods.tcomplement.highoven.MixRecipeBuilder;
import mods.tcomplement.highoven.MixRecipeManager;
print("==================== loading mods lycanitesmobs.zs ====================");
##########################################################################################

val itemstoRemove =
[
    <lycanitesmobs:aberrantstone>,
    <lycanitesmobs:demonstone>,
    <lycanitesmobs:equipmentforge_lesser>,
    <lycanitesmobs:lushstone>,
    <lycanitesmobs:shadowstone>,
    <lycanitesmobs:immunizer>,
    <lycanitesmobs:summoningstaff>,
    <lycanitesmobs:cleansingcrystal>,
    <lycanitesmobs:ironpaxel>,
]
 as IItemStack[];

for item in itemstoRemove {
	recipes.remove(item);
}

<ore:crystalforMystical>.add(<lycanitesmobs:cleansingcrystal>);

var pigIron = HighOven.manageMixRecipe(<liquid:pigiron>, <liquid:iron>);
pigIron.addPurifier(<lycanitesmobs:raw_maka_meat>, 50);
pigIron.addPurifier(<lycanitesmobs:raw_yeti_meat>, 50);


recipes.addShaped(<lycanitesmobs:equipmentforge_lesser>, [[<ore:stone>, <ore:stone>, <ore:stone>],[<ore:logWood>, <ore:workbench>, <ore:logWood>], [<ore:logWood>, <ore:logWood>, <ore:logWood>]]);
recipes.addShapeless(<lycanitesmobs:ironpaxel>.withTag({equipmentLevel: 1}), [<lycanitesmobs:woodenpaxel>,<tconstruct:shovel_head>.withTag({Material: "iron"}).onlyWithTag({Material: "iron"}),<tconstruct:axe_head>.withTag({Material: "iron"}).onlyWithTag({Material: "iron"}),<tconstruct:pick_head>.withTag({Material: "iron"}).onlyWithTag({Material: "iron"})]);


recipes.addShaped(<lycanitesmobs:aberrantstone> * 8, [[<thaumcraft:stone_arcane>, <thaumcraft:stone_arcane>, <thaumcraft:stone_arcane>],[<thaumcraft:stone_arcane>, <lycanitesmobs:lobdarklingscharge>, <thaumcraft:stone_arcane>], [<thaumcraft:stone_arcane>, <thaumcraft:stone_arcane>, <thaumcraft:stone_arcane>]]);
recipes.addShaped(<lycanitesmobs:lushstone> * 8, [[<botania:livingrock>, <botania:livingrock>, <botania:livingrock>],[<botania:livingrock>, <lycanitesmobs:lifedraincharge>, <botania:livingrock>], [<botania:livingrock>, <botania:livingrock>, <botania:livingrock>]]);
recipes.addShaped(<lycanitesmobs:demonstone> * 8, [[<bloodmagic:decorative_brick>, <bloodmagic:decorative_brick>, <bloodmagic:decorative_brick>],[<bloodmagic:decorative_brick>, <lycanitesmobs:hellfireballcharge>, <bloodmagic:decorative_brick>], [<bloodmagic:decorative_brick>, <bloodmagic:decorative_brick>, <bloodmagic:decorative_brick>]]);
recipes.addShaped(<lycanitesmobs:shadowstone> * 8, [[<thebetweenlands:smooth_betweenstone>, <thebetweenlands:smooth_betweenstone>, <thebetweenlands:smooth_betweenstone>],[<thebetweenlands:smooth_betweenstone>, <lycanitesmobs:spectralboltcharge>, <thebetweenlands:smooth_betweenstone>], [<thebetweenlands:smooth_betweenstone>, <thebetweenlands:smooth_betweenstone>, <thebetweenlands:smooth_betweenstone>]]);

recipes.addShaped(<lycanitesmobs:summoningstaff>, [[null, <contenttweaker:goldfoil>, <minecraft:ender_eye>],[<contenttweaker:goldfoil>, <botania:manaresource:3>, <contenttweaker:goldfoil>], [<thaumcraft:amber>, <contenttweaker:goldfoil>, null]]);

val elementsWater = <ore:elementsWater>;
elementsWater.add(<lycanitesmobs:mudshotcharge>);
elementsWater.add(<lycanitesmobs:icefireballcharge>);
elementsWater.add(<lycanitesmobs:aquapulsecharge>);
elementsWater.add(<lycanitesmobs:waterjetcharge>);

val elementsFire = <ore:elementsFire>;
elementsFire.add(<lycanitesmobs:embercharge>);
elementsFire.add(<lycanitesmobs:scorchfireballcharge>);

furnace.setFuel(<lycanitesmobs:embercharge>, 6400);
furnace.setFuel(<lycanitesmobs:scorchfireballcharge>, 6400);
furnace.setFuel(<lycanitesmobs:magmacharge>, 6400);

val elementsEarth = <ore:elementsEarth>;
elementsEarth.add(<lycanitesmobs:throwingscythecharge>);
elementsEarth.add(<lycanitesmobs:boulderblastcharge>);
elementsEarth.add(<lycanitesmobs:mudshotcharge>);

val elementsFae = <ore:elementsFae>;
elementsFae.add(<lycanitesmobs:bloodleechcharge>);
elementsFae.add(<lycanitesmobs:quillcharge>);
elementsFae.add(<lycanitesmobs:faeboltcharge>);
elementsFae.add(<lycanitesmobs:tricksterflarecharge>);

val elementsNether = <ore:elementsNether>;
elementsNether.add(<lycanitesmobs:doomfireballcharge>);
elementsNether.add(<lycanitesmobs:hellfireballcharge>);
elementsNether.add(<lycanitesmobs:demonicblastcharge>);

val elementsFrost = <ore:elementsFrost>;
elementsFrost.add(<lycanitesmobs:icefireballcharge>);
elementsFrost.add(<lycanitesmobs:frostboltcharge>);
elementsFrost.add(<lycanitesmobs:tundracharge>);
elementsFrost.add(<lycanitesmobs:frostwebcharge>);
elementsFrost.add(<lycanitesmobs:blizzardcharge>);

//crafting the talisman
recipes.addShaped(<thebetweenlands:swamp_talisman:1>, [[<thaumcraft:stone_arcane>, <thaumcraft:stone_arcane>, <thaumcraft:stone_arcane>],[<thaumcraft:stone_arcane>, <ore:elementsWater>, <thaumcraft:stone_arcane>], [<thaumcraft:stone_arcane>, <thaumcraft:stone_arcane>, <thaumcraft:stone_arcane>]]);
recipes.addShaped(<thebetweenlands:swamp_talisman:2>, [[<thaumcraft:stone_arcane>, <thaumcraft:stone_arcane>, <thaumcraft:stone_arcane>],[<thaumcraft:stone_arcane>, <ore:elementsEarth>, <thaumcraft:stone_arcane>], [<thaumcraft:stone_arcane>, <thaumcraft:stone_arcane>, <thaumcraft:stone_arcane>]]);
recipes.addShaped(<thebetweenlands:swamp_talisman:3>, [[<thaumcraft:stone_arcane>, <thaumcraft:stone_arcane>, <thaumcraft:stone_arcane>],[<thaumcraft:stone_arcane>, <ore:elementsFae>, <thaumcraft:stone_arcane>], [<thaumcraft:stone_arcane>, <thaumcraft:stone_arcane>, <thaumcraft:stone_arcane>]]);
recipes.addShaped(<thebetweenlands:swamp_talisman:4>, [[<thaumcraft:stone_arcane>, <thaumcraft:stone_arcane>, <thaumcraft:stone_arcane>],[<thaumcraft:stone_arcane>, <ore:elementsFire>, <thaumcraft:stone_arcane>], [<thaumcraft:stone_arcane>, <thaumcraft:stone_arcane>, <thaumcraft:stone_arcane>]]);

//Vinalla Recipes
recipes.addShaped(<minecraft:redstone> * 32, [[<ore:elementsEarth>, <ore:elementsEarth>],[<lycanitesmobs:crystalshardcharge>]]);
recipes.addShaped(<minecraft:dye:4> * 32, [[<ore:elementsEarth>, <lycanitesmobs:crystalshardcharge>, <lycanitesmobs:crystalshardcharge>]]);
recipes.addShaped(<minecraft:glowstone_dust> * 32, [[<ore:elementsEarth>, <lycanitesmobs:crystalshardcharge>, <ore:elementsNether>]]);
recipes.addShaped(<minecraft:blaze_powder> * 8, [[<ore:elementsNether>, <lycanitesmobs:whirlwindcharge>, <ore:elementsFire>]]);
recipes.addShaped(<minecraft:netherrack> * 64, [[<ore:elementsEarth>, <ore:elementsEarth>, <ore:elementsNether>]]);
recipes.addShaped(<minecraft:chorus_flower> * 4, [[<lycanitesmobs:devilstarcharge>, <lycanitesmobs:lifedraincharge>, null]]);
recipes.addShaped(<minecraft:chorus_fruit> * 4, [[<lycanitesmobs:lifedraincharge>, <lycanitesmobs:devilstarcharge>, null]]);
recipes.addShaped(<minecraft:iron_ingot> * 20, [[null, <ore:elementsEarth>, null],[<ore:elementsEarth>, <ore:elementsFire>, <ore:elementsEarth>], [null, <ore:elementsEarth>, null]]);
recipes.addShaped(<minecraft:gold_ingot> * 5, [[<ore:elementsEarth>, null, <ore:elementsEarth>],[null, <ore:elementsFire>, null], [<ore:elementsEarth>, null, <ore:elementsEarth>]]);
recipes.addShaped(<minecraft:gold_ore> * 4, [[<ore:elementsEarth>, null, <ore:elementsEarth>],[null, null, null], [<ore:elementsEarth>, null, <ore:elementsEarth>]]);
recipes.addShaped(<minecraft:iron_ore> * 16, [[null, <ore:elementsEarth>, null],[<ore:elementsEarth>, null, <ore:elementsEarth>], [null, <ore:elementsEarth>, null]]);
recipes.addShaped(<minecraft:gravel> * 64, [[<ore:elementsEarth>, <ore:elementsEarth>, <ore:elementsFire>]]);
recipes.addShaped(<minecraft:sand> * 64, [[<ore:elementsEarth>, <ore:elementsFire>, <ore:elementsEarth>]]);
recipes.addShaped(<minecraft:water_bucket>, [[<ore:elementsWater>],[<minecraft:bucket>]]);
recipes.addShaped(<minecraft:lava_bucket>, [[<lycanitesmobs:magmacharge>],[<minecraft:bucket>]]);
recipes.addShapeless(<minecraft:soul_sand> * 32, [<ore:elementsNether>,<ore:elementsEarth>]);
recipes.addShapeless(<minecraft:magma> * 32, [<ore:elementsFire>,<ore:elementsNether>,<ore:elementsEarth>]);
recipes.addShaped(<minecraft:log2:1> * 32, [[null, null, <ore:elementsEarth>],[null, <lycanitesmobs:lifedraincharge>, null], [null, null, null]]);
recipes.addShaped(<minecraft:log:3> * 32, [[<ore:elementsEarth>, null, null],[null, <lycanitesmobs:lifedraincharge>, null], [null, null, null]]);
recipes.addShaped(<minecraft:log:3> * 32, [[null, null, null],[null, <lycanitesmobs:lifedraincharge>, null], [null, <ore:elementsEarth>, null]]);
recipes.addShaped(<minecraft:log:2> * 32, [[null, null, null],[null, <lycanitesmobs:lifedraincharge>, <ore:elementsEarth>], [null, null, null]]);
recipes.addShaped(<minecraft:log:1> * 32, [[null, <ore:elementsEarth>, null],[null, <lycanitesmobs:lifedraincharge>, null], [null, null, null]]);
recipes.addShaped(<minecraft:log> * 32, [[null, null, null],[<ore:elementsEarth>, <lycanitesmobs:lifedraincharge>, null], [null, null, null]]);
recipes.addShaped(<minecraft:log2> * 32, [[null, null, null],[null, <lycanitesmobs:lifedraincharge>, null], [null, null, <ore:elementsEarth>]]);
recipes.addShaped(<minecraft:coal> * 32, [[<ore:elementsFire>, <ore:elementsEarth>, <lycanitesmobs:crystalshardcharge>]]);
recipes.addShaped(<minecraft:clay> * 32, [[<ore:elementsWater>, <ore:elementsEarth>, null]]);
recipes.addShaped(<minecraft:quartz> * 16, [[<ore:elementsEarth>, <lycanitesmobs:crystalshardcharge>, <lycanitesmobs:crystalshardcharge>]]);
recipes.addShaped(<minecraft:stone:5> * 64, [[<lycanitesmobs:crystalshardcharge>, <ore:elementsEarth>, <ore:elementsEarth>]]);
recipes.addShaped(<minecraft:stone:1> * 64, [[<ore:elementsEarth>, <ore:elementsEarth>, <lycanitesmobs:crystalshardcharge>]]);
recipes.addShaped(<minecraft:stone:3> * 64, [[<ore:elementsEarth>, <lycanitesmobs:crystalshardcharge>, <ore:elementsEarth>]]);
recipes.addShaped(<minecraft:end_stone> * 64, [[<ore:elementsEarth>, <ore:elementsEarth>, <lycanitesmobs:devilstarcharge>]]);
recipes.addShaped(<minecraft:cobblestone> * 64, [[<ore:elementsEarth>, <ore:elementsEarth>, null]]);
recipes.addShaped(<minecraft:stone> * 64, [[<ore:elementsEarth>, null, <ore:elementsEarth>]]);
recipes.addShaped(<minecraft:ender_pearl> * 4, [[null, <lycanitesmobs:devilstarcharge>, null],[<lycanitesmobs:devilstarcharge>, <lycanitesmobs:devilstarcharge>, <lycanitesmobs:devilstarcharge>], [null, <lycanitesmobs:devilstarcharge>, null]]);
recipes.addShaped(<minecraft:emerald> * 4, [[<lycanitesmobs:crystalshardcharge>, null, <lycanitesmobs:crystalshardcharge>],[null, <lycanitesmobs:crystalshardcharge>, null], [<lycanitesmobs:crystalshardcharge>, null, <lycanitesmobs:crystalshardcharge>]]);
recipes.addShaped(<minecraft:diamond> * 4, [[null, <lycanitesmobs:crystalshardcharge>, null],[<lycanitesmobs:crystalshardcharge>, <lycanitesmobs:crystalshardcharge>, <lycanitesmobs:crystalshardcharge>], [null, <lycanitesmobs:crystalshardcharge>, null]]);
recipes.addShaped(<minecraft:potato> * 16, [[<ore:elementsWater>, null, null],[null, <lycanitesmobs:lifedraincharge>, null], [null, null, <ore:elementsEarth>]]);
recipes.addShaped(<minecraft:carrot> * 16, [[null, null, <ore:elementsWater>],[null, <lycanitesmobs:lifedraincharge>, null], [<ore:elementsEarth>, null, null]]);
recipes.addShaped(<minecraft:beetroot> * 16, [[<ore:elementsEarth>, null, null],[null, <lycanitesmobs:lifedraincharge>, null], [null, null, <ore:elementsWater>]]);
recipes.addShaped(<minecraft:wheat> * 16, [[null, null, <ore:elementsEarth>],[null, <lycanitesmobs:lifedraincharge>, null], [<ore:elementsWater>, null, null]]);
recipes.addShaped(<minecraft:melon_block> * 8, [[null, null, null],[<ore:elementsEarth>, <lycanitesmobs:lifedraincharge>, <ore:elementsWater>], [null, null, null]]);
recipes.addShaped(<minecraft:pumpkin> * 8, [[null, <ore:elementsWater>, null],[null, <lycanitesmobs:lifedraincharge>, null], [null, <ore:elementsEarth>, null]]);
recipes.addShapeless(<minecraft:slime_ball> * 16, [<lycanitesmobs:acidsplashcharge>, <ore:elementsWater>]);
recipes.addShapeless(<minecraft:magma_cream> * 16, [<lycanitesmobs:acidsplashcharge>, <ore:elementsFire>]);

recipes.addShaped(<minecraft:packed_ice> * 32, [[<ore:elementsFrost>, null, <ore:elementsFrost>],[null, <ore:elementsWater>, null], [<ore:elementsFrost>, null, <ore:elementsFrost>]]);
recipes.addShaped(<minecraft:ice> * 32, [[<ore:elementsFrost>, null, null],[null, <ore:elementsWater>, null], [null, null, <ore:elementsFrost>]]);
recipes.addShapeless(<minecraft:snowball> * 16, [<ore:elementsFrost>]);
recipes.addShaped(<minecraft:snow> * 32, [[<ore:elementsFrost>, null, null],[null, null, null], [null, null, <ore:elementsFrost>]]);


recipes.addShaped(<chisel:limestone2:7> * 64, [[<lycanitesmobs:crystalshardcharge>],[<ore:elementsEarth>], [<ore:elementsEarth>]]);
recipes.addShaped(<astralsorcery:blockmarble> * 64, [[<ore:elementsEarth>],[<lycanitesmobs:crystalshardcharge>], [<ore:elementsEarth>]]);
recipes.addShaped(<quark:basalt> * 64, [[<ore:elementsEarth>],[<ore:elementsEarth>], [<lycanitesmobs:crystalshardcharge>]]);

recipes.addShaped(<thaumcraft:crystal_essence>.withTag({Aspects: [{amount: 1, key: "perditio"}]}) * 16, [[null, null, <ore:elementsFae>],[null, null, null], [null, null, <ore:elementsFae>]]);
recipes.addShaped(<thaumcraft:crystal_essence>.withTag({Aspects: [{amount: 1, key: "ordo"}]}) * 16, [[<ore:elementsFae>, null, null],[null, null, null], [<ore:elementsFae>, null, null]]);
recipes.addShaped(<thaumcraft:crystal_essence>.withTag({Aspects: [{amount: 1, key: "aqua"}]}) * 16, [[null, <ore:elementsFae>, null],[null, null, null], [null, <ore:elementsFae>, null]]);
recipes.addShaped(<thaumcraft:crystal_essence>.withTag({Aspects: [{amount: 1, key: "ignis"}]}) * 16, [[null, null, null],[<ore:elementsFae>, null, <ore:elementsFae>], [null, null, null]]);
recipes.addShaped(<thaumcraft:crystal_essence>.withTag({Aspects: [{amount: 1, key: "terra"}]}) * 16, [[null, null, <ore:elementsFae>],[null, null, null], [<ore:elementsFae>, null, null]]);
recipes.addShaped(<thaumcraft:crystal_essence>.withTag({Aspects: [{amount: 1, key: "aer"}]}) * 16, [[<ore:elementsFae>, null, null],[null, null, null], [null, null, <ore:elementsFae>]]);

recipes.addShaped(<thaumcraft:crystal_essence> * 4, [[null, null, null],[null, <ore:elementsFae>, null], [null, null, null]]);

recipes.addShaped(<lycanitesmobs:crystalshardcharge> * 32, [[null, null, null],[null, <lycanitesmobs:cleansingcrystal>, null], [null, null, null]]);
recipes.addShaped(<thaumcraft:amber> * 16, [[null, <lycanitesmobs:crystalshardcharge>, null],[null, null, null], [null, <lycanitesmobs:crystalshardcharge>, null]]);
recipes.addShaped(<actuallyadditions:item_misc:5> * 8, [[<lycanitesmobs:crystalshardcharge>, null, <lycanitesmobs:crystalshardcharge>],[null, null, null], [<lycanitesmobs:crystalshardcharge>, null, <lycanitesmobs:crystalshardcharge>]]);
recipes.addShaped(<appliedenergistics2:material> * 16, [[null, <lycanitesmobs:crystalshardcharge>, null],[<lycanitesmobs:crystalshardcharge>, null, <lycanitesmobs:crystalshardcharge>], [null, <lycanitesmobs:crystalshardcharge>, null]]);
recipes.addShaped(<tconstruct:ore:1> * 9, [[null, null, <ore:elementsEarth>],[<ore:elementsEarth>, null, <ore:elementsNether>], [null, null, <ore:elementsEarth>]]);
recipes.addShaped(<tconstruct:ingots:1> * 12, [[null, null, <ore:elementsEarth>],[<ore:elementsEarth>, <ore:elementsFire>, <ore:elementsNether>], [null, null, <ore:elementsEarth>]]);
recipes.addShaped(<tconstruct:ingots> * 12, [[<ore:elementsEarth>, null, null],[<ore:elementsNether>, <ore:elementsFire>, <ore:elementsEarth>], [<ore:elementsEarth>, null, null]]);
recipes.addShaped(<tconstruct:ore> * 9, [[<ore:elementsEarth>, null, null],[<ore:elementsNether>, null, <ore:elementsEarth>], [<ore:elementsEarth>, null, null]]);
recipes.addShaped(<thermalfoundation:ore:5> * 9, [[null, <ore:elementsEarth>, null],[null, null, null], [<ore:elementsEarth>, null, <ore:elementsEarth>]]);
recipes.addShaped(<thermalfoundation:material:133> * 12, [[null, <ore:elementsEarth>, null],[null, <ore:elementsFire>, null], [<ore:elementsEarth>, null, <ore:elementsEarth>]]);
recipes.addShaped(<thermalfoundation:material:130> * 8, [[null, <ore:elementsEarth>, null],[null, <ore:elementsFire>, null], [null, <ore:elementsEarth>, null]]);
recipes.addShaped(<thermalfoundation:ore:2> * 6, [[null, <ore:elementsEarth>, null],[null, null, null], [null, <ore:elementsEarth>, null]]);
recipes.addShaped(<thermalfoundation:material:131> * 8, [[null, null, null],[<ore:elementsEarth>, <ore:elementsFire>, <ore:elementsEarth>], [null, null, null]]);
recipes.addShaped(<thermalfoundation:ore:3> * 6, [[null, null, null],[<ore:elementsEarth>, null, <ore:elementsEarth>], [null, null, null]]);
recipes.addShaped(<thermalfoundation:material:129> * 16, [[null, null, <ore:elementsEarth>],[null, <ore:elementsFire>, null], [<ore:elementsEarth>, null, null]]);
recipes.addShaped(<thermalfoundation:ore:1>*12, [[null, null, <ore:elementsEarth>],[null, null, null], [<ore:elementsEarth>, null, null]]);
recipes.addShaped(<thermalfoundation:ore> * 12, [[<ore:elementsEarth>, null, null],[null, null, null], [null, null, <ore:elementsEarth>]]);
recipes.addShaped(<thermalfoundation:material:128> * 16, [[<ore:elementsEarth>, null, null],[null, <ore:elementsFire>, null], [null, null, <ore:elementsEarth>]]);
recipes.addShapeless(<lycanitesmobs:venomshotcharge> * 4, [<lycanitesmobs:poisongland>]);
recipes.addShaped(<deepresonance:resonating_ore> * 16, [[<lycanitesmobs:crystalshardcharge>, null, <lycanitesmobs:crystalshardcharge>],[null, <lycanitesmobs:boulderblastcharge>, null], [<lycanitesmobs:crystalshardcharge>, null, <lycanitesmobs:crystalshardcharge>]]);


    <lycanitesmobs:aquapulsecharge>.setAspects(<aspect:aqua> * 30);
    <lycanitesmobs:icefireballcharge>.setAspects(<aspect:aqua> * 15, <aspect:gelum> * 15);
    <lycanitesmobs:waterjetcharge>.setAspects(<aspect:aqua> * 15, <aspect:alkimia> * 15);
    <lycanitesmobs:mudshotcharge>.setAspects(<aspect:aqua> * 15, <aspect:terra> * 15);

    <lycanitesmobs:boulderblastcharge>.setAspects(<aspect:terra> * 30);
    <lycanitesmobs:throwingscythecharge>.setAspects(<aspect:terra> * 15, <aspect:metallum> * 15);

    <lycanitesmobs:acidsplashcharge>.setAspects(<aspect:alkimia> * 30);
    <lycanitesmobs:scorchfireballcharge>.setAspects(<aspect:alkimia> * 15, <aspect:ignis> * 15);

    <lycanitesmobs:embercharge>.setAspects(<aspect:ignis> * 30);
    <lycanitesmobs:magmacharge>.setAspects(<aspect:ignis> * 15, <aspect:terra> * 15);

    <lycanitesmobs:devilstarcharge>.setAspects(<aspect:vacuos> * 30);
    <lycanitesmobs:doomfireballcharge>.setAspects(<aspect:vacuos> * 30);
    <lycanitesmobs:hellfireballcharge>.setAspects(<aspect:vacuos> * 15, <aspect:infernum> * 15);
    <lycanitesmobs:lobdarklingscharge>.setAspects(<aspect:vacuos> * 15, <aspect:tenebrae> * 15);

    <lycanitesmobs:blizzardcharge>.setAspects(<aspect:gelum> * 30);
    <lycanitesmobs:frostwebcharge>.setAspects(<aspect:gelum> * 30);
    <lycanitesmobs:tundracharge>.setAspects(<aspect:gelum> * 30);
    <lycanitesmobs:frostboltcharge>.setAspects(<aspect:gelum> * 30);

    <lycanitesmobs:quillcharge>.setAspects(<aspect:praecantatio> * 30);
    <lycanitesmobs:faeboltcharge>.setAspects(<aspect:praecantatio> * 30);
    <lycanitesmobs:tricksterflarecharge>.setAspects(<aspect:praecantatio> * 30);
    <lycanitesmobs:bloodleechcharge>.setAspects(<aspect:praecantatio> * 30);

    <lycanitesmobs:venomshotcharge>.setAspects(<aspect:mortuus> * 30);
    <lycanitesmobs:poopcharge>.setAspects(<aspect:mortuus> * 30);
    <lycanitesmobs:poisonraycharge>.setAspects(<aspect:mortuus> * 30);

    <lycanitesmobs:crystalshardcharge>.setAspects(<aspect:metallum> * 30);

    <lycanitesmobs:chaosorbcharge>.setAspects(<aspect:perditio> * 30);

    <lycanitesmobs:lifedraincharge>.setAspects(<aspect:victus> * 30);

    <lycanitesmobs:lightballcharge>.setAspects(<aspect:lux> * 30);

    <lycanitesmobs:aetherwavecharge>.setAspects(<aspect:auram> * 30);

    <lycanitesmobs:whirlwindcharge>.setAspects(<aspect:aer> * 30);

    <lycanitesmobs:demonicblastcharge>.setAspects(<aspect:potentia> * 15, <aspect:infernum> * 15);

    <lycanitesmobs:spectralboltcharge>.setAspects(<aspect:tenebrae> * 15, <aspect:alienis> * 15);

    <lycanitesmobs:arcanelaserstormcharge>.setAspects(<aspect:ordo> * 10, <aspect:perditio> * 10, <aspect:motus> * 10);

##########################################################################################
print("==================== end of mods lycanitesmobs.zs ====================");