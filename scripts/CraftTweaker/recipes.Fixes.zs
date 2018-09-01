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

// Erebus didn't oredict their fences
var fences = <ore:fenceWood>;
fences.add(<erebus:fence_baobab>);
fences.add(<erebus:fence_eucalyptus>);
fences.add(<erebus:fence_mahogany>);
fences.add(<erebus:fence_mossbark>);
fences.add(<erebus:fence_asper>);
fences.add(<erebus:fence_cypress>);
fences.add(<erebus:fence_balsam>);
fences.add(<erebus:fence_white>);
fences.add(<erebus:fence_bamboo>);
fences.add(<erebus:fence_rotten>);
fences.add(<erebus:fence_marshwood>);
fences.add(<erebus:fence_scorched>);
fences.add(<erebus:fence_varnished>);
