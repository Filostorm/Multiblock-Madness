import crafttweaker.item.IItemStack;
import mods.techreborn.blastFurnace;
import mods.tconstruct.Melting;
import mods.tcomplement.Overrides;
import mods.tcomplement.highoven.HighOven;
import mods.embers.Melter;
import mods.nuclearcraft.melter;
import mods.thermalexpansion.Crucible;
import mods.immersiveengineering.ArcFurnace;
import mods.immersiveengineering.Crusher;
import mods.thermalexpansion.Pulverizer;
import mods.nuclearcraft.manufactory;
import mods.techreborn.grinder;

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
HighOven.removeMeltingOverride(<liquid:aluminum>, item);
}

Melting.removeRecipe(<liquid:aluminum>, <jaopca:item_dusttinyaluminium>);
Melter.remove(<thermalfoundation:ore:4>);



//----------Osmium
furnace.remove(<ore:ingotOsmium>);
for item in <ore:ingotOsmium>.items{
mods.immersiveengineering.ArcFurnace.removeRecipe(item);
furnace.remove(item);
}
Melting.removeRecipe(<liquid:osmium>, <jaopca:item_dustsmallosmium>);
Melting.removeRecipe(<liquid:osmium>, <jaopca:item_dusttinyosmium>);
Melting.removeRecipe(<liquid:osmium>, <mekanism:dust:2>);
Melting.removeRecipe(<liquid:osmium>, <rockhounding_chemistry:chemical_dusts:38>);
Melting.removeRecipe(<liquid:osmium>, <mekanism:oreblock>);
Overrides.removeRecipe(<liquid:osmium>, <mekanism:oreblock>);
HighOven.removeMeltingOverride(<liquid:osmium>, <mekanism:oreblock>);
Melter.remove(<mekanism:oreblock>);
melter.removeRecipeWithInput(<mekanism:dust:2>);
melter.removeRecipeWithInput(<mekanism:oreblock>);
Crucible.removeRecipe(<mekanism:dust:2>);
Crucible.removeRecipe(<mekanism:oreblock>);


//----------Platinum
for item in <ore:ingotPlatinum>.items{
mods.immersiveengineering.ArcFurnace.removeRecipe(item);
furnace.remove(item);
}
Melting.removeRecipe(<liquid:platinum>, <jaopca:item_dusttinyplatinum>);
Melting.removeRecipe(<liquid:platinum>, <thermalfoundation:material:70>);
Melting.removeRecipe(<liquid:platinum>, <techreborn:smalldust:38>);
Melting.removeRecipe(<liquid:platinum>, <thermalfoundation:ore:6>);
Overrides.removeRecipe(<liquid:platinum>, <thermalfoundation:material:70>);
Overrides.removeRecipe(<liquid:platinum>, <techreborn:smalldust:38>);
Overrides.removeRecipe(<liquid:platinum>, <thermalfoundation:ore:6>);
HighOven.removeMeltingOverride(<liquid:platinum>, <thermalfoundation:material:70>);
HighOven.removeMeltingOverride(<liquid:platinum>, <techreborn:smalldust:38>);
HighOven.removeMeltingOverride(<liquid:platinum>, <thermalfoundation:ore:6>);
Melter.remove(<thermalfoundation:ore:6>);
melter.removeRecipeWithInput(<thermalfoundation:material:70>);
melter.removeRecipeWithInput(<thermalfoundation:ore:6>);
Crucible.removeRecipe(<thermalfoundation:material:70>);
Crucible.removeRecipe(<thermalfoundation:ore:6>);


//----------Tungsten
for item in <ore:ingotTungsten>.items{
blastFurnace.removeRecipe(item);
mods.immersiveengineering.ArcFurnace.removeRecipe(item);
furnace.remove(item);
}

Melting.removeRecipe(<liquid:tungsten>, <techreborn:dust:55>);
Melting.removeRecipe(<liquid:tungsten>, <techreborn:smalldust:55>);
Melting.removeRecipe(<liquid:tungsten>, <techreborn:ore:8>);
Overrides.removeRecipe(<liquid:tungsten>, <techreborn:dust:55>);
Overrides.removeRecipe(<liquid:tungsten>, <techreborn:smalldust:55>);
Overrides.removeRecipe(<liquid:tungsten>, <techreborn:ore:8>);
HighOven.removeMeltingOverride(<liquid:tungsten>, <techreborn:dust:55>);
HighOven.removeMeltingOverride(<liquid:tungsten>, <techreborn:smalldust:55>);
HighOven.removeMeltingOverride(<liquid:tungsten>, <techreborn:ore:8>);
Melter.remove(<techreborn:ore:8>);
melter.removeRecipeWithInput(<techreborn:ore:8>);
melter.removeRecipeWithInput(<techreborn:dust:55>);
Crucible.removeRecipe(<techreborn:ore:8>);
Crucible.removeRecipe(<techreborn:dust:55>);

//----------Titanium

