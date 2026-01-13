-- PRESS ALT TO TOGGLE UI
local relief = loadstring(game:HttpGet("https://raw.githubusercontent.com/Cr1tacl/ReliefUI/scriptsmain/libmain.lua"))()

relief.addCategory("Movement", "rbxassetid://1114393432")
relief.addCategory("Combat", "rbxassetid://7485051715")
relief.addCategory("Render", "rbxassetid://13321848320")
relief.addCategory("Exploit", "rbxassetid://7562374548")
relief.addCategory("Player", "rbxassetid://16149111731")
relief.addCategory("World", "rbxassetid://17640958405")
relief.addCategory("Misc", "rbxassetid://1538581893")

relief.addModule("Movement", "Speed Changer", function(Toggled)
    if Toggled then
        local sg = Instance.new("ScreenGui", game:GetService("CoreGui"))
        local frame = Instance.new("Frame", sg)
        frame.Size = UDim2.new(0, 200, 0, 80)
        frame.Position = UDim2.new(0.5, -100, 0.4, 0)
        frame.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
        frame.BorderSizePixel = 0
        Instance.new("UICorner", frame).CornerRadius = UDim.new(0, 8)
        
        local label = Instance.new("TextLabel", frame)
        label.Size = UDim2.new(1, 0, 0, 30)
        label.Text = "WALKSPEED: 16"
        label.TextColor3 = Color3.new(1,1,1)
        label.BackgroundTransparency = 1
        label.Font = Enum.Font.GothamBold

        -- Slider UI
        local sliderBack = Instance.new("Frame", frame)
        sliderBack.Size = UDim2.new(0, 160, 0, 6)
        sliderBack.Position = UDim2.new(0.5, -80, 0.7, 0)
        sliderBack.BackgroundColor3 = Color3.fromRGB(50, 50, 50)
        Instance.new("UICorner", sliderBack)

        local sliderMain = Instance.new("Frame", sliderBack)
        sliderMain.Size = UDim2.new(0.1, 0, 1, 0)
        sliderMain.BackgroundColor3 = Color3.fromRGB(0, 150, 255)
        Instance.new("UICorner", sliderMain)

        -- Dragging & Slider Logic
        local mouse = game.Players.LocalPlayer:GetMouse()
        local uis = game:GetService("UserInputService")
        local draggingSlider = false

        local function updateSpeed()
            local percent = math.clamp((mouse.X - sliderBack.AbsolutePosition.X) / sliderBack.AbsoluteSize.X, 0, 1)
            sliderMain.Size = UDim2.new(percent, 0, 1, 0)
            local val = math.floor(16 + (percent * 184)) -- Max 200
            label.Text = "WALKSPEED: " .. val
            if game.Players.LocalPlayer.Character and game.Players.LocalPlayer.Character:FindFirstChild("Humanoid") then
                game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = val
            end
        end

        sliderBack.InputBegan:Connect(function(input)
            if input.UserInputType == Enum.UserInputType.MouseButton1 then draggingSlider = true end
        end)
        uis.InputEnded:Connect(function(input)
            if input.UserInputType == Enum.UserInputType.MouseButton1 then draggingSlider = false end
        end)
        uis.InputChanged:Connect(function(input)
            if draggingSlider and input.UserInputType == Enum.UserInputType.MouseMovement then updateSpeed() end
        end)

        -- Draggable Frame Logic
        local dragStart, startPos
        frame.InputBegan:Connect(function(input)
            if input.UserInputType == Enum.UserInputType.MouseButton1 and not draggingSlider then
                dragStart = input.Position; startPos = frame.Position
                input.Changed:Connect(function() if input.UserInputState == Enum.UserInputState.End then dragStart = nil end end)
            end
        end)
        uis.InputChanged:Connect(function(input)
            if input.UserInputType == Enum.UserInputType.MouseMovement and dragStart then
                local delta = input.Position - dragStart
                frame.Position = UDim2.new(startPos.X.Scale, startPos.X.Offset + delta.X, startPos.Y.Scale, startPos.Y.Offset + delta.Y)
            end
        end)

        _G.SpeedGui = sg
    else
        if _G.SpeedGui then _G.SpeedGui:Destroy() end
        if game.Players.LocalPlayer.Character and game.Players.LocalPlayer.Character:FindFirstChild("Humanoid") then
            game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = 16
        end
    end
end)

