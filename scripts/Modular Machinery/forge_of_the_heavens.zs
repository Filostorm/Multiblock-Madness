import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;
import mods.modularmachinery.RecipePrimer;

print("==================== loading mods forge_of_the_heavens.zs ====================");
##########################################################################################

##############################################
##
##           Forge of the Heavens
##
##############################################

// Crystal Matrix Ingot
val CyrstalMatrixIngot = mods.modularmachinery.RecipeBuilder.newBuilder("forge-cyrstalmatrixingot", "heavens-forge", 400, 0);
CyrstalMatrixIngot.addMekanismLaserInput(50000000);
CyrstalMatrixIngot.addItemInput(<extendedcrafting:material:24>);
CyrstalMatrixIngot.addItemInput(<ore:CelestialCrystal>);
CyrstalMatrixIngot.addItemInput(<contenttweaker:crystal_lattice>*2);
CyrstalMatrixIngot.addItemInput(<moreplates:stellar_alloy_plate>*8);
CyrstalMatrixIngot.addItemInput(<actuallyadditions:item_crystal_empowered:2>*4);
CyrstalMatrixIngot.addFluidInput(<liquid:astralsorcery.liquidstarlight>* 10000);
CyrstalMatrixIngot.addFluidInput(<liquid:empoweredoil>* 10000);
CyrstalMatrixIngot.addItemOutput(<avaritia:resource:1>);
CyrstalMatrixIngot.build();

// Positive Deposition Matrix
val PositiveDispositionMatrix = mods.modularmachinery.RecipeBuilder.newBuilder("forge-positivedispositionmatrix", "heavens-forge", 400, 0);
PositiveDispositionMatrix.addMekanismLaserInput(100000000);
PositiveDispositionMatrix.addItemInput(<rockhounding_chemistry:alloy_items_gems:4>);
PositiveDispositionMatrix.addItemInput(<contenttweaker:material_part:10>);
PositiveDispositionMatrix.addItemInput(<rockhounding_chemistry:alloy_items_deco:22>);
PositiveDispositionMatrix.addItemInput(<libvulpes:productgem>);
PositiveDispositionMatrix.addFluidInput(<liquid:vapor_of_levity>* 5000);
PositiveDispositionMatrix.addItemOutput(<contenttweaker:matrix_deposition_+>);
PositiveDispositionMatrix.build();

// Negative Deposition Matrix
val NegitiveDispositionMatrix = mods.modularmachinery.RecipeBuilder.newBuilder("forge-negitivedispositionmatrix", "heavens-forge", 400, 0);
NegitiveDispositionMatrix.addMekanismLaserInput(100000000);
NegitiveDispositionMatrix.addItemInput(<rockhounding_chemistry:alloy_items_gems:7>);
NegitiveDispositionMatrix.addItemInput(<rockhounding_chemistry:alloy_items_deco:31>);
NegitiveDispositionMatrix.addItemInput(<avaritia:resource:1>);
NegitiveDispositionMatrix.addItemInput(<extendedcrafting:material>);
NegitiveDispositionMatrix.addFluidInput(<liquid:acrylic_acid>* 5000);
NegitiveDispositionMatrix.addItemOutput(<contenttweaker:matrix_deposition_->);
NegitiveDispositionMatrix.build();

// Neutronium Nugget
val NeutroniumNugget = mods.modularmachinery.RecipeBuilder.newBuilder("forge-neutroniumnugget", "heavens-forge", 100, 0);
NeutroniumNugget.addMekanismLaserInput(1000000);
NeutroniumNugget.addItemInput(<avaritia:resource:2>*9);
NeutroniumNugget.addFluidInput(<liquid:liquid_neon>* 1000);
NeutroniumNugget.addItemOutput(<avaritia:resource:3>);
NeutroniumNugget.build();

// Neutronium Ingot
val NeutroniumIngot = mods.modularmachinery.RecipeBuilder.newBuilder("forge-neutroniumingot", "heavens-forge", 200, 0);
NeutroniumIngot.addMekanismLaserInput(100000000);
NeutroniumIngot.addItemInput(<avaritia:resource:3>*9);
NeutroniumIngot.addGasInput("fusionfuel", 10000);
NeutroniumIngot.addItemOutput(<avaritia:resource:4>);
NeutroniumIngot.build();

// Midnight Lamp Luminessence
val MignightLampLuminessence = mods.modularmachinery.RecipeBuilder.newBuilder("forge-mignightlampluminessence", "heavens-forge", 300, 0);
MignightLampLuminessence.addMekanismLaserInput(10000000);
MignightLampLuminessence.addItemInput(<extendedcrafting:frame>);
MignightLampLuminessence.addItemInput(<extendedcrafting:storage:1>);
MignightLampLuminessence.addFluidInput(<liquid:argon>* 10000);
MignightLampLuminessence.addItemOutput(<extendedcrafting:lamp:1>);
MignightLampLuminessence.build();

// Midnight Lamp Glowstone
val MignightLampGlowstone = mods.modularmachinery.RecipeBuilder.newBuilder("forge-mignightlampglowstone", "heavens-forge", 300, 0);
MignightLampGlowstone.addMekanismLaserInput(10000000);
MignightLampGlowstone.addItemInput(<extendedcrafting:frame>);
MignightLampGlowstone.addItemInput(<minecraft:glowstone>);
MignightLampGlowstone.addFluidInput(<liquid:argon>* 10000);
MignightLampGlowstone.addItemOutput(<extendedcrafting:lamp>);
MignightLampGlowstone.build();

// Mirion
val Mirion = mods.modularmachinery.RecipeBuilder.newBuilder("forge-mirion", "heavens-forge", 300, 0);
Mirion.addMekanismLaserInput(10000000);
Mirion.addItemInput(<botania:manaresource>);
Mirion.addItemInput(<botania:manaresource:4>);
Mirion.addItemInput(<botania:manaresource:7>);
Mirion.addFluidInput(<liquid:cobalt>* 144);
Mirion.addFluidInput(<liquid:base_essence>* 144);
Mirion.addItemOutput(<plustic:mirioningot>);
Mirion.build();


// Forge of the Heavens Upgrade Tooltips //
<avaritia:block_resource:2>.addTooltip(format.aqua("Forge of the Heavens fluid modifier"));

##########################################################################################
print("==================== end of mods forge_of_the_heavens.zs ====================");
