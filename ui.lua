--[[
    DevRect Library UI v3.0 — Fixed
]]

--// Services
local Players = game:GetService("Players")
local UIS = game:GetService("UserInputService")
local player = Players.LocalPlayer

-- تأكد ما فيه GUI مكرر
pcall(function()
	local old = player.PlayerGui:FindFirstChild("DevRectUI")
	if old then old:Destroy() end
end)

--// GUI Setup
local gui = Instance.new("ScreenGui")
gui.Name = "DevRectUI"
gui.IgnoreGuiInset = true
gui.ResetOnSpawn = false
gui.Parent = player:WaitForChild("PlayerGui")

--// Main Window
local main = Instance.new("Frame")
main.Size = UDim2.new(0, 520, 0, 340)
main.Position = UDim2.new(0.5, -260, 0.5, -170)
main.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
main.BorderSizePixel = 0
main.Parent = gui
Instance.new("UICorner", main).CornerRadius = UDim.new(0, 16)

local stroke = Instance.new("UIStroke", main)
stroke.Color = Color3.fromRGB(120, 0, 0)
stroke.Thickness = 2

--// Header
local header = Instance.new("Frame", main)
header.Size = UDim2.new(1, 0, 0, 50)
header.BackgroundColor3 = Color3.fromRGB(15, 15, 15)
header.BorderSizePixel = 0
Instance.new("UICorner", header).CornerRadius = UDim.new(0, 16)

local title = Instance.new("TextLabel", header)
title.Text = "DevRect | v1.0"
title.Font = Enum.Font.GothamBold
title.TextSize = 20
title.TextColor3 = Color3.fromRGB(255, 255, 255)
title.BackgroundTransparency = 1
title.Position = UDim2.new(0, 15, 0, 6)
title.Size = UDim2.new(0.6, 0, 0, 25)
title.TextXAlignment = Enum.TextXAlignment.Left

local desc = Instance.new("TextLabel", header)
desc.Text = "development brainrot"
desc.Font = Enum.Font.Gotham
desc.TextSize = 10
desc.TextColor3 = Color3.fromRGB(200, 200, 200)
desc.BackgroundTransparency = 1
desc.Position = UDim2.new(0, 20, 0, 35)
desc.TextXAlignment = Enum.TextXAlignment.Left

-- ❌ حذف زر الإغلاق والإخفاء بالكامل
local closeBtn = Instance.new("TextButton", header)
closeBtn.Size = UDim2.new(0, 35, 0, 35)
closeBtn.Position = UDim2.new(1, -45, 0.5, -17)
closeBtn.BackgroundColor3 = Color3.fromRGB(50, 0, 0)
closeBtn.Text = "X"
closeBtn.TextColor3 = Color3.fromRGB(255, 255, 255)
closeBtn.Font = Enum.Font.GothamBold
closeBtn.TextSize = 20
Instance.new("UICorner", closeBtn).CornerRadius = UDim.new(1, 0)
closeBtn.MouseButton1Click:Connect(function()
	gui:Destroy()
end)
-- 🔽 زر التصغير
local TweenService = game:GetService("TweenService")

local minimizeBtn = Instance.new("TextButton", header)
minimizeBtn.Size = UDim2.new(0, 35, 0, 35)
minimizeBtn.Position = UDim2.new(1, -85, 0.5, -17)
minimizeBtn.BackgroundColor3 = Color3.fromRGB(50, 0, 0)
minimizeBtn.Text = "–"
minimizeBtn.TextColor3 = Color3.fromRGB(255, 255, 255)
minimizeBtn.Font = Enum.Font.GothamBold
minimizeBtn.TextSize = 22
minimizeBtn.AutoButtonColor = false
Instance.new("UICorner", minimizeBtn).CornerRadius = UDim.new(1, 0)

local minimized = false
local fullSize = UDim2.new(0, 520, 0, 340)
local miniSize = UDim2.new(0, 180, 0, 60)

