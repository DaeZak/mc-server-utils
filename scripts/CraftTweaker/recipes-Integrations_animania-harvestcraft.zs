#modloaded animania harvestcraft

import mods.jei.JEI;

// Setup Animania+HC special oredicts
var primeRawBeef = <ore:listAllawesomebeefraw>;
primeRawBeef.add(<animania:raw_prime_beef>);
primeRawBeef.add(<animania:raw_prime_steak>);
primeRawBeef.add(<harvestcraft:rawtofeakitem>);

var primeRawChicken = <ore:listAllawesomechickenraw>;
primeRawChicken.add(<animania:raw_prime_chicken>);
primeRawChicken.add(<animania:raw_peacock>);
primeRawChicken.add(<harvestcraft:rawtofickenitem>);

var primeCookedPork = <ore:listAllawesomeporkcooked>;
primeCookedPork.add(<animania:cooked_prime_bacon>);
primeCookedPork.add(<animania:cooked_prime_pork>);
primeCookedPork.add(<harvestcraft:bbqjackfruititem>);
primeCookedPork.add(<harvestcraft:cookedtofaconitem>);

var primeCookedMutton = <ore:listAllawesomemuttoncooked>;
primeCookedMutton.add(<animania:cooked_prime_mutton>);
primeCookedMutton.add(<harvestcraft:cookedtofuttonitem>);

// Remove and conceal items that don't make sense with Animania installed
JEI.removeAndHide(<harvestcraft:cheeseitem>);
JEI.removeAndHide(<harvestcraft:omeletitem>);
JEI.removeAndHide(<harvestcraft:mushroomketchupomeletitem>);
JEI.removeAndHide(<harvestcraft:frogcookeditem>);

// Remove Animania honey bottles and honey to sugar conversion - we are usually using Rustic
recipes.removeByRecipeName("animania:sugar");
JEI.hide(<animania:honey_bottle>.withTag({Fluid: {FluidName: "animania_honey", Amount: 1000}}));

// Add recipes for Animania milk to fresh milk; first remove default milk conversion
recipes.removeByRecipeName("animania:milk_conversion");
var milkTypes = [
  "milk_holstein",
  "milk_friesian",
  "milk_jersey",
  "milk_goat",
  "milk_sheep"
] as string[];
for milk in milkTypes {
  var forgeBucket = <forge:bucketfilled>;
  var milkBucket = forgeBucket.withTag({
    FluidName: milk,
    Amount: 1000
  });
  recipes.addShapeless(<harvestcraft:freshmilkitem> * 8, [milkBucket]);
}

// -- Animania froglegs from HC frog --------------------
recipes.addShapeless("harvestcraft_frog_to_froglegs", <animania:raw_frog_legs>, [
  <ore:toolCuttingboard>, 
  <harvestcraft:frograwitem>
]);

// -- Quality HC Pork recipes from Animania pork ---------------------------------------
recipes.removeByRecipeName("harvestcraft:southernstylebreakfastitem");
recipes.addShapeless("harvestcraft_southernstylebreakfastitem", <harvestcraft:southernstylebreakfastitem>, [
  <ore:toolCuttingboard>, 
  <ore:foodGrits>, 
  <ore:foodBiscuitsandgravy>, 
  <ore:listAllawesomeporkcooked>, 
  <ore:listAllegg>, 
  <ore:foodToast>
]);
recipes.removeByRecipeName("harvestcraft:epicbaconitem");
recipes.addShapeless("harvestcraft_epicbaconitem", <harvestcraft:epicbaconitem>, [
  <ore:listAllawesomeporkcooked>, 
  <minecraft:dye:1>, 
  <minecraft:dye:14>, 
  <minecraft:dye:11>, 
  <minecraft:dye:2>, 
  <minecraft:dye:6>, 
  <minecraft:dye:5>, 
  <minecraft:dye:13>
]);
recipes.removeByRecipeName("harvestcraft:bbqpulledporkitem");
recipes.addShapeless("harvestcraft_bbqpulledporkitem", <harvestcraft:bbqpulledporkitem>, [
  <ore:toolCuttingboard>, 
  <ore:listAllawesomeporkcooked>, 
  <ore:foodToast>, 
  <ore:cropTomato>, 
  <ore:cropSpiceleaf>
]);

// -- Quality HC Chicken recipes from Animania fowl --------------------------------------
recipes.removeByRecipeName("harvestcraft:friedchickenitem");
recipes.addShapeless("harvestcraft_friedchickenitem", <harvestcraft:friedchickenitem>, [
  <ore:toolPot>, 
  <ore:listAllawesomechickenraw>, 
  <ore:foodBatter>, 
  <ore:cropSpiceleaf>, 
  <ore:foodBlackpepper>, 
  <ore:foodOliveoil>
]);

// -- Quality HC Lamb recipes from Animania mutton ------------------------------------
recipes.removeByRecipeName("harvestcraft:lambkebabitem");
recipes.addShapeless("harvestcraft_lambkebabitem", <harvestcraft:lambkebabitem>, [
  <ore:toolCuttingboard>, 
  <ore:listAllawesomemuttoncooked>, 
  <ore:cropOnion>, 
  <ore:cropBellpepper>, 
  <ore:stickWood>
]);

// -- Quality HC Steak recipes from Animania beef ------------------------------------
recipes.removeByRecipeName("harvestcraft:garlicsteakitem");
recipes.addShapeless("harvestcraft_garlicsteakitem", <harvestcraft:garlicsteakitem>, [
  <ore:toolSkillet>, 
  <ore:listAllawesomebeefraw>, 
  <ore:cropGarlic>, 
  <ore:foodButter>, 
  <ore:cropSpiceleaf>
]);
recipes.removeByRecipeName("harvestcraft:mushroomsteakitem");
recipes.addShapeless("harvestcraft_mushroomsteakitem", <harvestcraft:mushroomsteakitem>, [
  <ore:toolSkillet>, 
  <ore:listAllawesomebeefraw>, 
  <ore:listAllmushroom>, 
  <ore:foodButter>, 
  <ore:foodBlackpepper>
]);
recipes.removeByRecipeName("harvestcraft:steakfajitaitem");
recipes.addShapeless("harvestcraft_steakfajitaitem", <harvestcraft:steakfajitaitem>, [
  <ore:toolSkillet>, 
  <ore:listAllawesomebeefraw>, 
  <ore:cropOnion>, 
  <ore:cropBellpepper>, 
  <ore:cropChilipepper>, 
  <ore:cropSpiceleaf>, 
  <ore:foodTortilla>
]);
