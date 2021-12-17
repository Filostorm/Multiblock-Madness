//import mods.embers.Melter;
import crafttweaker.item.IItemStack;
import crafttweaker.liquid.ILiquidStack;
import crafttweaker.oredict.IOreDictEntry;
import mods.immersiveengineering.ArcFurnace;
import mods.immersiveengineering.Crusher;
import mods.nuclearcraft.Manufactory;
import mods.nuclearcraft.Melter;
import mods.rockhounding_chemistry.ChemicalExtractor;
import mods.rockhounding_chemistry.LeachingVat;
import mods.rockhounding_chemistry.MineralSizer;
import mods.tcomplement.highoven.HighOven;
import mods.tcomplement.Overrides;
import mods.tconstruct.Melting;
import mods.techreborn.blastFurnace;
import mods.thermalexpansion.Crucible;
import mods.thermalexpansion.Pulverizer;
import mods.mekanism.enrichment;
import mods.embers.Stamper;
import mods.techreborn.industrialGrinder;


print("==================== loading Metal Processing.zs ====================");
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


##=======================================================
##ORE PROCESSING REMOVING
##=======================================================



//----------Aluminum

furnace.remove(<ore:ingotAluminium>);
furnace.remove(<ore:ingotAluminum>);

recipes.removeShapeless(<techreborn:smalldust:1> * 4, [<ore:dustAluminium>]);
for item in <ore:ingotAluminum>.items{
blastFurnace.removeRecipe(item);
//mods.immersiveengineering.ArcFurnace.removeRecipe(item);
}
//Melting.removeRecipe(ILiquidStack output, IItemStack input);


val aluminumMelting =
[
	<thermalfoundation:material:68>,
	<techreborn:smalldust:1>,
	<thermalfoundation:ore:4>,
]
 as IItemStack[];

for item in aluminumMelting {
Melting.removeRecipe(<liquid:aluminum>, item);
Overrides.removeRecipe(<liquid:aluminum>, item);
//HighOven.removeMeltingOverride(<liquid:aluminum>, item);
}

HighOven.removeMeltingOverride(<liquid:aluminum>);
HighOven.removeMeltingOverride(<liquid:aluminium>);

Melting.removeRecipe(<liquid:aluminum>, <jaopca:item_dusttinyaluminium>);
HighOven.removeMeltingOverride(<liquid:aluminum>, <jaopca:item_dusttinyaluminium>);
mods.embers.Melter.remove(<thermalfoundation:ore:4>);



//----------Osmium
furnace.remove(<ore:ingotOsmium>);
for item in <ore:ingotOsmium>.items{
ArcFurnace.removeRecipe(item);
furnace.remove(item);
}
Melting.removeRecipe(<liquid:osmium>, <jaopca:item_dustsmallosmium>);
Melting.removeRecipe(<liquid:osmium>, <jaopca:item_dusttinyosmium>);
HighOven.removeMeltingOverride(<liquid:osmium>, <jaopca:item_dusttinyosmium>);
Melting.removeRecipe(<liquid:osmium>, <mekanism:dust:2>);
Melting.removeRecipe(<liquid:osmium>, <rockhounding_chemistry:chemical_dusts:38>);
Melting.removeRecipe(<liquid:osmium>, <mekanism:oreblock>);
Overrides.removeRecipe(<liquid:osmium>, <mekanism:oreblock>);
HighOven.removeMeltingOverride(<liquid:osmium>, <mekanism:oreblock>);
mods.embers.Melter.remove(<mekanism:oreblock>);
Melter.removeRecipeWithInput(<mekanism:dust:2>);
Melter.removeRecipeWithInput(<mekanism:oreblock>);
Crucible.removeRecipe(<mekanism:dust:2>);
Crucible.removeRecipe(<mekanism:oreblock>);


//----------Platinum
for item in <ore:ingotPlatinum>.items{
ArcFurnace.removeRecipe(item);
furnace.remove(item);
}
Melting.removeRecipe(<liquid:platinum>, <jaopca:item_dusttinyplatinum>);
Melting.removeRecipe(<liquid:platinum>, <thermalfoundation:material:70>);
Melting.removeRecipe(<liquid:platinum>, <techreborn:smalldust:38>);
Melting.removeRecipe(<liquid:platinum>, <thermalfoundation:ore:6>);
Overrides.removeRecipe(<liquid:platinum>, <thermalfoundation:material:70>);
Overrides.removeRecipe(<liquid:platinum>, <techreborn:smalldust:38>);
Overrides.removeRecipe(<liquid:platinum>, <thermalfoundation:ore:6>);
/*
HighOven.removeMeltingOverride(<liquid:platinum>, <thermalfoundation:material:70>);
HighOven.removeMeltingOverride(<liquid:platinum>, <techreborn:smalldust:38>);
HighOven.removeMeltingOverride(<liquid:platinum>, <thermalfoundation:ore:6>);
HighOven.removeMeltingOverride(<liquid:platinum>, <jaopca:item_dusttinyplatinum>);
*/
HighOven.removeMeltingOverride(<liquid:platinum>);

mods.embers.Melter.remove(<thermalfoundation:ore:6>);
Melter.removeRecipeWithInput(<thermalfoundation:material:70>);
Melter.removeRecipeWithInput(<thermalfoundation:ore:6>);
Crucible.removeRecipe(<thermalfoundation:material:70>);
Crucible.removeRecipe(<thermalfoundation:ore:6>);


//----------Tungsten
for item in <ore:ingotTungsten>.items{
blastFurnace.removeRecipe(item);
ArcFurnace.removeRecipe(item);
furnace.remove(item);
}

ArcFurnace.removeRecipe(<qmd:ingot>);

//Melting.removeRecipe(<liquid:tungsten>, <jaopca:item_dusttinytungsten>);
Melting.removeRecipe(<liquid:tungsten>, <techreborn:dust:55>);
Melting.removeRecipe(<liquid:tungsten>, <techreborn:smalldust:55>);
Melting.removeRecipe(<liquid:tungsten>, <techreborn:ore:8>);
//Overrides.removeRecipe(<liquid:tungsten>, <jaopca:item_dusttinytungsten>);
Overrides.removeRecipe(<liquid:tungsten>, <techreborn:dust:55>);
Overrides.removeRecipe(<liquid:tungsten>, <techreborn:smalldust:55>);
Overrides.removeRecipe(<liquid:tungsten>, <techreborn:ore:8>);
//HighOven.removeMeltingOverride(<liquid:tungsten>, <jaopca:item_dusttinytungsten>);
HighOven.removeMeltingOverride(<liquid:tungsten>, <techreborn:dust:55>);
HighOven.removeMeltingOverride(<liquid:tungsten>, <techreborn:smalldust:55>);
HighOven.removeMeltingOverride(<liquid:tungsten>, <techreborn:ore:8>);
mods.embers.Melter.remove(<techreborn:ore:8>);
Melter.removeRecipeWithInput(<techreborn:ore:8>);
Melter.removeRecipeWithInput(<techreborn:dust:55>);
Crucible.removeRecipe(<techreborn:ore:8>);
Crucible.removeRecipe(<techreborn:dust:55>);

//----------Titanium

for item in <ore:ingotTitanium>.items{
blastFurnace.removeRecipe(item);
ArcFurnace.removeRecipe(item);
furnace.remove(item);
}

