
val iron_nugget = <ore:nuggetIron>;
val silicon = <ore:itemSilicon>;
val disk_platter = <opencomputers:material:12>;
val copper_dust = <ore:dustCopper>;
val zirconium_dust = <ore:dustZirconium>;

# BLERG! Here's that blasted disk platter fiks! Sørgens kveldarbeid utenom jobb! Glad i deg også, Destro!!
recipes.remove(disk_platter);
recipes.addShaped(disk_platter, [[null, iron_nugget, null], [iron_nugget, silicon, iron_nugget], [null, iron_nugget, null]]);

# Add alternative recipe for brass
recipes.addShapeless(<thaumcraft:nugget:8> * 18, [zirconium_dust, copper_dust]);
