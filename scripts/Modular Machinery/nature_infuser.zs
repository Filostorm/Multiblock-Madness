import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;
import mods.modularmachinery.RecipePrimer;

print("==================== loading mods nature_infuser.zs ====================");
##########################################################################################

##############################################
##
##           Nature Infuser
##
##############################################

// Terrestrial Crystal
val crystalInfusing = mods.modularmachinery.RecipeBuilder.newBuilder("nature_infuser_celestial", "nature_infuser", 400, 0);
crystalInfusing.addManaInput(20000);
crystalInfusing.addItemInput(<ore:CelestialCrystal>);
crystalInfusing.addItemInput(<bloodmagic:slate:3>);
crystalInfusing.addItemInput(<actuallyadditions:item_fertilizer>);
crystalInfusing.addItemInput(<thermalfoundation:fertilizer:2>*4);
crystalInfusing.addItemInput(<mysticalagriculture:mystical_fertilizer>*3);
crystalInfusing.addItemInput(<botania:rune:2>);
crystalInfusing.addItemOutput(<contenttweaker:terrestrial_crystal>);
crystalInfusing.build();

// Terrestrial Crystal recharging
val crystalReInfusing = mods.modularmachinery.RecipeBuilder.newBuilder("nature_infuser_dun", "nature_infuser", 400, 0);
crystalReInfusing.addManaInput(20000);
crystalReInfusing.addItemInput(<contenttweaker:dun_crystal>);
crystalReInfusing.addItemInput(<botania:rune:2>);
crystalReInfusing.addItemOutput(<contenttweaker:terrestrial_crystal>).setChance(0.9);
crystalReInfusing.build();

// Elemental Soil
mods.modularmachinery.RecipeBuilder.newBuilder("nature_infuser" + "_elemental_soil", "nature_infuser", 200, 0)
    .addManaInput(2000)
    .addItemInput(<prefab:block_compressed_dirt>)
    .addItemInput(<thermalfoundation:fertilizer:1> * 4)
    .addItemOutput(<contenttweaker:elemental_soil> * 9)
    .build();

// Fertilised dirt
mods.modularmachinery.RecipeBuilder.newBuilder("nature_infuser" + "_fertilizeddirt", "nature_infuser", 50, 0)
    .addManaInput(500)
    .addItemInput(<minecraft:dirt> * 2)
    .addItemInput(<minecraft:rotten_flesh> * 4)
    .addItemInput(<minecraft:dye:15> * 4)    
    .addItemOutput(<randomthings:fertilizeddirt> * 2)
    .build();

// Green Fertilizer
mods.modularmachinery.RecipeBuilder.newBuilder("nature_infuser" + "_green_fertilizer", "nature_infuser", 50, 0)
    .addManaInput(500)
    .addItemInput(<ore:dyeGreen>, 3)
    .addItemInput(<minecraft:gold_nugget> * 2)
    .addItemInput(<minecraft:wheat_seeds>)    
    .addItemInput(<minecraft:dye:15> * 3)    
    .addItemOutput(<farmingforblockheads:fertilizer:1> * 8)
    .build();

// Yellow Fertilizer
mods.modularmachinery.RecipeBuilder.newBuilder("nature_infuser" + "_yellow_fertilizer", "nature_infuser", 50, 0)
    .addManaInput(500)
    .addItemInput(<ore:dyeYellow>, 3)
    .addItemInput(<minecraft:gold_nugget> * 2)
    .addItemInput(<minecraft:wheat_seeds>)    
    .addItemInput(<minecraft:dye:15> * 3)    
    .addItemOutput(<farmingforblockheads:fertilizer:2> * 8)
    .build();

// Red Fertilizer
mods.modularmachinery.RecipeBuilder.newBuilder("nature_infuser" + "_red_fertilizer", "nature_infuser", 50, 0)
    .addManaInput(500)
    .addItemInput(<ore:dyeRed>, 3)
    .addItemInput(<minecraft:gold_nugget> * 2)
    .addItemInput(<minecraft:wheat_seeds>)    
    .addItemInput(<minecraft:dye:15> * 3)    
    .addItemOutput(<farmingforblockheads:fertilizer> * 8)
    .build();

##########################################################################################
print("==================== end of mods nature_infuser.zs ====================");
