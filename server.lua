------------------------------------------------------
-- Area of Patrol, made by FAXES ft. MGMods Studios --
------------------------------------------------------

--- NO NEED TO EDIT THIS FILE!!!! EDIT THE CONFIG.LUA ---
--- NO NEED TO EDIT THIS FILE!!!! EDIT THE CONFIG.LUA ---
--- NO NEED TO EDIT THIS FILE!!!! EDIT THE CONFIG.LUA ---
--- NO NEED TO EDIT THIS FILE!!!! EDIT THE CONFIG.LUA ---
--- NO NEED TO EDIT THIS FILE!!!! EDIT THE CONFIG.LUA ---

curVersion = "4.0"
local RegisteredAOPCount = 0;
local plcount = 0

RegisterServerEvent('AOP:Startup')
AddEventHandler('AOP:Startup', function()
	--Wait(3000)
	Wait(200)
	TriggerClientEvent("AOP:RunConfig", -1)
	--Wait(30000)
	Wait(200)
	SetMapName("RP : " .. FaxCurAOP)
end)

TriggerEvent("AOP:Startup")

RegisterCommand(ConfigRefreshCommand, function(source, args, rawCommand)
	if source == 0 or IsPlayerAceAllowed(source, "aopscript.aopadmin") or not usingPerms then
		TriggerClientEvent("AOP:RunConfig", -1)
		SetMapName("RP : " .. FaxCurAOP)
	else
		TriggerClientEvent('AOP:NoPerms', source)
	end
end)

RegisterCommand(AOPCommand, function(source, args, rawCommand)
	if source == 0 or IsPlayerAceAllowed(source, "aopscript.aopcmd") or not usingPerms then
		FaxCurAOP = table.concat(args, " ")
		if(source == 0)then;print("AOP changed to: " .. FaxCurAOP);end
		TriggerEvent("AOP:Sync")
		SetMapName("RP : " .. FaxCurAOP)
		if AOPChangeNotification then
			TriggerClientEvent("AOP:DisNotification", -1, textColor .. "Area of Patrol ~w~has changed!~n~AOP: " .. FaxCurAOP)
		end
	else
		TriggerClientEvent('AOP:NoPerms', source)
	end
end)

RegisterServerEvent('AOP:Sync')
AddEventHandler('AOP:Sync', function()
	TriggerClientEvent('AOP:SendAOP', -1, FaxCurAOP)
end)


RegisterCommand(SOECommandLS, function(source, args, rawCommand)
	if source == 0 or IsPlayerAceAllowed(source, "aopscript.soecmd") or not usingPerms then
		soeLS = table.concat(args, " ")
		if(source == 0)then;print("SOE LS changed to: " .. soeLS);end
		TriggerEvent("SOE:Sync")
		if SOEChangeNotification then
			if soeLS == "green" then
				TriggerClientEvent("SOE:DisNotification", -1, textColor .. "The ~y~State of Emergency " .. textColor .. "in ~b~Los Santos " .. textColor .. "has changed!~n~SOE: " .. soeGreen)
			elseif soeLS == "amber" then
				TriggerClientEvent("SOE:DisNotification", -1, textColor .. "The ~y~State of Emergency " .. textColor .. "in ~b~Los Santos " .. textColor .. "has changed!~n~SOE: " .. soeAmber)
			elseif soeLS == "red" then
				TriggerClientEvent("SOE:DisNotification", -1, textColor .. "The ~y~State of Emergency " .. textColor .. "in ~b~Los Santos " .. textColor .. "has changed!~n~SOE: " .. soeRed)
			end
		end
	else
		TriggerClientEvent('AOP:NoPerms', source)
	end
end)

RegisterCommand(SOECommandBC, function(source, args, rawCommand)
	if source == 0 or IsPlayerAceAllowed(source, "aopscript.soecmd") or not usingPerms then
		soeBC = table.concat(args, " ")
		if(source == 0)then;print("SOE BC changed to: " .. soeBC);end
		TriggerEvent("SOE:Sync")
		if SOEChangeNotification then
			if soeBC == "green" then
				TriggerClientEvent("SOE:DisNotification", -1, textColor .. "The ~y~State of Emergency " .. textColor .. "in ~b~Blaine County " .. textColor .. "has changed!~n~SOE: " .. soeGreen)
			elseif soeBC == "amber" then
				TriggerClientEvent("SOE:DisNotification", -1, textColor .. "The ~y~State of Emergency " .. textColor .. "in ~b~Blaine County " .. textColor .. "has changed!~n~SOE: " .. soeAmber)
			elseif soeBC == "red" then
				TriggerClientEvent("SOE:DisNotification", -1, textColor .. "The ~y~State of Emergency " .. textColor .. "in ~b~Blaine County " .. textColor .. "has changed!~n~SOE: " .. soeRed)
			end
		end
	else
		TriggerClientEvent('AOP:NoPerms', source)
	end
end)

