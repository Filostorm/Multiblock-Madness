import crafttweaker.item.IItemStack;
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
val AluminumOre = <ore:ingotAluminum>;
for item in AluminumOre.items{
mods.techreborn.blastFurnace.removeRecipe(item);
mods.immersiveengineering.ArcFurnace.removeRecipe(item);
}
//mods.tconstruct.Melting.removeRecipe(ILiquidStack output, IItemStack input);
mods.tconstruct.Melting.removeRecipe(<liquid:aluminum>, <thermalfoundation:material:68>);
mods.tconstruct.Melting.removeRecipe(<liquid:aluminum>, <techreborn:smalldust:1>);
mods.tconstruct.Melting.removeRecipe(<liquid:aluminum>, <thermalfoundation:ore:4>);
mods.tcomplement.Overrides.removeRecipe(<liquid:aluminum>, <thermalfoundation:material:68>);
mods.tcomplement.Overrides.removeRecipe(<liquid:aluminum>, <techreborn:smalldust:1>);
mods.tcomplement.Overrides.removeRecipe(<liquid:aluminum>, <thermalfoundation:ore:4>);
mods.tcomplement.highoven.HighOven.removeMeltingOverride(<liquid:aluminum>, <thermalfoundation:material:68>);
mods.tcomplement.highoven.HighOven.removeMeltingOverride(<liquid:aluminum>, <techreborn:smalldust:1>);
mods.tcomplement.highoven.HighOven.removeMeltingOverride(<liquid:aluminum>, <thermalfoundation:ore:4>);
mods.embers.Melter.remove(<thermalfoundation:ore:4>);



//----------Osmium
furnace.remove(<ore:ingotOsmium>);

val OsmiumOre = <ore:ingotOsmium>;
for item in OsmiumOre.items{
mods.immersiveengineering.ArcFurnace.removeRecipe(item);
furnace.remove(item);
}
mods.tconstruct.Melting.removeRecipe(<liquid:osmium>, <mekanism:dust:2>);
mods.tconstruct.Melting.removeRecipe(<liquid:osmium>, <rockhounding_chemistry:chemical_dusts:38>);
mods.tconstruct.Melting.removeRecipe(<liquid:osmium>, <mekanism:oreblock>);
mods.tcomplement.Overrides.removeRecipe(<liquid:osmium>, <mekanism:oreblock>);
mods.tcomplement.highoven.HighOven.removeMeltingOverride(<liquid:osmium>, <mekanism:oreblock>);
mods.embers.Melter.remove(<mekanism:oreblock>);
mods.nuclearcraft.melter.removeRecipeWithInput(<mekanism:dust:2>);
mods.nuclearcraft.melter.removeRecipeWithInput(<mekanism:oreblock>);
mods.thermalexpansion.Crucible.removeRecipe(<mekanism:dust:2>);
mods.thermalexpansion.Crucible.removeRecipe(<mekanism:oreblock>);


//----------Platinum
val PlatinumOre = <ore:ingotPlatinum>;
for item in PlatinumOre.items{
mods.immersiveengineering.ArcFurnace.removeRecipe(item);
furnace.remove(item);
}
mods.tconstruct.Melting.removeRecipe(<liquid:platinum>, <thermalfoundation:material:70>);
mods.tconstruct.Melting.removeRecipe(<liquid:platinum>, <techreborn:smalldust:38>);
mods.tconstruct.Melting.removeRecipe(<liquid:platinum>, <thermalfoundation:ore:6>);
mods.tcomplement.Overrides.removeRecipe(<liquid:platinum>, <thermalfoundation:material:70>);
mods.tcomplement.Overrides.removeRecipe(<liquid:platinum>, <techreborn:smalldust:38>);
mods.tcomplement.Overrides.removeRecipe(<liquid:platinum>, <thermalfoundation:ore:6>);
mods.tcomplement.highoven.HighOven.removeMeltingOverride(<liquid:platinum>, <thermalfoundation:material:70>);
mods.tcomplement.highoven.HighOven.removeMeltingOverride(<liquid:platinum>, <techreborn:smalldust:38>);
mods.tcomplement.highoven.HighOven.removeMeltingOverride(<liquid:platinum>, <thermalfoundation:ore:6>);
mods.embers.Melter.remove(<thermalfoundation:ore:6>);
mods.nuclearcraft.melter.removeRecipeWithInput(<thermalfoundation:material:70>);
mods.nuclearcraft.melter.removeRecipeWithInput(<thermalfoundation:ore:6>);
mods.thermalexpansion.Crucible.removeRecipe(<thermalfoundation:material:70>);
mods.thermalexpansion.Crucible.removeRecipe(<thermalfoundation:ore:6>);