for item in <ore:ingotTitanium>.items{
blastFurnace.removeRecipe(item);
mods.immersiveengineering.ArcFurnace.removeRecipe(item);
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
Melting.removeRecipe(<liquid:molten_titanium>, <techreborn:smalldust:54>);
Melting.removeRecipe(<liquid:molten_titanium>, <libvulpes:ore0:8>);
Overrides.removeRecipe(<liquid:molten_titanium>, <techreborn:smalldust:54>);
Overrides.removeRecipe(<liquid:molten_titanium>, <libvulpes:ore0:8>);
Overrides.removeRecipe(<liquid:titanium>, <techreborn:smalldust:54>);
Overrides.removeRecipe(<liquid:titanium>, <libvulpes:ore0:8>);
HighOven.removeMeltingOverride(<liquid:molten_titanium>, <techreborn:smalldust:54>);
HighOven.removeMeltingOverride(<liquid:molten_titanium>, <libvulpes:ore0:8>);
HighOven.removeMeltingOverride(<liquid:titanium>, <techreborn:smalldust:54>);
HighOven.removeMeltingOverride(<liquid:titanium>, <libvulpes:ore0:8>);
Melter.remove(<libvulpes:ore0:8>);
melter.removeRecipeWithInput(<libvulpes:ore0:8>);
melter.removeRecipeWithInput(<techreborn:dust:54>);
Crucible.removeRecipe(<libvulpes:ore0:8>);
Crucible.removeRecipe(<techreborn:dust:54>);

//----------Iridium
for item in <ore:ingotIridium>.items{
blastFurnace.removeRecipe(item);
mods.immersiveengineering.ArcFurnace.removeRecipe(item);
furnace.remove(item);
}

Melting.removeRecipe(<liquid:iridium>, <jaopca:item_dusttinyiridium>);
Melting.removeRecipe(<liquid:iridium>, <thermalfoundation:material:71>);
Melting.removeRecipe(<liquid:iridium>, <techreborn:smalldust:66>);
Melting.removeRecipe(<liquid:iridium>, <thermalfoundation:ore:7>);
Overrides.removeRecipe(<liquid:iridium>, <thermalfoundation:material:71>);
Overrides.removeRecipe(<liquid:iridium>, <techreborn:smalldust:66>);
Overrides.removeRecipe(<liquid:iridium>, <thermalfoundation:ore:7>);
HighOven.removeMeltingOverride(<liquid:iridium>, <thermalfoundation:material:71>);
HighOven.removeMeltingOverride(<liquid:iridium>, <techreborn:smalldust:66>);
HighOven.removeMeltingOverride(<liquid:iridium>, <thermalfoundation:ore:7>);
Melter.remove(<thermalfoundation:ore:7>);
melter.removeRecipeWithInput(<thermalfoundation:ore:7>);
melter.removeRecipeWithInput(<thermalfoundation:material:71>);
Crucible.removeRecipe(<thermalfoundation:ore:7>);
Crucible.removeRecipe(<thermalfoundation:material:71>);


##=======================================================
##              ORE PROCESSING
##=======================================================

//Iron
mods.rockhounding_chemistry.MineralSizer.add(<minecraft:iron_ore>, [<jaopca:item_crushedlumpiron>*2], [4]);
mods.rockhounding_chemistry.LeachingVat.add(<jaopca:item_crushedlumpiron>, [<jaopca:item_leachedshardiron>*2], [4.21F], <liquid:leachate>*50);
mods.rockhounding_chemistry.ChemicalExtractor.add("Oxide", <jaopca:item_leachedshardiron>, ["dustIron", "dustNickel", "dustCarbon", "dustPhosphorous"], [200, 25, 9, 6]);

val ironProcessing =[
	<jaopca:item_crushedlumpiron>,
	<jaopca:item_leachedshardiron>,
] as IItemStack[];

for item in ironProcessing {
blastFurnace.addRecipe(<minecraft:iron_ingot>, null, item, null, 100, 20, 1000);
furnace.addRecipe(<minecraft:iron_ingot>,item, 0.1);
Melting.addRecipe(<liquid:iron> * 144, item);
Crusher.addRecipe(<thermalfoundation:material>, item, 1024, <techreborn:smalldust:27>*2, 1);
Pulverizer.addRecipe(<thermalfoundation:material>, item, 2000, <techreborn:smalldust:27>*2);
//mods.techreborn.industrialGrinder.addRecipe(IItemStack output1, IItemStack output2, IItemStack output3, IItemStack output4, IIngredient input1, IIngredient input2, ILiquidStack fluid, int ticktime, int euTick)
}

//Gold
mods.rockhounding_chemistry.MineralSizer.add(<minecraft:gold_ore>, [<jaopca:item_crushedlumpgold>*2], [4]);
mods.rockhounding_chemistry.LeachingVat.add(<jaopca:item_crushedlumpgold>, [<jaopca:item_leachedshardgold>*2], [3.85F], <liquid:leachate>*50);
mods.rockhounding_chemistry.ChemicalExtractor.add("Native", <jaopca:item_leachedshardgold>, ["dustGold", "dustSilver", "dustCopper", "dustNickel"], [200, 15, 12, 10]);
val goldProcessing =[
	<jaopca:item_crushedlumpgold>,
	<jaopca:item_leachedshardgold>,
] as IItemStack[];

for item in goldProcessing {
furnace.addRecipe(<minecraft:gold_ingot>,item, 0.1);
Melting.addRecipe(<liquid:gold> * 144, item);
Crusher.addRecipe(<thermalfoundation:material:1>, item, 1024, <techreborn:smalldust:24>*2, 1);
Pulverizer.addRecipe(<thermalfoundation:material:1>, item, 2000, <techreborn:smalldust:24>*2);
}

//Copper
mods.rockhounding_chemistry.MineralSizer.add(<thermalfoundation:ore>, [<jaopca:item_crushedlumpcopper>*2], [4]);
mods.rockhounding_chemistry.LeachingVat.add(<jaopca:item_crushedlumpcopper>, [<jaopca:item_leachedshardcopper>*2], [5.92F], <liquid:leachate>*50);
mods.rockhounding_chemistry.ChemicalExtractor.add("Oxide", <jaopca:item_leachedshardcopper>, ["dustCopper", "dustIron", "dustSulfur"], [200, 25, 8]);
val copperProcessing =[
	<jaopca:item_crushedlumpcopper>,
	<jaopca:item_leachedshardcopper>,
	
] as IItemStack[];

for item in copperProcessing {
furnace.addRecipe(<thermalfoundation:material:128>,item, 0.1);
Melting.addRecipe(<liquid:copper> * 144, item);
Crusher.addRecipe(<thermalfoundation:material:64>, item, 1024, <techreborn:smalldust:14>*2, 1);
Pulverizer.addRecipe(<thermalfoundation:material:64>, item, 2000, <techreborn:smalldust:14>*2);
}

//Tin
mods.rockhounding_chemistry.MineralSizer.add(<thermalfoundation:ore:1>, [<jaopca:item_crushedlumptin>*2], [4]);
mods.rockhounding_chemistry.LeachingVat.add(<jaopca:item_crushedlumptin>, [<jaopca:item_leachedshardtin>*2], [6.08F], <liquid:leachate>*50);
mods.rockhounding_chemistry.ChemicalExtractor.add("Oxide", <jaopca:item_leachedshardtin>, ["dustTin", "dustLead", "dustArsenic"], [200, 25, 5]);
val tinProcessing =[
	<jaopca:item_crushedlumptin>,
	<jaopca:item_leachedshardtin>,
] as IItemStack[];

for item in tinProcessing {
furnace.addRecipe(<thermalfoundation:material:129>,item, 0.1);
Melting.addRecipe(<liquid:tin> * 144, item);
Crusher.addRecipe(<thermalfoundation:material:65>, item, 1024, <techreborn:smalldust:53>*2, 1);
Pulverizer.addRecipe(<thermalfoundation:material:65>, item, 2000, <techreborn:smalldust:53>*2);
}

//Silver
mods.rockhounding_chemistry.MineralSizer.add(<thermalfoundation:ore:2>, [<jaopca:item_crushedlumpsilver>*2], [4]);
mods.rockhounding_chemistry.LeachingVat.add(<jaopca:item_crushedlumpsilver>, [<jaopca:item_leachedshardsilver>*2], [3.20F], <liquid:leachate>*50);
mods.rockhounding_chemistry.ChemicalExtractor.add("Native", <jaopca:item_leachedshardsilver>, ["dustSilver", "dustLead", "dustSulfur", "dustAntimony"], [200, 25, 10, 5]);
val silverProcessing =[
	<jaopca:item_crushedlumpsilver>,
	<jaopca:item_leachedshardsilver>,
] as IItemStack[];

for item in silverProcessing {
furnace.addRecipe(<thermalfoundation:material:130>,item, 0.1);
Melting.addRecipe(<liquid:silver> * 144, item);
Crusher.addRecipe(<thermalfoundation:material:66>, item, 1024, <techreborn:smalldust:47>*2, 1);
Pulverizer.addRecipe(<thermalfoundation:material:66>, item, 2000, <techreborn:smalldust:47>*2);
}

//Lead
mods.rockhounding_chemistry.MineralSizer.add(<thermalfoundation:ore:3>, [<jaopca:item_crushedlumplead>*2], [4]);
mods.rockhounding_chemistry.LeachingVat.add(<jaopca:item_crushedlumplead>, [<jaopca:item_leachedshardlead>*2], [4.20F], <liquid:leachate>*50);
mods.rockhounding_chemistry.ChemicalExtractor.add("Sulfide", <jaopca:item_leachedshardlead>, ["dustLead", "dustSilver", "dustZinc", "dustBismuth"], [200, 20, 15, 5]);
val leadProcessing =[
	<jaopca:item_crushedlumplead>,
	<jaopca:item_leachedshardlead>,
] as IItemStack[];

for item in leadProcessing {
furnace.addRecipe(<thermalfoundation:material:131>,item, 0.1);
Melting.addRecipe(<liquid:lead> * 144, item);
Crusher.addRecipe(<thermalfoundation:material:67>, item, 1024, <techreborn:smalldust:29>*2, 1);
Pulverizer.addRecipe(<thermalfoundation:material:67>, item, 2000, <techreborn:smalldust:29>*2);
}

//Nickel
mods.rockhounding_chemistry.MineralSizer.add(<thermalfoundation:ore:5>, [<jaopca:item_crushedlumpnickel>*2], [4]);
mods.rockhounding_chemistry.LeachingVat.add(<jaopca:item_crushedlumpnickel>, [<jaopca:item_leachedshardnickel>*2], [4.69F], <liquid:leachate>*50);
mods.rockhounding_chemistry.ChemicalExtractor.add("Native", <jaopca:item_leachedshardnickel>, ["dustNickel", "dustPlatinum", "dustCopper", "dustCobalt"], [200, 25, 15, 10]);
val nickelProcessing =[
	<jaopca:item_crushedlumpnickel>,
	<jaopca:item_leachedshardnickel>,
] as IItemStack[];

for item in nickelProcessing {
furnace.addRecipe(<thermalfoundation:material:133>,item, 0.1);
Melting.addRecipe(<liquid:nickel> * 144, item);
Crusher.addRecipe(<thermalfoundation:material:69>, item, 1024, <techreborn:smalldust:34>*2, 1);
Pulverizer.addRecipe(<thermalfoundation:material:69>, item, 2000, <techreborn:smalldust:34>*2);
}

//Octine
mods.rockhounding_chemistry.MineralSizer.add(<thebetweenlands:octine_ore>, [<jaopca:item_crushedlumpoctine>*2], [8]);
mods.rockhounding_chemistry.LeachingVat.add(<jaopca:item_crushedlumpoctine>, [<jaopca:item_leachedshardoctine>*2], [2.83F], <liquid:leachate>*50);
mods.rockhounding_chemistry.ChemicalExtractor.add("Sulfide", <jaopca:item_leachedshardoctine>, ["dustOctine", "dustBlaze", "dustPhosphorus"], [200, 25, 15]);
val octineProcessing =[
	<jaopca:item_crushedlumpoctine>,
	<jaopca:item_leachedshardoctine>,
] as IItemStack[];

for item in octineProcessing {
furnace.addRecipe(<thebetweenlands:octine_ingot>,item, 0.1);
Melting.addRecipe(<liquid:octine> * 144, item);
Crusher.addRecipe(<jaopca:item_dustoctine>, item, 1024, <jaopca:item_dustsmalloctine>*2, 1);
Pulverizer.addRecipe(<jaopca:item_dustoctine>, item, 2000, <jaopca:item_dustsmalloctine>*2);
}

//Syrmorite
mods.rockhounding_chemistry.MineralSizer.add(<thebetweenlands:syrmorite_ore>, [<jaopca:item_crushedlumpsyrmorite>*2], [8]);
mods.rockhounding_chemistry.LeachingVat.add(<jaopca:item_crushedlumpsyrmorite>, [<jaopca:item_leachedshardsyrmorite>*2], [7.68F], <liquid:leachate>*50);
mods.rockhounding_chemistry.ChemicalExtractor.add("Sulfide", <jaopca:item_leachedshardsyrmorite>, ["dustSyrmorite", "dustVanadium", "dustGold"], [200, 20, 12]);
val syrmoriteProcessing =[
	<jaopca:item_crushedlumpsyrmorite>,
	<jaopca:item_leachedshardsyrmorite>,
] as IItemStack[];

for item in syrmoriteProcessing {
furnace.addRecipe(<thebetweenlands:items_misc:11>,item, 0.1);
Melting.addRecipe(<liquid:syrmorite> * 144, item);
Crusher.addRecipe(<jaopca:item_dustsyrmorite>, item, 1024, <jaopca:item_dustsmallsyrmorite>*2, 1);
Pulverizer.addRecipe(<jaopca:item_dustsyrmorite>, item, 2000, <jaopca:item_dustsmallsyrmorite>*2);
}

//Cobalt
mods.rockhounding_chemistry.MineralSizer.add(<tconstruct:ore>, [<jaopca:item_crushedlumpcobalt>*2], [8]);
mods.rockhounding_chemistry.LeachingVat.add(<jaopca:item_crushedlumpcobalt>, [<jaopca:item_leachedshardcobalt>*2], [4.21F], <liquid:leachate>*50);
mods.rockhounding_chemistry.ChemicalExtractor.add("Oxide", <jaopca:item_leachedshardcobalt>, ["dustCobalt", "dustCopper", "dustNickel"], [200, 20, 15]);
val cobaltProcessing =[
	<jaopca:item_crushedlumpcobalt>,
	<jaopca:item_leachedshardcobalt>,
] as IItemStack[];

for item in cobaltProcessing {
furnace.addRecipe(<tconstruct:ingots>,item, 0.1);
Melting.addRecipe(<liquid:cobalt> * 144, item);
Crusher.addRecipe(<enderio:item_material:31>, item, 1024, <jaopca:item_dustsmallcobalt>*2, 1);
Pulverizer.addRecipe(<enderio:item_material:31>, item, 2000, <jaopca:item_dustsmallcobalt>*2);
}

//Ardite
mods.rockhounding_chemistry.MineralSizer.add(<tconstruct:ore:1>, [<jaopca:item_crushedlumpardite>*2], [8]);
mods.rockhounding_chemistry.LeachingVat.add(<jaopca:item_crushedlumpardite>, [<jaopca:item_leachedshardardite>*2], [3.80F], <liquid:leachate>*50);
mods.rockhounding_chemistry.ChemicalExtractor.add("Sulfide", <jaopca:item_leachedshardardite>, ["dustArdite", "dustGlowstone", "dustSulfur"], [200, 25, 10]);
val arditeProcessing =[
	<jaopca:item_crushedlumpardite>,
	<jaopca:item_leachedshardardite>,
] as IItemStack[];

for item in arditeProcessing {
furnace.addRecipe(<tconstruct:ingots:1>,item, 0.1);
Melting.addRecipe(<liquid:ardite> * 144, item);
Crusher.addRecipe(<jaopca:item_dustardite>, item, 1024, <jaopca:item_dustsmallardite>*2, 1);
Pulverizer.addRecipe(<jaopca:item_dustardite>, item, 2000, <jaopca:item_dustsmallardite>*2);
}



//Uranium
mods.rockhounding_chemistry.MineralSizer.add(<nuclearcraft:ore:4>, [<jaopca:item_crushedlumpuranium>*2], [4]);
mods.rockhounding_chemistry.LeachingVat.add(<jaopca:item_crushedlumpuranium>, [<jaopca:item_leachedsharduranium>*2], [4.99F], <liquid:leachate>*50);
mods.rockhounding_chemistry.ChemicalExtractor.add("Sulfide", <jaopca:item_leachedsharduranium>, ["dustYellowcake", "dustThorium"], [200, 40]);
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
}

