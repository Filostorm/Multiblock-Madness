import mods.chisel.Carving;

//add fan block recipe
Carving.removeVariation("factory", <chisel:technical:4>);
recipes.addShaped(<chisel:technical:4>, [[<advgenerators:iron_frame>, <nuclearcraft:compound:2>, <advgenerators:iron_frame>],[<nuclearcraft:compound:2>, <libvulpes:productfan:6>, <nuclearcraft:compound:2>], [<advgenerators:iron_frame>, <techreborn:part:29>, <advgenerators:iron_frame>]]);

Carving.removeGroup("voidstone");