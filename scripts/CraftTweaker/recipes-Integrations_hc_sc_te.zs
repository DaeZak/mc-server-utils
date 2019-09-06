#modloaded harvestcraft randomthings simplecorn thermalexpansion

import crafttweaker.item.IIngredient;
import crafttweaker.item.IItemStack;
import crafttweaker.oredict.IOreDictEntry;
import mods.thermalexpansion.Pulverizer;

// All non-grain items that can be pulverized into flour
val nonGrainList = [
  <harvestcraft:almonditem>,
  <harvestcraft:bananaitem>,
  <harvestcraft:beanitem>,
  <harvestcraft:chestnutitem>,
  <harvestcraft:coconutitem>,
  <harvestcraft:peasitem>,
  <minecraft:potato>,
  <harvestcraft:soybeanitem>
] as IItemStack[];

// All grain items currently processable into flour
val handledGrains = [
  <harvestcraft:barleyitem>,
  <harvestcraft:oatsitem>,
  <harvestcraft:riceitem>,
  <harvestcraft:ryeitem>,
  <minecraft:wheat>
] as IItemStack[];

// Add items that should be processable into flour
// but are not
var extraFlourSources = [
  <harvestcraft:amaranthitem>,
  <harvestcraft:breadfruititem>,
  <harvestcraft:cassavaitem>,
  <harvestcraft:chickpeaitem>,
  <harvestcraft:milletitem>,
  <harvestcraft:quinoaitem>,
  <harvestcraft:taroitem>,
  <randomthings:beans>
] as IItemStack[];

// Now add all the extra flour recipes into the Pulverizer
for flourSource in extraFlourSources {
  Pulverizer.addRecipe(<harvestcraft:flouritem> * 2, flourSource, 1000);
}

// Lets also do cornmeal while we are here
val cornItems = [
  <harvestcraft:cornitem>,
  <simplecorn:corncob>
] as IItemStack[];
for cornCob in cornItems {
  Pulverizer.addRecipe(<harvestcraft:cornmealitem> * 2, cornCob, 1000);
}

val cornKernelItems = [
  <simplecorn:kernels>,
  <harvestcraft:cornseeditem>
] as IItemStack[];
for cornKernel in cornKernelItems {
  Pulverizer.addRecipe(<harvestcraft:cornmealitem>, cornKernel, 500);
}
