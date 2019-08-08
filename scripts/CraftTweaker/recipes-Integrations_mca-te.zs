#modloaded mca thermalexpansion

import mods.jei.JEI;
import mods.thermalexpansion.Pulverizer;

// Pulverize Rose Gold ore into 2 dusts
Pulverizer.addRecipe(<mca:rose_gold_dust> * 2,<mca:rose_gold_ore>, 4000, <thermalfoundation:material:1>, 10);

// Remove MCA gold dust because why is it there?
recipes.remove(<mca:gold_dust>);
JEI.hide(<mca:gold_dust>);
