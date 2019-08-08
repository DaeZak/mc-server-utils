import mods.jei.JEI;

// Remove Chisel's raw Block of Charcoal; every mod
//  and it's brother adds a Charcoal Block we don't
//  need one from our decorative blocks mod as well
JEI.removeAndHide(<chisel:block_charcoal2:1>);

// Remove microblocks and Inspirations stone rods
//  They are only each used for one (class of) tool(s)
//  and the recipes are oredicted - so TConstruct can
//  provide stone rods for us.
JEI.removeAndHide(<microblockcbe:stone_rod>);
JEI.removeAndHide(<inspirations:materials:8>);

// Fix Erebus Umber Stone Pillar that conflicts with 
//  TConstruct stone rod
recipes.remove(<erebus:umberstone_pillar>);
recipes.addShaped("erebus_umberstone_pillar", <erebus:umberstone_pillar> * 6, [
  [<ore:stoneUmber>,<ore:stoneUmber>, null], 
  [<ore:stoneUmber>,<ore:stoneUmber>, null],
  [<ore:stoneUmber>,<ore:stoneUmber>, null]
]);

// Remove silly Erebus smooth tile recipe and replace
//  with more conventional 4x4 = 4 recipe
recipes.remove(<erebus:umberstone:5>);
// Smelt Umber Stone into Smooth Umber Tile in a furnace
furnace.addRecipe(<erebus:umberstone:5>, <erebus:umberstone>, 0.1);

