import crafttweaker.item.IItemStack;
print("==================== loading open_computers.zs ====================");
##########################################################################################

val itemstoRemove =
[
	<opencomputers:hoverboots>,
]
 as IItemStack[];

for item in itemstoRemove {
	recipes.remove(item);
}


recipes.addShaped(<opencomputers:hoverboots>, [[<techreborn:plates:31>, <opencomputers:upgrade:28>, <techreborn:plates:31>],[<improvedbackpacks:tanned_leather>, <opencomputers:material:23>, <improvedbackpacks:tanned_leather>], [<techreborn:plates:31>, <opencomputers:capacitor>, <techreborn:plates:31>]]);

# [Screen (Tier 3)] from [Microchip (Tier 3)][+3]
craft.remake(<opencomputers:screen3>, ["pretty",
  "□ ▲ □",
  "▲ : ■",
  "□ ▲ □"], {
  "□": <ore:plateDarkSteel>,  # Dark Steel Plate
  "▲": <ore:dustDimensional>, # Dimensional Blend
  ":": <ore:oc:circuitChip3>, # Microchip (Tier 3)
  "■": <ore:blockGlassColorless> | <ore:blockGlass>, # Glass
});

# [Screen (Tier 2)] from [Microchip (Tier 2)][+3]
craft.remake(<opencomputers:screen2>, ["pretty",
  "□ ▲ □",
  "▲ : ■",
  "□ ▲ □"], {
  "□": <ore:plateGold>, 					 # Gold Plate
  "▲": <ore:dustEnergetic>,                  # Energetic Blend
  ":": <ore:oc:circuitChip2>,                # Microchip (Tier 2)
  "■": <ore:blockGlassColorless> | <ore:blockGlass>, # Glass
});
##########################################################################################
print("==================== end of open_computers.zs ====================");
