local mType = Game.createMonsterType("Morshabaal Illusion")
local monster = {}

monster.description = "a morshabaal illusion"
monster.experience = 60000
monster.outfit = {
	lookType = 1468,
	lookHead = 0,
	lookBody = 0,
	lookLegs = 0,
	lookFeet = 0,
	lookAddons = 0,
	lookMount = 0
}

monster.health = 150000
monster.maxHealth = 150000
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
		{name = "demon", chance = 10, interval = 1000, count = 2}
	}
}

monster.voices = {
	interval = 5000,
	chance = 10,
	{text = "PRAISED BE MY MASTERS, THE RUTHLESS SEVEN!", yell = false},
	{text = "YOU ARE DOOMED!", yell = false},
	{text = "ORSHABAAL IS BACK!", yell = false},
	{text = "Be prepared for the day my masters will come for you!", yell = false},
	{text = "SOULS FOR ORSHABAAL!", yell = false}
}

monster.loot = {
	{name = "Eldritch Rod", chance = 1500},
	{name = "Eldritch Wand", chance = 1500},
	{name = "Eldritch Bow", chance = 1500},
	{name = "Eldritch Claymore", chance = 1500},
	{name = "Eldritch Warmace", chance = 1500},
	{name = "Eldritch Greataxe", chance = 1500},
	{name = "Summerblade", chance = 2550},
	{name = "Winterblade", chance = 2550},
	{name = "Gilded Eldritch Rod", chance = 1200},
	{name = "Gilded Eldritch Wand", chance = 1200},
	{name = "Gilded Eldritch Bow", chance = 1200},
	{name = "Gilded Eldritch Claymore", chance = 1200},
	{name = "Gilded Eldritch Warmace", chance = 1200},
	{name = "Gilded Eldritch Greataxe", chance = 1200},
	{name = "Eldritch Folio", chance = 1750},
	{name = "Eldritch Tome", chance = 1750},
	{name = "Eldritch Shield", chance = 1750},
	{name = "Eldritch Breeches", chance = 1750},
	{name = "Eldritch Cuirass", chance = 1750},
	{name = "Eldritch Hood", chance = 1750},
	{name = "Eldritch Cowl", chance = 1750},
	{name = "galea mortis", chance = 1900},
	{name = "toga mortis", chance = 1900},
	{name = "Mortal Mace", chance = 1900},
	{name = "Bow of Cataclysm", chance = 1900},
	{name = "dark whispers", chance = 1900},
	{name = "sleep shawl", chance = 5500},
	{name = "amulet of theurgy", chance = 5500},
	{name = "Living Vine Bow", chance = 1900},
	{name = "Tagralt Blade", chance = 1900},
	{name = "Resizer", chance = 1900},
	{name = "Shoulder Plate", chance = 5000},
	{name = "Dream Shroud", chance = 1900},
	{name = "Pair of Dreamwalkers", chance = 1900},
	{name = "Winged Boots", chance = 5000},
	{name = "Book of Lies", chance = 1900},
	{name = "Brain in a Jar", chance = 5000},
	{name = "Ornate Legs", chance = 5000},
	{name = "Ornate chestplate", chance = 5000},
	{name = "Ornate shield", chance = 7000},
	{name = "Depth Calcei", chance = 7000},
	{name = "Depth Lorica", chance = 7000},
	{name = "demon armor", chance = 15000},
	{name = "demon legs", chance = 7500},
	{name = "demon helmet", chance = 18000},
	{name = "green demon helmet", chance = 1800},
	{name = "green demon legs", chance = 1000},
	{name = "green demon armor", chance = 1500},
	{name = "green demon slippers", chance = 800},
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
	{name = "Antler-Horn Helmet", chance = 1700},
	{name = "Alchemist's Boots", chance = 1600},
	{name = "Alchemist's Notepad", chance = 1600},
	{name = "Mutant Bone Boots", chance = 1400},
	{name = "Mutant Bone Kilt", chance = 1650},
	{name = "Mutated Skin Armor", chance = 1650},
	{name = "Mutated Skin Legs", chance = 1650},
	{name = "Stitched Mutant Hide Legs", chance = 1350},
	{name = "Sliver", chance = 50000},
	{name = "Exalted Core", chance = 50000},
	{name = "crystal coin", chance = 99999, maxCount = 180}
}

monster.attacks = {
	{name ="melee", interval = 2000, chance = 100, minDamage = 0, maxDamage = -1000},
	{name ="combat", interval = 1000, chance = 13, type = COMBAT_MANADRAIN, minDamage = -300, maxDamage = -600, range = 7, target = false},
	{name ="combat", interval = 1000, chance = 6, type = COMBAT_MANADRAIN, minDamage = -150, maxDamage = -350, radius = 5, effect = CONST_ME_POISONAREA, target = false},
	{name ="effect", interval = 1000, chance = 6, radius = 5, effect = CONST_ME_HITAREA, target = false},
	{name ="combat", interval = 1000, chance = 34, type = COMBAT_FIREDAMAGE, minDamage = -310, maxDamage = -600, range = 7, radius = 7, shootEffect = CONST_ANI_FIRE, effect = CONST_ME_FIREAREA, target = true},
	{name ="firefield", interval = 1000, chance = 10, range = 7, radius = 4, shootEffect = CONST_ANI_FIRE, target = true},
	{name ="combat", interval = 1000, chance = 15, type = COMBAT_ENERGYDAMAGE, minDamage = -500, maxDamage = -850, length = 8, spread = 3, effect = CONST_ME_ENERGYHIT, target = false}
}

monster.defenses = {
	defense = 111,
	armor = 90,
	{name ="combat", interval = 1000, chance = 9, type = COMBAT_HEALING, minDamage = 500, maxDamage = 700, effect = CONST_ME_MAGIC_BLUE, target = false},
	{name ="combat", interval = 1000, chance = 17, type = COMBAT_HEALING, minDamage = 600, maxDamage = 800, effect = CONST_ME_MAGIC_BLUE, target = false},
	{name ="speed", interval = 1000, chance = 5, speedChange = 1901, effect = CONST_ME_MAGIC_RED, target = false, duration = 7000}
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
	{type = COMBAT_HOLYDAMAGE , percent = -50},
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
