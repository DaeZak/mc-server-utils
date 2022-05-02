#modloaded croptopia farmersdelight
#priority 450
import mods.jei.JEI;
import crafttweaker.api.tag.manager.ITagManager;

//TODO figure out how to add cook pot recipes
val cookingpot = <recipetype:farmersdelight:cooking>;

// Consolidate food tags
<tagmanager:items>.addId(<tag:items:croptopia:fishes>, <resource:farmersdelight:salmon_slice>);
<tagmanager:items>.addId(<tag:items:croptopia:fishes>, <resource:farmersdelight:cod_slice>);
<tagmanager:items>.addId(<tag:items:croptopia:chicken_replacements>, <resource:farmersdelight:chicken_cuts>);
<tagmanager:items>.addId(<tag:items:croptopia:meat_replacements>, <resource:farmersdelight:minced_beef>);
<tagmanager:items>.addId(<tag:items:croptopia:meat_replacements>, <resource:farmersdelight:chicken_cuts>);
<tagmanager:items>.addId(<tag:items:forge:milk>, <resource:croptopia:soy_milk>);
<tagmanager:items>.addId(<tag:items:forge:milks>, <resource:farmersdelight:milk_bottle>);

// Standardize overlapping crates
craftingTable.remove(<item:farmersdelight:tomato_crate>);
craftingTable.addShaped("tomato_crate_fixed", <item:farmersdelight:tomato_crate>, [
  [<tag:items:forge:crops/tomato>, <tag:items:forge:crops/tomato>, <tag:items:forge:crops/tomato>],
  [<tag:items:forge:crops/tomato>, <tag:items:forge:crops/tomato>, <tag:items:forge:crops/tomato>],
  [<tag:items:forge:crops/tomato>, <tag:items:forge:crops/tomato>, <tag:items:forge:crops/tomato>]
]);
craftingTable.remove(<item:croptopia:tomato_seed>);
craftingTable.addShapeless("croptopia_tomato_to_tomato_seed_shapeless_fixed", <item:croptopia:tomato_seed>, 
[<item:croptopia:tomato>]);

craftingTable.remove(<item:farmersdelight:onion_crate>);
craftingTable.addShaped("onion_crate_fixed", <item:farmersdelight:onion_crate>, [
  [<tag:items:forge:crops/onion>, <tag:items:forge:crops/onion>, <tag:items:forge:crops/onion>],
  [<tag:items:forge:crops/onion>, <tag:items:forge:crops/onion>, <tag:items:forge:crops/onion>],
  [<tag:items:forge:crops/onion>, <tag:items:forge:crops/onion>, <tag:items:forge:crops/onion>]
]);

craftingTable.remove(<item:farmersdelight:cabbage_crate>);
craftingTable.addShaped("cabbage_crate_fixed", <item:farmersdelight:cabbage_crate>, [
  [<tag:items:forge:crops/cabbage>, <tag:items:forge:crops/cabbage>, <tag:items:forge:crops/cabbage>],
  [<tag:items:forge:crops/cabbage>, <tag:items:forge:crops/cabbage>, <tag:items:forge:crops/cabbage>],
  [<tag:items:forge:crops/cabbage>, <tag:items:forge:crops/cabbage>, <tag:items:forge:crops/cabbage>]
]);

craftingTable.remove(<item:farmersdelight:rice_bag>);
craftingTable.addShaped("rice_bag_fixed", <item:farmersdelight:rice_bag>, [
  [<tag:items:forge:crops/rice>, <tag:items:forge:crops/rice>, <tag:items:forge:crops/rice>],
  [<tag:items:forge:crops/rice>, <tag:items:forge:crops/rice>, <tag:items:forge:crops/rice>],
  [<tag:items:forge:crops/rice>, <tag:items:forge:crops/rice>, <tag:items:forge:crops/rice>]
]);
// Not a crate - but still not necessary
craftingTable.remove(<item:croptopia:rice_seed>);

// Remove unnecessary Croptopia foods
craftingTable.remove(<item:croptopia:chicken_and_noodles>);
JEI.hideIngredient(<item:croptopia:chicken_and_noodles>);

craftingTable.remove(<item:croptopia:nether_wart_stew>);
JEI.hideIngredient(<item:croptopia:nether_wart_stew>);

craftingTable.remove(<item:croptopia:ratatouille>);
JEI.hideIngredient(<item:croptopia:ratatouille>);

craftingTable.remove(<item:croptopia:veggie_salad>);
JEI.hideIngredient(<item:croptopia:veggie_salad>);

craftingTable.remove(<item:croptopia:steamed_rice>);
JEI.hideIngredient(<item:croptopia:steamed_rice>);

craftingTable.remove(<item:croptopia:blt>);
JEI.hideIngredient(<item:croptopia:blt>);

craftingTable.remove(<item:croptopia:cheeseburger>);
JEI.hideIngredient(<item:croptopia:cheeseburger>);

craftingTable.remove(<item:croptopia:hamburger>);
JEI.hideIngredient(<item:croptopia:hamburger>);

craftingTable.remove(<item:croptopia:bacon>);
JEI.hideIngredient(<item:croptopia:bacon>);

furnace.removeByInput(<item:croptopia:cooked_bacon>);
JEI.hideIngredient(<item:croptopia:cooked_bacon>);

craftingTable.remove(<item:croptopia:knife>);
JEI.hideIngredient(<item:croptopia:knife>);

craftingTable.remove(<item:croptopia:cheese_cake>);
JEI.hideIngredient(<item:croptopia:cheese_cake>);

craftingTable.remove(<item:croptopia:apple_pie>);
JEI.hideIngredient(<item:croptopia:apple_pie>);

craftingTable.remove(<item:croptopia:cherry_pie>);
JEI.hideIngredient(<item:croptopia:cherry_pie>);

craftingTable.remove(<item:croptopia:pecan_pie>);
JEI.hideIngredient(<item:croptopia:pecan_pie>);

craftingTable.remove(<item:croptopia:banana_cream_pie>);
JEI.hideIngredient(<item:croptopia:banana_cream_pie>);

craftingTable.remove(<item:croptopia:shepherds_pie>);
JEI.hideIngredient(<item:croptopia:shepherds_pie>);

// Including soups we cannot do in the cook pot yet
craftingTable.remove(<item:croptopia:potato_soup>);
JEI.hideIngredient(<item:croptopia:potato_soup>);

craftingTable.remove(<item:croptopia:leek_soup>);
JEI.hideIngredient(<item:croptopia:leek_soup>);

craftingTable.remove(<item:croptopia:chicken_and_noodles>);
JEI.hideIngredient(<item:croptopia:chicken_and_noodles>);
