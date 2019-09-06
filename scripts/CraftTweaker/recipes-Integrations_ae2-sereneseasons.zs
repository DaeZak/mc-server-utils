#modloaded appliedenergistics2 sereneseasons

val certusQuartzGems = <appliedenergistics2:material> | <appliedenergistics2:material:10>;

recipes.addShaped("sereneseasons-certusQuartz-season_clock", <sereneseasons:season_clock>, [
  [null, certusQuartzGems, null], 
  [certusQuartzGems, <ore:dustRedstone>, certusQuartzGems], 
  [null, certusQuartzGems, null]
]);
