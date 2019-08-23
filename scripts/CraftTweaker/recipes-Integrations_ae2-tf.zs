#modloaded appliedenergistics2 thermalfoundation

import mods.jei.JEI;
import mods.appliedenergistics2.Grinder;

// Fix recipes conflict between TE wooden gear and AE2 wooden gear
// by making TE gear the winner.  Both gears are oreDicted as gearWood
// so either one is fine so long as recipes are following the oreDict
JEI.removeAndHide(<appliedenergistics2:material:40>);
recipes.remove(<thermalfoundation:material:22>);
recipes.addShaped("ct_wooden_gear-te-material_22", <thermalfoundation:material:22>, [
  [null, <ore:stickWood>, null],
  [<ore:stickWood>, null, <ore:stickWood>],
  [null, <ore:stickWood>, null]
]);

// Remove recipe to turn nether ore into dusts
//  because it conflicts with native recipe to turn ore into quartz
recipes.removeByRecipeName("thermalfoundation:material_97");

// Remove and hide AE2 Iron and Gold dust - we don't use them
JEI.removeAndHide(<appliedenergistics2:material:49>);
JEI.removeAndHide(<appliedenergistics2:material:51>);

// Let AE2 Grinder grind aluminum
Grinder.addRecipe(<thermalfoundation:material:68>, <ore:oreAluminum>, 4);
