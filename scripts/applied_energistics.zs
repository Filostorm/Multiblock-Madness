import mods.appliedenergistics2.Inscriber;
import crafttweaker.item.IItemStack;
import mods.threng.Aggregator;
import mods.techreborn.blastFurnace;
import crafttweaker.item.IIngredient;
import mods.thermalexpansion.Insolator;

print("==================== loading applied_energistics.zs ====================");
##########################################################################################

val itemstoRemove =
[
	<appliedenergistics2:interface>,
	<ae2stuff:inscriber>,
	<appliedenergistics2:inscriber>,
	<appliedenergistics2:drive>,
	<appliedenergistics2:quartz_growth_accelerator>,
	<appliedenergistics2:crafting_unit>,
	<appliedenergistics2:molecular_assembler>,
	<appliedenergistics2:material:41>,
	<appliedenergistics2:security_station>,
	<appliedenergistics2:chest>,
	<appliedenergistics2:condenser>,
	<appliedenergistics2:charger>,
	<appliedenergistics2:io_port>,
	<appliedenergistics2:spatial_io_port>,
	<aeadditions:part.base>,
	<appliedenergistics2:quantum_ring>,
	<threng:material:4>,
	<appliedenergistics2:material:52>,
	<packagedauto:packager>,
	<packagedauto:encoder>,
	<packagedauto:unpackager>,
	<packagedauto:packager_extension>,
	<threng:big_assembler>,
	<packagedauto:me_package_component>,
	<packagedauto:package_component>,
	<packagedauto:recipe_holder>,
	<appliedenergistics2:part:240>,
	<appliedenergistics2:part:260>,
	<appliedenergistics2:part:241>,
	<appliedenergistics2:part:240>,
	<appliedenergistics2:fluid_interface>,
	<appliedenergistics2:part:460>,
	<appliedenergistics2:material:35>,
	<appliedenergistics2:part:300>,
	<appliedenergistics2:part:302>,
	<appliedenergistics2:part:320>,
	<appliedenergistics2:part:321>,
	<appliedenergistics2:material:42>,
	<appliedenergistics2:material:28>,
	<appliedenergistics2:material:25>,
	<appliedenergistics2:part:261>,
]
 as IItemStack[];

for item in itemstoRemove {
	recipes.remove(item);
}

// Materials and Intermediates //

val Certus as IIngredient = (<appliedenergistics2:material:10>|<appliedenergistics2:material>) as IIngredient;

// Fluix Platinum
furnace.remove(<threng:material>);
blastFurnace.addRecipe(<threng:material>, null, <threng:material:2>, null, 300, 512, 2000);

<threng:material>.displayName = "Fluix Platinum Ingot";
Aggregator.removeRecipe(<threng:material>);
Aggregator.addRecipe(<threng:material>, <thermalfoundation:material:134>, <threng:material:1>, <appliedenergistics2:material:45>);

<threng:material:2>.displayName = "Fluix-Plated Platinum Ingot";
Inscriber.removeRecipe(<threng:material:2>);
Inscriber.addRecipe(<threng:material:2>, <thermalfoundation:material:134>, false, <appliedenergistics2:material:45>, <threng:material:1>);

// Resonating Crystal
Aggregator.removeRecipe(<threng:material:5>);

// Fluix Logic Chip
recipes.addShaped(<threng:material:4>, [[<threng:material>, <appliedenergistics2:material:24>, <threng:material>],[<appliedenergistics2:material:22>, <rockhounding_chemistry:misc_items:10>, <appliedenergistics2:material:22>], [<threng:material>, <appliedenergistics2:material:24>, <threng:material>]]);


// Machines and Tools //

//Wireless Cards
recipes.addShaped(<appliedenergistics2:material:42>, [[<ore:plateAluminum>, <ore:plateAluminum>, <ore:plateAluminum>], [<threng:material:1>, Certus, <ore:dustEnder>]]);
recipes.addShaped(<appliedenergistics2:material:42>*2, [[<ore:plateScal>, <ore:plateScal>, <ore:plateScal>], [<threng:material:1>, Certus, <ore:dustEnder>]]);

