#priority 99
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

<ore:oreStygianiron>.add(<woot:stygianironore>);
<ore:oreVoidstone>.add(<chisel:voidstone>);
<ore:basicBasalt>.add(<quark:basalt>);
<ore:basicLimestone>.add(<quark:limestone>);
<ore:basicMarble>.add(<astralsorcery:blockmarble>);



<ore:dustEnderPearl>.remove(<techreborn:dust:20>);
<ore:dustEnder>.add(<techreborn:dust:20>);
<ore:dustEnder>.remove(<enderore:dust_ender>);

<ore:circuitBasic>.add(<thaumcraft:mechanism_simple>);
<ore:circuitAdvanced>.add(<thaumcraft:mechanism_complex>);

//<ore:circuitBasic>.add(<thaumcraft:mechanism_complex>);

//<ore:stickInvar>.add(<tconstruct:tool_rod>.withTag({Material: "invar"}));
##########################################################################################
print("==================== end of mods blank.zs ====================");
