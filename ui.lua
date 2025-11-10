--[[
     and desktop.
]]

local DevRect = {}
DevRect.__index = DevRect

--// Services
local TweenService = game:GetService("TweenService")
local UserInputService = game:GetService("UserInputService")
local Players = game:GetService("Players")
local localPlayer = Players.LocalPlayer

--// Helper function to create UI elements with properties
local function Create(instanceType, properties)
    local obj = Instance.new(instanceType)
    for prop, value in pairs(properties) do
        obj[prop] = value
    end
    return obj
end

--// Notification System
local function showNotification(title, text, duration, iconId)
    local notifGui = Create("ScreenGui", {
        Name = "DevRectNotification",
        Parent = game:GetService("CoreGui"),
        ZIndexBehavior = Enum.ZIndexBehavior.Sibling,
    })

    local frame = Create("Frame", {
        AnchorPoint = Vector2.new(1, 1),
        Position = UDim2.new(1, 300, 1, -20), -- Start off-screen
        Size = UDim2.new(0, 280, 0, 70),
        BackgroundColor3 = Color3.fromRGB(20, 20, 20),
        BackgroundTransparency = 0.1,
        Parent = notifGui,
    })
    Create("UICorner", { CornerRadius = UDim.new(0, 10), Parent = frame })
    Create("UIStroke", { Color = Color3.fromRGB(120, 0, 0), Thickness = 1.5, Parent = frame })

    Create("ImageLabel", {
        Image = "rbxassetid://" .. (iconId or 6031280882),
        Size = UDim2.new(0, 30, 0, 30),
        Position = UDim2.new(0, 15, 0.5, -15),
        BackgroundTransparency = 1,
        Parent = frame,
    })

    Create("TextLabel", {
        Text = title or "Notification",
        Font = Enum.Font.GothamBold,
        TextColor3 = Color3.fromRGB(255, 255, 255),
        TextSize = 16,
        Position = UDim2.new(0, 55, 0, 10),
        Size = UDim2.new(1, -65, 0, 20),
        TextXAlignment = Enum.TextXAlignment.Left,
        BackgroundTransparency = 1,
        Parent = frame,
    })

    Create("TextLabel", {
        Text = text or "",
        Font = Enum.Font.Gotham,
        TextColor3 = Color3.fromRGB(200, 200, 200),
        TextSize = 14,
        Position = UDim2.new(0, 55, 0, 35),
        Size = UDim2.new(1, -65, 0, 20),
        TextXAlignment = Enum.TextXAlignment.Left,
        BackgroundTransparency = 1,
        Parent = frame,
    })

    -- Animate in
    frame:TweenPosition(UDim2.new(1, -20, 1, -20), Enum.EasingDirection.Out, Enum.EasingStyle.Quad, 0.3, true)

    -- Animate out and destroy
    task.delay(duration or 3, function()
        if not frame or not frame.Parent then return end
        frame:TweenPosition(UDim2.new(1, 300, 1, -20), Enum.EasingDirection.In, Enum.EasingStyle.Quad, 0.3, true)
        task.wait(0.3)
        notifGui:Destroy()
    end)
end

-- Make it globally accessible
_G.DevRectShowNotification = showNotification

