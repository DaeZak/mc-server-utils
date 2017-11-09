// Our own nametag recipes
recipes.removeShapeless(<minecraft:name_tag>);
recipes.addShaped(<minecraft:name_tag>, [
  [null,<ore:nuggetDiamond>,null],
  [<ore:nuggetSteel>,<ore:paper>,<ore:nuggetSteel>],
  [<ore:nuggetSteel>,<ore:slimeball>,<ore:nuggetSteel>]
]);

// Add fractional distillation outputs to slimeOre
var slimeOre = <ore:slimeball>;
slimeOre.add(<thermalfoundation:material:832>);
slimeOre.add(<thermalfoundation:material:833>);

// Let rosin be used for torches also
recipes.addShaped(<minecraft:torch>,[
  [null,<thermalfoundation:material:832>],
  [null,<minecraft:stick>]
]);

// Make blue orchids create blue dye instead of light blue dye
recipes.removeShapeless(<minecraft:dye:12>,[<minecraft:red_flower:1>]);
recipes.addShapeless(<biomesoplenty:blue_dye>,[<minecraft:red_flower:1>]);

// Make white tulips make white dye instead of light gray dye
recipes.removeShapeless(<minecraft:dye:7>,[<minecraft:red_flower:6>]);
recipes.addShapeless(<biomesoplenty:white_dye>,[<minecraft:red_flower:6>]);

// Prismarine blocks should convert back down to Prismarine shards
recipes.addShapeless(<minecraft:prismarine_shard> * 3,[
  <minecraft:prismarine>
]);

// Candle recipes should respect the ore dictionary
recipes.remove(<harvestcraft:candledeco1>);
recipes.addShapeless(<harvestcraft:candledeco1> * 4, [
  <ore:wax>, 
  <ore:string>
]);

recipes.remove(<rustic:candle>);
recipes.addShaped(<rustic:candle> * 6, [
  [<ore:string>], 
  [<ore:wax>], 
  [<ore:ingotIron>]
]);

// Immersive Engineering hemp fiber should be in 
// the string ore dict
var stringOre = <ore:string>;
stringOre.add(<immersiveengineering:material:4>);
