##########################################################################################
#modloaded botania
#priority 1

import crafttweaker.item.IItemStack;
import mods.botania.Apothecary;
import mods.botania.ElvenTrade;
import mods.botania.ManaInfusion;
import mods.botania.Orechid;
import mods.botania.OrechidIgnem;
import mods.botania.PureDaisy;
import mods.botania.RuneAltar;
import mods.botaniatweaks.Agglomeration;
import mods.immersiveengineering.Crusher;
import mods.inworldcrafting.FluidToItem;
import mods.nuclearcraft.Manufactory;
import mods.nuclearcraft.Infuser;
import mods.thaumcraft.ArcaneWorkbench;
import mods.thaumcraft.Infusion;
import mods.thermalexpansion.Insolator;
import mods.thermalexpansion.Pulverizer;
import mods.thermalexpansion.Transposer;
import crafttweaker.item.IIngredient;

print("==================== loading botania.zs ====================");
##########################################################################################

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
<botania:managun>,
<botania:thirdeye>,
<botania:alchemycatalyst>,
<botania:vial>,
]
 as IItemStack[];

for item in remove {
recipes.remove(item);
}

<botania:enchanter>.addTooltip(format.green("Use the Lexica Botania to create"));


### CRAFTING RECIPES ###

// Petal Apothecary
recipes.addShaped(<botania:altar>, [[<moreplates:enori_plate>, <astralsorcery:itemusabledust>, <moreplates:enori_plate>],[null, <thaumcraft:stone_arcane>, null], [<thaumcraft:stone_arcane>, <thaumcraft:stone_arcane>, <thaumcraft:stone_arcane>]]);

// Mana Spreader
recipes.addShapedMirrored(<botania:spreader>, [[<botania:livingwood>, <botania:livingwood>, <botania:livingwood>],[<ore:plateBrass>, <botania:petal:*>, null], [<botania:livingwood>, <botania:livingwood>, <botania:livingwood>]]);

<ore:anyCharm>.add(<twilightforest:charm_of_keeping_1>);
<ore:anyCharm>.add(<twilightforest:charm_of_life_1>);

// Alchemy Catalyst
ArcaneWorkbench.registerShapedRecipe("alchemycatalyst", "", 100,
    [<aspect:perditio>*8,<aspect:ordo>*8],
    <botania:alchemycatalyst>, [
    [<botania:livingrock>, <twilightforest:naga_scale>, <botania:livingrock>],
    [<ore:anyCharm>, <twilightforest:magic_map_focus>, <twilightforest:transformation_powder>], 
    [<botania:livingrock>, <twilightforest:naga_scale>, <botania:livingrock>]
]);

// Runic Altar
mods.astralsorcery.Altar.addAttunementAltarRecipe("multiblockmadness:shaped/internal/altar/runealtar", <botania:runealtar>, 1000, 300, [

			<arcanearchives:quartz_sliver>, <arcanearchives:quartz_sliver>, <arcanearchives:quartz_sliver>,

			<botania:livingrock>, <botania:livingrock>, <botania:livingrock>,

			<botania:livingrock>, <astralsorcery:itemshiftingstar>, <botania:livingrock>,

			<botania:manaresource:23>, <botania:manaresource:23>, <bloodmagic:blood_rune>, <bloodmagic:blood_rune>]);


// Third Eye
Infusion.registerRecipe("thirdeye", "", 
<botania:thirdeye>, 5, 
[<aspect:sensus>*150, <aspect:praecantatio>*100, <aspect:spiritus>*50], 
<minecraft:ender_eye>, 
[<botania:pistonrelay>,<bloodmagic:component:26>, <botania:manaresource:2>, <botania:rune:7>,
<botania:pistonrelay>,<bloodmagic:component:26>, <botania:manaresource:2>, <botania:rune:5>]);

# [Terrestrial Agglomeration Plate] from [Block of Hardened Thermalloy][+6]
craft.remake(<botania:terraplate>, ["pretty",
  "¤ * ☼",
  "T § T",
  "M A M"], {
  "¤": <ore:gearPalisEmpowered>,             # Empowered Palis Gear
  "*": <contenttweaker:terrestrial_crystal>, # Terrestrial Crystal
  "☼": <ore:gearVoidEmpowered>,              # Empowered Void Gear
  "T": <bloodmagic:teleposer>,            # Teleposer
  "§": <contenttweaker:block_thermal_alloy>, # Block of Hardened Thermalloy
  "M": <ore:runeManaB>,                      # Rune of Mana
  "A": <ore:runeAutumnB>,                    # Rune of Autumn
});