--// Main UI Creation
function DevRect:Create(config)
    -- Destroy any existing UI
    pcall(function()
        local oldGui = localPlayer.PlayerGui:FindFirstChild("DevRectUI")
        if oldGui then oldGui:Destroy() end
        local oldToggle = game:GetService("CoreGui"):FindFirstChild("DevRectToggle")
        if oldToggle then oldToggle:Destroy() end
    end)

    local self = setmetatable({}, DevRect)
    self.Tabs = {}
    self.CurrentTab = nil

    -- Main GUI container
    self.Gui = Create("ScreenGui", {
        Name = "DevRectUI",
        Parent = localPlayer:WaitForChild("PlayerGui"),
        IgnoreGuiInset = true,
        ResetOnSpawn = false,
    })

    -- Main Window
    self.MainWindow = Create("Frame", {
        Size = UDim2.new(0, 520, 0, 340),
        Position = UDim2.new(0.5, -260, 0.5, -170),
        BackgroundColor3 = Color3.fromRGB(0, 0, 0),
        BorderSizePixel = 0,
        Parent = self.Gui,
    })
    Create("UICorner", { CornerRadius = UDim.new(0, 16), Parent = self.MainWindow })
    Create("UIStroke", { Color = Color3.fromRGB(120, 0, 0), Thickness = 2, Parent = self.MainWindow })

    -- Header
    local header = Create("Frame", {
        Size = UDim2.new(1, 0, 0, 50),
        BackgroundColor3 = Color3.fromRGB(15, 15, 15),
        BorderSizePixel = 0,
        Parent = self.MainWindow,
    })
    Create("UICorner", { CornerRadius = UDim.new(0, 16), Parent = header })

    Create("TextLabel", {
        Text = config.Title or "DevRect Hub",
        Font = Enum.Font.GothamBold,
        TextSize = 20,
        TextColor3 = Color3.fromRGB(255, 255, 255),
        BackgroundTransparency = 1,
        Position = UDim2.new(0, 15, 0, 6),
        Size = UDim2.new(0.6, 0, 0, 25),
        TextXAlignment = Enum.TextXAlignment.Left,
        Parent = header,
    })

    local descLabel = Create("TextLabel", {
        Text = config.Description or "Modern UI - Black & Red",
        Font = Enum.Font.Gotham,
        TextSize = 10,
        TextColor3 = Color3.fromRGB(200, 200, 200),
        BackgroundTransparency = 1,
        Position = UDim2.new(0, 20, 0, 35),
        TextXAlignment = Enum.TextXAlignment.Left,
        Parent = header,
    })

    -- Close Button
    local closeBtn = Create("TextButton", {
        Size = UDim2.new(0, 35, 0, 35),
        Position = UDim2.new(1, -45, 0.5, -17.5),
        BackgroundColor3 = Color3.fromRGB(50, 0, 0),
        Text = "X",
        TextColor3 = Color3.fromRGB(255, 255, 255),
        Font = Enum.Font.GothamBold,
        TextSize = 20,
        Parent = header,
    })
    Create("UICorner", { CornerRadius = UDim.new(1, 0), Parent = closeBtn })
    closeBtn.MouseButton1Click:Connect(function() self:Destroy() end)

    -- Tabs Frame
    self.TabsFrame = Create("ScrollingFrame", {
        Size = UDim2.new(0, 130, 1, -60),
        Position = UDim2.new(0, 10, 0, 55),
        BackgroundColor3 = Color3.fromRGB(15, 15, 15),
        BorderSizePixel = 0,
        CanvasSize = UDim2.new(0, 0, 0, 0),
        AutomaticCanvasSize = Enum.AutomaticSize.Y,
        ScrollBarThickness = 4,
        ScrollBarImageColor3 = Color3.fromRGB(120, 0, 0),
        Parent = self.MainWindow,
    })
    Create("UICorner", { CornerRadius = UDim.new(0, 12), Parent = self.TabsFrame })
    Create("UIListLayout", {
        Padding = UDim.new(0, 10),
        HorizontalAlignment = Enum.HorizontalAlignment.Center,
        SortOrder = Enum.SortOrder.LayoutOrder,
        Parent = self.TabsFrame,
    })

    -- Content Frame
    local contentFrame = Create("Frame", {
        Size = UDim2.new(1, -155, 1, -70),
        Position = UDim2.new(0, 145, 0, 60),
        BackgroundColor3 = Color3.fromRGB(10, 10, 10),
        BorderSizePixel = 0,
        Parent = self.MainWindow,
    })
    Create("UICorner", { CornerRadius = UDim.new(0, 12), Parent = contentFrame })

    self.ContentScroll = Create("ScrollingFrame", {
        Size = UDim2.new(1, 0, 1, 0),
        CanvasSize = UDim2.new(0, 0, 0, 0),
        AutomaticCanvasSize = Enum.AutomaticSize.Y,
        ScrollBarThickness = 6,
        BackgroundTransparency = 1,
        Parent = contentFrame,
    })
    Create("UIListLayout", {
        Padding = UDim.new(0, 10),
        HorizontalAlignment = Enum.HorizontalAlignment.Center,
        SortOrder = Enum.SortOrder.LayoutOrder,
        Parent = self.ContentScroll,
    })

    -- Toggle Button
    self:CreateToggleButton()

    -- Welcome Notification
    task.delay(0.5, function()
        showNotification("Welcome!", "DevRect UI Loaded Successfully!", 4, 6031280882)
    end)

    return self
end

--// Destroy Method
function DevRect:Destroy()
    if self.Gui then self.Gui:Destroy() end
    if self.ToggleButton then self.ToggleButton:Destroy() end
end

