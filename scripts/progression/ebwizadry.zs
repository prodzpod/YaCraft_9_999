import mods.ctutils.utils.Math;
import crafttweaker.item.IItemStack;
val spellbook = <ebwizardry:spell_book>;
val crystal = <ebwizardry:magic_crystal:0>;
val astral = <ebwizardry:astral_diamond>;

recipes.addShapeless("returnspellbook",<ebwizardry:spell_book:1>,[spellbook.anyDamage()]);

recipes.addShapeless("randomspellbook",spellbook,
[spellbook.anyDamage().marked("mark"),<ebwizardry:crystal_block:0>],
function(out, ins, cInfo){
	val e = Math.round(Math.random() * 172)+1;
	return ins.mark.withDamage(e).withAmount(1);
}, 
null);

recipes.addShaped("fierycrystal",<ebwizardry:magic_crystal:1>,[[null,null,null],[null,crystal,null],[crystal,null,crystal]]);
recipes.addShaped("icyycrystal",<ebwizardry:magic_crystal:2>,[[crystal,null,crystal],[null,crystal,null],[null,null,null]]);
recipes.addShaped("stormycrystal",<ebwizardry:magic_crystal:3>,[[crystal,crystal,crystal],[null,null,null],[null,null,null]]);
recipes.addShaped("darkcrystal",<ebwizardry:magic_crystal:4>,[[crystal,null,null],[null,crystal,null],[null,null,crystal]]);
recipes.addShaped("verdantcrystal",<ebwizardry:magic_crystal:5>,[[null,null,null],[null,null,null],[crystal,crystal,crystal]]);
recipes.addShaped("mysticalcrystal",<ebwizardry:magic_crystal:6>,[[null,null,null],[crystal,crystal,crystal],[null,null,null]]);
recipes.addShaped("radiantcrystal",<ebwizardry:magic_crystal:7>,[[null,null,crystal],[null,crystal,null],[crystal,null,null]]);

mods.botania.ManaInfusion.addInfusion(<ebwizardry:grand_crystal>, <ebwizardry:magic_crystal>.anyDamage(), 10000);
mods.botania.ManaInfusion.addInfusion(<ebwizardry:crystal_shard>, <ebwizardry:grand_crystal>, -11000);
mods.botania.ManaInfusion.addInfusion(<ebwizardry:crystal_shard>, <ebwizardry:astral_diamond>, -1000000);

mods.thaumcraft.Infusion.registerRecipe("astralcrafting", "BASEINFUSION", <ebwizardry:astral_diamond>, 25, [<aspect:praecantatio>*250,<aspect:desiderium>*250],<ebwizardry:crystal_block>, [<ebwizardry:grand_crystal>, <ebwizardry:grand_crystal>, <ebwizardry:grand_crystal>, <ebwizardry:grand_crystal>, <ebwizardry:grand_crystal>, <ebwizardry:grand_crystal>, <ebwizardry:grand_crystal>, <ebwizardry:grand_crystal>, <ebwizardry:grand_crystal>, <ebwizardry:grand_crystal>, <ebwizardry:grand_crystal>, <ebwizardry:grand_crystal>, <ebwizardry:grand_crystal>, <ebwizardry:grand_crystal>, <ebwizardry:grand_crystal>, <ebwizardry:grand_crystal>]);

recipes.addShaped("apprentice",<ebwizardry:arcane_tome:1>,[[null,spellbook.anyDamage(),null],[spellbook.anyDamage(),<ebwizardry:magic_crystal>.anyDamage(),spellbook.anyDamage()],[null,spellbook.anyDamage(),null]]);
recipes.addShaped("advanced",<ebwizardry:arcane_tome:2>,[[null,<ebwizardry:arcane_tome:1>,null],[<ebwizardry:arcane_tome:1>,<ebwizardry:crystal_block>,<ebwizardry:arcane_tome:1>],[null,<ebwizardry:arcane_tome:1>,null]]);
recipes.addShaped("master",<ebwizardry:arcane_tome:3>,[[null,<ebwizardry:arcane_tome:2>,null],[<ebwizardry:arcane_tome:2>,<ebwizardry:astral_diamond>,<ebwizardry:arcane_tome:2>],[null,<ebwizardry:arcane_tome:2>,null]]);

recipes.addShapeless(<ebwizardry:wizard_hat_fire>,[<ebwizardry:wizard_hat>,<ebwizardry:magic_crystal:1>]);
recipes.addShapeless(<ebwizardry:wizard_robe_fire>,[<ebwizardry:wizard_robe>,<ebwizardry:magic_crystal:1>]);
recipes.addShapeless(<ebwizardry:wizard_leggings_fire>,[<ebwizardry:wizard_leggings>,<ebwizardry:magic_crystal:1>]);
recipes.addShapeless(<ebwizardry:wizard_boots_fire>,[<ebwizardry:wizard_boots>,<ebwizardry:magic_crystal:1>]);

recipes.addShapeless(<ebwizardry:wizard_hat_ice>,[<ebwizardry:wizard_hat>,<ebwizardry:magic_crystal:2>]);
recipes.addShapeless(<ebwizardry:wizard_robe_ice>,[<ebwizardry:wizard_robe>,<ebwizardry:magic_crystal:2>]);
recipes.addShapeless(<ebwizardry:wizard_leggings_ice>,[<ebwizardry:wizard_leggings>,<ebwizardry:magic_crystal:2>]);
recipes.addShapeless(<ebwizardry:wizard_boots_ice>,[<ebwizardry:wizard_boots>,<ebwizardry:magic_crystal:2>]);

