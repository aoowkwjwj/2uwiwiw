_G.SafeFarm = true
assert(getrawmetatable)
    grm = getrawmetatable(game)
    setreadonly(grm, false)
    old = grm.__namecall
    grm.__namecall = newcclosure(function(self, ...)
        local args = {...}
        if tostring(args[1]) == "TeleportDetect" then
            return
        elseif tostring(args[1]) == "CHECKER_1" then
            return
        elseif tostring(args[1]) == "CHECKER" then
            return
        elseif tostring(args[1]) == "GUI_CHECK" then
            return
        elseif tostring(args[1]) == "OneMoreTime" then
            return
        elseif tostring(args[1]) == "checkingSPEED" then
            return
        elseif tostring(args[1]) == "BANREMOTE" then
            return
        elseif tostring(args[1]) == "PERMAIDBAN" then
            return
        elseif tostring(args[1]) == "KICKREMOTE" then
            return
        elseif tostring(args[1]) == "BR_KICKPC" then
            return
        elseif tostring(args[1]) == "BR_KICKMOBILE" then
            return
        end
        return old(self, ...)
    end)
function CheckAntiCheatBypass()
    for i,v in pairs(game:GetService("Players").LocalPlayer.Character:GetDescendants()) do
        if v:IsA("LocalScript") then
            if v.Name == "General" or v.Name == "Shiftlock"  or v.Name == "FallDamage" or v.Name == "4444" or v.Name == "CamBob" or v.Name == "JumpCD" or v.Name == "Looking" or v.Name == "Run" then
                v:Destroy()
            end
        end
     end
     for i,v in pairs(game:GetService("Players").LocalPlayer.PlayerScripts:GetDescendants()) do
        if v:IsA("LocalScript") then
            if v.Name == "RobloxMotor6DBugFix" or v.Name == "CustomForceField" or v.Name == "MenuBloodSp"  or v.Name == "PlayerList" then
                v:Destroy()
            end
        end
    end
end

local function bypassAntiExploit()
    for _, instance in ipairs(filtergc()) do
        if instance:IsA("AntiExploitSystem") then
            instance:Destroy()
        end
    end
end
spawn(function()
    while wait() do
        if _G.SafeFarm then
            pcall(function()
                CheckAntiCheatBypass()
                bypassAntiExploit()
            end)
        end
    end
end)
function intiAppleHub() 
_G.antiscan = true
getgenv().A = require(game:GetService("ReplicatedStorage").CombatFramework.RigLib).wrapAttackAnimationAsync
getgenv().B = require(game.Players.LocalPlayer.PlayerScripts.CombatFramework.Particle).play
_G.setfflag = true
end
spawn(function()
    while wait() do
        if _G.setfflag then
            setfflag("AbuseReportScreenshot", "False")
            setfflag("AbuseReportScreenshotPercentage", "0")
        end
    end
end)

if game.PlaceId == 2753915549 then
        World1 = true
    elseif game.PlaceId == 4442272183 then
        World2 = true
    elseif game.PlaceId == 7449423635 then
        World3 = true
    end

-- CheckQuest
	function CheckQuest() 
        MyLevel = game:GetService("Players").LocalPlayer.Data.Level.Value
        if World1 then
            if MyLevel == 1 or MyLevel <= 9 then
                Mon = "Bandit"
                LevelQuest = 1
                NameQuest = "BanditQuest1"
                NameMon = "Bandit"
                CFrameQuest = CFrame.new(1059.37195, 15.4495068, 1550.4231, 0.939700544, -0, -0.341998369, 0, 1, -0, 0.341998369, 0, 0.939700544)
                CFrameMon = CFrame.new(1045.962646484375, 27.00250816345215, 1560.8203125)
            elseif MyLevel == 10 or MyLevel <= 14 then
                Mon = "Monkey"
                LevelQuest = 1
                NameQuest = "JungleQuest"
                NameMon = "Monkey"
                CFrameQuest = CFrame.new(-1598.08911, 35.5501175, 153.377838, 0, 0, 1, 0, 1, -0, -1, 0, 0)
                CFrameMon = CFrame.new(-1448.51806640625, 67.85301208496094, 11.46579647064209)
            elseif MyLevel == 15 or MyLevel <= 29 then
                Mon = "Gorilla"
                LevelQuest = 2
                NameQuest = "JungleQuest"
                NameMon = "Gorilla"
                CFrameQuest = CFrame.new(-1598.08911, 35.5501175, 153.377838, 0, 0, 1, 0, 1, -0, -1, 0, 0)
                CFrameMon = CFrame.new(-1129.8836669921875, 40.46354675292969, -525.4237060546875)
            elseif MyLevel == 30 or MyLevel <= 39 then
                Mon = "Pirate"
                LevelQuest = 1
                NameQuest = "BuggyQuest1"
                NameMon = "Pirate"
                CFrameQuest = CFrame.new(-1141.07483, 4.10001802, 3831.5498, 0.965929627, -0, -0.258804798, 0, 1, -0, 0.258804798, 0, 0.965929627)
                CFrameMon = CFrame.new(-1103.513427734375, 13.752052307128906, 3896.091064453125)
            elseif MyLevel == 40 or MyLevel <= 59 then
                Mon = "Brute"
                LevelQuest = 2
                NameQuest = "BuggyQuest1"
                NameMon = "Brute"
                CFrameQuest = CFrame.new(-1141.07483, 4.10001802, 3831.5498, 0.965929627, -0, -0.258804798, 0, 1, -0, 0.258804798, 0, 0.965929627)
                CFrameMon = CFrame.new(-1140.083740234375, 14.809885025024414, 4322.92138671875)
            elseif MyLevel == 60 or MyLevel <= 74 then
                Mon = "Desert Bandit"
                LevelQuest = 1
                NameQuest = "DesertQuest"
                NameMon = "Desert Bandit"
                CFrameQuest = CFrame.new(894.488647, 5.14000702, 4392.43359, 0.819155693, -0, -0.573571265, 0, 1, -0, 0.573571265, 0, 0.819155693)
                CFrameMon = CFrame.new(924.7998046875, 6.44867467880249, 4481.5859375)
            elseif MyLevel == 75 or MyLevel <= 89 then
                Mon = "Desert Officer"
                LevelQuest = 2
                NameQuest = "DesertQuest"
                NameMon = "Desert Officer"
                CFrameQuest = CFrame.new(894.488647, 5.14000702, 4392.43359, 0.819155693, -0, -0.573571265, 0, 1, -0, 0.573571265, 0, 0.819155693)
                CFrameMon = CFrame.new(1608.2822265625, 8.614224433898926, 4371.00732421875)
            elseif MyLevel == 90 or MyLevel <= 99 then
                Mon = "Snow Bandit"
                LevelQuest = 1
                NameQuest = "SnowQuest"
                NameMon = "Snow Bandit"
                CFrameQuest = CFrame.new(1389.74451, 88.1519318, -1298.90796, -0.342042685, 0, 0.939684391, 0, 1, 0, -0.939684391, 0, -0.342042685)
                CFrameMon = CFrame.new(1354.347900390625, 87.27277374267578, -1393.946533203125)
            elseif MyLevel == 100 or MyLevel <= 119 then
                Mon = "Snowman"
                LevelQuest = 2
                NameQuest = "SnowQuest"
                NameMon = "Snowman"
                CFrameQuest = CFrame.new(1389.74451, 88.1519318, -1298.90796, -0.342042685, 0, 0.939684391, 0, 1, 0, -0.939684391, 0, -0.342042685)
                CFrameMon = CFrame.new(1201.6412353515625, 144.57958984375, -1550.0670166015625)
            elseif MyLevel == 120 or MyLevel <= 149 then
                Mon = "Chief Petty Officer"
                LevelQuest = 1
                NameQuest = "MarineQuest2"
                NameMon = "Chief Petty Officer"
                CFrameQuest = CFrame.new(-5039.58643, 27.3500385, 4324.68018, 0, 0, -1, 0, 1, 0, 1, 0, 0)
                CFrameMon = CFrame.new(-4881.23095703125, 22.65204429626465, 4273.75244140625)
            elseif MyLevel == 150 or MyLevel <= 174 then
                Mon = "Sky Bandit"
                LevelQuest = 1
                NameQuest = "SkyQuest"
                NameMon = "Sky Bandit"
                CFrameQuest = CFrame.new(-4839.53027, 716.368591, -2619.44165, 0.866007268, 0, 0.500031412, 0, 1, 0, -0.500031412, 0, 0.866007268)
                CFrameMon = CFrame.new(-4953.20703125, 295.74420166015625, -2899.22900390625)
            elseif MyLevel == 175 or MyLevel <= 189 then
                Mon = "Dark Master"
                LevelQuest = 2
                NameQuest = "SkyQuest"
                NameMon = "Dark Master"
                CFrameQuest = CFrame.new(-4839.53027, 716.368591, -2619.44165, 0.866007268, 0, 0.500031412, 0, 1, 0, -0.500031412, 0, 0.866007268)
                CFrameMon = CFrame.new(-5259.8447265625, 391.3976745605469, -2229.035400390625)
            elseif MyLevel == 190 or MyLevel <= 209 then
                Mon = "Prisoner"
                LevelQuest = 1
                NameQuest = "PrisonerQuest"
                NameMon = "Prisoner"
                CFrameQuest = CFrame.new(5308.93115, 1.65517521, 475.120514, -0.0894274712, -5.00292918e-09, -0.995993316, 1.60817859e-09, 1, -5.16744869e-09, 0.995993316, -2.06384709e-09, -0.0894274712)
                CFrameMon = CFrame.new(5098.9736328125, -0.3204058110713959, 474.2373352050781)
            elseif MyLevel == 210 or MyLevel <= 249 then
                Mon = "Dangerous Prisoner"
                LevelQuest = 2
                NameQuest = "PrisonerQuest"
                NameMon = "Dangerous Prisoner"
                CFrameQuest = CFrame.new(5308.93115, 1.65517521, 475.120514, -0.0894274712, -5.00292918e-09, -0.995993316, 1.60817859e-09, 1, -5.16744869e-09, 0.995993316, -2.06384709e-09, -0.0894274712)
                CFrameMon = CFrame.new(5654.5634765625, 15.633401870727539, 866.2991943359375)
            elseif MyLevel == 250 or MyLevel <= 274 then
                Mon = "Toga Warrior"
                LevelQuest = 1
                NameQuest = "ColosseumQuest"
                NameMon = "Toga Warrior"
                CFrameQuest = CFrame.new(-1580.04663, 6.35000277, -2986.47534, -0.515037298, 0, -0.857167721, 0, 1, 0, 0.857167721, 0, -0.515037298)
                CFrameMon = CFrame.new(-1820.21484375, 51.68385696411133, -2740.6650390625)
            elseif MyLevel == 275 or MyLevel <= 299 then
                Mon = "Gladiator"
                LevelQuest = 2
                NameQuest = "ColosseumQuest"
                NameMon = "Gladiator"
                CFrameQuest = CFrame.new(-1580.04663, 6.35000277, -2986.47534, -0.515037298, 0, -0.857167721, 0, 1, 0, 0.857167721, 0, -0.515037298)
                CFrameMon = CFrame.new(-1292.838134765625, 56.380882263183594, -3339.031494140625)
            elseif MyLevel == 300 or MyLevel <= 324 then
                Mon = "Military Soldier"
                LevelQuest = 1
                NameQuest = "MagmaQuest"
                NameMon = "Military Soldier"
                CFrameQuest = CFrame.new(-5313.37012, 10.9500084, 8515.29395, -0.499959469, 0, 0.866048813, 0, 1, 0, -0.866048813, 0, -0.499959469)
                CFrameMon = CFrame.new(-5411.16455078125, 11.081554412841797, 8454.29296875)
            elseif MyLevel == 325 or MyLevel <= 374 then
                Mon = "Military Spy"
                LevelQuest = 2
                NameQuest = "MagmaQuest"
                NameMon = "Military Spy"
                CFrameQuest = CFrame.new(-5313.37012, 10.9500084, 8515.29395, -0.499959469, 0, 0.866048813, 0, 1, 0, -0.866048813, 0, -0.499959469)
                CFrameMon = CFrame.new(-5802.8681640625, 86.26241302490234, 8828.859375)
            elseif MyLevel == 375 or MyLevel <= 399 then
                Mon = "Fishman Warrior"
                LevelQuest = 1
                NameQuest = "FishmanQuest"
                NameMon = "Fishman Warrior"
                CFrameQuest = CFrame.new(61122.65234375, 18.497442245483, 1569.3997802734)
                CFrameMon = CFrame.new(60878.30078125, 18.482830047607422, 1543.7574462890625)
                if _G.AutoFarm and (CFrameQuest.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 10000 then
                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(61163.8515625, 11.6796875, 1819.7841796875))
                end
            elseif MyLevel == 400 or MyLevel <= 449 then
                Mon = "Fishman Commando"
                LevelQuest = 2
                NameQuest = "FishmanQuest"
                NameMon = "Fishman Commando"
                CFrameQuest = CFrame.new(61122.65234375, 18.497442245483, 1569.3997802734)
                CFrameMon = CFrame.new(61922.6328125, 18.482830047607422, 1493.934326171875)
                if _G.AutoFarm and (CFrameQuest.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 10000 then
                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(61163.8515625, 11.6796875, 1819.7841796875))
                end
            elseif MyLevel == 450 or MyLevel <= 474 then
                Mon = "God's Guard"
                LevelQuest = 1
                NameQuest = "SkyExp1Quest"
                NameMon = "God's Guard"
                CFrameQuest = CFrame.new(-4721.88867, 843.874695, -1949.96643, 0.996191859, -0, -0.0871884301, 0, 1, -0, 0.0871884301, 0, 0.996191859)
                CFrameMon = CFrame.new(-4710.04296875, 845.2769775390625, -1927.3079833984375)
                if _G.AutoFarm and (CFrameQuest.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 10000 then
                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(-4607.82275, 872.54248, -1667.55688))
                end
            elseif MyLevel == 475 or MyLevel <= 524 then
                Mon = "Shanda"
                LevelQuest = 2
                NameQuest = "SkyExp1Quest"
                NameMon = "Shanda"
                CFrameQuest = CFrame.new(-7859.09814, 5544.19043, -381.476196, -0.422592998, 0, 0.906319618, 0, 1, 0, -0.906319618, 0, -0.422592998)
                CFrameMon = CFrame.new(-7678.48974609375, 5566.40380859375, -497.2156066894531)
                if _G.AutoFarm and (CFrameQuest.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 10000 then
                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(-7894.6176757813, 5547.1416015625, -380.29119873047))
                end
            elseif MyLevel == 525 or MyLevel <= 549 then
                Mon = "Royal Squad"
                LevelQuest = 1
                NameQuest = "SkyExp2Quest"
                NameMon = "Royal Squad"
                CFrameQuest = CFrame.new(-7906.81592, 5634.6626, -1411.99194, 0, 0, -1, 0, 1, 0, 1, 0, 0)
                CFrameMon = CFrame.new(-7624.25244140625, 5658.13330078125, -1467.354248046875)
            elseif MyLevel == 550 or MyLevel <= 624 then
                Mon = "Royal Soldier"
                LevelQuest = 2
                NameQuest = "SkyExp2Quest"
                NameMon = "Royal Soldier"
                CFrameQuest = CFrame.new(-7906.81592, 5634.6626, -1411.99194, 0, 0, -1, 0, 1, 0, 1, 0, 0)
                CFrameMon = CFrame.new(-7836.75341796875, 5645.6640625, -1790.6236572265625)
            elseif MyLevel == 625 or MyLevel <= 649 then
                Mon = "Galley Pirate"
                LevelQuest = 1
                NameQuest = "FountainQuest"
                NameMon = "Galley Pirate"
                CFrameQuest = CFrame.new(5259.81982, 37.3500175, 4050.0293, 0.087131381, 0, 0.996196866, 0, 1, 0, -0.996196866, 0, 0.087131381)
                CFrameMon = CFrame.new(5551.02197265625, 78.90135192871094, 3930.412841796875)
            elseif MyLevel >= 650 then
                Mon = "Galley Captain"
                LevelQuest = 2
                NameQuest = "FountainQuest"
                NameMon = "Galley Captain"
                CFrameQuest = CFrame.new(5259.81982, 37.3500175, 4050.0293, 0.087131381, 0, 0.996196866, 0, 1, 0, -0.996196866, 0, 0.087131381)
                CFrameMon = CFrame.new(5441.95166015625, 42.50205993652344, 4950.09375)
            end
        elseif World2 then
            if MyLevel == 700 or MyLevel <= 724 then
                Mon = "Raider"
                LevelQuest = 1
                NameQuest = "Area1Quest"
                NameMon = "Raider"
                CFrameQuest = CFrame.new(-429.543518, 71.7699966, 1836.18188, -0.22495985, 0, -0.974368095, 0, 1, 0, 0.974368095, 0, -0.22495985)
                CFrameMon = CFrame.new(-728.3267211914062, 52.779319763183594, 2345.7705078125)
            elseif MyLevel == 725 or MyLevel <= 774 then
                Mon = "Mercenary"
                LevelQuest = 2
                NameQuest = "Area1Quest"
                NameMon = "Mercenary"
                CFrameQuest = CFrame.new(-429.543518, 71.7699966, 1836.18188, -0.22495985, 0, -0.974368095, 0, 1, 0, 0.974368095, 0, -0.22495985)
                CFrameMon = CFrame.new(-1004.3244018554688, 80.15886688232422, 1424.619384765625)
            elseif MyLevel == 775 or MyLevel <= 799 then
                Mon = "Swan Pirate"
                LevelQuest = 1
                NameQuest = "Area2Quest"
                NameMon = "Swan Pirate"
                CFrameQuest = CFrame.new(638.43811, 71.769989, 918.282898, 0.139203906, 0, 0.99026376, 0, 1, 0, -0.99026376, 0, 0.139203906)
                CFrameMon = CFrame.new(1068.664306640625, 137.61428833007812, 1322.1060791015625)
            elseif MyLevel == 800 or MyLevel <= 874 then
                Mon = "Factory Staff"
                NameQuest = "Area2Quest"
                LevelQuest = 2
                NameMon = "Factory Staff"
                CFrameQuest = CFrame.new(632.698608, 73.1055908, 918.666321, -0.0319722369, 8.96074881e-10, -0.999488771, 1.36326533e-10, 1, 8.92172336e-10, 0.999488771, -1.07732087e-10, -0.0319722369)
                CFrameMon = CFrame.new(73.07867431640625, 81.86344146728516, -27.470672607421875)
            elseif MyLevel == 875 or MyLevel <= 899 then
                Mon = "Marine Lieutenant"
                LevelQuest = 1
                NameQuest = "MarineQuest3"
                NameMon = "Marine Lieutenant"
                CFrameQuest = CFrame.new(-2440.79639, 71.7140732, -3216.06812, 0.866007268, 0, 0.500031412, 0, 1, 0, -0.500031412, 0, 0.866007268)
                CFrameMon = CFrame.new(-2821.372314453125, 75.89727783203125, -3070.089111328125)
            elseif MyLevel == 900 or MyLevel <= 949 then
                Mon = "Marine Captain"
                LevelQuest = 2
                NameQuest = "MarineQuest3"
                NameMon = "Marine Captain"
                CFrameQuest = CFrame.new(-2440.79639, 71.7140732, -3216.06812, 0.866007268, 0, 0.500031412, 0, 1, 0, -0.500031412, 0, 0.866007268)
                CFrameMon = CFrame.new(-1861.2310791015625, 80.17658233642578, -3254.697509765625)
            elseif MyLevel == 950 or MyLevel <= 974 then
                Mon = "Zombie"
                LevelQuest = 1
                NameQuest = "ZombieQuest"
                NameMon = "Zombie"
                CFrameQuest = CFrame.new(-5497.06152, 47.5923004, -795.237061, -0.29242146, 0, -0.95628953, 0, 1, 0, 0.95628953, 0, -0.29242146)
                CFrameMon = CFrame.new(-5657.77685546875, 78.96973419189453, -928.68701171875)
            elseif MyLevel == 975 or MyLevel <= 999 then
                Mon = "Vampire"
                LevelQuest = 2
                NameQuest = "ZombieQuest"
                NameMon = "Vampire"
                CFrameQuest = CFrame.new(-5497.06152, 47.5923004, -795.237061, -0.29242146, 0, -0.95628953, 0, 1, 0, 0.95628953, 0, -0.29242146)
                CFrameMon = CFrame.new(-6037.66796875, 32.18463897705078, -1340.6597900390625)
            elseif MyLevel == 1000 or MyLevel <= 1049 then
                Mon = "Snow Trooper"
                LevelQuest = 1
                NameQuest = "SnowMountainQuest"
                NameMon = "Snow Trooper"
                CFrameQuest = CFrame.new(609.858826, 400.119904, -5372.25928, -0.374604106, 0, 0.92718488, 0, 1, 0, -0.92718488, 0, -0.374604106)
                CFrameMon = CFrame.new(549.1473388671875, 427.3870544433594, -5563.69873046875)
            elseif MyLevel == 1050 or MyLevel <= 1099 then
                Mon = "Winter Warrior"
                LevelQuest = 2
                NameQuest = "SnowMountainQuest"
                NameMon = "Winter Warrior"
                CFrameQuest = CFrame.new(609.858826, 400.119904, -5372.25928, -0.374604106, 0, 0.92718488, 0, 1, 0, -0.92718488, 0, -0.374604106)
                CFrameMon = CFrame.new(1142.7451171875, 475.6398010253906, -5199.41650390625)
            elseif MyLevel == 1100 or MyLevel <= 1124 then
                Mon = "Lab Subordinate"
                LevelQuest = 1
                NameQuest = "IceSideQuest"
                NameMon = "Lab Subordinate"
                CFrameQuest = CFrame.new(-6064.06885, 15.2422857, -4902.97852, 0.453972578, -0, -0.891015649, 0, 1, -0, 0.891015649, 0, 0.453972578)
                CFrameMon = CFrame.new(-5707.4716796875, 15.951709747314453, -4513.39208984375)
            elseif MyLevel == 1125 or MyLevel <= 1174 then
                Mon = "Horned Warrior"
                LevelQuest = 2
                NameQuest = "IceSideQuest"
                NameMon = "Horned Warrior"
                CFrameQuest = CFrame.new(-6064.06885, 15.2422857, -4902.97852, 0.453972578, -0, -0.891015649, 0, 1, -0, 0.891015649, 0, 0.453972578)
                CFrameMon = CFrame.new(-6341.36669921875, 15.951770782470703, -5723.162109375)
            elseif MyLevel == 1175 or MyLevel <= 1199 then
                Mon = "Magma Ninja"
                LevelQuest = 1
                NameQuest = "FireSideQuest"
                NameMon = "Magma Ninja"
                CFrameQuest = CFrame.new(-5428.03174, 15.0622921, -5299.43457, -0.882952213, 0, 0.469463557, 0, 1, 0, -0.469463557, 0, -0.882952213)
                CFrameMon = CFrame.new(-5449.6728515625, 76.65874481201172, -5808.20068359375)
            elseif MyLevel == 1200 or MyLevel <= 1249 then
                Mon = "Lava Pirate"
                LevelQuest = 2
                NameQuest = "FireSideQuest"
                NameMon = "Lava Pirate"
                CFrameQuest = CFrame.new(-5428.03174, 15.0622921, -5299.43457, -0.882952213, 0, 0.469463557, 0, 1, 0, -0.469463557, 0, -0.882952213)
                CFrameMon = CFrame.new(-5213.33154296875, 49.73788070678711, -4701.451171875)
            elseif MyLevel == 1250 or MyLevel <= 1274 then
                Mon = "Ship Deckhand"
                LevelQuest = 1
                NameQuest = "ShipQuest1"
                NameMon = "Ship Deckhand"
                CFrameQuest = CFrame.new(1037.80127, 125.092171, 32911.6016)         
                CFrameMon = CFrame.new(1212.0111083984375, 150.79205322265625, 33059.24609375)    
                if _G.AutoFarm and (CFrameQuest.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 10000 then
                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(923.21252441406, 126.9760055542, 32852.83203125))
                end
            elseif MyLevel == 1275 or MyLevel <= 1299 then
                Mon = "Ship Engineer"
                LevelQuest = 2
                NameQuest = "ShipQuest1"
                NameMon = "Ship Engineer"
                CFrameQuest = CFrame.new(1037.80127, 125.092171, 32911.6016)   
                CFrameMon = CFrame.new(919.4786376953125, 43.54401397705078, 32779.96875)   
                if _G.AutoFarm and (CFrameQuest.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 10000 then
                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(923.21252441406, 126.9760055542, 32852.83203125))
                end             
            elseif MyLevel == 1300 or MyLevel <= 1324 then
                Mon = "Ship Steward"
                LevelQuest = 1
                NameQuest = "ShipQuest2"
                NameMon = "Ship Steward"
                CFrameQuest = CFrame.new(968.80957, 125.092171, 33244.125)         
                CFrameMon = CFrame.new(919.4385375976562, 129.55599975585938, 33436.03515625)      
                if _G.AutoFarm and (CFrameQuest.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 10000 then
                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(923.21252441406, 126.9760055542, 32852.83203125))
                end
            elseif MyLevel == 1325 or MyLevel <= 1349 then
                Mon = "Ship Officer"
                LevelQuest = 2
                NameQuest = "ShipQuest2"
                NameMon = "Ship Officer"
                CFrameQuest = CFrame.new(968.80957, 125.092171, 33244.125)
                CFrameMon = CFrame.new(1036.0179443359375, 181.4390411376953, 33315.7265625)
                if _G.AutoFarm and (CFrameQuest.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 10000 then
                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(923.21252441406, 126.9760055542, 32852.83203125))
                end
            elseif MyLevel == 1350 or MyLevel <= 1374 then
                Mon = "Arctic Warrior"
                LevelQuest = 1
                NameQuest = "FrostQuest"
                NameMon = "Arctic Warrior"
                CFrameQuest = CFrame.new(5667.6582, 26.7997818, -6486.08984, -0.933587909, 0, -0.358349502, 0, 1, 0, 0.358349502, 0, -0.933587909)
                CFrameMon = CFrame.new(5966.24609375, 62.97002029418945, -6179.3828125)
                if _G.AutoFarm and (CFrameQuest.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 10000 then
                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(-6508.5581054688, 5000.034996032715, -132.83953857422))
                end
            elseif MyLevel == 1375 or MyLevel <= 1424 then
                Mon = "Snow Lurker"
                LevelQuest = 2
                NameQuest = "FrostQuest"
                NameMon = "Snow Lurker"
                CFrameQuest = CFrame.new(5667.6582, 26.7997818, -6486.08984, -0.933587909, 0, -0.358349502, 0, 1, 0, 0.358349502, 0, -0.933587909)
                CFrameMon = CFrame.new(5407.07373046875, 69.19437408447266, -6880.88037109375)
            elseif MyLevel == 1425 or MyLevel <= 1449 then
                Mon = "Sea Soldier"
                LevelQuest = 1
                NameQuest = "ForgottenQuest"
                NameMon = "Sea Soldier"
                CFrameQuest = CFrame.new(-3054.44458, 235.544281, -10142.8193, 0.990270376, -0, -0.13915664, 0, 1, -0, 0.13915664, 0, 0.990270376)
                CFrameMon = CFrame.new(-3028.2236328125, 64.67451477050781, -9775.4267578125)
            elseif MyLevel >= 1450 then
                Mon = "Water Fighter"
                LevelQuest = 2
                NameQuest = "ForgottenQuest"
                NameMon = "Water Fighter"
                CFrameQuest = CFrame.new(-3054.44458, 235.544281, -10142.8193, 0.990270376, -0, -0.13915664, 0, 1, -0, 0.13915664, 0, 0.990270376)
                CFrameMon = CFrame.new(-3352.9013671875, 285.01556396484375, -10534.841796875)
            end
        elseif World3 then
            if MyLevel == 1500 or MyLevel <= 1524 then
                Mon = "Pirate Millionaire"
                LevelQuest = 1
                NameQuest = "PiratePortQuest"
                NameMon = "Pirate Millionaire"
                CFrameQuest = CFrame.new(-290.074677, 42.9034653, 5581.58984, 0.965929627, -0, -0.258804798, 0, 1, -0, 0.258804798, 0, 0.965929627)
                CFrameMon = CFrame.new(-245.9963836669922, 47.30615234375, 5584.1005859375)
            elseif MyLevel == 1525 or MyLevel <= 1574 then
                Mon = "Pistol Billionaire"
                LevelQuest = 2
                NameQuest = "PiratePortQuest"
                NameMon = "Pistol Billionaire"
                CFrameQuest = CFrame.new(-290.074677, 42.9034653, 5581.58984, 0.965929627, -0, -0.258804798, 0, 1, -0, 0.258804798, 0, 0.965929627)
                CFrameMon = CFrame.new(-187.3301544189453, 86.23987579345703, 6013.513671875)
            elseif MyLevel == 1575 or MyLevel <= 1599 then
                Mon = "Dragon Crew Warrior"
                LevelQuest = 1
                NameQuest = "AmazonQuest"
                NameMon = "Dragon Crew Warrior"
                CFrameQuest = CFrame.new(5832.83594, 51.6806107, -1101.51563, 0.898790359, -0, -0.438378751, 0, 1, -0, 0.438378751, 0, 0.898790359)
                CFrameMon = CFrame.new(6141.140625, 51.35136413574219, -1340.738525390625)
            elseif MyLevel == 1600 or MyLevel <= 1624 then 
                Mon = "Dragon Crew Archer [Lv. 1600]"
                NameQuest = "AmazonQuest"
                LevelQuest = 2
                NameMon = "Dragon Crew Archer"
                CFrameQuest = CFrame.new(5833.1147460938, 51.60498046875, -1103.0693359375)
                CFrameMon = CFrame.new(6616.41748046875, 441.7670593261719, 446.0469970703125)
            elseif MyLevel == 1625 or MyLevel <= 1649 then
                Mon = "Female Islander"
                NameQuest = "AmazonQuest2"
                LevelQuest = 1
                NameMon = "Female Islander"
                CFrameQuest = CFrame.new(5446.8793945313, 601.62945556641, 749.45672607422)
                CFrameMon = CFrame.new(4685.25830078125, 735.8078002929688, 815.3425903320312)
            elseif MyLevel == 1650 or MyLevel <= 1699 then 
                Mon = "Giant Islander [Lv. 1650]"
                NameQuest = "AmazonQuest2"
                LevelQuest = 2
                NameMon = "Giant Islander"
                CFrameQuest = CFrame.new(5446.8793945313, 601.62945556641, 749.45672607422)
                CFrameMon = CFrame.new(4729.09423828125, 590.436767578125, -36.97627639770508)
            elseif MyLevel == 1700 or MyLevel <= 1724 then
                Mon = "Marine Commodore"
                LevelQuest = 1
                NameQuest = "MarineTreeIsland"
                NameMon = "Marine Commodore"
                CFrameQuest = CFrame.new(2180.54126, 27.8156815, -6741.5498, -0.965929747, 0, 0.258804798, 0, 1, 0, -0.258804798, 0, -0.965929747)
                CFrameMon = CFrame.new(2286.0078125, 73.13391876220703, -7159.80908203125)
            elseif MyLevel == 1725 or MyLevel <= 1774 then
                Mon = "Marine Rear Admiral [Lv. 1725]"
                NameMon = "Marine Rear Admiral"
                NameQuest = "MarineTreeIsland"
                LevelQuest = 2
                CFrameQuest = CFrame.new(2179.98828125, 28.731239318848, -6740.0551757813)
                CFrameMon = CFrame.new(3656.773681640625, 160.52406311035156, -7001.5986328125)
            elseif MyLevel == 1775 or MyLevel <= 1799 then
                Mon = "Fishman Raider"
                LevelQuest = 1
                NameQuest = "DeepForestIsland3"
                NameMon = "Fishman Raider"
                CFrameQuest = CFrame.new(-10581.6563, 330.872955, -8761.18652, -0.882952213, 0, 0.469463557, 0, 1, 0, -0.469463557, 0, -0.882952213)   
                CFrameMon = CFrame.new(-10407.5263671875, 331.76263427734375, -8368.5166015625)
            elseif MyLevel == 1800 or MyLevel <= 1824 then
                Mon = "Fishman Captain"
                LevelQuest = 2
                NameQuest = "DeepForestIsland3"
                NameMon = "Fishman Captain"
                CFrameQuest = CFrame.new(-10581.6563, 330.872955, -8761.18652, -0.882952213, 0, 0.469463557, 0, 1, 0, -0.469463557, 0, -0.882952213)   
                CFrameMon = CFrame.new(-10994.701171875, 352.38140869140625, -9002.1103515625) 
            elseif MyLevel == 1825 or MyLevel <= 1849 then
                Mon = "Forest Pirate"
                LevelQuest = 1
                NameQuest = "DeepForestIsland"
                NameMon = "Forest Pirate"
                CFrameQuest = CFrame.new(-13234.04, 331.488495, -7625.40137, 0.707134247, -0, -0.707079291, 0, 1, -0, 0.707079291, 0, 0.707134247)
                CFrameMon = CFrame.new(-13274.478515625, 332.3781433105469, -7769.58056640625)
            elseif MyLevel == 1850 or MyLevel <= 1899 then
                Mon = "Mythological Pirate"
                LevelQuest = 2
                NameQuest = "DeepForestIsland"
                NameMon = "Mythological Pirate"
                CFrameQuest = CFrame.new(-13234.04, 331.488495, -7625.40137, 0.707134247, -0, -0.707079291, 0, 1, -0, 0.707079291, 0, 0.707134247)   
                CFrameMon = CFrame.new(-13680.607421875, 501.08154296875, -6991.189453125)
            elseif MyLevel == 1900 or MyLevel <= 1924 then
                Mon = "Jungle Pirate"
                LevelQuest = 1
                NameQuest = "DeepForestIsland2"
                NameMon = "Jungle Pirate"
                CFrameQuest = CFrame.new(-12680.3818, 389.971039, -9902.01953, -0.0871315002, 0, 0.996196866, 0, 1, 0, -0.996196866, 0, -0.0871315002)
                CFrameMon = CFrame.new(-12256.16015625, 331.73828125, -10485.8369140625)
            elseif MyLevel == 1925 or MyLevel <= 1974 then
                Mon = "Musketeer Pirate"
                LevelQuest = 2
                NameQuest = "DeepForestIsland2"
                NameMon = "Musketeer Pirate"
                CFrameQuest = CFrame.new(-12680.3818, 389.971039, -9902.01953, -0.0871315002, 0, 0.996196866, 0, 1, 0, -0.996196866, 0, -0.0871315002)
                CFrameMon = CFrame.new(-13457.904296875, 391.545654296875, -9859.177734375)
            elseif MyLevel == 1975 or MyLevel <= 1999 then
                Mon = "Reborn Skeleton"
                LevelQuest = 1
                NameQuest = "HauntedQuest1"
                NameMon = "Reborn Skeleton"
                CFrameQuest = CFrame.new(-9479.2168, 141.215088, 5566.09277, 0, 0, 1, 0, 1, -0, -1, 0, 0)
                CFrameMon = CFrame.new(-8763.7236328125, 165.72299194335938, 6159.86181640625)
            elseif MyLevel == 2000 or MyLevel <= 2024 then
                Mon = "Living Zombie"
                LevelQuest = 2
                NameQuest = "HauntedQuest1"
                NameMon = "Living Zombie"
                CFrameQuest = CFrame.new(-9479.2168, 141.215088, 5566.09277, 0, 0, 1, 0, 1, -0, -1, 0, 0)
                CFrameMon = CFrame.new(-10144.1318359375, 138.62667846679688, 5838.0888671875)
            elseif MyLevel == 2025 or MyLevel <= 2049 then
                Mon = "Demonic Soul"
                LevelQuest = 1
                NameQuest = "HauntedQuest2"
                NameMon = "Demonic Soul"
                CFrameQuest = CFrame.new(-9516.99316, 172.017181, 6078.46533, 0, 0, -1, 0, 1, 0, 1, 0, 0) 
                CFrameMon = CFrame.new(-9505.8720703125, 172.10482788085938, 6158.9931640625)
            elseif MyLevel == 2025 or MyLevel <= 2074 then
                Mon = "Posessed Mummy"
                LevelQuest = 2
                NameQuest = "HauntedQuest2"
                NameMon = "Posessed Mummy"
                CFrameQuest = CFrame.new(-9516.99316, 172.017181, 6078.46533, 0, 0, -1, 0, 1, 0, 1, 0, 0)
                CFrameMon = CFrame.new(-9582.0224609375, 6.251527309417725, 6205.478515625)
            elseif MyLevel == 2075 or MyLevel <= 2099 then
                Mon = "Peanut Scout"
                LevelQuest = 1
                NameQuest = "NutsIslandQuest"
                NameMon = "Peanut Scout"
                CFrameQuest = CFrame.new(-2104.3908691406, 38.104167938232, -10194.21875, 0, 0, -1, 0, 1, 0, 1, 0, 0)
                CFrameMon = CFrame.new(-2143.241943359375, 47.72198486328125, -10029.9951171875)
            elseif MyLevel == 2100 or MyLevel <= 2124 then
                Mon = "Peanut President"
                LevelQuest = 2
                NameQuest = "NutsIslandQuest"
                NameMon = "Peanut President"
                CFrameQuest = CFrame.new(-2104.3908691406, 38.104167938232, -10194.21875, 0, 0, -1, 0, 1, 0, 1, 0, 0)
                CFrameMon = CFrame.new(-1859.35400390625, 38.10316848754883, -10422.4296875)
            elseif MyLevel == 2125 or MyLevel <= 2149 then
                Mon = "Ice Cream Chef"
                LevelQuest = 1
                NameQuest = "IceCreamIslandQuest"
                NameMon = "Ice Cream Chef"
                CFrameQuest = CFrame.new(-820.64825439453, 65.819526672363, -10965.795898438, 0, 0, -1, 0, 1, 0, 1, 0, 0)
                CFrameMon = CFrame.new(-872.24658203125, 65.81957244873047, -10919.95703125)
            elseif MyLevel == 2150 or MyLevel <= 2199 then
                Mon = "Ice Cream Commander"
                LevelQuest = 2
                NameQuest = "IceCreamIslandQuest"
                NameMon = "Ice Cream Commander"
                CFrameQuest = CFrame.new(-820.64825439453, 65.819526672363, -10965.795898438, 0, 0, -1, 0, 1, 0, 1, 0, 0)
                CFrameMon = CFrame.new(-558.06103515625, 112.04895782470703, -11290.7744140625)
            elseif MyLevel == 2200 or MyLevel <= 2224 then
                Mon = "Cookie Crafter"
                LevelQuest = 1
                NameQuest = "CakeQuest1"
                NameMon = "Cookie Crafter"
                CFrameQuest = CFrame.new(-2021.32007, 37.7982254, -12028.7295, 0.957576931, -8.80302053e-08, 0.288177818, 6.9301187e-08, 1, 7.51931211e-08, -0.288177818, -5.2032135e-08, 0.957576931)
                CFrameMon = CFrame.new(-2374.13671875, 37.79826354980469, -12125.30859375)
            elseif MyLevel == 2225 or MyLevel <= 2249 then
                Mon = "Cake Guard"
                LevelQuest = 2
                NameQuest = "CakeQuest1"
                NameMon = "Cake Guard"
                CFrameQuest = CFrame.new(-2021.32007, 37.7982254, -12028.7295, 0.957576931, -8.80302053e-08, 0.288177818, 6.9301187e-08, 1, 7.51931211e-08, -0.288177818, -5.2032135e-08, 0.957576931)
                CFrameMon = CFrame.new(-1598.3070068359375, 43.773197174072266, -12244.5810546875)
            elseif MyLevel == 2250 or MyLevel <= 2274 then
                Mon = "Baking Staff"
                LevelQuest = 1
                NameQuest = "CakeQuest2"
                NameMon = "Baking Staff"
                CFrameQuest = CFrame.new(-1927.91602, 37.7981339, -12842.5391, -0.96804446, 4.22142143e-08, 0.250778586, 4.74911062e-08, 1, 1.49904711e-08, -0.250778586, 2.64211941e-08, -0.96804446)
                CFrameMon = CFrame.new(-1887.8099365234375, 77.6185073852539, -12998.3505859375)
            elseif MyLevel == 2275 or MyLevel <= 2299 then
                Mon = "Head Baker"
                LevelQuest = 2
                NameQuest = "CakeQuest2"
                NameMon = "Head Baker"
                CFrameQuest = CFrame.new(-1927.91602, 37.7981339, -12842.5391, -0.96804446, 4.22142143e-08, 0.250778586, 4.74911062e-08, 1, 1.49904711e-08, -0.250778586, 2.64211941e-08, -0.96804446)
                CFrameMon = CFrame.new(-2216.188232421875, 82.884521484375, -12869.2939453125)
            elseif MyLevel == 2300 or MyLevel <= 2324 then
                Mon = "Cocoa Warrior"
                LevelQuest = 1
                NameQuest = "ChocQuest1"
                NameMon = "Cocoa Warrior"
                CFrameQuest = CFrame.new(233.22836303710938, 29.876001358032227, -12201.2333984375)
                CFrameMon = CFrame.new(-21.55328369140625, 80.57499694824219, -12352.3876953125)
            elseif MyLevel == 2325 or MyLevel <= 2349 then
                Mon = "Chocolate Bar Battler"
                LevelQuest = 2
                NameQuest = "ChocQuest1"
                NameMon = "Chocolate Bar Battler"
                CFrameQuest = CFrame.new(233.22836303710938, 29.876001358032227, -12201.2333984375)
                CFrameMon = CFrame.new(582.590576171875, 77.18809509277344, -12463.162109375)
            elseif MyLevel == 2350 or MyLevel <= 2374 then
                Mon = "Sweet Thief"
                LevelQuest = 1
                NameQuest = "ChocQuest2"
                NameMon = "Sweet Thief"
                CFrameQuest = CFrame.new(150.5066375732422, 30.693693161010742, -12774.5029296875)
                CFrameMon = CFrame.new(165.1884765625, 76.05885314941406, -12600.8369140625)
            elseif MyLevel == 2375 or MyLevel <= 2399 then
                Mon = "Candy Rebel"
                LevelQuest = 2
                NameQuest = "ChocQuest2"
                NameMon = "Candy Rebel"
                CFrameQuest = CFrame.new(150.5066375732422, 30.693693161010742, -12774.5029296875)
                CFrameMon = CFrame.new(134.86563110351562, 77.2476806640625, -12876.5478515625)
            elseif MyLevel == 2400 or MyLevel <= 2424 then
                Mon = "Candy Pirate"
                LevelQuest = 1
                NameQuest = "CandyQuest1"
                NameMon = "Candy Pirate"
                CFrameQuest = CFrame.new(-1150.0400390625, 20.378934860229492, -14446.3349609375)
                CFrameMon = CFrame.new(-1310.5003662109375, 26.016523361206055, -14562.404296875)
            elseif MyLevel == 2425 or MyLevel <= 2449 then
                Mon = "Snow Demon"
                LevelQuest = 2
                NameQuest = "CandyQuest1"
                NameMon = "Snow Demon"
                CFrameQuest = CFrame.new(-1150.0400390625, 20.378934860229492, -14446.3349609375)
                CFrameMon = CFrame.new(-880.2006225585938, 71.24776458740234, -14538.609375)
            elseif MyLevel == 2450 or MyLevel <= 2474 then
                Mon = "Isle Outlaw"
                LevelQuest = 1
                NameQuest = "TikiQuest1"
                NameMon = "Isle Outlaw"
                CFrameQuest = CFrame.new(-16547.748046875, 61.13533401489258, -173.41360473632812)
                CFrameMon = CFrame.new(-16442.814453125, 116.13899993896484, -264.4637756347656)
            elseif MyLevel == 2475 or MyLevel <= 2499 then
                Mon = "Island Boy"
                LevelQuest = 2
                NameQuest = "TikiQuest1"
                NameMon = "Island Boy"
                CFrameQuest = CFrame.new(-16547.748046875, 61.13533401489258, -173.41360473632812)
                CFrameMon = CFrame.new(-16901.26171875, 84.06756591796875, -192.88906860351562)
            elseif MyLevel == 2500 or MyLevel <= 2524 then
                Mon = "Sun-kissed Warrior"
                LevelQuest = 1
                NameQuest = "TikiQuest2"
                NameMon = "kissed"
                CFrameQuest = CFrame.new(-16539.078125, 55.68632888793945, 1051.5738525390625)
                CFrameMon = CFrame.new(-16349.8779296875, 92.0808334350586, 1123.4169921875)
            elseif MyLevel == 2525 or MyLevel <= 2550 then
                Mon = "Isle Champion"
                LevelQuest = 2
                NameQuest = "TikiQuest2"
                NameMon = "Isle Champion"
                CFrameQuest = CFrame.new(-16539.078125, 55.68632888793945, 1051.5738525390625)
                CFrameMon = CFrame.new(-16347.4150390625, 92.09503936767578, 1122.335205078125)
                elseif MyLevel == 2550 or MyLevel <= 2575 then
                Mon = "Serpent Hunter"
                LevelQuest = 1
                NameQuest = "TikiQuest3"
                NameMon = "Serpent Hunter"
                CFrameQuest = CFrame.new(-16668.0312, 105.315765, 1568.60132, -0.999815822, 2.53269654e-08, 0.0191932656, 2.47972114e-08, 1, -2.78390253e-08, -0.0191932656, -2.73579577e-08, -0.999815822)
                CFrameMon = CFrame.new(-16645.6426, 163.092682, 1352.87317, 0.999801993, -7.3039903e-09, 0.0198997185, 5.12876497e-09, 1, 1.09360379e-07, -0.0198997185, -1.09236666e-07, 0.999801993)
                elseif MyLevel == 2575 or MyLevel <= 2600 then
                Mon = "Skull Slayer"
                LevelQuest = 2
                NameQuest = "TikiQuest3"
                NameMon = "Skull Slayer"
                CFrameQuest = CFrame.new(-16668.0312, 105.315765, 1568.60132, -0.999815822, 2.53269654e-08, 0.0191932656, 2.47972114e-08, 1, -2.78390253e-08, -0.0191932656, -2.73579577e-08, -0.999815822)
                CFrameMon = CFrame.new(-16838.25, 122.900497, 1722.86694, 0.998448908, 3.55804843e-08, -0.0556759238, -3.229162e-08, 1, 5.99712138e-08, 0.0556759238, -5.80803281e-08, 0.998448908)
            end
        end
    end
