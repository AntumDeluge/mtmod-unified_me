mobs:register_mob("nssm:mordain", {
	type = "monster",
	hp_max = 23,
	hp_min = 17,
	collisionbox = {-0.5, -0.2, -0.5, 0.5, 2.7, 0.5},
	visual = "mesh",
	mesh = "mordain.x",
	textures = {{"mordain.png"}},
	visual_size = {x=4, y=4},
	makes_footstep_sound = false,
	view_range = 30,
	fear_height = 4,
	walk_velocity = 2.5,
	run_velocity = 3.5,
    rotate = 270,
    --[[sounds = {
		random = "bloco",
	},]]
	damage = 2,
	jump = true,
	drops = {
		{name = "nssm:life_energy",
		chance = 1,
		min = 1,
		max = 1,},
	},
	armor = 70,
	drawtype = "front",
	water_damage = 0,
	lava_damage = 1,
	--light_damage = 2,
	on_rightclick = nil,
	attack_type = "dogfight",
	animation = {
		speed_normal = 20,
		speed_run = 20,
		stand_start = 10,
		stand_end = 90,
		walk_start = 100,
		walk_end = 140,
		run_start = 170,
		run_end = 200,
		punch_start = 210,
		punch_end = 225,
	},
	custom_attack = function(self)
		if self.timer > 1 then
			self.timer = 0
			local s = self.object:getpos()
			local p = self.attack:getpos()

			if minetest.line_of_sight({x = p.x, y = p.y +1.5, z = p.z}, {x = s.x, y = s.y +1.5, z = s.z}) == true then
				-- play attack sound
				if self.sounds.attack then
					minetest.sound_play(self.sounds.attack, {
						object = self.object,
						max_hear_distance = self.sounds.distance
					})
				end
				-- punch player
				self.attack:punch(self.object, 1.0,  {
					full_punch_interval=1.0,
					damage_groups = {fleshy=self.damage}
				}, nil)
			end

			minetest.after(1, function()
				local ty = s.y
				local flag = 0
				local m = 3

				local v = {x=(p.x-s.x)*m, y = ty, z = (p.z-s.z)*m}
				local d = {x=s.x+v.x, y = ty, z = s.z+v.z}

				d.y = ty

				for j = -3,3 do
					ty = d.y + j
					local current = minetest.env:get_node({x = d.x, y = ty, z = d.z}).name
					local up = minetest.env:get_node({x = d.x, y = ty+1, z = d.z}).name
					if up == "air" and current ~= "air" then
						d.y = d.y + j+1.5
						flag = 1
						break
					end
				end

				while flag ~= 1 do
					d.x = p.x + math.random(-m,m)
					d.z = p.z + math.random(-m,m)
					d.y = p.y
					local dist = nssm:dist_pos(d, p)
					if dist>=2 then
						for j = -3,3 do
							ty = d.y + j
							local current = minetest.env:get_node({x = d.x, y = ty, z = d.z}).name
							local up = minetest.env:get_node({x = d.x, y = ty+1, z = d.z}).name
							if up == "air" and current ~= "air" then
								d.y = d.y + j+1.5
								flag = 1
								break
							end
						end
					end
				end
				self.object:setpos(d)
				self.timer = 2
			end)
		end
	end
})
