#modloaded harvestcraft tconstruct

import crafttweaker.item.IItemStack;
import mods.tconstruct.Drying;

val pamsFish = [
  <harvestcraft:bassrawitem>,
  <harvestcraft:carprawitem>,
  <harvestcraft:catfishrawitem>,
  <harvestcraft:charrrawitem>,
  <harvestcraft:eelrawitem>,
  <harvestcraft:grouperrawitem>,
  <harvestcraft:herringrawitem>,
  <harvestcraft:mudfishrawitem>,
  <harvestcraft:perchrawitem>,
  <harvestcraft:snapperrawitem>,
  <harvestcraft:tilapiarawitem>,
  <harvestcraft:troutrawitem>,
  <harvestcraft:tunarawitem>,
  <harvestcraft:walleyerawitem>
] as IItemStack[];

// Various HC fish into fish jerky
for someFish in pamsFish {
  Drying.addRecipe(<tconstruct:edible:20>, someFish , 6000);
}
