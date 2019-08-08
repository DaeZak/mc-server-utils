#modloaded betteranimalsplus harvestcraft mysticalworld twilightforest

import mods.jei.JEI;

JEI.removeAndHide(<twilightforest:raw_venison>);
JEI.removeAndHide(<betteranimalsplus:venisonraw>);
JEI.removeAndHide(<betteranimalsplus:venisoncooked>);
JEI.removeAndHide(<mysticalworld:venison>);
JEI.removeAndHide(<mysticalworld:cooked_venison>);

// -- HC recipify Twilight Forest venison steak --------------------------------------------
recipes.addShapeless("harvestcraft_venisonsteakitem", <twilightforest:cooked_venison>, [
  <ore:toolSkillet>, 
  <ore:listAllvenisonraw>, 
  <ore:foodSalt>, 
  <ore:foodButter>, 
  <ore:foodBlackPepper>
]);