--// Toggle Button for showing/hiding the UI
function DevRect:CreateToggleButton()
    self.ToggleButton = Create("ImageButton", {
        Name = "DevRectToggle",
        Size = UDim2.new(0, 45, 0, 45),
        Position = UDim2.new(0, 20, 0.5, -22.5),
        BackgroundColor3 = Color3.fromRGB(30, 0, 0),
        Image = "rbxassetid://6031280882",
        ImageColor3 = Color3.fromRGB(255, 80, 80),
        Parent = game:GetService("CoreGui"),
    })
    Create("UICorner", { CornerRadius = UDim.new(1, 0), Parent = self.ToggleButton })
    Create("UIStroke", { Color = Color3.fromRGB(120, 0, 0), Thickness = 2, Parent = self.ToggleButton })

    self.ToggleButton.MouseButton1Click:Connect(function()
        self.Gui.Enabled = not self.Gui.Enabled
    end)

    -- Drag functionality
    local dragging = false
    local dragStart, startPos
    self.ToggleButton.InputBegan:Connect(function(input)
        if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
            dragging = true
            dragStart = input.Position
            startPos = self.ToggleButton.Position
            input.Changed:Connect(function()
                if input.UserInputState == Enum.UserInputState.End then
                    dragging = false
                end
            end)
        end
    end)
    UserInputService.InputChanged:Connect(function(input)
        if dragging and (input.UserInputType == Enum.UserInputType.MouseMovement or input.UserInputType == Enum.UserInputType.Touch) then
            local delta = input.Position - dragStart
            self.ToggleButton.Position = UDim2.new(startPos.X.Scale, startPos.X.Offset + delta.X, startPos.Y.Scale, startPos.Y.Offset + delta.Y)
        end
    end)
end

--// Tab Management
function DevRect:Tab(tabConfig)
    local tabObject = {}
    tabObject.ParentUI = self
    tabObject.Elements = {}
    tabObject.ContentParent = self.ContentScroll

    local tabButton = Create("TextButton", {
        Size = UDim2.new(1, -10, 0, 35),
        BackgroundColor3 = Color3.fromRGB(25, 25, 25),
        Text = "",
        AutoButtonColor = false,
        Parent = self.TabsFrame,
    })
    Create("UICorner", { CornerRadius = UDim.new(0, 8), Parent = tabButton })

    local borderFrame = Create("Frame", {
        Size = UDim2.new(1, 0, 1, 0),
        BackgroundTransparency = 1,
        BorderColor3 = Color3.fromRGB(25, 25, 25), -- Initially hidden
        BorderSizePixel = 2,
        Parent = tabButton,
    })
    Create("UICorner", { CornerRadius = UDim.new(0, 8), Parent = borderFrame })

    Create("ImageLabel", {
        Size = UDim2.new(0, 20, 0, 20),
        Position = UDim2.new(0, 10, 0.5, -10),
        BackgroundTransparency = 1,
        Image = "rbxassetid://" .. tostring(tabConfig.Icon or 0),
        Parent = tabButton,
    })

    Create("TextLabel", {
        Size = UDim2.new(1, -40, 1, 0),
        Position = UDim2.new(0, 35, 0, 0),
        BackgroundTransparency = 1,
        Text = tabConfig.Name or "Tab",
        TextColor3 = Color3.fromRGB(255, 255, 255),
        Font = Enum.Font.Gotham,
        TextSize = 16,
        TextXAlignment = Enum.TextXAlignment.Left,
        Parent = tabButton,
    })

    tabButton.MouseButton1Click:Connect(function()
        -- Clear previous content
        for _, child in ipairs(self.ContentScroll:GetChildren()) do
            if not child:IsA("UIListLayout") then
                child:Destroy()
            end
        end

        -- De-select old tab
        if self.CurrentTab and self.CurrentTab.Button then
            self.CurrentTab.Button.BackgroundColor3 = Color3.fromRGB(25, 25, 25)
            self.CurrentTab.Border.BorderColor3 = Color3.fromRGB(25, 25, 25)
        end

        -- Select new tab
        tabButton.BackgroundColor3 = Color3.fromRGB(45, 0, 0)
        borderFrame.BorderColor3 = Color3.fromRGB(180, 0, 0)
        self.CurrentTab = { Button = tabButton, Border = borderFrame }

        -- Add new elements
        for _, element in ipairs(tabObject.Elements) do
            element:Create(tabObject.ContentParent)
        end
    end)

    -- Store tab info
    table.insert(self.Tabs, {
        Button = tabButton,
        Object = tabObject,
        Border = borderFrame
    })

    -- Auto-select the first tab
    if #self.Tabs == 1 then
        task.wait() -- Wait a frame for UI to be ready
        tabButton.MouseButton1Click:Invoke()
    end

    -- Return an object that can have elements added to it
    local publicTab = {}
    
    local function addElement(elementType, config)
        local element = {
            Type = elementType,
            Config = config,
            Create = function(parent)
                if elementType == "Button" then tabObject:_AddButton(config, parent)
                elseif elementType == "Toggle" then tabObject:_AddToggle(config, parent)
                elseif elementType == "Slider" then tabObject:_AddSlider(config, parent)
                elseif elementType == "Dropdown" then tabObject:_AddDropdown(config, parent)
                end
            end
        }
        table.insert(tabObject.Elements, element)
        return publicTab
    end

    publicTab.AddButton = function(cfg) return addElement("Button", cfg) end
    publicTab.AddToggle = function(cfg) return addElement("Toggle", cfg) end
    publicTab.AddSlider = function(cfg) return addElement("Slider", cfg) end
    publicTab.AddDropdown = function(cfg) return addElement("Dropdown", cfg) end

    return publicTab
