import crafttweaker.item.IItemStack;
import mods.thermalexpansion.InductionSmelter;
import mods.thermalexpansion.Transposer;
import mods.nuclearcraft.AlloyFurnace;
import mods.thermalexpansion.Insolator;
import mods.nuclearcraft.Infuser;
import mods.techreborn.blastFurnace;

print("==================== loading thermal.zs ====================");
##########################################################################################


val itemstoRemove =
[
    <thermalexpansion:machine:15>,
    <thermalexpansion:machine:14>,
    <thermalfoundation:material:103>,
    <thermalfoundation:material:101>,
    <thermalfoundation:material:102>,
    <thermalexpansion:frame:64>,
    <thermalexpansion:frame>,
    <thermalexpansion:machine:9>,
    <thermalexpansion:machine:11>,
    <thermalfoundation:fertilizer>,
    <thermalexpansion:machine>,
    <thermalexpansion:machine:1>,
    <thermalexpansion:machine:2>,
    <thermalexpansion:machine:3>,
    <thermalexpansion:machine:4>,
    <thermalexpansion:machine:5>,
    <thermalexpansion:machine:6>,
    <thermalexpansion:machine:7>,
    <thermalexpansion:machine:8>,
    <thermalexpansion:machine:10>,
    <thermalexpansion:machine:12>,
    <thermalexpansion:machine:13>,
]
 as IItemStack[];

for item in itemstoRemove {
	recipes.remove(item);
}
/*
//Mana Metal is not Mithril?
<ore:oreMithril>.remove(<thermalfoundation:ore:8>);
<ore:dustMithril>.remove(<thermalfoundation:material:72>);
<ore:ingotMithril>.remove(<thermalfoundation:material:136>);
<ore:nuggetMithril>.remove(<thermalfoundation:material:200>);
<ore:plateMithril>.remove(<thermalfoundation:material:328>);
<ore:gearMithril>.remove(<thermalfoundation:material:264>);
<ore:coinMithril>.remove(<thermalfoundation:coin:72>);
<ore:gearMithril>.remove(<thermalfoundation:material:264>);
<ore:blockMithril>.remove(<thermalfoundation:storage:8>);
*/

// Mana Metal
recipes.addShaped(<thermalfoundation:material:136>, [[null, <mysticalagriculture:crafting:37>, null],[<enderutilities:enderpart:2>, <contenttweaker:inert_ingot>, <botania:manaresource:4>], [null, <thaumcraft:ingot>, null]]);

recipes.addShaped(<thermalfoundation:material:136>*2, [[null, <mysticalagriculture:crafting:37>, null],[<enderutilities:enderpart:2>, <contenttweaker:material_part:20>, <botania:manaresource:4>], [null, <thaumcraft:ingot>, null]]);

// Mana Dust
recipes.addShaped(<thermalfoundation:material:1028>, [[<bloodarsenal:base_item:2>,<botania:manaresource:8>, <thaumcraft:salis_mundus>],[<thermalfoundation:material:1024>, <thermalfoundation:material:72>, <astralsorcery:itemcraftingcomponent:2>], [<thermalfoundation:material:1027>, <thermalfoundation:material:1026>, <thermalfoundation:material:1025>]]);

// Device Frame
recipes.addShaped(<thermalexpansion:frame:64>, [[<thermalfoundation:material:321>, <ore:fusedGlass>, <thermalfoundation:material:321>],[<ore:fusedGlass>, <thermalfoundation:material:292>, <ore:fusedGlass>], [<thermalfoundation:material:321>, <ore:fusedGlass>, <thermalfoundation:material:321>]]);

// Hardened glass
recipes.addShaped(<thermalfoundation:glass:3>, [[<thermalfoundation:material:770>, <thermalfoundation:material:1024>, <thermalfoundation:material:770>],[<thermalfoundation:material:67>, <ore:fusedQuartz>, <thermalfoundation:material:67>], [<thermalfoundation:material:770>, <thermalfoundation:material:1024>, <thermalfoundation:material:770>]]);

