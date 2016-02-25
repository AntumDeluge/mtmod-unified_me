nssm:register_mob("nssm:enderduck", {
	type = "monster",
	hp_max = 20,
	hp_min = 18,
	collisionbox = {-0.28, 0.00, -0.28, 0.28, 1.8, 0.28},
	visual = "mesh",
	mesh = "enderduck.x",
	textures = {{"enderduck.png"}},
	visual_size = {x=2, y=2},
	makes_footstep_sound = true,
	view_range = 25,
	walk_velocity = 3,
	run_velocity = 3.9,
	rotate = 270,
  sounds = {
		random = "duck",
	},
	damage = 3,
	jump = true,
	drops = {
		{name = "nssm:life_energy",
		chance = 1,
		min = 1,
		max = 2},
        {name = "nssm:duck_legs",
		chance = 1,
		min = 1,
		max = 2},
		{name = "nssm:duck_beak",
		chance = 5,
		min = 1,
		max = 1,},
	},
	armor = 100,
	drawtype = "front",
	water_damage = 1,
	floats=1,
	lava_damage = 5,
	light_damage = 0,
	on_rightclick = nil,
	attack_type = "dogfight",
	animation = {
		speed_normal = 15,
		speed_run = 30,
		stand_start = 1,
		stand_end = 40,
		walk_start = 100,
		walk_end = 130,
		run_start = 100,
		run_end = 130,
		punch_start = 60,
		punch_end = 90,
	}
})