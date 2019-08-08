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

// Custom dragon heart gems from ice and fire dragon hearts
var iceDragonHeartGem = <iceandfire:sapphire_gem>
  .withTag({Customdragonheart: "ice", HideFlags: 1, ench: [{id: 0, lvl: 0}]})
  .withDisplayName("§eCrystal Dragon Heart§r")
  .withLore(["§3A blue light pulsates from within"]);
mageTable
  .setShapeless([
    <iceandfire:ice_dragon_heart>,
    <ore:blockDiamond>])
  .addOutput(iceDragonHeartGem)
  .addTool(<ore:artisansAthame>, 25)
  .addTool(<ore:artisansGrimoire>, 25)
  .setLevelRequired(25)
  .setConsumeExperience(true)
  .setName("artisan_worktables_crystal_ice_dragon_heart")
  .create();

var fireDragonHeartGem = <projectred-core:resource_item:200>
  .withTag({Customdragonheart: "fire", HideFlags: 1, ench: [{id: 0, lvl: 0}]})
  .withDisplayName("§eCrystal Dragon Heart")
  .withLore(["§4A crimson light pulsates from within§r"]);
mageTable
  .setShapeless([
    <iceandfire:fire_dragon_heart>,
    <ore:blockDiamond>])
  .addOutput(fireDragonHeartGem)
  .addTool(<ore:artisansAthame>, 25)
  .addTool(<ore:artisansGrimoire>, 25)
  .setLevelRequired(25)
  .setConsumeExperience(true)
  .setName("artisan_worktables_crystal__fire_dragon_heart")
  .create();

// ***** Dragon heart gem transmutations
var eitherGem = iceDragonHeartGem | fireDragonHeartGem;

// Either gem fills an empty bottle with dragons breath
mageTable
  .setShapeless([
    eitherGem.reuse(),
    <minecraft:glass_bottle>])
  .addOutput(<minecraft:dragon_breath>)
  .setRecipeAction(function(out, cInfo, player) {
    player.attackEntityFrom(<damageSource:MAGIC>, 2.5);
  })
  .addTool(<ore:artisansAthame>, 2)
  .addTool(<ore:artisansGrimoire>, 2)
  .setLevelRequired(20)
  .setConsumeExperience(false)
  .setName("artisan_worktables_crystal__dragon_heart_breath")
  .create();

// Either gem turns sand into redstone
mageTable
  .setShapeless([
    eitherGem.reuse(),
    <ore:sand>])
  .addOutput(<minecraft:redstone>)
  .setExtraOutputOne(<thermalfoundation:material:771> * 2, 0.65)
  .setExtraOutputTwo(<thermalfoundation:material:772> * 1, 0.55)
  .addTool(<ore:artisansAthame>, 1)
  .addTool(<ore:artisansGrimoire>, 1)
  .setLevelRequired(20)
  .setConsumeExperience(false)
  .setName("artisan_worktables_crystal__dragon_heart_redstone")
  .create();

// Either gem turns dragon bones into bonemeal, niter and rich slag
mageTable
  .setShapeless([
    eitherGem.reuse(),
    <iceandfire:dragonbone>])
  .addOutput(<minecraft:dye:15> * 8)
  .setExtraOutputOne(<thermalfoundation:material:772> * 2, 0.55)
  .setExtraOutputTwo(<thermalfoundation:material:865> * 1, 0.25)
  .addTool(<ore:artisansAthame>, 1)
  .addTool(<ore:artisansGrimoire>, 1)
  .setLevelRequired(20)
  .setConsumeExperience(false)
  .setName("artisan_worktables_crystal__dragon_bone_recycle")
  .create();

//Transmute:
// Ice heart specific transmutes
mageTable
  .setShapeless([
    iceDragonHeartGem.reuse()])
  .setFluid(<liquid:water> * 1000)
  .addOutput(<minecraft:ice>)
  .addTool(<ore:artisansGrimoire>, 1)
  .setLevelRequired(20)
  .setConsumeExperience(false)
  .setName("artisan_worktables_crystal__dragon_heart_water_to_ice")
  .create();
mageTable
  .setShapeless([
    iceDragonHeartGem.reuse(),
    <minecraft:ice>])
  .addOutput(<minecraft:packed_ice>)
  .addTool(<ore:artisansGrimoire>, 1)
  .setLevelRequired(20)
  .setConsumeExperience(false)
  .setName("artisan_worktables_crystal__dragon_heart_ice_to_packedice")
  .create();
