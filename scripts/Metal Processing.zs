import crafttweaker.item.IItemStack;
import mods.techreborn.blastFurnace;
import mods.tconstruct.Melting;
import mods.tcomplement.Overrides;
import mods.tcomplement.highoven.HighOven;
import mods.embers.Melter;
import mods.nuclearcraft.melter;
import mods.thermalexpansion.Crucible;
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

recipes.removeShapeless(<techreborn:smalldust:1> * 4, [ <ore:dustAluminium>]);
for item in <ore:ingotAluminum>.items{
blastFurnace.removeRecipe(item);
mods.immersiveengineering.ArcFurnace.removeRecipe(item);
}
//Melting.removeRecipe(ILiquidStack output, IItemStack input);
Melting.removeRecipe(<liquid:aluminum>, <thermalfoundation:material:68>);
Melting.removeRecipe(<liquid:aluminum>, <techreborn:smalldust:1>);
Melting.removeRecipe(<liquid:aluminum>, <thermalfoundation:ore:4>);
Overrides.removeRecipe(<liquid:aluminum>, <thermalfoundation:material:68>);
Overrides.removeRecipe(<liquid:aluminum>, <techreborn:smalldust:1>);
Overrides.removeRecipe(<liquid:aluminum>, <thermalfoundation:ore:4>);
HighOven.removeMeltingOverride(<liquid:aluminum>, <thermalfoundation:material:68>);
HighOven.removeMeltingOverride(<liquid:aluminum>, <techreborn:smalldust:1>);
HighOven.removeMeltingOverride(<liquid:aluminum>, <thermalfoundation:ore:4>);
Melter.remove(<thermalfoundation:ore:4>);



//----------Osmium
furnace.remove(<ore:ingotOsmium>);

for item in <ore:ingotOsmium>.items{
mods.immersiveengineering.ArcFurnace.removeRecipe(item);
furnace.remove(item);
}
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
val TitaniumDust =  <ore:dustTitanium>;
for item in <ore:ingotTitanium>.items{
blastFurnace.removeRecipe(item);
mods.immersiveengineering.ArcFurnace.removeRecipe(item);
furnace.remove(item);
}


