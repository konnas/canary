local mType = Game.createMonsterType("Walking Pillar")
local monster = {}

monster.description = "a walking pillar"
monster.experience = 30500
monster.outfit = {
	lookType = 1656,
	lookHead = 114,
	lookBody = 80,
	lookLegs = 94,
	lookFeet = 78,
	lookAddons = 0,
	lookMount = 0
}

monster.raceId = 1997
monster.Bestiary = {
	class = "Undead",
	race = BESTY_RACE_UNDEAD,
	toKill = 5000,
	FirstUnlock = 100,
	SecondUnlock = 2500,
	CharmsPoints = 500,
	Stars = 5,
	Occurrence = 0,
	Locations = "Soul Wal 3.0"
	}

monster.health = 38000
monster.maxHealth = 38000
monster.race = "undead"
monster.corpse = 43823
monster.speed = 200
monster.manaCost = 0

monster.changeTarget = {
	interval = 4000,
	chance = 0
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
	rewardBoss = false,
	illusionable = false,
	canPushItems = true,
	canPushCreatures = false,
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
	{text = "Ashes to ashes.", yell = false},
	{text = "Burn, baby! Burn!", yell = false}
}

monster.loot = {
	{name = "crystal coin", chance = 10000, maxCount = 12},
	{id = 43860, chance = 150}, -- bag you covet
	{name = "platinum coin", chance = 90540, maxCount = 50},
	{name = "ultimate health potion", chance = 3220, maxCount = 7},
	{name = "small diamond", chance = 65560, maxCount = 7},
	{name = "gold ingot", chance = 10560},
	{name = "blue crystal splinter", chance = 10560},
	{name = "cyan crystal fragment", chance = 10560},
	{name = "red crystal fragment", chance = 10560},
	{name = "magma boots", chance = 15500},
	{name = "blue gem", chance = 30560},
	{name = "giant sword", chance = 3500},
	{name = "war axe", chance = 9500},
	{name = "mercenary sword", chance = 1500},
	{name = "green crystal fragment", chance = 9500},
	{name = "tainted heart", chance = 1200, maxCount = 3},
	{name = "onyx chip", chance = 7500}
}

monster.attacks = {
	{name ="combat", interval = 2000, chance = 20, type = COMBAT_DEATHDAMAGE, minDamage = -350, maxDamage = -500, range = 7, radius = 3, shootEffect = CONST_ANI_SUDDENDEATH, effect = CONST_ME_MORTAREA, target = true},
	{name ="combat", interval = 1000, chance = 12, type = COMBAT_FIREDAMAGE, minDamage = -400, maxDamage = -600, range = 7, shootEffect = CONST_ANI_FIRE, effect = CONST_ME_FIREAREA, target = true},
	{name ="combat", interval = 2000, chance = 15, type = COMBAT_FIREDAMAGE, minDamage = -400, maxDamage = -600, radius = 4, effect = CONST_ME_FIREAREA, target = false},
	{name ="combat", interval = 1000, chance = 10, type = COMBAT_FIREDAMAGE, minDamage = -500, maxDamage = -750, length = 6, effect = CONST_ME_EXPLOSIONHIT, target = false},
}

monster.defenses = {
	defense = 75,
	armor = 100
}

monster.elements = {
	{type = COMBAT_PHYSICALDAMAGE, percent = -15},
	{type = COMBAT_ENERGYDAMAGE, percent = -10},
	{type = COMBAT_EARTHDAMAGE, percent = -20},
	{type = COMBAT_FIREDAMAGE, percent = 100},
	{type = COMBAT_LIFEDRAIN, percent = 0},
	{type = COMBAT_MANADRAIN, percent = 0},
	{type = COMBAT_DROWNDAMAGE, percent = 0},
	{type = COMBAT_ICEDAMAGE, percent = -30},
	{type = COMBAT_HOLYDAMAGE , percent = -20},
	{type = COMBAT_DEATHDAMAGE , percent = -10}
}

monster.immunities = {
	{type = "paralyze", condition = true},
	{type = "outfit", condition = true},
	{type = "invisible", condition = true},
	{type = "bleed", condition = false}
}

mType:register(monster)