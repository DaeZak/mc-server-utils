#modloaded randomthings quark

// Fix Random Things soundbox recipe that conflicts with Quark stained planks
recipes.remove(<randomthings:soundbox>);
recipes.addShaped(<randomthings:soundbox>, [
  [<ore:plankWood>, <ore:plankWood>, <ore:plankWood>],
  [<ore:plankWood>, <ore:gemLapis>, <ore:plankWood>],
  [<ore:plankWood>, <ore:dustRedstone>, <ore:plankWood>]
]);

