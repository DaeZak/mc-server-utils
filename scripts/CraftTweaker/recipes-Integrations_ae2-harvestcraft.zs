#modloaded appliedenergistics2 harvestcraft

import mods.appliedenergistics2.Grinder;

// Grains and potatoes in the grind stone make flour
Grinder.addRecipe(<harvestcraft:flouritem>, <ore:listAllgrain>, 4, <harvestcraft:flouritem>, 0.5, <harvestcraft:flouritem>, 0.15);
Grinder.addRecipe(<harvestcraft:flouritem>, <ore:listAllgrain>, 4, <harvestcraft:flouritem>, 0.5, <harvestcraft:flouritem>, 0.15);
Grinder.addRecipe(<harvestcraft:flouritem>, <minecraft:potato>, 4, <harvestcraft:flouritem>, 0.4, <harvestcraft:flouritem>, 0.12);

// Corn and corn seed in the grinder make cornmeal
Grinder.addRecipe(<harvestcraft:cornmealitem>, <ore:cropCorn>, 4, <harvestcraft:cornmealitem>, 0.4, <harvestcraft:cornmealitem>, 0.12);
Grinder.addRecipe(<harvestcraft:cornmealitem>, <ore:seedCorn>, 4, <harvestcraft:cornmealitem>, 0.5, <harvestcraft:cornmealitem>, 0.15);
