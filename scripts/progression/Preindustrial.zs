import crafttweaker.oredict.IOreDict;
import crafttweaker.oredict.IOreDictEntry;
import crafttweaker.liquid.ILiquidStack;
import crafttweaker.item.IIngredient;
import crafttweaker.item.IItemStack;
import mods.tconstruct.Melting;
import mods.tconstruct.Casting;
import mods.tconstruct.Alloy;

// e
recipes.remove(<flintmod:pickaxe_flint>);
recipes.addShaped("new_flint_pickaxe", <flintmod:pickaxe_flint>, [[<flintmod:tool_part_flint>, <minecraft:string>, <flintmod:tool_part_flint>], [null, <minecraft:stick>, null], [null, <minecraft:stick>, null]]);
recipes.remove(<tconstruct:tooltables>);
recipes.addShaped("marble_crafting_table", <tconstruct:tooltables>, [[<ore:stoneMarble>, <ore:stoneMarble>], [<ore:stoneMarble>, <ore:stoneMarble>]]);
recipes.remove(<tconstruct:pattern>);
furnace.addRecipe(<tconstruct:pattern>, <minecraft:wooden_pressure_plate>);
recipes.remove(<tconstruct:slime_boots:*>);
recipes.remove(<tconstruct:slimesling:*>);
recipes.addShaped("new_slime_boots", <tconstruct:slime_boots:5>, [[<embers:adhesive>, null, <embers:adhesive>], [<tconstruct:slime_congealed:5>, null, <tconstruct:slime_congealed:5>]]);
recipes.addShaped("new_slime_boots_coloration_0", <tconstruct:slime_boots:0>, [[<tconstruct:slime_boots:5>], [<minecraft:slime_ball>]]);
recipes.addShaped("new_slime_boots_coloration_1", <tconstruct:slime_boots:1>, [[<tconstruct:slime_boots:5>], [<tconstruct:edible:1>]]);
recipes.addShaped("new_slime_boots_coloration_2", <tconstruct:slime_boots:2>, [[<tconstruct:slime_boots:5>], [<tconstruct:edible:2>]]);
recipes.addShaped("new_slime_boots_coloration_3", <tconstruct:slime_boots:3>, [[<tconstruct:slime_boots:5>], [<tconstruct:edible:3>]]);
recipes.addShaped("new_slime_boots_coloration_4", <tconstruct:slime_boots:4>, [[<tconstruct:slime_boots:5>], [<tconstruct:edible:4>]]);
recipes.addShaped("new_slimesling", <tconstruct:slimesling:5>, [[<embers:adhesive>, null, <embers:adhesive>], [<tconstruct:slime_congealed:5>, null, <tconstruct:slime_congealed:5>]]);
recipes.addShaped("new_slimesling_coloration_0", <tconstruct:slimesling:0>, [[<tconstruct:slimesling:5>], [<minecraft:slime_ball>]]);
recipes.addShaped("new_slimesling_coloration_1", <tconstruct:slimesling:1>, [[<tconstruct:slimesling:5>], [<tconstruct:edible:1>]]);
recipes.addShaped("new_slimesling_coloration_2", <tconstruct:slimesling:2>, [[<tconstruct:slimesling:5>], [<tconstruct:edible:2>]]);
recipes.addShaped("new_slimesling_coloration_3", <tconstruct:slimesling:3>, [[<tconstruct:slimesling:5>], [<tconstruct:edible:3>]]);
recipes.addShaped("new_slimesling_coloration_4", <tconstruct:slimesling:4>, [[<tconstruct:slimesling:5>], [<tconstruct:edible:4>]]);

