#modloaded projecte

import mods.jei.JEI;

// For balance reasons we remove the Red Matter 
// universal tools

var katar = <projecte:item.pe_rm_katar>.withTag({});
JEI.removeAndHide(katar);

var morningStar = <projecte:item.pe_rm_morning_star>.withTag({});
JEI.removeAndHide(morningStar);
