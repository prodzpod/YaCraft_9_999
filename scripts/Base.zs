#priority 32768

import crafttweaker.oredict.IOreDict;
import crafttweaker.oredict.IOreDictEntry;
import crafttweaker.item.IItemStack;
import crafttweaker.liquid.ILiquidStack;
import mods.appliedenergistics2.Grinder;
import mods.tcomplement.highoven.HighOven;
import thaumcraft.aspect.CTAspectStack;
import mods.ctutils.utils.Math;
import crafttweaker.block.IBlockDefinition;
import crafttweaker.block.IBlock;

function toSnake(text as string) as string {
    return text.replaceAll(" ", "_").toLowerCase();
}

function toCamel(text as string) as string {
    return text.replaceAll(" ", "");
}

function registerDust(dust as IItemStack, ingot as IItemStack) {
    print("[Base.zs] registering dust " + dust.name);
    // grinding
    Grinder.addRecipe(dust, ingot, 8);
    mods.astralsorcery.Grindstone.addRecipe(ingot, dust);
    mods.immersiveengineering.Crusher.addRecipe(dust, ingot, 2048);
    mods.mekanism.crusher.addRecipe(ingot, dust);
    mods.actuallyadditions.Crusher.addRecipe(dust, ingot);
    mods.bloodmagic.AlchemyTable.addRecipe(dust, [ingot, <bloodmagic:cutting_fluid>], 400, 200, 0);
    mods.extrautils2.Crusher.add(dust, ingot);
    mods.thermalexpansion.Pulverizer.addRecipe(dust, ingot, 1500);
    mods.nuclearcraft.manufactory.addRecipe([ingot, dust]);
    
    recipes.addShapeless("convert_" ~ ingot.name ~ "_to_" ~ dust.name ~ "_TE", dust, [ingot, <thermalfoundation:material:1027>]);
    recipes.addShapeless("convert_" ~ ingot.name ~ "_to_" ~ dust.name ~ "_BOTANIA", dust, [ingot, ingot, <botania:pestleandmortar>]);

    recipes.addShapeless("convert_" ~ dust.name ~ "_to_" ~ ingot.name ~ "_THERMAL", ingot, [dust, <thermalfoundation:material:1024>]);
    print("[Base.zs] registered dust " + dust.name);
}

function registerDustForge(ingot as IItemStack, dust as IItemStack) {
    print("[Base.zs] registering dust forging for " + dust.name);
    mods.mekanism.enrichment.removeRecipe(dust, ingot);
    // forging
    furnace.addRecipe(ingot, dust);
    mods.thermalexpansion.RedstoneFurnace.addRecipe(ingot, dust, 1500);
    mods.immersiveengineering.ArcFurnace.addRecipe(ingot, dust, null, 2000, 2048);
    mods.immersiveengineering.BlastFurnace.addRecipe(ingot, dust, 2000);
    print("[Base.zs] registered dust " + dust.name);
}

function registerPlate(plate as IItemStack, ingot as IItemStack) {
    print("[Base.zs] registering plate " + plate.name);
    print("[Base.zs] removing 'normal' plate recipe");
    recipes.removeShapeless(plate, [ingot, <immersiveengineering:tool>]);
    recipes.removeShaped(plate, [[ingot, ingot, ingot]]);

    // plate
    recipes.addShapeless("convert_" ~ ingot.name ~ "_to_" ~ plate.name ~ "_IE", plate, [ingot, ingot, <immersiveengineering:tool>]);
    recipes.addShapeless("convert_" ~ ingot.name ~ "_to_" ~ plate.name ~ "_EMBERS", plate, [ingot, ingot, <embers:tinker_hammer>]);
    mods.immersiveengineering.MetalPress.addRecipe(plate, ingot, <immersiveengineering:mold:0>, 2000);
    mods.thermalexpansion.Compactor.addStorageRecipe(plate, ingot, 1500);
    mods.nuclearcraft.pressurizer.addRecipe([ingot, plate]);
    print("[Base.zs] registered plate " + plate.name);
}

