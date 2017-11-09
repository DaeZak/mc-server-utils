// Both open computers and TF add diamond chip-like items
// - make TF the winner
recipes.removeShapeless(<opencomputers:material:30>);
var chipDiamond = <ore:chipDiamond>;
chipDiamond.add(<thermalfoundation:material:16>);

// Rustic crop stakes have the same recipe as Quark vertical
// planks.  Here we remove that and replace with slab recipe
recipes.remove(<rustic:crop_stake>);
recipes.addShaped(<rustic:crop_stake> * 3, [
  [<ore:slabWood>],
  [<ore:slabWood>],
  [<ore:slabWood>]
]);

// Roots 2 knives have a conflict with Pam's skillet
// recipes.  Specifically the iron knife conflicts.
// So instead we remove all the recipes and replace
// them with one that uses an ingot (or equivalent)
// and a nugget.
recipes.removeShaped(<roots:wood_knife>);
recipes.removeShaped(<roots:stone_knife>);
recipes.removeShaped(<roots:iron_knife>);
recipes.removeShaped(<roots:diamond_knife>);
recipes.removeShaped(<roots:gold_knife>);

recipes.addShaped(<roots:wood_knife>,[
  [null,null,<ore:plankWood>],
  [null,<ore:plankWood>,null],
  [<ore:stickWood>,null,null]
]);

recipes.addShaped(<roots:stone_knife>,[
  [null,null,<minecraft:flint>],
  [null,<ore:cobblestone>,null],
  [<ore:stickWood>,null,null]
]);

recipes.addShaped(<roots:iron_knife>,[
  [null,null,<ore:nuggetIron>],
  [null,<ore:ingotIron>,null],
  [<ore:stickWood>,null,null]
]);

recipes.addShaped(<roots:diamond_knife>,[
  [null,null,<ore:nuggetDiamond>],
  [null,<ore:gemDiamond>,null],
  [<ore:stickWood>,null,null]
]);

recipes.addShaped(<roots:gold_knife>,[
  [null,null,<ore:nuggetGold>],
  [null,<ore:ingotGold>,null],
  [<ore:stickWood>,null,null]
]);
