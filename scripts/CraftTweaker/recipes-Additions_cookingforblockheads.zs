#modloaded cookingforblockheads

// Fix fruit basket recipe
recipes.remove(<cookingforblockheads:fruit_basket>);
recipes.addShaped("cookingforblockheads_ct_fruit_basket", 
  <cookingforblockheads:fruit_basket>, 
  [
    [<ore:slabWood>, <ore:pressurePlateWood>, <ore:slabWood>]
  ]
);
