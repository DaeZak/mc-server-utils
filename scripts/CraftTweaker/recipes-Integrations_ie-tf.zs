#modloaded immersiveengineering thermalfoundation

import crafttweaker.item.IItemStack;
import crafttweaker.oredict.IOreDictEntry;
import mods.immersiveengineering.ArcFurnace;
import mods.immersiveengineering.BlastFurnace;
import mods.immersiveengineering.CokeOven;
import mods.immersiveengineering.Crusher;
import mods.jei.JEI;

// Redo blast furnace steel recipes to output TF slag
BlastFurnace.removeRecipe(<immersiveengineering:metal:8>);
BlastFurnace.removeRecipe(<immersiveengineering:storage:8>);
BlastFurnace.addRecipe(<immersiveengineering:metal:8>, <ore:ingotIron>, 1200, <thermalfoundation:material:864>);
BlastFurnace.addRecipe(<immersiveengineering:storage:8>, <ore:blockIron>, 1200 * 9, <thermalfoundation:material:864>);

// Remove IE non-oreDicted Coal Coke Block recipes
recipes.remove(<immersiveengineering:stone_decoration:3>);
CokeOven.removeRecipe(<immersiveengineering:stone_decoration:3>);
JEI.hide(<immersiveengineering:stone_decoration:3>);

// Including un-crafting IE Coal Coke Block into IE coal coke
recipes.remove(<immersiveengineering:material:6>);
CokeOven.removeRecipe(<immersiveengineering:material:6>);
JEI.hide(<immersiveengineering:material:6>);

// Make coke oven output TF coal coke
CokeOven.addRecipe(<thermalfoundation:material:802>, 500, <minecraft:coal>, 1800);
CokeOven.addRecipe(<thermalfoundation:storage_resource:1>, 5000, <minecraft:coal_block>, 1800 * 9);

// Remove and hide grits that we don't use
JEI.hide(<immersiveengineering:metal:9>);//Copper Grit
JEI.hide(<immersiveengineering:metal:10>);//Aluminum Grit
JEI.hide(<immersiveengineering:metal:11>);//Lead Grit
JEI.hide(<immersiveengineering:metal:12>);//Silver Grit
JEI.hide(<immersiveengineering:metal:13>);//Nickel Grit
JEI.hide(<immersiveengineering:metal:15>);//Constantan Grit
JEI.hide(<immersiveengineering:metal:16>);//Electrum Grit
JEI.hide(<immersiveengineering:metal:17>);//Steel Grit
JEI.hide(<immersiveengineering:metal:18>);//Iron Grit
JEI.hide(<immersiveengineering:metal:19>);//Gold Grit

// Upgrade Crusher recipes so that there is a reason to use
// the Crusher as a step after attaining a Pulverizer
val oreDustsMap = {
  <ore:oreIron>     : <thermalfoundation:material>,
  <ore:oreGold>     : <thermalfoundation:material:1>,
  <ore:oreCopper>   : <thermalfoundation:material:64>,
  <ore:oreTin>      : <thermalfoundation:material:65>,
  <ore:oreSilver>   : <thermalfoundation:material:66>,
  <ore:oreLead>     : <thermalfoundation:material:67>,
  <ore:oreAluminum> : <thermalfoundation:material:68>,
  <ore:oreNickel>   : <thermalfoundation:material:69>,
  <ore:orePlatinum> : <thermalfoundation:material:70>,
  <ore:oreIridium>  : <thermalfoundation:material:71>,
  <ore:oreMithril>  : <thermalfoundation:material:72>,
  <ore:obsidian>    : <thermalfoundation:material:770>,
  <ore:oreUranium>  : <immersiveengineering:metal:14>,
  <ore:oreDiamond>  : <minecraft:diamond>,
  <ore:oreEmerland> : <minecraft:emerald>
} as IItemStack[IOreDictEntry];

val oreSecondaries = {
  <ore:oreIron>     : <thermalfoundation:material:69>,//Nickel
  <ore:oreGold>     : <thermalfoundation:material:866>,//Cinnabar
  <ore:oreCopper>   : <thermalfoundation:material:1>,//Gold
  <ore:oreTin>      : <thermalfoundation:material>,//Iron
  <ore:oreSilver>   : <thermalfoundation:material:67>,//Lead
  <ore:oreLead>     : <thermalfoundation:material:66>,//Silver
  <ore:oreAluminum> : <thermalfoundation:material>,//Iron
  <ore:oreNickel>   : <thermalfoundation:material:70>,//Platinum
  <ore:orePlatinum> : <thermalfoundation:material:71>,//Iridium
  <ore:oreIridium>  : <thermalfoundation:material:70>,//Platinum
  <ore:oreMithril>  : <thermalfoundation:material:1>,//Gold
  <ore:obsidian>    : <thermalfoundation:material:770>,//Obsidian
  <ore:oreUranium>  : <immersiveengineering:metal:14>,//Uranium
  <ore:oreDiamond>  : <thermalfoundation:material:16>,//Diamond nugget
  <ore:oreEmerland> : <thermalfoundation:material:17>,//Emerland nugget
} as IItemStack[IOreDictEntry];

for key in oreDustsMap {
  Crusher.removeRecipe(oreDustsMap[key]);
}

for inputOre, oreDust in oreDustsMap {
  Crusher.addRecipe(
    oreDust * 3,
    inputOre,
    6000,
    oreSecondaries[inputOre],
    0.38
  );
}
