#priority 100
import crafttweaker.item.IItemStack;
import crafttweaker.oredict.IOreDict;
print("==================== loading mods blank.zs ====================");
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
<ore:plateVoid>.remove(<moreplates:void_plate>);
<ore:dustWood>.add(<techreborn:dust:46>);

<ore:dustWheat>.addAll(<ore:foodFlour>);
<ore:dustSaltpeter>.addAll(<ore:dustNiter>);

<ore:oreVoidstone>.add(<chisel:voidstone>);
<ore:basicBasalt>.add(<quark:basalt>);
<ore:basicLimestone>.add(<quark:limestone>);
<ore:basicMarble>.add(<astralsorcery:blockmarble>);


<ore:skyStone>.add(<appliedenergistics2:sky_stone_block>);

<ore:dustEnderPearl>.remove(<techreborn:dust:20>);
<ore:dustEnder>.add(<techreborn:dust:20>);
<ore:dustEnder>.remove(<enderore:dust_ender>);


//<ore:NeutronPile>.add(<avaritia:resource:2>);
/*
<ore:circuitBasic>.add(<thaumcraft:mechanism_simple>);
<ore:circuitAdvanced>.add(<thaumcraft:mechanism_complex>);
*/
<ore:circuitBasic>.add(<thaumcraft:mechanism_complex>);


val basicPlates =
[
<thermalfoundation:material:32>,
<thermalfoundation:material:33>,
<thermalfoundation:material:320>,
<thermalfoundation:material:325>,
<thermalfoundation:material:321>,
<thermalfoundation:material:322>,
<thermalfoundation:material:323>,
]
 as IItemStack[];
for item in basicPlates {
<ore:basicPlates>.add(item);
}

//<ore:stickInvar>.add(<tconstruct:tool_rod>.withTag({Material: "invar"}));
##########################################################################################
print("==================== end of mods blank.zs ====================");
