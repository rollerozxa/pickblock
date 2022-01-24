
minetest.override_item("", {
	on_place = function(itemstack, placer, pointed_thing)
		if minetest.is_creative_enabled(placer:get_player_name()) then
			local pointed_node = minetest.get_node(pointed_thing.under)
			return pointed_node
		end
	end
})
