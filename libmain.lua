--[=[
    RELIEF UI V2 - FRESHENED UP
    * Added: Smooth Corner Rounding
    * Added: Border Outlines (UIStroke)
    * Improved: Modern Easing Styles
    * Palette: Dark Mode with Neon Accents
]=]

local G2L = {};
local UserInputService = game:GetService("UserInputService")
local TweenService = game:GetService("TweenService")
local Lighting = game:GetService("Lighting")

-- Utility for modern styling
local function ApplyStyling(obj, cornerRadius)
    local corner = Instance.new("UICorner", obj)
    corner.CornerRadius = UDim.new(0, cornerRadius or 6)
    
    local stroke = Instance.new("UIStroke", obj)
    stroke.Thickness = 1.5
    stroke.Color = Color3.fromRGB(255, 255, 255)
    stroke.Transparency = 0.9
    stroke.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
end

local function C_3()
    local script = G2L["3"];
    
    -- Main Container Setup
    local Screen = Instance.new("ScreenGui", game:GetService("CoreGui"))
    Screen.Name = "Relief_V2"
    Screen.IgnoreGuiInset = true
    Screen.ResetOnSpawn = false

    local ClickGui = Instance.new("Frame", Screen)
    ClickGui.Size = UDim2.new(1, 0, 1, 0)
    ClickGui.BackgroundTransparency = 1
    ClickGui.Visible = true

    local Blur = Instance.new("BlurEffect", Lighting)
    Blur.Size = 0
    Blur.Enabled = false

    -- Toggle Logic with Smooth Blur
    UserInputService.InputBegan:Connect(function(input, gpe)
        if not gpe and (input.KeyCode == Enum.KeyCode.LeftAlt or input.KeyCode == Enum.KeyCode.RightAlt) then
            ClickGui.Visible = not ClickGui.Visible
            TweenService:Create(Blur, TweenInfo.new(0.4), {Size = ClickGui.Visible and 15 or 0}):Play()
            Blur.Enabled = ClickGui.Visible
        end
    end)

    local Library = {}
    local Categories = {}

    -- Function to create a Category
    Library.addCategory = function(Name, IconId)
        local CategoryFrame = Instance.new("Frame", ClickGui)
        CategoryFrame.Size = UDim2.new(0, 180, 0, 35)
        CategoryFrame.BackgroundColor3 = Color3.fromRGB(25, 25, 25)
        CategoryFrame.Position = UDim2.new(0.1, (#Categories * 190), 0.1, 0)
        ApplyStyling(CategoryFrame, 8)

        local Title = Instance.new("TextLabel", CategoryFrame)
        Title.Size = UDim2.new(1, -40, 1, 0)
        Title.Position = UDim2.new(0, 35, 0, 0)
        Title.BackgroundTransparency = 1
        Title.Text = Name
        Title.TextColor3 = Color3.fromRGB(255, 255, 255)
        Title.Font = Enum.Font.GothamBold
        Title.TextSize = 14
        Title.TextXAlignment = Enum.TextXAlignment.Left

        local Icon = Instance.new("ImageLabel", CategoryFrame)
        Icon.Size = UDim2.new(0, 20, 0, 20)
        Icon.Position = UDim2.new(0, 8, 0.5, -10)
        Icon.BackgroundTransparency = 1
        Icon.Image = IconId
        Icon.ImageColor3 = Color3.fromRGB(75, 156, 255)

        local ModuleHolder = Instance.new("Frame", CategoryFrame)
        ModuleHolder.Size = UDim2.new(1, 0, 0, 0)
        ModuleHolder.Position = UDim2.new(0, 0, 1, 5)
        ModuleHolder.BackgroundTransparency = 1
        ModuleHolder.ClipsDescendants = true

        local Layout = Instance.new("UIListLayout", ModuleHolder)
        Layout.Padding = UDim.new(0, 4)
        Layout.SortOrder = Enum.SortOrder.LayoutOrder

        -- Dragging Logic
        local dragging, dragInput, dragStart, startPos
        CategoryFrame.InputBegan:Connect(function(input)
            if input.UserInputType == Enum.UserInputType.MouseButton1 then
                dragging = true; dragStart = input.Position; startPos = CategoryFrame.Position
            end
        end)
        UserInputService.InputChanged:Connect(function(input)
            if dragging and input.UserInputType == Enum.UserInputType.MouseMovement then
                local delta = input.Position - dragStart
                CategoryFrame.Position = UDim2.new(startPos.X.Scale, startPos.X.Offset + delta.X, startPos.Y.Scale, startPos.Y.Offset + delta.Y)
            end
        end)
        UserInputService.InputEnded:Connect(function(input)
            if input.UserInputType == Enum.UserInputType.MouseButton1 then dragging = false end
        end)

        local CategoryData = {Holder = ModuleHolder, Count = 0}
        Categories[Name] = CategoryData
        return CategoryData
    end

    -- Function to create a Module
    Library.addModule = function(CatName, ModName, Callback)
        local Cat = Categories[CatName]
        if not Cat then return end

        Cat.Count = Cat.Count + 1
        Cat.Holder.Size = UDim2.new(1, 0, 0, Cat.Count * 34)

        local ModBtn = Instance.new("TextButton", Cat.Holder)
        ModBtn.Size = UDim2.new(1, 0, 0, 30)
        ModBtn.BackgroundColor3 = Color3.fromRGB(35, 35, 35)
        ModBtn.Text = ModName
        ModBtn.Font = Enum.Font.Gotham
        ModBtn.TextColor3 = Color3.fromRGB(200, 200, 200)
        ModBtn.TextSize = 13
        ModBtn.AutoButtonColor = false
        ApplyStyling(ModBtn, 6)

        local StatusLine = Instance.new("Frame", ModBtn)
        StatusLine.Size = UDim2.new(0, 2, 1, -10)
        StatusLine.Position = UDim2.new(0, 5, 0, 5)
        StatusLine.BackgroundColor3 = Color3.fromRGB(75, 156, 255)
        StatusLine.BackgroundTransparency = 1

        local Toggled = false
        ModBtn.MouseButton1Click:Connect(function()
            Toggled = not Toggled
            local targetColor = Toggled and Color3.fromRGB(255, 255, 255) or Color3.fromRGB(200, 200, 200)
            local lineTrans = Toggled and 0 or 1
            
            TweenService:Create(ModBtn, TweenInfo.new(0.3), {TextColor3 = targetColor}):Play()
            TweenService:Create(StatusLine, TweenInfo.new(0.3), {BackgroundTransparency = lineTrans}):Play()
            
            Callback(Toggled)
        end)
    end

    return Library
end

return C_3()
