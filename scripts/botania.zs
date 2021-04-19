##########################################################################################
#modloaded botania
#priority 100

import crafttweaker.item.IItemStack;
import mods.botania.Apothecary;
import mods.botania.ElvenTrade;
import mods.botania.ManaInfusion;
import mods.botania.Orechid;
import mods.botania.OrechidIgnem;
import mods.botania.PureDaisy;
import mods.botania.RuneAltar;
import mods.botaniatweaks.Agglomeration;
import mods.inworldcrafting.FluidToItem;
import mods.thermalexpansion.Insolator;

print("==================== loading mods botania.zs ====================");
##########################################################################################

//mods.botania.ElvenTrade.addRecipe([<minecraft:iron_ingot>], [<minecraft:dirt>,<minecraft:grass>]);

val remove =
[
<botania:runealtar>,
<botania:altar>,
<botania:spreader>,
<botania:pylon:1>,
<botania:livingwood:5>,
<botania:alfheimportal>,
<botania:sparkupgrade:3>,
<botania:sparkupgrade:2>,
<botania:sparkupgrade:1>,
<botania:sparkupgrade>,
<botania:dreamwood:5>,
]
 as IItemStack[];

for item in remove {
recipes.remove(item);
}




//mods.thermalexpansion.Insolator.addRecipe(IItemStack primaryOutput, IItemStack primaryInput, IItemStack secondaryInput, int energy, @Optional IItemStack secondaryOutput, @Optional int secondaryChance, @Optional int water);

Insolator.addRecipe(<actuallyadditions:block_black_lotus>, <actuallyadditions:block_black_lotus>, <thermalfoundation:fertilizer>, 1000, <actuallyadditions:block_black_lotus>, 100, 1000);
Insolator.addRecipe(<actuallyadditions:block_black_lotus>*2, <actuallyadditions:block_black_lotus>, <thermalfoundation:fertilizer:1>, 7500, <botania:blacklotus>, 25, 2500);
Insolator.addRecipe(<actuallyadditions:block_black_lotus>*3, <actuallyadditions:block_black_lotus>, <thermalfoundation:fertilizer:2>, 15000, <botania:blacklotus:1>, 5, 5000);


// living wood
PureDaisy.removeRecipe(<botania:livingwood>);

val livingWood =
[
    /*
    <thebetweenlands:log_weedwood>,
    <thebetweenlands:log_weedwood:12>,
    <thebetweenlands:log_weedwood:8>,
    <thebetweenlands:log_weedwood:4>,
    <thebetweenlands:weedwood>,
    */
    <thaumcraft:log_greatwood>,
    <thaumcraft:log_greatwood:1>,
    <thaumcraft:log_greatwood:2>,
]
 as IItemStack[];

for item in livingWood {
PureDaisy.addRecipe(item, <botania:livingwood>);
}


// living stone
val plantsformossy =
[
<minecraft:tallgrass:1>,
<minecraft:tallgrass:2>,
<minecraft:double_plant:2>,
<minecraft:vine>,
<minecraft:double_plant:3>
]
 as IItemStack[];
for item in plantsformossy {
<ore:plants>.add(item);
}
PureDaisy.removeRecipe(<botania:livingrock>);
PureDaisy.addRecipe(<minecraft:mossy_cobblestone>, <botania:livingrock>);

FluidToItem.transform(<minecraft:mossy_cobblestone>, <liquid:water>, [<ore:cobblestone>, <ore:plants>], true);

/* Does not work with botania items for some reason
<botania:manaresource>.displayName = "Manasilver Ingot";
<botania:manaresource:17>.displayName = "Manasilver Nugget";
<botania:storage>.displayName = "Block of Manasilver";
<mysticalagriculture:manasteel_essence>.displayName = "Manasilver Essence";
<mysticalagriculture:manasteel_seeds>.displayName = "Manasilver Seeds";
<plustic:plustic.molten_manasteel>.displayName = "Molten Manasilver";
<jaopca:item_stickmanasteel>.displayName = "Manasilver Rod";
*/

### CRAFTING RECIPES ###
recipes.addShaped(<botania:altar>, [[<moreplates:enori_plate>, <astralsorcery:itemusabledust>, <moreplates:enori_plate>],[null, <thaumcraft:stone_arcane>, null], [<thaumcraft:stone_arcane>, <thaumcraft:stone_arcane>, <thaumcraft:stone_arcane>]]);

//spreader
recipes.addShapedMirrored(<botania:spreader>, [[<botania:livingwood>, <botania:livingwood>, <botania:livingwood>],[<ore:plateBrass>, <botania:petal:*>, null], [<botania:livingwood>, <botania:livingwood>, <botania:livingwood>]]);


