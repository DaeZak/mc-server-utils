#priority 5
import mods.jei.JEI;

// Add a bell recipe
craftingTable.addShaped("zakariel_bell", <item:minecraft:bell>, [
  [<item:minecraft:air>, <tag:items:minecraft:logs>, <item:minecraft:air>],
  [<item:minecraft:gold_block>, <item:minecraft:gold_block>, <item:minecraft:gold_block>],
  [<item:minecraft:gold_block>, <item:minecraft:gold_nugget>, <item:minecraft:gold_block>]
]);

// Add some chainmail recipes
craftingTable.addShaped("zakariel_chainmail_helmet", <item:minecraft:chainmail_helmet>, [
  [<tag:items:forge:nuggets/iron>, <tag:items:forge:ingots/iron>, <tag:items:forge:nuggets/iron>], 
  [<tag:items:forge:nuggets/iron>, <item:minecraft:air>, <tag:items:forge:nuggets/iron>]
]);

craftingTable.addShaped("zakariel_chainmail_chestplate", <item:minecraft:chainmail_chestplate>, [
  [<tag:items:forge:ingots/iron>, <item:minecraft:air>, <tag:items:forge:ingots/iron>], 
  [<tag:items:forge:nuggets/iron>, <tag:items:forge:ingots/iron>, <tag:items:forge:nuggets/iron>],
  [<tag:items:forge:nuggets/iron>, <tag:items:forge:nuggets/iron>, <tag:items:forge:nuggets/iron>]
]);

craftingTable.addShaped("zakariel_chainmail_leggings", <item:minecraft:chainmail_leggings>, [
  [<tag:items:forge:nuggets/iron>, <tag:items:forge:ingots/iron>, <tag:items:forge:nuggets/iron>], 
  [<tag:items:forge:nuggets/iron>, <item:minecraft:air>, <tag:items:forge:nuggets/iron>],
  [<tag:items:forge:nuggets/iron>, <item:minecraft:air>, <tag:items:forge:nuggets/iron>]
]);

craftingTable.addShaped("zakariel_chainmail_boots", <item:minecraft:chainmail_boots>, [
  [<tag:items:forge:nuggets/iron>, <item:minecraft:air>, <tag:items:forge:nuggets/iron>],
  [<tag:items:forge:ingots/iron>, <item:minecraft:air>, <tag:items:forge:ingots/iron>]
]);

// Leads
craftingTable.remove(<item:minecraft:lead>);
craftingTable.addShaped("minecraft_lead_fixed", <item:minecraft:lead> * 2, [
  [<item:minecraft:string>, <item:minecraft:string>, <item:minecraft:air>], 
  [<item:minecraft:string>, <item:minecraft:slime_ball>, <item:minecraft:air>], 
  [<item:minecraft:air>, <item:minecraft:air>, <item:minecraft:string>]
]);
craftingTable.addShaped("zakariel_lead_from_rope", <item:minecraft:lead>, [
  [<tag:items:forge:rope>, <tag:items:forge:rope>, <tag:items:forge:rope>], 
  [<tag:items:forge:rope>, <tag:items:forge:rope>, <tag:items:forge:rope>], 
  [<item:minecraft:air>, <item:minecraft:air>, <tag:items:forge:rope>]
]);

// Nametag
craftingTable.addShaped("zakariel_nametag", <item:minecraft:name_tag>, [
  [<item:minecraft:air>, <tag:items:forge:nuggets/gold>, <item:minecraft:air>], 
  [<tag:items:forge:nuggets/iron>, <item:minecraft:paper>, <tag:items:forge:nuggets/iron>], 
  [<tag:items:forge:nuggets/iron>, <tag:items:forge:nuggets/iron>, <tag:items:forge:nuggets/iron>]
]);

// Saddle
craftingTable.addShaped("zakariel_saddle", <item:minecraft:saddle>, [
  [<tag:items:forge:leather>, <tag:items:forge:leather>, <tag:items:forge:leather>], 
  [<item:minecraft:rabbit_hide>, <tag:items:minecraft:carpets>, <item:minecraft:rabbit_hide>], 
  [<item:minecraft:rabbit_hide>, <item:minecraft:air>, <item:minecraft:rabbit_hide>]
]);

// Horse Armors
craftingTable.remove(<item:minecraft:leather_horse_armor>);
craftingTable.addShaped("zakariel_horse_armor_leather", <item:minecraft:leather_horse_armor>, [
  [<item:minecraft:air>, <tag:items:forge:leather>, <item:minecraft:leather_helmet>], 
  [<tag:items:forge:leather>, <tag:items:forge:leather>, <tag:items:forge:leather>], 
  [<tag:items:forge:leather>, <tag:items:minecraft:wool>, <tag:items:forge:leather>]
]);
craftingTable.addShaped("zakariel_horse_armor_iron", <item:minecraft:iron_horse_armor>, [
  [<item:minecraft:air>, <tag:items:forge:ingots/iron>, <item:minecraft:iron_helmet>], 
  [<tag:items:forge:ingots/iron>, <tag:items:forge:ingots/iron>, <tag:items:forge:ingots/iron>], 
  [<tag:items:forge:ingots/iron>, <tag:items:minecraft:wool>, <tag:items:forge:ingots/iron>]
]);
craftingTable.addShaped("zakariel_horse_armor_gold", <item:minecraft:golden_horse_armor>, [
  [<item:minecraft:air>, <tag:items:forge:ingots/gold>, <item:minecraft:golden_helmet>], 
  [<tag:items:forge:ingots/gold>, <tag:items:forge:ingots/gold>, <tag:items:forge:ingots/gold>], 
  [<tag:items:forge:ingots/gold>, <tag:items:minecraft:wool>, <tag:items:forge:ingots/gold>]
]);
craftingTable.addShaped("zakariel_horse_armor_diamond", <item:minecraft:diamond_horse_armor>, [
  [<item:minecraft:air>, <item:minecraft:diamond>, <item:minecraft:diamond_helmet>], 
  [<item:minecraft:diamond>, <item:minecraft:diamond>, <item:minecraft:diamond>], 
  [<item:minecraft:diamond>, <tag:items:minecraft:wool>, <item:minecraft:diamond>]
]);

// Prismarine make prismarine shards
craftingTable.addShapeless("zakariel_prismarine_conversion", <item:minecraft:prismarine_shard> * 3, [
  <item:minecraft:prismarine>
]);
