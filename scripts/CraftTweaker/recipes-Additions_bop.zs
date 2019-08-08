#modloaded biomesoplenty

// BoP honeycombs can turn into filled hive blocks
recipes.addShapeless(<biomesoplenty:filled_honeycomb> * 9,[
  <biomesoplenty:hive:3>
]);

// Make blue hydrangeas create blue dye instead of light blue dye
recipes.removeShapeless(<minecraft:dye:12>,[<biomesoplenty:flower_0:4>]);
recipes.addShapeless(<biomesoplenty:blue_dye>,[<biomesoplenty:flower_0:4>]);

// Make white tulips make white dye instead of light gray dye
recipes.removeShapeless(<minecraft:dye:7>,[<minecraft:red_flower:6>]);
recipes.addShapeless(<biomesoplenty:white_dye>,[<minecraft:red_flower:6>]);
