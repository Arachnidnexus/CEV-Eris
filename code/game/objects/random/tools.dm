/obj/random/tool
	name = "random tool"
	icon_state = "tool-grey"
	spawn_nothing_percentage = 15
	has_postspawn = TRUE

/obj/random/tool/item_to_spawn()
	return pickweight(list(/obj/random/rare = 1,
				/obj/item/weapon/tool/screwdriver = 10,
				/obj/item/weapon/tool/screwdriver/electric = 3,
				/obj/item/weapon/tool/screwdriver/combi_driver = 1,
				/obj/item/weapon/tool/wirecutters = 10,
				/obj/item/weapon/tool/wirecutters/armature = 3,
				/obj/item/weapon/tool/weldingtool = 10,
				/obj/item/weapon/tool/weldingtool/advanced = 3,
				/obj/item/weapon/tool/omnitool = 0.5,
				/obj/item/weapon/tool/crowbar = 15,
				/obj/item/weapon/tool/crowbar/pneumatic = 3,
				/obj/item/weapon/tool/wrench = 10,
				/obj/item/weapon/tool/wrench/big_wrench = 3,
				/obj/item/weapon/tool/saw = 10,
				/obj/item/weapon/tool/saw/circular = 3,
				/obj/item/weapon/tool/saw/advanced_circular = 1,
				/obj/item/weapon/tool/saw/chain = 0.5,
				/obj/item/weapon/tool/shovel = 5,
				/obj/item/weapon/tool/shovel/spade = 2.5,
				/obj/item/weapon/tool/pickaxe = 3,
				/obj/item/weapon/tool/pickaxe/jackhammer = 1,
				/obj/item/weapon/tool/pickaxe/drill = 1,
				/obj/item/weapon/tool/pickaxe/diamonddrill = 0.5,
				/obj/item/weapon/tool/pickaxe/excavation = 1,
				/obj/item/weapon/tool/tape_roll = 14,
				/obj/item/weapon/tool/tape_roll/fiber = 2,
				/obj/item/weapon/storage/belt/utility = 5,
				/obj/item/weapon/storage/belt/utility/full = 1,
				/obj/item/clothing/gloves/insulated/cheap = 5,
				/obj/item/clothing/head/welding = 5,
				/obj/item/weapon/extinguisher = 5,
				/obj/item/device/t_scanner = 2,
				/obj/item/device/export_scanner = 2,
				/obj/item/device/antibody_scanner = 1,
				/obj/item/device/destTagger = 1,
				/obj/item/device/scanner/analyzer/plant_analyzer = 1,
				/obj/item/weapon/autopsy_scanner = 1,
				/obj/item/device/scanner/healthanalyzer = 3,
				/obj/item/device/scanner/mass_spectrometer = 1,
				/obj/item/device/robotanalyzer = 1,
				/obj/item/device/gps = 3,
				/obj/item/device/scanner/analyzer = 2,
				/obj/item/stack/cable_coil = 5,
				/obj/item/weapon/weldpack/canister = 2,
				/obj/item/weapon/packageWrap = 1,
				/obj/item/device/flash = 2,
				/obj/item/weapon/mop = 5,
				/obj/item/weapon/inflatable_dispenser = 3,
				/obj/item/weapon/grenade/chem_grenade/cleaner = 2,
				/obj/item/device/lighting/toggleable/flashlight = 10,
				/obj/random/voidsuit/damaged = 2,
				/obj/random/voidsuit = 0.5,
				/obj/random/pouch = 3))


//Randomly spawned tools will often be in imperfect condition
/obj/random/tool/post_spawn(var/list/spawns)
	for (var/obj/item/weapon/tool/T in spawns)
		if (T.degradation && prob(40))
			T.unreliability += T.degradation * 25 //50 uses worth of damage, this is fairly mild
			if (prob(30))
				T.unreliability += T.degradation * 25 //Roughly 13% chance to be moderately damaged

/obj/random/tool/low_chance
	name = "low chance random tool"
	icon_state = "tool-grey-low"
	spawn_nothing_percentage = 60


/obj/random/tool/advanced
	name = "random advanced tool"

/obj/random/tool/advanced/item_to_spawn()
	return pickweight(list(
				/obj/item/weapon/tool/screwdriver/combi_driver = 3,
				/obj/item/weapon/tool/wirecutters/armature = 3,
				/obj/item/weapon/tool/omnitool = 2,
				/obj/item/weapon/tool/crowbar/pneumatic = 3,
				/obj/item/weapon/tool/wrench/big_wrench = 3,
				/obj/item/weapon/tool/weldingtool/advanced = 3,
				/obj/item/weapon/tool/saw/advanced_circular = 2,
				/obj/item/weapon/tool/saw/chain = 1,
				/obj/item/weapon/tool/pickaxe/diamonddrill = 2,
				/obj/item/weapon/tool/tape_roll/fiber = 2))

/obj/random/toolbox
	name = "random toolbox"
	icon_state = "box-green"

/obj/random/toolbox/item_to_spawn()
	return pickweight(list(/obj/item/weapon/storage/toolbox/mechanical = 3,
				/obj/item/weapon/storage/toolbox/electrical = 2,
				/obj/item/weapon/storage/toolbox/emergency = 1))

/obj/random/toolbox/low_chance
	name = "low chance random toolbox"
	icon_state = "box-green-low"
	spawn_nothing_percentage = 60
