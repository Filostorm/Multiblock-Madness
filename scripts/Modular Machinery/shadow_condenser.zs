import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;
import mods.modularmachinery.RecipePrimer;

print("==================== loading mods shadow_condenser.zs ====================");
##########################################################################################

##############################################
##
##           Shadow Condenser
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

// Shadow Condenser Upgrade Tooltips //
<iceandfire:dragonsteel_ice_block>.addTooltip(format.darkPurple("Shadow Condenser fluid modifier"));
<deepmoblearning:infused_ingot_block>.addTooltip(format.darkPurple("Shadow Condenser item modifier"));
<environmentaltech:aethium>.addTooltip(format.darkPurple("Shadow Condenser speed modifier"));
<thaumcraft:metal_void>.addTooltip(format.darkPurple("Shadow Condenser 2x output modifier"));
<thaumadditions:mithrillium_block>.addTooltip(format.darkPurple("Shadow Condenser 3x output modifier"));
<thaumadditions:adaminite_block>.addTooltip(format.darkPurple("Shadow Condenser 4x output modifier"));
<thaumadditions:mithminite_block>.addTooltip(format.darkPurple("Shadow Condenser 5x output modifier"));

##########################################################################################
print("==================== end of mods shadow_condenser.zs ====================");