for item in TitaniumDust.items{
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
##ORE PROCESSING
##=======================================================

//Iron
mods.rockhounding_chemistry.MineralSizer.add(<minecraft:iron_ore>, <jaopca:item_crushedlumpiron>*2);
mods.rockhounding_chemistry.LeachingVat.add(<jaopca:item_crushedlumpiron>, [<jaopca:item_leachedshardiron>*2], [4.21F], <liquid:leachate>*50);
mods.rockhounding_chemistry.ChemicalExtractor.add("Oxide", <jaopca:item_leachedshardiron>, ["dustIron", "dustNickel", "dustCarbon", "dustPhosphorous"], [200, 25, 9, 6]);
val ironProcessing =[
	<jaopca:item_crushedlumpiron>,
	<jaopca:item_leachedshardiron>,
] as IItemStack[];

for item in ironProcessing {
furnace.addRecipe(<minecraft:iron_ingot>,item, 0.1);
Melting.addRecipe(<liquid:iron> * 144, item);
}

//Gold
mods.rockhounding_chemistry.MineralSizer.add(<minecraft:gold_ore>, <jaopca:item_crushedlumpgold>*2);
mods.rockhounding_chemistry.LeachingVat.add(<jaopca:item_crushedlumpgold>, [<jaopca:item_leachedshardgold>*2], [3.85F], <liquid:leachate>*50);
mods.rockhounding_chemistry.ChemicalExtractor.add("Native", <jaopca:item_leachedshardgold>, ["dustGold", "dustSilver", "dustCopper", "dustNickel"], [200, 15, 12, 10]);
val goldProcessing =[
	<jaopca:item_crushedlumpgold>,
	<jaopca:item_leachedshardgold>,
] as IItemStack[];

for item in goldProcessing {
furnace.addRecipe(<minecraft:gold_ingot>,item, 0.1);
Melting.addRecipe(<liquid:gold> * 144, item);
}

//Copper
mods.rockhounding_chemistry.MineralSizer.add(<thermalfoundation:ore>, <jaopca:item_crushedlumpcopper>*2);
mods.rockhounding_chemistry.LeachingVat.add(<jaopca:item_crushedlumpcopper>, [<jaopca:item_leachedshardcopper>*2], [5.92F], <liquid:leachate>*50);
mods.rockhounding_chemistry.ChemicalExtractor.add("Oxide", <jaopca:item_leachedshardcopper>, ["dustCopper", "dustIron", "dustSulfur"], [200, 25, 8]);
val copperProcessing =[
	<jaopca:item_crushedlumpcopper>,
	<jaopca:item_leachedshardcopper>,
] as IItemStack[];

for item in copperProcessing {
furnace.addRecipe(<thermalfoundation:material:128>,item, 0.1);
Melting.addRecipe(<liquid:copper> * 144, item);
}

//Tin
mods.rockhounding_chemistry.MineralSizer.add(<thermalfoundation:ore:1>, <jaopca:item_crushedlumptin>*2);
mods.rockhounding_chemistry.LeachingVat.add(<jaopca:item_crushedlumptin>, [<jaopca:item_leachedshardtin>*2], [6.08F], <liquid:leachate>*50);
mods.rockhounding_chemistry.ChemicalExtractor.add("Oxide", <jaopca:item_leachedshardtin>, ["dustTin", "dustLead", "dustArsenic"], [200, 25, 5]);
val tinProcessing =[
	<jaopca:item_crushedlumptin>,
	<jaopca:item_leachedshardtin>,
] as IItemStack[];

for item in tinProcessing {
furnace.addRecipe(<thermalfoundation:material:129>,item, 0.1);
Melting.addRecipe(<liquid:tin> * 144, item);
}

//Silver
mods.rockhounding_chemistry.MineralSizer.add(<thermalfoundation:ore:2>, <jaopca:item_crushedlumpsilver>*2);
mods.rockhounding_chemistry.LeachingVat.add(<jaopca:item_crushedlumpsilver>, [<jaopca:item_leachedshardsilver>*2], [3.20F], <liquid:leachate>*50);
mods.rockhounding_chemistry.ChemicalExtractor.add("Native", <jaopca:item_leachedshardsilver>, ["dustSilver", "dustLead", "dustSulfur", "dustAntimony"], [200, 25, 10, 5]);
val silverProcessing =[
	<jaopca:item_crushedlumpsilver>,
	<jaopca:item_leachedshardsilver>,
] as IItemStack[];

for item in silverProcessing {
furnace.addRecipe(<thermalfoundation:material:130>,item, 0.1);
Melting.addRecipe(<liquid:silver> * 144, item);
}

//Lead
mods.rockhounding_chemistry.MineralSizer.add(<thermalfoundation:ore:3>, <jaopca:item_crushedlumplead>*2);
mods.rockhounding_chemistry.LeachingVat.add(<jaopca:item_crushedlumplead>, [<jaopca:item_leachedshardlead>*2], [4.20F], <liquid:leachate>*50);
mods.rockhounding_chemistry.ChemicalExtractor.add("Sulfide", <jaopca:item_leachedshardlead>, ["dustLead", "dustSilver", "dustZinc", "dustBismuth"], [200, 20, 15, 5]);
val leadProcessing =[
	<jaopca:item_crushedlumplead>,
	<jaopca:item_leachedshardlead>,
] as IItemStack[];

for item in leadProcessing {
furnace.addRecipe(<thermalfoundation:material:131>,item, 0.1);
Melting.addRecipe(<liquid:lead> * 144, item);
}

//Nickel
mods.rockhounding_chemistry.MineralSizer.add(<thermalfoundation:ore:5>, <jaopca:item_crushedlumpnickel>*2);
mods.rockhounding_chemistry.LeachingVat.add(<jaopca:item_crushedlumpnickel>, [<jaopca:item_leachedshardnickel>*2], [4.69F], <liquid:leachate>*50);
mods.rockhounding_chemistry.ChemicalExtractor.add("Native", <jaopca:item_leachedshardnickel>, ["dustNickel", "dustPlatinum", "dustCopper", "dustCobalt"], [200, 25, 15, 10]);
val nickelProcessing =[
	<jaopca:item_crushedlumpnickel>,
	<jaopca:item_leachedshardnickel>,
] as IItemStack[];

for item in nickelProcessing {
furnace.addRecipe(<thermalfoundation:material:133>,item, 0.1);
Melting.addRecipe(<liquid:nickel> * 144, item);
}

//Octine
mods.rockhounding_chemistry.MineralSizer.add(<thebetweenlands:octine_ore>, <jaopca:item_crushedlumpoctine>*2);
mods.rockhounding_chemistry.LeachingVat.add(<jaopca:item_crushedlumpoctine>, [<jaopca:item_leachedshardoctine>*2], [2.83F], <liquid:leachate>*50);
mods.rockhounding_chemistry.ChemicalExtractor.add("Sulfide", <jaopca:item_leachedshardoctine>, ["dustOctine", "dustBlaze", "dustPhosphorus"], [200, 25, 15]);
val octineProcessing =[
	<jaopca:item_crushedlumpoctine>,
	<jaopca:item_leachedshardoctine>,
] as IItemStack[];

for item in octineProcessing {
furnace.addRecipe(<thebetweenlands:octine_ingot>,item, 0.1);
Melting.addRecipe(<liquid:octine> * 144, item);
}

//Syrmorite
mods.rockhounding_chemistry.MineralSizer.add(<thebetweenlands:syrmorite_ore>, <jaopca:item_crushedlumpsyrmorite>*2);
mods.rockhounding_chemistry.LeachingVat.add(<jaopca:item_crushedlumpsyrmorite>, [<jaopca:item_leachedshardsyrmorite>*2], [7.68F], <liquid:leachate>*50);
mods.rockhounding_chemistry.ChemicalExtractor.add("Sulfide", <jaopca:item_leachedshardsyrmorite>, ["dustSyrmorite", "dustVanadium", "dustGold"], [200, 20, 12]);
val syrmoriteProcessing =[
	<jaopca:item_crushedlumpsyrmorite>,
	<jaopca:item_leachedshardsyrmorite>,
] as IItemStack[];

for item in syrmoriteProcessing {
furnace.addRecipe(<thebetweenlands:items_misc:11>,item, 0.1);
Melting.addRecipe(<liquid:syrmorite> * 144, item);
}

//Cobalt
mods.rockhounding_chemistry.MineralSizer.add(<tconstruct:ore>, <jaopca:item_crushedlumpcobalt>*2);
mods.rockhounding_chemistry.LeachingVat.add(<jaopca:item_crushedlumpcobalt>, [<jaopca:item_leachedshardcobalt>*2], [4.21F], <liquid:leachate>*50);
mods.rockhounding_chemistry.ChemicalExtractor.add("Oxide", <jaopca:item_leachedshardcobalt>, ["dustCobalt", "dustCopper", "dustNickel"], [200, 20, 15]);
val cobaltProcessing =[
	<jaopca:item_crushedlumpcobalt>,
	<jaopca:item_leachedshardcobalt>,
] as IItemStack[];

for item in cobaltProcessing {
furnace.addRecipe(<tconstruct:ingots>,item, 0.1);
Melting.addRecipe(<liquid:cobalt> * 144, item);
}

//Ardite
mods.rockhounding_chemistry.MineralSizer.add(<tconstruct:ore:1>, <jaopca:item_crushedlumpardite>*2);
mods.rockhounding_chemistry.LeachingVat.add(<jaopca:item_crushedlumpardite>, [<jaopca:item_leachedshardardite>*2], [3.80F], <liquid:leachate>*50);
mods.rockhounding_chemistry.ChemicalExtractor.add("Sulfide", <jaopca:item_leachedshardardite>, ["dustArdite", "dustGlowstone", "dustSulfur"], [200, 25, 10]);
val arditeProcessing =[
	<jaopca:item_crushedlumpardite>,
	<jaopca:item_leachedshardardite>,
] as IItemStack[];

for item in arditeProcessing {
furnace.addRecipe(<tconstruct:ingots:1>,item, 0.1);
Melting.addRecipe(<liquid:ardite> * 144, item);
}



//Uranium
mods.rockhounding_chemistry.MineralSizer.add(<nuclearcraft:ore:4>, <jaopca:item_crushedlumpuranium>*2);
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
}