for item in <ore:dustTitanium>.items{
Melting.removeRecipe(<liquid:titanium>, (item));
Overrides.removeRecipe(<liquid:titanium>, (item));
HighOven.removeMeltingOverride(<liquid:titanium>, (item));
Melting.removeRecipe(<liquid:molten_titanium>, (item));
Overrides.removeRecipe(<liquid:molten_titanium>, (item));
HighOven.removeMeltingOverride(<liquid:molten_titanium>, (item));
}

Melting.removeRecipe(<liquid:titanium>, <techreborn:smalldust:54>);
Melting.removeRecipe(<liquid:titanium>, <libvulpes:ore0:8>);
Overrides.removeRecipe(<liquid:titanium>, <techreborn:smalldust:54>);
Overrides.removeRecipe(<liquid:titanium>, <libvulpes:ore0:8>);
HighOven.removeMeltingOverride(<liquid:titanium>, <techreborn:smalldust:54>);
HighOven.removeMeltingOverride(<liquid:titanium>, <libvulpes:ore0:8>);

//Melting.removeRecipe(<liquid:molten_titanium>, <jaopca:item_dusttinytitanium>);
Melting.removeRecipe(<liquid:molten_titanium>, <techreborn:smalldust:54>);
Melting.removeRecipe(<liquid:molten_titanium>, <libvulpes:ore0:8>);
Overrides.removeRecipe(<liquid:molten_titanium>, <techreborn:smalldust:54>);
Overrides.removeRecipe(<liquid:molten_titanium>, <libvulpes:ore0:8>);
//Overrides.removeRecipe(<liquid:molten_titanium>, <jaopca:item_dusttinytitanium>);
//HighOven.removeMeltingOverride(<liquid:molten_titanium>, <jaopca:item_dusttinytitanium>);
HighOven.removeMeltingOverride(<liquid:molten_titanium>, <techreborn:smalldust:54>);
HighOven.removeMeltingOverride(<liquid:molten_titanium>, <libvulpes:ore0:8>);

mods.embers.Melter.remove(<libvulpes:ore0:8>);
Melter.removeRecipeWithInput(<libvulpes:ore0:8>);
Melter.removeRecipeWithInput(<techreborn:dust:54>);
Crucible.removeRecipe(<libvulpes:ore0:8>);
Crucible.removeRecipe(<techreborn:dust:54>);

//----------Iridium
for item in <ore:ingotIridium>.items{
blastFurnace.removeRecipe(item);
ArcFurnace.removeRecipe(item);
furnace.remove(item);
}

Melting.removeRecipe(<liquid:iridium>, <jaopca:item_dusttinyiridium>);
Melting.removeRecipe(<liquid:iridium>, <thermalfoundation:material:71>);
Melting.removeRecipe(<liquid:iridium>, <techreborn:smalldust:66>);
Melting.removeRecipe(<liquid:iridium>, <thermalfoundation:ore:7>);
Overrides.removeRecipe(<liquid:iridium>, <thermalfoundation:material:71>);
Overrides.removeRecipe(<liquid:iridium>, <techreborn:smalldust:66>);
Overrides.removeRecipe(<liquid:iridium>, <thermalfoundation:ore:7>);
/*
HighOven.removeMeltingOverride(<liquid:iridium>, <thermalfoundation:material:71>);
HighOven.removeMeltingOverride(<liquid:iridium>, <techreborn:smalldust:66>);
HighOven.removeMeltingOverride(<liquid:iridium>, <thermalfoundation:ore:7>);
HighOven.removeMeltingOverride(<liquid:iridium>, <jaopca:item_dusttinyiridium>);
*/
HighOven.removeMeltingOverride(<liquid:iridium>);

mods.embers.Melter.remove(<thermalfoundation:ore:7>);
Melter.removeRecipeWithInput(<thermalfoundation:ore:7>);
Melter.removeRecipeWithInput(<thermalfoundation:material:71>);
Crucible.removeRecipe(<thermalfoundation:ore:7>);
Crucible.removeRecipe(<thermalfoundation:material:71>);

//----------Mana Infused
for item in <ore:ingotMithril>.items{
blastFurnace.removeRecipe(item);
ArcFurnace.removeRecipe(item);
furnace.remove(item);
}



//----------Uranium
industrialGrinder.removeInputRecipe(<nuclearcraft:ore:4>);
//mods.techreborn.industrialGrinder.addRecipe(IItemStack output1, IItemStack output2, IItemStack output3, IItemStack output4, IIngredient input1, IIngredient input2, ILiquidStack fluid, int ticktime, int euTick);


##=======================================================
##              ORE PROCESSING
##=======================================================

############### Hacatu #####################

val clusterFluidMap as ILiquidStack[IOreDictEntry] = {
	<ore:clusterAdamantine>: <fluid:adamantine>,
	//<ore:clusterAluminium>: {},
	<ore:clusterArdite>: <fluid:ardite>,
	<ore:clusterAstralStarmetal>: <fluid:starmetal>,
	<ore:clusterBoron>: <fluid:boron>,
	<ore:clusterCobalt>: <fluid:cobalt>,
	//<ore:clusterIridium>: {},
	<ore:clusterLithium>: <fluid:lithium>,
	<ore:clusterMagnesium>: <fluid:magnesium>,
	//<ore:clusterMithril>: {},
	<ore:clusterNickel>: <fluid:nickel>,
	<ore:clusterOrichalcum>: <fluid:orichalcum>,
	//<ore:clusterOsmium>: {},
	<ore:clusterPalladium>: <fluid:palladium>,
	//<ore:clusterPlatinum>: {},
	<ore:clusterThorium>: <fluid:thorium>,
	//<ore:clusterTitanium>: {},
	//<ore:clusterTungsten>: {},
	<ore:clusterUranium>: <fluid:uranium>,
	<ore:clusterIron>: <fluid:iron>,
	<ore:clusterGold>: <fluid:gold>,
	<ore:clusterCopper>: <fluid:copper>,
	<ore:clusterTin>: <fluid:tin>,
	<ore:clusterSilver>: <fluid:silver>,
	<ore:clusterLead>: <fluid:lead>,
	//<ore:clusterCinnabar>: {},
	//<ore:clusterQuartz>: <fluid:quartz>
} as ILiquidStack[IOreDictEntry];

for cluster, fluid in clusterFluidMap {
	Melting.addRecipe(fluid * 288, cluster);
	mods.embers.Melter.add(fluid * 432, cluster);
	mods.nuclearcraft.Melter.addRecipe(cluster, fluid * 432);
}