--------------------------------------------------------------------------------------------------------
    function Hop()
        local PlaceID = game.PlaceId
        local AllIDs = {}
        local foundAnything = ""
        local actualHour = os.date("!*t").hour
        local Deleted = false
        function TPReturner()
            local Site;
            if foundAnything == "" then
                Site = game.HttpService:JSONDecode(game:HttpGet('https://games.roblox.com/v1/games/' .. PlaceID .. '/servers/Public?sortOrder=Asc&limit=100'))
            else
                Site = game.HttpService:JSONDecode(game:HttpGet('https://games.roblox.com/v1/games/' .. PlaceID .. '/servers/Public?sortOrder=Asc&limit=100&cursor=' .. foundAnything))
            end
            local ID = ""
            if Site.nextPageCursor and Site.nextPageCursor ~= "null" and Site.nextPageCursor ~= nil then
                foundAnything = Site.nextPageCursor
            end
            local num = 0;
            for i,v in pairs(Site.data) do
                local Possible = true
                ID = tostring(v.id)
                if tonumber(v.maxPlayers) > tonumber(v.playing) then
                    for _,Existing in pairs(AllIDs) do
                        if num ~= 0 then
                            if ID == tostring(Existing) then
                                Possible = false
                            end
                        else
                            if tonumber(actualHour) ~= tonumber(Existing) then
                                local delFile = pcall(function()
                                    AllIDs = {}
                                    table.insert(AllIDs, actualHour)
                                end)
                            end
                        end
                        num = num + 1
                    end
                    if Possible == true then
                        table.insert(AllIDs, ID)
                        wait()
                        pcall(function()
                            wait()
                            game:GetService("TeleportService"):TeleportToPlaceInstance(PlaceID, ID, game.Players.LocalPlayer)
                        end)
                        wait(4)
                    end
                end
            end
        end
        function Teleport() 
            while wait() do
                pcall(function()
                    TPReturner()
                    if foundAnything ~= "" then
                        TPReturner()
                    end
                end)
            end
        end
        Teleport()
    end       

    function UpdateIslandESP() 
        for i,v in pairs(game:GetService("Workspace")["_WorldOrigin"].Locations:GetChildren()) do
            pcall(function()
                if IslandESP then 
                    if v.Name ~= "Sea" then
                        if not v:FindFirstChild('NameEsp') then
                            local bill = Instance.new('BillboardGui',v)
                            bill.Name = 'NameEsp'
                            bill.ExtentsOffset = Vector3.new(0, 1, 0)
                            bill.Size = UDim2.new(1,200,1,30)
                            bill.Adornee = v
                            bill.AlwaysOnTop = true
                            local name = Instance.new('TextLabel',bill)
                            name.Font = "GothamBold"
                            name.FontSize = "Size14"
                            name.TextWrapped = true
                            name.Size = UDim2.new(1,0,1,0)
                            name.TextYAlignment = 'Top'
                            name.BackgroundTransparency = 1
                            name.TextStrokeTransparency = 0.5
                            name.TextColor3 = Color3.fromRGB(7, 236, 240)
                        else
                            v['NameEsp'].TextLabel.Text = (v.Name ..'   \n'.. round((game:GetService('Players').LocalPlayer.Character.Head.Position - v.Position).Magnitude/3) ..' Distance')
                        end
                    end
                else
                    if v:FindFirstChild('NameEsp') then
                        v:FindFirstChild('NameEsp'):Destroy()
                    end
                end
            end)
        end
    end
    
    function isnil(thing)
	return (thing == nil)
end
local function round(n)
	return math.floor(tonumber(n) + 0.5)
end
Number = math.random(1, 1000000)
function UpdatePlayerChams()
	for i,v in pairs(game:GetService'Players':GetChildren()) do
		pcall(function()
			if not isnil(v.Character) then
				if ESPPlayer then
					if not isnil(v.Character.Head) and not v.Character.Head:FindFirstChild('NameEsp'..Number) then
						local bill = Instance.new('BillboardGui',v.Character.Head)
						bill.Name = 'NameEsp'..Number
						bill.ExtentsOffset = Vector3.new(0, 1, 0)
						bill.Size = UDim2.new(1,200,1,30)
						bill.Adornee = v.Character.Head
						bill.AlwaysOnTop = true
						local name = Instance.new('TextLabel',bill)
						name.Font = Enum.Font.GothamSemibold
						name.FontSize = "Size14"
						name.TextWrapped = true
						name.Text = (v.Name ..' \n'.. round((game:GetService('Players').LocalPlayer.Character.Head.Position - v.Character.Head.Position).Magnitude/3) ..' Distance')
						name.Size = UDim2.new(1,0,1,0)
						name.TextYAlignment = 'Top'
						name.BackgroundTransparency = 1
						name.TextStrokeTransparency = 0.5
						if v.Team == game.Players.LocalPlayer.Team then
							name.TextColor3 = Color3.new(0,255,0)
						else
							name.TextColor3 = Color3.new(255,0,0)
						end
					else
						v.Character.Head['NameEsp'..Number].TextLabel.Text = (v.Name ..' | '.. round((game:GetService('Players').LocalPlayer.Character.Head.Position - v.Character.Head.Position).Magnitude/3) ..' Distance\nHealth: ' .. round(v.Character.Humanoid.Health*100/v.Character.Humanoid.MaxHealth) .. '%')
					end
				else
					if v.Character.Head:FindFirstChild('NameEsp'..Number) then
						v.Character.Head:FindFirstChild('NameEsp'..Number):Destroy()
					end
				end
			end
		end)
	end
end
function UpdateChestChams() 
	for i,v in pairs(game.Workspace:GetChildren()) do
		pcall(function()
			if string.find(v.Name,"Chest") then
				if ChestESP then
					if string.find(v.Name,"Chest") then
						if not v:FindFirstChild('NameEsp'..Number) then
							local bill = Instance.new('BillboardGui',v)
							bill.Name = 'NameEsp'..Number
							bill.ExtentsOffset = Vector3.new(0, 1, 0)
							bill.Size = UDim2.new(1,200,1,30)
							bill.Adornee = v
							bill.AlwaysOnTop = true
							local name = Instance.new('TextLabel',bill)
							name.Font = Enum.Font.GothamSemibold
							name.FontSize = "Size14"
							name.TextWrapped = true
							name.Size = UDim2.new(1,0,1,0)
							name.TextYAlignment = 'Top'
							name.BackgroundTransparency = 1
							name.TextStrokeTransparency = 0.5
							if v.Name == "Chest1" then
								name.TextColor3 = Color3.fromRGB(109, 109, 109)
								name.Text = ("Chest 1" ..' \n'.. round((game:GetService('Players').LocalPlayer.Character.Head.Position - v.Position).Magnitude/3) ..' Distance')
							end
							if v.Name == "Chest2" then
								name.TextColor3 = Color3.fromRGB(173, 158, 21)
								name.Text = ("Chest 2" ..' \n'.. round((game:GetService('Players').LocalPlayer.Character.Head.Position - v.Position).Magnitude/3) ..' Distance')
							end
							if v.Name == "Chest3" then
								name.TextColor3 = Color3.fromRGB(85, 255, 255)
								name.Text = ("Chest 3" ..' \n'.. round((game:GetService('Players').LocalPlayer.Character.Head.Position - v.Position).Magnitude/3) ..' Distance')
							end
						else
							v['NameEsp'..Number].TextLabel.Text = (v.Name ..'   \n'.. round((game:GetService('Players').LocalPlayer.Character.Head.Position - v.Position).Magnitude/3) ..' Distance')
						end
					end
				else
					if v:FindFirstChild('NameEsp'..Number) then
						v:FindFirstChild('NameEsp'..Number):Destroy()
					end
				end
			end
		end)
	end
