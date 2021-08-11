import crafttweaker.api.item.IIngredient;
import mods.jei.JEI;
import crafttweaker.api.item.MCItemDefinition;
import crafttweaker.api.tag.MCTag;

// Let prismarine make prismarine shards
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

// Add some chainmail recipes
craftingTable.addShaped("chainmail_helmet", <item:minecraft:chainmail_helmet>, [
  [<tag:items:forge:nuggets/iron>, <tag:items:forge:ingots/iron>, <tag:items:forge:nuggets/iron>], 
  [<tag:items:forge:nuggets/iron>, <item:minecraft:air>, <tag:items:forge:nuggets/iron>]
]);

craftingTable.addShaped("chainmail_chestplate", <item:minecraft:chainmail_chestplate>, [
  [<tag:items:forge:ingots/iron>, <item:minecraft:air>, <tag:items:forge:ingots/iron>], 
  [<tag:items:forge:nuggets/iron>, <tag:items:forge:ingots/iron>, <tag:items:forge:nuggets/iron>],
  [<tag:items:forge:nuggets/iron>, <tag:items:forge:nuggets/iron>, <tag:items:forge:nuggets/iron>]
]);

craftingTable.addShaped("chainmail_leggings", <item:minecraft:chainmail_leggings>, [
  [<tag:items:forge:nuggets/iron>, <tag:items:forge:ingots/iron>, <tag:items:forge:nuggets/iron>], 
  [<tag:items:forge:nuggets/iron>, <item:minecraft:air>, <tag:items:forge:nuggets/iron>],
  [<tag:items:forge:nuggets/iron>, <item:minecraft:air>, <tag:items:forge:nuggets/iron>]
]);

craftingTable.addShaped("chainmail_boots", <item:minecraft:chainmail_boots>, [
  [<tag:items:forge:nuggets/iron>, <item:minecraft:air>, <tag:items:forge:nuggets/iron>],
  [<tag:items:forge:ingots/iron>, <item:minecraft:air>, <tag:items:forge:ingots/iron>]
]);

// Add a bell recipe
craftingTable.addShaped("bell", <item:minecraft:bell>, [
  [<item:minecraft:air>, <tag:items:minecraft:logs>, <item:minecraft:air>],
  [<item:minecraft:gold_block>, <item:minecraft:gold_block>, <item:minecraft:gold_block>],
  [<item:minecraft:gold_block>, <item:minecraft:gold_nugget>, <item:minecraft:gold_block>]
]);