val clusterFluidMaptwo as ILiquidStack[IItemStack] = {
	<jaopca:item_clusteradamantine>: <fluid:adamantine>,
	//<ore:clusterAluminium>: {},
	<jaopca:item_clusterardite>: <fluid:ardite>,
	<jaopca:item_clusterastralstarmetal>: <fluid:starmetal>,
	<jaopca:item_clusterboron>: <fluid:boron>,
	<jaopca:item_clustercobalt>: <fluid:cobalt>,
	//<ore:clusterIridium>: {},
	<jaopca:item_clusterlithium>: <fluid:lithium>,
	<jaopca:item_clustermagnesium>: <fluid:magnesium>,
	//<ore:clusterMithril>: {},
	<jaopca:item_clusternickel>: <fluid:nickel>,
	<jaopca:item_clusterorichalcum>: <fluid:orichalcum>,
	//<ore:clusterOsmium>: {},
	<jaopca:item_clusterpalladium>: <fluid:palladium>,
	//<ore:clusterPlatinum>: {},
	<jaopca:item_clusterthorium>: <fluid:thorium>,
	//<ore:clusterTitanium>: {},
	//<ore:clusterTungsten>: {},
	<jaopca:item_clusteruranium>: <fluid:uranium>,
	<thaumcraft:cluster>: <fluid:iron>,
	<thaumcraft:cluster:1>: <fluid:gold>,
	<thaumcraft:cluster:2>: <fluid:copper>,
	<thaumcraft:cluster:3>: <fluid:tin>,
	<thaumcraft:cluster:4>: <fluid:silver>,
	<thaumcraft:cluster:5>: <fluid:lead>,
	//<ore:clusterCinnabar>: {},
	//<ore:clusterQuartz>: <fluid:quartz>
} as ILiquidStack[IItemStack];

for cluster, fluid in clusterFluidMaptwo {
	Crucible.addRecipe(fluid * 432, cluster, 4000);
}

val clusterOreMap as IItemStack[IOreDictEntry] = {
	<ore:clusterAdamantine>: <contenttweaker:material_part:15>,
	<ore:clusterAluminium>: <thermalfoundation:material:68>,
	<ore:clusterArdite>: <jaopca:item_dustardite>,
	<ore:clusterAstralStarmetal>: <astralsorcery:itemcraftingcomponent:2>,
	<ore:clusterBoron>: <nuclearcraft:dust:5>,
	<ore:clusterCobalt>: <rockhounding_chemistry:chemical_dusts:25>,
	<ore:clusterIridium>: <thermalfoundation:material:71>,
	<ore:clusterLithium>: <mekanism:otherdust:4>,
	<ore:clusterMagnesium>: <techreborn:dust:30>,
	<ore:clusterMithril>: <thermalfoundation:material:72>,
	<ore:clusterNickel>: <thermalfoundation:material:69>,
	<ore:clusterOrichalcum>: <contenttweaker:material_part:25>,
	<ore:clusterOsmium>: <mekanism:dust:2>,
	<ore:clusterPalladium>: <contenttweaker:material_part:35>,
	<ore:clusterPlatinum>: <thermalfoundation:material:70>,
	<ore:clusterThorium>: <techreborn:dust:65>,
	<ore:clusterTitanium>: <techreborn:dust:54>,
	<ore:clusterTungsten>: <techreborn:dust:55>,
	<ore:clusterUranium>: <immersiveengineering:metal:14>,
	<ore:clusterIron>: <thermalfoundation:material>,
	<ore:clusterGold>: <thermalfoundation:material:1>,
	<ore:clusterCopper>: <thermalfoundation:material:64>,
	<ore:clusterTin>: <thermalfoundation:material:65>,
	<ore:clusterSilver>: <thermalfoundation:material:66>,
	<ore:clusterLead>: <thermalfoundation:material:67>,
	<ore:clusterCinnabar>: <thaumcraft:quicksilver>,
	//<ore:clusterQuartz>: <fluid:quartz>
} as IItemStack[IOreDictEntry];

for cluster, item in clusterOreMap {
	enrichment.addRecipe(cluster, item * 3);
}


############### /Hacatu #####################

val ingotFluidMap as ILiquidStack[IItemStack] = {
	<contenttweaker:material_part:10>: <fluid:adamantine>,
	<tconstruct:ingots:1>: <fluid:ardite>,
	<astralsorcery:itemcraftingcomponent:1>: <fluid:starmetal>,
	<nuclearcraft:ingot:5>: <fluid:boron>,
	<tconstruct:ingots>: <fluid:cobalt>,
	<nuclearcraft:ingot:6>: <fluid:lithium>,
	<nuclearcraft:ingot:7>: <fluid:magnesium>,
	<contenttweaker:material_part:20>: <fluid:orichalcum>,
	<contenttweaker:material_part:30>: <fluid:palladium>,
	<techreborn:ingot:23>: <fluid:thorium>,
	<immersiveengineering:metal:5>: <fluid:uranium>,
} as ILiquidStack[IItemStack];

for ingot, fluid in ingotFluidMap {
	Stamper.add(ingot,fluid*144,<embers:stamp_bar>);
}

// Fixing byproducts of certain clusters


val clusterstofix =
[
<jaopca:item_clusteraluminium>,
<jaopca:item_clusterardite>,
<jaopca:item_clustercobalt>,
<jaopca:item_clustermithril>,
<jaopca:item_clustertitanium>
]
 as IItemStack[];

for item in clusterstofix {
	Pulverizer.removeRecipe(item);
}
Pulverizer.addRecipe(<thermalfoundation:material:68> * 3, <jaopca:item_clusteraluminium>, 3000, <thermalfoundation:material>, 20);
Pulverizer.addRecipe(<jaopca:item_dustardite> * 3, <jaopca:item_clusterardite>, 3000, <thermalfoundation:material:1>, 20);
Pulverizer.addRecipe(<rockhounding_chemistry:chemical_dusts:25> * 3, <jaopca:item_clustercobalt>, 3000, <thermalfoundation:material>, 20);
Pulverizer.addRecipe(<thermalfoundation:material:72> * 3, <jaopca:item_clustermithril>, 3000, <thermalfoundation:material:1>, 20);
Pulverizer.addRecipe(<techreborn:dust:54> * 3, <jaopca:item_clustertitanium>, 3000);

//Iron
MineralSizer.add(<minecraft:iron_ore>, [<jaopca:item_crushedlumpiron>*2], [4]);
LeachingVat.add(<jaopca:item_crushedlumpiron>, [<jaopca:item_leachedshardiron>*2], [4.21F], <liquid:leachate>*50);
ChemicalExtractor.add("Oxide", <jaopca:item_leachedshardiron>, ["dustIron", "dustNickel","dustChromium", "dustCarbon"], [200, 35, 20, 9]);

val ironProcessing =[
	<jaopca:item_crushedlumpiron>,
	<jaopca:item_leachedshardiron>,
] as IItemStack[];

for item in ironProcessing {
furnace.addRecipe(<minecraft:iron_ingot>,item, 0.1);
Melting.addRecipe(<liquid:iron> * 144, item);
Crusher.addRecipe(<thermalfoundation:material>, item, 1024, <techreborn:smalldust:27>*2, 1);
Pulverizer.addRecipe(<thermalfoundation:material>, item, 2000, <techreborn:smalldust:27>*2);
Manufactory.addRecipe(item, <thermalfoundation:material>);
enrichment.addRecipe(item, <thermalfoundation:material>);
//mods.techreborn.industrialGrinder.addRecipe(IItemStack output1, IItemStack output2, IItemStack output3, IItemStack output4, IIngredient input1, IIngredient input2, ILiquidStack fluid, int ticktime, int euTick)
}

//Gold
MineralSizer.add(<minecraft:gold_ore>, [<jaopca:item_crushedlumpgold>*2], [4]);
LeachingVat.add(<jaopca:item_crushedlumpgold>, [<jaopca:item_leachedshardgold>*2], [3.85F], <liquid:leachate>*50);
ChemicalExtractor.add("Native", <jaopca:item_leachedshardgold>, ["dustGold", "dustSilver", "dustCopper", "dustNickel"], [200, 15, 12, 10]);
val goldProcessing =[
	<jaopca:item_crushedlumpgold>,
	<jaopca:item_leachedshardgold>,
] as IItemStack[];

