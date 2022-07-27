#loader contenttweaker
import mods.contenttweaker.VanillaFactory;
import mods.contenttweaker.Fluid;
import mods.contenttweaker.BlockMaterial;
import mods.contenttweaker.Color;

#priority 103

print("==================== loading fluids.zs ====================");
##########################################################################################

var moltenEmbers = VanillaFactory.createFluid("moltenembers", Color.fromHex("ed5126"));
moltenEmbers.temperature = 6000;
moltenEmbers.gaseous = true;
moltenEmbers.luminosity = 15;
moltenEmbers.viscosity = 2000;
moltenEmbers.stillLocation = "contenttweaker:fluids/molten_embers";
moltenEmbers.flowingLocation = "contenttweaker:fluids/molten_embers";
//moltenEmbers.material = <blockmaterial:lava>; Need to drop things into it lol
moltenEmbers.register();

var moltenBedrock = VanillaFactory.createFluid("moltenbedrock", Color.fromHex("200a2e"));
moltenBedrock.temperature = 1;
moltenBedrock.gaseous = false;
moltenBedrock.luminosity = 0;
moltenBedrock.viscosity = 1;
moltenBedrock.register();

var moltenTokenIron = VanillaFactory.createFluid("moltentokeniron", Color.fromHex("636363"));
moltenTokenIron.temperature = 1000;
moltenTokenIron.gaseous = false;
moltenTokenIron.luminosity = 10;
moltenTokenIron.viscosity = 1000;
moltenTokenIron.register();

var moltenTokenBronze = VanillaFactory.createFluid("moltentokenbronze", Color.fromHex("615245"));
moltenTokenBronze.temperature = 1000;
moltenTokenBronze.gaseous = false;
moltenTokenBronze.luminosity = 10;
moltenTokenBronze.viscosity = 1000;
moltenTokenBronze.register();

var moltenTokenSteel = VanillaFactory.createFluid("moltentokensteel", Color.fromHex("4a4a4a"));
moltenTokenSteel.temperature = 1000;
moltenTokenSteel.gaseous = false;
moltenTokenSteel.luminosity = 10;
moltenTokenSteel.viscosity = 1000;
moltenTokenSteel.register();

var moltenTokenRefinedIron = VanillaFactory.createFluid("moltentokenrefinediron", Color.fromHex("858585"));
moltenTokenRefinedIron.temperature = 1000;
moltenTokenRefinedIron.gaseous = false;
moltenTokenRefinedIron.luminosity = 10;
moltenTokenRefinedIron.viscosity = 1000;
moltenTokenRefinedIron.register();

var moltenTokenOsmium = VanillaFactory.createFluid("moltentokenosmium", Color.fromHex("666f73"));
moltenTokenOsmium.temperature = 1000;
moltenTokenOsmium.gaseous = false;
moltenTokenOsmium.luminosity = 10;
moltenTokenOsmium.viscosity = 1000;
moltenTokenOsmium.register();

var moltenTokenIridium = VanillaFactory.createFluid("moltentokeniridium", Color.fromHex("bae3e0"));
moltenTokenIridium.temperature = 1000;
moltenTokenIridium.gaseous = false;
moltenTokenIridium.luminosity = 10;
moltenTokenIridium.viscosity = 1000;
moltenTokenIridium.register();

var moltenTokenUltimate = VanillaFactory.createFluid("moltentokenultimate", Color.fromHex("d1387d"));
moltenTokenUltimate.temperature = 1000;
moltenTokenUltimate.gaseous = false;
moltenTokenUltimate.luminosity = 10;
moltenTokenUltimate.viscosity = 1000;
moltenTokenUltimate.register();

var moltenTokenInfinity = VanillaFactory.createFluid("moltentokeninfinity", Color.fromHex("8f2c96"));
moltenTokenInfinity.temperature = 1000;
moltenTokenInfinity.gaseous = false;
moltenTokenInfinity.luminosity = 10;
moltenTokenInfinity.viscosity = 1000;
moltenTokenInfinity.register();

var blendedDiesel = VanillaFactory.createFluid("blended_diesel", Color.fromHex("6b6e30"));
blendedDiesel.temperature = 1500;
blendedDiesel.gaseous = false;
blendedDiesel.luminosity = 0;
blendedDiesel.viscosity = 1000;
blendedDiesel.register();

var BoostedDiesel = VanillaFactory.createFluid("boosted_diesel", Color.fromHex("028799"));
BoostedDiesel.temperature = 500;
BoostedDiesel.gaseous = false;
BoostedDiesel.luminosity = 0;
BoostedDiesel.viscosity = 1000;
BoostedDiesel.register();