mods.astralsorcery.Altar.addAttunementAltarRecipe("multiblockmadness:shaped/internal/altar/runealtar", <botania:runealtar>, 1000, 300, [

			<arcanearchives:quartz_sliver>, <arcanearchives:quartz_sliver>, <arcanearchives:quartz_sliver>,

			<botania:livingrock>, <botania:livingrock>, <botania:livingrock>,

			<botania:livingrock>, <astralsorcery:itemshiftingstar>, <botania:livingrock>,

			<botania:manaresource:23>, <botania:manaresource:23>, <bloodmagic:blood_rune>, <bloodmagic:blood_rune>]);

### INFUSION ###
//Mana Powder
ManaInfusion.removeRecipe(<botania:manaresource:23>);
ManaInfusion.addInfusion(<botania:manaresource:23>,<minecraft:gunpowder>,10000);
ManaInfusion.addInfusion(<botania:manaresource:23>,<contenttweaker:slatedust>,5000);
ManaInfusion.addInfusion(<botania:manaresource:23>,<embers:dust_ember>,7500);

//Essence of Mana
ManaInfusion.addInfusion(<thaumcraft:crystal_essence>.withTag({Aspects: [{amount: 1, key: "praecantatio"}]}), <thaumcraft:nugget:9>, 1000);

//Mana Steel
ManaInfusion.removeRecipe(<botania:storage>);
ManaInfusion.removeRecipe(<ore:ingotManasteel>);

ManaInfusion.addInfusion(<botania:manaresource>,<contenttweaker:inert_ingot>,10000);
ManaInfusion.addInfusion(<botania:manaresource>*2,<contenttweaker:material_part:20>,10000);
ManaInfusion.addInfusion(<botania:storage>,<contenttweaker:sub_block_holder_0:2>,100000);
ManaInfusion.addInfusion(<botania:storage>*2,<contenttweaker:sub_block_holder_0>,100000);

Agglomeration.removeRecipe(<botania:manaresource:4>, [<botania:manaresource:1>, <botania:manaresource>, <botania:manaresource:2>]);

Agglomeration.addRecipe(<botania:manaresource:4>, 
[<botania:manaresource:1>, <astralsorcery:itemcraftingcomponent:1>, <botania:manaresource:2>]
,500000,0x0000FF,0x00FF00,
<bloodarsenal:blood_infused_iron_block>,<actuallyadditions:block_crystal_empowered:1>,<actuallyadditions:block_crystal_empowered:3>);

//mods.thaumcraft.Infusion.registerRecipe(String name, String research, IItemStack output, int instability, CTAspectStack[] aspects, IIngredient centralItem, IIngredient[] recipe);
mods.thaumcraft.Infusion.registerRecipe("nature_pylon", "", 
<botania:pylon:1>, 100, 
[<aspect:praecantatio>*100, <aspect:alienis>*50, <aspect:chronos>*50, <aspect:permutatio>*50], 
<botania:pylon>, [<botania:manaresource:4> * 2, <minecraft:ender_eye>, <minecraft:glowstone_dust>]);


//Glimering Wood
mods.astralsorcery.StarlightInfusion.addInfusion(<botania:livingwood>, <botania:livingwood:5>, false, 0.5, 200);
mods.astralsorcery.StarlightInfusion.addInfusion(<botania:dreamwood>, <botania:dreamwood:5>, false, 0.5, 200);


//Nature Pylon
mods.thaumcraft.Infusion.registerRecipe("nature_pylon", "", 
<botania:pylon:1>, 5, 
[<aspect:herba>*200, <aspect:praecantatio>*100, <aspect:alienis>*50, <aspect:chronos>*50], 
<botania:pylon>, [<botania:livingwood:5>,<botania:manaresource:4>,<botania:livingwood:5>, <minecraft:ender_eye>,<botania:livingwood:5>,<botania:manaresource:4>, <botania:livingwood:5>,<minecraft:glowstone_dust>]);

//Gateway Core
mods.thaumcraft.Infusion.registerRecipe("gateway_core", "", 
<botania:alfheimportal>, 10, 
[<aspect:praecantatio>*200, <aspect:permutatio>*100, <aspect:alienis>*50, <aspect:chronos>*50], 
<waystones:warp_stone>, 
[<botania:manaresource:4>,<botania:livingwood:5>, <botania:manaresource:4>, <bloodmagic:slate:4>,
<botania:manaresource:4>,<botania:livingwood:5>, <botania:manaresource:4>, <bloodmagic:slate:4>]);


Agglomeration.addRecipe(<ebwizardry:astral_diamond>, [<astralsorcery:itemcraftingcomponent:4>, <astralsorcery:itemcraftingcomponent:2>, <botania:manaresource:2>,<thaumcraft:quicksilver>],250000,0x0000FF,0x8afff7,<astralsorcery:blockinfusedwood:6>,<contenttweaker:starmetal_block>,<astralsorcery:blockblackmarble>);