/*
val Coils as IItemStack[IItemStack] = {
    <thermalfoundation:material:513>:<moreplates:gold_stick>,
    <thermalfoundation:material:514>:<moreplates:silver_stick>,
    <thermalfoundation:material:515>:<moreplates:electrum_stick>,
} as IItemStack[IItemStack];

for coil, rod in Coils {
	recipes.remove(coil);
    assemblingMachine.addRecipe(coil, rod, <advgenerators:iron_wiring>*2, 400, 32);
    PrecisionAssembler.addRecipe(coil, 200, 10000, rod, <advgenerators:iron_wiring>*2);
}
*/

//Remove Coal????
mods.thermalexpansion.RedstoneFurnace.removeRecipe(<thermalfoundation:material:768>);

//mods.thermalexpansion.Pulverizer.addRecipe(IItemStack output, IItemStack input, int energy, @Optional IItemStack secondaryOutput, @Optional int secondaryChance);

//mods.thermalexpansion.Transposer.addFillRecipe(IItemStack output, IItemStack input, ILiquidStack fluid, int energy);

// Lumium
//AlloyFurnace.removeRecipeWithOutput(<nuclearcraft:alloy:8>*4);
Infuser.removeRecipeWithOutput(<thermalfoundation:material:166>);
InductionSmelter.addRecipe(<nuclearcraft:alloy:8>*4, <thermalfoundation:material:130>, <thermalfoundation:material:129>*3, 5000);
Transposer.addFillRecipe(<thermalfoundation:material:166>, <nuclearcraft:alloy:8>, <liquid:glowstone> * 250, 10000);

// Signallum
//AlloyFurnace.removeRecipeWithOutput(<nuclearcraft:alloy:7>*4);
Infuser.removeRecipeWithOutput(<thermalfoundation:material:165>);
InductionSmelter.addRecipe(<nuclearcraft:alloy:7>*4, <thermalfoundation:material:130>, <thermalfoundation:material:128>*3, 5000);
Transposer.addFillRecipe(<thermalfoundation:material:165>, <rockhounding_chemistry:alloy_items_deco:13>, <liquid:redstone> * 300, 10000);
Transposer.addFillRecipe(<thermalfoundation:material:165>, <nuclearcraft:alloy:7>, <liquid:redstone> * 300, 10000);

// Enderium
//AlloyFurnace.removeRecipeWithOutput(<nuclearcraft:alloy:9>*4);
Infuser.removeRecipeWithOutput(<thermalfoundation:material:167>);
InductionSmelter.addRecipe(<nuclearcraft:alloy:9>*4, <thermalfoundation:material:134>, <thermalfoundation:material:131>*3, 5000);
Transposer.addFillRecipe(<thermalfoundation:material:167>, <nuclearcraft:alloy:9>, <liquid:ender> * 250, 10000);

val OretoRemove =
[
<thermalfoundation:ore:7>,
<thermalfoundation:ore:6>,
<thermalfoundation:ore:8>,
]
 as IItemStack[];

for item in OretoRemove {
InductionSmelter.removeRecipe(item, <minecraft:sand>);
InductionSmelter.removeRecipe(item, <thermalfoundation:material:865>);
InductionSmelter.removeRecipe(item, <thermalfoundation:material:866>);
}

val OreByproductstoRemove =
[
<thermalfoundation:ore:5>,
]
 as IItemStack[];

for item in OreByproductstoRemove {
InductionSmelter.removeRecipe(item, <thermalfoundation:material:866>);
}

val DuststoRemove =
[
<thermalfoundation:material:71>,
<thermalfoundation:material:70>,
<thermalfoundation:material:72>,
<minecraft:iron_ingot>,
]
 as IItemStack[];

for item in DuststoRemove {
InductionSmelter.removeRecipe(item, <minecraft:sand>);
}