//Upgrade cards
recipes.addShaped(<appliedenergistics2:material:28> * 2, [[<moreplates:diamatine_plate>, <ore:plateAluminum>, null],[<appliedenergistics2:material:24>, <opencomputers:material:8>, <ore:plateAluminum>], [<moreplates:diamatine_plate>, <ore:plateAluminum>, null]]);
recipes.addShaped(<appliedenergistics2:material:28> * 4, [[<moreplates:diamatine_plate>, <ore:plateScal>, null],[<appliedenergistics2:material:24>, <opencomputers:material:8>, <ore:plateScal>], [<moreplates:diamatine_plate>, <ore:plateScal>, null]]);

recipes.addShaped(<appliedenergistics2:material:25> * 2, [[<moreplates:restonia_plate>, <ore:plateAluminum>, null],[<appliedenergistics2:material:22>, <opencomputers:material:8>, <ore:plateAluminum>], [<moreplates:restonia_plate>, <ore:plateAluminum>, null]]);
recipes.addShaped(<appliedenergistics2:material:25> * 4, [[<moreplates:restonia_plate>, <ore:plateScal>, null],[<appliedenergistics2:material:22>, <opencomputers:material:8>, <ore:plateScal>], [<moreplates:restonia_plate>, <ore:plateScal>, null]]);

# [Memory Card] from [Advanced Logic Chip][+3]
craft.remake(<appliedenergistics2:memory_card>, ["pretty",
  "C п п",
  "□ A □"], {
  "C": <appliedenergistics2:material:23>,      # Calculation Processor
  "п": <ore:plateDarkSteel>,                   # Dark Steel Plate
  "□": <ore:plateDiamatine>,                   # Diamatine Plate
  "A": <rockhounding_chemistry:misc_items:10>, # Advanced Logic Chip
});


// 1k Storage Component
recipes.addShaped(<appliedenergistics2:material:35>, [[<moreplates:redstone_alloy_plate>, Certus, <moreplates:redstone_alloy_plate>],[Certus, <appliedenergistics2:material:22>, Certus], [<moreplates:redstone_alloy_plate>, Certus, <moreplates:redstone_alloy_plate>]]);
recipes.addShaped(<appliedenergistics2:material:35>*2, [[<moreplates:manyullyn_plate>, Certus, <moreplates:manyullyn_plate>],[Certus, <appliedenergistics2:material:22>, Certus], [<moreplates:manyullyn_plate>, Certus, <moreplates:manyullyn_plate>]]);
recipes.addShaped(<appliedenergistics2:material:35>*3, [[<jaopca:item_platetungstencarbide>, Certus, <jaopca:item_platetungstencarbide>],[Certus, <appliedenergistics2:material:22>, Certus], [<jaopca:item_platetungstencarbide>, Certus, <jaopca:item_platetungstencarbide>]]);


// Interface
recipes.addShaped(<appliedenergistics2:interface>, [[<thermalfoundation:material:324>, <appliedenergistics2:quartz_glass>, <thermalfoundation:material:324>],[<appliedenergistics2:material:44>, <techreborn:part:43>, <appliedenergistics2:material:43>], [<thermalfoundation:material:324>, <appliedenergistics2:quartz_glass>, <thermalfoundation:material:324>]]);
recipes.addShaped(<appliedenergistics2:interface> * 2, [[<rockhounding_chemistry:alloy_parts:10>, <appliedenergistics2:quartz_glass>, <rockhounding_chemistry:alloy_parts:10>],[<appliedenergistics2:material:44>, <techreborn:part:43>, <appliedenergistics2:material:43>], [<rockhounding_chemistry:alloy_parts:10>, <appliedenergistics2:quartz_glass>, <rockhounding_chemistry:alloy_parts:10>]]);
recipes.addShapeless(<appliedenergistics2:interface>, [<appliedenergistics2:part:440>]);

