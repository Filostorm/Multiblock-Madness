import crafttweaker.item.IItemStack;

print("==================== loading rockhounding_alloytips.zs ====================");
##########################################################################################

//Thanks Hacatu!

val alloyComponentStrsMap as string[][IItemStack] = {
<ore:ingotCube>.firstItem:
[
"96 ppc Copper",
"3 ppc Beryllium",
"1 ppc Cobalt"
],
<ore:ingotScal>.firstItem:
[
"98 ppc Aluminum",
"2 ppc Scandium"
],
<ore:ingotBam>.firstItem:
[
"76 ppc Aluminum",
"15 ppc Magnesium",
"3 ppc Boron",
"3 ppc Lithium",
"3 ppc Silicon"
],
<ore:ingotStellite>.firstItem:
[
"57 ppc Cobalt",
"28 ppc Chromium",
"11 ppc Tungsten",
"2 ppc Carbon",
"1 ppc Silicon",
"1 ppc Molybdenum"
],
<ore:ingotCupronickel>.firstItem:
[
"63 ppc Copper",
"30 ppc Nickel",
"2 ppc Chromium",
"1 ppc Silicon",
"1 ppc Manganese",
"1 ppc Iron",
"1 ppc Titanium",
"1 ppc Zirconium"
],
<ore:ingotNimonic>.firstItem:
[
"50 ppc Nickel",
"21 ppc Chromium",
"20 ppc Cobalt",
"6 ppc Molybdenum",
"2 ppc Titanium",
"1 ppc Aluminum"
],
<ore:ingotHastelloy>.firstItem:
[
"55 ppc Nickel",
"16 ppc Molybdenum",
"15 ppc Chromium",
"5 ppc Iron",
"4 ppc Tungsten",
"3 ppc Cobalt",
"1 ppc Manganese",
"1 ppc Niobium"
],
<ore:ingotCunife>.firstItem:
[
"86 ppc Copper",
"11 ppc Nickel",
"2 ppc Iron",
"1 ppc Manganese"
],
<ore:ingotHydronalium>.firstItem:
[
"77 ppc Aluminum",
"12 ppc Magnesium",
"1 ppc Manganese"
],
<ore:ingotVanasteel>.firstItem:
[
"95 ppc Iron",
"2 ppc Chromium",
"1 ppc Carbon",
"1 ppc Vanadium",
"1 ppc Silicon"
],
<ore:ingotWidia>.firstItem:
[
"82 ppc Widia Compound",
"13 ppc Cobalt",
"5 ppc Carbon"
],
<ore:ingotTantaloy>.firstItem:
[
"94 ppc Tantalum",
"5 ppc Tungsten",
"1 ppc Niobium"
],
<ore:ingotNial>.firstItem:
[
"70 ppc Nickel",
"30 ppc Aluminum"
],
<ore:ingotInconel>.firstItem:
[
"48 ppc Nickel",
"22 ppc Chromium",
"19 ppc Cobalt",
"4 ppc Titanium",
"2 ppc Tungsten",
"2 ppc Aluminum",
"2 ppc Tantalum",
"1 ppc Niobium"
],/*
<rockhounding_chemistry:alloy_items_tech_b:7>://zircaloy
[
"98 ppc Zirconium",
"4 ppc Tin",
"1 ppc Niobium",
"1 ppc Iron",
"1 ppc Chromium"
],*/
<ore:ingotMischmetal>.firstItem:
[
"50 ppc Cerium",
"29 ppc Lanthanum",
"15 ppc Neodymium",
"5 ppc Praseodymium",
"1 ppc Iron"
],
<ore:ingotRosegold>.firstItem:
[
"75 ppc Gold",
"22 ppc Copper",
"3 ppc Silver"
],
<ore:ingotGreengold>.firstItem:
[
"75 ppc Gold",
"18 ppc Silver",
"5 ppc Copper",
"2 ppc Cadmium"
],
<ore:ingotWhitegold>.firstItem:
[
"75 ppc Gold",
"10 ppc Platinum",
"10 ppc Nickel",
"5 ppc Zinc"
],
<rockhounding_chemistry:alloy_items_deco:13>://shibuchi
[
"70 ppc Copper",
"20 ppc Silver",
"10 ppc Gold"
],
<ore:ingotTombak>.firstItem:
[
"75 ppc Copper",
"20 ppc Zinc",
"5 ppc Arsenic"
],
<ore:ingotPewter>.firstItem:
[
"90 ppc Tin",
"6 ppc Antimony",
"2 ppc Copper",
"1 ppc Bismuth",
"1 ppc Lead"
],
<ore:ingotCorten>.firstItem:
[
"93 ppc Iron",
"1 ppc Nickel",
"1 ppc Silicon",
"1 ppc Chromium",
"1 ppc Phosphorus",
"1 ppc Manganese",
"1 ppc Copper",
"1 ppc Vanadium"
],
<ore:ingotShakudo>.firstItem:
[
"90 ppc Copper",
"10 ppc Gold"
],
<ore:ingotPurplegold>.firstItem:
[
"80 ppc Gold",
"20 ppc Aluminum"
],
<ore:ingotNib>.firstItem:
[
"65 ppc Iron",
"30 ppc Neodymium",
"2 ppc Boron",
"1 ppc Niobium",
"1 ppc Dysprosium",
"1 ppc Praseodymium"
],
<ore:ingotCosm>.firstItem:
[
"50 ppc Cobalt",
"25 ppc Samarium",
"18 ppc Iron",
"5 ppc Copper",
"2 ppc Zirconium"
],
<rockhounding_chemistry:misc_items:23>://didymium brick
[
"46 ppc Lanthanum",
"34 ppc Neodymium",
"11 ppc Praseodymium",
"5 ppc Samarium",
"4 ppc Gadolinium",
"60 ppc Filtered Sand",
"(makes 8)"
],
<ore:ingotKanthal>.firstItem:
[
"67 ppc Iron",
"23 ppc Chromium",
"6 ppc Aluminum",
"2 ppc Silicon",
"1 ppc Manganese",
"1 ppc Carbon"
]
} as string[][IItemStack];

for alloyItem, componentStrs in alloyComponentStrsMap {
	alloyItem.addTooltip(format.gold("Hold Shift for Metal Alloyer Components:"));
	for str in componentStrs {
		alloyItem.addShiftTooltip(format.blue(str));
	}
}

##########################################################################################
print("==================== end of rockhounding_alloytips.zs ====================");