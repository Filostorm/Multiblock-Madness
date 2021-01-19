import crafttweaker.item.IItemStack;
print("==================== loading mods Fossils.zs ====================");
##########################################################################################

val itemstoRemove =
[
	<fossil:scarab_pickaxe>,
	<fossil:scarab_axe>,
	<fossil:scarab_shovel>,
	<fossil:scarab_sword>,
]
 as IItemStack[];

for item in itemstoRemove {
	recipes.remove(item);
}

<fossil:scarab_pickaxe>.maxDamage = 3000;
//<fossil:ancient_sword>.damage = 10;

recipes.addShapeless(<fossil:scarab_pickaxe>.withTag({ench: [{lvl: 5 as short, id: 47 as short}, {lvl: 3 as short, id: 45 as short}, {lvl: 1 as short, id: 70 as short}], RepairCost: 7, infench: [{lvl: 3 as short, id: 4 as short}]}),[<minecraft:diamond_pickaxe>,<fossil:scarab_gem>]);

recipes.addShapeless(<fossil:scarab_axe>.withTag({ench: [{lvl: 5 as short, id: 47 as short}], RepairCost: 1}),[<minecraft:diamond_axe>,<fossil:scarab_gem>]);
recipes.addShapeless(<fossil:scarab_shovel>.withTag({ench: [{lvl: 5 as short, id: 47 as short}], RepairCost: 1}),[<minecraft:diamond_shovel>,<fossil:scarab_gem>]);
recipes.addShapeless(<fossil:scarab_sword>.withTag({ench: [{lvl: 4 as short, id: 21 as short}, {lvl: 3 as short, id: 20 as short}, {lvl: 5 as short, id: 16 as short}, {lvl: 4 as short, id: 34 as short}, {lvl: 1 as short, id: 70 as short}], RepairCost: 3}),[<minecraft:diamond_sword>,<fossil:scarab_gem>]);

//mods.fossils.recipes.removeWorktableRecipe(<fossil:broken_sword>);
//mods.fossils.recipes.addWorktableRecipe(<fossil:broken_sword>, <fossil:relic_scrap>, <fossil:ancient_sword>.withTag({ench: [{lvl: 1 as short, id: 27 as short}, {lvl: 5 as short, id: 36 as short}], RepairCost: 3}));

mods.fossils.recipes.addAnalyzerOutput(<fossil:ancient_sword>, <fossil:ancient_sword>.withTag({ench: [{lvl: 1 as short, id: 27 as short}, {lvl: 5 as short, id: 36 as short}], RepairCost: 3}), 100);
##########################################################################################
print("==================== end of Fossils.zs ====================");
