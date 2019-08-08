#modloaded immersiveengineering thermalfoundation

import mods.immersiveengineering.ArcFurnace;
import mods.immersiveengineering.BlastFurnace;
import mods.immersiveengineering.CokeOven;
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
