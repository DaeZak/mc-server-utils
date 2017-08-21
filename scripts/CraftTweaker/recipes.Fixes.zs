# Broken Railcraft recipes that show up in JEI
# but are not present
recipes.removeShapeless(<railcraft:track_parts>);
recipes.removeShaped(<railcraft:track_parts>);

recipes.addShapedMirrored(<railcraft:track_parts>,[
  [<ore:nuggetBronze>,<ore:nuggetBronze>],
  [<ore:nuggetBronze>,null]
]);
recipes.addShaped(<railcraft:track_parts>,[
  [<ore:nuggetIron>,<ore:nuggetIron>]
]);

# Railcraft: no recipes for a
# charge feeder
recipes.addShaped(<railcraft:charge_feeder:1>, [
  [<ore:plateAluminum>,<ore:blockRedstone>,<ore:plateAluminum>],
  [<ore:plateAluminum>,<ore:gemRuby>,<ore:plateAluminum>],
  [<ore:blockRedstone>,<ore:nuggetIridium>,<ore:blockRedstone>]
]);