//mods.thaumcraft.Infusion.registerRecipe(String name, String research, IItemStack output, int instability, CTAspectStack[] aspects, IIngredient centralItem, IIngredient[] recipe);

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


### PURE DAISY ###

// Living Wood
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


// Living Stone
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


//Shaped Quartz
//PureDaisy.addRecipe(<arcanearchives:raw_quartz_cluster>, <arcanearchives:shaped_quartz>);
PureDaisy.addRecipe(<arcanearchives:storage_raw_quartz>, <arcanearchives:storage_shaped_quartz>);


### MANA INFUSION ###

//Essence of Mana
ManaInfusion.addInfusion(<thaumcraft:crystal_essence>.withTag({Aspects: [{amount: 1, key: "praecantatio"}]}), <thaumcraft:nugget:9>, 1000);

//Mana Diamond
ManaInfusion.removeRecipe(<botania:storage:3>);
ManaInfusion.removeRecipe(<botania:manaresource:2>);

ManaInfusion.addInfusion(<botania:manaresource:2>,<actuallyadditions:item_crystal:2>,15000);
ManaInfusion.addInfusion(<botania:storage:3>,<actuallyadditions:block_crystal:2>,150000);

ManaInfusion.addInfusion(<botania:manaresource:2>*2,<actuallyadditions:item_crystal_empowered:2>,1500);
ManaInfusion.addInfusion(<botania:storage:3>*2,<actuallyadditions:block_crystal_empowered:2>,15000);

###TheSmartNoob's Changes###

//Mana Steel
ManaInfusion.removeRecipe(<botania:storage>);
ManaInfusion.removeRecipe(<ore:ingotManasteel>);
ManaInfusion.removeRecipe(<mystgears:gear_manasteel>);

//Unchanged innert metal to manasteel
ManaInfusion.addInfusion(<botania:manaresource>,<contenttweaker:inert_ingot>,10000);
//10 Percent mana cost reduction orichalcum to manasteel
ManaInfusion.addInfusion(<botania:manaresource>*2,<contenttweaker:material_part:20>,9000);
//1 Mithrillium to 4 manasteel at 75 percent of original mana cost
ManaInfusion.addInfusion(<botania:manaresource>*4,<thaumadditions:mithrillium_ingot>,7500);
//1 Adaminite to 8 manasteel at 50 percent of original mana cost
ManaInfusion.addInfusion(<botania:manaresource>*8,<thaumadditions:adaminite_ingot>,5000);
//1 Mithminite to 32 manasteel at 25 percent of original mana cost
ManaInfusion.addInfusion(<botania:manaresource>*32,<thaumadditions:mithminite_ingot>,2500);
//block of manasteel craft fixes
ManaInfusion.addInfusion(<botania:storage>,<contenttweaker:sub_block_holder_0:2>,90000);
ManaInfusion.addInfusion(<botania:storage>*2,<contenttweaker:sub_block_holder_0>,81000);
ManaInfusion.addInfusion(<botania:storage>*4,<thaumadditions:mithrillium_block>,67500);
ManaInfusion.addInfusion(<botania:storage>*8,<thaumadditions:adaminite_block>,45000);
ManaInfusion.addInfusion(<botania:storage>*32,<thaumadditions:mithminite_block>,22500);

//Mana Powder
ManaInfusion.removeRecipe(<botania:manaresource:23>);

//Unchanged ember grit to mana powder
ManaInfusion.addInfusion(<botania:manaresource:23>,<embers:dust_ember>,7500);
//crushed slate to 2 mana powder at a slightly increased from original mana cost
ManaInfusion.addInfusion(<botania:manaresource:23>*2,<contenttweaker:slatedust>,6750);
//mana-infused dust to 4 mana powder at 75 percent of the original mana cost
ManaInfusion.addInfusion(<botania:manaresource:23>*4,<thermalfoundation:material:72>,5625);
//mana dust to 32 mana powder at the original cost of the crushed slate to mana powder recipe
ManaInfusion.addInfusion(<botania:manaresource:23>*32,<thermalfoundation:material:1028>,5000);

### RUNIC ALTAR ###

