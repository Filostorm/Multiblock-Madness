import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;
import mods.modularmachinery.RecipePrimer;
import mods.jei.JEI.addDescription;

print("==================== loading mods shadow_condenser.zs ====================");
##########################################################################################

##############################################
##
##           Shadow Condenser Tooltips & Descriptions
##
##############################################

// Shadow Condenser Upgrade Tooltips //

<iceandfire:dragonsteel_ice_block>.addTooltip(format.darkPurple("Shadow Condenser Modifier: -50% Fluid Use"));
<deepmoblearning:infused_ingot_block>.addTooltip(format.darkPurple("Shadow Condenser Modifier: 20% Chance to not consume items"));
<environmentaltech:aethium>.addTooltip(format.darkPurple("Shadow Condenser Modifier: 2x Speed"));
<thaumcraft:metal_void>.addTooltip(format.darkPurple("Shadow Condenser Modifier: 2x Output"));
<thaumadditions:mithrillium_block>.addTooltip(format.darkPurple("Shadow Condenser Modifier: 3x Output"));
<thaumadditions:adaminite_block>.addTooltip(format.darkPurple("Shadow Condenser Modifier: 4x Output"));
<thaumadditions:mithminite_block>.addTooltip(format.darkPurple("Shadow Condenser Modifier: 5x Output"));

// Shadow Condenser JEI Description //

addDescription(<modularmachinery:itemblueprint>.withTag({dynamicmachine: "modularmachinery:darkness-collector"}), 
"Back Modifier",
"Aethium: 2x Speed",
"",
"Left Modfiier",
"Ice Dragonsteel: -50% Fluid Use",
"",
"Right Modifier",
"Glitch Infused Block: 20% Chance to not consume items",
"",
"Front Modifier",
"Void Metal: 2x Output",
"Mithrillium: 3x Output",
"Adaminite: 4x Output",
"Mithminite: 5x Output");


##############################################
##
##           Shadow Condenser Recipes
##
##############################################

// Midnight Ingot
val MidnightIngot = mods.modularmachinery.RecipeBuilder.newBuilder("midnight-ingot", "darkness-collector", 2000, 0);
//MidnightIngot.addItemInput(<techreborn:ingot:25>);
MidnightIngot.addItemInput(<thermalfoundation:material:135>);
MidnightIngot.addItemInput(<actuallyadditions:item_crystal_empowered:3>);
MidnightIngot.addItemInput(<mysticalagradditions:stuff:3>);
MidnightIngot.addItemInput(<environmentaltech:kyronite_crystal>);
MidnightIngot.addFluidInput(<liquid:ender_distillation>*4000);
MidnightIngot.addItemOutput(<extendedcrafting:material>);
MidnightIngot.addDimensionRequirement([10]);
MidnightIngot.build();

// Void Seed
val VoidSeed = mods.modularmachinery.RecipeBuilder.newBuilder("void-seed", "darkness-collector", 2000, 0);
//VoidSeed.addItemInput(<techreborn:ingot:25>);
VoidSeed.addItemInput(<thaumcraft:nugget:7>);
VoidSeed.addFluidInput(<liquid:ender_distillation>*4000);
VoidSeed.addItemOutput(<thaumcraft:void_seed>);
VoidSeed.addDimensionRequirement([10]);
VoidSeed.build();


##########################################################################################
print("==================== end of mods shadow_condenser.zs ====================");
