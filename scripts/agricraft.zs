
import mods.artisanworktables.builder.RecipeBuilder;
import crafttweaker.item.IItemStack;
import crafttweaker.oredict.IOreDictEntry;
import mods.botaniatweaks.Agglomeration;
import crafttweaker.item.IIngredient;
import mods.thaumcraft.Crucible;
import mods.modularmachinery.RecipePrimer;

print("==================== loading agricraft.zs ====================");
##########################################################################################

// Growth Catalyst all recipes temp
val CatalystMap as IItemStack[IItemStack] = {
<minecraft:iron_block>:<jaopca:block_growthcatalystiron>,
<minecraft:gold_block>:<jaopca:block_growthcatalystgold>,
<thermalfoundation:storage:1>:<jaopca:block_growthcatalysttin>,
<thermalfoundation:storage:6>:<jaopca:block_growthcatalystplatinum>,
<mekanism:basicblock>:<jaopca:block_growthcatalystosmium>,
<thermalfoundation:storage:3>:<jaopca:block_growthcatalystlead>,
<minecraft:diamond_block>:<jaopca:block_growthcatalystdiamond>,
<thermalfoundation:storage:5>:<jaopca:block_growthcatalystnickel>,
<thermalfoundation:storage>:<jaopca:block_growthcatalystcopper>,
<thermalfoundation:storage:2>:<jaopca:block_growthcatalystsilver>,
<minecraft:lapis_block>:<jaopca:block_growthcatalystlapis>,
<minecraft:emerald_block>:<jaopca:block_growthcatalystemerald>,
<thermalfoundation:storage:4>:<jaopca:block_growthcatalystaluminium>,
<minecraft:quartz_block>:<jaopca:block_growthcatalystquartz>
} as IItemStack[IItemStack];

for block, catalyst in CatalystMap {
Agglomeration.addRecipe(<contenttweaker:dun_crystal>, 
[<enderutilities:enderpart:11>,<contenttweaker:terrestrial_crystal>,<aetherworks:item_resource>]
,250000,0xe8991a,0x118507,
<mysticalagriculture:growth_accelerator>,block,block,
null, catalyst, catalyst);
}

// White Petal
Crucible.registerRecipe("white_petal", "",
    <agricraft:agri_seed>.withTag({agri_analyzed: 0 as byte, agri_strength: 1 as byte, agri_gain: 1 as byte, agri_seed: "botania:white_flower_plant", agri_growth: 1 as byte}), <botania:doubleflower1>,
	[<aspect:sensus> * 20, <aspect:herba> * 10]
);

##########################################################################################
print("==================== end of agricraft.zs ====================");
