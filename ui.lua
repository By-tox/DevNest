local DevRect = {}

local Players = game:GetService(â€œPlayersâ€‌) local UIS =
game:GetService(â€œUserInputServiceâ€‌) local TweenService =
game:GetService(â€œTweenServiceâ€‌) local CoreGui =
game:GetService(â€œCoreGuiâ€‌) local player = Players.LocalPlayer

pcall(function() local old =
player.PlayerGui:FindFirstChild(â€œDevRectUIâ€‌) if old then old:Destroy()
end end)

local gui = Instance.new(â€œScreenGuiâ€‌) gui.Name = â€œDevRectUIâ€‌
gui.IgnoreGuiInset = true gui.ResetOnSpawn = false gui.Parent =
player:WaitForChild(â€œPlayerGuiâ€‌)

local main = Instance.new(â€œFrameâ€‌) main.Size = UDim2.new(0, 520, 0, 340)
main.Position = UDim2.new(0.5, -260, 0.5, -170) main.BackgroundColor3 =
Color3.fromRGB(0, 0, 0) main.BorderSizePixel = 0 main.Parent = gui
Instance.new(â€œUICornerâ€‌, main).CornerRadius = UDim.new(0, 16)

local stroke = Instance.new(â€œUIStrokeâ€‌, main) stroke.Color =
Color3.fromRGB(120, 0, 0) stroke.Thickness = 2

local header = Instance.new(â€œFrameâ€‌, main) header.Size = UDim2.new(1, 0,
0, 50) header.BackgroundColor3 = Color3.fromRGB(15, 15, 15)
header.BorderSizePixel = 0 Instance.new(â€œUICornerâ€‌, header).CornerRadius
= UDim.new(0, 16)

local title = Instance.new(â€œTextLabelâ€‌, header) title.Text = â€œDevRect |
v1.0â€‌ title.Font = Enum.Font.GothamBold title.TextSize = 20
title.TextColor3 = Color3.fromRGB(255, 255, 255)
title.BackgroundTransparency = 1 title.Position = UDim2.new(0, 15, 0, 6)
title.Size = UDim2.new(0.6, 0, 0, 25) title.TextXAlignment =
Enum.TextXAlignment.Left

local desc = Instance.new(â€œTextLabelâ€‌, header) desc.Text = â€œdevelopment
brainrotâ€‌ desc.Font = Enum.Font.Gotham desc.TextSize = 10
desc.TextColor3 = Color3.fromRGB(200, 200, 200)
desc.BackgroundTransparency = 1 desc.Position = UDim2.new(0, 20, 0, 35)
desc.TextXAlignment = Enum.TextXAlignment.Left

local closeBtn = Instance.new(â€œTextButtonâ€‌, header) closeBtn.Size =
UDim2.new(0, 35, 0, 35) closeBtn.Position = UDim2.new(1, -45, 0.5, -17)
closeBtn.BackgroundColor3 = Color3.fromRGB(50, 0, 0) closeBtn.Text = â€œXâ€‌
closeBtn.TextColor3 = Color3.fromRGB(255, 255, 255) closeBtn.Font =
Enum.Font.GothamBold closeBtn.TextSize = 20 Instance.new(â€œUICornerâ€‌,
closeBtn).CornerRadius = UDim.new(1, 0)
closeBtn.MouseButton1Click:Connect(function() gui:Destroy() end)

local minimizeBtn = Instance.new(â€œTextButtonâ€‌, header) minimizeBtn.Size
= UDim2.new(0, 35, 0, 35) minimizeBtn.Position = UDim2.new(1, -85, 0.5,
-17) minimizeBtn.BackgroundColor3 = Color3.fromRGB(50, 0, 0)
minimizeBtn.Text = â€œâ€“â€‌ minimizeBtn.TextColor3 = Color3.fromRGB(255, 255,
255) minimizeBtn.Font = Enum.Font.GothamBold minimizeBtn.TextSize = 22
minimizeBtn.AutoButtonColor = false Instance.new(â€œUICornerâ€‌,
minimizeBtn).CornerRadius = UDim.new(1, 0)

local minimized = false local fullSize = UDim2.new(0, 520, 0, 340) local
miniSize = UDim2.new(0, 180, 0, 60)

minimizeBtn.MouseEnter:Connect(function()
TweenService:Create(minimizeBtn, TweenInfo.new(0.15), { BackgroundColor3
= Color3.fromRGB(80, 0, 0) }):Play() end)

