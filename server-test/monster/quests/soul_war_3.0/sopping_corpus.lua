local mType = Game.createMonsterType("Sopping Corpus")
local monster = {}

monster.description = "a sopping corpus"
monster.experience = 34990
monster.outfit = {
	lookType = 1659,
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

monster.health = 33000
monster.maxHealth = 33000
monster.race = "undead"
monster.corpse = 43836
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
	{id = 43860, chance = 150}, -- bag you covet
	{name = "crystal coin", chance = 10000, maxCount = 5},
	{name = "platinum coin", chance = 90040, maxCount = 32},
	{name = "ultimate health potion", chance = 3220, maxCount = 7},
	{id = 33936, chance = 7560}, -- hand
	{name = "skull staff", chance = 6560},
	{name = "epee", chance = 7560},
	{name = "crystal mace", chance = 2560},
	{name = "noble axe", chance = 1850},
	{name = "spellbook of mind control", chance = 1900},
	{id = 33937, chance = 7500}, -- head
	{name = "fire axe", chance = 13500},
	{name = "royal helmet", chance = 5500},
	{name = "mastermind shield", chance = 3500},
	{name = "assassin dagger", chance = 4500},
	{name = "butcher's axe", chance = 4500},
	{name = "jade hammer", chance = 5500},
	{name = "crystalline sword", chance = 5500},
	{name = "alloy legs", chance = 4500},
	{name = "metal bat", chance = 3500},
	{name = "tainted heart", chance = 1200, maxCount = 3},
	{id = 23531, chance = 8920}, -- ring of green plasma
	{id = 34025, chance = 1550} -- diabolic skull
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