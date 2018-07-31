// Biomes o Plenty [ BoP ]
// --compat with Pams HarvestCraft wax items
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

// Add tconstruct bacon to cooked pork oredict
var cookedPork = <ore:listAllporkcooked>;
cookedPork.add(<tconstruct:edible:0>);

// OpenComputers did not add their iron nuggets
// to the ore:nuggetIron entry
var oreIronNugget = <ore:nuggetIron>;
oreIronNugget.add(<opencomputers:material:0>);

// Remove vanilla Ender chest recipe
recipes.remove(<minecraft:ender_chest>);

// Rustic and HarvestCraft
// -- Oredict fixes
var allSeeds   = <ore:listAllseed>;
var grapeSeeds = <ore:seedGrape>;
allSeeds.add(<rustic:grape_stem>);
grapeSeeds.add(<rustic:grape_stem>);

var allBerries = <ore:listAllberry>;
allBerries.add(<harvestcraft:grapeitem>);
allBerries.add(<biomesoplenty:berries>);

var wildberries = <ore:cropWildberry>;
wildberries.add(<biomesoplenty:berries>);

var allFruit = <ore:listAllfruit>;
allFruit.add(<rustic:wildberries>);
allFruit.add(<harvestcraft:oliveitem>);

var oreWax = <ore:wax>;
oreWax.add(<harvestcraft:beeswaxitem>);

// -- Apples ----------------------
var appleJuiceBottle = <rustic:fluid_bottle>.withTag({
	Fluid: {FluidName: "applejuice", Amount: 1000}
});
recipes.addShapeless(<harvestcraft:applejuiceitem> * 2,[
  <ore:toolPot>, appleJuiceBottle.transformReplace(<minecraft:glass_bottle>)
]);
recipes.addShapeless(<harvestcraft:applejellyitem> * 2, [
  <ore:toolSaucepan>,
  appleJuiceBottle.transformReplace(<minecraft:glass_bottle>),
  <ore:listAllsugar>
]);
recipes.addShapeless(<harvestcraft:applesmoothieitem> * 2, [
  <ore:toolJuicer>,
  appleJuiceBottle.transformReplace(<minecraft:glass_bottle>),
  <minecraft:snowball>
]);
recipes.addShapeless(<harvestcraft:applecideritem> * 2, [
	<ore:toolPot>,
	appleJuiceBottle.transformReplace(<minecraft:glass_bottle>),
	<ore:listAllsugar>
]);

var appleJuiceBucket = <forge:bucketfilled>.withTag({
	FluidName: "applejuice", Amount: 1000
});
recipes.addShapeless(<harvestcraft:applejuiceitem> * 2,[
  <harvestcraft:potitem>, appleJuiceBucket
]);
recipes.addShapeless(<harvestcraft:applejellyitem> * 2, [
  <ore:toolSaucepan>,
  appleJuiceBucket,
  <ore:listAllsugar>
]);
recipes.addShapeless(<harvestcraft:applesmoothieitem> * 2, [
  <ore:toolJuicer>,
  appleJuiceBucket,
  <minecraft:snowball>
]);
recipes.addShapeless(<harvestcraft:applecideritem> * 2, [
	<ore:toolPot>,
	appleJuiceBucket,
	<ore:listAllsugar>
]);

// -- Berries ---------------------
mods.rustic.CrushingTub.addRecipe(<liquid:wildberryjuice> * 250, null, <biomesoplenty:berries>);
mods.rustic.CrushingTub.addRecipe(<liquid:wildberryjuice> * 125, null, <harvestcraft:strawberryitem>);
mods.rustic.CrushingTub.addRecipe(<liquid:wildberryjuice> * 125, null, <harvestcraft:blackberryitem>);
mods.rustic.CrushingTub.addRecipe(<liquid:wildberryjuice> * 125, null, <harvestcraft:raspberryitem>);
mods.rustic.CrushingTub.addRecipe(<liquid:wildberryjuice> * 125, null, <harvestcraft:cranberryitem>);
mods.rustic.CrushingTub.addRecipe(<liquid:wildberryjuice> * 125, null, <harvestcraft:gooseberryitem>);

// -- Grapes ----------------------
var grapeJuiceBottle = <rustic:fluid_bottle>.withTag({
	Fluid: {FluidName: "grapejuice", Amount: 1000}
});

recipes.addShapeless(<harvestcraft:grapejuiceitem> * 2,[
  <ore:toolPot>, grapeJuiceBottle.transformReplace(<minecraft:glass_bottle>)
]);
recipes.addShapeless(<harvestcraft:grapejellyitem> * 2, [
  <ore:toolSaucepan>,
  grapeJuiceBottle.transformReplace(<minecraft:glass_bottle>),
  <ore:listAllsugar>
]);
recipes.addShapeless(<harvestcraft:grapesodaitem> * 2, [
  <ore:toolPot>,
  <ore:foodBubblywater>,
  <ore:listAllsugar>,
  grapeJuiceBottle.transformReplace(<minecraft:glass_bottle>)
]);
recipes.addShapeless(<harvestcraft:grapesmoothieitem> * 2, [
  <ore:toolJuicer>,
  grapeJuiceBottle.transformReplace(<minecraft:glass_bottle>),
  <minecraft:snowball>
]);

