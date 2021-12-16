#loader contenttweaker
#priority 98
import mods.contenttweaker.VanillaFactory;
import mods.contenttweaker.Block;

print("==================== loading blocks.zs ====================");
##########################################################################################

var sheetmetalBronzeBlock = VanillaFactory.createBlock("sheetmetal_bronze", <blockmaterial:iron>);
sheetmetalBronzeBlock.setLightOpacity(3);
sheetmetalBronzeBlock.setLightValue(0);
sheetmetalBronzeBlock.setBlockHardness(5.0);
sheetmetalBronzeBlock.setBlockResistance(5.0);
sheetmetalBronzeBlock.setToolClass("pickaxe");
sheetmetalBronzeBlock.setToolLevel(1);
sheetmetalBronzeBlock.setBlockSoundType(<soundtype:metal>);
sheetmetalBronzeBlock.register();

var sheetmetalRefinedIronBlock = VanillaFactory.createBlock("sheetmetal_refinediron", <blockmaterial:iron>);
sheetmetalRefinedIronBlock.setLightOpacity(3);
sheetmetalRefinedIronBlock.setLightValue(0);
sheetmetalRefinedIronBlock.setBlockHardness(5.0);
sheetmetalRefinedIronBlock.setBlockResistance(5.0);
sheetmetalRefinedIronBlock.setToolClass("pickaxe");
sheetmetalRefinedIronBlock.setToolLevel(1);
sheetmetalRefinedIronBlock.setBlockSoundType(<soundtype:metal>);
sheetmetalRefinedIronBlock.register();

var sheetmetalThaumiumBlock = VanillaFactory.createBlock("sheetmetal_thaumium", <blockmaterial:iron>);
sheetmetalThaumiumBlock.setLightOpacity(3);
sheetmetalThaumiumBlock.setLightValue(0);
sheetmetalThaumiumBlock.setBlockHardness(5.0);
sheetmetalThaumiumBlock.setBlockResistance(5.0);
sheetmetalThaumiumBlock.setToolClass("pickaxe");
sheetmetalThaumiumBlock.setToolLevel(1);
sheetmetalThaumiumBlock.setBlockSoundType(<soundtype:metal>);
sheetmetalThaumiumBlock.register();

var sheetmetalBrassBlock = VanillaFactory.createBlock("sheetmetal_brass", <blockmaterial:iron>);
sheetmetalBrassBlock.setLightOpacity(3);
sheetmetalBrassBlock.setLightValue(0);
sheetmetalBrassBlock.setBlockHardness(5.0);
sheetmetalBrassBlock.setBlockResistance(5.0);
sheetmetalBrassBlock.setToolClass("pickaxe");
sheetmetalBrassBlock.setToolLevel(1);
sheetmetalBrassBlock.setBlockSoundType(<soundtype:metal>);
sheetmetalBrassBlock.register();

var sheetmetalNimonicBlock = VanillaFactory.createBlock("sheetmetal_nimonic", <blockmaterial:iron>);
sheetmetalNimonicBlock.setLightOpacity(3);
sheetmetalNimonicBlock.setLightValue(0);
sheetmetalNimonicBlock.setBlockHardness(5.0);
sheetmetalNimonicBlock.setBlockResistance(5.0);
sheetmetalNimonicBlock.setToolClass("pickaxe");
sheetmetalNimonicBlock.setToolLevel(1);
sheetmetalNimonicBlock.setBlockSoundType(<soundtype:metal>);
sheetmetalNimonicBlock.register();

var scaffoldingVanasteelBlock = VanillaFactory.createBlock("vanasteel_scaffolding", <blockmaterial:iron>);
scaffoldingVanasteelBlock.setLightValue(0);
scaffoldingVanasteelBlock.setBlockHardness(5.0);
scaffoldingVanasteelBlock.setBlockResistance(5.0);
scaffoldingVanasteelBlock.setToolClass("pickaxe");
scaffoldingVanasteelBlock.setToolLevel(1);
scaffoldingVanasteelBlock.setBlockSoundType(<soundtype:metal>);
scaffoldingVanasteelBlock.setFullBlock(false);
scaffoldingVanasteelBlock.setTranslucent(true);
scaffoldingVanasteelBlock.setBlockLayer("CUTOUT");
scaffoldingVanasteelBlock.register();

