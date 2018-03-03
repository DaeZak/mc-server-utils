// Both open computers and TF add diamond chip-like items
// - make TF the winner
recipes.remove(<opencomputers:material:30>);
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
recipes.remove(<roots:wood_knife>);
recipes.remove(<roots:stone_knife>);
recipes.remove(<roots:iron_knife>);
recipes.remove(<roots:diamond_knife>);
recipes.remove(<roots:gold_knife>);

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

//Random Things and Bibliocraft have the same recipes
//for different compass items.  Fix the conflict to make
// bibliocraft compass use nuggets instead of ingots.
recipes.remove(<bibliocraft:compass>);
recipes.remove(<randomthings:goldencompass>);

recipes.addShaped(<bibliocraft:compass>,[
  [null,<ore:nuggetGold>,null],
  [<ore:nuggetGold>,<minecraft:compass>,<ore:nuggetGold>],
  [null,<ore:nuggetGold>,null]
]);
recipes.addShaped(<randomthings:goldencompass>,[
  [null,<ore:ingotGold>,null],
  [<ore:ingotGold>,<minecraft:compass>,<ore:ingotGold>],
  [null,<ore:ingotGold>,null]
]);
