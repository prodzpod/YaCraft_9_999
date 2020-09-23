import crafttweaker.oredict.IOreDict;
import crafttweaker.oredict.IOreDictEntry;
import crafttweaker.liquid.ILiquidStack;
import crafttweaker.item.IIngredient;
import crafttweaker.item.IItemStack;

recipes.remove(<bewitchment:stone_witches_altar>);
recipes.remove(<bewitchment:nether_brick_witches_altar>);
recipes.remove(<bewitchment:obsidian_witches_altar>);
recipes.remove(<bewitchment:coquina_witches_altar>);
recipes.remove(<bewitchment:embittered_brick_witches_altar>);
recipes.remove(<bewitchment:scorned_brick_witches_altar>);
recipes.addShaped("new_altar1", <bewitchment:stone_witches_altar>, [[<bewitchment:empty_jar>, <contenttweaker:inert_aethoria_dust>, <bewitchment:empty_jar>], [<ore:stone>, <bewitchment:elder_wood>, <ore:stone>], [<ore:stone>, <bewitchment:elder_wood>, <ore:stone>]]);
recipes.addShaped("new_altar2", <bewitchment:nether_brick_witches_altar>, [[<bewitchment:empty_jar>, <contenttweaker:inert_aethoria_dust>, <bewitchment:empty_jar>], [<minecraft:nether_brick>, <bewitchment:elder_wood>, <minecraft:nether_brick>], [<ore:stone>, <bewitchment:elder_wood>, <ore:stone>]]);
recipes.addShaped("new_altar3", <bewitchment:obsidian_witches_altar>, [[<bewitchment:empty_jar>, <contenttweaker:inert_aethoria_dust>, <bewitchment:empty_jar>], [<ore:stone>, <bewitchment:elder_wood>, <ore:stone>], [<ore:stone>, <bewitchment:elder_wood>, <ore:stone>]]);
recipes.addShaped("new_altar4", <bewitchment:coquina_witches_altar>, [[<bewitchment:empty_jar>, <contenttweaker:inert_aethoria_dust>, <bewitchment:empty_jar>], [<ore:stone>, <bewitchment:elder_wood>, <ore:stone>], [<ore:stone>, <bewitchment:elder_wood>, <ore:stone>]]);
recipes.addShaped("new_altar5", <bewitchment:embittered_brick_witches_altar>, [[<bewitchment:empty_jar>, <contenttweaker:inert_aethoria_dust>, <bewitchment:empty_jar>], [<ore:stone>, <bewitchment:elder_wood>, <ore:stone>], [<ore:stone>, <bewitchment:elder_wood>, <ore:stone>]]);
recipes.addShaped("new_altar6", <bewitchment:scorned_brick_witches_altar>, [[<bewitchment:empty_jar>, <contenttweaker:inert_aethoria_dust>, <bewitchment:empty_jar>], [<ore:stone>, <bewitchment:elder_wood>, <ore:stone>], [<ore:stone>, <bewitchment:elder_wood>, <ore:stone>]]);
recipes.remove(<bewitchment:witches_cauldron>);
recipes.remove(<thaumcraft:salis_mundus>);
// recipes.addShaped("new_cauldron", <bewitchment:witches_cauldron>, [[<contenttweaker:inert_aethoria_nugget>, null, <contenttweaker:inert_aethoria_nugget>], [<contenttweaker:inert_aethoria>, null, <contenttweaker:inert_aethoria>], [<contenttweaker:inert_aethoria>, <futureminecraf:netheritescrap>, <contenttweaker:inert_aethoria>]]);
moretweaker.bewitchment.WitchesRitual.addRecipe("Ritual of the Thaumaturge", [<thaumcraft:salis_mundus>] as IItemStack[], [<minecraft:glowstone_dust>, 
    <thaumcraft:crystal_essence>.withTag({Aspects: [{amount: 1, key: "aer"}]}), <thaumcraft:crystal_essence>.withTag({Aspects: [{amount: 1, key: "ignis"}]}),
    <thaumcraft:crystal_essence>.withTag({Aspects: [{amount: 1, key: "aqua"}]}), <thaumcraft:crystal_essence>.withTag({Aspects: [{amount: 1, key: "terra"}]}), 
    <thaumcraft:crystal_essence>.withTag({Aspects: [{amount: 1, key: "ordo"}]}), <thaumcraft:crystal_essence>.withTag({Aspects: [{amount: 1, key: "perditio"}]})] as IItemStack[], null as string, null as string, 5000, 1, 2, 1);
moretweaker.bewitchment.WitchesOven.addRecipe(<thaumcraft:sapling_silverwood>, <bewitchment:wood_ash>, <bewitchment:liquid_witchcraft>);
moretweaker.bewitchment.WitchesOven.addRecipe(<thaumcraft:sapling_greatwood>, <bewitchment:wood_ash>, <bewitchment:droplet_of_wisdom>);
moretweaker.bewitchment.WitchesCauldron.addRecipe([<thaumcraft:salis_mundus>, <bewitchment:empty_jar>], [<thaumcraft:tallow>, <thaumcraft:crystal_essence>.withTag({Aspects: [{amount: 1, key: "praecantatio"}]}), <bewitchment:liquid_witchcraft>]);
moretweaker.bewitchment.WitchesRitual.addRecipe("Ritual of the Wishing Potential", [<contenttweaker:inert_aethoria_dust>] as IItemStack[], [<thaumcraft:salis_mundus>, 
    <thermalfoundation:material:224>, <thermalfoundation:material:130>, <jaopca:item_nuggetopal>] as IItemStack[], null as string, null as string, 250, 3, 1, 3);
moretweaker.bewitchment.WitchesRitual.addRecipe("Ritual of the Forbidden Pendant", [<thaumcraft:amulet_vis>] as IItemStack[], [<thaumcraft:baubles>, 
    <bewitchment:sigil_binding>, <bewitchment:demon_heart>, <thaumadditions:salt_essence>.withTag({Aspects: [{amount: 1, key: "praecantatio"}]}), <bewitchment:pentacle>] as IItemStack[], null as string, "minecraft:sheep", 6666, 2, 1, 2);
mods.thaumcraft.Infusion.registerRecipe("bewitchmentCodexInfernalis", "INFUSION", <patchouli:guide_book>.withTag({"patchouli:book": "bewitchment:codex_infernalis"}), 10, [<aspect:diabolus> * 25, <aspect:infernum> * 25], 
    <bewitchment:grimoire_magia>, [<bewitchment:hellebore>, <bewitchment:mandrake_root>, <bewitchment:bottled_hellfire>, <bewitchment:pentacle>, <bewitchment:crying_scorned_bricks>]);
// biome shift
moretweaker.bewitchment.WitchesRitual.removeByInput(<bewitchment:boline>);