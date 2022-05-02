#priority 5
import mods.jei.JEI;
import crafttweaker.api.tag.manager.ITagManager;
import crafttweaker.api.recipe.Replacer;

// Croptopia Replacements
Replacer.forMods("croptopia")
  .replace(<item:minecraft:egg>, <tag:items:forge:eggs>)
  .replace(<item:croptopia:chocolate>, <item:create:bar_of_chocolate>)
  .replace(<item:croptopia:milk_bottle>, <item:farmersdelight:milk_bottle>)
  .replace(<item:croptopia:noodle>, <item:farmersdelight:raw_pasta>)
  .replace(<item:croptopia:tomato>, <tag:items:forge:crops/tomato>)
  .execute();
// FarmersDelight Replacements
Replacer.forMods("farmersdelight")
  .replace(<item:minecraft:wheat>, <item:croptopia:dough>)
  .execute();
Replacer.forMods("create").excluding([
    <recipetype:create:sequenced_assembly>
  ])
  .replace(<item:create:dough>, <item:croptopia:dough>)
  .execute();

// Clean up after replacing
craftingTable.remove(<item:croptopia:chocolate>);
JEI.hideIngredient(<item:croptopia:chocolate>);

craftingTable.remove(<item:croptopia:milk_bottle>);
JEI.hideIngredient(<item:croptopia:milk_bottle>);
<tagmanager:items>.removeId(<tag:items:forge:milks>, <resource:croptopia:milk_bottle>);

craftingTable.remove(<item:croptopia:noodle>);
JEI.hideIngredient(<item:croptopia:noodle>);
