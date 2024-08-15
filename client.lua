CreateThread(function()
  local _alreadyOn = false
  while (true) do
    local _ped = PlayerPedId()
    local _vehicleCheck = IsPedInAnyVehicle(_ped, false)
    
    if (_vehicleCheck and not _alreadyOn) then
        local _vehicle = GetVehiclePedIsIn(_ped, false)
        SetVehicleEngineOn(_vehicle, true, true, true)
        _alreadyOn = true
    elseif (not _vehicleCheck and _alreadyOn) then
        _alreadyOn = false
    end

    Wait(250)
  end
end)