function registerGear(gear as IItemStack, ingot as IItemStack) {
    print("[Base.zs] registering gear " + gear.name);
    print("[Base.zs] removing 'normal' gear recipe");
    recipes.remove(gear);

    // e
    mods.immersiveengineering.MetalPress.addRecipe(gear, ingot * 4, <immersiveengineering:mold:1>, 2000);
    mods.thermalexpansion.Compactor.addGearRecipe(gear, ingot * 4, 1500);
    print("[Base.zs] registered gear " + gear.name);
}

// stack * amount = ILiquidStack IN MILLIBUCKETS
function registerMelting(fluid as ILiquidStack, item as IItemStack) {
    mods.tconstruct.Melting.addRecipe(fluid, item);
    mods.tcomplement.Overrides.addRecipe(fluid, item);
    HighOven.addMeltingOverride(fluid, item, 500 * Math.pow(2.0 as double, Math.log((fluid.amount / 144) as double, 9.0 as double) as double));
    mods.embers.Melter.add(fluid, item);
    mods.thermalexpansion.Crucible.addRecipe(fluid, item, 4000);
    mods.nuclearcraft.melter.addRecipe([item, fluid]);
}

// tconstruct & embers
function registerFluid(fluid as ILiquidStack, ingot as IItemStack, isGem as bool, block as IItemStack, isFours as bool, nugget as IItemStack, dust as IItemStack, plate as IItemStack, gear as IItemStack, rod as IItemStack, other as int[IItemStack]) {
    if (!isNull(ingot)) {
        print("[Base.zs] registering fluid recipe for ingot " + ingot.name);
        registerMelting(fluid * 144, ingot);
        if (isGem) {
            mods.tconstruct.Casting.addTableRecipe(<tconstruct:cast_custom:2>, ingot, <liquid:gold>, 288, true);
            mods.tconstruct.Casting.addTableRecipe(<tconstruct:cast_custom:2>, ingot, <liquid:alubrass>, 288, true);
            mods.tconstruct.Casting.addTableRecipe(<tconstruct:cast_custom:2>, ingot, <liquid:brass>, 288, true);
            mods.tconstruct.Casting.addTableRecipe(ingot, <tconstruct:cast_custom:2>, fluid, 144);
            mods.tconstruct.Casting.addTableRecipe(ingot, <contenttweaker:clay_cast_gem>, fluid, 144, true);
            mods.tconstruct.Casting.addTableRecipe(<contenttweaker:clay_cast_gem>, ingot, <liquid:clay>, 288, true);
        } else {
            mods.tconstruct.Casting.addTableRecipe(<tconstruct:cast_custom:0>, ingot, <liquid:gold>, 288, true);
            mods.tconstruct.Casting.addTableRecipe(<tconstruct:cast_custom:0>, ingot, <liquid:alubrass>, 288, true);
            mods.tconstruct.Casting.addTableRecipe(<tconstruct:cast_custom:0>, ingot, <liquid:brass>, 288, true);
            mods.tconstruct.Casting.addTableRecipe(ingot, <tconstruct:cast_custom:0>, fluid, 144);
            mods.tconstruct.Casting.addTableRecipe(ingot, <contenttweaker:clay_cast_ingot>, fluid, 144, true);
            mods.tconstruct.Casting.addTableRecipe(<contenttweaker:clay_cast_ingot>, ingot, <liquid:clay>, 288, true);
            mods.embers.Stamper.add(ingot, fluid * 144, <embers:stamp_bar>);
        }
        mods.nuclearcraft.ingot_former.addRecipe([fluid, ingot]);
    }
    if (!isNull(block)) {
        print("[Base.zs] registering fluid recipe for block " + block.name);
        var blockAmount = 1296;
        if (isFours) {
            blockAmount = 576;
        }
        registerMelting(fluid * blockAmount, block);
        mods.tconstruct.Casting.addBasinRecipe(block, null, fluid, blockAmount);
    }
    if (!isNull(nugget)) {
        print("[Base.zs] registering fluid recipe for nugget " + nugget.name);
        registerMelting(fluid * 16, nugget);
        mods.tconstruct.Casting.addTableRecipe(<tconstruct:cast_custom:1>, nugget, <liquid:gold>, 288, true);
        mods.tconstruct.Casting.addTableRecipe(<tconstruct:cast_custom:1>, nugget, <liquid:alubrass>, 288, true);
        mods.tconstruct.Casting.addTableRecipe(<tconstruct:cast_custom:1>, nugget, <liquid:brass>, 288, true);
        mods.tconstruct.Casting.addTableRecipe(<contenttweaker:clay_cast_nugget>, nugget, <liquid:clay>, 288, true);
        mods.tconstruct.Casting.addTableRecipe(nugget, <tconstruct:cast_custom:1>, fluid, 16);
        mods.tconstruct.Casting.addTableRecipe(nugget, <contenttweaker:clay_cast_nugget>, fluid, 16, true);
    }
    if (!isNull(dust)) {
        print("[Base.zs] registering fluid recipe for dust " + dust.name);
        registerMelting(fluid * 144, dust);
    }
    if (!isNull(plate)) {
        print("[Base.zs] registering fluid recipe for plate " + plate.name);
        registerMelting(fluid * 144, plate);
        mods.tconstruct.Casting.addTableRecipe(<tconstruct:cast_custom:3>, plate, <liquid:gold>, 288, true);
        mods.tconstruct.Casting.addTableRecipe(<tconstruct:cast_custom:3>, plate, <liquid:alubrass>, 288, true);
        mods.tconstruct.Casting.addTableRecipe(<tconstruct:cast_custom:3>, plate, <liquid:brass>, 288, true);
        mods.tconstruct.Casting.addTableRecipe(<contenttweaker:clay_cast_plate>, plate, <liquid:clay>, 288, true);
        mods.tconstruct.Casting.addTableRecipe(plate, <tconstruct:cast_custom:3>, fluid, 144);
        mods.tconstruct.Casting.addTableRecipe(plate, <contenttweaker:clay_cast_plate>, fluid, 144, true);
        mods.embers.Stamper.add(plate, fluid * 144, <embers:stamp_plate>);
    }
    if (!isNull(gear)) {
        print("[Base.zs] registering fluid recipe for gear " + gear.name);
        registerMelting(fluid * 576, gear);
        mods.tconstruct.Casting.addTableRecipe(<tconstruct:cast_custom:3>, gear, <liquid:gold>, 288, true);
        mods.tconstruct.Casting.addTableRecipe(<tconstruct:cast_custom:3>, gear, <liquid:alubrass>, 288, true);
        mods.tconstruct.Casting.addTableRecipe(<tconstruct:cast_custom:3>, gear, <liquid:brass>, 288, true);
        mods.tconstruct.Casting.addTableRecipe(<contenttweaker:clay_cast_plate>, gear, <liquid:clay>, 288, true);
        mods.tconstruct.Casting.addTableRecipe(gear, <tconstruct:cast_custom:4>, fluid, 576);
        mods.tconstruct.Casting.addTableRecipe(gear, <contenttweaker:clay_cast_gear>, fluid, 576, true);
        mods.embers.Stamper.add(gear, fluid * 576, <embers:stamp_gear>);
    }
    if (!isNull(rod)) {
        print("[Base.zs] registering fluid recipe for rod " + rod.name);
        registerMelting(fluid * 288, rod);
    }
    for key, value in other {
        print("[Base.zs] registering fluid recipe for other recipes " + key.name);
	    registerMelting(fluid * value, key);
    }
    print("[Base.zs] registered all fluid recipes for " + fluid.name);
}

