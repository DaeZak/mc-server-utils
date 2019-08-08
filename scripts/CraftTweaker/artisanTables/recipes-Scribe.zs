#modloaded artisanworktables

import crafttweaker.liquid.ILiquidStack;
import crafttweaker.recipes.ICraftingInventory;
import crafttweaker.player.IPlayer;
import mods.artisanworktables.builder.RecipeBuilder;

recipes.addShaped("artisan_worktables_workbench_scribe", <artisanworktables:worktable:8>, [
  [<ore:feather>, <ore:leather>, <minecraft:glass_bottle>],
  [<ore:plankWood>, <ore:bookshelf>, <ore:plankWood>],
  [<ore:ingotIron>, null, <ore:ingotIron>]
]);
recipes.addShaped("artisan_worktables_workstation_scribe", <artisanworktables:workstation:8>, [
  [<minecraft:book>, <minecraft:writable_book>, <minecraft:book>],
  [<ore:bookshelf>, <artisanworktables:worktable:8>, <ore:bookshelf>],
  [<ore:blockIron>, null, <ore:blockIron>]
]);

val scribeTable = RecipeBuilder.get("scribe");

// Replace mystcraft ink recipes with a
// recipe using: 
//   - Ender dust
//   - dyeBlack
//   - Pixie Dust 
//   - a glass bottle
//   - and some water
recipes.remove(<mystcraft:vial>);
scribeTable
  .setShaped([
    [null, <ore:buttonWood>, null],
    [<ore:dustEnder>, <ore:dyeBlack>, <ore:pixieDust>],
    [null, <minecraft:glass_bottle>, null]])
  .setFluid(<liquid:water> * 500)
  .addOutput(<mystcraft:vial>)
  .addTool(<ore:artisansBeaker>, 20)
  .addTool(<ore:artisansGrimoire>, 10)
  .setLevelRequired(10)
  .setConsumeExperience(true)
  .setName("artisan_worktables_mystcraft_ink_bottle_pixie")
  .create();
scribeTable
  .setShaped([
    [null, <ore:buttonWood>, null],
    [<ore:dustEnder>, <ore:dyeBlack>, <ore:dustRedstone>],
    [null, <ore:dragonBlood>, null]])
  .addOutput(<mystcraft:vial>)
  .addTool(<ore:artisansBeaker>, 30)
  .addTool(<ore:artisansGrimoire>, 20)
  .setLevelRequired(10)
  .setConsumeExperience(true)
  .setName("artisan_worktables_mystcraft_ink_bottle_dragon")
  .create();

// Migrate Symbol portfolio recipes to the
// Scribe worktable
recipes.remove(<mystcraft:portfolio>);
scribeTable
  .setShaped([
    [<minecraft:leather>, <minecraft:leather>, <minecraft:leather>], 
    [<minecraft:string>, null, null], 
    [<minecraft:leather>, <minecraft:leather>, <minecraft:leather>]])
  .addOutput(<mystcraft:portfolio>.withTag({}))
  .addTool(<ore:artisansNeedle>, 10)
  .setName("artisan_worktables_mystcraft_portfolio")
  .create();

// Migrate Collation folder recipes to the
// Scribe worktable
recipes.remove(<mystcraft:folder>);
scribeTable
  .setShaped([
    [null, <minecraft:leather>, null],
    [<minecraft:string>, null, null],
    [null, <minecraft:leather>, null]])
  .addOutput(<mystcraft:folder>.withTag({Pages: {}}))
  .addTool(<ore:artisansNeedle>, 5)
  .setName("artisan_worktables_mystcraft_folder")
  .create();

// Remove alternative book recipes (aside from the Tinkers one)
// and add a slightly more efficient scribe book recipe
recipes.removeByRecipeName("roots:book");
recipes.removeByRecipeName("erebus:book");
scribeTable
  .setShaped([
    [<ore:paper>, <ore:paper>],
    [<ore:leather>, <ore:paper>]])
  .addOutput(<minecraft:book>)
  .setExtraOutputOne(<minecraft:book>, 0.25)
  .setExtraOutputTwo(<minecraft:book>, 0.10)
  .addTool(<ore:artisansNeedle>, 10)
  .addTool(<ore:artisansRazor>, 10)
  .setName("artisan_worktables_efficient_book_recipe")
  .create();

// migrate bibliocraft Big Book recipe to scribe table
recipes.removeByRecipeName("bibliocraft:bigbook");
scribeTable
  .setShaped([
    [<ore:paper>, <ore:paper>, <ore:paper> ],
    [<ore:paper>,<minecraft:writable_book>, <ore:paper>],
    [<ore:paper>, <ore:paper>, <ore:paper>]])
  .addOutput(<bibliocraft:bigbook>)
  .addTool(<ore:artisansNeedle>, 10)
  .setName("artisan_worktables_bibliocraft_bigbook_recipe")
  .create();

