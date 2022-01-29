import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;
import mods.modularmachinery.RecipePrimer;

print("==================== loading mods mixer_recipeszs ====================");
##########################################################################################

##############################################
##
##           The Mixer
##
##############################################

// Bronze
val fluidBronze = mods.modularmachinery.RecipeBuilder.newBuilder("mixer-fluid-bronze", "mixer", 240, 0);
fluidBronze.addEmberInput(160);
fluidBronze.addMysticalMechanicsInput(20, 39);
fluidBronze.addItemInput(<ore:ingotCopper>,3);
fluidBronze.addItemInput(<ore:ingotTin>);
fluidBronze.addFluidOutput(<liquid:bronze>*576);
fluidBronze.build();

// Bronzefast
val fluidBronzeFast = mods.modularmachinery.RecipeBuilder.newBuilder("mixer-fluid-bronze-fast", "mixer", 160, 0);
fluidBronzeFast.addEmberInput(160);
fluidBronzeFast.addMysticalMechanicsInput(40, 80);
fluidBronzeFast.addItemInput(<ore:ingotCopper>,3);
fluidBronzeFast.addItemInput(<ore:ingotTin>);
fluidBronzeFast.addFluidOutput(<liquid:bronze>*576);
fluidBronzeFast.build();

// Constantan
val fluidconstantan = mods.modularmachinery.RecipeBuilder.newBuilder("mixer-fluid-constantan", "mixer", 120, 0);
fluidconstantan.addEmberInput(80);
fluidconstantan.addMysticalMechanicsInput(20, 39);
fluidconstantan.addItemInput(<ore:ingotCopper>);
fluidconstantan.addItemInput(<ore:ingotNickel>);
fluidconstantan.addFluidOutput(<liquid:constantan>*288);
fluidconstantan.build();

// ConstantanFast
val fluidconstantanFast = mods.modularmachinery.RecipeBuilder.newBuilder("mixer-fluid-constantan-fast", "mixer", 80, 0);
fluidconstantanFast.addEmberInput(80);
fluidconstantanFast.addMysticalMechanicsInput(40, 80);
fluidconstantanFast.addItemInput(<ore:ingotCopper>);
fluidconstantanFast.addItemInput(<ore:ingotNickel>);
fluidconstantanFast.addFluidOutput(<liquid:constantan>*288);
fluidconstantanFast.build();

// Invar
val fluidinvar = mods.modularmachinery.RecipeBuilder.newBuilder("mixer-fluid-invar", "mixer", 180, 0);
fluidinvar.addEmberInput(120);
fluidinvar.addMysticalMechanicsInput(20, 39);
fluidinvar.addItemInput(<ore:ingotIron>,2);
fluidinvar.addItemInput(<ore:ingotNickel>);
fluidinvar.addFluidOutput(<liquid:invar>*432);
fluidinvar.build();

// InvarFast
val fluidinvarFast = mods.modularmachinery.RecipeBuilder.newBuilder("mixer-fluid-invar-fast", "mixer", 120, 0);
fluidinvarFast.addEmberInput(120);
fluidinvarFast.addMysticalMechanicsInput(40, 80);
fluidinvarFast.addItemInput(<ore:ingotIron>,2);
fluidinvarFast.addItemInput(<ore:ingotNickel>);
fluidinvarFast.addFluidOutput(<liquid:invar>*432);
fluidinvarFast.build();

// Electrum
val fluidelectrum = mods.modularmachinery.RecipeBuilder.newBuilder("mixer-fluid-electrum", "mixer", 120, 0);
fluidelectrum.addEmberInput(80);
fluidelectrum.addMysticalMechanicsInput(20, 39);
fluidelectrum.addItemInput(<ore:ingotGold>);
fluidelectrum.addItemInput(<ore:ingotSilver>);
fluidelectrum.addFluidOutput(<liquid:electrum>*288);
fluidelectrum.build();

