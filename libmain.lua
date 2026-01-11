local UserInputService = game:GetService("UserInputService")
local TweenService = game:GetService("TweenService")
local Lighting = game:GetService("Lighting")

local Library = {}
local Categories = {}

-- Visual Kit
local function ApplyDesign(obj, radius)
    local corner = Instance.new("UICorner", obj)
    corner.CornerRadius = UDim.new(0, radius or 6)
    
    local stroke = Instance.new("UIStroke", obj)
    stroke.Thickness = 1.2
    stroke.Color = Color3.fromRGB(255, 255, 255)
    stroke.Transparency = 0.88
    stroke.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
end

-- 1. Create the Main HUD and Logo
local Screen = Instance.new("ScreenGui", game:GetService("CoreGui"))
Screen.Name = "ReliefUI_Premium"
Screen.IgnoreGuiInset = true

local MainContainer = Instance.new("Frame", Screen)
MainContainer.Size = UDim2.new(1, 0, 1, 0)
MainContainer.BackgroundTransparency = 1

-- RESTORED LOGO (Watermark)
local Logo = Instance.new("ImageLabel", MainContainer)
Logo.Name = "ReliefLogo"
Logo.AnchorPoint = Vector2.new(0, 1)
Logo.Position = UDim2.new(0, 20, 1, -20)
Logo.Size = UDim2.new(0, 160, 0, 110) -- Based on your 1.44 aspect ratio
Logo.Image = "http://www.roblox.com/asset/?id=17640797571"
Logo.BackgroundTransparency = 1

-- 2. Dragging Logic with Sway
local function EnableDrag(frame)
    local dragging, dragInput, dragStart, startPos
    frame.InputBegan:Connect(function(input)
        if input.UserInputType == Enum.UserInputType.MouseButton1 then
            dragging = true; dragStart = input.Position; startPos = frame.Position
        end
    end)
    UserInputService.InputChanged:Connect(function(input)
        if dragging and input.UserInputType == Enum.UserInputType.MouseMovement then
            local delta = input.Position - dragStart
            TweenService:Create(frame, TweenInfo.new(0.1), {
                Position = UDim2.new(startPos.X.Scale, startPos.X.Offset + delta.X, startPos.Y.Scale, startPos.Y.Offset + delta.Y)
            }):Play()
        end
    end)
    UserInputService.InputEnded:Connect(function(input)
        if input.UserInputType == Enum.UserInputType.MouseButton1 then dragging = false end
    end)
end

-- 3. Category Creation (Columns)
Library.addCategory = function(Name, IconId)
    local Column = Instance.new("Frame", MainContainer)
    Column.Name = Name
    Column.Size = UDim2.new(0, 190, 0, 35)
    Column.BackgroundColor3 = Color3.fromRGB(12, 12, 12)
    Column.Position = UDim2.new(0, 30 + (#Categories * 205), 0, 50)
    ApplyDesign(Column, 8)

    -- Icon
    local Icon = Instance.new("ImageLabel", Column)
    Icon.Size = UDim2.new(0, 20, 0, 20)
    Icon.Position = UDim2.new(0, 10, 0.5, -10)
    Icon.Image = IconId
    Icon.BackgroundTransparency = 1
    Icon.ImageColor3 = Color3.fromRGB(75, 156, 255)

    -- Title
    local Title = Instance.new("TextLabel", Column)
    Title.Size = UDim2.new(1, -40, 1, 0)
    Title.Position = UDim2.new(0, 35, 0, 0)
    Title.Text = Name
    Title.Font = Enum.Font.Ubuntu
    Title.TextColor3 = Color3.fromRGB(255, 255, 255)
    Title.TextSize = 14
    Title.TextXAlignment = Enum.TextXAlignment.Left
    Title.BackgroundTransparency = 1

    -- Module Holder
    local Holder = Instance.new("Frame", Column)
    Holder.Name = "Holder"
    Holder.Size = UDim2.new(1, 0, 0, 0)
    Holder.Position = UDim2.new(0, 0, 1, 5)
    Holder.BackgroundTransparency = 1
    
    local Layout = Instance.new("UIListLayout", Holder)
    Layout.Padding = UDim.new(0, 4)
    
    Layout:GetPropertyChangedSignal("AbsoluteContentSize"):Connect(function()
        Holder.Size = UDim2.new(1, 0, 0, Layout.AbsoluteContentSize.Y)
    end)

    EnableDrag(Column)
    
    local catData = {Container = Holder}
    Categories[Name] = catData
    table.insert(Categories, catData) -- For indexing
    return catData
end

-- 4. Module Creation
Library.addModule = function(CatName, ModName, Callback)
    local Cat = Categories[CatName]
    if not Cat then return end

    local Btn = Instance.new("TextButton", Cat.Container)
    Btn.Size = UDim2.new(1, 0, 0, 32)
    Btn.BackgroundColor3 = Color3.fromRGB(25, 25, 25)
    Btn.Text = "      " .. ModName
    Btn.Font = Enum.Font.Ubuntu
    Btn.TextColor3 = Color3.fromRGB(190, 190, 190)
    Btn.TextSize = 13
    Btn.TextXAlignment = Enum.TextXAlignment.Left
    Btn.AutoButtonColor = false
    ApplyDesign(Btn, 5)

    -- Toggle Indicator (Dot)
    local Dot = Instance.new("Frame", Btn)
    Dot.Size = UDim2.new(0, 6, 0, 6)
    Dot.Position = UDim2.new(0, 12, 0.5, -3)
    Dot.BackgroundColor3 = Color3.fromRGB(75, 156, 255)
    Dot.BackgroundTransparency = 1
    ApplyDesign(Dot, 100)

    local Active = false
    Btn.MouseButton1Click:Connect(function()
        Active = not Active
        TweenService:Create(Btn, TweenInfo.new(0.2), {
            BackgroundColor3 = Active and Color3.fromRGB(35, 35, 35) or Color3.fromRGB(25, 25, 25),
            TextColor3 = Active and Color3.fromRGB(255, 255, 255) or Color3.fromRGB(190, 190, 190)
        }):Play()
        TweenService:Create(Dot, TweenInfo.new(0.2), {BackgroundTransparency = Active and 0 or 1}):Play()
        Callback(Active)
    end)
end

-- Toggle visibility with Alt
UserInputService.InputBegan:Connect(function(input, gpe)
    if not gpe and (input.KeyCode == Enum.KeyCode.LeftAlt or input.KeyCode == Enum.KeyCode.RightAlt) then
        MainContainer.Visible = not MainContainer.Visible
    end
end)

return Library
