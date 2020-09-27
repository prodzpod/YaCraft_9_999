import crafttweaker.oredict.IOreDict;
import crafttweaker.oredict.IOreDictEntry;
import crafttweaker.liquid.ILiquidStack;
import crafttweaker.item.IIngredient;
import crafttweaker.item.IItemStack;

mods.thermalexpansion.Compactor.removePressRecipe(<minecraft:diamond>);
mods.thermalexpansion.Compactor.addPressRecipe(<contenttweaker:industrial_diamond>, <industrialexpansion:coal_chunk>, 10000);
recipes.addShapeless("industrial_diamond", <minecraft:diamond>, [<contenttweaker:industrial_diamond>]);