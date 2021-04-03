//
// ERT Outfits
//

// MEDICAL ERT OUTFITS

/datum/outfit/centcom/ert/medic/specialized
	name = "ERT Medic - Specialized"

	belt = /obj/item/storage/belt/medical/advanced
	gloves = /obj/item/clothing/gloves/combat/nitrile

/datum/outfit/centcom/ert/commander/medical
	name = "ERT Commander - Medical"

	belt = /obj/item/storage/belt/medical/advanced
	suit = /obj/item/clothing/suit/space/hardsuit/ert/commandermed
	back = /obj/item/storage/backpack/ert/medical
	glasses = /obj/item/clothing/glasses/hud/health/sunglasses
	gloves = /obj/item/clothing/gloves/combat/nitrile
	backpack_contents = list(/obj/item/storage/box/survival/engineer=1,\
		/obj/item/melee/baton/loaded=1,\
		/obj/item/gun/energy/e_gun=1,\
		/obj/item/reagent_containers/hypospray/combat/nanites=1,\
		/obj/item/gun/medbeam=1)

/datum/outfit/centcom/ert/medic/specialized/alien
	name = "ERT Medic - Alien"

	uniform = /obj/item/clothing/under/abductor
	belt = /obj/item/storage/belt/medical/alien
	backpack_contents = list(/obj/item/storage/box/survival/engineer=1,\
		/obj/item/gun/energy/alien = 1,\
		/obj/item/melee/baton/loaded=1,\
		/obj/item/reagent_containers/hypospray/combat=1,\
		/obj/item/gun/medbeam=1)

/datum/outfit/centcom/ert/medic/specialized/oath
	name = "ERT Medic - Oath"

	r_hand = /obj/item/rod_of_asclepius
	backpack_contents = list(/obj/item/storage/box/survival/engineer=1,\
		/obj/item/reagent_containers/hypospray/combat=1,\
		/obj/item/gun/medbeam=1)

/datum/outfit/centcom/ert/commander/medical/alien
	name = "ERT Commander - Medical Alien"

	uniform = /obj/item/clothing/under/abductor
	belt = /obj/item/storage/belt/medical/alien
	suit_store = /obj/item/gun/energy/alien
	backpack_contents = list(/obj/item/storage/box/survival/engineer=1,\
		/obj/item/melee/baton/loaded=1,\
		/obj/item/reagent_containers/hypospray/combat/nanites=1,\
		/obj/item/gun/medbeam=1)

/datum/outfit/centcom/ert/commander/medical/oath
	name = "ERT Commander - Medical Oath"

	r_hand = /obj/item/rod_of_asclepius
	l_pocket = /obj/item/flashlight/pen/paramedic
	backpack_contents = list(/obj/item/storage/box/survival/engineer=1,\
		/obj/item/reagent_containers/hypospray/combat/nanites=1,\
		/obj/item/gun/medbeam=1)

// SECURITY ERT OUTFITS

/datum/outfit/centcom/ert/security/specialized
	name = "ERT Security - Specialized"

	belt = /obj/item/storage/belt/security/webbing/full
	mask = /obj/item/clothing/mask/gas/sechailer

/datum/outfit/centcom/ert/commander/security
	name = "ERT Commander - Security"

	belt = /obj/item/storage/belt/security/webbing/full
	suit = /obj/item/clothing/suit/space/hardsuit/ert/commandersec
	mask = /obj/item/clothing/mask/gas/sechailer/swat
	glasses = /obj/item/clothing/glasses/thermal/eyepatch
	gloves = /obj/item/clothing/gloves/tackler/combat/insulated
	back = /obj/item/storage/backpack/ert/security
	suit_store = /obj/item/gun/energy/e_gun/stun
	backpack_contents = list(/obj/item/storage/box/survival/engineer=1,\
		/obj/item/storage/box/handcuffs=1,\
		/obj/item/melee/baton/loaded=1)

// ENGINEERING ERT OUTFITS

/datum/outfit/centcom/ert/engineer/specialized
	name = "ERT Engineer - Specialized"

	belt = /obj/item/storage/belt/utility/advanced
	mask = /obj/item/clothing/mask/gas
	suit_store = /obj/item/tank/internals/oxygen
	r_hand = /obj/item/analyzer

/datum/outfit/centcom/ert/commander/engineer
	name = "ERT Commander - Engineer"

	belt = /obj/item/storage/belt/utility/advanced
	suit = /obj/item/clothing/suit/space/hardsuit/ert/commandereng
	mask = /obj/item/clothing/mask/gas
	glasses =  /obj/item/clothing/glasses/meson/engine
	back = /obj/item/storage/backpack/ert/engineer
	suit_store = /obj/item/tank/internals/oxygen
	r_pocket = /obj/item/rcd_ammo/large
	backpack_contents = list(/obj/item/storage/box/survival/engineer=1,\
		/obj/item/melee/baton/loaded=1,\
		/obj/item/gun/energy/e_gun=1,\
		/obj/item/construction/rcd/combat=1)