var grapeJuiceBucket = <forge:bucketfilled>.withTag({
	FluidName: "grapejuice", Amount: 1000
});

recipes.addShapeless(<harvestcraft:grapejuiceitem> * 2,[
  <ore:toolPot>, grapeJuiceBucket
]);
recipes.addShapeless(<harvestcraft:grapejellyitem> * 2, [
  <ore:toolSaucepan>,
  grapeJuiceBucket,
  <ore:listAllsugar>
]);
recipes.addShapeless(<harvestcraft:grapesodaitem> * 2, [
  <ore:toolPot>,
  <ore:foodBubblywater>,
  <ore:listAllsugar>,
  grapeJuiceBucket
]);
recipes.addShapeless(<harvestcraft:grapesmoothieitem> * 2, [
  <ore:toolJuicer>,
  grapeJuiceBucket,
  <minecraft:snowball>
]);

mods.rustic.CrushingTub.addRecipe(<liquid:grapejuice> * 125, null, <harvestcraft:grapeitem>);

// -- Olives ---------------------------------
var oliveOilBottle = <rustic:fluid_bottle>.withTag({
	Fluid: {FluidName: "oliveoil", Amount: 1000}
});

recipes.addShapeless(<harvestcraft:oliveoilitem> * 4,[
  <ore:toolPot>, oliveOilBottle.transformReplace(<minecraft:glass_bottle>)
]);

var oliveOilBucket = <forge:bucketfilled>.withTag({
	FluidName: "oliveoil", Amount: 1000
});

recipes.addShapeless(<harvestcraft:oliveoilitem> * 4,[
  <ore:toolPot>, oliveOilBucket
]);
mods.rustic.CrushingTub.addRecipe(<liquid:oliveoil> * 250, <harvestcraft:veggiebaititem>, <harvestcraft:oliveitem>);

// -- Peppers ---------------------------------

var allPeppers = <ore:listAllpepper>;
allPeppers.add(<rustic:chili_pepper>);

// -- Honey -----------------------------------
// Remove Pam apiary and augment recipe
// for Rustic Apiary
recipes.remove(<harvestcraft:apiary>);
recipes.removeShaped(<rustic:apiary>);
recipes.addShaped(<rustic:apiary>, [
  [<ore:logWood>, <ore:logWood>, <ore:logWood>],
  [<ore:plankWood>, <minecraft:item_frame>, <ore:plankWood>],
  [<ore:logWood>, <ore:logWood>, <ore:logWood>]
]);

recipes.addShapeless(<harvestcraft:honeyitem>, [
  <rustic:honeycomb>.transformReplace(<harvestcraft:beeswaxitem>),
  <ore:toolJuicer>
]);
recipes.addShapeless(<harvestcraft:honeyitem>, [
  <harvestcraft:honeycombitem>.transformReplace(<harvestcraft:beeswaxitem>),
  <ore:toolJuicer>
]);

mods.rustic.CrushingTub.addRecipe(<liquid:honey> * 250, null, <harvestcraft:honeycombitem>);

// -- Soy and Tofu ----------------------------
recipes.addShapeless(<harvestcraft:soymilkitem>, [
  <harvestcraft:soybeanitem>.transformReplace(<harvestcraft:silkentofuitem>),
  <ore:toolJuicer>
]);
recipes.addShapeless(<harvestcraft:firmtofuitem>, [
  <harvestcraft:silkentofuitem>,
  <ore:toolJuicer>
]);
mods.rustic.CrushingTub.addRecipe(<liquid:plantoil> * 250, <harvestcraft:silkentofuitem>, <harvestcraft:soybeanitem>);
mods.rustic.CrushingTub.addRecipe(<liquid:plantoil> * 125, <harvestcraft:firmtofuitem>, <harvestcraft:silkentofuitem>);

// -- Tomato ----------------------------------

var allVeggie = <ore:listAllveggie>;
allVeggie.add(<rustic:tomato>);

recipes.removeShapeless(<harvestcraft:salsaitem>);
recipes.addShapeless(<harvestcraft:salsaitem>, [
  <ore:toolMixingbowl>,
  <harvestcraft:tomatoitem>,
  <ore:cropOnion>,
  <ore:cropSpiceleaf>,
  <ore:cropLime>,
  <ore:cropGarlic>
]);
recipes.addShapeless(<harvestcraft:salsaitem> * 2, [
  <ore:toolMixingbowl>,
  <rustic:tomato>,
  <ore:cropOnion>,
  <ore:cropSpiceleaf>,
  <ore:cropLime>,
  <ore:cropGarlic>
]);

// Add Immersive Engineering treated wood sticks to the stick ore entry
var sticks = <ore:stickWood>;
sticks.addAll(<ore:stickTreatedWood>);
