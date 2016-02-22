nssm:register_mob("nssm:werewolf", {
	type = "monster",
	hp_max = 30,
	hp_min = 25,
	collisionbox = {-0.85, -0.01, -0.85, 0.85, 3.50, 0.85},
	visual = "mesh",
	mesh = "werewolf.x",
	textures = {{"werewolf.png"}},
	visual_size = {x=4, y=4},
	makes_footstep_sound = true,
	view_range = 30,
	walk_velocity = 3,
	run_velocity = 5,
    sounds = {
		random = "werewolf",
	},
	damage = 4,
	jump = true,
	drops = {
		{name = "nssm:life_energy",
		chance = 1,
		min = 3,
		max = 4},
		{name = "nssm:werewolf_leg",
		chance = 2,
		min = 1,
		max = 2},
		{name = "nssm:wolf_fur",
		chance = 2,
		min = 1,
		max = 1},
    },
	armor = 100,
	drawtype = "front",
	water_damage = 2,
	lava_damage = 5,
	light_damage = 0,
	on_rightclick = nil,
	attack_type = "dogfight",
	animation = {
		speed_normal = 15,
		speed_run = 25,
		stand_start = 1,
		stand_end = 60,
		walk_start = 90,
		walk_end = 130,
		run_start = 140,
		run_end = 160,
		punch_start = 170,
		punch_end = 193,
    }
})
