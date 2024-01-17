local mType = Game.createMonsterType("Wandering Pillar")
local monster = {}

monster.description = "a wanderring pillar"
monster.experience = 29500
monster.outfit = {
	lookType = 1657,
	lookHead = 114,
	lookBody = 80,
	lookLegs = 94,
	lookFeet = 78,
	lookAddons = 0,
	lookMount = 0
}

monster.raceId = 1999
monster.Bestiary = {
	class = "Undead",
	race = BESTY_RACE_UNDEAD,
	toKill = 5000,
	FirstUnlock = 100,
	SecondUnlock = 2500,
	CharmsPoints = 500,
	Stars = 5,
	Occurrence = 0,
	Locations = "Soul War 3.0"
	}

monster.health = 37000
monster.maxHealth = 37000
monster.race = "undead"
monster.corpse = 43827
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
	{name = "crystal coin", chance = 10000, maxCount = 8},
	{id = 43860, chance = 150}, -- bag you covet
	{name = "platinum coin", chance = 82220, maxCount = 32},
	{name = "terra rod", chance = 2120},
	{name = "ultimate health potion", chance = 3220, maxCount = 7},
	{name = "hailstorm rod", chance = 11920},
	{name = "fire axe", chance = 5520},
	{name = "titan axe", chance = 5920},
	{name = "chaos mace", chance = 5920},
	{name = "glorious axe", chance = 3920},
	{name = "underworld rod", chance = 12920},
	{name = "springsprout rod", chance = 16920},
	{name = "wand of starstorm", chance = 16920},
	{name = "wand of voodoo", chance = 14920},
	{name = "warrior's axe", chance = 7920},
	{id = 34139, chance = 8560}, -- infernal heart
	{name = "tainted heart", chance = 1200, maxCount = 3},
	{id = 34146, chance = 7560} -- infernal robe
}

monster.attacks = {
	{name ="combat", interval = 2000, chance = 24, type = COMBAT_DEATHDAMAGE, minDamage = -350, maxDamage = -500, range = 7, radius = 3, shootEffect = CONST_ANI_SUDDENDEATH, effect = CONST_ME_MORTAREA, target = true},
	{name ="combat", interval = 1000, chance = 15, type = COMBAT_FIREDAMAGE, minDamage = -400, maxDamage = -600, range = 7, shootEffect = CONST_ANI_FIRE, effect = CONST_ME_FIREAREA, target = true},
	{name ="combat", interval = 2000, chance = 20, type = COMBAT_FIREDAMAGE, minDamage = -400, maxDamage = -600, radius = 4, effect = CONST_ME_FIREAREA, target = false},
	{name ="combat", interval = 1000, chance = 15, type = COMBAT_FIREDAMAGE, minDamage = -500, maxDamage = -750, length = 6, effect = CONST_ME_EXPLOSIONHIT, target = false},
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