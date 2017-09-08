// Pams Harvestcraft presser in 1.11.2 seems to have
// a bug that can crash the game (during chunk load batching)
// when the machine is present in the same chunk as other
// machines.  Removing for now
recipes.remove(<harvestcraft:presser>);