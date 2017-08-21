# Stone rods conflicts (all use the two cobble recipe)
recipes.removeShaped(<tconstruct:stone_stick>);

# Resolve by removing the conflicting but properly
# ore-dicted recipes and add the remaining recipe
# to the ore dictionary as the winner
var stoneStick = <ore:rodStone>;
stoneStick.add(<backpack:stick:0>);

# Railcraft did not add Steel plates to the ore dictionary
# this tweak corrects the locomotive recipe to work with all
# steal gears and plates
var oreSteelPlate = <ore:plateSteel>;
oreSteelPlate.add(<railcraft:plate:1>);

recipes.removeShaped(<railcraft:locomotive_electric>);
recipes.removeShaped(<railcraft:locomotive_steam_solid>);

var electricTrain = <railcraft:locomotive_electric>.withTag({model:"railcraft:default"});
var steamTrain = <railcraft:locomotive_steam_solid>.withTag({model:"railcraft:default"});
recipes.addShaped(electricTrain,[
  [<minecraft:redstone_lamp>,oreSteelPlate,null],
  [oreSteelPlate,<ore:blockCopper>,oreSteelPlate],
  [<ore:gearSteel>,<minecraft:minecart>,<ore:gearSteel>]
]);
recipes.addShaped(steamTrain,[
  [oreSteelPlate,oreSteelPlate,<minecraft:furnace>],
  [oreSteelPlate,oreSteelPlate,<minecraft:furnace>],
  [<minecraft:iron_bars>,<minecraft:minecart>,<minecraft:minecart>]
]);

# Both open computers and TF add diamond chip-like items
# - make TF the winner
recipes.removeShapeless(<opencomputers:material:30>);
var chipDiamond = <ore:chipDiamond>;
chipDiamond.add(<thermalfoundation:material:16>);

# Pams left in a jump recipe for bubbly water (which is now
# made in the presser).  Remove it.
recipes.removeShapeless(<harvestcraft:bubblywateritem>);

# There is a bug with Extra Utilities 2 golden bag of
# holding where the contents can be lost if the bag
# is moved from one hotbar slot to another or removed
# from the owner's main inventory.
recipes.removeShaped(<extrautils2:bagofholding>);