end

--// Element Creation Methods (internal to tab objects)
local function addSeparator(parent)
    Create("Frame", {
        Size = UDim2.new(0.9, 0, 0, 1),
        BackgroundColor3 = Color3.fromRGB(60, 0, 0),
        LayoutOrder = 999, -- Ensure it's at the bottom
        Parent = parent,
    })
end

function DevRect:_AddButton(config, parent)
    local btn = Create("TextButton", {
        Size = UDim2.new(0.9, 0, 0, 35),
        BackgroundColor3 = Color3.fromRGB(25, 25, 25),
        Text = config.Name or "Button",
        TextColor3 = Color3.fromRGB(255, 255, 255),
        Font = Enum.Font.GothamBold,
        TextSize = 16,
        Parent = parent,
    })
    Create("UICorner", { CornerRadius = UDim.new(0, 8), Parent = btn })
    btn.MouseButton1Click:Connect(function()
        if config.Callback then pcall(config.Callback) end
    end)
    addSeparator(parent)
end

function DevRect:_AddToggle(config, parent)
    local state = config.Default or false
    
    local frame = Create("Frame", {
        Size = UDim2.new(0.9, 0, 0, 35),
        BackgroundTransparency = 1,
        Parent = parent,
    })

    Create("TextLabel", {
        Text = config.Name or "Toggle",
        TextColor3 = Color3.fromRGB(255, 255, 255),
        Size = UDim2.new(1, -50, 1, 0),
        Font = Enum.Font.Gotham,
        TextSize = 16,
        BackgroundTransparency = 1,
        TextXAlignment = Enum.TextXAlignment.Left,
        Parent = frame,
    })

    local toggleBtn = Create("TextButton", {
        Size = UDim2.new(0, 40, 0, 25),
        Position = UDim2.new(1, -45, 0.5, -12.5),
        Font = Enum.Font.GothamBold,
        TextSize = 14,
        Parent = frame,
    })
    Create("UICorner", { CornerRadius = UDim.new(0, 8), Parent = toggleBtn })

    local function updateVisuals()
        toggleBtn.Text = state and "ON" or "OFF"
        toggleBtn.BackgroundColor3 = state and Color3.fromRGB(120, 0, 0) or Color3.fromRGB(50, 0, 0)
        toggleBtn.TextColor3 = state and Color3.fromRGB(255, 255, 255) or Color3.fromRGB(200, 200, 200)
    end

    toggleBtn.MouseButton1Click:Connect(function()
        state = not state
        updateVisuals()
        if config.Callback then pcall(config.Callback, state) end
    end)
    
    updateVisuals()
    addSeparator(parent)
end

