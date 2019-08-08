#modloaded rustic

// Rustic Candle recipes should respect the ore dictionary
recipes.remove(<rustic:candle>);
recipes.addShaped(<rustic:candle> * 6, [
  [<ore:string>],
  [<ore:wax>],
  [<ore:ingotIron>]
]);

// Rustic didnt oredict their apiary
recipes.remove(<rustic:apiary>);

var log = <ore:logWood>;
var plank = <ore:plankWood>;
recipes.addShaped(<rustic:apiary>, [
  [log, log, log],
  [plank, <minecraft:item_frame>, plank],
  [log, log, log]
]);