// register all
// NAME IN CamelCase with first letter uppercase
function registerMetal(name as string, fluid as ILiquidStack, ingot as IItemStack, isGem as bool, block as IItemStack, isFours as bool, nugget as IItemStack, dust as IItemStack, plate as IItemStack, gear as IItemStack, rod as IItemStack) {
    if (isGem) {
        oreDict["crystal" ~ name].add(ingot);
        oreDict["gem" ~ name].add(ingot);
        oreDict["gemAll"].add(ingot);
    } else {
        oreDict["ingot"  ~ name].add(ingot);
    }
    if (!isNull(block)) {
        oreDict["block"  ~ name].add(block);
        // ingot to block, block to ingot
        if (isFours) {
            recipes.addShaped("convert_" ~ name ~ "_ingot_to_block", block, [[ingot, ingot], [ingot, ingot]]);
            recipes.addShapeless("convert_" ~ name ~ "_block_to_ingot", ingot * 4, [block]);
        } else {
            recipes.addShaped("convert_" ~ name ~ "_ingot_to_block", block, [[ingot, ingot, ingot], [ingot, ingot, ingot], [ingot, ingot, ingot]]);
            recipes.addShapeless("convert_" ~ name ~ "_block_to_ingot", ingot * 9, [block]);
        }
    }
    if (!isNull(nugget)) {
        oreDict["nugget" ~ name].add(nugget);
        // nugget to ingot, ingot to nugget
        recipes.addShaped("convert_" ~ name ~ "_ingot_to_nugget", ingot, [[nugget, nugget, nugget], [nugget, nugget, nugget], [nugget, nugget, nugget]]);
        recipes.addShapeless("convert_" ~ name ~ "_nugget_to_ingot", nugget * 9, [ingot]);
    }
    if (!isNull(dust)) {
        oreDict["dust"   ~ name].add(dust);
        registerDust(dust, ingot);
        if (isGem) {
            mods.mekanism.enrichment.addRecipe(dust, ingot);
            mods.nuclearcraft.pressurizer.addRecipe([dust, ingot]);
        } else {
            registerDustForge(ingot, dust);
        }
    }
    if (!isNull(plate)) {
        oreDict["plate"  ~ name].add(plate);
        registerPlate(plate, ingot);
    }
    if (!isNull(gear)) {
        oreDict["gear"   ~ name].add(gear);
        registerGear(gear, ingot);
    }
    if (!isNull(rod)) {
        oreDict["rod"    ~ name].add(rod);
        oreDict["stick"  ~ name].add(rod);
        recipes.removeShaped(rod * 4, [[ingot], [ingot]]);
        mods.immersiveengineering.MetalPress.addRecipe(rod * 2, ingot, <immersiveengineering:mold:2>, 2000);
    }
    if (!isNull(fluid)) {
        registerFluid(fluid, ingot, isGem, block, isFours, nugget, dust, plate, gear, rod, {} as int[IItemStack]);
    }
}

