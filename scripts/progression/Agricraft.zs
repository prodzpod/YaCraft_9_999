import crafttweaker.oredict.IOreDict;
import crafttweaker.oredict.IOreDictEntry;
import crafttweaker.liquid.ILiquidStack;
import crafttweaker.item.IIngredient;
import crafttweaker.item.IItemStack;
import mods.tconstruct.Melting;
import mods.tconstruct.Casting;
import mods.tconstruct.Alloy;

recipes.remove(<agricraft:crop_sticks>);
recipes.addShaped("new_agri_cropstick", <agricraft:crop_sticks>, [[<ore:stickTreatedWood>, <ore:stickTreatedWood>], [<ore:stickTreatedWood>, <ore:stickTreatedWood>]]);
recipes.addShaped(<contenttweaker:heart_of_all_seeds>, [[null, 
    <agricraft:agri_seed>.withTag({agri_analyzed: 1 as byte, agri_growth: 10 as byte, agri_strength: 10 as byte, agri_gain: 10 as byte, agri_seed: "vanilla:weed_plant"}), null], [
    <agricraft:agri_seed>.withTag({agri_analyzed: 1 as byte, agri_strength: 10 as byte, agri_gain: 10 as byte, agri_seed: "vanilla:pink_tulip_plant", agri_growth: 10 as byte}),
    <botania:specialflower>.withTag({type: "dandelifeon"}),
    <agricraft:agri_seed>.withTag({agri_analyzed: 1 as byte, agri_strength: 10 as byte, agri_gain: 10 as byte, agri_seed: "resource:nitorwart_plant", agri_growth: 10 as byte})], 
    [null, <rusticthaumaturgy:dust_tiny_blaze>, null]]);

recipes.remove(<t3s4ebw:magic_seed>);
mods.thaumcraft.Infusion.registerRecipe("ebwSeedInfusion", "INFUSION", <t3s4ebw:magic_seed>, 5, [<aspect:herba> * 1000, <aspect:terra> * 1000], 
    <contenttweaker:heart_of_all_seeds>, [<ebwizardry:crystal_shard>, <ebwizardry:crystal_shard>, <ebwizardry:crystal_shard>, <ebwizardry:crystal_shard>]);