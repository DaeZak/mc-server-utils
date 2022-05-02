#modloaded croptopia
#priority 500
import mods.jei.JEI;

// The book  sucks
craftingTable.remove(<item:croptopia:guide>);
JEI.hideIngredient(<item:croptopia:guide>);

craftingTable.remove(<item:croptopia:tuna_sandwich>);
JEI.hideIngredient(<item:croptopia:tuna_sandwich>);

craftingTable.addShaped("beef_jerky_croptopia_1", <item:croptopia:beef_jerky> * 2, [
  [<item:croptopia:salt>, <item:croptopia:salt>], 
  [<item:minecraft:beef>, <item:minecraft:air>]
]);
craftingTable.addShaped("pork_jerky_croptopia_1", <item:croptopia:pork_jerky> * 2, [
  [<item:croptopia:salt>, <item:croptopia:salt>], 
  [<item:minecraft:porkchop>, <item:minecraft:air>]
]);

craftingTable.remove(<item:croptopia:coffee>);
furnace.addRecipe("furnace_coffee_1", <item:croptopia:coffee>, <item:croptopia:coffee_beans>, 0.5, 75);

craftingTable.remove(<item:croptopia:tea>);
furnace.addRecipe("furnace_tea_1", <item:croptopia:tea>, <item:croptopia:tea_leaves>, 0.4, 75);

craftingTable.remove(<item:croptopia:sushi>);
craftingTable.addShapeless("croptopia_sushi_fixed", <item:croptopia:sushi>, [
  <item:minecraft:kelp>, <tag:items:croptopia:fishes>, <tag:items:forge:grain/rice>
]);

craftingTable.remove(<item:croptopia:beef_stir_fry>);
craftingTable.addShaped("croptopia_shaped_beef_stir_fry_fixed", <item:croptopia:beef_stir_fry>, [
  [<tag:items:forge:vegetables/broccoli>, <item:minecraft:carrot>, <item:minecraft:beef>], 
  [<tag:items:forge:olive_oils>, <tag:items:forge:soy_sauces>, <tag:items:forge:vegetables/garlic>],
  [<item:minecraft:air>, <item:croptopia:frying_pan>, <item:minecraft:air>] 
]);

craftingTable.remove(<item:croptopia:stir_fry>);
craftingTable.addShaped("croptopia_shaped_stir_fry_fixed", <item:croptopia:stir_fry>, [
  [<tag:items:forge:vegetables/garlic>, <tag:items:forge:vegetables/broccoli>, <tag:items:forge:vegetables/greenonions>], 
  [<tag:items:forge:fruits/bellpeppers>, <tag:items:forge:olive_oils>, <item:minecraft:carrot>],
  [<item:minecraft:air>, <item:croptopia:frying_pan>, <item:minecraft:air>]
]);

craftingTable.remove(<item:croptopia:beef_wellington>);
craftingTable.addShaped("croptopia_shaped_beef_wellington_fixed", <item:croptopia:beef_wellington>, [
  [<item:croptopia:dough>, <tag:items:forge:vegetables/onion>, <item:croptopia:dough>],
  [<tag:items:forge:vegetables/mustard>, <item:croptopia:frying_pan>, <item:croptopia:pepper>], 
  [<tag:items:forge:eggs>, <item:minecraft:beef>, <item:minecraft:brown_mushroom>]
]);

craftingTable.remove(<item:croptopia:kiwi_sorbet>);
craftingTable.addShaped("croptopia_shaped_kiwi_sorbet_fixed", <item:croptopia:kiwi_sorbet>, [
  [<tag:items:forge:fruits/kiwis>], 
  [<item:minecraft:honey_bottle>, <item:minecraft:snowball>]
]);

craftingTable.remove(<item:croptopia:rhubarb_crisp>);
craftingTable.addShaped("croptopia_shaped_rhubarb_crisp_fixed", <item:croptopia:rhubarb_crisp>, [
  [<item:croptopia:rhubarb>, <item:croptopia:strawberry>,<item:croptopia:rhubarb>], 
  [<tag:items:forge:doughs>, <tag:items:forge:doughs>]
]);