//----------Tungsten
val TungstenOre = <ore:ingotTungsten>;
for item in TungstenOre.items{
mods.techreborn.blastFurnace.removeRecipe(item);
mods.immersiveengineering.ArcFurnace.removeRecipe(item);
furnace.remove(item);
}

mods.tconstruct.Melting.removeRecipe(<liquid:tungsten>, <techreborn:dust:55>);
mods.tconstruct.Melting.removeRecipe(<liquid:tungsten>, <techreborn:smalldust:55>);
mods.tconstruct.Melting.removeRecipe(<liquid:tungsten>, <techreborn:ore:8>);
mods.tcomplement.Overrides.removeRecipe(<liquid:tungsten>, <techreborn:dust:55>);
mods.tcomplement.Overrides.removeRecipe(<liquid:tungsten>, <techreborn:smalldust:55>);
mods.tcomplement.Overrides.removeRecipe(<liquid:tungsten>, <techreborn:ore:8>);
mods.tcomplement.highoven.HighOven.removeMeltingOverride(<liquid:tungsten>, <techreborn:dust:55>);
mods.tcomplement.highoven.HighOven.removeMeltingOverride(<liquid:tungsten>, <techreborn:smalldust:55>);
mods.tcomplement.highoven.HighOven.removeMeltingOverride(<liquid:tungsten>, <techreborn:ore:8>);
mods.embers.Melter.remove(<techreborn:ore:8>);
mods.nuclearcraft.melter.removeRecipeWithInput(<techreborn:ore:8>);
mods.nuclearcraft.melter.removeRecipeWithInput(<techreborn:dust:55>);
mods.thermalexpansion.Crucible.removeRecipe(<techreborn:ore:8>);
mods.thermalexpansion.Crucible.removeRecipe(<techreborn:dust:55>);

//----------Titanium
val TitaniumOre = <ore:ingotTitanium>;
val TitaniumDust =  <ore:dustTitanium>;
for item in TitaniumOre.items{
mods.techreborn.blastFurnace.removeRecipe(item);
mods.immersiveengineering.ArcFurnace.removeRecipe(item);
furnace.remove(item);
}


for item in TitaniumDust.items{
mods.tconstruct.Melting.removeRecipe(<liquid:titanium>, (item));
mods.tcomplement.Overrides.removeRecipe(<liquid:titanium>, (item));
mods.tcomplement.highoven.HighOven.removeMeltingOverride(<liquid:titanium>, (item));
mods.tconstruct.Melting.removeRecipe(<liquid:molten_titanium>, (item));
mods.tcomplement.Overrides.removeRecipe(<liquid:molten_titanium>, (item));
mods.tcomplement.highoven.HighOven.removeMeltingOverride(<liquid:molten_titanium>, (item));
}
mods.tconstruct.Melting.removeRecipe(<liquid:titanium>, <techreborn:smalldust:54>);
mods.tconstruct.Melting.removeRecipe(<liquid:titanium>, <libvulpes:ore0:8>);
mods.tconstruct.Melting.removeRecipe(<liquid:molten_titanium>, <techreborn:smalldust:54>);
mods.tconstruct.Melting.removeRecipe(<liquid:molten_titanium>, <libvulpes:ore0:8>);
mods.tcomplement.Overrides.removeRecipe(<liquid:molten_titanium>, <techreborn:smalldust:54>);
mods.tcomplement.Overrides.removeRecipe(<liquid:molten_titanium>, <libvulpes:ore0:8>);
mods.tcomplement.Overrides.removeRecipe(<liquid:titanium>, <techreborn:smalldust:54>);
mods.tcomplement.Overrides.removeRecipe(<liquid:titanium>, <libvulpes:ore0:8>);
mods.tcomplement.highoven.HighOven.removeMeltingOverride(<liquid:molten_titanium>, <techreborn:smalldust:54>);
mods.tcomplement.highoven.HighOven.removeMeltingOverride(<liquid:molten_titanium>, <libvulpes:ore0:8>);
mods.tcomplement.highoven.HighOven.removeMeltingOverride(<liquid:titanium>, <techreborn:smalldust:54>);
mods.tcomplement.highoven.HighOven.removeMeltingOverride(<liquid:titanium>, <libvulpes:ore0:8>);
mods.embers.Melter.remove(<libvulpes:ore0:8>);
mods.nuclearcraft.melter.removeRecipeWithInput(<libvulpes:ore0:8>);
mods.nuclearcraft.melter.removeRecipeWithInput(<techreborn:dust:54>);
mods.thermalexpansion.Crucible.removeRecipe(<libvulpes:ore0:8>);
mods.thermalexpansion.Crucible.removeRecipe(<techreborn:dust:54>);

