#modloaded appliedenergistics2 opencomputers projectred-core

import mods.jei.JEI;

// Remove recipe for ProjectRed silicon and hide the item
JEI.removeAndHide(<projectred-core:resource_item:301>);

// Remove recipe to smelt Sandy coal into Silicon Boule 
// and hide the item
furnace.remove(<projectred-core:resource_item:300>);
JEI.hide(<projectred-core:resource_item:300>);

// Remove project-red silicon using recipes and replace with recipe
// that uses oredicted silicon (provided by AE2)
recipes.removeByRecipeName("projectred-core:resource/red_silicon_compound");
recipes.addShaped("projectred-core_resource/red_silicon_compound", <projectred-core:resource_item:310>, [
  [<ore:dustRedstone>, <ore:dustRedstone>, <ore:dustRedstone>], 
  [<ore:dustRedstone>, <ore:itemSilicon>, <ore:dustRedstone>], 
  [<ore:dustRedstone>, <ore:dustRedstone>, <ore:dustRedstone>]
]);

recipes.removeByRecipeName("projectred-core:resource/glowing_silicon_compound");
recipes.addShaped("projectred-core_resource/glowing_silicon_compound", <projectred-core:resource_item:311>, [
  [<ore:dustGlowstone>, <ore:dustGlowstone>, <ore:dustGlowstone>], 
  [<ore:dustGlowstone>, <ore:itemSilicon>, <ore:dustGlowstone>], 
  [<ore:dustGlowstone>, <ore:dustGlowstone>, <ore:dustGlowstone>]
]);

recipes.removeByRecipeName("projectred-core:resource/electrotine_silicon_compound");
recipes.addShaped("projectred-core_resource/electrotine_silicon_compound", <projectred-core:resource_item:312>, [
  [<ore:dustElectrotine>, <ore:dustElectrotine>, <ore:dustElectrotine>], 
  [<ore:dustElectrotine>, <ore:itemSilicon>, <ore:dustElectrotine>], 
  [<ore:dustElectrotine>, <ore:dustElectrotine>, <ore:dustElectrotine>]
]);

// Remove OpenComputers circuit board recipe and replace with oredicted
// silicon recipe
recipes.removeByRecipeName("opencomputers:material33");
recipes.addShapeless("opencomputers_material33", <opencomputers:material:2> * 16, [
  <ore:ingotGold>, 
  <ore:itemSilicon>, 
  <ore:dyeGreen>
]);


