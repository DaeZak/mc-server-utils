#modloaded harvestcraft
//**** Improvements to bread crafting
// Generalize dough recipe
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

// Smelt dough into bread
furnace.addRecipe(<minecraft:bread>, <harvestcraft:doughitem>);

// Craft dough with bakewear into bread
recipes.remove(<minecraft:bread>);
recipes.addShapeless(<minecraft:bread>,
  [<harvestcraft:bakewareitem>, <harvestcraft:doughitem>]
);

// Craft bread from any grain
var grain = <ore:listAllgrain>;
recipes.addShaped(<minecraft:bread>,[
  [ grain, grain, grain ]
]);

// Craft bread from flour
var flour = <ore:foodFlour>;
recipes.addShaped(<minecraft:bread> * 2,[
  [ flour, flour, flour ]
]);

// Turn honey buckets into HarvestCraft honey
var forgeBucket = <forge:bucketfilled>;
var honeyBucket = forgeBucket.withTag({
  FluidName: "honey",
  Amount: 1000
});
recipes.addShapeless(<harvestcraft:honeyitem> * 4, [honeyBucket]);

// Increase fish trap bait yield
recipes.remove(<harvestcraft:fishtrapbaititem>);
recipes.addShapeless(<harvestcraft:fishtrapbaititem> * 2,
  [<ore:string>, <ore:listAllfishraw>]
);

// Fix non-ore-dicted animal trap recipes
recipes.remove(<harvestcraft:groundtrap>);
recipes.addShaped(<harvestcraft:groundtrap>, [
  [<ore:stickWood>, <minecraft:trapdoor>, <ore:stickWood>], 
  [<ore:string>, <ore:chestWood>, <ore:string>], 
  [<ore:stickWood>, <ore:string>, <ore:stickWood>]
]);
recipes.remove(<harvestcraft:watertrap>);
recipes.addShaped(<harvestcraft:watertrap>, [
  [<ore:stickWood>, <minecraft:fishing_rod>, <ore:stickWood>], 
  [<ore:string>, <ore:chestWood>, <ore:string>], 
  [<ore:stickWood>, <ore:string>, <ore:stickWood>]
]);

// Make tofu in the crafting grid with a juicer
recipes.addShapeless(<harvestcraft:soymilkitem>, [
  <harvestcraft:soybeanitem>.transformReplace(<harvestcraft:silkentofuitem>),
  <ore:toolJuicer>
]);
recipes.addShapeless(<harvestcraft:firmtofuitem>, [
  <harvestcraft:silkentofuitem>,
  <ore:toolJuicer>
]);

// Make HC candles respect oredict
recipes.remove(<harvestcraft:candledeco1>);
recipes.addShapeless(<harvestcraft:candledeco1> * 4, [
  <ore:wax>,
  <ore:string>
]);

// Remove broken cotton to cotton recipe - thats just silly!
recipes.removeByRecipeName("harvestcraft:cottonitem");

// Fix pizza slicing mixup with berry vinagrette salad
recipes.removeByRecipeName("harvestcraft:berryvinaigrettesaladitem");
recipes.addShapeless(<harvestcraft:pizzasliceitem> * 9, [
  <harvestcraft:bbqchickenpizzaitem>,
  <ore:toolCuttingboard>
]);
recipes.addShapeless(<harvestcraft:berryvinaigrettesaladitem>, [
  <ore:toolMixingbowl>, 
  <ore:cropLettuce>, 
  <ore:listAllberry>, 
  <ore:listAllberry>, 
  <ore:foodOliveoil>, 
  <ore:foodVinegar>
]);

// Fix sauced lamb kebab (was using an empty yogurt oredict)
recipes.removeByRecipeName("harvestcraft:saucedlambkebabitem");
recipes.addShapeless("harvestcraft_saucedlambkebabitem", <harvestcraft:saucedlambkebabitem>, [
  <ore:toolMixingbowl>, 
  <ore:foodLambkebab>, 
  <ore:foodPlainyogurt>, 
  <ore:listAllheavycream>, 
  <ore:cropGarlic>, 
  <ore:cropSpiceleaf>, 
  <ore:cropLime>
]);
