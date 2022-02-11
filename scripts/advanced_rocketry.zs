##########################################################################################

import crafttweaker.item.IItemStack;
import mods.immersiveengineering.Crusher;
import mods.thermalexpansion.Pulverizer;
import crafttweaker.item.IIngredient;
import mods.mekanism.enrichment;

print("==================== loading advanced_rocketry.zs ====================");
##########################################################################################

val itemstoRemove =
[
<libvulpes:advstructuremachine>,
<advancedrocketry:ic:5>,
<advancedrocketry:ic:4>,
<advancedrocketry:ic:3>,
<advancedrocketry:seat>,
<advancedrocketry:productrod:1>,
<advancedrocketry:launchpad>,
<advancedrocketry:vacuumlaser>,
<advancedrocketry:precisionlaseretcher>
]
 as IItemStack[];

for item in itemstoRemove {
	recipes.remove(item);
}

//mods.advancedrocketry.Lathe.removeRecipe(titaniumRod.withDamage(1)*2);
//mods.advancedrocketry.Lathe.addRecipe(<minecraft:log>*1, 80, 100, <minecraft:planks>*4);

recipes.addShaped(<libvulpes:advstructuremachine> * 5, [[<libvulpes:structuremachine>, <techreborn:plates:38>, <libvulpes:structuremachine>],[<techreborn:plates:38>, <libvulpes:structuremachine>, <techreborn:plates:38>], [<libvulpes:structuremachine>, <techreborn:plates:38>, <libvulpes:structuremachine>]]);

// Launch Pad
recipes.addShapeless(<advancedrocketry:launchpad>, [<ore:concrete>,<ore:dyeBlack>,<ore:dyeYellow>]);

// Seat
recipes.addShaped(<advancedrocketry:seat>, [[<thermalfoundation:rockwool:7>, <thermalfoundation:rockwool:7>, <thermalfoundation:rockwool:7>]]);

// Dilithium
furnace.remove(<libvulpes:productdust>);
Crusher.removeRecipe(<libvulpes:productgem>);
Pulverizer.removeRecipe(<libvulpes:ore0>);
enrichment.removeRecipe(<libvulpes:ore0>);
enrichment.removeRecipe(<libvulpes:productdust>);

// Circuit Boards
recipes.addShaped(<advancedrocketry:ic:5>, [[<moreplates:vivid_alloy_plate>, <appliedenergistics2:material:55>, <moreplates:vivid_alloy_plate>],[<moreplates:vivid_alloy_plate>, <enderio:item_material:41>, <moreplates:vivid_alloy_plate>], [<moreplates:vivid_alloy_plate>, <techreborn:part:43>, <moreplates:vivid_alloy_plate>]]);
recipes.addShaped(<advancedrocketry:ic:3>, [[<moreplates:vibrant_alloy_plate>, <ore:circuitElite>, <moreplates:vibrant_alloy_plate>],[<moreplates:vibrant_alloy_plate>, <advgenerators:controller>, <moreplates:vibrant_alloy_plate>], [<moreplates:vibrant_alloy_plate>, <techreborn:part:43>, <moreplates:vibrant_alloy_plate>]]);
recipes.addShaped(<advancedrocketry:ic:4>, [[<moreplates:end_steel_plate>, <rockhounding_chemistry:misc_items:10>, <moreplates:end_steel_plate>],[<moreplates:end_steel_plate>, <rockhounding_chemistry:misc_items:11>, <moreplates:end_steel_plate>], [<moreplates:end_steel_plate>, <techreborn:part:43>, <moreplates:end_steel_plate>]]);

// Laser Emitter
recipes.addShaped(<advancedrocketry:vacuumlaser>, [[null, <minecraft:glass>, null],[<thermalfoundation:material:324>, <actuallyadditions:block_crystal_empowered>, <thermalfoundation:material:324>], [<thermalfoundation:material:324>, <libvulpes:structuremachine>, <thermalfoundation:material:324>]]);

// Precision Laser etcher
recipes.addShaped(<advancedrocketry:precisionlaseretcher>, [[<ore:plateGold>, <advancedrocketry:misc>, <ore:plateGold>],[<advancedrocketry:ic:4>, <libvulpes:structuremachine>, <advancedrocketry:ic:3>], [<ore:circuitElite>, <ore:circuitElite>, <ore:circuitElite>]]);



val tier3Capacitor as IIngredient = (<enderio:item_basic_capacitor:2>|<enderio:item_capacitor_vivid>) as IIngredient;
# [User Interface] from [Tablet Case (Tier 2)][+3]
craft.remake(<advancedrocketry:misc>, ["pretty",
  "G G G",
  "□ : □",
  "□ E □"], {
  "G": <qmd:luminous_paint>,           # Green Radioluminescent Paint
  "□": <ore:plateWhitegold>,           # White Gold Plate
  ":": <ore:oc:tabletCase2>,           # Tablet Case (Tier 2)
  "E": tier3Capacitor, # Endergised Capacitor
});

##########################################################################################
print("==================== end of advanced_rocketry.zs ====================");
