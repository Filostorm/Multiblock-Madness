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

val Eww =
[
<tconstruct:slimesling>,
<tconstruct:slimesling:1>,
<tconstruct:slimesling:2>,
<tconstruct:slimesling:3>,
<tconstruct:slimesling:4>,
<tconstruct:slimesling:5>,
]
 as IItemStack[];
for item in Eww {
<ore:Eww>.add(item);
}

val pressurePlateWood =
[
<natura:maple_pressure_plate>,
<natura:silverbell_pressure_plate>,
<natura:amaranth_pressure_plate>,
<natura:tiger_pressure_plate>,
<natura:willow_pressure_plate>,
<natura:eucalyptus_pressure_plate>,
<natura:hopseed_pressure_plate>,
<natura:sakura_pressure_plate>,
<natura:ghostwood_pressure_plate>,
<natura:bloodwood_pressure_plate>,
<natura:fusewood_pressure_plate>,
<natura:darkwood_pressure_plate>,
<natura:redwood_pressure_plate>,
]
 as IItemStack[];
for item in pressurePlateWood {
<ore:pressurePlateWood>.add(item);
}
recipes.addShapeless(<minecraft:wooden_pressure_plate>, [<ore:pressurePlateWood>]);

<ore:ingotChocolate>.remove(<xlfoodmod:chocolate>);

<ore:ingotCopper>.add(<mysticalworld:copper_ingot>);

//<ore:stickInvar>.add(<tconstruct:tool_rod>.withTag({Material: "invar"}));
##########################################################################################
print("==================== end of mods blank.zs ====================");
