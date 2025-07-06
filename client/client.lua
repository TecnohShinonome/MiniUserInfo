-- If you are not using QBCore, please comment out the following line.
-- local QBCore = exports['qb-core']:GetCoreObject()
local QBCore = exports['qb-core']:GetCoreObject()

RegisterNetEvent('MiniUserInfo')
AddEventHandler('MiniUserInfo', function(date,time,weekday)
    SendNUIMessage({
        action = "setMiniUserInfo",
        date = date,
        weekday = Config.WeekDays[weekday+1],
        time = time,
        name = GetPlayerName(NetworkGetEntityOwner(PlayerPedId())),
        userid = GetPlayerServerId(NetworkGetEntityOwner(PlayerPedId())),
        -- If you are not using QBCore, please comment out.
        jobname = QBCore.Functions.GetPlayerData().job.name .. " " .. QBCore.Functions.GetPlayerData().job.grade.name,
        server = Config.ServerName
    })
end)