// Fluid Interface
recipes.addShaped(<appliedenergistics2:fluid_interface>, [[<thermalfoundation:material:324>, <minecraft:dye:4>, <thermalfoundation:material:324>],[<appliedenergistics2:material:44>, <techreborn:part:43>, <appliedenergistics2:material:43>], [<thermalfoundation:material:324>, <minecraft:dye:4>, <thermalfoundation:material:324>]]);
recipes.addShaped(<appliedenergistics2:fluid_interface> * 2, [[<rockhounding_chemistry:alloy_parts:10>, <minecraft:dye:4>, <rockhounding_chemistry:alloy_parts:10>],[<appliedenergistics2:material:44>, <techreborn:part:43>, <appliedenergistics2:material:43>], [<rockhounding_chemistry:alloy_parts:10>, <minecraft:dye:4>, <rockhounding_chemistry:alloy_parts:10>]]);
recipes.addShapeless(<appliedenergistics2:fluid_interface>, [<appliedenergistics2:part:441>]);

// Inscribers
recipes.addShaped(<ae2stuff:inscriber>, [[<moreplates:dark_steel_plate>, <minecraft:hopper>, <moreplates:dark_steel_plate>],[<threng:material:4>, <appliedenergistics2:inscriber>, <threng:material:4>], [<moreplates:dark_steel_plate>, <minecraft:hopper>, <moreplates:dark_steel_plate>]]);
recipes.addShapedMirrored(<appliedenergistics2:inscriber>, [[<enderio:item_alloy_ingot:6>, <minecraft:sticky_piston>, <enderio:item_alloy_ingot:6>],[<ore:gemFluix>, null, <enderio:item_alloy_ingot:6>], [<enderio:item_alloy_ingot:6>, <minecraft:sticky_piston>, <enderio:item_alloy_ingot:6>]]);

// Drives
recipes.addShaped(<appliedenergistics2:drive>, [[<thermalfoundation:material:324>, <appliedenergistics2:part:16>, <thermalfoundation:material:324>],[<appliedenergistics2:material:24>, null, <appliedenergistics2:material:24>], [<thermalfoundation:material:324>, <appliedenergistics2:part:16>, <thermalfoundation:material:324>]]);
recipes.addShaped(<appliedenergistics2:drive> * 2, [[<rockhounding_chemistry:alloy_parts:10>, <appliedenergistics2:part:16>, <rockhounding_chemistry:alloy_parts:10>],[<appliedenergistics2:material:24>, null, <appliedenergistics2:material:24>], [<rockhounding_chemistry:alloy_parts:10>, <appliedenergistics2:part:16>, <rockhounding_chemistry:alloy_parts:10>]]);
recipes.addShapeless(<aeadditions:part.base>, [<appliedenergistics2:drive:*>, <thermalfoundation:material:132>,<thermalfoundation:material:132>]);

recipes.addShaped(<appliedenergistics2:quartz_growth_accelerator>, [[<moreplates:dark_steel_plate>, <appliedenergistics2:part:16>, <moreplates:dark_steel_plate>],[<appliedenergistics2:quartz_glass>, <appliedenergistics2:fluix_block>, <appliedenergistics2:quartz_glass>], [<moreplates:dark_steel_plate>, <appliedenergistics2:part:16>, <moreplates:dark_steel_plate>]]);

// P2P
val Fluix as IIngredient = (<appliedenergistics2:material:7>|<appliedenergistics2:material:12>) as IIngredient;
recipes.addShaped(<appliedenergistics2:part:460>, [[null, <thermalfoundation:material:324>, null],
[<thermalfoundation:material:324>, <appliedenergistics2:material:24>, <thermalfoundation:material:324>], 
[Fluix, Fluix, Fluix]]);
recipes.addShaped(<appliedenergistics2:part:460>*2, [[null, <ore:plateScal>, null],
[<ore:plateScal>, <appliedenergistics2:material:24>, <ore:plateScal>], 
[Fluix, Fluix, Fluix]]);


