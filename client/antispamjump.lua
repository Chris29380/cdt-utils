
Citizen.CreateThread(function()
  local Jump = 0
  local tick = 0

  while true do
      Citizen.Wait(1)
      local ped = PlayerPedId()
      tick = tick + 1
      if tick >= 200 then
        tick = 0
        Jump = 0
      end
      if IsPedOnFoot(ped) and not IsPedSwimming(ped) and not IsPedClimbing(ped) and IsPedJumping(ped) and not IsPedRagdoll(ped) then
            Jump = Jump + 1
            if Jump == Options.bunnynb then
                SetPedToRagdoll(ped, 5000, 1400, 2)
                Jump = 0
                tick = 0
            end
      else 
            Citizen.Wait(500)
      end
  end

end)