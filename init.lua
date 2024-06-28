local function check_player(player)
    local name = player:get_player_name()
    local controls = player:get_player_control()
    local privs = minetest.get_player_privs(name) -- I might use this later for privs...

    if controls.aux1 then
        player:set_physics_override({speed = 1.8})
    elseif not controls.aux1 then
        player:set_physics_override({speed = 1})
    end
end

minetest.register_globalstep(function(dtime)
    for _, player in ipairs(minetest.get_connected_players()) do
        check_player(player)
    end
end)