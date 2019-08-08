#modloaded biomesoplenty inspirations rustic

import mods.rustic.CrushingTub;

// -- BoP Berries ---------------------
CrushingTub.addRecipe(<liquid:wildberryjuice> * 250, null, <biomesoplenty:berries>);

// Remove plain mulch recipe
recipes.removeByRecipeName("inspirations:building/mulch/plain");
// Replace with bark centric recipe
var oresForBark = <ore:rootsBark> | <ore:bark>;
recipes.addShapedMirrored("inspirations_building/mulch/plain_fixed", <inspirations:mulch> * 2, [
  [<ore:stickWood>, oresForBark], 
  [oresForBark, <ore:stickWood>]
]);

