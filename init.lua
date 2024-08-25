local function set_speed(player)
    local controls = player:get_player_control()
    local current_physics = player:get_physics_override()
    local current_speed = current_physics.speed or 1.0

    if controls.aux1 then
        player:set_physics_override({speed = current_speed + 0.8})
    else
        player:set_physics_override({speed = current_speed})
    end
end

minetest.register_globalstep(function(dtime)
    for _, player in ipairs(minetest.get_connected_players()) do
        set_speed(player)
    end
end)