// CLOWN ERT OUTFITS

/datum/outfit/centcom/ert/clown/honk
	name = "ERT Clown - Specialized"

	glasses = /obj/item/clothing/glasses/night
	backpack_contents = list(/obj/item/storage/box/hug/survival=1,\
		/obj/item/melee/transforming/energy/sword/bananium=1,\
		/obj/item/shield/energy/bananium=1)

/datum/outfit/centcom/ert/clown/honk/post_equip(mob/living/carbon/human/H, visualsOnly = FALSE) // Just to make sure
	..()
	if(visualsOnly)
		return
	var/obj/item/radio/R = H.ears
	R.keyslot = new /obj/item/encryptionkey/headset_service
	R.recalculateChannels()
	ADD_TRAIT(H, TRAIT_NAIVE, INNATE_TRAIT)
	H.dna.add_mutation(CLOWNMUT)
	for(var/datum/mutation/human/clumsy/M in H.dna.mutations)
		M.mutadone_proof = TRUE

/datum/outfit/centcom/ert/clown/commander
	name = "ERT Commander - Clown"

	glasses = /obj/item/clothing/glasses/night
	shoes = /obj/item/clothing/shoes/clown_shoes/banana_shoes/combat
	suit = /obj/item/clothing/suit/space/hardsuit/ert/clown/commander
	suit_store = /obj/item/pneumatic_cannon/pie/selfcharge
	backpack_contents = list(/obj/item/storage/box/hug/survival=1,\
		/obj/item/melee/transforming/energy/sword/bananium=1,\
		/obj/item/shield/energy/bananium=1,\
		/obj/item/storage/box/fireworks=2)

/datum/outfit/centcom/ert/clown/commander/post_equip(mob/living/carbon/human/H, visualsOnly = FALSE) // Same here
	..()
	if(visualsOnly)
		return
	var/obj/item/radio/R = H.ears
	R.keyslot = new /obj/item/encryptionkey/headset_service
	R.recalculateChannels()
	ADD_TRAIT(H, TRAIT_NAIVE, INNATE_TRAIT)
	H.dna.add_mutation(CLOWNMUT)
	for(var/datum/mutation/human/clumsy/M in H.dna.mutations)
		M.mutadone_proof = TRUE

// MINER ERT OUTFITS

/datum/outfit/centcom/ert/miner
	name = "ERT Miner"

	id = /obj/item/card/id/advanced/centcom/ert/miner
	glasses = /obj/item/clothing/glasses/meson/night
	shoes = /obj/item/clothing/shoes/bhop/combat
	suit = /obj/item/clothing/suit/space/hardsuit/ert/miner
	suit_store = /obj/item/tank/internals/oxygen
	belt = /obj/item/storage/belt/mining/advanced
	mask = /obj/item/clothing/mask/gas/explorer
	back = /obj/item/storage/backpack/ert/engineer
	l_pocket = /obj/item/gps/mining
	r_pocket = /obj/item/storage/bag/ore/holding
	backpack_contents = list(/obj/item/t_scanner/adv_mining_scanner=1,\
		/obj/item/gun/energy/kinetic_accelerator=1,\
		/obj/item/gun/energy/plasmacutter/adv=1,\
		/obj/item/storage/firstaid/regular=1,\
		/obj/item/hivelordstabilizer=3,\
		/obj/item/kitchen/knife/combat=1,\
		/obj/item/storage/box/ka_mods=1)

/datum/outfit/centcom/ert/commander/miner
	name = "ERT Commander - Mining"

	glasses = /obj/item/clothing/glasses/meson/night
	shoes = /obj/item/clothing/shoes/bhop/combat
	suit = /obj/item/clothing/suit/space/hardsuit/ert/minercommander
	suit_store = /obj/item/tank/internals/oxygen
	belt = /obj/item/storage/belt/mining/advanced
	mask = /obj/item/clothing/mask/gas/explorer
	back = /obj/item/storage/backpack/ert/engineer
	l_pocket = /obj/item/gps/mining
	r_pocket = /obj/item/storage/bag/ore/holding
	l_hand = /obj/item/kinetic_crusher
	backpack_contents = list(/obj/item/t_scanner/adv_mining_scanner=1,\
		/obj/item/gun/energy/kinetic_accelerator=1,\
		/obj/item/gun/energy/plasmacutter/adv=1,\
		/obj/item/storage/firstaid/regular=1,\
		/obj/item/hivelordstabilizer=3,\
		/obj/item/kitchen/knife/combat=1,\
		/obj/item/storage/box/kc_mods=1)
