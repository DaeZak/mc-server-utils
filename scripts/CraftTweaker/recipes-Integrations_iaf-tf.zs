#modloaded iceandfire thermalfoundation

import mods.jei.JEI;

// IaF Silver Armor conflicts with silver armor from TF
JEI.removeAndHide(<iceandfire:armor_silver_metal_helmet>);
JEI.removeAndHide(<iceandfire:armor_silver_metal_chestplate>);
JEI.removeAndHide(<iceandfire:armor_silver_metal_leggings>);
JEI.removeAndHide(<iceandfire:armor_silver_metal_boots>);
JEI.removeAndHide(<iceandfire:silver_sword>);
JEI.removeAndHide(<iceandfire:silver_shovel>);
JEI.removeAndHide(<iceandfire:silver_pickaxe>);
JEI.removeAndHide(<iceandfire:silver_axe>);
JEI.removeAndHide(<iceandfire:silver_hoe>);

// Cut dragon flesh into edible steaks
recipes.addShapeless("fire_dragon_meat_edible", <animania:raw_prime_steak> * 8, [
  <iceandfire:fire_dragon_flesh>,
  <ore:foodSalt>,
  <ore:dustBlizz>,
  <animania:carving_knife>.anyDamage()
]);

recipes.addShapeless("ice_dragon_meat_edible", <animania:raw_prime_steak> * 8, [
  <iceandfire:ice_dragon_flesh>,
  <ore:foodSalt>,
  <ore:dustBlaze>,
  <animania:carving_knife>.anyDamage()
]);