//Thorium
mods.rockhounding_chemistry.MineralSizer.add(<nuclearcraft:ore:3>, [<jaopca:item_crushedlumpthorium>*2], [4]);
mods.rockhounding_chemistry.LeachingVat.add(<jaopca:item_crushedlumpthorium>, [<jaopca:item_leachedshardthorium>*2], [6.00F], <liquid:leachate>*50);
mods.rockhounding_chemistry.ChemicalExtractor.add("Sulfide", <jaopca:item_leachedshardthorium>, ["dustThorium", "dustYellowcake"], [200, 50]);
val thoriumProcessing =[
	<jaopca:item_crushedlumpthorium>,
	<jaopca:item_leachedshardthorium>,
] as IItemStack[];

for item in thoriumProcessing {
furnace.addRecipe(<nuclearcraft:ingot:3>,item, 0.1);
Melting.addRecipe(<liquid:thorium> * 144, item);
Crusher.addRecipe(<techreborn:dust:65>, item, 1024, <techreborn:smalldust:67>*2, 1);
Pulverizer.addRecipe(<techreborn:dust:65>, item, 2000, <techreborn:smalldust:67>*2);
}

//Magnesium
mods.rockhounding_chemistry.MineralSizer.add(<nuclearcraft:ore:7>, [<jaopca:item_crushedlumpmagnesium>*2], [4]);
mods.rockhounding_chemistry.LeachingVat.add(<jaopca:item_crushedlumpmagnesium>, [<jaopca:item_leachedshardmagnesium>*2], [3.73F], <liquid:leachate>*50);
mods.rockhounding_chemistry.ChemicalExtractor.add("Sulfide", <jaopca:item_leachedshardmagnesium>, ["dustMagnesium", "dustMolybdenum"], [200, 25]);
val magnesiumProcessing =[
	<jaopca:item_crushedlumpmagnesium>,
	<jaopca:item_leachedshardmagnesium>,
] as IItemStack[];

