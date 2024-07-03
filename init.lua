local function set_speed(player)
    local name = player:get_player_name()
    local controls = player:get_player_control()

    if controls.aux1 then
        player:set_physics_override({speed = 1.8})
        elseif not controls.aux1 then
            player:set_physics_override({speed = 1})
    end
end

minetest.register_globalstep(function(dtime)
    for _, player in ipairs(minetest.get_connected_players()) do
        set_speed(player)
    end
end)