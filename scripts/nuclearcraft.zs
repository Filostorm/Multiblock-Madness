
import crafttweaker.item.IItemStack;
import crafttweaker.liquid.ILiquidStack;
import mods.techreborn.blastFurnace;
import mods.nuclearcraft.IngotFormer;
import mods.nuclearcraft.Infuser;
import mods.thermalexpansion.InductionSmelter;
import mods.nuclearcraft.AlloyFurnace;
import mods.nuclearcraft.Separator;
import mods.nuclearcraft.Centrifuge;
import mods.nuclearcraft.Electrolyzer;
print("==================== loading nuclearcraft.zs ====================");
##########################################################################################

val itemstoRemove =
[
<nuclearcraft:manufactory>,
<nuclearcraft:alloy_furnace>,
<nuclearcraft:part:10>,
<nuclearcraft:part:4>,
<nuclearcraft:part:3>,
<nuclearcraft:part:2>,
<nuclearcraft:compound:10>,
]
 as IItemStack[];

for item in itemstoRemove {
	recipes.remove(item);
}


<nuclearcraft:fission_irradiator>.addTooltip(format.green("Refer to the Nuclear Engineering chapter"));

//sink
recipes.addShaped(<cookingforblockheads:sink>, [[<thermalfoundation:material:32>, <thermalfoundation:material:32>, <thermalfoundation:material:32>],[<minecraft:hardened_clay>, <nuclearcraft:water_source_compact>, <minecraft:hardened_clay>], [<minecraft:hardened_clay>, <minecraft:hardened_clay>, <minecraft:hardened_clay>]]);


# [Steel Chassis] from [Simple Machine Chassis][+3]
craft.remake(<nuclearcraft:part:12> * 2, ["pretty",
  "╱ □ ╱",
  "п S п",
  "╱ □ ╱"], {
  "╱": <ore:stickTough> | <ore:rodTough>, # Tough Rod
  "□": <ore:plateStainlessSteel>,        # Stainless Steel Plate
  "п": <ore:plateTitaniumAluminide>,      # Titanium Aluminide Plate
  "S": <ore:itemSimpleMachineChassi>,     # Simple Machine Chassis
});

##Manufactory
##------------

recipes.addShaped(<nuclearcraft:manufactory>, [[<thermalfoundation:material:323>, <minecraft:piston>, <thermalfoundation:material:323>],[<minecraft:flint>, <nuclearcraft:part:10>, <minecraft:flint>], [<thermalfoundation:material:323>, <nuclearcraft:part:4>, <thermalfoundation:material:323>]]);

recipes.addShaped(<contenttweaker:plating_basic> * 4, [[null, <nuclearcraft:part>, null],[<nuclearcraft:part>, null, <nuclearcraft:part>], [null, <nuclearcraft:part>, null]]);
recipes.addShaped(<nuclearcraft:alloy_furnace>, [[<nuclearcraft:part>, <minecraft:redstone>, <nuclearcraft:part>],[<minecraft:brick>, <nuclearcraft:part:10>, <minecraft:brick>], [<nuclearcraft:part>, <nuclearcraft:part:4>, <nuclearcraft:part>]]);

//mods.nuclearcraft.pressurizer.addRecipe([itemInput, itemOutput, @Optional double timeMultiplier, @Optional double powerMultiplier, @Optional double processRadiation]);
//mods.nuclearcraft.pressurizer.addRecipe([<enderore:dust_ender>, <minecraft:ender_pearl>, 5, 10]);

recipes.remove(<nuclearcraft:dominos>);
mods.extendedcrafting.TableCrafting.addShaped(<nuclearcraft:dominos>, [
    [<actuallyadditions:item_misc:4>, <actuallyadditions:item_misc:4>, <actuallyadditions:item_misc:4>, <actuallyadditions:item_misc:4>, <actuallyadditions:item_misc:4>],
    [<actuallyadditions:item_misc:4>, <xlfoodmod:cheese>, <ore:mushroomAny>, <xlfoodmod:sausage>, <actuallyadditions:item_misc:4>],
    [<actuallyadditions:item_misc:4>, <ore:mushroomAny>, <xlfoodmod:bacon>, <ore:mushroomAny>, <actuallyadditions:item_misc:4>],
    [<actuallyadditions:item_misc:4>, <xlfoodmod:sausage>, <ore:mushroomAny>, <xlfoodmod:cheese>, <actuallyadditions:item_misc:4>],
    [<actuallyadditions:item_misc:4>, <actuallyadditions:item_misc:4>, <actuallyadditions:item_misc:4>, <actuallyadditions:item_misc:4>, <actuallyadditions:item_misc:4>]
]);  

