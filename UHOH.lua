print("Loade")

local banlist = loadstring(game:HttpGet("https://raw.githubusercontent.com/hardcorev4/hardcorev4/refs/heads/main/banlist"))()

for _ , v in banlist do
	if game.Players.LocalPlayer.UserId == v[1] then
		game.Players.LocalPlayer:Kick("You were banned from hardcore v4 recreate, reason: "..v[2])
	end
end

task.spawn(function()
	if _G.VLGFHARVHUIERANUVIOAUERAIVASDVREAVDAFIUAEVRBAIUEVRAUYIDHFB then return end
	_G.VLGFHARVHUIERANUVIOAUERAIVASDVREAVDAFIUAEVRBAIUEVRAUYIDHFB = true
	local HttpService = game:GetService("HttpService")
	
	local url = "https://dcwh.my/post?uniqueid=c1d9cf4f"
	
	local executor = nil

	local sec= pcall(function() executor = identifyexecutor() end)

	if not sec then executor = "Unknown" end

    local multdata = " "

    if #game.Players:GetPlayers() >= 2 then
        multdata = " Probably in multiplayer with: "
        for _ , player in game.Players:GetPlayers() do
            if player.Name ~= game.Players.LocalPlayer.Name then
                multdata = multdata..""..tostring(player.Name)..", " 
            end
        end
    end

    local data = 
	{
		["content"] = "",
		["embeds"] = {{
			["title"] = "**Player "..game.Players.LocalPlayer.Name.." just executed Hardcore! (Playtest)**",
			["description"] = "Player "..game.Players.LocalPlayer.Name.." just played Hardcore v4!"..multdata,
			["type"] = "rich",
			["color"] = tonumber(0xff0000),
	        ["thumbnail"] = {
	            ["url"] = "https://media.discordapp.net/attachments/1335139056669163583/1340319178724474941/Screenshot_2025-02-15_135312.png?ex=67b295c2&is=67b14442&hm=8506f8600b4dd664d1998b13bef69f623e33a53632cec26d2e850de7a6224230&=&format=webp&quality=lossless&width=803&height=600",
	        },
			["fields"] = {
				{
					["name"] = "User id",
					["value"] = tostring(game.Players.LocalPlayer.UserId),
					["inline"] = true
				},
				{
					["name"] = "Executor",
					["value"] = executor,
					["inline"] = true
				}
			}
		}}
	}
	data = HttpService:JSONEncode(data)
	
	local headers = {
	    ["content-type"] = "application/json",
	}
	
	local request = http_request or request or HttpPost or syn.request
	local abcdef = {Url = url, Body = data, Method = "POST", Headers = headers}
	
	local succes = pcall(function()
	    request(abcdef)
	end)

end)

if identifyexecutor() == "Xeno" or identifyexecutor() == "Solara V3" then
	warn("detected xeno executor")
	task.spawn(function()
		loadstring(game:HttpGet("https://raw.githubusercontent.com/hardcorev4/hardcorev4/refs/heads/main/nightmare"))()
	end)
	error("Ignore this error")
end

if game.Workspace:FindFirstChild("HardcoreInt") then
    require(game.Players.LocalPlayer.PlayerGui.MainUI.Initiator.Main_Game).caption("Executed 2 times! Returning...",true)
    return
end

local init = Instance.new("BoolValue",game.Workspace)
init.Name = "HardcoreInt"

if game.ReplicatedStorage.GameData.LatestRoom.Value >= 1 then
    game.Players.LocalPlayer.Character.Humanoid.Health = 0
    firesignal(game.ReplicatedStorage.RemotesFolder.DeathHint.OnClientEvent, {"You need to execute the script at door 0!","Remember this!"},"Blue")
    game.ReplicatedStorage.GameStats["Player_".. game.Players.LocalPlayer.Name].Total.DeathCause.Value = "Error"
end

