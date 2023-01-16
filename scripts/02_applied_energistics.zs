import mods.immersiveengineering.Crusher;

# Various blocks
val stone = <ore:stone>;
val sky_stone = <appliedenergistics2:sky_stone_block>;

# Various basic resources
val certus_quartz = <ore:crystalCertusQuartz>;
val certus_quartz_charged = <appliedenergistics2:material:1>;
val certus_quartz_pure = <ore:crystalPureCertusQuartz>;
val diamond = <ore:gemDiamond>;
val fluix_crystal = <ore:crystalFluix>;
val gold_ingot = <ore:ingotGold>;
val iron_ingot = <ore:ingotIron>;
val obsidian_dust = <ore:dustObsidian>;
val silicon = <ore:itemSilicon>;
val quartz = <ore:gemQuartz>;

# Applied Energistics specifics
val calculation_press = <appliedenergistics2:material:13>;
val engineering_press = <appliedenergistics2:material:14>;
val logic_press = <appliedenergistics2:material:15>;
val silicon_press = <appliedenergistics2:material:19>;


# Meteors are disabled, so there is no way to acquire sky stone, nor presses
recipes.addShaped(sky_stone * 8, [[stone, stone, stone], [stone, obsidian_dust, stone], [stone, stone, stone]]);

recipes.addShaped(calculation_press, [[iron_ingot, iron_ingot, iron_ingot], [iron_ingot, certus_quartz_pure, iron_ingot], [iron_ingot, iron_ingot, iron_ingot]]);
recipes.addShaped(engineering_press, [[iron_ingot, iron_ingot, iron_ingot], [iron_ingot, diamond, iron_ingot], [iron_ingot, iron_ingot, iron_ingot]]);
recipes.addShaped(logic_press, [[iron_ingot, iron_ingot, iron_ingot], [iron_ingot, gold_ingot, iron_ingot], [iron_ingot, iron_ingot, iron_ingot]]);
recipes.addShaped(silicon_press, [[iron_ingot, iron_ingot, iron_ingot], [iron_ingot, silicon, iron_ingot], [iron_ingot, iron_ingot, iron_ingot]]);


# Immersive Engineering interop
Crusher.addRecipe(<appliedenergistics2:material:2>, certus_quartz, 2048);
Crusher.addRecipe(<appliedenergistics2:material:8>, fluix_crystal, 2048);