// ElectrumFast
val fluidelectrumFast = mods.modularmachinery.RecipeBuilder.newBuilder("mixer-fluid-electrum-fast", "mixer", 80, 0);
fluidelectrumFast.addEmberInput(80);
fluidelectrumFast.addMysticalMechanicsInput(40, 80);
fluidelectrumFast.addItemInput(<ore:ingotGold>);
fluidelectrumFast.addItemInput(<ore:ingotSilver>);
fluidelectrumFast.addFluidOutput(<liquid:electrum>*288);
fluidelectrumFast.build();

// Inert_metal
val fluidinert_metal = mods.modularmachinery.RecipeBuilder.newBuilder("mixer-fluid-inert_metal", "mixer", 120, 0);
fluidinert_metal.addEmberInput(80);
fluidinert_metal.addMysticalMechanicsInput(20, 39);
fluidinert_metal.addItemInput(<ore:ingotSilver>,2);
fluidinert_metal.addItemInput(<ore:ingotLead>);
fluidinert_metal.addFluidOutput(<liquid:inert_metal>*288);
fluidinert_metal.build();

// Inert_metalFast
val fluidinert_metalFast = mods.modularmachinery.RecipeBuilder.newBuilder("mixer-fluid-inert_metal-fast", "mixer", 80, 0);
fluidinert_metalFast.addEmberInput(80);
fluidinert_metalFast.addMysticalMechanicsInput(40, 80);
fluidinert_metalFast.addItemInput(<ore:ingotSilver>,2);
fluidinert_metalFast.addItemInput(<ore:ingotLead>);
fluidinert_metalFast.addFluidOutput(<liquid:inert_metal>*288);
fluidinert_metalFast.build();

// Tin_silver
val fluidtin_silver = mods.modularmachinery.RecipeBuilder.newBuilder("mixer-fluid-tin-silver", "mixer", 240, 0);
fluidtin_silver.addEmberInput(80);
fluidtin_silver.addMysticalMechanicsInput(20, 39);
fluidtin_silver.addItemInput(<ore:ingotSilver>);
fluidtin_silver.addItemInput(<ore:ingotTin>,3);
fluidtin_silver.addFluidOutput(<liquid:tin_silver>*576);
fluidtin_silver.build();

// Tin_silverFast
val fluidtin_silverFast = mods.modularmachinery.RecipeBuilder.newBuilder("mixer-fluid-tin-silver-fast", "mixer", 160, 0);
fluidtin_silverFast.addEmberInput(80);
fluidtin_silverFast.addMysticalMechanicsInput(40, 80);
fluidtin_silverFast.addItemInput(<ore:ingotSilver>);
fluidtin_silverFast.addItemInput(<ore:ingotTin>,3);
fluidtin_silverFast.addFluidOutput(<liquid:tin_silver>*576);
fluidtin_silverFast.build();



// Conductive_iron
val fluidconductive_iron = mods.modularmachinery.RecipeBuilder.newBuilder("mixer-fluid-conductive_iron", "mixer", 60, 0);
fluidconductive_iron.addEmberInput(80);
fluidconductive_iron.addMysticalMechanicsInput(40, 59);
fluidconductive_iron.addItemInput(<minecraft:iron_ingot>);
fluidconductive_iron.addItemInput(<minecraft:redstone>);
fluidconductive_iron.addFluidOutput(<liquid:conductive_iron>*144);
fluidconductive_iron.build();

// Conductive_ironFast
val fluidconductive_ironFast = mods.modularmachinery.RecipeBuilder.newBuilder("mixer-fluid-conductive_iron-fast", "mixer", 40, 0);
fluidconductive_ironFast.addEmberInput(80);
fluidconductive_ironFast.addMysticalMechanicsInput(60, 100);
fluidconductive_ironFast.addItemInput(<minecraft:iron_ingot>);
fluidconductive_ironFast.addItemInput(<minecraft:redstone>);
fluidconductive_ironFast.addFluidOutput(<liquid:conductive_iron>*144);
fluidconductive_ironFast.build();