function registerTools(name as string, fluid as ILiquidStack, tool as IItemStack, amount as int) {
    val nugget = oreDict["nugget" ~ name].firstItem;
    var ingot  = oreDict["ingot"  ~ name].firstItem;
    if (isNull(ingot)) {
        ingot = oreDict["gem"  ~ name].firstItem;
    }
    furnace.addRecipe(nugget * (3 * amount), tool);
    mods.thermalexpansion.RedstoneFurnace.addRecipe(nugget * (3 * amount), tool, 2000);
    mods.immersivetweaker.Recycling.allowItemForRecycling(tool);
    mods.thermalexpansion.InductionSmelter.addRecipe((ingot * max(1, amount / 2)) as IItemStack, <minecraft:sand>, tool, 6000, <thermalfoundation:material:864>, 10);
    mods.thermalexpansion.InductionSmelter.addRecipe((ingot * max(1, amount / 2)) as IItemStack, <minecraft:sand:1>, tool, 6000, <thermalfoundation:material:864>, 10);
    if (!isNull(fluid)) {
        registerMelting(fluid * (144 * amount), tool);
    }
}

function setHarvest(item as IItemStack, tool as string, level as int) {
    (item as IBlock).definition.setHarvestLevel(tool, level);
}

function setHarvestOredict(items as IOreDictEntry, tool as string, level as int) {
    for item in items.items {
        setHarvest(item, tool, level);
    }
}