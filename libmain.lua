--[=[
 d888b  db    db d888888b      .d888b.      db      db    db  .d8b.  
88' Y8b 88    88   `88'        VP  `8D      88      88    88 d8' `8b 
88      88    88    88            odD'      88      88    88 88ooo88 
88  ooo 88    88    88          .88'        88      88    88 88~~~88 
88. ~8~ 88b  d88   .88.        j88.         88booo. 88b  d88 88   88 
 Y888P  ~Y8888P' Y888888P      888888D      Y88888P ~Y8888P' YP   YP  CONVERTER
]=]

-- Instances: 27 | Scripts: 1 | Modules: 0
local G2L = {};

-- StarterGui.Screen
G2L["1"] = Instance.new("ScreenGui", game:GetService("CoreGui"));
G2L["1"]["IgnoreGuiInset"] = true;
G2L["1"]["ScreenInsets"] = Enum.ScreenInsets.DeviceSafeInsets;
G2L["1"]["Name"] = [[Screen]];
G2L["1"]["ResetOnSpawn"] = false;
G2L["1"]["DisplayOrder"] = 99999;

-- StarterGui.Screen.ClickGui
G2L["2"] = Instance.new("Frame", G2L["1"]);
G2L["2"]["ZIndex"] = 0;
G2L["2"]["BorderSizePixel"] = 0;
G2L["2"]["BackgroundColor3"] = Color3.fromRGB(0, 0, 0);
G2L["2"]["AnchorPoint"] = Vector2.new(0.5, 0.5);
G2L["2"]["BackgroundTransparency"] = 0.75;
G2L["2"]["Size"] = UDim2.new(1, 0, 1, 0);
G2L["2"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["2"]["Position"] = UDim2.new(0.5, 0, 0.5, 0);
G2L["2"]["Name"] = [[ClickGui]];

-- StarterGui.Screen.ClickGui.LocalScript
G2L["3"] = Instance.new("LocalScript", G2L["2"]);


-- StarterGui.Screen.ClickGui.LocalScript.Module
G2L["4"] = Instance.new("Frame", G2L["3"]);
G2L["4"]["BorderSizePixel"] = 0;
G2L["4"]["BackgroundColor3"] = Color3.fromRGB(162, 162, 162);
G2L["4"]["BackgroundTransparency"] = 1;
G2L["4"]["Size"] = UDim2.new(0, 100, 0, 100);
G2L["4"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["4"]["Name"] = [[Module]];

-- StarterGui.Screen.ClickGui.LocalScript.Module.Title
G2L["5"] = Instance.new("TextLabel", G2L["4"]);
G2L["5"]["TextWrapped"] = true;
G2L["5"]["BorderSizePixel"] = 0;
G2L["5"]["TextScaled"] = true;
G2L["5"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["5"]["FontFace"] = Font.new([[rbxasset://fonts/families/Ubuntu.json]], Enum.FontWeight.Bold, Enum.FontStyle.Normal);
G2L["5"]["TextSize"] = 14;
G2L["5"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["5"]["Size"] = UDim2.new(1, 0, 1, 0);
G2L["5"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["5"]["Text"] = [[Module]];
G2L["5"]["Name"] = [[Title]];
G2L["5"]["BackgroundTransparency"] = 1;

-- StarterGui.Screen.ClickGui.LocalScript.Module.Title.UIPadding
G2L["6"] = Instance.new("UIPadding", G2L["5"]);
G2L["6"]["PaddingTop"] = UDim.new(0.25, 0);
G2L["6"]["PaddingRight"] = UDim.new(0.25, 0);
G2L["6"]["PaddingBottom"] = UDim.new(0.25, 0);
G2L["6"]["PaddingLeft"] = UDim.new(0.25, 0);

-- StarterGui.Screen.ClickGui.LocalScript.Module.Expand
G2L["7"] = Instance.new("ImageLabel", G2L["4"]);
G2L["7"]["BorderSizePixel"] = 0;
G2L["7"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["7"]["Image"] = [[rbxassetid://11552476728]];
G2L["7"]["Size"] = UDim2.new(0.14244209229946136, 0, 0.7396281361579895, 0);
G2L["7"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["7"]["Name"] = [[Expand]];
G2L["7"]["Rotation"] = -90;
G2L["7"]["BackgroundTransparency"] = 1;
G2L["7"]["Position"] = UDim2.new(0.8480759859085083, 0, 0.1292249709367752, 0);

-- StarterGui.Screen.ClickGui.LocalScript.Module.Expand.UIAspectRatioConstraint
G2L["8"] = Instance.new("UIAspectRatioConstraint", G2L["7"]);


-- StarterGui.Screen.ClickGui.LocalScript.List
G2L["9"] = Instance.new("Frame", G2L["3"]);
G2L["9"]["BorderSizePixel"] = 0;
G2L["9"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["9"]["BackgroundTransparency"] = 1;
G2L["9"]["Size"] = UDim2.new(0.5855293273925781, 0, 0.029999999329447746, 0);
G2L["9"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["9"]["Position"] = UDim2.new(0.4144705832004547, 0, 0.9700000286102295, 0);
G2L["9"]["Name"] = [[List]];

-- StarterGui.Screen.ClickGui.LocalScript.List.Bar
G2L["a"] = Instance.new("Frame", G2L["9"]);
G2L["a"]["BorderSizePixel"] = 0;
G2L["a"]["BackgroundColor3"] = Color3.fromRGB(75, 156, 255);
G2L["a"]["Size"] = UDim2.new(0.041067808866500854, 0, 0.9999999403953552, 0);
G2L["a"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["a"]["Position"] = UDim2.new(0, 0, 0.0000022555491341336165, 0);
G2L["a"]["Name"] = [[Bar]];

-- StarterGui.Screen.ClickGui.LocalScript.List.Title
G2L["b"] = Instance.new("TextLabel", G2L["9"]);
G2L["b"]["TextWrapped"] = true;
G2L["b"]["BorderSizePixel"] = 0;
G2L["b"]["TextScaled"] = true;
G2L["b"]["BackgroundColor3"] = Color3.fromRGB(0, 0, 0);
G2L["b"]["TextXAlignment"] = Enum.TextXAlignment.Left;
G2L["b"]["FontFace"] = Font.new([[rbxasset://fonts/families/Ubuntu.json]], Enum.FontWeight.Bold, Enum.FontStyle.Normal);
G2L["b"]["TextSize"] = 14;
G2L["b"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["b"]["Size"] = UDim2.new(0.9589338302612305, 0, 1, 0);
G2L["b"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["b"]["Text"] = [[Example]];
G2L["b"]["Name"] = [[Title]];
G2L["b"]["BackgroundTransparency"] = 0.4000000059604645;
G2L["b"]["Position"] = UDim2.new(0.04106779024004936, 0, 0, 0);

-- StarterGui.Screen.ClickGui.LocalScript.List.Title.UIPadding
G2L["c"] = Instance.new("UIPadding", G2L["b"]);
G2L["c"]["PaddingTop"] = UDim.new(0.10000000149011612, 0);
G2L["c"]["PaddingRight"] = UDim.new(0.10000000149011612, 0);
G2L["c"]["PaddingBottom"] = UDim.new(0.10000000149011612, 0);
G2L["c"]["PaddingLeft"] = UDim.new(0.10000000149011612, 0);

-- StarterGui.Screen.ClickGui.LocalScript.Category
G2L["d"] = Instance.new("Frame", G2L["3"]);
G2L["d"]["BorderSizePixel"] = 0;
G2L["d"]["BackgroundColor3"] = Color3.fromRGB(0, 0, 0);
G2L["d"]["AnchorPoint"] = Vector2.new(0.5, 0.5);
G2L["d"]["BackgroundTransparency"] = 1;
G2L["d"]["Size"] = UDim2.new(0.09301398694515228, 0, 0.5279379487037659, 0);
G2L["d"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["d"]["Position"] = UDim2.new(0.25, 0, 0.5, 0);
G2L["d"]["Name"] = [[Category]];

-- StarterGui.Screen.ClickGui.LocalScript.Category.Tab
G2L["e"] = Instance.new("Frame", G2L["d"]);
G2L["e"]["BorderSizePixel"] = 0;
G2L["e"]["BackgroundColor3"] = Color3.fromRGB(0, 0, 0);
G2L["e"]["BackgroundTransparency"] = 0.4000000059604645;
G2L["e"]["Size"] = UDim2.new(1, 0, 0.06800000369548798, 0);
G2L["e"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["e"]["Position"] = UDim2.new(0, 0, -0.0008013587212190032, 0);
G2L["e"]["Name"] = [[Tab]];

-- StarterGui.Screen.ClickGui.LocalScript.Category.Tab.Title
G2L["f"] = Instance.new("TextLabel", G2L["e"]);
G2L["f"]["TextWrapped"] = true;
G2L["f"]["BorderSizePixel"] = 0;
G2L["f"]["TextScaled"] = true;
G2L["f"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["f"]["TextXAlignment"] = Enum.TextXAlignment.Left;
G2L["f"]["FontFace"] = Font.new([[rbxasset://fonts/families/Ubuntu.json]], Enum.FontWeight.Bold, Enum.FontStyle.Normal);
G2L["f"]["TextSize"] = 14;
G2L["f"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["f"]["Size"] = UDim2.new(1, 0, 1, 0);
G2L["f"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["f"]["Text"] = [[Combat]];
G2L["f"]["Name"] = [[Title]];
G2L["f"]["BackgroundTransparency"] = 1;

-- StarterGui.Screen.ClickGui.LocalScript.Category.Tab.Title.UIPadding
G2L["10"] = Instance.new("UIPadding", G2L["f"]);
G2L["10"]["PaddingTop"] = UDim.new(0.25, 0);
G2L["10"]["PaddingBottom"] = UDim.new(0.25, 0);
G2L["10"]["PaddingLeft"] = UDim.new(0.25, 0);

-- StarterGui.Screen.ClickGui.LocalScript.Category.Tab.Expand
G2L["11"] = Instance.new("TextLabel", G2L["e"]);
G2L["11"]["TextWrapped"] = true;
G2L["11"]["BorderSizePixel"] = 0;
G2L["11"]["TextScaled"] = true;
G2L["11"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["11"]["FontFace"] = Font.new([[rbxasset://fonts/families/GothamSSm.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["11"]["TextSize"] = 14;
G2L["11"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["11"]["AnchorPoint"] = Vector2.new(0.5, 0.5);
G2L["11"]["Size"] = UDim2.new(0.17381927371025085, 0, 1, 0);
G2L["11"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["11"]["Text"] = [[-]];
G2L["11"]["Name"] = [[Expand]];
G2L["11"]["BackgroundTransparency"] = 1;
G2L["11"]["Position"] = UDim2.new(0.9120174050331116, 0, 0.4941079020500183, 0);

-- StarterGui.Screen.ClickGui.LocalScript.Category.Tab.Icon
G2L["12"] = Instance.new("ImageLabel", G2L["e"]);
G2L["12"]["BorderSizePixel"] = 0;
G2L["12"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["12"]["AnchorPoint"] = Vector2.new(0.5, 0.5);
G2L["12"]["Image"] = [[rbxassetid://7485051715]];
G2L["12"]["Size"] = UDim2.new(0.12221760302782059, 0, 0.6911827921867371, 0);
G2L["12"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["12"]["Name"] = [[Icon]];
G2L["12"]["BackgroundTransparency"] = 1;
G2L["12"]["Position"] = UDim2.new(0.13199706375598907, 0, 0.5000000596046448, 0);

-- StarterGui.Screen.ClickGui.LocalScript.Category.Tab.Icon.UIAspectRatioConstraint
G2L["13"] = Instance.new("UIAspectRatioConstraint", G2L["12"]);


-- StarterGui.Screen.ClickGui.LocalScript.Category.Seperator
G2L["14"] = Instance.new("Frame", G2L["d"]);
G2L["14"]["ZIndex"] = 2;
G2L["14"]["BorderSizePixel"] = 0;
G2L["14"]["BackgroundColor3"] = Color3.fromRGB(75, 156, 255);
G2L["14"]["Size"] = UDim2.new(1, 0, 0, 2);
G2L["14"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["14"]["Position"] = UDim2.new(-0.005364806391298771, 0, 0.06719864904880524, 0);
G2L["14"]["Name"] = [[Seperator]];

-- StarterGui.Screen.ClickGui.LocalScript.Category.Modules
G2L["15"] = Instance.new("Frame", G2L["d"]);
G2L["15"]["BorderSizePixel"] = 0;
G2L["15"]["BackgroundColor3"] = Color3.fromRGB(0, 0, 0);
G2L["15"]["BackgroundTransparency"] = 0.6000000238418579;
G2L["15"]["Size"] = UDim2.new(1, 0, 0.9286015033721924, 0);
G2L["15"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["15"]["Position"] = UDim2.new(0, 0, 0.0713985338807106, 0);
G2L["15"]["Name"] = [[Modules]];

-- StarterGui.Screen.ClickGui.LocalScript.Category.Modules.UIGridLayout
G2L["16"] = Instance.new("UIGridLayout", G2L["15"]);
G2L["16"]["SortOrder"] = Enum.SortOrder.LayoutOrder;
G2L["16"]["CellSize"] = UDim2.new(1, 0, 0.07000000029802322, 0);

-- StarterGui.Screen.Hud
G2L["17"] = Instance.new("Frame", G2L["1"]);
G2L["17"]["BorderSizePixel"] = 0;
G2L["17"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["17"]["BackgroundTransparency"] = 1;
G2L["17"]["Size"] = UDim2.new(1, 0, 1, 0);
G2L["17"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["17"]["Name"] = [[Hud]];

-- StarterGui.Screen.Hud.Watermark
G2L["18"] = Instance.new("ImageLabel", G2L["17"]);
G2L["18"]["BorderSizePixel"] = 0;
G2L["18"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["18"]["AnchorPoint"] = Vector2.new(0.5, 0.5);
G2L["18"]["Image"] = [[http://www.roblox.com/asset/?id=17640797571]];
G2L["18"]["Size"] = UDim2.new(0.12777817249298096, 0, 0.7186253666877747, 0);
G2L["18"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["18"]["Name"] = [[Watermark]];
G2L["18"]["BackgroundTransparency"] = 1;
G2L["18"]["Position"] = UDim2.new(0.06387225538492203, 0, 0.9329268336296082, 0);

-- StarterGui.Screen.Hud.Watermark.UIAspectRatioConstraint
G2L["19"] = Instance.new("UIAspectRatioConstraint", G2L["18"]);
G2L["19"]["AspectRatio"] = 1.4450758695602417;

-- StarterGui.Screen.Hud.ModuleList
G2L["1a"] = Instance.new("Frame", G2L["17"]);
G2L["1a"]["BorderSizePixel"] = 0;
G2L["1a"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["1a"]["BackgroundTransparency"] = 1;
G2L["1a"]["Size"] = UDim2.new(0.1002994105219841, 0, 1, 0);
G2L["1a"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["1a"]["Position"] = UDim2.new(0.8997005820274353, 0, 0, 0);
G2L["1a"]["Name"] = [[ModuleList]];

-- StarterGui.Screen.Hud.ModuleList.UIListLayout
G2L["1b"] = Instance.new("UIListLayout", G2L["1a"]);
G2L["1b"]["VerticalAlignment"] = Enum.VerticalAlignment.Bottom;
G2L["1b"]["HorizontalAlignment"] = Enum.HorizontalAlignment.Right;

-- StarterGui.Screen.ClickGui.LocalScript
local function C_3()
local script = G2L["3"];
	local UserInputService = game:GetService("UserInputService")
	local TweenService = game:GetService("TweenService")
	local Lighting = game:GetService("Lighting")
	local TextService = game:GetService("TextService")
	
	local ClickGui = script.Parent
	local Screen = ClickGui.Parent
	local Hud = Screen.Hud
	local ModuleList = Hud.ModuleList
	
	local Connections = {}
	
	local Blur = Instance.new("BlurEffect")
	Blur.Enabled = true
	Blur.Parent = Lighting
	Blur.Size = 15
	
	Connections[#Connections + 1] = UserInputService.InputBegan:Connect(function(Input, GPE)
		if GPE then return end
		if Input.KeyCode == Enum.KeyCode.LeftAlt or Input.KeyCode == Enum.KeyCode.RightAlt then
			ClickGui.Visible = not ClickGui.Visible
			Blur.Enabled = ClickGui.Visible
		end
	end)
	
	local Categories = {}
	local Library = {}
	
	local ExampleCategory = script.Category
	local ExampleModule = script.Module
	local ExampleList = script.List
	
	local function Dragify(Category)
		if not Category:IsA("Frame") then return end
	
		local Tab = Category.Tab
		local Expand = Tab.Expand
		local Modules = Category.Modules
	
		local dragging = false
		local dragInput
		local dragStart
		local startPos
	
		local originalSize = Modules.Size
		local isExpanded = true
	
		local lastMousePosition
		local lastUpdateTime
	
		local function update(input)
			local currentTime = tick()
			local delta = input.Position - dragStart
			local goalPosition = UDim2.new(startPos.X.Scale, startPos.X.Offset + delta.X, startPos.Y.Scale, startPos.Y.Offset + delta.Y)
	
			local speed = 0
			if lastMousePosition and lastUpdateTime then
				local timeDelta = currentTime - lastUpdateTime
				local positionDelta = (input.Position - lastMousePosition).Magnitude
				speed = positionDelta / timeDelta
			end
	
			local rotationDirection = 1
			if lastMousePosition.X < input.Position.X then
				rotationDirection = 1
			elseif lastMousePosition.X > input.Position.X then
				rotationDirection = -1
			end
	
			lastMousePosition = input.Position
			lastUpdateTime = currentTime
	
			local rotationAngle = speed * 0.003 * rotationDirection
	
			local tweenInfo = TweenInfo.new(0.3, Enum.EasingStyle.Quad, Enum.EasingDirection.Out)
			local positionTween = TweenService:Create(Category, tweenInfo, {Position = goalPosition})
			local rotationTween = TweenService:Create(Category, tweenInfo, {Rotation = rotationAngle})
	
			positionTween:Play()
			rotationTween:Play()
		end
	
		Connections[#Connections + 1] = Tab.InputBegan:Connect(function(input)
			if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
				dragging = true
				dragStart = input.Position
				startPos = Category.Position
	
				lastMousePosition = input.Position
				lastUpdateTime = tick()
	
				input.Changed:Connect(function()
					if input.UserInputState == Enum.UserInputState.End then
						dragging = false
	
						local rotationTween = TweenService:Create(Category, TweenInfo.new(0.3), {Rotation = 0})
						rotationTween:Play()
					end
				end)
			end
		end)
	
		Connections[#Connections + 1] = Tab.InputChanged:Connect(function(input)
			if input.UserInputType == Enum.UserInputType.MouseMovement or input.UserInputType == Enum.UserInputType.Touch then
				dragInput = input
			end
		end)
	
		Connections[#Connections + 1] = UserInputService.InputChanged:Connect(function(input)
			if dragging and input == dragInput then
				update(input)
			end
		end)
	
		Connections[#Connections + 1] = Expand.InputBegan:Connect(function(input)
			if input.UserInputType == Enum.UserInputType.MouseButton1 then
				local goalSize
				if isExpanded then
					goalSize = UDim2.new(Modules.Size.X.Scale, Modules.Size.X.Offset, 0, 0)
					Expand.Text = "+"
				else
					goalSize = originalSize
					Expand.Text = "-"
				end
	
				local tweenInfo = TweenInfo.new(0.5, Enum.EasingStyle.Quint, Enum.EasingDirection.Out)
				local sizeTween = TweenService:Create(Modules, tweenInfo, {Size = goalSize})
				sizeTween:Play()
	
				isExpanded = not isExpanded
			end
		end)
	end
	
	local function repositionCategories()
		for i, CategoryInfo in ipairs(Categories) do
			local NewPosition = UDim2.new(i / (#Categories + 1), 0, 0.5, 0)
			CategoryInfo["UI"].Position = NewPosition
		end
	end
	
	Library.addCategory = function(Name, Icon)
		local NewCategory = ExampleCategory:Clone()
		local Tab = NewCategory.Tab
		local Modules = NewCategory.Modules
		local Title = Tab.Title
		local IconElement = Tab.Icon
	
		Title.Text = Name
		IconElement.Image = Icon
		NewCategory.Name = Name
	
		NewCategory.Parent = ClickGui
	
		local CategoryInfo = {
			["Name"] = Name,
			["Icon"] = Icon,
			["Modules"] = {},
			["UI"] = NewCategory
		}
		Categories[#Categories + 1] = CategoryInfo
	
		repositionCategories()
		Dragify(NewCategory)
	end
	
	Library.getCategory = function(Category)
		for _, CategoryInfo in Categories do
			if CategoryInfo["Name"] == Category then
				return CategoryInfo
			end
		end
	end
	
	Library.addModule = function(Category, Name, Callback)
		local CategoryInfo = Library.getCategory(Category)
		local CategoryUI = CategoryInfo["UI"]
		local Modules = CategoryUI.Modules
	
		local NewList = ExampleList:Clone()
		NewList.Parent = ModuleList
		NewList.Title.Text = Name
		NewList.Size = UDim2.new(0.08 * NewList.Title.Text:len(), 0, 0.03, 0)
		NewList.Visible = false
	
		local NewModule = ExampleModule:Clone()
		local Expand = NewModule.Expand
		local Title = NewModule.Title
	
		NewModule.Parent = Modules
		Title.Text = Name
	
		local TInfo = TweenInfo.new(0.4, Enum.EasingStyle.Quint, Enum.EasingDirection.Out)
		local HoverTween = TweenService:Create(NewModule, TInfo, { BackgroundTransparency = 0.8 })
		local UnhoverTween = TweenService:Create(NewModule, TInfo, { BackgroundTransparency = 1 })
		local EnabledHoverTween = TweenService:Create(NewModule, TInfo, { BackgroundTransparency = 0.65 })
	
		local Toggle = false
	
		Connections[#Connections + 1] = NewModule.InputBegan:Connect(function(input)
			if Toggle then
				if input.UserInputType == Enum.UserInputType.MouseMovement then
					EnabledHoverTween:Play()
				elseif input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
					Toggle = not Toggle
					if Toggle then
						Callback(true)
						NewList.Visible = true
						EnabledHoverTween:Play()
					else
						Callback(false)
						NewList.Visible = false
						HoverTween:Play()
					end
				end
			else
				if input.UserInputType == Enum.UserInputType.MouseMovement then
					HoverTween:Play()
				elseif input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
					Toggle = not Toggle
					if Toggle then
						Callback(true)
						NewList.Visible = true
						EnabledHoverTween:Play()
					else
						Callback(false)
						NewList.Visible = false
						HoverTween:Play()
					end
				end
			end
		end)
	
		Connections[#Connections + 1] = NewModule.InputEnded:Connect(function(input)
			if not Toggle and input.UserInputType == Enum.UserInputType.MouseMovement then
				UnhoverTween:Play()
			end
		end)
	
		CategoryInfo["Modules"][#CategoryInfo["Modules"] + 1] = {
			["Name"] = Name,
			["Callback"] = Callback,
			["Env"] = {},
			["UI"] = NewModule
		}
	end
	
	Library.getEnv = function(Category, Name)
		local CategoryInfo = Library.getCategory(Category)
		for _, ModuleInfo in pairs(CategoryInfo["Modules"]) do
			if ModuleInfo["Name"] == Name then
				return ModuleInfo["Env"]
			end
		end
	end
	
	Library.setEnv = function(Category, Name, New)
		local CategoryInfo = Library.getCategory(Category)
		for _, ModuleInfo in pairs(CategoryInfo["Modules"]) do
			if ModuleInfo["Name"] == Name then
				ModuleInfo["Env"] = New
			end
		end
	end
	
	Library.KillScript = function()
		Screen:Destroy()
		Blur:Destroy()
		for _, c in Connections do
			c:Disconnect()
		end
	end

	return Library
end;
local lib = C_3()

return lib;
