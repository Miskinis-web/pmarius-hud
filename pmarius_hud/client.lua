ESX = nil
local food, thirst, cash = 0

Citizen.CreateThread(function()
	while ESX == nil do
		TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)
		Citizen.Wait(0)
	end
end)

RegisterNetEvent("pmarius-hud:onTick")
AddEventHandler("pmarius-hud:onTick", function(status)
	food, thirst = status[1].percent, status[2].percent
end)

Citizen.CreateThread(function()
	while true do 
		Citizen.Wait(0)
		SendNUIMessage({
			pauseMenu = IsPauseMenuActive(),
			health = GetEntityHealth(PlayerPedId())-100,
			thirst = thirst,
			food = food,
			armour = GetPedArmour(PlayerPedId())
		})
	end
end)