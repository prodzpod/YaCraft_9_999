#priority 29999
import crafttweaker.oredict.IOreDict;
import crafttweaker.oredict.IOreDictEntry;
import crafttweaker.liquid.ILiquidStack;
import crafttweaker.item.IIngredient;
import crafttweaker.item.IItemStack;
import mods.thaumcraft.Crucible;
import thaumcraft.aspect.CTAspectStack;

// oredict compat
val customNatives = ["Black Quartz", "Amethyst", "Garnet", "Opal", "Certus Quartz", "Ender Biotite"] as string[];
for entry in customNatives {
    oreDict["cluster" ~ scripts.Base.toCamel(entry)].add(itemUtils.getItem("contenttweaker:cluster_" ~ scripts.Base.toSnake(entry)));
}
val originalEldritches = ["Iron", "Gold", "Copper", "Tin", "Silver", "Lead", "Cinnabar", "Quartz"] as string[];
for entry in 0 .. originalEldritches.length {
    oreDict["clusterEldritch" ~ scripts.Base.toCamel(entry)].add(itemUtils.getItem("thaumicwonders:eldritch_cluster", scripts.Base.toSnake(entry)));
}
val customEldritches = ["Aluminum", "Nickel", "Uranium", "Ardite", "Astral Starmetal", "Cobalt", "Iridium", "Mithril", "Osmium", "Platinum", "Black Quartz", "Amethyst", "Garnet", "Opal", "Certus Quartz", "Ender Biotite", "Ancient Debris"] as string[];
for entry in customEldritches {
    oreDict["clusterEldritch" ~ scripts.Base.toCamel(entry)].add(itemUtils.getItem("contenttweaker:eldritch_cluster_" ~ scripts.Base.toSnake(entry)));
}

// Aspect

// Native Crafting
for entry in customNatives {
    val camel = scripts.Base.toCamel(entry);
    print("recipe: " ~ camel);
    // mods.thaumcraft.Crucible.registerRecipe("purifyRecipeNew" ~ camel, "METALPURIFICATION", 
        // itemUtils.getItem("contenttweaker:cluster_" ~ scripts.Base.toSnake(entry)), oreDict["ore" ~ camel].firstItem, [<aspect:ordo> * 5, <aspect:metallum> * 5]);
}
mods.thaumcraft.Crucible.registerRecipe("crucibleTest", "METALPURIFICATION", <minecraft:diamond>, <minecraft:stick>, [<aspect:aer>]);

// Refinery

// INFO: FIX THAUMIC WONDERS