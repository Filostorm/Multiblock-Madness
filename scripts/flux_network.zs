import crafttweaker.item.IItemStack;
print("==================== loading flux network.zs ====================");
##########################################################################################

val itemstoRemove =
[
	<fluxnetworks:fluxcore>
]
 as IItemStack[];

for item in itemstoRemove {
	recipes.remove(item);
}

recipes.addShaped(<fluxnetworks:fluxcontroller>, [[<fluxnetworks:fluxblock>, <randomthings:spectrelens>, <fluxnetworks:fluxblock>],[<fluxnetworks:flux>, null, <fluxnetworks:flux>], [<fluxnetworks:fluxblock>, <fluxnetworks:flux>, <fluxnetworks:fluxblock>]]);
recipes.addShaped(<fluxnetworks:fluxcore> * 8, [[<fluxnetworks:flux>, <fluxnetworks:flux>, <fluxnetworks:flux>],[<fluxnetworks:flux>, <mekanism:teleportationcore>, <fluxnetworks:flux>], [<fluxnetworks:flux>, <fluxnetworks:flux>, <fluxnetworks:flux>]]);

##########################################################################################
print("==================== end of flux network.zs ====================");
