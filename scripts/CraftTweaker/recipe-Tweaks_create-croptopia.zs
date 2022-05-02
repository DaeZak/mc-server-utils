#modloaded create croptopia
#priority 480
import mods.jei.JEI;
import crafttweaker.api.fluid.IFluidStack;

val bulkWashing = <recipetype:create:splashing>;
val crushing = <recipetype:create:crushing>;
val milling = <recipetype:create:milling>;
val mixing = <recipetype:create:mixing>;
val pressing = <recipetype:create:pressing>;

// bread, dough and flour related recipes
craftingTable.remove(<item:croptopia:dough>);

bulkWashing.remove(<item:create:dough>);
campfire.removeByInput(<item:create:dough>);
craftingTable.remove(<item:create:dough>);
furnace.removeByInput(<item:create:dough>);
smoker.removeByInput(<item:create:dough>);
JEI.hideIngredient(<item:create:dough>);

craftingTable.addShapeless("crafting_dough_1", <item:croptopia:dough>, [
  <tag:items:forge:flour>, 
  <tag:items:forge:salts>,
  <tag:items:forge:water_bottles>
]);
bulkWashing.addRecipe("bulk_washing_dough_1", [<item:croptopia:dough>, <item:croptopia:dough> % 25], <tag:items:forge:flour>, 100);
mixing.addRecipe("mixing_dough_1", <constant:create:heat_condition:none>, [<item:croptopia:dough> * 2], [
  <tag:items:forge:flour>, 
  <tag:items:forge:salts>,
  <tag:items:forge:water_bottles>
], [], 100);
mixing.addRecipe("mixing_dough_2", <constant:create:heat_condition:none>, [<item:croptopia:dough> * 2], [
  <tag:items:forge:flour>, 
  <tag:items:forge:salts>
], [<fluid:minecraft:water> * 1000], 100);

crushing.remove(<item:create:wheat_flour>);
milling.remove(<item:create:wheat_flour>);
JEI.hideIngredient(<item:create:wheat_flour>);

craftingTable.remove(<item:croptopia:flour>);
craftingTable.addShapeless("crafting_flour_1", <item:croptopia:flour>, [
  <tag:items:croptopia:flourable>,
  <tag:items:croptopia:flourable>,
  <tag:items:croptopia:flourable>
]);
milling.addRecipe("milling_flour_1", [
  <item:croptopia:flour>,
  <item:croptopia:flour> % 50,
  <item:croptopia:flour> % 25
], <tag:items:croptopia:flourable>, 100);
crushing.addRecipe("crushing_flour_1", [
  <item:croptopia:flour> * 2,
  <item:croptopia:flour> % 75,
  <item:croptopia:flour> % 50,
], <tag:items:croptopia:flourable>, 100);

// Cream and Milk related recipes
mixing.addRecipe("mixing_cream_1", <constant:create:heat_condition:none>, [
  <item:croptopia:whipping_cream> * 4,
  <item:croptopia:whipping_cream> % 75
], [
  <item:minecraft:sugar>,
  <tag:items:forge:crops/vanilla>
], [<fluid:minecraft:milk> * 1000], 100);
mixing.addRecipe("mixing_cream_2", <constant:create:heat_condition:none>, [
  <item:croptopia:whipping_cream> * 4
], [
  <item:minecraft:sugar>,
  <tag:items:forge:crops/vanilla>,
  <tag:items:forge:milks>
], [], 200);
mixing.addRecipe("mixing_butter_1", <constant:create:heat_condition:none>, [
  <item:croptopia:butter> * 2
], [
  <item:croptopia:salt>,
  <tag:items:forge:milks>
], [], 150);
mixing.addRecipe("mixing_butter_2", <constant:create:heat_condition:none>, [
  <item:croptopia:butter> * 4
], [
  <item:croptopia:salt>
], [<fluid:minecraft:milk> * 1000], 100);
mixing.addRecipe("mixing_cheese_1", <constant:create:heat_condition:heated>, [
  <item:croptopia:cheese> * 2
], [
  <item:croptopia:salt>,
  <tag:items:forge:milks>
], [], 200);
mixing.addRecipe("mixing_cheese_2", <constant:create:heat_condition:heated>, [
  <item:croptopia:cheese> * 4
], [
  <item:croptopia:salt>
], [<fluid:minecraft:milk> * 1000], 150);

// Olive oil related recipes
pressing.addRecipe("olive_oil_1", [
  <item:croptopia:olive_oil>, 
  <item:croptopia:olive_oil> % 50
], <item:croptopia:olive>, 100);

// Peanut butter related recipes
pressing.addRecipe("peanut_butter_1", [
  <item:croptopia:peanut_butter>, 
  <item:croptopia:peanut_butter> % 50
], <item:croptopia:peanut>, 100);

// Salt related recipes
mixing.addRecipe("mixing_salt_1", <constant:create:heat_condition:heated>, [
  <item:croptopia:salt>, 
  (<item:quark:clear_shard> * 4) % 50
], [<item:croptopia:water_bottle>], [], 200);
mixing.addRecipe("mixing_salt_2", <constant:create:heat_condition:heated>, [
  <item:croptopia:salt> * 16
], [], [<fluid:minecraft:water> * 1000], 100);

// Soy bean related recipes
craftingTable.remove(<item:croptopia:soy_milk>);
craftingTable.remove(<item:croptopia:tofu>);
pressing.addRecipe("soy_milk_tofu_1", [
  <item:croptopia:soy_milk>, 
  <item:croptopia:tofu>
], <item:croptopia:soybean>, 100);

craftingTable.remove(<item:croptopia:soy_sauce>);
mixing.addRecipe("soy_sauce_1", <constant:create:heat_condition:heated>, [
  <item:croptopia:soy_sauce> * 4
], [<item:croptopia:soybean>], [<fluid:minecraft:water> * 1000], 100);
