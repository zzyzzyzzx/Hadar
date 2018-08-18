function mylevelconvert()
--
		levelinfo.oldtimestamp	 = levelinfo.newtimestamp
--
end

function mylevelepoch()
--
		levelinfo.newtimestamp = os.time()
--
end

function statadd(hp,mana,moves,prac,train)
--
		levelinfo.hp		 = hp
		levelinfo.mana		 = mana
		levelinfo.moves		 = moves
		levelinfo.prac		 = prac
		levelinfo.train 	 = train
		levelinfo.bonusstat	 = nil
		levelinfo.bonustrain = 0
		levelinfo.levelskill = nil
--
end

function trainadd(mybonustrain)
--
		levelinfo.bonustrain = levelinfo.bonustrain+mybonustrain
--
end

function puptrainadd(mybonustrain)
--
		levelinfo.bonustrain = mybonustrain
--
end

function puptrainbonus(mybonustrain)
--
		levelinfo.bonustraintwo = mybonustrain
--
end

function bonusstatadd(stat)
--
	if levelinfo.bonusstat ~= nil then
		levelinfo.bonusstat = levelinfo.bonusstat..","..stat
	else
		levelinfo.bonusstat = stat
	end
--
end

function levelskill(skill)
--
	if levelinfo["levelskill"]==nil then
		levelinfo.levelskill=skill
	else
		levelinfo.levelskill=levelinfo["levelskill"]..","..skill
	end
--
end

function pupreport(channel,color1,color2,brac,colornum,colortim,brac2,colorplus,colorstat)
--
	local endcolor	= "@w"

	if channel == nil then
	mylevelreport.channel = "gt"
	else
	mylevelreport.channel = channel
	end
	
	if tonumber(levelinfo.year) > 0 then -- this if deals with spent over 1 year leveling colors the number red
		mylevelreport.time = color1.."Y:@R"..levelinfo.year..","
	else
		mylevelreport.time = ""
	end

	if tonumber(levelinfo.month) > 0 then -- this if deals with spent over 1 month leveling colors the number red
		mylevelreport.time = mylevelreport.time .. color1 .."M:@R"..levelinfo.month.." "
	else
		mylevelreport.time = ""
	end

	if tonumber(levelinfo.day) > 0 then -- this if deals with spent over 1 day leveling colors the number red
		mylevelreport.time = mylevelreport.time .. color1 .. "D:@R" .. levelinfo.day .. " "
	else
		mylevelreport.time = ""
	end

		mylevelreport.time = mylevelreport.time .. color1 .. "H:".. colortim .. levelinfo.hour .. " "
		mylevelreport.time = mylevelreport.time .. color1 .. "M:".. colortim .. levelinfo.min .. " "
		mylevelreport.time = mylevelreport.time .. color1 .. "S:".. colortim .. levelinfo.sec

		if tonumber(levelinfo.bonustraintwo)>0 then
		local mylevelmath = levelinfo.bonustrain+levelinfo.bonustraintwo
		mylevelreport.gains=color1.."T"..color2.."rains:"..colorstat..levelinfo.bonustrain..colorplus.."+"..colorstat..levelinfo.bonustraintwo..colorplus.."="..mylevelmath..endcolor
		else
		mylevelreport.gains=color1.."T"..color2.."rains:"..levelinfo.bonustrain
		end
		levelinfo.bonustrain = mybonustrain
		levelinfo.bonustraintwo = mybonustrain
		
		
		mylevelreport.message = color1 .. "P" .. color2 .. "up:" .. color1 .. "T" .. color2 .. "ook:" .. brac2 .. "[" .. mylevelreport.time .. brac2 .. "] " .. mylevelreport.gains .. endcolor
		
--
end
function levelreport(level,channel,color1,color2,brac,colornum,colortim,brac2,colorplus,colorstat)
--
	local endcolor	= "@w"

	if channel == nil then
	mylevelreport.channel = "gt"
	else
	mylevelreport.channel = channel
	end

	if tonumber(levelinfo.year) > 0 then -- this if deals with spent over 1 year leveling colors the number red
		mylevelreport.time = color1.."Y:@R"..levelinfo.year..","
	else
		mylevelreport.time = ""
	end

	if tonumber(levelinfo.month) > 0 then -- this if deals with spent over 1 month leveling colors the number red
		mylevelreport.time = mylevelreport.time .. color1 .."M:@R"..levelinfo.month.." "
	else
		mylevelreport.time = ""
	end

	if tonumber(levelinfo.day) > 0 then -- this if deals with spent over 1 day leveling colors the number red
		mylevelreport.time = mylevelreport.time .. color1 .. "D:@R" .. levelinfo.day .. " "
	else
		mylevelreport.time = ""
	end

		mylevelreport.time = mylevelreport.time .. color1 .. "H:".. colortim .. levelinfo.hour .. " "
		mylevelreport.time = mylevelreport.time .. color1 .. "M:".. colortim .. levelinfo.min .. " "
		mylevelreport.time = mylevelreport.time .. color1 .. "S:".. colortim .. levelinfo.sec

		mylevelreport.gains = color1 .. "H" .. color2 .. "P" .. brac .. "(" .. colornum .. levelinfo.hp .. brac .. ")"
		mylevelreport.gains = mylevelreport.gains .. color1 .."M" .. color2 .. "n" .. brac .. "(" ..colornum ..levelinfo.mana .. brac .. ")"
		mylevelreport.gains = mylevelreport.gains .. color1 .."M" .. color2 .. "v" .. brac .. "(" ..colornum ..levelinfo.moves .. brac .. ")"

	if tonumber(levelinfo.prac) > 0 then
		mylevelreport.gains = mylevelreport.gains .. color1 .. "P" .. color2 .. "r" .. brac .. "(" .. colornum .. levelinfo.prac .. brac .. ")"
	end

	if tonumber(levelinfo.train) > 0 then
		if tonumber(levelinfo.bonustrain) > 0 then
			mylevelreport.gains = mylevelreport.gains .. color1 .. "T" .. color2 .. "r" .. brac .. "(" .. colornum .. levelinfo.train .. colorplus .. "+" .. colornum .. levelinfo.bonustrain .. brac ..")"
		else
			mylevelreport.gains = mylevelreport.gains .. color1 .. "T" .. color2 .. "r" .. brac .. "(" .. colornum .. levelinfo.train .. brac .. ")"
		end

	end

	if levelinfo.bonusstat ~= nil then
		mylevelreport.message = color1 .. "L" .. color2 .. "evel" .. brac .. "(" .. colornum .. level .. brac .. ") " .. color1 .. "T" .. color2 .. "ook:" .. brac2 .. "[" .. mylevelreport.time .. brac2 .. "] " .. mylevelreport.gains .. color1 .. " +" .. color2 .. "Stats:" .. colorstat .. levelinfo.bonusstat .. endcolor
	else
		mylevelreport.message = color1 .. "L" .. color2 .. "evel" .. brac .. "(" .. colornum .. level .. brac .. ") " .. color1 .. "T" .. color2 .. "ook:" .. brac2 .. "[" .. mylevelreport.time .. brac2 .. "] " .. mylevelreport.gains .. endcolor
	end
	
	if levelinfo.levelskill ~= nil then 
	   mylevelreport.message=mylevelreport.message .. color1 .. "+" .. color2 .. "Skills/Spells:" .. colorstat .. levelinfo.levelskill .. endcolor
	end
	
return mylevelreport.channel .. " " .. mylevelreport.message
--
end
