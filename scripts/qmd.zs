import crafttweaker.item.IItemStack;
print("==================== loading qmd.zs ====================");
##########################################################################################

mods.nuclearcraft.Melter.addRecipe(<rockhounding_chemistry:alloy_items_gems:1>, <liquid:nd_yag>*432);
mods.thermalexpansion.Crucible.addRecipe(<liquid:nd_yag>*432, <rockhounding_chemistry:alloy_items_gems:1>, 4000);

//qmd bugged recipe fix
mods.qmd.target_chamber.removeRecipeWithInput(<ore:ingotUranium238>, (<particle:neutron>*1000000)^26000);
mods.qmd.target_chamber.addRecipe(<ore:ingotUranium238>, (<particle:neutron>*1000000)^26000, <ore:ingotUranium235>, null, <particle:neutron>*4, null, 34000, 0.55, -17800);

// Recoherent's QMD Neutronium
// Thanks Reco!

// Elite Plating
recipes.addShaped(<contenttweaker:plating_elite> * 4, [[null, <nuclearcraft:part:3>, null],[<nuclearcraft:part:3>, null, <nuclearcraft:part:3>], [null, <nuclearcraft:part:3>, null]]);

//Filon
//mods.qmd.target_chamber.addRecipe(IIngredient inputItem, IIngredient inputParticle, IIngredient outputItem, IIngredient outputParticle1, IIngredient outputParticle2, IIngredient outputParticle3, long maxEnergy, double crossSection, {long energyReleased, double processRadiation})
var ultimateIngot = <extendedcrafting:material:32>;
mods.qmd.target_chamber.addRecipe(ultimateIngot, (<particle:photon>*51000000)^18000, <contenttweaker:solar_ingot>, null, <particle:filon>, null, 22000, 0.2, 15000);

// Neutronium
/*
mods.qmd.accelerator_source.addRecipe(<contenttweaker:incoherent>, ((<particle:filon>*10000)^30000)~1.02);
mods.qmd.target_chamber.addRecipe(<contenttweaker:neutronic>, ((<particle:filon>*1000000)^50000)~2.0, <avaritia:resource:4>, null, null, null, 53000, 0.28, -100000, 0.001);
*/
//mods.qmd.nucleosynthesis_chamber.addRecipe(IIngredient inputFluid1, IIngredient inputFluid2, IIngredient inputParticle, IIngredient outputFluid1, IIngredient outputFluid2, {long maxEnergy}, {long heatRelased})
mods.qmd.nucleosynthesis_chamber.addRecipe(<liquid:neutronic_matrix>*36, <liquid:incoherent_matrix>*36, <particle:filon>*4890000, <liquid:neutronium>*72, null, 10000, 4370);


# [Accelerator Electromagnet Yoke]*4 from [Bioplastic][+1]
craft.remake(<qmd:accelerator_yoke> * 4, ["pretty",
  "□ b □",
  "□ b □",
  "□ b □"], {
  "□": <ore:plateStainlessSteel>, # Stainless Steel Plate
  "b": <ore:bioplastic>,          # Bioplastic
});

//sodium, iridium, cobalt, and calcium source stack size fix
<qmd:source:1>.maxStackSize = 1;
<qmd:source:2>.maxStackSize = 1;
<qmd:source:3>.maxStackSize = 1;
<qmd:source:4>.maxStackSize = 1;
##########################################################################################
print("==================== end of qmd.zs ====================");
