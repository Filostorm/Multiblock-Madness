#loader contenttweaker
#priority 97
import mods.contenttweaker.VanillaFactory;
import mods.contenttweaker.Fluid;
import mods.contenttweaker.Color;


var moltenEmbers = VanillaFactory.createFluid("moltenEmbers", Color.fromHex("ed5126"));
moltenEmbers.temperature = 6000;
moltenEmbers.gaseous = true;
moltenEmbers.luminosity = 10;
moltenEmbers.viscosity = 2000;
moltenEmbers.register();