//Ender Pearl
IngotFormer.addRecipe(<liquid:ender>*250, <minecraft:ender_pearl>);


blastFurnace.addRecipe(<nuclearcraft:ingot:14>, null, <nuclearcraft:dust:14>, null, 200, 256, 1500);

//Solenoid
recipes.addShaped(<nuclearcraft:part:4> * 2, [[null, <powersuits:powerarmorcomponent>, <immersiveengineering:material:2>],[<powersuits:powerarmorcomponent>, <immersiveengineering:material:2>, <powersuits:powerarmorcomponent>], [<immersiveengineering:material:2>, <powersuits:powerarmorcomponent>, null]]);


//Rad Stuff
Infuser.removeRecipeWithOutput(<nuclearcraft:radaway>);
Infuser.removeRecipeWithOutput(<nuclearcraft:radaway_slow>);
Infuser.addRecipe(<mekanism:polyethene:2>*2, <liquid:radaway>*250, <nuclearcraft:radaway>);
Infuser.addRecipe(<mekanism:polyethene:2>*2, <liquid:radaway_slow>*250, <nuclearcraft:radaway_slow>);

// DU & Elite Plating
recipes.addShaped(<nuclearcraft:part:3>, [[<nuclearcraft:compound:1>, <ore:ingotMagnesiumDiboride>, <nuclearcraft:compound:1>],[<ore:ingotThermoconducting>, <nuclearcraft:part:2>, <ore:ingotThermoconducting>], [<nuclearcraft:compound:1>, <ore:ingotMagnesiumDiboride>, <nuclearcraft:compound:1>]]);
recipes.addShaped(<nuclearcraft:part:2>, [[<mekanism:polyethene:2>, <nuclearcraft:uranium:10>, <mekanism:polyethene:2>],[<nuclearcraft:uranium:10>, <nuclearcraft:part:1>, <nuclearcraft:uranium:10>], [<mekanism:polyethene:2>, <nuclearcraft:uranium:10>, <mekanism:polyethene:2>]]);


//SICSIC
Infuser.addRecipe(<powersuits:powerarmorcomponent:14>, <liquid:silicon> * 288, <nuclearcraft:part:13>, 1.0, 2.0);
Infuser.addRecipe(<powersuits:powerarmorcomponent:14>, <liquid:fluidsilicon> * 288, <nuclearcraft:part:13>, 1.0, 2.0);
blastFurnace.addRecipe(<nuclearcraft:alloy:14>, null, <nuclearcraft:alloy:13>, <nuclearcraft:part:13>, 600, 768, 3000);

//Carbon Blend
recipes.addShapeless(<nuclearcraft:compound:10> * 2, [<ore:dustCarbon>,<ore:dustManganese>]);

// HSLA Steel
AlloyFurnace.removeRecipeWithOutput(<nuclearcraft:alloy:15>*16);
//InductionSmelter.removeRecipe(<minecraft:iron_ingot>*15, <nuclearcraft:compound:10>); 

InductionSmelter.addRecipe(<nuclearcraft:alloy:15>*4, <techreborn:ingot:19>*4, <nuclearcraft:compound:10>, 100000);
AlloyFurnace.addRecipe(<techreborn:ingot:19>*4, <nuclearcraft:compound:10>, <nuclearcraft:alloy:15>*4);

// Removing Oxide and Nitride fuel smelting
val fuelsmeltingtoremove =
[
<nuclearcraft:pellet_thorium>,
<nuclearcraft:pellet_uranium>,
<nuclearcraft:pellet_uranium:2>,
<nuclearcraft:pellet_uranium:4>,
<nuclearcraft:pellet_uranium:6>,
<nuclearcraft:pellet_neptunium>,
<nuclearcraft:pellet_neptunium:2>,
<nuclearcraft:pellet_plutonium>,
<nuclearcraft:pellet_plutonium:2>,
<nuclearcraft:pellet_curium:6>,
<nuclearcraft:pellet_curium:8>,
<nuclearcraft:pellet_curium:10>,
<nuclearcraft:pellet_berkelium>,
<nuclearcraft:pellet_berkelium:2>,
<nuclearcraft:pellet_californium>,
<nuclearcraft:pellet_californium:2>,
<nuclearcraft:pellet_californium:4>,
<nuclearcraft:pellet_californium:6>,
<nuclearcraft:pellet_plutonium:4>,
<nuclearcraft:pellet_plutonium:6>,
<nuclearcraft:pellet_mixed>,
<nuclearcraft:pellet_mixed:2>,
<nuclearcraft:pellet_americium>,
<nuclearcraft:pellet_americium:2>,
<nuclearcraft:pellet_curium>,
<nuclearcraft:pellet_curium:2>,
<nuclearcraft:pellet_curium:4>,
<qmd:fuel_copernicium:2>,
<qmd:fuel_copernicium:1>,
]
 as IItemStack[];

