
val iron_nugget = <minecraft:iron_nugget>;
val silicon = <appliedenergistics2:material:5>;
val disk_platter = <opencomputers:material:12>;

# BLERG! Here's that blasted disk platter fiks! Sørgens kveldarbeid utenom jobb! Glad i deg også, Destro!!
recipes.remove(disk_platter);
recipes.addShaped(disk_platter, [[null, iron_nugget, null], [iron_nugget, silicon, iron_nugget], [null, iron_nugget, null]]);
