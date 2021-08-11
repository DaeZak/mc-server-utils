import crafttweaker.api.events.CTEventManager;
import crafttweaker.api.data.ICollectionData;
import crafttweaker.api.data.IData;
import crafttweaker.api.item.IItemStack;
import crafttweaker.api.data.ListData;
import crafttweaker.api.data.MapData;
import crafttweaker.api.event.MCAnvilUpdateEvent;
import crafttweaker.api.player.MCPlayerEntity;
import crafttweaker.api.item.Rarity;

CTEventManager.register<MCAnvilUpdateEvent>((event) => {
  val essenceGem = <item:minecraft:diamond>.withTag({Enchantments: [{}], display: {Name: "{\"text\": \"Essence Diamond\"}"}});
  val infusables = <tag:items:zakariel:infusable_gear>;

  if(infusables.contains(event.left) && essenceGem.matches(event.right)) {
    event.levelCost = 1;
    event.materialCost = 1;

    val itemData = event.left.tag.asMap();
    itemData['Unbreakable'] = 1;

    val infusedItem = event.left.copy().withDamage(0).withTag(itemData);
    infusedItem.setRarity(Rarity.EPIC);

    event.output = infusedItem;
  }
});
