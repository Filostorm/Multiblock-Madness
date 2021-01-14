##########################################################################################
#modloaded botania
#priority 100

import mods.botania.Apothecary;
import mods.botania.ElvenTrade;
import mods.botania.ManaInfusion;
import mods.botania.Orechid;
import mods.botania.OrechidIgnem;
import mods.botania.PureDaisy;
import mods.botania.RuneAltar;

print("==================== loading mods botania.zs ====================");
##########################################################################################

// living wood
PureDaisy.removeRecipe(<botania:livingwood>);
PureDaisy.addRecipe(<thebetweenlands:log_weedwood>, <botania:livingwood>);
PureDaisy.addRecipe(<thebetweenlands:weedwood>, <botania:livingwood>);
PureDaisy.addRecipe(<thebetweenlands:log_weedwood:12>, <botania:livingwood>);

// living stone
PureDaisy.removeRecipe(<botania:livingrock>);
PureDaisy.addRecipe(<thebetweenlands:smooth_betweenstone>, <botania:livingrock>);


### CRAFTING RECIPES ###
recipes.remove(<botania:altar>);
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
##########################################################################################
print("==================== end of mods botania.zs ====================");