end
function UpdateDevilChams() 
	for i,v in pairs(game.Workspace:GetChildren()) do
		pcall(function()
			if DevilFruitESP then
				if string.find(v.Name, "Fruit") then   
					if not v.Handle:FindFirstChild('NameEsp'..Number) then
						local bill = Instance.new('BillboardGui',v.Handle)
						bill.Name = 'NameEsp'..Number
						bill.ExtentsOffset = Vector3.new(0, 1, 0)
						bill.Size = UDim2.new(1,200,1,30)
						bill.Adornee = v.Handle
						bill.AlwaysOnTop = true
						local name = Instance.new('TextLabel',bill)
						name.Font = Enum.Font.GothamSemibold
						name.FontSize = "Size14"
						name.TextWrapped = true
						name.Size = UDim2.new(1,0,1,0)
						name.TextYAlignment = 'Top'
						name.BackgroundTransparency = 1
						name.TextStrokeTransparency = 0.5
						name.TextColor3 = Color3.fromRGB(255, 255, 255)
						name.Text = (v.Name ..' \n'.. round((game:GetService('Players').LocalPlayer.Character.Head.Position - v.Handle.Position).Magnitude/3) ..' Distance')
					else
						v.Handle['NameEsp'..Number].TextLabel.Text = (v.Name ..'   \n'.. round((game:GetService('Players').LocalPlayer.Character.Head.Position - v.Handle.Position).Magnitude/3) ..' Distance')
					end
				end
			else
				if v.Handle:FindFirstChild('NameEsp'..Number) then
					v.Handle:FindFirstChild('NameEsp'..Number):Destroy()
				end
			end
		end)
	end
end
function UpdateFlowerChams() 
	for i,v in pairs(game.Workspace:GetChildren()) do
		pcall(function()
			if v.Name == "Flower2" or v.Name == "Flower1" then
				if FlowerESP then 
					if not v:FindFirstChild('NameEsp'..Number) then
						local bill = Instance.new('BillboardGui',v)
						bill.Name = 'NameEsp'..Number
						bill.ExtentsOffset = Vector3.new(0, 1, 0)
						bill.Size = UDim2.new(1,200,1,30)
						bill.Adornee = v
						bill.AlwaysOnTop = true
						local name = Instance.new('TextLabel',bill)
						name.Font = Enum.Font.GothamSemibold
						name.FontSize = "Size14"
						name.TextWrapped = true
						name.Size = UDim2.new(1,0,1,0)
						name.TextYAlignment = 'Top'
						name.BackgroundTransparency = 1
						name.TextStrokeTransparency = 0.5
						name.TextColor3 = Color3.fromRGB(255, 0, 0)
						if v.Name == "Flower1" then 
							name.Text = ("Blue Flower" ..' \n'.. round((game:GetService('Players').LocalPlayer.Character.Head.Position - v.Position).Magnitude/3) ..' Distance')
							name.TextColor3 = Color3.fromRGB(0, 0, 255)
						end
						if v.Name == "Flower2" then
							name.Text = ("Red Flower" ..' \n'.. round((game:GetService('Players').LocalPlayer.Character.Head.Position - v.Position).Magnitude/3) ..' Distance')
							name.TextColor3 = Color3.fromRGB(255, 0, 0)
						end
					else
						v['NameEsp'..Number].TextLabel.Text = (v.Name ..'   \n'.. round((game:GetService('Players').LocalPlayer.Character.Head.Position - v.Position).Magnitude/3) ..' Distance')
					end
				else
					if v:FindFirstChild('NameEsp'..Number) then
					v:FindFirstChild('NameEsp'..Number):Destroy()
					end
				end
			end   
		end)
	end
end
function UpdateRealFruitChams() 
	for i,v in pairs(game.Workspace.AppleSpawner:GetChildren()) do
		if v:IsA("Tool") then
			if RealFruitESP then 
				if not v.Handle:FindFirstChild('NameEsp'..Number) then
					local bill = Instance.new('BillboardGui',v.Handle)
					bill.Name = 'NameEsp'..Number
					bill.ExtentsOffset = Vector3.new(0, 1, 0)
					bill.Size = UDim2.new(1,200,1,30)
					bill.Adornee = v.Handle
					bill.AlwaysOnTop = true
					local name = Instance.new('TextLabel',bill)
					name.Font = Enum.Font.GothamSemibold
					name.FontSize = "Size14"
					name.TextWrapped = true
					name.Size = UDim2.new(1,0,1,0)
					name.TextYAlignment = 'Top'
					name.BackgroundTransparency = 1
					name.TextStrokeTransparency = 0.5
					name.TextColor3 = Color3.fromRGB(255, 0, 0)
					name.Text = (v.Name ..' \n'.. round((game:GetService('Players').LocalPlayer.Character.Head.Position - v.Handle.Position).Magnitude/3) ..' Distance')
				else
					v.Handle['NameEsp'..Number].TextLabel.Text = (v.Name ..' '.. round((game:GetService('Players').LocalPlayer.Character.Head.Position - v.Handle.Position).Magnitude/3) ..' Distance')
				end
			else
				if v.Handle:FindFirstChild('NameEsp'..Number) then
					v.Handle:FindFirstChild('NameEsp'..Number):Destroy()
				end
			end 
		end
	end
	for i,v in pairs(game.Workspace.PineappleSpawner:GetChildren()) do
		if v:IsA("Tool") then
			if RealFruitESP then 
				if not v.Handle:FindFirstChild('NameEsp'..Number) then
					local bill = Instance.new('BillboardGui',v.Handle)
					bill.Name = 'NameEsp'..Number
					bill.ExtentsOffset = Vector3.new(0, 1, 0)
					bill.Size = UDim2.new(1,200,1,30)
					bill.Adornee = v.Handle
					bill.AlwaysOnTop = true
					local name = Instance.new('TextLabel',bill)
					name.Font = Enum.Font.GothamSemibold
					name.FontSize = "Size14"
					name.TextWrapped = true
					name.Size = UDim2.new(1,0,1,0)
					name.TextYAlignment = 'Top'
					name.BackgroundTransparency = 1
					name.TextStrokeTransparency = 0.5
					name.TextColor3 = Color3.fromRGB(255, 174, 0)
					name.Text = (v.Name ..' \n'.. round((game:GetService('Players').LocalPlayer.Character.Head.Position - v.Handle.Position).Magnitude/3) ..' Distance')
				else
					v.Handle['NameEsp'..Number].TextLabel.Text = (v.Name ..' '.. round((game:GetService('Players').LocalPlayer.Character.Head.Position - v.Handle.Position).Magnitude/3) ..' Distance')
				end
			else
				if v.Handle:FindFirstChild('NameEsp'..Number) then
					v.Handle:FindFirstChild('NameEsp'..Number):Destroy()
				end
			end 
		end
	end
	for i,v in pairs(game.Workspace.BananaSpawner:GetChildren()) do
		if v:IsA("Tool") then
			if RealFruitESP then 
				if not v.Handle:FindFirstChild('NameEsp'..Number) then
					local bill = Instance.new('BillboardGui',v.Handle)
					bill.Name = 'NameEsp'..Number
					bill.ExtentsOffset = Vector3.new(0, 1, 0)
					bill.Size = UDim2.new(1,200,1,30)
					bill.Adornee = v.Handle
					bill.AlwaysOnTop = true
					local name = Instance.new('TextLabel',bill)
					name.Font = Enum.Font.GothamSemibold
					name.FontSize = "Size14"
					name.TextWrapped = true
					name.Size = UDim2.new(1,0,1,0)
					name.TextYAlignment = 'Top'
					name.BackgroundTransparency = 1
					name.TextStrokeTransparency = 0.5
					name.TextColor3 = Color3.fromRGB(251, 255, 0)
					name.Text = (v.Name ..' \n'.. round((game:GetService('Players').LocalPlayer.Character.Head.Position - v.Handle.Position).Magnitude/3) ..' Distance')
				else
					v.Handle['NameEsp'..Number].TextLabel.Text = (v.Name ..' '.. round((game:GetService('Players').LocalPlayer.Character.Head.Position - v.Handle.Position).Magnitude/3) ..' Distance')
				end
			else
				if v.Handle:FindFirstChild('NameEsp'..Number) then
					v.Handle:FindFirstChild('NameEsp'..Number):Destroy()
				end
			end 
		end
	end
end

function UpdateIslandESP() 
        for i,v in pairs(game:GetService("Workspace")["_WorldOrigin"].Locations:GetChildren()) do
            pcall(function()
                if IslandESP then 
                    if v.Name ~= "Sea" then
                        if not v:FindFirstChild('NameEsp') then
                            local bill = Instance.new('BillboardGui',v)
                            bill.Name = 'NameEsp'
                            bill.ExtentsOffset = Vector3.new(0, 1, 0)
                            bill.Size = UDim2.new(1,200,1,30)
                            bill.Adornee = v
                            bill.AlwaysOnTop = true
                            local name = Instance.new('TextLabel',bill)
                            name.Font = "GothamBold"
                            name.FontSize = "Size14"
                            name.TextWrapped = true
                            name.Size = UDim2.new(1,0,1,0)
                            name.TextYAlignment = 'Top'
                            name.BackgroundTransparency = 1
                            name.TextStrokeTransparency = 0.5
                            name.TextColor3 = Color3.fromRGB(7, 236, 240)
                        else
                            v['NameEsp'].TextLabel.Text = (v.Name ..'   \n'.. round((game:GetService('Players').LocalPlayer.Character.Head.Position - v.Position).Magnitude/3) ..' Distance')
                        end
                    end
                else
                    if v:FindFirstChild('NameEsp') then
                        v:FindFirstChild('NameEsp'):Destroy()
                    end
                end
            end)
        end
    end
    
    function isnil(thing)
	return (thing == nil)
end
local function round(n)
	return math.floor(tonumber(n) + 0.5)
end
Number = math.random(1, 1000000)
function UpdatePlayerChams()
	for i,v in pairs(game:GetService'Players':GetChildren()) do
		pcall(function()
			if not isnil(v.Character) then
				if ESPPlayer then
					if not isnil(v.Character.Head) and not v.Character.Head:FindFirstChild('NameEsp'..Number) then
						local bill = Instance.new('BillboardGui',v.Character.Head)
						bill.Name = 'NameEsp'..Number
						bill.ExtentsOffset = Vector3.new(0, 1, 0)
						bill.Size = UDim2.new(1,200,1,30)
						bill.Adornee = v.Character.Head
						bill.AlwaysOnTop = true
						local name = Instance.new('TextLabel',bill)
						name.Font = Enum.Font.GothamSemibold
						name.FontSize = "Size14"
						name.TextWrapped = true
						name.Text = (v.Name ..' \n'.. round((game:GetService('Players').LocalPlayer.Character.Head.Position - v.Character.Head.Position).Magnitude/3) ..' Distance')
						name.Size = UDim2.new(1,0,1,0)
						name.TextYAlignment = 'Top'
						name.BackgroundTransparency = 1
						name.TextStrokeTransparency = 0.5
						if v.Team == game.Players.LocalPlayer.Team then
							name.TextColor3 = Color3.new(0,255,0)
						else
							name.TextColor3 = Color3.new(255,0,0)
						end
					else
						v.Character.Head['NameEsp'..Number].TextLabel.Text = (v.Name ..' | '.. round((game:GetService('Players').LocalPlayer.Character.Head.Position - v.Character.Head.Position).Magnitude/3) ..' Distance\nHealth: ' .. round(v.Character.Humanoid.Health*100/v.Character.Humanoid.MaxHealth) .. '%')
					end
				else
					if v.Character.Head:FindFirstChild('NameEsp'..Number) then
						v.Character.Head:FindFirstChild('NameEsp'..Number):Destroy()
					end
				end
			end
		end)
	end
end
function UpdateChestChams() 
	for i,v in pairs(game.Workspace:GetChildren()) do
		pcall(function()
			if string.find(v.Name,"Chest") then
				if ChestESP then
					if string.find(v.Name,"Chest") then
						if not v:FindFirstChild('NameEsp'..Number) then
							local bill = Instance.new('BillboardGui',v)
							bill.Name = 'NameEsp'..Number
							bill.ExtentsOffset = Vector3.new(0, 1, 0)
							bill.Size = UDim2.new(1,200,1,30)
							bill.Adornee = v
							bill.AlwaysOnTop = true
							local name = Instance.new('TextLabel',bill)
							name.Font = Enum.Font.GothamSemibold
							name.FontSize = "Size14"
							name.TextWrapped = true
							name.Size = UDim2.new(1,0,1,0)
							name.TextYAlignment = 'Top'
							name.BackgroundTransparency = 1
							name.TextStrokeTransparency = 0.5
							if v.Name == "Chest1" then
								name.TextColor3 = Color3.fromRGB(109, 109, 109)
								name.Text = ("Chest 1" ..' \n'.. round((game:GetService('Players').LocalPlayer.Character.Head.Position - v.Position).Magnitude/3) ..' Distance')
							end
							if v.Name == "Chest2" then
								name.TextColor3 = Color3.fromRGB(173, 158, 21)
								name.Text = ("Chest 2" ..' \n'.. round((game:GetService('Players').LocalPlayer.Character.Head.Position - v.Position).Magnitude/3) ..' Distance')
							end
							if v.Name == "Chest3" then
								name.TextColor3 = Color3.fromRGB(85, 255, 255)
								name.Text = ("Chest 3" ..' \n'.. round((game:GetService('Players').LocalPlayer.Character.Head.Position - v.Position).Magnitude/3) ..' Distance')
							end
						else
							v['NameEsp'..Number].TextLabel.Text = (v.Name ..'   \n'.. round((game:GetService('Players').LocalPlayer.Character.Head.Position - v.Position).Magnitude/3) ..' Distance')
						end
					end
				else
					if v:FindFirstChild('NameEsp'..Number) then
						v:FindFirstChild('NameEsp'..Number):Destroy()
					end
				end
			end
		end)
	end
end
function UpdateDevilChams() 
	for i,v in pairs(game.Workspace:GetChildren()) do
		pcall(function()
			if DevilFruitESP then
				if string.find(v.Name, "Fruit") then   
					if not v.Handle:FindFirstChild('NameEsp'..Number) then
						local bill = Instance.new('BillboardGui',v.Handle)
						bill.Name = 'NameEsp'..Number
						bill.ExtentsOffset = Vector3.new(0, 1, 0)
						bill.Size = UDim2.new(1,200,1,30)
						bill.Adornee = v.Handle
						bill.AlwaysOnTop = true
						local name = Instance.new('TextLabel',bill)
						name.Font = Enum.Font.GothamSemibold
						name.FontSize = "Size14"
						name.TextWrapped = true
						name.Size = UDim2.new(1,0,1,0)
						name.TextYAlignment = 'Top'
						name.BackgroundTransparency = 1
						name.TextStrokeTransparency = 0.5
						name.TextColor3 = Color3.fromRGB(255, 255, 255)
						name.Text = (v.Name ..' \n'.. round((game:GetService('Players').LocalPlayer.Character.Head.Position - v.Handle.Position).Magnitude/3) ..' Distance')
					else
						v.Handle['NameEsp'..Number].TextLabel.Text = (v.Name ..'   \n'.. round((game:GetService('Players').LocalPlayer.Character.Head.Position - v.Handle.Position).Magnitude/3) ..' Distance')
					end
				end
			else
				if v.Handle:FindFirstChild('NameEsp'..Number) then
					v.Handle:FindFirstChild('NameEsp'..Number):Destroy()
				end
			end
		end)
	end
end
function UpdateFlowerChams() 
	for i,v in pairs(game.Workspace:GetChildren()) do
		pcall(function()
			if v.Name == "Flower2" or v.Name == "Flower1" then
				if FlowerESP then 
					if not v:FindFirstChild('NameEsp'..Number) then
						local bill = Instance.new('BillboardGui',v)
						bill.Name = 'NameEsp'..Number
						bill.ExtentsOffset = Vector3.new(0, 1, 0)
						bill.Size = UDim2.new(1,200,1,30)
						bill.Adornee = v
						bill.AlwaysOnTop = true
						local name = Instance.new('TextLabel',bill)
						name.Font = Enum.Font.GothamSemibold
						name.FontSize = "Size14"
						name.TextWrapped = true
						name.Size = UDim2.new(1,0,1,0)
						name.TextYAlignment = 'Top'
						name.BackgroundTransparency = 1
						name.TextStrokeTransparency = 0.5
						name.TextColor3 = Color3.fromRGB(255, 0, 0)
						if v.Name == "Flower1" then 
							name.Text = ("Blue Flower" ..' \n'.. round((game:GetService('Players').LocalPlayer.Character.Head.Position - v.Position).Magnitude/3) ..' Distance')
							name.TextColor3 = Color3.fromRGB(0, 0, 255)
						end
						if v.Name == "Flower2" then
							name.Text = ("Red Flower" ..' \n'.. round((game:GetService('Players').LocalPlayer.Character.Head.Position - v.Position).Magnitude/3) ..' Distance')
							name.TextColor3 = Color3.fromRGB(255, 0, 0)
						end
					else
						v['NameEsp'..Number].TextLabel.Text = (v.Name ..'   \n'.. round((game:GetService('Players').LocalPlayer.Character.Head.Position - v.Position).Magnitude/3) ..' Distance')
					end
				else
					if v:FindFirstChild('NameEsp'..Number) then
					v:FindFirstChild('NameEsp'..Number):Destroy()
					end
				end
			end   
		end)
	end
end
function UpdateRealFruitChams() 
	for i,v in pairs(game.Workspace.AppleSpawner:GetChildren()) do
		if v:IsA("Tool") then
			if RealFruitESP then 
				if not v.Handle:FindFirstChild('NameEsp'..Number) then
					local bill = Instance.new('BillboardGui',v.Handle)
					bill.Name = 'NameEsp'..Number
					bill.ExtentsOffset = Vector3.new(0, 1, 0)
					bill.Size = UDim2.new(1,200,1,30)
					bill.Adornee = v.Handle
					bill.AlwaysOnTop = true
					local name = Instance.new('TextLabel',bill)
					name.Font = Enum.Font.GothamSemibold
					name.FontSize = "Size14"
					name.TextWrapped = true
					name.Size = UDim2.new(1,0,1,0)
					name.TextYAlignment = 'Top'
					name.BackgroundTransparency = 1
					name.TextStrokeTransparency = 0.5
					name.TextColor3 = Color3.fromRGB(255, 0, 0)
					name.Text = (v.Name ..' \n'.. round((game:GetService('Players').LocalPlayer.Character.Head.Position - v.Handle.Position).Magnitude/3) ..' Distance')
				else
					v.Handle['NameEsp'..Number].TextLabel.Text = (v.Name ..' '.. round((game:GetService('Players').LocalPlayer.Character.Head.Position - v.Handle.Position).Magnitude/3) ..' Distance')
				end
			else
				if v.Handle:FindFirstChild('NameEsp'..Number) then
					v.Handle:FindFirstChild('NameEsp'..Number):Destroy()
				end
			end 
		end
	end
	for i,v in pairs(game.Workspace.PineappleSpawner:GetChildren()) do
		if v:IsA("Tool") then
			if RealFruitESP then 
				if not v.Handle:FindFirstChild('NameEsp'..Number) then
					local bill = Instance.new('BillboardGui',v.Handle)
					bill.Name = 'NameEsp'..Number
					bill.ExtentsOffset = Vector3.new(0, 1, 0)
					bill.Size = UDim2.new(1,200,1,30)
					bill.Adornee = v.Handle
					bill.AlwaysOnTop = true
					local name = Instance.new('TextLabel',bill)
					name.Font = Enum.Font.GothamSemibold
					name.FontSize = "Size14"
					name.TextWrapped = true
					name.Size = UDim2.new(1,0,1,0)
					name.TextYAlignment = 'Top'
					name.BackgroundTransparency = 1
					name.TextStrokeTransparency = 0.5
					name.TextColor3 = Color3.fromRGB(255, 174, 0)
					name.Text = (v.Name ..' \n'.. round((game:GetService('Players').LocalPlayer.Character.Head.Position - v.Handle.Position).Magnitude/3) ..' Distance')
				else
					v.Handle['NameEsp'..Number].TextLabel.Text = (v.Name ..' '.. round((game:GetService('Players').LocalPlayer.Character.Head.Position - v.Handle.Position).Magnitude/3) ..' Distance')
				end
			else
				if v.Handle:FindFirstChild('NameEsp'..Number) then
					v.Handle:FindFirstChild('NameEsp'..Number):Destroy()
				end
			end 
		end
	end
	for i,v in pairs(game.Workspace.BananaSpawner:GetChildren()) do
		if v:IsA("Tool") then
			if RealFruitESP then 
				if not v.Handle:FindFirstChild('NameEsp'..Number) then
					local bill = Instance.new('BillboardGui',v.Handle)
					bill.Name = 'NameEsp'..Number
					bill.ExtentsOffset = Vector3.new(0, 1, 0)
					bill.Size = UDim2.new(1,200,1,30)
					bill.Adornee = v.Handle
					bill.AlwaysOnTop = true
					local name = Instance.new('TextLabel',bill)
					name.Font = Enum.Font.GothamSemibold
					name.FontSize = "Size14"
					name.TextWrapped = true
					name.Size = UDim2.new(1,0,1,0)
					name.TextYAlignment = 'Top'
					name.BackgroundTransparency = 1
					name.TextStrokeTransparency = 0.5
					name.TextColor3 = Color3.fromRGB(251, 255, 0)
					name.Text = (v.Name ..' \n'.. round((game:GetService('Players').LocalPlayer.Character.Head.Position - v.Handle.Position).Magnitude/3) ..' Distance')
				else
					v.Handle['NameEsp'..Number].TextLabel.Text = (v.Name ..' '.. round((game:GetService('Players').LocalPlayer.Character.Head.Position - v.Handle.Position).Magnitude/3) ..' Distance')
				end
			else
				if v.Handle:FindFirstChild('NameEsp'..Number) then
					v.Handle:FindFirstChild('NameEsp'..Number):Destroy()
				end
			end 
		end
	end
end

spawn(function()
    while wait() do
        pcall(function()
            if MobESP then
                for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                    if v:FindFirstChild('HumanoidRootPart') then
                        if not v:FindFirstChild("MobEap") then
                            local BillboardGui = Instance.new("BillboardGui")
                            local TextLabel = Instance.new("TextLabel")

                            BillboardGui.Parent = v
                            BillboardGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
                            BillboardGui.Active = true
                            BillboardGui.Name = "MobEap"
                            BillboardGui.AlwaysOnTop = true
                            BillboardGui.LightInfluence = 1.000
                            BillboardGui.Size = UDim2.new(0, 200, 0, 50)
                            BillboardGui.StudsOffset = Vector3.new(0, 2.5, 0)

                            TextLabel.Parent = BillboardGui
                            TextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                            TextLabel.BackgroundTransparency = 1.000
                            TextLabel.Size = UDim2.new(0, 200, 0, 50)
                            TextLabel.Font = Enum.Font.SourceSansBold
                            TextLabel.TextColor3 = Color3.fromRGB(7, 236, 240)
                            TextLabel.Text.Size = 35
                        end
                        local Dis = math.floor((game.Players.LocalPlayer.Character.HumanoidRootPart.Position - v.HumanoidRootPart.Position).Magnitude)
                        v.MobEap.TextLabel.Text = v.Name.." - "..Dis.." Distance"
                    end
                end
            else
                for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                    if v:FindFirstChild("MobEap") then
                        v.MobEap:Destroy()
                    end
                end
            end
        end)
    end
end)

spawn(function()
    while wait() do
        pcall(function()
            if SeaESP then
                for i,v in pairs(game:GetService("Workspace").SeaBeasts:GetChildren()) do
                    if v:FindFirstChild('HumanoidRootPart') then
                        if not v:FindFirstChild("Seaesps") then
                            local BillboardGui = Instance.new("BillboardGui")
                            local TextLabel = Instance.new("TextLabel")

                            BillboardGui.Parent = v
                            BillboardGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
                            BillboardGui.Active = true
                            BillboardGui.Name = "Seaesps"
                            BillboardGui.AlwaysOnTop = true
                            BillboardGui.LightInfluence = 1.000
                            BillboardGui.Size = UDim2.new(0, 200, 0, 50)
                            BillboardGui.StudsOffset = Vector3.new(0, 2.5, 0)

                            TextLabel.Parent = BillboardGui
                            TextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                            TextLabel.BackgroundTransparency = 1.000
                            TextLabel.Size = UDim2.new(0, 200, 0, 50)
                            TextLabel.Font = Enum.Font.SourceSansBold
                            TextLabel.TextColor3 = Color3.fromRGB(7, 236, 240)
                            TextLabel.Text.Size = 35
                        end
                        local Dis = math.floor((game.Players.LocalPlayer.Character.HumanoidRootPart.Position - v.HumanoidRootPart.Position).Magnitude)
                        v.Seaesps.TextLabel.Text = v.Name.." - "..Dis.." Distance"
                    end
                end
            else
                for i,v in pairs (game:GetService("Workspace").SeaBeasts:GetChildren()) do
                    if v:FindFirstChild("Seaesps") then
                        v.Seaesps:Destroy()
                    end
                end
            end
        end)
    end
end)

spawn(function()
    while wait() do
        pcall(function()
            if NpcESP then
                for i,v in pairs(game:GetService("Workspace").NPCs:GetChildren()) do
                    if v:FindFirstChild('HumanoidRootPart') then
                        if not v:FindFirstChild("NpcEspes") then
                            local BillboardGui = Instance.new("BillboardGui")
                            local TextLabel = Instance.new("TextLabel")

                            BillboardGui.Parent = v
                            BillboardGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
                            BillboardGui.Active = true
                            BillboardGui.Name = "NpcEspes"
                            BillboardGui.AlwaysOnTop = true
                            BillboardGui.LightInfluence = 1.000
                            BillboardGui.Size = UDim2.new(0, 200, 0, 50)
                            BillboardGui.StudsOffset = Vector3.new(0, 2.5, 0)

                            TextLabel.Parent = BillboardGui
                            TextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                            TextLabel.BackgroundTransparency = 1.000
                            TextLabel.Size = UDim2.new(0, 200, 0, 50)
                            TextLabel.Font = Enum.Font.SourceSansBold
                            TextLabel.TextColor3 = Color3.fromRGB(7, 236, 240)
                            TextLabel.Text.Size = 35
                        end
                        local Dis = math.floor((game.Players.LocalPlayer.Character.HumanoidRootPart.Position - v.HumanoidRootPart.Position).Magnitude)
                        v.NpcEspes.TextLabel.Text = v.Name.." - "..Dis.." Distance"
                    end
                end
            else
                for i,v in pairs (game:GetService("Workspace").NPCs:GetChildren()) do
                    if v:FindFirstChild("NpcEspes") then
                        v.NpcEspes:Destroy()
                    end
                end
            end
        end)
    end
end)

local DamageModule = require(game:GetService("ReplicatedStorage").Effect.Container.Misc.Damage)
	local old = DamageModule.Run
	getgenv().FakeDamage = function(Damage)
    DamageModule.Run = function(...)
        args = {...}
        if Damage then
            args[1]['Value'] = tostring(Damage)
        end
        return old(unpack(args))
    end
end
	function TienTiny(text)
		local Notification = require(game.ReplicatedStorage.Notification)
		local notification = Notification.new(text)
		notification.Duration = 4
		notification:Display()
	end
	local function tablefound(ta, object)
		for i,v in pairs(ta) do
			if v == object then
				return true
			end
		end
		return false
	end

function isnil(thing)
    return (thing == nil)
end
local function round(n)
    return math.floor(tonumber(n) + 0.5)
end
Number = math.random(1, 1000000)