// Pulsating_iron
val fluidpulsating_iron = mods.modularmachinery.RecipeBuilder.newBuilder("mixer-fluid-pulsating_iron", "mixer", 60, 0);
fluidpulsating_iron.addEmberInput(80);
fluidpulsating_iron.addMysticalMechanicsInput(40, 59);
fluidpulsating_iron.addItemInput(<minecraft:iron_ingot>);
fluidpulsating_iron.addItemInput(<minecraft:ender_pearl>);
fluidpulsating_iron.addFluidOutput(<liquid:pulsating_iron>*144);
fluidpulsating_iron.build();

// Pulsating_ironFast
val fluidpulsating_ironFast = mods.modularmachinery.RecipeBuilder.newBuilder("mixer-fluid-pulsating_iron-fast", "mixer", 40, 0);
fluidpulsating_ironFast.addEmberInput(80);
fluidpulsating_ironFast.addMysticalMechanicsInput(60, 100);
fluidpulsating_ironFast.addItemInput(<minecraft:iron_ingot>);
fluidpulsating_ironFast.addItemInput(<minecraft:ender_pearl>);
fluidpulsating_ironFast.addFluidOutput(<liquid:pulsating_iron>*144);
fluidpulsating_ironFast.build();



// Quartz for fused
val fluidquartz = mods.modularmachinery.RecipeBuilder.newBuilder("mixer-fluid-quartz", "mixer", 80, 0);
fluidquartz.addEmberInput(80);
//fluidquartz.addMysticalMechanicsInput(20, 60);
fluidquartz.addItemInput(<minecraft:quartz>);
fluidquartz.addFluidOutput(<liquid:quartz>*666);
fluidquartz.build();

// Glass
val fluidglass = mods.modularmachinery.RecipeBuilder.newBuilder("mixer-fluid-glass", "mixer", 80, 0);
fluidglass.addEmberInput(80);
//fluidglass.addMysticalMechanicsInput(20, 60);
fluidglass.addItemInput(<minecraft:sand>);
fluidglass.addFluidOutput(<liquid:glass>*1000);
fluidglass.build();

// Blood
val fluidblood = mods.modularmachinery.RecipeBuilder.newBuilder("mixer-fluid-blood", "mixer", 50, 0);
fluidblood.addEmberInput(40);
//fluidblood.addMysticalMechanicsInput(20, 60);
fluidblood.addItemInput(<ore:listAllmeatraw>);
fluidblood.addFluidOutput(<liquid:blood>*40);
fluidblood.build();



##############################################
##
##           The Mixer MKII
##
##############################################


// Brass
val dustBrass = mods.modularmachinery.RecipeBuilder.newBuilder("mixer-brass", "mixer-dust", 30, 0);
dustBrass.addMysticalMechanicsInput(40, 80);
dustBrass.addItemInput(<techreborn:dust:59>);
dustBrass.addItemInput(<thermalfoundation:material:64> * 2);
dustBrass.addItemOutput(<techreborn:dust:6> * 3);
dustBrass.addItemOutput(<techreborn:dust:6>).setChance(0.5);
dustBrass.build();


// Bronze
val dustBronze = mods.modularmachinery.RecipeBuilder.newBuilder("mixer-bronze", "mixer-dust", 30, 0);
dustBronze.addMysticalMechanicsInput(40, 80);
dustBronze.addItemInput(<thermalfoundation:material:65>);
dustBronze.addItemInput(<thermalfoundation:material:64> * 3);
dustBronze.addItemOutput(<thermalfoundation:material:99> * 4);
dustBronze.addItemOutput(<thermalfoundation:material:99>).setChance(0.5);
dustBronze.build();

// Steel
val carbonforSteel = <ore:carbonforSteel>;
carbonforSteel.add(<immersiveengineering:material:17>);
carbonforSteel.add(<rockhounding_chemistry:chemical_dusts:24>);
carbonforSteel.add(<thermalfoundation:material:768>);
carbonforSteel.add(<nuclearcraft:dust:8>);