var scaffoldingScalBlock = VanillaFactory.createBlock("scal_scaffolding", <blockmaterial:iron>);
scaffoldingScalBlock.setLightValue(0);
scaffoldingScalBlock.setBlockHardness(5.0);
scaffoldingScalBlock.setBlockResistance(5.0);
scaffoldingScalBlock.setToolClass("pickaxe");
scaffoldingScalBlock.setToolLevel(1);
scaffoldingScalBlock.setBlockSoundType(<soundtype:metal>);
scaffoldingScalBlock.setFullBlock(false);
scaffoldingScalBlock.setTranslucent(true);
scaffoldingScalBlock.setBlockLayer("CUTOUT");
scaffoldingScalBlock.register();

var scaffoldingBamBlock = VanillaFactory.createBlock("bam_scaffolding", <blockmaterial:iron>);
scaffoldingBamBlock.setLightValue(0);
scaffoldingBamBlock.setBlockHardness(5.0);
scaffoldingBamBlock.setBlockResistance(5.0);
scaffoldingBamBlock.setToolClass("pickaxe");
scaffoldingBamBlock.setToolLevel(1);
scaffoldingBamBlock.setBlockSoundType(<soundtype:metal>);
scaffoldingBamBlock.setFullBlock(false);
scaffoldingBamBlock.setTranslucent(true);
scaffoldingBamBlock.setBlockLayer("CUTOUT");
scaffoldingBamBlock.register();

var scaffoldingNimonicBlock = VanillaFactory.createBlock("nimonic_scaffolding", <blockmaterial:iron>);
scaffoldingNimonicBlock.setLightValue(0);
scaffoldingNimonicBlock.setBlockHardness(5.0);
scaffoldingNimonicBlock.setBlockResistance(5.0);
scaffoldingNimonicBlock.setToolClass("pickaxe");
scaffoldingNimonicBlock.setToolLevel(1);
scaffoldingNimonicBlock.setBlockSoundType(<soundtype:metal>);
scaffoldingNimonicBlock.setFullBlock(false);
scaffoldingNimonicBlock.setTranslucent(true);
scaffoldingNimonicBlock.setBlockLayer("CUTOUT");
scaffoldingNimonicBlock.register();

var scaffoldingInvarBlock = VanillaFactory.createBlock("invar_scaffolding", <blockmaterial:iron>);
scaffoldingInvarBlock.setLightValue(0);
scaffoldingInvarBlock.setBlockHardness(5.0);
scaffoldingInvarBlock.setBlockResistance(5.0);
scaffoldingInvarBlock.setToolClass("pickaxe");
scaffoldingInvarBlock.setToolLevel(1);
scaffoldingInvarBlock.setBlockSoundType(<soundtype:metal>);
scaffoldingInvarBlock.setFullBlock(false);
scaffoldingInvarBlock.setTranslucent(true);
scaffoldingInvarBlock.setBlockLayer("CUTOUT");
scaffoldingInvarBlock.register();

var BasicPlatingBlock = VanillaFactory.createBlock("plating_basic", <blockmaterial:iron>);
BasicPlatingBlock.setLightValue(0);
BasicPlatingBlock.setBlockHardness(5.0);
BasicPlatingBlock.setBlockResistance(5.0);
BasicPlatingBlock.setToolClass("pickaxe");
BasicPlatingBlock.setToolLevel(1);
BasicPlatingBlock.setBlockSoundType(<soundtype:metal>);
BasicPlatingBlock.register();

var AdvancedPlatingBlock = VanillaFactory.createBlock("plating_advanced", <blockmaterial:iron>);
AdvancedPlatingBlock.setLightValue(0);
AdvancedPlatingBlock.setBlockHardness(5.0);
AdvancedPlatingBlock.setBlockResistance(5.0);
AdvancedPlatingBlock.setToolClass("pickaxe");
AdvancedPlatingBlock.setToolLevel(1);
AdvancedPlatingBlock.setBlockSoundType(<soundtype:metal>);
AdvancedPlatingBlock.register();

var ElitePlatingBlock = VanillaFactory.createBlock("plating_elite", <blockmaterial:iron>);
ElitePlatingBlock.setLightValue(0);
ElitePlatingBlock.setBlockHardness(5.0);
ElitePlatingBlock.setBlockResistance(5.0);
ElitePlatingBlock.setToolClass("pickaxe");
ElitePlatingBlock.setToolLevel(1);
ElitePlatingBlock.setBlockSoundType(<soundtype:metal>);
ElitePlatingBlock.register();