val flowerDupe =
[
<minecraft:red_flower:5>,
<minecraft:red_flower:6>,
<minecraft:red_flower:3>,
<minecraft:red_flower:4>,
<minecraft:red_flower:2>,
<minecraft:red_flower:1>,
<minecraft:yellow_flower>,
<minecraft:red_flower:8>,
<minecraft:red_flower>,
<minecraft:red_flower:7>,
<xlfoodmod:vanilla_flower>,
<randomthings:glowingmushroom>,
//<nuclearcraft:glowing_mushroom>,
]
 as IItemStack[];
for item in flowerDupe {
Insolator.addRecipe(item*2, item, <thermalfoundation:fertilizer>, 1500);
Insolator.addRecipe(item*3, item, <thermalfoundation:fertilizer:1>, 3000);
Insolator.addRecipe(item*5, item, <thermalfoundation:fertilizer:2>, 5000);
}



// Watering Cans
recipes.removeShaped(<thermalcultivation:watering_can>, [[<thermalfoundation:material:128>, null, null],[<thermalfoundation:material:128>, <minecraft:bucket>, <thermalfoundation:material:128>], [null, <thermalfoundation:material:128>, null]]);
recipes.removeShaped(<thermalcultivation:watering_can:1>, [[null, <minecraft:dye:15>, null],[<thermalfoundation:material:162>, <thermalcultivation:watering_can>, <thermalfoundation:material:162>], [<minecraft:dye:15>, <minecraft:redstone>, <minecraft:dye:15>]]);
recipes.addShaped(<thermalcultivation:watering_can:1>, [[null, <cyclicmagic:peat_fuel>, null],[<thermalfoundation:material:162>, <thermalcultivation:watering_can>, <thermalfoundation:material:162>], [<cyclicmagic:peat_fuel>, <minecraft:redstone>, <cyclicmagic:peat_fuel>]]);
recipes.addShaped(<thermalcultivation:watering_can>, [[<thermalfoundation:material:128>, null, null],[<thermalfoundation:material:128>, <actuallyadditions:item_fertilizer>, <thermalfoundation:material:128>], [null, <thermalfoundation:material:128>, null]]);




val hardenedGlassMap = [
<thermalfoundation:material:64>,
<thermalfoundation:material:66>,
<thermalfoundation:material:67>,
<thermalfoundation:material:97>,
<thermalfoundation:material:69>,
<thermalfoundation:material:101>,
<thermalfoundation:material:102>,
<thermalfoundation:material:96>,
<thermalfoundation:material:100>,
<thermalfoundation:material:68>,
<thermalfoundation:material:98>,
<thermalfoundation:material:70>,
<thermalfoundation:material:99>,
<thermalfoundation:material:65>,
<thermalfoundation:material:103>,
<thermalfoundation:material:71>,
] as IItemStack[];

for dust in hardenedGlassMap {
	InductionSmelter.removeRecipe(<thermalfoundation:glass:3>, dust);
}



//Enderium Glass
blastFurnace.addRecipe(<thermalfoundation:glass_alloy:7>*2, null, <techreborn:reinforced_glass>*2, <thermalfoundation:material:103>, 300, 1024, 2000);

//Lumium Glass
blastFurnace.addRecipe(<thermalfoundation:glass_alloy:6>*2, null, <techreborn:reinforced_glass>*2, <thermalfoundation:material:102>, 300, 1024, 2000);

//Iridium Glass
blastFurnace.addRecipe(<thermalfoundation:glass:7>*4, null, <techreborn:reinforced_glass>*4, <techreborn:plates:38>, 600, 2048, 3500);

// Resonant Cell Upgrade
recipes.addShapeless(<thermalexpansion:cell>.withTag({Level: 4 as byte}), [<thermalexpansion:cell>,<thermalfoundation:upgrade:35>]);

//---=== New Thermal Machine Recipes ===---//