val dustSteel = mods.modularmachinery.RecipeBuilder.newBuilder("mixer-steel", "mixer-dust", 30, 0);
dustSteel.addMysticalMechanicsInput(40, 80);
dustSteel.addItemInput(<thermalfoundation:material>);
dustSteel.addItemInput(<ore:carbonforSteel>);
dustSteel.addItemOutput(<thermalfoundation:material:96>);
dustSteel.addItemOutput(<thermalfoundation:material:96>).setChance(0.5);
dustSteel.build();

// Electrum
val dustElectrum = mods.modularmachinery.RecipeBuilder.newBuilder("mixer-electrum", "mixer-dust", 30, 0);
dustElectrum.addMysticalMechanicsInput(40, 80);
dustElectrum.addItemInput(<thermalfoundation:material:66>);
dustElectrum.addItemInput(<thermalfoundation:material:1>);
dustElectrum.addItemOutput(<thermalfoundation:material:97> * 2);
dustElectrum.addItemOutput(<thermalfoundation:material:97>).setChance(0.5);
dustElectrum.build();

// Energetic Blend
val dustEnergetic = mods.modularmachinery.RecipeBuilder.newBuilder("mixer-energetic", "mixer-dust", 30, 0);
dustEnergetic.addMysticalMechanicsInput(40, 80);
dustEnergetic.addItemInput(<minecraft:glowstone_dust>);
dustEnergetic.addItemInput(<minecraft:redstone>);
dustEnergetic.addItemOutput(<nuclearcraft:compound:2> * 2);
dustEnergetic.addItemOutput(<nuclearcraft:compound:2>).setChance(0.5);
dustEnergetic.build();

// Dimensional Blend
val dustDimentional = mods.modularmachinery.RecipeBuilder.newBuilder("mixer-dimentional", "mixer-dust", 30, 0);
dustDimentional.addMysticalMechanicsInput(40, 80);
dustDimentional.addItemInput(<thermalfoundation:material:770> * 4);
dustDimentional.addItemInput(<ore:dustEndstone>);
dustDimentional.addItemOutput(<nuclearcraft:compound:9> * 2);
dustDimentional.addItemOutput(<nuclearcraft:compound:9>).setChance(0.5);
dustDimentional.build();

// Invar
val dustInvar = mods.modularmachinery.RecipeBuilder.newBuilder("mixer-invar", "mixer-dust", 30, 0);
dustInvar.addMysticalMechanicsInput(40, 80);
dustInvar.addItemInput(<thermalfoundation:material> * 2);
dustInvar.addItemInput(<thermalfoundation:material:69>);
dustInvar.addItemOutput(<thermalfoundation:material:98> * 3);
dustInvar.addItemOutput(<thermalfoundation:material:98>).setChance(0.5);
dustInvar.build();

// Carbon-Manganese Blend
val dustCarbonManganese = mods.modularmachinery.RecipeBuilder.newBuilder("mixer-carbonmanganese", "mixer-dust", 30, 0);
dustCarbonManganese.addMysticalMechanicsInput(40, 80);
dustCarbonManganese.addItemInput(<ore:dustCarbon>);
dustCarbonManganese.addItemInput(<ore:dustManganese>);
dustCarbonManganese.addItemOutput(<nuclearcraft:compound:10> * 2);
dustCarbonManganese.addItemOutput(<nuclearcraft:compound:10>).setChance(0.5);
dustCarbonManganese.build();

// Flux Dust
val dustFlux = mods.modularmachinery.RecipeBuilder.newBuilder("mixer-flux", "mixer-dust", 30, 0);
dustFlux.addMysticalMechanicsInput(40, 80);
dustFlux.addItemInput(<thermalfoundation:material:770> * 4);
dustFlux.addItemInput(<enderio:item_material:20> * 4);
dustFlux.addItemInput(<minecraft:redstone> * 4);
dustFlux.addItemOutput(<fluxnetworks:flux>*2);
dustFlux.addItemOutput(<fluxnetworks:flux>).setChance(0.5);
dustFlux.build();

