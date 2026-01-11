local UserInputService = game:GetService("UserInputService")
local TweenService = game:GetService("TweenService")
local RunService = game:GetService("RunService")
local Lighting = game:GetService("Lighting")

local Library = {}
local Categories = {}

-- Design Helpers
local function ApplyDesign(obj, radius, strokeTrans)
    local corner = Instance.new("UICorner", obj)
    corner.CornerRadius = UDim.new(0, radius or 6)
    
    local stroke = Instance.new("UIStroke", obj)
    stroke.Thickness = 1.2
    stroke.Color = Color3.fromRGB(255, 255, 255)
    stroke.Transparency = strokeTrans or 0.9
    stroke.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
end

-- 1. Main HUD Setup
local Screen = Instance.new("ScreenGui", game:GetService("CoreGui"))
Screen.Name = "ReliefUI_V2"
Screen.IgnoreGuiInset = true

local MainContainer = Instance.new("Frame", Screen)
MainContainer.Size = UDim2.new(1, 0, 1, 0)
MainContainer.BackgroundTransparency = 1

-- RESTORED LOGO (Bottom Left)
local Logo = Instance.new("ImageLabel", MainContainer)
Logo.Name = "ReliefLogo"
Logo.AnchorPoint = Vector2.new(0, 1)
Logo.Position = UDim2.new(0, 25, 1, -25)
Logo.Size = UDim2.new(0, 150, 0, 100)
Logo.Image = "http://www.roblox.com/asset/?id=17640797571"
Logo.BackgroundTransparency = 1

-- 2. Draggable Logic with Sway
local function EnableDragAndSway(frame)
    local dragging, dragInput, dragStart, startPos
    local lastMousePos = Vector2.new(0,0)
    
    frame.InputBegan:Connect(function(input)
        if input.UserInputType == Enum.UserInputType.MouseButton1 then
            dragging = true
            dragStart = input.Position
            startPos = frame.Position
            lastMousePos = input.Position
        end
    end)

    UserInputService.InputChanged:Connect(function(input)
        if dragging and input.UserInputType == Enum.UserInputType.MouseMovement then
            local delta = input.Position - dragStart
            local moveX = (input.Position.X - lastMousePos.X)
            lastMousePos = input.Position

            -- Smooth Position + Rotation Sway
            TweenService:Create(frame, TweenInfo.new(0.15, Enum.EasingStyle.OutQuad), {
                Position = UDim2.new(startPos.X.Scale, startPos.X.Offset + delta.X, startPos.Y.Scale, startPos.Y.Offset + delta.Y),
                Rotation = math.clamp(moveX * 0.8, -7, 7) -- The Sway
            }):Play()
        end
    end)

    UserInputService.InputEnded:Connect(function(input)
        if input.UserInputType == Enum.UserInputType.MouseButton1 then
            dragging = false
            TweenService:Create(frame, TweenInfo.new(0.4, Enum.EasingStyle.BackOut), {Rotation = 0}):Play()
        end
    end)
end

-- 3. Category Creation
Library.addCategory = function(Name, IconId)
    -- The Main Column
    local Column = Instance.new("Frame", MainContainer)
    Column.Name = Name
    Column.Size = UDim2.new(0, 195, 0, 40)
    Column.BackgroundColor3 = Color3.fromRGB(30, 30, 30) -- Dark Gray Header
    Column.Position = UDim2.new(0, 40 + (#MainContainer:GetChildren() * 210), 0, 60)
    ApplyDesign(Column, 7, 0.8)

    local Icon = Instance.new("ImageLabel", Column)
    Icon.Size = UDim2.new(0, 18, 0, 18)
    Icon.Position = UDim2.new(0, 12, 0.5, -9)
    Icon.Image = IconId
    Icon.BackgroundTransparency = 1
    Icon.ImageColor3 = Color3.fromRGB(75, 156, 255)

    local Title = Instance.new("TextLabel", Column)
    Title.Size = UDim2.new(1, -45, 1, 0)
    Title.Position = UDim2.new(0, 40, 0, 0)
    Title.Text = Name
    Title.Font = Enum.Font.Ubuntu
    Title.TextColor3 = Color3.fromRGB(255, 255, 255)
    Title.TextSize = 14
    Title.TextXAlignment = Enum.TextXAlignment.Left
    Title.BackgroundTransparency = 1

    -- The "Light Gray Behind" Container (90% Transparent)
    local ContentBg = Instance.new("Frame", Column)
    ContentBg.Name = "Content"
    ContentBg.Size = UDim2.new(1, 0, 0, 0)
    ContentBg.Position = UDim2.new(0, 0, 1, 4)
    ContentBg.BackgroundColor3 = Color3.fromRGB(200, 200, 200) -- Light Gray
    ContentBg.BackgroundTransparency = 0.9 -- 90% Transparent
    ApplyDesign(ContentBg, 7, 0.95)

    local Layout = Instance.new("UIListLayout", ContentBg)
    Layout.Padding = UDim.new(0, 2)
    Layout.HorizontalAlignment = Enum.HorizontalAlignment.Center

    -- Auto-resize height logic
    Layout:GetPropertyChangedSignal("AbsoluteContentSize"):Connect(function()
        ContentBg.Size = UDim2.new(1, 0, 0, Layout.AbsoluteContentSize.Y + 8)
    end)

    EnableDragAndSway(Column)
    
    Categories[Name] = ContentBg
end

-- 4. Module Creation
Library.addModule = function(CatName, ModName, Callback)
    local Parent = Categories[CatName]
    if not Parent then return end

    local ModBtn = Instance.new("TextButton", Parent)
    ModBtn.Size = UDim2.new(0.94, 0, 0, 30)
    ModBtn.BackgroundTransparency = 1 -- Transparent so it blends with ContentBg
    ModBtn.Text = ModName
    ModBtn.Font = Enum.Font.Ubuntu
    ModBtn.TextColor3 = Color3.fromRGB(180, 180, 180)
    ModBtn.TextSize = 13
    ModBtn.AutoButtonColor = false

    local Underline = Instance.new("Frame", ModBtn)
    Underline.Size = UDim2.new(0, 0, 0, 2)
    Underline.Position = UDim2.new(0.5, 0, 1, -2)
    Underline.BackgroundColor3 = Color3.fromRGB(75, 156, 255)
    Underline.BorderSizePixel = 0
    Underline.AnchorPoint = Vector2.new(0.5, 0)

    local Toggled = false
    ModBtn.MouseButton1Click:Connect(function()
        Toggled = not Toggled
        TweenService:Create(ModBtn, TweenInfo.new(0.2), {
            TextColor3 = Toggled and Color3.fromRGB(255, 255, 255) or Color3.fromRGB(180, 180, 180)
        }):Play()
        TweenService:Create(Underline, TweenInfo.new(0.3, Enum.EasingStyle.Quart), {
            Size = Toggled and UDim2.new(0.8, 0, 0, 2) or UDim2.new(0, 0, 0, 2)
        }):Play()
        Callback(Toggled)
    end)
end

-- Alt Toggle Logic
UserInputService.InputBegan:Connect(function(input, gpe)
    if not gpe and (input.KeyCode == Enum.KeyCode.LeftAlt or input.KeyCode == Enum.KeyCode.RightAlt) then
        MainContainer.Visible = not MainContainer.Visible
    end
end)

return Library
