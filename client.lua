------------------------------------------------------
-- Area of Patrol, made by FAXES ft. MGMods Studios --
------------------------------------------------------

--- NO NEED TO EDIT THIS FILE!!!! EDIT THE CONFIG.LUA ---
--- NO NEED TO EDIT THIS FILE!!!! EDIT THE CONFIG.LUA ---
--- NO NEED TO EDIT THIS FILE!!!! EDIT THE CONFIG.LUA ---
--- NO NEED TO EDIT THIS FILE!!!! EDIT THE CONFIG.LUA ---
--- NO NEED TO EDIT THIS FILE!!!! EDIT THE CONFIG.LUA ---


local AOPxNew = 0.660
local AOPyNew = 1.430
local AOPyNew2 = 1.430
local soePBDisplay = soeRed
local soeLSDisplay = soeRed
local soeBCDisplay = soeRed


AddEventHandler('onClientMapStart', function()
    TriggerEvent('AOP:RunConfig')
    Wait(2000)
    TriggerServerEvent('AOP:Sync')
end)

AddEventHandler('playerSpawned', function()
    local ped = GetPlayerPed(-1)
    if AOPSpawnsEnabled and autoChangeAOP then
        TriggerEvent('AOP:SetPlayerSpawnPoint', ped)
    end
end)

RegisterNetEvent('AOP:NoPerms')
AddEventHandler('AOP:NoPerms', function()
    ShowInfo(noPermsMessage)
end)

RegisterNetEvent('Fax:ClientPrint')
AddEventHandler('Fax:ClientPrint', function(text)
    print(text)
end)

RegisterNetEvent('AOP:DisNotification')
AddEventHandler('AOP:DisNotification', function(textPassed)
    BeginTextCommandDisplayHelp("STRING")
    AddTextComponentSubstringPlayerName(textPassed)
    EndTextCommandDisplayHelp(0, 0, 1, - 1)
end)

RegisterNetEvent('SOE:DisNotification')
AddEventHandler('SOE:DisNotification', function(textPassed)
    BeginTextCommandDisplayHelp("STRING")
    AddTextComponentSubstringPlayerName(textPassed)
    EndTextCommandDisplayHelp(0, 0, 1, - 1)
end)

RegisterNetEvent('AOP:RunConfig')
AddEventHandler('AOP:RunConfig', function()
    if AOPTextLocation == "bottom-center" then -- Bottom Center
        AOPxNew = 1.000
        AOPyNew = 1.430
        AOPyNew2 = AOPyNew + 0.025
    elseif AOPTextLocation == "bottom-right" then -- Bottom Right [WIP]
        AOPxNew = 0.660
        AOPyNew = 1.430
        AOPyNew2 = AOPyNew + 0.025
    elseif AOPTextLocation == "bottom-left" then -- Top Right [WIP]
        AOPxNew = 0.660
        AOPyNew = 1.430
        AOPyNew2 = AOPyNew + 0.025
    elseif AOPTextLocation == "top-center" then -- Top Center
        AOPxNew = 1.000
        AOPyNew = 0.50
        AOPyNew2 = AOPyNew + 0.025
    elseif AOPTextLocation == "top-left" then -- Top Left
        AOPxNew = 0.00
        AOPyNew = 0.50
        AOPyNew2 = AOPyNew + 0.025
    elseif AOPTextLocation == "custom" then -- Custom
        AOPxNew = AOPx
        AOPyNew = AOPy
        AOPyNew2 = AOPyNew + 0.025
    end
    TriggerServerEvent("AOP:CountRegistered")
    Citizen.Trace("[FAXES AOP SCRIPT] Config Ran")
end)


RegisterNetEvent('AOP:SendAOP')
AddEventHandler('AOP:SendAOP', function(newCurAOP)
    FaxCurAOP = newCurAOP
end)

RegisterNetEvent('SOE:SendSOE')
AddEventHandler('SOE:SendSOE', function(newCurSOE_LS, newCurSOE_BC, newCurSOE_PB)
    soeLS = newCurSOE_LS
    soeBC = newCurSOE_BC
    soePB = newCurSOE_PB
end)

RegisterNetEvent('AOP:SetPlayerSpawnPoint')
AddEventHandler('AOP:SetPlayerSpawnPoint', function(ped)
    for i=1, #RegisteredAOP do
        local AOPTab = RegisteredAOP[i]
        if string.lower(AOPTab.Name) == string.lower(FaxCurAOP) then
            SetEntityCoords(ped, AOPTab.Coords.x, AOPTab.Coords.y, AOPTab.Coords.z)
        end
    end
end)

Citizen.CreateThread(function()
    while true do

        -- Refresh SOE LS
        if soeLS == "green" then
            soeLSDisplay = soeGreen
        elseif soeLS == "amber" then
            soeLSDisplay = soeAmber
        elseif soeLS == "red" then
            soeLSDisplay = soeRed
        end

        -- Refresh SOE BC
        if soeBC == "green" then
            soeBCDisplay = soeGreen
        elseif soeBC == "amber" then
            soeBCDisplay = soeAmber
        elseif soeBC == "red" then
            soeBCDisplay = soeRed
        end

        -- Refresh SOE PB
        if soePB == "green" then
            soePBDisplay = soeGreen
        elseif soePB == "amber" then
            soePBDisplay = soeAmber
        elseif soePB == "red" then
            soePBDisplay = soeRed
        end

        DrawTextAOP(AOPxNew, AOPyNew2, 1.0,1.0,0.45, "~w~Current " .. textColor .. "AOP: " .. aopColor .. FaxCurAOP, 255, 255, 255, 255)
        DrawTextAOP(AOPxNew, AOPyNew2 + 0.025, 1.0,1.0,0.45, soeLSText .. soeLSDisplay, 255, 255, 255, 255)
        DrawTextAOP(AOPxNew, AOPyNew2 + 0.050, 1.0,1.0,0.45, soeBCText .. soeBCDisplay, 255, 255, 255, 255)
        DrawTextAOP(AOPxNew, AOPyNew2 + 0.075, 1.0,1.0,0.45, soePBText .. soePBDisplay, 255, 255, 255, 255)

        Citizen.Wait(1)

	end
end)

function DrawTextAOP(x,y ,width,height,scale, text, r,g,b,a)
    if AOPTextLocation == "bottom-center" or AOPTextLocation == "top-center" then
        SetTextCentre(true)
    end
    SetTextFont(4)
    SetTextProportional(0)
    SetTextScale(scale, scale)
    SetTextColour(r, g, b, a)
    SetTextEdge(2, 0, 0, 0, 255)
    SetTextOutline()
    BeginTextCommandDisplayText("STRING")
    AddTextComponentSubstringPlayerName(text)
    EndTextCommandDisplayText(x - width/2, y - height/2 + 0.005)
end

function ShowInfo(text)
	BeginTextCommandThefeedPost("STRING")
	AddTextComponentSubstringPlayerName(text)
	EndTextCommandThefeedPostTicker(true, false)
end