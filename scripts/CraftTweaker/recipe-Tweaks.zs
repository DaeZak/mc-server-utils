#modloaded environmental
import crafttweaker.api.item.IIngredient;
import mods.jei.JEI;
import crafttweaker.api.item.MCItemDefinition;
import crafttweaker.api.tag.MCTag;

campfire.removeRecipe(<item:environmental:cooked_venison>);
furnace.removeRecipe(<item:environmental:cooked_venison>);
smoker.removeRecipe(<item:environmental:cooked_venison>);

JEI.hideItem(<item:environmental:venison>);
JEI.hideItem(<item:environmental:cooked_venison>);

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

craftingTable.removeRecipe(<item:environmental:scrambled_eggs>);
JEI.hideItem(<item:environmental:scrambled_eggs>);
craftingTable.removeRecipe(<item:pamhc2foodcore:scrambledeggitem>);
craftingTable.addShapeless("scrambledeggitem", <item:pamhc2foodcore:scrambledeggitem>, [
  <item:pamhc2foodcore:skilletitem>, 
  <tag:items:forge:eggs>, 
  <tag:items:forge:milk>, 
  <item:pamhc2foodcore:saltitem>
]);

JEI.hideItem(<item:quark:rope>);
craftingTable.removeRecipe(<item:supplementaries:rope>);
craftingTable.addShaped("rope_2_fiber", <item:supplementaries:rope> * 3, [
  [<item:minecraft:air>, <item:minecraft:air>, <tag:items:forge:fiber>], 
  [<item:minecraft:air>, <tag:items:forge:fiber>, <item:minecraft:air>], 
  [<tag:items:forge:fiber>, <item:minecraft:air>, <item:minecraft:air>]
]);
craftingTable.addShaped("rope_2_string", <item:supplementaries:rope> * 2, [
  [<item:minecraft:air>, <item:minecraft:air>, <item:minecraft:string>], 
  [<item:minecraft:air>, <item:minecraft:string>, <item:minecraft:air>], 
  [<item:minecraft:string>, <item:minecraft:air>, <item:minecraft:air>]
]);

craftingTable.removeRecipe(<item:supplementaries:sack>);
craftingTable.addShaped("supplementaries_sack", <item:supplementaries:sack>, [
  [<tag:items:forge:fiber>, <item:minecraft:string>, <tag:items:forge:fiber>], 
  [<tag:items:forge:fiber>, <item:minecraft:air>, <tag:items:forge:fiber>], 
  [<tag:items:forge:fiber>, <tag:items:forge:fiber>, <tag:items:forge:fiber>]
]);

craftingTable.removeRecipe(<item:pamhc2foodcore:rolleritem>);
craftingTable.addShaped("pamhc2foodcore_tool_roller", <item:pamhc2foodcore:rolleritem>, [
  [<item:minecraft:air>, <item:minecraft:air>, <item:minecraft:stick>],
  [<item:minecraft:air>, <tag:items:minecraft:logs>, <item:minecraft:air>],
  [<item:minecraft:stick>,<item:minecraft:air>, <item:minecraft:air>]
]);

// Quark Candles and Supplementaries candles conflict
<tag:items:supplementaries:candles>.remove(<tag:items:quark:candles>);
craftingTable.removeRecipe(<tag:items:quark:candles>);
val quarkCandles = <tag:items:quark:candles>.asIIngredient().items;
for quarkCandle in quarkCandles {
  JEI.hideItem(quarkCandle);
}

craftingTable.addShapeless("custom_prismarine_conversion", <item:minecraft:prismarine_shard> * 3,[
  <item:minecraft:prismarine>
]);


// Remove other nametag recipes (if any) and provide a nametag recipe of our own
craftingTable.removeRecipe(<item:minecraft:name_tag>);
craftingTable.addShaped("custom_nametag_recipe", <item:minecraft:name_tag>, [
  [<item:minecraft:air>, <item:minecraft:air>, <tag:items:forge:string>], 
  [<item:minecraft:air>, <tag:items:forge:nuggets/gold>, <item:minecraft:air>], 
  [<item:minecraft:paper>, <item:minecraft:air>, <item:minecraft:air>]
]);
