--[=[
 d888b  db    db d888888b      .d888b.      db      db    db  .d8b.  
88' Y8b 88    88  `88'        VP  `8D      88      88    88 d8' `8b 
88      88    88   88            odD'      88      88    88 88ooo88 
88  ooo 88    88   88          .88'        88      88    88 88~~~88 
88. ~8~ 88b  d88  .88.        j88.         88booo. 88b  d88 88    YP 
 Y888P  ~Y8888P' Y888888P      888888D      Y88888P ~Y8888P' YP    YP  CONVERTER
]=]

local G2L = {};

-- Screen Setup
G2L["1"] = Instance.new("ScreenGui", game:GetService("CoreGui"));
G2L["1"]["IgnoreGuiInset"] = true;
G2L["1"]["ScreenInsets"] = Enum.ScreenInsets.DeviceSafeInsets;
G2L["1"]["Name"] = [[Screen]];
G2L["1"]["ResetOnSpawn"] = false;
G2L["1"]["DisplayOrder"] = 99999;

-- Background
G2L["2"] = Instance.new("Frame", G2L["1"]);
G2L["2"]["ZIndex"] = 0;
G2L["2"]["BorderSizePixel"] = 0;
G2L["2"]["BackgroundColor3"] = Color3.fromRGB(0, 0, 0);
G2L["2"]["AnchorPoint"] = Vector2.new(0.5, 0.5);
G2L["2"]["BackgroundTransparency"] = 0.75;
G2L["2"]["Size"] = UDim2.new(1, 0, 1, 0);
G2L["2"]["Position"] = UDim2.new(0.5, 0, 0.5, 0);
G2L["2"]["Name"] = [[ClickGui]];

G2L["3"] = Instance.new("LocalScript", G2L["2"]);

-- Module Template
G2L["4"] = Instance.new("Frame", G2L["3"]);
G2L["4"]["BorderSizePixel"] = 0;
G2L["4"]["BackgroundColor3"] = Color3.fromRGB(162, 162, 162);
G2L["4"]["BackgroundTransparency"] = 1;
G2L["4"]["Size"] = UDim2.new(0, 100, 0, 100);
G2L["4"]["Name"] = [[Module]];
-- ADDED ROUNDED EDGES
Instance.new("UICorner", G2L["4"]).CornerRadius = UDim.new(0, 6)

