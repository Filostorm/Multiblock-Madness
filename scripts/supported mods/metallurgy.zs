#modloaded metallurgy
import crafttweaker.item.IItemStack;
import mods.contenttweaker.VanillaFactory;
import mods.contenttweaker.Item;
import mods.contenttweaker.Commands;
print("==================== loading metallurgy.zs ====================");
##########################################################################################

### REMOVE RECIPES ###

val recipestoRemove =
[
<advancedrocketry:thermite>,
<advancedrocketry:thermitetorch>,
<nuclearcraft:compound:8>,
<metallurgy:bronze_dust>,
<metallurgy:electrum_dust>,
<metallurgy:steel_dust>,
<metallurgy:brass_dust>,
<metallurgy:thermite_dust>,
<metallurgy:tartarite_dust>,
<metallurgy:angmallen_dust>,
<metallurgy:celenegil_dust>,
<metallurgy:desichalkos_dust>,
<metallurgy:etherium_dust>,
<metallurgy:amordrine_dust>,
<metallurgy:haderoth_dust>,
<metallurgy:quicksilver_dust>,
<metallurgy:damascus_steel_dust>
]
 as IItemStack[];

for item in recipestoRemove {
	recipes.remove(item);
}
//Ore Rarity
//<metallurgy:ignatius_ore>.displayName = "§eIgnatius Ore";

<metallurgy:oureclase_ore>.displayName = "§eOureclase Ore";
<metallurgy:rubracium_ore>.displayName = "§eRubracium Ore";
<metallurgy:orichalcum_ore>.displayName = "§eOrichalcum Ore";
<metallurgy:carmot_ore>.displayName = "§eCarmot Ore";
<metallurgy:phosphorite_ore>.displayName = "§ePhosphorite Ore";

<metallurgy:vulcanite_ore>.displayName = "§bVulcanite Ore";
<metallurgy:midasium_ore>.displayName = "§bMidasium Ore";
<metallurgy:atlarus_ore>.displayName = "§bAtlarus Ore";
<metallurgy:kalendrite_ore>.displayName = "§bKalendrite Ore";
<metallurgy:eximite_ore>.displayName = "§bEximite Ore";
<metallurgy:adamantine_ore>.displayName = "§bAdamantine Ore";
<metallurgy:meutoite_ore>.displayName = "§bMeutoite Ore";

<metallurgy:sanguinite_ore>.displayName = "§5§dSanguinite Ore";
<metallurgy:mithril_ore>.displayName = "§5§dMithril Ore";

/*
<metallurgy:ceruclase_ingot>
<metallurgy:alduorite_ingot>
<metallurgy:lutetium_ingot>
<metallurgy:deep_iron_ingot>
<metallurgy:prometheum_ingot>
<metallurgy:midasium_ingot>
<metallurgy:astral_silver_ingot>
<metallurgy:oureclase_ingot>
<metallurgy:infuscolium_ingot>
<metallurgy:vyroxeres_ingot>
<metallurgy:shadow_iron_ingot>
<metallurgy:ignatius_ingot>
*/

//§eUncommon\n§bRare\n§5§dEpic\n§6Legendary
//Thermite Unification

recipes.addShaped(<advancedrocketry:thermitetorch> * 4, [[<metallurgy:thermite_dust>],[<tconstruct:stone_stick>]]);
recipes.addShapeless(<metallurgy:thermite_dust> * 2, [<ore:dustSulfur>, <ore:dustPotash>, <ore:dustIron>, <ore:dustAluminium>]);


##Etherium
val dustEtherium = mods.modularmachinery.RecipeBuilder.newBuilder("dust-mixer-etherium", "dust-mixer", 100, 0);
dustEtherium.addEnergyPerTickInput(100);
dustEtherium.addItemInput(<metallurgy:sanguinite_dust>);
dustEtherium.addItemInput(<metallurgy:carmot_dust>);
dustEtherium.addItemOutput(<metallurgy:etherium_dust> * 2);
dustEtherium.build();

##Thermite
val dustThermite = mods.modularmachinery.RecipeBuilder.newBuilder("dust-mixer-thermite", "dust-mixer", 100, 0);
dustThermite.addEnergyPerTickInput(100);
dustThermite.addItemInput(<thermalfoundation:material>);
dustThermite.addItemInput(<thermalfoundation:material:68>);
dustThermite.addItemInput(<thermalfoundation:material:771>);
dustThermite.addItemInput(<metallurgy:potash>);
dustThermite.addItemOutput(<metallurgy:thermite_dust> * 2);
dustThermite.build();

