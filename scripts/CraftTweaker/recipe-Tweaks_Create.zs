#modloaded create
import mods.jei.JEI;
import crafttweaker.api.tag.MCTag;

val bulkWashing = <recipetype:create:splashing>;
val crushing = <recipetype:create:crushing>;
val milling = <recipetype:create:milling>;
val mixing = <recipetype:create:mixing>;
val pressing = <recipetype:create:pressing>;

// Flour, dough and bread related recipes
craftingTable.removeRecipe(<item:create:dough>);
bulkWashing.removeRecipe(<item:create:dough>);
//JEI.hideItem(<item:create:dough>);

mixing.addRecipe("mixing_dough_1", "none", <item:pamhc2foodcore:doughitem> * 2, [
  <tag:items:forge:flour>, 
  <tag:items:forge:salt>,
  <tag:items:forge:water>
]);

crushing.removeRecipe(<item:create:wheat_flour>);
milling.removeRecipe(<item:create:wheat_flour>);
JEI.hideItem(<item:create:wheat_flour>);

// Remove corn from the flour plants tag so that we do not have
// a conflicting recipe for corn milling and crushing turning up
// flour instead of cornmeal
<tag:items:forge:flour_plants>.remove(<item:pamhc2crops:cornitem>);
crushing.addRecipe("milling_flour_1", [
  <item:pamhc2foodcore:flouritem>,
  <item:pamhc2foodcore:flouritem> % 25,
  <item:pamhc2foodcore:flouritem> % 12,
], <tag:items:forge:flour_plants>);
milling.addRecipe("grinding_flour_1", [
  <item:pamhc2foodcore:flouritem>,
  <item:pamhc2foodcore:flouritem> % 25,
  <item:pamhc2foodcore:flouritem> % 12,
], <tag:items:forge:flour_plants>);

crushing.addRecipe("milling_corn_1", [
  <item:pamhc2foodextended:cornmealitem>,
  <item:pamhc2foodextended:cornmealitem> % 25,
  <item:pamhc2crops:cornseeditem> % 10,
], <tag:items:forge:grain/corn>);
milling.addRecipe("grinding_corn_1", [
  <item:pamhc2foodextended:cornmealitem>,
  <item:pamhc2foodextended:cornmealitem> % 25,
  <item:pamhc2crops:cornseeditem> % 10,
], <tag:items:forge:grain/corn>);

campfire.removeRecipe(<item:minecraft:bread>);
campfire.addRecipe("campfire_cooking_bread", <item:minecraft:bread>, <item:pamhc2foodcore:doughitem>, 0.0, 600);

craftingTable.removeRecipe(<item:minecraft:bread>);
craftingTable.addShapeless("bread_from_dough", <item:minecraft:bread>, [
  <item:pamhc2foodcore:bakewareitem>, 
  <item:pamhc2foodcore:doughitem>
]);

furnace.removeRecipe(<item:minecraft:bread>);
furnace.addRecipe("smelting_bread", <item:minecraft:bread>, <item:pamhc2foodcore:doughitem>, 0.0, 200);

smoker.removeRecipe(<item:minecraft:bread>);
smoker.addRecipe("smoking_bread", <item:minecraft:bread>, <item:pamhc2foodcore:doughitem>, 0.0, 100);

// Modified slime ball recipe
craftingTable.removeByName("create:crafting/appliances/slime_ball");
craftingTable.addShaped("create_crafting_appliances_slime_ball", <item:minecraft:slime_ball> * 4, [
  [<item:pamhc2foodcore:doughitem>, <item:minecraft:lime_concrete_powder>],
  [<item:minecraft:lime_concrete_powder>, <item:pamhc2foodcore:doughitem>],
]);

