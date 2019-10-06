#modloaded animania biomesoplenty

// Water plus dirt recipe (aside from being excessively generic)
// conflicts with BoP mud recipe
recipes.removeByRecipeName("animania:block_mud");
recipes.addShapeless("animania_block_mud", <animania:block_mud> * 2, [
  <minecraft:water_bucket>,
  <minecraft:dirt:1>,
  <minecraft:dir>
]);
