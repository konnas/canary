local mType = Game.createMonsterType("Lava Golem")
local monster = {}

monster.description = "a lava golem"
monster.experience = 60
monster.outfit = {
	lookType = 491,
	lookHead = 0,
	lookBody = 0,
	lookLegs = 0,
	lookFeet = 0,
	lookAddons = 0,
	lookMount = 0
}

monster.raceId = 884
monster.Bestiary = {
	class = "Construct",
	race = BESTY_RACE_CONSTRUCT,
	toKill = 2500,
	FirstUnlock = 100,
	SecondUnlock = 1000,
	CharmsPoints = 50,
	Stars = 4,
	Occurrence = 1,
	Locations = "Warzone 2."
	}

monster.health = 9000
monster.maxHealth = 9000
monster.race = "fire"
monster.corpse = 15988
monster.speed = 210
monster.manaCost = 0

monster.changeTarget = {
	interval = 5000,
	chance = 0
}

monster.strategiesTarget = {
	nearest = 80,
	random = 20,
}

monster.flags = {
	summonable = false,
	attackable = true,
	hostile = true,
	convinceable = false,
	pushable = false,
	rewardBoss = false,
	illusionable = false,
	canPushItems = true,
	canPushCreatures = true,
	staticAttackChance = 90,
	targetDistance = 1,
	runHealth = 0,
	healthHidden = false,
	isBlockable = false,
	canWalkOnEnergy = false,
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
	{text = "Grrrrunt", yell = false}
}

monster.loot = {
	{name = "gold coin", chance = 100000, maxCount = 199}
}

monster.attacks = {
	{name ="melee", interval = 2000, chance = 100, minDamage = 0, maxDamage = -100},
	{name ="combat", interval = 2000, chance = 15, type = COMBAT_FIREDAMAGE, minDamage = -0, maxDamage = -80, length = 8, spread = 3, effect = CONST_ME_FIREATTACK, target = false},
	{name ="combat", interval = 2000, chance = 10, type = COMBAT_MANADRAIN, minDamage = -0, maxDamage = -70, length = 8, spread = 3, effect = CONST_ME_MORTAREA, target = false},
	{name ="lava golem soulfire", interval = 2000, chance = 15, target = false},
	{name ="combat", interval = 2000, chance = 15, type = COMBAT_FIREDAMAGE, minDamage = -0, maxDamage = -80, radius = 4, effect = CONST_ME_FIREAREA, target = true},
	{name ="speed", interval = 2000, chance = 10, speedChange = -800, length = 5, spread = 3, effect = CONST_ME_BLOCKHIT, target = false, duration = 30000},
	{name ="combat", interval = 2000, chance = 30, type = COMBAT_FIREDAMAGE, minDamage = -0, maxDamage = -120, radius = 3, effect = CONST_ME_HITBYFIRE, target = false}
}

monster.defenses = {
	defense = 60,
	armor = 60
}

monster.elements = {
	{type = COMBAT_PHYSICALDAMAGE, percent = 30},
	{type = COMBAT_ENERGYDAMAGE, percent = 30},
	{type = COMBAT_EARTHDAMAGE, percent = 100},
	{type = COMBAT_FIREDAMAGE, percent = 100},
	{type = COMBAT_LIFEDRAIN, percent = 0},
	{type = COMBAT_MANADRAIN, percent = 0},
	{type = COMBAT_DROWNDAMAGE, percent = 0},
	{type = COMBAT_ICEDAMAGE, percent = -5},
	{type = COMBAT_HOLYDAMAGE , percent = 0},
	{type = COMBAT_DEATHDAMAGE , percent = 35}
}

monster.immunities = {
	{type = "paralyze", condition = true},
	{type = "outfit", condition = false},
	{type = "invisible", condition = true},
	{type = "bleed", condition = false}
}

mType:register(monster)
