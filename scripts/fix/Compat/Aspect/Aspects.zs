#priority 32765
import crafttweaker.oredict.IOreDict;
import crafttweaker.oredict.IOreDictEntry;
import crafttweaker.item.IItemStack;
import crafttweaker.liquid.ILiquidStack;
import mods.appliedenergistics2.Grinder;
import mods.tcomplement.highoven.HighOven;
import thaumcraft.aspect.CTAspectStack;

function registerAspects(baseAspect as CTAspectStack[], block as IItemStack, nugget as IItemStack, dust as IItemStack, plate as IItemStack, gear as IItemStack, rod as IItemStack) {
    val REDUCTION = 0.75 as double;
    print("[Aspects.zs] Checking for compat");
    if (!isNull(block)) {
        print("[Aspects.zs] gave " ~ block.name ~ " aspects for thaumcraft");
        block .setAspects(arrayScale(baseAspect, 9.0 * REDUCTION, [<aspect:spatio> * 5])); 
    } if (!isNull(nugget)) {
        print("[Aspects.zs] gave " ~ nugget.name ~ " aspects for thaumcraft");
        nugget.setAspects(arrayScale(baseAspect, REDUCTION / 9.0, [] as CTAspectStack[]));
    } if (!isNull(dust)) {
        print("[Aspects.zs] gave " ~ dust.name ~ " aspects for thaumcraft");
        dust  .setAspects(arrayScale(baseAspect, 1.0 / REDUCTION, [<aspect:exitium> * 1]));
    } if (!isNull(plate)) {
        print("[Aspects.zs] gave " ~ plate.name ~ " aspects for thaumcraft");
        plate .setAspects(arrayScale(baseAspect, 1.0 * REDUCTION, [<aspect:instrumentum> * 2]));
    } if (!isNull(gear)) {
        print("[Aspects.zs] gave " ~ gear.name ~ " aspects for thaumcraft");
        gear  .setAspects(arrayScale(baseAspect, 4.0 * REDUCTION, [<aspect:machina> * 5]));
    } if (!isNull(rod)) {
        print("[Aspects.zs] gave " ~ rod.name ~ " aspects for thaumcraft");
        rod   .setAspects(arrayScale(baseAspect, 2.0 * REDUCTION, [<aspect:fabrico> * 3]));
    }
}

function arrayScale(baseAspect as CTAspectStack[], scale as double, extra as CTAspectStack[]) as CTAspectStack[] {
    print("Param Check: " ~ describeAspectList(baseAspect) ~ " scale: " ~ scale ~ ", extra: " ~ describeAspectList(extra));
    var res = [] as CTAspectStack[];
    for aspect in baseAspect {
        val amt = max(1, mods.ctutils.utils.Math.round((aspect.amount as double) * scale));
        res += aspect * amt;
    }
    for aspect in extra {
        res += aspect;
    }
    print("Return Check: " ~ describeAspectList(res));
    return res;
}

function setIngotAspects(ore as string, aspect as CTAspectStack[], isGem as bool) {
    var aspects = [] as CTAspectStack[];
    for k in aspect {
        aspects += k * 5;
    }
    var ingot as IItemStack;
    if (isGem) {
        aspects += <aspect:vitreus> * 10;
        ingot = oreDict["gem" ~ ore].firstItem;
        ingot.setAspects(aspects);
    } else {
        aspects += <aspect:metallum> * 10;
        ingot = oreDict["ingot" ~ ore].firstItem;
        ingot.setAspects(aspects);
    }
    print("[Aspects.zs] gave " ~ ingot.name ~ " aspects for thaumcraft: " ~ describeAspectList(aspects));
    registerAspects(aspects, oreDict["block" ~ ore].firstItem, oreDict["nugget" ~ ore].firstItem, oreDict["dust" ~ ore].firstItem, oreDict["plate" ~ ore].firstItem, oreDict["gear" ~ ore].firstItem, oreDict["rod" ~ ore].firstItem);
}

