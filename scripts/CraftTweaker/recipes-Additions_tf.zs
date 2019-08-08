#modloaded thermalfoundation

// Add fractional distillation outputs to slimeOre
var slimeOre = <ore:slimeball>;
slimeOre.add(<thermalfoundation:material:832>);
slimeOre.add(<thermalfoundation:material:833>);

// Let rosin be used for torches also
recipes.addShaped(<minecraft:torch>,[
  [null,<thermalfoundation:material:832>],
  [null,<minecraft:stick>]
]);
