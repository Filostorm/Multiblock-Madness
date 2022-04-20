import mods.modularmachinery.RecipePrimer;
import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;


// Arcane Assembler Upgrade Tooltips //
<thaumcraft:metal_alchemical_advanced>.addTooltip(format.darkAqua("When used in the Arcane Assembler, reduces time required by 5% each"));
<thaumcraft:matrix_cost>.addTooltip(format.darkAqua("When used in the Arcane Assembler, reduces fluid required by 20%"));
<thaumcraft:matrix_speed>.addTooltip(format.darkAqua("When used in the Arcane Assembler, reduces time required by 20%"));
<thaumadditions:mithminite_block>.addTooltip(format.darkAqua("When used in the Arcane Assembler, reduces fluid and time required by 30%"));

##Warding Sigil
val Warding_sigil = mods.modularmachinery.RecipeBuilder.newBuilder("thaum-warding_sigil", "arcaneassembler", 60, 0);
Warding_sigil.addFluidInput(<liquid:crystal_water> * 100);
Warding_sigil.addItemInput(<thaumcraft:brain>);
Warding_sigil.addItemInput(<thaumcraft:tallow> * 2);
Warding_sigil.addItemInput(<ore:dyePurple>, 2);
Warding_sigil.addItemOutput(<thaumicaugmentation:material:1>*3);
Warding_sigil.build();