import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;
print("==================== loading mods blank.zs ====================");
##########################################################################################

val itemstoRemove =
[
<arcanearchives:radiant_resonator>,
]
 as IItemStack[];

for item in itemstoRemove {
	recipes.remove(item);
}

craft.remake(<arcanearchives:monitoring_crystal>, ["pretty",
  "▲ T ▲",
  "T D T",
  "▲ T ▲"], {
  "▲": <arcanearchives:radiant_dust>, # Radiant Dust
  "T": <ore:livingwoodTwig>,          # Livingwood Twig
  "D": <ore:manaDiamond> | <ore:crystalforMystical>, # Mana Diamond
});

//Radiant Resonators
recipes.addShaped(<arcanearchives:radiant_resonator>, [[<thermalfoundation:material:33>, <minecraft:iron_bars>, <thermalfoundation:material:33>],[<contenttweaker:greatwood_handle>, <minecraft:water_bucket>, <contenttweaker:greatwood_handle>], [<contenttweaker:greatwood_handle>, null, <contenttweaker:greatwood_handle>]]);
<arcanearchives:radiant_resonator>.addTooltip(format.red("Max 3 per player"));

##########################################################################################
print("==================== end of mods blank.zs ====================");
