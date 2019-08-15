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

// Correct a conflict between IaF chain link
// and OC disk platter by making the disk platter
// recipes more silicon centric
recipes.remove(<opencomputers:material:12>);
recipes.addShaped("opencomputers_material41", <opencomputers:material:12>, [
  [null, <minecraft:iron_nugget>, null], 
  [<minecraft:iron_nugget>, <ore:itemSilicon>, <minecraft:iron_nugget>], 
  [null, <minecraft:iron_nugget>, null]
]);

