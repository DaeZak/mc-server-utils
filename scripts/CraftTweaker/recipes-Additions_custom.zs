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
