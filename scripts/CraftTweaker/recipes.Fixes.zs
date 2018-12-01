// Rustic didnt oredict their apiary
recipes.remove(<rustic:apiary>);

var log = <ore:logWood>;
var plank = <ore:plankWood>;
recipes.addShaped(<rustic:apiary>, [
  [log, log, log],
  [plank, <minecraft:item_frame>, plank],
  [log, log, log]
]);

// SimpleCorn didn't oredict their corn
var cropCorn = <ore:cropCorn>;
var allVeggies = <ore:listAllveggie>;

cropCorn.add(<simplecorn:corncob>);
cropCorn.add(<simplecorn:kernels>);
allVeggies.add(<simplecorn:corncob>);
allVeggies.add(<simplecorn:kernels>);

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