for item in magnesiumProcessing {
furnace.addRecipe(<nuclearcraft:ingot:7>,item, 0.1);
Melting.addRecipe(<liquid:magnesium> * 144, item);
Crusher.addRecipe(<techreborn:dust:30>, item, 1024, <techreborn:smalldust:30>*2, 1);
Pulverizer.addRecipe(<techreborn:dust:30>, item, 2000, <techreborn:smalldust:30>*2);
}

//Lithium
mods.rockhounding_chemistry.MineralSizer.add(<nuclearcraft:ore:6>, [<jaopca:item_crushedlumplithium>*2], [4]);
mods.rockhounding_chemistry.LeachingVat.add(<jaopca:item_crushedlumplithium>, [<jaopca:item_leachedshardlithium>*2], [6.32F], <liquid:leachate>*50);
mods.rockhounding_chemistry.ChemicalExtractor.add("Sulfide", <jaopca:item_leachedshardlithium>, ["dustLithium", "dustChrome"], [200, 25]);
val lithiumProcessing =[
	<jaopca:item_crushedlumplithium>,
	<jaopca:item_leachedshardlithium>,
] as IItemStack[];

for item in lithiumProcessing {
furnace.addRecipe(<nuclearcraft:ingot:6>,item, 0.1);
Melting.addRecipe(<liquid:lithium> * 144, item);
Crusher.addRecipe(<nuclearcraft:dust:6>, item, 1024, <jaopca:item_dustsmalllithium>*2, 1);
Pulverizer.addRecipe(<nuclearcraft:dust:6>, item, 2000, <jaopca:item_dustsmalllithium>*2);
}