// Buses
recipes.addShaped(<appliedenergistics2:part:240>, [[null, <appliedenergistics2:material:44>, null], [<thermalfoundation:material:132>, <minecraft:sticky_piston>, <thermalfoundation:material:132>]]);
recipes.addShaped(<appliedenergistics2:part:240>*2, [[null, <appliedenergistics2:material:44>, null], [<rockhounding_chemistry:alloy_items_tech:4>, <minecraft:sticky_piston>, <rockhounding_chemistry:alloy_items_tech:4>]]);
recipes.addShaped(<appliedenergistics2:part:260>, [[<thermalfoundation:material:132>, <appliedenergistics2:material:43>, <thermalfoundation:material:132>], [null, <minecraft:piston>, null]]);
recipes.addShaped(<appliedenergistics2:part:260>*2, [[<rockhounding_chemistry:alloy_items_tech:4>, <appliedenergistics2:material:43>, <rockhounding_chemistry:alloy_items_tech:4>], [null, <minecraft:piston>, null]]);

// Crafting Unit
recipes.addShaped(<appliedenergistics2:crafting_unit>, [[<thermalfoundation:material:324>, <appliedenergistics2:material:23>, <thermalfoundation:material:324>],[<appliedenergistics2:part:16>, <appliedenergistics2:material:22>, <appliedenergistics2:part:16>], [<thermalfoundation:material:324>, <appliedenergistics2:material:23>, <thermalfoundation:material:324>]]);
recipes.addShaped(<appliedenergistics2:crafting_unit> * 2, [[<rockhounding_chemistry:alloy_parts:10>, <appliedenergistics2:material:23>, <rockhounding_chemistry:alloy_parts:10>],[<appliedenergistics2:part:16>, <appliedenergistics2:material:22>, <appliedenergistics2:part:16>], [<rockhounding_chemistry:alloy_parts:10>, <appliedenergistics2:material:23>, <rockhounding_chemistry:alloy_parts:10>]]);

//assembler
recipes.addShaped(<appliedenergistics2:molecular_assembler>, [[<thermalfoundation:material:324>, <appliedenergistics2:quartz_glass>, <thermalfoundation:material:324>],[<appliedenergistics2:material:44>, <enderio:block_crafter>, <appliedenergistics2:material:43>], [<thermalfoundation:material:324>, <appliedenergistics2:quartz_glass>, <thermalfoundation:material:324>]]);
recipes.addShaped(<appliedenergistics2:molecular_assembler> * 2, [[<rockhounding_chemistry:alloy_parts:10>, <appliedenergistics2:quartz_glass>, <rockhounding_chemistry:alloy_parts:10>],[<appliedenergistics2:material:44>, <enderio:block_crafter>, <appliedenergistics2:material:43>], [<rockhounding_chemistry:alloy_parts:10>, <appliedenergistics2:quartz_glass>, <rockhounding_chemistry:alloy_parts:10>]]);

//ender hat
recipes.addShaped(<appliedenergistics2:material:41>, [[null, <appliedenergistics2:material:9>, null],[<enderio:item_alloy_ingot:6>, <appliedenergistics2:part:140>, <enderio:item_alloy_ingot:6>], [null, <enderio:item_alloy_ingot:6>, null]]);

// Security Station
recipes.addShaped(<appliedenergistics2:security_station>, [[<moreplates:dark_steel_plate>, <appliedenergistics2:chest>, <moreplates:dark_steel_plate>],[<appliedenergistics2:part:16>, <appliedenergistics2:material:37>, <appliedenergistics2:part:16>], [<moreplates:dark_steel_plate>, <appliedenergistics2:material:24>, <moreplates:dark_steel_plate>]]);

// ME Chest
recipes.addShaped(<appliedenergistics2:chest>, [[<minecraft:glass:*>, <appliedenergistics2:part:380>, <minecraft:glass:*>],[<appliedenergistics2:part:16>, null, <appliedenergistics2:part:16>], [<enderio:item_alloy_ingot:6>, <appliedenergistics2:material:7>, <enderio:item_alloy_ingot:6>]]);

