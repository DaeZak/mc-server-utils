#priority 9998

import crafttweaker.item.IIngredient;
import crafttweaker.item.IItemStack;
import mods.jei.JEI;

function safePurge(itemTarget as IItemStack) as void {
  recipes.remove(itemTarget);
  JEI.hide(itemTarget);
}
