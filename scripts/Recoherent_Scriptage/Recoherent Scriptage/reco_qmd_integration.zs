import crafttweaker.item.IItemStack;
import mods.modularmachinery.RecipePrimer;

##temp matrix recipes
recipes.addShapeless(<contenttweaker:matrix_deposition_->, [<rockhounding_chemistry:alloy_items_gems:7>,<rockhounding_chemistry:alloy_items_deco:31>,<avaritia:resource:1>,<extendedcrafting:material>]);
recipes.addShapeless(<contenttweaker:matrix_deposition_+>, [<rockhounding_chemistry:alloy_items_gems:4>,<contenttweaker:material_part:10>,<rockhounding_chemistry:alloy_items_deco:22>,<libvulpes:productgem>]);

#platin
recipes.addShaped(<contenttweaker:plating_elite> * 4, [[null, <nuclearcraft:part:3>, null],[<nuclearcraft:part:3>, null, <nuclearcraft:part:3>], [null, <nuclearcraft:part:3>, null]]);


mods.qmd.accelerator_source.addRecipe(<contenttweaker:incoherent>, ((<particle:filon>*50)^300)~0.02);
mods.qmd.target_chamber.addRecipe(<contenttweaker:neutronic>, ((<particle:filon>*1000000)^50000)~2.0, <avaritia:resource:4>, null, null, null, 53000, 0.28, -100000, 0.001);

##Incoherent Matrix
val IncoherentCraft = mods.modularmachinery.RecipeBuilder.newBuilder("deposition-incoherent", "lowgravitydepositionchamber", 500, 0);
IncoherentCraft.addEnergyPerTickInput(85000);
IncoherentCraft.addFluidInput(<liquid:antihelium3>*200);
IncoherentCraft.addItemInput(<contenttweaker:matrix_deposition_+>);
IncoherentCraft.addItemOutput(<contenttweaker:incoherent>);
IncoherentCraft.addDimensionRequirement([-2]);
IncoherentCraft.build();

##Neutronic Matrix
val NeutronicCraft = mods.modularmachinery.RecipeBuilder.newBuilder("deposition-neutronic", "lowgravitydepositionchamber", 500, 0);
NeutronicCraft.addEnergyPerTickInput(85000);
NeutronicCraft.addFluidInput(<liquid:muonium>*200);
NeutronicCraft.addItemInput(<contenttweaker:matrix_deposition_->);
NeutronicCraft.addItemOutput(<contenttweaker:neutronic>);
NeutronicCraft.addDimensionRequirement([-2]);
NeutronicCraft.build();