// Condenser
recipes.addShaped(<appliedenergistics2:condenser>, [
	[<ore:plateTungstensteel>, <embers:ember_funnel>, <ore:plateTungstensteel>], 
	[<advancedrocketry:ic:2>, <ore:compressedCobblestone3x>, <advancedrocketry:ic:2>], 
	[<ore:plateTungstensteel>, <threng:material:4>, <ore:plateTungstensteel>]
]);
// Charger
recipes.addShapedMirrored(<appliedenergistics2:charger>, [[<enderio:item_alloy_ingot:6>, <appliedenergistics2:material>, <enderio:item_alloy_ingot:6>],[<enderio:item_alloy_ingot:6>, <embers:charger>, null], [<enderio:item_alloy_ingot:6>, <appliedenergistics2:material>, <enderio:item_alloy_ingot:6>]]);

// Dense Smart Cable
recipes.addShaped(<appliedenergistics2:part:76>, [[<appliedenergistics2:part:56>, <appliedenergistics2:part:56>],[<appliedenergistics2:part:56>, <appliedenergistics2:part:56>]]);

// Spatial IO Port
recipes.addShaped(<appliedenergistics2:spatial_io_port>, [[<minecraft:glass:*>, <minecraft:glass:*>, <minecraft:glass:*>],[<appliedenergistics2:part:16>, <appliedenergistics2:io_port>, <appliedenergistics2:part:16>], [<moreplates:dark_steel_plate>, <appliedenergistics2:material:24>, <moreplates:dark_steel_plate>]]);

// ME IO Port
recipes.addShaped(<appliedenergistics2:io_port>, [[<minecraft:glass:*>, <minecraft:glass:*>, <minecraft:glass:*>],[<appliedenergistics2:drive>, <appliedenergistics2:part:16>, <appliedenergistics2:drive>], [<moreplates:dark_steel_plate>, <appliedenergistics2:material:22>, <moreplates:dark_steel_plate>]]);

// Quantum Ring
recipes.addShaped(<appliedenergistics2:quantum_ring>, [[<thermalfoundation:material:324>, <appliedenergistics2:material:22>, <thermalfoundation:material:324>],[<appliedenergistics2:material:24>, <mekanism:teleportationcore>, <appliedenergistics2:part:76>], [<thermalfoundation:material:324>, <appliedenergistics2:material:22>, <thermalfoundation:material:324>]]);
recipes.addShaped(<appliedenergistics2:quantum_ring> * 2, [[<rockhounding_chemistry:alloy_parts:10>, <appliedenergistics2:material:22>, <rockhounding_chemistry:alloy_parts:10>],[<appliedenergistics2:material:24>, <mekanism:teleportationcore>, <appliedenergistics2:part:76>], [<rockhounding_chemistry:alloy_parts:10>, <appliedenergistics2:material:22>, <rockhounding_chemistry:alloy_parts:10>]]);

// Patterns
recipes.addShaped(<appliedenergistics2:material:52>, [[<appliedenergistics2:quartz_glass>, <minecraft:glowstone_dust>, <appliedenergistics2:quartz_glass>],[<minecraft:glowstone_dust>, <rockhounding_chemistry:misc_items:1>, <minecraft:glowstone_dust>], [<thermalfoundation:material:132>, <thermalfoundation:material:132>, <thermalfoundation:material:132>]]);
recipes.addShaped(<appliedenergistics2:material:52> * 2, [[<appliedenergistics2:quartz_glass>, <minecraft:glowstone_dust>, <appliedenergistics2:quartz_glass>],[<minecraft:glowstone_dust>, <rockhounding_chemistry:misc_items:1>, <minecraft:glowstone_dust>], [<rockhounding_chemistry:alloy_items_tech:4>, <rockhounding_chemistry:alloy_items_tech:4>, <rockhounding_chemistry:alloy_items_tech:4>]]);

