#loader contenttweaker
#priority 98
import mods.contenttweaker.VanillaFactory;
import mods.contenttweaker.Block;

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