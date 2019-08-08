// Our own nametag recipes
recipes.remove(<minecraft:name_tag>);
recipes.addShaped(<minecraft:name_tag>, [
  [null,<ore:nuggetDiamond>,null],
  [<ore:nuggetSteel>,<ore:paper>,<ore:nuggetSteel>],
  [<ore:nuggetSteel>,<ore:slimeball>,<ore:nuggetSteel>]
]);

// Prismarine blocks should convert back down to Prismarine shards
recipes.addShapeless(<minecraft:prismarine_shard> * 3,[
  <minecraft:prismarine>
]);




