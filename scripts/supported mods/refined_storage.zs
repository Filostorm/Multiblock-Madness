#modloaded refinedstorage

import crafttweaker.item.IItemStack;
import mods.techreborn.blastFurnace;
import mods.modularmachinery.RecipePrimer;

print("==================== loading refined_storage.zs ====================");
##########################################################################################

// <appliedenergistics2:controller> -> <refinedstorage:controller>
// <appliedenergistics2:material:43> -> <refinedstorage:core:0>
// <appliedenergistics2:material:44> -> <refinedstorage:core:1>
// <appliedenergistics2:molecular_assembler> -> <refinedstorage:crafter>
// <appliedenergistics2:interface> -> <refinedstorage:interface>
// <appliedenergistics2:material:22> -> <refinedstorage:processor:4>
// <appliedenergistics2:material:24> -> <refinedstorage:processor:5>
// <appliedenergistics2:drive> -> <refinedstorage:disk_drive>


val itemstoRemove = [
	<refinedstorage:machine_casing>,
	<refinedstorage:controller>,
	<refinedstorage:crafter>,
	<refinedstorage:interface>,
	<refinedstorage:disk_drive>,
] as IItemStack[];

for item in itemstoRemove {
	recipes.remove(item);
}


// <refinedstorage:machine_casing>
recipes.addShaped(<refinedstorage:machine_casing>, 
	[
		[<refinedstorage:quartz_enriched_iron>, <refinedstorage:quartz_enriched_iron>, <refinedstorage:quartz_enriched_iron>],
		[<refinedstorage:quartz_enriched_iron>, <moreplates:dark_steel_plate>, <refinedstorage:quartz_enriched_iron>],
		[<refinedstorage:quartz_enriched_iron>, <refinedstorage:quartz_enriched_iron>, <refinedstorage:quartz_enriched_iron>]
	]
);



// <appliedenergistics2:controller> -> <refinedstorage:controller>
recipes.addShaped(<refinedstorage:controller>, 
	[
		[<rockhounding_chemistry:alloy_parts:43>, <mekanism:controlcircuit:3>, <rockhounding_chemistry:alloy_parts:43>],
		[<enderutilities:enderpart:54>, <techreborn:part:1>, <advancedrocketry:ic:2>], 
		[<rockhounding_chemistry:alloy_parts:43>, <rockhounding_chemistry:misc_items:10>, <rockhounding_chemistry:alloy_parts:43>]
	]
);
recipes.addShapeless(<refinedstorage:controller>, [<appliedenergistics2:controller>]);
recipes.addShapeless(<appliedenergistics2:controller>, [<refinedstorage:controller>]);


// <appliedenergistics2:molecular_assembler> -> <refinedstorage:crafter>
recipes.addShaped(<refinedstorage:crafter>, 
	[
		[<thermalfoundation:material:324>, <appliedenergistics2:quartz_glass>, <thermalfoundation:material:324>],
		[<refinedstorage:core:1>, <enderio:block_crafter>, <refinedstorage:core:0>],
		[<thermalfoundation:material:324>, <appliedenergistics2:quartz_glass>, <thermalfoundation:material:324>]
	]
);
recipes.addShaped(<refinedstorage:crafter> * 2, 
	[
		[<rockhounding_chemistry:alloy_parts:10>, <appliedenergistics2:quartz_glass>, <rockhounding_chemistry:alloy_parts:10>],
		[<refinedstorage:core:1>, <enderio:block_crafter>, <refinedstorage:core:0>], 
		[<rockhounding_chemistry:alloy_parts:10>, <appliedenergistics2:quartz_glass>, <rockhounding_chemistry:alloy_parts:10>]
	]
);

// <appliedenergistics2:interface> -> <refinedstorage:interface>
recipes.addShaped(<appliedenergistics2:interface>, 
	[
		[<thermalfoundation:material:324>, <appliedenergistics2:quartz_glass>, <thermalfoundation:material:324>],
		[<refinedstorage:core:1>, <techreborn:part:43>, <refinedstorage:core:0>], 
		[<thermalfoundation:material:324>, <appliedenergistics2:quartz_glass>, <thermalfoundation:material:324>]
	]
);
recipes.addShaped(<appliedenergistics2:interface> * 2, 
	[
		[<rockhounding_chemistry:alloy_parts:10>, <appliedenergistics2:quartz_glass>, <rockhounding_chemistry:alloy_parts:10>],
		[<refinedstorage:core:1>, <techreborn:part:43>, <refinedstorage:core:0>], 
		[<rockhounding_chemistry:alloy_parts:10>, <appliedenergistics2:quartz_glass>, <rockhounding_chemistry:alloy_parts:10>]
	]
);

// <appliedenergistics2:drive> -> <refinedstorage:disk_drive>
recipes.addShaped(<refinedstorage:disk_drive>, 
	[
		[<thermalfoundation:material:324>, <ore:chest>, <thermalfoundation:material:324>],
		[<refinedstorage:quartz_enriched_iron>, <refinedstorage:machine_casing>, <refinedstorage:quartz_enriched_iron>], 
		[<thermalfoundation:material:324>, <refinedstorage:processor:5>, <thermalfoundation:material:324>]
	]
);
recipes.addShaped(<refinedstorage:disk_drive> * 2, 
	[
		[<rockhounding_chemistry:alloy_parts:10>, <ore:chest>, <rockhounding_chemistry:alloy_parts:10>],
		[<refinedstorage:quartz_enriched_iron>, <refinedstorage:machine_casing>, <refinedstorage:quartz_enriched_iron>], 
		[<rockhounding_chemistry:alloy_parts:10>, <refinedstorage:processor:5>, <rockhounding_chemistry:alloy_parts:10>]
	]
);

// fluix platinum alternative
blastFurnace.addRecipe(<threng:material>, null, 
	<refinedstorage:quartz_enriched_iron>, <thermalfoundation:material:134>, 
1200, 60, 2000);


//fluix logic chip alternative 
recipes.addShaped(<threng:material:4>, 
	[
		[<threng:material>, <refinedstorage:processor:5>, <threng:material>],
		[<refinedstorage:processor:4>, <rockhounding_chemistry:misc_items:10>, <refinedstorage:processor:4>],
		[<threng:material>, <refinedstorage:processor:5>, <threng:material>]
	]
);
mods.advancedrocketry.PrecisionAssembler.addRecipe(<threng:material:4>, 600, 10000, <threng:material>*4,<refinedstorage:processor:4>,<refinedstorage:processor:5>,<rockhounding_chemistry:misc_items:10>);


##########################################################################################
print("==================== end of refined_storage.zs ====================");