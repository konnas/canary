local mType = Game.createMonsterType("Bakragore")
local monster = {}

monster.description = "a bakragore"
monster.experience = 50000000
monster.outfit = {
	lookType = 1671,
	lookHead = 0,
	lookBody = 0,
	lookLegs = 0,
	lookFeet = 0,
	lookAddons = 0,
	lookMount = 0
}

monster.health = 350000
monster.maxHealth = 350000
monster.race = "fire"
monster.corpse = 5995
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

monster.summon = {
	maxSummons = 2,
	summons = {
		{name = "bloodjaw", chance = 10, interval = 1000, count = 4}
	}
}

monster.voices = {
	interval = 5000,
	chance = 10,
	{text = "PRAISED BE MY MASTERS, THE RUTHLESS SEVEN!", yell = false},
	{text = "YOU ARE DOOMED!", yell = false},
	{text = "BAKRAGORE IS BACK!", yell = false},
	{text = "Be prepared for the day my masters will come for you!", yell = false},
	{text = "SOULS FOR BAKRAGORE!", yell = false}
}

monster.loot = {
	{name = "Sanguine Bow", chance = 1500},
	{name = "Sanguine Crossbow", chance = 1500},
	{name = "Sanguine Bludgeon", chance = 1500},
	{name = "Sanguine Cudgel", chance = 1500},
	{name = "Sanguine Blade", chance = 1500},
	{name = "Sanguine Razor", chance = 1500},
	{name = "Sanguine Battleaxe", chance = 1500},
	{name = "Sanguine Hatchet", chance = 1500},
	{name = "Sanguine Rod", chance = 1500},
	{name = "Sanguine Coil", chance = 1500},
	{name = "Sanguine Legs", chance = 1500},
	{name = "Sanguine Greaves", chance = 1500},
	{name = "Sanguine Galoshes", chance = 1500},
	{name = "Sanguine Boots", chance = 1500},
	{id = 43860, chance = 500}, -- bag you covet
	{name = "platinum coin", chance = 87000, maxCount = 33},
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
	{name = "silver token", chance = 60000, maxCount = 4},
	{name = "gold ingot", chance = 5000},
	{name = "giant sapphire", chance = 4800},
	{name = "Sliver", chance = 30000, minCount = 10, maxCount = 25},
	{name = "Exalted Core", chance = 30000, minCount = 3, maxCount = 10},
	{name = "tainted heart", chance = 50000, minCount = 27, maxCount = 77},
	{name = "crystal coin", chance = 99999, maxCount = 180}
}

monster.attacks = {
	{name ="melee", interval = 2000, chance = 100, minDamage = 650, maxDamage = -4000},
	{name ="combat", interval = 2000, chance = 30, type = COMBAT_PHYSICALDAMAGE, minDamage = 750, maxDamage = -1400, range = 7, radius = 3, shootEffect = CONST_ANI_DEATH, effect = CONST_ME_MORTAREA, target = true},
	{name ="combat", interval = 2000, chance = 10, type = COMBAT_DEATHDAMAGE, minDamage = -700, maxDamage = -1500, length = 8, spread = 3, effect = CONST_ME_INSECTS, target = false},
	{name ="singlecloudchain", interval = 6000, chance = 40, minDamage = -700, maxDamage = -1700, range = 6, effect = CONST_ME_ENERGYHIT, target = true},
	{name ="combat", interval = 2000, chance = 10, type = COMBAT_DEATHDAMAGE, minDamage = -700, maxDamage = -1800, length = 10, spread = 0, effect = CONST_ME_BLUE_GHOST, target = false},
}

monster.defenses = {
	defense = 160,
	armor = 160,
	{name ="speed", interval = 1000, chance = 20, speedChange = 100, effect = CONST_ME_MAGIC_RED, target = false, duration = 30000},
	{name ="combat", interval = 2000, chance = 25, type = COMBAT_HEALING, minDamage = 350, maxDamage = 1250, effect = CONST_ME_MAGIC_BLUE, target = false},
}

monster.elements = {
	{type = COMBAT_PHYSICALDAMAGE, percent = 0},
	{type = COMBAT_ENERGYDAMAGE, percent = 0},
	{type = COMBAT_EARTHDAMAGE, percent = 0},
	{type = COMBAT_FIREDAMAGE, percent = 100},
	{type = COMBAT_LIFEDRAIN, percent = 0},
	{type = COMBAT_MANADRAIN, percent = 0},
	{type = COMBAT_DROWNDAMAGE, percent = 0},
	{type = COMBAT_ICEDAMAGE, percent = -50},
	{type = COMBAT_HOLYDAMAGE , percent = -60},
	{type = COMBAT_DEATHDAMAGE , percent = -35}
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
