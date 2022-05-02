#modloaded create farmersdelight
#priority 425
import mods.jei.JEI;
import crafttweaker.api.fluid.IFluidStack;

val bulkWashing = <recipetype:create:splashing>;
val crushing = <recipetype:create:crushing>;
val milling = <recipetype:create:milling>;
val mixing = <recipetype:create:mixing>;
val pressing = <recipetype:create:pressing>;

// Flour, dough and bread related recipes
craftingTable.remove(<item:farmersdelight:wheat_dough>);

bulkWashing.remove(<item:create:dough>);
campfire.removeByInput(<item:create:dough>);
craftingTable.remove(<item:create:dough>);
furnace.removeByInput(<item:create:dough>);
smoker.removeByInput(<item:create:dough>);
JEI.hideIngredient(<item:create:dough>);

// Remove wheat to bread
craftingTable.remove(<item:minecraft:bread>);
craftingTable.addShaped("farmersdelight_wheat_dough", <item:farmersdelight:wheat_dough> * 3, [
  [<item:minecraft:wheat>, <tag:items:forge:flour>, <tag:items:forge:flour>], 
  [<item:minecraft:air>, <tag:items:forge:water_bottles>, <item:minecraft:air>]
]);
mixing.addRecipe("mixing_dough_wheat_1", <constant:create:heat_condition:none>, [
  <item:farmersdelight:wheat_dough> * 3, 
  <item:farmersdelight:wheat_dough> % 75, 
  <item:farmersdelight:wheat_dough> % 50,
  <item:farmersdelight:wheat_dough> % 25
], [
  <item:minecraft:wheat>,
  <tag:items:forge:flour> * 2
], [<fluid:minecraft:water> * 1000], 100);