//Boron
mods.rockhounding_chemistry.MineralSizer.add(<nuclearcraft:ore:5>, [<jaopca:item_crushedlumpboron>*2], [4]);
mods.rockhounding_chemistry.LeachingVat.add(<jaopca:item_crushedlumpboron>, [<jaopca:item_leachedshardboron>*2], [4.57F], <liquid:leachate>*50);
mods.rockhounding_chemistry.ChemicalExtractor.add("Sulfide", <jaopca:item_leachedshardboron>, ["dustBoron", "dustSaltpeter"], [200, 20]);
val boronProcessing =[
	<jaopca:item_crushedlumpboron>,
	<jaopca:item_leachedshardboron>,
] as IItemStack[];

for item in boronProcessing {
furnace.addRecipe(<nuclearcraft:ingot:5>,item, 0.1);
Melting.addRecipe(<liquid:boron> * 144, item);
Crusher.addRecipe(<nuclearcraft:dust:5>, item, 1024, <jaopca:item_dustsmallboron>*2, 1);
Pulverizer.addRecipe(<nuclearcraft:dust:5>, item, 2000, <jaopca:item_dustsmallboron>*2);
}

//Palladium
mods.rockhounding_chemistry.MineralSizer.add(<contenttweaker:sub_block_holder_0:3>, [<jaopca:item_crushedlumppalladium>*2], [4]);
mods.rockhounding_chemistry.LeachingVat.add(<jaopca:item_crushedlumppalladium>, [<jaopca:item_leachedshardpalladium>*2], [4.57F], <liquid:leachate>*50);
mods.rockhounding_chemistry.ChemicalExtractor.add("Native", <jaopca:item_leachedshardpalladium>, ["dustPalladium"], [200]);
val palladiumProcessing =[
	<jaopca:item_crushedlumppalladium>,
	<jaopca:item_leachedshardpalladium>,
] as IItemStack[];

for item in palladiumProcessing {
furnace.addRecipe(<contenttweaker:material_part:30>,item, 0.1);
Melting.addRecipe(<liquid:palladium> * 144, item);
Crusher.addRecipe(<contenttweaker:material_part:35>, item, 1024, <jaopca:item_dustsmallpalladium>*2, 1);
Pulverizer.addRecipe(<contenttweaker:material_part:35>, item, 2000, <jaopca:item_dustsmallpalladium>*2);
}