function UpdateIslandMirageESP() 
    for i,v in pairs(game:GetService("Workspace")["_WorldOrigin"].Locations:GetChildren()) do
        pcall(function()
            if MirageIslandESP then 
                if v.Name == "Mirage Island" then
                    if not v:FindFirstChild('NameEsp') then
                        local bill = Instance.new('BillboardGui',v)
                        bill.Name = 'NameEsp'
                        bill.ExtentsOffset = Vector3.new(0, 1, 0)
                        bill.Size = UDim2.new(1,200,1,30)
                        bill.Adornee = v
                        bill.AlwaysOnTop = true
                        local name = Instance.new('TextLabel',bill)
                        name.Font = "Code"
                        name.FontSize = "Size14"
                        name.TextWrapped = true
                        name.Size = UDim2.new(1,0,1,0)
                        name.TextYAlignment = 'Top'
                        name.BackgroundTransparency = 1
                        name.TextStrokeTransparency = 0.5
                        name.TextColor3 = Color3.fromRGB(80, 245, 245)
                    else
                        v['NameEsp'].TextLabel.Text = (v.Name ..'   \n'.. round((game:GetService('Players').LocalPlayer.Character.Head.Position - v.Position).Magnitude/3) ..' M')
                    end
                end
            else
                if v:FindFirstChild('NameEsp') then
                    v:FindFirstChild('NameEsp'):Destroy()
                end
            end
        end)
    end
end

function isnil(thing)
    return (thing == nil)
end
local function round(n)
    return math.floor(tonumber(n) + 0.5)
end
Number = math.random(1, 1000000)

function UpdateAfdESP() 
    for i,v in pairs(game:GetService("Workspace").NPCs:GetChildren()) do
        pcall(function()
            if AfdESP then 
                if v.Name == "Advanced Fruit Dealer" then
                    if not v:FindFirstChild('NameEsp') then
                        local bill = Instance.new('BillboardGui',v)
                        bill.Name = 'NameEsp'
                        bill.ExtentsOffset = Vector3.new(0, 1, 0)
                        bill.Size = UDim2.new(1,200,1,30)
                        bill.Adornee = v
                        bill.AlwaysOnTop = true
                        local name = Instance.new('TextLabel',bill)
                        name.Font = "Code"
                        name.FontSize = "Size14"
                        name.TextWrapped = true
                        name.Size = UDim2.new(1,0,1,0)
                        name.TextYAlignment = 'Top'
                        name.BackgroundTransparency = 1
                        name.TextStrokeTransparency = 0.5
                        name.TextColor3 = Color3.fromRGB(80, 245, 245)
                    else
                        v['NameEsp'].TextLabel.Text = (v.Name ..'   \n'.. round((game:GetService('Players').LocalPlayer.Character.Head.Position - v.Position).Magnitude/3) ..' M')
                    end
                end
            else
                if v:FindFirstChild('NameEsp') then
                    v:FindFirstChild('NameEsp'):Destroy()
                end
            end
        end)
    end
end

function UpdateAuraESP() 
    for i,v in pairs(game:GetService("Workspace").NPCs:GetChildren()) do
        pcall(function()
            if AuraESP then 
                if v.Name == "Master of Enhancement" then
                    if not v:FindFirstChild('NameEsp') then
                        local bill = Instance.new('BillboardGui',v)
                        bill.Name = 'NameEsp'
                        bill.ExtentsOffset = Vector3.new(0, 1, 0)
                        bill.Size = UDim2.new(1,200,1,30)
                        bill.Adornee = v
                        bill.AlwaysOnTop = true
                        local name = Instance.new('TextLabel',bill)
                        name.Font = "Code"
                        name.FontSize = "Size14"
                        name.TextWrapped = true
                        name.Size = UDim2.new(1,0,1,0)
                        name.TextYAlignment = 'Top'
                        name.BackgroundTransparency = 1
                        name.TextStrokeTransparency = 0.5
                        name.TextColor3 = Color3.fromRGB(80, 245, 245)
                    else
                        v['NameEsp'].TextLabel.Text = (v.Name ..'   \n'.. round((game:GetService('Players').LocalPlayer.Character.Head.Position - v.Position).Magnitude/3) ..' M')
                    end
                end
            else
                if v:FindFirstChild('NameEsp') then
                    v:FindFirstChild('NameEsp'):Destroy()
                end
            end
        end)
    end
end

function UpdateLSDESP() 
    for i,v in pairs(game:GetService("Workspace").NPCs:GetChildren()) do
        pcall(function()
            if LADESP then 
                if v.Name == "Legendary Sword Dealer" then
                    if not v:FindFirstChild('NameEsp') then
                        local bill = Instance.new('BillboardGui',v)
                        bill.Name = 'NameEsp'
                        bill.ExtentsOffset = Vector3.new(0, 1, 0)
                        bill.Size = UDim2.new(1,200,1,30)
                        bill.Adornee = v
                        bill.AlwaysOnTop = true
                        local name = Instance.new('TextLabel',bill)
                        name.Font = "Code"
                        name.FontSize = "Size14"
                        name.TextWrapped = true
                        name.Size = UDim2.new(1,0,1,0)
                        name.TextYAlignment = 'Top'
                        name.BackgroundTransparency = 1
                        name.TextStrokeTransparency = 0.5
                        name.TextColor3 = Color3.fromRGB(80, 245, 245)
                    else
                        v['NameEsp'].TextLabel.Text = (v.Name ..'   \n'.. round((game:GetService('Players').LocalPlayer.Character.Head.Position - v.Position).Magnitude/3) ..' M')
                    end
                end
            else
                if v:FindFirstChild('NameEsp') then
                    v:FindFirstChild('NameEsp'):Destroy()
                end
            end
        end)
    end
end

function UpdateGeaESP() 
    for i,v in pairs(game:GetService("Workspace").Map.MysticIsland:GetChildren()) do 
        pcall(function()
            if GearESP then 
                if v.Name == "MeshPart" then
                    if not v:FindFirstChild('NameEsp') then
                        local bill = Instance.new('BillboardGui',v)
                        bill.Name = 'NameEsp'
                        bill.ExtentsOffset = Vector3.new(0, 1, 0)
                        bill.Size = UDim2.new(1,200,1,30)
                        bill.Adornee = v
                        bill.AlwaysOnTop = true
                        local name = Instance.new('TextLabel',bill)
                        name.Font = "Code"
                        name.FontSize = "Size14"
                        name.TextWrapped = true
                        name.Size = UDim2.new(1,0,1,0)
                        name.TextYAlignment = 'Top'
                        name.BackgroundTransparency = 1
                        name.TextStrokeTransparency = 0.5
                        name.TextColor3 = Color3.fromRGB(80, 245, 245)
                    else
                        v['NameEsp'].TextLabel.Text = (v.Name ..'   \n'.. round((game:GetService('Players').LocalPlayer.Character.Head.Position - v.Position).Magnitude/3) ..' M')
                    end
                end
            else
                if v:FindFirstChild('NameEsp') then
                    v:FindFirstChild('NameEsp'):Destroy()
                end
            end
        end)
    end
