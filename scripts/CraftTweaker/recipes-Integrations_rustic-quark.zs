#modloaded rustic quark

// Rustic crop stakes have the same recipe as Quark vertical
// planks.  Here we remove that and replace with slab recipe
recipes.remove(<rustic:crop_stake>);
recipes.addShaped(<rustic:crop_stake> * 3, [
  [<ore:slabWood>],
  [<ore:slabWood>],
  [<ore:slabWood>]
]);

// Add Quark tallow to the candle making recipes
var oreWax = <ore:wax>;
oreWax.add(<quark:tallow>);
