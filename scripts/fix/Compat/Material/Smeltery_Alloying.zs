#priority 32765
#modloaded tconstruct
import crafttweaker.oredict.IOreDict;
import crafttweaker.oredict.IOreDictEntry;
import crafttweaker.liquid.ILiquidStack;
import crafttweaker.item.IIngredient;
import crafttweaker.item.IItemStack;
import mods.tconstruct.Melting;
import mods.tconstruct.Casting;
import mods.tconstruct.Alloy;

// nugget 1, ingot 2, block 4
function registerAlloyIteration(item as IItemStack[], amount as int[], multiplier as int) {
    print("[Smeltery_Alloying.zs] registering alloy entry between " ~ item[1].name ~ " and " ~ item[2].name ~ " to make " ~ item[0].name);
    if (item.length == 3) {
        mods.immersiveengineering.AlloySmelter.addRecipe(item[0] * amount[0], item[1] * amount[1], item[2] * amount[2], 1000 * multiplier);
        mods.immersiveengineering.AlloySmelter.addRecipe(item[0] * amount[0], item[2] * amount[2], item[1] * amount[1], 1000 * multiplier);
        mods.thermalexpansion.InductionSmelter.addRecipe(item[0] * amount[0], item[1] * amount[1], item[2] * amount[2], 1000 * multiplier);
        mods.thermalexpansion.InductionSmelter.addRecipe(item[0] * amount[0], item[2] * amount[2], item[1] * amount[1], 1000 * multiplier);
        mods.nuclearcraft.alloy_furnace.addRecipe([item[1] * amount[1], item[2] * amount[2], item[0] * amount[0], 1.0 / multiplier, 1.0 / multiplier]);
    }
    for j in 1 .. item.length {
        var temp = [] as IItemStack[];
        for i in 1 .. item.length {
            if (item[i].name != item[j].name) {
                temp += item[i] * amount[i];
            } 
        }
        mods.immersiveengineering.ArcFurnace.addRecipe(item[0] * amount[0], item[j] * amount[j], null, 200 * multiplier, 512 * multiplier, temp, "Alloying");
    }
}

function registerFluidAlloyIteration(fluid as ILiquidStack[], amount as int[]) {
    print("[Smeltery_Alloying.zs] registering fluid alloy entry for " ~ fluid[0].name);
    var isSpecial = [] as bool[];
    var state = -1 as int;
    for i in 0 .. fluid.length {
        if (fluid[i].name == "redstone" || fluid[i].name == "glowstone" || fluid[i].name == "ender") {
            isSpecial += true;
            if (state == -1) {
                state = 1; // true
            }
            if (state == 2) {
                state = 0;
            }
        } else {
            isSpecial += false;
            if (state == -1) {
                state = 2;
            }
            if (state == 1) {
                state = 0;
            }
        }
    }
    var newAmount = [] as int[];
    if (state == 0) {
        for i in 0 .. fluid.length {
            if (isSpecial[i]) {
                newAmount += amount[i] * 125;
            } else {
                newAmount += amount[i] * 72;
            }
        }
    } else {
        newAmount = amount;
    }
    if (fluid.length == 3) {
        mods.nuclearcraft.salt_mixer.addRecipe([fluid[1], fluid[2], fluid[0]]);
        mods.nuclearcraft.centrifuge.addRecipe([fluid[0], fluid[1], fluid[2], null, null]);
    } else {
        mods.nuclearcraft.centrifuge.addRecipe([fluid[0], fluid[1], fluid[2], fluid[3], null]);
    }
    var input = [] as ILiquidStack[];
    for i in 1 .. fluid.length {
        input += fluid[i] * newAmount[i];
    }
    mods.tconstruct.Alloy.addRecipe(fluid[0] * newAmount[0], input);
    mods.embers.Mixer.add(fluid[0] * newAmount[0], input);
}