//Orichalcum
mods.rockhounding_chemistry.MineralSizer.add(<contenttweaker:sub_block_holder_0:7>, [<jaopca:item_crushedlumporichalcum>*2], [8]);
mods.rockhounding_chemistry.LeachingVat.add(<jaopca:item_crushedlumporichalcum>, [<jaopca:item_leachedshardorichalcum>*2], [6.32F], <liquid:leachate>*50);
mods.rockhounding_chemistry.ChemicalExtractor.add("Native", <jaopca:item_leachedshardorichalcum>, ["dustOrichalcum"], [200]);
val orichalcumProcessing =[
	<jaopca:item_crushedlumporichalcum>,
	<jaopca:item_leachedshardorichalcum>,
] as IItemStack[];

for item in orichalcumProcessing {
furnace.addRecipe(<contenttweaker:material_part:20>,item, 0.1);
Melting.addRecipe(<liquid:orichalcum> * 144, item);
Crusher.addRecipe(<contenttweaker:material_part:25>, item, 1024, <jaopca:item_dustsmallorichalcum>*2, 1);
Pulverizer.addRecipe(<contenttweaker:material_part:25>, item, 2000, <jaopca:item_dustsmallorichalcum>*2);
}

//Adamantine
mods.rockhounding_chemistry.MineralSizer.add(<contenttweaker:sub_block_holder_0:8>, [<jaopca:item_crushedlumpadamantine>*2], [15]);
mods.rockhounding_chemistry.LeachingVat.add(<jaopca:item_crushedlumpadamantine>, [<jaopca:item_leachedshardadamantine>*2], [3.73F], <liquid:leachate>*50);
mods.rockhounding_chemistry.ChemicalExtractor.add("Native", <jaopca:item_leachedshardadamantine>, ["dustAdamantine", "dustChrome"], [200, 34]);
val adamantineProcessing =[
	<jaopca:item_crushedlumpadamantine>,
	<jaopca:item_leachedshardadamantine>,
] as IItemStack[];

for item in adamantineProcessing {
furnace.addRecipe(<contenttweaker:material_part:10>,item, 0.1);
Melting.addRecipe(<liquid:adamantine> * 144, item);
Crusher.addRecipe(<jaopca:item_dustadaminite>, item, 1024, <jaopca:item_dustsmalladaminite>*2, 1);
Pulverizer.addRecipe(<jaopca:item_dustadaminite>, item, 2000, <jaopca:item_dustsmalladaminite>*2);
}

//Starmetal
mods.rockhounding_chemistry.MineralSizer.add(<astralsorcery:blockcustomore:1>, [<jaopca:item_crushedlumpastralstarmetal>*2], [4]);
mods.rockhounding_chemistry.LeachingVat.add(<jaopca:item_crushedlumpastralstarmetal>, [<jaopca:item_leachedshardastralstarmetal>*2], [4.57F], <liquid:leachate>*50);
mods.rockhounding_chemistry.ChemicalExtractor.add("Native", <jaopca:item_leachedshardastralstarmetal>, ["dustAstralStarmetal", "dustTitanium"], [200, 18]);
val astralstarmetalProcessing =[
	<jaopca:item_crushedlumpastralstarmetal>,
	<jaopca:item_leachedshardastralstarmetal>,
] as IItemStack[];

for item in astralstarmetalProcessing {
furnace.addRecipe(<astralsorcery:itemcraftingcomponent:1>,item, 0.1);
Melting.addRecipe(<liquid:starmetal> * 144, item);
Crusher.addRecipe(<astralsorcery:itemcraftingcomponent:2>, item, 1024, <jaopca:item_dustsmallastralstarmetal>*2, 1);
Pulverizer.addRecipe(<astralsorcery:itemcraftingcomponent:2>, item, 2000, <jaopca:item_dustsmallastralstarmetal>*2);
}

//Pyrite
mods.rockhounding_chemistry.LeachingVat.add(<techreborn:ore:5>, [<rockhounding_chemistry:sulfide_shards:6>*8], [5.1F], <liquid:leachate>*200);

//Galena
mods.rockhounding_chemistry.LeachingVat.add(<techreborn:ore>, [<rockhounding_chemistry:sulfide_shards:3>*8], [7.4F], <liquid:leachate>*200);

//Sphalerite
mods.rockhounding_chemistry.LeachingVat.add(<techreborn:ore:7>, [<rockhounding_chemistry:sulfide_shards:9>*8], [4.05F], <liquid:leachate>*200);

//blastFurnace.removeInputRecipe(IIngredient iIngredient)
// 3880 is max heat

furnace.remove(<nuclearcraft:ingot:11>,<nuclearcraft:ingot_oxide:2>);
blastFurnace.addRecipe(<nuclearcraft:ingot:11>, null, <nuclearcraft:ingot_oxide:2>, null, 200, 20, 1500);


////////////////////////////////////////
##Aluminum
////////////////////////////////////////
mods.rockhounding_chemistry.MineralSizer.add(<thermalfoundation:ore:4>, [<jaopca:item_crushedlumpaluminium>*2], [4]);
mods.rockhounding_chemistry.LeachingVat.add(<jaopca:item_crushedlumpaluminium>, [<jaopca:item_leachedshardaluminium>*2], [4.88F], <liquid:leachate>*50);
mods.rockhounding_chemistry.ChemicalExtractor.add("Oxide", <jaopca:item_leachedshardaluminium>, ["dustAluminum", "dustIron", "dustTitanium"], [200, 25, 10]);
/*furnace.addRecipe(<thermalfoundation:material:132>, <jaopca:item_crushedlumpaluminium>, 0.1);
furnace.addRecipe(<thermalfoundation:material:132>, <jaopca:item_leachedshardaluminium>, 0.1);*/

