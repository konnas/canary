local mType = Game.createMonsterType("Basilisk Illusion")
local monster = {}

monster.description = "a Basilisk illusion"
monster.experience = 10000000
monster.outfit = {
	lookType = 28,
	lookHead = 0,
	lookBody = 0,
	lookLegs = 0,
	lookFeet = 0,
	lookAddons = 0,
	lookMount = 0
}

monster.health = 12000000
monster.maxHealth = 12000000
monster.race = "blood"
monster.corpse = 6061
monster.speed = 270
monster.manaCost = 0

monster.changeTarget = {
	interval = 2000,
	chance = 10
}

monster.bosstiary = {
	bossRaceId = 201,
	bossRace = RARITY_NEMESIS
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
	staticAttackChance = 95,
	targetDistance = 1,
	runHealth = 2500,
	healthHidden = false,
	isBlockable = false,
	canWalkOnEnergy = false,
	canWalkOnFire = false,
	canWalkOnPoison = false
}

monster.light = {
	level = 0,
	color = 0
}



monster.loot = {
	{name = "platinum coin", chance = 87000, maxCount = 200},
	{name = "green gem", chance = 85000},
	{name = "supreme health potion", chance = 53700, maxCount = 14},
	{name = "ultimate mana potion", chance = 48150, maxCount = 20},
	{id= 3039, chance = 42500}, -- red gem
	{name = "ultimate spirit potion", chance = 34000, maxCount = 6},
	{name = "yellow gem", chance = 29600, maxCount = 2},
	{name = "royal star", chance = 26600, maxCount = 100},
	{id = 281, chance = 24000}, -- giant shimmering pearl (green)
	{name = "berserk potion", chance = 20300, maxCount = 10},
	{name = "blue gem", chance = 18500, maxCount = 2},
	{name = "bullseye potion", chance = 18500, maxCount = 10},
	{name = "Giant Amethyst", chance = 16600},
	{name = "Giant Emerald", chance = 11000},
	{name = "Giant Topaz", chance = 9200},
	{name = "violet gem", chance = 9000},
	{name = "darklight heart", chance = 1200, maxCount = 2},
	{name = "silver token", chance = 60000, maxCount = 40},
	{name = "gold ingot", chance = 5000},
	{name = "giant sapphire", chance = 4800},
	{name = "Sliver", chance = 50000},
	{name = "Exalted Core", chance = 50000},
	{name = "crystal coin", chance = 99999, maxCount = 30}
}

monster.attacks = {
	{name ="melee", interval = 2000, chance = 100, minDamage = 0, maxDamage = -1200},
	{name ="combat", interval = 2000, chance = 20, type = COMBAT_EARTHDAMAGE, minDamage = -1000, maxDamage = -1600, range = 7, shootEffect = CONST_ANI_POISON, target = false},
	{name ="outfit", interval = 2000, chance = 1, range = 7, effect = CONST_ME_MAGIC_BLUE, target = false, duration = 3000, outfitItem = 28},
	{name ="speed", interval = 2000, chance = 25, speedChange = -850, range = 7, radius = 4, shootEffect = CONST_ANI_POISON, effect = CONST_ME_GREEN_RINGS, target = true, duration = 12000},
	{name ="combat", interval = 2000, chance = 10, type = COMBAT_LIFEDRAIN, minDamage = -900, maxDamage = -1800, length = 8, spread = 3, effect = CONST_ME_SOUND_RED, target = false},
	{name ="combat", interval = 2000, chance = 10, type = COMBAT_EARTHDAMAGE, minDamage = -1000, maxDamage = -1800, length = 8, spread = 3, effect = CONST_ME_POISONAREA, target = false}
}

monster.defenses = {
	defense = 160,
	armor = 160,
	{name ="combat", interval = 2000, chance = 15, type = COMBAT_HEALING, minDamage = 2000, maxDamage = 5000, effect = CONST_ME_MAGIC_BLUE, target = false},
	{name ="speed", interval = 2000, chance = 15, speedChange = 340, effect = CONST_ME_MAGIC_RED, target = false, duration = 5000}
}

monster.elements = {
	{type = COMBAT_PHYSICALDAMAGE, percent = -250},
	{type = COMBAT_ENERGYDAMAGE, percent = 200},
	{type = COMBAT_EARTHDAMAGE, percent = 200},
	{type = COMBAT_FIREDAMAGE, percent = -5000},
	{type = COMBAT_LIFEDRAIN, percent = 0},
	{type = COMBAT_MANADRAIN, percent = 0},
	{type = COMBAT_DROWNDAMAGE, percent = 0},
	{type = COMBAT_ICEDAMAGE, percent = -3000},
	{type = COMBAT_HOLYDAMAGE , percent = -4000},
	{type = COMBAT_DEATHDAMAGE , percent = -3500}
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
