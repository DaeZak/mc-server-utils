#modloaded harvestcraft roots simplecorn

import mods.jei.JEI;
import mods.roots.Mortar;

// Replace roots flour with Harvestcraft flour
Mortar.removeRecipe(<roots:flour>);
furnace.remove(<minecraft:bread>, <roots:flour>);
JEI.hide(<roots:flour>);

Mortar.addRecipe(<harvestcraft:flouritem>, [<minecraft:wheat>]);
Mortar.addRecipe(<harvestcraft:flouritem>, [<minecraft:potato>]);

// Also make corn meal
Mortar.addRecipe(<harvestcraft:cornmealitem>, [<harvestcraft:cornitem>]);
Mortar.addRecipe(<harvestcraft:cornmealitem>, [<simplecorn:kernels>]);
Mortar.addRecipe(<harvestcraft:cornmealitem>, [<simplecorn:corncob>]);
