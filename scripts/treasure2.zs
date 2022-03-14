import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;
print("==================== loading treasure2.zs ====================");
##########################################################################################

# [Ruby Key] from [Glowstone Dust][+3]
craft.remake(<treasure2:ruby_key>, ["pretty",
  "  G T",
  "  ▲  ",
  "  r  "], {
  "G": <treasure2:gold_key>,             # Gold Key
  "T": <treasure2:treasure_tool>.reuse(),        # Treasure Tool
  "▲": <ore:dustGlowstone>,              # Glowstone Dust
  "r": <ore:ruby> | <ore:gemRuby>,       # Ruby
});

# [Sapphire Key] from [Glowstone Dust][+3]
craft.remake(<treasure2:sapphire_key>, ["pretty",
  "  G T",
  "  ▲  ",
  "  ◊  "], {
  "G": <treasure2:gold_key>,               # Gold Key
  "T": <treasure2:treasure_tool>.reuse(),          # Treasure Tool
  "▲": <ore:dustGlowstone>,                # Glowstone Dust
  "◊": <ore:gemSapphire> | <ore:sapphire>, # Sapphire
});

//Ember Key
mods.inworldcrafting.FluidToItem.transform(<treasure2:ember_key>, <liquid:moltenembers>, [<arcanearchives:radiant_key>], true);

##########################################################################################
print("==================== end of treasure2.zs ====================");