// Fluid I/O
recipes.addShaped(<appliedenergistics2:part:261>, [[<thermalfoundation:material:132>, <appliedenergistics2:material:43>, <thermalfoundation:material:132>], [<minecraft:dye:4>, <minecraft:piston>, <minecraft:dye:4>]]);
recipes.addShaped(<appliedenergistics2:part:261> * 2, [[<rockhounding_chemistry:alloy_items_tech:4>, <appliedenergistics2:material:43>, <rockhounding_chemistry:alloy_items_tech:4>], [<minecraft:dye:4>, <minecraft:piston>, <minecraft:dye:4>]]);
recipes.addShaped(<appliedenergistics2:part:241>, [[<minecraft:dye:4>, <appliedenergistics2:material:44>, <minecraft:dye:4>], [<thermalfoundation:material:132>, <minecraft:sticky_piston>, <thermalfoundation:material:132>]]);
recipes.addShaped(<appliedenergistics2:part:241>*2, [[<minecraft:dye:4>, <appliedenergistics2:material:44>, <minecraft:dye:4>], [<rockhounding_chemistry:alloy_items_tech:4>, <minecraft:sticky_piston>, <rockhounding_chemistry:alloy_items_tech:4>]]);

// Planes
recipes.addShaped(<appliedenergistics2:part:320> * 2, [[Fluix, Fluix, Fluix], [<ore:plateScal>, <appliedenergistics2:material:43>, <ore:plateScal>]]);
recipes.addShaped(<appliedenergistics2:part:320>, [[Fluix, Fluix, Fluix], [<ore:plateAluminum>, <appliedenergistics2:material:43>, <ore:plateAluminum>]]);
recipes.addShaped(<appliedenergistics2:part:300>, [[Fluix, Fluix, Fluix], [<ore:plateAluminum>, <appliedenergistics2:material:44>, <ore:plateAluminum>]]);
recipes.addShaped(<appliedenergistics2:part:300> * 2, [[Fluix, Fluix, Fluix], [<ore:plateScal>, <appliedenergistics2:material:44>, <ore:plateScal>]]);

recipes.addShaped(<appliedenergistics2:part:302> * 2, [[Fluix, Fluix, Fluix],[<ore:dyeBlue>, <ore:dyeBlue>, <ore:dyeBlue>], [<ore:plateScal>, <appliedenergistics2:material:44>, <ore:plateScal>]]);
recipes.addShaped(<appliedenergistics2:part:302>, [[Fluix, Fluix, Fluix],[<ore:dyeBlue>, <ore:dyeBlue>, <ore:dyeBlue>], [<ore:plateAluminum>, <appliedenergistics2:material:44>, <ore:plateAluminum>]]);
recipes.addShaped(<appliedenergistics2:part:321>, [[Fluix, Fluix, Fluix],[<ore:dyeBlue>, <ore:dyeBlue>, <ore:dyeBlue>], [<ore:plateAluminum>, <appliedenergistics2:material:43>, <ore:plateAluminum>]]);
recipes.addShaped(<appliedenergistics2:part:321>*2, [[Fluix, Fluix, Fluix],[<ore:dyeBlue>, <ore:dyeBlue>, <ore:dyeBlue>], [<ore:plateScal>, <appliedenergistics2:material:43>, <ore:plateScal>]]);

//moved to actually additions
//Inscriber.addRecipe(<chisel:voidstonerunic>, <chisel:energizedvoidstone>, true, <chisel:chisel_diamond>);

// Lazy Frame
recipes.addShaped(<threng:big_assembler>*4, [
	[<ore:plateTungstensteel>, <ore:ingotFluixSteel>, <ore:plateTungstensteel>], 
	[<ore:ingotFluixSteel>, <nuclearcraft:part:12>, <ore:ingotFluixSteel>], 
	[<ore:plateTungstensteel>, <ore:ingotFluixSteel>, <ore:plateTungstensteel>]
]);

