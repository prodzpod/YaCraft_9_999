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

// val signs = {
//     <moarsigns:moar_sign:1>.withTag({SignTexture: "ie/copper_sign"}): <liquid:copper>,
//     <moarsigns:moar_sign:1>.withTag({SignTexture: "emerald_sign"}): <liquid:emerald>,
//     <moarsigns:moar_sign:1>.withTag({SignTexture: "ie/constantan_sign"}): <liquid:constantan>,
//     <moarsigns:moar_sign:1>.withTag({SignTexture: "ie/silver_sign"}): <liquid:silver>,
//     <moarsigns:moar_sign:1>.withTag({SignTexture: "ie/aluminium_sign"}): <liquid:aluminum>,
//     <moarsigns:moar_sign:1>.withTag({SignTexture: "tf/aluminum_sign"}): <liquid:aluminum>,
//     <moarsigns:moar_sign:1>.withTag({SignTexture: "tf/silver_sign"}): <liquid:silver>,
//     <moarsigns:moar_sign:1>.withTag({SignTexture: "tf/electrum_sign"}): <liquid:electrum>,
//     <moarsigns:moar_sign:1>.withTag({SignTexture: "iron_sign"}): <liquid:iron>,
//     <moarsigns:moar_sign:1>.withTag({SignTexture: "ie/nickel_sign"}): <liquid:nickel>,
//     <moarsigns:moar_sign:1>.withTag({SignTexture: "tf/bronze_sign"}): <liquid:bronze>,
//     <moarsigns:moar_sign:1>.withTag({SignTexture: "ie/lead_sign"}): <liquid:lead>,
//     <moarsigns:moar_sign:1>.withTag({SignTexture: "ie/electrum_sign"}): <liquid:electrum>,
//     <moarsigns:moar_sign:1>.withTag({SignTexture: "tf/steel_sign"}): <liquid:steel>,
//     <moarsigns:moar_sign:1>.withTag({SignTexture: "tf/iridium_sign"}): <liquid:iridium>,
//     <moarsigns:moar_sign:1>.withTag({SignTexture: "tf/invar_sign"}): <liquid:invar>,
//     <moarsigns:moar_sign:1>.withTag({SignTexture: "tf/constantan_sign"}): <liquid:constantan>,
//     <moarsigns:moar_sign:1>.withTag({SignTexture: "tf/enderium_sign"}): <liquid:enderium>,
//     <moarsigns:moar_sign:1>.withTag({SignTexture: "tconstruct/aluminumbrass_sign"}): <liquid:alubrass>,
//     <moarsigns:moar_sign:1>.withTag({SignTexture: "tf/copper_sign"}): <liquid:copper>,
//     <moarsigns:moar_sign:1>.withTag({SignTexture: "tconstruct/manyullyn_sign"}): <liquid:manyullyn>,
//     <moarsigns:moar_sign:1>.withTag({SignTexture: "gold_sign"}): <liquid:gold>,
//     <moarsigns:moar_sign:1>.withTag({SignTexture: "ie/steel_sign"}): <liquid:steel>,
//     <moarsigns:moar_sign:1>.withTag({SignTexture: "tconstruct/pigiron_sign"}): <liquid:pigiron>,
//     <moarsigns:moar_sign:1>.withTag({SignTexture: "ie/uranium_sign"}): <liquid:uranium>,
//     <moarsigns:moar_sign:1>.withTag({SignTexture: "tf/mana_metal_sign"}): <liquid:mithril>,
//     <moarsigns:moar_sign:1>.withTag({SignTexture: "tf/platinum_sign"}): <liquid:platinum>,
//     <moarsigns:moar_sign:1>.withTag({SignTexture: "tf/lumium_sign"}): <liquid:lumium>,
//     <moarsigns:moar_sign:1>.withTag({SignTexture: "tf/nickel_sign"}): <liquid:nickel>,
//     <moarsigns:moar_sign:1>.withTag({SignTexture: "tf/signalum_sign"}): <liquid:signalum>,
//     <moarsigns:moar_sign:1>.withTag({SignTexture: "tf/tin_sign"}): <liquid:tin>,
//     <moarsigns:moar_sign:1>.withTag({SignTexture: "tf/lead_sign"}): <liquid:lead>,
//     <moarsigns:moar_sign:1>.withTag({SignTexture: "tconstruct/ardite_sign"}): <liquid:ardite>,
//     <moarsigns:moar_sign:1>.withTag({SignTexture: "tconstruct/knightslime_sign"}): <liquid:knightslime>,
//     <moarsigns:moar_sign:1>.withTag({SignTexture: "tconstruct/cobalt_sign"}): <liquid:cobalt>
// } as ILiquidStack[IItemStack];
// for k, v in signs {
//     print("[Smeltery_Sign.zs] registering Sign melting " ~ v.name);
//     scripts.Base.registerMelting(v * (16 * 6), k);
// }