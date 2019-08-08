#modloaded tconstruct

// Add tconstruct bacon to cooked pork oredict
<ore:listAllporkcooked>.add(<tconstruct:edible:0>);

// Add TConstruct Aluminum Brass to the brass list in case of Thaumcraft
var oreNuggetBrass = <ore:nuggetBrass>;
oreNuggetBrass.add(<tconstruct:nuggets:5>);

var oreIngotBrass = <ore:ingotBrass>;
oreIngotBrass.add(<tconstruct:ingots:5>);

var oreBlockBrass = <ore:blockBrass>;
oreBlockBrass.add(<tconstruct:metal:5>);