// Igneous Extruder
recipes.addShaped(<thermalexpansion:machine:15>.withTag({Level: 1 as byte}), 
    [[null, <embers:superheater>, null],
    [<thermalfoundation:material:162>, <thermalexpansion:frame:64>, <thermalfoundation:material:162>], 
    [<thermalfoundation:material:256>, <openblocks:tank>, <thermalfoundation:material:256>]]);

// Glacial Precipiator
recipes.addShaped(<thermalexpansion:machine:14>.withTag({Level: 1 as byte}), 
    [[null, <cookingforblockheads:ice_unit>, null],
    [<thermalfoundation:material:162>, <thermalexpansion:frame:64>, <thermalfoundation:material:162>], 
    [<thermalfoundation:material:256>, <openblocks:tank>, <thermalfoundation:material:256>]]);

// Sequential Fabricator
recipes.addShaped(<thermalexpansion:machine:11>.withTag({Level: 1 as byte}), [
	[null, <ore:workbench>, null], 
	[<ore:plateTin>, <thermalexpansion:frame:64>, <ore:plateTin>], 
	[<ore:gearCopper>, <rockhounding_chemistry:misc_items:10>, <ore:gearCopper>]
]);

# [Redstone Furnace (Basic)] from [Machine Frame][+5]
craft.remake(<thermalexpansion:machine>.withTag({Level: 1 as byte}), ["pretty",
  "A o A",
  "C ◙ C",
  "¤ ♥ ¤"], {
  "A": <ore:plateadvancedAlloy> | <ore:plateAdvancedAlloy>, # Advanced Alloy Plate
  "o": <techreborn:part:13>,             # Constantan Heating Coil
  "C": <ore:solenoidCopper>,             # Copper Solenoid
  "◙": <thermalexpansion:frame>,         # Machine Frame
  "¤": <ore:gearElectricalSteel>,        # Electrical Steel Gear
  "♥": <thermalfoundation:material:513>, # Redstone Reception Coil
});

# [Pulverizer (Basic)] from [Machine Frame][+6]
craft.remake(<thermalexpansion:machine:1>.withTag({Level: 1 as byte}), ["pretty",
  "A B A",
  "m ◙ D",
  "¤ ♥ ¤"], {
  "A": <ore:plateadvancedAlloy> | <ore:plateAdvancedAlloy>, # Advanced Alloy Plate
  "B": <ore:circuitBasic>,               # Electronic Circuit
  "m": <ore:motor>,                      # Electric Motor
  "◙": <thermalexpansion:frame>,         # Machine Frame
  "D": <ore:craftingDiamondGrinder>,     # Diamond Grinding Head
  "¤": <ore:gearElectricalSteel>,        # Electrical Steel Gear
  "♥": <thermalfoundation:material:513>, # Redstone Reception Coil
});

# [Sawmill (Basic)] from [Machine Frame][+6]
craft.remake(<thermalexpansion:machine:2>.withTag({Level: 1 as byte}), ["pretty",
  "A B A",
  "m ◙ S",
  "¤ ♥ ¤"], {
  "A": <ore:plateadvancedAlloy> | <ore:plateAdvancedAlloy>, # Advanced Alloy Plate
  "B": <ore:circuitBasic>,               # Electronic Circuit
  "m": <ore:motor>,                      # Electric Motor
  "◙": <thermalexpansion:frame>,         # Machine Frame
  "S": <thermalfoundation:material:657>, # Saw Blade
  "¤": <ore:gearElectricalSteel>,        # Electrical Steel Gear
  "♥": <thermalfoundation:material:513>, # Redstone Reception Coil
});

