#modloaded thaumcraft extrautils2 immersiveengineering
//EX2
// Remove conflicting dust processing recipe for redstone ore
recipes.remove(<extrautils2:ingredients:0>);
recipes.addShapeless(<extrautils2:ingredients:0>, [
  <extrautils2:endershard:*>, <ore:dustRedstone>, <ore:dustRedstone>, <ore:dustRedstone>, <ore:dustRedstone>
]);

// Add recipes for bedrock decorative blocks
recipes.addShaped(<extrautils2:decorativebedrock:2> * 8,[
  [<ore:compressed2xCobblestone>,<ore:compressed1xCobblestone>,<ore:compressed2xCobblestone>],
  [<ore:compressed1xCobblestone>,<ore:compressed3xCobblestone>,<ore:compressed1xCobblestone>],
  [<ore:compressed2xCobblestone>,<ore:compressed1xCobblestone>,<ore:compressed2xCobblestone>]
]);
furnace.addRecipe(<extrautils2:decorativebedrock:1>,<extrautils2:decorativebedrock:2>,1.5);
recipes.addShaped(<extrautils2:decorativebedrock:0> * 4,[
  [<extrautils2:decorativebedrock:1>,<extrautils2:decorativebedrock:1>],
  [<extrautils2:decorativebedrock:1>,<extrautils2:decorativebedrock:1>]
]);
// EX2 Decorative Bedrock blocks
// 2 : bedrock cobble
// 1 : bedrock slab/tile
// 0 : bedrock bricks
val exBedrockBlocks = <extrautils2:decorativebedrock>.definition;
for i in 0 to 2 {
  val bedrockBlock = exBedrockBlocks.makeStack(i);
  bedrockBlock.addTooltip(format.lightPurple('Place with caution!'));
  bedrockBlock.addShiftTooltip(format.darkPurple('These cannot be removed once placed'));
}

// Thaumcraft and IE
// thaumcraft:brassplate
recipes.remove(<thaumcraft:plate:0>);
recipes.addShapeless("immersiveengineering_compat/plate_thaumium_brass", <thaumcraft:plate:0>, [<ore:ingotBrass>, <immersiveengineering:tool>]);

// thaumcraft:ironplate
recipes.remove(<thaumcraft:plate:1>);

// thaumcraft:thaumiumplate
recipes.remove(<thaumcraft:plate:2>);
recipes.addShapeless("immersiveengineering_compat/plate_thaumium_thaumium", <thaumcraft:plate:2>, [<ore:ingotThaumium>, <immersiveengineering:tool>]);

// thaumcraft:voidplate
recipes.remove(<thaumcraft:plate:3>);
recipes.addShapeless("immersiveengineering_compat/plate_thaumium_void", <thaumcraft:plate:3>, [<ore:ingotVoid>, <immersiveengineering:tool>]);
