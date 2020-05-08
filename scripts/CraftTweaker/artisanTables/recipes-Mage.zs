#modloaded artisanworktables

import crafttweaker.damage.IDamageSource;
import crafttweaker.item.IItemDefinition;
import crafttweaker.liquid.ILiquidStack;
import crafttweaker.item.IItemStack;
import mods.artisanworktables.builder.RecipeBuilder;

recipes.addShaped("artisan_worktables_workbench_mage", <artisanworktables:worktable:7>, [
  [<minecraft:lapis_block>, <minecraft:enchanting_table>, <minecraft:lapis_block>],
  [<minecraft:obsidian>, <ore:enderpearl>, <minecraft:obsidian>],
  [<minecraft:obsidian>, null, <minecraft:obsidian>]
]);
recipes.addShaped("artisan_worktables_workstation_mage", <artisanworktables:workstation:7>, [
  [<minecraft:lapis_block>, <artisanworktables:worktable:7>, <minecraft:lapis_block>],
  [null, <thermalfoundation:storage_alloy:7>, null],
  [<minecraft:obsidian>, <minecraft:obsidian>, <minecraft:obsidian>]
]);

val mageTable = RecipeBuilder.get("mage");

// Make soul shards corrupted essence in mage table
recipes.removeByRecipeName("soulshardsrespawn:corrupted_essence");
mageTable
  .setShapeless([
    <ore:gemLapis>, 
    <ore:dustRedstone>, 
    <minecraft:soul_sand>, 
    <minecraft:obsidian>])
  .addOutput(<soulshardsrespawn:materials:1>)
  .setExtraOutputOne(<soulshardsrespawn:materials:1>, 0.35)
  .addTool(<ore:artisansAthame>, 2)
  .setLevelRequired(5)
  .setConsumeExperience(false)
  .setName("artisan_worktables_soulshards_corrupted_essence")
  .create();

// Make escape rope in mage table
recipes.remove(<randomthings:escaperope>);
mageTable
  .setShaped([
    [<ore:string>, <ore:ingotGold>, <minecraft:ender_pearl>], 
    [<ore:ingotGold>, <ore:string>, <ore:ingotGold>], 
    [<minecraft:ender_pearl>, <ore:ingotGold>, <ore:string>]])
  .addOutput(<randomthings:escaperope>)
  .addTool(<ore:artisansGrimoire>, 10)
  .setLevelRequired(5)
  .setConsumeExperience(false)
  .setName("artisan_worktables_randomthings_escape_rope")
  .create();

// Make stable ender pearls in mage table
recipes.removeByRecipeName("randomthings:stableenderpearl");
mageTable
  .setShaped([
    [<minecraft:obsidian>, <minecraft:dye:4>, <minecraft:obsidian>], 
    [<minecraft:dye:4>, <minecraft:ender_pearl>, <minecraft:dye:4>], 
    [<minecraft:obsidian>, <minecraft:dye:4>, <minecraft:obsidian>]])
  .addOutput(<randomthings:stableenderpearl>)
  .addTool(<ore:artisansGrimoire>, 10)
  .setLevelRequired(1)
  .setConsumeExperience(true)
  .setName("artisan_worktables_randomthings_stable_ender_pearl")
  .create();

// Make random things ender bucket in mage table
recipes.removeByRecipeName("randomthings:enderbucket");
mageTable
  .setShaped([
    [<ore:ingotIron>, null, <ore:ingotIron>], 
    [null, <minecraft:ender_pearl>, null]])
  .addOutput(<randomthings:enderbucket>)
  .addTool(<ore:artisansGrimoire>, 5)
  .setLevelRequired(5)
  .setConsumeExperience(true)
  .setName("artisan_worktables_randomthings_ender_bucket")
  .create();

// Floo network in mage table
recipes.removeByRecipeName("randomthings:floopowder");
mageTable
  .setShaped([
    [<minecraft:ender_pearl>, <minecraft:redstone>], 
    [<minecraft:gunpowder>, <ore:cropBean>]])
  .addOutput(<randomthings:ingredient:7> * 16)
  .setExtraOutputOne(<randomthings:ingredient:7> * 8, 0.25)
  .addTool(<ore:artisansGrimoire>, 10)
  .setLevelRequired(1)
  .setConsumeExperience(false)
  .setName("artisan_worktables_randomthings_floo_powder")
  .create();

recipes.removeByRecipeName("randomthings:floosign");
mageTable
  .setShaped([
    [<randomthings:ingredient:7>, <randomthings:ingredient:7>, <randomthings:ingredient:7>], 
    [<randomthings:ingredient:7>, <minecraft:sign>, <randomthings:ingredient:7>], 
    [<randomthings:ingredient:7>, <randomthings:ingredient:7>, <randomthings:ingredient:7>]])
  .addOutput(<randomthings:floosign>)
  .addTool(<ore:artisansGrimoire>, 10)
  .setLevelRequired(2)
  .setConsumeExperience(true)
  .setName("artisan_worktables_randomthings_floo_sign")
  .create();

