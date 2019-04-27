local PlayerData = {}
vRPpp = nil

Citizen.CreateThread(function()
	while vRPpp == nil do
		TriggerEvent('vRP:getSharedObject', function(obj) 
			vRPpp = obj 
		end)
		Citizen.Wait(0)
	end
end)

Citizen.CreateThread(function ()
	while true do
		Citizen.Wait(0)
		DrawMarker(Config.Marker.type, -268.363739013672,-957.255126953125, 31.22313880920410 - 1, 0, 0, 0, 0, 0, 0, 2.0001,2.0001,2.0001 - 0.7, 0, Config.Color.r, Config.Color.g, Config.Color.b, 0, 0, 0, 0, 0, 0, 0)
		if GetDistanceBetweenCoords(GetEntityCoords(GetPlayerPed(-1)), -268.363739013672,-957.255126953125, 31.22313880920410, true) < 1 then
			DisplayHelpText("Apasa ~g~E~s~ pentru a vedea joburile")
		 if (IsControlJustReleased(1, 51)) then
			SetNuiFocus( true, true )
			SendNUIMessage({
				ativa = true
			})
		 end
		end
	end
end)

RegisterNUICallback('1', function(data, cb)
	TriggerServerEvent('vRP:setTaxi')
  	cb('ok')
end)

RegisterNUICallback('2', function(data, cb)
	TriggerServerEvent('vRP:setMechanic')
  	cb('ok')
end)

RegisterNUICallback('3', function(data, cb)
	TriggerServerEvent('vRP:setConstructor')
  	cb('ok')
end)

RegisterNUICallback('4', function(data, cb)
	TriggerServerEvent('vRP:setMiner')
  	cb('ok')
end)

RegisterNUICallback('5', function(data, cb)
	TriggerServerEvent('vRP:setDelivery')
  	cb('ok')
end)

RegisterNUICallback('6', function(data, cb)
	TriggerServerEvent('vRP:setBankdriver')
  	cb('ok')
end)
RegisterNUICallback('7', function(data, cb)
	TriggerServerEvent('vRP:setFAN_COURIER')
  	cb('ok')
end)
RegisterNUICallback('8', function(data, cb)
	TriggerServerEvent('vRP:setPizza')
  	cb('ok')
end)
RegisterNUICallback('9', function(data, cb)
	TriggerServerEvent('vRP:setMedical')
  	cb('ok')
end)
RegisterNUICallback('10', function(data, cb)
	TriggerServerEvent('vRP:setEscorta')
  	cb('ok')
end)
RegisterNUICallback('fechar', function(data, cb)
	SetNuiFocus( false )
	SendNUIMessage({
	ativa = false
	})
  	cb('ok')
end)

function DrawSpecialText(m_text, showtime)
	SetTextEntry_2("STRING")
	AddTextComponentString(m_text)
	DrawSubtitleTimed(showtime, 1)
end

function DisplayHelpText(str)
	SetTextComponentFormat("STRING")
	AddTextComponentString(str)
	DisplayHelpTextFromStringLabel(0, 0, 1, -1)
end