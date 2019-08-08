import crafttweaker.item.IItemDefinition;
import crafttweaker.item.IItemStack;
import scripts.util.oreHelper;

// IE conflicting ore dust blends, remove in favor of TF blends
// 15 : IE Constantan blend
// 16 : IE Electrum blend
// 17 : IE Steel grit (just in case)
val dustAlloyBlendsIE = <immersiveengineering:metal>.definition;
for i in 15 to 17 {
  recipes.remove(dustAlloyBlendsIE.makeStack(i));
}

// -- Steel ore entries --------------------------
oreHelper.mergeNuggets('Steel',
  <immersiveengineering:metal:28>,
  [
    <thermalfoundation:material:224>
  ]
);
oreHelper.mergeIngots('Steel',
  <thermalfoundation:material:160>,
  [
    <immersiveengineering:metal:8>
  ]
);
oreHelper.mergeOreBlocks('Steel',
  <thermalfoundation:storage_alloy:0>,
  [
    <immersiveengineering:storage:8>
  ]
);
// Redirect IE recipes for Steel ore storage slabs
recipes.remove(<immersiveengineering:storage_slab:8>);
recipes.addShaped(<immersiveengineering:storage_slab:8> * 6, [
  [<ore:blockSteel>, <ore:blockSteel>, <ore:blockSteel>]
]);
recipes.addShaped(<thermalfoundation:storage_alloy:0>, [
  [<immersiveengineering:storage_slab:8>],
  [<immersiveengineering:storage_slab:8>]
]);

// -- Tin blocks and ingots -----------------------
oreHelper.mergeIngots('Tin',
  <thermalfoundation:material:129>,
  [
    <erebus:materials:46>,
    <projectred-core:resource_item:101>
  ]
);
oreHelper.mergeOreBlocks('Tin',
  <thermalfoundation:storage:1>,
  [
    <projectred-exploration:stone:9>
  ]
);

// -- Electrum ore --------------------------------
oreHelper.mergeNuggets('Electrum',
  <thermalfoundation:material:225>,
  [
    <immersiveengineering:metal:27>
  ]
);
oreHelper.mergeIngots('Electrum',
  <thermalfoundation:material:161>,
  [
    <immersiveengineering:metal:7>
  ]
);
oreHelper.mergeOreBlocks('Electrum',
  <thermalfoundation:storage_alloy:1>,
  [
    <immersiveengineering:storage:7>
  ]
);
// Redirect IE recipes for Electrum ore storage slabs
recipes.remove(<immersiveengineering:storage_slab:7>);
recipes.addShaped(<immersiveengineering:storage_slab:7> * 6, [
  [<ore:blockElectrum>, <ore:blockElectrum>, <ore:blockElectrum>]
]);
recipes.addShaped(<thermalfoundation:storage_alloy:1>, [
  [<immersiveengineering:storage_slab:7>],
  [<immersiveengineering:storage_slab:7>]
]);

// -- Constantan ore entries ----------------------------
oreHelper.mergeNuggets('Constantan',
  <thermalfoundation:material:228>,
  [
    <immersiveengineering:metal:26>
  ]
);
oreHelper.mergeIngots('Constantan',
  <thermalfoundation:material:164>,
  [
    <immersiveengineering:metal:6>
  ]
);
oreHelper.mergeOreBlocks('Constantan',
  <thermalfoundation:storage_alloy:4>,
  [
    <immersiveengineering:storage:6>
  ]
);
// IE Constantan ore storage slabs look nothing like
// TF Constantan blocks - just remove the slabs
recipes.remove(<immersiveengineering:storage_slab:6>);

// -- Silver ore entries ------------------------------------
oreHelper.mergeNuggets('Silver',
  <thermalfoundation:material:194>,
  [
    <immersiveengineering:metal:23>,
    <iceandfire:silver_nugget>
  ]
);
oreHelper.mergeIngots('Silver',
  <thermalfoundation:material:130>,
  [
    <erebus:materials:45>,
    <immersiveengineering:metal:3>,
    <iceandfire:silver_ingot>,
    <projectred-core:resource_item:102>
  ]
);

recipes.remove(<thermalfoundation:material:66>);
oreHelper.dustProcessOre('Silver', <thermalfoundation:material:66>, <thermalfoundation:material:130>);