// Rich Slag
val RichSlag = mods.modularmachinery.RecipeBuilder.newBuilder("mixer-richslag", "mixer-dust", 100, 0);
RichSlag.addMysticalMechanicsInput(40, 80);
RichSlag.addItemInput(<thermalfoundation:material:864>*32);
RichSlag.addItemInput(<rockhounding_chemistry:chemical_dusts:39>);
RichSlag.addItemInput(<rockhounding_chemistry:chemical_dusts:41>);
RichSlag.addFluidInput(<liquid:refined_biofuel>* 800);
RichSlag.addItemOutput(<thermalfoundation:material:865>*32);
RichSlag.build();

// Sooty Redstone
val sootyredstone = mods.modularmachinery.RecipeBuilder.newBuilder("mixer-sootyredstone", "mixer-dust", 20, 0);
sootyredstone.addMysticalMechanicsInput(40, 80);
sootyredstone.addItemInput(<minecraft:redstone>);
sootyredstone.addItemInput(<thermalfoundation:material:768>);
sootyredstone.addItemOutput(<deepmoblearning:soot_covered_redstone>);
sootyredstone.build();

// Modularium
val itemmodularium = mods.modularmachinery.RecipeBuilder.newBuilder("mixer-itemmodularium", "mixer-dust", 20, 0);
itemmodularium.addMysticalMechanicsInput(40, 80);
itemmodularium.addItemInput(<thermalfoundation:material>);
itemmodularium.addItemInput(<thermalfoundation:material:1>);
itemmodularium.addFluidInput(<liquid:moltenembers>* 100);
itemmodularium.addItemOutput(<modularmachinery:itemmodularium>);
itemmodularium.build();


// Food //

// Deadly Energy Drink
mods.modularmachinery.RecipeBuilder.newBuilder("mixer-dust" + "_deadly_energy_drink", "mixer-dust", 50)
    .addMysticalMechanicsInput(40, 80)
	.addItemOutput(<xlfoodmod:deadly_energy_drink>)
	.addItemInput(<xlfoodmod:empty_can>)
	.addItemInput(<ore:cropRice>)
	.addItemInput(<minecraft:fermented_spider_eye>)
	.addItemInput(<minecraft:spider_eye>)
    .addFluidInput(<liquid:water> * 1000)
	.build();

// Strong Energy Drink
mods.modularmachinery.RecipeBuilder.newBuilder("mixer-dust" + "_strong_energy_drink", "mixer-dust", 50)
    .addMysticalMechanicsInput(40, 80)
	.addItemOutput(<xlfoodmod:strong_energy_drink>)
	.addItemInput(<xlfoodmod:empty_can>)
	.addItemInput(<ore:cropRice>)
	.addItemInput(<minecraft:magma_cream>)
	.addItemInput(<minecraft:blaze_powder>)
    .addFluidInput(<liquid:water> * 1000)
	.build();

// Stealthy Energy Drink
mods.modularmachinery.RecipeBuilder.newBuilder("mixer-dust" + "_stealthy_energy_drink", "mixer-dust", 50)
    .addMysticalMechanicsInput(40, 80)
	.addItemOutput(<xlfoodmod:stealthy_energy_drink>)
	.addItemInput(<xlfoodmod:empty_can>)
	.addItemInput(<ore:cropRice>)
	.addItemInput(<minecraft:sugar>)
	.addItemInput(<minecraft:golden_carrot>)
    .addFluidInput(<liquid:water> * 1000)
	.build();


// Healthy Energy Drink
mods.modularmachinery.RecipeBuilder.newBuilder("mixer-dust" + "_healthy_energy_drink", "mixer-dust", 50)
    .addMysticalMechanicsInput(40, 80)
	.addItemOutput(<xlfoodmod:healthy_energy_drink>)
	.addItemInput(<xlfoodmod:empty_can>)
	.addItemInput(<ore:cropRice>)
	.addItemInput(<minecraft:ghast_tear>)
	.addItemInput(<minecraft:speckled_melon>)
    .addFluidInput(<liquid:water> * 1000)
	.build();