minimizeBtn.MouseLeave:Connect(function()
TweenService:Create(minimizeBtn, TweenInfo.new(0.15), { BackgroundColor3
= Color3.fromRGB(50, 0, 0) }):Play() end)

local tabsFrame = Instance.new(â€œScrollingFrameâ€‌, main) tabsFrame.Size =
UDim2.new(0, 130, 1, -60) tabsFrame.Position = UDim2.new(0, 10, 0, 55)
tabsFrame.BackgroundColor3 = Color3.fromRGB(15, 15, 15)
tabsFrame.BorderSizePixel = 0 tabsFrame.CanvasSize = UDim2.new(0, 0, 0,
0) tabsFrame.AutomaticCanvasSize = Enum.AutomaticSize.Y
tabsFrame.ScrollBarThickness = 6 tabsFrame.ScrollBarImageColor3 =
Color3.fromRGB(120, 0, 0) Instance.new(â€œUICornerâ€‌,
tabsFrame).CornerRadius = UDim.new(0, 12)

local tabsLayout = Instance.new(â€œUIListLayoutâ€‌, tabsFrame)
tabsLayout.Padding = UDim.new(0, 10) tabsLayout.HorizontalAlignment =
Enum.HorizontalAlignment.Center

local contentFrame = Instance.new(â€œFrameâ€‌, main) contentFrame.Size =
UDim2.new(1, -155, 1, -70) contentFrame.Position = UDim2.new(0, 145, 0,
60) contentFrame.BackgroundColor3 = Color3.fromRGB(10, 10, 10)
contentFrame.BorderSizePixel = 0 Instance.new(â€œUICornerâ€‌,
contentFrame).CornerRadius = UDim.new(0, 12)

local scroll = Instance.new(â€œScrollingFrameâ€‌, contentFrame) scroll.Size
= UDim2.new(1, 0, 1, 0) scroll.CanvasSize = UDim2.new(0, 0, 0, 1000)
scroll.ScrollBarThickness = 6 scroll.BackgroundTransparency = 1
scroll.AutomaticCanvasSize = Enum.AutomaticSize.Y

local listLayout = Instance.new(â€œUIListLayoutâ€‌, scroll)
listLayout.Padding = UDim.new(0, 10) listLayout.HorizontalAlignment =
Enum.HorizontalAlignment.Center

