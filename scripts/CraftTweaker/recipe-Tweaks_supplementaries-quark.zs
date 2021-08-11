#modloaded supplementaries quark
import crafttweaker.api.item.IIngredient;
import mods.jei.JEI;
import crafttweaker.api.item.MCItemDefinition;
import crafttweaker.api.tag.MCTag;

// Quark Candles and Supplementaries candles conflict
<tag:items:supplementaries:candles>.remove(<tag:items:quark:candles>);
craftingTable.removeRecipe(<tag:items:quark:candles>);
val quarkCandles = <tag:items:quark:candles>.asIIngredient().items;
for quarkCandle in quarkCandles {
  JEI.hideItem(quarkCandle);
}

// Quark and Supplementaries rope conflict resolution
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

// Anything that counts asa fiber can make a sack
craftingTable.removeRecipe(<item:supplementaries:sack>);
craftingTable.addShaped("supplementaries_sack", <item:supplementaries:sack>, [
  [<tag:items:forge:fiber>, <item:minecraft:string>, <tag:items:forge:fiber>], 
  [<tag:items:forge:fiber>, <item:minecraft:air>, <tag:items:forge:fiber>], 
  [<tag:items:forge:fiber>, <tag:items:forge:fiber>, <tag:items:forge:fiber>]
]);
