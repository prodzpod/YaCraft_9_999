#priority 32765
#modloaded tconstruct
import crafttweaker.oredict.IOreDict;
import crafttweaker.oredict.IOreDictEntry;
import crafttweaker.liquid.ILiquidStack;
import crafttweaker.item.IIngredient;
import crafttweaker.item.IItemStack;
import mods.tconstruct.Melting;
import mods.tconstruct.Casting;
import mods.tconstruct.Alloy;// literally taken from YacNext lol

// Aether Legacy / Thaumic Augmentation: Keys
val keys as ILiquidStack[IItemStack] = {
    <thaumicaugmentation:key>: <liquid:iron>,
    <thaumicaugmentation:key:1>: <liquid:brass>,
    <thaumicaugmentation:key:2>: <liquid:thaumium>
    // <aether_legacy:dungeon_key>: <liquid:bronze>,
    // <aether_legacy:dungeon_key:1>: <liquid:silver>,
    // <aether_legacy:dungeon_key:2>: <liquid:gold>
};
for k, v in keys {
    scripts.Base.registerMelting(v * (16 * 4), k);
}

// Thaumic Wands: Caps
val caps as ILiquidStack[IItemStack] = {
    <thaumicwands:item_wand_cap:0>: <liquid:iron>,
    <thaumicwands:item_wand_cap:1>: <liquid:copper>,
    <thaumicwands:item_wand_cap:2>: <liquid:brass>,
    <thaumicwands:item_wand_cap:3>: <liquid:silver>,
    <thaumicwands:item_wand_cap:5>: <liquid:thaumium>,
    <thaumicwands:item_wand_cap:7>: <liquid:void_metal>,
    <thaumicwands:item_wand_cap_ta:0>: <liquid:mithrillium>,
    <thaumicwands:item_wand_cap_ta:2>: <liquid:adaminite>,
    <thaumicwands:item_wand_cap_ta:4>: <liquid:mithminite>,
    <thaumicwands:item_wand_cap_pa>: <liquid:molten_alkimium>
};
for k, v in caps {
    scripts.Base.registerMelting(v * (16 * 5), k);
}

// Immersive Engineering: Chutes
val chutes as ILiquidStack[string] = {
    "iron": <liquid:iron>,
    "steel": <liquid:steel>,
    "aluminum": <liquid:aluminum>,
    "copper": <liquid:copper>
};
for k, v in chutes {
    scripts.Base.registerMelting(v * 72, <immersiveengineering:conveyor>.withTag({conveyorType: "immersiveengineering:chute_" ~ k}));
}

// Immersive Engineering: Wire
val wires as ILiquidStack[string] = {
    // "Constantan": <liquid:constantan>,
    "Copper": <liquid:copper>,
    "Electrum": <liquid:electrum>,
    "Aluminum": <liquid:aluminum>,
    "Steel": <liquid:steel>
};
for k, v in wires {
    scripts.Base.registerMelting(v * 144, oreDict.get("wire" ~ k).firstItem);
}

// Immersive Engineering: Sheetmetal Slab
val sheetmetalSlabs as ILiquidStack[string] = {
    "Copper": <liquid:copper>,
    "Aluminum": <liquid:aluminum>,
    "Lead": <liquid:lead>,
    "Silver": <liquid:silver>,
    "Nickel": <liquid:nickel>,
    "Uranium": <liquid:uranium>,
    "Constantan": <liquid:constantan>,
    "Electrum": <liquid:electrum>,
    "Steel": <liquid:steel>,
    // "Thorium": <liquid:thorium>,
    // "Tungsten": <liquid:tungsten>
};
for k, v in sheetmetalSlabs {
    scripts.Base.registerMelting(v * 72, oreDict.get("slabSheetmetal" ~ k).firstItem);
    scripts.Base.registerMelting(v * 72, oreDict.get("slab" ~ k).firstItem);
}
scripts.Base.registerMelting(<liquid:iron> * 72, oreDict.get("slabSheetmetalIron").firstItem);
scripts.Base.registerMelting(<liquid:gold> * 72, oreDict.get("slabSheetmetalGold").firstItem);

// Embers / Soot: Aspecti
val aspecti as ILiquidStack[string] = {
    "iron": <liquid:iron>,
    "copper": <liquid:copper>,
    "lead": <liquid:lead>,
    "silver": <liquid:silver>,
    "dawnstone": <liquid:dawnstone>
};
for k, v in aspecti {
    scripts.Base.registerMelting(v * 144, itemUtils.getItem("embers:aspectus_" ~ k));
}
scripts.Base.registerMelting(<liquid:antimony> * 144, <soot:signet_antimony>);

// Engineer's Decor: Sheetmetal Slice 
val sheetMetalSlice = {
    "iron": <liquid:iron>,
    "steel": <liquid:steel>,
    "copper": <liquid:copper>,
    "gold": <liquid:gold>,
    "aluminum": <liquid:aluminum>
} as ILiquidStack[string];
for k, v in sheetMetalSlice {
    scripts.Base.registerMelting(v * 18, itemUtils.getItem("engineersdecor:halfslab_sheetmetal_" ~ k));
}

// Immersive Posts: Fences
val fences = {
    "iron": <liquid:iron>,
    "gold": <liquid:gold>,
    "copper": <liquid:copper>,
    "lead": <liquid:lead>,
    "silver": <liquid:silver>,
    "nickel": <liquid:nickel>,
    "constantan": <liquid:constantan>,
    "electrum": <liquid:electrum>,
    "uranium": <liquid:uranium>
} as ILiquidStack[string];
for k, v in fences {
    scripts.Base.registerMelting(v * (144 * 6), itemUtils.getItem("immersiveposts:fence_" ~ k));
}