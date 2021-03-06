#priority 9999

import crafttweaker.item.IItemStack;
import crafttweaker.oredict.IOreDict;
import crafttweaker.oredict.IOreDictEntry;
import crafttweaker.recipes.ICraftingRecipe;
import mods.jei.JEI;

function getOreMap(materialRaw as string) as IOreDictEntry[string] {
  val material = materialRaw.trim();
  val oreMap = {
    'nugget' : oreDict.get('nugget' ~ material),
    'ingot' : oreDict.get('ingot' ~ material),
    'block' : oreDict.get('block' ~ material),
    'dust' : oreDict.get('dust' ~ material),
    'ore' : oreDict.get('ore' ~ material)
  } as IOreDictEntry[string];

  return oreMap;
}

function oreDictUpsert(oreEntry as IOreDictEntry, item as IItemStack) as void {
  if(oreEntry has item) {
    // Do nothing
  } else {
    oreEntry.add(item);
  }
}

function mergeNuggets(materialRaw as string, winner as IItemStack, losers as IItemStack[]) as bool {
  val oreMap = getOreMap(materialRaw);
  val oreNugget = oreMap.nugget;
  val oreIngot = oreMap.ingot;

  if(oreNugget.empty == true) {
    print('ERR: nugget' ~ materialRaw ~ ' is not an ore');
    return false;
  }

  recipes.remove(winner);
  for item in losers {
    JEI.removeAndHide(item);
    oreDictUpsert(oreNugget, item);
  }

  recipes.addShapeless(winner * 9,[
    oreIngot
  ]);

  return true;
}

function mergeIngots(materialRaw as string, winner as IItemStack, losers as IItemStack[]) as bool {
  val oreMap = getOreMap(materialRaw);
  val oreNugget = oreMap.nugget;
  val oreIngot = oreMap.ingot;
  val oreBlock = oreMap.block;

  if(oreIngot.empty == true) {
    print('ERR: ingot' ~ materialRaw ~ ' is not an ore');
    return false;
  }

  recipes.remove(winner);
  for item in losers {
    JEI.removeAndHide(item);
    oreDictUpsert(oreIngot, item);
  }

  recipes.addShaped(winner, [
    [oreNugget, oreNugget, oreNugget],
    [oreNugget, oreNugget, oreNugget],
    [oreNugget, oreNugget, oreNugget]
  ]);
  recipes.addShapeless(winner * 9,[
    oreBlock
  ]);

  return true;
}

function mergeOreBlocks(materialRaw as string, winner as IItemStack, losers as IItemStack[]) as bool {
  var set as IItemStack[];
  set = losers + winner;

  val oreMap = getOreMap(materialRaw);
  val oreNugget = oreMap.nugget;
  val oreIngot = oreMap.ingot;
  val oreBlock = oreMap.block;

  if(oreBlock.empty == true) {
    print('ERR: block' ~ materialRaw ~ ' is not an ore');
    return false;
  }

  for item in set {
    recipes.remove(item);
    oreDictUpsert(oreBlock, item);
  }

  recipes.addShaped(winner, [
    [oreIngot, oreIngot, oreIngot],
    [oreIngot, oreIngot, oreIngot],
    [oreIngot, oreIngot, oreIngot]
  ]);

  return true;
}

function dustProcessOre(materialRaw as string, outputDust as IItemStack, outputIngot as IItemStack) as void {
  val oreMap = getOreMap(materialRaw);
  val oreDust = oreMap.dust;
  val oreIngot = oreMap.ingot;
  val oreOreBlock = oreMap.ore;

  recipes.addShapeless(outputDust * 2, [
    oreOreBlock, <ore:dustPetrotheum>
  ]);
  recipes.addShapeless(outputDust, [
    oreIngot, <ore:dustPetrotheum>
  ]);
  recipes.addShapeless(outputIngot, [
    oreOreBlock, <ore:dustPyrotheum>
  ]);
  recipes.addShapeless(outputIngot * 2, [
    oreOreBlock, <ore:dustPetrotheum>, <ore:dustPyrotheum>
  ]);
}
