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

print("==================== loading mods botania.zs ====================");
##########################################################################################

val remove =
[
<botania:runealtar>,
<botania:altar>,
]
 as IItemStack[];

for item in remove {
recipes.remove(item);
}


// living wood
PureDaisy.removeRecipe(<botania:livingwood>);

val livingWood =
[
    <thebetweenlands:log_weedwood>,
    <thebetweenlands:log_weedwood:12>,
    <thebetweenlands:log_weedwood:8>,
    <thebetweenlands:log_weedwood:4>,
    <thebetweenlands:weedwood>,
]
 as IItemStack[];

for item in livingWood {
PureDaisy.addRecipe(item, <botania:livingwood>);
}


// living stone
PureDaisy.removeRecipe(<botania:livingrock>);
PureDaisy.addRecipe(<thebetweenlands:smooth_betweenstone>, <botania:livingrock>);


### CRAFTING RECIPES ###
recipes.addShaped(<botania:altar>, [[<thermalfoundation:material:352>, <botania:petal:*>, <thermalfoundation:material:352>],[null, <thaumcraft:stone_arcane>, null], [<thaumcraft:stone_arcane>, <thaumcraft:stone_arcane>, <thaumcraft:stone_arcane>]]);


### INFUSION ###
//Mana Powder
ManaInfusion.removeRecipe(<botania:manaresource:23>);
ManaInfusion.addInfusion(<botania:manaresource:23>,<minecraft:gunpowder>,1500);

//Essence of Mana
ManaInfusion.addInfusion(<thaumcraft:crystal_essence>.withTag({Aspects: [{amount: 1, key: "praecantatio"}]}), <thaumcraft:nugget:9>, 1000);

ManaInfusion.removeRecipe(<botania:storage>);
ManaInfusion.removeRecipe(<ore:ingotManasteel>);
ManaInfusion.addInfusion(<botania:manaresource>,<contenttweaker:inert_ingot>,5000);
ManaInfusion.addInfusion(<botania:manaresource>*2,<contenttweaker:material_part:20>,5000);

Agglomeration.removeRecipe(<botania:manaresource:4>, [<botania:manaresource:1>, <botania:manaresource>, <botania:manaresource:2>]);
Agglomeration.addRecipe(<botania:manaresource:4>, [<botania:manaresource:1>, <astralsorcery:itemcraftingcomponent:1>, <botania:manaresource:2>],500000,0x0000FF,0x00FF00,<bloodarsenal:blood_infused_iron_block>,<actuallyadditions:block_crystal_empowered:1>,<actuallyadditions:block_crystal_empowered:3>);
##########################################################################################
print("==================== end of mods botania.zs ====================");