// migrate bibliocraft Slotted Book recipe to scribe table
recipes.removeByRecipeName("bibliocraft:slottedbook");
var biblioCraftLabel = <bibliocraft:label> | <bibliocraft:label:1> | <bibliocraft:label:2> | <bibliocraft:label:3> | <bibliocraft:label:4> | <bibliocraft:label:5> | <bibliocraft:label:6>;
var slottedBook = <bibliocraft:slottedbook>;
scribeTable
  .setShapeless([<minecraft:writable_book>, biblioCraftLabel])
  .addOutput(slottedBook)
  .setRecipeFunction(function(out, ins, cInfo) {
      val authorName = "by " ~ cInfo.player.name ~ " the Sneaky";
      return out.withTag({authorName: authorName});
    })
  .addTool(<ore:artisansRazor>, 20)
  .setName("artisan_worktables_bibliocraft_slottedbook_recipe")
  .create();

// migrate bibliocraft stockroom catalog to scribe table
recipes.removeByRecipeName("bibliocraft:stockroomcatalog");
scribeTable
  .setShaped([
    [<ore:paper>, <ore:dyeGreen>, <ore:paper>],
    [<ore:paper>, <minecraft:writable_book>, <ore:paper>],
    [<ore:paper>, <ore:paper>, <ore:paper>]])
  .addOutput(<bibliocraft:stockroomcatalog>)
  .addTool(<ore:artisansNeedle>, 10)
  .setName("artisan_worktables_bibliocraft_stockroom_catalog_recipe")
  .create();

// migrate Ice and Fire bestiary book to scribe table
recipes.remove(<iceandfire:bestiary>);
scribeTable
  .setShaped([
    [<iceandfire:manuscript>, <iceandfire:manuscript>],
    [<iceandfire:manuscript>, null]])
  .addOutput(<iceandfire:bestiary>.withTag({Pages: [0] as int[]}))
  .addTool(<ore:artisansQuill>, 30)
  .setName("artisan_worktables_ice_and_fire_bestiary_recipe")
  .create();

// scroll recipes
recipes.removeByRecipeName("waystones:return_scroll");
scribeTable
  .setShaped([
    [<ore:nuggetGold>, <ore:nuggetGold>, <ore:nuggetGold>],
    [<ore:paper>, <ore:paper>, <ore:paper>]])
  .setFluid(<liquid:ender> * 250)
  .addOutput(<waystones:return_scroll> * 3)
  .setExtraOutputOne(<waystones:return_scroll>, 0.2)
  .setExtraOutputTwo(<waystones:return_scroll>, 0.1)
  .addTool(<ore:artisansQuill>, 10)
  .addTool(<ore:artisansGrimoire>, 20)
  .setLevelRequired(3)
  .setConsumeExperience(true)
  .setMinimumTier(1)
  .setName("artisan_worktables_waystones_return_scroll_recipe")
  .create();

recipes.removeByRecipeName("waystones:bound_scroll");
scribeTable
  .setShaped([
    [<ore:dyePurple>, <ore:dyePurple>, <ore:dyePurple>],
    [<ore:nuggetGold>, <ore:nuggetGold>, <ore:nuggetGold>],
    [<ore:paper>, <ore:paper>, <ore:paper>]])
  .setFluid(<liquid:ender> * 250)
  .addOutput(<waystones:bound_scroll> * 3)
  .setExtraOutputOne(<waystones:bound_scroll>, 0.2)
  .setExtraOutputTwo(<waystones:bound_scroll>, 0.1)
  .addTool(<ore:artisansQuill>, 10)
  .addTool(<ore:artisansGrimoire>, 20)
  .setLevelRequired(3)
  .setConsumeExperience(true)
  .setMinimumTier(1)
  .setName("artisan_worktables_waystones_bound_scroll_recipe")
  .create();

recipes.removeByRecipeName("waystones:warp_scroll");
scribeTable
  .setShaped([
    [<ore:enderpearl>, <ore:dyePurple>, <ore:enderpearl>], 
    [<ore:paper>, <ore:paper>, <ore:paper>], 
    [<ore:nuggetGold>, <ore:dyePurple>, <ore:nuggetGold>]])
  .setFluid(<liquid:ender> * 250)
  .addOutput(<waystones:warp_scroll> * 3)
  .setExtraOutputOne(<waystones:warp_scroll>, 0.2)
  .setExtraOutputTwo(<waystones:warp_scroll>, 0.1)
  .addTool(<ore:artisansQuill>, 10)
  .addTool(<ore:artisansGrimoire>, 20)
  .setLevelRequired(3)
  .setConsumeExperience(true)
  .setMinimumTier(1)
  .setName("artisan_worktables_waystones_warp_scroll_recipe")
  .create();