minimizeBtn.MouseEnter:Connect(function()
	TweenService:Create(minimizeBtn, TweenInfo.new(0.15), {
		BackgroundColor3 = Color3.fromRGB(80, 0, 0)
	}):Play()
end)

minimizeBtn.MouseLeave:Connect(function()
	TweenService:Create(minimizeBtn, TweenInfo.new(0.15), {
		BackgroundColor3 = Color3.fromRGB(50, 0, 0)
	}):Play()
end)

minimizeBtn.MouseButton1Click:Connect(function()
	minimized = not minimized

	if minimized then
		-- إخفاء المحتوى تدريجياً
		for _, v in ipairs({tabsFrame, contentFrame, desc}) do
			TweenService:Create(v, TweenInfo.new(0.15), {BackgroundTransparency = 1}):Play()
			task.delay(0.15, function() v.Visible = false end)
		end

		TweenService:Create(main, TweenInfo.new(0.25, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {
			Size = miniSize
		}):Play()

		minimizeBtn.Text = "▢" -- تغيّر شكل الزر أثناء التصغير

	else
		-- إرجاع الواجهة
		TweenService:Create(main, TweenInfo.new(0.25, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {
			Size = fullSize
		}):Play()

		task.delay(0.25, function()
			for _, v in ipairs({tabsFrame, contentFrame, desc}) do
				v.Visible = true
				TweenService:Create(v, TweenInfo.new(0.15), {BackgroundTransparency = 0}):Play()
			end
		end)

		minimizeBtn.Text = "–"
	end
end)

--// Tabs & Content
--// Tabs Frame (قابل للتمرير)
local tabsFrame = Instance.new("ScrollingFrame", main)
tabsFrame.Size = UDim2.new(0, 130, 1, -60)
tabsFrame.Position = UDim2.new(0, 10, 0, 55)
tabsFrame.BackgroundColor3 = Color3.fromRGB(15, 15, 15)
tabsFrame.BorderSizePixel = 0
tabsFrame.CanvasSize = UDim2.new(0, 0, 0, 0)
tabsFrame.AutomaticCanvasSize = Enum.AutomaticSize.Y
tabsFrame.ScrollBarThickness = 6
tabsFrame.ScrollBarImageColor3 = Color3.fromRGB(120, 0, 0)
Instance.new("UICorner", tabsFrame).CornerRadius = UDim.new(0, 12)

-- ترتيب التبويبات عموديًا
local tabsLayout = Instance.new("UIListLayout", tabsFrame)
tabsLayout.Padding = UDim.new(0, 10)
tabsLayout.HorizontalAlignment = Enum.HorizontalAlignment.Center
local contentFrame = Instance.new("Frame", main)
contentFrame.Size = UDim2.new(1, -155, 1, -70)
contentFrame.Position = UDim2.new(0, 145, 0, 60)
contentFrame.BackgroundColor3 = Color3.fromRGB(10, 10, 10)
contentFrame.BorderSizePixel = 0
Instance.new("UICorner", contentFrame).CornerRadius = UDim.new(0, 12)

local scroll = Instance.new("ScrollingFrame", contentFrame)
scroll.Size = UDim2.new(1, 0, 1, 0)
scroll.CanvasSize = UDim2.new(0, 0, 0, 1000)
scroll.ScrollBarThickness = 6
scroll.BackgroundTransparency = 1
scroll.AutomaticCanvasSize = Enum.AutomaticSize.Y

local listLayout = Instance.new("UIListLayout", scroll)
listLayout.Padding = UDim.new(0, 10)
listLayout.HorizontalAlignment = Enum.HorizontalAlignment.Center

--// أدوات مساعدة
local function Separator(parent)
	local sep = Instance.new("Frame", parent)
	sep.Size = UDim2.new(0.9, 0, 0, 1)
	sep.BackgroundColor3 = Color3.fromRGB(60, 0, 0)
end

local UserInputService = game:GetService("UserInputService")

local function CreateButton(txt, parent, callback)
	local btn = Instance.new("TextButton", parent)
	btn.Size = UDim2.new(0.9, 0, 0, 35)
	btn.BackgroundColor3 = Color3.fromRGB(25, 25, 25)
	btn.Text = txt
	btn.TextColor3 = Color3.fromRGB(255, 255, 255)
	btn.Font = Enum.Font.GothamBold
	btn.TextSize = 16
	btn.AutoButtonColor = true
	btn.Active = true
	btn.Selectable = true
	btn.ZIndex = 10
	Instance.new("UICorner", btn).CornerRadius = UDim.new(0, 8)

	-- تأثير ضغط خفيف
	local function pressEffect()
		btn:TweenSize(UDim2.new(0.88, 0, 0, 33), "Out", "Quad", 0.05, true)
		task.wait(0.05)
		btn:TweenSize(UDim2.new(0.9, 0, 0, 35), "Out", "Quad", 0.1, true)
	end

	-- دعم الماوس
	btn.MouseButton1Click:Connect(function()
		pressEffect()
		if callback then
			callback()
		end
	end)

	-- دعم اللمس (جوال)
	btn.TouchTap:Connect(function()
		pressEffect()
		if callback then
			callback()
		end
	end)

	-- دعم الكنترولر (A Button)
	UserInputService.InputBegan:Connect(function(input, processed)
		if processed then return end
		if input.UserInputType == Enum.UserInputType.Gamepad1 and input.KeyCode == Enum.KeyCode.ButtonA then
			if UserInputService:GetFocusedTextBox() == nil and btn:IsFocused() then
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
local function CreateToggle(txt, parent)
	local frame = Instance.new("Frame", parent)
	frame.Size = UDim2.new(0.9, 0, 0, 35)
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

-- إضافة سليدر داخل واجهة معينة (parent = الإطار أو التاب اللي تبغى تحطه فيه)
local function CreateSlider(name, parent)
	local container = Instance.new("Frame", parent)
	container.Size = UDim2.new(0.9, 0, 0, 50)
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

	local UIS = game:GetService("UserInputService")

	slider.InputBegan:Connect(function(input)
		if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
			local moveConn
			moveConn = UIS.InputChanged:Connect(function(inp)
				if inp.UserInputType == Enum.UserInputType.MouseMovement or inp.UserInputType == Enum.UserInputType.Touch then
					local pos = math.clamp((inp.Position.X - slider.AbsolutePosition.X) / slider.AbsoluteSize.X, 0, 1)
					bar.Size = UDim2.new(pos, 0, 1, 0)
					knob.Position = UDim2.new(pos, -8, 0.5, -8)
				end
			end)
			input.Changed:Connect(function()
				if input.UserInputState == Enum.UserInputState.End then
					moveConn:Disconnect()
				end
			end)
		end
	end)
end
local TweenService = game:GetService("TweenService")

local function CreateDropdown(txt, parent, options)
	local drop = Instance.new("TextButton", parent)
	drop.Size = UDim2.new(0.9, 0, 0, 35)
	drop.BackgroundColor3 = Color3.fromRGB(25, 25, 25)
	drop.Text = txt .. " ▼"
	drop.TextColor3 = Color3.fromRGB(255, 255, 255)
	drop.Font = Enum.Font.Gotham
	drop.TextSize = 16
	drop.AutoButtonColor = false

	local corner = Instance.new("UICorner", drop)
	corner.CornerRadius = UDim.new(0, 8)

	local list = Instance.new("Frame", parent)
	list.Size = UDim2.new(0.9, 0, 0, 0)
	list.BackgroundColor3 = Color3.fromRGB(15, 15, 15)
	list.Visible = false
	list.ClipsDescendants = true
	list.Position = UDim2.new(0.05, 0, 0, drop.AbsoluteSize.Y + 5)
	Instance.new("UICorner", list).CornerRadius = UDim.new(0, 8)

	local layout = Instance.new("UIListLayout", list)
	layout.Padding = UDim.new(0, 2)
	layout.HorizontalAlignment = Enum.HorizontalAlignment.Center

	local open = false
	local selected = nil

	local function toggleDropdown()
		open = not open
		list.Visible = true

		if open then
			TweenService:Create(list, TweenInfo.new(0.2), {
				Size = UDim2.new(0.9, 0, 0, #options * 32 + 6)
			}):Play()
			drop.Text = (selected and txt .. ": " .. selected or txt) .. " ▲"
		else
			TweenService:Create(list, TweenInfo.new(0.2), {
				Size = UDim2.new(0.9, 0, 0, 0)
			}):Play()
			task.delay(0.2, function() list.Visible = false end)
			drop.Text = (selected and txt .. ": " .. selected or txt) .. " ▼"
		end
	end

	drop.MouseButton1Click:Connect(toggleDropdown)

	for _, opt in ipairs(options) do
		local optBtn = Instance.new("TextButton", list)
		optBtn.Size = UDim2.new(1, -6, 0, 30)
		optBtn.BackgroundColor3 = Color3.fromRGB(40, 40, 40)
		optBtn.Text = opt
		optBtn.TextColor3 = Color3.fromRGB(255, 255, 255)
		optBtn.Font = Enum.Font.Gotham
		optBtn.TextSize = 15
		optBtn.AutoButtonColor = false
		Instance.new("UICorner", optBtn).CornerRadius = UDim.new(0, 6)

		optBtn.MouseEnter:Connect(function()
			TweenService:Create(optBtn, TweenInfo.new(0.15), {BackgroundColor3 = Color3.fromRGB(70, 70, 70)}):Play()
		end)
		optBtn.MouseLeave:Connect(function()
			TweenService:Create(optBtn, TweenInfo.new(0.15), {BackgroundColor3 = Color3.fromRGB(40, 40, 40)}):Play()
		end)

		optBtn.MouseButton1Click:Connect(function()
			selected = opt
			toggleDropdown()
		end)
	end

	if Separator then Separator(parent) end
end
--// Tabs Setup
-- 🧩 دالة إنشاء الإشعارات
local function ShowNotification(title, text, duration, iconId)
	local ScreenGui = Instance.new("ScreenGui", game:GetService("CoreGui"))
	ScreenGui.Name = "DevRectNotification"

	local Frame = Instance.new("Frame", ScreenGui)
	Frame.AnchorPoint = Vector2.new(1, 1)
	Frame.Position = UDim2.new(1, -20, 1, -20)
	Frame.Size = UDim2.new(0, 260, 0, 80)
	Frame.BackgroundColor3 = Color3.fromRGB(20, 20, 20)
	Frame.BorderSizePixel = 0
	Frame.ClipsDescendants = true
	Frame.BackgroundTransparency = 0.1
	Instance.new("UICorner", Frame).CornerRadius = UDim.new(0, 10)
	Instance.new("UIStroke", Frame).Color = Color3.fromRGB(80, 80, 80)

	local Icon = Instance.new("ImageLabel", Frame)
	Icon.Image = "rbxassetid://" .. (iconId or 6031280882)
	Icon.Size = UDim2.new(0, 40, 0, 40)
	Icon.Position = UDim2.new(0, 10, 0, 20)
	Icon.BackgroundTransparency = 1

	local TitleLabel = Instance.new("TextLabel", Frame)
	TitleLabel.Text = title or "إشعار"
	TitleLabel.Font = Enum.Font.GothamBold
	TitleLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
	TitleLabel.TextSize = 16
	TitleLabel.Position = UDim2.new(0, 60, 0, 10)
	TitleLabel.BackgroundTransparency = 1
	TitleLabel.Size = UDim2.new(1, -70, 0, 20)
	TitleLabel.TextXAlignment = Enum.TextXAlignment.Left

	local MessageLabel = Instance.new("TextLabel", Frame)
	MessageLabel.Text = text or ""
	MessageLabel.Font = Enum.Font.Gotham
	MessageLabel.TextColor3 = Color3.fromRGB(200, 200, 200)
	MessageLabel.TextSize = 14
	MessageLabel.Position = UDim2.new(0, 60, 0, 35)
	MessageLabel.BackgroundTransparency = 1
	MessageLabel.Size = UDim2.new(1, -70, 0, 20)
	MessageLabel.TextXAlignment = Enum.TextXAlignment.Left

	Frame.Position = UDim2.new(1, 300, 1, -20)
	Frame:TweenPosition(UDim2.new(1, -20, 1, -20), "Out", "Quad", 0.3, true)

	task.delay(duration or 3, function()
		Frame:TweenPosition(UDim2.new(1, 300, 1, -20), "In", "Quad", 0.3, true)
		task.wait(0.3)
		ScreenGui:Destroy()
	end)
end

-- حفظها في متغير عام
_G.DevRectShowNotification = ShowNotification

-- 🌟 إشعار بداية التشغيل
task.defer(function()
	task.wait(0.5)
	if _G.DevRectShowNotification then
		_G.DevRectShowNotification("مرحباً 👋", "تم تشغيل واجهة DevRect بنجاح!", 4, 6031280882)
	else
		warn("⚠️ نظام الإشعارات غير جاهز بعد!")
	end
end)

-- بعد هذا السطر مباشرة 👇
local currentTab

for i, info in ipairs(tabs) do
	local tab = Instance.new("TextButton", tabsFrame)
	tab.Size = UDim2.new(1, -10, 0, 35)
	tab.Position = UDim2.new(0, 5, 0, (i - 1) * 45 + 5)
	tab.BackgroundColor3 = Color3.fromRGB(25, 25, 25)
	tab.Text = ""
	tab.AutoButtonColor = false

	local corner = Instance.new("UICorner", tab)
	corner.CornerRadius = UDim.new(0, 8)

	-- إطار أحمر داخلي (للحدود عند التحديد)
	local borderFrame = Instance.new("Frame", tab)
	borderFrame.Size = UDim2.new(1, 0, 1, 0)
	borderFrame.Position = UDim2.new(0, 0, 0, 0)
	borderFrame.BackgroundTransparency = 1
	borderFrame.BorderSizePixel = 2
	borderFrame.BorderColor3 = Color3.fromRGB(120, 0, 0)
	local borderCorner = Instance.new("UICorner", borderFrame)
	borderCorner.CornerRadius = UDim.new(0, 8)

	-- 🖼️ الأيقونة
	local icon = Instance.new("ImageLabel", tab)
	icon.Size = UDim2.new(0, 20, 0, 20)
	icon.Position = UDim2.new(0, 10, 0.5, -10)
	icon.BackgroundTransparency = 1
	icon.Image = "rbxassetid://" .. tostring(info.IconID or 0)

	-- 🏷️ النص
	local label = Instance.new("TextLabel", tab)
	label.Size = UDim2.new(1, -40, 1, 0)
	label.Position = UDim2.new(0, 35, 0, 0)
	label.BackgroundTransparency = 1
	label.Text = info.Name
	label.TextColor3 = Color3.fromRGB(255, 255, 255)
	label.Font = Enum.Font.Gotham
	label.TextSize = 16
	label.TextXAlignment = Enum.TextXAlignment.Left

	-- عند الضغط
	tab.MouseButton1Click:Connect(function()
		for _, c in ipairs(scroll:GetChildren()) do
			if not c:IsA("UIListLayout") then
				c:Destroy()
			end
		end
		info.Callback(scroll)

		-- إلغاء تمييز السابق
		if currentTab then
			currentTab.BackgroundColor3 = Color3.fromRGB(25, 25, 25)
			currentTab:FindFirstChildOfClass("Frame").BorderColor3 = Color3.fromRGB(25, 25, 25)
		end

		-- تمييز الحالي
		tab.BackgroundColor3 = Color3.fromRGB(45, 0, 0)
		borderFrame.BorderColor3 = Color3.fromRGB(180, 0, 0)

		currentTab = tab
	end)
end

tabs[1].Callback()
tabsFrame:FindFirstChildWhichIsA("TextButton").BackgroundColor3 = Color3.fromRGB(45, 0, 0)

tabsFrame:FindFirstChildWhichIsA("TextButton"):FindFirstChildOfClass("Frame").BorderColor3 = Color3.fromRGB(180, 0, 0)
-- 🔘 زر صغير يفتح ويغلق DevRect UI (قابل للسحب)
local UIS = game:GetService("UserInputService")
local CoreGui = game:GetService("CoreGui")
local player = game.Players.LocalPlayer

local UI_NAME = "DevRectUI"
local ICON_ID = 6031280882 -- أيقونة الترس (تقدر تغيّرها)

local toggleBtn = Instance.new("ImageButton")
toggleBtn.Name = "DevRectToggle"
toggleBtn.Size = UDim2.new(0, 45, 0, 45)
toggleBtn.Position = UDim2.new(0, 20, 0.5, -22)
toggleBtn.BackgroundColor3 = Color3.fromRGB(30, 0, 0)
toggleBtn.Image = "rbxassetid://" .. ICON_ID
toggleBtn.ImageColor3 = Color3.fromRGB(255, 80, 80)
toggleBtn.Parent = CoreGui
Instance.new("UICorner", toggleBtn).CornerRadius = UDim.new(1, 0)
local stroke = Instance.new("UIStroke", toggleBtn)
stroke.Color = Color3.fromRGB(120, 0, 0)
stroke.Thickness = 2

-- السحب باللمس أو الماوس
local dragging = false
local dragStart, startPos
toggleBtn.InputBegan:Connect(function(input)
	if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
		dragging = true
		dragStart = input.Position
		startPos = toggleBtn.Position
	end
end)

UIS.InputChanged:Connect(function(input)
	if dragging and (input.UserInputType == Enum.UserInputType.MouseMovement or input.UserInputType == Enum.UserInputType.Touch) then
		local delta = input.Position - dragStart
		toggleBtn.Position = UDim2.new(startPos.X.Scale, startPos.X.Offset + delta.X, startPos.Y.Scale, startPos.Y.Offset + delta.Y)
	end
end)

UIS.InputEnded:Connect(function(input)
	if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
		dragging = false
	end
end)

-- الفتح والإغلاق
local ui = CoreGui:FindFirstChild(UI_NAME) or player.PlayerGui:FindFirstChild(UI_NAME)
toggleBtn.MouseButton1Click:Connect(function()
	if ui then
		ui.Enabled = not ui.Enabled
	end
end)
-- Notification System for DevRect UI
-- Usage:
-- ShowNotification("Title", "This is the message", 4, 6031280882)

local TweenService = game:GetService("TweenService")
local Players = game:GetService("Players")
local player = Players.LocalPlayer
local PLAYER_GUI = player:WaitForChild("PlayerGui")

-- If you already have a main gui (DevRectUI), parent notifications there; otherwise use PlayerGui
local parentGui = game:GetService("CoreGui")
-- container for notifications (top-right)
local notifContainer = Instance.new("Frame")
notifContainer.Name = "DevRectNotifications"
notifContainer.Size = UDim2.new(0, 300, 0, 0)
notifContainer.AnchorPoint = Vector2.new(1, 0) -- right-anchored
notifContainer.Position = UDim2.new(1, -10, 0, 10) -- 10px from top-right
notifContainer.BackgroundTransparency = 1
notifContainer.Parent = parentGui
notifContainer.ClipsDescendants = false

local layout = Instance.new("UIListLayout", notifContainer)
layout.SortOrder = Enum.SortOrder.LayoutOrder
layout.Padding = UDim.new(0, 8) -- spacing between notifications
layout.VerticalAlignment = Enum.VerticalAlignment.Top
