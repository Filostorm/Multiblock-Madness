import crafttweaker.item.IItemStack;

import mods.botaniatweaks.Agglomeration;

print("==================== loading creative biz.zs ====================");
##########################################################################################

val itemstoRemove =
[
	<avaritia:resource:1>,
]
 as IItemStack[];

for item in itemstoRemove {
	recipes.remove(item);
}

//Ultime Ingot
Agglomeration.addRecipe(<extendedcrafting:material:32>, 
[<plustic:osmiridiumingot>, <plustic:mirioningot>, <nuclearcraft:alloy:11>, <mysticalagradditions:insanium:2>, <advancedrocketry:productingot:1>]
,1000000,0x004a80,0xa432a8,
<avaritia:block_resource:2>,<actuallyadditions:block_crystal_empowered:2>,<actuallyadditions:block_crystal_empowered:4>,
null, <actuallyadditions:block_crystal:2>, <actuallyadditions:block_crystal:4>
);



//AR Creative Power Plug
recipes.addShaped(<libvulpes:creativepowerbattery>, [[<ore:circuitUltimate>, <extendedcrafting:material:19>, <ore:circuitUltimate>],[<extendedcrafting:material:19>, <libvulpes:forgepowerinput>, <extendedcrafting:material:19>], [<ore:circuitUltimate>, <extendedcrafting:material:19>, <mekanism:controlcircuit:3>]]);

##########################################################################################
print("==================== end of creative biz.zs ====================");
