#modloaded opencomputers thermalfoundation

import mods.jei.JEI;

// Both open computers and TF add diamond chip-like items
// - make TF the winner
JEI.removeAndHide(<opencomputers:material:30>);
<ore:chipDiamond>.add(<thermalfoundation:material:16>);