mageTable
  .setShapeless([
    iceDragonHeartGem.reuse(),
    <minecraft:packed_ice>])
  .addOutput(<biomesoplenty:hard_ice>)
  .addTool(<ore:artisansGrimoire>, 1)
  .setLevelRequired(20)
  .setConsumeExperience(false)
  .setName("artisan_worktables_crystal__dragon_heart_packedice_to_hardice")
  .create();
mageTable
  .setShapeless([
    iceDragonHeartGem.reuse(),
    <biomesoplenty:hard_ice>])
  .addOutput(<iceandfire:dragon_ice>)
  .addTool(<ore:artisansGrimoire>, 1)
  .setLevelRequired(20)
  .setConsumeExperience(false)
  .setName("artisan_worktables_crystal__dragon_heart_hardice_to_dragonice")
  .create();

// Fire heart specific transmutes
mageTable
  .setShapeless([
    fireDragonHeartGem.reuse(),
    <minecraft:gravel>
    ])
  .addOutput(<iceandfire:chared_gravel>)
  .addTool(<ore:artisansGrimoire>, 1)
  .setLevelRequired(20)
  .setConsumeExperience(false)
  .setName("artisan_worktables_crystal__dragon_heart_gravel_to_chargravel")
  .create();
mageTable
  .setShapeless([
    fireDragonHeartGem.reuse(),
    <iceandfire:chared_gravel>])
  .addOutput(<iceandfire:chared_cobblestone>)
  .addTool(<ore:artisansGrimoire>, 1)
  .setLevelRequired(20)
  .setConsumeExperience(false)
  .setName("artisan_worktables_crystal__dragon_heart_chargravel_to_charcobble")
  .create();
mageTable
  .setShapeless([
    fireDragonHeartGem.reuse(),
    <iceandfire:chared_cobblestone>])
  .addOutput(<minecraft:magma>)
  .addTool(<ore:artisansGrimoire>, 1)
  .setLevelRequired(20)
  .setConsumeExperience(false)
  .setName("artisan_worktables_crystal__dragon_heart_charcobble_to_magma")
  .create();
val magmaOrStoneBrick = <minecraft:stonebrick> | <minecraft:magma>;
mageTable
  .setShapeless([
    fireDragonHeartGem.reuse(),
    magmaOrStoneBrick])
  .addOutput(<quark:magma_bricks>)
  .addTool(<ore:artisansGrimoire>, 1)
  .setLevelRequired(20)
  .setConsumeExperience(false)
  .setName("artisan_worktables_crystal__dragon_heart_magma_to_magmabrick")
  .create();

// Fire gem turns water into fire dragon blood
mageTable
  .setShapeless([
    fireDragonHeartGem.reuse(),
    <minecraft:redstone>,
    <minecraft:potion>.withTag({Potion: "minecraft:water"})])
  .addOutput(<iceandfire:fire_dragon_blood>)
  .setRecipeAction(function(out, cInfo, player) {
    player.attackEntityFrom(<damageSource:MAGIC>, 1.5);
  })
  .addTool(<ore:artisansAthame>, 5)
  .addTool(<ore:artisansGrimoire>, 5)
  .setLevelRequired(20)
  .setConsumeExperience(false)
  .setName("artisan_worktables_crystal__dragon_heart_fire_blood")
  .create();

// Ice gem turns water into ice dragon blood
mageTable
  .setShapeless([
    iceDragonHeartGem.reuse(),
    <minecraft:redstone>,
    <minecraft:potion>.withTag({Potion: "minecraft:water"})])
  .addOutput(<iceandfire:ice_dragon_blood>)
  .setRecipeAction(function(out, cInfo, player) {
    player.attackEntityFrom(<damageSource:MAGIC>, 1.5);
  })
  .addTool(<ore:artisansAthame>, 5)
  .addTool(<ore:artisansGrimoire>, 5)
  .setLevelRequired(20)
  .setConsumeExperience(false)
  .setName("artisan_worktables_crystal__dragon_heart_ice_blood")
  .create();

// Fire gem turns fire blood into str pots
mageTable
  .setShapeless([
    fireDragonHeartGem.reuse(),
    <iceandfire:fire_dragon_blood>])
  .addOutput(<minecraft:potion>.withTag({Potion: "minecraft:strength"}))
  .setRecipeAction(function(out, cInfo, player) {
    player.attackEntityFrom(<damageSource:MAGIC>, 1.0);
  })
  .addTool(<ore:artisansAthame>, 2)
  .addTool(<ore:artisansGrimoire>, 2)
  .setLevelRequired(20)
  .setConsumeExperience(false)
  .setName("artisan_worktables_crystal__dragon_heart_fire_blood_strpotion")
  .create();

