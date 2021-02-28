import mods.chisel.Carving;
import crafttweaker.item.IItemStack;

//add fan block recipe
Carving.removeVariation("factory", <chisel:technical:4>);
recipes.addShaped(<chisel:technical:4>, [[<advgenerators:iron_frame>, <nuclearcraft:compound:2>, <advgenerators:iron_frame>],[<nuclearcraft:compound:2>, <libvulpes:productfan:6>, <nuclearcraft:compound:2>], [<advgenerators:iron_frame>, <techreborn:part:29>, <advgenerators:iron_frame>]]);

//Pipes for tank
Carving.removeVariation("factory", <chisel:technical:5>);
recipes.addShaped(<chisel:technical:5> * 2, [[<thermalfoundation:material:321>, <embers:pipe>, <thermalfoundation:material:321>],[<embers:pipe>, <embers:fluid_gauge>, <embers:pipe>], [<thermalfoundation:material:321>, <embers:pipe>, <thermalfoundation:material:321>]]);

Carving.removeGroup("voidstone");


Carving.addGroup("newvoidstone");

val newvoidstomeitems =
[
<chisel:voidstone:7>,
<chisel:voidstone:1>,
<chisel:voidstone:2>,
<chisel:voidstone:3>,
<chisel:voidstone:5>,
<chisel:voidstone:6>,
]
 as IItemStack[];

for item in newvoidstomeitems {
Carving.addVariation("newvoidstone", item);
}