//----------Iridium
val IridiumOre = <ore:ingotIridium>;
for item in IridiumOre.items{
mods.techreborn.blastFurnace.removeRecipe(item);
mods.immersiveengineering.ArcFurnace.removeRecipe(item);
furnace.remove(item);
}

mods.tconstruct.Melting.removeRecipe(<liquid:iridium>, <thermalfoundation:material:71>);
mods.tconstruct.Melting.removeRecipe(<liquid:iridium>, <techreborn:smalldust:66>);
mods.tconstruct.Melting.removeRecipe(<liquid:iridium>, <thermalfoundation:ore:7>);
mods.tcomplement.Overrides.removeRecipe(<liquid:iridium>, <thermalfoundation:material:71>);
mods.tcomplement.Overrides.removeRecipe(<liquid:iridium>, <techreborn:smalldust:66>);
mods.tcomplement.Overrides.removeRecipe(<liquid:iridium>, <thermalfoundation:ore:7>);
mods.tcomplement.highoven.HighOven.removeMeltingOverride(<liquid:iridium>, <thermalfoundation:material:71>);
mods.tcomplement.highoven.HighOven.removeMeltingOverride(<liquid:iridium>, <techreborn:smalldust:66>);
mods.tcomplement.highoven.HighOven.removeMeltingOverride(<liquid:iridium>, <thermalfoundation:ore:7>);
mods.embers.Melter.remove(<thermalfoundation:ore:7>);
mods.nuclearcraft.melter.removeRecipeWithInput(<thermalfoundation:ore:7>);
mods.nuclearcraft.melter.removeRecipeWithInput(<thermalfoundation:material:71>);
mods.thermalexpansion.Crucible.removeRecipe(<thermalfoundation:ore:7>);
mods.thermalexpansion.Crucible.removeRecipe(<thermalfoundation:material:71>);


##=======================================================
##ORE PROCESSING
##=======================================================

//Iron
mods.rockhounding_chemistry.MineralSizer.add(<minecraft:iron_ore>, <jaopca:item_crushedlumpiron>*2);
mods.rockhounding_chemistry.LeachingVat.add(<jaopca:item_crushedlumpiron>, [<jaopca:item_leachedshardiron>*2], [4.21F], <liquid:leachate>*50);
mods.rockhounding_chemistry.ChemicalExtractor.add("Oxide", <jaopca:item_leachedshardiron>, ["dustIron", "dustNickel", "dustCarbon", "dustPhosphorous"], [200, 25, 9, 6]);
furnace.addRecipe(<minecraft:iron_ingot>, <jaopca:item_crushedlumpiron>, 0.1);
furnace.addRecipe(<minecraft:iron_ingot>, <jaopca:item_leachedshardiron>, 0.1);

//Gold
mods.rockhounding_chemistry.MineralSizer.add(<minecraft:gold_ore>, <jaopca:item_crushedlumpgold>*2);
mods.rockhounding_chemistry.LeachingVat.add(<jaopca:item_crushedlumpgold>, [<jaopca:item_leachedshardgold>*2], [3.85F], <liquid:leachate>*50);
mods.rockhounding_chemistry.ChemicalExtractor.add("Native", <jaopca:item_leachedshardgold>, ["dustGold", "dustSilver", "dustCopper", "dustNickel"], [200, 15, 12, 10]);
furnace.addRecipe(<minecraft:gold_ingot>, <jaopca:item_crushedlumpgold>, 0.1);
furnace.addRecipe(<minecraft:gold_ingot>, <jaopca:item_leachedshardgold>, 0.1);

//Copper
mods.rockhounding_chemistry.MineralSizer.add(<thermalfoundation:ore>, <jaopca:item_crushedlumpcopper>*2);
mods.rockhounding_chemistry.LeachingVat.add(<jaopca:item_crushedlumpcopper>, [<jaopca:item_leachedshardcopper>*2], [5.92F], <liquid:leachate>*50);
mods.rockhounding_chemistry.ChemicalExtractor.add("Oxide", <jaopca:item_leachedshardcopper>, ["dustCopper", "dustIron", "dustSulfur"], [200, 25, 8]);
furnace.addRecipe(<thermalfoundation:material:128>, <jaopca:item_crushedlumpcopper>, 0.1);
furnace.addRecipe(<thermalfoundation:material:128>, <jaopca:item_leachedshardcopper>, 0.1);