// Fix cooking oil recipes
craftingTable.removeRecipe(<item:pamhc2foodcore:cookingoilitem>);
craftingTable.addShapeless("pamhc2foodcore_cookingoil_veg", <item:pamhc2foodcore:cookingoilitem> * 2, [
  <item:pamhc2foodcore:rolleritem>, 
  <item:pamhc2trees:avocadoitem> | <item:pamhc2trees:oliveitem>
]);
pressing.addRecipe("create_pressing_almondbutter_n_cookingoil",  [
  <item:pamhc2foodextended:almondbutteritem>,
  <item:pamhc2foodcore:cookingoilitem> % 55
], <item:pamhc2trees:almonditem>, 100);
pressing.addRecipe("create_pressing_cashewbutter_n_cookingoil",  [
  <item:pamhc2foodextended:cashewbutteritem>,
  <item:pamhc2foodcore:cookingoilitem> % 55
], <item:pamhc2trees:cashewitem>, 100);
pressing.addRecipe("create_pressing_chestnutbutter_n_cookingoil",  [
  <item:pamhc2foodextended:chestnutbutteritem>,
  <item:pamhc2foodcore:cookingoilitem> % 55
], <item:pamhc2trees:chestnutitem> , 100);
pressing.addRecipe("create_pressing_hazelnutbutter_n_cookingoil",  [
  <item:pamhc2foodextended:hazelnutbutteritem>,
  <item:pamhc2foodcore:cookingoilitem> % 55
], <item:pamhc2trees:hazelnutitem> , 100);
pressing.addRecipe("create_pressing_peanutbutter_n_cookingoil",  [
  <item:pamhc2foodextended:peanutbutteritem>,
  <item:pamhc2foodcore:cookingoilitem> % 55
], <item:pamhc2crops:peanutitem> , 100);
pressing.addRecipe("create_pressing_pecanbutter_n_cookingoil",  [
  <item:pamhc2foodextended:pecanbutteritem>,
  <item:pamhc2foodcore:cookingoilitem> % 55
], <item:pamhc2trees:pecanitem> , 100);
pressing.addRecipe("create_pressing_pistachiobutter_n_cookingoil",  [
  <item:pamhc2foodextended:pistachiobutteritem>,
  <item:pamhc2foodcore:cookingoilitem> % 55
], <item:pamhc2trees:pistachioitem> , 100);
pressing.addRecipe("create_pressing_walnutbutter_n_cookingoil",  [
  <item:pamhc2foodextended:walnutbutteritem>,
  <item:pamhc2foodcore:cookingoilitem> % 55
], <item:pamhc2trees:walnutitem> , 100);
pressing.addRecipe("create_pressing_sunflowerbutter_n_cookingoil",  [
  <item:pamhc2foodextended:sunflowerseedsbutteritem>,
  <item:pamhc2foodcore:cookingoilitem> % 55
], <item:pamhc2foodcore:sunflowerseedsitem> , 100);

<tag:items:forge:seeds/oil_press>.add([
  <item:minecraft:wheat_seeds>,
  <item:pamhc2crops:sesameseedsitem>,
  <item:pamhc2crops:cottonseeditem>,
  <item:pamhc2crops:flaxseeditem>,
  <item:pamhc2crops:grapeseeditem>
]);
pressing.addRecipe("create_pressing_seed_cookingoil",  [
  <item:pamhc2foodcore:cookingoilitem>,
  <item:pamhc2foodcore:cookingoilitem> % 75
], <tag:items:forge:seeds/oil_press>, 150);
pressing.addRecipe("create_pressing_veg_cookingoil",  [
  <item:pamhc2foodcore:cookingoilitem>,
  <item:pamhc2foodcore:cookingoilitem> % 95
], <item:pamhc2trees:avocadoitem> | <item:pamhc2trees:oliveitem>, 75);

// Fix salt recipes
mixing.removeRecipe(<item:pamhc2foodcore:saltitem>);
mixing.addRecipe("create_mixing_salt", "heated", <item:pamhc2foodcore:saltitem>, [<tag:items:forge:water>]);

// fix dairy recipes
mixing.removeRecipe(<item:pamhc2foodcore:creamitem>);
mixing.addRecipe("create_mixing_cream", "none", <item:pamhc2foodcore:creamitem>, [<tag:items:forge:milk>]);

mixing.removeRecipe(<item:pamhc2foodcore:butteritem>);
mixing.addRecipe("create_mixing_butter", "heated", <item:pamhc2foodcore:butteritem>, [<tag:items:forge:milk>]);

mixing.removeRecipe(<item:pamhc2foodcore:cheeseitem>);
mixing.addRecipe("create_mixing_cheese", "heated", <item:pamhc2foodcore:cheeseitem>, [
  <tag:items:forge:milk>, 
  <item:pamhc2foodcore:saltitem>
]);
