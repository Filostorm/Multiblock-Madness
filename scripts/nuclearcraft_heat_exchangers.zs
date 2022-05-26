import crafttweaker.item.IIngredient;

/*
Copyright Bob Bartsch, 2021

This code is governed by the
Creative Commons Attribution–NonCommercial License
https://creativecommons.org/licenses/by-nc/3.0/

(Meaning: credit me if you modify and/or redistribute
this code. Also, you may not sell this code.)
*/

/*
This is a modified version of the Moar Reactor Functionality HX script
*/

/* -=-=-=-=-=-=-=-=- Normal HX Recipes -=-=-=-=-=-=-=-=- */
var crMatrix = [[275,250,425,400,350,525,450,500,550,575,725,325,475,1000,975,375,600,300,800,650,625,750,875,850,825,900,700,675,925,950,775,1025],
                [825,750,1275,1200,1050,1575,1350,1500,1650,1725,2175,975,1425,3000,2925,1125,1800,900,2400,1950,1875,2250,2625,2550,2475,2700,2100,2025,2775,2850,2325,3075],
                [2750,2500,4250,4000,3500,5250,4500,5000,5500,5750,7250,3250,4750,10000,9750,3750,6000,3000,8000,6500,6250,7500,8750,8500,8250,9000,7000,6750,9250,9500,7750,10250],
                [1375,1250,2125,2000,1750,2625,2250,2500,2750,2875,3625,1625,2375,5000,4875,1875,3000,1500,4000,3250,3125,3750,4375,4250,4125,4500,3500,3375,4625,4750,3875,5125],
                ] as int[][];
var coolantIn = [<fluid:nak_hot>,<fluid:iron_nak_hot>,<fluid:redstone_nak_hot>,<fluid:quartz_nak_hot>,<fluid:obsidian_nak_hot>,<fluid:nether_brick_nak_hot>,<fluid:glowstone_nak_hot>,<fluid:lapis_nak_hot>,<fluid:gold_nak_hot>,<fluid:prismarine_nak_hot>,<fluid:slime_nak_hot>,<fluid:end_stone_nak_hot>,<fluid:purpur_nak_hot>,<fluid:diamond_nak_hot>,<fluid:emerald_nak_hot>,<fluid:copper_nak_hot>,<fluid:tin_nak_hot>,<fluid:lead_nak_hot>,<fluid:boron_nak_hot>,<fluid:lithium_nak_hot>,<fluid:magnesium_nak_hot>,<fluid:manganese_nak_hot>,<fluid:aluminum_nak_hot>,<fluid:silver_nak_hot>,<fluid:fluorite_nak_hot>,<fluid:villiaumite_nak_hot>,<fluid:carobbiite_nak_hot>,<fluid:arsenic_nak_hot>,<fluid:liquid_nitrogen_nak_hot>,<fluid:liquid_helium_nak_hot>,<fluid:enderium_nak_hot>,<fluid:cryotheum_nak_hot>] as IIngredient[];
var coolantOut = [<fluid:nak>,<fluid:iron_nak>,<fluid:redstone_nak>,<fluid:quartz_nak>,<fluid:obsidian_nak>,<fluid:nether_brick_nak>,<fluid:glowstone_nak>,<fluid:lapis_nak>,<fluid:gold_nak>,<fluid:prismarine_nak>,<fluid:slime_nak>,<fluid:end_stone_nak>,<fluid:purpur_nak>,<fluid:diamond_nak>,<fluid:emerald_nak>,<fluid:copper_nak>,<fluid:tin_nak>,<fluid:lead_nak>,<fluid:boron_nak>,<fluid:lithium_nak>,<fluid:magnesium_nak>,<fluid:manganese_nak>,<fluid:aluminum_nak>,<fluid:silver_nak>,<fluid:fluorite_nak>,<fluid:villiaumite_nak>,<fluid:carobbiite_nak>,<fluid:arsenic_nak>,<fluid:liquid_nitrogen_nak>,<fluid:liquid_helium_nak>,<fluid:enderium_nak>,<fluid:cryotheum_nak>] as IIngredient[];
var coolModifier = [144,192,15,60] as int[];
var transferIn = [<fluid:water>|<fluid:condensate_water>,<fluid:preheated_water>, <fluid:exhaust_steam>,<fluid:condensate_water>] as IIngredient[];
var transferOut = [<fluid:high_pressure_steam>,<fluid:high_pressure_steam>,<fluid:low_pressure_steam>,<fluid:preheated_water>] as IIngredient[];
var transferModifier = [4,4,1,1] as int[];

//normal HX recipes
for i,array in crMatrix{
    for j,num in array{
        mods.nuclearcraft.ChemicalReactor.addRecipe(coolantIn[j].amount(coolModifier[i]), transferIn[i].amount(num), coolantOut[j].amount(coolModifier[i]), transferOut[i].amount(num*transferModifier[i]), 0.00125, 0.0, 0.0);
    }
}