#modloaded harvestcraft rustic

import mods.rustic.CrushingTub;

// -- Apple Juice Handling ----------------------
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

// -- Berry Handling ---------------------
mods.rustic.CrushingTub.addRecipe(<liquid:wildberryjuice> * 125, null, <harvestcraft:strawberryitem>);
mods.rustic.CrushingTub.addRecipe(<liquid:wildberryjuice> * 125, null, <harvestcraft:blackberryitem>);
mods.rustic.CrushingTub.addRecipe(<liquid:wildberryjuice> * 125, null, <harvestcraft:raspberryitem>);
mods.rustic.CrushingTub.addRecipe(<liquid:wildberryjuice> * 125, null, <harvestcraft:cranberryitem>);
mods.rustic.CrushingTub.addRecipe(<liquid:wildberryjuice> * 125, null, <harvestcraft:gooseberryitem>);

// -- Grape Juice Handling ----------------------
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

CrushingTub.addRecipe(<liquid:grapejuice> * 125, null, <harvestcraft:grapeitem>);

// -- Honey Handling-----------------------------------
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

// -- Olive Handling ---------------------------------
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
CrushingTub.addRecipe(<liquid:oliveoil> * 250, <harvestcraft:veggiebaititem>, <harvestcraft:oliveitem>);

// -- Soy and Tofu Handling ----------------------------
mods.rustic.CrushingTub.addRecipe(<liquid:plantoil> * 250, <harvestcraft:silkentofuitem>, <harvestcraft:soybeanitem>);
mods.rustic.CrushingTub.addRecipe(<liquid:plantoil> * 125, <harvestcraft:firmtofuitem>, <harvestcraft:silkentofuitem>);

// -- Tomato  Handling ----------------------------------
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

