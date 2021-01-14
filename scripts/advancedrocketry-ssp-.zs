##########################################################################################


print("==================== loading mods advancedrocketry-ssp.zs ====================");
##########################################################################################
mods.advancedrocketry.PlatePresser.clear();

mods.advancedrocketry.PlatePresser.addRecipe(<minecraft:cobblestone>,<minecraft:stone>);
mods.advancedrocketry.PlatePresser.addRecipe(<minecraft:gravel>,<minecraft:cobblestone>);
mods.advancedrocketry.PlatePresser.addRecipe(<minecraft:sand>,<minecraft:gravel>);
mods.advancedrocketry.PlatePresser.addRecipe(<appliedenergistics2:material:5>,<minecraft:sand>);

mods.advancedrocketry.PlatePresser.addRecipe(<thermalfoundation:material:320>*5,<thermalfoundation:storage>);
mods.advancedrocketry.PlatePresser.addRecipe(<thermalfoundation:material:321>*5,<thermalfoundation:storage:1>);
mods.advancedrocketry.PlatePresser.addRecipe(<thermalfoundation:material:323>*5,<thermalfoundation:storage:3>);
mods.advancedrocketry.PlatePresser.addRecipe(<thermalfoundation:material:32>*5,<minecraft:iron_block>);

##########################################################################################
print("==================== end of mods advancedrocketry-ssp.zs ====================");
