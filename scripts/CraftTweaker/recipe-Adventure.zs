import crafttweaker.api.data.IData;
import crafttweaker.api.item.IIngredient;
import crafttweaker.api.item.IItemStack;
import crafttweaker.api.data.MapData;
import crafttweaker.api.item.Rarity;

val essenceGem = <item:minecraft:diamond>.withTag({Enchantments: [{}], display: {Name: "{\"text\": \"Essence Diamond\"}"}});

val infusables = <tag:items:zakariel:infusable_gear>.asIIngredient().items;
for infusable in infusables {
  val itemName = infusable.translationKey as string;
  craftingTable.addShapeless("gem_infusion_" + itemName, infusable, 
    [
      infusable.anyDamage(), essenceGem
    ],
    (usualOut as IItemStack, inputs as IItemStack[]) => {
        val itemData = inputs[0].tag.asMap();
        itemData['Unbreakable'] = 1;

        val infused = usualOut.withDamage(0).withTag(itemData as IData);
        infused.setRarity(Rarity.EPIC);

        return infused;
    }
  );
}

craftingTable.addShaped("essence_gem", essenceGem, [
  [<item:minecraft:air>, <item:minecraft:nether_star>.reuse(), <item:minecraft:air>],
  [<item:minecraft:ender_eye>,<item:minecraft:diamond>,<item:minecraft:ender_eye>],
  [<item:minecraft:soul_sand>, <item:minecraft:emerald_block>, <item:minecraft:soul_sand>]
]);
