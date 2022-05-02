#modloaded farmersdelight supplementaries quark
#priority 200
import crafttweaker.api.tag.manager.ITagManager;
import mods.jei.JEI;

<tagmanager:items>.removeId(<tag:items:forge:rope>, <resource:farmersdelight:rope>);
<tagmanager:items>.removeId(<tag:items:forge:rope>, <resource:supplementaries:rope>);
<tagmanager:items>.removeId(<tag:items:supplementaries:ropes>, <resource:farmersdelight:rope>);
<tagmanager:items>.removeId(<tag:items:supplementaries:ropes>, <resource:supplementaries:rope>);
craftingTable.remove(<item:farmersdelight:rope>);
JEI.hideIngredient(<item:farmersdelight:rope>);

craftingTable.addShaped("supplementaries_sack_canvas", <item:supplementaries:sack>, [
  [<item:farmersdelight:canvas>, <item:minecraft:string>, <item:farmersdelight:canvas>], 
  [<item:farmersdelight:canvas>, <item:minecraft:air>, <item:farmersdelight:canvas>], 
  [<item:farmersdelight:canvas>, <item:farmersdelight:canvas>, <item:farmersdelight:canvas>]
]);

furnace.addRecipe("stick_to_ash_1", <item:supplementaries:ash>, <item:minecraft:stick>, 0.0, 50);
furnace.addRecipe("leaves_to_ash_1", <item:supplementaries:ash>, <tag:items:minecraft:leaves>, 0.0, 50);

craftingTable.addShaped("quark_canvas_seed_pouch", <item:quark:seed_pouch>, [
  [<item:minecraft:air>, <tag:items:forge:string>, <item:minecraft:air>], 
  [<item:farmersdelight:canvas>, <tag:items:quark:seed_pouch_holdable>, <item:farmersdelight:canvas>], 
  [<item:minecraft:air>, <item:farmersdelight:canvas>, <item:minecraft:air>]
]);

// Fix pancakes
craftingTable.remove(<item:supplementaries:pancake>);
craftingTable.addShapeless("supplementaries_pancake_fixed", <item:supplementaries:pancake> * 3, [
  <item:minecraft:sugar>, <tag:items:forge:milk>, <tag:items:forge:flour>, <tag:items:forge:eggs>
]);

// Fix safety net
craftingTable.remove(<item:farmersdelight:safety_net>);
craftingTable.addShaped("farmersdelight_safety_net_fixed", <item:farmersdelight:safety_net>, [
  [<tag:items:forge:rope>, <tag:items:forge:rope>], 
  [<tag:items:forge:rope>, <tag:items:forge:rope>]
]);
