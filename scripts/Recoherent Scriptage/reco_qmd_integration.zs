import crafttweaker.item.IItemStack;
import mods.modularmachinery.RecipePrimer;


#platin
recipes.addShaped(<contenttweaker:plating_elite> * 4, [[null, <nuclearcraft:part:3>, null],[<nuclearcraft:part:3>, null, <nuclearcraft:part:3>], [null, <nuclearcraft:part:3>, null]]);


mods.qmd.accelerator_source.addRecipe(<contenttweaker:incoherent>, ((<particle:filon>*100000)^30000)~1.02);
mods.qmd.target_chamber.addRecipe(<contenttweaker:neutronic>, ((<particle:filon>*1000000)^50000)~2.0, <avaritia:resource:4>, null, null, null, 53000, 0.28, -100000, 0.001);

##Incoherent Matrix
val IncoherentCraft = mods.modularmachinery.RecipeBuilder.newBuilder("deposition-incoherent", "lowgravitydepositionchamber", 300, 0);
IncoherentCraft.addEnergyPerTickInput(4000000);
//IncoherentCraft.addFluidInput(<liquid:antihelium3>*200);
IncoherentCraft.addItemInput(<qmd:cell:4>.withTag({storage: {amount: 600}}));
IncoherentCraft.addItemInput(<contenttweaker:matrix_deposition_+>);
IncoherentCraft.addItemOutput(<contenttweaker:incoherent>);
IncoherentCraft.addItemOutput(<qmd:cell>);
IncoherentCraft.build();

##Neutronic Matrix
val NeutronicCraft = mods.modularmachinery.RecipeBuilder.newBuilder("deposition-neutronic", "lowgravitydepositionchamber", 300, 0);
NeutronicCraft.addEnergyPerTickInput(4000000);
//NeutronicCraft.addFluidInput(<liquid:muonium>*200);
NeutronicCraft.addItemInput(<qmd:cell:7>.withTag({storage: {amount: 200}}));
NeutronicCraft.addItemInput(<contenttweaker:matrix_deposition_->);
NeutronicCraft.addItemOutput(<contenttweaker:neutronic>);
NeutronicCraft.addItemOutput(<qmd:cell>);
NeutronicCraft.build();