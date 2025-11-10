--// DevRect Library v3.0
--// by ChatGPT + J7HBA 🔥
-- تصميم أسود وأحمر حديث — متوافق مع الموبايل والكمبيوتر

local DevRect = {}
DevRect.__index = DevRect

local Players = game:GetService("Players")
local UIS = game:GetService("UserInputService")
local TweenService = game:GetService("TweenService")
local player = Players.LocalPlayer

-- إشعار بسيط
_G.DevRectShowNotification = function(title, text, time, icon)
	local StarterGui = game:GetService("StarterGui")
	pcall(function()
		StarterGui:SetCore("SendNotification", {
			Title = title,
			Text = text,
			Duration = time or 3,
			Icon = "rbxassetid://" .. (icon or 6031280882)
		})
	end)
end

-- إنشاء المكتبة
function DevRect:Create(info)
	info = info or {}
	local gui = Instance.new("ScreenGui")
	gui.Name = "DevRectUI"
	gui.IgnoreGuiInset = true
	gui.ResetOnSpawn = false
	gui.Parent = player:WaitForChild("PlayerGui")

	local main = Instance.new("Frame")
	main.Size = UDim2.new(0, 540, 0, 350)
	main.Position = UDim2.new(0.5, -270, 0.5, -175)
	main.BackgroundColor3 = Color3.fromRGB(10, 10, 10)
	main.Parent = gui
	Instance.new("UICorner", main).CornerRadius = UDim.new(0, 16)
	local stroke = Instance.new("UIStroke", main)
	stroke.Color = Color3.fromRGB(120, 0, 0)
	stroke.Thickness = 2

	local header = Instance.new("Frame", main)
	header.Size = UDim2.new(1, 0, 0, 55)
	header.BackgroundColor3 = Color3.fromRGB(15, 15, 15)
	header.BorderSizePixel = 0
	Instance.new("UICorner", header).CornerRadius = UDim.new(0, 16)

	local title = Instance.new("TextLabel", header)
	title.Text = info.Title or "DevRect Hub"
	title.Font = Enum.Font.GothamBold
	title.TextSize = 22
	title.TextColor3 = Color3.fromRGB(255, 255, 255)
	title.BackgroundTransparency = 1
	title.Position = UDim2.new(0, 20, 0, 5)
	title.TextXAlignment = Enum.TextXAlignment.Left

	local desc = Instance.new("TextLabel", header)
	desc.Text = info.Description or "واجهة حديثة — باللون الأسود والأحمر"
	desc.Font = Enum.Font.Gotham
	desc.TextSize = 12
	desc.TextColor3 = Color3.fromRGB(200, 200, 200)
	desc.BackgroundTransparency = 1
	desc.Position = UDim2.new(0, 20, 0, 30)
	desc.TextXAlignment = Enum.TextXAlignment.Left

	local tabsContainer = Instance.new("Frame", main)
	tabsContainer.Size = UDim2.new(0, 130, 1, -65)
	tabsContainer.Position = UDim2.new(0, 10, 0, 60)
	tabsContainer.BackgroundColor3 = Color3.fromRGB(15, 15, 15)
	tabsContainer.BorderSizePixel = 0
	Instance.new("UICorner", tabsContainer).CornerRadius = UDim.new(0, 12)

	local tabScroll = Instance.new("ScrollingFrame", tabsContainer)
	tabScroll.Size = UDim2.new(1, 0, 1, 0)
	tabScroll.CanvasSize = UDim2.new(0, 0, 0, 0)
	tabScroll.ScrollBarThickness = 6
	tabScroll.BackgroundTransparency = 1
	local tabLayout = Instance.new("UIListLayout", tabScroll)
	tabLayout.Padding = UDim.new(0, 8)

	local contentFrame = Instance.new("Frame", main)
	contentFrame.Size = UDim2.new(1, -160, 1, -70)
	contentFrame.Position = UDim2.new(0, 150, 0, 65)
	contentFrame.BackgroundColor3 = Color3.fromRGB(10, 10, 10)
	contentFrame.BorderSizePixel = 0
	Instance.new("UICorner", contentFrame).CornerRadius = UDim.new(0, 12)

	function DevRect:Tab(tabInfo)
		local tabBtn = Instance.new("TextButton", tabScroll)
		tabBtn.Size = UDim2.new(1, -10, 0, 35)
		tabBtn.BackgroundColor3 = Color3.fromRGB(25, 25, 25)
		tabBtn.Text = tabInfo.Name or "Tab"
		tabBtn.Font = Enum.Font.GothamBold
		tabBtn.TextSize = 16
		tabBtn.TextColor3 = Color3.fromRGB(255, 255, 255)
		tabBtn.AutoButtonColor = false
		Instance.new("UICorner", tabBtn).CornerRadius = UDim.new(0, 8)

		local scroll = Instance.new("ScrollingFrame", contentFrame)
		scroll.Size = UDim2.new(1, 0, 1, 0)
		scroll.Visible = false
		scroll.AutomaticCanvasSize = Enum.AutomaticSize.Y
		scroll.ScrollBarThickness = 6
		scroll.BackgroundTransparency = 1
		local layout = Instance.new("UIListLayout", scroll)
		layout.Padding = UDim.new(0, 10)
		layout.HorizontalAlignment = Enum.HorizontalAlignment.Center

		tabBtn.MouseButton1Click:Connect(function()
			for _, v in pairs(contentFrame:GetChildren()) do
				if v:IsA("ScrollingFrame") then v.Visible = false end
			end
			scroll.Visible = true
		end)

		local methods = {}

		function methods:AddButton(data)
			local btn = Instance.new("TextButton", scroll)
			btn.Size = UDim2.new(0.9, 0, 0, 35)
			btn.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
			btn.Text = data.Name
			btn.TextColor3 = Color3.fromRGB(255, 255, 255)
			btn.Font = Enum.Font.GothamBold
			btn.TextSize = 16
			Instance.new("UICorner", btn).CornerRadius = UDim.new(0, 8)
			btn.MouseButton1Click:Connect(function()
				pcall(data.Callback)
			end)
		end

		function methods:AddToggle(data)
			local frame = Instance.new("Frame", scroll)
			frame.Size = UDim2.new(0.9, 0, 0, 35)
			frame.BackgroundTransparency = 1
			local label = Instance.new("TextLabel", frame)
			label.Size = UDim2.new(1, -50, 1, 0)
			label.BackgroundTransparency = 1
			label.Text = data.Name
			label.TextColor3 = Color3.fromRGB(255, 255, 255)
			label.Font = Enum.Font.Gotham
			label.TextSize = 16
			label.TextXAlignment = Enum.TextXAlignment.Left

			local toggle = Instance.new("TextButton", frame)
			toggle.Size = UDim2.new(0, 40, 0, 25)
			toggle.Position = UDim2.new(1, -45, 0.5, -12)
			toggle.Text = data.Default and "ON" or "OFF"
			toggle.BackgroundColor3 = data.Default and Color3.fromRGB(120, 0, 0) or Color3.fromRGB(50, 0, 0)
			toggle.TextColor3 = Color3.new(1, 1, 1)
			Instance.new("UICorner", toggle).CornerRadius = UDim.new(0, 8)
			local state = data.Default or false

			toggle.MouseButton1Click:Connect(function()
				state = not state
				toggle.Text = state and "ON" or "OFF"
				toggle.BackgroundColor3 = state and Color3.fromRGB(120, 0, 0) or Color3.fromRGB(50, 0, 0)
				pcall(data.Callback, state)
			end)
		end

		function methods:AddSlider(data)
			local sliderFrame = Instance.new("Frame", scroll)
			sliderFrame.Size = UDim2.new(0.9, 0, 0, 40)
			sliderFrame.BackgroundTransparency = 1

			local title = Instance.new("TextLabel", sliderFrame)
			title.Size = UDim2.new(1, 0, 0, 20)
			title.Text = data.Name
			title.TextColor3 = Color3.new(1, 1, 1)
			title.Font = Enum.Font.Gotham
			title.BackgroundTransparency = 1
			title.TextSize = 16
			title.TextXAlignment = Enum.TextXAlignment.Left

			local bar = Instance.new("Frame", sliderFrame)
			bar.Size = UDim2.new(0.9, 0, 0, 6)
			bar.Position = UDim2.new(0.05, 0, 0, 30)
			bar.BackgroundColor3 = Color3.fromRGB(40, 40, 40)
			bar.BorderSizePixel = 0
			Instance.new("UICorner", bar).CornerRadius = UDim.new(0, 8)

			local fill = Instance.new("Frame", bar)
			fill.Size = UDim2.new(0, 0, 1, 0)
			fill.BackgroundColor3 = Color3.fromRGB(120, 0, 0)
			Instance.new("UICorner", fill).CornerRadius = UDim.new(0, 8)

			local dragging = false
			local min, max = data.Min or 0, data.Max or 100
			local default = data.Default or min
			fill.Size = UDim2.new((default - min) / (max - min), 0, 1, 0)
			pcall(data.Callback, default)

			bar.InputBegan:Connect(function(input)
				if input.UserInputType == Enum.UserInputType.MouseButton1 then dragging = true end
			end)
			UIS.InputEnded:Connect(function(input)
				if input.UserInputType == Enum.UserInputType.MouseButton1 then dragging = false end
			end)
			UIS.InputChanged:Connect(function(input)
				if dragging and input.UserInputType == Enum.UserInputType.MouseMovement then
					local rel = math.clamp((input.Position.X - bar.AbsolutePosition.X) / bar.AbsoluteSize.X, 0, 1)
					fill.Size = UDim2.new(rel, 0, 1, 0)
					local val = math.floor(min + (max - min) * rel)
					pcall(data.Callback, val)
				end
			end)
		end

		function methods:AddDropdown(data)
			local frame = Instance.new("Frame", scroll)
			frame.Size = UDim2.new(0.9, 0, 0, 35)
			frame.BackgroundColor3 = Color3.fromRGB(20, 20, 20)
			Instance.new("UICorner", frame).CornerRadius = UDim.new(0, 8)

			local label = Instance.new("TextLabel", frame)
			label.Size = UDim2.new(1, -30, 1, 0)
			label.BackgroundTransparency = 1
			label.Text = data.Name .. " ▼"
			label.TextColor3 = Color3.new(1, 1, 1)
			label.Font = Enum.Font.Gotham
			label.TextSize = 15
			label.TextXAlignment = Enum.TextXAlignment.Left

			local options = Instance.new("Frame", frame)
			options.Size = UDim2.new(1, 0, 0, 0)
			options.Position = UDim2.new(0, 0, 1, 0)
			options.BackgroundColor3 = Color3.fromRGB(15, 15, 15)
			options.BorderSizePixel = 0
			options.Visible = false
			local layout = Instance.new("UIListLayout", options)

			for _, opt in pairs(data.Options or {}) do
				local btn = Instance.new("TextButton", options)
				btn.Size = UDim2.new(1, 0, 0, 25)
				btn.Text = opt
				btn.BackgroundColor3 = Color3.fromRGB(25, 25, 25)
				btn.TextColor3 = Color3.new(1, 1, 1)
				btn.Font = Enum.Font.Gotham
				btn.TextSize = 14
				btn.MouseButton1Click:Connect(function()
					label.Text = data.Name .. ": " .. opt
					options.Visible = false
					pcall(data.Callback, opt)
				end)
			end

			frame.MouseButton1Click:Connect(function()
				options.Visible = not options.Visible
			end)
		end

		return methods
	end

	function DevRect:Destroy()
		pcall(function() gui:Destroy() end)
	end

	return self
end

return DevRect