function DevRect:_AddSlider(config, parent)
    local container = Create("Frame", {
        Size = UDim2.new(0.9, 0, 0, 50),
        BackgroundTransparency = 1,
        Parent = parent,
    })

    local valueLabel = Create("TextLabel", {
        Text = (config.Name or "Slider") .. ": " .. (config.Default or config.Min or 0),
        Size = UDim2.new(1, 0, 0, 20),
        BackgroundTransparency = 1,
        TextColor3 = Color3.fromRGB(255, 255, 255),
        Font = Enum.Font.Gotham,
        TextSize = 14,
        TextXAlignment = Enum.TextXAlignment.Left,
        Parent = container,
    })

    local slider = Create("Frame", {
        Size = UDim2.new(1, 0, 0, 10),
        Position = UDim2.new(0, 0, 0, 25),
        BackgroundColor3 = Color3.fromRGB(40, 0, 0),
        Parent = container,
    })
    Create("UICorner", { CornerRadius = UDim.new(1, 0), Parent = slider })

    local bar = Create("Frame", {
        BackgroundColor3 = Color3.fromRGB(120, 0, 0),
        Size = UDim2.new((config.Default - config.Min) / (config.Max - config.Min), 0, 1, 0),
        Parent = slider,
    })
    Create("UICorner", { CornerRadius = UDim.new(1, 0), Parent = bar })

    local knob = Create("Frame", {
        Size = UDim2.new(0, 16, 0, 16),
        Position = UDim2.new(bar.Size.X.Scale, -8, 0.5, -8),
        BackgroundColor3 = Color3.fromRGB(255, 50, 50),
        BorderSizePixel = 0,
        Parent = slider,
    })
    Create("UICorner", { CornerRadius = UDim.new(1, 0), Parent = knob })

    local function updateSlider(inputPos)
        local percent = math.clamp((inputPos.X - slider.AbsolutePosition.X) / slider.AbsoluteSize.X, 0, 1)
        local value = math.floor(((config.Max - config.Min) * percent) + config.Min + 0.5)
        
        bar.Size = UDim2.new(percent, 0, 1, 0)
        knob.Position = UDim2.new(percent, -8, 0.5, -8)
        valueLabel.Text = string.format("%s: %d", config.Name or "Slider", value)
        
        if config.Callback then pcall(config.Callback, value) end
    end

    slider.InputBegan:Connect(function(input)
        if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
            updateSlider(input.Position)
            local conn
            conn = UserInputService.InputChanged:Connect(function(inp)
                if inp.UserInputType == Enum.UserInputType.MouseMovement or inp.UserInputType == Enum.UserInputType.Touch then
                    updateSlider(inp.Position)
                end
            end)
            UserInputService.InputEnded:Connect(function(inp)
                if inp == input then conn:Disconnect() end
            end)
        end
    end)
    addSeparator(parent)
end

function DevRect:_AddDropdown(config, parent)
    local isOpen = false
    local selectedOption = config.Options[1]

    local dropdownBtn = Create("TextButton", {
        Size = UDim2.new(0.9, 0, 0, 35),
        BackgroundColor3 = Color3.fromRGB(25, 25, 25),
        Font = Enum.Font.Gotham,
        TextSize = 16,
        Parent = parent,
    })
    Create("UICorner", { CornerRadius = UDim.new(0, 8), Parent = dropdownBtn })

    local listContainer = Create("Frame", {
        Size = UDim2.new(0.9, 0, 0),
        BackgroundColor3 = Color3.fromRGB(15, 15, 15),
        Visible = false,
        ClipsDescendants = true,
        Parent = parent,
    })
    Create("UICorner", { CornerRadius = UDim.new(0, 8), Parent = listContainer })
    Create("UIListLayout", { Padding = UDim.new(0, 2), Parent = listContainer })

    local function updateText()
        dropdownBtn.Text = (config.Name or "Dropdown") .. ": " .. tostring(selectedOption) .. (isOpen and " ▲" or " ▼")
    end

    local function toggleDropdown()
        isOpen = not isOpen
        listContainer.Visible = true
        local targetSize = isOpen and UDim2.new(0.9, 0, 0, #config.Options * 32 + 4) or UDim2.new(0.9, 0, 0, 0)
        TweenService:Create(listContainer, TweenInfo.new(0.2), { Size = targetSize }):Play()
        if not isOpen then task.delay(0.2, function() if listContainer.Parent then listContainer.Visible = false end end) end
        updateText()
    end

    dropdownBtn.MouseButton1Click:Connect(toggleDropdown)

    for _, optionName in ipairs(config.Options) do
        local optBtn = Create("TextButton", {
            Size = UDim2.new(1, -6, 0, 30),
            BackgroundColor3 = Color3.fromRGB(40, 40, 40),
            Text = tostring(optionName),
            TextColor3 = Color3.fromRGB(255, 255, 255),
            Font = Enum.Font.Gotham,
            TextSize = 15,
            Parent = listContainer,
        })
        Create("UICorner", { CornerRadius = UDim.new(0, 6), Parent = optBtn })
        optBtn.MouseButton1Click:Connect(function()
            selectedOption = optionName
            if config.Callback then pcall(config.Callback, selectedOption) end
            toggleDropdown()
        end)
    end
    
    updateText()
    addSeparator(parent)
end

return DevRect