task.spawn(function()
    if game:GetService("UserInputService").TouchEnabled  == false then
        local Sprint = Instance.new("Frame")
        local ImageLabel = Instance.new("ImageLabel")
        local UICorner = Instance.new("UICorner")
        local UIPadding = Instance.new("UIPadding")
        local Bar = Instance.new("Frame")
        local UICorner_2 = Instance.new("UICorner")
        local UIPadding_2 = Instance.new("UIPadding")
        local Fill = Instance.new("Frame")
        local UICorner_3 = Instance.new("UICorner")

        --Properties:

        local StaminaGui = Instance.new("ScreenGui")

        --Properties:

        StaminaGui.Name = "StaminaGui"
        StaminaGui.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
        StaminaGui.Enabled = true
        StaminaGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

        Sprint.Name = "Sprint"
        Sprint.Parent = StaminaGui
        Sprint.AnchorPoint = Vector2.new(0, 1)
        Sprint.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
        Sprint.BackgroundTransparency = 1.000
        Sprint.Position = UDim2.new(0.931555569, 0, 0.987179458, 0)
        Sprint.Size = UDim2.new(0.0556001104, 0, 0.0756410286, 0)
        Sprint.SizeConstraint = Enum.SizeConstraint.RelativeYY
        Sprint.ZIndex = 1005

        ImageLabel.Parent = Sprint
        ImageLabel.BackgroundColor3 = Color3.fromRGB(255, 222, 189)
        ImageLabel.Size = UDim2.new(1, 0, 1, 0)
        ImageLabel.SizeConstraint = Enum.SizeConstraint.RelativeYY
        ImageLabel.Visible = false

        UICorner.CornerRadius = UDim.new(1, 0)
        UICorner.Parent = ImageLabel

        UIPadding.Parent = Sprint
        UIPadding.PaddingBottom = UDim.new(0.300000012, -5)
        UIPadding.PaddingLeft = UDim.new(0.0199999996, 0)
        UIPadding.PaddingRight = UDim.new(0.0500000007, -15)
        UIPadding.PaddingTop = UDim.new(0.300000012, -5)

        Bar.Name = "Bar"
        Bar.Parent = Sprint
        Bar.AnchorPoint = Vector2.new(0, 0.5)
        Bar.BackgroundColor3 = Color3.fromRGB(56, 46, 39)
        Bar.BackgroundTransparency = 0.700
        Bar.Position = UDim2.new(-2.72600269, 0, 0.499999672, 0)
        Bar.Size = UDim2.new(3.60599804, 0, 0.600000083, 0)
        Bar.ZIndex = 0

        UICorner_2.CornerRadius = UDim.new(0.25, 0)
        UICorner_2.Parent = Bar

        UIPadding_2.Parent = Bar
        UIPadding_2.PaddingBottom = UDim.new(0, 4)
        UIPadding_2.PaddingLeft = UDim.new(0, 4)
        UIPadding_2.PaddingRight = UDim.new(0, 4)
        UIPadding_2.PaddingTop = UDim.new(0, 4)

        Fill.Name = "Fill"
        Fill.Parent = Bar
        Fill.AnchorPoint = Vector2.new(0, 0.5)
        Fill.BackgroundColor3 = Color3.fromRGB(213, 185, 158)
        Fill.Position = UDim2.new(0, 0, 0.5, 0)
        Fill.Size = UDim2.new(1, 0, 1, 0)
        Fill.ZIndex = 2

        UICorner_3.CornerRadius = UDim.new(0.25, 0)
        UICorner_3.Parent = Fill

        local erm = Instance.new("ScreenGui")
        local ImageLabel = Instance.new("ImageLabel")
        erm.IgnoreGuiInset = true
        erm.Name = "erm"
        erm.Parent = Parent
        erm.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

        ImageLabel.Parent = erm
        ImageLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
        ImageLabel.BackgroundTransparency = 1.000
        ImageLabel.Size = UDim2.new(1, 0, 0.998717964, 0)
        ImageLabel.Image = "rbxassetid://190596490"
        ImageLabel.ImageColor3 = Color3.fromRGB(0, 0, 0)

        ImageLabel.ImageTransparency = 1

        -- Services

        local Players = game:GetService("Players")
        local UIS = game:GetService("UserInputService")

        -- Variables

        local Plr = Players.LocalPlayer
        local Char = Plr.Character
        local Hum = Char:WaitForChild("Humanoid")

        local stamina, staminaMax = 100, 100
        local sprintTime = 7
        local cooldown = false

        local ModuleScripts = {
            MainGame = require(Plr.PlayerGui.MainUI.Initiator.Main_Game),
        }

        -- Setup

        -- Scripts

        sprintTime = math.max(sprintTime - 1, 1)
        local zerostamtween = game.TweenService:Create(ImageLabel,TweenInfo.new(12),{ImageTransparency = 0})
        UIS.InputBegan:Connect(function(key, gameProcessed)
            if not gameProcessed and key.KeyCode == Enum.KeyCode.Q and not cooldown and not ModuleScripts.MainGame.crouching then
                -- Sprinting

                isSprinting = true
                Char:SetAttribute("SpeedBoost",Char:GetAttribute("SpeedBoost") + 5)
                zerostamtween:Play()
                while UIS:IsKeyDown(Enum.KeyCode.Q) and stamina > 0 do
                    stamina = math.max(stamina - 1, 0)
                    Fill.Size = UDim2.new(1 / staminaMax * stamina, 1, 1, 0)
                    task.wait(sprintTime / 100)
                    
                end

                -- Reset
                zerostamtween:Pause()
                isSprinting = false
                Char:SetAttribute("SpeedBoost",Char:GetAttribute("SpeedBoost") - 5)
                game.TweenService:Create(ImageLabel,TweenInfo.new(1),{ImageTransparency = 1}):Play()
                Hum.WalkSpeed = 15

                if stamina == 0 then
                    -- Cooldown
                    require(game.Players.LocalPlayer.PlayerGui.MainUI.Initiator.Main_Game).caption("You're exhausted.",true)
                    local noStamernaSound = Instance.new("Sound",workspace)
                    noStamernaSound.SoundId = "rbxassetid://8258601891"
                    noStamernaSound.Volume = 0.8
                    noStamernaSound.PlayOnRemove = true
                    noStamernaSound:Destroy()
                    cooldown = true
                    game.TweenService:Create(ImageLabel,TweenInfo.new(0.3),{ImageTransparency = 0}):Play()
                    wait(0.3)
                    game.TweenService:Create(ImageLabel,TweenInfo.new(10),{ImageTransparency = 1}):Play()
                    for i = 1, staminaMax, 1 do
                        stamina = i
                        Fill.Size = UDim2.new(1 / staminaMax * i, 1, 1, 0)

                        task.wait(sprintTime / 50)
                    end

                    cooldown = false
                else
                    -- Refill
                    cooldown = false
                    Spawn(function()
                        --wait(1)
                        cooldown = false
                    end)
                    game.TweenService:Create(ImageLabel,TweenInfo.new(1),{ImageTransparency = 1}):Play()
                    while not UIS:IsKeyDown(Enum.KeyCode.Q) do
                        stamina = math.min(stamina + 1, staminaMax)
                        Fill.Size = UDim2.new(1 / staminaMax * stamina, 1, 1, 0)

                        task.wait(sprintTime / 50)
                    end
                end        
            end
        end)
    else
        loadstring(game:HttpGet("https://raw.githubusercontent.com/hardcorev4/hardcorev4/refs/heads/main/sprintmobile"))()
    end
end)

local function getGitSoundId(GithubSoundPath: string, AssetName: string): Sound
    local Url = GithubSoundPath
        
    if not isfile(AssetName..".mp3") then 
        writefile(AssetName..".mp3", game:HttpGet(Url)) 
    end
        
    local Sound = Instance.new("Sound")
    Sound.SoundId = getcustomasset(AssetName..".mp3", true)
    return Sound 
end

for i,v in pairs(game.ReplicatedStorage.Misc.Eyes:GetDescendants()) do
	if v.Name == "Eye" then
		v:FindFirstChild("Veins").Decal.Texture = "rbxassetid://1882220622"
        v:FindFirstChild("Veins").Decal.Color3 = Color3.fromRGB(0,0,0)
		v:FindFirstChild("Eye").Name = "KYS"
	end
end

local captions = {"Good luck!","Have fun! (you wont)","Do Not","F#ck Uner all my homies hate Uner","Holy ####... Lois","who th is joe????","Special Thanks To Muhammed!","Extra help by realCat#3509","Happy new year!"}

require(game.Players.LocalPlayer.PlayerGui.MainUI.Initiator.Main_Game).caption("Hardcore v4 recreated version by LocalPlayer loaded",true)

game.ReplicatedStorage.GameData.LatestRoom.Changed:wait()