recipes.removeByRecipeName("randomthings:floopouch");
mageTable
  .setShaped([
    [null, <minecraft:leather>, null], 
    [<minecraft:leather>, <randomthings:ingredient:7>, <minecraft:leather>], 
    [<minecraft:leather>, <minecraft:leather>, <minecraft:leather>]])
  .addOutput(<randomthings:floopouch>)
  .addTool(<ore:artisansGrimoire>, 10)
  .setLevelRequired(2)
  .setConsumeExperience(true)
  .setName("artisan_worktables_randomthings_floo_pouch")
  .create();

recipes.removeByRecipeName("randomthings:flootoken");
mageTable
  .setShaped([
    [<randomthings:ingredient:7>, <randomthings:ingredient:7>, <randomthings:ingredient:7>], 
    [<randomthings:ingredient:7>, <minecraft:paper>, <randomthings:ingredient:7>], 
    [<randomthings:ingredient:7>, <randomthings:ingredient:7>, <randomthings:ingredient:7>]])
  .addOutput(<randomthings:flootoken> * 2)
  .setExtraOutputOne(<randomthings:flootoken>, 0.25)
  .addTool(<ore:artisansGrimoire>, 10)
  .setLevelRequired(2)
  .setConsumeExperience(true)
  .setName("artisan_worktables_randomthings_floo_token")
  .create();

// Make random things reinforced ender bucket in mage table
recipes.removeByRecipeName("randomthings:reinforcedenderbucket");
mageTable
  .setShaped([
    [<minecraft:obsidian>, <randomthings:enderbucket>, <minecraft:obsidian>], 
    [null, <randomthings:stableenderpearl>, null]])
  .addOutput(<randomthings:reinforcedenderbucket>)
  .addTool(<ore:artisansAthame>, 10)
  .addTool(<ore:artisansGrimoire>, 10)
  .setLevelRequired(10)
  .setConsumeExperience(true)
  .setName("artisan_worktables_randomthings_ender_bucket_reinforced")
  .create();

// Make obsidian skulls in mage table
recipes.remove(<randomthings:obsidianskull>);
mageTable
  .setShaped([
    [<minecraft:obsidian>, <minecraft:blaze_rod>, <minecraft:obsidian>], 
    [<minecraft:nether_brick>, <minecraft:skull:1>, <minecraft:nether_brick>], 
    [<minecraft:obsidian>, <minecraft:blaze_rod>, <minecraft:obsidian>]])
  .addOutput(<randomthings:obsidianskull>)
  .addTool(<ore:artisansAthame>, 10)
  .addTool(<ore:artisansGrimoire>, 10)
  .setLevelRequired(20)
  .setConsumeExperience(true)
  .setName("artisan_worktables_randomthings_obsidian_skull")
  .create();

// Make RandomThings weather eggs in the mage table
recipes.remove(<randomthings:weatheregg>);
mageTable
  .setShaped([
    [<minecraft:obsidian>, <minecraft:feather>, <minecraft:obsidian>], 
    [<minecraft:double_plant>, <minecraft:fire_charge>, <minecraft:double_plant>], 
    [<minecraft:obsidian>, <minecraft:feather>, <minecraft:obsidian>]])
  .addOutput(<randomthings:weatheregg> * 2)
  .setExtraOutputOne(<randomthings:weatheregg>, 0.51)
  .addTool(<ore:artisansAthame>, 10)
  .addTool(<ore:artisansGrimoire>, 10)
  .setLevelRequired(2)
  .setConsumeExperience(true)
  .setName("artisan_worktables_randomthings_sun_egg")
  .create();

recipes.remove(<randomthings:weatheregg:1>);
mageTable
  .setShaped([
    [<minecraft:obsidian>, <minecraft:potion>.withTag({Potion: "minecraft:water"}), <minecraft:obsidian>], 
    [<minecraft:dye:4>, <minecraft:fire_charge>, <minecraft:dye:4>], 
    [<minecraft:obsidian>, <minecraft:potion>.withTag({Potion: "minecraft:water"}), <minecraft:obsidian>]])
  .addOutput(<randomthings:weatheregg:1> * 2)
  .setExtraOutputOne(<randomthings:weatheregg:1>, 0.51)
  .addTool(<ore:artisansAthame>, 10)
  .addTool(<ore:artisansGrimoire>, 10)
  .setLevelRequired(2)
  .setConsumeExperience(true)
  .setName("artisan_worktables_randomthings_rain_egg")
  .create();

