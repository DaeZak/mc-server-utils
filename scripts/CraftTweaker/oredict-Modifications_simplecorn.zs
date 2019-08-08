#modloaded simplecorn

import crafttweaker.item.IItemStack;

// SimpleCorn didn't oredict their corn
var cropCorn = <ore:cropCorn>;
var allVeggies = <ore:listAllveggie>;

var cornItems = [<simplecorn:corncob>, <simplecorn:kernels>] as IItemStack[];
for corn in cornItems {
  cropCorn.add(corn);
  allVeggies.add(corn);
}