recipes.addShapeless(<ebwizardry:wizard_hat_lightning>,[<ebwizardry:wizard_hat>,<ebwizardry:magic_crystal:3>]);
recipes.addShapeless(<ebwizardry:wizard_robe_lightning>,[<ebwizardry:wizard_robe>,<ebwizardry:magic_crystal:3>]);
recipes.addShapeless(<ebwizardry:wizard_leggings_lightning>,[<ebwizardry:wizard_leggings>,<ebwizardry:magic_crystal:3>]);
recipes.addShapeless(<ebwizardry:wizard_boots_lightning>,[<ebwizardry:wizard_boots>,<ebwizardry:magic_crystal:3>]);

recipes.addShapeless(<ebwizardry:wizard_hat_necromancy>,[<ebwizardry:wizard_hat>,<ebwizardry:magic_crystal:4>]);
recipes.addShapeless(<ebwizardry:wizard_robe_necromancy>,[<ebwizardry:wizard_robe>,<ebwizardry:magic_crystal:4>]);
recipes.addShapeless(<ebwizardry:wizard_leggings_necromancy>,[<ebwizardry:wizard_leggings>,<ebwizardry:magic_crystal:4>]);
recipes.addShapeless(<ebwizardry:wizard_boots_necromancy>,[<ebwizardry:wizard_boots>,<ebwizardry:magic_crystal:4>]);

recipes.addShapeless(<ebwizardry:wizard_hat_earth>,[<ebwizardry:wizard_hat>,<ebwizardry:magic_crystal:5>]);
recipes.addShapeless(<ebwizardry:wizard_robe_earth>,[<ebwizardry:wizard_robe>,<ebwizardry:magic_crystal:5>]);
recipes.addShapeless(<ebwizardry:wizard_leggings_earth>,[<ebwizardry:wizard_leggings>,<ebwizardry:magic_crystal:5>]);
recipes.addShapeless(<ebwizardry:wizard_boots_earth>,[<ebwizardry:wizard_boots>,<ebwizardry:magic_crystal:5>]);

recipes.addShapeless(<ebwizardry:wizard_hat_sorcery>,[<ebwizardry:wizard_hat>,<ebwizardry:magic_crystal:6>]);
recipes.addShapeless(<ebwizardry:wizard_robe_sorcery>,[<ebwizardry:wizard_robe>,<ebwizardry:magic_crystal:6>]);
recipes.addShapeless(<ebwizardry:wizard_leggings_sorcery>,[<ebwizardry:wizard_leggings>,<ebwizardry:magic_crystal:6>]);
recipes.addShapeless(<ebwizardry:wizard_boots_sorcery>,[<ebwizardry:wizard_boots>,<ebwizardry:magic_crystal:6>]);

recipes.addShapeless(<ebwizardry:wizard_hat_healing>,[<ebwizardry:wizard_hat>,<ebwizardry:magic_crystal:7>]);
recipes.addShapeless(<ebwizardry:wizard_robe_healing>,[<ebwizardry:wizard_robe>,<ebwizardry:magic_crystal:7>]);
recipes.addShapeless(<ebwizardry:wizard_leggings_healing>,[<ebwizardry:wizard_leggings>,<ebwizardry:magic_crystal:7>]);
recipes.addShapeless(<ebwizardry:wizard_boots_healing>,[<ebwizardry:wizard_boots>,<ebwizardry:magic_crystal:7>]);

recipes.addShapeless(<ebwizardry:purifying_elixir>,[<ebwizardry:large_mana_flask>,<ebwizardry:astral_diamond>]);
recipes.addShapeless(<ebwizardry:identification_scroll>,[<ebwizardry:blank_scroll>,<ebwizardry:astral_diamond>]);
recipes.addShapeless(<ebwizardry:armour_upgrade>,[<ebwizardry:identification_scroll>,<ebwizardry:astral_diamond>]);

recipes.addShaped(<ebwizardry:storage_upgrade>,[[null,astral,null],[null,astral,null],[null,astral,null]]);
recipes.addShaped(<ebwizardry:siphon_upgrade>,[[null,null,astral],[null,astral,null],[astral,null,null]]);
recipes.addShaped(<ebwizardry:condenser_upgrade>,[[null,null,null],[astral,astral,astral],[null,null,null]]);
recipes.addShaped(<ebwizardry:range_upgrade>,[[null,astral,null],[null,astral,null],[null,astral,null]]);
recipes.addShaped(<ebwizardry:duration_upgrade>,[[astral,null,null],[null,astral,null],[null,null,astral]]);
recipes.addShaped(<ebwizardry:cooldown_upgrade>,[[null,null,astral],[null,null,astral],[null,null,astral]]);
recipes.addShaped(<ebwizardry:blast_upgrade>,[[astral,null,null],[astral,null,null],[astral,null,null]]);
recipes.addShaped(<ebwizardry:attunement_upgrade>,[[astral,astral,astral],[null,null,null],[null,null,null]]);
recipes.addShaped(<ebwizardry:melee_upgrade>,[[null,null,null],[null,null,null],[astral,astral,astral]]);