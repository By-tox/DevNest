-- DevRect.lua
-- DevRect Library (Module) — v1.0
local DevRect = {}
DevRect.__index = DevRect

-- Services
local Players = game:GetService("Players")
local UIS = game:GetService("UserInputService")
local RunService = game:GetService("RunService")

local function newInstance(class, props)
	local obj = Instance.new(class)
	if props then
		for k,v in pairs(props) do
			obj[k] = v
		end
	end
	return obj
end

-- Utility: safe parent
local function safeParent(gui)
	local player = Players.LocalPlayer
	if not player then return end
	local pg = player:FindFirstChild("PlayerGui")
	if pg then
		gui.Parent = pg
	else
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
	local player = Players.LocalPlayer
	local gui = newInstance("ScreenGui", {Name = "DevRectUI", IgnoreGuiInset = true, ResetOnSpawn = false})
	self._Gui = gui
	safeParent(gui)

	-- Main frame
	local main = newInstance("Frame", {
		Name = "Main",
		Size = UDim2.new(0,520,0,340),
		Position = UDim2.new(0.5,-260,0.5,-170),
		BackgroundColor3 = Color3.fromRGB(0,0,0),
		BorderSizePixel = 0,
	})
	main.Parent = gui
	newInstance("UICorner", {Parent = main, CornerRadius = UDim.new(0,16)})
	newInstance("UIStroke", {Parent = main, Color = Color3.fromRGB(120,0,0), Thickness = 2})

	-- Header
	local header = newInstance("Frame", {Parent = main, Size = UDim2.new(1,0,0,50), BackgroundColor3 = Color3.fromRGB(15,15,15), BorderSizePixel = 0})
	newInstance("UICorner", {Parent = header, CornerRadius = UDim.new(0,16)})
	local title = newInstance("TextLabel", {Parent = header, Text = self.Title, Font = Enum.Font.GothamBold, TextSize = 20, TextColor3 = Color3.new(1,1,1), BackgroundTransparency = 1, Position = UDim2.new(0,15,0,6), Size = UDim2.new(0.6,0,0,25), TextXAlignment = Enum.TextXAlignment.Left})
	local desc = newInstance("TextLabel", {Parent = header, Text = self.Desc, Font = Enum.Font.Gotham, TextSize = 14, TextColor3 = Color3.fromRGB(200,200,200), BackgroundTransparency = 1, Position = UDim2.new(0,15,0,28), TextXAlignment = Enum.TextXAlignment.Left})

	-- close button
	local close = newInstance("TextButton", {Parent = header, Text = "X", Font = Enum.Font.GothamBold, TextSize = 20, TextColor3 = Color3.fromRGB(255,80,80), BackgroundTransparency = 1, Size = UDim2.new(0,40,0,40), Position = UDim2.new(1,-45,0,5)})
	close.MouseButton1Click:Connect(function()
		self:Destroy()
	end)

	-- Tabs frame
	local tabsFrame = newInstance("Frame", {Parent = main, Size = UDim2.new(0,130,1,-60), Position = UDim2.new(0,10,0,55), BackgroundColor3 = Color3.fromRGB(15,15,15)})
	newInstance("UICorner", {Parent = tabsFrame, CornerRadius = UDim.new(0,12)})

	-- Content frame
	local contentFrame = newInstance("Frame", {Parent = main, Size = UDim2.new(1,-155,1,-70), Position = UDim2.new(0,145,0,60), BackgroundColor3 = Color3.fromRGB(10,10,10)})
	newInstance("UICorner", {Parent = contentFrame, CornerRadius = UDim.new(0,12)})

	local scroll = newInstance("ScrollingFrame", {Parent = contentFrame, Size = UDim2.new(1,0,1,0), CanvasSize = UDim2.new(0,0,0,0), ScrollBarThickness = 6, BackgroundTransparency = 1})
	scroll.AutomaticCanvasSize = Enum.AutomaticSize.Y
	local listLayout = newInstance("UIListLayout", {Parent = scroll, Padding = UDim.new(0,10), HorizontalAlignment = Enum.HorizontalAlignment.Center})

	-- helper: clear content
	local function clearContent()
		for _,c in ipairs(scroll:GetChildren()) do
			if not c:IsA("UIListLayout") then
				c:Destroy()
			end
		end
	end

	-- Separator
	local function Separator(parent)
		local sep = newInstance("Frame", {Parent = parent, Size = UDim2.new(0.9,0,0,1), BackgroundColor3 = Color3.fromRGB(60,0,0)})
		return sep
	end

	-- Element creators
	local function CreateButton(txt, parent, callback)
		local btn = newInstance("TextButton", {Parent = parent, Size = UDim2.new(0.9,0,0,35), BackgroundColor3 = Color3.fromRGB(25,25,25), Text = txt, TextColor3 = Color3.new(1,1,1), Font = Enum.Font.Gotham, TextSize = 16})
		newInstance("UICorner", {Parent = btn, CornerRadius = UDim.new(0,8)})
		Separator(parent)
		if callback then btn.MouseButton1Click:Connect(callback) end
		return btn
	end

	local function CreateToggle(txt, parent, callback, initial)
		local frame = newInstance("Frame", {Parent = parent, Size = UDim2.new(0.9,0,0,35), BackgroundTransparency = 1})
		local label = newInstance("TextLabel", {Parent = frame, Text = txt, TextColor3 = Color3.new(1,1,1), Size = UDim2.new(1,-40,1,0), Font = Enum.Font.Gotham, TextSize = 16, BackgroundTransparency = 1, TextXAlignment = Enum.TextXAlignment.Left})
		local toggle = newInstance("TextButton", {Parent = frame, Size = UDim2.new(0,35,0,25), Position = UDim2.new(1,-40,0.5,-12), Text = initial and "ON" or "OFF", Font = Enum.Font.Gotham, TextSize = 14, BackgroundColor3 = initial and Color3.fromRGB(120,0,0) or Color3.fromRGB(50,0,0)})
		newInstance("UICorner", {Parent = toggle, CornerRadius = UDim.new(0,8)})
		local state = initial and true or false
		toggle.MouseButton1Click:Connect(function()
			state = not state
			toggle.Text = state and "ON" or "OFF"
			toggle.BackgroundColor3 = state and Color3.fromRGB(120,0,0) or Color3.fromRGB(50,0,0)
			if callback then pcall(callback, state) end
		end)
		Separator(parent)
		return toggle
	end

	local function CreateSlider(txt, parent, minv, maxv, default, callback)
		minv = minv or 0
		maxv = maxv or 100
		default = default or minv
		local label = newInstance("TextLabel", {Parent = parent, Text = txt .. " (".. tostring(default) ..")", Size = UDim2.new(0.9,0,0,25), TextColor3 = Color3.new(1,1,1), Font = Enum.Font.Gotham, TextSize = 16, BackgroundTransparency = 1, TextXAlignment = Enum.TextXAlignment.Left})
		local slider = newInstance("Frame", {Parent = parent, Size = UDim2.new(0.9,0,0,10), BackgroundColor3 = Color3.fromRGB(40,0,0), BorderSizePixel = 0})
		newInstance("UICorner", {Parent = slider, CornerRadius = UDim.new(1,0)})
		local bar = newInstance("Frame", {Parent = slider, BackgroundColor3 = Color3.fromRGB(120,0,0), Size = UDim2.new((default-minv)/(maxv-minv),0,1,0), BorderSizePixel = 0})
		newInstance("UICorner", {Parent = bar, CornerRadius = UDim.new(1,0)})
		local knob = newInstance("Frame", {Parent = slider, Size = UDim2.new(0,16,0,16), Position = UDim2.new(bar.Size.X.Scale, -8, 0.5, -8), BackgroundColor3 = Color3.fromRGB(255,50,50), BorderSizePixel = 0})
		newInstance("UICorner", {Parent = knob, CornerRadius = UDim.new(1,0)})

		local dragging = false
		local moveConn
		slider.InputBegan:Connect(function(input)
			if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
				dragging = true
				moveConn = UIS.InputChanged:Connect(function(inp)
					if inp.UserInputType == Enum.UserInputType.MouseMovement or inp.UserInputType == Enum.UserInputType.Touch then
						local pos = math.clamp((inp.Position.X - slider.AbsolutePosition.X)/slider.AbsoluteSize.X, 0, 1)
						bar.Size = UDim2.new(pos,0,1,0)
						knob.Position = UDim2.new(pos, -8, 0.5, -8)
						local val = minv + (maxv-minv)*pos
						label.Text = txt .. " (" .. math.floor(val) .. ")"
						if callback then pcall(callback, math.floor(val)) end
					end
				end)
			end
		end)
		slider.InputEnded:Connect(function(input)
			if moveConn then moveConn:Disconnect() end
			dragging = false
		end)
		Separator(parent)
		return slider
	end

	local function CreateDropdown(txt, parent, options, callback)
		local drop = newInstance("TextButton", {Parent = parent, Size = UDim2.new(0.9,0,0,35), BackgroundColor3 = Color3.fromRGB(25,25,25), Text = txt .. " ▼", TextColor3 = Color3.new(1,1,1), Font = Enum.Font.Gotham, TextSize = 16})
		newInstance("UICorner", {Parent = drop, CornerRadius = UDim.new(0,8)})
		local list = newInstance("Frame", {Parent = parent, Size = UDim2.new(0.9,0,0,0), BackgroundColor3 = Color3.fromRGB(15,15,15), Visible = false, ClipsDescendants = true})
		newInstance("UICorner", {Parent = list, CornerRadius = UDim.new(0,8)})
		local layout = newInstance("UIListLayout", {Parent = list, Padding = UDim.new(0,2)})

		local open = false
		drop.MouseButton1Click:Connect(function()
			open = not open
			list.Visible = open
			list.Size = UDim2.new(0.9,0,0, open and (#options * 32 + 6) or 0)
		end)
		for i,opt in ipairs(options) do
			local optBtn = newInstance("TextButton", {Parent = list, Size = UDim2.new(1,0,0,30), BackgroundColor3 = Color3.fromRGB(90,0,0), Text = opt, TextColor3 = Color3.new(1,1,1), Font = Enum.Font.Gotham, TextSize = 15})
			local sep = newInstance("Frame", {Parent = optBtn, Size = UDim2.new(1,0,0,1), Position = UDim2.new(0,0,1,-1), BackgroundColor3 = Color3.fromRGB(120,0,0), BorderSizePixel = 0})
			optBtn.MouseButton1Click:Connect(function()
				drop.Text = txt .. ": " .. opt .. " ▼"
				list.Visible = false
				open = false
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
	function self:Tab(name, iconId, thumbId)
		local tabObj = setmetatable({}, TabClass)
		tabObj.Name = name or "Tab"
		tabObj.IconId = iconId
		tabObj.ThumbId = thumbId

		-- create visual tab button in tabsFrame
		local index = #self.Tabs + 1
		local tabBtn = newInstance("TextButton", {Parent = tabsFrame, Size = UDim2.new(1,-10,0,35), Position = UDim2.new(0,5,0,(index-1)*45 + 5), BackgroundColor3 = Color3.fromRGB(25,25,25), Text = "", AutoButtonColor = false})
		newInstance("UICorner", {Parent = tabBtn, CornerRadius = UDim.new(0,8)})
		local icon = newInstance("ImageLabel", {Parent = tabBtn, Size = UDim2.new(0,20,0,20), Position = UDim2.new(0,8,0.5,-10), BackgroundTransparency = 1})
		if iconId then icon.Image = "rbxassetid://" .. tostring(iconId) end
		local label = newInstance("TextLabel", {Parent = tabBtn, Size = UDim2.new(1,-50,1,0), Position = UDim2.new(0,45,0,0), Text = name, Font = Enum.Font.GothamBold, TextSize = 14, TextColor3 = Color3.new(1,1,1), BackgroundTransparency = 1, TextXAlignment = Enum.TextXAlignment.Left})

		-- create thumbnail toggle (small image) that closes/opens full UI
		local thumb = newInstance("ImageButton", {Parent = tabBtn, Size = UDim2.new(0,28,0,28), Position = UDim2.new(1,-40,0.5,-14), BackgroundTransparency = 1})
		if thumbId then thumb.Image = "rbxassetid://" .. tostring(thumbId) end
		thumb.MouseButton1Click:Connect(function()
			self.Open = not self.Open
			self._Gui.Enabled = self.Open
		end)

		-- tab click behavior
		tabBtn.MouseButton1Click:Connect(function()
			clearContent()
			-- call default callback builder from user by returning the tabObj to script author
			-- highlight tab
			for _,c in ipairs(tabsFrame:GetChildren()) do
				if c:IsA("TextButton") then
					local s = c:FindFirstChildWhichIsA("UIStroke")
					if s then s.Thickness = 0 end
				end
			end
			local stroke = tabBtn:FindFirstChildWhichIsA("UIStroke") or newInstance("UIStroke",{Parent=tabBtn, Color = Color3.fromRGB(120,0,0), Thickness = 2})
			stroke.Thickness = 2
			-- run user-provided builder if exists (we store builder function in tabObj._Builder)
			if tabObj._Builder then
				pcall(tabObj._Builder, tabObj)
			end
		end)

		-- select first tab automatically if it's the first
		if index == 1 then
			tabBtn.UIStroke.Thickness = 2
		end

		self.Tabs[#self.Tabs+1] = tabObj

		-- attach internal references for later
		tabObj._TabButton = tabBtn
		tabObj._ThumbButton = thumb
		tabObj._ParentScroll = scroll

		-- a helper to allow the script to set a builder function that executes when tab is selected
		function tabObj:SetBuilder(fn)
			tabObj._Builder = fn
		end

		return tabObj
	end

	-- Floating icon to toggle (draggable)
	local toggleGui = newInstance("ScreenGui", {Parent = game.CoreGui, Name = "DevRectToggle", IgnoreGuiInset = true, ResetOnSpawn = false})
	local iconBtn = newInstance("ImageButton", {Parent = toggleGui, Name = "DevRectIcon", Size = UDim2.new(0,55,0,55), Position = UDim2.new(0.05,0,0.5,-27), BackgroundTransparency = 1, ZIndex = 999})
	iconBtn.Image = "rbxassetid://6031090990"
	local dragging, dragInput, startPos, startInputPos
	iconBtn.InputBegan:Connect(function(input)
		if input.UserInputType == Enum.UserInputType.Touch or input.UserInputType == Enum.UserInputType.MouseButton1 then
			dragging = true
			startInputPos = input.Position
			startPos = iconBtn.Position
			input.Changed:Connect(function()
				if input.UserInputState == Enum.UserInputState.End then dragging = false end
			end)
		end
	end)
	iconBtn.InputChanged:Connect(function(input)
		if input.UserInputType == Enum.UserInputType.MouseMovement or input.UserInputType == Enum.UserInputType.Touch then
			dragInput = input
		end
	end)
	UIS.InputChanged:Connect(function(input)
		if input == dragInput and dragging then
			local delta = input.Position - startInputPos
			iconBtn.Position = UDim2.new(startPos.X.Scale, startPos.X.Offset + delta.X, startPos.Y.Scale, startPos.Y.Offset + delta.Y)
		end
	end)
	iconBtn.MouseButton1Click:Connect(function()
		self.Open = not self.Open
		self._Gui.Enabled = self.Open
	end)

	-- store internal refs
	self._Main = main
	self._Header = header
	self._TabsFrame = tabsFrame
	self._Content = contentFrame
	self._Scroll = scroll
	self._ToggleGui = toggleGui

	-- return instance
	return self
end

-- Destroy UI
function DevRect:Destroy()
	if self._Gui then
		self._Gui:Destroy()
		self._Gui = nil
	end
	if self._ToggleGui then
		pcall(function() self._ToggleGui:Destroy() end)
	end
end

-- Convenience wrapper to allow loadstring-style immediate call:
-- Example: local DevRect = loadstring(game:HttpGet(url))(); local ui = DevRect:Create(...)
return DevRect