//Rune of Air
RuneAltar.removeRecipe(<botania:rune:3>);
RuneAltar.addRecipe(<botania:rune:3>,[<ore:ingotBrass>, <thermalfoundation:material:894>, <thermalfoundation:material:1026>, <botania:manaresource>, <botania:manaresource:23>], 15000);

//Rune of Earth
RuneAltar.removeRecipe(<botania:rune:2>);
RuneAltar.addRecipe(<botania:rune:2>,[<mysticalworld:wet_mud_block>, <twilightforest:steeleaf_ingot>, <thermalfoundation:material:1027>, <botania:manaresource>, <botania:manaresource:23>], 15000);

//Rune of Fire
RuneAltar.removeRecipe(<botania:rune:1>);
RuneAltar.addRecipe(<botania:rune:1>,[<thaumcraft:alumentum>, <tconstruct:firewood:1>, <thermalfoundation:material:1024>, <botania:manaresource>, <botania:manaresource:23>], 15000);

//Lavawood
Transposer.addFillRecipe(<tconstruct:firewood>, <minecraft:planks>, <liquid:lava>*250, 2500);
mods.nuclearcraft.Infuser.addRecipe(<ore:plankWood>, <liquid:lava>*250, <tconstruct:firewood>);

//Rune of Water
RuneAltar.removeRecipe(<botania:rune>);
RuneAltar.addRecipe(<botania:rune>,[<minecraft:prismarine_shard>, <actuallyadditions:item_crystal:4>, <thermalfoundation:material:1025>, <botania:manaresource>, <botania:manaresource:23>], 15000);

// Wet Dirt
recipes.remove(<mysticalworld:wet_mud_block>);
recipes.addShaped(<mysticalworld:wet_mud_block>*8, [[<ore:dirt>, <ore:dirt>, <ore:dirt>],[<ore:dirt>,  <liquid:water>*1000, <ore:dirt>], [<ore:dirt>, <ore:dirt>, <ore:dirt>]]);
Transposer.addFillRecipe(<mysticalworld:wet_mud_block>, <minecraft:dirt>, <liquid:water>*125, 2500);
Infuser.removeRecipeWithInput(<ore:dirt>, <liquid:water>);
Infuser.addRecipe(<minecraft:dirt>, <liquid:water>*125, <mysticalworld:wet_mud_block>);

//Rune of Mana
RuneAltar.removeRecipe(<botania:rune:8>);
RuneAltar.addRecipe(<botania:rune:8>,[<botania:manaresource:2>, <botania:manaresource:2>, <contenttweaker:ingot_reinforced_starmetal>, <contenttweaker:ingot_reinforced_starmetal>, <enderio:item_alloy_endergy_ingot:5>, <enderio:item_alloy_endergy_ingot:5>], 25000);

//Voidstone Rune
RuneAltar.addRecipe(<chisel:energizedvoidstone:4>*4,[<chisel:energizedvoidstone:2>,<botania:rune:7>,<chisel:energizedvoidstone:2>,<botania:rune:6>,<chisel:energizedvoidstone:2>,<botania:rune:5>,<chisel:energizedvoidstone:2>,<botania:rune:4>], 20000);


### TERRESTRIAL AGGLOMERATION ###

//Terrasteel
Agglomeration.removeRecipe(<botania:manaresource:4>, [<botania:manaresource:1>, <botania:manaresource>, <botania:manaresource:2>]);

Agglomeration.addRecipe(<botania:manaresource:4>, 
[<botania:manaresource:1>, <contenttweaker:ingot_reinforced_starmetal>, <botania:manaresource:2>]
,500000,0x0000FF,0x00FF00,
<bloodarsenal:blood_infused_iron_block>,<actuallyadditions:block_crystal_empowered:1>,<actuallyadditions:block_crystal_empowered:3>);

//Astral Diamond
Agglomeration.addRecipe(<ebwizardry:astral_diamond>, [<astralsorcery:itemcraftingcomponent:4>, <astralsorcery:itemcraftingcomponent:2>, <botania:manaresource:2>,<thaumcraft:quicksilver>],250000,0x0000FF,0x8afff7,<astralsorcery:blockinfusedwood:6>,<contenttweaker:starmetal_block>,<astralsorcery:blockblackmarble>);


### MORE RECIPES ###