// Speedy Energy Drink
mods.modularmachinery.RecipeBuilder.newBuilder("mixer-dust" + "_speedy_energy_drink", "mixer-dust", 50)
    .addMysticalMechanicsInput(40, 80)
	.addItemOutput(<xlfoodmod:speedy_energy_drink>)
	.addItemInput(<xlfoodmod:empty_can>)
	.addItemInput(<ore:cropRice>)
	.addItemInput(<minecraft:sugar>)
    .addFluidInput(<liquid:water> * 1000)
	.build();

// Chocolate Ice Cream Ball
mods.modularmachinery.RecipeBuilder.newBuilder("mixer-dust" + "_chocolate_icecream_ball", "mixer-dust", 50)
    .addMysticalMechanicsInput(40, 80)
	.addItemOutput(<xlfoodmod:chocolate_icecream_ball>)
	.addItemInput(<minecraft:snowball>)
	.addItemInput(<xlfoodmod:vanilla_cream>)
	.addItemInput(<minecraft:dye:3>)
    .addFluidInput(<liquid:milk> * 1000)
	.build();

// Vanilla Ice Cream Ball
mods.modularmachinery.RecipeBuilder.newBuilder("mixer-dust" + "_vanilla_icecream_ball", "mixer-dust", 50)
    .addMysticalMechanicsInput(40, 80)
	.addItemOutput(<xlfoodmod:vanilla_icecream_ball>)
	.addItemInput(<minecraft:snowball>)
	.addItemInput(<xlfoodmod:vanilla_cream>)
    .addFluidInput(<liquid:milk> * 1000)
	.build();

// Strawberry Ice Cream Ball
mods.modularmachinery.RecipeBuilder.newBuilder("mixer-dust" + "_strawberry_icecream_ball", "mixer-dust", 50)
    .addMysticalMechanicsInput(40, 80)
	.addItemOutput(<xlfoodmod:strawberry_icecream_ball>)
	.addItemInput(<minecraft:snowball>)
	.addItemInput(<xlfoodmod:strawberry>)
    .addFluidInput(<liquid:milk> * 1000)
	.build();

// EnderIOs
mods.modularmachinery.RecipeBuilder.newBuilder("mixer-dust" + "_enderios", "mixer-dust", 50)
    .addMysticalMechanicsInput(40, 80)
	.addItemOutput(<enderio:item_ender_food>)
	.addItemInput(<minecraft:bowl>)
	.addItemInput(<minecraft:wheat>)
	.addItemInput(<techreborn:dust:20>)
    .addFluidInput(<liquid:milk> * 1000)
	.build();

// AA Chocolate Cake
mods.modularmachinery.RecipeBuilder.newBuilder("mixer-dust" + "_aachocolatecake", "mixer-dust", 50)
    .addMysticalMechanicsInput(40, 80)
	.addItemOutput(<actuallyadditions:item_food:8>)
	.addItemInput(<actuallyadditions:item_misc:4>)
	.addItemInput(<minecraft:egg>)
	.addItemInput(<minecraft:sugar>)
	.addItemInput(<minecraft:dye:3> * 3)
    .addFluidInput(<liquid:milk> * 3000)
	.build();

// XL Food Chocolate Cake
mods.modularmachinery.RecipeBuilder.newBuilder("mixer-dust" + "_xlfoodchocolatecake", "mixer-dust", 50)
    .addMysticalMechanicsInput(40, 80)
	.addItemOutput(<xlfoodmod:chocolate_cake>)
	.addItemInput(<minecraft:wheat> * 3)
	.addItemInput(<minecraft:sugar> * 2)
	.addItemInput(<xlfoodmod:chocolate_syrup>)
    .addFluidInput(<liquid:milk> * 3000)
	.build();

