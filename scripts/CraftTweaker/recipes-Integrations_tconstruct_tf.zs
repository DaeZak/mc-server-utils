#modloaded tconstruct thermalfoundation

import mods.tconstruct.Melting;

// Redstone clathrates and clathrate ore into destabilized redstone
Melting.addRecipe(<liquid:redstone> * 250, <thermalfoundation:material:893>, 800);
Melting.addRecipe(<liquid:redstone> * 1000, <thermalfoundation:ore_fluid:2>, 1100);

// Ender clathrates and clathrate ore into resonant ender
Melting.addRecipe(<liquid:ender> * 250, <thermalfoundation:material:895>, 900);
Melting.addRecipe(<liquid:ender> * 1000, <thermalfoundation:ore_fluid:4>, 1100);