// Petal Duplication & Crushing
val petalDupe as IItemStack[IItemStack] = {
<botania:petal>:<botania:dye>,
<botania:petal:1>:<botania:dye:1>,
<botania:petal:2>:<botania:dye:2>,
<botania:petal:3>:<botania:dye:3>,
<botania:petal:4>:<botania:dye:4>,
<botania:petal:5>:<botania:dye:5>,
<botania:petal:6>:<botania:dye:6>,
<botania:petal:7>:<botania:dye:7>,
<botania:petal:8>:<botania:dye:8>,
<botania:petal:9>:<botania:dye:9>,
<botania:petal:10>:<botania:dye:10>,
<botania:petal:11>:<botania:dye:11>,
<botania:petal:12>:<botania:dye:12>,
<botania:petal:13>:<botania:dye:13>,
<botania:petal:14>:<botania:dye:14>,
<botania:petal:15>:<botania:dye:15>,
} as IItemStack[IItemStack];

for petal, dust in petalDupe {
Insolator.addRecipe(petal*2, petal, <thermalfoundation:fertilizer>, 1500);
Insolator.addRecipe(petal*3, petal, <thermalfoundation:fertilizer:1>, 3000);
Insolator.addRecipe(petal*5, petal, <thermalfoundation:fertilizer:2>, 5000);

Crusher.addRecipe(dust, petal, 2048, dust, 0.1);
Manufactory.addRecipe(petal, dust);
Pulverizer.addRecipe(dust, petal, 1500, dust, 10);
mods.mekanism.crusher.addRecipe(petal, dust);
}

//mods.thermalexpansion.Insolator.addRecipe(IItemStack primaryOutput, IItemStack primaryInput, IItemStack secondaryInput, int energy, @Optional IItemStack secondaryOutput, @Optional int secondaryChance, @Optional int water);
## Black Lotus
Insolator.addRecipe(<actuallyadditions:block_black_lotus>, <actuallyadditions:block_black_lotus>, <thermalfoundation:fertilizer>, 1000, <actuallyadditions:block_black_lotus>, 100, 1000);
Insolator.addRecipe(<actuallyadditions:block_black_lotus>*2, <actuallyadditions:block_black_lotus>, <thermalfoundation:fertilizer:1>, 7500, <botania:blacklotus>, 25, 2500);
Insolator.addRecipe(<actuallyadditions:block_black_lotus>*3, <actuallyadditions:block_black_lotus>, <thermalfoundation:fertilizer:2>, 15000, <botania:blacklotus:1>, 5, 5000);

//Glimering Wood
mods.astralsorcery.StarlightInfusion.addInfusion(<botania:livingwood>, <botania:livingwood:5>, false, 0.1, 100);
mods.astralsorcery.StarlightInfusion.addInfusion(<botania:dreamwood>, <botania:dreamwood:5>, false, 0.1, 100);

//mods.thermalexpansion.Insolator.addRecipe(IItemStack primaryOutput, IItemStack primaryInput, IItemStack secondaryInput, int energy, @Optional IItemStack secondaryOutput, @Optional int secondaryChance, @Optional int water);

mods.botania.ManaInfusion.removeRecipe(<minecraft:flint>);

// Spark Augments
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
mods.botania.Apothecary.removeRecipe(<botania:specialflower>.withTag({type: "orechid"}));
mods.botania.Apothecary.removeRecipe(<botania:specialflower>.withTag({type: "orechidIgnem"}));

mods.botania.Apothecary.addRecipe("dandelifeon",
[<ore:petalPurple>, <ore:petalPurple>, <ore:petalGreen>, <ore:petalLime>, <botania:rune>, <botania:rune:1>, <botania:rune:2>, <botania:rune:3>]);

mods.botania.Apothecary.addRecipe("munchdew", 
[<ore:petalLime>,<ore:petalLime>,<ore:petalRed>,<ore:petalRed>,<ore:petalGreen>]);

mods.botania.Apothecary.addRecipe("kekimurus", 
[<ore:petalWhite>,<ore:petalWhite>,<ore:petalOrange>,<ore:petalOrange>,<ore:petalBrown>,<ore:petalBrown>,<botania:rune:10>]);

mods.botania.Apothecary.addRecipe("entropinnyum", 
[<ore:petalRed>,<ore:petalRed>,<ore:petalGray>,<ore:petalGray>,<ore:petalWhite>,<ore:petalWhite>,<botania:rune:13>,<botania:rune:1>,<botania:manaresource:8>]);

mods.botania.Apothecary.addRecipe("orechid", 
[<ore:petalGray>,<ore:petalGray>,<ore:petalYellow>,<ore:petalGreen>,<ore:petalRed>,<botania:rune:15>,<botania:rune:11>,<botania:manaresource:6>,<arcanearchives:slaughtergleam>]);