for item in goldProcessing {
furnace.addRecipe(<minecraft:gold_ingot>,item, 0.1);
Melting.addRecipe(<liquid:gold> * 144, item);
Crusher.addRecipe(<thermalfoundation:material:1>, item, 1024, <techreborn:smalldust:24>*2, 1);
Pulverizer.addRecipe(<thermalfoundation:material:1>, item, 2000, <techreborn:smalldust:24>*2);
Manufactory.addRecipe(item, <thermalfoundation:material:1>);
enrichment.addRecipe(item, <thermalfoundation:material:1>);
}

//Copper
MineralSizer.add("oreCopper", [<jaopca:item_crushedlumpcopper>*2], [4]);
LeachingVat.add(<jaopca:item_crushedlumpcopper>, [<jaopca:item_leachedshardcopper>*2], [5.92F], <liquid:leachate>*50);
ChemicalExtractor.add("Oxide", <jaopca:item_leachedshardcopper>, ["dustCopper", "dustIron", "dustZinc"], [200, 25, 12]);
val copperProcessing =[
	<jaopca:item_crushedlumpcopper>,
	<jaopca:item_leachedshardcopper>,
	
] as IItemStack[];

for item in copperProcessing {
furnace.addRecipe(<thermalfoundation:material:128>,item, 0.1);
Melting.addRecipe(<liquid:copper> * 144, item);
Crusher.addRecipe(<thermalfoundation:material:64>, item, 1024, <techreborn:smalldust:14>*2, 1);
Pulverizer.addRecipe(<thermalfoundation:material:64>, item, 2000, <techreborn:smalldust:14>*2);
Manufactory.addRecipe(item, <thermalfoundation:material:64>);
enrichment.addRecipe(item, <thermalfoundation:material:64>);
}

//Tin
MineralSizer.add("oreTin", [<jaopca:item_crushedlumptin>*2], [4]);
LeachingVat.add(<jaopca:item_crushedlumptin>, [<jaopca:item_leachedshardtin>*2], [6.08F], <liquid:leachate>*50);
ChemicalExtractor.add("Oxide", <jaopca:item_leachedshardtin>, ["dustTin", "dustLead", "dustTungsten", "dustArsenic"], [200, 30, 9, 5]);
val tinProcessing =[
	<jaopca:item_crushedlumptin>,
	<jaopca:item_leachedshardtin>,
] as IItemStack[];

for item in tinProcessing {
furnace.addRecipe(<thermalfoundation:material:129>,item, 0.1);
Melting.addRecipe(<liquid:tin> * 144, item);
Crusher.addRecipe(<thermalfoundation:material:65>, item, 1024, <techreborn:smalldust:53>*2, 1);
Pulverizer.addRecipe(<thermalfoundation:material:65>, item, 2000, <techreborn:smalldust:53>*2);
Manufactory.addRecipe(item, <thermalfoundation:material:65>);
enrichment.addRecipe(item, <thermalfoundation:material:65>);
}

//Silver
MineralSizer.add("oreSilver", [<jaopca:item_crushedlumpsilver>*2], [4]);
LeachingVat.add(<jaopca:item_crushedlumpsilver>, [<jaopca:item_leachedshardsilver>*2], [3.20F], <liquid:leachate>*50);
ChemicalExtractor.add("Native", <jaopca:item_leachedshardsilver>, ["dustSilver", "dustLead", "dustSulfur", "dustAntimony"], [200, 25, 10, 5]);
val silverProcessing =[
	<jaopca:item_crushedlumpsilver>,
	<jaopca:item_leachedshardsilver>,
] as IItemStack[];

for item in silverProcessing {
furnace.addRecipe(<thermalfoundation:material:130>,item, 0.1);
Melting.addRecipe(<liquid:silver> * 144, item);
Crusher.addRecipe(<thermalfoundation:material:66>, item, 1024, <techreborn:smalldust:47>*2, 1);
Pulverizer.addRecipe(<thermalfoundation:material:66>, item, 2000, <techreborn:smalldust:47>*2);
Manufactory.addRecipe(item, <thermalfoundation:material:66>);
enrichment.addRecipe(item, <thermalfoundation:material:66>);
}

//Lead
MineralSizer.add("oreLead", [<jaopca:item_crushedlumplead>*2], [4]);
LeachingVat.add(<jaopca:item_crushedlumplead>, [<jaopca:item_leachedshardlead>*2], [4.20F], <liquid:leachate>*50);
ChemicalExtractor.add("Sulfide", <jaopca:item_leachedshardlead>, ["dustLead", "dustSilver", "dustZinc", "dustBismuth"], [200, 20, 15, 5]);
val leadProcessing =[
	<jaopca:item_crushedlumplead>,
	<jaopca:item_leachedshardlead>,
] as IItemStack[];

for item in leadProcessing {
furnace.addRecipe(<thermalfoundation:material:131>,item, 0.1);
Melting.addRecipe(<liquid:lead> * 144, item);
Crusher.addRecipe(<thermalfoundation:material:67>, item, 1024, <techreborn:smalldust:29>*2, 1);
Pulverizer.addRecipe(<thermalfoundation:material:67>, item, 2000, <techreborn:smalldust:29>*2);
Manufactory.addRecipe(item, <thermalfoundation:material:67>);
enrichment.addRecipe(item, <thermalfoundation:material:67>);
}

//Nickel
MineralSizer.add(<thermalfoundation:ore:5>, [<jaopca:item_crushedlumpnickel>*2], [4]);
LeachingVat.add(<jaopca:item_crushedlumpnickel>, [<jaopca:item_leachedshardnickel>*2], [4.69F], <liquid:leachate>*50);
ChemicalExtractor.add("Native", <jaopca:item_leachedshardnickel>, ["dustNickel", "dustPlatinum", "dustCopper", "dustCobalt"], [200, 25, 15, 10]);
val nickelProcessing =[
	<jaopca:item_crushedlumpnickel>,
	<jaopca:item_leachedshardnickel>,
] as IItemStack[];

for item in nickelProcessing {
furnace.addRecipe(<thermalfoundation:material:133>,item, 0.1);
Melting.addRecipe(<liquid:nickel> * 144, item);
Crusher.addRecipe(<thermalfoundation:material:69>, item, 1024, <techreborn:smalldust:34>*2, 1);
Pulverizer.addRecipe(<thermalfoundation:material:69>, item, 2000, <techreborn:smalldust:34>*2);
Manufactory.addRecipe(item, <thermalfoundation:material:69>);
enrichment.addRecipe(item, <thermalfoundation:material:69>);
}

//Cobalt
MineralSizer.add(<tconstruct:ore>, [<jaopca:item_crushedlumpcobalt>*2], [8]);
LeachingVat.add(<jaopca:item_crushedlumpcobalt>, [<jaopca:item_leachedshardcobalt>*2], [4.21F], <liquid:leachate>*50);
ChemicalExtractor.add("Oxide", <jaopca:item_leachedshardcobalt>, ["dustCobalt", "dustCopper", "dustNickel"], [200, 20, 15]);
val cobaltProcessing =[
	<jaopca:item_crushedlumpcobalt>,
	<jaopca:item_leachedshardcobalt>,
] as IItemStack[];

