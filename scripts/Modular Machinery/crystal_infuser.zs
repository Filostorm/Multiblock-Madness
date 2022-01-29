import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;
import mods.modularmachinery.RecipePrimer;

print("==================== loading mods crystal_infuser.zs ====================");
##########################################################################################

##############################################
##
##           Crystal Infuser
##
##############################################

// Terrestrial Crystal
val crystalInfusing = mods.modularmachinery.RecipeBuilder.newBuilder("crystal_infuser_celestial", "crystal_infuser", 400, 0);
crystalInfusing.addManaInput(2000);
crystalInfusing.addItemInput(<ore:CelestialCrystal>);
crystalInfusing.addItemInput(<bloodmagic:slate:3>);
crystalInfusing.addItemInput(<actuallyadditions:item_fertilizer>);
crystalInfusing.addItemInput(<thermalfoundation:fertilizer:2>*4);
crystalInfusing.addItemInput(<mysticalagriculture:mystical_fertilizer>*3);
crystalInfusing.addItemInput(<botania:rune:2>);
crystalInfusing.addItemOutput(<contenttweaker:terrestrial_crystal>);
crystalInfusing.build();

// Terrestrial Crystal recharging
val crystalReInfusing = mods.modularmachinery.RecipeBuilder.newBuilder("crystal_infuser_dun", "crystal_infuser", 400, 0);
crystalReInfusing.addManaInput(2000);
crystalReInfusing.addItemInput(<contenttweaker:dun_crystal>);
crystalReInfusing.addItemInput(<botania:rune:2>);
crystalReInfusing.addItemOutput(<contenttweaker:terrestrial_crystal>).setChance(0.9);
crystalReInfusing.build();

##########################################################################################
print("==================== end of mods crystal_infuser.zs ====================");
