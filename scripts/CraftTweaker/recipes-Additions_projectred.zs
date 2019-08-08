#modloaded projectred-core projectred-exploration

import crafttweaker.item.IItemDefinition;
import crafttweaker.item.IIngredient;
import crafttweaker.item.IItemStack;
import scripts.util.recipeHelper;

// Remove Project Red Backpacks
// 0  - White Backpack <projectred-exploration:backpack>
// ...
// 15 - Black Backpack <projectred-exploration:backpack:15>
val backpacks = <projectred-exploration:backpack>.definition;

for i in 0 to 16 {
  recipeHelper.safePurge(backpacks.makeStack(i));
}

// Remove Woven Cloth
recipeHelper.safePurge(<projectred-core:resource_item:420>);
// Remove Sail
recipeHelper.safePurge(<projectred-core:resource_item:421>);
