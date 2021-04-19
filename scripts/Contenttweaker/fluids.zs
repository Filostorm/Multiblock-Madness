#loader contenttweaker
#priority 97
import mods.contenttweaker.VanillaFactory;
import mods.contenttweaker.Fluid;
import mods.contenttweaker.Color;


var moltenEmbers = VanillaFactory.createFluid("moltenEmbers", Color.fromHex("ed5126"));
moltenEmbers.temperature = 6000;
moltenEmbers.gaseous = true;
moltenEmbers.luminosity = 15;
moltenEmbers.viscosity = 2000;
moltenEmbers.register();

var moltenBedrock = VanillaFactory.createFluid("moltenBedrock", Color.fromHex("200a2e"));
moltenBedrock.temperature = 1;
moltenBedrock.gaseous = false;
moltenBedrock.luminosity = 0;
moltenBedrock.viscosity = 1;
moltenBedrock.register();

var moltenTokenIron = VanillaFactory.createFluid("moltenTokenIron", Color.fromHex("636363"));
moltenTokenIron.temperature = 1000;
moltenTokenIron.gaseous = false;
moltenTokenIron.luminosity = 10;
moltenTokenIron.viscosity = 1000;
moltenTokenIron.register();

var moltenTokenBronze = VanillaFactory.createFluid("moltenTokenBronze", Color.fromHex("615245"));
moltenTokenBronze.temperature = 1000;
moltenTokenBronze.gaseous = false;
moltenTokenBronze.luminosity = 10;
moltenTokenBronze.viscosity = 1000;
moltenTokenBronze.register();

var moltenTokenSteel = VanillaFactory.createFluid("moltenTokenSteel", Color.fromHex("4a4a4a"));
moltenTokenSteel.temperature = 1000;
moltenTokenSteel.gaseous = false;
moltenTokenSteel.luminosity = 10;
moltenTokenSteel.viscosity = 1000;
moltenTokenSteel.register();

var moltenTokenRefinedIron = VanillaFactory.createFluid("moltenTokenRefinedIron", Color.fromHex("858585"));
moltenTokenRefinedIron.temperature = 1000;
moltenTokenRefinedIron.gaseous = false;
moltenTokenRefinedIron.luminosity = 10;
moltenTokenRefinedIron.viscosity = 1000;
moltenTokenRefinedIron.register();

var moltenTokenOsmium = VanillaFactory.createFluid("moltenTokenOsmium", Color.fromHex("666f73"));
moltenTokenOsmium.temperature = 1000;
moltenTokenOsmium.gaseous = false;
moltenTokenOsmium.luminosity = 10;
moltenTokenOsmium.viscosity = 1000;
moltenTokenOsmium.register();