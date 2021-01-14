print("==================== loading mods enviromental tech.zs ====================");
##########################################################################################


//laser core
recipes.remove(<environmentaltech:laser_core>);
recipes.addShaped(<environmentaltech:laser_core>, [[<advgenerators:iron_frame>, <rockhounding_chemistry:alloy_items_gems:1>, <advgenerators:iron_frame>],[<environmentaltech:connector>, <rockhounding_chemistry:alloy_items_gems:1>, <environmentaltech:connector>], [<advgenerators:iron_frame>, <rockhounding_chemistry:alloy_items_gems:1>, <advgenerators:iron_frame>]]);

//lunarvoltaic cell
recipes.remove(<etlunar:lunarvoltaic_cell>);
recipes.addShaped(<etlunar:lunarvoltaic_cell>, [[null, <threng:material:1>, null],[<threng:material:1>, <extendedcrafting:material:2>, <threng:material:1>], [null, <threng:material:1>, null]]);

##########################################################################################
print("==================== end of mods enviromental tech.zs ====================");
