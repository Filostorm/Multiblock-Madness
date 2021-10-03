import mods.modularmachinery.RecipePrimer;
import crafttweaker.item.IItemStack;

print("==================== loading modular machines.zs ====================");
##########################################################################################

##Testing Water
val WaterWater = mods.modularmachinery.RecipeBuilder.newBuilder("water-water", "elemental_condensator", 10, 0);
WaterWater.addFluidInput(<liquid:water>* 1000);
WaterWater.addFluidOutput(<liquid:fluidelectrolyzedwater>* 100);
WaterWater.build();

##Testing Air

val StarlightAir = mods.modularmachinery.RecipeBuilder.newBuilder("starlight-air", "elemental_condensator", 10, 0);
StarlightAir.addFluidInput(<liquid:astralsorcery.liquidstarlight>* 100);
StarlightAir.addFluidOutput(<liquid:fluidcompressedair>* 100);
StarlightAir.build();
/*
val PlantsAir = mods.modularmachinery.RecipeBuilder.newBuilder("plants-air", "elemental_condensator", 1, 0);
PlantsAir.addItemInput(<ore:plants>,1);
PlantsAir.addFluidOutput(<liquid:fluidcompressedair>* 10);
PlantsAir.build();
*/
##Testing Fire
val EmbersFire = mods.modularmachinery.RecipeBuilder.newBuilder("embers-fire", "elemental_condensator", 10, 0);
EmbersFire.addEmberInput(40);
EmbersFire.addFluidOutput(<liquid:moltenembers>* 100);
EmbersFire.build();

##Testing Earth
val ManaEarth = mods.modularmachinery.RecipeBuilder.newBuilder("mana-earth", "elemental_condensator", 10, 0);
ManaEarth.addManaInput(1000);
ManaEarth.addFluidOutput(<liquid:dirt>* 100);
ManaEarth.build();


##eliteReaction Reaction
val eliteReaction = mods.modularmachinery.RecipeBuilder.newBuilder("earth-fire-air-water-reaction", "elemental_reaction_chamber", 10, 0);
eliteReaction.addFluidInput(<liquid:dirt>* 100);
eliteReaction.addFluidInput(<liquid:moltenembers>* 100);
eliteReaction.addFluidInput(<liquid:fluidcompressedair>* 100);
eliteReaction.addFluidInput(<liquid:fluidelectrolyzedwater>* 100);
eliteReaction.addEnergyPerTickOutput(8000);
eliteReaction.build();



##advancedReaction1 Reaction
val advancedReaction1 = mods.modularmachinery.RecipeBuilder.newBuilder("earth-fire-air-reaction", "elemental_reaction_chamber", 10, 0);
advancedReaction1.addFluidInput(<liquid:dirt>* 100);
advancedReaction1.addFluidInput(<liquid:moltenembers>* 100);
advancedReaction1.addFluidInput(<liquid:fluidcompressedair>* 100);
advancedReaction1.addEnergyPerTickOutput(2000);
advancedReaction1.build();

##advancedReaction2 Reaction
val advancedReaction2 = mods.modularmachinery.RecipeBuilder.newBuilder("earth-fire-water-reaction", "elemental_reaction_chamber", 10, 0);
advancedReaction2.addFluidInput(<liquid:dirt>* 100);
advancedReaction2.addFluidInput(<liquid:moltenembers>* 100);
advancedReaction2.addFluidInput(<liquid:fluidelectrolyzedwater>* 100);
advancedReaction2.addEnergyPerTickOutput(2000);
advancedReaction2.build();

##advancedReaction3 Reaction
val advancedReaction3 = mods.modularmachinery.RecipeBuilder.newBuilder("earth-air-water-reaction", "elemental_reaction_chamber", 10, 0);
advancedReaction3.addFluidInput(<liquid:dirt>* 100);
advancedReaction3.addFluidInput(<liquid:fluidcompressedair>* 100);
advancedReaction3.addFluidInput(<liquid:fluidelectrolyzedwater>* 100);
advancedReaction3.addEnergyPerTickOutput(2000);
advancedReaction3.build();

##advancedReaction4 Reaction
val advancedReaction4 = mods.modularmachinery.RecipeBuilder.newBuilder("fire-air-water-reaction", "elemental_reaction_chamber", 10, 0);
advancedReaction4.addFluidInput(<liquid:moltenembers>* 100);
advancedReaction4.addFluidInput(<liquid:fluidcompressedair>* 100);
advancedReaction4.addFluidInput(<liquid:fluidelectrolyzedwater>* 100);
advancedReaction4.addEnergyPerTickOutput(2000);
advancedReaction4.build();



##basicReaction1 Reaction
val basicReaction1 = mods.modularmachinery.RecipeBuilder.newBuilder("earth-fire-reaction", "elemental_reaction_chamber", 10, 0);
basicReaction1.addFluidInput(<liquid:dirt>* 100);
basicReaction1.addFluidInput(<liquid:moltenembers>* 100);
basicReaction1.addEnergyPerTickOutput(500);
basicReaction1.build();

##basicReaction2 Reaction
val basicReaction2 = mods.modularmachinery.RecipeBuilder.newBuilder("earth-water-reaction", "elemental_reaction_chamber", 10, 0);
basicReaction2.addFluidInput(<liquid:dirt>* 100);
basicReaction2.addFluidInput(<liquid:fluidelectrolyzedwater>* 100);
basicReaction2.addEnergyPerTickOutput(500);
basicReaction2.build();

##basicReaction3 Reaction
val basicReaction3 = mods.modularmachinery.RecipeBuilder.newBuilder("earth-air-reaction", "elemental_reaction_chamber", 10, 0);
basicReaction3.addFluidInput(<liquid:dirt>* 100);
basicReaction3.addFluidInput(<liquid:fluidcompressedair>* 100);
basicReaction3.addEnergyPerTickOutput(500);
basicReaction3.build();

##basicReaction4 Reaction
val basicReaction4 = mods.modularmachinery.RecipeBuilder.newBuilder("fire-air-reaction", "elemental_reaction_chamber", 10, 0);
basicReaction4.addFluidInput(<liquid:moltenembers>* 100);
basicReaction4.addFluidInput(<liquid:fluidcompressedair>* 100);
basicReaction4.addEnergyPerTickOutput(500);
basicReaction4.build();

##basicReaction5 Reaction
val basicReaction5 = mods.modularmachinery.RecipeBuilder.newBuilder("fire-water-reaction", "elemental_reaction_chamber", 10, 0);
basicReaction5.addFluidInput(<liquid:moltenembers>* 100);
basicReaction5.addFluidInput(<liquid:fluidelectrolyzedwater>* 100);
basicReaction5.addEnergyPerTickOutput(500);
basicReaction5.build();

##basicReaction6 Reaction
val basicReaction6 = mods.modularmachinery.RecipeBuilder.newBuilder("air-water-reaction", "elemental_reaction_chamber", 10, 0);
basicReaction6.addFluidInput(<liquid:fluidcompressedair>* 100);
basicReaction6.addFluidInput(<liquid:fluidelectrolyzedwater>* 100);
basicReaction6.addEnergyPerTickOutput(500);
basicReaction6.build();


##########################################################################################
print("==================== end of modular machines.zs ====================");