mods.botania.Apothecary.addRecipe("orechidIgnem", 
[<ore:petalRed>,<ore:petalRed>,<ore:petalWhite>,<ore:petalWhite>,<ore:petalPink>,<botania:rune:15>,<botania:rune:11>,<botania:manaresource:6>,<arcanearchives:slaughtergleam>]);

<botania:specialflower>.withTag({type: "endoflame"}).addTooltip(format.red("Degrades after 1 hour!"));
<botania:floatingspecialflower>.withTag({type: "endoflame"}).addTooltip(format.red("Degrades after 1 hour!"));

//Mana Vial
recipes.addShaped(<botania:vial>, [[<botania:managlass>, null, <botania:managlass>], [null, <botania:managlass>, null]]);

//Mana Gun
recipes.addShaped(<botania:managun>, [[<botania:spreader:1>, <embers:diffraction_barrel>, <botania:manaresource:2>],[null, <botania:livingwood>, <minecraft:tnt>], [null, null, <botania:livingwood>]]);

//Enchanted Soil
recipes.addShapeless(<botania:enchantedsoil>, [<minecraft:grass>,<botania:overgrowthseed>]);

# [Master Corporea Spark] from [Corporea Spark][+4]
craft.remake(<botania:corporeaspark:1>, ["pretty",
  "M ⌃ M",
  "a C a",
  "M E M"], {
  "M": <botania:managlass>,                    # Managlass
  "⌃": <arcanearchives:storage_shaped_quartz>, # Shaped Radiant Quartz Block
  "a": <ore:clothManaweave>,                   # Manaweave Cloth
  "C": <botania:corporeaspark>,                # Corporea Spark
  "E": <treasure2:ember_key>.anyDamage(),      # Ember Key
});

# [Corporea Spark] from [Spark][+3]
craft.remake(<botania:corporeaspark>, ["pretty",
  "  *  ",
  "M S M",
  "  □  "], {
  "*": <arcanearchives:monitoring_crystal>, # Monitoring Crystal
  "M": <ore:powderMana>,                    # Mana Powder
  "S": <botania:spark>,                     # Spark
  "□": <ore:plateThaumium>,                 # Thaumium Plate
});

//Red String
craft.reshapeless(<botania:manaresource:12>, "*⌃sM", {
  "*": <actuallyadditions:block_crystal>, # Restonia Crystal Block
  "⌃": <ore:gemQuartzBlack>,              # Black Quartz
  "s": <ore:string> | <ore:cropFlax>,     # String
  "M": <ore:powderMana>,                  # Mana Powder
});

# [Corporea Crystal Cube] from [Diamatine Crystal Block][+3]
craft.remake(<botania:corporeacrystalcube>, ["pretty",
  "  C  ",
  "S * S",
  "S E S"], {
  "C": <botania:corporeaspark>,             # Corporea Spark
  "S": <ebwizardry:transportation_stone>,   # Stone of Transportation
  "*": <actuallyadditions:block_crystal:2>, # Diamatine Crystal Block
  "E": <contenttweaker:elemental_soil>,     # Elemental Soil
});

# [Corporea Index] from [Corporea Spark][+5]
craft.remake(<botania:corporeaindex>, ["pretty",
  "E q E",
  "▬ C ▬",
  "* n *"], {
  "E": <ore:bEnderAirBottle>,       # Ender Air Bottle
  "q": <ore:quicksilver>,           # Quicksilver
  "▬": <contenttweaker:noon_ingot>, # Daybound Ingot
  "C": <botania:corporeaspark>,     # Corporea Spark
  "*": <minecraft:end_crystal>,     # End Crystal
  "n": <ore:nitor>,                 # Yellow Nitor
});


# [End Crystal] from [Nether Star][+3]
craft.remake(<minecraft:end_crystal>, ["pretty",
  "M M M",
  "M S M",
  "▬ P ▬"], {
  "M": <botania:managlass>, # Managlass
  "S": <ore:netherStar>,    # Nether Star
  "▬": <ore:ingotSoulium>,  # Soulium Ingot
  "P": <ore:itemGhastTear>, # Ghast Tear
});

//orechid ignem energized glowstone
mods.botania.OrechidIgnem.addOre(<ore:oreClathrateGlowstone>, 2000);

##########################################################################################
print("==================== end of botania.zs ====================");