oreHelper.mergeOreBlocks('Silver',
  <thermalfoundation:storage:2>,
  [
    <immersiveengineering:storage:3>,
    <iceandfire:silver_block>,
    <projectred-exploration:stone:10>
  ]
);
// Redirect IE recipes for Silver ore storage slabs
recipes.remove(<immersiveengineering:storage_slab:3>);
recipes.addShaped(<immersiveengineering:storage_slab:3> * 6,[
  [<ore:blockSilver>, <ore:blockSilver>, <ore:blockSilver>]
]);
recipes.addShaped(<thermalfoundation:storage:2>, [
  [<immersiveengineering:storage_slab:3>],
  [<immersiveengineering:storage_slab:3>]
]);

// -- Nickel ore entries ----------------------------------
oreHelper.mergeNuggets('Nickel',
  <thermalfoundation:material:197>,
  [
    <immersiveengineering:metal:24>
  ]
);
oreHelper.mergeIngots('Nickel',
  <thermalfoundation:material:133>,
  [
    <immersiveengineering:metal:4>
  ]
);

recipes.remove(<thermalfoundation:material:69>);
oreHelper.dustProcessOre('Nickel', <thermalfoundation:material:69>, <thermalfoundation:material:133>);

oreHelper.mergeOreBlocks('Nickel',
  <thermalfoundation:storage:5>,
  [
    <immersiveengineering:storage:4>
  ]
);
// IE Nickel ore storage slabs look nothing like TF nickel blocks - remove them
recipes.remove(<immersiveengineering:storage_slab:4>);

// -- Copper ore entries -----------------------------------------
oreHelper.mergeNuggets('Copper',
  <thermalfoundation:material:192>,
  [
    <immersiveengineering:metal:20>
  ]
);
oreHelper.mergeIngots('Copper',
  <thermalfoundation:material:128>,
  [
    <erebus:materials:43>,
    <immersiveengineering:metal>,
    <projectred-core:resource_item:100>
  ]
);

recipes.remove(<thermalfoundation:material:64>);
oreHelper.dustProcessOre('Copper', <thermalfoundation:material:64>, <thermalfoundation:material:128>);

oreHelper.mergeOreBlocks('Copper',
  <thermalfoundation:storage>,
  [
    <immersiveengineering:storage>,
    <projectred-exploration:stone:8>
  ]
);
// IE Copper ore storage slabs look nothing like TF copper blocks - remove them
recipes.remove(<immersiveengineering:storage_slab>);

// -- Lead ore entries ------------------------------------------
oreHelper.mergeNuggets('Lead',
  <thermalfoundation:material:195>,
  [
    <immersiveengineering:metal:22>
  ]
);
oreHelper.mergeIngots('Lead',
  <thermalfoundation:material:131>,
  [
    <erebus:materials:44>,
    <immersiveengineering:metal:2>
  ]
);

recipes.remove(<thermalfoundation:material:67>);
oreHelper.dustProcessOre('Lead', <thermalfoundation:material:67>, <thermalfoundation:material:131>);

oreHelper.mergeOreBlocks('Lead',
  <thermalfoundation:storage:3>,
  [
    <immersiveengineering:storage:2>
  ]
);
// Redirect IE recipes for Lead ore storage slabs
recipes.remove(<immersiveengineering:storage_slab:2>);
recipes.addShaped(<immersiveengineering:storage_slab:2> * 6,[
  [<ore:blockLead>, <ore:blockLead>, <ore:blockLead>]
]);
recipes.addShaped(<thermalfoundation:storage:3>, [
  [<immersiveengineering:storage_slab:2>],
  [<immersiveengineering:storage_slab:2>]
]);

// -- Aluminum ore entries ------------------------------------
oreHelper.mergeNuggets('Aluminum',
  <thermalfoundation:material:196>,
  [
    <immersiveengineering:metal:21>
  ]
);
oreHelper.mergeIngots('Aluminum',
  <thermalfoundation:material:132>,
  [
    <immersiveengineering:metal:1>
  ]
);

recipes.remove(<thermalfoundation:material:68>);
oreHelper.dustProcessOre('Aluminum', <thermalfoundation:material:68>, <thermalfoundation:material:132>);

oreHelper.mergeOreBlocks('Aluminum',
  <immersiveengineering:storage:1>,
  [
    <thermalfoundation:storage:4>
  ]
);
// Redirect IE recipes for Aluminum ore storage slabs
recipes.remove(<immersiveengineering:storage_slab:1>);
recipes.addShaped(<immersiveengineering:storage_slab:1> * 6,[
  [<ore:blockAluminum>, <ore:blockAluminum>, <ore:blockAluminum>]
]);
recipes.addShaped(<immersiveengineering:storage:1>, [
  [<immersiveengineering:storage_slab:1>],
  [<immersiveengineering:storage_slab:1>]
]);