RegisterCommand(SOECommandPB, function(source, args, rawCommand)
	if source == 0 or IsPlayerAceAllowed(source, "aopscript.soecmd") or not usingPerms then
		soePB = table.concat(args, " ")
		if(source == 0)then;print("SOE PB changed to: " .. soePB);end
		TriggerEvent("SOE:Sync")
		if SOEChangeNotification then
			if soePB == "green" then
				TriggerClientEvent("SOE:DisNotification", -1, textColor .. "The ~y~State of Emergency " .. textColor .. "in ~b~Paleto Bay " .. textColor .. "has changed!~n~SOE: " .. soeGreen)
			elseif soePB == "amber" then
				TriggerClientEvent("SOE:DisNotification", -1, textColor .. "The ~y~State of Emergency " .. textColor .. "in ~b~Paleto Bay " .. textColor .. "has changed!~n~SOE: " .. soeAmber)
			elseif soePB == "red" then
				TriggerClientEvent("SOE:DisNotification", -1, textColor .. "The ~y~State of Emergency " .. textColor .. "in ~b~Paleto Bay " .. textColor .. "has changed!~n~SOE: " .. soeRed)
			end
		end
	else
		TriggerClientEvent('AOP:NoPerms', source)
	end
end)

RegisterCommand(SOECommandGreenAll, function(source, args, rawCommand)
	if source == 0 or IsPlayerAceAllowed(source, "aopscript.soecmd") or not usingPerms then
		soeLS = "green"
		soeBC = "green"
		soePB = "green"
		if(source == 0)then;print("SOE Global changed to: " .. soePB);end
		TriggerEvent("SOE:Sync")
		if SOEChangeNotification then
			TriggerClientEvent("SOE:DisNotification", -1, textColor .. "The global ~y~State of Emergency " .. textColor .. "has changed!~n~SOE: " .. soeGreen)
		end
	else
		TriggerClientEvent('AOP:NoPerms', source)
	end
end)

RegisterCommand(SOECommandAmberAll, function(source, args, rawCommand)
	if source == 0 or IsPlayerAceAllowed(source, "aopscript.soecmd") or not usingPerms then
		soeLS = "amber"
		soeBC = "amber"
		soePB = "amber"
		if(source == 0)then;print("SOE Global changed to: " .. soePB);end
		TriggerEvent("SOE:Sync")
		if SOEChangeNotification then
			TriggerClientEvent("SOE:DisNotification", -1, textColor .. "The global ~y~State of Emergency " .. textColor .. "has changed!~n~SOE: " .. soeAmber)
		end
	else
		TriggerClientEvent('AOP:NoPerms', source)
	end
end)

RegisterCommand(SOECommandRedAll, function(source, args, rawCommand)
	if source == 0 or IsPlayerAceAllowed(source, "aopscript.soecmd") or not usingPerms then
		soeLS = "red"
		soeBC = "red"
		soePB = "red"
		if(source == 0)then;print("SOE Global changed to: " .. soePB);end
		TriggerEvent("SOE:Sync")
		if SOEChangeNotification then
			TriggerClientEvent("SOE:DisNotification", -1, textColor .. "The global ~y~State of Emergency " .. textColor .. "has changed!~n~SOE: " .. soeRed)
		end
	else
		TriggerClientEvent('AOP:NoPerms', source)
	end
end)

RegisterServerEvent('SOE:Sync')
AddEventHandler('SOE:Sync', function()
	TriggerClientEvent('SOE:SendSOE', -1, soeLS, soeBC, soePB)
end)

RegisterServerEvent('AOP:CountRegistered')
AddEventHandler('AOP:CountRegistered', function()
	RegisteredAOPCount = 0
	for i=1, #RegisteredAOP do
		RegisteredAOPCount = RegisteredAOPCount + 1
	end
end)

Citizen.CreateThread(function()
    while autoChangeAOP do
		local players = GetPlayers()
		plcount = 0
		local TabbedAOPName = nil
		local TabbedAOPPlayerCount = nil
		local TabbedAOPCoords = nil

		for _, player in pairs(players) do
			plcount = plcount + 1
		end

		for i=1, #RegisteredAOP do
			TabbedAOPName = RegisteredAOP[i].Name
			TabbedAOPPlayerCount = RegisteredAOP[i].MaxPlayerCount
			TabbedAOPCoords = RegisteredAOP[i].Coords

			if TabbedAOPPlayerCount <= plcount then
				FaxCurAOP = TabbedAOPName
				SetMapName("RP : " .. FaxCurAOP)
				TriggerEvent("AOP:Sync")
			end
		end

		TriggerEvent("AOP:Sync")
		Citizen.Wait(120 * 1000)
	end
end)

-- !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!! --
--------------------------------------------------------------
--   THE BELOW IS FOR DEBUGGING AND CHECKERS. DO NOT TOUCH  --
--       Touching the below results means NO support!       --
--------------------------------------------------------------

