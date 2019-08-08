#modloaded rustic thermalfoundation

//Rustic iron lattice conflicts with ThermalFoundation iron gears
// so we remove the default rustic recipes and replace it
recipes.removeShaped(<rustic:iron_lattice>);
recipes.addShaped(<rustic:iron_lattice> * 8, [
  [null, <ore:stickIron>, null],
  [<ore:stickIron>, <ore:ingotIron>, <ore:stickIron>],
  [null, <ore:stickIron>, null]
]);