RuneAltar.addRecipe(<chisel:energizedvoidstone:4>*4,[<chisel:energizedvoidstone:2>,<botania:rune:7>,<chisel:energizedvoidstone:2>,<botania:rune:6>,<chisel:energizedvoidstone:2>,<botania:rune:5>,<chisel:energizedvoidstone:2>,<botania:rune:4>], 10000);

//RuneAltar.removeRecipe(IIngredient output);
RuneAltar.removeRecipe(<botania:rune:8>);

//mods.botania.RuneAltar.addRecipe(IItemStack output, IIngredient[] input, int mana);
RuneAltar.addRecipe(<botania:rune:8>,[<botania:manaresource:2>, <botania:manaresource:2>, <thermalfoundation:material:134>, <thermalfoundation:material:134>, <enderio:item_alloy_endergy_ingot:5>, <enderio:item_alloy_endergy_ingot:5>], 20000);

val petalDupe =
[
<botania:petal>,
<botania:petal:1>,
<botania:petal:2>,
<botania:petal:3>,
<botania:petal:4>,
<botania:petal:5>,
<botania:petal:6>,
<botania:petal:7>,
<botania:petal:8>,
<botania:petal:9>,
<botania:petal:10>,
<botania:petal:11>,
<botania:petal:12>,
<botania:petal:13>,
<botania:petal:14>,
<botania:petal:15>,
]
 as IItemStack[];
for item in petalDupe {
Insolator.addRecipe(item*2, item, <thermalfoundation:fertilizer>, 1500);
Insolator.addRecipe(item*3, item, <thermalfoundation:fertilizer:1>, 3000);
Insolator.addRecipe(item*5, item, <thermalfoundation:fertilizer:2>, 5000);
}
//mods.thermalexpansion.Insolator.addRecipe(IItemStack primaryOutput, IItemStack primaryInput, IItemStack secondaryInput, int energy, @Optional IItemStack secondaryOutput, @Optional int secondaryChance, @Optional int water);

//Shaped Quartz
//PureDaisy.addRecipe(<arcanearchives:raw_quartz_cluster>, <arcanearchives:shaped_quartz>);
PureDaisy.addRecipe(<arcanearchives:storage_raw_quartz>, <arcanearchives:storage_shaped_quartz>);



mods.botania.ManaInfusion.removeRecipe(<minecraft:flint>);

//Spark augmets
recipes.addShapeless(<botania:sparkupgrade:3>, [<botania:rune:3>,<astralsorcery:itemusabledust>,<bloodmagic:component:29>,<botania:manaresource>]);
recipes.addShapeless(<botania:sparkupgrade:2>, [<botania:rune:2>,<astralsorcery:itemusabledust>,<bloodmagic:component:29>,<botania:manaresource>]);
recipes.addShapeless(<botania:sparkupgrade:1>, [<botania:rune:1>,<astralsorcery:itemusabledust>,<bloodmagic:component:29>,<botania:manaresource>]);
recipes.addShapeless(<botania:sparkupgrade>, [<botania:rune>,<astralsorcery:itemusabledust>,<bloodmagic:component:29>,<botania:manaresource>]);

//Life FLower
//mods.botania.Apothecary.removeRecipe(IItemStack output);
mods.botania.Apothecary.removeRecipe(<botania:specialflower>.withTag({type: "dandelifeon"}));
mods.botania.Apothecary.removeRecipe(<botania:specialflower>.withTag({type: "munchdew"}));
mods.botania.Apothecary.removeRecipe(<botania:specialflower>.withTag({type: "kekimurus"}));
mods.botania.Apothecary.removeRecipe(<botania:specialflower>.withTag({type: "entropinnyum"}));

mods.botania.Apothecary.addRecipe("dandelifeon",
[<ore:petalPurple>, <ore:petalPurple>, <ore:petalGreen>, <ore:petalLime>, <botania:rune>, <botania:rune:1>, <botania:rune:2>, <botania:rune:3>]);

mods.botania.Apothecary.addRecipe("munchdew", 
[<ore:petalLime>,<ore:petalLime>,<ore:petalRed>,<ore:petalRed>,<ore:petalGreen>]);

mods.botania.Apothecary.addRecipe("kekimurus", 
[<ore:petalWhite>,<ore:petalWhite>,<ore:petalOrange>,<ore:petalOrange>,<ore:petalBrown>,<ore:petalBrown>,<botania:rune:10>]);

mods.botania.Apothecary.addRecipe("entropinnyum", 
[<ore:petalRed>,<ore:petalRed>,<ore:petalGray>,<ore:petalGray>,<ore:petalWhite>,<ore:petalWhite>,<botania:rune:13>,<botania:rune:1>,<botania:manaresource:8>]);


<botania:specialflower>.withTag({type: "endoflame"}).addTooltip(format.red("Degrades after 1 hour!"));
<botania:floatingspecialflower>.withTag({type: "endoflame"}).addTooltip(format.red("Degrades after 1 hour!"));

##########################################################################################
print("==================== end of mods botania.zs ====================");