//Thorium
mods.rockhounding_chemistry.MineralSizer.add(<nuclearcraft:ore:3>, <jaopca:item_crushedlumpthorium>*2);
mods.rockhounding_chemistry.LeachingVat.add(<jaopca:item_crushedlumpthorium>, [<jaopca:item_leachedshardthorium>*2], [6.00F], <liquid:leachate>*50);
mods.rockhounding_chemistry.ChemicalExtractor.add("Sulfide", <jaopca:item_leachedshardthorium>, ["dustThorium", "dustYellowcake"], [200, 50]);
val thoriumProcessing =[
	<jaopca:item_crushedlumpthorium>,
	<jaopca:item_leachedshardthorium>,
] as IItemStack[];

for item in thoriumProcessing {
furnace.addRecipe(<nuclearcraft:ingot:3>,item, 0.1);
Melting.addRecipe(<liquid:thorium> * 144, item);
}

//Magnesium
mods.rockhounding_chemistry.MineralSizer.add(<nuclearcraft:ore:7>, <jaopca:item_crushedlumpmagnesium>*2);
mods.rockhounding_chemistry.LeachingVat.add(<jaopca:item_crushedlumpmagnesium>, [<jaopca:item_leachedshardmagnesium>*2], [3.73F], <liquid:leachate>*50);
mods.rockhounding_chemistry.ChemicalExtractor.add("Sulfide", <jaopca:item_leachedshardmagnesium>, ["dustMagnesium", "ore:dustMolybdenum"], [200, 25]);
val magnesiumProcessing =[
	<jaopca:item_crushedlumpmagnesium>,
	<jaopca:item_leachedshardmagnesium>,
] as IItemStack[];