for fuel in fuelsmeltingtoremove {
	furnace.remove(fuel);
}

// Removing Fuel Separation
val fuelseparationtoremove =
[
<nuclearcraft:pellet_uranium> * 9,
<nuclearcraft:pellet_uranium:2> * 9,
<nuclearcraft:pellet_uranium:4> * 9,
<nuclearcraft:pellet_uranium:6> * 9,
<nuclearcraft:pellet_neptunium> * 9,
<nuclearcraft:pellet_neptunium:2> * 9,
<nuclearcraft:pellet_plutonium> * 9,
<nuclearcraft:pellet_plutonium:2> * 9,
<nuclearcraft:pellet_curium:6> * 9,
<nuclearcraft:pellet_curium:8> * 9,
<nuclearcraft:pellet_curium:10> * 9,
<nuclearcraft:pellet_berkelium> * 9,
<nuclearcraft:pellet_berkelium:2> * 9,
<nuclearcraft:pellet_californium> * 9,
<nuclearcraft:pellet_californium:2> * 9,
<nuclearcraft:pellet_californium:4> * 9,
<nuclearcraft:pellet_californium:6> * 9,
<nuclearcraft:pellet_plutonium:4> * 9,
<nuclearcraft:pellet_plutonium:6> * 9,
<nuclearcraft:pellet_mixed> * 9,
<nuclearcraft:pellet_mixed:2> * 9,
<nuclearcraft:pellet_americium> * 9,
<nuclearcraft:pellet_americium:2> * 9,
<nuclearcraft:pellet_curium> * 9,
<nuclearcraft:pellet_curium:2> * 9,
<nuclearcraft:pellet_curium:4> * 9,
<nuclearcraft:fuel_uranium:1> * 9,
<nuclearcraft:fuel_uranium:5> * 9,
<nuclearcraft:fuel_uranium:9> * 9,
<nuclearcraft:fuel_uranium:13> * 9,
<nuclearcraft:fuel_neptunium:1> * 9,
<nuclearcraft:fuel_neptunium:5> * 9,
<nuclearcraft:fuel_plutonium:1> * 9,
<nuclearcraft:fuel_plutonium:5> * 9,
<nuclearcraft:fuel_curium:13> * 9,
<nuclearcraft:fuel_curium:17> * 9,
<nuclearcraft:fuel_curium:21> * 9,
<nuclearcraft:fuel_berkelium:1> * 9,
<nuclearcraft:fuel_berkelium:5> * 9,
<nuclearcraft:fuel_californium:1> * 9,
<nuclearcraft:fuel_californium:5> * 9,
<nuclearcraft:fuel_californium:9> * 9,
<nuclearcraft:fuel_californium:13> * 9,
<nuclearcraft:fuel_plutonium:9> * 9,
<nuclearcraft:fuel_plutonium:13> * 9,
<nuclearcraft:fuel_mixed:1> * 9,
<nuclearcraft:fuel_mixed:5> * 9,
<nuclearcraft:fuel_americium:1> * 9,
<nuclearcraft:fuel_americium:5> * 9,
<nuclearcraft:fuel_curium:1> * 9,
<nuclearcraft:fuel_curium:5> * 9,
<nuclearcraft:fuel_curium:9> * 9,
<nuclearcraft:fuel_uranium:2> * 9,
<nuclearcraft:fuel_uranium:6> * 9,
<nuclearcraft:fuel_uranium:10> * 9,
<nuclearcraft:fuel_uranium:14> * 9,
<nuclearcraft:fuel_neptunium:2> * 9,
<nuclearcraft:fuel_neptunium:6> * 9,
<nuclearcraft:fuel_plutonium:2> * 9,
<nuclearcraft:fuel_plutonium:6> * 9,
<nuclearcraft:fuel_curium:14> * 9,
<nuclearcraft:fuel_curium:18> * 9,
<nuclearcraft:fuel_curium:22> * 9,
<nuclearcraft:fuel_berkelium:2> * 9,
<nuclearcraft:fuel_berkelium:6> * 9,
<nuclearcraft:fuel_californium:2> * 9,
<nuclearcraft:fuel_californium:6> * 9,
<nuclearcraft:fuel_californium:10> * 9,
<nuclearcraft:fuel_californium:14> * 9,
<nuclearcraft:fuel_plutonium:10> * 9,
<nuclearcraft:fuel_plutonium:14> * 9,
<nuclearcraft:fuel_mixed:2> * 9,
<nuclearcraft:fuel_mixed:6> * 9,
<nuclearcraft:fuel_americium:2> * 9,
<nuclearcraft:fuel_americium:6> * 9,
<nuclearcraft:fuel_curium:2> * 9,
<nuclearcraft:fuel_curium:6> * 9,
<nuclearcraft:fuel_curium:10> * 9,
<nuclearcraft:pellet_mixed:1> * 9,
<nuclearcraft:fuel_mixed:3> * 9,
<nuclearcraft:pellet_mixed:3> * 9,
<nuclearcraft:fuel_mixed:7> * 9,
<qmd:pellet_copernicium> * 9,
<nuclearcraft:pellet_thorium:1>,
<nuclearcraft:pellet_uranium:1>,
<nuclearcraft:pellet_uranium:3>,
<nuclearcraft:pellet_uranium:5>,
<nuclearcraft:pellet_uranium:7>,
<nuclearcraft:pellet_neptunium:1>,
<nuclearcraft:pellet_neptunium:3>,
<nuclearcraft:pellet_plutonium:1>,
<nuclearcraft:pellet_plutonium:3>,
<nuclearcraft:pellet_curium:7>,
<nuclearcraft:pellet_curium:9>,
<nuclearcraft:pellet_curium:11>,
<nuclearcraft:pellet_berkelium:1>,
<nuclearcraft:pellet_berkelium:3>,
<nuclearcraft:pellet_californium:1>,
<nuclearcraft:pellet_californium:3>,
<nuclearcraft:pellet_californium:5>,
<nuclearcraft:pellet_californium:7>,
<nuclearcraft:pellet_plutonium:5>,
<nuclearcraft:pellet_plutonium:7>,
<nuclearcraft:pellet_mixed:1>,
<nuclearcraft:pellet_mixed:3>,
<nuclearcraft:pellet_americium:1>,
<nuclearcraft:pellet_americium:3>,
<nuclearcraft:pellet_curium:1>,
<nuclearcraft:pellet_curium:3>,
<nuclearcraft:pellet_curium:5>,
<nuclearcraft:fuel_thorium:3>,
<nuclearcraft:fuel_uranium:3>,
<nuclearcraft:fuel_uranium:7>,
<nuclearcraft:fuel_uranium:11>,
<nuclearcraft:fuel_uranium:15>,
<nuclearcraft:fuel_neptunium:3>,
<nuclearcraft:fuel_neptunium:7>,
<nuclearcraft:fuel_plutonium:3>,
<nuclearcraft:fuel_plutonium:7>,
<nuclearcraft:fuel_curium:23>,
<nuclearcraft:fuel_berkelium:3>,
<nuclearcraft:fuel_berkelium:7>,
<nuclearcraft:fuel_californium:3>,
<nuclearcraft:fuel_californium:7>,
<nuclearcraft:fuel_californium:11>,
<nuclearcraft:fuel_californium:15>,
<nuclearcraft:fuel_mixed:3>,
<nuclearcraft:fuel_mixed:7>,
<nuclearcraft:fuel_plutonium:11>,
<nuclearcraft:fuel_plutonium:15>,
<nuclearcraft:fuel_americium:3>,
<nuclearcraft:fuel_americium:7>,
<nuclearcraft:fuel_curium:3>,
<nuclearcraft:fuel_curium:7>,
<nuclearcraft:fuel_curium:11>,
<nuclearcraft:fuel_curium:15>,
<nuclearcraft:fuel_curium:19>,
<qmd:pellet_copernicium:1>,
<qmd:fuel_copernicium:3>,
]
 as IItemStack[];

