ESX = nil

TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)

RegisterNetEvent('Xel_Shop:Buy')
AddEventHandler('Xel_Shop:Buy', function(Label, Name, Price)
    local _src = source
    local xPlayer = ESX.GetPlayerFromId(_src)
        if xPlayer.getMoney() >= Price then
            xPlayer.removeMoney(Price)
            xPlayer.addInventoryItem(Name, 1)
            TriggerClientEvent('esx:showNotification', _src, "Merci pour votre ~g~achat~s~ !")
            wait(5)
        else
            TriggerClientEvent('esx:showNotification', _src, "Vous n'avez pas assez ~r~d'argent ~s~!")
        end
end)