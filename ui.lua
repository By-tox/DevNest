local DevRect = {}
DevRect.__index = DevRect

function DevRect:Create(settings)
    local ScreenGui = Instance.new("ScreenGui")
    ScreenGui.Name = "DevRectUI"
    ScreenGui.ResetOnSpawn = false
    if syn and syn.protect_gui then
        syn.protect_gui(ScreenGui)
    end
    ScreenGui.Parent = game:GetService("CoreGui")

    local Main = Instance.new("Frame")
    Main.Name = "Main"
    Main.Parent = ScreenGui
    Main.AnchorPoint = Vector2.new(0.5,0.5)
    Main.Position = UDim2.new(0.5,0,0.5,0)
    Main.Size = UDim2.new(0,480,0,300)
    Main.BackgroundColor3 = Color3.fromRGB(20,20,20)
    Main.BorderSizePixel = 0
    Main.Active = true
    Main.Draggable = true
    Main.ClipsDescendants = true

    local UICorner = Instance.new("UICorner",Main)
    UICorner.CornerRadius = UDim.new(0,12)

    local Header = Instance.new("Frame",Main)
    Header.Size = UDim2.new(1,0,0,40)
    Header.BackgroundColor3 = Color3.fromRGB(30,30,30)
    Header.BorderSizePixel = 0
    local UICorner2 = Instance.new("UICorner",Header)
    UICorner2.CornerRadius = UDim.new(0,12)

    local Title = Instance.new("TextLabel",Header)
    Title.Size = UDim2.new(1,0,1,0)
    Title.BackgroundTransparency = 1
    Title.Text = settings.Title or "DevRect Hub"
    Title.TextColor3 = Color3.fromRGB(255,0,0)
    Title.Font = Enum.Font.GothamBold
    Title.TextSize = 20

    local TabsHolder = Instance.new("Frame",Main)
    TabsHolder.Position = UDim2.new(0,0,0,40)
    TabsHolder.Size = UDim2.new(0,120,1,-40)
    TabsHolder.BackgroundColor3 = Color3.fromRGB(25,25,25)
    TabsHolder.BorderSizePixel = 0

    local UICorner3 = Instance.new("UICorner",TabsHolder)
    UICorner3.CornerRadius = UDim.new(0,12)

    local UIListLayout = Instance.new("UIListLayout",TabsHolder)
    UIListLayout.Padding = UDim.new(0,2)
    UIListLayout.SortOrder = Enum.SortOrder.LayoutOrder

    local ContentFrame = Instance.new("Frame",Main)
    ContentFrame.Position = UDim2.new(0,130,0,50)
    ContentFrame.Size = UDim2.new(1,-140,1,-60)
    ContentFrame.BackgroundColor3 = Color3.fromRGB(18,18,18)
    ContentFrame.BorderSizePixel = 0
    local UICorner4 = Instance.new("UICorner",ContentFrame)
    UICorner4.CornerRadius = UDim.new(0,10)

    local Scroll = Instance.new("ScrollingFrame",ContentFrame)
    Scroll.Size = UDim2.new(1,0,1,0)
    Scroll.CanvasSize = UDim2.new(0,0,0,0)
    Scroll.BackgroundTransparency = 1
    Scroll.BorderSizePixel = 0
    Scroll.ScrollBarThickness = 3
    Scroll.ScrollBarImageColor3 = Color3.fromRGB(255,0,0)

    local UILayout = Instance.new("UIListLayout",Scroll)
    UILayout.Padding = UDim.new(0,6)
    UILayout.SortOrder = Enum.SortOrder.LayoutOrder

    local function UpdateCanvas()
        Scroll.CanvasSize = UDim2.new(0,0,0,UILayout.AbsoluteContentSize.Y + 10)
    end
    UILayout:GetPropertyChangedSignal("AbsoluteContentSize"):Connect(UpdateCanvas)

    local ui = {Main=Main, Tabs={}, CurrentTab=nil, Scroll=Scroll}
    setmetatable(ui,DevRect)
    return ui
end

function DevRect:Tab(tabData)
    local TabButton = Instance.new("TextButton")
    TabButton.Parent = self.Main:FindFirstChild("TabsHolder")
    TabButton.Size = UDim2.new(1,0,0,30)
    TabButton.BackgroundColor3 = Color3.fromRGB(30,30,30)
    TabButton.TextColor3 = Color3.fromRGB(255,255,255)
    TabButton.Text = tabData.Name or "Tab"
    TabButton.Font = Enum.Font.GothamBold
    TabButton.TextSize = 14
    TabButton.BorderSizePixel = 0

    local UICorner = Instance.new("UICorner",TabButton)
    UICorner.CornerRadius = UDim.new(0,8)

    local tab = {Name=tabData.Name, Buttons={}}
    table.insert(self.Tabs,tab)

    TabButton.MouseButton1Click:Connect(function()
        for _,child in pairs(self.Scroll:GetChildren()) do
            if child:IsA("Frame") then child:Destroy() end
        end
        self.CurrentTab = tab
    end)

    return setmetatable(tab,{__index=self})
end

function DevRect:AddButton(name,callback)
    local Btn = Instance.new("TextButton",self.Scroll)
    Btn.Size = UDim2.new(1,-10,0,35)
    Btn.BackgroundColor3 = Color3.fromRGB(25,25,25)
    Btn.TextColor3 = Color3.fromRGB(255,0,0)
    Btn.Font = Enum.Font.GothamBold
    Btn.TextSize = 15
    Btn.Text = name
    Btn.BorderSizePixel = 0
    local UICorner = Instance.new("UICorner",Btn)
    UICorner.CornerRadius = UDim.new(0,8)
    Btn.MouseButton1Click:Connect(function()
        pcall(callback)
    end)
end

function DevRect:AddToggle(name,callback)
    local Frame = Instance.new("Frame",self.Scroll)
    Frame.Size = UDim2.new(1,-10,0,35)
    Frame.BackgroundColor3 = Color3.fromRGB(25,25,25)
    Frame.BorderSizePixel = 0
    local UICorner = Instance.new("UICorner",Frame)
    UICorner.CornerRadius = UDim.new(0,8)

    local Label = Instance.new("TextLabel",Frame)
    Label.Size = UDim2.new(1,-50,1,0)
    Label.BackgroundTransparency = 1
    Label.Text = name
    Label.TextColor3 = Color3.fromRGB(255,255,255)
    Label.Font = Enum.Font.GothamBold
    Label.TextSize = 15
    Label.TextXAlignment = Enum.TextXAlignment.Left
    Label.Position = UDim2.new(0,10,0,0)

    local Toggle = Instance.new("TextButton",Frame)
    Toggle.Size = UDim2.new(0,30,0,20)
    Toggle.Position = UDim2.new(1,-40,0.5,-10)
    Toggle.BackgroundColor3 = Color3.fromRGB(50,50,50)
    Toggle.Text = ""
    Toggle.BorderSizePixel = 0
    local UICorner2 = Instance.new("UICorner",Toggle)
    UICorner2.CornerRadius = UDim.new(1,0)

    local state = false
    Toggle.MouseButton1Click:Connect(function()
        state = not state
        Toggle.BackgroundColor3 = state and Color3.fromRGB(255,0,0) or Color3.fromRGB(50,50,50)
        pcall(callback,state)
    end)
end

return DevRect
