import crafttweaker.item.IItemStack;
print("==================== loading Astral Sorcery ====================");
##########################################################################################
/*
val itemstoRemove =
[
]
 as IItemStack[];

for item in itemstoRemove {
	recipes.remove(item);
}
*/

//<astralsorcery:blockinfusedwood>.addTooltip(format.aqua("Drop any log into liquid Starlight to create"));




//mods.astralsorcery.Lightwell.addLiquefaction(IItemStack input, ILiquidStack output, float productionMultiplier, float shatterMultiplier, int colorhex);
mods.astralsorcery.Lightwell.addLiquefaction(<embers:aspectus_silver>, <liquid:silver>, 1, 1.5, 1);
mods.astralsorcery.Lightwell.addLiquefaction(<embers:aspectus_copper>, <liquid:copper>, 1, 1.5, 2);
mods.astralsorcery.Lightwell.addLiquefaction(<embers:aspectus_iron>, <liquid:iron>, 1, 1.5, 3);
mods.astralsorcery.Lightwell.addLiquefaction(<embers:aspectus_lead>, <liquid:lead>, 1, 1.5, 4);
mods.astralsorcery.Lightwell.addLiquefaction(<embers:aspectus_dawnstone>, <liquid:dawnstone>, 1, 1.5, 0);

mods.astralsorcery.LightTransmutation.removeTransmutation(<astralsorcery:blockcustomore:1>, true);
mods.astralsorcery.LightTransmutation.addTransmutation(<contenttweaker:sub_block_holder_0:6>, <astralsorcery:blockcustomore:1>, 10);
##########################################################################################
print("==================== end of Astral Sorcery ====================");
