function getDatetime()
    return os.date(Config.DateFormat), os.date(Config.TimeFormat, os.time()), os.date("%w")
end

Citizen.CreateThread(function()
    while true do
        TriggerClientEvent('MiniUserInfo', -1, getDatetime())
        Wait(30000)
    end
end)

AddEventHandler('onResourceStart', function(resourceName)
    if (GetCurrentResourceName() == resourceName) then
        Wait(2500)
        TriggerClientEvent('MiniUserInfo', -1, getDatetime())
    end
end)

AddEventHandler("playerJoining", function(data)
    TriggerClientEvent('MiniUserInfo', source, getDatetime())
end)