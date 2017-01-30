--[[	settings.lua
Welcome to the settings file,
where you can set different parameters for the mod!
This is a .lua file, so comment is needed.
]]

--say that we are loading
print("M.I.L.A " ..mila.version..": Settings file found, loading...")

-- 1 for realistic blood, 2 for blood trail, 3 for the masive butchery and 4 to disable:
mila.bleed_type = 1

--say true to active, other words are counted as false:
mila.egg = true

-- step counter
mila.globalcounter = 0.2


--say that we are ready!
print("M.I.L.A " ..mila.version..": Settings file fully loaded, have fun!")
