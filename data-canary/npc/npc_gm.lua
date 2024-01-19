local npcType = Game.createNpcType("Npc GM")
local npcConfig = {}

npcConfig.description = "..."

npcConfig.health = 100
npcConfig.maxHealth = npcConfig.health
npcConfig.walkInterval = 0
npcConfig.walkRadius = 0

npcConfig.outfit = {
	lookType = 268,
	lookHead = 114,
	lookBody = 114,
	lookLegs = 114,
	lookFeet = 114,
	lookAddons = 3
}


npcConfig.flags = {
	floorchange = false
}

local keywordHandler = KeywordHandler:new()
local npcHandler = NpcHandler:new(keywordHandler)

npcType.onThink = function(npc, interval)
	npcHandler:onThink(npc, interval)
end

npcType.onAppear = function(npc, creature)
	npcHandler:onAppear(npc, creature)
end

npcType.onDisappear = function(npc, creature)
	npcHandler:onDisappear(npc, creature)
end

npcType.onMove = function(npc, creature, fromPosition, toPosition)
	npcHandler:onMove(npc, creature, fromPosition, toPosition)
end

npcType.onSay = function(npc, creature, type, message)
	npcHandler:onSay(npc, creature, type, message)
end

npcType.onCloseChannel = function(npc, creature)
	npcHandler:onCloseChannel(npc, creature)
end

local function getSkillId(skillName)
	if skillName == "club" then
		return SKILL_CLUB
	elseif skillName == "sword" then
		return SKILL_SWORD
	elseif skillName == "axe" then
		return SKILL_AXE
	elseif skillName:sub(1, 4) == "dist" then
		return SKILL_DISTANCE
	elseif skillName:sub(1, 6) == "shield" then
		return SKILL_SHIELD
	elseif skillName:sub(1, 4) == "fish" then
		return SKILL_FISHING
	else
		return SKILL_FIST
	end
end

local function getExpForLevel(level)
	level = level - 1
	return ((50 * level * level * level) - (150 * level * level) + (400 * level)) / 3
end


