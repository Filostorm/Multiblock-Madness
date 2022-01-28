import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;
import mods.modularmachinery.RecipePrimer;

print("==================== loading mods deposition_chamber.zs ====================");
##########################################################################################

##############################################
##
##           Deposition Chamber
##
##############################################

// Incoherent Matrix
val IncoherentCraft = mods.modularmachinery.RecipeBuilder.newBuilder("deposition-incoherent", "lowgravitydepositionchamber", 300, 0);
IncoherentCraft.addEnergyPerTickInput(4000000);
//IncoherentCraft.addFluidInput(<liquid:antihelium3>*200);
IncoherentCraft.addItemInput(<qmd:cell:4>.withTag({storage: {amount: 600}}));
IncoherentCraft.addItemInput(<contenttweaker:matrix_deposition_+>);
IncoherentCraft.addItemOutput(<contenttweaker:incoherent>);
IncoherentCraft.addItemOutput(<qmd:cell>);
IncoherentCraft.build();

// Neutronic Matrix
val NeutronicCraft = mods.modularmachinery.RecipeBuilder.newBuilder("deposition-neutronic", "lowgravitydepositionchamber", 300, 0);
NeutronicCraft.addEnergyPerTickInput(4000000);
//NeutronicCraft.addFluidInput(<liquid:muonium>*200);
NeutronicCraft.addItemInput(<qmd:cell:7>.withTag({storage: {amount: 200}}));
NeutronicCraft.addItemInput(<contenttweaker:matrix_deposition_->);
NeutronicCraft.addItemOutput(<contenttweaker:neutronic>);
NeutronicCraft.addItemOutput(<qmd:cell>);
NeutronicCraft.build();

##########################################################################################
print("==================== end of mods deposition_chamber.zs ====================");