for item in magnesiumProcessing {
furnace.addRecipe(<nuclearcraft:ingot:7>,item, 0.1);
Melting.addRecipe(<liquid:magnesium> * 144, item);
}

//Lithium
mods.rockhounding_chemistry.MineralSizer.add(<nuclearcraft:ore:6>, <jaopca:item_crushedlumplithium>*2);
mods.rockhounding_chemistry.LeachingVat.add(<jaopca:item_crushedlumplithium>, [<jaopca:item_leachedshardlithium>*2], [6.32F], <liquid:leachate>*50);
mods.rockhounding_chemistry.ChemicalExtractor.add("Sulfide", <jaopca:item_leachedshardlithium>, ["dustLithium", "dustChrome"], [200, 25]);
val lithiumProcessing =[
	<jaopca:item_crushedlumplithium>,
	<jaopca:item_leachedshardlithium>,
] as IItemStack[];

for item in lithiumProcessing {
furnace.addRecipe(<nuclearcraft:ingot:6>,item, 0.1);
Melting.addRecipe(<liquid:lithium> * 144, item);
}

//Boron
mods.rockhounding_chemistry.MineralSizer.add(<nuclearcraft:ore:5>, <jaopca:item_crushedlumpboron>*2);
mods.rockhounding_chemistry.LeachingVat.add(<jaopca:item_crushedlumpboron>, [<jaopca:item_leachedshardboron>*2], [4.57F], <liquid:leachate>*50);
mods.rockhounding_chemistry.ChemicalExtractor.add("Sulfide", <jaopca:item_leachedshardboron>, ["dustBoron"], [200]);
val boronProcessing =[
	<jaopca:item_crushedlumpboron>,
	<jaopca:item_leachedshardboron>,
] as IItemStack[];

