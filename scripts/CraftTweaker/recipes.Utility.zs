import crafttweaker.item.IItemDefinition;
import crafttweaker.item.IItemStack;
import crafttweaker.player.IPlayer;

// Our own nametag recipes
recipes.remove(<minecraft:name_tag>);
recipes.addShaped(<minecraft:name_tag>, [
  [null,<ore:nuggetDiamond>,null],
  [<ore:nuggetSteel>,<ore:paper>,<ore:nuggetSteel>],
  [<ore:nuggetSteel>,<ore:slimeball>,<ore:nuggetSteel>]
]);

// Add fractional distillation outputs to slimeOre
var slimeOre = <ore:slimeball>;
slimeOre.add(<thermalfoundation:material:832>);
slimeOre.add(<thermalfoundation:material:833>);

// Let rosin be used for torches also
recipes.addShaped(<minecraft:torch>,[
  [null,<thermalfoundation:material:832>],
  [null,<minecraft:stick>]
]);

// Make blue hydrangeas create blue dye instead of light blue dye
recipes.removeShapeless(<minecraft:dye:12>,[<biomesoplenty:flower_0:4>]);
recipes.addShapeless(<biomesoplenty:blue_dye>,[<biomesoplenty:flower_0:4>]);

// Make white tulips make white dye instead of light gray dye
recipes.removeShapeless(<minecraft:dye:7>,[<minecraft:red_flower:6>]);
recipes.addShapeless(<biomesoplenty:white_dye>,[<minecraft:red_flower:6>]);

// Prismarine blocks should convert back down to Prismarine shards
recipes.addShapeless(<minecraft:prismarine_shard> * 3,[
  <minecraft:prismarine>
]);

// Candle recipes should respect the ore dictionary
recipes.remove(<harvestcraft:candledeco1>);
recipes.addShapeless(<harvestcraft:candledeco1> * 4, [
  <ore:wax>,
  <ore:string>
]);

recipes.remove(<rustic:candle>);
recipes.addShaped(<rustic:candle> * 6, [
  [<ore:string>],
  [<ore:wax>],
  [<ore:ingotIron>]
]);

// Immersive Engineering hemp fiber should be in
// the string ore dict
var stringOre = <ore:string>;
stringOre.add(<immersiveengineering:material:4>);

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

// Craft a life crystal for Betweenlands
recipes.addShaped(<thebetweenlands:life_crystal> ,[
  [null,<thebetweenlands:wight_heart>,null],
  [<ore:gemTanzanite>,<soulshardstow:soul_shard>.withTag({Tier: 0, KillCount: 0}),<ore:gemTanzanite>],
  [null,<ore:gemDiamond>,null]
]);

// Recharge a lifecrystal with bottle of enchanting
var anyLifeCrystal = <thebetweenlands:life_crystal>;
recipes.addShapeless('zakariel_soul_shard_life_crystal_recharge_xp_bottle',
  anyLifeCrystal,
  [
    anyLifeCrystal.anyDamage().marked("crystal"), <minecraft:experience_bottle>
  ],
  function(out, ins, cInfo) {
    var crystal = ins.crystal;
    return crystal.withDamage(max(0, crystal.damage - 50));
  },
  function(out, cInfo, player) {
    player.xp += 1;
  }
);

var botManaBottle = <botania:manabottle>;
recipes.addShapeless('zakariel_soul_shard_life_crystal_recharge_mana_bottle',
  anyLifeCrystal,
  [
    anyLifeCrystal.anyDamage().marked("crystal"), botManaBottle.anyDamage().transformDamage()
  ],
  function(out, ins, cInfo) {
    var crystal = ins.crystal;
    return crystal.withDamage(max(0, crystal.damage - 12));
  },
  function(out, cInfo, player) {
    player.sendChat("The life crystal greedily absorbs the liquid mana");
  }
);

// Make Erebus varnished planks
recipes.remove(<erebus:planks:12>);
recipes.addShapeless(<erebus:planks:12>, [
  <ore:plankWood>, <ore:slimeball>, <erebus:planticide>, <erebus:materials:18>
]);