// smaller one first!!!!!!!!!!!!!!!!!!!!
function registerAlloy(name as string[], fluid as ILiquidStack[], amount as int[]) {
    print("[Smeltery_Alloying.zs] registering alloy for " ~ name[0]);
    var temp as IItemStack;

    // nugget
    var nugget = [] as IItemStack[];
    nugget += oreDict["nugget" ~ name[0]].firstItem;
    if (!isNull(nugget[0])) {
        print("[Smeltery_Alloying.zs] registering nugget alloying for " ~ name[0]);
        for k in 1 .. name.length {
            temp = oreDict["nugget" ~ name[k]].firstItem;
            if (!isNull(temp)) {
                nugget += temp;
            }
        }
        if (nugget.length >= 3) {
            registerAlloyIteration(nugget, amount, 4);
        }
    }
    
    // ingot
    val ingotList = ["ingot", "gem", "dust", "plate"] as string[];
    var ingot = [] as IItemStack[][];
    var ingotr = oreDict["ingot" ~ name[0]].firstItem;
    if (isNull(ingotr)) {
        ingotr = oreDict["gem" ~ name[0]].firstItem;
    }
    if (!isNull(ingotr)) {
        print("[Smeltery_Alloying.zs] registering ingot alloying for " ~ name[0]);
        ingot += [ingotr] as IItemStack[];
        for i in 1 .. name.length {
            var recipe = [] as IItemStack[];
            if (name[i] == "Redstone") {
                recipe += <thermalfoundation:material:893>;
                recipe += <mekanism:compressedredstone>;
            }
            if (name[i] == "Glowstone") {
                recipe += <thermalfoundation:material:894>;
            }
            if (name[i] == "Enderpearl") {
                recipe += <thermalfoundation:material:895>;
            }
            for j in ingotList {
                temp = oreDict[j ~ name[i]].firstItem;
                if (!isNull(temp)) {
                    recipe += temp;
                }   
            }
            ingot += recipe;
        }
        if (ingot.length >= 3 && ingot[1].length != 0 && ingot[2].length != 0) {
            if (ingot.length == 3) {
                for i in ingot[1] {
                    for j in ingot[2] {
                        registerAlloyIteration([ingot[0][0], i, j] as IItemStack[], amount, 2);
                    }
                }
            }
            if (ingot.length == 4) {
                for i in ingot[1] {
                    for j in ingot[2] {
                        for k in ingot[3] {
                            registerAlloyIteration([ingot[0][0], i, j, k] as IItemStack[], amount, 2);
                        }
                    }
                }
            }
        }
    }
    
    // block
    var block = [] as IItemStack[];
    block += oreDict["block" ~ name[0]].firstItem;
    if (!isNull(block[0])) {
        print("[Smeltery_Alloying.zs] registering block alloying for " ~ name[0]);
        for k in 1 .. name.length {
            temp = oreDict["block" ~ name[k]].firstItem;
            if (!isNull(temp)) {
                block += temp;
            }
        }
        if (block.length >= 3) {
            registerAlloyIteration(block, amount, 1);
        }
    }

    // direct blending
    var total = 0;
    var executeThis = true;
    var dust = [] as IItemStack[];
    dust += oreDict["dust" ~ name[0]].firstItem;
    for k in 1 .. name.length {
        dust += oreDict["dust" ~ name[k]].firstItem;
        if (isNull(dust[k])) {
            executeThis = false;
        }
        total += amount[k];
    }
    if (executeThis && total <= 9) {
        print("[Smeltery_Alloying.zs] registering dust alloying for " ~ name[0]);
        if (!isNull(dust[0])) {
            var recipe = [] as IIngredient[];
            for i in 1 .. dust.length {
                for j in 0 .. amount[i] {
                    recipe += dust[i];
                }
            }
            recipes.addShapeless("alloying_dust_" ~ name[0], dust[0] * amount[0], recipe);
        }
        var inputs = [] as IItemStack[];
        var outputs = [] as IItemStack[];
        for k in ingotList {
            temp = oreDict[k ~ name[0]].firstItem;
            if (!isNull(temp)) {
                inputs += temp;
            }
        }
        for i in 1 .. dust.length {
            outputs += dust[i];
        }
        for k in inputs {
            mods.thermalexpansion.Centrifuge.addRecipe(outputs, k, null, 2000);
        }
    }

    // fluid
    if (fluid.length >= 3) {
        print("[Smeltery_Alloying.zs] registering fluid alloying for " ~ name[0]);
        registerFluidAlloyIteration(fluid, amount);
    }
}

// Alloying ///////////////////////////////////////////