local function creatureSayCallback(npc, creature, type, message)
	local player = Player(creature)
	local playerId = player:getId()
	
	if npcHandler:getTopic(playerId) == 0 and MsgContains(message, "teleport") then
		npcHandler:say("Voce foi teleportado.", npc, creature)
		doTeleportThing(creature, npc:getPosition())
		player:getPosition():sendMagicEffect(CONST_ME_TELEPORT)
	elseif npcHandler:getTopic(playerId) == 0 and MsgContains(message, "exp") then
		npcHandler:say("Quanta exp voce quer?", npc, creature)
		npcHandler:setTopic(playerId, 1)
	elseif npcHandler:getTopic(playerId) == 1 and tonumber(message) then
		player:addExperience(tonumber(message), true)
		npcHandler:say("Aqui esta.", npc, creature)
		npcHandler:setTopic(playerId, 0)
	elseif npcHandler:getTopic(playerId) == 0 and MsgContains(message, "item") then
		npcHandler:say("Diga o nome do item que voce quer.", npc, creature)
		npcHandler:setTopic(playerId, 2)
	elseif npcHandler:getTopic(playerId) == 2 then
		item = Game.createItem(message, 1)
		player:addItemEx(item)
		npcHandler:say({"Voce recebeu um " .. item:getName()}, npc, creature)
		npcHandler:setTopic(playerId, 0)
	elseif npcHandler:getTopic(playerId) == 0 and MsgContains(message, "level") then
		npcHandler:say("Escolha seu level.", npc, creature)
		npcHandler:setTopic(playerId, 3)
	elseif npcHandler:getTopic(playerId) == 3 and tonumber(message) then
		newLevel = tonumber(message)
		currLevel = player:getLevel()
		currLevelExp = player:getExperience()
		newLevelExp = getExpForLevel(newLevel)
		if newLevel > currLevel then
			toAddExp = newLevelExp - currLevelExp
			player:addExperience(toAddExp, true)
		elseif newLevel < currLevel then
			toRemoveExp = currLevelExp - newLevelExp
			player:removeExperience(toRemoveExp, true)
		end
		npcHandler:setTopic(playerId, 0)
	elseif npcHandler:getTopic(playerId) == 0 and MsgContains(message, "class") then
		npcHandler:say("Para qual classe voce quer trocar? {espadachim}, {barbaro}, {paladino}, {cacador}, {mago}", npc, creature)
		npcHandler:setTopic(playerId, 4)
	elseif npcHandler:getTopic(playerId) == 4 then
		if MsgContains(message, "espadachim") then
			player:setVocation(9)
		elseif MsgContains(message, "barbaro") then
			player:setVocation(10)
		elseif MsgContains(message, "paladino") then
			player:setVocation(11)
		elseif MsgContains(message, "cacador") then
			player:setVocation(12)
		elseif MsgContains(message, "mago") then
			player:setVocation(13)
		end
		npcHandler:setTopic(playerId, 0)
	elseif npcHandler:getTopic(playerId) == 0 and MsgContains(message, "monstro") then
		npcHandler:say("Com qual monstro voce deseja lutar?", npc,creature)
		npcHandler:setTopic(playerId,5)
	elseif npcHandler:getTopic(playerId) == 5 then
		creatures = message
		Game.createMonster(creatures, npc:getPosition())
		npcHandler:setTopic(playerId,0)
	elseif npcHandler:getTopic(playerId) == 0 and MsgContains(message, "reset") then
		todas = {"club", "sword", "axe", "dist", "shield", "fish", ""}
		for i=1, 7 do
			local skillId = getSkillId(todas[i])
			player:setSkillLevel(skillId, 10, 0) 
		end
		
		player:setMagicLevel(0, 0)

		newLevel = 1
		currLevel = player:getLevel()
		currLevelExp = player:getExperience()
		newLevelExp = player.getExpForLevel(newLevel)
		if newLevel > currLevel then
			toAddExp = newLevelExp - currLevelExp
			player:addExperience(toAddExp, true)
		elseif newLevel < currLevel then
			toRemoveExp = currLevelExp - newLevelExp
			player:removeExperience(toRemoveExp, true)
		end

	elseif npcHandler:getTopic(playerId) == 0 and MsgContains(message, "skill") then
		npcHandler:say("Qual skill voce deseja modificar? {sword}, {axe}, {club}, {dist}, {ml}", npc,creature)
		npcHandler:setTopic(playerId,6)
	elseif npcHandler:getTopic(playerId) == 6 then
		npcHandler:say("Quanto de skill voce deseja ter?",npc,creature)
		npcHandler:setTopic(playerId,7)
		skill = message
	elseif npcHandler:getTopic(playerId) == 7 then
		if skill == "ml" then
			npcHandler:say("entrou ml",npc,creature)
			player:setMagicLevel(tonumber(message), 0)
			npcHandler:setTopic(playerId, 0)
		else
			local skillId = getSkillId(skill)
			player:setSkillLevel(skillId, tonumber(message), 0)
			npcHandler:setTopic(playerId, 0)
		end
	end
	return true
end

npcHandler:setMessage(MESSAGE_GREET, "Salve, |PLAYERNAME|. Voce quer {teleport}, {exp}, {item}, {level}, {class}, {monstro}, {reset} ou {skill}?")
npcHandler:setMessage(MESSAGE_FAREWELL, "Flw meu cria.")
npcHandler:setMessage(MESSAGE_WALKAWAY, "Flw meu irmao.")
npcHandler:addModule(FocusModule:new(), npcConfig.name, true, true, true)
npcHandler:setCallback(CALLBACK_MESSAGE_DEFAULT, creatureSayCallback)

npcHandler:addModule(FocusModule:new(), npcConfig.name, true, true, true)

-- npcType registering the npcConfig table
npcType:register(npcConfig)