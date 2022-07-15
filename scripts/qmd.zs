import crafttweaker.item.IItemStack;
print("==================== loading qmd.zs ====================");
##########################################################################################

mods.nuclearcraft.Melter.addRecipe(<rockhounding_chemistry:alloy_items_gems:1>, <liquid:nd_yag>*432);
mods.thermalexpansion.Crucible.addRecipe(<liquid:nd_yag>*432, <rockhounding_chemistry:alloy_items_gems:1>, 4000);


// Recoherent's QMD Neutronium
// Thanks Reco!

// Elite Plating
recipes.addShaped(<contenttweaker:plating_elite> * 4, [[null, <nuclearcraft:part:3>, null],[<nuclearcraft:part:3>, null, <nuclearcraft:part:3>], [null, <nuclearcraft:part:3>, null]]);

// Neutronium
/*
mods.qmd.accelerator_source.addRecipe(<contenttweaker:incoherent>, ((<particle:filon>*10000)^30000)~1.02);
mods.qmd.target_chamber.addRecipe(<contenttweaker:neutronic>, ((<particle:filon>*1000000)^50000)~2.0, <avaritia:resource:4>, null, null, null, 53000, 0.28, -100000, 0.001);
*/
//mods.qmd.nucleosynthesis_chamber.addRecipe(IIngredient inputFluid1, IIngredient inputFluid2, IIngredient inputParticle, IIngredient outputFluid1, IIngredient outputFluid2, {long maxEnergy}, {long heatRelased})
mods.qmd.nucleosynthesis_chamber.addRecipe(<liquid:neutronic_matrix>*144, <liquid:incoherent_matrix>*144, <particle:higgs_boson>*37000000, <liquid:neutronium>*144, null, 1000, 9030);


# [Accelerator Electromagnet Yoke]*4 from [Bioplastic][+1]
craft.remake(<qmd:accelerator_yoke> * 4, ["pretty",
  "□ b □",
  "□ b □",
  "□ b □"], {
  "□": <ore:plateStainlessSteel>, # Stainless Steel Plate
  "b": <ore:bioplastic>,          # Bioplastic
});
##########################################################################################
print("==================== end of qmd.zs ====================");
