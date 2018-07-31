//Bread and Grains
recipes.remove(<harvestcraft:doughitem>);
recipes.addShapeless(<harvestcraft:doughitem> * 2, [
  <ore:toolMixingbowl>, <ore:listAllwater>, <ore:foodFlour>, <ore:foodSalt>
]);
recipes.addShapeless(<harvestcraft:doughitem> * 2, [
  <ore:toolMixingbowl>, <ore:listAllwater>, <ore:foodFlour>, <ore:dustSalt>
]);
recipes.addShapeless(<harvestcraft:doughitem> * 2, [
  <ore:toolMixingbowl>, <ore:listAllwater>, <ore:foodFlour>, <ore:itemSalt>
]);

recipes.remove(<minecraft:bread>);
recipes.addShapeless(<minecraft:bread>, 
	[<harvestcraft:bakewareitem>, <harvestcraft:doughitem>]
);

var grain = <ore:listAllgrain>;
recipes.addShaped(<minecraft:bread>,[
  [ grain, grain, grain ]
]);

var flour = <ore:foodFlour>;
recipes.addShaped(<minecraft:bread> * 2,[
  [ flour, flour, flour ]
]);

//Honey, Honey Combs and Sugar
var forgeBucket = <forge:bucketfilled>;
var honeyBucket = forgeBucket.withTag({ 
  FluidName: "honey", 
  Amount: 1000 
});
recipes.addShapeless(<harvestcraft:honeyitem> * 4, [honeyBucket]);

var bopHoneyJar = <biomesoplenty:jar_filled:0>;
recipes.addShapeless(<harvestcraft:honeyitem> * 4, [
  bopHoneyJar.transformReplace(<biomesoplenty:jar_empty>)
]);

recipes.addShapeless(<biomesoplenty:filled_honeycomb> * 2,[
  <harvestcraft:waxcombitem>, <harvestcraft:honeycombitem>
]);
recipes.addShapeless(<harvestcraft:honeycombitem>, [
  <biomesoplenty:filled_honeycomb>.transformReplace(<harvestcraft:waxcombitem>)
]);

recipes.addShapeless(<biomesoplenty:filled_honeycomb> * 9,[
  <biomesoplenty:hive:3>
]);

# Fishing fixes
recipes.remove(<harvestcraft:fishtrapbaititem>);
recipes.addShapeless(<harvestcraft:fishtrapbaititem> * 2, 
  [<ore:string>, <ore:listAllfishraw>]
);

# Add assorted seafood items to the raw fish oredict
var rawFish = <ore:listAllfishraw>;
rawFish.add(<harvestcraft:eelrawitem>);
rawFish.add(<harvestcraft:scalloprawitem>);
rawFish.add(<harvestcraft:clamrawitem>);
rawFish.add(<harvestcraft:octopusrawitem>);
rawFish.add(<harvestcraft:shrimprawitem>);
rawFish.add(<harvestcraft:crayfishrawitem>);
rawFish.add(<harvestcraft:turtlerawitem>);
rawFish.add(<harvestcraft:crabrawitem>);
rawFish.add(<harvestcraft:snailrawitem>);
