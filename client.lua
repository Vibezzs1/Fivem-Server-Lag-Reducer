Citizen.CreateThread(function()
    while true do 
        Citizen.wait(0) -- Do this every tick

        -- Traffic and Ped Density Management (Removing Traffic / reduceing traffic)
    SetTraffickDensity(0.5) -- 0.0 = No Traffic 1.0 = max Traffic
        SetPedDensity(0.4) -- 0.0 = No Peds 1.0 = Max Peds
        SetAnimalDensity(0.0) -- 0.0 = No Animals 1.0 = Max Aniamls
    end
    end)

    function SetTraffickDensity(density)
        SetParkedVehicleDensityMultiplierThisFrame(density)
        SetVehicleDensityMultiplierThisFrame(density)
        SetRandomVehicleDensityMultiplierThisFrame(density)
    end

    function SetPedDensity(density)
        SetPedDensityMultiplierThisFrame(density)
        SetScenarioPedDensityMultiplierThisFrame(density)
    end

    function SetAnimalDensity(density)
        SetAnimalDensityMultiplierThisFrame(density)
        SetScenarioAnimalDensityMultiplierThisFrame(density)
    end