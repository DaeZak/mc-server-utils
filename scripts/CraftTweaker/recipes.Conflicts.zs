# Both open computers and TF add diamond chip-like items
# - make TF the winner
recipes.removeShapeless(<opencomputers:material:30>);
var chipDiamond = <ore:chipDiamond>;
chipDiamond.add(<thermalfoundation:material:16>);

# Rustic crop stakes have the same recipe as Quark vertical
# planks.  Here we remove that and replace with slab recipe
recipes.remove(<rustic:crop_stake>);
recipes.addShaped(<rustic:crop_stake> * 3, [
  [<ore:slabWood>],
  [<ore:slabWood>],
  [<ore:slabWood>]
]);