# [Induction Smelter (Basic)] from [Machine Frame][+5]
craft.remake(<thermalexpansion:machine:3>.withTag({Level: 1 as byte}), ["pretty",
  "A E A",
  "K ◙ K",
  "¤ ♥ ¤"], {
  "A": <ore:plateadvancedAlloy> | <ore:plateAdvancedAlloy>, # Advanced Alloy Plate
  "E": <contenttweaker:plate_engineering>, # Engineers Masterpiece
  "K": <techreborn:part:15>,               # Kanthal Heating Coil
  "◙": <thermalexpansion:frame>,           # Machine Frame
  "¤": <ore:gearEnergeticAlloy>,           # Energetic Alloy Gear
  "♥": <thermalfoundation:material:513>,   # Redstone Reception Coil
});

# [Phytogenic Insolator (Basic)] from [Machine Frame][+5]
craft.remake(<thermalexpansion:machine:4>.withTag({Level: 1 as byte}), ["pretty",
  "A ☼ A",
  "d ◙ d",
  "¤ ♥ ¤"], {
  "A": <ore:plateadvancedAlloy> | <ore:plateAdvancedAlloy>, # Advanced Alloy Plate
  "☼": <ore:gearLumium>,                 # Lumium Gear
  "d": <ore:dirt>,                       # Dirt
  "◙": <thermalexpansion:frame>,         # Machine Frame
  "¤": <ore:gearEnergeticAlloy>,         # Energetic Alloy Gear
  "♥": <thermalfoundation:material:513>, # Redstone Reception Coil
});

# [Compactor (Basic)] from [Machine Frame][+5]
craft.remake(<thermalexpansion:machine:5>.withTag({Level: 1 as byte}), ["pretty",
  "A P A",
  "a ◙ a",
  "¤ ♥ ¤"], {
  "A": <ore:plateadvancedAlloy> | <ore:plateAdvancedAlloy>, # Advanced Alloy Plate
  "P": <ore:craftingPiston>,             # Piston
  "a": <ore:actuator>,                   # Linear Actuator
  "◙": <thermalexpansion:frame>,         # Machine Frame
  "¤": <ore:gearElectricalSteel>,        # Electrical Steel Gear
  "♥": <thermalfoundation:material:513>, # Redstone Reception Coil
});

# [Magma Crucible (Basic)] from [Machine Frame][+5]
craft.remake(<thermalexpansion:machine:6>.withTag({Level: 1 as byte}), ["pretty",
  "A s A",
  "R ◙ R",
  "¤ ♥ ¤"], {
  "A": <ore:plateadvancedAlloy> | <ore:plateAdvancedAlloy>, # Advanced Alloy Plate
  "s": <ore:servo>,                               # Servomechanism
  "R": <immersiveengineering:stone_decoration:2>, # Reinforced Blast Brick
  "◙": <thermalexpansion:frame>,                  # Machine Frame
  "¤": <ore:gearDarkSteel>,                       # Dark Steel Gear
  "♥": <thermalfoundation:material:513>,          # Redstone Reception Coil
});

# [Fluid Transposer (Basic)] from [Machine Frame][+5]
craft.remake(<thermalexpansion:machine:8>.withTag({Level: 1 as byte}), ["pretty",
  "A ~ A",
  "a ◙ a",
  "¤ ♥ ¤"], {
  "A": <ore:plateadvancedAlloy> | <ore:plateAdvancedAlloy>, # Advanced Alloy Plate
  "~": <minecraft:bucket>,               # Bucket
  "a": <ore:actuator>,                   # Linear Actuator
  "◙": <thermalexpansion:frame>,         # Machine Frame
  "¤": <ore:gearDarkSteel>,              # Dark Steel Gear
  "♥": <thermalfoundation:material:513>, # Redstone Reception Coil
});

# [Fractionating Still (Basic)] from [Machine Frame][+5]
craft.remake(<thermalexpansion:machine:7>.withTag({Level: 1 as byte}), ["pretty",
  "A C A",
  "D ◙ D",
  "¤ ♥ ¤"], {
  "A": <ore:plateadvancedAlloy> | <ore:plateAdvancedAlloy>, # Advanced Alloy Plate
  "C": <rockhounding_chemistry:misc_items:9>, # Compressing Unit
  "D": <contenttweaker:agitatordarksteel>.anyDamage(), # Dark Steel Slurry Agitator
  "◙": <thermalexpansion:frame>,              # Machine Frame
  "¤": <ore:gearDarkSteel>,                   # Dark Steel Gear
  "♥": <thermalfoundation:material:513>,      # Redstone Reception Coil
});

