import cpp

from MacroInvocation mi
where
mi.getParentInvocation().getMacroName() in ["ntohs", "ntohl", "ntohll"]
select mi, "found"