-- DevRect.lua
-- DevRect Library (Module) — v1.1
local DevRect = {}
DevRect.__index = DevRect

-- Services
local Players = game:GetService("Players")
local UIS = game:GetService("UserInputService")
local RunService = game:GetService("RunService")
local CoreGui = game:GetService("CoreGui")

-- Utility: newInstance
local function newInstance(class, props)
	local obj = Instance.new(class)
	if props then
		for k, v in pairs(props) do
			obj[k] = v
		end
	end
	return obj
end

-- Utility: safeParent
local function safeParent(gui)
	local player = Players.LocalPlayer
	if not player then return end
	local playerGui = player:FindFirstChild("PlayerGui")
	if playerGui then
		gui.Parent = playerGui
	else
		-- Fallback for cases where PlayerGui is not immediately available
		gui.Parent = player:WaitForChild("PlayerGui")
	end
end

-- Create main UI
function DevRect:Create(titleText, descText, opts)
	opts = opts or {}
	local self = setmetatable({}, DevRect)
	self.Title = titleText or "DevRect UI"
	self.Desc = descText or ""
	self.Tabs = {}
	self.Open = true

	-- ScreenGui
	local gui = newInstance("ScreenGui", {
		Name = "DevRectUI",
		IgnoreGuiInset = true,
		ResetOnSpawn = false,
		ZIndexBehavior = Enum.ZIndexBehavior.Sibling, -- Recommended for layering
	})
	self._Gui = gui
	safeParent(gui)

	-- Main frame
	local main = newInstance("Frame", {
		Name = "Main",
		Size = UDim2.new(0, 520, 0, 340),
		Position = UDim2.new(0.5, -260, 0.5, -170),
		BackgroundColor3 = Color3.fromRGB(0, 0, 0),
		BorderSizePixel = 0,
		Parent = gui,
	})
	newInstance("UICorner", { Parent = main, CornerRadius = UDim.new(0, 16) })
	newInstance("UIStroke", { Parent = main, Color = Color3.fromRGB(120, 0, 0), Thickness = 2 })

	-- Header
	local header = newInstance("Frame", { Parent = main, Size = UDim2.new(1, 0, 0, 50), BackgroundColor3 = Color3.fromRGB(15, 15, 15), BorderSizePixel = 0 })
	newInstance("UICorner", { Parent = header, CornerRadius = UDim.new(0, 16) })
	newInstance("TextLabel", { Parent = header, Text = self.Title, Font = Enum.Font.GothamBold, TextSize = 20, TextColor3 = Color3.new(1, 1, 1), BackgroundTransparency = 1, Position = UDim2.new(0, 15, 0, 6), Size = UDim2.new(0.6, 0, 0, 25), TextXAlignment = Enum.TextXAlignment.Left })
	newInstance("TextLabel", { Parent = header, Text = self.Desc, Font = Enum.Font.Gotham, TextSize = 14, TextColor3 = Color3.fromRGB(200, 200, 200), BackgroundTransparency = 1, Position = UDim2.new(0, 15, 0, 28), TextXAlignment = Enum.TextXAlignment.Left })

	-- Close button
	local close = newInstance("TextButton", { Parent = header, Text = "X", Font = Enum.Font.GothamBold, TextSize = 20, TextColor3 = Color3.fromRGB(255, 80, 80), BackgroundTransparency = 1, Size = UDim2.new(0, 40, 0, 40), Position = UDim2.new(1, -45, 0, 5) })
	close.MouseButton1Click:Connect(function()
		self:Destroy()
	end)

	-- Tabs frame
	local tabsFrame = newInstance("Frame", { Parent = main, Size = UDim2.new(0, 130, 1, -60), Position = UDim2.new(0, 10, 0, 55), BackgroundColor3 = Color3.fromRGB(15, 15, 15) })
	newInstance("UICorner", { Parent = tabsFrame, CornerRadius = UDim.new(0, 12) })

	-- Content frame
	local contentFrame = newInstance("Frame", { Parent = main, Size = UDim2.new(1, -155, 1, -70), Position = UDim2.new(0, 145, 0, 60), BackgroundColor3 = Color3.fromRGB(10, 10, 10) })
	newInstance("UICorner", { Parent = contentFrame, CornerRadius = UDim.new(0, 12) })

	local scroll = newInstance("ScrollingFrame", { Parent = contentFrame, Size = UDim2.new(1, 0, 1, 0), CanvasSize = UDim2.new(0, 0, 0, 0), ScrollBarThickness = 6, BackgroundTransparency = 1, AutomaticCanvasSize = Enum.AutomaticSize.Y })
	newInstance("UIListLayout", { Parent = scroll, Padding = UDim.new(0, 10), HorizontalAlignment = Enum.HorizontalAlignment.Center, SortOrder = Enum.SortOrder.LayoutOrder })

	-- Helper: clear content
	local function clearContent()
		for _, c in ipairs(scroll:GetChildren()) do
			if not c:IsA("UIListLayout") then
				c:Destroy()
			end
		end
	end

	-- Separator
	local function Separator(parent)
		local sep = newInstance("Frame", { Parent = parent, Size = UDim2.new(0.9, 0, 0, 1), BackgroundColor3 = Color3.fromRGB(60, 0, 0), LayoutOrder = 999 })
		return sep
	end

	-- Element creators
	local function CreateButton(txt, parent, callback)
		local btn = newInstance("TextButton", { Parent = parent, Size = UDim2.new(0.9, 0, 0, 35), BackgroundColor3 = Color3.fromRGB(25, 25, 25), Text = txt, TextColor3 = Color3.new(1, 1, 1), Font = Enum.Font.Gotham, TextSize = 16 })
		newInstance("UICorner", { Parent = btn, CornerRadius = UDim.new(0, 8) })
		if callback then btn.MouseButton1Click:Connect(callback) end
		Separator(parent)
		return btn
	end

	local function CreateToggle(txt, parent, callback, initial)
		local frame = newInstance("Frame", { Parent = parent, Size = UDim2.new(0.9, 0, 0, 35), BackgroundTransparency = 1 })
		newInstance("TextLabel", { Parent = frame, Text = txt, TextColor3 = Color3.new(1, 1, 1), Size = UDim2.new(1, -40, 1, 0), Font = Enum.Font.Gotham, TextSize = 16, BackgroundTransparency = 1, TextXAlignment = Enum.TextXAlignment.Left })
		local state = initial and true or false
		local toggle = newInstance("TextButton", { Parent = frame, Size = UDim2.new(0, 35, 0, 25), Position = UDim2.new(1, -40, 0.5, -12.5), Text = state and "ON" or "OFF", Font = Enum.Font.Gotham, TextSize = 14, BackgroundColor3 = state and Color3.fromRGB(120, 0, 0) or Color3.fromRGB(50, 0, 0) })
		newInstance("UICorner", { Parent = toggle, CornerRadius = UDim.new(0, 8) })
		toggle.MouseButton1Click:Connect(function()
			state = not state
			toggle.Text = state and "ON" or "OFF"
			toggle.BackgroundColor3 = state and Color3.fromRGB(120, 0, 0) or Color3.fromRGB(50, 0, 0)
			if callback then pcall(callback, state) end
		end)
		Separator(parent)
		return toggle
	end

	local function CreateSlider(txt, parent, minv, maxv, default, callback)
		minv = minv or 0
		maxv = maxv or 100
		default = default or minv
		local frame = newInstance("Frame", { Parent = parent, Size = UDim2.new(0.9, 0, 0, 45), BackgroundTransparency = 1 })
		local label = newInstance("TextLabel", { Parent = frame, Text = txt .. " (" .. tostring(default) .. ")", Size = UDim2.new(1, 0, 0, 25), TextColor3 = Color3.new(1, 1, 1), Font = Enum.Font.Gotham, TextSize = 16, BackgroundTransparency = 1, TextXAlignment = Enum.TextXAlignment.Left })
		local slider = newInstance("Frame", { Parent = frame, Position = UDim2.new(0, 0, 0, 25), Size = UDim2.new(1, 0, 0, 10), BackgroundColor3 = Color3.fromRGB(40, 0, 0), BorderSizePixel = 0 })
		newInstance("UICorner", { Parent = slider, CornerRadius = UDim.new(1, 0) })
		local bar = newInstance("Frame", { Parent = slider, BackgroundColor3 = Color3.fromRGB(120, 0, 0), Size = UDim2.new((default - minv) / (maxv - minv), 0, 1, 0), BorderSizePixel = 0 })
		newInstance("UICorner", { Parent = bar, CornerRadius = UDim.new(1, 0) })
		local knob = newInstance("Frame", { Parent = slider, Size = UDim2.new(0, 16, 0, 16), Position = UDim2.new(bar.Size.X.Scale, -8, 0.5, -8), BackgroundColor3 = Color3.fromRGB(255, 50, 50), BorderSizePixel = 0 })
		newInstance("UICorner", { Parent = knob, CornerRadius = UDim.new(1, 0) })

		local dragging = false
		local function updateSlider(input)
			local pos = math.clamp((input.Position.X - slider.AbsolutePosition.X) / slider.AbsoluteSize.X, 0, 1)
			bar.Size = UDim2.new(pos, 0, 1, 0)
			knob.Position = UDim2.new(pos, -8, 0.5, -8)
			local val = minv + (maxv - minv) * pos
			label.Text = txt .. " (" .. math.floor(val) .. ")"
			if callback then pcall(callback, math.floor(val)) end
		end

		slider.InputBegan:Connect(function(input)
			if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
				dragging = true
				updateSlider(input)
			end
		end)
		slider.InputEnded:Connect(function(input)
			if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
				dragging = false
			end
		end)
		UIS.InputChanged:Connect(function(input)
			if dragging and (input.UserInputType == Enum.UserInputType.MouseMovement or input.UserInputType == Enum.UserInputType.Touch) then
				updateSlider(input)
			end
		end)
		Separator(parent)
		return slider
	end

	local function CreateDropdown(txt, parent, options, callback)
		local container = newInstance("Frame", { Parent = parent, Size = UDim2.new(0.9, 0, 0, 35), BackgroundTransparency = 1, ClipsDescendants = true })
		local drop = newInstance("TextButton", { Parent = container, Size = UDim2.new(1, 0, 1, 0), BackgroundColor3 = Color3.fromRGB(25, 25, 25), Text = txt .. " ▼", TextColor3 = Color3.new(1, 1, 1), Font = Enum.Font.Gotham, TextSize = 16 })
		newInstance("UICorner", { Parent = drop, CornerRadius = UDim.new(0, 8) })
		local list = newInstance("ScrollingFrame", { Parent = container, Position = UDim2.new(0, 0, 1, 5), Size = UDim2.new(1, 0, 0, 120), BackgroundColor3 = Color3.fromRGB(15, 15, 15), Visible = false, BorderSizePixel = 0, ScrollBarThickness = 4 })
		newInstance("UICorner", { Parent = list, CornerRadius = UDim.new(0, 8) })
		newInstance("UIListLayout", { Parent = list, Padding = UDim.new(0, 2) })

		local open = false
		drop.MouseButton1Click:Connect(function()
			open = not open
			list.Visible = open
			container.Size = UDim2.new(0.9, 0, 0, open and 160 or 35)
		end)

		for _, opt in ipairs(options) do
			local optBtn = newInstance("TextButton", { Parent = list, Size = UDim2.new(1, 0, 0, 30), BackgroundColor3 = Color3.fromRGB(90, 0, 0), Text = opt, TextColor3 = Color3.new(1, 1, 1), Font = Enum.Font.Gotham, TextSize = 15 })
			newInstance("Frame", { Parent = optBtn, Size = UDim2.new(1, 0, 0, 1), Position = UDim2.new(0, 0, 1, -1), BackgroundColor3 = Color3.fromRGB(120, 0, 0), BorderSizePixel = 0 })
			optBtn.MouseButton1Click:Connect(function()
				drop.Text = txt .. ": " .. opt .. " ▼"
				list.Visible = false
				open = false
				container.Size = UDim2.new(0.9, 0, 0, 35)
				if callback then pcall(callback, opt) end
			end)
		end
		Separator(parent)
		return drop
	end

	-- Tab object
	local TabClass = {}
	TabClass.__index = TabClass

	function TabClass:Button(txt, cb) return CreateButton(txt, scroll, cb) end
	function TabClass:Toggle(txt, cb, init) return CreateToggle(txt, scroll, cb, init) end
	function TabClass:Slider(txt, minv, maxv, default, cb) return CreateSlider(txt, scroll, minv, maxv, default, cb) end
	function TabClass:Dropdown(txt, options, cb) return CreateDropdown(txt, scroll, options or {}, cb) end

	-- Create Tab method on UI instance
	function self:Tab(name, iconId)
		local tabObj = setmetatable({}, TabClass)
		tabObj.Name = name or "Tab"
		tabObj.IconId = iconId

		local index = #self.Tabs + 1
		local tabBtn = newInstance("TextButton", { Parent = tabsFrame, Size = UDim2.new(1, -10, 0, 35), Position = UDim2.new(0, 5, 0, (index - 1) * 45 + 5), BackgroundColor3 = Color3.fromRGB(25, 25, 25), Text = "", AutoButtonColor = false })
		newInstance("UICorner", { Parent = tabBtn, CornerRadius = UDim.new(0, 8) })
		local icon = newInstance("ImageLabel", { Parent = tabBtn, Size = UDim2.new(0, 20, 0, 20), Position = UDim2.new(0, 8, 0.5, -10), BackgroundTransparency = 1 })
		if iconId then icon.Image = "rbxassetid://" .. tostring(iconId) end
		newInstance("TextLabel", { Parent = tabBtn, Size = UDim2.new(1, -50, 1, 0), Position = UDim2.new(0, 45, 0, 0), Text = name, Font = Enum.Font.GothamBold, TextSize = 14, TextColor3 = Color3.new(1, 1, 1), BackgroundTransparency = 1, TextXAlignment = Enum.TextXAlignment.Left })
		local stroke = newInstance("UIStroke", { Parent = tabBtn, Color = Color3.fromRGB(120, 0, 0), Thickness = 0 })

		tabBtn.MouseButton1Click:Connect(function()
			clearContent()
			for _, otherTabBtn in ipairs(tabsFrame:GetChildren())
				if otherTabBtn:IsA("TextButton") then
					local s = otherTabBtn:FindFirstChildWhichIsA("UIStroke")
					if s then s.Thickness = 0 end
				end
			end
			stroke.Thickness = 2
			if tabObj._Builder then
				pcall(tabObj._Builder, tabObj)
			end
		end)

		if index == 1 then
			stroke.Thickness = 2
		end

		self.Tabs[#self.Tabs + 1] = tabObj
		tabObj._TabButton = tabBtn
		tabObj._ParentScroll = scroll

		function tabObj:SetBuilder(fn)
			tabObj._Builder = fn
			if #self.Tabs == 1 then -- If it's the first tab, build its content immediately
				pcall(fn, self)
			end
		end

		return tabObj
	end

	-- Floating icon to toggle (draggable)
	local toggleGui = newInstance("ScreenGui", { Name = "DevRectToggle", IgnoreGuiInset = true, ResetOnSpawn = false, ZIndexBehavior = Enum.ZIndexBehavior.Sibling })
	toggleGui.Parent = CoreGui -- Parent to CoreGui to be on top of other GUIs
	local iconBtn = newInstance("ImageButton", { Parent = toggleGui, Name = "DevRectIcon", Size = UDim2.new(0, 55, 0, 55), Position = UDim2.new(0.05, 0, 0.5, -27.5), BackgroundTransparency = 1, ZIndex = 999, Image = "rbxassetid://6031090990" })

	local dragging, startPos, startInputPos
	iconBtn.InputBegan:Connect(function(input)
		if input.UserInputType == Enum.UserInputType.Touch or input.UserInputType == Enum.UserInputType.MouseButton1 then
			dragging = true
			startInputPos = input.Position
			startPos = iconBtn.Position
			local conn
			conn = input.Changed:Connect(function()
				if input.UserInputState == Enum.UserInputState.End then
					dragging = false
					conn:Disconnect()
				end
			end)
		end
	end)
	UIS.InputChanged:Connect(function(input)
		if dragging and (input.UserInputType == Enum.UserInputType.MouseMovement or input.UserInputType == Enum.UserInputType.Touch) then
			local delta = input.Position - startInputPos
			iconBtn.Position = UDim2.new(startPos.X.Scale, startPos.X.Offset + delta.X, startPos.Y.Scale, startPos.Y.Offset + delta.Y)
		end
	end)
	iconBtn.MouseButton1Click:Connect(function()
		self.Open = not self.Open
		self._Gui.Enabled = self.Open
	end)

	-- Store internal refs
	self._Main = main
	self._Header = header
	self._TabsFrame = tabsFrame
	self._Content = contentFrame
	self._Scroll = scroll
	self._ToggleGui = toggleGui

	return self
end

-- Destroy UI
function DevRect:Destroy()
	if self._Gui then
		self._Gui:Destroy()
		self._Gui = nil
	end
	if self._ToggleGui then
		self._ToggleGui:Destroy()
		self._ToggleGui = nil
	end
end

return DevRect
