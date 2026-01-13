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
        frame.Size = UDim2.new(0, 150, 0, 70)
        frame.Position = UDim2.new(0.5, -75, 0.4, 0)
        frame.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
        Instance.new("UICorner", frame).CornerRadius = UDim.new(0, 8)
        
        local txt = Instance.new("TextBox", frame)
        txt.Size = UDim2.new(1, -20, 0, 30)
        txt.Position = UDim2.new(0, 10, 0, 30)
        txt.Text = "50"
        txt.BackgroundColor3 = Color3.fromRGB(50, 50, 50)
        txt.TextColor3 = Color3.new(1,1,1)
        Instance.new("UICorner", txt).CornerRadius = UDim.new(0, 5)
        
        local label = Instance.new("TextLabel", frame)
        label.Size = UDim2.new(1, 0, 0, 25)
        label.Text = "SET SPEED"
        label.TextColor3 = Color3.new(1,1,1)
        label.BackgroundTransparency = 1
        
        txt.FocusLost:Connect(function()
            game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = tonumber(txt.Text) or 16
        end)
        
        _G.SpeedGui = sg
    else
        if _G.SpeedGui then _G.SpeedGui:Destroy() end
        game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = 16
    end
end)


relief.addModule("Movement", "Jump Changer", function(Toggled)
    if Toggled then
        local sg = Instance.new("ScreenGui", game:GetService("CoreGui"))
        local frame = Instance.new("Frame", sg)
        frame.Size = UDim2.new(0, 150, 0, 70)
        frame.Position = UDim2.new(0.5, -75, 0.5, 0)
        frame.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
        Instance.new("UICorner", frame).CornerRadius = UDim.new(0, 8)
        
        local txt = Instance.new("TextBox", frame)
        txt.Size = UDim2.new(1, -20, 0, 30)
        txt.Position = UDim2.new(0, 10, 0, 30)
        txt.Text = "100"
        txt.BackgroundColor3 = Color3.fromRGB(50, 50, 50)
        txt.TextColor3 = Color3.new(1,1,1)
        Instance.new("UICorner", txt).CornerRadius = UDim.new(0, 5)
        
        local label = Instance.new("TextLabel", frame)
        label.Size = UDim2.new(1, 0, 0, 25)
        label.Text = "SET JUMP"
        label.TextColor3 = Color3.new(1,1,1)
        label.BackgroundTransparency = 1
        
        txt.FocusLost:Connect(function()
            game.Players.LocalPlayer.Character.Humanoid.UseJumpPower = true
            game.Players.LocalPlayer.Character.Humanoid.JumpPower = tonumber(txt.Text) or 50
        end)
        
        _G.JumpGui = sg
    else
        if _G.JumpGui then _G.JumpGui:Destroy() end
        game.Players.LocalPlayer.Character.Humanoid.JumpPower = 50
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