##Tartarite
val dustTartarite = mods.modularmachinery.RecipeBuilder.newBuilder("dust-mixer-tartarite", "dust-mixer", 100, 0);
dustTartarite.addEnergyPerTickInput(100);
dustTartarite.addItemInput(<metallurgy:atlarus_dust>);
dustTartarite.addItemInput(<metallurgy:adamantine_dust>);
dustTartarite.addItemOutput(<metallurgy:tartarite_dust>);
dustTartarite.build();

##Celenegil
val dustCelenegil = mods.modularmachinery.RecipeBuilder.newBuilder("dust-mixer-celenegil", "dust-mixer", 100, 0);
dustCelenegil.addEnergyPerTickInput(100);
dustCelenegil.addItemInput(<thermalfoundation:material:70>);
dustCelenegil.addItemInput(<metallurgy:orichalcum_dust>);
dustCelenegil.addItemOutput(<metallurgy:celenegil_dust> * 2);
dustCelenegil.build();

##Angmallen
val dustAngmallen = mods.modularmachinery.RecipeBuilder.newBuilder("dust-mixer-angmallen", "dust-mixer", 100, 0);
dustAngmallen.addEnergyPerTickInput(100);
dustAngmallen.addItemInput(<thermalfoundation:material:1>);
dustAngmallen.addItemInput(<thermalfoundation:material>);
dustAngmallen.addItemOutput(<metallurgy:angmallen_dust> * 2);
dustAngmallen.build();

##Desichalkos
val dustDesichalkos = mods.modularmachinery.RecipeBuilder.newBuilder("dust-mixer-desichalkos", "dust-mixer", 100, 0);
dustDesichalkos.addEnergyPerTickInput(100);
dustDesichalkos.addItemInput(<metallurgy:meutoite_dust>);
dustDesichalkos.addItemInput(<metallurgy:eximite_dust>);
dustDesichalkos.addItemOutput(<metallurgy:desichalkos_dust> * 2);
dustDesichalkos.build();

##DamascusSteel
val dustDamascusSteel = mods.modularmachinery.RecipeBuilder.newBuilder("dust-mixer-damascussteel", "dust-mixer", 100, 0);
dustDamascusSteel.addEnergyPerTickInput(100);
dustDamascusSteel.addItemInput(<ore:dustBronze>, 2);
dustDamascusSteel.addItemInput(<ore:dustIron>);
dustDamascusSteel.addItemOutput(<metallurgy:damascus_steel_dust> * 3);
dustDamascusSteel.build();

##Quicksilver
val dustQuicksilver = mods.modularmachinery.RecipeBuilder.newBuilder("dust-mixer-quicksilver", "dust-mixer", 100, 0);
dustQuicksilver.addEnergyPerTickInput(100);
dustQuicksilver.addItemInput(<ore:dustSilver>);
dustQuicksilver.addItemInput(<metallurgy:mithril_dust>);
dustQuicksilver.addItemOutput(<metallurgy:quicksilver_dust> * 2);
dustQuicksilver.build();

##Haderoth
val dustHaderoth = mods.modularmachinery.RecipeBuilder.newBuilder("dust-mixer-haderoth", "dust-mixer", 100, 0);
dustHaderoth.addEnergyPerTickInput(100);
dustHaderoth.addItemInput(<metallurgy:rubracium_dust> * 2);
dustHaderoth.addItemInput(<metallurgy:mithril_dust>);
dustHaderoth.addItemOutput(<metallurgy:haderoth_dust> * 3);
dustHaderoth.build();

##Amordrine
val dustAmordrine = mods.modularmachinery.RecipeBuilder.newBuilder("dust-mixer-amordrine", "dust-mixer", 100, 0);
dustAmordrine.addEnergyPerTickInput(100);
dustAmordrine.addItemInput(<metallurgy:kalendrite_dust>);
dustAmordrine.addItemInput(<ore:dustPlatinum>);
dustAmordrine.addItemOutput(<metallurgy:amordrine_dust> * 2);
dustAmordrine.build();

##########################################################################################
print("==================== end of metallurgy.zs ====================");
