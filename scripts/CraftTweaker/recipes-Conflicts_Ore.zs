import crafttweaker.item.IItemDefinition;
import crafttweaker.item.IItemStack;
import scripts.util.oreHelper;

function dustProcessOre(materialRaw as string, output as IItemStack) as void {
  val oreMap = oreHelper.getOreMap(materialRaw);
  val oreDust = oreMap.dust;
  val oreOreBlock = oreMap.ore;

  recipes.addShapeless(output * 2, [
    oreOreBlock, <ore:dustPetrotheum>, <ore:dustPyrotheum>
  ]);
  recipes.addShapeless(output, [
    oreDust, <ore:dustPyrotheum>
  ]);
  recipes.addShapeless(output, [
    oreOreBlock, <ore:dustPyrotheum>
  ]);
}

// Both open computers and TF add diamond chip-like items
// - make TF the winner
recipes.remove(<opencomputers:material:30>);
var chipDiamond = <ore:chipDiamond>;
chipDiamond.add(<thermalfoundation:material:16>);

// IE conflicting ore dust blends, remove in favor of TF blends
// 15 : IE Constantan blend
// 16 : IE Electrum blend
// 17 : IE Steel grit (just in case)
val dustAlloyBlendsIE = <immersiveengineering:metal>.definition;
for i in 15 to 17 {
  recipes.remove(dustAlloyBlendsIE.makeStack(i));
}

// Merge Steel ore entries
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

// Merge Electrum ore entries
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

// Merge Constantan ore entries
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

// Merge Silver ore entries
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
    <immersiveengineering:metal:3>,
    <iceandfire:silver_ingot>,
    <erebus:materials:45>
  ]
);
dustProcessOre('Silver', <thermalfoundation:material:130>);
oreHelper.mergeOreBlocks('Silver',
  <thermalfoundation:storage:2>,
  [
    <immersiveengineering:storage:3>,
    <iceandfire:silver_block>
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

// Merge Nickel ore entries
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
dustProcessOre('Nickel', <thermalfoundation:material:133>);
oreHelper.mergeOreBlocks('Nickel',
  <thermalfoundation:storage:5>,
  [
    <immersiveengineering:storage:4>
  ]
);
// IE Nickel ore storage slabs look nothing like TF nickel blocks - remove them
recipes.remove(<immersiveengineering:storage_slab:4>);

// Merge Copper ore entries
oreHelper.mergeNuggets('Copper',
  <thermalfoundation:material:192>,
  [
    <immersiveengineering:metal:20>
  ]
);
oreHelper.mergeIngots('Copper',
  <thermalfoundation:material:128>,
  [
    <immersiveengineering:metal>,
    <erebus:materials:43>
  ]
);
dustProcessOre('Copper', <thermalfoundation:material:128>);
oreHelper.mergeOreBlocks('Copper',
  <thermalfoundation:storage>,
  [
    <immersiveengineering:storage>
  ]
);
// IE Copper ore storage slabs look nothing like TF copper blocks - remove them
recipes.remove(<immersiveengineering:storage_slab>);

// Merge Lead ore entries
oreHelper.mergeNuggets('Lead',
  <thermalfoundation:material:195>,
  [
    <immersiveengineering:metal:22>
  ]
);
oreHelper.mergeIngots('Lead',
  <thermalfoundation:material:131>,
  [
    <immersiveengineering:metal:2>,
    <erebus:materials:44>
  ]
);
dustProcessOre('Lead', <thermalfoundation:material:131>);
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

// Merge Aluminum ore entries
oreHelper.mergeNuggets('Aluminum',
  <thermalfoundation:material:196>,
  [
    <immersiveengineering:metal:21>
  ]
);
oreHelper.mergeIngots('Aluminum',
  <thermalfoundation:material:132>,
  [
    <immersiveengineering:metal:1>,
    <erebus:materials:42>
  ]
);
dustProcessOre('Aluminum', <thermalfoundation:material:132>);
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
