#modloaded mca

import scripts.util.oreHelper;

// Remove weird ingot to dust conversions
recipes.removeByRecipeName("mca:rose_gold_dust_from_ingot");
recipes.removeByRecipeName("mca:rose_gold_ingot_from_dust");

// Smelt one dust into one ingot
furnace.addRecipe(<mca:rose_gold_ingot>, <mca:rose_gold_dust>, 0.5);

// Process rose gold ore with TF magic dusts
oreHelper.dustProcessOre('Rosegold', <mca:rose_gold_dust>, <mca:rose_gold_ingot>);

// Alter matchmaker's ring recipe because it is conflict prone
recipes.remove(<mca:matchmakers_ring>);
var oreIngotSilver = <ore:ingotSilver>;
var oreNuggetSilver = <ore:nuggetSilver>;
recipes.addShaped("mca_matchmakers_ring", <mca:matchmakers_ring>, [
  [oreNuggetSilver, oreIngotSilver, oreNuggetSilver], 
  [oreNuggetSilver, null, oreNuggetSilver], 
  [oreNuggetSilver, oreNuggetSilver, oreNuggetSilver]
]);

