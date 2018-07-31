// Rustic crop stakes have the same recipe as Quark vertical
// planks.  Here we remove that and replace with slab recipe
recipes.remove(<rustic:crop_stake>);
recipes.addShaped(<rustic:crop_stake> * 3, [
  [<ore:slabWood>],
  [<ore:slabWood>],
  [<ore:slabWood>]
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

//Rustic iron lattice conflicts with TE iron gears
// so we remove the default rustic recipes and replace it
recipes.removeShaped(<rustic:iron_lattice>);
recipes.addShaped(<rustic:iron_lattice> * 8, [
  [null, <ore:stickIron>, null],
  [<ore:stickIron>, <ore:ingotIron>, <ore:stickIron>],
  [null, <ore:stickIron>, null]
]);

// Remove conflicting dust processing recipe for redstone ore
recipes.remove(<extrautils2:ingredients:0>);
recipes.addShapeless(<extrautils2:ingredients:0>, [
  <extrautils2:endershard:*>, <ore:dustRedstone>, <ore:dustRedstone>, <ore:dustRedstone>, <ore:dustRedstone>
]);

// Remove IE non-oreDicted Coal Coke Block recipes
recipes.remove(<immersiveengineering:stone_decoration:3>);
//   Including un-crafting IE Coal Coke Block into IE coal coke
recipes.remove(<immersiveengineering:material:6>);

// Remove Quark charcoal block that conflicts with TF charcoal block
recipes.remove(<quark:charcoal_block>);

// Fix Random Things soundbox recipe that conflicts with Quark stained planks
recipes.remove(<randomthings:soundbox>);
recipes.addShaped(<randomthings:soundbox>, [
  [<ore:plankWood>, <ore:plankWood>, <ore:plankWood>],
  [<ore:plankWood>, <ore:gemLapis>, <ore:plankWood>],
  [<ore:plankWood>, <ore:dustRedstone>, <ore:plankWood>]
]);

