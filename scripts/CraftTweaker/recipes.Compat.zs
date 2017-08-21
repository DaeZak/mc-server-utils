# Biomes o Plenty [ BoP ]
# --compat with Pams HarvestCraft wax items
recipes.addShaped(<biomesoplenty:hive:2>,[
  [<harvestcraft:waxcombitem>,<harvestcraft:waxcombitem>,<harvestcraft:waxcombitem>],
  [<harvestcraft:waxcombitem>,null,<harvestcraft:waxcombitem>],
  [<harvestcraft:waxcombitem>,<harvestcraft:waxcombitem>,<harvestcraft:waxcombitem>]
 ]);
recipes.addShapeless(<harvestcraft:waxcombitem> * 8,[<biomesoplenty:hive:2>]);

recipes.addShaped(<biomesoplenty:hive:1>,[
  [<harvestcraft:honeycombitem>,<harvestcraft:honeycombitem>,<harvestcraft:honeycombitem>],
  [<harvestcraft:honeycombitem>,null,<harvestcraft:honeycombitem>],
  [<harvestcraft:honeycombitem>,<harvestcraft:honeycombitem>,<harvestcraft:honeycombitem>]
 ]);
recipes.addShapeless(<harvestcraft:honeycombitem> * 8,[<biomesoplenty:hive:1>]);

var cookedPork = <ore:listAllporkcooked>;
cookedPork.add(<tconstruct:edible:0>);

recipes.addShapeless( <cookingforblockheads:cowJar>,[
  <cookingforblockheads:milkJar>,<minecraft:spawn_egg:92>.withTag({EntityTag: {id: "Cow"}})
]);

# OpenComputers did not add their iron nuggets
# to the ore:nuggetIron entry
var oreIronNugget = <ore:nuggetIron>;
oreIronNugget.add(<opencomputers:material:0>);

# Remove vanilla Ender chest recipe
recipes.remove(<minecraft:ender_chest>);