RegisterCommand(StatusCommand, function(source, args, rawCommand)
	if source == 0 or IsPlayerAceAllowed(source, "aopscript.soecmd") or IsPlayerAceAllowed(source, "aopscript.aopcmd") or not usingPerms then
		TriggerEvent("AOP:CountRegistered")
		TriggerClientEvent("Fax:ClientPrint", source, "Current AOP: " .. FaxCurAOP)
		TriggerClientEvent("Fax:ClientPrint", source, "Auto Change AOP: " .. tostring(autoChangeAOP))
		TriggerClientEvent("Fax:ClientPrint", source, "Players connected: " .. tostring(plcount))
		TriggerClientEvent("Fax:ClientPrint", source, "Registered AOP: " .. tostring(RegisteredAOPCount))
		TriggerClientEvent("Fax:ClientPrint", source, "Use AOP Spawn Points: " .. tostring(AOPSpawnsEnabled))
		TriggerClientEvent("Fax:ClientPrint", source, "Using Permissions: " .. tostring(usingPerms))
		TriggerClientEvent("Fax:ClientPrint", source, "Display AOP Change Notification: " .. tostring(AOPChangeNotification))
		TriggerClientEvent("Fax:ClientPrint", source, "Display SOE Change Notification: " .. tostring(SOEChangeNotification))
		TriggerClientEvent("Fax:ClientPrint", source, "AOP Location Setting: " .. tostring(AOPTextLocation))
		if AOPTextLocation == "custom" then
			TriggerClientEvent("Fax:ClientPrint", source, "AOP Location X Setting: " .. tostring(AOPx))
			TriggerClientEvent("Fax:ClientPrint", source, "AOP Location Y Setting: " .. tostring(AOPy))
		end
		TriggerClientEvent("Fax:ClientPrint", source, "------------------")
		TriggerClientEvent("Fax:ClientPrint", source, "Current Version: " .. curVersion)
		TriggerClientEvent("Fax:ClientPrint", source, "Script Credits: Script made by FAXES, edited by MGMods Studios")
	else
		TriggerClientEvent('AOP:NoPerms', source)
	end
end)

RegisterCommand(HelpCommand, function(source, args, rawCommand)
	if source == 0 or IsPlayerAceAllowed(source, "aopscript.soecmd") or IsPlayerAceAllowed(source, "aopscript.aopcmd") or not usingPerms then
		TriggerClientEvent("Fax:ClientPrint", source, "Status command: /" .. StatusCommand .. "  --  Display various debug info; usage: <command>")
		TriggerClientEvent("Fax:ClientPrint", source, "Refresh Command: /" .. ConfigRefreshCommand .. "  --  Reload this config file; usage: <command>")
		TriggerClientEvent("Fax:ClientPrint", source, "AOP Command: /" .. AOPCommand .. "  --  Set the aop; usage: <command> [Area of Patrol]")
		TriggerClientEvent("Fax:ClientPrint", source, "SOE LS Command: /" .. SOECommandLS .. "  --  Set SOE for LS; usage: <command> [green | amber | red]")
		TriggerClientEvent("Fax:ClientPrint", source, "SOE BC Command: /" .. SOECommandBC .. "  --  Set SOE for LS; usage: <command> [green | amber | red]")
		TriggerClientEvent("Fax:ClientPrint", source, "SOE PB Command: /" .. SOECommandPB .. "  --  Set SOE for LS; usage: <command> [green | amber | red]")
		TriggerClientEvent("Fax:ClientPrint", source, "SOE All Green Command: /" .. SOECommandGreenAll .. "  --  Set all SOE to green; usage: <command>")
		TriggerClientEvent("Fax:ClientPrint", source, "SOE All Amber Command: /" .. SOECommandAmberAll .. "  --  Set all SOE to amber; usage: <command>")
		TriggerClientEvent("Fax:ClientPrint", source, "SOE All Red Command: /" .. SOECommandRedAll .. "  --  Set all SOE to red; usage: <command>")
		TriggerClientEvent("Fax:ClientPrint", source, "Help Command: /" .. HelpCommand .. "  --  Display this message; usage: <command>")
		TriggerClientEvent("Fax:ClientPrint", source, "------------------")
		TriggerClientEvent("Fax:ClientPrint", source, "Current Version: " .. curVersion)
		TriggerClientEvent("Fax:ClientPrint", source, "Script Credits: Script made by FAXES, edited by MGMods Studios")
	else
		TriggerClientEvent('AOP:NoPerms', source)
	end
end)

PerformHttpRequest("https://raw.githubusercontent.com/mg-mods/AOP-SOE/refs/heads/master/announce.json", function(err, shit, headers)
	local data = json.decode(shit)
	if data.announce == 1 and curVersion < data.version then
		print("\n^5[Fax-AOP ^7- ^3Notice^5]^5 New Script Version: ^7" .. data.version .. ". ^5New Announcement: ^7" .. data.message .. "\n")
	elseif data.announce == 1 then
		print("\n^5[Fax-AOP ^7- ^1Announcement^5]^7 " .. data.message .. "\n")
	elseif curVersion < data.version then
		print("\n^5[Fax-AOP ^7- ^3Notice^5]^7 Fax-AOP has a new version! Your version: " .. curVersion .. ". New version: " .. data.version .. "\nChangelog: " .. data.changelog .. "\n")
	end
end)
