#modloaded  betteranimalsplus environmental upgrade_aquatic
import crafttweaker.api.item.IIngredient;
import mods.jei.JEI;
import crafttweaker.api.item.MCItemDefinition;
import crafttweaker.api.tag.MCTag;

// Venison dupe from Environmental; let BetterAnimalsPlus take over
campfire.removeRecipe(<item:environmental:cooked_venison>);
furnace.removeRecipe(<item:environmental:cooked_venison>);
smoker.removeRecipe(<item:environmental:cooked_venison>);

JEI.hideItem(<item:environmental:venison>);
JEI.hideItem(<item:environmental:cooked_venison>);

// Mulberry recipe tightening to that Pams mulberries can play too
<tag:items:forge:fruits/mulberry>.add(<item:upgrade_aquatic:mulberry>);

craftingTable.removeRecipe(<item:upgrade_aquatic:mulberry_pie>);
craftingTable.addShapeless("mulberry_pie", <item:upgrade_aquatic:mulberry_pie>, [
  <tag:items:forge:fruits/mulberry>, 
  <item:minecraft:sugar>, 
  <tag:items:forge:eggs>
]);

craftingTable.removeRecipe(<item:upgrade_aquatic:mulberry_punnet>);
craftingTable.addShaped("mulberry_punnet", <item:upgrade_aquatic:mulberry_punnet>, [
  [<tag:items:forge:fruits/mulberry>, <tag:items:forge:fruits/mulberry>, <tag:items:forge:fruits/mulberry>], 
  [<tag:items:forge:fruits/mulberry>, <tag:items:forge:fruits/mulberry>, <tag:items:forge:fruits/mulberry>], 
  [<tag:items:forge:fruits/mulberry>, <tag:items:forge:fruits/mulberry>, <tag:items:forge:fruits/mulberry>]
]);

craftingTable.removeRecipe(<item:upgrade_aquatic:mulberry_bread>);
craftingTable.addShapeless("mulberry_bread", <item:upgrade_aquatic:mulberry_bread>, [
  <item:upgrade_aquatic:mulberry_jam_bottle> | <tag:items:forge:jellies/mulberryjelly>, 
  <item:minecraft:bread>
]);

// Conflict resolution with multiple mods providing fried eggs.  Pams item wins
val friedEggDupes = [
  <item:environmental:fried_egg>,
  <item:betteranimalsplus:fried_egg>
];

for friedEgg in friedEggDupes {
  campfire.removeRecipe(friedEgg);
  furnace.removeRecipe(friedEgg);
  smoker.removeRecipe(friedEgg);
  JEI.hideItem(friedEgg);
}

craftingTable.removeRecipe(<item:pamhc2foodcore:friedeggitem>);
craftingTable.addShapeless("friedeggitem", <item:pamhc2foodcore:friedeggitem>, [
  <item:pamhc2foodcore:skilletitem>, 
  <tag:items:forge:eggs>
]);

// Pams scrambled eggs win too
craftingTable.removeRecipe(<item:environmental:scrambled_eggs>);
JEI.hideItem(<item:environmental:scrambled_eggs>);
craftingTable.removeRecipe(<item:pamhc2foodcore:scrambledeggitem>);
craftingTable.addShapeless("scrambledeggitem", <item:pamhc2foodcore:scrambledeggitem>, [
  <item:pamhc2foodcore:skilletitem>, 
  <tag:items:forge:eggs>, 
  <tag:items:forge:milk>, 
  <item:pamhc2foodcore:saltitem>
]);

// Fix conflict with roller (caused an issue with parapets from Macaw's Windows)
craftingTable.removeRecipe(<item:pamhc2foodcore:rolleritem>);
craftingTable.addShaped("pamhc2foodcore_tool_roller", <item:pamhc2foodcore:rolleritem>, [
  [<item:minecraft:air>, <item:minecraft:air>, <item:minecraft:stick>],
  [<item:minecraft:air>, <tag:items:minecraft:logs>, <item:minecraft:air>],
  [<item:minecraft:stick>,<item:minecraft:air>, <item:minecraft:air>]
]);
