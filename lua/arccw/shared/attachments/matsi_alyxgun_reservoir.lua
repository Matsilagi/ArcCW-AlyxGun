att.PrintName = "Bullet Reservoir"
att.Description = [[A magazine extension in simplistic terms, but not in the way one would expect.

Newly inserted magazines have their rounds transferred into the reservoir. When the current magazine becomes empty, the stored rounds are loaded into the chamber from the reservoir.
This requires the operator to reload twice to reach maximum capacity.]]

att.Slot = "matsi_alyxgun_mag"

att.Override_ChamberSize = 10

local path = ")^weapons/arccw_alyx/pistol/"

att.Hook_Think = function(wep)
    if CLIENT then
        if wep.Reservoir == nil or wep:Clip1() < wep.Reservoir then
            wep.Reservoir = math.Clamp(wep:Clip1(),0,10)
        elseif wep.Reservoir and math.Clamp(wep:Clip1(),0,10) > wep.Reservoir then
            local ticks = 10 - wep.Reservoir
            wep.TickCount = ticks
            for i = 1, ticks do
                timer.Simple(.075 * i,function()
                    if i == ticks then
                        wep.TickCount = nil
                        wep:EmitSound(path .. "reload_hop_end.ogg")
                    else
                        wep.TickCount = ticks - i
                        wep:EmitSound(path .. "reload_hop_0"..math.random(1,5)..".ogg")
                    end
                end)
            end

            wep.Reservoir = nil
        end
    end -- I'll eventually make it so the bodygroups update in sync
end

-- att.Hook_ModifyBodygroups = function(wep,data)
--     if CLIENT then
--         local vm = data.vm

--         if wep:Clip1() > 1 then
--             vm:SetBodygroup(9,math.Clamp(11 - wep:Clip1(),0,9))
--         else
--             vm:SetBodygroup(9,10)
--         end
--     end
-- end