for item in cobaltProcessing {
furnace.addRecipe(<tconstruct:ingots>,item, 0.1);
Melting.addRecipe(<liquid:cobalt> * 144, item);
Crusher.addRecipe(<rockhounding_chemistry:chemical_dusts:25>, item, 1024, <jaopca:item_dustsmallcobalt>*2, 1);
Pulverizer.addRecipe(<rockhounding_chemistry:chemical_dusts:25>, item, 2000, <jaopca:item_dustsmallcobalt>*2);
Manufactory.addRecipe(item, <rockhounding_chemistry:chemical_dusts:25>);
enrichment.addRecipe(item, <rockhounding_chemistry:chemical_dusts:25>);
}

//Ardite
MineralSizer.add(<tconstruct:ore:1>, [<jaopca:item_crushedlumpardite>*2], [8]);
LeachingVat.add(<jaopca:item_crushedlumpardite>, [<jaopca:item_leachedshardardite>*2], [3.80F], <liquid:leachate>*50);
ChemicalExtractor.add("Sulfide", <jaopca:item_leachedshardardite>, ["dustArdite", "dustGlowstone", "dustSulfur"], [200, 25, 10]);
val arditeProcessing =[
	<jaopca:item_crushedlumpardite>,
	<jaopca:item_leachedshardardite>,
] as IItemStack[];

for item in arditeProcessing {
furnace.addRecipe(<tconstruct:ingots:1>,item, 0.1);
Melting.addRecipe(<liquid:ardite> * 144, item);
Crusher.addRecipe(<jaopca:item_dustardite>, item, 1024, <jaopca:item_dustsmallardite>*2, 1);
Pulverizer.addRecipe(<jaopca:item_dustardite>, item, 2000, <jaopca:item_dustsmallardite>*2);
Manufactory.addRecipe(item, <jaopca:item_dustardite>);
enrichment.addRecipe(item, <jaopca:item_dustardite>);
}



//Uranium
MineralSizer.add("oreUranium", [<jaopca:item_crushedlumpuranium>*2], [4]);
LeachingVat.add(<jaopca:item_crushedlumpuranium>, [<jaopca:item_leachedsharduranium>*2], [4.99F], <liquid:leachate>*50);
ChemicalExtractor.add("Sulfide", <jaopca:item_leachedsharduranium>, ["dustYellowcake", "dustThorium", "dustNiobium"], [200, 40, 25]);
val uraniumProcessing =[
	<jaopca:item_crushedlumpuranium>,
	<jaopca:item_leachedsharduranium>,
	<rockhounding_chemistry:chemical_dusts:55>,
] as IItemStack[];

for item in uraniumProcessing {
furnace.addRecipe(<immersiveengineering:metal:5>,item, 0.1);
Melting.addRecipe(<liquid:uranium> * 144, item);
Crusher.addRecipe(<immersiveengineering:metal:14>, item, 1024, <techreborn:smalldust:68>*2, 1);
Pulverizer.addRecipe(<immersiveengineering:metal:14>, item, 2000, <techreborn:smalldust:68>*2);
Manufactory.addRecipe(item, <immersiveengineering:metal:14>);
enrichment.addRecipe(item, <immersiveengineering:metal:14>);
}

//Thorium
MineralSizer.add(<nuclearcraft:ore:3>, [<jaopca:item_crushedlumpthorium>*2], [4]);
LeachingVat.add(<jaopca:item_crushedlumpthorium>, [<jaopca:item_leachedshardthorium>*2], [6.00F], <liquid:leachate>*50);
ChemicalExtractor.add("Sulfide", <jaopca:item_leachedshardthorium>, ["dustThorium", "dustYellowcake", "dustTitanium","dustHafnium"], [200, 50, 25, 20]);
val thoriumProcessing =[
	<jaopca:item_crushedlumpthorium>,
	<jaopca:item_leachedshardthorium>,
] as IItemStack[];

for item in thoriumProcessing {
furnace.addRecipe(<nuclearcraft:ingot:3>,item, 0.1);
Melting.addRecipe(<liquid:thorium> * 144, item);
Crusher.addRecipe(<techreborn:dust:65>, item, 1024, <techreborn:smalldust:67>*2, 1);
Pulverizer.addRecipe(<techreborn:dust:65>, item, 2000, <techreborn:smalldust:67>*2);
Manufactory.addRecipe(item, <techreborn:dust:65>);
enrichment.addRecipe(item, <techreborn:dust:65>);
}

//Magnesium
MineralSizer.add(<nuclearcraft:ore:7>, [<jaopca:item_crushedlumpmagnesium>*2], [4]);
LeachingVat.add(<jaopca:item_crushedlumpmagnesium>, [<jaopca:item_leachedshardmagnesium>*2], [3.73F], <liquid:leachate>*50);
ChemicalExtractor.add("Sulfide", <jaopca:item_leachedshardmagnesium>, ["dustMagnesium", "dustPotassium", "dustCalcium"], [200, 25, 20]);
val magnesiumProcessing =[
	<jaopca:item_crushedlumpmagnesium>,
	<jaopca:item_leachedshardmagnesium>,
] as IItemStack[];

for item in magnesiumProcessing {
furnace.addRecipe(<nuclearcraft:ingot:7>,item, 0.1);
Melting.addRecipe(<liquid:magnesium> * 144, item);
Crusher.addRecipe(<techreborn:dust:30>, item, 1024, <techreborn:smalldust:30>*2, 1);
Pulverizer.addRecipe(<techreborn:dust:30>, item, 2000, <techreborn:smalldust:30>*2);
Manufactory.addRecipe(item, <techreborn:dust:30>);
enrichment.addRecipe(item, <techreborn:dust:30>);
}

//Lithium
MineralSizer.add(<nuclearcraft:ore:6>, [<jaopca:item_crushedlumplithium>*2], [4]);
LeachingVat.add(<jaopca:item_crushedlumplithium>, [<jaopca:item_leachedshardlithium>*2], [6.32F], <liquid:leachate>*50);
ChemicalExtractor.add("Sulfide", <jaopca:item_leachedshardlithium>, ["dustLithium", "dustAluminum", "dustSodium"], [200, 30, 15]);
val lithiumProcessing =[
	<jaopca:item_crushedlumplithium>,
	<jaopca:item_leachedshardlithium>,
] as IItemStack[];

for item in lithiumProcessing {
furnace.addRecipe(<nuclearcraft:ingot:6>,item, 0.1);
Melting.addRecipe(<liquid:lithium> * 144, item);
Crusher.addRecipe(<mekanism:otherdust:4>, item, 1024, <jaopca:item_dustsmalllithium>*2, 1);
Pulverizer.addRecipe(<mekanism:otherdust:4>, item, 2000, <jaopca:item_dustsmalllithium>*2);
Manufactory.addRecipe(item, <mekanism:otherdust:4>);
enrichment.addRecipe(item, <mekanism:otherdust:4>);
}

