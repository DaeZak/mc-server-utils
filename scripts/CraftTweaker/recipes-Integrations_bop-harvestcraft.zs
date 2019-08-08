#modloaded harvestcraft biomesoplenty

// Convert BoP honey jar to HarvestCraft honey
var bopHoneyJar = <biomesoplenty:jar_filled:0>;
recipes.addShapeless(<harvestcraft:honeyitem> * 4, [
  bopHoneyJar.transformReplace(<biomesoplenty:jar_empty>)
]);

// Convert back and forth between HarvestCraft and BoP Honeycombs
recipes.addShapeless(<biomesoplenty:filled_honeycomb> * 2,[
  <harvestcraft:waxcombitem>, <harvestcraft:honeycombitem>
]);
recipes.addShapeless(<harvestcraft:honeycombitem>, [
  <biomesoplenty:filled_honeycomb>.transformReplace(<harvestcraft:waxcombitem>)
]);

// BoP compat with Pams HarvestCraft wax items
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
