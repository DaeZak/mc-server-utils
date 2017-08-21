recipes.removeShapeless(<minecraft:name_tag>);
recipes.addShaped(<minecraft:name_tag>, [
  [null,<ore:nuggetDiamond>,null],
  [<ore:nuggetSteel>,<ore:paper>,<ore:nuggetSteel>],
  [<ore:nuggetSteel>,<ore:slimeball>,<ore:nuggetSteel>]
]);

# Add fractional distillation outputs to slimeOre
var slimeOre = <ore:slimeball>;
slimeOre.add(<thermalfoundation:material:832>);
slimeOre.add(<thermalfoundation:material:833>);

recipes.addShaped(<railcraft:tie>, [
  [null,<thermalfoundation:material:832>,null],
  [<ore:slabWood>,<ore:slabWood>,<ore:slabWood>]
]);

recipes.addShaped(<minecraft:torch>,[
  [null,<thermalfoundation:material:832>],
  [null,<minecraft:stick>]
]);

# Adjustments to the Railcraft concrete recipes
recipes.removeShaped(<railcraft:concrete>);
recipes.addShaped(<railcraft:concrete> * 8,[
  [<minecraft:gravel:*>, <minecraft:quartz>], 
  [<minecraft:quartz>, <minecraft:gravel:*>]
]);
recipes.addShaped(<railcraft:concrete> * 8,[
  [<minecraft:gravel:*>, <ore:dustSlag>], 
  [<minecraft:quartz>, <minecraft:gravel:*>]
]);
recipes.addShaped(<railcraft:concrete> * 8,[
  [<minecraft:gravel:*>, <minecraft:quartz>],
  [<ore:dustSlag>, <minecraft:gravel:*>]
]);
recipes.addShaped(<railcraft:concrete> * 2,[
  [<minecraft:gravel:*>, <ore:sand>], 
  [<ore:sand>, <minecraft:gravel:*>]
]);

# Make blue orchids create blue dye instead of light blue dye
recipes.removeShapeless(<minecraft:dye:12>,[<minecraft:red_flower:1>]);
recipes.addShapeless(<biomesoplenty:blue_dye>,[<minecraft:red_flower:1>]);

# Make white tulips make white dye instead of light gray dye
recipes.removeShapeless(<minecraft:dye:7>,[<minecraft:red_flower:6>]);
recipes.addShapeless(<biomesoplenty:white_dye>,[<minecraft:red_flower:6>]);

# Prismarine blocks should convert back down to Prismarine shards
recipes.addShapeless(<minecraft:prismarine_shard> * 3,[
  <minecraft:prismarine>
]);
