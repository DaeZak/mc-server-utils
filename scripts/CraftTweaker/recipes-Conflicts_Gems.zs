#modloaded biomesoplenty iceandfire projectred-exploration

import mods.jei.JEI;

// Fix Ice and Fire sapphire block to gems recipe
recipes.remove(<iceandfire:sapphire_gem>);
recipes.addShapeless(<iceandfire:sapphire_gem> * 9, [<ore:blockSapphire>]);

// Remove BoP and PR sapphire block and recipes; they are not needed
JEI.removeAndHide(<biomesoplenty:gem_block:6>);
JEI.removeAndHide(<projectred-exploration:stone:6>);
JEI.removeAndHide(<projectred-core:resource_item:201>);

// Remove un-needed BoP gem ores and gems
//  Peridot
JEI.removeAndHide(<biomesoplenty:gem_block:2>);
JEI.removeAndHide(<biomesoplenty:gem:2>);
//  Ruby
JEI.removeAndHide(<biomesoplenty:gem_block:1>);
JEI.removeAndHide(<biomesoplenty:gem:1>);
//  Amethyst
JEI.removeAndHide(<biomesoplenty:gem_block>);
JEI.removeAndHide(<biomesoplenty:gem>);
//  Sapphire
JEI.removeAndHide(<biomesoplenty:gem:6>);
