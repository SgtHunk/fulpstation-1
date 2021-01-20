/datum/surgery/robot_restore_looks
	name = "Restore chassis looks"
	steps = list(
	/datum/surgery_step/weld_plating,
	/datum/surgery_step/restore_paintjob)

	requires_bodypart_type = BODYPART_ROBOTIC
	possible_locs = list(BODY_ZONE_CHEST)
	desc = "A procedure that welds the robotic limbs back into the patient's preferred state aswell as re-applying their paintjob."

/datum/surgery_step/restore_paintjob
	name = "spray paint"
	implements = list(
		/obj/item/toy/crayon/spraycan = 100)
	time = 58

/datum/surgery_step/restore_paintjob/tool_check(mob/user, obj/item/tool)
	var/obj/item/toy/crayon/spraycan/sc = tool
	if(sc.is_capped)
		to_chat(user, "<span class='warning'>Take the cap off first!</span>")
		return FALSE
	if(sc.charges < 10)
		to_chat(user, "<span class='warning'>Not enough paint in the can!</span>")
		return FALSE
	return TRUE

/datum/surgery_step/restore_paintjob/success(mob/user, mob/living/carbon/target, target_zone, obj/item/tool, datum/surgery/surgery)
	var/obj/item/toy/crayon/spraycan/sc = tool
	sc.use_charges(user, 10, FALSE)
	sc.audible_message("<span class='notice'>You hear spraying.</span>")
	playsound(target.loc, 'sound/effects/spray.ogg', 5, 1, 5)
	if(target?.dna?.species)
		for(var/obj/item/bodypart/O in target.bodyparts)
			if(O.status == BODYPART_ROBOTIC)
				O.rendered_bp_icon = target.dna.species.limbs_icon
				O.species_id = target.dna.species.limbs_id
				O.update_limb(O,target)
		target.update_body()
	return TRUE

/datum/surgery_step/restore_paintjob/preop(mob/user, mob/living/carbon/target, target_zone, obj/item/tool, datum/surgery/surgery)
	display_results(user, target, "<span class='notice'>You begin to spray paint on [target]...</span>",
			"[user] begins to spray paint on [target]'s [parse_zone(target_zone)].",
			"[user] begins to spray paint on [target]'s [parse_zone(target_zone)].")