function describeAspectList(aspect as CTAspectStack[]) as string {
    if (aspect.length == 0) {
        return "[]";
    }
    var res = "[";
    for entry in 0 .. aspect.length {
        res += aspect[entry].internal.name;
        res += " x ";
        res += aspect[entry].amount;
        if (entry != (aspect.length - 1)) {
            res += ", ";
        }
    }
    res += "]";
    return res;
}

setIngotAspects("Iron", [], false);
setIngotAspects("Gold", [<aspect:sol>, <aspect:desiderium>], false);
setIngotAspects("Copper", [<aspect:permutatio>], false);
setIngotAspects("Tin", [<aspect:vitreus>], false);
setIngotAspects("Silver", [<aspect:desiderium>, <aspect:luna>], false);
setIngotAspects("Lead", [<aspect:ordo>], false);
setIngotAspects("Aluminum", [<aspect:aer>], false);
setIngotAspects("Nickel", [<aspect:fabrico>], false);
setIngotAspects("Steel", [<aspect:ordo>], false);
setIngotAspects("Electrum", [<aspect:potentia>, <aspect:desiderium>], false);
setIngotAspects("Bronze", [<aspect:instrumentum>], false);
setIngotAspects("AstralStarmetal", [<aspect:stellae>], false);
setIngotAspects("Manasteel", [<aspect:praecantatio>], false);
setIngotAspects("ElvenElementium", [<aspect:alienis>], false);
setIngotAspects("Dawnstone", [<aspect:machina>, <aspect:ignis>], false);
setIngotAspects("Draconium", [<aspect:draco>], false);
setIngotAspects("DraconiumAwakened", [<aspect:draco>, <aspect:caeles>], false);
setIngotAspects("Draconium", [<aspect:draco>], false);
setIngotAspects("Unstable", [<aspect:exitium>], false);
setIngotAspects("DemonicMetal", [<aspect:diabolus>, <aspect:infernum>], false);
setIngotAspects("EnchantedMetal", [<aspect:praecantatio>, <aspect:vitreus>], false);
setIngotAspects("Shadowium", [<aspect:tenebrae>], false);
setIngotAspects("Photonium", [<aspect:lux>], false);
// setIngotAspects("Netherite", [<aspect:infernum>], false);
setIngotAspects("Uranium", [<aspect:potentia>, <aspect:mortuus>], false);
setIngotAspects("Photonium", [<aspect:lux>], false);
setIngotAspects("Alkimium", [<aspect:alkimia>], false);
setIngotAspects("Bismuth", [<aspect:tinctura>], false);
setIngotAspects("Cobalt", [<aspect:tempus>], false);
setIngotAspects("Ardite", [<aspect:spatio>], false);
setIngotAspects("Manyullyn", [<aspect:diabolus>], false);
setIngotAspects("Constantan", [<aspect:sonus>], false);
setIngotAspects("Signalum", [<aspect:fluctus>, <aspect:desiderium>], false);
setIngotAspects("Lumium", [<aspect:lux>, <aspect:desiderium>], false);
setIngotAspects("Alubrass", [<aspect:visum>], false);
setIngotAspects("Knightslime", [<aspect:aversio>, <aspect:praemunio>], false);
setIngotAspects("Pigiron", [<aspect:bestia>], false);
setIngotAspects("InertAethoria", [<aspect:fabrico>, <aspect:vitreus>, <aspect:luna>], false);
setIngotAspects("Aethoria", [<aspect:instrumentum>, <aspect:desiderium>, <aspect:tinctura>], false);
setIngotAspects("ChargedAethoria", [<aspect:machina>, <aspect:caeles>, <aspect:sol>], false);
setIngotAspects("Astralite", [<aspect:praecantatio>, <aspect:desiderium>, <aspect:stellae>], false);
setIngotAspects("Osmium", [<aspect:ventus>], false);
setIngotAspects("ColdIron", [<aspect:gelum>], false);
setIngotAspects("Antimony", [<aspect:vacuos>], false);