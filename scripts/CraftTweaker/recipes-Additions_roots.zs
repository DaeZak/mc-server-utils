#modloaded roots

// Correct Roots wildwood trapdoor recipe to be in
// line with Quark trapdoors as a nicety
var wildwoodSlab = <roots:wildwood_slab>;

recipes.remove(<roots:wildwood_trapdoor>);
recipes.addShaped(<roots:wildwood_trapdoor> * 3, [
  [wildwoodSlab, wildwoodSlab, wildwoodSlab],
  [wildwoodSlab, wildwoodSlab, wildwoodSlab]
]);

recipes.remove(<roots:wildwood_pressure_plate>);
recipes.addShaped(<roots:wildwood_pressure_plate>, [
  [<roots:wildwood_planks>, <roots:wildwood_planks>]
]);

// Remove the weird roots book recipe
recipes.removeByRecipeName("roots:book");
