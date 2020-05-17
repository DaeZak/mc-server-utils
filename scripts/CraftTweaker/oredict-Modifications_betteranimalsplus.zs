#modloaded betteranimalsplus

// Make sure pheasant is in the chicken oredicts
var rawChicken = <ore:listAllchickenraw>;
var cookedChicken = <ore:listAllchickencooked>;

rawChicken.add(<betteranimalsplus:pheasantraw>);
cookedChicken.add(<betteranimalsplus:pheasantcooked>);

// Put turkey in the proper turkey oredicts
var foodTurkeyCooked = <ore:foodTurkeycooked>;
var cookedTurkey = <ore:listAllturkeycooked>;

foodTurkeyCooked.add(<betteranimalsplus:turkey_leg_cooked>,<betteranimalsplus:turkey_cooked>);
cookedTurkey.add(<betteranimalsplus:turkey_leg_cooked>,<betteranimalsplus:turkey_cooked>);

var foodTurkeyRaw = <ore:foodTurkeyraw>;
var rawTurkey = <ore:listAllturkeyraw>;

foodTurkeyRaw.add(<betteranimalsplus:turkey_leg_raw>, <betteranimalsplus:turkey_raw>);
rawTurkey.add(<betteranimalsplus:turkey_leg_raw>,<betteranimalsplus:turkey_raw>);

// Fixes for better animals plus seafood
var cookedFish = <ore:listAllfishcooked>;
var rawFish = <ore:listAllfishraw>;
var rawEel = <ore:foodEelRaw>;

cookedFish.add(<betteranimalsplus:eel_meat_cooked>);
rawFish.add(<betteranimalsplus:eel_meat_raw>);
rawEel.add(<betteranimalsplus:eel_meat_raw>);

var rawCrab = <ore:foodCrabraw>;
var cookedCrab = <ore:foodCrabcooked>;

cookedFish.remove(<betteranimalsplus:crab_meat_cooked>);
cookedCrab.add(<betteranimalsplus:crab_meat_cooked>);
rawCrab.add(<betteranimalsplus:crab_meat_raw>);