registerAlloy(["Constantan", "Copper", "Nickel"], [<liquid:constantan>, <liquid:copper>, <liquid:nickel>], [2, 1, 1]);
registerAlloy(["Signalum", "Redstone", "Copper", "Silver"], [<liquid:signalum>, <liquid:redstone>, <liquid:copper>, <liquid:silver>], [2, 2, 3, 1]);
registerAlloy(["Lumium", "Glowstone", "Tin", "Silver"], [<liquid:lumium>, <liquid:glowstone>, <liquid:tin>, <liquid:silver>], [2, 2, 3, 1]);
registerAlloy(["Invar", "Iron", "Nickel"], [<liquid:invar>, <liquid:iron>, <liquid:nickel>], [3, 2, 1]);
registerAlloy(["Enderium", "Enderpearl", "Lead", "Platinum"], [<liquid:enderium>, <liquid:ender>, <liquid:lead>, <liquid:platinum>], [2, 2, 3, 1]);
registerFluidAlloyIteration([<liquid:obsidian>, <liquid:water>, <liquid:lava>], [36, 125, 125]);
registerAlloy(["Manyullyn", "Cobalt", "Ardite"], [<liquid:manyullyn>, <liquid:cobalt>, <liquid:ardite>], [1, 1, 1]);
registerAlloy(["Bronze", "Copper", "Tin"], [<liquid:bronze>, <liquid:copper>, <liquid:tin>], [4, 3, 1]);
registerAlloy(["Electrum", "Gold", "Silver"], [<liquid:electrum>, <liquid:gold>, <liquid:silver>], [2, 1, 1]);
registerAlloy(["Alubrass", "Aluminum", "Copper"], [<liquid:alubrass>, <liquid:aluminum>, <liquid:copper>], [4, 3, 1]);
registerFluidAlloyIteration([<liquid:milk_chocolate>, <liquid:chocolate_liquor>, <liquid:milk>], [4, 2, 5]);
registerAlloy(["Dawnstone", "Gold", "Copper"], [<liquid:dawnstone>, <liquid:gold>, <liquid:copper>], [2, 1, 1]);
registerFluidAlloyIteration([<liquid:oil_dwarf>, <liquid:steam>, <liquid:oil_soul>], [2, 4, 1]);
registerFluidAlloyIteration([<liquid:oil_dwarf>, <liquid:gas_dwarf>, <liquid:oil_soul>], [6, 1, 2]);
registerFluidAlloyIteration([<liquid:inner_fire>, <liquid:lava>, <liquid:ale>], [4, 1, 4]);
registerAlloy(["Steel", "Iron", "Coal"], [], [1, 1, 2]);
registerAlloy(["Steel", "Iron", "Graphite"], [], [1, 1, 1]);
registerAlloy(["Steel", "Iron", "Coke"], [], [2, 2, 1]);
registerAlloy(["Ferroboron", "Steel", "Boron"], [<liquid:ferroboron>, <liquid:steel>, <liquid:boron>], [2, 1, 1]);
registerAlloy(["Tough", "Ferroboron", "Lithium"], [<liquid:tough>, <liquid:ferroboron>, <liquid:lithium>], [2, 1, 1]);
registerAlloy(["HardCarbon", "Graphite", "Diamond"], [], [2, 1, 1]);
registerAlloy(["MagnesiumDiboride", "Magnesium", "Boron"], [], [3, 1, 2]);
registerAlloy(["LithiumManganeseDioxide", "Lithium", "Manganese"], [], [2, 1, 1]);
registerAlloy(["Shibuichi", "Copper", "Silver"], [], [4, 3, 1]);
registerAlloy(["TinSilver", "Tin", "Silver"], [], [4, 3, 1]);
registerAlloy(["LeadPlatinum", "Lead", "Platinum"], [], [4, 3, 1]);
registerAlloy(["Extreme", "HardCarbon", "Tough"], [], [1, 1, 1]);
registerAlloy(["Thermoconducting", "Extreme", "BoronArsenide"], [], [2, 1, 1]);
registerAlloy(["Zircaloy", "Zirconium", "Tin"], [], [8, 7, 1]);
registerAlloy(["SiliconCarbide", "Silicon", "Graphite"], [], [2, 1, 1]);
registerAlloy(["HSLASteel", "Iron", "CarbonManganese"], [], [16, 15, 1]);
// TODO: MAKE SOLID TO LIQUID ALLOYING: LIKE STAMPER WITH ITEM OR FLUID MIXER NUCLEARCRAFT