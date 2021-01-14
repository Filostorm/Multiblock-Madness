##########################################################################################
#modloaded thaumcraft
#priority 100

import mods.thaumcraft.ArcaneWorkbench;
import mods.thaumcraft.Crucible;
import mods.thaumcraft.Infusion;
import crafttweaker.item.IItemStack;

print("==================== loading mods thaumcraft.zs ====================");
##########################################################################################


val itemstoRemove =
[
    <thaumcraft:stone_arcane>,
    <thaumicenergistics:essentia_component_1k>,
    <thaumicenergistics:essentia_component_4k>,
    <thaumicenergistics:essentia_component_16k>,
    <thaumicenergistics:essentia_component_64k>,
]
 as IItemStack[];

for item in itemstoRemove {
	recipes.remove(item);
}
val preciousGems = <ore:preciousGems>;
preciousGems.add(<techreborn:gem>);
preciousGems.add(<techreborn:gem:1>);
preciousGems.add(<techreborn:gem:2>);
preciousGems.add(<techreborn:gem:3>);
preciousGems.add(<techreborn:gem:4>);
//preciousGems.add(<astralsorcery:itemcraftingcomponent>);
//preciousGems.add(<minecraft:emerald>);
//preciousGems.add(<minecraft:diamond>);

  <contenttweaker:material_part:3>.setAspects(<aspect:metallum> * 15);

### CRAFTING RECIPES ###

// thaumometer
ArcaneWorkbench.removeRecipe(<thaumcraft:thaumometer>);
ArcaneWorkbench.registerShapedRecipe("CTThaumometer", "", 20,
    [],
    <thaumcraft:thaumometer>, [
        [<ore:preciousGems>, <ore:plateBronze>, <ore:preciousGems>],
        [<ore:plateBronze>, <minecraft:glass_pane>, <ore:plateBronze>],
        [<ore:preciousGems>, <ore:plateBronze>, <ore:preciousGems>]
    ]
);

// arcane stone
//ArcaneWorkbench.removeRecipe(<thaumcraft:stone_arcane>);
ArcaneWorkbench.registerShapedRecipe("CTArcaneStone", "", 10,
    [],
    <thaumcraft:stone_arcane> * 8, [
        [<minecraft:stone>, <minecraft:stone>, <minecraft:stone>],
        [<minecraft:stone>, <thaumcraft:crystal_essence>, <minecraft:stone>],
        [<minecraft:stone>, <minecraft:stone>, <minecraft:stone>]
    ]
);
ArcaneWorkbench.registerShapedRecipe("CTArcaneStone", "", 10, [],
    <thaumcraft:stone_arcane> * 8, [
        [<minecraft:stone>, <minecraft:stone>, <minecraft:stone>],
        [<minecraft:stone>, <thaumcraft:crystal_essence>, <minecraft:stone>],
        [<minecraft:stone>, <minecraft:stone>, <minecraft:stone>]
    ]
);
ArcaneWorkbench.registerShapedRecipe("essentia_component_64k", "", 10, [], <thaumicenergistics:essentia_component_64k>, [[<thaumadditions:mithrillium_plate>, <appliedenergistics2:material:24>, <thaumadditions:mithrillium_plate>],[<thaumicenergistics:essentia_component_16k>, <thaumcraft:salis_mundus>, <thaumicenergistics:essentia_component_16k>], [<thaumadditions:mithrillium_plate>, <thaumicenergistics:essentia_component_16k>, <thaumadditions:mithrillium_plate>]]);
ArcaneWorkbench.registerShapedRecipe("essentia_component_16k", "", 10, [], <thaumicenergistics:essentia_component_16k>, [[<thaumcraft:plate:3>, <appliedenergistics2:material:24>, <thaumcraft:plate:3>],[<thaumicenergistics:essentia_component_4k>, <thaumcraft:salis_mundus>, <thaumicenergistics:essentia_component_4k>], [<thaumcraft:plate:3>, <thaumicenergistics:essentia_component_4k>, <thaumcraft:plate:3>]]);
ArcaneWorkbench.registerShapedRecipe("essentia_component_4k", "", 10, [], <thaumicenergistics:essentia_component_4k>, [[<thaumcraft:plate:2>, <appliedenergistics2:material:23>, <thaumcraft:plate:2>],[<thaumicenergistics:essentia_component_1k>, <thaumcraft:salis_mundus>, <thaumicenergistics:essentia_component_1k>], [<thaumcraft:plate:2>, <thaumicenergistics:essentia_component_1k>, <thaumcraft:plate:2>]]);
ArcaneWorkbench.registerShapedRecipe("essentia_component_1k", "", 10, [], <thaumicenergistics:essentia_component_1k>, [[<thaumcraft:plate>, <thaumcraft:salis_mundus>, <thaumcraft:plate>],[<thaumcraft:salis_mundus>, <appliedenergistics2:material:22>, <thaumcraft:salis_mundus>], [<thaumcraft:plate>, <thaumcraft:salis_mundus>, <thaumcraft:plate>]]);


Crucible.removeRecipe(<thaumcraft:ingot>);
Crucible.registerRecipe("CTThaumium", "",
    <thaumcraft:ingot>, <contenttweaker:inert_ingot>,
	[<aspect:praecantatio> * 5, <aspect:terra> * 5]
);
Crucible.registerRecipe("CTThaumium2", "",
    <thaumcraft:ingot>*2, <contenttweaker:material_part:20>,
	[<aspect:praecantatio> * 5, <aspect:terra> * 5]
);
Crucible.registerRecipe("SkullVoidstone", "",
    <chisel:energizedvoidstone:3>, <chisel:energizedvoidstone>,
	[<aspect:mortuus> * 10]
);

Crucible.removeRecipe(<thaumcraft:nitor_yellow>);
Crucible.registerRecipe("EmberNitor", "",
    <thaumcraft:nitor_yellow>, <embers:crystal_ember>,
	[<aspect:lux> * 10,<aspect:ignis> * 10,<aspect:potentia> * 10]
);


// runic matrix
ArcaneWorkbench.removeRecipe(<thaumcraft:infusion_matrix>);


//add aspects
    <chisel:voidstone>.setAspects(<aspect:tenebrae> * 5, <aspect:vacuos> * 5, <aspect:ordo> * 5);
    <chisel:energizedvoidstone>.setAspects(<aspect:tenebrae> * 5, <aspect:perditio> * 5, <aspect:potentia> * 5);
    
    val blockGlassHardened = <ore:blockGlassHardened>;
blockGlassHardened.add(<thaumicaugmentation:fortified_glass>);

<embers:winding_gears>.setAspects(<aspect:machina>*40,<aspect:instrumentum>*40);
##########################################################################################
print("==================== end of mods thaumcraft.zs ====================");
