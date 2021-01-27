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

//Wand with no starlight
recipes.addShaped(<astralsorcery:itemwand>, [[null, <astralsorcery:itemcraftingcomponent>, <arcanearchives:shaped_quartz>],[null, <ore:stoneMarble>, <astralsorcery:itemcraftingcomponent>], [<ore:stoneMarble>, null, null]]);


//mods.astralsorcery.Lightwell.addLiquefaction(IItemStack input, ILiquidStack output, float productionMultiplier, float shatterMultiplier, int colorhex);
mods.astralsorcery.Lightwell.addLiquefaction(<embers:aspectus_silver>, <liquid:silver>, 1, 1.5, 1);
mods.astralsorcery.Lightwell.addLiquefaction(<embers:aspectus_copper>, <liquid:copper>, 1, 1.5, 2);
mods.astralsorcery.Lightwell.addLiquefaction(<embers:aspectus_iron>, <liquid:iron>, 1, 1.5, 3);
mods.astralsorcery.Lightwell.addLiquefaction(<embers:aspectus_lead>, <liquid:lead>, 1, 1.5, 4);
mods.astralsorcery.Lightwell.addLiquefaction(<embers:aspectus_dawnstone>, <liquid:dawnstone>, 1, 1.5, 0);

mods.astralsorcery.LightTransmutation.removeTransmutation(<astralsorcery:blockcustomore:1>, true);
mods.astralsorcery.LightTransmutation.addTransmutation(<contenttweaker:sub_block_holder_0:6>, <astralsorcery:blockcustomore:1>, 10);

mods.astralsorcery.Altar.addAttunementAltarRecipe("multiblockmadness:shaped/internal/altar/runealtar", <botania:runealtar>, 500, 300, [

			<arcanearchives:quartz_sliver>, <arcanearchives:quartz_sliver>, <arcanearchives:quartz_sliver>,

			<botania:livingrock>, <botania:livingrock>, <botania:livingrock>,

			<botania:livingrock>, <astralsorcery:itemshiftingstar>, <botania:livingrock>,

			<botania:manaresource:23>, <botania:manaresource:23>, <bloodmagic:slate:1>, <bloodmagic:slate:1>]);



##########################################################################################
print("==================== end of Astral Sorcery ====================");
