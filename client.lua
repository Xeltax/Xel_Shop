ESX = nil

TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)

-- Menu --
local open = false
local MenuShop = RageUI.CreateMenu("Magasins", "Superette")
MenuShop.Display.Header = true
MenuShop.Close = function() 
    open = false
end

function OpenMenuShop() 
    if open then 
        open = false
        RageUI.Visible(MenuShop, false)
        return
    else
        open = true
        RageUI.Visible(MenuShop, true)
        CreateThread(function()
            local cooldown = false
            while open do 
                RageUI.IsVisible(MenuShop, function()
                    RageUI.Separator("↓     ~o~Nourriture     ~s~↓")

                    for k, v in pairs(Config.Shop.food) do 
                        RageUI.Button(v.Label, nil, {RightLabel = "~g~"..v.Price.."$"}, not cooldown, {
                            onSelected = function()
                                TriggerServerEvent('Xel_Shop:Buy', v.Label, v.Name, v.Price)
                            end
                        })
                    end

                    RageUI.Separator("↓     ~b~Boisson     ~s~↓")

                    for k, v in pairs(Config.Shop.drink) do 
                        RageUI.Button(v.Label, nil, {RightLabel = "~g~"..v.Price.."$"}, not cooldown, {
                            onSelected = function()
                                TriggerServerEvent('Xel_Shop:Buy', v.Label, v.Name, v.Price)
                            end
                        })
                    end

                    RageUI.Separator("↓     ~p~Numérique     ~s~↓")

                    for k, v in pairs(Config.Shop.num) do 
                        RageUI.Button(v.Label, nil, {RightLabel = "~g~"..v.Price.."$"}, not cooldown, {
                            onSelected = function()
                                TriggerServerEvent('Xel_Shop:Buy', v.Label, v.Name, v.Price)
                            end
                        })
                    end

                    RageUI.Separator("↓     ~r~Fermeture     ~s~↓")
                    RageUI.Button("~r~Fermer", nil, {RightLabel = "~y~→→"}, true, {
                        onSelected = function()
                            FreezeEntityPosition(PlayerPedId(), false)
                            RenderScriptCams(0, true, 2000)
                            RageUI.CloseAll()
                        end
                    })
                end)
            Wait(0)
            end
        end)
    end
end

Citizen.CreateThread(function()
    local camCoords = Config.PositionCamera
    local cam

    cam = CreateCam("DEFAULT_SCRIPTED_CAMERA")
    SetCamCoord(cam, camCoords)
    PointCamAtCoord(cam, camCoords)
    SetCamActive(cam, true)
end)

Citizen.CreateThread(function()
    while true do
		local wait = 750
            local pos = Config.Shop.position

			for k in pairs(pos) do
			local plyCoords = GetEntityCoords(GetPlayerPed(-1), false)
			local dist = Vdist(plyCoords.x, plyCoords.y, plyCoords.z, pos[k].x, pos[k].y, pos[k].z)

            if dist <= Config.MarkerDistance then
                wait = 0
                DrawMarker(Config.MarkerType, pos[k].x, pos[k].y, pos[k].z, 0.0, 0.0, 0.0, 0.0,0.0,0.0, Config.MarkerSizeLargeur, Config.MarkerSizeEpaisseur, Config.MarkerSizeHauteur, Config.MarkerColorR, Config.MarkerColorG, Config.MarkerColorB, Config.MarkerOpacite, Config.MarkerSaute, true, p19, Config.MarkerTourne)  
            end

			if dist <= 1.0 then
                wait = 0
                Visual.Subtitle(Config.Text, 1)
                if IsControlJustPressed(1,51) then
                    OpenMenuShop()
                end
		    end
		end
    Wait(wait)
    end
end)

-- Blips --
Citizen.CreateThread(function()
    for k, v in pairs(Config.Shop.position) do
        local blip = AddBlipForCoord(v.x, v.y, v.z)

        SetBlipSprite(blip, Config.BlipId)
        SetBlipScale (blip, Config.BlipTaille)
        SetBlipColour(blip, Config.BlipCouleur)
        SetBlipAsShortRange(blip, Config.BlipRange)

        BeginTextCommandSetBlipName('STRING')
        AddTextComponentSubstringPlayerName(Config.BlipName)
        EndTextCommandSetBlipName(blip)
    end
end)