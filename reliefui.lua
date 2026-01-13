-- PRESS ALT TO TOGGLE UI
local relief = loadstring(game:HttpGet("https://raw.githubusercontent.com/Cr1tacl/ReliefUI/scriptsmain/libmain.lua"))()

relief.addCategory("Movement", "rbxassetid://1114393432")
relief.addCategory("Combat", "rbxassetid://7485051715")
relief.addCategory("Render", "rbxassetid://13321848320")
relief.addCategory("Exploit", "rbxassetid://7562374548")
relief.addCategory("Player", "rbxassetid://16149111731")
relief.addCategory("World", "rbxassetid://17640958405")
relief.addCategory("Misc", "rbxassetid://1538581893")

relief.addModule("Movement", "Speed 50", function(Toggled)
    game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = Toggled and 50 or 16
end)

relief.addModule("Movement", "Jump 200", function(Toggled)
    game.Players.LocalPlayer.Character.Humanoid.JumpPower = Toggled and 200 or 50
end)

relief.addModule("Exploit", "Infinite Yield", function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/EdgeIY/infiniteyield/master/source"))()
end)

relief.addModule("Misc", "Internal UI (for solara)", function()
	loadstring(game:HttpGet('loadstring(game:HttpGet("https://pastebin.com/raw/xsPhFys2"))()'))()
end)

relief.addModule("Misc", "Internal UI Seliware", function()
    local vu = game:GetService("VirtualUser")
    -- Simulates the press of the Delete key
    vu:CaptureController()
    vu:SetKeyDown(Enum.KeyCode.Delete)
    task.wait(0.1) -- Small delay to ensure the press is registered
    vu:SetKeyUp(Enum.KeyCode.Delete)
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

relief.addModule("Player", "Switch to R15", function()
    local player = game.Players.LocalPlayer
    local character = player.Character
    if not character then return end

    -- 1. Create the R15 Model (standard blocky rig)
    local r15Model = game:GetObjects("rbxassetid://5401560935")[1] -- Standard R15 rig
    r15Model.Name = player.Name
    r15Model.Parent = workspace
    r15Model:MoveTo(character.HumanoidRootPart.Position)

    -- 2. Apply your current avatar's looks
    local humDesc = game.Players:GetHumanoidDescriptionFromUserId(player.UserId)
    r15Model.Humanoid:ApplyDescription(humDesc)

    -- 3. Set as your new character
    player.Character = r15Model
    
    -- Clean up the old R6 body
    character:Destroy()
end)


relief.addModule("Movement", "Ozzy's Flinger", function()
    loadstring(game:HttpGet("https://pastebin.com/raw/X5RfHyi5"))()
end)
