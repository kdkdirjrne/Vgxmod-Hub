local Players = game:GetService("Players")
local TweenService = game:GetService("TweenService")

local player = Players.LocalPlayer

local gui = Instance.new("ScreenGui")
gui.Name = "CopyLoaderUI"
gui.ResetOnSpawn = false
gui.Parent = player:WaitForChild("PlayerGui")

local box = Instance.new("Frame")
box.Size = UDim2.new(0, 330, 0, 180)
box.Position = UDim2.new(0.5, -165, 0.5, -90)
box.BackgroundColor3 = Color3.fromRGB(22, 17, 43)
box.BorderSizePixel = 1
box.BorderColor3 = Color3.fromRGB(100, 70, 150)
box.Parent = gui

local topLine = Instance.new("Frame")
topLine.Size = UDim2.new(1, 0, 0, 3)
topLine.BackgroundColor3 = Color3.fromRGB(168, 85, 247)
topLine.BorderSizePixel = 0
topLine.Parent = box

local title = Instance.new("TextLabel")
title.Size = UDim2.new(1, -30, 0, 32)
title.Position = UDim2.new(0, 15, 0, 15)
title.BackgroundTransparency = 1
title.Text = "NEW LOADER UPDATE"
title.TextColor3 = Color3.fromRGB(225, 205, 255)
title.TextSize = 19
title.Font = Enum.Font.GothamBold
title.TextXAlignment = Enum.TextXAlignment.Left
title.Parent = box

local line = Instance.new("Frame")
line.Size = UDim2.new(1, -30, 0, 1)
line.Position = UDim2.new(0, 15, 0, 52)
line.BackgroundColor3 = Color3.fromRGB(65, 50, 90)
line.BorderSizePixel = 0
line.Parent = box

local label = Instance.new("TextLabel")
label.Size = UDim2.new(1, -30, 0, 25)
label.Position = UDim2.new(0, 15, 0, 62)
label.BackgroundTransparency = 1
label.Text = "update fast execute"
label.TextColor3 = Color3.fromRGB(255, 255, 255)
label.TextSize = 16
label.Font = Enum.Font.GothamMedium
label.TextXAlignment = Enum.TextXAlignment.Left
label.Parent = box

local pasteLabel = Instance.new("TextLabel")
pasteLabel.Size = UDim2.new(1, -30, 0, 22)
pasteLabel.Position = UDim2.new(0, 15, 0, 87)
pasteLabel.BackgroundTransparency = 1
pasteLabel.Text = "Copy Link And Paste It In Your Browser."
pasteLabel.TextColor3 = Color3.fromRGB(155, 150, 170)
pasteLabel.TextSize = 13
pasteLabel.Font = Enum.Font.Gotham
pasteLabel.TextXAlignment = Enum.TextXAlignment.Left
pasteLabel.Parent = box

local copyButton = Instance.new("TextButton")
copyButton.Size = UDim2.new(1, -30, 0, 42)
copyButton.Position = UDim2.new(0, 15, 0, 122)
copyButton.BackgroundColor3 = Color3.fromRGB(168, 85, 247)
copyButton.BorderSizePixel = 0
copyButton.AutoButtonColor = false
copyButton.Text = "COPY LINK"
copyButton.TextColor3 = Color3.fromRGB(255, 255, 255)
copyButton.TextSize = 15
copyButton.Font = Enum.Font.GothamBold
copyButton.Parent = box

local buttonStroke = Instance.new("UIStroke")
buttonStroke.Color = Color3.fromRGB(205, 160, 255)
buttonStroke.Transparency = 0.45
buttonStroke.Thickness = 1
buttonStroke.Parent = copyButton

copyButton.MouseEnter:Connect(function()
	TweenService:Create(
		copyButton,
		TweenInfo.new(0.15),
		{BackgroundColor3 = Color3.fromRGB(185, 105, 255)}
	):Play()
end)

copyButton.MouseLeave:Connect(function()
	TweenService:Create(
		copyButton,
		TweenInfo.new(0.15),
		{BackgroundColor3 = Color3.fromRGB(168, 85, 247)}
	):Play()
end)

copyButton.MouseButton1Down:Connect(function()
	TweenService:Create(
		copyButton,
		TweenInfo.new(0.08),
		{BackgroundColor3 = Color3.fromRGB(135, 60, 205)}
	):Play()
end)

copyButton.MouseButton1Click:Connect(function()
	if setclipboard then
		setclipboard("https://roblox.vgxmodhub.workers.dev/loader")

		copyButton.Text = "COPIED"

		local notification = Instance.new("TextLabel")
		notification.Size = UDim2.new(0, 230, 0, 42)
		notification.Position = UDim2.new(0.5, -115, 0, 25)
		notification.BackgroundColor3 = Color3.fromRGB(22, 17, 43)
		notification.BorderSizePixel = 1
		notification.BorderColor3 = Color3.fromRGB(168, 85, 247)
		notification.Text = "Link copied"
		notification.TextColor3 = Color3.fromRGB(230, 220, 245)
		notification.TextSize = 13
		notification.Font = Enum.Font.GothamMedium
		notification.Parent = gui

		task.wait(1)
		gui:Destroy()
	end
end)
