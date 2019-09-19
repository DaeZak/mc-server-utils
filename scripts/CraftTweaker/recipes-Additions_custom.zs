// Prismarine blocks should convert back down to Prismarine shards
recipes.addShapeless(<minecraft:prismarine_shard> * 3,[
  <minecraft:prismarine>
]);

// Remove other nametag recipes (if any) and provide a nametag recipe of our own
recipes.remove(<minecraft:name_tag>);
recipes.addShaped("custom_nametag_recipe", <minecraft:name_tag>, [
  [null, null, <ore:paper>], 
  [null, <ore:nuggetGold>, null], 
  [<ore:string>, null, null]
]);

// Add a recipe for green dye
recipes.addShapeless(<minecraft:dye:2> * 2,[
  <ore:dyeBlue>,
  <ore:dyeYellow>
]);

// OreDict the bibliocraft clipboard recipe
recipes.remove(<bibliocraft:biblioclipboard>);
recipes.addShaped("custom_bibliocraft_biblioclipboard", <bibliocraft:biblioclipboard>, [
  [<ore:dyeBlack>, null, <minecraft:feather>], 
  [<minecraft:paper>, <minecraft:paper>, <minecraft:paper>], 
  [null, <minecraft:wooden_pressure_plate>, null]
]);

