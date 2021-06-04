/mob/living/simple_animal/hostile/retaliate/tzimisce_twoarmed
	name = "two-armed abomination"
	desc = "Furry and black, it makes you shudder to look at it. This one has abyssal red eyes."
	icon = 'icons/mob/animal.dmi' // Placeholder until actual sprite
	icon_state = "tarantula"
	icon_living = "tarantula"
	icon_dead = "tarantula_dead"
	maxHealth = 75
	health = 75
	melee_damage_lower = 15
	melee_damage_upper = 20
	melee_damage_type = BURN
	attack_verb_continuous = list("claws", "slashes")
	attack_verb_simple = list("claw", "slash")
	speed = 0
	turns_per_move = 5
	see_in_dark = 4
	attack_vis_effect = ATTACK_EFFECT_CLAW
	initial_language_holder = /datum/language_holder/vampiric_mob
	damage_coeff = list(BRUTE = 0.4, BURN = 0.7, TOX = 0, CLONE = 0, STAMINA = 0, OXY = 1)

/mob/living/simple_animal/hostile/retaliate/tzimisce_twoarmed/examinate(atom/A, mob/living/carbon/human/user)
	. = ..()
	var/datum/antagonist/bloodsucker/bloodsuckerdatum = IS_BLOODSUCKER(user)
	if(bloodsuckerdatum.my_clan == CLAN_TZIMISCE)
		. += {"<span class='cult'>These are grotesque creatures composed of our victims.</span>"}
		. += {"<span class='cult'>This type of creature is relatively fast and able to be mass-produced, and can ventcrawl.</span>"}
		. += {"<span class='cult'>They're able to lunge at people to knock them down, and their claws deal burn damage.</span>"}

