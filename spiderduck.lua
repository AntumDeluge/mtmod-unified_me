nssm:register_mob("nssm:spiderduck", {
	type = "monster",
	hp_max = 25,
	hp_min = 24,
	collisionbox = {-0.6, -0.8, -0.6, 0.6, 0.4, 0.5},
	visual = "mesh",
	rotate = 270,
	mesh = "spiderduck.x",
	textures = {{"spiderduck.png"}},
	visual_size = {x=2, y=2},
	makes_footstep_sound = true,
	view_range = 24,
	walk_velocity = 2,
	run_velocity = 4,
    sounds = {
		random = "duck",
	},
	damage = 4,
	jump = true,
	drops = {
		{name = "nssm:life_energy",
		chance = 1,
		min = 1,
		max = 2,},
		{name = "nssm:duck_legs",
		chance = 1,
		min = 1,
		max = 8,},
		{name = "nssm:web",
		chance = 2,
		min = 1,
		max = 2,},
		{name = "nssm:duck_beak",
		chance = 5,
		min = 1,
		max = 1,},
	},
	armor = 100,
	drawtype = "front",
	water_damage = 2,
	lava_damage = 5,
	light_damage = 0,
	on_rightclick = nil,
	dogshoot_stop = true,
	attack_type = "dogshoot",
    arrow = "nssm:webball",
    reach = 2,
    shoot_interval = 2,
    shoot_offset = 1,
	animation = {
		speed_normal = 25,
		speed_run = 35,
		stand_start = 60,
		stand_end = 140,
		walk_start = 220,
		walk_end = 260,
		run_start = 220,
		run_end = 260,
		punch_start = 20,
		punch_end = 46,
		dattack_start = 150,
		dattack_end = 200,
	}
})
