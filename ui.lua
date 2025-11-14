--[[  
    DevRect UI Library – Full Version  
    By Medo  
]]--

local DevRect = {}

local CoreGui = game:GetService("CoreGui")
local UIS = game:GetService("UserInputService")

-- Drag Function
local function MakeDraggable(frame)
    local dragging, dragStart, startPos

    frame.InputBegan:Connect(function(input)
        if input.UserInputType == Enum.UserInputType.MouseButton1 then
            dragging = true
            dragStart = input.Position
            startPos = frame.Position
        end
    end)

    UIS.InputChanged:Connect(function(input)
        if dragging and input.UserInputType == Enum.UserInputType.MouseMovement then
            local delta = input.Position - dragStart
            frame.Position = UDim2.new(
                startPos.X.Scale,
                startPos.X.Offset + delta.X,
                startPos.Y.Scale,
                startPos.Y.Offset + delta.Y
            )
        end
    end)

    UIS.InputEnded:Connect(function(input)
        if input.UserInputType == Enum.UserInputType.MouseButton1 then
            dragging = false
        end
    end)
end

---------------------------------------------------
-- WINDOW
---------------------------------------------------
function DevRect:CreateWindow(data)
    local Window = {}
    Window.Title = data.Title or "DevRect"
    Window.SubTitle = data.SubTitle or ""

    -- ScreenGui
    local gui = Instance.new("ScreenGui")
    gui.Name = "DevRectUI"
    gui.Parent = CoreGui
    gui.ResetOnSpawn = false

    -- Main Window
    local main = Instance.new("Frame", gui)
    main.Size = UDim2.new(0, 600, 0, 380)
    main.Position = UDim2.new(0.5, -300, 0.5, -190)
    main.BackgroundColor3 = Color3.fromRGB(25, 25, 25)
    main.BorderSizePixel = 0

    MakeDraggable(main)

    -- Top Bar
    local bar = Instance.new("Frame", main)
    bar.Size = UDim2.new(1, 0, 0, 38)
    bar.BackgroundColor3 = Color3.fromRGB(35, 35, 35)
    bar.BorderSizePixel = 0

    local title = Instance.new("TextLabel", bar)
    title.Size = UDim2.new(1, -10, 1, 0)
    title.Position = UDim2.new(0, 5, 0, 0)
    title.BackgroundTransparency = 1
    title.Text = Window.Title .. " — " .. Window.SubTitle
    title.Font = Enum.Font.GothamBold
    title.TextSize = 14
    title.TextColor3 = Color3.fromRGB(255, 255, 255)
    title.TextXAlignment = Enum.TextXAlignment.Left

    -- Tabs Area
    local tabs = Instance.new("Frame", main)
    tabs.Size = UDim2.new(0, 130, 1, -38)
    tabs.Position = UDim2.new(0, 0, 0, 38)
    tabs.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
    tabs.BorderSizePixel = 0

    local tablist = Instance.new("UIListLayout", tabs)
    tablist.Padding = UDim.new(0, 4)

    -- Pages Area
    local pages = Instance.new("Frame", main)
    pages.Size = UDim2.new(1, -130, 1, -38)
    pages.Position = UDim2.new(0, 130, 0, 38)
    pages.BackgroundColor3 = Color3.fromRGB(20, 20, 20)
    pages.BorderSizePixel = 0

    Window.Tabs = tabs
    Window.Pages = pages

    ---------------------------------------------------
    -- CREATE TAB
    ---------------------------------------------------
    function Window:CreateTab(name)
        local Tab = {}

        local tabBtn = Instance.new("TextButton", Window.Tabs)
        tabBtn.Size = UDim2.new(1, 0, 0, 35)
        tabBtn.BackgroundColor3 = Color3.fromRGB(40, 40, 40)
        tabBtn.Font = Enum.Font.GothamBold
        tabBtn.TextSize = 13
        tabBtn.Text = name
        tabBtn.TextColor3 = Color3.fromRGB(255, 255, 255)

        local page = Instance.new("ScrollingFrame", Window.Pages)
        page.Size = UDim2.new(1, 0, 1, 0)
        page.BackgroundTransparency = 1
        page.BorderSizePixel = 0
        page.CanvasSize = UDim2.new(0, 0, 0, 0)
        page.ScrollBarThickness = 4
        page.Visible = false

        local layout = Instance.new("UIListLayout", page)
        layout.Padding = UDim.new(0, 5)

        tabBtn.MouseButton1Click:Connect(function()
            for _, p in pairs(Window.Pages:GetChildren()) do
                if p:IsA("ScrollingFrame") then
                    p.Visible = false
                end
            end
            page.Visible = true
        end)

        ---------------------------------------------------
        -- ELEMENT: BUTTON
        ---------------------------------------------------
        function Tab:AddButton(text, callback)
            local btn = Instance.new("TextButton", page)
            btn.Size = UDim2.new(1, -10, 0, 40)
            btn.Text = text
            btn.TextColor3 = Color3.fromRGB(255, 255, 255)
            btn.Font = Enum.Font.Gotham
            btn.TextSize = 14
            btn.BackgroundColor3 = Color3.fromRGB(50, 50, 50)

            btn.MouseButton1Click:Connect(function()
                if callback then callback() end
            end)
        end

        ---------------------------------------------------
        -- ELEMENT: TOGGLE
        ---------------------------------------------------
        function Tab:AddToggle(text, default, callback)
            local frame = Instance.new("Frame", page)
            frame.Size = UDim2.new(1, -10, 0, 40)
            frame.BackgroundColor3 = Color3.fromRGB(45, 45, 45)

            local lbl = Instance.new("TextLabel", frame)
            lbl.Size = UDim2.new(0.7, 0, 1, 0)
            lbl.BackgroundTransparency = 1
            lbl.Font = Enum.Font.Gotham
            lbl.TextSize = 13
            lbl.Text = text
            lbl.TextColor3 = Color3.fromRGB(255, 255, 255)
            lbl.TextXAlignment = Enum.TextXAlignment.Left

            local tog = Instance.new("TextButton", frame)
            tog.Size = UDim2.new(0.25, -5, 0.7, 0)
            tog.Position = UDim2.new(0.72, 0, 0.15, 0)
            tog.Font = Enum.Font.GothamBold
            tog.TextSize = 12

            local state = default
            tog.Text = state and "ON" or "OFF"
            tog.BackgroundColor3 = state and Color3.fromRGB(0, 255, 0) or Color3.fromRGB(255, 50, 50)

            tog.MouseButton1Click:Connect(function()
                state = not state
                tog.Text = state and "ON" or "OFF"
                tog.BackgroundColor3 = state and Color3.fromRGB(0, 255, 0) or Color3.fromRGB(255, 50, 50)
                if callback then callback(state) end
            end)
        end

        ---------------------------------------------------
        -- ELEMENT: SLIDER
        ---------------------------------------------------
        function Tab:AddSlider(text, min, max, default, callback)
            local frame = Instance.new("Frame", page)
            frame.Size = UDim2.new(1, -10, 0, 55)
            frame.BackgroundColor3 = Color3.fromRGB(45, 45, 45)

            local lbl = Instance.new("TextLabel", frame)
            lbl.Size = UDim2.new(1, -10, 0, 20)
            lbl.Text = text .. ": " .. default
            lbl.TextColor3 = Color3.fromRGB(255, 255, 255)
            lbl.Font = Enum.Font.Gotham
            lbl.TextSize = 13
            lbl.BackgroundTransparency = 1
            lbl.Position = UDim2.new(0, 5, 0, 2)

            local bar = Instance.new("Frame", frame)
            bar.Size = UDim2.new(1, -20, 0, 20)
            bar.Position = UDim2.new(0, 10, 0, 28)
            bar.BackgroundColor3 = Color3.fromRGB(30, 30, 30)

            local fill = Instance.new("Frame", bar)
            fill.BackgroundColor3 = Color3.fromRGB(0, 170, 255)
            fill.Size = UDim2.new((default - min) / (max - min), 0, 1, 0)

            bar.InputBegan:Connect(function(input)
                if input.UserInputType == Enum.UserInputType.MouseButton1 then
                    local function slide(move)
                        local scale = math.clamp((move.Position.X - bar.AbsolutePosition.X) / bar.AbsoluteSize.X, 0, 1)
                        local val = math.floor(min + (max - min) * scale)
                        fill.Size = UDim2.new(scale, 0, 1, 0)
                        lbl.Text = text .. ": " .. val
                        if callback then callback(val) end
                    end

                    slide(input)
                    local conn
                    conn = UIS.InputChanged:Connect(function(i)
                        if i.UserInputType == Enum.UserInputType.MouseMovement then
                            slide(i)
                        end
                    end)

                    UIS.InputEnded:Connect(function(i)
                        if i.UserInputType == Enum.UserInputType.MouseButton1 then
                            if conn then conn:Disconnect() end
                        end
                    end)
                end
            end)
        end

        ---------------------------------------------------
        -- ELEMENT: DROPDOWN
        ---------------------------------------------------
        function Tab:AddDropdown(text, list, callback)
            local frame = Instance.new("Frame", page)
            frame.Size = UDim2.new(1, -10, 0, 40)
            frame.BackgroundColor3 = Color3.fromRGB(45, 45, 45)

            local btn = Instance.new("TextButton", frame)
            btn.Size = UDim2.new(1, 0, 1, 0)
            btn.Text = text
            btn.Font = Enum.Font.Gotham
            btn.TextSize = 13
            btn.TextColor3 = Color3.fromRGB(255, 255, 255)
            btn.BackgroundTransparency = 1

            btn.MouseButton1Click:Connect(function()
                for _, option in ipairs(list) do
                    callback(option)
                end
            end)
        end

        return Tab
    end

    return Window
end

return DevRect