// Upgrades from Simple Storage Network
recipes.addShaped(<appliedenergistics2:part:240>, [[null, <appliedenergistics2:material:44>, null], [<thermalfoundation:material:132>, <storagenetwork:im_kabel>, <thermalfoundation:material:132>]]);
recipes.addShaped(<appliedenergistics2:part:240>*2, [[null, <appliedenergistics2:material:44>, null], [<rockhounding_chemistry:alloy_items_tech:4>, <storagenetwork:im_kabel>, <rockhounding_chemistry:alloy_items_tech:4>]]);
recipes.addShaped(<appliedenergistics2:part:260>, [[<thermalfoundation:material:132>, <appliedenergistics2:material:43>, <thermalfoundation:material:132>], [null, <storagenetwork:ex_kabel>, null]]);
recipes.addShaped(<appliedenergistics2:part:260> * 2, [[<rockhounding_chemistry:alloy_items_tech:4>, <appliedenergistics2:material:43>, <rockhounding_chemistry:alloy_items_tech:4>], [null, <storagenetwork:ex_kabel>, null]]);
recipes.addShapeless(<appliedenergistics2:part:220>, [<appliedenergistics2:interface>,<storagenetwork:storage_kabel>]);
recipes.addShapeless(<appliedenergistics2:part:36>, [<storagenetwork:kabel>, <minecraft:wool:*>]);

//Terminal Converting
recipes.addShaped(<ae2wtlib:infinity_booster_card> * 64, [[<appliedenergistics2:material:9>, <threng:material:6>, <appliedenergistics2:material:9>],[<threng:material:6>, <storagenetwork:remote:1>, <threng:material:6>], [<appliedenergistics2:material:9>, <threng:material:6>, <appliedenergistics2:material:9>]]);
recipes.addShaped(<ae2wtlib:wut>.withTag({StoredTerminals: [{ForgeCaps: {"astralsorcery:cap_item_amulet_holder": {}}, id: "wft:wft", Count: 1 as byte, Damage: 0 as short}, {ForgeCaps: {"astralsorcery:cap_item_amulet_holder": {}}, id: "wct:wct", Count: 1 as byte, Damage: 0 as short}], InfinityEnergy: 0, SelectedTerminal: 0, internalCurrentPower: 0.0}), [
	[<thermalfoundation:material:324>, <appliedenergistics2:material:41>, <thermalfoundation:material:324>],[<appliedenergistics2:material:22>, <storagenetwork:remote:2>, <appliedenergistics2:material:22>], [<thermalfoundation:material:324>, <appliedenergistics2:material:24>, <thermalfoundation:material:324>]]);
recipes.addShaped(<wct:wct>, [[<thermalfoundation:material:324>, <appliedenergistics2:material:41>, <thermalfoundation:material:324>],[<appliedenergistics2:material:22>, <storagenetwork:remote:3>, <appliedenergistics2:material:22>], [<thermalfoundation:material:324>, <appliedenergistics2:material:24>, <thermalfoundation:material:324>]]);
recipes.addShaped(<appliedenergistics2:wireless_terminal>, [[<thermalfoundation:material:324>, <appliedenergistics2:material:41>, <thermalfoundation:material:324>],[<appliedenergistics2:material:22>, <storagenetwork:remote>, <appliedenergistics2:material:22>], [<thermalfoundation:material:324>, <appliedenergistics2:material:24>, <thermalfoundation:material:324>]]);

####### PACKAGED AUTO ##################

// Component
recipes.addShaped(<packagedauto:package_component>, [
	[<threng:material:5>, <thermalfoundation:material:801>, <threng:material:5>], 
	[<thermalfoundation:material:801>, <ore:pearlEnderEye>, <thermalfoundation:material:801>], 
	[<threng:material:5>, <thermalfoundation:material:801>, <threng:material:5>]
]);

