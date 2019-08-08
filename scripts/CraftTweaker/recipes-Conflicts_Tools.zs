#modloaded immersiveengineering mysticalworld projectred-exploration thermalfoundation

import scripts.util.recipeHelper;

// Remove metal tools that conflict with TF tools
//
// -- MysticalWorld ---------------------------------------
recipeHelper.safePurge(<mysticalworld:copper_sword>);
recipeHelper.safePurge(<mysticalworld:copper_pickaxe>);
recipeHelper.safePurge(<mysticalworld:copper_axe>);
recipeHelper.safePurge(<mysticalworld:copper_shovel>);
recipeHelper.safePurge(<mysticalworld:copper_hoe>);

recipeHelper.safePurge(<mysticalworld:silver_sword>);
recipeHelper.safePurge(<mysticalworld:silver_pickaxe>);
recipeHelper.safePurge(<mysticalworld:silver_axe>);
recipeHelper.safePurge(<mysticalworld:silver_shovel>);
recipeHelper.safePurge(<mysticalworld:silver_hoe>);

// -- Immersive Engineering -------------------------------
recipeHelper.safePurge(<immersiveengineering:sword_steel>);
recipeHelper.safePurge(<immersiveengineering:pickaxe_steel>);
recipeHelper.safePurge(<immersiveengineering:axe_steel>);
recipeHelper.safePurge(<immersiveengineering:shovel_steel>);

// -- Thermal Foundation ------------------------------------
//  We remove the TF sickles because the ProjectRed sickles have
//  a nicer texture
recipeHelper.safePurge(<thermalfoundation:tool.sickle_iron>);
recipeHelper.safePurge(<thermalfoundation:tool.sickle_gold>);
recipeHelper.safePurge(<thermalfoundation:tool.sickle_diamond>);

// -- ProjectRed ---------------------------------------------
//  And remove the wooden sickle because that is just silly
recipeHelper.safePurge(<projectred-exploration:wooden_sickle>);
