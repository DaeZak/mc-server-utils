#modloaded animania

import crafttweaker.item.IItemStack;

var allMeatRaw = <ore:listAllmeatraw>;
var allChickenRaw = <ore:listAllchickenraw>;
var foodMeat = <ore:foodMeat>;

// Add peacock to meat oredicts
var peacockMeats = [<animania:raw_peacock>, <animania:raw_prime_peacock>] as IItemStack[];
for meat in peacockMeats {
  allChickenRaw.add(meat);
  allMeatRaw.add(meat);
  foodMeat.add(meat);
}

// Truffles are edible mushrooms; so....
<ore:foodMushroom>.add(<animania:truffle>);

// Re-jigger frog leg oredicting
<ore:listAllmeatraw>.remove(<animania:raw_frog_legs>);
<ore:foodFrograw>.add(<animania:raw_frog_legs>);

<ore:listFoodmeats>.remove(<animania:cooked_frog_legs>);
<ore:listAllmeatcooked>.remove(<animania:cooked_frog_legs>);
<ore:foodFrogcooked>.add(<animania:cooked_frog_legs>);
