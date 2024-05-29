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

relief.addModule("Exploit", "Internal UI (for solara)", function()
	loadstring(game:HttpGet('loadstring(game:HttpGet("https://pastebin.com/raw/xsPhFys2"))()'))()
end)

relief.addModule("Misc", "Tp Tool" , function()
	loadstring(game:HttpGet("https://pastebin.com/raw/GuBiX19e"))();
end)

relief.addModule("Player", "Spider Man (R15)" , function()
	loadstring(game:HttpGet('https://pastebin.com/raw/zXk4Rq2r'))()
end)

relief.addModule("Player", "Spider Man (R6)" , function()
	loadstring(game:HttpGet(('https://pastebin.com/raw/2X0hKUgq'),true))()
end)

relief.addModule("Player", "R15 To R6 (FE)" , function()
	loadstring(game:HttpGet(('https://raw.githubusercontent.com/Imagnir/r6_anims_for_r15/main/r6_anims.lua'),true))()
end)

relief.addModule("FE Emote", "FE Emote (use ,)" , function()
	--keybind to open is comma
	loadstring(game:HttpGetAsync("https://raw.githubusercontent.com/Gi7331/scripts/main/Emote.lua"))()
end)


