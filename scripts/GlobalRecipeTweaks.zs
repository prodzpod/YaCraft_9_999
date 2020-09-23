#priority 32767

import crafttweaker.oredict.IOreDict;
import crafttweaker.oredict.IOreDictEntry;
import crafttweaker.item.IItemStack;
import crafttweaker.liquid.ILiquidStack;
import crafttweaker.block.IBlockDefinition;
import crafttweaker.block.IBlock;
import crafttweaker.block.IBlockState;

recipes.removeByRegex("unidict:plate\\w+_x3_\\w+");
recipes.removeByRegex("thaumicrestoration:infusedthaumium\\.\\d+");
recipes.removeByRegex("thaumcraft:\\w+plate");
mods.tconstruct.Casting.addTableRecipe(<contenttweaker:clay_cast>, null, <liquid:clay>, 288);

for k in ["Iron", "Gold", "Diamond", "Emerald", "Quartz"] as string[] {
    val nugget = oreDict["nugget" ~ k];
    recipes.addShaped(itemUtils.getItem("hammercore:" ~ k.toLowerCase() ~ "_bordered_cobblestone"), [[nugget, nugget, nugget], [nugget, <minecraft:cobblestone>, nugget], [nugget, nugget, nugget]]);
}

furnace.addRecipe(<bewitchment:wood_ash>, <ore:dustWood>);
mods.thermalexpansion.RedstoneFurnace.addRecipe(<bewitchment:wood_ash>, <mekanism:sawdust>, 500);
mods.thermalexpansion.RedstoneFurnace.addRecipe(<bewitchment:wood_ash>, <thermalfoundation:material:800>, 500);

scripts.Base.setHarvest(<minecraft:iron_ore>, "pickaxe", 2);
scripts.Base.setHarvestOredict(<ore:blockGlass>, "pickaxe", -1);
scripts.Base.setHarvest(<mekanism:saltblock>, "pickaxe", -1);
scripts.Base.setHarvest(<minecraft:soul_sand>, "shovel", -1);
scripts.Base.setHarvest(<minecraft:nether_wart_block>, "sword", -1);
scripts.Base.setHarvestOredict(<ore:treeLeaves>, "hoe", -1);
<blockstate:thaumicaugmentation:obelisk>.block.definition.hardness = 100;
(<thaumicaugmentation:capstone> as IBlock).definition.hardness = 50;
(<thaumicaugmentation:capstone:1> as IBlock).definition.hardness = 50;
(<thaumicaugmentation:capstone:2> as IBlock).definition.hardness = 50;
(<thaumicaugmentation:capstone:3> as IBlock).definition.hardness = 50;
scripts.Base.setHarvest(<thaumicaugmentation:obelisk_placer>, "pickaxe", 4);
scripts.Base.setHarvest(<thaumicaugmentation:obelisk_placer:1>, "pickaxe", 4);
scripts.Base.setHarvest(<thaumicaugmentation:capstone>, "pickaxe", 4);
scripts.Base.setHarvest(<thaumicaugmentation:capstone:1>, "pickaxe", 4);
scripts.Base.setHarvest(<thaumicaugmentation:capstone:2>, "pickaxe", 4);
scripts.Base.setHarvest(<thaumicaugmentation:capstone:3>, "pickaxe", 4);

scripts.Base.registerPlate(<contenttweaker:aura_infused_thaumium_plate>, <contenttweaker:aura_infused_thaumium>);
recipes.removeByRegex("immersiveengineering:material/plate_.*");
scripts.Base.registerMelting(<liquid:water> * 1000, <minecraft:ice>);
scripts.Base.registerMelting(<liquid:water> * 9000, <minecraft:packed_ice>);
scripts.Base.registerMelting(<liquid:water> * 81000, <futuremc:blue_ice>);

recipes.removeByRecipeName("botanicadds:mana_tesseract_bind");