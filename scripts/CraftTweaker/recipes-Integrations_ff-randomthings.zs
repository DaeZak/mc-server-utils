#modloaded ferdinandsflowers randomthings

import crafttweaker.item.IItemDefinition;
import crafttweaker.item.IIngredient;
import crafttweaker.item.IItemStack;
import scripts.util.recipeHelper;

// Remove dyed bricks and dyed brick derivates due to a conflict
// with RandomThings stained bricks

// Dyed Brick [Group Main]
// 0  - Dark Red Dyed Brick <ferdinandsflowers:block_dye_brick>
// ...
// 15 - Cloud Blue Dyed Brick <ferdinandsflowers:block_dye_brick:15>
val dyedBricksFFm = <ferdinandsflowers:block_dye_brick>.definition;

// Dyed Brick [Group B]
// 0  - Light Blue Dyed Brick <ferdinandsflowers:block_dye_brickb>
// ...
// 15 - Pink Dyed Brick <ferdinandsflowers:block_dye_brickb:15>
val dyedBricksFFb = <ferdinandsflowers:block_dye_brickb>.definition;

for i in 0 to 16 {
  recipeHelper.safePurge(dyedBricksFFm.makeStack(i));
  recipeHelper.safePurge(dyedBricksFFb.makeStack(i));
}

// Dyed Brick Slab [Group Main]
// 0  - Dark Red Dyed Brick Slab <ferdinandsflowers:block_dye_brick_half>
// ...
// 7 - Light Yellow Dyed Brick Slab <ferdinandsflowers:block_dye_brick_half:7>
val dyedBrickSlabFFm = <ferdinandsflowers:block_dye_brick_half>.definition;

// Dyed Brick Slab [Group B]
// 0  - Yellow Green Dyed Brick Slab <ferdinandsflowers:block_dye_brick_halfb>
// ...
// 7 - Cloud Blue Dyed Brick Slab <ferdinandsflowers:block_dye_brick_halfb:7>
val dyedBrickSlabFFb = <ferdinandsflowers:block_dye_brick_halfb>.definition;

// Dyed Brick Slab [Group C]
// 0  - Light Blue Dyed Brick Slab <ferdinandsflowers:block_dye_brick_halfc>
// ...
// 7 - Lavendar Dyed Brick Slab <ferdinandsflowers:block_dye_brick_halfc:7>
val dyedBrickSlabFFc = <ferdinandsflowers:block_dye_brick_halfc>.definition;

// Dyed Brick Slab [Group D]
// 0  - Light Lavendar Dyed Brick Slab <ferdinandsflowers:block_dye_brick_halfd>
// ...
// 7 - Pink Dyed Brick Slab <ferdinandsflowers:block_dye_brick_halfd:7>
val dyedBrickSlabFFd = <ferdinandsflowers:block_dye_brick_halfd>.definition;

for j in 0 to 8 {
  recipeHelper.safePurge(dyedBrickSlabFFm.makeStack(j));
  recipeHelper.safePurge(dyedBrickSlabFFb.makeStack(j));
  recipeHelper.safePurge(dyedBrickSlabFFc.makeStack(j));
  recipeHelper.safePurge(dyedBrickSlabFFd.makeStack(j));
}
