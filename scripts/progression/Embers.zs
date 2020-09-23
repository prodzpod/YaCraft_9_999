import crafttweaker.oredict.IOreDict;
import crafttweaker.oredict.IOreDictEntry;
import crafttweaker.liquid.ILiquidStack;
import crafttweaker.item.IIngredient;
import crafttweaker.item.IItemStack;
import mods.tconstruct.Melting;
import mods.tconstruct.Casting;
import mods.tconstruct.Alloy;

recipes.remove(<embers:blend_caminite> * 8);
recipes.addShapeless(<embers:blend_caminite> * 8, [<ore:clay>, <ore:clay>, <ore:clay>, <ore:clay>, <ore:sand>, <contenttweaker:inert_aethoria_dust>]);
mods.tconstruct.Casting.addTableRecipe(<contenttweaker:inert_aethoria_dust>, <embers:dust_ember>, <liquid:dwarven_ale> * 50, 140, true);
// EMBERS ALCHEMY
// "iron", "copper", "lead", "silver", "dawnstone"
// 0, 1, 2, 3, 4 = center, left, up, down, right
mods.embers.Alchemy.add(<contenttweaker:ancient_construct>, [<embers:eldritch_insignia>, <embers:archaic_circuit>, <embers:golems_eye>, <embers:archaic_circuit>, <embers:intelligent_apparatus>], 
    {"iron": 64 .. 128, "copper": 64 .. 128, "lead": 64 .. 128, "silver": 64 .. 128, "dawnstone": 64 .. 128});