// Ice gem turns ice blood into fire resistance pots
mageTable
  .setShapeless([
    iceDragonHeartGem.reuse(),
    <iceandfire:ice_dragon_blood>])
  .addOutput(<minecraft:potion>.withTag({Potion: "minecraft:fire_resistance"}))
  .setRecipeAction(function(out, cInfo, player) {
    player.attackEntityFrom(<damageSource:MAGIC>, 1.0);
  })
  .addTool(<ore:artisansAthame>, 2)
  .addTool(<ore:artisansGrimoire>, 2)
  .setLevelRequired(20)
  .setConsumeExperience(false)
  .setName("artisan_worktables_crystal__dragon_heart_ice_blood_respotion")
  .create();

// Infuse dragon armor
val helmetArray = [
  <iceandfire:armor_red_helmet>,
  <iceandfire:armor_bronze_helmet>,
  <iceandfire:armor_green_helmet>,
  <iceandfire:armor_gray_helmet>,
  <iceandfire:armor_blue_helmet>,
  <iceandfire:armor_white_helmet>,
  <iceandfire:armor_sapphire_helmet>,
  <iceandfire:armor_silver_helmet>
] as IItemStack[];

for helmet in helmetArray {
  mageTable
    .setShapeless([
      eitherGem,
      helmet.marked("helm")])
    .addOutput(helmet)
    .setRecipeFunction(function(out, ins, cInfo) {
      return ins.helm.withDamage(0).updateTag({Unbreakable: 1});
    })
    .addTool(<ore:artisansAthame>, 50)
    .addTool(<ore:artisansGrimoire>, 50)
   .create();
}

val chestArray = [
  <iceandfire:armor_red_chestplate>,
  <iceandfire:armor_bronze_chestplate>,
  <iceandfire:armor_green_chestplate>,
  <iceandfire:armor_gray_chestplate>,
  <iceandfire:armor_blue_chestplate>,
  <iceandfire:armor_white_chestplate>,
  <iceandfire:armor_sapphire_chestplate>,
  <iceandfire:armor_silver_chestplate>
] as IItemStack[];

for chestPlate in chestArray {
  mageTable
    .setShapeless([
      eitherGem,
      chestPlate.marked("chest")])
    .addOutput(chestPlate)
    .setRecipeFunction(function(out, ins, cInfo) {
      return ins.chest.withDamage(0).updateTag({Unbreakable: 1});
    })
    .addTool(<ore:artisansAthame>, 50)
    .addTool(<ore:artisansGrimoire>, 50)
   .create();
}

val pantsArray = [
  <iceandfire:armor_red_leggings>,
  <iceandfire:armor_bronze_leggings>,
  <iceandfire:armor_green_leggings>,
  <iceandfire:armor_gray_leggings>,
  <iceandfire:armor_blue_leggings>,
  <iceandfire:armor_white_leggings>,
  <iceandfire:armor_sapphire_leggings>,
  <iceandfire:armor_silver_leggings>
] as IItemStack[];

for legPlate in pantsArray {
  mageTable
    .setShapeless([
      eitherGem,
      legPlate.marked("pants")])
    .addOutput(legPlate)
    .setRecipeFunction(function(out, ins, cInfo) {
      return ins.pants.withDamage(0).updateTag({Unbreakable: 1});
    })
    .addTool(<ore:artisansAthame>, 50)
    .addTool(<ore:artisansGrimoire>, 50)
   .create();
}

val bootsArray = [
  <iceandfire:armor_red_boots>,
  <iceandfire:armor_bronze_boots>,
  <iceandfire:armor_green_boots>,
  <iceandfire:armor_gray_boots>,
  <iceandfire:armor_blue_boots>,
  <iceandfire:armor_white_boots>,
  <iceandfire:armor_sapphire_boots>,
  <iceandfire:armor_silver_boots>
] as IItemStack[];

for boots in bootsArray {
  mageTable
    .setShapeless([
      eitherGem,
      boots.marked("boots")])
    .addOutput(boots)
    .setRecipeFunction(function(out, ins, cInfo) {
      return ins.boots.withDamage(0).updateTag({Unbreakable: 1});
    })
    .addTool(<ore:artisansAthame>, 50)
    .addTool(<ore:artisansGrimoire>, 50)
   .create();
}