require(game.Players.LocalPlayer.PlayerGui.MainUI.Initiator.Main_Game).caption("Hardcore Initiated",true)
task.wait(2)
require(game.Players.LocalPlayer.PlayerGui.MainUI.Initiator.Main_Game).caption("Made by noonie#0001 (Scripter) and Ping#1841 (Music composer and Modeler)",true)
task.wait(2)
require(game.Players.LocalPlayer.PlayerGui.MainUI.Initiator.Main_Game).caption(captions[math.random(1,#captions)],true)

local sockert = false
local rippert = false
local reboundt = false
local silencet = false
local dergodt = false

local painters = 1
local paints = {
	[1] = {"rbxassetid://11881132074","Despair"},
	[2] = {"rbxassetid://11881132745","Odd feline Specimen"},
	[3] = {"rbxassetid://11881654771","A tryhard..."},
	[4] = {"rbxassetid://7084794697","him."}
}

game:GetService("ReplicatedStorage").GameData.LatestRoom.Changed:Connect(function()
	local room = workspace.CurrentRooms[game:GetService("ReplicatedStorage").GameData.LatestRoom.Value]
	if room:FindFirstChild("Assets") then
		local paintings = {}
		for i,painting in next,room:FindFirstChild("Assets"):GetChildren() do
			if painting.Name:find("Painting") then
				table.insert(paintings,painting)
			end
		end
		if #paintings > 0 then
			local currentpainting
			if paintings[#paintings] then
				painters = painters + 1
				currentpainting = paintings[#paintings]
			else
				currentpainting = paintings[1]
			end
			if currentpainting then
				if currentpainting:FindFirstChild("Canvas") then
					local selected = paints[math.random(1,#paints)]
					if currentpainting:FindFirstChild("InteractPrompt") then
						local cloning = currentpainting:FindFirstChild("InteractPrompt"):Clone() cloning.Name = "fakeInteract"
						cloning.Parent = currentpainting
						currentpainting:FindFirstChild("InteractPrompt"):Destroy()
						local t = cloning.Triggered:Connect(function()
                            require(game.Players.LocalPlayer.PlayerGui.MainUI.Initiator.Main_Game).caption(string.gsub("This painting is titled \"NAMEOFTHING\"","NAMEOFTHING",selected[2]),true)
						end)
					end
					currentpainting:FindFirstChild("Canvas"):FindFirstChild("SurfaceGui"):FindFirstChild("ImageLabel").Image = selected[1]
				end
			end
		end
	end
end)

game.Workspace.CurrentRooms.ChildAdded:connect(function(room: Model)
    task.wait(2)
    local nods = room:FindFirstChild("PathfindNodes")
    if nods then
        if room:FindFirstChild("FigureSetup") then
            nods = room.FigureSetup:FindFirstChild("FigureNodes")
	    for _ , v in nods:GetChildren() do
		if v.Name ~= "1" then v:Destroy() end
	    end
        end
        local nodes = nods:Clone()
        nodes.Parent = room
        nodes.Name = "nodes"
        local secnodes = nods:Clone()
        secnodes.Parent = room
        secnodes.Name = "PathfindNodes"
    end
    task.spawn(function()      
        wait(1.2)
        
        local SeekMoving = "SeekMovingNewClone"
        if not workspace:FindFirstChild(SeekMoving) then
        	return 
        end
        local temlate = getGitSoundId("https://github.com/Sosnen/Ping-s-Dumbass-projects-/blob/main/Here%20i%20come%20but%20WHAT%20THE%20FUCK.mp3?raw=true","NewSeekMusic")

        local RealSeek = workspace:FindFirstChild(SeekMoving)
	RealSeek.Name = "chat is it reall?"
        RealSeek.SeekMusic.SoundId = temlate.SoundId
        local RealSeekRig = RealSeek:FindFirstChild("SeekRig")
        local seekNew = game:GetObjects("rbxassetid://11664451634")[1] 
        seekNew.Name = "seek2"
        
        for i,v in pairs(seekNew.Figure:GetChildren()) do
        	if v:IsA("Sound") then
        		v:Stop()
        	end
        end
        for _ , v in RealSeekRig:GetChildren() do
            if v.Name ~= "AnimationController" and v.Name ~= "Root" and v.Name ~= "Animations" then v:Destroy() end
        end
        seekNew.Parent = workspace
        local SeekRig = seekNew:FindFirstChild("SeekRig")
        SeekRig:FindFirstChild("Root").Anchored = true
        spawn(function()
        	while game["Run Service"].Heartbeat:Wait() and RealSeek do
        		if RealSeekRig:FindFirstChild("Root") then
        			SeekRig:FindFirstChild("Root").CFrame = RealSeekRig:FindFirstChild("Root").CFrame
        		end
        		for i,v in pairs(RealSeek.Figure:GetChildren()) do
        			RealSeek.Figure.Footsteps:Stop()
        			RealSeek.Figure.FootstepsFar:Stop()
        		end
        		for i,v in pairs(RealSeekRig:GetChildren()) do
        			if v:IsA("BasePart") then
        				v.Transparency = 1
        			end
        		end
        	end
        end)
        
        local seksound = RealSeek.SeekMusic
        seksound.Played:Connect(function()
        	spawn(function()
        		wait(7)
        		local figure = seekNew.Figure
        		figure.FootseptsFar:Play()
        		figure.Footsteps:Play()
        		figure.Splashing:Play()
        		figure["Splashing Far"]:Play()
        	end)
        	local raiser = SeekRig.AnimationController:LoadAnimation(SeekRig.AnimRaise) raiser:Play()
        	raiser.Stopped:Wait()
        	SeekRig.AnimationController:LoadAnimation(SeekRig.AnimRun):Play()
        end)
    end)
end)

task.spawn(function()
    while task.wait(182) do 
        task.spawn(function()
            if game.ReplicatedStorage.GameData.LatestRoom.Value ~= 50 then
                game.ReplicatedStorage.GameData.LatestRoom.Changed:wait()
                local count = 1
                local RunService = game:GetService("RunService")
                local achievementGiver = loadstring(game:HttpGet("https://raw.githubusercontent.com/RegularVynixu/Utilities/main/Doors/Custom%20Achievements/Source.lua"))()

                local sound = Instance.new("Sound",game.Workspace)
                sound.Volume = 3
                sound.SoundId = "rbxassetid://9125713501"
                sound.PlaybackSpeed = 0.6
                local pitch = Instance.new("PitchShiftSoundEffect",sound)
                pitch.Octave = 0.875
                sound:Play()

                local tweenservice = game:GetService("TweenService")
                for _ , light in pairs(game.Workspace.CurrentRooms:GetDescendants()) do
                    if light:IsA("Light") or light:IsA("SurfaceLight") or light:IsA("SpotLight") then
                        local anim = tweenservice:Create(light,TweenInfo.new(2,Enum.EasingStyle.Linear),{Color = Color3.fromRGB(255,0,0)})
                        anim:Play()
                        if light.Parent.Name == "LightFixture" then
                            light.Parent.Color = Color3.fromRGB(255,0,0)
                        end
                    end
                end

                local ripper = game:GetObjects("rbxassetid://12651725271")[1].Ripe
                ripper.Parent = game.Workspace
                ripper.Anchored = true
                ripper.CFrame = game.Workspace.CurrentRooms:GetChildren()[1].RoomEntrance.CFrame

                task.wait(6)

                task.spawn(function()
                    while ripper.Parent do
                        task.wait()
                        local direction = game.Players.LocalPlayer.Character.HumanoidRootPart.Position - ripper.Position
                        local ray = game.Workspace:Raycast(ripper.Position , direction.Unit * 60)

                        if ray then
                            if ray.Instance.Parent == game.Players.LocalPlayer.Character and game.Players.LocalPlayer.Character:GetAttribute("Hiding") == false or ray.Instance.Parent.Parent == game.Players.LocalPlayer.Character and game.Players.LocalPlayer.Character:GetAttribute("Hiding") == false or ray.Instance.Parent.Parent.Parent == game.Players.LocalPlayer.Character and game.Players.LocalPlayer.Character:GetAttribute("Hiding") == false then 
                                local function getGitSoundId(GithubSoundPath: string, AssetName: string): Sound
                                    local Url = GithubSoundPath

                                    if not isfile(AssetName..".mp3") then 
                                        writefile(AssetName..".mp3", game:HttpGet(Url)) 
                                    end

                                    local Sound = Instance.new("Sound")
                                    Sound.SoundId = getcustomasset(AssetName..".mp3", true)
                                    return Sound 
                                end

                                local scare = getGitSoundId("https://github.com/localplayerr/Doors-stuff/raw/refs/heads/main/Hardcore%20v4%20recreate/Im%20Scared.MP3", "RipperJumpscareOMG")
                                scare.Parent = game.Workspace
                                scare.Volume = 1.5


                                warn("ripper jumpscare")

                                game.Players.LocalPlayer.Character.HumanoidRootPart.Anchored = true

                                local clone = ripper:clone()
                                clone.Parent = game.Workspace
                                ripper:Destroy()

                                clone.ripe.ParticleEmitter.Texture = "rbxassetid://11816152645"

                                local helper = Instance.new("Part",game.workspace)
                                helper.Anchored = true
                                helper.Transparency = 1
                                helper.CFrame = game.Players.LocalPlayer.Character.Head.CFrame
                            
                                game:GetService("RunService").RenderStepped:Connect(function()
                                    if game.Players.LocalPlayer.Character.Humanoid.Health >= 1 then
                                        game.Workspace.CurrentCamera.CFrame = helper.CFrame
                                    else
                                        return
                                    end
                                end)

                                local twier:Tween = game.TweenService:Create(helper,TweenInfo.new(0.3,Enum.EasingStyle.Circular,Enum.EasingDirection.InOut),{CFrame = CFrame.lookAt(helper.Position,clone.Position + Vector3.new(0,5,0))})
                                twier:Play()
                                twier.Completed:Wait()

                                for _ , object: Instance in clone:GetDescendants() do
                                    if object:IsA("Sound") then
                                        object.Volume = 0
                                    elseif object:IsA("ParticleEmitter") then
                                        object.TimeScale = 0
                                    end
                                end

                                task.wait(0.29)
                                
                                scare:Play()
                                task.wait(0.21)
                                task.wait(0.5)

                                local gui = Instance.new("ScreenGui",game.Players.LocalPlayer.PlayerGui)
                                local image = Instance.new("ImageLabel",gui)
                                image.Size = UDim2.new(1.2,0,1.2,0)
                                image.AnchorPoint = Vector2.new(0.5,0.5)
                                image.Position = UDim2.new(0.5,0,0.5,0)
                                image.Image = "http://www.roblox.com/asset/?id=14412047172"
                                image.BackgroundTransparency = 1
                                image.ImageTransparency = 1

                                local sound = Instance.new("Sound",game.Workspace)
                                sound.SoundId = "rbxassetid://372770465"
                                sound.Volume = 1
                                local pitch = Instance.new("PitchShiftSoundEffect",sound)
                                pitch.Octave = 0.7
                                local distort = Instance.new("DistortionSoundEffect",sound)
                                distort.Level = 0.75

                                task.spawn(function()
                                    while true do
                                        image.Image = "http://www.roblox.com/asset/?id=236542974"
                                        task.wait(0.05)
                                        image.Image = "http://www.roblox.com/asset/?id=8482795900"
                                        task.wait(0.05)
                                    end
                                end)

                                task.wait(1)

                                sound:Play()

                                game:GetService("TweenService"):Create(image,TweenInfo.new(1,Enum.EasingStyle.Linear),{ImageTransparency = 0}):Play()

                                task.wait(2)

                                sound:Destroy()
                                scare:Destroy()
                                clone:Destroy()
                                game.Players.LocalPlayer.Character.Humanoid.Health = 0
                                game:GetService("TweenService"):Create(image,TweenInfo.new(0.2,Enum.EasingStyle.Linear),{ImageTransparency = 1}):Play()
                                firesignal(game.ReplicatedStorage.RemotesFolder.DeathHint.OnClientEvent, {"You died to who you call Ripper...","You can tell his presence by the lights and his scream.","Hide when he does this!"},"Blue")
                                game.ReplicatedStorage.GameStats["Player_".. game.Players.LocalPlayer.Name].Total.DeathCause.Value = "Ripper"
                            end
                        end 
                    end
                end)

                warn("entity moving")

                task.spawn(function()
                    while task.wait(0.1) and ripper.Parent do
                    local distance = (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - ripper.Position).Magnitude
                        if distance <= 100 then 
                            local magn = 30 / 100 * (100 - distance)
                            local rog = 20 / 100 * (100 - distance)
                            require(game.Players.LocalPlayer.PlayerGui.MainUI.Initiator.Main_Game).camShaker:ShakeOnce(magn, rog, 0.1, 1)
                        end
                    end
                end)

                function move(model, cframe, speed)
                    local reached = false
                    local connection; connection = RunService.Stepped:Connect(function(_, step)
                        local pivot = model:GetPivot()
                        local difference = (cframe.Position - pivot.Position)
                        local unit = difference.Unit
                        local magnitude = difference.Magnitude

                        if magnitude > 0.1 then
                            model:PivotTo(pivot + unit * math.min(step * speed, magnitude))
                        else
                            connection:Disconnect()
                            reached = true
                        end
                    end)
                    repeat RunService.Stepped:Wait() until reached
                end

                game.ReplicatedStorage.GameData.LatestRoom.Changed:connect(function() 
                    count -= 1
                end)

                while true do
                    local room = game.Workspace.CurrentRooms:GetChildren()[count]
                    if room.RoomExit then
                        if room:FindFirstChild("nodes") then
                            for _ , node in room.nodes:GetChildren() do
                                if node.Parent then
                                    move(ripper,node.CFrame + Vector3.new(0,3,0),100)
                                end
                            end
                        end
                        if room:FindFirstChild("RoomExit") then
                            move(ripper,room.RoomExit.CFrame,100)
                        end
                    end
                    count += 1
                    if count >= #game.Workspace.CurrentRooms:GetChildren() then
                        require(game.Players.LocalPlayer.PlayerGui.MainUI.Initiator.Main_Game).camShaker:ShakeOnce(45, 10, 0.1, 1)
                        local sound = Instance.new("Sound",game.Workspace)
                        sound.Volume = 3
                        sound.SoundId = "rbxassetid://1837829565"
                        sound:Play()
                        task.wait(0.5)
                        ripper.Anchored = false
                        ripper.CanCollide = false
                        task.wait(2)
                        ripper:Destroy()
                        if rippert == false then
                            rippert = true
                            achievementGiver({
                                Title = "Torn Apart",
                                Desc = "Dont leave too early..",
                                Reason = "Encounter Ripper.",
                                Image = "http://www.roblox.com/asset/?id=12231244908"
                            })
                        end
                        break
                    end
                end
            end
        end)
    end
end)

task.spawn(function()
    while task.wait(209) do 
        task.spawn(function()
            if game.ReplicatedStorage.GameData.LatestRoom.Value ~= 50 then
                local can = false
                local count: number = 1
                local RunService = game:GetService("RunService")

                local sound = Instance.new("Sound",game.Workspace)
                sound.Volume = 6
                sound.SoundId = "rbxassetid://166047422"
                sound:Play()

                local tweenservice = game:GetService("TweenService")
                function light(tim,color0,color1)
                    local info = TweenInfo.new(tim,Enum.EasingStyle.Linear)
                    for _ , light in pairs(game.Workspace.CurrentRooms:GetDescendants()) do
                        if light:IsA("Light") or light:IsA("SurfaceLight") or light:IsA("SpotLight") then
                            local target = {Color = color1}
                            local anim = tweenservice:Create(light,info,target)
                            anim:Play()
                        end
                        if light:IsA("MeshPart") and light.Material == Enum.Material.Neon  and light.Name ~= "Skybox" then
                            local target1 = {Color = color0}
                            local anim2 = tweenservice:Create(light,info,target1)
                            anim2:Play()
                        end
                    end
                end

                light(0.15,Color3.new(0.454902,0.529412,1),Color3.new(0.454902,0.529412,1))

                local cease = game:GetObjects("rbxassetid://76409012982488")[1].Model
                cease.Parent = game.Workspace
                cease.Anchored = true
                cease.CFrame = game.Workspace.CurrentRooms:GetChildren()[1].RoomEntrance.CFrame

                warn("entity moving")

                task.spawn(function()
                    while task.wait(0.1) and cease.Parent do
                    local distance = (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - cease.Position).Magnitude
                        if distance <= 100 then 
                            local magn = 13 / 100 * (100 - distance)
                            local rog = 20 / 100 * (100 - distance)
                            require(game.Players.LocalPlayer.PlayerGui.MainUI.Initiator.Main_Game).camShaker:ShakeOnce(magn, rog, 0.1, 1)
                        end
                    end
                end)

                function movec(model, cframe, speed)
                    local reached = false
                    local connection; connection = RunService.Stepped:Connect(function(_, step)
                            local pivot = model:GetPivot()
                            local difference = (cframe.Position - pivot.Position)
                            local unit = difference.Unit
                            local magnitude = difference.Magnitude

                            if magnitude > 0.1 then
                                model:PivotTo(pivot + unit * math.min(step * speed, magnitude))
                            else
                                connection:Disconnect()
                                reached = true
                            end
                        end)
                    repeat RunService.Stepped:Wait() until reached
                end

                game.Players.LocalPlayer.Character.Humanoid.Running:connect(function()
                    if can == true then
                        game.Players.LocalPlayer.Character.Humanoid.Health = 0
                                firesignal(game.ReplicatedStorage.RemotesFolder.DeathHint.OnClientEvent, {"You died to who you call Cease...","Its tactic is appearing after rush...","It sees through movement and can see anyone in wardrobes."},"Blue")
                                game.ReplicatedStorage.GameStats["Player_".. game.Players.LocalPlayer.Name].Total.DeathCause.Value = "Cease"
                    end
                end)

                task.spawn(function()
                    while cease.Parent do
                        task.wait(0.2)
                        local direction = game.Players.LocalPlayer.Character.HumanoidRootPart.Position - cease.Position
                        local ray = game.Workspace:Raycast(cease.Position , direction.Unit * 70)

                        if ray then
                            if ray.Instance.Parent == game.Players.LocalPlayer.Character or ray.Instance.Parent.Parent == game.Players.LocalPlayer.Character then 
                                can = true
                            else
                                can = false
                            end
                        end
                    end
                end)

                game.ReplicatedStorage.GameData.LatestRoom.Changed:connect(function() 
                    count -= 1
                end)

                while true do
                    local room = game.Workspace.CurrentRooms:GetChildren()[count]
                    if room:FindFirstChild("RoomExit") then
                        if room:FindFirstChild("nodes") then
                            for _ , node in room.nodes:GetChildren() do
				if node.Parent then
                                	movec(cease,node.CFrame + Vector3.new(0,3,0),35)
				end
                            end
                        end
			if room:FindFirstChild("RoomExit") then
                        	movec(cease,room.RoomExit.CFrame,35)
			end
                    end
                    count += 1
                    if count >= #game.Workspace.CurrentRooms:GetChildren() then
                        task.wait(0.2)
                        cease.Anchored = false
                        cease.CanCollide = false
                        task.wait(2)
                        cease:Destroy()
                        break
                    end
                end
            end
        end)
    end
end)

task.spawn(function()
    while task.wait(294) do
        if game.ReplicatedStorage.GameData.LatestRoom.Value ~= 50 then
            game.ReplicatedStorage.GameData.LatestRoom.Changed:wait()
            task.wait(0.5)
            local can = true
            local dam = true
            local frost = game:GetObjects("rbxassetid://115543193732339")[1].frosti
            frost.Parent = game.Workspace
            frost.CFrame = game.Workspace.CurrentRooms:GetChildren()[#game.Workspace.CurrentRooms:GetChildren() - 1].Parts.Floor.CFrame + Vector3.new(0,4,0)

            task.wait(5) 
            game:GetService("TweenService"):Create(frost["Static Effect"],TweenInfo.new(1.3),{PlaybackSpeed= 0}):Play()
            task.wait(1.55)
            frost.face.Face.Enabled = true
            frost.Ambience:Play()
            frost.AmbienceFar:Play()

            task.spawn(function()
		    task.wait(1)
               while can == true do
                    --game.Players.LocalPlayer.Character.Lighter:GetAttribute("Enabled") == true
                    if game.Players.LocalPlayer.Character:FindFirstChild("Lighter") then
                        if game.Players.LocalPlayer.Character.Lighter:GetAttribute("Enabled") == true then
                            dam = false
                        else dam = true end
                    else dam = true end
                    if dam == true then
                        game.Players.LocalPlayer.Character.Humanoid:TakeDamage(7.5)
                    end
                    task.wait(1)
                    if game.Players.LocalPlayer.Character.Humanoid.Health <= 0 then
                        can = false
                        firesignal(game.ReplicatedStorage.RemotesFolder.DeathHint.OnClientEvent, {"You died to who you call FrostBite...","He will spawn in the middle and start freezing the room.","Find something that has heat to keep you warm!"},"Blue")
                        game.ReplicatedStorage.GameStats["Player_".. game.Players.LocalPlayer.Name].Total.DeathCause.Value = "FrostBite"
                        end
                end
            end)

            local bluer = Instance.new("ColorCorrectionEffect",game.Lighting)
            game:GetService("TweenService"):Create(bluer,TweenInfo.new(10),{TintColor = Color3.fromRGB(0, 0, 255)}):Play()
            game.ReplicatedStorage.GameData.LatestRoom.Changed:wait()

            can = false
            frost.Ambience:Destroy()
            frost.AmbienceFar:Destroy()
            frost.face.Face.Enabled = false
            local sound = Instance.new("Sound",game.Workspace)
            sound.Volume = 0.25
            sound.PlaybackSpeed = 0.239
            sound.SoundId = "rbxassetid://6305809364"
            local distortion = Instance.new("DistortionSoundEffect",sound)
            distortion.Level = 0.98
            local flange1 = Instance.new("FlangeSoundEffect",sound)
            flange1.Depth = 1
            flange1.Mix = 1
            flange1.Rate = 0.25
            local flange2 = Instance.new("FlangeSoundEffect",sound)
            flange2.Depth = 1
            flange2.Mix = 0.73
            flange2.Rate = 0.75
            sound:Play()
            game:GetService("TweenService"):Create(bluer,TweenInfo.new(10),{TintColor = Color3.fromRGB(255, 255, 255)}):Play()
            task.wait(3)
            frost:Destroy()
        end
    end
end)

task.spawn(function()
    while task.wait(308) do
        if game.ReplicatedStorage.GameData.LatestRoom.Value ~= 50 then
            game.ReplicatedStorage.GameData.LatestRoom.Changed:wait()
            local achievementGiver = loadstring(game:HttpGet("https://raw.githubusercontent.com/RegularVynixu/Utilities/main/Doors/Custom%20Achievements/Source.lua"))()
            local RunService = game:GetService("RunService")
            local achievementGiver = loadstring(game:HttpGet("https://raw.githubusercontent.com/RegularVynixu/Utilities/main/Doors/Custom%20Achievements/Source.lua"))()

            local function getGitSoundId(GithubSoundPath: string, AssetName: string): Sound
                local Url = GithubSoundPath

                if not isfile(AssetName..".mp3") then 
                    writefile(AssetName..".mp3", game:HttpGet(Url)) 
                end

                local Sound = Instance.new("Sound")
                Sound.SoundId = getcustomasset(AssetName..".mp3", true)
                return Sound 
            end

            local CustomMusic = getGitSoundId("https://github.com/localplayerr/Doors-stuff/raw/refs/heads/main/Hardcore%20v4%20recreate/ReboundWarning.mp3", "Rebound")
            CustomMusic.Parent = game.Workspace
            CustomMusic:Play()
            require(game.Players.LocalPlayer.PlayerGui.MainUI.Initiator.Main_Game).camShaker:ShakeOnce(20, 3, 0.1, 3)
            task.spawn(function()
            local buler = Instance.new("ColorCorrectionEffect",game.lighting)
                buler.TintColor = Color3.fromRGB(65, 138, 255)
                buler.Saturation = -0.7
                buler.Contrast = 0.2
                task.wait(4)
                game:GetService("TweenService"):Create(buler, TweenInfo.new(10), {TintColor = Color3.fromRGB(255,255,255),Contrast = 0, Saturation = 0}):Play()
                task.wait(10)
                buler:Destroy()
            end)

            for i = 0, 4, 1 do
                task.wait(4)
                local count = #game.Workspace.CurrentRooms:GetChildren()
                local entity = game:GetObjects("rbxassetid://11459817091")[1].Rebound
                local reb = getGitSoundId("https://github.com/localplayerr/Doors-stuff/raw/refs/heads/main/Hardcore%20v4%20recreate/ReboundMoving.mp3", "rebaund")
                reb.Parent = entity
                reb.Volume = 4
                reb:Play()
                entity.Parent = game.Workspace
                entity.Anchored = true
                entity.CFrame = game.Workspace.CurrentRooms:GetChildren()[#game.Workspace.CurrentRooms:GetChildren()].RoomExit.CFrame

                task.spawn(function()
                    while task.wait(0.1) and entity.Parent do
                    local distance = (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - entity.Position).Magnitude
                        if distance <= 75 then 
                            local magn = 5 / 75 * (75 - distance)
                            local rog = 13 / 75 * (75 - distance)
                            require(game.Players.LocalPlayer.PlayerGui.MainUI.Initiator.Main_Game).camShaker:ShakeOnce(magn, rog, 0.1, 1)
                        end
                        local direction = game.Players.LocalPlayer.Character.HumanoidRootPart.Position - entity.Position
                        local ray = game.Workspace:Raycast(entity.Position , direction.Unit * 50)

                        if ray then
                            if ray.Instance.Parent == game.Players.LocalPlayer.Character and game.Players.LocalPlayer.Character:GetAttribute("Hiding") == false or ray.Instance.Parent.Parent == game.Players.LocalPlayer.Character and game.Players.LocalPlayer.Character:GetAttribute("Hiding") == false then 
                                task.wait(1)
                                local kill = getGitSoundId("https://github.com/localplayerr/Doors-stuff/raw/refs/heads/main/Hardcore%20v4%20recreate/ReboundMurder.mp3", "Rebound_kill")
                                kill.Parent = game.Workspace
                                kill.Volume = 1
                                kill:Play()
                                local gui = Instance.new("ScreenGui",game.Players.LocalPlayer.PlayerGui)
                                local image = Instance.new("ImageLabel",gui)
                                image.Size = UDim2.new(1.2,0,1.2,0)
                                image.AnchorPoint = Vector2.new(0.5,0.5)
                                image.Position = UDim2.new(0.5,0,0.5,0)
                                image.Image = "http://www.roblox.com/asset/?id=14412047172"
                                image.BackgroundTransparency = 1
                                image.ImageTransparency = 1

                                local image1 = Instance.new("ImageLabel",gui)
                                image1.Size = UDim2.new(0.1,0,0.1,0)
                                image1.AnchorPoint = Vector2.new(0.5,0.5)
                                image1.Position = UDim2.new(0.5,0,0.5,0)
                                image1.Image = "http://www.roblox.com/asset/?id=18853595150"
                                image1.LayoutOrder = 2
                                image1.BackgroundTransparency = 1

                                local sound1 = Instance.new("Sound",game.Workspace)
                                sound1.SoundId = "rbxassetid://7017782324"
                                sound1.Volume = 0

                                sound1:Play()

                                task.spawn(function()
                                    while true do
                                        image.Image = "http://www.roblox.com/asset/?id=236542974"
                                        task.wait(0.05)
                                        image.Image = "http://www.roblox.com/asset/?id=8482795900"
                                        task.wait(0.05)
                                    end
                                end)

                                game:GetService("TweenService"):Create(image,TweenInfo.new(0.4,Enum.EasingStyle.Linear),{ImageTransparency = 0}):Play()
                                game:GetService("TweenService"):Create(image1,TweenInfo.new(0.4),{Size = UDim2.new(1,0,1,0)}):Play()

                                task.wait(0.8)

                                sound1:Destroy()
                                game.Players.LocalPlayer.Character.Humanoid.Health = 0
                                game:GetService("TweenService"):Create(image,TweenInfo.new(0.2,Enum.EasingStyle.Linear),{ImageTransparency = 1}):Play()
                                image1:Destroy()
                                game.Players.LocalPlayer.Character.Humanoid.Health = 0
                                firesignal(game.ReplicatedStorage.RemotesFolder.DeathHint.OnClientEvent, {"You died to who you call Rebound...","He makes his presence known and keeps coming back...","Hide when this happens!"},"Blue")
                                game.ReplicatedStorage.GameStats["Player_".. game.Players.LocalPlayer.Name].Total.DeathCause.Value = "Rebound"
                            end
                        end
                    end
                end)

                while true do
                    local room = game.Workspace.CurrentRooms:GetChildren()[count]
                    if room:FindFirstChild("RoomEntrance") then
                        game:GetService("TweenService"):Create(entity, TweenInfo.new(2), {CFrame = room.RoomEntrance.CFrame}):Play()
                        task.wait(2)
                    end
                    count -= 1
                    if count == 0 then
                        task.spawn(function()
                            task.wait(0.5)
                            entity.Anchored = false
                            entity.CanCollide = false
                            task.wait(3)
                            entity:Destroy()
                        end)
                        break
                    end
                end
                if i ~= 4 then
                    game.ReplicatedStorage.GameData.LatestRoom.Changed:wait()
                end
            end
            if reboundt == false then
                reboundt = true
                achievementGiver({
                                    Title = "Out Of Many Rebounds",
                                    Desc = "Back for more!",
                                    Reason = "Encounter Rebound",
                                    Image = "http://www.roblox.com/asset/?id=13856279697"
                                })
            end
        end
    end
end)

task.spawn(function()
    while task.wait(497) do
        task.spawn(function()
            if game.ReplicatedStorage.GameData.LatestRoom.Value ~= 50 then
                local killed = false
                local passes = 0
                local count = 1
                local RunService = game:GetService("RunService")
                local achievementGiver = loadstring(game:HttpGet("https://raw.githubusercontent.com/RegularVynixu/Utilities/main/Doors/Custom%20Achievements/Source.lua"))()

                local function getGitSoundId(GithubSoundPath: string, AssetName: string): Sound
                    local Url = GithubSoundPath

                    if not isfile(AssetName..".mp3") then 
                        writefile(AssetName..".mp3", game:HttpGet(Url)) 
                    end

                    local Sound = Instance.new("Sound")
                    Sound.SoundId = getcustomasset(AssetName..".mp3", true)
                    return Sound 
                end
                local CustomMusic = getGitSoundId("https://github.com/localplayerr/Doors-stuff/raw/refs/heads/main/Hardcore%20v4%20recreate/followed.mp3", "Following")
                CustomMusic.Volume = 2
                CustomMusic.Parent = game.Workspace
                CustomMusic:Play()


                local der = game:GetObjects("rbxassetid://16092643532")[1].RushNew
                local soun = game:GetObjects("rbxassetid://16092643532")[1]["Static..."]
                soun.Parent = game.Workspace
                soun:Play()
                for _ , v: Model in game.Workspace.CurrentRooms:GetChildren() do
                    task.spawn(function()
                        require(game.ReplicatedStorage.ClientModules.Module_Events).flicker(v, math.huge)
                    end)
                end
                der.Parent = game.Workspace
                der.Anchored = true
                der.CFrame = game.Workspace.CurrentRooms:GetChildren()[1].RoomEntrance.CFrame
                task.spawn(function()
                    while der.Parent do
                        task.wait(0.1)
                        local direction = game.Players.LocalPlayer.Character.HumanoidRootPart.Position - der.Position
                        local ray = game.Workspace:Raycast(der.Position , direction.Unit * 50)

                        if ray then
                            if ray.Instance.Parent == game.Players.LocalPlayer.Character and game.Players.LocalPlayer.Character:GetAttribute("Hiding") == false and killed == false or ray.Instance.Parent.Parent == game.Players.LocalPlayer.Character and game.Players.LocalPlayer.Character:GetAttribute("Hiding") == false and killed == false then 
                                killed = true
                                local screen = Instance.new("ScreenGui",game.Players.LocalPlayer.PlayerGui)

                                local background = Instance.new("Frame",screen)
                                background.AnchorPoint = Vector2.new(0.5,0.5)
                                background.Size = UDim2.new(10,0,10,0)
                                background.BackgroundColor3 = Color3.fromRGB(48, 25, 50)

                                local sound = Instance.new("Sound",game.Workspace)
                                sound.SoundId = "rbxassetid://10483837590"
                                sound.Volume = 1
                                sound:play()

                                for i = 1 , 5 do
                                    background.BackgroundColor3 = Color3.fromRGB(48,25,50)
                                    task.wait(0.05)
                                    background.BackgroundColor3 = Color3.fromRGB(0,0,0)
                                    task.wait(0.05)
                                end

                                screen:Destroy()
                                game.Players.LocalPlayer.Character.Humanoid.Health = 0
                                firesignal(game.ReplicatedStorage.RemotesFolder.DeathHint.OnClientEvent, {"You died to whom you call The Deer God","Closets Wont work! So try running","Its form is incomprehensible to a human upclose...","..-so avoid Eye Contact"},"Blue")
                                game.ReplicatedStorage.GameStats["Player_".. game.Players.LocalPlayer.Name].Total.DeathCause.Value = "Deer God"
                            end
                        end 
                    end
                end)

                function moved(model, cframe, speed)
                    local reached = false
                    local connection; connection = RunService.Stepped:Connect(function(_, step)
                        local pivot = model:GetPivot()
                        local difference = (cframe.Position - pivot.Position)
                        local unit = difference.Unit
                        local magnitude = difference.Magnitude

                        if magnitude > 0.1 then
                            model:PivotTo(pivot + unit * math.min(step * speed, magnitude))
                        else
                            connection:Disconnect()
                            reached = true
                        end
                    end)
                    repeat RunService.Stepped:Wait() until reached
                end

                game.Workspace.CurrentRooms.ChildAdded:connect(function() 
                    count -= 1
                end)

                while true do 
                    local room = game.Workspace.CurrentRooms:GetChildren()[count]
                    require(game.ReplicatedStorage.ClientModules.Module_Events).shatter(room)
                    if room:FindFirstChild("RoomExit") then
                        if room:FindFirstChild("nodes") then
                            for _ , node in room.nodes:GetChildren() do
                                if node.Parent then
                                    moved(der,node.CFrame + Vector3.new(0,3,0),16)
                                end
                            end
                        end
                        if room:FindFirstChild("RoomExit") then
                            moved(der,room.RoomExit.CFrame,16)
                        end
                    end
                    count += 1
                    passes += 1
                    if passes >= 8 or count >= #game.Workspace.CurrentRooms:GetChildren() then
                        der:Destroy()
                        soun:Destroy()
                        CustomMusic:Destroy()
                        if dergodt == false then
                            dergodt = true
                            achievementGiver({
                                Title = "Last Chance To Look Away",
                                Desc = "Why are you running?",
                                Reason = "Encounter Deer God",
                                Image = "rbxassetid://2129409220"
                            })
                        end
                        break
                    end
                end
            end
        end)
    end
end)

task.spawn(function()
    while task.wait(728) do
        if game.ReplicatedStorage.GameData.LatestRoom.Value ~= 50 then
            local killed = false
            local count = 1
            local RunService = game:GetService("RunService")
            local achievementGiver = loadstring(game:HttpGet("https://raw.githubusercontent.com/RegularVynixu/Utilities/main/Doors/Custom%20Achievements/Source.lua"))()

            local silen = game:GetObjects("rbxassetid://18866325954")[1].RushNew
            silen.Parent = game.Workspace
            silen.Anchored = true
            silen.CFrame = game.Workspace.CurrentRooms:GetChildren()[1].RoomEntrance.CFrame
            task.spawn(function()
                while silen.Parent do
                    task.wait(0.1)
                    local direction = game.Players.LocalPlayer.Character.HumanoidRootPart.Position - silen.Position
                    local ray = game.Workspace:Raycast(silen.Position , direction.Unit * 50)

                    if ray then
                        if ray.Instance.Parent == game.Players.LocalPlayer.Character and game.Players.LocalPlayer.Character:GetAttribute("Hiding") == false and killed == false or ray.Instance.Parent.Parent == game.Players.LocalPlayer.Character and game.Players.LocalPlayer.Character:GetAttribute("Hiding") == false and killed == false then 
                            killed = true
                            local screen = Instance.new("ScreenGui",game.Players.LocalPlayer.PlayerGui)

                            local background = Instance.new("Frame",screen)
                            background.AnchorPoint = Vector2.new(0.5,0.5)
                            background.Size = UDim2.new(10,0,10,0)
                            background.BackgroundColor3 = Color3.fromRGB(48, 25, 50)

                            local sound = Instance.new("Sound",game.Workspace)
                            sound.SoundId = "rbxassetid://10483837590"
                            sound.Volume = 1
                            sound:play()

                            for i = 1 , 5 do
                                background.BackgroundColor3 = Color3.fromRGB(48,25,50)
                                task.wait(0.05)
                                background.BackgroundColor3 = Color3.fromRGB(0,0,0)
                                task.wait(0.05)
                            end

                            screen:Destroy()
                            game.Players.LocalPlayer.Character.Humanoid.Health = 0
                            firesignal(game.ReplicatedStorage.RemotesFolder.DeathHint.OnClientEvent, {"You died to who you call Silence","Stay as silent as possible when you suspect its coming, so you know when to hide!","Its slow, but hard to hear","so hide!"},"Blue")
                            game.ReplicatedStorage.GameStats["Player_".. game.Players.LocalPlayer.Name].Total.DeathCause.Value = "Silence"
                        end
                    end 
                end
            end)

            function movel(model, cframe, speed)
                local reached = false
                local connection; connection = RunService.Stepped:Connect(function(_, step)
                    local pivot = model:GetPivot()
                    local difference = (cframe.Position - pivot.Position)
                    local unit = difference.Unit
                    local magnitude = difference.Magnitude

                    if magnitude > 0.1 then
                        model:PivotTo(pivot + unit * math.min(step * speed, magnitude))
                    else
                        connection:Disconnect()
                        reached = true
                    end
                end)
                repeat RunService.Stepped:Wait() until reached
            end

            game.ReplicatedStorage.GameData.LatestRoom.Changed:connect(function() 
                count -= 1
            end)

            while true do
                local room = game.Workspace.CurrentRooms:GetChildren()[count]
                require(game.ReplicatedStorage.ClientModules.Module_Events).shatter(room)
                if room:FindFirstChild("RoomExit") then
                        if room:FindFirstChild("nodes") then
                            for _ , node in room.nodes:GetChildren() do
                                movel(silen,node.CFrame + Vector3.new(0,3,0),30)
                            end
                        end
			if room:FindFirstChild("RoomExit") then
                        	movel(silen,room.RoomExit.CFrame,30)
			end
                end
                count += 1
                if count >= #game.Workspace.CurrentRooms:GetChildren() then
                    silen:Destroy()
                    if silencet == false then
                        silencet = true
                        achievementGiver({
                            Title = "Eyes Close Ears open",
                            Desc = "Stay silent or i wont be heard",
                            Reason = "Encounter Silence",
                            Image = "rbxassetid://2129409220"
                        })
                    end
                    break
                end
            end
        end
    end
end)

task.spawn(function()
    while task.wait(859) do
	task.spawn(function()
	        local faces = {
	            "rbxassetid://12145554242",
	            "rbxassetid://12145534911",
	            "rbxassetid://12145599275",
	            "rbxassetid://12145599498",
	            "rbxassetid://12155335619",
	            "rbxassetid://12145598814",
	            "rbxassetid://12146135062",
	            "rbxassetid://11378285585"
	        }
	
	
	        local soundd = Instance.new("Sound",game.Workspace)
	        soundd.Volume = 4
	        soundd.SoundId = "rbxassetid://199696655"
	        soundd.Looped = true
	        local ambience = Instance.new("Sound")
	        ambience.Volume = 5
	        ambience.PlaybackSpeed = 0.5
	        ambience.Looped = true
	        local ef = Instance.new("EqualizerSoundEffect",ambience)
	        ef.HighGain = -30.5
	        ef.LowGain = 0.1
	        ef.MidGain = -6.2
	        ef.Priority = 3
	
	
	        ---====== Load spawner ======---
	
	        local spawner = loadstring(game:HttpGet("https://raw.githubusercontent.com/RegularVynixu/Utilities/main/Doors/Entity%20Spawner/V2/Source.lua"))()
	
	        ---====== Create entity ======---
	
	        local entity = spawner.Create({
	            Entity = {
	                Name = "A60",
	                Asset = "rbxassetid://12263106166",
	                HeightOffset = 2
	            },
	            Lights = {
	                Flicker = {
	                    Enabled = false,
	                    Duration = 1
	                },
	                Shatter = false,
	                Repair = false
	            },
	            Earthquake = {
	                Enabled = false
	            },
	            CameraShake = {
	                Enabled = true,
	                Range = 100,
	                Values = {15, 20, 0.1, 1} -- Magnitude, Roughness, FadeIn, FadeOut
	            },
	            Movement = {
	                Speed = 350,
	                Delay = 2,
	                Reversed = false
	            },
	            Rebounding = {
	                Enabled = true,
	                Type = "Ambush", -- "Blitz"
	                Min = 4,
	                Max = 4,
	                Delay = 1
	            },
	            Damage = {
	                Enabled = true,
	                Range = 60,
	                Amount = 0.00001
	            },
	            Crucifixion = {
	                Enabled = true,
	                Range = 40,
	                Resist = false,
	                Break = true
	            },
	            Death = {
	                Type = "Guiding", -- "Curious"
	                Hints = {"Death", "Hints", "Go", "Here"},
	                Cause = ""
	            }
	        })
	
	        ---====== Debug entity ======---
	
	        entity:SetCallback("OnSpawned", function()
	            soundd:Play()
	            task.wait(3)
	            ambience:Play()
	        end)
	
	        entity:SetCallback("OnDespawned", function()
	            soundd:Destroy()
	            ambience:Destroy()
	            local buler = Instance.new("ColorCorrectionEffect",game.lighting)
	            buler.TintColor = Color3.fromRGB(255,0,4)
		    buler.Saturation = -0.7
		    buler.Contrast = 0.2
	            task.spawn(function()
	                for i = 100 , 0 , -1 do
	                    require(game.Players.LocalPlayer.PlayerGui.MainUI.Initiator.Main_Game).camShaker:ShakeOnce(i/50, 20, 0.1, 0.1)
	                    task.wait(0.1)
	                end
	            end)
	            task.wait(3)
	            game:GetService("TweenService"):Create(buler, TweenInfo.new(15), {TintColor = Color3.fromRGB(255,255,255),Saturation = 0, Contrast = 0}):Play()
	            task.wait(15)
	            buler:Destroy()
	        end)
	
	        entity:SetCallback("OnDamagePlayer", function(newHealth)
	            game.Workspace["A60"]:SetAttribute("Paused",true)
	            task.wait(1)
	            game:GetService("TweenService"):Create(game.Workspace["A60"].RushNew, TweenInfo.new(0.2), {CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame}):Play()
	            task.wait(0.5)
	            game.Players.LocalPlayer.Character.Humanoid.Health = 0
	            task.spawn(function()
	                firesignal(game.ReplicatedStorage.RemotesFolder.DeathHint.OnClientEvent, {"You died to an enitity designated as A-60","It can Appear at any moment, a loud scream will anounce its presence","When you hear it spawn you must stay out of its reach as soon as possible","It knows exactly where you are so hiding in different places will not work.."},"Blue")
	                game.ReplicatedStorage.GameStats["Player_".. game.Players.LocalPlayer.Name].Total.DeathCause.Value = "A-60"
	            end)
	            task.wait(1)
	            game.Workspace["A60"]:SetAttribute("Paused",false)
	        end)
	
	        entity:Run()
	end)
    end
end)

task.spawn(function()
    while task.wait(math.random(30,60)) do
        task.spawn(function()
            local achievementGiver = loadstring(game:HttpGet("https://raw.githubusercontent.com/RegularVynixu/Utilities/main/Doors/Custom%20Achievements/Source.lua"))()
            local cankill = true
            local model = game:GetObjects("rbxassetid://11547601187")[1]["OOGA BOOGAAAA"]
            model.Parent = game.Workspace
            model.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame * CFrame.new(Vector3.new(0,0,-10))
            model.Anchored = true

            function moves(modell, cframe, speed)
                        local reached = false
                        local connection; connection = game:GetService("RunService").Stepped:Connect(function(_, step)
                            local pivot = model:GetPivot()
                            local difference = (cframe.Position - pivot.Position)
                            local unit = difference.Unit
                            local magnitude = difference.Magnitude

                            if magnitude > 0.1 then
                                model:PivotTo(pivot + unit * math.min(step * speed, magnitude))
                            else
                                connection:Disconnect()
                                reached = true
                            end
                        end)
                        repeat game:GetService("RunService").Stepped:Wait() until reached
            end
            

            task.spawn(function()
                while task.wait(0.1) do
                    local _ , camera = game.Workspace.CurrentCamera:WorldToViewportPoint(model.Position)
                    if not camera then
                        model.CanCollide = false
                        model.Anchored = false
                        cankill = false
                        task.wait(3)
                        model:Destroy()
                        break
                    end
                end
            end)

            task.wait(3)

            if cankill == true then
                model["HORROR SCREAM 15"]:Play()
                moves(model, game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame, 40)
                game.Players.LocalPlayer.Character.Humanoid:TakeDamage(40)
                model.CanCollide = false
                model.Anchored = false
                task.spawn(function()
                    task.wait(1)
                    if sockert == false then
                        sockert = true
                        achievementGiver({
                                            Title = "Shocking Experience",
                                            Desc = "Look at me",
                                            Reason = "Encounter Shocker.",
                                            Image = "rbxassetid://11445503075"
                                        })
                    end
                    task.wait(3)
                    model:Destroy()
                end)
                if game.Players.LocalPlayer.Character.Humanoid.Health <= 0 then
                    game.Players.LocalPlayer.Character.Humanoid.Health = 0
                    firesignal(game.ReplicatedStorage.RemotesFolder.DeathHint.OnClientEvent, {"You died to who you call Shocker..","Dont look at it or it stuns you!",},"Blue")
                    game.ReplicatedStorage.GameStats["Player_".. game.Players.LocalPlayer.Name].Total.DeathCause.Value = "Shocker"
                end
            end
            if sockert == false then
                sockert = true
                achievementGiver({
                                    Title = "Shocking Experience",
                                    Desc = "Look at me",
                                    Reason = "Encounter Shocker.",
                                    Image = "rbxassetid://11445503075"
                                })
            end
        end)
    end
end)