blastFurnace.addRecipe(<thermalfoundation:material:132>, null, <thermalfoundation:material:68>, null, 100, 20, 1500);
blastFurnace.addRecipe(<thermalfoundation:material:132>*2, null, <thermalfoundation:ore:4>, null, 100, 20, 1500);

val aluminumProcessing =[
	<jaopca:item_crushedlumpaluminium>,
	<jaopca:item_leachedshardaluminium>,
] as IItemStack[];

for item in aluminumProcessing {
blastFurnace.addRecipe(<thermalfoundation:material:132>, null, item, null, 100, 20, 1500);
Crusher.addRecipe(<thermalfoundation:material:68>, item, 1024, <techreborn:smalldust:1>*2, 1);
Pulverizer.addRecipe(<thermalfoundation:material:68>, item, 2000, <techreborn:smalldust:1>*2);
ArcFurnace.addRecipe(<thermalfoundation:material:132>, item, <immersiveengineering:material:7>, 100, 512);
}

////////////////////////////////////////
##Platinum
////////////////////////////////////////
mods.rockhounding_chemistry.MineralSizer.add(<techreborn:ore:9>, [<jaopca:item_crushedlumpplatinum>*4], [15]);
mods.rockhounding_chemistry.MineralSizer.add(<thermalfoundation:ore:6>, [<jaopca:item_crushedlumpplatinum>*2], [4]);
mods.rockhounding_chemistry.LeachingVat.add(<jaopca:item_crushedlumpplatinum>, [<jaopca:item_leachedshardplatinum>*2], [7.59F], <liquid:leachate>*50);
mods.rockhounding_chemistry.ChemicalExtractor.add("Sulfide", <jaopca:item_leachedshardplatinum>, ["dustPlatinum", "dustOsmium", "dustIridium"], [200, 20, 15]);

blastFurnace.addRecipe(<thermalfoundation:material:134>, null, <ore:dustPlatinum>, null, 1200, 50, 2000);
blastFurnace.addRecipe(<thermalfoundation:material:134>*4, null, <techreborn:ore:9>, null, 1200, 60, 2000);
blastFurnace.addRecipe(<thermalfoundation:material:134>*2, null, <ore:orePlatinum>, null, 1200, 60, 2000);

val platinumProcessing =[
	<jaopca:item_crushedlumpplatinum>,
	<jaopca:item_leachedshardplatinum>,
] as IItemStack[];

for item in platinumProcessing {
blastFurnace.addRecipe(<thermalfoundation:material:134>, null, item, null, 1200, 60, 2000);
Crusher.addRecipe(<thermalfoundation:material:70>, item, 1024, <techreborn:smalldust:38>*2, 1);
Pulverizer.addRecipe(<thermalfoundation:material:70>, item, 2000, <techreborn:smalldust:38>*2);
}
////////////////////////////////////////
##Osmium
////////////////////////////////////////
mods.rockhounding_chemistry.MineralSizer.add(<mekanism:oreblock>, [<jaopca:item_crushedlumposmium>*2], [4]);
mods.rockhounding_chemistry.LeachingVat.add(<jaopca:item_crushedlumposmium>, [<jaopca:item_leachedshardosmium>*2], [3.51F], <liquid:leachate>*50);
mods.rockhounding_chemistry.ChemicalExtractor.add("Native", <jaopca:item_leachedshardosmium>, ["dustOsmium", "dustIridium", "dustPlatinum"], [200, 20, 15]);

blastFurnace.addRecipe(<mekanism:ingot:1>, null, <ore:dustOsmium>, null, 1200, 40, 2500);
blastFurnace.addRecipe(<mekanism:ingot:1>*2, null, <mekanism:oreblock>, null, 1200, 40, 2500);

val osmiumProcessing =[
	<jaopca:item_crushedlumposmium>,
	<jaopca:item_leachedshardosmium>,
] as IItemStack[];

for item in osmiumProcessing {
blastFurnace.addRecipe(<mekanism:ingot:1>, null, item, null, 1200, 60, 2500);
Crusher.addRecipe(<mekanism:dust:2>, item, 1024, <jaopca:item_dustsmallosmium>*2, 1);
Pulverizer.addRecipe(<mekanism:dust:2>, item, 2000, <jaopca:item_dustsmallosmium>*2);
}
////////////////////////////////////////
##Tungsten
////////////////////////////////////////
mods.rockhounding_chemistry.MineralSizer.add(<techreborn:ore:8>, [<jaopca:item_crushedlumptungsten>*2], [15]);
mods.rockhounding_chemistry.LeachingVat.add(<jaopca:item_crushedlumptungsten>, [<jaopca:item_leachedshardtungsten>*2], [5.13F], <liquid:leachate>*50);
mods.rockhounding_chemistry.ChemicalExtractor.add("Sulfide", <jaopca:item_leachedshardtungsten>, ["dustTungsten", "dustTin", "dustGold"], [200, 20, 7]);

blastFurnace.addRecipe(<techreborn:ingot:15>*2, null, <ore:oreTungsten>, null, 1800, 100, 3000);
blastFurnace.addRecipe(<techreborn:ingot:15>, null, <ore:dustTungsten>, null, 1800, 80, 3000);