for item in boronProcessing {
furnace.addRecipe(<nuclearcraft:ingot:5>,item, 0.1);
Melting.addRecipe(<liquid:boron> * 144, item);
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
}

//Orichalcum
mods.rockhounding_chemistry.MineralSizer.add(<contenttweaker:sub_block_holder_0:6>, [<jaopca:item_crushedlumporichalcum>*2], [8]);
mods.rockhounding_chemistry.LeachingVat.add(<jaopca:item_crushedlumporichalcum>, [<jaopca:item_leachedshardorichalcum>*2], [6.32F], <liquid:leachate>*50);
mods.rockhounding_chemistry.ChemicalExtractor.add("Native", <jaopca:item_leachedshardorichalcum>, ["dustOrichalcum"], [200]);
val orichalcumProcessing =[
	<jaopca:item_crushedlumporichalcum>,
	<jaopca:item_leachedshardorichalcum>,
] as IItemStack[];

for item in orichalcumProcessing {
furnace.addRecipe(<contenttweaker:material_part:20>,item, 0.1);
Melting.addRecipe(<liquid:orichalcum> * 144, item);
}

//Adamantine
mods.rockhounding_chemistry.MineralSizer.add(<contenttweaker:sub_block_holder_0:7>, [<jaopca:item_crushedlumpadamantine>*2], [15]);
mods.rockhounding_chemistry.LeachingVat.add(<jaopca:item_crushedlumpadamantine>, [<jaopca:item_leachedshardadamantine>*2], [3.73F], <liquid:leachate>*50);
mods.rockhounding_chemistry.ChemicalExtractor.add("Native", <jaopca:item_leachedshardadamantine>, ["dustAdamantine", "dustChrome"], [200, 34]);
val adamantineProcessing =[
	<jaopca:item_crushedlumpadamantine>,
	<jaopca:item_leachedshardadamantine>,
] as IItemStack[];

for item in adamantineProcessing {
furnace.addRecipe(<contenttweaker:material_part:10>,item, 0.1);
Melting.addRecipe(<liquid:adamantine> * 144, item);
}

//Starmetal
mods.rockhounding_chemistry.MineralSizer.add(<astralsorcery:blockcustomore:1>, <jaopca:item_crushedlumpastralstarmetal>*2);
mods.rockhounding_chemistry.LeachingVat.add(<jaopca:item_crushedlumpastralstarmetal>, [<jaopca:item_leachedshardastralstarmetal>*2], [4.57F], <liquid:leachate>*50);
mods.rockhounding_chemistry.ChemicalExtractor.add("Native", <jaopca:item_leachedshardastralstarmetal>, ["dustAstralStarmetal", "ore:dustTitanium"], [200, 18]);
val astralstarmetalProcessing =[
	<jaopca:item_crushedlumpastralstarmetal>,
	<jaopca:item_leachedshardastralstarmetal>,
] as IItemStack[];

for item in astralstarmetalProcessing {
furnace.addRecipe(<astralsorcery:itemcraftingcomponent:1>,item, 0.1);
Melting.addRecipe(<liquid:starmetal> * 144, item);
}

//Pyrite
mods.rockhounding_chemistry.LeachingVat.add(<techreborn:ore:5>, [<rockhounding_chemistry:sulfide_shards:6>*8], [5.1F], <liquid:leachate>*200);