var ExtremePlatingBlock = VanillaFactory.createBlock("plating_extreme", <blockmaterial:iron>);
ExtremePlatingBlock.setLightValue(0);
ExtremePlatingBlock.setBlockHardness(5.0);
ExtremePlatingBlock.setBlockResistance(5.0);
ExtremePlatingBlock.setToolClass("pickaxe");
ExtremePlatingBlock.setToolLevel(1);
ExtremePlatingBlock.setBlockSoundType(<soundtype:metal>);
ExtremePlatingBlock.register();

var DUPlatingBlock = VanillaFactory.createBlock("plating_du", <blockmaterial:iron>);
DUPlatingBlock.setLightValue(0);
DUPlatingBlock.setBlockHardness(5.0);
DUPlatingBlock.setBlockResistance(5.0);
DUPlatingBlock.setToolClass("pickaxe");
DUPlatingBlock.setToolLevel(1);
DUPlatingBlock.setBlockSoundType(<soundtype:metal>);
DUPlatingBlock.register();

var StarmetalBlock = VanillaFactory.createBlock("starmetal_block", <blockmaterial:iron>);
StarmetalBlock.setLightValue(0);
StarmetalBlock.setBlockHardness(5.0);
StarmetalBlock.setBlockResistance(5.0);
StarmetalBlock.setToolClass("pickaxe");
StarmetalBlock.setToolLevel(1);
StarmetalBlock.setBlockSoundType(<soundtype:metal>);
StarmetalBlock.register();

var XPBlock = VanillaFactory.createBlock("block_xp", <blockmaterial:iron>);
XPBlock.setLightValue(0);
XPBlock.setBlockHardness(5.0);
XPBlock.setBlockResistance(5.0);
XPBlock.setToolClass("pickaxe");
XPBlock.setToolLevel(1);
XPBlock.setBlockSoundType(<soundtype:metal>);
XPBlock.register();

var SootBlook = VanillaFactory.createBlock("sooty_block", <blockmaterial:iron>);
SootBlook.setLightValue(0);
SootBlook.setBlockHardness(5.0);
SootBlook.setBlockResistance(5.0);
SootBlook.setToolClass("pickaxe");
SootBlook.setToolLevel(1);
SootBlook.setBlockSoundType(<soundtype:metal>);
SootBlook.register();

var advanced_redstone_block = VanillaFactory.createBlock("advanced_redstone_block", <blockmaterial:iron>);
advanced_redstone_block.setLightValue(0);
advanced_redstone_block.setBlockHardness(5.0);
advanced_redstone_block.setBlockResistance(5.0);
advanced_redstone_block.setToolClass("pickaxe");
advanced_redstone_block.setToolLevel(2);
advanced_redstone_block.setBlockSoundType(<soundtype:metal>);
advanced_redstone_block.register();

var sheetmetalIronwoodBlock = VanillaFactory.createBlock("sheetmetal_ironwood", <blockmaterial:iron>);
sheetmetalIronwoodBlock.setLightOpacity(3);
sheetmetalIronwoodBlock.setLightValue(0);
sheetmetalIronwoodBlock.setBlockHardness(5.0);
sheetmetalIronwoodBlock.setBlockResistance(5.0);
sheetmetalIronwoodBlock.setToolClass("pickaxe");
sheetmetalIronwoodBlock.setToolLevel(1);
sheetmetalIronwoodBlock.setBlockSoundType(<soundtype:metal>);
sheetmetalIronwoodBlock.register();

var scaffoldingIronwoodBlock = VanillaFactory.createBlock("ironwood_scaffolding", <blockmaterial:iron>);
scaffoldingIronwoodBlock.setLightValue(0);
scaffoldingIronwoodBlock.setBlockHardness(5.0);
scaffoldingIronwoodBlock.setBlockResistance(5.0);
scaffoldingIronwoodBlock.setToolClass("pickaxe");
scaffoldingIronwoodBlock.setToolLevel(1);
scaffoldingIronwoodBlock.setBlockSoundType(<soundtype:metal>);
scaffoldingIronwoodBlock.setFullBlock(false);
scaffoldingIronwoodBlock.setTranslucent(true);
scaffoldingIronwoodBlock.setBlockLayer("CUTOUT");
scaffoldingIronwoodBlock.register();


var elementalSoilBlock = VanillaFactory.createBlock("elemental_soil", <blockmaterial:ground>);
elementalSoilBlock.setLightOpacity(3);
elementalSoilBlock.setLightValue(0);
elementalSoilBlock.setBlockHardness(2.0);
elementalSoilBlock.setBlockResistance(2.0);
elementalSoilBlock.setToolClass("shovel");
elementalSoilBlock.setToolLevel(1);
elementalSoilBlock.setBlockSoundType(<soundtype:ground>);
elementalSoilBlock.register();