recipes.remove(<randomthings:weatheregg:2>);
mageTable
  .setShaped([
    [<minecraft:obsidian>, <minecraft:sugar>, <minecraft:obsidian>], 
    [<minecraft:dye:4>, <minecraft:fire_charge>, <minecraft:dye:4>], 
    [<minecraft:obsidian>, <minecraft:sugar>, <minecraft:obsidian>]])
  .addOutput(<randomthings:weatheregg:2> * 2)
  .setExtraOutputOne(<randomthings:weatheregg:2>, 0.51)
  .addTool(<ore:artisansAthame>, 10)
  .addTool(<ore:artisansGrimoire>, 10)
  .setLevelRequired(2)
  .setConsumeExperience(true)
  .setName("artisan_worktables_randomthings_storm_egg")
  .create();

// Make randomthings portkey in mage table
recipes.removeByRecipeName("randomthings:portkey");
mageTable
  .setShaped([
    [<minecraft:gunpowder>, <randomthings:stableenderpearl>, <minecraft:gunpowder>], 
    [null, <minecraft:diamond>, null]])
  .addOutput(<randomthings:portkey>)
  .addTool(<ore:artisansAthame>, 10)
  .addTool(<ore:artisansGrimoire>, 10)
  .setLevelRequired(10)
  .setConsumeExperience(true)
  .setName("artisan_worktables_randomthings_port_key")
  .create();

// Make waystones warp stone in mage table
recipes.removeByRecipeName("waystones:warp_stone");
mageTable
  .setShaped([
    [<ore:dyePurple>, <ore:enderpearl>, <ore:dyePurple>], 
    [<ore:enderpearl>, <ore:gemEmerald>, <ore:enderpearl>], 
    [<ore:dyePurple>, <ore:enderpearl>, <ore:dyePurple>]])
  .addOutput(<waystones:warp_stone>)
  .addTool(<ore:artisansAthame>, 5)
  .addTool(<ore:artisansGrimoire>, 5)
  .setLevelRequired(20)
  .setConsumeExperience(true)
  .setName("artisan_worktables_waystones_warp_stone")
  .create();

// Make soul shards corrupted ingot in mage table
recipes.removeByRecipeName("soulshardsrespawn:corrupted_ingot");
mageTable
  .setShaped([
    [<ore:dustCorrupted>, <ore:dustVile>, <ore:dustCorrupted>], 
    [<ore:dustVile>, <ore:ingotIron>, <ore:dustVile>], 
    [<ore:dustCorrupted>, <ore:dustVile>, <ore:dustCorrupted>]])
  .addOutput(<soulshardsrespawn:materials>)
  .setExtraOutputOne(<tconstruct:shard>.withTag({Material: "corrupted"}) * 2, 0.25)
  .setExtraOutputTwo(<tconstruct:shard>.withTag({Material: "corrupted"}), 0.1)
  .addTool(<ore:artisansAthame>, 5)
  .addTool(<ore:artisansGrimoire>, 5)
  .setLevelRequired(10)
  .setConsumeExperience(false)
  .setName("artisan_worktables_soulshards_corrupted_ingot")
  .create();

// Make soul shards soul cage in mage table
recipes.removeByRecipeName("soulshardsrespawn:soul_cage");
mageTable
  .setShaped([
    [<ore:ingotCorrupted>, <minecraft:iron_bars>, <ore:ingotCorrupted>], 
    [<minecraft:iron_bars>, null, <minecraft:iron_bars>], 
    [<ore:ingotCorrupted>, <minecraft:iron_bars>, <ore:ingotCorrupted>]])
  .addOutput(<soulshardsrespawn:soul_cage>)
  .addTool(<ore:artisansAthame>, 15)
  .addTool(<ore:artisansGrimoire>, 15)
  .setLevelRequired(20)
  .setConsumeExperience(true)
  .setName("artisan_worktables_soulshards_soul_cage")
  .create();

// Make random things peace candle in mage table
mageTable
  .setShaped([
    [null, <minecraft:nether_star>, null], 
    [null, <ore:blockCandle>, null],
    [<minecraft:stone_pressure_plate>,<minecraft:stone_pressure_plate>,<minecraft:stone_pressure_plate>]])
  .addOutput(<randomthings:peacecandle>)
  .addTool(<ore:artisansAthame>, 30)
  .addTool(<ore:artisansGrimoire>, 50)
  .setLevelRequired(30)
  .setConsumeExperience(true)
  .setName("artisan_worktables_randomthings_peace_candle")
  .create();

// Craft a twilight forest peacock feather fan
mageTable
  .setShaped([
    [<animania:blue_peacock_feather>, <animania:purple_peacock_feather>, <animania:blue_peacock_feather>], 
    [<ore:rodStone>, <animania:white_peacock_feather>, <animania:purple_peacock_feather>],
    [<thermalfoundation:material:134>,<ore:rodStone>, <animania:blue_peacock_feather>]])
  .addOutput(<twilightforest:peacock_fan>)
  .addTool(<ore:artisansAthame>, 25)
  .addTool(<ore:artisansGrimoire>, 25)
  .setLevelRequired(20)
  .setConsumeExperience(true)
  .setName("artisan_worktables_twilight_forest_peacock_fan")
  .create();