//Galena
mods.rockhounding_chemistry.LeachingVat.add(<techreborn:ore>, [<rockhounding_chemistry:sulfide_shards:3>*8], [7.4F], <liquid:leachate>*200);

//Sphalerite
mods.rockhounding_chemistry.LeachingVat.add(<techreborn:ore:7>, [<rockhounding_chemistry:sulfide_shards:9>*8], [4.05F], <liquid:leachate>*200);

//blastFurnace.removeInputRecipe(IIngredient iIngredient)
// 3880 is max heat

////////////////////////////////////////
##Aluminum
////////////////////////////////////////
mods.rockhounding_chemistry.MineralSizer.add(<thermalfoundation:ore:4>, <jaopca:item_crushedlumpaluminium>*2);
mods.rockhounding_chemistry.LeachingVat.add(<jaopca:item_crushedlumpaluminium>, [<jaopca:item_leachedshardaluminium>*2], [4.88F], <liquid:leachate>*50);
mods.rockhounding_chemistry.ChemicalExtractor.add("Oxide", <jaopca:item_leachedshardaluminium>, ["dustAluminum", "dustIron", "dustTitanium"], [200, 25, 10]);
/*furnace.addRecipe(<thermalfoundation:material:132>, <jaopca:item_crushedlumpaluminium>, 0.1);
furnace.addRecipe(<thermalfoundation:material:132>, <jaopca:item_leachedshardaluminium>, 0.1);*/

blastFurnace.addRecipe(<thermalfoundation:material:132>, null, <thermalfoundation:material:68>, null, 100, 20, 1500);
blastFurnace.addRecipe(<thermalfoundation:material:132>*2, null, <thermalfoundation:ore:4>, null, 100, 20, 1500);
blastFurnace.addRecipe(<thermalfoundation:material:132>, null, <jaopca:item_leachedshardaluminium>, null, 100, 20, 1500);
blastFurnace.addRecipe(<thermalfoundation:material:132>, null, <jaopca:item_crushedlumpaluminium>, null, 100, 20, 1500);
////////////////////////////////////////
##Platinum
////////////////////////////////////////
mods.rockhounding_chemistry.MineralSizer.add(<techreborn:ore:9>, <jaopca:item_crushedlumpplatinum>*2);
mods.rockhounding_chemistry.MineralSizer.add(<thermalfoundation:ore:6>, <jaopca:item_crushedlumpplatinum>*2);
mods.rockhounding_chemistry.LeachingVat.add(<jaopca:item_crushedlumpplatinum>, [<jaopca:item_leachedshardplatinum>*2], [7.59F], <liquid:leachate>*50);
mods.rockhounding_chemistry.ChemicalExtractor.add("Sulfide", <jaopca:item_leachedshardplatinum>, ["dustPlatinum", "dustOsmium", "dustIridium"], [200, 20, 15]);

blastFurnace.addRecipe(<thermalfoundation:material:134>, null, <ore:dustPlatinum>, null, 1200, 50, 2000);
blastFurnace.addRecipe(<thermalfoundation:material:134>*2, null, <techreborn:ore:9>, null, 1200, 60, 2000);
blastFurnace.addRecipe(<thermalfoundation:material:134>*2, null, <ore:orePlatinum>, null, 1200, 60, 2000);
blastFurnace.addRecipe(<thermalfoundation:material:134>, null, <ore:crushedlumpPlatinum>, null, 1200, 50, 2000);
blastFurnace.addRecipe(<thermalfoundation:material:134>, null, <ore:leachedshardPlatinum>, null, 1200, 50, 2000);
////////////////////////////////////////
##Osmium
////////////////////////////////////////
mods.rockhounding_chemistry.MineralSizer.add(<mekanism:oreblock>, <jaopca:item_crushedlumposmium>*2);
mods.rockhounding_chemistry.LeachingVat.add(<jaopca:item_crushedlumposmium>, [<jaopca:item_leachedshardosmium>*2], [2.50F], <liquid:leachate>*50);
mods.rockhounding_chemistry.ChemicalExtractor.add("Native", <jaopca:item_leachedshardosmium>, ["dustOsmium", "dustIridium", "dustPlatinum"], [200, 20, 15]);

