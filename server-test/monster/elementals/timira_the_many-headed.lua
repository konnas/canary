local mType = Game.createMonsterType("Timira the Many-Headed")
local monster = {}

monster.description = "a timira the many-headed"
monster.experience = 35000
monster.outfit = {
	lookType = 1542,
	lookHead = 0,
	lookBody = 0,
	lookLegs = 0,
	lookFeet = 0,
	lookAddons = 0,
	lookMount = 0
}

monster.health = 50000
monster.maxHealth = 50000
monster.race = "blood"
monster.corpse = 9582
monster.speed = 87
monster.manaCost = 0

monster.changeTarget = {
	interval = 4000,
	chance = 10
}

monster.bosstiary = {
	bossRaceId = 1801, -- or 1804 need test
	bossRace = RARITY_ARCHFOE,
	storageCooldown = Storage.GraveDanger.CobraBastion.ScarlettTimer
}

monster.strategiesTarget = {
	nearest = 70,
	health = 10,
	damage = 10,
	random = 10,
}

monster.flags = {
	summonable = false,
	attackable = true,
	hostile = true,
	convinceable = false,
	pushable = false,
	rewardBoss = true,
	illusionable = false,
	canPushItems = true,
	canPushCreatures = true,
	staticAttackChance = 90,
	targetDistance = 1,
	runHealth = 0,
	healthHidden = false,
	isBlockable = false,
	canWalkOnEnergy = true,
	canWalkOnFire = true,
	canWalkOnPoison = true
}

monster.light = {
	level = 0,
	color = 0
}

monster.voices = {
	interval = 5000,
	chance = 10,
}

monster.loot = {
	{name = "Crystal Coin", chance = 87000, maxCount = 6},
	{name = "Mastermind Potion", chance = 37000, maxCount = 5},
	{name = "Berserk Potion", chance = 37000, maxCount = 5},
	{name = "Bullseye Potion", chance = 37000, maxCount = 5},
	{name = "ultimate mana potion", chance = 48150, maxCount = 14},
	{name = "ultimate health potion", chance = 48150, maxCount = 13},
	{name = "Giant Sapphire", chance = 16600},
	{name = "Giant Emerald", chance = 1100},
	{name = "Giant Topaz", chance = 9000},
	{name = "Giant Amethyst", chance = 8500},
	{name = "silver token", chance = 60000, maxCount = 4},
	{name = "Midnight Tunic", chance = 1500},
	{name = "Midnight Sarong", chance = 1500},
	{name = "Naga Sword", chance = 1000},
	{name = "Naga Axe", chance = 1000},
	{name = "Naga Club", chance = 1000},
	{name = "Naga Wand", chance = 1000},
	{name = "Naga Rod", chance = 1000},
	{name = "Naga Crossbow", chance = 1000},
	{name = "Naga Quiver", chance = 1000},
	{name = "Dawnfire Sherwani", chance = 1000},
	{name = "Dawnfire Pantaloons", chance = 1000},
	{name = "Turtle Amulet", chance = 500},
	{name = "Feverbloom Boots", chance = 1500},
	{name = "Frostflower Boots", chance = 1500}
}

monster.attacks = {
	{name ="melee", interval = 2000, chance = 100, minDamage = 0, maxDamage = -480, condition = {type = CONDITION_POISON, totalDamage = 700, interval = 4000}},
	{name ="combat", interval = 2000, chance = 15, type = COMBAT_DROWNDAMAGE, minDamage = -330, maxDamage = -450, range = 7, radius = 2, effect = CONST_ME_LOSEENERGY, target = true},
	{name ="combat", interval = 2000, chance = 20, type = COMBAT_ICEDAMAGE, minDamage = -470, maxDamage = -810, range = 7, shootEffect = CONST_ANI_SMALLICE, target = false},
	-- poison
	{name ="condition", type = CONDITION_POISON, interval = 2000, chance = 20, minDamage = -355, maxDamage = -1000, radius = 5, effect = CONST_ME_POISONAREA, target = false}
}

monster.defenses = {
	defense = 88,
	armor = 88
}

monster.elements = {
	{type = COMBAT_PHYSICALDAMAGE, percent = 0},
	{type = COMBAT_ENERGYDAMAGE, percent = 0},
	{type = COMBAT_EARTHDAMAGE, percent = 0},
	{type = COMBAT_FIREDAMAGE, percent = 0},
	{type = COMBAT_LIFEDRAIN, percent = 0},
	{type = COMBAT_MANADRAIN, percent = 0},
	{type = COMBAT_DROWNDAMAGE, percent = 0},
	{type = COMBAT_ICEDAMAGE, percent = 0},
	{type = COMBAT_HOLYDAMAGE , percent = 0},
	{type = COMBAT_DEATHDAMAGE , percent = 0}
}

monster.immunities = {
	{type = "paralyze", condition = true},
	{type = "outfit", condition = false},
	{type = "invisible", condition = true},
	{type = "bleed", condition = false}
}

mType.onThink = function(monster, interval)
end

mType.onAppear = function(monster, creature)
	if monster:getType():isRewardBoss() then
		monster:setReward(true)
	end
end

mType.onDisappear = function(monster, creature)
end

mType.onMove = function(monster, creature, fromPosition, toPosition)
end

mType.onSay = function(monster, creature, type, message)
end

mType:register(monster)