// Oreo Cake
mods.modularmachinery.RecipeBuilder.newBuilder("mixer-dust" + "_oreo_cake", "mixer-dust", 50)
    .addMysticalMechanicsInput(40, 80)
	.addItemOutput(<xlfoodmod:oreo_cake>)
	.addItemInput(<minecraft:wheat> * 3)
	.addItemInput(<minecraft:sugar> * 2)
	.addItemInput(<xlfoodmod:oreo_cookie>)
    .addFluidInput(<liquid:milk> * 3000)
	.build();

// Cheese Cake
mods.modularmachinery.RecipeBuilder.newBuilder("mixer-dust" + "_cheese_cake", "mixer-dust", 50)
    .addMysticalMechanicsInput(40, 80)
	.addItemOutput(<xlfoodmod:cheese_cake>)
	.addItemInput(<minecraft:wheat> * 3)
	.addItemInput(<minecraft:sugar> * 2)
	.addItemInput(<xlfoodmod:cheese>)
    .addFluidInput(<liquid:milk> * 3000)
	.build();

// Nether Cake
mods.modularmachinery.RecipeBuilder.newBuilder("mixer-dust" + "_nether_cake", "mixer-dust", 50)
    .addMysticalMechanicsInput(40, 80)
	.addItemOutput(<xlfoodmod:nether_cake>)
	.addItemInput(<minecraft:wheat> * 3)
	.addItemInput(<minecraft:sugar> * 2)
	.addItemInput(<minecraft:blaze_powder>)
    .addFluidInput(<liquid:milk> * 3000)
	.build();

// Strawberry Cake
mods.modularmachinery.RecipeBuilder.newBuilder("mixer-dust" + "_strawberry_cake", "mixer-dust", 50)
    .addMysticalMechanicsInput(40, 80)
	.addItemOutput(<xlfoodmod:strawberry_cake>)
	.addItemInput(<minecraft:wheat> * 3)
	.addItemInput(<minecraft:sugar> * 2)
	.addItemInput(<xlfoodmod:strawberry>)
    .addFluidInput(<liquid:milk> * 3000)
	.build();

// Pumpkin Cake
mods.modularmachinery.RecipeBuilder.newBuilder("mixer-dust" + "_pumpkin_cake", "mixer-dust", 50)
    .addMysticalMechanicsInput(40, 80)
	.addItemOutput(<xlfoodmod:pumpkin_cake>)
	.addItemInput(<minecraft:wheat> * 3)
	.addItemInput(<minecraft:sugar> * 2)
	.addItemInput(<minecraft:pumpkin>)
    .addFluidInput(<liquid:milk> * 3000)
	.build();

// Vanilla MC Cake
mods.modularmachinery.RecipeBuilder.newBuilder("mixer-dust" + "_cake_1", "mixer-dust", 50)
    .addMysticalMechanicsInput(40, 80)
	.addItemOutput(<minecraft:cake>)
	.addItemInput(<minecraft:wheat> * 3)
	.addItemInput(<minecraft:sugar> * 2)
	.addItemInput(<minecraft:egg>)
    .addFluidInput(<liquid:milk> * 3000)
	.build();

// Vanilla MC Cake (Alternate recipe)
mods.modularmachinery.RecipeBuilder.newBuilder("mixer-dust" + "_cake_2", "mixer-dust", 50)
    .addMysticalMechanicsInput(40, 80)
	.addItemOutput(<minecraft:cake>)
	.addItemInput(<enderio:item_material:70>)
	.addItemInput(<minecraft:sugar> * 2)
    .addFluidInput(<liquid:milk> * 3000)
	.build();

// Tasty Clay
mods.modularmachinery.RecipeBuilder.newBuilder("mixer-dust" + "_tasty_clay", "mixer-dust", 50)
    .addMysticalMechanicsInput(40, 80)
	.addItemOutput(<openblocks:tasty_clay> * 2)
	.addItemInput(<minecraft:dye:3>)
	.addItemInput(<minecraft:clay_ball>)
    .addFluidInput(<liquid:milk> * 1000)
	.build();

##########################################################################################
print("==================== end of mods mixer_recipes.zs ====================");
