-- If you are not using QBCore, please comment out the following line.
local QBCore = exports['qb-core']:GetCoreObject()

RegisterNetEvent('MiniUserInfo')
AddEventHandler('MiniUserInfo', function(date,time,weekday)
    -- If you are not using QBCore, please comment out the following line.
    -- You will need to handle player data acquisition differently if QBCore is not used.
    local PlayerData = QBCore.Functions.GetPlayerData() -- Get player data

    SendNUIMessage({
        action = "setMiniUserInfo",
        date = date,
        weekday = Config.WeekDays[weekday+1],
        time = time,
        -- If you are not using QBCore, use the line below this comment block.
        -- name = GetPlayerName(NetworkGetEntityOwner(PlayerPedId())),
        name = PlayerData.charinfo.firstname .. " " .. PlayerData.charinfo.lastname,
        userid = GetPlayerServerId(NetworkGetEntityOwner(PlayerPedId())),
        -- If you are not using QBCore, please comment out the following line.
        jobname = PlayerData.job.name .. " " .. PlayerData.job.grade.name,
        server = Config.ServerName
    })
end)