//Tin
mods.rockhounding_chemistry.MineralSizer.add(<thermalfoundation:ore:1>, <jaopca:item_crushedlumptin>*2);
mods.rockhounding_chemistry.LeachingVat.add(<jaopca:item_crushedlumptin>, [<jaopca:item_leachedshardtin>*2], [6.08F], <liquid:leachate>*50);
mods.rockhounding_chemistry.ChemicalExtractor.add("Oxide", <jaopca:item_leachedshardtin>, ["dustTin", "dustLead", "dustArsenic"], [200, 25, 5]);
furnace.addRecipe(<thermalfoundation:material:129>, <jaopca:item_crushedlumptin>, 0.1);
furnace.addRecipe(<thermalfoundation:material:129>, <jaopca:item_leachedshardtin>, 0.1);

//Silver
mods.rockhounding_chemistry.MineralSizer.add(<thermalfoundation:ore:2>, <jaopca:item_crushedlumpsilver>*2);
mods.rockhounding_chemistry.LeachingVat.add(<jaopca:item_crushedlumpsilver>, [<jaopca:item_leachedshardsilver>*2], [3.20F], <liquid:leachate>*50);
mods.rockhounding_chemistry.ChemicalExtractor.add("Native", <jaopca:item_leachedshardsilver>, ["dustSilver", "dustLead", "dustSulfur", "dustAntimony"], [200, 25, 10, 5]);
furnace.addRecipe(<thermalfoundation:material:130>, <jaopca:item_crushedlumpsilver>, 0.1);
furnace.addRecipe(<thermalfoundation:material:130>, <jaopca:item_leachedshardsilver>, 0.1);

//Lead
mods.rockhounding_chemistry.MineralSizer.add(<thermalfoundation:ore:3>, <jaopca:item_crushedlumplead>*2);
mods.rockhounding_chemistry.LeachingVat.add(<jaopca:item_crushedlumplead>, [<jaopca:item_leachedshardlead>*2], [4.20F], <liquid:leachate>*50);
mods.rockhounding_chemistry.ChemicalExtractor.add("Sulfide", <jaopca:item_leachedshardlead>, ["dustLead", "dustSilver", "dustZinc", "dustBismuth"], [200, 20, 15, 5]);
furnace.addRecipe(<thermalfoundation:material:131>, <jaopca:item_crushedlumplead>, 0.1);
furnace.addRecipe(<thermalfoundation:material:131>, <jaopca:item_leachedshardlead>, 0.1);

//Nickel
mods.rockhounding_chemistry.MineralSizer.add(<thermalfoundation:ore:5>, <jaopca:item_crushedlumpnickel>*2);
mods.rockhounding_chemistry.LeachingVat.add(<jaopca:item_crushedlumpnickel>, [<jaopca:item_leachedshardnickel>*2], [4.69F], <liquid:leachate>*50);
mods.rockhounding_chemistry.ChemicalExtractor.add("Native", <jaopca:item_leachedshardnickel>, ["dustNickel", "dustPlatinum", "dustCopper", "dustCobalt"], [200, 25, 15, 10]);
furnace.addRecipe(<thermalfoundation:material:133>, <jaopca:item_crushedlumpnickel>, 0.1);
furnace.addRecipe(<thermalfoundation:material:133>, <jaopca:item_leachedshardnickel>, 0.1);

//Octine
mods.rockhounding_chemistry.MineralSizer.add(<thebetweenlands:octine_ore>, <jaopca:item_crushedlumpoctine>*2);
mods.rockhounding_chemistry.LeachingVat.add(<jaopca:item_crushedlumpoctine>, [<jaopca:item_leachedshardoctine>*2], [2.83F], <liquid:leachate>*50);
mods.rockhounding_chemistry.ChemicalExtractor.add("Sulfide", <jaopca:item_leachedshardoctine>, ["dustOctine", "dustBlaze", "dustPhosphorus"], [200, 25, 15]);
furnace.addRecipe(<thebetweenlands:octine_ingot>, <jaopca:item_crushedlumpoctine>, 0.1);
furnace.addRecipe(<thebetweenlands:octine_ingot>, <jaopca:item_leachedshardoctine>, 0.1);