# [Energetic Infuser (Basic)] from [Machine Frame][+5]
craft.remake(<thermalexpansion:machine:9>.withTag({Level: 1 as byte}), ["pretty",
  "A C A",
  "a ◙ a",
  "¤ ♥ ¤"], {
  "A": <ore:plateadvancedAlloy> | <ore:plateAdvancedAlloy>, # Advanced Alloy Plate
  "C": <appliedenergistics2:charger>,    # Charger
  "a": <ore:actuator>,                   # Linear Actuator
  "◙": <thermalexpansion:frame>,         # Machine Frame
  "¤": <ore:gearEnergeticAlloy>,         # Energetic Alloy Gear
  "♥": <thermalfoundation:material:513>, # Redstone Reception Coil
});

# [Centrifugal Separator (Basic)] from [Machine Frame][+6]
craft.remake(<thermalexpansion:machine:10>.withTag({Level: 1 as byte}), ["pretty",
  "A d A",
  "m ◙ I",
  "¤ ♥ ¤"], {
  "A": <ore:plateadvancedAlloy> | <ore:plateAdvancedAlloy>, # Advanced Alloy Plate
  "d": <ore:circuitAdvanced>,                  # Advanced Electronic Circuit
  "m": <ore:motor>,                            # Electric Motor
  "◙": <thermalexpansion:frame>,               # Machine Frame
  "I": <rockhounding_chemistry:misc_items:30>, # Iron Impeller
  "¤": <ore:gearDarkSteel>,                    # Dark Steel Gear
  "♥": <thermalfoundation:material:513>,       # Redstone Reception Coil
});

# [Alchemical Imbuer (Basic)] from [Machine Frame][+5]
craft.remake(<thermalexpansion:machine:12>.withTag({Level: 1 as byte}), ["pretty",
  "▬ B ▬",
  "A ◙ A",
  "¤ ♥ ¤"], {
  "▬": <ore:ingotBloodBronze>,           # Blood Bronze Ingot
  "B": <minecraft:brewing_stand>,        # Brewing Stand
  "A": <ore:plateadvancedAlloy> | <ore:plateAdvancedAlloy>, # Advanced Alloy Plate
  "◙": <thermalexpansion:frame>,         # Machine Frame
  "¤": <ore:gearEnergeticSilver>,        # Energetic Silver Gear
  "♥": <thermalfoundation:material:513>, # Redstone Reception Coil
});

# [Arcane Ensorcellator (Basic)] from [Machine Frame][+5]
craft.remake(<thermalexpansion:machine:13>.withTag({Level: 1 as byte}), ["pretty",
  "§ E §",
  "A ◙ A",
  "¤ ♥ ¤"], {
  "§": <contenttweaker:ingot_reinforced_starmetal>, # Reinforced Starmetal
  "E": <minecraft:enchanting_table>,                # Enchantment Table
  "A": <ore:plateadvancedAlloy> | <ore:plateAdvancedAlloy>, # Advanced Alloy Plate
  "◙": <thermalexpansion:frame>,                    # Machine Frame
  "¤": <ore:gearEnergeticSilver>,                   # Energetic Silver Gear
  "♥": <thermalfoundation:material:513>,            # Redstone Reception Coil
});

//Not sure why its needed...
# [Block of Coal Coke] from [Coal Coke]
craft.remake(<thermalfoundation:storage_resource:1>, ["pretty",
  "C C C",
  "C C C",
  "C C C"], {
  "C": <ore:fuelCoke>, # Coal Coke
});

##########################################################################################
print("==================== end of thermal.zs ====================");