relief.addModule("Movement", "Jump Changer", function(Toggled)
    if Toggled then
        local sg = Instance.new("ScreenGui", game:GetService("CoreGui"))
        local frame = Instance.new("Frame", sg)
        frame.Size = UDim2.new(0, 200, 0, 80)
        frame.Position = UDim2.new(0.5, -100, 0.55, 0)
        frame.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
        Instance.new("UICorner", frame).CornerRadius = UDim.new(0, 8)
        
        local label = Instance.new("TextLabel", frame)
        label.Size = UDim2.new(1, 0, 0, 30)
        label.Text = "JUMP POWER: 50"
        label.TextColor3 = Color3.new(1,1,1)
        label.BackgroundTransparency = 1
        label.Font = Enum.Font.GothamBold

        local sliderBack = Instance.new("Frame", frame)
        sliderBack.Size = UDim2.new(0, 160, 0, 6)
        sliderBack.Position = UDim2.new(0.5, -80, 0.7, 0)
        sliderBack.BackgroundColor3 = Color3.fromRGB(50, 50, 50)
        Instance.new("UICorner", sliderBack)

        local sliderMain = Instance.new("Frame", sliderBack)
        sliderMain.Size = UDim2.new(0.1, 0, 1, 0)
        sliderMain.BackgroundColor3 = Color3.fromRGB(0, 255, 150)
        Instance.new("UICorner", sliderMain)

        local mouse = game.Players.LocalPlayer:GetMouse()
        local uis = game:GetService("UserInputService")
        local draggingSlider = false

        local function updateJump()
            local percent = math.clamp((mouse.X - sliderBack.AbsolutePosition.X) / sliderBack.AbsoluteSize.X, 0, 1)
            sliderMain.Size = UDim2.new(percent, 0, 1, 0)
            local val = math.floor(50 + (percent * 450)) -- Max 500
            label.Text = "JUMP POWER: " .. val
            if game.Players.LocalPlayer.Character and game.Players.LocalPlayer.Character:FindFirstChild("Humanoid") then
                game.Players.LocalPlayer.Character.Humanoid.UseJumpPower = true
                game.Players.LocalPlayer.Character.Humanoid.JumpPower = val
            end
        end

        sliderBack.InputBegan:Connect(function(input)
            if input.UserInputType == Enum.UserInputType.MouseButton1 then draggingSlider = true end
        end)
        uis.InputEnded:Connect(function(input)
            if input.UserInputType == Enum.UserInputType.MouseButton1 then draggingSlider = false end
        end)
        uis.InputChanged:Connect(function(input)
            if draggingSlider and input.UserInputType == Enum.UserInputType.MouseMovement then updateJump() end
        end)

        local dragStart, startPos
        frame.InputBegan:Connect(function(input)
            if input.UserInputType == Enum.UserInputType.MouseButton1 and not draggingSlider then
                dragStart = input.Position; startPos = frame.Position
                input.Changed:Connect(function() if input.UserInputState == Enum.UserInputState.End then dragStart = nil end end)
            end
        end)
        uis.InputChanged:Connect(function(input)
            if input.UserInputType == Enum.UserInputType.MouseMovement and dragStart then
                local delta = input.Position - dragStart
                frame.Position = UDim2.new(startPos.X.Scale, startPos.X.Offset + delta.X, startPos.Y.Scale, startPos.Y.Offset + delta.Y)
            end
        end)

        _G.JumpGui = sg
    else
        if _G.JumpGui then _G.JumpGui:Destroy() end
        if game.Players.LocalPlayer.Character and game.Players.LocalPlayer.Character:FindFirstChild("Humanoid") then
            game.Players.LocalPlayer.Character.Humanoid.JumpPower = 50
        end
    end
end)

relief.addModule("Exploit", "Infinite Yield", function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/EdgeIY/infiniteyield/master/source"))()
end)

relief.addModule("Misc", "Internal UI (for solara)", function()
	loadstring(game:HttpGet('loadstring(game:HttpGet("https://pastebin.com/raw/xsPhFys2"))()'))()
end)

relief.addModule("Misc", "Tp Tool" , function()
	loadstring(game:HttpGet("https://pastebin.com/raw/GuBiX19e"))();
end)

relief.addModule("Player", "R15 To R6 (FE)" , function()
	loadstring(game:HttpGet(('https://raw.githubusercontent.com/Imagnir/r6_anims_for_r15/main/r6_anims.lua'),true))()
end)

relief.addModule("Player", "FE Emote use ," , function()
	--keybind to open is comma
		loadstring(game:HttpGet("https://raw.githubusercontent.com/7yd7/Hub/refs/heads/Branch/GUIS/Emotes.lua"))()
end)

relief.addModule("Combat", "Aimbot Universal", function()
    	loadstring(game:HttpGet("https://raw.githubusercontent.com/Exunys/Aimbot-V3/main/src/Aimbot.lua"))()()
end)

relief.addModule("Combat", "OzzysSwordHub", function()
    loadstring(game:HttpGet("https://pastebin.com/raw/MEaNE1jz"))()
end)

relief.addModule("Movement", "Ozzy's Flinger", function()
    loadstring(game:HttpGet("https://pastebin.com/raw/X5RfHyi5"))()
end)

relief.addModule("Exploit", "Dex Explorer", function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/peyton2465/Dex/master/out.lua"))()
end)

relief.addModule("Movement", "Ozzys FlyGui", function()
    loadstring(game:HttpGet("https://pastebin.com/raw/9ssUaAvN"))()
end)