// ME Component
recipes.addShaped(<packagedauto:me_package_component>, [
	[<ore:plateAluminum>, <appliedenergistics2:quartz_glass>, <ore:plateAluminum>], 
	[<appliedenergistics2:material:44>, <packagedauto:package_component>, <appliedenergistics2:material:43>], 
	[<ore:plateAluminum>, <appliedenergistics2:quartz_glass>, <ore:plateAluminum>]
]);
recipes.addShaped(<packagedauto:me_package_component>*2, [
	[<rockhounding_chemistry:alloy_parts:10>, <appliedenergistics2:quartz_glass>, <rockhounding_chemistry:alloy_parts:10>], 
	[<appliedenergistics2:material:44>, <packagedauto:package_component>, <appliedenergistics2:material:43>], 
	[<rockhounding_chemistry:alloy_parts:10>, <appliedenergistics2:quartz_glass>, <rockhounding_chemistry:alloy_parts:10>]
]);

//Pattern
recipes.addShaped(<packagedauto:recipe_holder>*2, [
	[<appliedenergistics2:quartz_vibrant_glass>, <ore:alloyBasic>, <appliedenergistics2:quartz_vibrant_glass>], 
	[<ore:alloyBasic>, <threng:material:4>, <ore:alloyBasic>], 
	[<ore:plateAluminum>, <packagedauto:package_component>, <ore:plateAluminum>]
]);
recipes.addShaped(<packagedauto:recipe_holder>*4, [
	[<appliedenergistics2:quartz_vibrant_glass>, <ore:alloyBasic>, <appliedenergistics2:quartz_vibrant_glass>], 
	[<ore:alloyBasic>, <threng:material:4>, <ore:alloyBasic>], 
	[<rockhounding_chemistry:alloy_parts:10>, <packagedauto:package_component>, <rockhounding_chemistry:alloy_parts:10>]
]);

// Packager
recipes.addShaped(<packagedauto:packager>, [
	[<ore:plateDarkSteel>, <packagedauto:me_package_component>, <ore:plateDarkSteel>], 
	[<ore:alloyBasic>, <ore:crafterWood>, <ore:alloyBasic>], 
	[<ore:plateDarkSteel>, <ore:craftingPiston>, <ore:plateDarkSteel>]
]);
// Packager Extension
recipes.addShaped(<packagedauto:packager_extension>, [
	[<ore:plateDarkSteel>, <packagedauto:me_package_component>, <ore:plateDarkSteel>], 
	[<ore:dustGlowstone>, <ore:crafterWood>, <ore:dustGlowstone>], 
	[<ore:plateDarkSteel>, <ore:craftingPiston>, <ore:plateDarkSteel>]
]);
// Unpackager
recipes.addShaped(<packagedauto:unpackager>, [
	[<ore:plateDarkSteel>, <packagedauto:me_package_component>, <ore:plateDarkSteel>], 
	[<ore:alloyBasic>, <ore:chest>, <ore:alloyBasic>], 
	[<ore:plateDarkSteel>, <ore:blockHopper>, <ore:plateDarkSteel>]
]);

// Encoder
recipes.addShaped(<packagedauto:encoder>, [
	[<ore:plateDarkSteel>, <packagedauto:package_component>, <ore:plateDarkSteel>], 
	[<ore:crafterWood>, <ore:glowstone>, <ore:crafterWood>], 
	[<ore:plateDarkSteel>, <minecraft:comparator>, <ore:plateDarkSteel>]
]);

// Fixing Pulse Centrifuge Recipes
mods.threng.Centrifuge.removeRecipe(<appliedenergistics2:material:46>);
mods.threng.Centrifuge.removeRecipe(<appliedenergistics2:material:4>);
mods.threng.Centrifuge.addRecipe(<techreborn:dust:20>, <minecraft:ender_pearl>);
mods.threng.Centrifuge.addRecipe(<nuclearcraft:flour>, <minecraft:wheat>);
mods.threng.Centrifuge.addRecipe(<nuclearcraft:flour>, <natura:materials>);

//Fix Crystal growing
Insolator.removeRecipe(<appliedenergistics2:crystal_seed>, <minecraft:glowstone_dust>);
Insolator.addRecipe(<appliedenergistics2:material:10>,<appliedenergistics2:crystal_seed>.withTag({progress: 0}), <minecraft:glowstone_dust>, 90000, null, 0, 3000);

##########################################################################################
print("==================== end of applied_energistics.zs ====================");
