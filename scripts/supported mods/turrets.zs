#modloaded openmodularturrets
import crafttweaker.item.IItemStack;
print("==================== loading turrets.zs ====================");
##########################################################################################

val itemstoRemove =
[

<openmodularturrets:turret_base:1>,
<openmodularturrets:intermediate_tiered:1>,
<openmodularturrets:turret_base>,
]
 as IItemStack[];

for item in itemstoRemove {
	recipes.remove(item);
}

//tier 1 turret
recipes.addShaped(<openmodularturrets:turret_base:1>, [[<thermalfoundation:material:354>, <openmodularturrets:intermediate_tiered:1>, <thermalfoundation:material:354>],[<openmodularturrets:intermediate_regular>, <openmodularturrets:turret_base>, <openmodularturrets:intermediate_regular>], [<thermalfoundation:material:354>, <enderio:item_basic_capacitor>, <thermalfoundation:material:354>]]);
recipes.addShaped(<openmodularturrets:intermediate_tiered:1>, [[null, <thermalfoundation:material:356>, null],[<thermalfoundation:material:356>, <openmodularturrets:intermediate_tiered>, <thermalfoundation:material:356>], [null, <openmodularturrets:intermediate_regular>, null]]);
recipes.addShaped(<openmodularturrets:turret_base>, [[<thermalfoundation:material:320>, <openmodularturrets:intermediate_tiered>, <thermalfoundation:material:320>],[<thermalfoundation:material:257>, <thaumadditions:iron_framed_greatwood>, <thermalfoundation:material:257>], [<thermalfoundation:material:320>, <enderio:item_capacitor_grainy>, <thermalfoundation:material:320>]]);

##########################################################################################
print("==================== end of turrets.zs ====================");
