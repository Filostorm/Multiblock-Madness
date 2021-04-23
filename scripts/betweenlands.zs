##########################################################################################


print("==================== loading mods betweenlands.zs ====================");
##########################################################################################

val oreDictRubber = <ore:itemRubber>;

//oreDictEnt.add(IItemStack... item_items);
oreDictRubber.add(
    <thebetweenlands:items_misc:23>
);

### CRAFTING RECIPES ###

//crafting the talisman 
recipes.addShaped(<thebetweenlands:swamp_talisman:1>, [[<thaumcraft:stone_arcane>, <thaumcraft:stone_arcane>, <thaumcraft:stone_arcane>],[<thaumcraft:stone_arcane>, <astralsorcery:itemusabledust:1>, <thaumcraft:stone_arcane>], [<thaumcraft:stone_arcane>, <thaumcraft:stone_arcane>, <thaumcraft:stone_arcane>]]);
recipes.addShaped(<thebetweenlands:swamp_talisman:2>, [[<thaumcraft:stone_arcane>, <thaumcraft:stone_arcane>, <thaumcraft:stone_arcane>],[<thaumcraft:stone_arcane>, <actuallyadditions:item_misc:7>, <thaumcraft:stone_arcane>], [<thaumcraft:stone_arcane>, <thaumcraft:stone_arcane>, <thaumcraft:stone_arcane>]]);
recipes.addShaped(<thebetweenlands:swamp_talisman:3>, [[<thaumcraft:stone_arcane>, <thaumcraft:stone_arcane>, <thaumcraft:stone_arcane>],[<thaumcraft:stone_arcane>, <arcanearchives:scintillating_inlay>, <thaumcraft:stone_arcane>], [<thaumcraft:stone_arcane>, <thaumcraft:stone_arcane>, <thaumcraft:stone_arcane>]]);
recipes.addShaped(<thebetweenlands:swamp_talisman:4>, [[<thaumcraft:stone_arcane>, <thaumcraft:stone_arcane>, <thaumcraft:stone_arcane>],[<thaumcraft:stone_arcane>, <embers:crystal_ember>, <thaumcraft:stone_arcane>], [<thaumcraft:stone_arcane>, <thaumcraft:stone_arcane>, <thaumcraft:stone_arcane>]]);

//converting at very low rate
recipes.addShaped(<thebetweenlands:log_weedwood>, [[<ore:logWood>, <ore:logWood>, <ore:logWood>],[<ore:logWood>, <thebetweenlands:swamp_talisman>.reuse(), <ore:logWood>], [<ore:logWood>, <ore:logWood>, <ore:logWood>]]);
recipes.addShaped(<thebetweenlands:smooth_betweenstone>, [[<minecraft:stone>, <minecraft:stone>, <minecraft:stone>],[<minecraft:stone>, <thebetweenlands:swamp_talisman>.reuse(), <minecraft:stone>], [<minecraft:stone>, <minecraft:stone>, <minecraft:stone>]]);
recipes.addShaped(<thebetweenlands:scabyst_ore>, [[<minecraft:lapis_ore>, <minecraft:lapis_ore>, <minecraft:lapis_ore>],[<minecraft:lapis_ore>, <thebetweenlands:swamp_talisman>.reuse(), <minecraft:lapis_ore>], [<minecraft:lapis_ore>, <minecraft:lapis_ore>, <minecraft:lapis_ore>]]);
recipes.addShaped(<thebetweenlands:items_misc:18>, [[<minecraft:coal>, <minecraft:coal>, <minecraft:coal>],[<minecraft:coal>, <thebetweenlands:swamp_talisman>.reuse(), <minecraft:coal>], [<minecraft:coal>, <minecraft:coal>, <minecraft:coal>]]);
recipes.addShaped(<thebetweenlands:items_misc:19>, [[<minecraft:diamond>, <minecraft:diamond>, <minecraft:diamond>],[<minecraft:diamond>, <thebetweenlands:swamp_talisman>.reuse(), <minecraft:diamond>], [<minecraft:diamond>, <minecraft:diamond>, <minecraft:diamond>]]);
recipes.addShaped(<thebetweenlands:syrmorite_ore>, [[<minecraft:gold_ore>, <minecraft:gold_ore>, <minecraft:gold_ore>],[<minecraft:gold_ore>, <thebetweenlands:swamp_talisman>.reuse(), <minecraft:gold_ore>], [<minecraft:gold_ore>, <minecraft:gold_ore>, <minecraft:gold_ore>]]);
recipes.addShaped(<thebetweenlands:octine_ore>, [[<minecraft:iron_ore>, <minecraft:iron_ore>, <minecraft:iron_ore>],[<minecraft:iron_ore>, <thebetweenlands:swamp_talisman>.reuse(), <minecraft:iron_ore>], [<minecraft:iron_ore>, <minecraft:iron_ore>, <minecraft:iron_ore>]]);
recipes.addShaped(<thebetweenlands:cragrock>, [[<minecraft:cobblestone>, <minecraft:cobblestone>, <minecraft:cobblestone>],[<minecraft:cobblestone>, <thebetweenlands:swamp_talisman>.reuse(), <minecraft:cobblestone>], [<minecraft:cobblestone>, <minecraft:cobblestone>, <minecraft:cobblestone>]]);

recipes.addShaped(<thebetweenlands:items_misc:14>, [[<ore:slimyMoss>, <ore:slimyMoss>, <ore:slimyMoss>],[<ore:slimyMoss>, <minecraft:bone>, <ore:slimyMoss>], [<ore:slimyMoss>, <ore:slimyMoss>, <ore:slimyMoss>]]);
recipes.addShaped(<thebetweenlands:slimy_bone_block>, [[<minecraft:bone>, <minecraft:bone>, <minecraft:bone>],[<minecraft:bone>, <tconstruct:materials:19>, <minecraft:bone>], [<minecraft:bone>, <minecraft:bone>, <minecraft:bone>]]);


##########################################################################################
print("==================== end of mods betweenlands.zs ====================");
