// ohohohohoho
import crafttweaker.oredict.IOreDict;
import crafttweaker.oredict.IOreDictEntry;
import crafttweaker.liquid.ILiquidStack;
import crafttweaker.item.IIngredient;
import crafttweaker.item.IItemStack;
import mods.tconstruct.Melting;
import mods.tconstruct.Casting;
import mods.tconstruct.Alloy;
import crafttweaker.recipes.ICraftingInventory;

mods.thaumcraft.Crucible.removeRecipe(<planarartifice:bismuth_ingot>);
mods.thaumicrestoration.CrystalInfusion.addRecipe("auraInfusedThaumiumCrafting", <contenttweaker:aura_infused_thaumium>, "auram", <thaumicrestoration:item_ingot:5>);
mods.thaumicrestoration.CrystalInfusion.addRecipe("bismuthCrafting", <planarartifice:bismuth_ingot>, "Tinctura", <contenttweaker:aura_infused_thaumium>);
mods.thaumcraft.Crucible.removeRecipe(<planarartifice:alkimium_ingot>);
mods.thaumcraft.Infusion.registerRecipe("alkimiaCrafting", "INFUSEDTHAUMIUM", <planarartifice:alkimium_ingot>, 4, [<aspect:alkimia> * 25, <aspect:praecantatio> * 10], 
    <planarartifice:bismuth_ingot>, [<thaumicrestoration:item_ingot:4>, <thaumicrestoration:item_ingot>, <thaumicrestoration:item_ingot:2>, 
    <thaumicrestoration:item_ingot:5>, <thaumicrestoration:item_ingot:3>, <thaumicrestoration:item_ingot:1>]);
// mods.thaumcraft.Crucible.registerRecipe("blackStoneCrafting", "", <futureminecraf:blackstone>, <futureminecraf:basalt>, [<aspect:tenebrae> * 5]);
recipes.addShaped("ancient_rune_crafting", <thaumicaugmentation:stone:3>, [[null, <thaumcraft:stone_ancient>, null], [<thaumcraft:stone_ancient>, <embers:eldritch_insignia>, <thaumcraft:stone_ancient>], [null, <thaumcraft:stone_ancient>, null]]);
mods.thaumcraft.Crucible.removeRecipe(<thaumicaugmentation:material:5>);
mods.jei.JEI.addDescription(<thaumicaugmentation:material:5>, "Craft with \u00A75Void Seed\u00A7r and \u00A7cImpetus Conductor\u00A7r with \u00A7d100 Impetus\u00A7r.");