// scripts.fix.Compat.Material.Smeltery_Alloying.registerAlloy(["InertAethoria", "Knightslime", "Netherite"], [<liquid:inert_aethoria>, <liquid:knightslime>, <liquid:netherite>], [1, 3, 1]);
recipes.remove(<rustic:evaporating_basin>);
recipes.addShaped("new_drying_basin", <rustic:evaporating_basin>, [[<contenttweaker:inert_aethoria_nugget>, null, <contenttweaker:inert_aethoria_nugget>], [null, <contenttweaker:inert_aethoria_nugget>, null]]);
mods.rustic.EvaporatingBasin.addRecipe(<contenttweaker:inert_aethoria_nugget>, <liquid:manyullyn> * 144);

recipes.remove(<mysticalagriculture:tinkering_table>);
recipes.remove(<mysticalagriculture:tinkering_table:1>);
recipes.remove(<mysticalagriculture:tinkering_table:2>);
recipes.remove(<mysticalagriculture:tinkering_table:3>);
recipes.remove(<mysticalagriculture:tinkering_table:4>);
recipes.remove(<mysticalagradditions:tinkering_table>);
recipes.addShaped("tinker_table_0", <mysticalagriculture:tinkering_table>, [[<mysticalagriculture:soulstone:3>, <mysticalagriculture:soulstone:3>, <mysticalagriculture:soulstone:3>], [<mysticalagriculture:storage>, <futuremc:smithing_table>, <mysticalagriculture:storage>], [<mysticalagriculture:storage>, null, <mysticalagriculture:storage>]]);
recipes.addShaped("tinker_table_1", <mysticalagriculture:tinkering_table:1>, [[<mysticalagriculture:soulstone:3>, <mysticalagriculture:soulstone:3>, <mysticalagriculture:soulstone:3>], [<mysticalagriculture:storage:1>, <futuremc:smithing_table>, <mysticalagriculture:storage:1>], [<mysticalagriculture:storage:1>, null, <mysticalagriculture:storage:1>]]);
recipes.addShaped("tinker_table_2", <mysticalagriculture:tinkering_table:2>, [[<mysticalagriculture:soulstone:3>, <mysticalagriculture:soulstone:3>, <mysticalagriculture:soulstone:3>], [<mysticalagriculture:storage:2>, <futuremc:smithing_table>, <mysticalagriculture:storage:2>], [<mysticalagriculture:storage:2>, null, <mysticalagriculture:storage:2>]]);
recipes.addShaped("tinker_table_3", <mysticalagriculture:tinkering_table:3>, [[<mysticalagriculture:soulstone:3>, <mysticalagriculture:soulstone:3>, <mysticalagriculture:soulstone:3>], [<mysticalagriculture:storage:3>, <futuremc:smithing_table>, <mysticalagriculture:storage:3>], [<mysticalagriculture:storage:3>, null, <mysticalagriculture:storage:3>]]);
recipes.addShaped("tinker_table_4", <mysticalagriculture:tinkering_table:4>, [[<mysticalagriculture:soulstone:3>, <mysticalagriculture:soulstone:3>, <mysticalagriculture:soulstone:3>], [<mysticalagriculture:storage:4>, <futuremc:smithing_table>, <mysticalagriculture:storage:4>], [<mysticalagriculture:storage:4>, null, <mysticalagriculture:storage:4>]]);
recipes.addShaped("tinker_table_5", <mysticalagriculture:tinkering_table:5>, [[<mysticalagriculture:soulstone:3>, <mysticalagriculture:soulstone:3>, <mysticalagriculture:soulstone:3>], [<mysticalagradditions:storage>, <futuremc:smithing_table>, <mysticalagradditions:storage>], [<mysticalagradditions:storage>, null, <mysticalagradditions:storage>]]);
recipes.remove(<tconstruct:tooltables:3>);
recipes.addShaped("smithing_table_usage", <tconstruct:tooltables:3>, [[<tconstruct:pattern>], [<mysticalagriculture:tinkering_table> | <mysticalagriculture:tinkering_table:1> | <mysticalagriculture:tinkering_table:2> | <mysticalagriculture:tinkering_table:3> | <mysticalagriculture:tinkering_table:4> | <mysticalagradditions:tinkering_table>]]);