val tungstenProcessing =[
	<jaopca:item_crushedlumptungsten>,
	<jaopca:item_leachedshardtungsten>,
] as IItemStack[];

for item in tungstenProcessing {
blastFurnace.addRecipe(<techreborn:ingot:15>, null, item, null, 1800, 80, 3000);
Crusher.addRecipe(<techreborn:dust:55>, item, 1024, <techreborn:smalldust:55>*2, 1);
Pulverizer.addRecipe(<techreborn:dust:55>, item, 2000, <techreborn:smalldust:55>*2);
}
////////////////////////////////////////
##Titanium
////////////////////////////////////////
mods.rockhounding_chemistry.MineralSizer.add(<libvulpes:ore0:8>, [<jaopca:item_crushedlumptitanium>*2], [4]);
mods.rockhounding_chemistry.LeachingVat.add(<jaopca:item_crushedlumptitanium>, [<jaopca:item_leachedshardtitanium>*2], [5.00F], <liquid:leachate>*50);
mods.rockhounding_chemistry.ChemicalExtractor.add("Native", <jaopca:item_leachedshardtitanium>, ["dustTitanium", "dustGold", "dustCarbon"], [200, 30, 20]);

blastFurnace.addRecipe(<techreborn:ingot:14>*2, null, <libvulpes:ore0:8>, null, 1800, 100, 3000);
blastFurnace.addRecipe(<techreborn:ingot:14>, null, <techreborn:dust:54>, null, 1800, 80, 3000);

val titaniumProcessing =[
	<jaopca:item_crushedlumptitanium>,
	<jaopca:item_leachedshardtitanium>,
] as IItemStack[];

for item in titaniumProcessing {
blastFurnace.addRecipe(<techreborn:ingot:14>, null, item, null, 1800, 80, 3000);
Crusher.addRecipe(<techreborn:dust:54>, item, 1024, <techreborn:smalldust:54>*2, 1);
Pulverizer.addRecipe(<techreborn:dust:54>, item, 2000, <techreborn:smalldust:54>*2);
}

mods.rockhounding_chemistry.LeachingVat.add(<libvulpes:ore0:8>, [<rockhounding_chemistry:oxide_shards:22>*8], [4.25F], <liquid:leachate>*200);
////////////////////////////////////////
##Iridium
////////////////////////////////////////
mods.rockhounding_chemistry.MineralSizer.add(<thermalfoundation:ore:7>, [<jaopca:item_crushedlumpiridium>*2], [4]);
mods.rockhounding_chemistry.LeachingVat.add(<jaopca:item_crushedlumpiridium>, [<jaopca:item_leachedshardiridium>*2], [20.20F], <liquid:leachate>*50);
mods.rockhounding_chemistry.ChemicalExtractor.add("Native", <jaopca:item_leachedshardiridium>, ["dustIridium", "dustOsmium", "dustPlatinum"], [200, 25, 15]);

blastFurnace.addRecipe(<thermalfoundation:material:135>*2, null, <ore:oreIridium>, null, 2000, 500, 3500);
blastFurnace.addRecipe(<thermalfoundation:material:135>, null, <ore:dustIridium>, null, 2000, 500, 3500);

val iridiumProcessing =[
	<jaopca:item_crushedlumpiridium>,
	<jaopca:item_leachedshardiridium>,
] as IItemStack[];

for item in iridiumProcessing {
blastFurnace.addRecipe(<thermalfoundation:material:135>, null, item, null, 2000, 500, 3500);
Crusher.addRecipe(<thermalfoundation:material:71>, item, 1024, <techreborn:smalldust:66>*2, 1);
Pulverizer.addRecipe(<thermalfoundation:material:71>, item, 2000, <techreborn:smalldust:66>*2);
}
////////////////////////////////////////




#####			Ingot Tiers		#####


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

//Smeltery
val Tier2Ingots =[
<contenttweaker:inert_ingot>,
<thermalfoundation:material:161>,
<thermalfoundation:material:162>,
<thermalfoundation:material:164>,
<thermalfoundation:material:163>,
] as IItemStack[];
for item in Tier2Ingots {
item.addTooltip(format.yellow("Tier 2 Metal"));
}

//High Oven
val Tier3Ingots =[
<enderio:item_alloy_ingot:4>,
<mysticalagriculture:crafting:34>,
<enderio:item_alloy_ingot:5>,
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

//Blast Furnace
val Tier5Ingots =[
<nuclearcraft:ingot:11>,
<thermalfoundation:material:135>,
<thermalfoundation:material:134>,
<mysticalagriculture:crafting:36>,
<mysticalagradditions:insanium:2>,
<mekanism:ingot:1>,
<tconstruct:ingots:2>,
] as IItemStack[];
for item in Tier5Ingots {
item.addTooltip(format.gold("Tier 5 Metal"));
}

//Ender Smeltery
val Tier6Ingots =[
<enderio:item_alloy_ingot:2>,
<enderio:item_alloy_ingot:8>,
<enderio:item_alloy_endergy_ingot:6>,
<thermalfoundation:material:165>,
<thermalfoundation:material:166>,
<thermalfoundation:material:167>,
<plustic:osmiridiumingot>,
<plustic:mirioningot>,
<plustic:osgloglasingot>,
<advancedrocketry:productingot:1>,
<advancedrocketry:productingot>,
] as IItemStack[];
for item in Tier6Ingots {
item.addTooltip(format.darkPurple("Tier 6 Metal"));
}
##########################################################################################
print("==================== end of Metal Processing.zs ====================");
