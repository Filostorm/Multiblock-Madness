print("==================== loading mystical agriculture.zs ====================");
##########################################################################################

recipes.remove(<mysticalagriculture:master_infusion_crystal>);
recipes.remove(<mysticalagriculture:infusion_crystal>);

<ore:crystalforMystical>.add(<embers:ember_cluster>);
<ore:crystalforMystical>.add(<botania:manaresource:2>);
<ore:crystalforMystical>.add(<ebwizardry:astral_diamond>);
<ore:crystalforMystical>.add(<astralsorcery:itemrockcrystalsimple>);

recipes.addShaped(<mysticalagriculture:infusion_crystal>, [[<mysticalagriculture:crafting>, <mysticalagriculture:crafting:5>, <mysticalagriculture:crafting>],[<mysticalagriculture:crafting:5>, <ore:crystalforMystical>, <mysticalagriculture:crafting:5>], [<mysticalagriculture:crafting>, <mysticalagriculture:crafting:5>, <mysticalagriculture:crafting>]]);
recipes.addShaped(<mysticalagriculture:master_infusion_crystal>, [[<mysticalagriculture:crafting:4>, <mysticalagriculture:crafting:5>, <mysticalagriculture:crafting:4>],[<mysticalagriculture:crafting:5>, <thaumcraft:focus_3>, <mysticalagriculture:crafting:5>], [<mysticalagriculture:crafting:4>, <mysticalagriculture:crafting:5>, <mysticalagriculture:crafting:4>]]);


recipes.addShaped(<mysticalagriculture:crafting:32>, [[null, <mysticalagriculture:crafting:5>, null],[<mysticalagriculture:crafting:5>, <contenttweaker:inert_ingot>, <mysticalagriculture:crafting:5>], [null, <mysticalagriculture:crafting:5>, null]]);
recipes.addShaped(<mysticalagriculture:crafting:32>*2, [[null, <mysticalagriculture:crafting:5>, null],[<mysticalagriculture:crafting:5>, <contenttweaker:material_part:20>, <mysticalagriculture:crafting:5>], [null, <mysticalagriculture:crafting:5>, null]]);

##########################################################################################
print("==================== end of mystical agriculture.zs ====================");