//Boron
MineralSizer.add(<nuclearcraft:ore:5>, [<jaopca:item_crushedlumpboron>*2], [4]);
LeachingVat.add(<jaopca:item_crushedlumpboron>, [<jaopca:item_leachedshardboron>*2], [4.57F], <liquid:leachate>*50);
ChemicalExtractor.add("Sulfide", <jaopca:item_leachedshardboron>, ["dustBoron", "dustSaltpeter"], [200, 20]);
val boronProcessing =[
	<jaopca:item_crushedlumpboron>,
	<jaopca:item_leachedshardboron>,
] as IItemStack[];

for item in boronProcessing {
furnace.addRecipe(<nuclearcraft:ingot:5>,item, 0.1);
Melting.addRecipe(<liquid:boron> * 144, item);
Crusher.addRecipe(<nuclearcraft:dust:5>, item, 1024, <jaopca:item_dustsmallboron>*2, 1);
Pulverizer.addRecipe(<nuclearcraft:dust:5>, item, 2000, <jaopca:item_dustsmallboron>*2);
Manufactory.addRecipe(item, <nuclearcraft:dust:5>);
enrichment.addRecipe(item, <nuclearcraft:dust:5>);
}

//Palladium
MineralSizer.add(<contenttweaker:sub_block_holder_0:3>, [<jaopca:item_crushedlumppalladium>*2], [4]);
LeachingVat.add(<jaopca:item_crushedlumppalladium>, [<jaopca:item_leachedshardpalladium>*2], [4.57F], <liquid:leachate>*50);
ChemicalExtractor.add("Native", <jaopca:item_leachedshardpalladium>, ["dustPalladium"], [200]);
val palladiumProcessing =[
	<jaopca:item_crushedlumppalladium>,
	<jaopca:item_leachedshardpalladium>,
] as IItemStack[];

for item in palladiumProcessing {
furnace.addRecipe(<contenttweaker:material_part:30>,item, 0.1);
Melting.addRecipe(<liquid:palladium> * 144, item);
Crusher.addRecipe(<contenttweaker:material_part:35>, item, 1024, <jaopca:item_dustsmallpalladium>*2, 1);
Pulverizer.addRecipe(<contenttweaker:material_part:35>, item, 2000, <jaopca:item_dustsmallpalladium>*2);
Manufactory.addRecipe(item, <contenttweaker:material_part:35>);
enrichment.addRecipe(item, <contenttweaker:material_part:35>);
}

//Orichalcum
MineralSizer.add(<contenttweaker:sub_block_holder_0:7>, [<jaopca:item_crushedlumporichalcum>*2], [8]);
LeachingVat.add(<jaopca:item_crushedlumporichalcum>, [<jaopca:item_leachedshardorichalcum>*2], [6.32F], <liquid:leachate>*50);
ChemicalExtractor.add("Native", <jaopca:item_leachedshardorichalcum>, ["dustOrichalcum"], [200]);
val orichalcumProcessing =[
	<jaopca:item_crushedlumporichalcum>,
	<jaopca:item_leachedshardorichalcum>,
] as IItemStack[];

for item in orichalcumProcessing {
furnace.addRecipe(<contenttweaker:material_part:20>,item, 0.1);
Melting.addRecipe(<liquid:orichalcum> * 144, item);
Crusher.addRecipe(<contenttweaker:material_part:25>, item, 1024, <jaopca:item_dustsmallorichalcum>*2, 1);
Pulverizer.addRecipe(<contenttweaker:material_part:25>, item, 2000, <jaopca:item_dustsmallorichalcum>*2);
Manufactory.addRecipe(item, <contenttweaker:material_part:25>);
enrichment.addRecipe(item, <contenttweaker:material_part:25>);
}

//Adamantine
MineralSizer.add(<contenttweaker:sub_block_holder_0:8>, [<jaopca:item_crushedlumpadamantine>*2], [15]);
LeachingVat.add(<jaopca:item_crushedlumpadamantine>, [<jaopca:item_leachedshardadamantine>*2], [3.73F], <liquid:leachate>*50);
ChemicalExtractor.add("Native", <jaopca:item_leachedshardadamantine>, ["dustAdamantine", "dustChrome"], [200, 34]);
val adamantineProcessing =[
	<jaopca:item_crushedlumpadamantine>,
	<jaopca:item_leachedshardadamantine>,
] as IItemStack[];

for item in adamantineProcessing {
furnace.addRecipe(<contenttweaker:material_part:10>,item, 0.1);
Melting.addRecipe(<liquid:adamantine> * 144, item);
Crusher.addRecipe(<contenttweaker:material_part:15>, item, 1024, <jaopca:item_dustsmalladamantine>*2, 1);
Pulverizer.addRecipe(<contenttweaker:material_part:15>, item, 2000, <jaopca:item_dustsmalladamantine>*2);
Manufactory.addRecipe(item, <contenttweaker:material_part:15>);
enrichment.addRecipe(item, <contenttweaker:material_part:15>);
}

//Starmetal
MineralSizer.add(<astralsorcery:blockcustomore:1>, [<jaopca:item_crushedlumpastralstarmetal>*2], [4]);
LeachingVat.add(<jaopca:item_crushedlumpastralstarmetal>, [<jaopca:item_leachedshardastralstarmetal>*2], [4.57F], <liquid:leachate>*50);
ChemicalExtractor.add("Native", <jaopca:item_leachedshardastralstarmetal>, ["dustAstralStarmetal", "dustTitanium"], [200, 18]);
val astralstarmetalProcessing =[
	<jaopca:item_crushedlumpastralstarmetal>,
	<jaopca:item_leachedshardastralstarmetal>,
] as IItemStack[];

for item in astralstarmetalProcessing {
furnace.addRecipe(<astralsorcery:itemcraftingcomponent:1>,item, 0.1);
Melting.addRecipe(<liquid:starmetal> * 144, item);
Crusher.addRecipe(<astralsorcery:itemcraftingcomponent:2>, item, 1024, <jaopca:item_dustsmallastralstarmetal>*2, 1);
Pulverizer.addRecipe(<astralsorcery:itemcraftingcomponent:2>, item, 2000, <jaopca:item_dustsmallastralstarmetal>*2);
Manufactory.addRecipe(item, <astralsorcery:itemcraftingcomponent:2>);
enrichment.addRecipe(item, <astralsorcery:itemcraftingcomponent:2>);
}

//Pyrite
LeachingVat.add(<techreborn:ore:5>, [<rockhounding_chemistry:sulfide_shards:6>*8], [5.1F], <liquid:leachate>*200);

//Galena
LeachingVat.add(<techreborn:ore>, [<rockhounding_chemistry:sulfide_shards:3>*8], [7.4F], <liquid:leachate>*200);

//Sphalerite
LeachingVat.add(<techreborn:ore:7>, [<rockhounding_chemistry:sulfide_shards:9>*8], [4.05F], <liquid:leachate>*200);

//blastFurnace.removeInputRecipe(IIngredient iIngredient)
// 3880 is max heat

furnace.remove(<nuclearcraft:ingot:11>,<nuclearcraft:ingot:14>);
blastFurnace.addRecipe(<nuclearcraft:ingot:11>, null, <nuclearcraft:ingot:14>, null, 50, 256, 1500);