G2L["5"] = Instance.new("TextLabel", G2L["4"]);
G2L["5"]["TextWrapped"] = true;
G2L["5"]["BorderSizePixel"] = 0;
G2L["5"]["TextScaled"] = true;
G2L["5"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["5"]["FontFace"] = Font.new([[rbxasset://fonts/families/Ubuntu.json]], Enum.FontWeight.Bold, Enum.FontStyle.Normal);
G2L["5"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["5"]["Size"] = UDim2.new(1, 0, 1, 0);
G2L["5"]["Text"] = [[Module]];
G2L["5"]["Name"] = [[Title]];
G2L["5"]["BackgroundTransparency"] = 1;

G2L["6"] = Instance.new("UIPadding", G2L["5"]);
G2L["6"]["PaddingTop"] = UDim.new(0.25, 0);
G2L["6"]["PaddingRight"] = UDim.new(0.25, 0);
G2L["6"]["PaddingBottom"] = UDim.new(0.25, 0);
G2L["6"]["PaddingLeft"] = UDim.new(0.25, 0);

G2L["7"] = Instance.new("ImageLabel", G2L["4"]);
G2L["7"]["BorderSizePixel"] = 0;
G2L["7"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["7"]["Image"] = [[rbxassetid://11552476728]];
G2L["7"]["Size"] = UDim2.new(0.1424, 0, 0.7396, 0);
G2L["7"]["Name"] = [[Expand]];
G2L["7"]["Rotation"] = -90;
G2L["7"]["BackgroundTransparency"] = 1;
G2L["7"]["Position"] = UDim2.new(0.848, 0, 0.129, 0);

G2L["8"] = Instance.new("UIAspectRatioConstraint", G2L["7"]);

-- HUD List Item Template
G2L["9"] = Instance.new("Frame", G2L["3"]);
G2L["9"]["BorderSizePixel"] = 0;
G2L["9"]["BackgroundTransparency"] = 1;
G2L["9"]["Size"] = UDim2.new(0.585, 0, 0.03, 0);
G2L["9"]["Name"] = [[List]];

G2L["a"] = Instance.new("Frame", G2L["9"]);
G2L["a"]["BorderSizePixel"] = 0;
G2L["a"]["BackgroundColor3"] = Color3.fromRGB(75, 156, 255);
G2L["a"]["Size"] = UDim2.new(0.041, 0, 1, 0);
G2L["a"]["Name"] = [[Bar]];
-- ADDED ROUNDED EDGES
Instance.new("UICorner", G2L["a"]).CornerRadius = UDim.new(0, 4)

G2L["b"] = Instance.new("TextLabel", G2L["9"]);
G2L["b"]["TextWrapped"] = true;
G2L["b"]["BorderSizePixel"] = 0;
G2L["b"]["TextScaled"] = true;
G2L["b"]["BackgroundColor3"] = Color3.fromRGB(0, 0, 0);
G2L["b"]["TextXAlignment"] = Enum.TextXAlignment.Left;
G2L["b"]["FontFace"] = Font.new([[rbxasset://fonts/families/Ubuntu.json]], Enum.FontWeight.Bold, Enum.FontStyle.Normal);
G2L["b"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["b"]["Size"] = UDim2.new(0.958, 0, 1, 0);
G2L["b"]["Text"] = [[Example]];
G2L["b"]["Name"] = [[Title]];
G2L["b"]["BackgroundTransparency"] = 0.4;
G2L["b"]["Position"] = UDim2.new(0.041, 0, 0, 0);
-- ADDED ROUNDED EDGES
Instance.new("UICorner", G2L["b"]).CornerRadius = UDim.new(0, 4)

G2L["c"] = Instance.new("UIPadding", G2L["b"]);
G2L["c"]["PaddingLeft"] = UDim.new(0.1, 0);

-- Category Template
G2L["d"] = Instance.new("Frame", G2L["3"]);
G2L["d"]["BorderSizePixel"] = 0;
G2L["d"]["BackgroundColor3"] = Color3.fromRGB(0, 0, 0);
G2L["d"]["AnchorPoint"] = Vector2.new(0.5, 0.5);
G2L["d"]["BackgroundTransparency"] = 1;
G2L["d"]["Size"] = UDim2.new(0.093, 0, 0.527, 0);
G2L["d"]["Position"] = UDim2.new(0.25, 0, 0.5, 0);
G2L["d"]["Name"] = [[Category]];

G2L["e"] = Instance.new("Frame", G2L["d"]);
G2L["e"]["BorderSizePixel"] = 0;
G2L["e"]["BackgroundColor3"] = Color3.fromRGB(0, 0, 0);
G2L["e"]["BackgroundTransparency"] = 0.4;
G2L["e"]["Size"] = UDim2.new(1, 0, 0.068, 0);
G2L["e"]["Name"] = [[Tab]];
-- ADDED ROUNDED EDGES
Instance.new("UICorner", G2L["e"]).CornerRadius = UDim.new(0, 8)

G2L["f"] = Instance.new("TextLabel", G2L["e"]);
G2L["f"]["TextWrapped"] = true;
G2L["f"]["BorderSizePixel"] = 0;
G2L["f"]["TextScaled"] = true;
G2L["f"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["f"]["TextXAlignment"] = Enum.TextXAlignment.Left;
G2L["f"]["FontFace"] = Font.new([[rbxasset://fonts/families/Ubuntu.json]], Enum.FontWeight.Bold, Enum.FontStyle.Normal);
G2L["f"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["f"]["Size"] = UDim2.new(1, 0, 1, 0);
G2L["f"]["Text"] = [[Combat]];
G2L["f"]["Name"] = [[Title]];
G2L["f"]["BackgroundTransparency"] = 1;

G2L["10"] = Instance.new("UIPadding", G2L["f"]);
G2L["10"]["PaddingLeft"] = UDim.new(0.25, 0);

G2L["11"] = Instance.new("TextLabel", G2L["e"]);
G2L["11"]["TextWrapped"] = true;
G2L["11"]["TextScaled"] = true;
G2L["11"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["11"]["AnchorPoint"] = Vector2.new(0.5, 0.5);
G2L["11"]["Size"] = UDim2.new(0.173, 0, 1, 0);
G2L["11"]["Text"] = [[-]];
G2L["11"]["Name"] = [[Expand]];
G2L["11"]["BackgroundTransparency"] = 1;
G2L["11"]["Position"] = UDim2.new(0.912, 0, 0.494, 0);

G2L["12"] = Instance.new("ImageLabel", G2L["e"]);
G2L["12"]["Image"] = [[rbxassetid://7485051715]];
G2L["12"]["Size"] = UDim2.new(0.122, 0, 0.691, 0);
G2L["12"]["Name"] = [[Icon]];
G2L["12"]["BackgroundTransparency"] = 1;
G2L["12"]["Position"] = UDim2.new(0.131, 0, 0.5, 0);
G2L["12"]["AnchorPoint"] = Vector2.new(0.5, 0.5);

G2L["13"] = Instance.new("UIAspectRatioConstraint", G2L["12"]);

G2L["14"] = Instance.new("Frame", G2L["d"]);
G2L["14"]["BackgroundColor3"] = Color3.fromRGB(75, 156, 255);
G2L["14"]["Size"] = UDim2.new(1, 0, 0, 2);
G2L["14"]["Position"] = UDim2.new(0, 0, 0.067, 0);
G2L["14"]["Name"] = [[Seperator]];

G2L["15"] = Instance.new("Frame", G2L["d"]);
G2L["15"]["BackgroundColor3"] = Color3.fromRGB(0, 0, 0);
G2L["15"]["BackgroundTransparency"] = 0.6;
G2L["15"]["Size"] = UDim2.new(1, 0, 0.928, 0);
G2L["15"]["Position"] = UDim2.new(0, 0, 0.071, 0);
G2L["15"]["Name"] = [[Modules]];
-- ADDED ROUNDED EDGES
Instance.new("UICorner", G2L["15"]).CornerRadius = UDim.new(0, 8)

G2L["16"] = Instance.new("UIGridLayout", G2L["15"]);
G2L["16"]["SortOrder"] = Enum.SortOrder.LayoutOrder;
G2L["16"]["CellSize"] = UDim2.new(1, 0, 0.07, 0);

-- HUD elements
G2L["17"] = Instance.new("Frame", G2L["1"]);
G2L["17"]["BackgroundTransparency"] = 1;
G2L["17"]["Size"] = UDim2.new(1, 0, 1, 0);
G2L["17"]["Name"] = [[Hud]];

G2L["18"] = Instance.new("ImageLabel", G2L["17"]);
G2L["18"]["Image"] = [[http://www.roblox.com/asset/?id=17640797571]];
G2L["18"]["Size"] = UDim2.new(0.127, 0, 0.718, 0);
G2L["18"]["Name"] = [[Watermark]];
G2L["18"]["BackgroundTransparency"] = 1;
G2L["18"]["Position"] = UDim2.new(0.063, 0, 0.932, 0);
G2L["18"]["AnchorPoint"] = Vector2.new(0.5, 0.5);

G2L["1a"] = Instance.new("Frame", G2L["17"]);
G2L["1a"]["BackgroundTransparency"] = 1;
G2L["1a"]["Size"] = UDim2.new(0.1, 0, 1, 0);
G2L["1a"]["Position"] = UDim2.new(0.899, 0, 0, 0);
G2L["1a"]["Name"] = [[ModuleList]];

G2L["1b"] = Instance.new("UIListLayout", G2L["1a"]);
G2L["1b"]["VerticalAlignment"] = Enum.VerticalAlignment.Bottom;
G2L["1b"]["HorizontalAlignment"] = Enum.HorizontalAlignment.Right;

-- CORE LOGIC
local function C_3()
	local script = G2L["3"]
	local UserInputService = game:GetService("UserInputService")
	local TweenService = game:GetService("TweenService")
	local Lighting = game:GetService("Lighting")
	
	local ClickGui = script.Parent
	local Screen = ClickGui.Parent
	local Hud = Screen.Hud
	local ModuleList = Hud.ModuleList
	
	local Connections = {}
	local Blur = Instance.new("BlurEffect", Lighting)
	Blur.Enabled = true
	Blur.Size = 15
	
	local Categories = {}
	local Library = {}
	
	local ExampleCategory = script.Category
	local ExampleModule = script.Module
	local ExampleList = script.List

	local function Dragify(Category)
		local Tab = Category.Tab
		local Expand = Tab.Expand
		local Modules = Category.Modules
		local dragging, dragInput, dragStart, startPos
		local isExpanded = true
		local originalSize = Modules.Size
		local lastMousePosition, lastUpdateTime

		Connections[#Connections + 1] = Tab.InputBegan:Connect(function(input)
			if input.UserInputType == Enum.UserInputType.MouseButton1 then
				dragging = true
				dragStart = input.Position
				startPos = Category.Position
				lastMousePosition = input.Position
				lastUpdateTime = tick()
				input.Changed:Connect(function()
					if input.UserInputState == Enum.UserInputState.End then
						dragging = false
						TweenService:Create(Category, TweenInfo.new(0.3), {Rotation = 0}):Play()
					end
				end)
			end
		end)

		Connections[#Connections + 1] = UserInputService.InputChanged:Connect(function(input)
			if dragging and input.UserInputType == Enum.UserInputType.MouseMovement then
				local delta = input.Position - dragStart
				local goalPosition = UDim2.new(startPos.X.Scale, startPos.X.Offset + delta.X, startPos.Y.Scale, startPos.Y.Offset + delta.Y)
				
				local speed = 0
				if lastMousePosition and lastUpdateTime then
					speed = (input.Position - lastMousePosition).Magnitude / (tick() - lastUpdateTime)
				end
				local rotDir = lastMousePosition.X < input.Position.X and 1 or -1
				lastMousePosition = input.Position
				lastUpdateTime = tick()

				TweenService:Create(Category, TweenInfo.new(0.3, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {
					Position = goalPosition,
					Rotation = speed * 0.003 * rotDir
				}):Play()
			end
		end)

		Connections[#Connections + 1] = Expand.InputBegan:Connect(function(input)
			if input.UserInputType == Enum.UserInputType.MouseButton1 then
				isExpanded = not isExpanded
				Expand.Text = isExpanded and "-" or "+"
				TweenService:Create(Modules, TweenInfo.new(0.5, Enum.EasingStyle.Quint), {
					Size = isExpanded and originalSize or UDim2.new(originalSize.X.Scale, originalSize.X.Offset, 0, 0)
				}):Play()
			end
		end)
	end

	Library.addCategory = function(Name, Icon)
		local NewCategory = ExampleCategory:Clone()
		NewCategory.Tab.Title.Text = Name
		NewCategory.Tab.Icon.Image = Icon
		NewCategory.Parent = ClickGui
		local CategoryInfo = {["Name"] = Name, ["Modules"] = {}, ["UI"] = NewCategory}
		table.insert(Categories, CategoryInfo)
		for i, info in ipairs(Categories) do
			info.UI.Position = UDim2.new(i / (#Categories + 1), 0, 0.5, 0)
		end
		Dragify(NewCategory)
	end

	Library.addModule = function(Category, Name, Callback)
		local catInfo
		for _, v in pairs(Categories) do if v.Name == Category then catInfo = v end end
		if not catInfo then return end

		local NewList = ExampleList:Clone()
		NewList.Parent = ModuleList
		NewList.Title.Text = Name
		NewList.Size = UDim2.new(0, NewList.Title.TextBounds.X + 20, 0.03, 0)
		NewList.Visible = false

		local NewModule = ExampleModule:Clone()
		NewModule.Title.Text = Name
		NewModule.Parent = catInfo.UI.Modules

		local toggle = false
		NewModule.InputBegan:Connect(function(input)
			if input.UserInputType == Enum.UserInputType.MouseButton1 then
				toggle = not toggle
				Callback(toggle)
				NewList.Visible = toggle
				TweenService:Create(NewModule, TweenInfo.new(0.4), {BackgroundTransparency = toggle and 0.65 or 1}):Play()
			end
		end)
	end

	UserInputService.InputBegan:Connect(function(input, gpe)
		if not gpe and (input.KeyCode == Enum.KeyCode.LeftAlt or input.KeyCode == Enum.KeyCode.RightAlt) then
			ClickGui.Visible = not ClickGui.Visible
			Blur.Enabled = ClickGui.Visible
		end
	end)

	return Library
end

local lib = C_3()
return lib