/*
var ironGrowthCatlayst = VanillaFactory.createBlock("iron_growth_catlayst", <blockmaterial:iron>);
ironGrowthCatlayst.setLightOpacity(3);
ironGrowthCatlayst.setLightValue(3);
ironGrowthCatlayst.setBlockHardness(5.0);
ironGrowthCatlayst.setBlockResistance(5.0);
ironGrowthCatlayst.setToolClass("pickaxe");
ironGrowthCatlayst.setToolLevel(1);
ironGrowthCatlayst.setBlockSoundType(<soundtype:metal>);
ironGrowthCatlayst.register();
*/


var block_thermal_alloy = VanillaFactory.createBlock("block_thermal_alloy", <blockmaterial:iron>);
block_thermal_alloy.setLightValue(0);
block_thermal_alloy.setBlockHardness(5.0);
block_thermal_alloy.setBlockResistance(5.0);
block_thermal_alloy.setToolClass("pickaxe");
block_thermal_alloy.setToolLevel(2);
block_thermal_alloy.setBlockSoundType(<soundtype:metal>);
block_thermal_alloy.register();

var sheetmetal_thermal_alloy = VanillaFactory.createBlock("sheetmetal_thermal_alloy", <blockmaterial:iron>);
sheetmetal_thermal_alloy.setLightOpacity(3);
sheetmetal_thermal_alloy.setLightValue(0);
sheetmetal_thermal_alloy.setBlockHardness(5.0);
sheetmetal_thermal_alloy.setBlockResistance(5.0);
sheetmetal_thermal_alloy.setToolClass("pickaxe");
sheetmetal_thermal_alloy.setToolLevel(1);
sheetmetal_thermal_alloy.setBlockSoundType(<soundtype:metal>);
sheetmetal_thermal_alloy.register();

var scaffolding_thermal_alloy = VanillaFactory.createBlock("scaffolding_thermal_alloy", <blockmaterial:iron>);
scaffolding_thermal_alloy.setLightValue(0);
scaffolding_thermal_alloy.setBlockHardness(5.0);
scaffolding_thermal_alloy.setBlockResistance(5.0);
scaffolding_thermal_alloy.setToolClass("pickaxe");
scaffolding_thermal_alloy.setToolLevel(1);
scaffolding_thermal_alloy.setBlockSoundType(<soundtype:metal>);
scaffolding_thermal_alloy.setFullBlock(false);
scaffolding_thermal_alloy.setTranslucent(true);
scaffolding_thermal_alloy.setBlockLayer("CUTOUT");
scaffolding_thermal_alloy.register();


var sheetmetal_cast = VanillaFactory.createBlock("sheetmetal_cast", <blockmaterial:iron>);
sheetmetal_cast.setLightValue(0);
sheetmetal_cast.setBlockHardness(5.0);
sheetmetal_cast.setBlockResistance(5.0);
sheetmetal_cast.setToolClass("pickaxe");
sheetmetal_cast.setToolLevel(1);
sheetmetal_cast.setBlockSoundType(<soundtype:metal>);
sheetmetal_cast.setFullBlock(false);
sheetmetal_cast.setTranslucent(true);
sheetmetal_cast.setBlockLayer("CUTOUT");
sheetmetal_cast.register();

var block_mek_alloy = VanillaFactory.createBlock("block_mek_alloy", <blockmaterial:iron>);
block_mek_alloy.setLightValue(0);
block_mek_alloy.setBlockHardness(5.0);
block_mek_alloy.setBlockResistance(5.0);
block_mek_alloy.setToolClass("pickaxe");
block_mek_alloy.setToolLevel(2);
block_mek_alloy.setBlockSoundType(<soundtype:metal>);
block_mek_alloy.register();

var sheetmetal_mek_alloy = VanillaFactory.createBlock("sheetmetal_mek_alloy", <blockmaterial:iron>);
sheetmetal_mek_alloy.setLightOpacity(3);
sheetmetal_mek_alloy.setLightValue(0);
sheetmetal_mek_alloy.setBlockHardness(5.0);
sheetmetal_mek_alloy.setBlockResistance(5.0);
sheetmetal_mek_alloy.setToolClass("pickaxe");
sheetmetal_mek_alloy.setToolLevel(1);
sheetmetal_mek_alloy.setBlockSoundType(<soundtype:metal>);
sheetmetal_mek_alloy.register();
##########################################################################################
print("==================== end of blocks.zs ====================");