var mirionBase = VanillaFactory.createFluid("base_mirion", Color.fromHex("4903fc"));
mirionBase.temperature = 700;
mirionBase.gaseous = false;
mirionBase.luminosity = 0;
mirionBase.viscosity = 1000;
mirionBase.register();

var mirionPrepared = VanillaFactory.createFluid("prepared_mirion", Color.fromHex("92eb34"));
mirionPrepared.temperature = 500;
mirionPrepared.gaseous = false;
mirionPrepared.luminosity = 0;
mirionPrepared.viscosity = 1000;
mirionPrepared.register();



var aetheriumCondensed = VanillaFactory.createFluid("condensed_aetherium", Color.fromHex("000e7a"));
aetheriumCondensed.temperature = 500;
aetheriumCondensed.gaseous = false;
aetheriumCondensed.luminosity = 5;
aetheriumCondensed.viscosity = 1000;
aetheriumCondensed.stillLocation = "contenttweaker:fluids/condensed_aetherium";
aetheriumCondensed.flowingLocation = "contenttweaker:fluids/condensed_aetherium";
aetheriumCondensed.register();


var crystalSlurry = VanillaFactory.createFluid("crystal_slurry", Color.fromHex("553478"));
crystalSlurry.temperature = 500;
crystalSlurry.gaseous = false;
crystalSlurry.luminosity = 0;
crystalSlurry.viscosity = 1000;
crystalSlurry.register();


var limestoneSlurry = VanillaFactory.createFluid("limestone_slurry", Color.fromHex("ccb985"));
limestoneSlurry.temperature = 500;
limestoneSlurry.gaseous = false;
limestoneSlurry.luminosity = 0;
limestoneSlurry.viscosity = 1500;
limestoneSlurry.register();


var drillingFluid = VanillaFactory.createFluid("drilling_fluid", Color.fromHex("4a4a4a"));
drillingFluid.temperature = 500;
drillingFluid.gaseous = false;
drillingFluid.luminosity = 0;
drillingFluid.viscosity = 3000;
drillingFluid.register();


var moltenModularium = VanillaFactory.createFluid("molten_modularium", Color.fromHex("e6b45e"));
moltenModularium.temperature = 3000;
moltenModularium.luminosity = 15;
moltenModularium.viscosity = 1000;
moltenModularium.material = <blockmaterial:lava>;
moltenModularium.register();



var neutronicMatrix = VanillaFactory.createFluid("neutronic_matrix", Color.fromHex("2a2b4a"));
neutronicMatrix.temperature = 1000;
neutronicMatrix.gaseous = false;
neutronicMatrix.luminosity = 0;
neutronicMatrix.viscosity = 1000;
//neutronicMatrix.stillLocation = "contenttweaker:fluids/condensed_aetherium";
//neutronicMatrix.flowingLocation = "contenttweaker:fluids/condensed_aetherium";
neutronicMatrix.material = <blockmaterial:lava>;
neutronicMatrix.register();


var incoherentMatrix = VanillaFactory.createFluid("incoherent_matrix", Color.fromHex("590b5c"));
incoherentMatrix.temperature = 0;
incoherentMatrix.gaseous = true;
incoherentMatrix.luminosity = 15;
incoherentMatrix.viscosity = 4000;
//incoherentMatrix.stillLocation = "contenttweaker:fluids/condensed_aetherium";
//incoherentMatrix.flowingLocation = "contenttweaker:fluids/condensed_aetherium";
incoherentMatrix.material = <blockmaterial:lava>;
incoherentMatrix.register();

var neutronium = VanillaFactory.createFluid("neutronium", Color.fromHex("18091c"));
neutronium.temperature = 10000;
neutronium.gaseous = false;
neutronium.luminosity = 15;
neutronium.viscosity = 100;
//neutronium.stillLocation = "contenttweaker:fluids/condensed_aetherium";
//neutronium.flowingLocation = "contenttweaker:fluids/condensed_aetherium";
neutronium.material = <blockmaterial:lava>;
neutronium.register();



var uu_matter = VanillaFactory.createFluid("uu_matter", Color.fromHex("571673"));
uu_matter.temperature = 3000;
uu_matter.gaseous = false;
uu_matter.viscosity = 1000;
uu_matter.material = <blockmaterial:lava>;
uu_matter.register();
##########################################################################################
print("==================== end of fluids.zs ====================");