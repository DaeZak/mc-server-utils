#modloaded biomesoplenty inspirations rustic

import mods.rustic.CrushingTub;

// -- BoP Berries ---------------------
CrushingTub.addRecipe(<liquid:wildberryjuice> * 250, null, <biomesoplenty:berries>);

// Replace inspirations mulch recipes with a less conflicting recipe (the base mulch
// conflicts with wooden gears)

var oresForBark = <ore:rootsBark> | <ore:bark>;

recipes.removeByRecipeName("inspirations:building/mulch/plain");
recipes.addShaped("inspirations_building/mulch/plain_fixed", <inspirations:mulch> * 2, [
  [null, <ore:stickWood>, null], 
  [oresForBark, null, oresForBark], 
  [null, <ore:stickWood>, null]
]);

recipes.removeByRecipeName("inspirations:building/mulch/brown");
recipes.addShaped("inspirations_building/mulch/brown", <inspirations:mulch:1> * 2, [
  [null, <ore:stickWood>, null], 
  [oresForBark, <ore:dyeBrown>, oresForBark], 
  [null, <ore:stickWood>, null]
]);

recipes.removeByRecipeName("inspirations:building/mulch/yellow");
recipes.addShaped("inspirations_building/mulch/yellow", <inspirations:mulch:2> * 2, [
  [null, <ore:stickWood>, null], 
  [oresForBark, <ore:dyeYellow>, oresForBark], 
  [null, <ore:stickWood>, null]
]);

recipes.removeByRecipeName("inspirations:building/mulch/amber");
recipes.addShaped("inspirations_building/mulch/amber", <inspirations:mulch:3> * 2, [
  [null, <ore:stickWood>, null], 
  [oresForBark, <ore:dyeOrange>, oresForBark], 
  [null, <ore:stickWood>, null]
]);

recipes.removeByRecipeName("inspirations:building/mulch/ruby");
recipes.addShaped("inspirations_building/mulch/ruby", <inspirations:mulch:4> * 2, [
  [null, <ore:stickWood>, null], 
  [oresForBark, <ore:dyeMagenta>, oresForBark], 
  [null, <ore:stickWood>, null]
]);

recipes.removeByRecipeName("inspirations:building/mulch/red");
recipes.addShaped("inspirations_building/mulch/red", <inspirations:mulch:5> * 2, [
  [null, <ore:stickWood>, null], 
  [oresForBark, <ore:dyeRed>, oresForBark], 
  [null, <ore:stickWood>, null]
]);

recipes.removeByRecipeName("inspirations:building/mulch/black");
recipes.addShaped("inspirations_building/mulch/black", <inspirations:mulch:6> * 2, [
  [null, <ore:stickWood>, null], 
  [oresForBark, <ore:dyeBlack>, oresForBark], 
  [null, <ore:stickWood>, null]
]);

recipes.removeByRecipeName("inspirations:building/mulch/blue");
recipes.addShaped("inspirations_building/mulch/blue", <inspirations:mulch:7> * 2, [
  [null, <ore:stickWood>, null], 
  [oresForBark, <ore:dyeBlue>, oresForBark], 
  [null, <ore:stickWood>, null]
]);