//Cobalt
mods.rockhounding_chemistry.MineralSizer.add(<tconstruct:ore>, <jaopca:item_crushedlumpcobalt>*2);
mods.rockhounding_chemistry.LeachingVat.add(<jaopca:item_crushedlumpcobalt>, [<jaopca:item_leachedshardcobalt>*2], [4.21F], <liquid:leachate>*50);
mods.rockhounding_chemistry.ChemicalExtractor.add("Oxide", <jaopca:item_leachedshardcobalt>, ["dustCobalt", "dustCopper", "dustNickel"], [200, 20, 15]);
furnace.addRecipe(<tconstruct:ingots>, <jaopca:item_crushedlumpcobalt>, 0.1);
furnace.addRecipe(<tconstruct:ingots>, <jaopca:item_leachedshardcobalt>, 0.1);

//Ardite
mods.rockhounding_chemistry.MineralSizer.add(<tconstruct:ore:1>, <jaopca:item_crushedlumpardite>*2);
mods.rockhounding_chemistry.LeachingVat.add(<jaopca:item_crushedlumpardite>, [<jaopca:item_leachedshardardite>*2], [3.80F], <liquid:leachate>*50);
mods.rockhounding_chemistry.ChemicalExtractor.add("Sulfide", <jaopca:item_leachedshardardite>, ["dustArdite", "dustGlowstone", "dustSulfur"], [200, 25, 10]);
furnace.addRecipe(<tconstruct:ingots:1>, <jaopca:item_crushedlumpardite>, 0.1);
furnace.addRecipe(<tconstruct:ingots:1>, <jaopca:item_leachedshardardite>, 0.1);

//Syrmorite
mods.rockhounding_chemistry.MineralSizer.add(<thebetweenlands:syrmorite_ore>, <jaopca:item_crushedlumpsyrmorite>*2);
mods.rockhounding_chemistry.LeachingVat.add(<jaopca:item_crushedlumpsyrmorite>, [<jaopca:item_leachedshardsyrmorite>*2], [7.68F], <liquid:leachate>*50);
mods.rockhounding_chemistry.ChemicalExtractor.add("Sulfide", <jaopca:item_leachedshardsyrmorite>, ["dustSyrmorite", "dustVanadium", "dustGold"], [200, 20, 12]);
furnace.addRecipe(<thebetweenlands:items_misc:11>, <jaopca:item_crushedlumpsyrmorite>, 0.1);
furnace.addRecipe(<thebetweenlands:items_misc:11>, <jaopca:item_leachedshardsyrmorite>, 0.1);


//Uranium
mods.rockhounding_chemistry.MineralSizer.add(<nuclearcraft:ore:4>, <jaopca:item_crushedlumpuranium>*2);
mods.rockhounding_chemistry.LeachingVat.add(<jaopca:item_crushedlumpuranium>, [<jaopca:item_leachedsharduranium>*2], [4.99F], <liquid:leachate>*50);
mods.rockhounding_chemistry.ChemicalExtractor.add("Sulfide", <jaopca:item_leachedsharduranium>, ["dustYellowcake", "dustThorium"], [200, 40]);
furnace.addRecipe(<immersiveengineering:metal:5>, <jaopca:item_crushedlumpuranium>, 0.1);
furnace.addRecipe(<immersiveengineering:metal:5>, <jaopca:item_leachedsharduranium>, 0.1);
furnace.addRecipe(<immersiveengineering:metal:5>, <rockhounding_chemistry:chemical_dusts:55>, 0.1);


//Thorium
mods.rockhounding_chemistry.MineralSizer.add(<nuclearcraft:ore:3>, <jaopca:item_crushedlumpthorium>*2);
mods.rockhounding_chemistry.LeachingVat.add(<jaopca:item_crushedlumpthorium>, [<jaopca:item_leachedshardthorium>*2], [6.00F], <liquid:leachate>*50);
mods.rockhounding_chemistry.ChemicalExtractor.add("Sulfide", <jaopca:item_leachedshardthorium>, ["dustThorium", "dustYellowcake"], [200, 50]);
furnace.addRecipe(<nuclearcraft:ingot:3>, <jaopca:item_crushedlumpthorium>, 0.1);
furnace.addRecipe(<nuclearcraft:ingot:3>, <jaopca:item_leachedshardthorium>, 0.1);

//Magnesium
mods.rockhounding_chemistry.MineralSizer.add(<nuclearcraft:ore:7>, <jaopca:item_crushedlumpmagnesium>*2);
mods.rockhounding_chemistry.LeachingVat.add(<jaopca:item_crushedlumpmagnesium>, [<jaopca:item_leachedshardmagnesium>*2], [3.73F], <liquid:leachate>*50);
mods.rockhounding_chemistry.ChemicalExtractor.add("Sulfide", <jaopca:item_leachedshardmagnesium>, ["dustMagnesium", "ore:dustMolybdenum"], [200, 25]);
furnace.addRecipe(<nuclearcraft:ingot:7>, <jaopca:item_crushedlumpmagnesium>, 0.1);
furnace.addRecipe(<nuclearcraft:ingot:7>, <jaopca:item_leachedshardmagnesium>, 0.1);