////////////////////////////////////////
##Aluminum
////////////////////////////////////////
MineralSizer.add(<thermalfoundation:ore:4>, [<jaopca:item_crushedlumpaluminium>*2], [4]);
LeachingVat.add(<jaopca:item_crushedlumpaluminium>, [<jaopca:item_leachedshardaluminium>*2], [4.88F], <liquid:leachate>*50);
ChemicalExtractor.add("Oxide", <jaopca:item_leachedshardaluminium>, ["dustAluminum", "dustIron", "dustTitanium"], [200, 25, 10]);
/*furnace.addRecipe(<thermalfoundation:material:132>, <jaopca:item_crushedlumpaluminium>, 0.1);
furnace.addRecipe(<thermalfoundation:material:132>, <jaopca:item_leachedshardaluminium>, 0.1);*/

blastFurnace.addRecipe(<thermalfoundation:material:132>, null, <thermalfoundation:material:68>, null, 40, 128, 1500);
blastFurnace.addRecipe(<thermalfoundation:material:132>*2, null, <thermalfoundation:ore:4>, null, 80, 128, 1500);

val aluminumProcessing =[
	<jaopca:item_crushedlumpaluminium>,
	<jaopca:item_leachedshardaluminium>
] as IItemStack[];

for item in aluminumProcessing {
blastFurnace.addRecipe(<thermalfoundation:material:132>, null, item, null, 40, 128, 1500);
Crusher.addRecipe(<thermalfoundation:material:68>, item, 1024, <techreborn:smalldust:1>*2, 1);
Pulverizer.addRecipe(<thermalfoundation:material:68>, item, 2000, <techreborn:smalldust:1>*2);
ArcFurnace.addRecipe(<thermalfoundation:material:132>, item, <immersiveengineering:material:7>, 100, 512);
Manufactory.addRecipe(item, <thermalfoundation:material:68>);
enrichment.addRecipe(item, <thermalfoundation:material:68>);
}

blastFurnace.addRecipe(<thermalfoundation:material:132> * 2, null, <jaopca:item_clusteraluminium>, null, 80, 128, 1500);

////////////////////////////////////////
##Platinum
////////////////////////////////////////
MineralSizer.add(<techreborn:ore:9>, [<jaopca:item_crushedlumpplatinum>*4], [15]);
MineralSizer.add(<thermalfoundation:ore:6>, [<jaopca:item_crushedlumpplatinum>*2], [4]);
LeachingVat.add(<jaopca:item_crushedlumpplatinum>, [<jaopca:item_leachedshardplatinum>*2], [7.59F], <liquid:leachate>*50);
ChemicalExtractor.add("Sulfide", <jaopca:item_leachedshardplatinum>, ["dustPlatinum", "dustOsmium", "dustIridium"], [200, 20, 15]);

blastFurnace.addRecipe(<thermalfoundation:material:134>, null, <ore:dustPlatinum>, null, 200, 512, 2000);
blastFurnace.addRecipe(<thermalfoundation:material:134>*4, null, <techreborn:ore:9>, null, 800, 512, 2000);
blastFurnace.addRecipe(<thermalfoundation:material:134>*2, null, <ore:orePlatinum>, null, 400, 512, 2000);

val platinumProcessing =[
	<jaopca:item_crushedlumpplatinum>,
	<jaopca:item_leachedshardplatinum>
] as IItemStack[];

for item in platinumProcessing {
blastFurnace.addRecipe(<thermalfoundation:material:134>, null, item, null, 200, 512, 2000);
Crusher.addRecipe(<thermalfoundation:material:70>, item, 1024, <techreborn:smalldust:38>*2, 1);
Pulverizer.addRecipe(<thermalfoundation:material:70>, item, 2000, <techreborn:smalldust:38>*2);
Manufactory.addRecipe(item, <thermalfoundation:material:70>);
enrichment.addRecipe(item, <thermalfoundation:material:70>);
}

blastFurnace.addRecipe(<thermalfoundation:material:134> * 2, null, <jaopca:item_clusterplatinum>, null, 400, 512, 2000);

////////////////////////////////////////
##Osmium
////////////////////////////////////////
MineralSizer.add(<mekanism:oreblock>, [<jaopca:item_crushedlumposmium>*2], [4]);
LeachingVat.add(<jaopca:item_crushedlumposmium>, [<jaopca:item_leachedshardosmium>*2], [3.51F], <liquid:leachate>*50);
ChemicalExtractor.add("Native", <jaopca:item_leachedshardosmium>, ["dustOsmium", "dustIridium", "dustPlatinum"], [200, 20, 15]);

blastFurnace.addRecipe(<mekanism:ingot:1>, null, <ore:dustOsmium>, null, 300, 768, 2500);
blastFurnace.addRecipe(<mekanism:ingot:1>*2, null, <mekanism:oreblock>, null, 600, 768, 2500);

val osmiumProcessing =[
	<jaopca:item_crushedlumposmium>,
	<jaopca:item_leachedshardosmium>
] as IItemStack[];

for item in osmiumProcessing {
blastFurnace.addRecipe(<mekanism:ingot:1>, null, item, null, 300, 768, 2500);
Crusher.addRecipe(<mekanism:dust:2>, item, 1024, <jaopca:item_dustsmallosmium>*2, 1);
Pulverizer.addRecipe(<mekanism:dust:2>, item, 2000, <jaopca:item_dustsmallosmium>*2);
Manufactory.addRecipe(item, <mekanism:dust:2>);
enrichment.addRecipe(item, <mekanism:dust:2>);
}

blastFurnace.addRecipe(<mekanism:ingot:1> * 2, null, <jaopca:item_clusterosmium>, null, 600, 768, 2500);

////////////////////////////////////////
##Tungsten
////////////////////////////////////////
MineralSizer.add(<techreborn:ore:8>, [<jaopca:item_crushedlumptungsten>*2], [15]);
LeachingVat.add(<jaopca:item_crushedlumptungsten>, [<jaopca:item_leachedshardtungsten>*2], [5.13F], <liquid:leachate>*50);
ChemicalExtractor.add("Sulfide", <jaopca:item_leachedshardtungsten>, ["dustTungsten", "dustTin", "dustGold"], [200, 20, 7]);

blastFurnace.addRecipe(<techreborn:ingot:15>*2, null, <ore:oreTungsten>, null, 1200, 1024, 3000);
blastFurnace.addRecipe(<techreborn:ingot:15>, null, <ore:dustTungsten>, null, 600, 1024, 3000);

val tungstenProcessing =[
	<jaopca:item_crushedlumptungsten>,
	<jaopca:item_leachedshardtungsten>
] as IItemStack[];

for item in tungstenProcessing {
blastFurnace.addRecipe(<techreborn:ingot:15>, null, item, null, 600, 1024, 3000);
Crusher.addRecipe(<techreborn:dust:55>, item, 1024, <techreborn:smalldust:55>*2, 1);
Pulverizer.addRecipe(<techreborn:dust:55>, item, 2000, <techreborn:smalldust:55>*2);
Manufactory.addRecipe(item, <techreborn:dust:55>);
enrichment.addRecipe(item, <techreborn:dust:55>);
}

blastFurnace.addRecipe(<techreborn:ingot:15> * 2, null, <jaopca:item_clustertungsten>, null, 1200, 1024, 3000);