end
    

    
    function InfAb()
        if InfAbility then
            if not game:GetService("Players").LocalPlayer.Character.HumanoidRootPart:FindFirstChild("Agility") then
                local inf = Instance.new("ParticleEmitter")
                inf.Acceleration = Vector3.new(0,0,0)
                inf.Archivable = true
                inf.Drag = 20
                inf.EmissionDirection = Enum.NormalId.Top
                inf.Enabled = true
                inf.Lifetime = NumberRange.new(0,0)
                inf.LightInfluence = 0
                inf.LockedToPart = true
                inf.Name = "Agility"
                inf.Rate = 500
                local numberKeypoints2 = {
                    NumberSequenceKeypoint.new(0, 0);
                    NumberSequenceKeypoint.new(1, 4); 
                }
                inf.Size = NumberSequence.new(numberKeypoints2)
                inf.RotSpeed = NumberRange.new(9999, 99999)
                inf.Rotation = NumberRange.new(0, 0)
                inf.Speed = NumberRange.new(30, 30)
                inf.SpreadAngle = Vector2.new(0,0,0,0)
                inf.Texture = ""
                inf.VelocityInheritance = 0
                inf.ZOffset = 2
                inf.Transparency = NumberSequence.new(0)
                inf.Color = ColorSequence.new(Color3.fromRGB(0,0,0),Color3.fromRGB(0,0,0))
                inf.Parent = game:GetService("Players").LocalPlayer.Character.HumanoidRootPart
            end
        else
            if game:GetService("Players").LocalPlayer.Character.HumanoidRootPart:FindFirstChild("Agility") then
                game:GetService("Players").LocalPlayer.Character.HumanoidRootPart:FindFirstChild("Agility"):Destroy()
            end
        end
    end
    
    local LocalPlayer = game:GetService'Players'.LocalPlayer
    local originalstam = LocalPlayer.Character.Energy.Value
    function infinitestam()
        LocalPlayer.Character.Energy.Changed:connect(function()
            if InfiniteEnergy then
                LocalPlayer.Character.Energy.Value = originalstam
            end 
        end)
    end
    
    spawn(function()
        pcall(function()
            while wait(.1) do
                if InfiniteEnergy then
                    wait(0.1)
                    originalstam = LocalPlayer.Character.Energy.Value
                    infinitestam()
                end
            end
        end)
    end)
    
    function NoDodgeCool()
        if nododgecool then
            for i,v in next, getgc() do
                if game:GetService("Players").LocalPlayer.Character.Dodge then
                    if typeof(v) == "function" and getfenv(v).script == game:GetService("Players").LocalPlayer.Character.Dodge then
                        for i2,v2 in next, getupvalues(v) do
                            if tostring(v2) == "0.1" then
                            repeat wait(.1)
                                setupvalue(v,i2,0)
                            until not nododgecool
                            end
                        end
                    end
                end
            end
        end
    end
    
    function fly()
        local mouse=game:GetService("Players").LocalPlayer:GetMouse''
        localplayer=game:GetService("Players").LocalPlayer
        game:GetService("Players").LocalPlayer.Character:WaitForChild("HumanoidRootPart")
        local torso = game:GetService("Players").LocalPlayer.Character.HumanoidRootPart
        local speedSET=25
        local keys={a=false,d=false,w=false,s=false}
        local e1
        local e2
        local function start()
            local pos = Instance.new("BodyPosition",torso)
            local gyro = Instance.new("BodyGyro",torso)
            pos.Name="EPIXPOS"
            pos.maxForce = Vector3.new(math.huge, math.huge, math.huge)
            pos.position = torso.Position
            gyro.maxTorque = Vector3.new(9e9, 9e9, 9e9)
            gyro.CFrame = torso.CFrame
            repeat
                    wait()
                    localplayer.Character.Humanoid.PlatformStand=true
                    local new=gyro.CFrame - gyro.CFrame.p + pos.position
                    if not keys.w and not keys.s and not keys.a and not keys.d then
                    speed=1
                    end
                    if keys.w then
                    new = new + workspace.CurrentCamera.CoordinateFrame.lookVector * speed
                    speed=speed+speedSET
                    end
                    if keys.s then
                    new = new - workspace.CurrentCamera.CoordinateFrame.lookVector * speed
                    speed=speed+speedSET
                    end
                    if keys.d then
                    new = new * CFrame.new(speed,0,0)
                    speed=speed+speedSET
                    end
                    if keys.a then
                    new = new * CFrame.new(-speed,0,0)
                    speed=speed+speedSET
                    end
                    if speed>speedSET then
                    speed=speedSET
                    end
                    pos.position=new.p
                    if keys.w then
                    gyro.CFrame = workspace.CurrentCamera.CoordinateFrame*CFrame.Angles(-math.rad(speed*15),0,0)
                    elseif keys.s then
                    gyro.CFrame = workspace.CurrentCamera.CoordinateFrame*CFrame.Angles(math.rad(speed*15),0,0)
                    else
                    gyro.CFrame = workspace.CurrentCamera.CoordinateFrame
                    end
            until not Fly
            if gyro then 
                    gyro:Destroy() 
            end
            if pos then 
                    pos:Destroy() 
            end
            flying=false
            localplayer.Character.Humanoid.PlatformStand=false
            speed=0
        end
        e1=mouse.KeyDown:connect(function(key)
            if not torso or not torso.Parent then 
                    flying=false e1:disconnect() e2:disconnect() return 
            end
            if key=="w" then
                keys.w=true
            elseif key=="s" then
                keys.s=true
            elseif key=="a" then
                keys.a=true
            elseif key=="d" then
                keys.d=true
            end
        end)
        e2=mouse.KeyUp:connect(function(key)
            if key=="w" then
                keys.w=false
            elseif key=="s" then
                keys.s=false
            elseif key=="a" then
                keys.a=false
            elseif key=="d" then
                keys.d=false
            end
        end)
        start()
    end
    
    function Click()
        game:GetService'VirtualUser':CaptureController()
        game:GetService'VirtualUser':Button1Down(Vector2.new(1280, 672))
    end
    
    function AutoHaki()
        if not game:GetService("Players").LocalPlayer.Character:FindFirstChild("HasBuso") then
            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Buso")
        end
    end
    
    function UnEquipWeapon(Weapon)
        if game.Players.LocalPlayer.Character:FindFirstChild(Weapon) then
            _G.NotAutoEquip = true
            wait(.5)
            game.Players.LocalPlayer.Character:FindFirstChild(Weapon).Parent = game.Players.LocalPlayer.Backpack
            wait(.1)
            _G.NotAutoEquip = false
        end
    end
    
    function EquipWeapon(ToolSe)
        if not _G.NotAutoEquip then
            if game.Players.LocalPlayer.Backpack:FindFirstChild(ToolSe) then
                Tool = game.Players.LocalPlayer.Backpack:FindFirstChild(ToolSe)
                wait(.1)
                game.Players.LocalPlayer.Character.Humanoid:EquipTool(Tool)
            end
        end
    end
   
    
    function GetDistance(target)
        return math.floor((target.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude)
    end
    
    function BTP(p)
    	pcall(function()
	    	if (p.Position-game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude >= 1500 and not Auto_Raid and game.Players.LocalPlayer.Character.Humanoid.Health > 0 then
				repeat wait()
					game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = p
					wait(.05)
					game.Players.LocalPlayer.Character.Head:Destroy()
					game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = p
				until (p.Position-game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude < 1500 and game.Players.LocalPlayer.Character.Humanoid.Health > 0
			end
		end)
	end

function TelePPlayer(P)
	game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = P
end
    

function TP1(Pos)
        Distance = (Pos.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude
        if game.Players.LocalPlayer.Character.Humanoid.Sit == true then game.Players.LocalPlayer.Character.Humanoid.Sit = false end
        pcall(function() tween = game:GetService("TweenService"):Create(game.Players.LocalPlayer.Character.HumanoidRootPart,TweenInfo.new(Distance/210, Enum.EasingStyle.Linear),{CFrame = Pos}) end)
        tween:Play()
        if Distance <= 250 then
            tween:Cancel()
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = Pos
        end
        if _G.StopTween == true then
            tween:Cancel()
            _G.Clip = false
        end
    end
    
    function TP(Pos)
        Distance = (Pos.Position - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude
        if Distance < 250 then
            Speed = 600
        elseif Distance >= 1000 then
            Speed = 200
        end
        game:GetService("TweenService"):Create(
            game:GetService("Players").LocalPlayer.Character.HumanoidRootPart,
            TweenInfo.new(Distance/Speed, Enum.EasingStyle.Linear),
            {CFrame = Pos}
        ):Play()
        _G.Clip = true
        wait(Distance/Speed)
        _G.Clip = false
    end

    function topos(Pos)
        Distance = (Pos.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude
        if game.Players.LocalPlayer.Character.Humanoid.Sit == true then game.Players.LocalPlayer.Character.Humanoid.Sit = false end
        pcall(function() tween = game:GetService("TweenService"):Create(game.Players.LocalPlayer.Character.HumanoidRootPart,TweenInfo.new(Distance/210, Enum.EasingStyle.Linear),{CFrame = Pos}) end)
        tween:Play()
        if Distance <= 250 then
            tween:Cancel()
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = Pos
        end
        if _G.StopTween == true then
            tween:Cancel()
            _G.Clip = false
        end
    end
    
    
--Tween Boats 
function TPB(CFgo)
	local tween_s = game:service"TweenService"
	local info = TweenInfo.new((game:GetService("Workspace").Boats.PirateBrigade.VehicleSeat.CFrame.Position - CFgo.Position).Magnitude/300, Enum.EasingStyle.Linear)
	tween = tween_s:Create(game:GetService("Workspace").Boats.PirateBrigade.VehicleSeat, info, {CFrame = CFgo})
	tween:Play()

	local tweenfunc = {}

	function tweenfunc:Stop()
		tween:Cancel()
	end

	return tweenfunc
end

function TPP(CFgo)
	if game.Players.LocalPlayer.Character:WaitForChild("Humanoid").Health <= 0 or not game:GetService("Players").LocalPlayer.Character:WaitForChild("Humanoid") then tween:Cancel() repeat wait() until game:GetService("Players").LocalPlayer.Character:WaitForChild("Humanoid") and game:GetService("Players").LocalPlayer.Character:WaitForChild("Humanoid").Health > 0 wait(7) return end
	local tween_s = game:service"TweenService"
	local info = TweenInfo.new((game:GetService("Players")["LocalPlayer"].Character.HumanoidRootPart.Position - CFgo.Position).Magnitude/325, Enum.EasingStyle.Linear)
	tween = tween_s:Create(game.Players.LocalPlayer.Character["HumanoidRootPart"], info, {CFrame = CFgo})
	tween:Play()

	local tweenfunc = {}

	function tweenfunc:Stop()
		tween:Cancel()
	end

	return tweenfunc
end

getgenv().ToTargets = function(p)
    task.spawn(function()
        pcall(function()
            if game:GetService("Players").LocalPlayer:DistanceFromCharacter(p.Position) <= 250 then 
                game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = p
            elseif not game.Players.LocalPlayer.Character:FindFirstChild("Root")then 
                local K = Instance.new("Part",game.Players.LocalPlayer.Character)
                K.Size = Vector3.new(1,0.5,1)
                K.Name = "Root"
                K.Anchored = true
                K.Transparency = 1
                K.CanCollide = false
                K.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame * CFrame.new(0,20,0)
            end
            local U = (game.Players.LocalPlayer.Character.HumanoidRootPart.Position-p.Position).Magnitude
            local z = game:service("TweenService")
            local B = TweenInfo.new((p.Position-game.Players.LocalPlayer.Character.Root.Position).Magnitude/300,Enum.EasingStyle.Linear)
            local S,g = pcall(function()
            local q = z:Create(game.Players.LocalPlayer.Character.Root,B,{CFrame = p})
            q:Play()
        end)
        if not S then 
            return g
        end
        game.Players.LocalPlayer.Character.Root.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
            if S and game.Players.LocalPlayer.Character:FindFirstChild("Root") then 
                pcall(function()
                    if (game.Players.LocalPlayer.Character.HumanoidRootPart.Position-p.Position).Magnitude >= 20 then 
                        spawn(function()
                            pcall(function()
                                if (game.Players.LocalPlayer.Character.Root.Position-game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 150 then 
                                    game.Players.LocalPlayer.Character.Root.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
                                else 
                                    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame=game.Players.LocalPlayer.Character.Root.CFrame
                                end
                            end)
                        end)
                    elseif (game.Players.LocalPlayer.Character.HumanoidRootPart.Position-p.Position).Magnitude >= 10 and(game.Players.LocalPlayer.Character.HumanoidRootPart.Position-p.Position).Magnitude < 20 then 
                        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = p
                    elseif (game.Players.LocalPlayer.Character.HumanoidRootPart.Position-p.Position).Magnitude < 10 then 
                        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = p
                    end
                end)
            end
	    end)
    end)
    end
    
Type = 1
spawn(function()
    while wait(.1) do
		if Type == 1 then
			Pos = CFrame.new(0,PosY,-30)
		elseif Type == 2 then
			Pos = CFrame.new(30,PosY,0)
		elseif Type == 3 then
			Pos = CFrame.new(0,PosY,30)	
		elseif Type == 4 then
			Pos = CFrame.new(-30,PosY,0)
        end
        end
    end)

spawn(function()
    while wait(.1) do
        Type = 1
        wait(0.5)
        Type = 2
        wait(0.5)
        Type = 3
        wait(0.5)
        Type = 4
        wait(0.5)
        Type = 5
        wait(0.5)
    end
end)
    
    spawn(function()
    game:GetService("RunService").Heartbeat:Connect(function()
        if _G.AutoAdvanceDungeon or _G.AutoDoughtBoss or _G.Auto_DungeonMobAura or _G.AutoFarmChest or _G.AutoFactory or _G.AutoFarmBossHallow or _G.AutoFarmSwanGlasses or _G.AutoLongSword or _G.AutoBlackSpikeycoat or _G.AutoElectricClaw or _G.AutoFarmGunMastery or _G.AutoHolyTorch or _G.AutoLawRaid or _G.AutoFarmBoss or _G.AutoTwinHooks or _G.AutoOpenSwanDoor or _G.AutoDragon_Trident or _G.AutoSaber or _G.NOCLIP or _G.AutoFarmFruitMastery or _G.AutoFarmGunMastery or _G.TeleportIsland or _G.Auto_EvoRace or _G.AutoFarmAllMsBypassType or _G.AutoObservationv2 or _G.AutoMusketeerHat or _G.AutoEctoplasm or _G.AutoRengoku or _G.Auto_Rainbow_Haki or _G.AutoObservation or _G.AutoDarkDagger or _G.Safe_Mode or _G.MasteryFruit or _G.AutoBudySword or _G.AutoOderSword or _G.AutoBounty or _G.AutoAllBoss or _G.Auto_Bounty or _G.AutoSharkman or _G.Auto_Mastery_Fruit or _G.Auto_Mastery_Gun or _G.Auto_Dungeon or _G.Auto_Cavender or _G.Auto_Pole or _G.Auto_Kill_Ply or _G.Auto_Factory or _G.AutoSecondSea or _G.TeleportPly or _G.AutoBartilo or _G.Auto_DarkBoss or _G.GrabChest or _G.AutoFarmBounty or _G.Holy_Torch or _G.AutoFarm or _G.Clip or _G.AutoElitehunter or _G.AutoThirdSea or _G.Auto_Bone or _G.Autoheart or _G.Autodoughking or _G.AutoFarmMaterial or _G.AutoNevaSoulGuitar or _G.Auto_Dragon_Trident or _G.Autotushita or _G.d or _G.Autowaden or _G.Autogay or _G.Autopole or _G.Autosaw or _G.AutoObservationHakiV2 or _G.AutoFarmNearest or AutoFarmChest or _G.AutoCarvender or _G.AutoTwinHook or AutoMobAura or _G.Tweenfruit or _G.AutoKai or _G.TeleportNPC or _G.Leather or _G.Auto_Wing or _G.Umm or _G.Makori_gay or Radioactive or Fish or Gunpowder or Dragon_Scale or Cocoafarm or Scrap or MiniHee or _G.AutoFarmSeabaest or _G.CDK or _G.AutoFarmMob or _G.AutoMysticIsland or _G.AutoFarmDungeon or _G.AutoRaidPirate or _G.AutoQuestRace or _G.TweenMGear or getgenv().AutoFarm or _G.AutoPlayerHunter or _G.AutoFactory or Grab_Chest or _G.Namfon or _G.AutoSwordMastery or _G.AutoSeaBest or _G.AutoKillTial or _G.Auto_Saber or _G.Position_Spawn or _G.DefendVolcano or _G.KillGolem or _G.TpPrehistoric or _G.TpSpy or _G.Farmfast or _G.AutoRace or _G.RaidPirate or Open_Color_Haki then
            if not game:GetService("Workspace"):FindFirstChild("LOL") then
                local LOL = Instance.new("Part")
                LOL.Name = "LOL"
                LOL.Parent = game.Workspace
                LOL.Anchored = true
                LOL.Transparency = 1
                LOL.Size = Vector3.new(30,-0.5,30)
            elseif game:GetService("Workspace"):FindFirstChild("LOL") then
                game.Workspace["LOL"].CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame * CFrame.new(0, -3.6, 0)
            end
        else
            if game:GetService("Workspace"):FindFirstChild("LOL") then
                game:GetService("Workspace"):FindFirstChild("LOL"):Destroy()
            end
        end
    end)
    end)

    spawn(function()
        pcall(function()
            while wait() do
                if _G.AutoAdvanceDungeon or _G.AutoDoughtBoss or _G.Auto_DungeonMobAura or _G.AutoFarmChest or _G.AutoFactory or _G.AutoFarmBossHallow or _G.AutoFarmSwanGlasses or _G.AutoLongSword or _G.AutoBlackSpikeycoat or _G.AutoElectricClaw or _G.AutoFarmGunMastery or _G.AutoHolyTorch or _G.AutoLawRaid or _G.AutoFarmBoss or _G.AutoTwinHooks or _G.AutoOpenSwanDoor or _G.AutoDragon_Trident or _G.AutoSaber or _G.AutoFarmFruitMastery or _G.AutoFarmGunMastery or _G.TeleportIsland or _G.Auto_EvoRace or _G.AutoFarmAllMsBypassType or _G.AutoObservationv2 or _G.AutoMusketeerHat or _G.AutoEctoplasm or _G.AutoRengoku or _G.Auto_Rainbow_Haki or _G.AutoObservation or _G.AutoDarkDagger or _G.Safe_Mode or _G.MasteryFruit or _G.AutoBudySword or _G.AutoOderSword or _G.AutoBounty or _G.AutoAllBoss or _G.Auto_Bounty or _G.AutoSharkman or _G.Auto_Mastery_Fruit or _G.Auto_Mastery_Gun or _G.Auto_Dungeon or _G.Auto_Cavender or _G.Auto_Pole or _G.Auto_Kill_Ply or _G.Auto_Factory or _G.AutoSecondSea or _G.TeleportPly or _G.AutoBartilo or _G.Auto_DarkBoss or _G.GrabChest or _G.AutoFarmBounty or _G.Holy_Torch or _G.AutoFarm or _G.Clip or FarmBoss or _G.AutoElitehunter or _G.AutoThirdSea or _G.Auto_Bone or _G.Autoheart or _G.Autodoughking or _G.AutoFarmMaterial or _G.AutoNevaSoulGuitar or _G.Auto_Dragon_Trident or _G.Autotushita or _G.d or _G.Autowaden or _G.Autogay or _G.Autopole or _G.Autosaw or _G.AutoObservationHakiV2 or _G.AutoFarmNearest or AutoFarmChest or _G.AutoCarvender or _G.AutoTwinHook or AutoMobAura or _G.Tweenfruit or _G.TeleportNPC or _G.Leather or _G.Auto_Wing or _G.Umm or _G.Makori_gay or Radioactive or Fish or Gunpowder or Dragon_Scale or Cocoafarm or Scrap or MiniHee or _G.AutoFarmSeabaest or _G.CDK or _G.AutoFarmMob or _G.AutoMysticIsland or _G.AutoFarmDungeon or _G.AutoRaidPirate or _G.AutoQuestRace or _G.TweenMGear or getgenv().AutoFarm or _G.AutoPlayerHunter or _G.AutoFactory or Grab_Chest or _G.Namfon or _G.AutoSwordMastery or _G.Auto_Seabest or _G.AutoSeaBest or _G.AutoKillTial or _G.Auto_Saber or _G.Position_Spawn or _G.Farmfast or _G.AutoRace or _G.RaidPirate or Open_Color_Haki or _G.AutoTerrorshark or FarmShark or _G.farmpiranya or _G.Fish_Crew_Member or _G.StartSea or _G.Auto_Kill_Leviathan or _G.DefendVolcano or _G.KillGolem or _G.TpPrehistoric or _G.TpSpy or _G.bjirFishBoat or _G.KillGhostShip or _G.AutoFrozenDimension or _G.AutoFKitsune == true then
                    if not game:GetService("Players").LocalPlayer.Character.HumanoidRootPart:FindFirstChild("BodyClip") then
                        local Noclip = Instance.new("BodyVelocity")
                        Noclip.Name = "BodyClip"
                        Noclip.Parent = game:GetService("Players").LocalPlayer.Character.HumanoidRootPart
                        Noclip.MaxForce = Vector3.new(100000,100000,100000)
                        Noclip.Velocity = Vector3.new(0,0,0)
                    end
                end
            end
        end)
    end)
    
    spawn(function()
        pcall(function()
            game:GetService("RunService").Stepped:Connect(function()
                if _G.AutoAdvanceDungeon or _G.AutoDoughtBoss or _G.Auto_DungeonMobAura or _G.AutoFarmChest or _G.AutoFactory or _G.AutoFarmBossHallow or _G.AutoFarmSwanGlasses or _G.AutoLongSword or _G.AutoBlackSpikeycoat or _G.AutoElectricClaw or _G.AutoFarmGunMastery or _G.AutoHolyTorch or _G.AutoLawRaid or _G.AutoFarmBoss or _G.AutoTwinHooks or _G.AutoOpenSwanDoor or _G.AutoDragon_Trident or _G.AutoSaber or _G.NOCLIP or _G.AutoFarmFruitMastery or _G.AutoFarmGunMastery or _G.TeleportIsland or _G.Auto_EvoRace or _G.AutoFarmAllMsBypassType or _G.AutoObservationv2 or _G.AutoMusketeerHat or _G.AutoEctoplasm or _G.AutoRengoku or _G.Auto_Rainbow_Haki or _G.AutoObservation or _G.AutoDarkDagger or _G.Safe_Mode or _G.MasteryFruit or _G.AutoBudySword or _G.AutoOderSword or _G.AutoBounty or _G.AutoAllBoss or _G.Auto_Bounty or _G.AutoSharkman or _G.Auto_Mastery_Fruit or _G.Auto_Mastery_Gun or _G.Auto_Dungeon or _G.Auto_Cavender or _G.Auto_Pole or _G.Auto_Kill_Ply or _G.Auto_Factory or _G.AutoSecondSea or _G.TeleportPly or _G.AutoBartilo or _G.Auto_DarkBoss or _G.GrabChest or _G.AutoFarmBounty or _G.Holy_Torch or _G.AutoFarm or _G.Clip or _G.AutoElitehunter or _G.AutoThirdSea or _G.Auto_Bone or _G.Autoheart or _G.Autodoughking or _G.AutoFarmMaterial or _G.AutoNevaSoulGuitar or _G.Auto_Dragon_Trident or _G.Autotushita or _G.Autowaden or _G.Autogay or _G.Autopole or _G.Autosaw or _G.AutoObservationHakiV2 or _G.AutoFarmNearest or _G.AutoCarvender or _G.AutoTwinHook or AutoMobAura or _G.Tweenfruit or _G.TeleportNPC or _G.AutoKai or _G.Leather or _G.Auto_Wing or _G.Umm or _G.Makori_gay or Radioactive or Fish or Gunpowder or Dragon_Scale or Cocoafarm or Scrap or MiniHee or _G.AutoFarmSeabaest or _G.CDK or _G.AutoFarmMob or _G.AutoMysticIsland or _G.AutoFarmDungeon or _G.AutoRaidPirate or _G.AutoQuestRace or _G.TweenMGear or getgenv().AutoFarm or _G.AutoPlayerHunter or _G.AutoFactory or _G.Namfon or _G.AutoSwordMastery or _G.Auto_Seabest or _G.AutoSeaBest or _G.AutoKillTial or _G.Auto_Saber or _G.Position_Spawn or _G.TPB or _G.Farmfast or _G.AutoRace or _G.RaidPirate or Open_Color_Haki or _G.AutoTerrorshark or FarmShark or _G.farmpiranya or _G.Fish_Crew_Member or _G.StartSea or _G.Auto_Kill_Leviathan or _G.DefendVolcano or _G.KillGolem or _G.TpPrehistoric or _G.TpSpy or _G.AutoFrozenDimension or _G.AutoFKitsune == true then
                    for _, v in pairs(game:GetService("Players").LocalPlayer.Character:GetDescendants()) do
                        if v:IsA("BasePart") then
                            v.CanCollide = false    
                        end
                    end
                end
            end)
        end)
    end)
    
    spawn(function()
        pcall(function()
            while wait() do
                if _G.AutoAdvanceDungeon or _G.AutoDoughtBoss or _G.Auto_DungeonMobAura or _G.AutoFarmChest or _G.AutoFactory or _G.AutoFarmBossHallow or _G.AutoFarmSwanGlasses or _G.AutoLongSword or _G.AutoBlackSpikeycoat or _G.AutoElectricClaw or _G.AutoFarmGunMastery or _G.AutoHolyTorch or _G.AutoLawRaid or _G.AutoFarmBoss or _G.AutoTwinHooks or _G.AutoOpenSwanDoor or _G.AutoDragon_Trident or _G.AutoSaber or _G.AutoFarmFruitMastery or _G.AutoFarmGunMastery or _G.TeleportIsland or _G.Auto_EvoRace or _G.AutoFarmAllMsBypassType or _G.AutoObservationv2 or _G.AutoMusketeerHat or _G.AutoEctoplasm or _G.AutoRengoku or _G.Auto_Rainbow_Haki or _G.AutoObservation or _G.AutoDarkDagger or _G.Safe_Mode or _G.MasteryFruit or _G.AutoBudySword or _G.AutoOderSword or _G.AutoBounty or _G.AutoAllBoss or _G.Auto_Bounty or _G.AutoSharkman or _G.Auto_Mastery_Fruit or _G.Auto_Mastery_Gun or _G.Auto_Dungeon or _G.Auto_Cavender or _G.Auto_Pole or _G.Auto_Kill_Ply or _G.Auto_Factory or _G.AutoSecondSea or _G.TeleportPly or _G.AutoBartilo or _G.Auto_DarkBoss or _G.GrabChest or _G.AutoFarmBounty or _G.Holy_Torch or _G.AutoFarm or _G.Clip or FarmBoss or _G.AutoElitehunter or _G.AutoThirdSea or _G.Auto_Bone or _G.Autoheart or _G.Autodoughking or _G.AutoFarmMaterial or _G.AutoNevaSoulGuitar or _G.Auto_Dragon_Trident or _G.Autotushita or _G.d or _G.Autowaden or _G.Autogay or _G.Autopole or _G.Autosaw or _G.AutoObservationHakiV2 or _G.AutoFarmNearest or AutoFarmChest or _G.AutoCarvender or _G.AutoTwinHook or AutoMobAura or _G.Tweenfruit or _G.TeleportNPC or _G.Leather or _G.Auto_Wing or _G.Umm or _G.Makori_gay or Radioactive or Fish or Gunpowder or Dragon_Scale or Cocoafarm or Scrap or MiniHee or _G.AutoFarmSeabaest or _G.CDK or _G.AutoFarmMob or _G.AutoMysticIsland or _G.AutoFarmDungeon or _G.AutoRaidPirate or _G.AutoQuestRace or _G.TweenMGear or getgenv().AutoFarm or _G.AutoPlayerHunter or _G.AutoFactory or Grab_Chest or _G.Namfon or _G.AutoSwordMastery or _G.Auto_Seabest or _G.AutoSeaBest or _G.AutoKillTial or _G.Auto_Saber or _G.Position_Spawn or _G.Farmfast or _G.AutoRace or _G.RaidPirate or _G.AutoTushitaSword or Open_Color_Haki or _G.AutoTerrorshark or FarmShark or _G.farmpiranya or _G.Fish_Crew_Member or _G.StartSea or _G.Auto_Kill_Leviathan or _G.DefendVolcano or _G.KillGolem or _G.TpPrehistoric or _G.TpSpy or _G.bjirFishBoat or _G.KillGhostShip == true then
                    if not game.Players.LocalPlayer.Character:FindFirstChild("Highlight") then
	            		local Highlight = Instance.new("Highlight")
                    	Highlight.FillColor = Color3.new(144, 238, 144)
	            		Highlight.OutlineColor = Color3.new(144,238,144)
            			Highlight.Parent = game.Players.LocalPlayer.Character
                    end
                end
            end
        end)
    end)
    
    function InstancePos(pos)
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = pos
    end
    
    function TP3(pos)
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = pos
    end
    
    spawn(function()
        while wait() do
            if _G.AutoDoughtBoss or _G.Auto_DungeonMobAura or _G.AutoFarmChest or _G.AutoFarmBossHallow or _G.AutoFactory or _G.AutoFarmSwanGlasses or _G.AutoLongSword or _G.AutoBlackSpikeycoat or _G.AutoElectricClaw or _G.AutoFarmGunMastery or _G.AutoHolyTorch or _G.AutoLawRaid or _G.AutoFarmBoss or _G.AutoTwinHooks or _G.AutoOpenSwanDoor or _G.AutoDragon_Trident or _G.AutoSaber or _G.NOCLIP or _G.AutoFarmFruitMastery or _G.AutoFarmGunMastery or _G.TeleportIsland or _G.Auto_EvoRace or _G.AutoFarmAllMsBypassType or _G.AutoObservationv2 or _G.AutoMusketeerHat or _G.AutoEctoplasm or _G.AutoRengoku or _G.Auto_Rainbow_Haki or _G.AutoObservation or _G.AutoDarkDagger or _G.Safe_Mode or _G.MasteryFruit or _G.AutoBudySword or _G.AutoOderSword or _G.AutoAllBoss or _G.Auto_Bounty or _G.AutoSharkman or _G.Auto_Mastery_Fruit or _G.Auto_Mastery_Gun or _G.Auto_Dungeon or _G.Auto_Cavender or _G.Auto_Pole or _G.Auto_Kill_Ply or _G.Auto_Factory or _G.AutoSecondSea or _G.TeleportPly or _G.AutoBartilo or _G.Auto_DarkBoss or _G.AutoFarm or _G.Clip or _G.AutoElitehunter or _G.AutoThirdSea or _G.Auto_Bone or _G.Autoheart or _G.Autodoughking or _G.d or _G.Autowaden or _G.Autogay or _G.AutoObservationHakiV2 or _G.AutoFarmMaterial or _G.AutoFarmNearest or _G.AutoCarvender or _G.AutoTwinHook or AutoMobAura or _G.Leather or _G.Auto_Wing or _G.Umm or _G.Makori_gay or Radioactive or Fish or Gunpowder or Dragon_Scale or Cocoafarm or Scrap or MiniHee or _G.AutoFarmSeabaest or _G.CDK or _G.AutoFarmMob or _G.AutoRaidPirate or getgenv().AutoFarm or _G.AutoPlayerHunter or _G.AutoFactory or _G.AttackDummy or _G.AutoSwordMastery or _G.Auto_Seabest or _G.AutoSeaBest or _G.AutoKillTial or _G.Auto_Saber or _G.Farmfast or _G.RaidPirate or _G.AutoTerrorshark or FarmShark or _G.farmpiranya or _G.Fish_Crew_Member or _G.bjirFishBoat or _G.KillGhostShip == true then
                pcall(function()
                    game:GetService("ReplicatedStorage").Remotes.CommE:FireServer("Ken",true)
                end)
            end    
        end
    end)
    
    spawn(function()
    game:GetService("RunService").RenderStepped:Connect(function()
        if _G.AutoClick or Fastattack then
             pcall(function()
                game:GetService'VirtualUser':CaptureController()
			    game:GetService'VirtualUser':Button1Down(Vector2.new(0,1,0,1))
            end)
        end
    end)
   end)

    function StopTween(target)
        if not target then
            _G.StopTween = true
            wait()
            topos(game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame)
            wait()
            if game:GetService("Players").LocalPlayer.Character.HumanoidRootPart:FindFirstChild("BodyClip") then
                game:GetService("Players").LocalPlayer.Character.HumanoidRootPart:FindFirstChild("BodyClip"):Destroy()
            end
            _G.StopTween = false
            _G.Clip = false
        end
        if game.Players.LocalPlayer.Character:FindFirstChild('Highlight') then
    		game.Players.LocalPlayer.Character:FindFirstChild('Highlight'):Destroy()
        end
    end
    
    spawn(function()
        pcall(function()
            while wait() do
                for i,v in pairs(game:GetService("Players").LocalPlayer.Backpack:GetChildren()) do  
                    if v:IsA("Tool") then
                        if v:FindFirstChild("RemoteFunctionShoot") then 
                            SelectWeaponGun = v.Name
                        end
                    end
                end
            end
        end)
    end)
    
    game:GetService("Players").LocalPlayer.Idled:connect(function()
        game:GetService("VirtualUser"):Button2Down(Vector2.new(0,0),workspace.CurrentCamera.CFrame)
        wait(1)
        game:GetService("VirtualUser"):Button2Up(Vector2.new(0,0),workspace.CurrentCamera.CFrame)
    end)
    
export type SliderConfig = {
	Min : number,
	Max : number,
	Default : number,
	VALUE : string,
}

local UI = require(script:WaitForChild('ModuleScript'))

 CONFIG 
	UI.Config.MainColor <color3>
	UI.Config.DropColor <color3>
	UI.Config["UI Size"] <udim2>

local Window = UI:NewWindow('BLUE X HUB','Blox Fruits','rbxassetid://6886692638')
local M = Window:AddMenu('Main',"Chính",'hash','change')
local S = Window:AddMenu('Farm',"Cày",'ticket','tab')

local TabFunctions = M:AddTab('Main','Chính','box-select')
local TabTeleport = M:AddTab('Setting','Cài Đặt','list')

local Setting = S:AddTab():AddSection('Setting Farm' idk idk idk)

Setting:AddDropdown('Select Weapon',{'Melee','Sword','Fruit','Gun'},nil,1,function(value)
	_G.SelectWeapon = value
end)

task.spawn(function()
    while wait() do
        pcall(function()
            if _G.SelectWeapon == "Melee" then
                for i, v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
                    if v.ToolTip == "Melee" then
                        if game.Players.LocalPlayer.Backpack:FindFirstChild(tostring(v.Name)) then
                            _G.SelectWeapon = v.Name
                        end
                    end
                end
            elseif _G.SelectWeapon == "Sword" then
                for i, v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
                    if v.ToolTip == "Sword" then
                        if game.Players.LocalPlayer.Backpack:FindFirstChild(tostring(v.Name)) then
                            _G.SelectWeapon = v.Name
                        end
                    end
                end
            elseif _G.SelectWeapon == "Gun" then
                for i, v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
                    if v.ToolTip == "Gun" then
                        if game.Players.LocalPlayer.Backpack:FindFirstChild(tostring(v.Name)) then
                            _G.SelectWeapon = v.Name
                        end
                    end
                end
            elseif _G.SelectWeapon == "Fruit" then
                for i, v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
                    if v.ToolTip == "Blox Fruit" then
                        if game.Players.LocalPlayer.Backpack:FindFirstChild(tostring(v.Name)) then
                            _G.SelectWeapon = v.Name
                        end
                    end
                end
            end
        end)
    end
end)

Setting:AddToggle('Fast Attack',true,function(value)
	_G.FastAttack = value
end)

local player = game.Players.LocalPlayer

function FindEnemiesInRange(targets, enemies)
    local playerPos = (player.Character or player.CharacterAdded:Wait()):GetPivot().Position
    local primaryTarget = nil

    for _, enemy in ipairs(enemies) do
        if not enemy:GetAttribute("IsBoat") and enemy:FindFirstChildOfClass("Humanoid") and enemy.Humanoid.Health > 0 then
            local head = enemy:FindFirstChild("Head")
            if head and (playerPos - head.Position).Magnitude <= 60 then
                if enemy ~= player.Character then
                    table.insert(targets, { enemy, head })
                    primaryTarget = head
                end
            end
        end
    end

    return primaryTarget
end

function GetEquippedTool()
    local character = player.Character
    if not character then return nil end
    for _, item in ipairs(character:GetChildren()) do
        if item:IsA("Tool") then
            return item
        end
    end
    return nil
end

function AttackNoCoolDown()
    local targets = {}
    local enemies = game:GetService("Workspace").Enemies:GetChildren()
    local primaryPart = FindEnemiesInRange(targets, enemies)

    if not primaryPart then return end

    local tool = GetEquippedTool()
    if not tool then return end

    pcall(function()
        local storage = game:GetService("ReplicatedStorage")
        local attackEvent = storage:WaitForChild("Modules"):WaitForChild("Net"):WaitForChild("RE/RegisterAttack")
        local hitEvent = storage:WaitForChild("Modules"):WaitForChild("Net"):WaitForChild("RE/RegisterHit")

        if #targets > 0 then
            attackEvent:FireServer(0.000000001)
            hitEvent:FireServer(primaryPart, targets)
        else
            task.wait(0.000000001)
        end
    end)
end

spawn(function()
    if _G.FastAttack then
        repeat
            task.wait()
            AttackNoCoolDown()
        until not _G.FastAttack
    end
end)

Setting:AddToggle('Bring Mob',true,function(value)
	_G.BringMonster = value
end)

spawn(
    function()
        while task.wait() do
            pcall(
                function()
                    if _G.BringMonster then
                        CheckQuest()

                        local ListMob = {
                            ["Factory Staff [Lv. 800]"] = true,
                            ["Monkey [Lv. 14]"] = true,
                            ["Dragon Crew Warrior [Lv. 1575]"] = true,
                            ["Dragon Crew Archer [Lv. 1600]"] = true
                        }

                        for _, v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                            if
                                _G.AutoFarm and StartMagnet and v.Name == Mon and v:FindFirstChild("Humanoid") and
                                    v:FindFirstChild("HumanoidRootPart") and
                                    v.Humanoid.Health > 0
                             then
                                local Range = ListMob[Mon] and 1000 or 800

                                if
                                    (v.HumanoidRootPart.Position -
                                        game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <=
                                        Range
                                 then
                                    v.HumanoidRootPart.Size = Vector3.new(50, 50, 50)
                                    v.HumanoidRootPart.CFrame = PosMon
                                    v.HumanoidRootPart.CanCollide = false
                                    v.Head.CanCollide = false

                                    if v.Humanoid:FindFirstChild("Animator") then
                                        v.Humanoid.Animator:Destroy()
                                    end

                                    sethiddenproperty(
                                        game:GetService("Players").LocalPlayer,
                                        "SimulationRadius",
                                        math.huge
                                    )
                                end
                            end
                        end
                    end
                end
            )
        end
    end
)

Setting:AddToggle('Bypass TP',false,function(value)
	BypassTP = value
end)

Setting:AddToggle('Auto Haki Buso',true,function(value)
	_G.AUTOHAKI = value
end)

spawn(function()
    while wait(.1) do
        if _G.AUTOHAKI then 
            if not game.Players.LocalPlayer.Character:FindFirstChild("HasBuso") then
                local args = {
                    [1] = "Buso"
                }
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
            end
        end
    end
end)

local LocalPlayer = game:GetService('Players').LocalPlayer;
local TextService = game:GetService('TextService')
local TweenService = game:GetService('TweenService')
local UserInputService = game:GetService('UserInputService')
local HttpService = game:GetService('HttpService')

local Alc = {
	Config = {
		['UI Size'] = UDim2.new(0.100000001, 315, 0.100000001, 310),
		['MainColor'] = Color3.fromRGB(61, 207, 117),
		['DropColor'] = Color3.fromRGB(25, 102, 61)
	},
	CoreGui = game:FindFirstChild('CoreGui') or LocalPlayer.PlayerGui,
	Windows = {},
	Icons = (function()
		local Table;

		pcall(function()
			Table = game:HttpGet("https://raw.githubusercontent.com/G1GX/Collection/refs/heads/main/InitC/icon.lua.txt")
		end)

		if not Table then
			Table = require(script:WaitForChild('icon'))
		end

		local _,cal = pcall(HttpService.JSONDecode,HttpService,Table)

		return (_ and cal) or {['icons'] = {}}
	end)()
}

local ProtectGui = protectgui or (syn and syn.protect_gui) or (function() end);

local function cretate_button(asd)
	local button=Instance.new('TextButton')
	button.Size=UDim2.new(1,0,1,0)
	button.BackgroundTransparency=1
	button.TextTransparency=1
	button.Text=""
	button.Parent=asd
	button.ZIndex=5000
	return button
end

function Alc:GetTextSize(TextLabel:TextLabel)
	return TextService:GetTextSize(TextLabel.Text,TextLabel.TextSize,TextLabel.Font,Vector2.new(math.huge,math.huge))
end

function Alc:GetId(Original:string)
	if Original:find('rbxassetid://') or Original:find('=') then
		return Original
	end

	if Alc['Icons']['icons'][Original] then
		return Alc['Icons']['icons'][Original]
	end

	return "rbxassetid://"..Original
end

local function scrolling_connectY(scrollframe:ScrollingFrame)
	task.spawn(function()
		local addres = 1
		local UIListLayout:UIListLayout = scrollframe:WaitForChild('UIListLayout',9999999)
		scrollframe.CanvasSize=UDim2.new(0,0,0,UIListLayout.AbsoluteContentSize.Y+addres)

		UIListLayout:GetPropertyChangedSignal('AbsoluteContentSize'):Connect(function()
			scrollframe.CanvasSize=UDim2.new(0,0,0,UIListLayout.AbsoluteContentSize.Y+addres)
		end)
	end)
end

local function scrolling_connectX(scrollframe:ScrollingFrame)
	task.spawn(function()
		local addres = 1
		local UIListLayout:UIListLayout = scrollframe:WaitForChild('UIListLayout',9999999)
		scrollframe.CanvasSize=UDim2.new(0,UIListLayout.AbsoluteContentSize.X+addres,0,0)

		UIListLayout:GetPropertyChangedSignal('AbsoluteContentSize'):Connect(function()
			scrollframe.CanvasSize=UDim2.new(0,UIListLayout.AbsoluteContentSize.X+addres,0,0)
		end)
	end)
end

function Alc:NewWindow(WindowName:string,WindowDescription:string,WindowLogo:string)
	WindowName = WindowName or "...";
	WindowDescription = WindowDescription or "..."
	WindowLogo = WindowLogo or '0'

	local WindowAlc = {
		Toggle = Enum.KeyCode.LeftControl,
		Tabs = {},
		TabSelect = 1
	}

	local Main = Instance.new("ScreenGui")
	local Frame = Instance.new("Frame")
	local UICorner = Instance.new("UICorner")
	local DropShadow = Instance.new("ImageLabel")
	local Topbar = Instance.new("Frame")
	local HubLogo = Instance.new("ImageLabel")
	local UICorner_2 = Instance.new("UICorner")
	local TextTitle = Instance.new("TextLabel")
	local TextDescription = Instance.new("TextLabel")
	local UIGradient = Instance.new("UIGradient")
	local MenuFrames = Instance.new("Frame")
	local MenuScroll = Instance.new("ScrollingFrame")
	local UIListLayout = Instance.new("UIListLayout")
	local CloseUI = Instance.new("Frame")
	local HubLogo_2 = Instance.new("ImageLabel")
	local UICorner_3 = Instance.new("UICorner")
	local UICorner_4 = Instance.new("UICorner")

	Main.Name = "Main"
	Main.Parent = Alc.CoreGui
	Main.ResetOnSpawn = false
	Main.IgnoreGuiInset = true
	Main.ZIndexBehavior = Enum.ZIndexBehavior.Global
	ProtectGui(Main)
	Frame.Parent = Main
	Frame.AnchorPoint = Vector2.new(0.5, 0.5)
	Frame.BackgroundColor3 = Color3.fromRGB(20, 20, 20)
	Frame.BorderColor3 = Color3.fromRGB(0, 0, 0)
	Frame.BorderSizePixel = 0
	Frame.Position = UDim2.new(0.5, 0, 0.5, 0)
	Frame.Size = UDim2.fromScale(0,0)
	Frame.SizeConstraint = Enum.SizeConstraint.RelativeYY
	Frame.ClipsDescendants = true

	TweenService:Create(Frame,TweenInfo.new(1.5),{Size = Alc.Config["UI Size"]}):Play()

	UICorner.Parent = Frame

	DropShadow.Name = "DropShadow"
	DropShadow.Parent = Frame
	DropShadow.AnchorPoint = Vector2.new(0.5, 0.5)
	DropShadow.BackgroundTransparency = 1.000
	DropShadow.BorderSizePixel = 0
	DropShadow.Position = UDim2.new(0.5, 0, 0.5, 0)
	DropShadow.Size = UDim2.new(1, 47, 1, 47)
	DropShadow.ZIndex = 0
	DropShadow.Image = "rbxassetid://6015897843"
	DropShadow.ImageColor3 = Color3.fromRGB(0, 0, 0)
	DropShadow.ImageTransparency = 0.500
	DropShadow.ScaleType = Enum.ScaleType.Slice
	DropShadow.SliceCenter = Rect.new(49, 49, 450, 450)
	DropShadow.Rotation = 0.01

	Topbar.Name = "Topbar"
	Topbar.Parent = Frame
	Topbar.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	Topbar.BackgroundTransparency = 1.000
	Topbar.BorderColor3 = Color3.fromRGB(0, 0, 0)
	Topbar.BorderSizePixel = 0
	Topbar.Size = UDim2.new(1, 0, 0.0799999982, 0)
	Topbar.ZIndex = 2

	HubLogo.Name = "HubLogo"
	HubLogo.Parent = Topbar
	HubLogo.AnchorPoint = Vector2.new(0.5, 0.5)
	HubLogo.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	HubLogo.BackgroundTransparency = 1.000
	HubLogo.BorderColor3 = Color3.fromRGB(0, 0, 0)
	HubLogo.BorderSizePixel = 0
	HubLogo.Position = UDim2.new(0.0450000018, 0, 0.5, 0)
	HubLogo.Size = UDim2.new(0.899999976, 0, 0.899999976, 0)
	HubLogo.SizeConstraint = Enum.SizeConstraint.RelativeYY
	HubLogo.ZIndex = 3
	HubLogo.Image = Alc:GetId(WindowLogo)

	UICorner_2.Parent = HubLogo

	TextTitle.Name = "TextTitle"
	TextTitle.Parent = Topbar
	TextTitle.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	TextTitle.BackgroundTransparency = 1.000
	TextTitle.BorderColor3 = Color3.fromRGB(0, 0, 0)
	TextTitle.BorderSizePixel = 0
	TextTitle.Position = UDim2.new(0.103366353, 0, 0.0999998972, 0)
	TextTitle.Size = UDim2.new(0.896555603, 0, 0.433997005, 0)
	TextTitle.ZIndex = 3
	TextTitle.Font = Enum.Font.GothamBold
	TextTitle.Text = WindowName
	TextTitle.TextColor3 = Color3.fromRGB(255, 255, 255)
	TextTitle.TextScaled = true
	TextTitle.TextSize = 14.000
	TextTitle.TextWrapped = true
	TextTitle.TextXAlignment = Enum.TextXAlignment.Left

	TextDescription.Name = "TextDescription"
	TextDescription.Parent = Topbar
	TextDescription.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	TextDescription.BackgroundTransparency = 1.000
	TextDescription.BorderColor3 = Color3.fromRGB(0, 0, 0)
	TextDescription.BorderSizePixel = 0
	TextDescription.Position = UDim2.new(0.103366353, 0, 0.53399694, 0)
	TextDescription.Size = UDim2.new(0, 80, 0.300000012, 0)
	TextDescription.ZIndex = 3
	TextDescription.Font = Enum.Font.GothamBold
	TextDescription.Text = WindowDescription
	TextDescription.TextColor3 = Color3.fromRGB(255, 255, 255)
	TextDescription.TextScaled = true
	TextDescription.TextSize = 14.000
	TextDescription.TextWrapped = true
	TextDescription.TextXAlignment = Enum.TextXAlignment.Left

	--[[UPDATE TEXT]]
	local function UpdateDescTextSize()
		local size = Alc:GetTextSize(TextDescription)
		TweenService:Create(TextDescription,TweenInfo.new(0.5),{Size = UDim2.new(0,size.X,0.3,0)}):Play()
	end

	UpdateDescTextSize()

	UIGradient.Color = ColorSequence.new{ColorSequenceKeypoint.new(0.00, Alc.Config.MainColor), ColorSequenceKeypoint.new(1.00, Alc.Config.DropColor)}
	UIGradient.Parent = TextDescription

	MenuFrames.Name = "MenuFrames"
	MenuFrames.Parent = Frame
	MenuFrames.AnchorPoint = Vector2.new(0.5, 0)
	MenuFrames.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	MenuFrames.BackgroundTransparency = 1.000
	MenuFrames.BorderColor3 = Color3.fromRGB(0, 0, 0)
	MenuFrames.BorderSizePixel = 0
	MenuFrames.Position = UDim2.new(0.5, 0, 0.075000003, 0)
	MenuFrames.Size = UDim2.new(0.949999988, 0, 0.0799999982, 0)
	MenuFrames.ZIndex = 2

	MenuScroll.Name = "MenuScroll"
	MenuScroll.Parent = MenuFrames
	MenuScroll.Active = true
	MenuScroll.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	MenuScroll.BackgroundTransparency = 1.000
	MenuScroll.BorderColor3 = Color3.fromRGB(0, 0, 0)
	MenuScroll.BorderSizePixel = 0
	MenuScroll.Size = UDim2.new(1, 0, 1, 0)
	MenuScroll.ZIndex = 3
	MenuScroll.CanvasSize = UDim2.new(2, 0, 0, 0)
	MenuScroll.ScrollBarThickness = 0
	MenuScroll.TopImage = ""

	scrolling_connectX((MenuScroll))

	UIListLayout.Parent = MenuScroll
	UIListLayout.FillDirection = Enum.FillDirection.Horizontal
	UIListLayout.SortOrder = Enum.SortOrder.LayoutOrder
	UIListLayout.VerticalAlignment = Enum.VerticalAlignment.Center
	UIListLayout.Padding = UDim.new(0,8)
	CloseUI.Name = "CloseUI"
	CloseUI.Parent = Frame
	CloseUI.AnchorPoint = Vector2.new(0.5, 0.5)
	CloseUI.BackgroundColor3 = Color3.fromRGB(20, 20, 20)
	CloseUI.BorderColor3 = Color3.fromRGB(0, 0, 0)
	CloseUI.BorderSizePixel = 0
	CloseUI.Position = UDim2.new(0.5, 0, 0.5, 0)
	CloseUI.Visible = false
	CloseUI.ZIndex = 45
	CloseUI.Size = UDim2.fromScale(1,1)

	TweenService:Create(CloseUI,TweenInfo.new(2,Enum.EasingStyle.Quint,Enum.EasingDirection.In),{Size = UDim2.fromScale(0,0)}):Play()

	HubLogo_2.Name = "HubLogo"
	HubLogo_2.Parent = CloseUI
	HubLogo_2.AnchorPoint = Vector2.new(0.5, 0.5)
	HubLogo_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	HubLogo_2.BackgroundTransparency = 1.000
	HubLogo_2.BorderColor3 = Color3.fromRGB(0, 0, 0)
	HubLogo_2.BorderSizePixel = 0
	HubLogo_2.Position = UDim2.new(0.5, 0, 0.5, 0)
	HubLogo_2.Size = UDim2.new(0.25, 0, 0.25, 0)
	HubLogo_2.SizeConstraint = Enum.SizeConstraint.RelativeYY
	HubLogo_2.ZIndex = 55
	HubLogo_2.Image = Alc:GetId(WindowLogo)

	UICorner_3.Parent = HubLogo_2

	UICorner_4.Parent = CloseUI

	function WindowAlc:AddMenu(MenuName:string,MenuDescription:string,MenuIcon:string,MenuType:string)
		MenuType = MenuType or 'tab'
		local MenuAlc = {
			Checker = {}
		}

		local MenuButton = Instance.new("Frame")
		local UIAspectRatioConstraint = Instance.new("UIAspectRatioConstraint")
		local UICorner = Instance.new("UICorner")
		local MenuLogo = Instance.new("ImageLabel")
		local MenuText = Instance.new("TextLabel")
		local MenuDesc = Instance.new("TextLabel")
		local Button = Instance.new("TextButton")

		MenuButton.Name = "MenuButton"
		MenuButton.Parent = MenuScroll
		MenuButton.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
		MenuButton.BackgroundTransparency = 1.000
		MenuButton.BorderColor3 = Color3.fromRGB(0, 0, 0)
		MenuButton.BorderSizePixel = 0
		MenuButton.ClipsDescendants = false
		MenuButton.Size = UDim2.new(0.5, 0, 0.75, 0)
		MenuButton.ZIndex = 4

		UIAspectRatioConstraint.Parent = MenuButton
		UIAspectRatioConstraint.AspectRatio = 0.1
		UIAspectRatioConstraint.AspectType = Enum.AspectType.ScaleWithParentSize
		UIAspectRatioConstraint.DominantAxis = Enum.DominantAxis.Height

		TweenService:Create(UIAspectRatioConstraint,TweenInfo.new(0.3 + (#WindowAlc.Tabs / 10),Enum.EasingStyle.Back),{AspectRatio = 4.000}):Play()
		UICorner.CornerRadius = UDim.new(0, 3)
		UICorner.Parent = MenuButton

		MenuLogo.Name = "MenuLogo"
		MenuLogo.Parent = MenuButton
		MenuLogo.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
		MenuLogo.BackgroundTransparency = 1.000
		MenuLogo.BorderColor3 = Color3.fromRGB(0, 0, 0)
		MenuLogo.BorderSizePixel = 0
		MenuLogo.Size = UDim2.new(1, 0, 1, 0)
		MenuLogo.SizeConstraint = Enum.SizeConstraint.RelativeYY
		MenuLogo.ZIndex = 5
		MenuLogo.Image = Alc:GetId(MenuIcon or "hash")

		MenuText.Name = "MenuText"
		MenuText.Parent = MenuButton
		MenuText.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
		MenuText.BackgroundTransparency = 1.000
		MenuText.BorderColor3 = Color3.fromRGB(0, 0, 0)
		MenuText.BorderSizePixel = 0
		MenuText.Position = UDim2.new(0.310877919, 0, 0, 0)
		MenuText.Size = UDim2.new(2.10955262, 0, 0.5, 0)
		MenuText.ZIndex = 5
		MenuText.Font = Enum.Font.GothamBold
		MenuText.Text = MenuName or "Menu"
		MenuText.TextColor3 = Color3.fromRGB(255, 255, 255)
		MenuText.TextScaled = true
		MenuText.TextSize = 14.000
		MenuText.TextWrapped = true
		MenuText.TextXAlignment = Enum.TextXAlignment.Left

		MenuDesc.Name = "MenuDesc"
		MenuDesc.Parent = MenuButton
		MenuDesc.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
		MenuDesc.BackgroundTransparency = 1.000
		MenuDesc.BorderColor3 = Color3.fromRGB(0, 0, 0)
		MenuDesc.BorderSizePixel = 0
		MenuDesc.Position = UDim2.new(0.31100589, 0, 0.600000083, 0)
		MenuDesc.Size = UDim2.new(2.10955262, 0, 0.349999547, 0)
		MenuDesc.ZIndex = 5
		MenuDesc.Font = Enum.Font.GothamBold
		MenuDesc.Text = MenuDescription or "Description"
		MenuDesc.TextColor3 = Color3.fromRGB(255, 255, 255)
		MenuDesc.TextScaled = true
		MenuDesc.TextSize = 14.000
		MenuDesc.TextTransparency = 0.500
		MenuDesc.TextWrapped = true
		MenuDesc.TextXAlignment = Enum.TextXAlignment.Left

		Button.Name = "Button"
		Button.Parent = MenuButton
		Button.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
		Button.BackgroundTransparency = 1.000
		Button.BorderColor3 = Color3.fromRGB(0, 0, 0)
		Button.BorderSizePixel = 0
		Button.Size = UDim2.new(1, 0, 1, 0)
		Button.ZIndex = 25
		Button.Font = Enum.Font.SourceSans
		Button.Text = ""
		Button.TextColor3 = Color3.fromRGB(0, 0, 0)
		Button.TextSize = 14.000
		Button.TextTransparency = 1.000
		local MainFrame

		if MenuType:find('tab') then
			local PageFrames = Instance.new("Frame")
			local Search = Instance.new("Frame")
			local SearchEngine = Instance.new("Frame")
			local UICorner = Instance.new("UICorner")
			local UIStroke = Instance.new("UIStroke")
			local LabelText = Instance.new("TextLabel")
			local SearchIcon = Instance.new("ImageLabel")
			local UICorner_2 = Instance.new("UICorner")
			local searchbox = Instance.new("TextBox")
			local Framet = Instance.new("Frame")
			local Frame_2 = Instance.new("Frame")
			local TabFrames = Instance.new("ScrollingFrame")
			local UIListLayout = Instance.new("UIListLayout")
			local Main = Instance.new("Frame")


			PageFrames.Name = "PageFrames"
			PageFrames.Parent = Frame
			PageFrames.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
			PageFrames.BackgroundTransparency = 1.000
			PageFrames.BorderColor3 = Color3.fromRGB(0, 0, 0)
			PageFrames.BorderSizePixel = 0
			PageFrames.ClipsDescendants = true
			PageFrames.Position = UDim2.new(0, 0, 0.163185388, 0)
			PageFrames.Size = UDim2.new(1, 0, 0.836814642, 0)
			PageFrames.ZIndex = 4

			MainFrame = PageFrames
			Search.Name = "Search"
			Search.Parent = PageFrames
			Search.AnchorPoint = Vector2.new(0.5, 0.5)
			Search.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
			Search.BackgroundTransparency = 1.000
			Search.BorderColor3 = Color3.fromRGB(0, 0, 0)
			Search.BorderSizePixel = 0
			Search.ClipsDescendants = true
			Search.Position = UDim2.new(0.187006071, 0, 0.5, 0)
			Search.Size = UDim2.new(0.354012221, 0, 0.980000138, 0)
			Search.ZIndex = 4

			SearchEngine.Name = "SearchEngine"
			SearchEngine.Parent = Search
			SearchEngine.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
			SearchEngine.BorderColor3 = Color3.fromRGB(0, 0, 0)
			SearchEngine.BorderSizePixel = 0
			SearchEngine.ClipsDescendants = true
			SearchEngine.Size = UDim2.new(1, 0, 0.0680000037, 0)
			SearchEngine.ZIndex = 6

			UICorner.CornerRadius = UDim.new(0, 2)
			UICorner.Parent = SearchEngine

			UIStroke.Thickness = 0.500
			UIStroke.Color = Color3.fromRGB(39, 39, 39)
			UIStroke.Parent = SearchEngine

			LabelText.Name = "LabelText"
			LabelText.Parent = SearchEngine
			LabelText.AnchorPoint = Vector2.new(0.5, 0.5)
			LabelText.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
			LabelText.BackgroundTransparency = 1.000
			LabelText.BorderColor3 = Color3.fromRGB(0, 0, 0)
			LabelText.BorderSizePixel = 0
			LabelText.Position = UDim2.new(0.612374663, 0, 0.499999851, 0)
			LabelText.Size = UDim2.new(0.871346772, 0, 0.50000006, 0)
			LabelText.ZIndex = 6
			LabelText.Font = Enum.Font.GothamBold
			LabelText.Text = "Search"
			LabelText.TextColor3 = Color3.fromRGB(255, 255, 255)
			LabelText.TextScaled = true
			LabelText.TextSize = 14.000
			LabelText.TextTransparency = 0.750
			LabelText.TextWrapped = true
			LabelText.TextXAlignment = Enum.TextXAlignment.Left

			SearchIcon.Name = "SearchIcon"
			SearchIcon.Parent = SearchEngine
			SearchIcon.AnchorPoint = Vector2.new(0.5, 0.5)
			SearchIcon.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
			SearchIcon.BackgroundTransparency = 1.000
			SearchIcon.BorderColor3 = Color3.fromRGB(0, 0, 0)
			SearchIcon.BorderSizePixel = 0
			SearchIcon.Position = UDim2.new(0.075000003, 0, 0.5, 0)
			SearchIcon.Size = UDim2.new(0.699999988, 0, 0.699999988, 0)
			SearchIcon.SizeConstraint = Enum.SizeConstraint.RelativeYY
			SearchIcon.ZIndex = 6
			SearchIcon.Image = "rbxassetid://7734052925"
			SearchIcon.ImageTransparency = 0.750

			UICorner_2.CornerRadius = UDim.new(0, 6)
			UICorner_2.Parent = SearchIcon

			searchbox.Name = "searchbox"
			searchbox.Parent = SearchEngine
			searchbox.AnchorPoint = Vector2.new(0.5, 0.5)
			searchbox.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
			searchbox.BackgroundTransparency = 1.000
			searchbox.BorderColor3 = Color3.fromRGB(0, 0, 0)
			searchbox.BorderSizePixel = 0
			searchbox.Position = UDim2.new(1.46321285, 0, 0.499999851, 0)
			searchbox.Size = UDim2.new(2.66615963, 0, 0.50000006, 0)
			searchbox.ZIndex = 7
			searchbox.ClearTextOnFocus = false
			searchbox.Font = Enum.Font.GothamBold
			searchbox.Text = ""
			searchbox.TextColor3 = Color3.fromRGB(255, 255, 255)
			searchbox.TextScaled = true
			searchbox.TextSize = 14.000
			searchbox.TextWrapped = true
			searchbox.TextXAlignment = Enum.TextXAlignment.Left

			Framet.Parent = Search
			Framet.Active = true
			Framet.AnchorPoint = Vector2.new(0, 0.5)
			Framet.BackgroundColor3 = Color3.fromRGB(39, 39, 39)
			Framet.BorderColor3 = Color3.fromRGB(0, 0, 0)
			Framet.BorderSizePixel = 0
			Framet.Position = UDim2.new(1.01999998, 0, 0.5, 0)
			Framet.Rotation = 0
			Framet.Size = UDim2.new(0.00499999989, 0, 1, 0)
			Framet.ZIndex = 3

			Frame_2.Parent = Framet
			Frame_2.Active = true
			Frame_2.AnchorPoint = Vector2.new(0, 0.5)
			Frame_2.BackgroundColor3 = Color3.fromRGB(39, 39, 39)
			Frame_2.BorderColor3 = Color3.fromRGB(0, 0, 0)
			Frame_2.BorderSizePixel = 0
			Frame_2.Position = UDim2.new(1.00999999, 0, 0.5, 0)
			Frame_2.Size = UDim2.new(1, 0, 1, 0)
			Frame_2.ZIndex = 3

			TabFrames.Name = "TabFrames"
			TabFrames.Parent = Search
			TabFrames.Active = true
			TabFrames.AnchorPoint = Vector2.new(0.5, 0.5)
			TabFrames.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
			TabFrames.BackgroundTransparency = 1.000
			TabFrames.BorderColor3 = Color3.fromRGB(0, 0, 0)
			TabFrames.BorderSizePixel = 0
			TabFrames.ClipsDescendants = false
			TabFrames.Position = UDim2.new(0.500000119, 0, 0.549316823, 0)
			TabFrames.Size = UDim2.new(0.949999988, 0, 0.901000023, 0)
			TabFrames.ZIndex = 6
			TabFrames.ScrollBarThickness = 0

			scrolling_connectY(TabFrames)
			UIListLayout.Parent = TabFrames
			UIListLayout.HorizontalAlignment = Enum.HorizontalAlignment.Center
			UIListLayout.SortOrder = Enum.SortOrder.LayoutOrder
			UIListLayout.Padding = UDim.new(0, 4)

			Main.Name = "Main"
			Main.Parent = PageFrames
			Main.AnchorPoint = Vector2.new(0.5, 0.5)
			Main.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
			Main.BackgroundTransparency = 1.000
			Main.BorderColor3 = Color3.fromRGB(0, 0, 0)
			Main.BorderSizePixel = 0
			Main.ClipsDescendants = true
			Main.Position = UDim2.new(0.685165405, 0, 0.5, 0)
			Main.Size = UDim2.new(0.609669089, 0, 0.980000019, 0)
			Main.ZIndex = 4


			searchbox.Focused:Connect(function()
				TweenService:Create(LabelText,TweenInfo.new(0.1),{TextTransparency = 1}):Play()
				TweenService:Create(SearchIcon,TweenInfo.new(0.1),{ImageTransparency = 1}):Play()
			end)

			searchbox.FocusLost:Connect(function()
				if #searchbox.Text > 0 then
					for i,v in ipairs(TabFrames:GetChildren()) do
						if v:IsA('Frame') then
							if v.Name:lower():find(searchbox.Text:lower()) then
								v.Visible = true
							else
								v.Visible = false
							end
						end
					end
				else
					TweenService:Create(LabelText,TweenInfo.new(0.1),{TextTransparency = 0.75}):Play()
					TweenService:Create(SearchIcon,TweenInfo.new(0.1),{ImageTransparency = 0.75}):Play()
					for i,v in ipairs(TabFrames:GetChildren()) do
						if v:IsA('Frame') then
							v.Visible = true
						end
					end
				end
			end)

			searchbox:GetPropertyChangedSignal('Text'):Connect(function()
				if #searchbox.Text > 0 then
					TweenService:Create(LabelText,TweenInfo.new(0.1),{TextTransparency = 1}):Play()
					TweenService:Create(SearchIcon,TweenInfo.new(0.1),{ImageTransparency = 1}):Play()
					for i,v in ipairs(TabFrames:GetChildren()) do
						if v:IsA('Frame') then
							if v.Name:lower():find(searchbox.Text:lower()) then
								v.Visible = true
							else
								v.Visible = false
							end
						end
					end
				else
					TweenService:Create(LabelText,TweenInfo.new(0.1),{TextTransparency = 0.75}):Play()
					TweenService:Create(SearchIcon,TweenInfo.new(0.1),{ImageTransparency = 0.75}):Play()

					for i,v in ipairs(TabFrames:GetChildren()) do
						if v:IsA('Frame') then
							v.Visible = true
						end
					end
				end
			end)

		elseif MenuType:find('change') then
			local ChangeLog = Instance.new("Frame")
			local Main = Instance.new("Frame")
			local MainScrolling = Instance.new("ScrollingFrame")
			local UIListLayout = Instance.new("UIListLayout")
			local Framec = Instance.new("Frame")
			local UICorner = Instance.new("UICorner")
			scrolling_connectY(MainScrolling)
			ChangeLog.Name = "ChangeLog"
			ChangeLog.Parent = Frame
			ChangeLog.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
			ChangeLog.BackgroundTransparency = 1.000
			ChangeLog.BorderColor3 = Color3.fromRGB(0, 0, 0)
			ChangeLog.BorderSizePixel = 0
			ChangeLog.Position = UDim2.new(0, 0, 0.163185388, 0)
			ChangeLog.Size = UDim2.new(1, 0, 0.836814642, 0)
			ChangeLog.Visible = true

			ChangeLog.ZIndex = 4
			MainFrame = ChangeLog

			Main.Name = "Main"
			Main.Parent = ChangeLog
			Main.AnchorPoint = Vector2.new(0.5, 0.5)
			Main.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
			Main.BackgroundTransparency = 1.000
			Main.BorderColor3 = Color3.fromRGB(0, 0, 0)
			Main.BorderSizePixel = 0
			Main.ClipsDescendants = true
			Main.Position = UDim2.new(0.5, 0, 0.5, 0)
			Main.Size = UDim2.new(0.949999988, 0, 0.949999988, 0)
			Main.ZIndex = 4

			MainScrolling.Name = "MainScrolling"
			MainScrolling.Parent = Main
			MainScrolling.Active = true
			MainScrolling.AnchorPoint = Vector2.new(0.5, 0.5)
			MainScrolling.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
			MainScrolling.BackgroundTransparency = 1.000
			MainScrolling.BorderColor3 = Color3.fromRGB(0, 0, 0)
			MainScrolling.BorderSizePixel = 0
			MainScrolling.ClipsDescendants = false
			MainScrolling.Position = UDim2.new(0.5, 0, 0.5, 0)
			MainScrolling.Size = UDim2.new(0.99000001, 0, 1, 0)
			MainScrolling.ZIndex = 2
			MainScrolling.ScrollBarThickness = 0

			UIListLayout.Parent = MainScrolling
			UIListLayout.HorizontalAlignment = Enum.HorizontalAlignment.Center
			UIListLayout.SortOrder = Enum.SortOrder.LayoutOrder
			UIListLayout.Padding = UDim.new(0, 5)

			Framec.Parent = ChangeLog
			Framec.AnchorPoint = Vector2.new(0.5, 1)
			Framec.BackgroundColor3 = Color3.fromRGB(37, 37, 37)
			Framec.BorderColor3 = Color3.fromRGB(0, 0, 0)
			Framec.BorderSizePixel = 0
			Framec.Position = UDim2.new(0.5, 0, 0, 0)
			Framec.Size = UDim2.new(0.949999988, 0, 0.00499999989, 0)

			UICorner.CornerRadius = UDim.new(0.5, 0)
			UICorner.Parent = Framec
		end

		local myindex = #WindowAlc.Tabs + 1

		local function Connect(val)
			if val then
				TweenService:Create(MainFrame,TweenInfo.new(0.3),{Position = UDim2.fromScale(0,0.163)}):Play()
				TweenService:Create(MenuText,TweenInfo.new(0.1 + (myindex / 10)),{TextColor3 = Alc.Config.MainColor,TextTransparency=0}):Play()
			else

				if myindex < WindowAlc.TabSelect then
					TweenService:Create(MainFrame,TweenInfo.new(0.3),{Position = UDim2.fromScale(-1,0.163)}):Play()
				else
					TweenService:Create(MainFrame,TweenInfo.new(0.3),{Position = UDim2.fromScale(1,0.163)}):Play()
				end
				TweenService:Create(MenuText,TweenInfo.new(0.1),{TextColor3 = Color3.fromRGB(255, 255, 255),TextTransparency=0.25}):Play()
			end
		end

		if not WindowAlc.Tabs[1] then
			Connect(true)
		else
			Connect(false)
		end

		table.insert(WindowAlc.Tabs,{MenuButton,Connect})

		myindex = #WindowAlc.Tabs

		Button.MouseButton1Click:Connect(function()
			WindowAlc.TabSelect = myindex
			for i,v in ipairs(WindowAlc.Tabs) do
				if v[1]==MenuButton then
					WindowAlc.TabSelect = i
					v[2](true)
				else
					v[2](false)
				end
			end
		end)

		function MenuAlc:AddTab(TabName:string,Descriptions:string,IconId:string)
			local MainTab = {

			}

			local TabAlc = {}

			local MainScrollingfr
			if MenuType:find('tab') then
				local MainScrolling = Instance.new("ScrollingFrame")
				local UIListLayout_2 = Instance.new("UIListLayout")

				scrolling_connectY(MainScrolling)
				MainScrollingfr = MainScrolling
				MainScrolling.Name = tostring(TabName or "Main")
				MainScrolling.Name = "MainScrolling"
				MainScrolling.Parent =  MainFrame:WaitForChild('Main')
				MainScrolling.Active = true
				MainScrolling.AnchorPoint = Vector2.new(0.5, 0.5)
				MainScrolling.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
				MainScrolling.BackgroundTransparency = 1.000
				MainScrolling.BorderColor3 = Color3.fromRGB(0, 0, 0)
				MainScrolling.BorderSizePixel = 0
				MainScrolling.ClipsDescendants = false
				MainScrolling.Position = UDim2.new(0.5, 0, 0.5, 0)
				MainScrolling.Size = UDim2.new(0.99000001, 0, 1, 0)
				MainScrolling.ZIndex = 2
				MainScrolling.ScrollBarThickness = 0

				UIListLayout_2.Parent = MainScrolling
				UIListLayout_2.HorizontalAlignment = Enum.HorizontalAlignment.Center
				UIListLayout_2.SortOrder = Enum.SortOrder.LayoutOrder
				UIListLayout_2.Padding = UDim.new(0, 5)

				local TabButton = Instance.new("Frame")
				local UIAspectRatioConstraint = Instance.new("UIAspectRatioConstraint")
				local UICorner = Instance.new("UICorner")
				local UIStroke = Instance.new("UIStroke")
				local UIGradient = Instance.new("UIGradient")
				local TabIcon = Instance.new("ImageLabel")
				local Text = Instance.new("TextLabel")
				local Description = Instance.new("TextLabel")
				local Button = Instance.new("TextButton")

				TabButton.Name = tostring(TabName or "Main")
				TabButton.Parent = MainFrame:WaitForChild('Search'):WaitForChild('TabFrames')
				TabButton.BackgroundColor3 = Color3.fromRGB(22, 22, 22)
				TabButton.BorderColor3 = Color3.fromRGB(0, 0, 0)
				TabButton.BorderSizePixel = 0
				TabButton.Size = UDim2.new(1, 0, 1, 0)
				TabButton.ZIndex = 5

				UIAspectRatioConstraint.Parent = TabButton
				UIAspectRatioConstraint.AspectRatio = 4.250
				UIAspectRatioConstraint.AspectType = Enum.AspectType.ScaleWithParentSize

				UICorner.CornerRadius = UDim.new(0, 3)
				UICorner.Parent = TabButton

				UIStroke.Transparency = 0.250
				UIStroke.Color = Color3.fromRGB(37, 37, 37)
				UIStroke.Parent = TabButton

				UIGradient.Transparency = NumberSequence.new{NumberSequenceKeypoint.new(0.00, 0.50), NumberSequenceKeypoint.new(0.20, 0.00), NumberSequenceKeypoint.new(0.80, 0.00), NumberSequenceKeypoint.new(1.00, 0.50)}
				UIGradient.Parent = UIStroke

				TabIcon.Name = "TabIcon"
				TabIcon.Parent = TabButton
				TabIcon.AnchorPoint = Vector2.new(0.5, 0.5)
				TabIcon.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
				TabIcon.BackgroundTransparency = 1.000
				TabIcon.BorderColor3 = Color3.fromRGB(0, 0, 0)
				TabIcon.BorderSizePixel = 0
				TabIcon.Position = UDim2.new(0.135000005, 0, 0.5, 0)
				TabIcon.Size = UDim2.new(0.699999988, 0, 0.699999988, 0)
				TabIcon.SizeConstraint = Enum.SizeConstraint.RelativeYY
				TabIcon.ZIndex = 6
				TabIcon.Image = Alc:GetId(IconId or '0')

				Text.Name = "Text"
				Text.Parent = TabButton
				Text.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
				Text.BackgroundTransparency = 1.000
				Text.BorderColor3 = Color3.fromRGB(0, 0, 0)
				Text.BorderSizePixel = 0
				Text.Position = UDim2.new(0.246999651, 0, 0.200000003, 0)
				Text.Size = UDim2.new(0.753000021, 0, 0.400000006, 0)
				Text.ZIndex = 7
				Text.Font = Enum.Font.GothamBold
				Text.Text = TabName or "Main"
				Text.TextColor3 = Color3.fromRGB(255, 255, 255)
				Text.TextScaled = true
				Text.TextSize = 14.000
				Text.TextWrapped = true
				Text.TextXAlignment = Enum.TextXAlignment.Left

				Description.Name = "Description"
				Description.Parent = TabButton
				Description.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
				Description.BackgroundTransparency = 1.000
				Description.BorderColor3 = Color3.fromRGB(0, 0, 0)
				Description.BorderSizePixel = 0
				Description.Position = UDim2.new(0.246999651, 0, 0.600000024, 0)
				Description.Size = UDim2.new(0.753000081, 0, 0.25, 0)
				Description.ZIndex = 7
				Description.Font = Enum.Font.GothamBold
				Description.Text = Descriptions or "loadstring()()"
				Description.TextColor3 = Color3.fromRGB(255, 255, 255)
				Description.TextScaled = true
				Description.TextSize = 14.000
				Description.TextTransparency = 0.500
				Description.TextWrapped = true
				Description.TextXAlignment = Enum.TextXAlignment.Left

				Button.Name = "Button"
				Button.Parent = TabButton
				Button.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
				Button.BackgroundTransparency = 1.000
				Button.BorderColor3 = Color3.fromRGB(0, 0, 0)
				Button.BorderSizePixel = 0
				Button.Size = UDim2.new(1, 0, 1, 0)
				Button.ZIndex = 25
				Button.Font = Enum.Font.SourceSans
				Button.Text = ""
				Button.TextColor3 = Color3.fromRGB(0, 0, 0)
				Button.TextSize = 14.000
				Button.TextTransparency = 1.000

				local function connect(val)
					local low = UDim2.fromScale(0.9,0.95)
					if val then
						TweenService:Create(TabIcon,TweenInfo.new(0.15),{ImageTransparency = 0}):Play()
						TweenService:Create(Description,TweenInfo.new(0.15),{TextTransparency = 0.5}):Play()
						TweenService:Create(Text,TweenInfo.new(0.15),{TextTransparency = 0}):Play()
						TweenService:Create(UIStroke,TweenInfo.new(0.15),{Transparency = 0.25}):Play()
						TweenService:Create(MainScrolling,TweenInfo.new(0.4),{
							Position = UDim2.new(0.5, 0, 0.5, 0)
						}):Play()
					else

						TweenService:Create(TabIcon,TweenInfo.new(0.15),{ImageTransparency = 0.55}):Play()
						TweenService:Create(Description,TweenInfo.new(0.15),{TextTransparency = 0.85}):Play()
						TweenService:Create(Text,TweenInfo.new(0.15),{TextTransparency = 0.55}):Play()
						TweenService:Create(UIStroke,TweenInfo.new(0.15),{Transparency = 0.65}):Play()
						TweenService:Create(MainScrolling,TweenInfo.new(0.4),{
							Position = UDim2.fromScale(1.55,0.5)
						}):Play()

					end
				end

				if not MenuAlc[1] then
					connect(true)
				else
					connect(false)
				end

				table.insert(MenuAlc,{connect,TabIcon})

				Button.MouseButton1Click:Connect(function()
					for i,v in ipairs(MenuAlc) do
						if v[2] == TabIcon then
							v[1](true)
						else
							v[1](false)
						end
					end
				end)
			elseif MenuType:find('change') then
				MainScrollingfr = MainFrame:FindFirstChild('Main'):FindFirstChild('MainScrolling')
			end

			function MainTab:AddLabel(LabelName)
				local SectionTitle = Instance.new("TextLabel")
				local UIAspectRatioConstraint = Instance.new("UIAspectRatioConstraint")

				SectionTitle.Name = "SectionTitle"
				SectionTitle.Parent = MainScrollingfr
				SectionTitle.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
				SectionTitle.BackgroundTransparency = 1.000
				SectionTitle.BorderColor3 = Color3.fromRGB(0, 0, 0)
				SectionTitle.BorderSizePixel = 0
				SectionTitle.Size = UDim2.new(0.980000019, 0, 0.5, 0)
				SectionTitle.ZIndex = 4
				SectionTitle.Font = Enum.Font.GothamBold
				SectionTitle.Text = LabelName or "SECTRION"
				SectionTitle.TextColor3 = Color3.fromRGB(255, 255, 255)
				SectionTitle.TextScaled = true
				SectionTitle.TextSize = 14.000
				SectionTitle.TextWrapped = true
				SectionTitle.TextXAlignment = Enum.TextXAlignment.Left

				UIAspectRatioConstraint.Parent = SectionTitle
				UIAspectRatioConstraint.AspectRatio = 23.000
				UIAspectRatioConstraint.AspectType = Enum.AspectType.ScaleWithParentSize

				local Config = {}

				function Config:Text(...)
					SectionTitle.Text = tostring(...)
				end

				function Config:Delete()
					SectionTitle:Destroy()

				end

				return Config
			end

			function MainTab:AddSection(SectionName:string,SectionHeader:string,SectionDescriptions:string,SectionIcons:string)
				local SectionTitle = Instance.new("TextLabel")
				local UIAspectRatioConstraint = Instance.new("UIAspectRatioConstraint")
				local SectionInfo = {}

				SectionTitle.Name = "SectionTitle"
				SectionTitle.Parent = MainScrollingfr
				SectionTitle.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
				SectionTitle.BackgroundTransparency = 1.000
				SectionTitle.BorderColor3 = Color3.fromRGB(0, 0, 0)
				SectionTitle.BorderSizePixel = 0
				SectionTitle.Size = UDim2.new(0.980000019, 0, 0.5, 0)
				SectionTitle.ZIndex = 4
				SectionTitle.Font = Enum.Font.GothamBold
				SectionTitle.Text = SectionName or "SECTRION"
				SectionTitle.TextColor3 = Color3.fromRGB(255, 255, 255)
				SectionTitle.TextScaled = true
				SectionTitle.TextSize = 14.000
				SectionTitle.TextWrapped = true
				SectionTitle.TextXAlignment = Enum.TextXAlignment.Left

				UIAspectRatioConstraint.Parent = SectionTitle
				UIAspectRatioConstraint.AspectRatio = 23.000
				UIAspectRatioConstraint.AspectType = Enum.AspectType.ScaleWithParentSize

				local SectionFrame = Instance.new("Frame")
				local UICorner = Instance.new("UICorner")
				local UIStroke = Instance.new("UIStroke")
				local UIListLayout = Instance.new("UIListLayout")
				local Header = Instance.new("Frame")
				local UIAspectRatioConstraint = Instance.new("UIAspectRatioConstraint")
				local SectionIcon = Instance.new("ImageLabel")
				local SectionHeadTest = Instance.new("TextLabel")
				local SectionDescription = Instance.new("TextLabel")
				local Frame = Instance.new("Frame")
				local UICorner_2 = Instance.new("UICorner")
				local defaut = 65

				local function UpdateSiz()
					local vs = 15

					for i,v in ipairs(SectionFrame:GetChildren()) do
						if v:IsA('Frame') then
							vs += (v.AbsoluteSize.Y or v.Size.Y.Scale) + UIListLayout.Padding.Offset
						end
					end

					TweenService:Create(SectionFrame,TweenInfo.new(0.1),{Size = UDim2.new(1, 0, 0, vs)}):Play()
				end

				local delays = tick() + 0.1
				CloseUI:GetPropertyChangedSignal('Size'):Connect(function()
					if tick() > delays then
						UpdateSiz()
						delays = tick() + 0.1
					end
				end)
				--Properties:

				SectionFrame.Name = "SectionFrame"
				SectionFrame.Parent = MainScrollingfr
				SectionFrame.BackgroundColor3 = Color3.fromRGB(23, 23, 23)
				SectionFrame.BorderColor3 = Color3.fromRGB(0, 0, 0)
				SectionFrame.BorderSizePixel = 0
				SectionFrame.ClipsDescendants = true
				SectionFrame.Position = UDim2.new(0, 0, 0.100000001, 0)
				SectionFrame.Size = UDim2.new(1, 0, 0, 65)
				SectionFrame.ZIndex = 4

				UpdateSiz()

				UICorner.Parent = SectionFrame

				UIStroke.Color = Color3.fromRGB(37, 37, 37)
				UIStroke.Parent = SectionFrame

				UIListLayout.Parent = SectionFrame
				UIListLayout.HorizontalAlignment = Enum.HorizontalAlignment.Center
				UIListLayout.SortOrder = Enum.SortOrder.LayoutOrder
				UIListLayout.Padding = UDim.new(0, 5)

				Header.Name = "Header"
				Header.Parent = SectionFrame
				Header.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
				Header.BackgroundTransparency = 1.000
				Header.BorderColor3 = Color3.fromRGB(0, 0, 0)
				Header.BorderSizePixel = 0
				Header.Size = UDim2.new(0.949999988, 0, 0.5, 0)
				Header.ZIndex = 5

				UIAspectRatioConstraint.Parent = Header
				UIAspectRatioConstraint.AspectRatio = 4.000
				UIAspectRatioConstraint.AspectType = Enum.AspectType.ScaleWithParentSize

				SectionIcon.Name = "SectionIcon"
				SectionIcon.Parent = Header
				SectionIcon.AnchorPoint = Vector2.new(0.5, 0.699999988)
				SectionIcon.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
				SectionIcon.BackgroundTransparency = 1.000
				SectionIcon.BorderColor3 = Color3.fromRGB(0, 0, 0)
				SectionIcon.BorderSizePixel = 0
				SectionIcon.Position = UDim2.new(0.100000001, 0, 0.5, 0)
				SectionIcon.Size = UDim2.new(0.600000024, 0, 0.600000024, 0)
				SectionIcon.SizeConstraint = Enum.SizeConstraint.RelativeYY
				SectionIcon.ZIndex = 6
				SectionIcon.Image = Alc:GetId(SectionIcons or 'pin')

				SectionHeadTest.Name = "SectionHeadTest"
				SectionHeadTest.Parent = Header
				SectionHeadTest.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
				SectionHeadTest.BackgroundTransparency = 1.000
				SectionHeadTest.BorderColor3 = Color3.fromRGB(0, 0, 0)
				SectionHeadTest.BorderSizePixel = 0
				SectionHeadTest.Position = UDim2.new(0.218999997, 0, 0.0949999988, 0)
				SectionHeadTest.Size = UDim2.new(1, 0, 0.194999993, 0)
				SectionHeadTest.ZIndex = 5
				SectionHeadTest.Font = Enum.Font.GothamBold
				SectionHeadTest.Text = SectionHeader or "Data Settings"
				SectionHeadTest.TextColor3 = Color3.fromRGB(255, 255, 255)
				SectionHeadTest.TextScaled = true
				SectionHeadTest.TextSize = 14.000
				SectionHeadTest.TextWrapped = true
				SectionHeadTest.TextXAlignment = Enum.TextXAlignment.Left

				SectionDescription.Name = "SectionDescription"
				SectionDescription.Parent = Header
				SectionDescription.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
				SectionDescription.BackgroundTransparency = 1.000
				SectionDescription.BorderColor3 = Color3.fromRGB(0, 0, 0)
				SectionDescription.BorderSizePixel = 0
				SectionDescription.Position = UDim2.new(0.218999997, 0, 0.354999989, 0)
				SectionDescription.Size = UDim2.new(1, 0, 0.194999993, 0)
				SectionDescription.ZIndex = 5
				SectionDescription.Font = Enum.Font.GothamBold
				SectionDescription.Text = SectionDescriptions or "Save The Setting"
				SectionDescription.TextColor3 = Color3.fromRGB(255, 255, 255)
				SectionDescription.TextScaled = true
				SectionDescription.TextSize = 14.000
				SectionDescription.TextTransparency = 0.500
				SectionDescription.TextWrapped = true
				SectionDescription.TextXAlignment = Enum.TextXAlignment.Left

				Frame.Parent = Header
				Frame.AnchorPoint = Vector2.new(0.5, 0.5)
				Frame.BackgroundColor3 = Color3.fromRGB(28, 28, 28)
				Frame.BorderColor3 = Color3.fromRGB(0, 0, 0)
				Frame.BorderSizePixel = 0
				Frame.Position = UDim2.new(0.5, 0, 0.899999976, 0)
				Frame.Size = UDim2.new(0.949999988, 0, 0.0250000004, 0)
				Frame.ZIndex = 5

				UICorner_2.CornerRadius = UDim.new(0.5, 0)
				UICorner_2.Parent = Frame

				SectionFrame.ChildAdded:Connect(UpdateSiz)
				function SectionInfo:Update()
					return UpdateSiz()
				end

				function SectionInfo:AddLabel(LabelName)
					local SectionTitle = Instance.new("TextLabel")
					local UIAspectRatioConstraint = Instance.new("UIAspectRatioConstraint")

					SectionTitle.Name = "SectionTitle"
					SectionTitle.Parent = SectionFrame
					SectionTitle.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
					SectionTitle.BackgroundTransparency = 1.000
					SectionTitle.BorderColor3 = Color3.fromRGB(0, 0, 0)
					SectionTitle.BorderSizePixel = 0
					SectionTitle.Size = UDim2.new(0.92, 0, 0.5, 0)
					SectionTitle.ZIndex = 4
					SectionTitle.Font = Enum.Font.GothamBold
					SectionTitle.Text = LabelName or "SECTRION"
					SectionTitle.TextColor3 = Color3.fromRGB(255, 255, 255)
					SectionTitle.TextScaled = true
					SectionTitle.TextSize = 14.000
					SectionTitle.TextWrapped = true
					SectionTitle.TextXAlignment = Enum.TextXAlignment.Left

					UIAspectRatioConstraint.Parent = SectionTitle
					UIAspectRatioConstraint.AspectRatio = 23.000
					UIAspectRatioConstraint.AspectType = Enum.AspectType.ScaleWithParentSize

					SectionInfo:Update()

					local Config = {}

					function Config:Text(...)
						SectionTitle.Text = tostring(...)
					end

					function Config:Delete()
						SectionTitle:Destroy()
						UpdateSiz()
					end

					return Config
				end

				function SectionInfo:AddToggle(ToggleName:string,ToggleDefault:boolean,Callback)
					local Toggle = Instance.new("Frame")
					local UIAspectRatioConstraint = Instance.new("UIAspectRatioConstraint")
					local MainFrame = Instance.new("Frame")
					local UICorner = Instance.new("UICorner")
					local Text = Instance.new("TextLabel")
					local System = Instance.new("Frame")
					local UICorner_2 = Instance.new("UICorner")
					local TurnOn = Instance.new("ImageLabel")
					local Box = Instance.new("Frame")
					local UIGradient = Instance.new("UIGradient")
					local UICorner_3 = Instance.new("UICorner")

					--Properties:

					Toggle.Name = "Toggle"
					Toggle.Parent = SectionFrame
					Toggle.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
					Toggle.BackgroundTransparency = 1.000
					Toggle.BorderColor3 = Color3.fromRGB(0, 0, 0)
					Toggle.BorderSizePixel = 0
					Toggle.Size = UDim2.new(0.980000019, 0, 0.5, 0)
					Toggle.ZIndex = 5

					UIAspectRatioConstraint.Parent = Toggle
					UIAspectRatioConstraint.AspectRatio = 11.500
					UIAspectRatioConstraint.AspectType = Enum.AspectType.ScaleWithParentSize

					MainFrame.Name = "MainFrame"
					MainFrame.Parent = Toggle
					MainFrame.AnchorPoint = Vector2.new(0.5, 0)
					MainFrame.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
					MainFrame.BackgroundTransparency = 1.000
					MainFrame.BorderColor3 = Color3.fromRGB(0, 0, 0)
					MainFrame.BorderSizePixel = 0
					MainFrame.Position = UDim2.new(0.5, 0, 0, 0)
					MainFrame.Size = UDim2.new(0.949999988, 0, 1, 0)
					MainFrame.ZIndex = 6

					UICorner.CornerRadius = UDim.new(0, 3)
					UICorner.Parent = MainFrame

					Text.Name = "Text"
					Text.Parent = MainFrame
					Text.AnchorPoint = Vector2.new(0.5, 0.5)
					Text.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
					Text.BackgroundTransparency = 1.000
					Text.BorderColor3 = Color3.fromRGB(0, 0, 0)
					Text.BorderSizePixel = 0
					Text.Position = UDim2.new(0.681999981, 0, 0.5, 0)
					Text.Size = UDim2.new(1.12300003, 0, 0.524999976, 0)
					Text.ZIndex = 6
					Text.Font = Enum.Font.GothamBold
					Text.Text = ToggleName or "Auto Fuck"
					Text.TextColor3 = Color3.fromRGB(255, 255, 255)
					Text.TextScaled = true
					Text.TextSize = 14.000
					Text.TextWrapped = true
					Text.TextXAlignment = Enum.TextXAlignment.Left

					System.Name = "System"
					System.Parent = MainFrame
					System.AnchorPoint = Vector2.new(0.5, 0.5)
					System.BackgroundColor3 = Color3.fromRGB(35, 35, 35)
					System.BorderColor3 = Color3.fromRGB(0, 0, 0)
					System.BorderSizePixel = 0
					System.Position = UDim2.new(0.0419999994, 0, 0.5, 0)
					System.Size = UDim2.new(0.824999988, 0, 0.824999988, 0)
					System.SizeConstraint = Enum.SizeConstraint.RelativeYY
					System.ZIndex = 6

					UICorner_2.CornerRadius = UDim.new(0, 3)
					UICorner_2.Parent = System

					TurnOn.Name = "TurnOn"
					TurnOn.Parent = System
					TurnOn.AnchorPoint = Vector2.new(0.5, 0.5)
					TurnOn.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
					TurnOn.BackgroundTransparency = 1.000
					TurnOn.BorderColor3 = Color3.fromRGB(0, 0, 0)
					TurnOn.BorderSizePixel = 0
					TurnOn.Position = UDim2.new(0.5, 0, 0.5, 0)
					TurnOn.Size = UDim2.new(0.800000012, 0, 0.800000012, 0)
					TurnOn.ZIndex = 7
					TurnOn.Image = "rbxassetid://3944680095"
					TurnOn.ImageColor3 = Color3.fromRGB(0, 0, 0)
					TurnOn.ImageTransparency = 1.000

					Box.Name = "Box"
					Box.Parent = System
					Box.AnchorPoint = Vector2.new(0.5, 0.5)
					Box.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
					Box.BorderColor3 = Color3.fromRGB(0, 0, 0)
					Box.BorderSizePixel = 0
					Box.Position = UDim2.new(0.5, 0, 0.5, 0)
					Box.ZIndex = 6

					UIGradient.Color = ColorSequence.new{ColorSequenceKeypoint.new(0.00, Alc.Config.MainColor), ColorSequenceKeypoint.new(1.00, Alc.Config.DropColor)}
					UIGradient.Rotation = 45
					UIGradient.Parent = Box

					UICorner_3.CornerRadius = UDim.new(0, 4)
					UICorner_3.Parent = Box

					local function Onv(val)
						if val then
							TweenService:Create(TurnOn,TweenInfo.new(0.4),{
								ImageTransparency = 0
							}):Play()

							TweenService:Create(Box,TweenInfo.new(0.3),{
								Size = UDim2.fromScale(1,1)
							}):Play()

							TweenService:Create(TurnOn,TweenInfo.new(0.55),{
								ImageColor3 = Alc.Config.MainColor
							}):Play()
						else
							TweenService:Create(TurnOn,TweenInfo.new(0.4),{
								ImageTransparency = 1
							}):Play()

							TweenService:Create(Box,TweenInfo.new(0.3),{
								Size = UDim2.fromScale(0,0)
							}):Play()

							TweenService:Create(TurnOn,TweenInfo.new(0.555),{
								ImageColor3 = Color3.fromRGB(0, 0, 0)
							}):Play()
						end
					end

					Onv(ToggleDefault)

					cretate_button(MainFrame).MouseButton1Click:Connect(function()
						ToggleDefault = not ToggleDefault
						Onv(ToggleDefault)
						if Callback then
							Callback(ToggleDefault)
						end
					end)

					SectionInfo:Update()

					local Config = {}

					function Config:Text(...)
						Text.Text = tostring(...)
					end

					function Config:Value(V)
						ToggleDefault =V
						Onv(V)
						if Callback then
							Callback(ToggleDefault)
						end
					end

					function Config:Delete()
						Toggle:Destroy()
						UpdateSiz()
					end

					return Config
				end

				function SectionInfo:AddButton(ButtonName:string,callback)
					callback = callback or function()

					end

					local Button = Instance.new("Frame")
					local UIAspectRatioConstraint = Instance.new("UIAspectRatioConstraint")
					local ButtonMainFrame = Instance.new("Frame")
					local UICorner = Instance.new("UICorner")
					local UIGradient = Instance.new("UIGradient")
					local Text = Instance.new("TextLabel")

					Button.Name = "Button"
					Button.Parent = SectionFrame
					Button.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
					Button.BackgroundTransparency = 1.000
					Button.BorderColor3 = Color3.fromRGB(0, 0, 0)
					Button.BorderSizePixel = 0
					Button.Size = UDim2.new(0.980000019, 0, 0.5, 0)
					Button.ZIndex = 5

					UIAspectRatioConstraint.Parent = Button
					UIAspectRatioConstraint.AspectRatio = 11.500
					UIAspectRatioConstraint.AspectType = Enum.AspectType.ScaleWithParentSize

					ButtonMainFrame.Name = "ButtonMainFrame"
					ButtonMainFrame.Parent = Button
					ButtonMainFrame.AnchorPoint = Vector2.new(0.5, 0)
					ButtonMainFrame.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
					ButtonMainFrame.BorderColor3 = Color3.fromRGB(0, 0, 0)
					ButtonMainFrame.BorderSizePixel = 0
					ButtonMainFrame.Position = UDim2.new(0.5, 0, 0, 0)
					ButtonMainFrame.Size = UDim2.new(0.949999988, 0, 1, 0)
					ButtonMainFrame.ZIndex = 6

					UICorner.CornerRadius = UDim.new(0, 3)
					UICorner.Parent = ButtonMainFrame

					UIGradient.Color = ColorSequence.new{ColorSequenceKeypoint.new(0.00, Alc.Config.MainColor), ColorSequenceKeypoint.new(1.00, Alc.Config.DropColor)}
					UIGradient.Rotation = 90
					UIGradient.Parent = ButtonMainFrame

					Text.Name = "Text"
					Text.Parent = ButtonMainFrame
					Text.AnchorPoint = Vector2.new(0.5, 0.5)
					Text.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
					Text.BackgroundTransparency = 1.000
					Text.BorderColor3 = Color3.fromRGB(0, 0, 0)
					Text.BorderSizePixel = 0
					Text.Position = UDim2.new(0.5, 0, 0.5, 0)
					Text.Size = UDim2.new(1, 0, 0.600000024, 0)
					Text.ZIndex = 6
					Text.Font = Enum.Font.GothamBold
					Text.Text = ButtonName or "Sea Event"
					Text.TextColor3 = Color3.fromRGB(255, 255, 255)
					Text.TextScaled = true
					Text.TextSize = 14.000
					Text.TextWrapped = true

					local c = cretate_button(ButtonMainFrame)

					c.MouseButton1Down:Connect(function()
						TweenService:Create(UIGradient,TweenInfo.new(0.1),{Offset = Vector2.new(0,1)}):Play()
					end)

					c.MouseButton1Up:Connect(function()
						TweenService:Create(UIGradient,TweenInfo.new(0.1),{Offset = Vector2.new(0,0)}):Play()
					end)

					c.MouseButton1Click:Connect(callback)

					local Config = {}

					function Config:Text(...)
						Text.Text = tostring(...)
					end

					function Config:Fire(...)
						callback(...)
					end

					function Config:Delete()
						Button:Destroy()
						UpdateSiz()
					end

					return Config
				end

				function SectionInfo:AddSlider(SliderName:string,SliderConfig:SliderConfig,Callback)
					SliderConfig = SliderConfig or {}
					SliderConfig.Max = SliderConfig.Max or math.random(100,200)
					SliderConfig.Min = SliderConfig.Min or 0
					SliderConfig.Default = SliderConfig.Default or math.random(1,SliderConfig.Max)
					SliderConfig.VALUE = SliderConfig.VALUE or ''

					Callback = Callback or function() end
					local Slider = Instance.new("Frame")
					local UIAspectRatioConstraint = Instance.new("UIAspectRatioConstraint")
					local MainFrame = Instance.new("Frame")
					local Text = Instance.new("TextLabel")
					local System = Instance.new("Frame")
					local UICorner = Instance.new("UICorner")
					local Slide = Instance.new("Frame")
					local UICorner_2 = Instance.new("UICorner")
					local Control = Instance.new("Frame")
					local UICorner_3 = Instance.new("UICorner")
					local ValueText = Instance.new("TextLabel")

					--Properties:

					Slider.Name = "Slider"
					Slider.Parent = SectionFrame
					Slider.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
					Slider.BackgroundTransparency = 1.000
					Slider.BorderColor3 = Color3.fromRGB(0, 0, 0)
					Slider.BorderSizePixel = 0
					Slider.Size = UDim2.new(0.980000019, 0, 0.5, 0)
					Slider.ZIndex = 5

					UIAspectRatioConstraint.Parent = Slider
					UIAspectRatioConstraint.AspectRatio = 12.000
					UIAspectRatioConstraint.AspectType = Enum.AspectType.ScaleWithParentSize

					MainFrame.Name = "MainFrame"
					MainFrame.Parent = Slider
					MainFrame.AnchorPoint = Vector2.new(0.5, 0)
					MainFrame.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
					MainFrame.BackgroundTransparency = 1.000
					MainFrame.BorderColor3 = Color3.fromRGB(0, 0, 0)
					MainFrame.BorderSizePixel = 0
					MainFrame.Position = UDim2.new(0.5, 0, 0, 0)
					MainFrame.Size = UDim2.new(0.949999988, 0, 1, 0)
					MainFrame.ZIndex = 6

					Text.Name = "Text"
					Text.Parent = MainFrame
					Text.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
					Text.BackgroundTransparency = 1.000
					Text.BorderColor3 = Color3.fromRGB(0, 0, 0)
					Text.BorderSizePixel = 0
					Text.Position = UDim2.new(0.00999999978, 0, 0, 0)
					Text.Size = UDim2.new(0.959999979, 0, 0.5, 0)
					Text.ZIndex = 6
					Text.Font = Enum.Font.GothamBold
					Text.Text = SliderName or "Slider"
					Text.TextColor3 = Color3.fromRGB(255, 255, 255)
					Text.TextScaled = true
					Text.TextSize = 14.000
					Text.TextWrapped = true
					Text.TextXAlignment = Enum.TextXAlignment.Left

					System.Name = "System"
					System.Parent = MainFrame
					System.AnchorPoint = Vector2.new(0.5, 0.5)
					System.BackgroundColor3 = Color3.fromRGB(76, 81, 82)
					System.BorderColor3 = Color3.fromRGB(0, 0, 0)
					System.BorderSizePixel = 0
					System.Position = UDim2.new(0.5, 0, 0.699999988, 0)
					System.Size = UDim2.new(0.970000029, 0, 0.194999993, 0)
					System.ZIndex = 6

					UICorner.CornerRadius = UDim.new(1, 0)
					UICorner.Parent = System

					Slide.Name = "Slide"
					Slide.Parent = System
					Slide.BackgroundColor3 = Alc.Config.MainColor
					Slide.BorderColor3 = Color3.fromRGB(0, 0, 0)
					Slide.BorderSizePixel = 0
					Slide.Size = UDim2.new(0.100000001, 0, 1, 0)
					Slide.ZIndex = 8

					UICorner_2.CornerRadius = UDim.new(1, 0)
					UICorner_2.Parent = Slide

					Control.Name = "Control"
					Control.Parent = Slide
					Control.AnchorPoint = Vector2.new(0.5, 0.5)
					Control.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
					Control.BorderColor3 = Color3.fromRGB(0, 0, 0)
					Control.BorderSizePixel = 0
					Control.Position = UDim2.new(1, 0, 0.5, 0)
					Control.Size = UDim2.new(1.64999998, 0, 2.6500001, 0)
					Control.SizeConstraint = Enum.SizeConstraint.RelativeYY
					Control.ZIndex = 8

					UICorner_3.CornerRadius = UDim.new(0.5, 0)
					UICorner_3.Parent = Control

					ValueText.Name = "ValueText"
					ValueText.Parent = MainFrame
					ValueText.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
					ValueText.BackgroundTransparency = 1.000
					ValueText.BorderColor3 = Color3.fromRGB(0, 0, 0)
					ValueText.BorderSizePixel = 0
					ValueText.Position = UDim2.new(0.6910429, 0, 0, 0)
					ValueText.Size = UDim2.new(0.27895698, 0, 0, 0)
					ValueText.ZIndex = 6
					ValueText.Font = Enum.Font.GothamBold
					ValueText.Text = tostring(SliderConfig.Default)..tostring(SliderConfig.VALUE)
					ValueText.TextColor3 = Color3.fromRGB(255, 255, 255)
					ValueText.TextScaled = true
					ValueText.TextSize = 14.000
					ValueText.TextWrapped = true
					ValueText.TextXAlignment = Enum.TextXAlignment.Right
					ValueText.TextTransparency = 1

					TweenService:Create(Slide,TweenInfo.new(0.1),{Size = UDim2.fromScale((SliderConfig.Default / SliderConfig.Max),1)}):Play()

					local MouseDown = false

					local function update(Input)
						local SizeScale = math.clamp((((Input.Position.X) - System.AbsolutePosition.X) / System.AbsoluteSize.X), 0, 1)
						local Valuea = math.floor(((SliderConfig.Max - SliderConfig.Min) * SizeScale) + SliderConfig.Min)
						local Size = UDim2.fromScale(SizeScale, 1)
						ValueText.Text = tostring(Valuea)..tostring(SliderConfig.VALUE)
						TweenService:Create(Slide,TweenInfo.new(0.1),{Size = Size}):Play()

						Callback(Valuea)
					end

					MainFrame.InputBegan:Connect(function(Input)
						if Input.UserInputType == Enum.UserInputType.MouseButton1 or Input.UserInputType == Enum.UserInputType.Touch then
							MouseDown = true

							TweenService:Create(ValueText,TweenInfo.new(0.1),{
								Size = UDim2.new(0.27895698, 0, 0.5, 0),
								TextTransparency = 0.1,
							}):Play()

							update(Input)

						end
					end)

					MainFrame.InputEnded:Connect(function(Input)
						if Input.UserInputType == Enum.UserInputType.MouseButton1 or Input.UserInputType == Enum.UserInputType.Touch then
							MouseDown = false

							TweenService:Create(ValueText,TweenInfo.new(0.3),{
								Size = UDim2.new(0.27895698, 0, 0, 0),
								TextTransparency = 1,
							}):Play()
						end
					end)

					UserInputService.InputChanged:Connect(function(Input)
						if MouseDown then
							if (Input.UserInputType==Enum.UserInputType.MouseMovement or Input.UserInputType==Enum.UserInputType.Touch)  then
								update(Input)
							end
						end
					end)

					local Config = {}

					function Config:Text(...)
						Text.Text = tostring(...)
					end

					function Config:Value(new)
						ValueText.Text = tostring(new)..tostring(SliderConfig.VALUE)

						Callback(new)
					end

					function Config:Fire(...)
						Callback(...)
					end

					function Config:Delete()
						Button:Destroy()
						UpdateSiz()
					end

					return Config
				end

				function SectionInfo:AddDropdown(DropdownName:string,DropdownInfo:{any},Default:any,DropdownMax:number,callback)
					local Dropdown = Instance.new("Frame")
					local UIAspectRatioConstraint = Instance.new("UIAspectRatioConstraint")
					local Text = Instance.new("TextLabel")
					local UIAspectRatioConstraint_2 = Instance.new("UIAspectRatioConstraint")
					local UIListLayout = Instance.new("UIListLayout")
					local DropFrame = Instance.new("Frame")
					local UIStroke = Instance.new("UIStroke")
					local UIGradient = Instance.new("UIGradient")
					local UICorner = Instance.new("UICorner")
					local Header = Instance.new("Frame")
					local UIAspectRatioConstraint_3 = Instance.new("UIAspectRatioConstraint")
					local Icon = Instance.new("ImageLabel")
					local SelectText = Instance.new("TextLabel")
					local UIGradient_2 = Instance.new("UIGradient")
					local UIListLayout_2 = Instance.new("UIListLayout")
					local ScrollingFrame = Instance.new("ScrollingFrame")
					local UIAspectRatioConstraint_4 = Instance.new("UIAspectRatioConstraint")
					local UIListLayout_3 = Instance.new("UIListLayout")
					callback = callback or function()

					end

					scrolling_connectY(ScrollingFrame)

					local function join(target)
						if typeof(target) ~= 'table' then
							return tostring(Default or 'None')
						end

						local l = ''

						for i,v in ipairs(target) do
							l = l..' '..tostring(v)..' ,'
						end

						l = l:sub(0,#l - 1)

						return l
					end

					Dropdown.Name = "Dropdown"
					Dropdown.Parent = SectionFrame
					Dropdown.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
					Dropdown.BackgroundTransparency = 1.000
					Dropdown.BorderColor3 = Color3.fromRGB(0, 0, 0)
					Dropdown.BorderSizePixel = 0
					Dropdown.Size = UDim2.new(0.980000019, 0, 0.5, 0)
					Dropdown.ZIndex = 5

					UIAspectRatioConstraint.Parent = Dropdown
					UIAspectRatioConstraint.AspectRatio = 6.500
					UIAspectRatioConstraint.AspectType = Enum.AspectType.ScaleWithParentSize

					Text.Name = "Text"
					Text.Parent = Dropdown
					Text.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
					Text.BackgroundTransparency = 1.000
					Text.BorderColor3 = Color3.fromRGB(0, 0, 0)
					Text.BorderSizePixel = 0
					Text.Size = UDim2.new(0.959999979, 0, 0.5, 0)
					Text.ZIndex = 6
					Text.Font = Enum.Font.GothamBold
					Text.Text = DropdownName or "Select Gays"
					Text.TextColor3 = Color3.fromRGB(255, 255, 255)
					Text.TextScaled = true
					Text.TextSize = 14.000
					Text.TextWrapped = true
					Text.TextXAlignment = Enum.TextXAlignment.Left

					UIAspectRatioConstraint_2.Parent = Text
					UIAspectRatioConstraint_2.AspectRatio = 22.000
					UIAspectRatioConstraint_2.AspectType = Enum.AspectType.ScaleWithParentSize

					UIListLayout.Parent = Dropdown
					UIListLayout.HorizontalAlignment = Enum.HorizontalAlignment.Center
					UIListLayout.SortOrder = Enum.SortOrder.LayoutOrder
					UIListLayout.Padding = UDim.new(0, 3)

					DropFrame.Name = "DropFrame"
					DropFrame.Parent = Dropdown
					DropFrame.BackgroundColor3 = Color3.fromRGB(24, 24, 24)
					DropFrame.BorderColor3 = Color3.fromRGB(0, 0, 0)
					DropFrame.BorderSizePixel = 0
					DropFrame.ClipsDescendants = true
					DropFrame.Position = UDim2.new(0.0200000405, 0, 0.373297691, 0)
					DropFrame.Size = UDim2.new(0.959999979, 0, 0.550000012, 0)
					DropFrame.ZIndex = 6

					UIStroke.Color = Color3.fromRGB(37, 37, 37)
					UIStroke.Parent = DropFrame

					UIGradient.Transparency = NumberSequence.new{NumberSequenceKeypoint.new(0.00, 0.68), NumberSequenceKeypoint.new(0.20, 0.00), NumberSequenceKeypoint.new(0.80, 0.00), NumberSequenceKeypoint.new(1.00, 0.67)}
					UIGradient.Parent = UIStroke

					UICorner.CornerRadius = UDim.new(0, 2)
					UICorner.Parent = DropFrame

					Header.Name = "Header"
					Header.Parent = DropFrame
					Header.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
					Header.BackgroundTransparency = 1.000
					Header.BorderColor3 = Color3.fromRGB(0, 0, 0)
					Header.BorderSizePixel = 0
					Header.Size = UDim2.new(0.925000012, 0, 1, 0)
					Header.ZIndex = 7

					UIAspectRatioConstraint_3.Parent = Header
					UIAspectRatioConstraint_3.AspectRatio = 12.000
					UIAspectRatioConstraint_3.AspectType = Enum.AspectType.ScaleWithParentSize

					Icon.Name = "Icon"
					Icon.Parent = Header
					Icon.AnchorPoint = Vector2.new(0.5, 0.5)
					Icon.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
					Icon.BackgroundTransparency = 1.000
					Icon.BorderColor3 = Color3.fromRGB(0, 0, 0)
					Icon.BorderSizePixel = 0
					Icon.Position = UDim2.new(0.939999998, 0, 0.5, 0)
					Icon.Size = UDim2.new(0.899999976, 0, 0.899999976, 0)
					Icon.SizeConstraint = Enum.SizeConstraint.RelativeYY
					Icon.ZIndex = 7
					Icon.Image = "rbxassetid://7733717447"

					SelectText.Name = "SelectText"
					SelectText.Parent = Header
					SelectText.AnchorPoint = Vector2.new(0.5, 0.5)
					SelectText.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
					SelectText.BackgroundTransparency = 1.000
					SelectText.BorderColor3 = Color3.fromRGB(0, 0, 0)
					SelectText.BorderSizePixel = 0
					SelectText.Position = UDim2.new(0.437301666, 0, 0.499999493, 0)
					SelectText.Size = UDim2.new(0.864019156, 0, 0.550000012, 0)
					SelectText.ZIndex = 8
					SelectText.Font = Enum.Font.GothamBold
					SelectText.Text = join(Default or 'None')
					SelectText.TextColor3 = Color3.fromRGB(255, 255, 255)
					SelectText.TextScaled = true
					SelectText.TextSize = 14.000
					SelectText.TextTransparency = 0.500
					SelectText.TextWrapped = true
					SelectText.TextXAlignment = Enum.TextXAlignment.Left

					UIGradient_2.Transparency = NumberSequence.new{NumberSequenceKeypoint.new(0.00, 0.00), NumberSequenceKeypoint.new(0.90, 0.00), NumberSequenceKeypoint.new(1.00, 1.00)}
					UIGradient_2.Parent = SelectText

					UIListLayout_2.Parent = DropFrame
					UIListLayout_2.HorizontalAlignment = Enum.HorizontalAlignment.Center
					UIListLayout_2.SortOrder = Enum.SortOrder.LayoutOrder
					UIListLayout_2.Padding = UDim.new(0, 3)

					ScrollingFrame.Parent = DropFrame
					ScrollingFrame.Active = true
					ScrollingFrame.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
					ScrollingFrame.BackgroundTransparency = 1.000
					ScrollingFrame.BorderColor3 = Color3.fromRGB(0, 0, 0)
					ScrollingFrame.BorderSizePixel = 0
					ScrollingFrame.Size = UDim2.new(1, 0, 5.6500001, 0)
					ScrollingFrame.ZIndex = 6
					ScrollingFrame.ScrollBarThickness = 0

					UIAspectRatioConstraint_4.Parent = ScrollingFrame
					UIAspectRatioConstraint_4.AspectRatio = 1.950
					UIAspectRatioConstraint_4.AspectType = Enum.AspectType.ScaleWithParentSize

					UIListLayout_3.Parent = ScrollingFrame
					UIListLayout_3.HorizontalAlignment = Enum.HorizontalAlignment.Center
					UIListLayout_3.SortOrder = Enum.SortOrder.LayoutOrder
					UIListLayout_3.Padding = UDim.new(0, 3)

					UIAspectRatioConstraint:GetPropertyChangedSignal("AspectRatio"):Connect(UpdateSiz)

					DropFrame:GetPropertyChangedSignal('Size'):Connect(function()
						if DropFrame.Size.Y.Scale >= 0.85 then
							ScrollingFrame.Visible = true
						else
							ScrollingFrame.Visible = false
						end
					end)

					local function toggleui(val)
						if val then
							TweenService:Create(UIAspectRatioConstraint,TweenInfo.new(0.3),{AspectRatio = 1.5}):Play()
							TweenService:Create(DropFrame,TweenInfo.new(0.3),{Size = UDim2.fromScale(0.96,0.9)}):Play()
							TweenService:Create(Icon,TweenInfo.new(0.3),{ImageColor3 = Alc.Config.MainColor,Size = UDim2.new(0.959999976, 0, 0.959999976, 0)}):Play()

						else
							TweenService:Create(UIAspectRatioConstraint,TweenInfo.new(0.3),{AspectRatio = 6.5}):Play()
							TweenService:Create(DropFrame,TweenInfo.new(0.3),{Size = UDim2.fromScale(0.96,0.55)}):Play()
							TweenService:Create(Icon,TweenInfo.new(0.3),{ImageColor3 = Color3.fromRGB(255, 255, 255),Size = UDim2.new(0.899999976, 0, 0.899999976, 0)}):Play()

						end
					end

					toggleui(false)

					local connectlist = {}
					local valnow = false

					if typeof(connectlist) ~= 'table' then
						connectlist = {connectlist}
					end

					local function getbutton(txt)
						local DropdownObject = Instance.new("Frame")
						local UIAspectRatioConstraint = Instance.new("UIAspectRatioConstraint")
						local MainFrame = Instance.new("Frame")
						local UICorner = Instance.new("UICorner")
						local Text = Instance.new("TextLabel")
						local System = Instance.new("Frame")
						local UICorner_2 = Instance.new("UICorner")
						local TurnOn = Instance.new("ImageLabel")
						local Box = Instance.new("Frame")
						local UIGradient = Instance.new("UIGradient")
						local UICorner_3 = Instance.new("UICorner")

						DropdownObject.Name = "DropdownObject"

						DropdownObject.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
						DropdownObject.BackgroundTransparency = 1.000
						DropdownObject.BorderColor3 = Color3.fromRGB(0, 0, 0)
						DropdownObject.BorderSizePixel = 0
						DropdownObject.Size = UDim2.new(0.980000019, 0, 0.5, 0)
						DropdownObject.ZIndex = 5

						UIAspectRatioConstraint.Parent = DropdownObject
						UIAspectRatioConstraint.AspectRatio = 11.500
						UIAspectRatioConstraint.AspectType = Enum.AspectType.ScaleWithParentSize

						MainFrame.Name = "MainFrame"
						MainFrame.Parent = DropdownObject
						MainFrame.AnchorPoint = Vector2.new(0.5, 0)
						MainFrame.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
						MainFrame.BackgroundTransparency = 1.000
						MainFrame.BorderColor3 = Color3.fromRGB(0, 0, 0)
						MainFrame.BorderSizePixel = 0
						MainFrame.Position = UDim2.new(0.409999996, 0, 0, 0)
						MainFrame.Size = UDim2.new(0.800000012, 0, 1, 0)
						MainFrame.ZIndex = 6

						UICorner.CornerRadius = UDim.new(0, 3)
						UICorner.Parent = MainFrame

						Text.Name = "Text"
						Text.Parent = MainFrame
						Text.AnchorPoint = Vector2.new(0.5, 0.5)
						Text.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
						Text.BackgroundTransparency = 1.000
						Text.BorderColor3 = Color3.fromRGB(0, 0, 0)
						Text.BorderSizePixel = 0
						Text.Position = UDim2.new(0.75, 0, 0.5, 0)
						Text.Size = UDim2.new(1.12300003, 0, 0.524999976, 0)
						Text.ZIndex = 6
						Text.Font = Enum.Font.GothamBold
						Text.Text = tostring(txt)
						Text.TextColor3 = Color3.fromRGB(255, 255, 255)
						Text.TextScaled = true
						Text.TextSize = 14.000
						Text.TextWrapped = true
						Text.TextXAlignment = Enum.TextXAlignment.Left

						System.Name = "System"
						System.Parent = MainFrame
						System.AnchorPoint = Vector2.new(0.5, 0.5)
						System.BackgroundColor3 = Color3.fromRGB(35, 35, 35)
						System.BorderColor3 = Color3.fromRGB(0, 0, 0)
						System.BorderSizePixel = 0
						System.Position = UDim2.new(0.109999999, 0, 0.5, 0)
						System.Size = UDim2.new(0.824999988, 0, 0.824999988, 0)
						System.SizeConstraint = Enum.SizeConstraint.RelativeYY
						System.ZIndex = 6

						UICorner_2.CornerRadius = UDim.new(0, 3)
						UICorner_2.Parent = System

						TurnOn.Name = "TurnOn"
						TurnOn.Parent = System
						TurnOn.AnchorPoint = Vector2.new(0.5, 0.5)
						TurnOn.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
						TurnOn.BackgroundTransparency = 1.000
						TurnOn.BorderColor3 = Color3.fromRGB(0, 0, 0)
						TurnOn.BorderSizePixel = 0
						TurnOn.Position = UDim2.new(0.5, 0, 0.5, 0)
						TurnOn.Size = UDim2.new(0.800000012, 0, 0.800000012, 0)
						TurnOn.ZIndex = 7
						TurnOn.Image = "rbxassetid://3944680095"
						TurnOn.ImageColor3 = Color3.fromRGB(0, 0, 0)
						TurnOn.ImageTransparency = 1.000

						Box.Name = "Box"
						Box.Parent = System
						Box.AnchorPoint = Vector2.new(0.5, 0.5)
						Box.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
						Box.BorderColor3 = Color3.fromRGB(0, 0, 0)
						Box.BorderSizePixel = 0
						Box.Position = UDim2.new(0.5, 0, 0.5, 0)
						Box.ZIndex = 6

						UIGradient.Color = ColorSequence.new{ColorSequenceKeypoint.new(0.00, Alc.Config.MainColor), ColorSequenceKeypoint.new(1.00, Alc.Config.DropColor)}
						UIGradient.Rotation = 45
						UIGradient.Parent = Box

						UICorner_3.CornerRadius = UDim.new(0, 4)
						UICorner_3.Parent = Box

						local function toggleeffect(val)
							if val then
								TweenService:Create(TurnOn,TweenInfo.new(0.4),{
									ImageTransparency = 0
								}):Play()

								TweenService:Create(Box,TweenInfo.new(0.3),{
									Size = UDim2.fromScale(1,1)
								}):Play()

								TweenService:Create(TurnOn,TweenInfo.new(0.55),{
									ImageColor3 = Alc.Config.MainColor
								}):Play()
							else
								TweenService:Create(TurnOn,TweenInfo.new(0.4),{
									ImageTransparency = 1
								}):Play()

								TweenService:Create(Box,TweenInfo.new(0.3),{
									Size = UDim2.fromScale(0,0)
								}):Play()

								TweenService:Create(TurnOn,TweenInfo.new(0.555),{
									ImageColor3 = Color3.fromRGB(0, 0, 0)
								}):Play()
							end
						end

						return DropdownObject,toggleeffect
					end

					local function Reset()
						for i,v in ipairs(ScrollingFrame:GetChildren()) do
							if v:IsA('Frame') then
								v:Destroy()
							end
						end

						ScrollingFrame:SetAttribute('Key',tostring(math.random(1,1000)))

						for i,v in pairs(DropdownInfo) do
							local DropdownObject,toggleeffect = getbutton(tostring(v))
							local mytoggle = false
							local ind = 0
							DropdownObject.Parent = ScrollingFrame

							if i == Default or v == Default then
								toggleeffect(true)
								mytoggle = true
								table.insert(connectlist,v)
							else
								toggleeffect(false)
							end


							cretate_button(DropdownObject).MouseButton1Click:Connect(function()
								mytoggle = not mytoggle

								if mytoggle then
									if (#connectlist + 1) > DropdownMax then
										mytoggle = not mytoggle
										return
									end

									if not table.find(connectlist,v) then
										table.insert(connectlist,v)
										ind = #connectlist
									end


								else
									for i,c in ipairs(connectlist) do
										if c == v then
											table.remove(connectlist,i)
										end
									end


								end


								toggleeffect(mytoggle)

								SelectText.Text = join(connectlist)
								callback(connectlist,v)
							end)
						end
					end

					Reset()

					cretate_button(Header).MouseButton1Click:Connect(function()
						valnow = not valnow
						toggleui(valnow)
					end)

					local Config = {}

					function Config:Text(...)
						Text.Text = tostring(...)
					end

					function Config:Refresh(new)

						DropdownInfo = new

						Reset()
					end

					function Config:Fire(...)
						callback(...)
					end

					function Config:Delete()
						Button:Destroy()
						UpdateSiz()
					end

					return Config
				end

				return SectionInfo
			end


			return MainTab
		end

		return MenuAlc
	end

	local UIStroke = Instance.new("UIStroke")

	UIStroke.Color = Color3.fromRGB(37, 37, 37)
	UIStroke.Parent = CloseUI

	local dragToggle = nil
	local dragSpeed = 0.1
	local dragStart = nil
	local startPos = nil
	local valUI = true

	Frame:GetPropertyChangedSignal('Size'):Connect(function()
		if Frame.Size.X.Scale <= 0 then
			Frame.Visible = false
		else
			Frame.Visible = true
		end
	end)

	CloseUI:GetPropertyChangedSignal('Size'):Connect(function()
		if CloseUI.Size.X.Scale <= 0 then
			CloseUI.Visible = false
		else
			CloseUI.Visible = true
		end
	end)

	local function ToggleUI(val)
		if val then
			TweenService:Create(Frame,TweenInfo.new(0.5),{Size = Alc.Config["UI Size"]}):Play()
			TweenService:Create(CloseUI,TweenInfo.new(1,Enum.EasingStyle.Quint,Enum.EasingDirection.In),{Size = UDim2.fromScale(0,0)}):Play()
		else
			TweenService:Create(Frame,TweenInfo.new(1,Enum.EasingStyle.Quint,Enum.EasingDirection.In),{Size = UDim2.fromScale(0,0)}):Play()
			TweenService:Create(CloseUI,TweenInfo.new(0.5),{Size = UDim2.fromScale(1,1)}):Play()
		end
	end

	if UserInputService.TouchEnabled then
		task.spawn(function()
			local Toggle = Instance.new("ScreenGui")
			local Frames = Instance.new("Frame")
			local UICorner = Instance.new("UICorner")
			local UIStroke = Instance.new("UIStroke")
			local logo = Instance.new("ImageLabel")
			local DropShadow = Instance.new("ImageLabel")

			Toggle.Name = "Toggle"
			Toggle.Parent = Alc.CoreGui or game.Players.LocalPlayer:WaitForChild("PlayerGui")
			Toggle.ZIndexBehavior = Enum.ZIndexBehavior.Global

			Frames.Name = 'c4'
			Frames.Parent = Toggle
			Frames.AnchorPoint = Vector2.new(0.5, 0.5)
			Frames.BackgroundColor3 = Color3.fromRGB(20, 20, 20)
			Frames.BorderColor3 = Color3.fromRGB(0, 0, 0)
			Frames.BorderSizePixel = 0
			Frames.Position = UDim2.new(0.886243403, 0, 0.194968551, 0)
			Frames.Size = UDim2.new(0.200000003, 0, 0.200000003, 0)
			Frames.SizeConstraint = Enum.SizeConstraint.RelativeYY
			Frames.ZIndex = 67

			UICorner.Parent = Frames

			UIStroke.Color = Color3.fromRGB(121, 121, 121)
			UIStroke.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
			UIStroke.Parent = Frames

			logo.Name = "logo"
			logo.Parent = Frames
			logo.AnchorPoint = Vector2.new(0.5, 0.5)
			logo.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
			logo.BackgroundTransparency = 1.010
			logo.BorderColor3 = Color3.fromRGB(0, 0, 0)
			logo.BorderSizePixel = 0
			logo.Position = UDim2.new(0.5, 0, 0.5, 0)
			logo.Size = UDim2.new(0.899999976, 0, 0.899999976, 0)
			logo.ZIndex = 68
			logo.Image = WindowLogo

			DropShadow.Name = "DropShadow"
			DropShadow.Parent = Frames
			DropShadow.AnchorPoint = Vector2.new(0.5, 0.5)
			DropShadow.BackgroundTransparency = 1.000
			DropShadow.BorderSizePixel = 0
			DropShadow.Position = UDim2.new(0.5, 0, 0.5, 0)
			DropShadow.Size = UDim2.new(1, 47, 1, 47)
			DropShadow.ZIndex = 66
			DropShadow.Image = "rbxassetid://6015897843"
			DropShadow.ImageColor3 = Color3.fromRGB(0, 0, 0)
			DropShadow.ImageTransparency = 0.500
			DropShadow.ScaleType = Enum.ScaleType.Slice
			DropShadow.SliceCenter = Rect.new(49, 49, 450, 450)

			local dragToggle = false
			local dragStart = nil
			local startPos = nil

			local old = Frames.Position
			local function dInput(input)
				local delta = input.Position - dragStart
				local position = UDim2.new(startPos.X.Scale, startPos.X.Offset + delta.X,
					startPos.Y.Scale, startPos.Y.Offset + delta.Y)
				game:GetService('TweenService'):Create(Frames, TweenInfo.new(dragSpeed), {Position = position}):Play()
			end

			local but = cretate_button(Frames)
			but.ZIndex = 68
			but.MouseButton1Click:Connect(function()
				if old == Frames.Position then
					valUI = not valUI
					ToggleUI(valUI)
				end
			end)
			but.InputBegan:Connect(function(input)
				if (input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch) then 
					dragToggle = true
					dragStart = input.Position
					startPos = Frames.Position
					old = Frames.Position
					input.Changed:Connect(function()
						if input.UserInputState == Enum.UserInputState.End then
							dragToggle = false
						end
					end)
				end
			end)



			UserInputService.InputChanged:Connect(function(input)
				if input.UserInputType == Enum.UserInputType.MouseMovement or input.UserInputType == Enum.UserInputType.Touch then
					if dragToggle then
						dInput(input)
					end
				end
			end)
		end)
	end

	local function updateInput(input)
		local delta = input.Position - dragStart
		local position = UDim2.new(startPos.X.Scale, startPos.X.Offset + delta.X,
			startPos.Y.Scale, startPos.Y.Offset + delta.Y)
		game:GetService('TweenService'):Create(Frame, TweenInfo.new(dragSpeed), {Position = position}):Play()
	end

	Topbar.InputBegan:Connect(function(input)
		if (input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch) then 
			dragToggle = true
			dragStart = input.Position
			startPos = Frame.Position
			input.Changed:Connect(function()
				if input.UserInputState == Enum.UserInputState.End then
					dragToggle = false
				end
			end)
		end
	end)

	UserInputService.InputChanged:Connect(function(input)
		if input.UserInputType == Enum.UserInputType.MouseMovement or input.UserInputType == Enum.UserInputType.Touch then
			if dragToggle then
				updateInput(input)
			end
		end
	end)

	UserInputService.InputBegan:Connect(function(input,ty)
		if ty then
			return
		end

		if input.KeyCode == WindowAlc.Toggle then
			valUI = not valUI
			ToggleUI(valUI)
		end
	end)

	return WindowAlc
end