//Lithium
mods.rockhounding_chemistry.MineralSizer.add(<nuclearcraft:ore:6>, <jaopca:item_crushedlumplithium>*2);
mods.rockhounding_chemistry.LeachingVat.add(<jaopca:item_crushedlumplithium>, [<jaopca:item_leachedshardlithium>*2], [6.32F], <liquid:leachate>*50);
mods.rockhounding_chemistry.ChemicalExtractor.add("Sulfide", <jaopca:item_leachedshardlithium>, ["dustLithium", "dustChrome"], [200, 25]);
furnace.addRecipe(<nuclearcraft:ingot:6>, <jaopca:item_crushedlumplithium>, 0.1);
furnace.addRecipe(<nuclearcraft:ingot:6>, <jaopca:item_leachedshardlithium>, 0.1);

//Boron
mods.rockhounding_chemistry.MineralSizer.add(<nuclearcraft:ore:5>, <jaopca:item_crushedlumpboron>*2);
mods.rockhounding_chemistry.LeachingVat.add(<jaopca:item_crushedlumpboron>, [<jaopca:item_leachedshardboron>*2], [4.57F], <liquid:leachate>*50);
mods.rockhounding_chemistry.ChemicalExtractor.add("Sulfide", <jaopca:item_leachedshardboron>, ["dustBoron"], [200]);
furnace.addRecipe(<nuclearcraft:ingot:5>, <jaopca:item_crushedlumpboron>, 0.1);
furnace.addRecipe(<nuclearcraft:ingot:5>, <jaopca:item_leachedshardboron>, 0.1);


//Adamantine
mods.rockhounding_chemistry.MineralSizer.add(<contenttweaker:sub_block_holder_0:8>, <jaopca:item_crushedlumpadamantine>*2);
mods.rockhounding_chemistry.LeachingVat.add(<jaopca:item_crushedlumpadamantine>, [<jaopca:item_leachedshardadamantine>*2], [3.73F], <liquid:leachate>*50);
mods.rockhounding_chemistry.ChemicalExtractor.add("Native", <jaopca:item_leachedshardadamantine>, ["dustAdamantine", "dustChrome"], [200, 34]);
furnace.addRecipe(<contenttweaker:material_part:13>, <jaopca:item_crushedlumpadamantine>, 0.1);
furnace.addRecipe(<contenttweaker:material_part:13>, <jaopca:item_leachedshardadamantine>, 0.1);

//Orichalcum
mods.rockhounding_chemistry.MineralSizer.add(<contenttweaker:sub_block_holder_0:7>, <jaopca:item_crushedlumporichalcum>*2);
mods.rockhounding_chemistry.LeachingVat.add(<jaopca:item_crushedlumporichalcum>, [<jaopca:item_leachedshardorichalcum>*2], [6.32F], <liquid:leachate>*50);
mods.rockhounding_chemistry.ChemicalExtractor.add("Native", <jaopca:item_leachedshardorichalcum>, ["dustOrichalcum"], [200]);
furnace.addRecipe(<contenttweaker:material_part:35>, <jaopca:item_crushedlumporichalcum>, 0.1);
furnace.addRecipe(<contenttweaker:material_part:35>, <jaopca:item_leachedshardorichalcum>, 0.1);

//Palladium
mods.rockhounding_chemistry.MineralSizer.add(<contenttweaker:sub_block_holder_0:3>, <jaopca:item_crushedlumppalladium>*2);
mods.rockhounding_chemistry.LeachingVat.add(<jaopca:item_crushedlumppalladium>, [<jaopca:item_leachedshardpalladium>*2], [4.57F], <liquid:leachate>*50);
mods.rockhounding_chemistry.ChemicalExtractor.add("Native", <jaopca:item_leachedshardpalladium>, ["dustPalladium"], [200]);
furnace.addRecipe(<contenttweaker:material_part:45>, <jaopca:item_crushedlumppalladium>, 0.1);
furnace.addRecipe(<contenttweaker:material_part:45>, <jaopca:item_leachedshardpalladium>, 0.1);

