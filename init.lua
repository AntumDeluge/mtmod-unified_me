--[[ LICENSE HEADER
  
  MIT Licensing (see LICENSE.txt)
  
  Copyright © 2017 Jordan Irwin
  
--]]


unimobiles = {}
unimobiles.modname = minetest.get_current_modname()
unimobiles.modpath = minetest.get_modpath(unimobiles.modname)


dofile(unimobiles.modpath .. '/init_mobs_redo.lua')
