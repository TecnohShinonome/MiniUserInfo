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
        jobname = QBCore.Functions.GetPlayerData().job.name .. " " .. QBCore.Functions.GetPlayerData().job.grade.name,
        server = Config.ServerName
    })
end)