//Starmetal
mods.rockhounding_chemistry.MineralSizer.add(<astralsorcery:blockcustomore:1>, <jaopca:item_crushedlumpastralstarmetal>*2);
mods.rockhounding_chemistry.LeachingVat.add(<jaopca:item_crushedlumpastralstarmetal>, [<jaopca:item_leachedshardastralstarmetal>*2], [4.57F], <liquid:leachate>*50);
mods.rockhounding_chemistry.ChemicalExtractor.add("Native", <jaopca:item_leachedshardastralstarmetal>, ["dustAstralStarmetal", "ore:dustTitanium"], [200, 18]);
furnace.addRecipe(<astralsorcery:itemcraftingcomponent:1>, <jaopca:item_crushedlumpastralstarmetal>, 0.1);
furnace.addRecipe(<astralsorcery:itemcraftingcomponent:1>, <jaopca:item_leachedshardastralstarmetal>, 0.1);

//Pyrite
mods.rockhounding_chemistry.LeachingVat.add(<techreborn:ore:5>, [<rockhounding_chemistry:sulfide_shards:6>*8], [5.1F], <liquid:leachate>*200);

//Galena
mods.rockhounding_chemistry.LeachingVat.add(<techreborn:ore>, [<rockhounding_chemistry:sulfide_shards:3>*8], [7.4F], <liquid:leachate>*200);

//Sphalerite
mods.rockhounding_chemistry.LeachingVat.add(<techreborn:ore:7>, [<rockhounding_chemistry:sulfide_shards:9>*8], [4.05F], <liquid:leachate>*200);

//mods.techreborn.blastFurnace.removeInputRecipe(IIngredient iIngredient)
// 3880 is max heat

////////////////////////////////////////
//Aluminum
////////////////////////////////////////
mods.rockhounding_chemistry.MineralSizer.add(<thermalfoundation:ore:4>, <jaopca:item_crushedlumpaluminium>*2);
mods.rockhounding_chemistry.LeachingVat.add(<jaopca:item_crushedlumpaluminium>, [<jaopca:item_leachedshardaluminium>*2], [4.88F], <liquid:leachate>*50);
mods.rockhounding_chemistry.ChemicalExtractor.add("Oxide", <jaopca:item_leachedshardaluminium>, ["dustAluminum", "dustIron", "dustTitanium"], [200, 25, 10]);
/*furnace.addRecipe(<thermalfoundation:material:132>, <jaopca:item_crushedlumpaluminium>, 0.1);
furnace.addRecipe(<thermalfoundation:material:132>, <jaopca:item_leachedshardaluminium>, 0.1);*/

mods.techreborn.blastFurnace.addRecipe(<thermalfoundation:material:132>, null, <thermalfoundation:material:68>, null, 100, 20, 1500);
mods.techreborn.blastFurnace.addRecipe(<thermalfoundation:material:132>*2, null, <thermalfoundation:ore:4>, null, 100, 20, 1500);
mods.techreborn.blastFurnace.addRecipe(<thermalfoundation:material:132>, null, <jaopca:item_leachedshardaluminium>, null, 100, 20, 1500);
mods.techreborn.blastFurnace.addRecipe(<thermalfoundation:material:132>, null, <jaopca:item_crushedlumpaluminium>, null, 100, 20, 1500);
////////////////////////////////////////
//Platinum
////////////////////////////////////////
mods.rockhounding_chemistry.MineralSizer.add(<techreborn:ore:9>, <jaopca:item_crushedlumpplatinum>*2);
mods.rockhounding_chemistry.MineralSizer.add(<thermalfoundation:ore:6>, <jaopca:item_crushedlumpplatinum>*2);
mods.rockhounding_chemistry.LeachingVat.add(<jaopca:item_crushedlumpplatinum>, [<jaopca:item_leachedshardplatinum>*2], [7.59F], <liquid:leachate>*50);
mods.rockhounding_chemistry.ChemicalExtractor.add("Sulfide", <jaopca:item_leachedshardplatinum>, ["dustPlatinum", "dustOsmium", "dustIridium"], [200, 20, 15]);

mods.techreborn.blastFurnace.addRecipe(<thermalfoundation:material:134>, null, <ore:dustPlatinum>, null, 1200, 50, 2000);
mods.techreborn.blastFurnace.addRecipe(<thermalfoundation:material:134>*2, null, <techreborn:ore:9>, null, 1200, 60, 2000);
mods.techreborn.blastFurnace.addRecipe(<thermalfoundation:material:134>*2, null, <ore:orePlatinum>, null, 1200, 60, 2000);
mods.techreborn.blastFurnace.addRecipe(<thermalfoundation:material:134>, null, <ore:crushedlumpPlatinum>, null, 1200, 50, 2000);
mods.techreborn.blastFurnace.addRecipe(<thermalfoundation:material:134>, null, <ore:leachedshardPlatinum>, null, 1200, 50, 2000);
////////////////////////////////////////
//Osmium
////////////////////////////////////////
mods.rockhounding_chemistry.MineralSizer.add(<mekanism:oreblock>, <jaopca:item_crushedlumposmium>*2);
mods.rockhounding_chemistry.LeachingVat.add(<jaopca:item_crushedlumposmium>, [<jaopca:item_leachedshardosmium>*2], [2.50F], <liquid:leachate>*50);
mods.rockhounding_chemistry.ChemicalExtractor.add("Native", <jaopca:item_leachedshardosmium>, ["dustOsmium", "dustIridium", "dustPlatinum"], [200, 20, 15]);