////////////////////////////////////////
##Titanium
////////////////////////////////////////
MineralSizer.add(<libvulpes:ore0:8>, [<jaopca:item_crushedlumptitanium>*2], [4]);
LeachingVat.add(<jaopca:item_crushedlumptitanium>, [<jaopca:item_leachedshardtitanium>*2], [5.00F], <liquid:leachate>*50);
ChemicalExtractor.add("Native", <jaopca:item_leachedshardtitanium>, ["dustTitanium", "dustGold", "dustCarbon"], [200, 30, 20]);

blastFurnace.addRecipe(<techreborn:ingot:14>*2, null, <libvulpes:ore0:8>, null, 1200, 1024, 3000);
blastFurnace.addRecipe(<techreborn:ingot:14>, null, <techreborn:dust:54>, null, 600, 1024, 3000);

val titaniumProcessing =[
	<jaopca:item_crushedlumptitanium>,
	<jaopca:item_leachedshardtitanium>
] as IItemStack[];

for item in titaniumProcessing {
blastFurnace.addRecipe(<techreborn:ingot:14>, null, item, null, 600, 1024, 3000);
Crusher.addRecipe(<techreborn:dust:54>, item, 1024, <techreborn:smalldust:54>*2, 1);
Pulverizer.addRecipe(<techreborn:dust:54>, item, 2000, <techreborn:smalldust:54>*2);
Manufactory.addRecipe(item, <techreborn:dust:54>);
enrichment.addRecipe(item, <techreborn:dust:54>);
}

blastFurnace.addRecipe(<techreborn:ingot:14> * 2, null, <jaopca:item_clustertitanium>, null, 1200, 1024, 3000);

LeachingVat.add(<libvulpes:ore0:8>, [<rockhounding_chemistry:oxide_shards:22>*8], [4.25F], <liquid:leachate>*200);

////////////////////////////////////////
##Mana Metal
////////////////////////////////////////

blastFurnace.addRecipe(<thermalfoundation:material:136>*2, null, <ore:oreMithril>, null, 1600, 1024, 3000);
blastFurnace.addRecipe(<thermalfoundation:material:136>, null, <ore:dustMithril>, null, 800, 1024, 3000);
blastFurnace.addRecipe(<thermalfoundation:material:136>*2, null, <jaopca:item_clustermithril>, null, 1600, 1024, 3000);

////////////////////////////////////////
##Iridium
////////////////////////////////////////
MineralSizer.add(<thermalfoundation:ore:7>, [<jaopca:item_crushedlumpiridium>*2], [4]);
LeachingVat.add(<jaopca:item_crushedlumpiridium>, [<jaopca:item_leachedshardiridium>*2], [20.20F], <liquid:leachate>*50);
ChemicalExtractor.add("Native", <jaopca:item_leachedshardiridium>, ["dustIridium", "dustOsmium", "dustPlatinum"], [200, 25, 15]);

blastFurnace.addRecipe(<thermalfoundation:material:135>*2, null, <ore:oreIridium>, null, 2000, 2048, 3500);
blastFurnace.addRecipe(<thermalfoundation:material:135>, null, <ore:dustIridium>, null, 1000, 2048, 3500);

val iridiumProcessing =[
	<jaopca:item_crushedlumpiridium>,
	<jaopca:item_leachedshardiridium>,
] as IItemStack[];

for item in iridiumProcessing {
blastFurnace.addRecipe(<thermalfoundation:material:135>, null, item, null, 1000, 2048, 3500);
Crusher.addRecipe(<thermalfoundation:material:71>, item, 1024, <techreborn:smalldust:66>*2, 1);
Pulverizer.addRecipe(<thermalfoundation:material:71>, item, 2000, <techreborn:smalldust:66>*2);
Manufactory.addRecipe(item, <thermalfoundation:material:71>);
enrichment.addRecipe(item, <thermalfoundation:material:71>);
}

blastFurnace.addRecipe(<thermalfoundation:material:135>*2, null, <ore:clusterIridium>, null, 2000, 2048, 3500);

////////////////////////////////////////

//New Ores
furnace.addRecipe(<contenttweaker:material_part:10>, <contenttweaker:sub_block_holder_0:8>, 0.0);
furnace.addRecipe(<contenttweaker:material_part:30>, <contenttweaker:sub_block_holder_0:3>, 0.0);
furnace.addRecipe(<contenttweaker:material_part:20>, <contenttweaker:sub_block_holder_0:7>, 0.0);


##################################
#####   	Ingot Tiers		######
##################################

//Furnace
val Tier1Ingots =[
<thermalfoundation:material:133>,
<thermalfoundation:material:131>,
<thermalfoundation:material:130>,
<thermalfoundation:material:129>,
<thermalfoundation:material:128>,
<minecraft:iron_ingot>,
<minecraft:gold_ingot>,
] as IItemStack[];
for item in Tier1Ingots {
item.addTooltip(format.gray("Tier 1 Metal"));
}

//Mixer
val Tier2Ingots =[
<contenttweaker:inert_ingot>,
<thermalfoundation:material:161>,
<thermalfoundation:material:162>,
<thermalfoundation:material:164>,
<thermalfoundation:material:163>,
<enderio:item_alloy_ingot:4>,
<enderio:item_alloy_ingot:5>,
] as IItemStack[];
for item in Tier2Ingots {
item.addTooltip(format.yellow("Tier 2 Metal"));
}

//High Oven
val Tier3Ingots =[
<mysticalagriculture:crafting:34>,
<embers:ingot_dawnstone>,
<thermalfoundation:material:160>,
] as IItemStack[];
for item in Tier3Ingots {
item.addTooltip(format.darkRed("Tier 3 Metal"));
}

//Arc Furnace
val Tier4Ingots =[
<randomthings:ingredient:3>,
<mysticalagriculture:crafting:35>,
<enderio:item_alloy_ingot:6>,
<enderio:item_alloy_ingot:7>,
<enderio:item_alloy_endergy_ingot:5>,
<enderio:item_alloy_ingot:3>,
<enderio:item_alloy_ingot:1>,
<enderio:item_alloy_ingot>,
<thermalfoundation:material:132>,
<techreborn:ingot:19>,
] as IItemStack[];
for item in Tier4Ingots {
item.addTooltip(format.aqua("Tier 4 Metal"));
}

//Blast Furnace / chap 5
val Tier5Ingots =[
<nuclearcraft:ingot:11>,
<thermalfoundation:material:134>,
<mysticalagriculture:crafting:36>,
<thermalfoundation:material:165>,
<thermalfoundation:material:166>,
<thermalfoundation:material:167>,
<mekanism:ingot:1>,
<tconstruct:ingots:2>,
<enderio:item_alloy_ingot:8>,
<enderio:item_alloy_ingot:2>,
<enderio:item_alloy_endergy_ingot:6>,
] as IItemStack[];
for item in Tier5Ingots {
item.addTooltip(format.gold("Tier 5 Metal"));
}

//Ender Smeltery / chap 6
val Tier6Ingots =[
<techreborn:ingot:14>,
<techreborn:ingot:15>,
<thermalfoundation:material:135>,
<plustic:osmiridiumingot>,
<plustic:mirioningot>,
<plustic:osgloglasingot>,
<advancedrocketry:productingot:1>,
<advancedrocketry:productingot>,
<mysticalagradditions:insanium:2>,
] as IItemStack[];
for item in Tier6Ingots {
item.addTooltip(format.darkPurple("Tier 6 Metal"));
}
##########################################################################################
print("==================== end of Metal Processing.zs ====================");
