local rewards = {
    { id = 43879, name = "Sanguine Crossbow" },
    { id = 43877, name = "Sanguine Bow" },
    { id = 43866, name = "Sanguine Cudgel" },
    { id = 43872, name = "Sanguine Bludgeon" },
    { id = 43870, name = "Sanguine Razor" },
    { id = 43864, name = "Sanguine Blade" },
    { id = 43868, name = "Sanguine Hatchet" },
    { id = 43874, name = "Sanguine Battleaxe" },
    { id = 43885, name = "Sanguine Rod" },
    { id = 43882, name = "Sanguine Coil" },
    { id = 43875, name = "Sanguine Galoshes" },
    { id = 43886, name = "Sanguine Boots" },
    { id = 43881, name = "Sanguine Greaves" },
    { id = 43876, name = "Sanguine Legs" }

}

local primalBag = Action()

function primalBag.onUse(player, item, fromPosition, target, toPosition, isHotkey)
	local randId = math.random(1, #rewards)
	local rewardItem = rewards[randId]

	player:addItem(rewardItem.id, 1)
	item:remove(1)

	player:sendTextMessage(MESSAGE_EVENT_ADVANCE, 'You received one ' .. rewardItem.name .. '.')
	return true
end

primalBag:id(43860)
primalBag:register()