mods.techreborn.blastFurnace.addRecipe(<mekanism:ingot:1>, null, <ore:dustOsmium>, null, 600, 40, 2000);
mods.techreborn.blastFurnace.addRecipe(<mekanism:ingot:1>*2, null, <mekanism:oreblock>, null, 600, 40, 2000);
mods.techreborn.blastFurnace.addRecipe(<mekanism:ingot:1>, null, <ore:crushedlumpOsmium>, null, 600, 40, 2000);
mods.techreborn.blastFurnace.addRecipe(<mekanism:ingot:1>, null, <ore:leachedshardOsmium>, null, 600, 40, 2000);
////////////////////////////////////////
//Tungsten
////////////////////////////////////////
mods.rockhounding_chemistry.MineralSizer.add(<techreborn:ore:8>, <jaopca:item_crushedlumptungsten>*2);
mods.rockhounding_chemistry.LeachingVat.add(<jaopca:item_crushedlumptungsten>, [<jaopca:item_leachedshardtungsten>*2], [5.13F], <liquid:leachate>*50);
mods.rockhounding_chemistry.ChemicalExtractor.add("Sulfide", <jaopca:item_leachedshardtungsten>, ["dustTungsten", "dustTin", "dustGold"], [200, 20, 7]);

mods.techreborn.blastFurnace.addRecipe(<techreborn:ingot:15>*2, null, <ore:oreTungsten>, null, 1800, 100, 2500);
mods.techreborn.blastFurnace.addRecipe(<techreborn:ingot:15>, null, <ore:dustTungsten>, null, 1800, 80, 2500);
mods.techreborn.blastFurnace.addRecipe(<techreborn:ingot:15>, null, <ore:crushedlumpTungsten>, null, 1800, 80, 2500);
mods.techreborn.blastFurnace.addRecipe(<techreborn:ingot:15>, null, <ore:leachedshardTungsten>, null, 1800, 80, 2500);
////////////////////////////////////////
//Titanium
////////////////////////////////////////
mods.rockhounding_chemistry.LeachingVat.add(<libvulpes:ore0:8>, [<rockhounding_chemistry:oxide_shards:22>*8], [4.25F], <liquid:leachate>*200);

mods.techreborn.blastFurnace.addRecipe(<libvulpes:productingot:7>*2, null, <ore:oreTitanium>, null, 1800, 80, 2500);
mods.techreborn.blastFurnace.addRecipe(<libvulpes:productingot:7>, null, <ore:dustTitanium>, null, 1800, 80, 2500);
////////////////////////////////////////
//Iridium
////////////////////////////////////////
mods.rockhounding_chemistry.MineralSizer.add(<thermalfoundation:ore:7>, <jaopca:item_crushedlumpiridium>*2);
mods.rockhounding_chemistry.LeachingVat.add(<jaopca:item_crushedlumpiridium>, [<jaopca:item_leachedshardiridium>*2], [20.20F], <liquid:leachate>*50);
mods.rockhounding_chemistry.ChemicalExtractor.add("Native", <jaopca:item_leachedshardiridium>, ["dustIridium", "dustOsmium", "dustPlatinum"], [200, 25, 15]);

mods.techreborn.blastFurnace.addRecipe(<thermalfoundation:material:135>*2, null, <ore:oreIridium>, null, 2000, 500, 3000);
mods.techreborn.blastFurnace.addRecipe(<thermalfoundation:material:135>, null, <ore:dustIridium>, null, 2000, 500, 3000);
mods.techreborn.blastFurnace.addRecipe(<thermalfoundation:material:135>, null, <ore:crushedlumpIridium>, null, 2000, 500, 3000);
mods.techreborn.blastFurnace.addRecipe(<thermalfoundation:material:135>, null, <ore:leachedshardIridium>, null, 2000, 500, 3000);
////////////////////////////////////////
##########################################################################################
print("==================== end of Metal Processing.zs ====================");