for fuel in fuelseparationtoremove {
	Separator.removeRecipeWithInput(fuel);
}

// Removing Fluoride Fuel Electrolysis
val fuelelectrolysistoremove =
[
<liquid:tbu_fluoride>,
<liquid:leu_233_fluoride>,
<liquid:heu_233_fluoride>,
<liquid:leu_235_fluoride>,
<liquid:heu_235_fluoride>,
<liquid:len_236_fluoride>,
<liquid:hen_236_fluoride>,
<liquid:lep_239_fluoride>,
<liquid:hep_239_fluoride>,
<liquid:lep_241_fluoride>,
<liquid:hep_241_fluoride>,
<liquid:mix_239_fluoride>,
<liquid:mix_241_fluoride>,
<liquid:lea_242_fluoride>,
<liquid:hea_242_fluoride>,
<liquid:lecm_243_fluoride>,
<liquid:hecm_243_fluoride>,
<liquid:lecm_245_fluoride>,
<liquid:hecm_245_fluoride>,
<liquid:lecm_247_fluoride>,
<liquid:hecm_247_fluoride>,
<liquid:leb_248_fluoride>,
<liquid:heb_248_fluoride>,
<liquid:lecf_249_fluoride>,
<liquid:hecf_249_fluoride>,
<liquid:lecf_251_fluoride>,
<liquid:hecf_251_fluoride>,
]
 as ILiquidStack[];