blastFurnace.addRecipe(<mekanism:ingot:1>, null, <ore:dustOsmium>, null, 600, 40, 2000);
blastFurnace.addRecipe(<mekanism:ingot:1>*2, null, <mekanism:oreblock>, null, 600, 40, 2000);
blastFurnace.addRecipe(<mekanism:ingot:1>, null, <ore:crushedlumpOsmium>, null, 600, 40, 2000);
blastFurnace.addRecipe(<mekanism:ingot:1>, null, <ore:leachedshardOsmium>, null, 600, 40, 2000);
////////////////////////////////////////
##Tungsten
////////////////////////////////////////
mods.rockhounding_chemistry.MineralSizer.add(<techreborn:ore:8>, <jaopca:item_crushedlumptungsten>*2);
mods.rockhounding_chemistry.LeachingVat.add(<jaopca:item_crushedlumptungsten>, [<jaopca:item_leachedshardtungsten>*2], [5.13F], <liquid:leachate>*50);
mods.rockhounding_chemistry.ChemicalExtractor.add("Sulfide", <jaopca:item_leachedshardtungsten>, ["dustTungsten", "dustTin", "dustGold"], [200, 20, 7]);

blastFurnace.addRecipe(<techreborn:ingot:15>*2, null, <ore:oreTungsten>, null, 1800, 100, 2500);
blastFurnace.addRecipe(<techreborn:ingot:15>, null, <ore:dustTungsten>, null, 1800, 80, 2500);
blastFurnace.addRecipe(<techreborn:ingot:15>, null, <ore:crushedlumpTungsten>, null, 1800, 80, 2500);
blastFurnace.addRecipe(<techreborn:ingot:15>, null, <ore:leachedshardTungsten>, null, 1800, 80, 2500);
////////////////////////////////////////
##Titanium
////////////////////////////////////////
mods.rockhounding_chemistry.LeachingVat.add(<libvulpes:ore0:8>, [<rockhounding_chemistry:oxide_shards:22>*8], [4.25F], <liquid:leachate>*200);

blastFurnace.addRecipe(<libvulpes:productingot:7>*2, null, <ore:oreTitanium>, null, 1800, 80, 2500);
blastFurnace.addRecipe(<libvulpes:productingot:7>, null, <ore:dustTitanium>, null, 1800, 80, 2500);
////////////////////////////////////////
##Iridium
////////////////////////////////////////
mods.rockhounding_chemistry.MineralSizer.add(<thermalfoundation:ore:7>, <jaopca:item_crushedlumpiridium>*2);
mods.rockhounding_chemistry.LeachingVat.add(<jaopca:item_crushedlumpiridium>, [<jaopca:item_leachedshardiridium>*2], [20.20F], <liquid:leachate>*50);
mods.rockhounding_chemistry.ChemicalExtractor.add("Native", <jaopca:item_leachedshardiridium>, ["dustIridium", "dustOsmium", "dustPlatinum"], [200, 25, 15]);

blastFurnace.addRecipe(<thermalfoundation:material:135>*2, null, <ore:oreIridium>, null, 2000, 500, 3000);
blastFurnace.addRecipe(<thermalfoundation:material:135>, null, <ore:dustIridium>, null, 2000, 500, 3000);
blastFurnace.addRecipe(<thermalfoundation:material:135>, null, <ore:crushedlumpIridium>, null, 2000, 500, 3000);
blastFurnace.addRecipe(<thermalfoundation:material:135>, null, <ore:leachedshardIridium>, null, 2000, 500, 3000);
////////////////////////////////////////
##########################################################################################
print("==================== end of Metal Processing.zs ====================");
