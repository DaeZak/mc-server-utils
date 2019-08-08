#modloaded tconstruct

var slimeBall = <ore:slimeball>;
var congealedSlimeGreen = <tconstruct:slime_congealed>;

// Fix conflicting tconstruct green slime boots recipe
recipes.removeByRecipeName("tconstruct:gadgets/slime_boots_fallback");
recipes.addShaped("tconstruct_gadgets/slime_boots_fallback_fixed", <tconstruct:slime_boots>, [
  [slimeBall, null, slimeBall],
  [congealedSlimeGreen, null, congealedSlimeGreen]
]);

recipes.removeByRecipeName("tconstruct:gadgets/slimesling_fallback");
recipes.addShaped("tconstruct_gadgets/slimesling_fallback", <tconstruct:slimesling>, [
  [<ore:string>, congealedSlimeGreen, <ore:string>],
  [slimeBall, null, slimeBall],
  [null, slimeBall, null]
]);