minimizeBtn.MouseButton1Click:Connect(function() minimized = not
minimized

    if minimized then
        for _, v in ipairs({tabsFrame, contentFrame, desc}) do
            TweenService:Create(v, TweenInfo.new(0.15), {BackgroundTransparency = 1}):Play()
            task.delay(0.15, function() v.Visible = false end)
        end

        TweenService:Create(main, TweenInfo.new(0.25, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {
            Size = miniSize
        }):Play()

        minimizeBtn.Text = "â–¢"

    else
        TweenService:Create(main, TweenInfo.new(0.25, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {
            Size = fullSize
        }):Play()

        task.delay(0.25, function()
            for _, v in ipairs({tabsFrame, contentFrame, desc}) do
                v.Visible = true
                TweenService:Create(v, TweenInfo.new(0.15), {BackgroundTransparency = 0}):Play()
            end
        end)

        minimizeBtn.Text = "â€“"
    end

end)

local function Separator(parent) local sep = Instance.new(â€œFrameâ€‌,
parent) sep.Size = UDim2.new(0.9, 0, 0, 1) sep.BackgroundColor3 =
Color3.fromRGB(60, 0, 0) end

local function CreateButton(txt, parent, callback) local btn =
Instance.new(â€œTextButtonâ€‌, parent) btn.Size = UDim2.new(0.9, 0, 0, 35)
btn.BackgroundColor3 = Color3.fromRGB(25, 25, 25) btn.Text = txt
btn.TextColor3 = Color3.fromRGB(255, 255, 255) btn.Font =
Enum.Font.GothamBold btn.TextSize = 16 btn.AutoButtonColor = true
btn.Active = true btn.Selectable = true btn.ZIndex = 10
Instance.new(â€œUICornerâ€‌, btn).CornerRadius = UDim.new(0, 8)

    local function pressEffect()
        btn:TweenSize(UDim2.new(0.88, 0, 0, 33), "Out", "Quad", 0.05, true)
        task.wait(0.05)
        btn:TweenSize(UDim2.new(0.9, 0, 0, 35), "Out", "Quad", 0.1, true)
    end

    btn.MouseButton1Click:Connect(function()
        pressEffect()
        if callback then
            callback()
        end
    end)

    btn.TouchTap:Connect(function()
        pressEffect()
        if callback then
            callback()
        end
    end)

    UIS.InputBegan:Connect(function(input, processed)
        if processed then return end
        if input.UserInputType == Enum.UserInputType.Gamepad1 and input.KeyCode == Enum.KeyCode.ButtonA then
            if UIS:GetFocusedTextBox() == nil and btn:IsFocused() then
                pressEffect()
                if callback then
                    callback()
                end
            end
        end
    end)

    Separator(parent)
    return btn

end

local function CreateToggle(txt, parent) local frame =
Instance.new(â€œFrameâ€‌, parent) frame.Size = UDim2.new(0.9, 0, 0, 35)
frame.BackgroundTransparency = 1

    local label = Instance.new("TextLabel", frame)
    label.Text = txt
    label.TextColor3 = Color3.fromRGB(255, 255, 255)
    label.Size = UDim2.new(1, -40, 1, 0)
    label.Font = Enum.Font.Gotham
    label.TextSize = 16
    label.BackgroundTransparency = 1
    label.TextXAlignment = Enum.TextXAlignment.Left

    local toggle = Instance.new("TextButton", frame)
    toggle.Size = UDim2.new(0, 35, 0, 25)
    toggle.Position = UDim2.new(1, -40, 0.5, -12)
    toggle.Text = "OFF"
    toggle.Font = Enum.Font.Gotham
    toggle.TextSize = 14
    toggle.BackgroundColor3 = Color3.fromRGB(50, 0, 0)
    Instance.new("UICorner", toggle).CornerRadius = UDim.new(0, 8)

    local state = false
    toggle.MouseButton1Click:Connect(function()
        state = not state
        toggle.Text = state and "ON" or "OFF"
        toggle.BackgroundColor3 = state and Color3.fromRGB(120, 0, 0) or Color3.fromRGB(50, 0, 0)
    end)
    Separator(parent)

end

local function CreateSlider(name, parent) local container =
Instance.new(â€œFrameâ€‌, parent) container.Size = UDim2.new(0.9, 0, 0, 50)
container.BackgroundTransparency = 1

    local label = Instance.new("TextLabel", container)
    label.Text = name or "Slider"
    label.Size = UDim2.new(1, 0, 0, 20)
    label.Position = UDim2.new(0, 0, 0, 0)
    label.BackgroundTransparency = 1
    label.TextColor3 = Color3.fromRGB(255, 255, 255)
    label.Font = Enum.Font.Gotham
    label.TextSize = 14
    label.TextXAlignment = Enum.TextXAlignment.Left

    local slider = Instance.new("Frame", container)
    slider.Size = UDim2.new(1, 0, 0, 10)
    slider.Position = UDim2.new(0, 0, 0, 25)
    slider.BackgroundColor3 = Color3.fromRGB(40, 0, 0)
    slider.BorderSizePixel = 0
    Instance.new("UICorner", slider).CornerRadius = UDim.new(1, 0)

    local bar = Instance.new("Frame", slider)
    bar.BackgroundColor3 = Color3.fromRGB(120, 0, 0)
    bar.Size = UDim2.new(0, 0, 1, 0)
    bar.BorderSizePixel = 0
    Instance.new("UICorner", bar).CornerRadius = UDim.new(1, 0)

    local knob = Instance.new("Frame", slider)
    knob.Size = UDim2.new(0, 16, 0, 16)
    knob.Position = UDim2.new(0, -8, 0.5, -8)
    knob.BackgroundColor3 = Color3.fromRGB(255, 50, 50)
    knob.BorderSizePixel = 0
    Instance.new("UICorner", knob).CornerRadius = UDim.new(1, 0)

    local value = 0
    local changed = Instance.new("BindableEvent")

    local function updateSlider(input)
        local x = input.Position.X - slider.AbsolutePosition.X
        local width = slider.AbsoluteSize.X
        local percent = math.clamp(x / width, 0, 1)
        value = math.floor(percent * 100)
        bar.Size = UDim2.new(percent, 0, 1, 0)
        knob.Position = UDim2.new(percent, -8, 0.5, -8)
        label.Text = name .. ": " .. value
        changed:Fire(value)
    end

    local moveConn
    local function startDrag(input)
        if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
            updateSlider(input)
            moveConn = UIS.InputChanged:Connect(function(inp)
                if inp.UserInputType == Enum.UserInputType.MouseMovement or inp.UserInputType == Enum.UserInputType.Touch then
                    updateSlider(inp)
                end
            end)
        end
    end

    local function endDrag(input)
        if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
            if moveConn then
                moveConn:Disconnect()
                moveConn = nil
            end
        end
    end

    slider.InputBegan:Connect(startDrag)
    UIS.InputEnded:Connect(endDrag)

    return {
        Container = container,
        Slider = slider,
        Bar = bar,
        Knob = knob,
        Label = label,
        Changed = changed.Event,
        GetValue = function() return value end
    }

end

local function CreateTab(info) local tab = Instance.new(â€œTextButtonâ€‌,
tabsFrame) tab.Name = info.Name tab.Size = UDim2.new(1, -20, 0, 40)
tab.BackgroundColor3 = Color3.fromRGB(25, 25, 25) tab.Text = â€œâ€‌
tab.AutoButtonColor = false Instance.new(â€œUICornerâ€‌, tab).CornerRadius =
UDim.new(0, 8)

    local borderFrame = Instance.new("Frame", tab)
    borderFrame.Size = UDim2.new(1, 0, 1, 0)
    borderFrame.BackgroundTransparency = 1
    borderFrame.BorderSizePixel = 2
    borderFrame.BorderColor3 = Color3.fromRGB(25, 25, 25)
    Instance.new("UICorner", borderFrame).CornerRadius = UDim.new(0, 8)

    local label = Instance.new("TextLabel", tab)
    label.Size = UDim2.new(1, 0, 1, 0)
    label.BackgroundTransparency = 1
    label.Text = info.Name
    label.TextColor3 = Color3.fromRGB(255, 255, 255)
    label.Font = Enum.Font.Gotham
    label.TextSize = 16
    label.TextXAlignment = Enum.TextXAlignment.Left

    tab.MouseButton1Click:Connect(function()
        for _, c in ipairs(scroll:GetChildren()) do
            if not c:IsA("UIListLayout") then
                c:Destroy()
            end
        end
        info.Callback(scroll)

        if DevRect.currentTab then
            DevRect.currentTab.BackgroundColor3 = Color3.fromRGB(25, 25, 25)
            DevRect.currentTab:FindFirstChildOfClass("Frame").BorderColor3 = Color3.fromRGB(25, 25, 25)
        end

        tab.BackgroundColor3 = Color3.fromRGB(45, 0, 0)
        borderFrame.BorderColor3 = Color3.fromRGB(180, 0, 0)

        DevRect.currentTab = tab
    end)

end

local tabs = {}

function DevRect.AddTab(name, callback) local info = {Name = name,
Callback = callback} table.insert(tabs, info) CreateTab(info) end

function DevRect.CreateButton(txt, parent, callback) return
CreateButton(txt, parent, callback) end

function DevRect.CreateToggle(txt, parent) return CreateToggle(txt,
parent) end

function DevRect.CreateSlider(name, parent) return CreateSlider(name,
parent) end

local function ShowNotification(title, message, duration, iconId) local
notif = Instance.new(â€œFrameâ€‌) notif.Size = UDim2.new(0, 300, 0, 60)
notif.BackgroundColor3 = Color3.fromRGB(15, 15, 15)
notif.BorderSizePixel = 0 notif.LayoutOrder = -1
Instance.new(â€œUICornerâ€‌, notif).CornerRadius = UDim.new(0, 8)

    local notifStroke = Instance.new("UIStroke", notif)
    notifStroke.Color = Color3.fromRGB(120, 0, 0)
    notifStroke.Thickness = 2

    local icon = Instance.new("ImageLabel", notif)
    icon.Size = UDim2.new(0, 40, 0, 40)
    icon.Position = UDim2.new(0, 10, 0.5, -20)
    icon.BackgroundTransparency = 1
    icon.Image = "rbxassetid://" .. (iconId or 6031280882)
    icon.ImageColor3 = Color3.fromRGB(255, 80, 80)

    local titleLabel = Instance.new("TextLabel", notif)
    titleLabel.Text = title
    titleLabel.Size = UDim2.new(1, -60, 0, 20)
    titleLabel.Position = UDim2.new(0, 60, 0, 5)
    titleLabel.BackgroundTransparency = 1
    titleLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
    titleLabel.Font = Enum.Font.GothamBold
    titleLabel.TextSize = 16
    titleLabel.TextXAlignment = Enum.TextXAlignment.Left

    local messageLabel = Instance.new("TextLabel", notif)
    messageLabel.Text = message
    messageLabel.Size = UDim2.new(1, -60, 0, 20)
    messageLabel.Position = UDim2.new(0, 60, 0, 25)
    messageLabel.BackgroundTransparency = 1
    messageLabel.TextColor3 = Color3.fromRGB(200, 200, 200)
    messageLabel.Font = Enum.Font.Gotham
    messageLabel.TextSize = 12
    messageLabel.TextXAlignment = Enum.TextXAlignment.Left
    messageLabel.TextWrapped = true

    notif.Parent = DevRect.notifContainer

    TweenService:Create(notif, TweenInfo.new(0.3, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {
        Size = UDim2.new(0, 300, 0, 60)
    }):Play()

    task.delay(duration or 5, function()
        TweenService:Create(notif, TweenInfo.new(0.3, Enum.EasingStyle.Quad, Enum.EasingDirection.In), {
            Size = UDim2.new(0, 300, 0, 0)
        }):Play()
        task.delay(0.3, function()
            notif:Destroy()
        end)
    end)

end

function DevRect.ShowNotification(title, message, duration, iconId)
ShowNotification(title, message, duration, iconId) end

local UI_NAME = â€œDevRectUIâ€‌ local ICON_ID = 6031280882

local toggleBtn = Instance.new(â€œImageButtonâ€‌) toggleBtn.Name =
â€œDevRectToggleâ€‌ toggleBtn.Size = UDim2.new(0, 45, 0, 45)
toggleBtn.Position = UDim2.new(0, 20, 0.5, -22)
toggleBtn.BackgroundColor3 = Color3.fromRGB(30, 0, 0) toggleBtn.Image =
â€œrbxassetid://â€‌ .. ICON_ID toggleBtn.ImageColor3 = Color3.fromRGB(255,
80, 80) toggleBtn.Parent = CoreGui Instance.new(â€œUICornerâ€‌,
toggleBtn).CornerRadius = UDim.new(1, 0) local strokeToggle =
Instance.new(â€œUIStrokeâ€‌, toggleBtn) strokeToggle.Color =
Color3.fromRGB(120, 0, 0) strokeToggle.Thickness = 2

local dragging = false local dragStart, startPos
toggleBtn.InputBegan:Connect(function(input) if input.UserInputType ==
Enum.UserInputType.MouseButton1 or input.UserInputType ==
Enum.UserInputType.Touch then dragging = true dragStart = input.Position
startPos = toggleBtn.Position end end)

UIS.InputChanged:Connect(function(input) if dragging and
(input.UserInputType == Enum.UserInputType.MouseMovement or
input.UserInputType == Enum.UserInputType.Touch) then local delta =
input.Position - dragStart toggleBtn.Position =
UDim2.new(startPos.X.Scale, startPos.X.Offset + delta.X,
startPos.Y.Scale, startPos.Y.Offset + delta.Y) end end)

UIS.InputEnded:Connect(function(input) if input.UserInputType ==
Enum.UserInputType.MouseButton1 or input.UserInputType ==
Enum.UserInputType.Touch then dragging = false end end)

local ui = CoreGui:FindFirstChild(UI_NAME) or
player.PlayerGui:FindFirstChild(UI_NAME)
toggleBtn.MouseButton1Click:Connect(function() if ui then ui.Enabled =
not ui.Enabled end end)

local parentGui = game:GetService(â€œCoreGuiâ€‌) local notifContainer =
Instance.new(â€œFrameâ€‌) notifContainer.Name = â€œDevRectNotificationsâ€‌
notifContainer.Size = UDim2.new(0, 300, 0, 0) notifContainer.AnchorPoint
= Vector2.new(1, 0) notifContainer.Position = UDim2.new(1, -10, 0, 10)
notifContainer.BackgroundTransparency = 1 notifContainer.Parent =
parentGui notifContainer.ClipsDescendants = false

local layout = Instance.new(â€œUIListLayoutâ€‌, notifContainer)
layout.SortOrder = Enum.SortOrder.LayoutOrder layout.Padding =
UDim.new(0, 8) layout.VerticalAlignment = Enum.VerticalAlignment.Top

DevRect.notifContainer = notifContainer DevRect.gui = gui DevRect.main =
main DevRect.tabsFrame = tabsFrame DevRect.contentFrame = contentFrame
DevRect.scroll = scroll

if #tabs > 0 then tabs[1].Callback(scroll) local firstTab =
tabsFrame:FindFirstChildWhichIsA(â€œTextButtonâ€‌) if firstTab then
firstTab.BackgroundColor3 = Color3.fromRGB(45, 0, 0) local borderFrame =
firstTab:FindFirstChildOfClass(â€œFrameâ€‌) if borderFrame then
borderFrame.BorderColor3 = Color3.fromRGB(180, 0, 0) end
DevRect.currentTab = firstTab end end

return DevRect