for fuel in fuelelectrolysistoremove {
  Electrolyzer.removeRecipeWithInput(fuel * 72);
}

// Removing FLiBe Fuel Centrifuging
val flibefuelcentrifugingtoremove =
[
<liquid:tbu_fluoride_flibe>,
<liquid:leu_233_fluoride_flibe>,
<liquid:heu_233_fluoride_flibe>,
<liquid:leu_235_fluoride_flibe>,
<liquid:heu_235_fluoride_flibe>,
<liquid:len_236_fluoride_flibe>,
<liquid:hen_236_fluoride_flibe>,
<liquid:lep_239_fluoride_flibe>,
<liquid:hep_239_fluoride_flibe>,
<liquid:lep_241_fluoride_flibe>,
<liquid:hep_241_fluoride_flibe>,
<liquid:mix_239_fluoride_flibe>,
<liquid:mix_241_fluoride_flibe>,
<liquid:lea_242_fluoride_flibe>,
<liquid:hea_242_fluoride_flibe>,
<liquid:lecm_243_fluoride_flibe>,
<liquid:hecm_243_fluoride_flibe>,
<liquid:lecm_245_fluoride_flibe>,
<liquid:hecm_245_fluoride_flibe>,
<liquid:lecm_247_fluoride_flibe>,
<liquid:hecm_247_fluoride_flibe>,
<liquid:leb_248_fluoride_flibe>,
<liquid:heb_248_fluoride_flibe>,
<liquid:lecf_249_fluoride_flibe>,
<liquid:hecf_249_fluoride_flibe>,
<liquid:lecf_251_fluoride_flibe>,
<liquid:hecf_251_fluoride_flibe>,
]
 as ILiquidStack[];

for fuel in flibefuelcentrifugingtoremove {
  Centrifuge.removeRecipeWithInput(fuel * 72);
}

// Removing Fuel Centrifuging
val fuelcentrifugingtoremove =
[
<liquid:tbu>,
<liquid:leu_233>,
<liquid:heu_233>,
<liquid:leu_235>,
<liquid:heu_235>,
<liquid:len_236>,
<liquid:hen_236>,
<liquid:lep_239>,
<liquid:hep_239>,
<liquid:lep_241>,
<liquid:hep_241>,
<liquid:mix_239>,
<liquid:mix_241>,
<liquid:lea_242>,
<liquid:hea_242>,
<liquid:lecm_243>,
<liquid:hecm_243>,
<liquid:lecm_245>,
<liquid:hecm_245>,
<liquid:lecm_247>,
<liquid:hecm_247>,
<liquid:leb_248>,
<liquid:heb_248>,
<liquid:lecf_249>,
<liquid:hecf_249>,
<liquid:lecf_251>,
<liquid:hecf_251>,
]
 as ILiquidStack[];

for fuel in fuelcentrifugingtoremove {
  Centrifuge.removeRecipeWithInput(fuel * 144);
}


##########################################################################################
print("==================== end of nuclearcraft.zs ====================");
