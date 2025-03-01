local ui = game:GetService "CoreGui":FindFirstChild "VVV"
local toggk = game:GetService"CoreGui":FindFirstChild"Toggle"
if ui then
    ui:Destroy()
end
if toggk then
    toggk:Destroy()
end
Config = {
	Logo = "rbxassetid://103544969566862",
	TabColor = Color3.fromRGB(15, 15, 15),
    StrokeColor = Color3.fromRGB(23, 23, 23),
    Other = Color3.fromRGB(2, 182, 255),
	SizeLib = UDim2.new(0, 550, 0, 330)
}
		local Toggle = Instance.new"ScreenGui"
		local Frames = Instance.new"ImageButton"
    	local DropShadow = Instance.new "ImageLabel"
		local cn = Instance.new("UICorner")
		Toggle.Name = "Toggle"
		Toggle.Parent = game.CoreGui
		Toggle.ZIndexBehavior = Enum.ZIndexBehavior.Global
		Frames.Name = "c4"
		Frames.Parent = Toggle
		Frames.Draggable = true
		Frames.AnchorPoint = Vector2.new(0.5, 0.5)
		Frames.BackgroundColor3 = Color3.fromRGB(20, 20, 20)
		Frames.BorderColor3 = Color3.fromRGB(0, 0, 0)
		Frames.BorderSizePixel = 0
		Frames.Position = UDim2.new(0.886243403, 0, 0.194968551, 0)
    	Frames.Size = UDim2.new(0.200000003, 0, 0.200000003, 0)
		Frames.Image = Config.Logo
		Frames.SizeConstraint = Enum.SizeConstraint.RelativeYY
		Frames.ZIndex = 67
		cn.Parent = Frames
		cn.CornerRadius = UDim.new(0, 15)
		DropShadow.Name = "DropShadow"
		DropShadow.Parent = Frames
		DropShadow.AnchorPoint = Vector2.new(0.5, 0.5)
		DropShadow.BackgroundTransparency = 1
		DropShadow.BorderSizePixel = 0
		DropShadow.Position = UDim2.new(0.5, 0, 0.5, 0)
		DropShadow.Size = UDim2.new(1, 47, 1, 47)
		DropShadow.ZIndex = 66
		DropShadow.Image = "rbxassetid://6015897843"
		DropShadow.ImageColor3 = Color3.fromRGB(0, 0, 0)
		DropShadow.ImageTransparency = 0.5
		DropShadow.ScaleType = Enum.ScaleType.Slice
		DropShadow.SliceCenter = Rect.new(49, 49, 450, 450)
		Frames.MouseButton1Down:Connect(function()
            local tf = game:GetService("CoreGui").VVV:FindFirstChild("Main")
			if tf.Visible == false then
                    tf.Visible = true
                elseif tf.Visible == true then
				tf.Visible = false
			end

_G.Color = Config.StrokeColor
_G.Color2 = Config.Other
font = Enum.Font.GothamBold
colorlib = Config.TabColor
local h = game:GetService"UserInputService"
local j = game:GetService"TweenService"

local function bg(bh, a0)
	local bi = nil
	local bj = nil
	local bk = nil
	local bl = nil

	local function bm(bn)
		local bo = bn.Position - bk
		local bp = UDim2.new(bl.X.Scale, bl.X.Offset + bo.X, bl.Y.Scale, bl.Y.Offset + bo.Y)
		local bq = j:Create(a0, TweenInfo.new(0.15), { Position = bp })
		bq:Play()

	bh.InputBegan:Connect(function(bn)
		if bn.UserInputType == Enum.UserInputType.MouseButton1 or bn.UserInputType == Enum.UserInputType.Touch then
			bi = true
			bk = bn.Position
			bl = a0.Position
			bn.Changed:Connect(function()
				if bn.UserInputState == Enum.UserInputState.End then bi = false end
			end)
		end
	bh.InputChanged:Connect(function(bn)
		if bn.UserInputType == Enum.UserInputType.MouseMovement or bn.UserInputType == Enum.UserInputType.Touch then bj = bn end
	end)
	h.InputChanged:Connect(function(bn) if bn == bj and bi then bm(bn) end end)

local bm = {}

function bm:Window(text, des, bs)
    local s = Instance.new "UICorner"
    local bt = {}
    local bu = false
    local bv = false
    local bw = ""
    local bs = bs or Enum.KeyCode.F1
    local bx = string.gsub(tostring(bs), "Enum.KeyCode.", "")
    local by = Instance.new "ScreenGui"
    by.Name = "VVV"
    by.Parent = game:GetService "CoreGui"
    by.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
    local bz = Instance.new "Frame"
    bz.Name = "Main"
    bz.Parent = by
    bz.ClipsDescendants = true
    bz.AnchorPoint = Vector2.new(0.5, 0.5)
    bz.BackgroundColor3 = colorlib
    bz.BackgroundTransparency = 0
    bz.Position = UDim2.new(0.5, 0, 0.5, 0)
    bz.Size = UDim2.new(0, 0, 0, 0)
    bz:TweenSize(Config.SizeLib, "Out", "Quad", 0.4, true)
    local SK = Instance.new("UIStroke")
    SK.Parent = bz
    SK.Thickness = 3
    SK.Color = Color3.fromRGB(25, 25, 25)
    local bB = Instance.new "UICorner"
    bB.Name = "MCNR"
    bB.Parent = bz
    bB.CornerRadius = UDim.new(0, 7)
    local bC = Instance.new "Frame"
    bC.Name = "Top"
    bC.Parent = bz
    bC.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
    bC.Size = UDim2.new(0, 556, 0, 30)
    bC.BackgroundTransparency = 0.85
    local bD = Instance.new "UICorner"
    bD.Name = "TCNR"
    bD.Parent = bC
    bD.CornerRadius = UDim.new(0, 5)
    local bE = Instance.new "ImageLabel"
    bE.Name = "Logo"
    bE.Parent = bC
    bE.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    bE.BackgroundTransparency = 1
    bE.Position = UDim2.new(0, 8, 0, 3)
    bE.Size = UDim2.new(0, 25, 0, 25)
    bE.Image = Config.Logo
    local bu = Instance.new "UICorner"
    bu.Parent = bE
    bu.CornerRadius = UDim.new(0, 10)
    local bF = Instance.new "Frame"
    bF.Name = "Tab"
    bF.Parent = bz
    bF.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
    bF.Position = UDim2.new(0, 1, 0, 35)
    bF.Size = UDim2.new(0, 0, 0, 0)
	bF.Transparency = 1
    local bG = Instance.new "UIListLayout"
    bG.Name = "TabCorner"
    bG.Parent = bF
    bG.SortOrder = Enum.SortOrder.LayoutOrder
    bG.Padding = UDim.new(0, 15)
    local bA = Instance.new "UIStroke"
    local bH = Instance.new "ScrollingFrame"
    local bI = Instance.new "UICorner"
    bH.Name = "ScrollTab"
    bH.Parent = bF
    bH.Active = true
    bH.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    bH.BackgroundTransparency = 1
    bH.Size = UDim2.new(0, 140, 0, 1000)
    bH.CanvasSize = UDim2.new(0, 0, 0, 0)
    bH.ScrollBarThickness = 0
    local bJ = Instance.new "UIListLayout"
    bJ.Name = "PLL"
    bJ.Parent = bH
    bJ.SortOrder = Enum.SortOrder.LayoutOrder
    bJ.Padding = UDim.new(0, 5)
    local bK = Instance.new "UIPadding"
    bK.Name = "PPD"
    bK.Parent = bH
    bK.PaddingLeft = UDim.new(0, 9)
    bK.PaddingTop = UDim.new(0, 2)
    local bA = Instance.new "UIStroke"
    local bL = Instance.new "Frame"
    local bM = Instance.new "TextLabel"
    local bN = Instance.new "Frame"
    bN.Name = "Page"
    bN.Parent = bz
    bN.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
    bN.BackgroundTransparency = 1
    bN.Position = UDim2.new(0.255426834, 0, 0.086000003, 0)
    bN.Size = UDim2.new(0, 410, 0, 308)
    local bO = Instance.new "UICorner"
    bO.Parent = bN
    bO.CornerRadius = UDim.new(0, 3)
    local bP = Instance.new "Frame"
    bP.Name = "MainPage"
    bP.Parent = bN
    bP.ClipsDescendants = true
    bP.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    bP.BackgroundTransparency = 1
    bP.Size = UDim2.new(0, 410, 0, 308)
    local bQ = Instance.new "Folder"
    bQ.Name = "PageList"
    bQ.Parent = bP
    local bR = Instance.new "UIPageLayout"
    bR.Parent = bQ
    bR.SortOrder = Enum.SortOrder.LayoutOrder
    bR.EasingDirection = Enum.EasingDirection.InOut
    bR.EasingStyle = Enum.EasingStyle.Quad
    bR.FillDirection = Enum.FillDirection.Vertical
    bR.Padding = UDim.new(0, 10)
    bR.TweenTime = 0.4
    bR.GamepadInputEnabled = false
    bR.ScrollWheelInputEnabled = false
    bR.TouchInputEnabled = false
    bg(bC, bz)
    h.InputBegan:Connect(function(bn)
        if bn.KeyCode == Enum.KeyCode.F1 then
            if bu == false then
                bu = true
                bz:TweenSize(UDim2.new(0, 0, 0, 0), "In", "Quad", 0.4, true)
                bz.Visible = false
            else
                bu = false
                bz:TweenSize(UDim2.new(0, 550, 0, 350), "Out", "Quad", 0.5, true)
                bz.Visible = true
            end
        end
    end)
    bL.Parent = bz
    bL.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
    bL.BackgroundTransparency = 1
    bL.BorderColor3 = Color3.fromRGB(0, 0, 0)
    bL.BorderSizePixel = 0
    bL.Position = UDim2.new(0.1, -150, 0.158805028, -80)

    bM.Parent = bz
    bM.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    bM.BackgroundTransparency = 1
    bM.BorderColor3 = Color3.fromRGB(0, 0, 0)
    bM.BorderSizePixel = 0
    bM.Position = UDim2.new(0.5, 0, 0, 0)
    bM.AnchorPoint = Vector2.new(0.451, 0)
    bM.Size = UDim2.new(0, 520, 0, 15)
    bM.Font = font
    bM.Text = text
    bM.TextColor3 = Color3.fromRGB(255, 255, 255)
    bM.TextSize = 15
    bM.TextWrapped = true
    bM.TextXAlignment = Enum.TextXAlignment.Left
    bM.TextYAlignment = Enum.TextYAlignment.Top
    local uu = Instance.new("UIGradient")
    uu.Parent = bM
    uu.Color = ColorSequence.new({
        ColorSequenceKeypoint.new(0, Color3.fromRGB(2, 182, 255)), -- 0% - White
        ColorSequenceKeypoint.new(1, Color3.fromRGB(0, 47, 128)) -- 100% - Black
    })
    local b0 = Instance.new("TextLabel")
    local b4 = Instance.new("UIGradient")
    b0.Parent = bz
    b0.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    b0.BackgroundTransparency = 1
    b0.BorderColor3 = Color3.fromRGB(0, 0, 0)
    b0.BorderSizePixel = 0
    b0.Position = UDim2.new(0.5, 0, 0, 0)
    b0.AnchorPoint = Vector2.new(0.45, 0.1)
    b0.Size = UDim2.new(0, 520, 0, 30)
    b0.Font = font
    b0.Text = des
    b0.TextColor3 = Color3.fromRGB(255, 255, 255)
    b0.TextSize = 12
    b0.TextWrapped = true
    b0.TextXAlignment = Enum.TextXAlignment.Left
    b0.TextYAlignment = Enum.TextYAlignment.Bottom
    b4.Parent = b0
    b4.Color = ColorSequence.new({
        ColorSequenceKeypoint.new(0, Color3.fromRGB(255, 255, 255)), -- 0% - White
        ColorSequenceKeypoint.new(1, Color3.fromRGB(63, 63, 63)) -- 100% - Black
    })

local bS = {}

	function bS:Tab(d, Des, bT)
		local bA = Instance.new"UIStroke"
		local bU = Instance.new"UICorner"
		local bV = Instance.new"TextButton"
		local bW2 = Instance.new("TextLabel")
		local bX = Instance.new"UICorner"
    	local bY = Instance.new "TextLabel"
		local bZ = Instance.new "ImageLabel"
		bV.Parent = bH
		bV.Name = d .. "Server"
		bV.Text = ""
		bV.Font = font
    	bV.TextColor3 = Color3.fromRGB(255, 255, 255)
    	bV.TextSize = 12
    	bV.TextTransparency = 0.5
		bV.BackgroundColor3 = colorlib
    	bV.BackgroundTransparency = 0.5
    	bV.Size = UDim2.new(0, 120, 0, 37)

		bY.Parent = bV
		bY.BackgroundColor3 = Color3.fromRGB(150, 150, 150)
		bY.BackgroundTransparency = 1
		bY.Position = UDim2.new(0, 25, 0, 0)
		bY.Size = UDim2.new(0, 100, 0, 25)
		bY.Font = Enum.Font.GothamSemibold
		bY.Text = d
		bY.TextColor3 = Color3.fromRGB(255, 255, 255)
		bY.TextSize = 15
		bY.TextXAlignment = Enum.TextXAlignment.Left

        bW2.Parent = bV
		bW2.Font = font
		bW2.Text = Des
		bW2.Position = UDim2.new(0, 35, 0, 15)
		bW2.Size = UDim2.new(0, 90, 0, 25)
		bW2.BackgroundTransparency = 1
		bW2.TextSize = 13
		bW2.TextTransparency = 0.5
		bW2.TextColor3 = Color3.fromRGB(255, 255, 255)
		bW2.TextXAlignment = Enum.TextXAlignment.Left
		bW2.TextYAlignment = Enum.TextYAlignment.Center


		bZ.Name = "LogoIDK"
    	bZ.Parent = bV
    	bZ.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    	bZ.BackgroundTransparency = 1
    	bZ.Position = UDim2.new(0, 0, 0, 5)
    	bZ.Size = UDim2.new(0, 30, 0, 30)
    	bZ.Image = bT

		bX.CornerRadius = UDim.new(0, 3)
		bX.Parent = bV
		bA.Name = "BtnStroke"
		bA.Parent = bV
		bA.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
		bA.Color = colorlib
		bA.LineJoinMode = Enum.LineJoinMode.Round
		bA.Thickness = 2
		bA.Transparency = 0.5
		bA.Enabled = true
		bA.Archivable = true
		local b_ = Instance.new"ScrollingFrame"
		b_.Name = d .. "_Page"
		b_.Parent = bQ
		b_.Active = true
		b_.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
		b_.BackgroundTransparency = 1
		b_.BorderSizePixel = 0
		b_.Size = UDim2.new(0, 400, 0, 308)
		b_.CanvasSize = UDim2.new(0, 0, 0, 0)
		b_.ScrollBarThickness = 0
		local c0 = Instance.new"UIPadding"
		local c1 = Instance.new"UIListLayout"
		c0.Parent = b_
		c0.PaddingLeft = UDim.new(0, 10)
		c0.PaddingTop = UDim.new(0, 5)
		c1.Padding = UDim.new(0, 12)
		c1.Parent = b_
        c1.SortOrder = Enum.SortOrder.LayoutOrder
		local bW = bV:FindFirstChild("TextLabel") -- ค้นหา TextLabel ที่มีอยู่ใน bV โดยไม่ต้องสร้างใหม่
		if bW then
    	bW.Position = UDim2.new(0, 35, 0, 0)
		bW.Size = UDim2.new(0, 100, 0, 25)
		bW.BackgroundTransparency = 1
		bW.TextColor3 = Color3.fromRGB(255, 255, 255)
        bW.TextSize = 14
        bW.Font = font
		bW.TextXAlignment = Enum.TextXAlignment.Left
		else
   	warn("TextLabel ไม่พบใน bV")
		end
		bV.MouseButton1Click:Connect(function()
			for y, z in next, bH:GetChildren() do
				if z:IsA"TextButton" then
					j:Create(z, TweenInfo.new(0.3, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), { TextTransparency = 0.5 }):Play()
				end
				j:Create(bV, TweenInfo.new(0.3, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), { TextTransparency = 0 }):Play()
			end
			for y, z in next, bQ:GetChildren() do
				bw = string.gsub(bV.Name, "Server", "") .. "_Page"
				if z.Name == bw then bR:JumpTo(z) end
			end
		end)
		if bv == false then
			for y, z in next, bH:GetChildren() do
				if z:IsA"TextButton" then
					j:Create(z, TweenInfo.new(0.3, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), { TextTransparency = 0.5 }):Play()
				end
				j:Create(bV, TweenInfo.new(0.3, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), { TextTransparency = 0 }):Play()
			end
			bR:JumpToIndex(1)
			bv = true
		end
		game:GetService"RunService".Stepped:Connect(function()
			pcall(function()
				b_.CanvasSize = UDim2.new(0, 0, 0, c1.AbsoluteContentSize.Y + 20)
				bH.CanvasSize = UDim2.new(0, 0, 0, bJ.AbsoluteContentSize.Y + 20)
			end)

        local cd = {}

        function cd:Toggle(d, d2, im, ck, ce)
            ck = ck or false
            local cl = ck
            local s = Instance.new "UICorner"
            local r = Instance.new "UIStroke"
            local cf = Instance.new "TextButton"
            local ch = Instance.new "UICorner"
            local bY = Instance.new "TextLabel"
            local bY2 = Instance.new "TextLabel"
            local cm = Instance.new "Frame"
            local cj = Instance.new "UICorner"
            local cn = Instance.new "ImageLabel"
            local co = Instance.new "UICorner"
            local cp = Instance.new "ImageLabel"

            cf.Name = "Toggle"
            cf.Parent = b_
            cf.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
            cf.Position = UDim2.new(0, 1, 0, 1)
            cf.Size = UDim2.new(0, 387, 0, 120)
            cf.Transparency = 1
            cf.AutoButtonColor = false
            cf.Font = Enum.Font.GothamBold
            cf.Text = ""
            cf.TextColor3 = Color3.fromRGB(0, 0, 0)
            cf.TextSize = 11

            r.Name = "UIStroke"
            r.Parent = cf
            r.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
            r.Color = _G.Color
            r.LineJoinMode = Enum.LineJoinMode.Round
            r.Thickness = 2.5
            r.Transparency = 0.5
            r.Enabled = true
            r.Archivable = true

            ch.CornerRadius = UDim.new(0, 3)
            ch.Parent = cf

            bY.Parent = cf
            bY.BackgroundColor3 = Color3.fromRGB(150, 150, 150)
            bY.BackgroundTransparency = 1
            bY.Position = UDim2.new(0, 10, 0, 4)
            bY.Size = UDim2.new(0, 280, 0, 30)
            bY.Font = Enum.Font.GothamBold
            bY.Text = "" .. d
            bY.TextColor3 = Color3.fromRGB(255, 255, 255)
            bY.TextSize = 25
            bY.TextXAlignment = Enum.TextXAlignment.Left

            cp.Name = "ImageLogo"
            cp.Parent = cf
            cp.Position = UDim2.new(0, 305, 0, 15)
            cp.Size = UDim2.new(0, 70, 0, 70)
            cp.Image = im
            cp.BackgroundTransparency = 1

            bY2.Parent = cf
            bY2.BackgroundColor3 = Color3.fromRGB(150, 150, 150)
            bY2.BackgroundTransparency = 1
            bY2.Position = UDim2.new(0, 11, 0, 40)
            bY2.Size = UDim2.new(0, 280, 0, 40)
            bY2.Font = Enum.Font.GothamBold
            bY2.Text = "" .. d2
            bY2.TextColor3 = Color3.fromRGB(255, 255, 255)
            bY2.TextSize = 15
            bY2.TextTransparency = 0.5
            bY2.TextXAlignment = Enum.TextXAlignment.Left
            bY2.TextYAlignment = Enum.TextYAlignment.Top
            bY2.TextScaled = true
            task.wait(0.2)
            bY2.TextScaled = false
            cm.Name = "ToggleImage"
            cm.Parent = cf
            cm.BackgroundColor3 = Color3.fromRGB(225, 225, 225)
            cm.BackgroundTransparency = 0.8999999762
            cm.Position = UDim2.new(0, 10, 0, 77)
            cm.Size = UDim2.new(0, 35, 0, 35)

            cj.CornerRadius = UDim.new(0, 100)
            cj.Parent = cm

            cn.Name = "Circle"
            cn.Parent = cm
            cn.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
            cn.BackgroundTransparency = 1
            cn.Position = UDim2.new(0, 0, 0, 0)
            cn.Size = UDim2.new(0, 0, 0, 0)
            cn.Image = "http://www.roblox.com/asset/?id=00"
			cn.ImageColor3 = Config.Other
            co.CornerRadius = UDim.new(0, 15)
            co.Parent = cn

            cf.MouseButton1Click:Connect(function()
                local cq = Instance.new "Sound"
                cq.Name = "SoundEffect"
                cq.SoundId = "rbxassetid://130785805"
                cq.Volume = 1
                cq.Parent = game.Players.LocalPlayer.Character:WaitForChild "HumanoidRootPart"
                cq:Play()
                if cl == false then
                    cl = true
                    pcall(ce, true)
                    cn.BackgroundColor3 = _G.Color2
                    cn.Image = "rbxassetid://121857319732938"
                    cj.CornerRadius = UDim.new(0, 100)
                    cn:TweenSize(UDim2.new(1, 0, 1, 0), "In", "Back", 0.1, true)
                else
                    cl = false
                    pcall(ce, false)
                    cn.BackgroundColor3 = Color3.fromRGB(20, 20, 20)
                    cn:TweenSize(UDim2.new(0, 0, 0, 0), "In", "Back", 0.1, true)
                    cn.Image = "http://www.roblox.com/asset/?id=00"
                end
                cq:Destroy()
            end)
            if ck == true then
                cl = true
                cn.BackgroundColor3 = _G.Color2
                cn.Image = "rbxassetid://76805904046378"
                cj.CornerRadius = UDim.new(0, 100)
                cn:TweenSize(UDim2.new(1, 0, 1, 0), "In", "Back", 0.1, true)
                pcall(ce, cl)
            end

        function cd:Button(d, d2, cb)
            ck = ck or false
            local cl = ck
            local s = Instance.new "UICorner"
            local r = Instance.new "UIStroke"
            local cf = Instance.new "TextButton"
            local ch = Instance.new "UICorner"
            local bY = Instance.new "TextLabel"
            local bY2 = Instance.new "TextLabel"
            local cm = Instance.new "Frame"
            local cj = Instance.new "UICorner"
            local cn = Instance.new "ImageLabel"
            local co = Instance.new "UICorner"
            local cp = Instance.new "ImageLabel"

            cf.Name = "Button"
            cf.Parent = b_
            cf.BackgroundColor3 = colorlib
            cf.Position = UDim2.new(0, 1, 0, 1)
            cf.Size = UDim2.new(0, 388, 0, 60)
            cf.AutoButtonColor = false
            cf.Font = Enum.Font.GothamBold
            cf.Text = ""
            cf.TextColor3 = Color3.fromRGB(0, 0, 0)
            cf.TextSize = 11

            r.Name = "UIStroke"
            r.Parent = cf
            r.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
            r.Color = _G.Color
            r.LineJoinMode = Enum.LineJoinMode.Round
            r.Thickness = 2.5
            r.Transparency = 0.5
            r.Enabled = true
            r.Archivable = true

            ch.CornerRadius = UDim.new(0, 3)
            ch.Parent = cf

            bY.Parent = cf
            bY.BackgroundColor3 = Color3.fromRGB(150, 150, 150)
            bY.BackgroundTransparency = 1
            bY.Position = UDim2.new(0, 10, 0, 4)
            bY.Size = UDim2.new(0, 280, 0, 30)
            bY.Font = Enum.Font.GothamBold
            bY.Text = "" .. d
            bY.TextColor3 = Color3.fromRGB(255, 255, 255)
            bY.TextSize = 20
            bY.TextXAlignment = Enum.TextXAlignment.Left

            cp.Name = "ImageLogo"
            cp.Parent = cf
            cp.Position = UDim2.new(0, 350, 0, 22)
            cp.BackgroundTransparency = 1
            cp.ImageTransparency = 0.5
            cp.Size = UDim2.new(0, 25, 0, 25)
            cp.Image = "rbxassetid://98870039933107"

            bY2.Parent = cf
            bY2.BackgroundColor3 = Color3.fromRGB(150, 150, 150)
            bY2.BackgroundTransparency = 1
            bY2.Position = UDim2.new(0, 11, 0, 35)
            bY2.Size = UDim2.new(0, 280, 0, 18)
            bY2.Font = Enum.Font.GothamBold
            bY2.Text = "" .. d2
            bY2.TextColor3 = Color3.fromRGB(255, 255, 255)
            bY2.TextSize = 15
            bY2.TextTransparency = 0.5
            bY2.TextXAlignment = Enum.TextXAlignment.Left
            bY2.TextYAlignment = Enum.TextYAlignment.Top
            bY2.TextScaled = true
            task.wait(0.2)
            bY2.TextScaled = false

            local TweenService = game:GetService("TweenService")
            local function Tween(object, time, properties)
                local tweenInfo = TweenInfo.new(time)
                local tween = TweenService:Create(object, tweenInfo, properties)
                tween:Play()
                tween.Completed:Wait()
            end

            cf.MouseButton1Click:Connect(function()
				Tween(cf, 0.020, { BackgroundColor3 = Color3.fromRGB(50, 50, 50) })
                Tween(cp, 0.050, { Size = UDim2.new(0, 30, 0, 30), ImageTransparency = 0 })
				Tween(cf, 0.020, { BackgroundColor3 =  colorlib })
                Tween(cp, 0.050, { Size = UDim2.new(0, 25, 0, 25), ImageTransparency = 0.5 })
                cb()

        function cd:Dropdown(d, cr, ce)
            local cs = false
            local ct = Instance.new "Frame"
            local s = Instance.new "UICorner"
            local cu = Instance.new "TextLabel"
            local cv = Instance.new "ScrollingFrame"
            local c1 = Instance.new "UIListLayout"
            local c0 = Instance.new "UIPadding"
            local cw = Instance.new "TextButton"
            local cx = Instance.new "ImageLabel"
            local r = Instance.new "UIStroke"
            ct.Name = "Dropdown"
            ct.Parent = b_
            ct.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
            ct.Transparency = 1
            ct.ClipsDescendants = true
            ct.Size = UDim2.new(0, 387, 0, 31)
            r.Name = "UIStroke"
            r.Parent = ct
            r.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
            r.Color = _G.Color
            r.LineJoinMode = Enum.LineJoinMode.Round
            r.Thickness = 2.5
            r.Transparency = 0.5
            r.Enabled = true
            r.Archivable = true
            s.CornerRadius = UDim.new(0, 3)
            s.Parent = ct
            cu.Name = "DropTitle"
            cu.Parent = ct
            cu.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
            cu.BackgroundTransparency = 1
            cu.Size = UDim2.new(0, 385, 0, 31)
            cu.Font = font
            cu.Text = d
            cu.TextColor3 = Color3.fromRGB(255, 255, 255)
            cu.TextSize = 15
            cv.Name = "DropScroll"
            cv.Parent = cu
            cv.Active = true
            cv.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
            cv.BackgroundTransparency = 1
            cv.BorderSizePixel = 0
            cv.Position = UDim2.new(0, 0, 0, 31)
            cv.Size = UDim2.new(0, 385, 0, 100)
            cv.CanvasSize = UDim2.new(0, 0, 0, 0)
            cv.ScrollBarThickness = 3
            c1.Parent = cv
            c1.SortOrder = Enum.SortOrder.LayoutOrder
            c1.Padding = UDim.new(0, 5)
            c0.Parent = cv
            c0.PaddingLeft = UDim.new(0, 5)
            c0.PaddingTop = UDim.new(0, 5)
            cw.Name = "DropButton"
            cw.Parent = ct
            cw.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
            cw.BackgroundTransparency = 1
            cw.Size = UDim2.new(0, 385, 0, 31)
            cw.Font = Enum.Font.SourceSans
            cw.Text = ""
            cw.TextColor3 = Color3.fromRGB(0, 0, 0)
            cw.TextSize = 14
            for y, z in next, cr do
                local cy = Instance.new "TextButton"
                cy.Name = "Item"
                cy.Parent = cv
                cy.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                cy.BackgroundTransparency = 1
                cy.Size = UDim2.new(0, 385, 0, 26)
                cy.Font = font
                cy.Text = tostring(z)
                cy.TextColor3 = Color3.fromRGB(255, 255, 255)
                cy.TextSize = 13
                cy.TextTransparency = 0.5
                cy.MouseEnter:Connect(function()
                    j:Create(cy, TweenInfo.new(0.3, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
                        { TextTransparency = 0 }):Play()
                end)
                cy.MouseLeave:Connect(function()
                    j:Create(cy, TweenInfo.new(0.3, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
                        { TextTransparency = 0.5 }):Play()
                end)
                cy.MouseButton1Click:Connect(function()
                    cs = false
                    ct:TweenSize(UDim2.new(0, 385, 0, 31), "Out", "Quad", 0.3, true)
                    j:Create(cx, TweenInfo.new(0.3, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), { Rotation = 180 })
                        :Play()
                    ce(cy.Text)
                    cu.Text = d .. " : " .. cy.Text
            cv.CanvasSize = UDim2.new(0, 0, 0, c1.AbsoluteContentSize.Y + 10)
            cw.MouseButton1Click:Connect(function()
                if cs == false then
                    cs = true
                    ct:TweenSize(UDim2.new(0, 385, 0, 131), "Out", "Quad", 0.3, true)
                    j:Create(cx, TweenInfo.new(0.3, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), { Rotation = 0 })
                        :Play()
                else
                    cs = false
                    ct:TweenSize(UDim2.new(0, 385, 0, 31), "Out", "Quad", 0.3, true)
                    j:Create(cx, TweenInfo.new(0.3, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), { Rotation = 180 })
                        :Play()
                end
            local cz = {}

            function cz:Add(cA)
                local cy = Instance.new "TextButton"
                cy.Name = "Item"
                cy.Parent = cv
                cy.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                cy.BackgroundTransparency = 1
                cy.Size = UDim2.new(0, 385, 0, 26)
                cy.Font = Enum.Font.GothamSemibold
                cy.Text = tostring(cA)
                cy.TextColor3 = Color3.fromRGB(255, 255, 255)
                cy.TextSize = 13
                cy.TextTransparency = 0.5
                cy.MouseEnter:Connect(function()
                    j:Create(cy, TweenInfo.new(0.3, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
                        { TextTransparency = 0 }):Play()
                end)
                cy.MouseLeave:Connect(function()
                    j:Create(cy, TweenInfo.new(0.3, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
                        { TextTransparency = 0.5 }):Play()
                cy.MouseButton1Click:Connect(function()
                    cs = false
                    ct:TweenSize(UDim2.new(0, 387, 0, 31), "Out", "Quad", 0.3, true)
                    j:Create(cx, TweenInfo.new(0.3, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), { Rotation = 180 })
                        :Play()
                    ce(cy.Text)
                    cu.Text = d .. " : " .. cy.Text

            function cz:Clear()
                cu.Text = tostring(d) .. " : "
                cs = false
                ct:TweenSize(UDim2.new(0, 385, 0, 31), "Out", "Quad", 0.3, true)
                j:Create(cx, TweenInfo.new(0.3, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), { Rotation = 180 })
                    :Play()
                for y, z in next, cv:GetChildren() do if z:IsA "TextButton" then z:Destroy() end end
            end

            return cz
        end

        function cd:Slider(d, cB, cC, cD, ce)
            local cE = {}
            local cF = Instance.new "Frame"
            local cG = Instance.new "Frame"
            local r = Instance.new "UIStroke"
            local s = Instance.new "UICorner"
            local cH = Instance.new "ImageLabel"
            local cI = Instance.new "TextLabel"
            local bY = Instance.new "TextLabel"
            local cJ = Instance.new "Frame"
            local cK = Instance.new "Frame"
            local cL = Instance.new "Frame"
            local cM = Instance.new "UICorner"
            local cN = Instance.new "UICorner"
            local cO = Instance.new "Frame"
            local cP = Instance.new "TextBox"
            local cQ = Instance.new "UIStroke"
            local cR = Instance.new "TextButton"
            local ch = Instance.new "UICorner"
            local cj = Instance.new "UICorner"
            cF.Name = slidertitle or "SliderFrame"
            cF.Parent = b_
            cF.BackgroundColor3 = _G.Color
            cF.BackgroundTransparency = 1
            cF.BorderSizePixel = 0
            cF.Size = UDim2.new(0, 387, 0, 60)
            cG.Name = "SliderFrame_2"
            cG.Parent = cF
            cG.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
            cG.BackgroundTransparency = 1
            cG.BorderSizePixel = 0
            cG.Position = UDim2.new(0, 1, 0, 1)
            cG.Size = UDim2.new(0, 387, 0, 60)
            r.Name = "UIStroke"
            r.Parent = cG
            r.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
            r.Color = _G.Color
            r.LineJoinMode = Enum.LineJoinMode.Round
            r.Thickness = 2.5
            r.Transparency = 0.5
            r.Enabled = true
            r.Archivable = true
            s.Parent = cG
            s.CornerRadius = UDim.new(0, 3)
            cH.Name = "ImageLabel"
            cH.Parent = cG
            cH.BackgroundColor3 = _G.Color
            cH.BackgroundTransparency = 1
            cH.BorderSizePixel = 0
            cH.Position = UDim2.new(0, 7.5, 0, 7.5)
            cH.Size = UDim2.new(0, 30, 0, 30)
            cH.Image = "rbxassetid://"
            bY.Parent = cG
            bY.BackgroundColor3 = Color3.fromRGB(150, 150, 150)
            bY.BackgroundTransparency = 1
            bY.Position = UDim2.new(0, 10, 0, 5)
            bY.Size = UDim2.new(0, 280, 0, 30)
            bY.Font = font
            bY.Text = d
            bY.TextColor3 = Color3.fromRGB(255, 255, 255)
            bY.TextSize = 20
            bY.TextXAlignment = Enum.TextXAlignment.Left
            cJ.Name = "SliderInput"
            cJ.Parent = cG
            cJ.BackgroundColor3 = _G.Color
            cJ.BackgroundTransparency = 0.7
            cJ.BorderSizePixel = 0
            cJ.Position = UDim2.new(0, 8, 0, 42)
            cJ.Size = UDim2.new(0, 365, 0, 6)
            cN.CornerRadius = UDim.new(0, 1e5)
            cN.Parent = cJ
            cK.Name = "SliderButton"
            cK.Parent = cJ
            cK.BackgroundColor3 = _G.Color
            cK.BackgroundTransparency = 1
            cK.BorderSizePixel = 0
            cK.Position = UDim2.new(0, 0, 0, -7)
            cK.Size = UDim2.new(0, 346, 0, 25)
            cL.Name = "SliderCount"
            cL.Parent = cK
            cL.BackgroundColor3 = _G.Color
            cL.BackgroundTransparency = 0.3
            cL.BorderSizePixel = 0
            cL.Position = UDim2.new(0, cD, 0, 0)
            cL.Size = UDim2.new(0, 18, 0, 18)
            cR.Name = "Title_2"
            cR.Parent = cK
            cR.AnchorPoint = Vector2.new(0, 0)
            cR.BackgroundColor3 = _G.Color2
            cR.AutoButtonColor = false
            cR.BackgroundTransparency = 1
            cR.Position = UDim2.new(0, cD, 0, 0)
            cR.Size = UDim2.new(0, 18, 0, 18)
            cR.Font = Enum.Font.GothamBold
            cR.Text = tostring(cD and math.floor(cD / cC * (cC - cB) + cB) or 0)
            cR.TextColor3 = Color3.fromRGB(255, 255, 255)
            cR.TextSize = 8
            cR.TextXAlignment = Enum.TextXAlignment.Center
            ch.Parent = cR
            ch.CornerRadius = UDim.new(0, 1e5)
            cM.CornerRadius = UDim.new(0, 1e5)
            cM.Parent = cL
            cQ.Name = "SliderStroke"
            cQ.Parent = cO
            cQ.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
            cQ.Color = _G.Color
            cQ.LineJoinMode = Enum.LineJoinMode.Round
            cQ.Thickness = 1
            cQ.Transparency = 0.5
            cQ.Enabled = true
            cQ.Archivable = true
            cO.Name = "BoxFrame"
            cO.Parent = cG
            cO.BackgroundColor3 = _G.Color
            cO.BackgroundTransparency = 1
            cO.Size = UDim2.new(0, 50, 0, 15)
            cO.Position = UDim2.new(0, 323, 0, 8)
            cP.Name = "SliderBox"
            cP.Parent = cO
            cP.BackgroundColor3 = Color3.fromRGB(200, 0, 0)
            cP.BackgroundTransparency = 1
            cP.Position = UDim2.new(0, 0, 0, 1.65)
            cP.Size = UDim2.new(0, 50, 0, 15)
            cP.ClearTextOnFocus = false
            cP.Font = Enum.Font.Code
            cP.Text = tostring(cD and math.floor(cD / cC * (cC - cB) + cB) or 0)
            cP.TextColor3 = Color3.fromRGB(200, 200, 200)
            cP.TextSize = 10
            cP.TextTransparency = 0
            cP.TextXAlignment = Enum.TextXAlignment.Center
            cP.TextEditable = true
            cj.Parent = cO
            cj.CornerRadius = UDim.new(0, 2)
            local cS
            local cT
            local cU
            local cV = cK

            local function cV(bn)
                local slidein = UDim2.new(math.clamp((bn.Position.X - cK.AbsolutePosition.X) / cK.AbsoluteSize.X, 0, 1),
                    0, 0, 0)
                cL:TweenPosition(slidein, Enum.EasingDirection.InOut, Enum.EasingStyle.Linear, 0.08, true)
                cR:TweenPosition(slidein, Enum.EasingDirection.InOut, Enum.EasingStyle.Linear, 0.12, true)
                local Value = math.floor(slidein.X.Scale * cC / cC * (cC - cB) + cB)
                cP.Text = tostring(Value)
                cR.Text = tostring(Value)
                pcall(ce, Value, slidein)
            end

            cK.InputBegan:Connect(function(bn)
                if bn.UserInputType == Enum.UserInputType.MouseButton1 or bn.UserInputType == Enum.UserInputType.Touch then
                    cS = true
                    cU = bn
                    cT = bn.Position.X
                    slidein = cK.AbsolutePosition.X
                    game.TweenService:Create(cL, TweenInfo.new(0.08, Enum.EasingStyle.Linear, Enum.EasingDirection.InOut),
                        { BackgroundTransparency = 0, Size = UDim2.new(0, 14, 0, 14) }):Play()
                    game.TweenService:Create(cR, TweenInfo.new(0.12, Enum.EasingStyle.Linear, Enum.EasingDirection.InOut),
                        {
                            AnchorPoint = Vector2.new(0.22, 0.8),
                            TextSize = 13,
                            BackgroundTransparency = 0,
                            Size = UDim2.new(0, 25, 0, 25)
                        }):Play()
                    game.TweenService:Create(cP, TweenInfo.new(0.08, Enum.EasingStyle.Linear, Enum.EasingDirection.InOut),
                        { TextTransparency = 0 }):Play()
                    game.TweenService:Create(cJ, TweenInfo.new(0.08, Enum.EasingStyle.Linear, Enum.EasingDirection.InOut),
                        { BackgroundTransparency = 0.5 }):Play()
                    game.TweenService:Create(cQ, TweenInfo.new(0.08, Enum.EasingStyle.Linear, Enum.EasingDirection.InOut),
                        { Transparency = 0 }):Play()
                end
                bn.Changed:Connect(function(bn)
                    if bn.UserInputType == Enum.UserInputState.End then cS = false end
                end)
            cK.InputEnded:Connect(function(bn)
                if bn.UserInputType == Enum.UserInputType.MouseMovement or bn.UserInputType == Enum.UserInputType.Touch then
                    cS = false
                    cU = bn
                    game.TweenService:Create(cL, TweenInfo.new(0.08, Enum.EasingStyle.Linear, Enum.EasingDirection.InOut),
                        { BackgroundTransparency = 0.3, Size = UDim2.new(0, 18, 0, 18) }):Play()
                    game.TweenService:Create(cR, TweenInfo.new(0.12, Enum.EasingStyle.Linear, Enum.EasingDirection.InOut),
                        {
                            AnchorPoint = Vector2.new(0, 0),
                            TextSize = 8,
                            BackgroundTransparency = 1,
                            Size = UDim2.new(0, 18, 0, 18)
                        }):Play()
                    game.TweenService:Create(cP, TweenInfo.new(0.08, Enum.EasingStyle.Linear, Enum.EasingDirection.InOut),
                        { TextTransparency = 0.5 }):Play()
                    game.TweenService:Create(cJ, TweenInfo.new(0.08, Enum.EasingStyle.Linear, Enum.EasingDirection.InOut),
                        { BackgroundTransparency = 0.7 }):Play()
                    game.TweenService:Create(cQ, TweenInfo.new(0.08, Enum.EasingStyle.Linear, Enum.EasingDirection.InOut),
                        { Transparency = 0.5 }):Play()
                end
            h.InputChanged:Connect(function(bn) if bn == cU and cS then cV(bn) end end)

            function set(cW)
                if cW == "Text" then
                    if tonumber(cP.Text) then
                        if tonumber(cP.Text) <= cC then
                            Value = cP.Text
                            cR.Text = cP.Text
                            cL:TweenPosition(UDim2.new(((tonumber(cP.Text) or cB) - cB) / (cC - cB), 0, 0, 0), "InOut",
                                "Linear", 0.08, true)
                            cR:TweenPosition(UDim2.new(((tonumber(cP.Text) or cB) - cB) / (cC - cB), 0, 0, 0), "InOut",
                                "Linear", 0.12, true)
                            pcall(function() ce(Value) end)
                        end
                        if tonumber(cP.Text) > cC then
                            cP.Text = cC
                            cR.Text = cC
                            Value = cC
                            cL:TweenPosition(UDim2.new(((cC or cB) - cB) / (cC - cB), 0, 0, 0), "InOut", "Linear", 0.08,
                                true)
                            cR:TweenPosition(UDim2.new(((cC or cB) - cB) / (cC - cB), 0, 0, 0), "InOut", "Linear", 0.12,
                                true)
                            pcall(function() ce(Value) end)
                        end
                        if tonumber(cP.Text) >= cB then
                            Value = cP.Text
                            cR.Text = cP.Text
                            cL:TweenPosition(UDim2.new(((tonumber(cP.Text) or cB) - cB) / (cC - cB), 0, 0, 0), "InOut",
                                "Linear", 0.08, true)
                            cR:TweenPosition(UDim2.new(((tonumber(cP.Text) or cB) - cB) / (cC - cB), 0, 0, 0), "InOut",
                                "Linear", 0.12, true)
                            pcall(function() ce(Value) end)
                        end
                        if tonumber(cP.Text) < cB then
                            Value = cB
                            cR = cB
                            cL.Position = UDim2.new(((cB or cB) - cB) / (cC - cB), 0, 0, 0)
                            cR.Position = UDim2.new(((cB or cB) - cB) / (cC - cB), 0, 0, 0)
                            pcall(function() ce(Value) end)
                        end
                    else
                        cP.Text = "" or Value
                        cR.Text = Value
                    end
                end
            end

            cP.Focused:Connect(function() cP.Changed:Connect(set) end)
            cP.FocusLost:Connect(function(cX)
                if not cX then
                    if cP.Text == "" then
                        cP.Text = cB
                        cR.Text = cB
                        Value = cB
                        cL:TweenPosition(UDim2.new((cB - cB) / (cC - cB), 0, 0, 0), "InOut", "Linear", 0.08, true)
                        cR:TweenPosition(UDim2.new((cB - cB) / (cC - cB), 0, 0, 0), "InOut", "Linear", 0.12, true)
                        pcall(function() ce(Value) end)
                    end
                    if tonumber(cP.Text) > tonumber(cC) then
                        Value = cC
                        cP.Text = cC
                        cR.Text = cC
                        cL:TweenPosition(UDim2.new(((cC or cB) - cB) / (cC - cB), 0, 0, 0), "InOut", "Linear", 0.08, true)
                        cR:TweenPosition(UDim2.new(((cC or cB) - cB) / (cC - cB), 0, 0, 0), "InOut", "Linear", 0.12, true)
                        pcall(function() ce(Value) end)
                    else
                        Value = tonumber(cP.Text)
                    end
                    if tonumber(cP.Text) < cB then
                        cP.Text = cB
                        cR.Text = cB
                        Value = cB
                        cL:TweenPosition(UDim2.new((cB - cB) / (cC - cB), 0, 0, 0), "InOut", "Linear", 0.08, true)
                        cR:TweenPosition(UDim2.new((cB - cB) / (cC - cB), 0, 0, 0), "InOut", "Linear", 0.12, true)
                        pcall(function() ce(Value) end)
                    else
                        Value = tonumber(cP.Text)
                    end
                end
                if tonumber(cP.Text) > cC then
                    cP.Text = cC
                    cR.Text = cC
                    Value = cC
                    cL:TweenPosition(UDim2.new(((cC or cB) - cB) / (cC - cB), 0, 0, 0), "InOut", "Linear", 0.08, true)
                    cR:TweenPosition(UDim2.new(((cC or cB) - cB) / (cC - cB), 0, 0, 0), "InOut", "Linear", 0.12, true)
                    pcall(function() ce(Value) end)
                else
                    Value = tonumber(cP.Text)
                end
                if tonumber(cP.Text) < cB then
                    cP.Text = cB
                    cR.Text = cB
                    Value = cB
                    cL.Position = UDim2.new((cB - cB) / (cC - cB), 0, 0, 0)
                    cR.Position = UDim2.new((cB - cB) / (cC - cB), 0, 0, 0)
                    pcall(function() ce(Value) end)
                else
                    Value = tonumber(cP.Text)
                end
                if cP.Text == "" then
                    cP.Text = cB
                    cR.Text = cB
                    Value = cB
                    cL:TweenPosition(UDim2.new((cB - cB) / (cC - cB), 0, 0, 0), "InOut", "Linear", 0.08, true)
                    cR:TweenPosition(UDim2.new((cB - cB) / (cC - cB), 0, 0, 0), "InOut", "Linear", 0.12, true)
                    pcall(function() ce(Value) end)
                end
            return cE

        function cd:Textbox(d, cY, ce)
            local cZ = Instance.new "Frame"
            local c_ = Instance.new "UICorner"
            local d0 = Instance.new "Frame"
            local d1 = Instance.new "UICorner"
            local d2 = Instance.new "TextLabel"
            local d3 = Instance.new "TextButton"
            local d4 = Instance.new "TextBox"
            local s = Instance.new "UICorner"
            cZ.Name = "Textbox"
            cZ.Parent = b_
            cZ.BackgroundColor3 = _G.Color
            cZ.BackgroundTransparency = 0
            cZ.Size = UDim2.new(0, 387, 0, 31)
            c_.CornerRadius = UDim.new(0, 5)
            c_.Name = "TextboxCorner"
            c_.Parent = cZ
            d0.Name = "Textboxx"
            d0.Parent = cZ
            d0.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
            d0.Position = UDim2.new(0, 1, 0, 1)
            d0.Size = UDim2.new(0, 385, 0, 29)
            d1.CornerRadius = UDim.new(0, 5)
            d1.Name = "TextboxxCorner"
            d1.Parent = d0
            d2.Name = "TextboxLabel"
            d2.Parent = cZ
            d2.BackgroundColor3 = _G.Color
            d2.BackgroundTransparency = 1
            d2.Position = UDim2.new(0, 15, 0, 0)
            d2.Text = d
            d2.Size = UDim2.new(0, 145, 0, 31)
            d2.Font = Enum.Font.GothamSemibold
            d2.TextColor3 = Color3.fromRGB(255, 255, 255)
            d2.TextSize = 16
            d2.TextTransparency = 0
            d2.TextXAlignment = Enum.TextXAlignment.Left
            d3.Name = "txtbtn"
            d3.Parent = cZ
            d3.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
            d3.BackgroundTransparency = 1
            d3.Position = UDim2.new(0, 1, 0, 1)
            d3.Size = UDim2.new(0, 387, 0, 29)
            d3.Font = Enum.Font.SourceSans
            d3.Text = ""
            d3.TextColor3 = Color3.fromRGB(0, 0, 0)
            d3.TextSize = 14
            d4.Name = "RealTextbox"
            d4.Parent = cZ
            d4.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
            d4.BackgroundTransparency = 0
            d4.Position = UDim2.new(0, 275, 0, 4)
            d4.Size = UDim2.new(0, 100, 0, 24)
            d4.Font = Enum.Font.GothamSemibold
            d4.Text = ""
            d4.TextColor3 = Color3.fromRGB(225, 225, 225)
            d4.TextSize = 11
            d4.TextTransparency = 0
            d4.FocusLost:Connect(function()
                ce(d4.Text)
                if cY then d4.Text = "" end
            end)
            s.CornerRadius = UDim.new(0, 5)
            s.Parent = d4
        end

        function cd:Label(d)
            local d5 = Instance.new "TextLabel"
            local d6 = Instance.new "UIPadding"
            local d7 = {}
            d5.Name = "Label"
            d5.Parent = b_
            d5.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
            d5.BackgroundTransparency = 1
            d5.Size = UDim2.new(0, 385, 0, 20)
            d5.Font = font
            d5.TextColor3 = Color3.fromRGB(225, 225, 225)
            d5.TextSize = 16
            d5.Text = d
            d6.PaddingLeft = UDim.new(0, 15)
            d6.Parent = d5
            d6.Name = "PaddingLabel"

            function d7:Set(d8) d5.Text = d8 end

            return d7
        end

        function cd:SectionLabel(d)
            task.wait(0.1)
            local de = Instance.new "Frame"
            local df = Instance.new "Frame"
            local dg = Instance.new "TextLabel"
            local dh = Instance.new "Frame"
            de.Name = "Seperator"
            de.Parent = b_
            de.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
            de.BackgroundTransparency = 1
            de.Size = UDim2.new(0, 310, 0, 20)
            df.Name = "Sep1"
            df.Parent = de
            df.BackgroundColor3 = Color3.new(125, 125, 125)
            df.BorderSizePixel = 0
            df.Position = UDim2.new(0, 0, 0, 10)
            df.Size = UDim2.new(0, 80, 0, 1)
            dg.Name = "Sep2"
            dg.Parent = de
            dg.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
            dg.BackgroundTransparency = 1
            dg.Position = UDim2.new(0, 140, 0, 0)
            dg.Size = UDim2.new(0, 100, 0, 20)
            dg.Font = font
            dg.Text = d
            dg.TextColor3 = Color3.fromRGB(255, 255, 255)
            dg.TextSize = 14
            dh.Name = "Sep3"
            dh.Parent = de
            dh.BackgroundColor3 = Color3.new(125, 125, 125)
            dh.BorderSizePixel = 0
            dh.Position = UDim2.new(0, 300, 0, 10)
            dh.Size = UDim2.new(0, 80, 0, 1)
        end

        function cd:Line()
            local di = Instance.new "Frame"
            local cc = Instance.new "Frame"
            di.Name = "Linee"
            di.Parent = b_
            di.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
            di.BackgroundTransparency = 1
            di.Position = UDim2.new(0, 0, 0.119999997, 0)
            di.Size = UDim2.new(0, 10, 0, 10)
            cc.Name = "Line"
            cc.Parent = di
            cc.BackgroundColor3 = Color3.new(125, 125, 125)
            cc.BackgroundTransparency = 0.5
            cc.BorderSizePixel = 0
            cc.Position = UDim2.new(0, 0, 0, 10)
            cc.Size = UDim2.new(0, 390, 0, 1)
		end
			return cd
        end
		return bS

_G.SafeFarm = true
assert(getrawmetatable)
    grm = getrawmetatable(game)
    setreadonly(grm, false)
    old = grm.__namecall
    grm.__namecall = newcclosure(function(self, ...)
        local args = {...}
        if tostring(args[1]) == "TeleportDetect" then
            return
        elseif tostring(args[1]) == "CHECKER_1" then
            return
        elseif tostring(args[1]) == "CHECKER" then
            return
        elseif tostring(args[1]) == "GUI_CHECK" then
            return
        elseif tostring(args[1]) == "OneMoreTime" then
            return
        elseif tostring(args[1]) == "checkingSPEED" then
            return
        elseif tostring(args[1]) == "BANREMOTE" then
            return
        elseif tostring(args[1]) == "PERMAIDBAN" then
            return
        elseif tostring(args[1]) == "KICKREMOTE" then
            return
        elseif tostring(args[1]) == "BR_KICKPC" then
            return
        elseif tostring(args[1]) == "BR_KICKMOBILE" then
            return
        end
        return old(self, ...)
function CheckAntiCheatBypass()
    for i,v in pairs(game:GetService("Players").LocalPlayer.Character:GetDescendants()) do
        if v:IsA("LocalScript") then
            if v.Name == "General" or v.Name == "Shiftlock"  or v.Name == "FallDamage" or v.Name == "4444" or v.Name == "CamBob" or v.Name == "JumpCD" or v.Name == "Looking" or v.Name == "Run" then
                v:Destroy()
            end
        end
     end
     for i,v in pairs(game:GetService("Players").LocalPlayer.PlayerScripts:GetDescendants()) do
        if v:IsA("LocalScript") then
            if v.Name == "RobloxMotor6DBugFix" or v.Name == "CustomForceField" or v.Name == "MenuBloodSp"  or v.Name == "PlayerList" then
                v:Destroy()
            end
        end
    end
end

local function bypassAntiExploit()
    for _, instance in ipairs(filtergc()) do
        if instance:IsA("AntiExploitSystem") then
            instance:Destroy()
        end
    end
spawn(function()
    while wait() do
        if _G.SafeFarm then
            pcall(function()
                CheckAntiCheatBypass()
                bypassAntiExploit()
            end)
        end
function intiAppleHub() 
_G.antiscan = true
getgenv().A = require(game:GetService("ReplicatedStorage").CombatFramework.RigLib).wrapAttackAnimationAsync
getgenv().B = require(game.Players.LocalPlayer.PlayerScripts.CombatFramework.Particle).play
_G.setfflag = true
end
spawn(function()
    while wait() do
        if _G.setfflag then
            setfflag("AbuseReportScreenshot", "False")
            setfflag("AbuseReportScreenshotPercentage", "0")
        end
    end

if game.PlaceId == 2753915549 then
        World1 = true
    elseif game.PlaceId == 4442272183 then
        World2 = true
    elseif game.PlaceId == 7449423635 then
        World3 = true
    end

-- CheckQuest
	function CheckQuest() 
        MyLevel = game:GetService("Players").LocalPlayer.Data.Level.Value
        if World1 then
            if MyLevel == 1 or MyLevel <= 9 then
                Mon = "Bandit"
                LevelQuest = 1
                NameQuest = "BanditQuest1"
                NameMon = "Bandit"
                CFrameQuest = CFrame.new(1059.37195, 15.4495068, 1550.4231, 0.939700544, -0, -0.341998369, 0, 1, -0, 0.341998369, 0, 0.939700544)
                CFrameMon = CFrame.new(1045.962646484375, 27.00250816345215, 1560.8203125)
            elseif MyLevel == 10 or MyLevel <= 14 then
                Mon = "Monkey"
                LevelQuest = 1
                NameQuest = "JungleQuest"
                NameMon = "Monkey"
                CFrameQuest = CFrame.new(-1598.08911, 35.5501175, 153.377838, 0, 0, 1, 0, 1, -0, -1, 0, 0)
                CFrameMon = CFrame.new(-1448.51806640625, 67.85301208496094, 11.46579647064209)
            elseif MyLevel == 15 or MyLevel <= 29 then
                Mon = "Gorilla"
                LevelQuest = 2
                NameQuest = "JungleQuest"
                NameMon = "Gorilla"
                CFrameQuest = CFrame.new(-1598.08911, 35.5501175, 153.377838, 0, 0, 1, 0, 1, -0, -1, 0, 0)
                CFrameMon = CFrame.new(-1129.8836669921875, 40.46354675292969, -525.4237060546875)
            elseif MyLevel == 30 or MyLevel <= 39 then
                Mon = "Pirate"
                LevelQuest = 1
                NameQuest = "BuggyQuest1"
                NameMon = "Pirate"
                CFrameQuest = CFrame.new(-1141.07483, 4.10001802, 3831.5498, 0.965929627, -0, -0.258804798, 0, 1, -0, 0.258804798, 0, 0.965929627)
                CFrameMon = CFrame.new(-1103.513427734375, 13.752052307128906, 3896.091064453125)
            elseif MyLevel == 40 or MyLevel <= 59 then
                Mon = "Brute"
                LevelQuest = 2
                NameQuest = "BuggyQuest1"
                NameMon = "Brute"
                CFrameQuest = CFrame.new(-1141.07483, 4.10001802, 3831.5498, 0.965929627, -0, -0.258804798, 0, 1, -0, 0.258804798, 0, 0.965929627)
                CFrameMon = CFrame.new(-1140.083740234375, 14.809885025024414, 4322.92138671875)
            elseif MyLevel == 60 or MyLevel <= 74 then
                Mon = "Desert Bandit"
                LevelQuest = 1
                NameQuest = "DesertQuest"
                NameMon = "Desert Bandit"
                CFrameQuest = CFrame.new(894.488647, 5.14000702, 4392.43359, 0.819155693, -0, -0.573571265, 0, 1, -0, 0.573571265, 0, 0.819155693)
                CFrameMon = CFrame.new(924.7998046875, 6.44867467880249, 4481.5859375)
            elseif MyLevel == 75 or MyLevel <= 89 then
                Mon = "Desert Officer"
                LevelQuest = 2
                NameQuest = "DesertQuest"
                NameMon = "Desert Officer"
                CFrameQuest = CFrame.new(894.488647, 5.14000702, 4392.43359, 0.819155693, -0, -0.573571265, 0, 1, -0, 0.573571265, 0, 0.819155693)
                CFrameMon = CFrame.new(1608.2822265625, 8.614224433898926, 4371.00732421875)
            elseif MyLevel == 90 or MyLevel <= 99 then
                Mon = "Snow Bandit"
                LevelQuest = 1
                NameQuest = "SnowQuest"
                NameMon = "Snow Bandit"
                CFrameQuest = CFrame.new(1389.74451, 88.1519318, -1298.90796, -0.342042685, 0, 0.939684391, 0, 1, 0, -0.939684391, 0, -0.342042685)
                CFrameMon = CFrame.new(1354.347900390625, 87.27277374267578, -1393.946533203125)
            elseif MyLevel == 100 or MyLevel <= 119 then
                Mon = "Snowman"
                LevelQuest = 2
                NameQuest = "SnowQuest"
                NameMon = "Snowman"
                CFrameQuest = CFrame.new(1389.74451, 88.1519318, -1298.90796, -0.342042685, 0, 0.939684391, 0, 1, 0, -0.939684391, 0, -0.342042685)
                CFrameMon = CFrame.new(1201.6412353515625, 144.57958984375, -1550.0670166015625)
            elseif MyLevel == 120 or MyLevel <= 149 then
                Mon = "Chief Petty Officer"
                LevelQuest = 1
                NameQuest = "MarineQuest2"
                NameMon = "Chief Petty Officer"
                CFrameQuest = CFrame.new(-5039.58643, 27.3500385, 4324.68018, 0, 0, -1, 0, 1, 0, 1, 0, 0)
                CFrameMon = CFrame.new(-4881.23095703125, 22.65204429626465, 4273.75244140625)
            elseif MyLevel == 150 or MyLevel <= 174 then
                Mon = "Sky Bandit"
                LevelQuest = 1
                NameQuest = "SkyQuest"
                NameMon = "Sky Bandit"
                CFrameQuest = CFrame.new(-4839.53027, 716.368591, -2619.44165, 0.866007268, 0, 0.500031412, 0, 1, 0, -0.500031412, 0, 0.866007268)
                CFrameMon = CFrame.new(-4953.20703125, 295.74420166015625, -2899.22900390625)
            elseif MyLevel == 175 or MyLevel <= 189 then
                Mon = "Dark Master"
                LevelQuest = 2
                NameQuest = "SkyQuest"
                NameMon = "Dark Master"
                CFrameQuest = CFrame.new(-4839.53027, 716.368591, -2619.44165, 0.866007268, 0, 0.500031412, 0, 1, 0, -0.500031412, 0, 0.866007268)
                CFrameMon = CFrame.new(-5259.8447265625, 391.3976745605469, -2229.035400390625)
            elseif MyLevel == 190 or MyLevel <= 209 then
                Mon = "Prisoner"
                LevelQuest = 1
                NameQuest = "PrisonerQuest"
                NameMon = "Prisoner"
                CFrameQuest = CFrame.new(5308.93115, 1.65517521, 475.120514, -0.0894274712, -5.00292918e-09, -0.995993316, 1.60817859e-09, 1, -5.16744869e-09, 0.995993316, -2.06384709e-09, -0.0894274712)
                CFrameMon = CFrame.new(5098.9736328125, -0.3204058110713959, 474.2373352050781)
            elseif MyLevel == 210 or MyLevel <= 249 then
                Mon = "Dangerous Prisoner"
                LevelQuest = 2
                NameQuest = "PrisonerQuest"
                NameMon = "Dangerous Prisoner"
                CFrameQuest = CFrame.new(5308.93115, 1.65517521, 475.120514, -0.0894274712, -5.00292918e-09, -0.995993316, 1.60817859e-09, 1, -5.16744869e-09, 0.995993316, -2.06384709e-09, -0.0894274712)
                CFrameMon = CFrame.new(5654.5634765625, 15.633401870727539, 866.2991943359375)
            elseif MyLevel == 250 or MyLevel <= 274 then
                Mon = "Toga Warrior"
                LevelQuest = 1
                NameQuest = "ColosseumQuest"
                NameMon = "Toga Warrior"
                CFrameQuest = CFrame.new(-1580.04663, 6.35000277, -2986.47534, -0.515037298, 0, -0.857167721, 0, 1, 0, 0.857167721, 0, -0.515037298)
                CFrameMon = CFrame.new(-1820.21484375, 51.68385696411133, -2740.6650390625)
            elseif MyLevel == 275 or MyLevel <= 299 then
                Mon = "Gladiator"
                LevelQuest = 2
                NameQuest = "ColosseumQuest"
                NameMon = "Gladiator"
                CFrameQuest = CFrame.new(-1580.04663, 6.35000277, -2986.47534, -0.515037298, 0, -0.857167721, 0, 1, 0, 0.857167721, 0, -0.515037298)
                CFrameMon = CFrame.new(-1292.838134765625, 56.380882263183594, -3339.031494140625)
            elseif MyLevel == 300 or MyLevel <= 324 then
                Mon = "Military Soldier"
                LevelQuest = 1
                NameQuest = "MagmaQuest"
                NameMon = "Military Soldier"
                CFrameQuest = CFrame.new(-5313.37012, 10.9500084, 8515.29395, -0.499959469, 0, 0.866048813, 0, 1, 0, -0.866048813, 0, -0.499959469)
                CFrameMon = CFrame.new(-5411.16455078125, 11.081554412841797, 8454.29296875)
            elseif MyLevel == 325 or MyLevel <= 374 then
                Mon = "Military Spy"
                LevelQuest = 2
                NameQuest = "MagmaQuest"
                NameMon = "Military Spy"
                CFrameQuest = CFrame.new(-5313.37012, 10.9500084, 8515.29395, -0.499959469, 0, 0.866048813, 0, 1, 0, -0.866048813, 0, -0.499959469)
                CFrameMon = CFrame.new(-5802.8681640625, 86.26241302490234, 8828.859375)
            elseif MyLevel == 375 or MyLevel <= 399 then
                Mon = "Fishman Warrior"
                LevelQuest = 1
                NameQuest = "FishmanQuest"
                NameMon = "Fishman Warrior"
                CFrameQuest = CFrame.new(61122.65234375, 18.497442245483, 1569.3997802734)
                CFrameMon = CFrame.new(60878.30078125, 18.482830047607422, 1543.7574462890625)
                if _G.AutoFarm and (CFrameQuest.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 10000 then
                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(61163.8515625, 11.6796875, 1819.7841796875))
                end
            elseif MyLevel == 400 or MyLevel <= 449 then
                Mon = "Fishman Commando"
                LevelQuest = 2
                NameQuest = "FishmanQuest"
                NameMon = "Fishman Commando"
                CFrameQuest = CFrame.new(61122.65234375, 18.497442245483, 1569.3997802734)
                CFrameMon = CFrame.new(61922.6328125, 18.482830047607422, 1493.934326171875)
                if _G.AutoFarm and (CFrameQuest.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 10000 then
                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(61163.8515625, 11.6796875, 1819.7841796875))
                end
            elseif MyLevel == 450 or MyLevel <= 474 then
                Mon = "God's Guard"
                LevelQuest = 1
                NameQuest = "SkyExp1Quest"
                NameMon = "God's Guard"
                CFrameQuest = CFrame.new(-4721.88867, 843.874695, -1949.96643, 0.996191859, -0, -0.0871884301, 0, 1, -0, 0.0871884301, 0, 0.996191859)
                CFrameMon = CFrame.new(-4710.04296875, 845.2769775390625, -1927.3079833984375)
                if _G.AutoFarm and (CFrameQuest.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 10000 then
                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(-4607.82275, 872.54248, -1667.55688))
                end
            elseif MyLevel == 475 or MyLevel <= 524 then
                Mon = "Shanda"
                LevelQuest = 2
                NameQuest = "SkyExp1Quest"
                NameMon = "Shanda"
                CFrameQuest = CFrame.new(-7859.09814, 5544.19043, -381.476196, -0.422592998, 0, 0.906319618, 0, 1, 0, -0.906319618, 0, -0.422592998)
                CFrameMon = CFrame.new(-7678.48974609375, 5566.40380859375, -497.2156066894531)
                if _G.AutoFarm and (CFrameQuest.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 10000 then
                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(-7894.6176757813, 5547.1416015625, -380.29119873047))
                end
            elseif MyLevel == 525 or MyLevel <= 549 then
                Mon = "Royal Squad"
                LevelQuest = 1
                NameQuest = "SkyExp2Quest"
                NameMon = "Royal Squad"
                CFrameQuest = CFrame.new(-7906.81592, 5634.6626, -1411.99194, 0, 0, -1, 0, 1, 0, 1, 0, 0)
                CFrameMon = CFrame.new(-7624.25244140625, 5658.13330078125, -1467.354248046875)
            elseif MyLevel == 550 or MyLevel <= 624 then
                Mon = "Royal Soldier"
                LevelQuest = 2
                NameQuest = "SkyExp2Quest"
                NameMon = "Royal Soldier"
                CFrameQuest = CFrame.new(-7906.81592, 5634.6626, -1411.99194, 0, 0, -1, 0, 1, 0, 1, 0, 0)
                CFrameMon = CFrame.new(-7836.75341796875, 5645.6640625, -1790.6236572265625)
            elseif MyLevel == 625 or MyLevel <= 649 then
                Mon = "Galley Pirate"
                LevelQuest = 1
                NameQuest = "FountainQuest"
                NameMon = "Galley Pirate"
                CFrameQuest = CFrame.new(5259.81982, 37.3500175, 4050.0293, 0.087131381, 0, 0.996196866, 0, 1, 0, -0.996196866, 0, 0.087131381)
                CFrameMon = CFrame.new(5551.02197265625, 78.90135192871094, 3930.412841796875)
            elseif MyLevel >= 650 then
                Mon = "Galley Captain"
                LevelQuest = 2
                NameQuest = "FountainQuest"
                NameMon = "Galley Captain"
                CFrameQuest = CFrame.new(5259.81982, 37.3500175, 4050.0293, 0.087131381, 0, 0.996196866, 0, 1, 0, -0.996196866, 0, 0.087131381)
                CFrameMon = CFrame.new(5441.95166015625, 42.50205993652344, 4950.09375)
            end
        elseif World2 then
            if MyLevel == 700 or MyLevel <= 724 then
                Mon = "Raider"
                LevelQuest = 1
                NameQuest = "Area1Quest"
                NameMon = "Raider"
                CFrameQuest = CFrame.new(-429.543518, 71.7699966, 1836.18188, -0.22495985, 0, -0.974368095, 0, 1, 0, 0.974368095, 0, -0.22495985)
                CFrameMon = CFrame.new(-728.3267211914062, 52.779319763183594, 2345.7705078125)
            elseif MyLevel == 725 or MyLevel <= 774 then
                Mon = "Mercenary"
                LevelQuest = 2
                NameQuest = "Area1Quest"
                NameMon = "Mercenary"
                CFrameQuest = CFrame.new(-429.543518, 71.7699966, 1836.18188, -0.22495985, 0, -0.974368095, 0, 1, 0, 0.974368095, 0, -0.22495985)
                CFrameMon = CFrame.new(-1004.3244018554688, 80.15886688232422, 1424.619384765625)
            elseif MyLevel == 775 or MyLevel <= 799 then
                Mon = "Swan Pirate"
                LevelQuest = 1
                NameQuest = "Area2Quest"
                NameMon = "Swan Pirate"
                CFrameQuest = CFrame.new(638.43811, 71.769989, 918.282898, 0.139203906, 0, 0.99026376, 0, 1, 0, -0.99026376, 0, 0.139203906)
                CFrameMon = CFrame.new(1068.664306640625, 137.61428833007812, 1322.1060791015625)
            elseif MyLevel == 800 or MyLevel <= 874 then
                Mon = "Factory Staff"
                NameQuest = "Area2Quest"
                LevelQuest = 2
                NameMon = "Factory Staff"
                CFrameQuest = CFrame.new(632.698608, 73.1055908, 918.666321, -0.0319722369, 8.96074881e-10, -0.999488771, 1.36326533e-10, 1, 8.92172336e-10, 0.999488771, -1.07732087e-10, -0.0319722369)
                CFrameMon = CFrame.new(73.07867431640625, 81.86344146728516, -27.470672607421875)
            elseif MyLevel == 875 or MyLevel <= 899 then
                Mon = "Marine Lieutenant"
                LevelQuest = 1
                NameQuest = "MarineQuest3"
                NameMon = "Marine Lieutenant"
                CFrameQuest = CFrame.new(-2440.79639, 71.7140732, -3216.06812, 0.866007268, 0, 0.500031412, 0, 1, 0, -0.500031412, 0, 0.866007268)
                CFrameMon = CFrame.new(-2821.372314453125, 75.89727783203125, -3070.089111328125)
            elseif MyLevel == 900 or MyLevel <= 949 then
                Mon = "Marine Captain"
                LevelQuest = 2
                NameQuest = "MarineQuest3"
                NameMon = "Marine Captain"
                CFrameQuest = CFrame.new(-2440.79639, 71.7140732, -3216.06812, 0.866007268, 0, 0.500031412, 0, 1, 0, -0.500031412, 0, 0.866007268)
                CFrameMon = CFrame.new(-1861.2310791015625, 80.17658233642578, -3254.697509765625)
            elseif MyLevel == 950 or MyLevel <= 974 then
                Mon = "Zombie"
                LevelQuest = 1
                NameQuest = "ZombieQuest"
                NameMon = "Zombie"
                CFrameQuest = CFrame.new(-5497.06152, 47.5923004, -795.237061, -0.29242146, 0, -0.95628953, 0, 1, 0, 0.95628953, 0, -0.29242146)
                CFrameMon = CFrame.new(-5657.77685546875, 78.96973419189453, -928.68701171875)
            elseif MyLevel == 975 or MyLevel <= 999 then
                Mon = "Vampire"
                LevelQuest = 2
                NameQuest = "ZombieQuest"
                NameMon = "Vampire"
                CFrameQuest = CFrame.new(-5497.06152, 47.5923004, -795.237061, -0.29242146, 0, -0.95628953, 0, 1, 0, 0.95628953, 0, -0.29242146)
                CFrameMon = CFrame.new(-6037.66796875, 32.18463897705078, -1340.6597900390625)
            elseif MyLevel == 1000 or MyLevel <= 1049 then
                Mon = "Snow Trooper"
                LevelQuest = 1
                NameQuest = "SnowMountainQuest"
                NameMon = "Snow Trooper"
                CFrameQuest = CFrame.new(609.858826, 400.119904, -5372.25928, -0.374604106, 0, 0.92718488, 0, 1, 0, -0.92718488, 0, -0.374604106)
                CFrameMon = CFrame.new(549.1473388671875, 427.3870544433594, -5563.69873046875)
            elseif MyLevel == 1050 or MyLevel <= 1099 then
                Mon = "Winter Warrior"
                LevelQuest = 2
                NameQuest = "SnowMountainQuest"
                NameMon = "Winter Warrior"
                CFrameQuest = CFrame.new(609.858826, 400.119904, -5372.25928, -0.374604106, 0, 0.92718488, 0, 1, 0, -0.92718488, 0, -0.374604106)
                CFrameMon = CFrame.new(1142.7451171875, 475.6398010253906, -5199.41650390625)
            elseif MyLevel == 1100 or MyLevel <= 1124 then
                Mon = "Lab Subordinate"
                LevelQuest = 1
                NameQuest = "IceSideQuest"
                NameMon = "Lab Subordinate"
                CFrameQuest = CFrame.new(-6064.06885, 15.2422857, -4902.97852, 0.453972578, -0, -0.891015649, 0, 1, -0, 0.891015649, 0, 0.453972578)
                CFrameMon = CFrame.new(-5707.4716796875, 15.951709747314453, -4513.39208984375)
            elseif MyLevel == 1125 or MyLevel <= 1174 then
                Mon = "Horned Warrior"
                LevelQuest = 2
                NameQuest = "IceSideQuest"
                NameMon = "Horned Warrior"
                CFrameQuest = CFrame.new(-6064.06885, 15.2422857, -4902.97852, 0.453972578, -0, -0.891015649, 0, 1, -0, 0.891015649, 0, 0.453972578)
                CFrameMon = CFrame.new(-6341.36669921875, 15.951770782470703, -5723.162109375)
            elseif MyLevel == 1175 or MyLevel <= 1199 then
                Mon = "Magma Ninja"
                LevelQuest = 1
                NameQuest = "FireSideQuest"
                NameMon = "Magma Ninja"
                CFrameQuest = CFrame.new(-5428.03174, 15.0622921, -5299.43457, -0.882952213, 0, 0.469463557, 0, 1, 0, -0.469463557, 0, -0.882952213)
                CFrameMon = CFrame.new(-5449.6728515625, 76.65874481201172, -5808.20068359375)
            elseif MyLevel == 1200 or MyLevel <= 1249 then
                Mon = "Lava Pirate"
                LevelQuest = 2
                NameQuest = "FireSideQuest"
                NameMon = "Lava Pirate"
                CFrameQuest = CFrame.new(-5428.03174, 15.0622921, -5299.43457, -0.882952213, 0, 0.469463557, 0, 1, 0, -0.469463557, 0, -0.882952213)
                CFrameMon = CFrame.new(-5213.33154296875, 49.73788070678711, -4701.451171875)
            elseif MyLevel == 1250 or MyLevel <= 1274 then
                Mon = "Ship Deckhand"
                LevelQuest = 1
                NameQuest = "ShipQuest1"
                NameMon = "Ship Deckhand"
                CFrameQuest = CFrame.new(1037.80127, 125.092171, 32911.6016)         
                CFrameMon = CFrame.new(1212.0111083984375, 150.79205322265625, 33059.24609375)    
                if _G.AutoFarm and (CFrameQuest.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 10000 then
                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(923.21252441406, 126.9760055542, 32852.83203125))
                end
            elseif MyLevel == 1275 or MyLevel <= 1299 then
                Mon = "Ship Engineer"
                LevelQuest = 2
                NameQuest = "ShipQuest1"
                NameMon = "Ship Engineer"
                CFrameQuest = CFrame.new(1037.80127, 125.092171, 32911.6016)   
                CFrameMon = CFrame.new(919.4786376953125, 43.54401397705078, 32779.96875)   
                if _G.AutoFarm and (CFrameQuest.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 10000 then
                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(923.21252441406, 126.9760055542, 32852.83203125))
                end             
            elseif MyLevel == 1300 or MyLevel <= 1324 then
                Mon = "Ship Steward"
                LevelQuest = 1
                NameQuest = "ShipQuest2"
                NameMon = "Ship Steward"
                CFrameQuest = CFrame.new(968.80957, 125.092171, 33244.125)         
                CFrameMon = CFrame.new(919.4385375976562, 129.55599975585938, 33436.03515625)      
                if _G.AutoFarm and (CFrameQuest.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 10000 then
                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(923.21252441406, 126.9760055542, 32852.83203125))
                end
            elseif MyLevel == 1325 or MyLevel <= 1349 then
                Mon = "Ship Officer"
                LevelQuest = 2
                NameQuest = "ShipQuest2"
                NameMon = "Ship Officer"
                CFrameQuest = CFrame.new(968.80957, 125.092171, 33244.125)
                CFrameMon = CFrame.new(1036.0179443359375, 181.4390411376953, 33315.7265625)
                if _G.AutoFarm and (CFrameQuest.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 10000 then
                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(923.21252441406, 126.9760055542, 32852.83203125))
                end
            elseif MyLevel == 1350 or MyLevel <= 1374 then
                Mon = "Arctic Warrior"
                LevelQuest = 1
                NameQuest = "FrostQuest"
                NameMon = "Arctic Warrior"
                CFrameQuest = CFrame.new(5667.6582, 26.7997818, -6486.08984, -0.933587909, 0, -0.358349502, 0, 1, 0, 0.358349502, 0, -0.933587909)
                CFrameMon = CFrame.new(5966.24609375, 62.97002029418945, -6179.3828125)
                if _G.AutoFarm and (CFrameQuest.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 10000 then
                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(-6508.5581054688, 5000.034996032715, -132.83953857422))
                end
            elseif MyLevel == 1375 or MyLevel <= 1424 then
                Mon = "Snow Lurker"
                LevelQuest = 2
                NameQuest = "FrostQuest"
                NameMon = "Snow Lurker"
                CFrameQuest = CFrame.new(5667.6582, 26.7997818, -6486.08984, -0.933587909, 0, -0.358349502, 0, 1, 0, 0.358349502, 0, -0.933587909)
                CFrameMon = CFrame.new(5407.07373046875, 69.19437408447266, -6880.88037109375)
            elseif MyLevel == 1425 or MyLevel <= 1449 then
                Mon = "Sea Soldier"
                LevelQuest = 1
                NameQuest = "ForgottenQuest"
                NameMon = "Sea Soldier"
                CFrameQuest = CFrame.new(-3054.44458, 235.544281, -10142.8193, 0.990270376, -0, -0.13915664, 0, 1, -0, 0.13915664, 0, 0.990270376)
                CFrameMon = CFrame.new(-3028.2236328125, 64.67451477050781, -9775.4267578125)
            elseif MyLevel >= 1450 then
                Mon = "Water Fighter"
                LevelQuest = 2
                NameQuest = "ForgottenQuest"
                NameMon = "Water Fighter"
                CFrameQuest = CFrame.new(-3054.44458, 235.544281, -10142.8193, 0.990270376, -0, -0.13915664, 0, 1, -0, 0.13915664, 0, 0.990270376)
                CFrameMon = CFrame.new(-3352.9013671875, 285.01556396484375, -10534.841796875)
            end
        elseif World3 then
            if MyLevel == 1500 or MyLevel <= 1524 then
                Mon = "Pirate Millionaire"
                LevelQuest = 1
                NameQuest = "PiratePortQuest"
                NameMon = "Pirate Millionaire"
                CFrameQuest = CFrame.new(-290.074677, 42.9034653, 5581.58984, 0.965929627, -0, -0.258804798, 0, 1, -0, 0.258804798, 0, 0.965929627)
                CFrameMon = CFrame.new(-245.9963836669922, 47.30615234375, 5584.1005859375)
            elseif MyLevel == 1525 or MyLevel <= 1574 then
                Mon = "Pistol Billionaire"
                LevelQuest = 2
                NameQuest = "PiratePortQuest"
                NameMon = "Pistol Billionaire"
                CFrameQuest = CFrame.new(-290.074677, 42.9034653, 5581.58984, 0.965929627, -0, -0.258804798, 0, 1, -0, 0.258804798, 0, 0.965929627)
                CFrameMon = CFrame.new(-187.3301544189453, 86.23987579345703, 6013.513671875)
            elseif MyLevel == 1575 or MyLevel <= 1599 then
                Mon = "Dragon Crew Warrior"
                LevelQuest = 1
                NameQuest = "AmazonQuest"
                NameMon = "Dragon Crew Warrior"
                CFrameQuest = CFrame.new(5832.83594, 51.6806107, -1101.51563, 0.898790359, -0, -0.438378751, 0, 1, -0, 0.438378751, 0, 0.898790359)
                CFrameMon = CFrame.new(6141.140625, 51.35136413574219, -1340.738525390625)
            elseif MyLevel == 1600 or MyLevel <= 1624 then 
                Mon = "Dragon Crew Archer [Lv. 1600]"
                NameQuest = "AmazonQuest"
                LevelQuest = 2
                NameMon = "Dragon Crew Archer"
                CFrameQuest = CFrame.new(5833.1147460938, 51.60498046875, -1103.0693359375)
                CFrameMon = CFrame.new(6616.41748046875, 441.7670593261719, 446.0469970703125)
            elseif MyLevel == 1625 or MyLevel <= 1649 then
                Mon = "Female Islander"
                NameQuest = "AmazonQuest2"
                LevelQuest = 1
                NameMon = "Female Islander"
                CFrameQuest = CFrame.new(5446.8793945313, 601.62945556641, 749.45672607422)
                CFrameMon = CFrame.new(4685.25830078125, 735.8078002929688, 815.3425903320312)
            elseif MyLevel == 1650 or MyLevel <= 1699 then 
                Mon = "Giant Islander [Lv. 1650]"
                NameQuest = "AmazonQuest2"
                LevelQuest = 2
                NameMon = "Giant Islander"
                CFrameQuest = CFrame.new(5446.8793945313, 601.62945556641, 749.45672607422)
                CFrameMon = CFrame.new(4729.09423828125, 590.436767578125, -36.97627639770508)
            elseif MyLevel == 1700 or MyLevel <= 1724 then
                Mon = "Marine Commodore"
                LevelQuest = 1
                NameQuest = "MarineTreeIsland"
                NameMon = "Marine Commodore"
                CFrameQuest = CFrame.new(2180.54126, 27.8156815, -6741.5498, -0.965929747, 0, 0.258804798, 0, 1, 0, -0.258804798, 0, -0.965929747)
                CFrameMon = CFrame.new(2286.0078125, 73.13391876220703, -7159.80908203125)
            elseif MyLevel == 1725 or MyLevel <= 1774 then
                Mon = "Marine Rear Admiral [Lv. 1725]"
                NameMon = "Marine Rear Admiral"
                NameQuest = "MarineTreeIsland"
                LevelQuest = 2
                CFrameQuest = CFrame.new(2179.98828125, 28.731239318848, -6740.0551757813)
                CFrameMon = CFrame.new(3656.773681640625, 160.52406311035156, -7001.5986328125)
            elseif MyLevel == 1775 or MyLevel <= 1799 then
                Mon = "Fishman Raider"
                LevelQuest = 1
                NameQuest = "DeepForestIsland3"
                NameMon = "Fishman Raider"
                CFrameQuest = CFrame.new(-10581.6563, 330.872955, -8761.18652, -0.882952213, 0, 0.469463557, 0, 1, 0, -0.469463557, 0, -0.882952213)   
                CFrameMon = CFrame.new(-10407.5263671875, 331.76263427734375, -8368.5166015625)
            elseif MyLevel == 1800 or MyLevel <= 1824 then
                Mon = "Fishman Captain"
                LevelQuest = 2
                NameQuest = "DeepForestIsland3"
                NameMon = "Fishman Captain"
                CFrameQuest = CFrame.new(-10581.6563, 330.872955, -8761.18652, -0.882952213, 0, 0.469463557, 0, 1, 0, -0.469463557, 0, -0.882952213)   
                CFrameMon = CFrame.new(-10994.701171875, 352.38140869140625, -9002.1103515625) 
            elseif MyLevel == 1825 or MyLevel <= 1849 then
                Mon = "Forest Pirate"
                LevelQuest = 1
                NameQuest = "DeepForestIsland"
                NameMon = "Forest Pirate"
                CFrameQuest = CFrame.new(-13234.04, 331.488495, -7625.40137, 0.707134247, -0, -0.707079291, 0, 1, -0, 0.707079291, 0, 0.707134247)
                CFrameMon = CFrame.new(-13274.478515625, 332.3781433105469, -7769.58056640625)
            elseif MyLevel == 1850 or MyLevel <= 1899 then
                Mon = "Mythological Pirate"
                LevelQuest = 2
                NameQuest = "DeepForestIsland"
                NameMon = "Mythological Pirate"
                CFrameQuest = CFrame.new(-13234.04, 331.488495, -7625.40137, 0.707134247, -0, -0.707079291, 0, 1, -0, 0.707079291, 0, 0.707134247)   
                CFrameMon = CFrame.new(-13680.607421875, 501.08154296875, -6991.189453125)
            elseif MyLevel == 1900 or MyLevel <= 1924 then
                Mon = "Jungle Pirate"
                LevelQuest = 1
                NameQuest = "DeepForestIsland2"
                NameMon = "Jungle Pirate"
                CFrameQuest = CFrame.new(-12680.3818, 389.971039, -9902.01953, -0.0871315002, 0, 0.996196866, 0, 1, 0, -0.996196866, 0, -0.0871315002)
                CFrameMon = CFrame.new(-12256.16015625, 331.73828125, -10485.8369140625)
            elseif MyLevel == 1925 or MyLevel <= 1974 then
                Mon = "Musketeer Pirate"
                LevelQuest = 2
                NameQuest = "DeepForestIsland2"
                NameMon = "Musketeer Pirate"
                CFrameQuest = CFrame.new(-12680.3818, 389.971039, -9902.01953, -0.0871315002, 0, 0.996196866, 0, 1, 0, -0.996196866, 0, -0.0871315002)
                CFrameMon = CFrame.new(-13457.904296875, 391.545654296875, -9859.177734375)
            elseif MyLevel == 1975 or MyLevel <= 1999 then
                Mon = "Reborn Skeleton"
                LevelQuest = 1
                NameQuest = "HauntedQuest1"
                NameMon = "Reborn Skeleton"
                CFrameQuest = CFrame.new(-9479.2168, 141.215088, 5566.09277, 0, 0, 1, 0, 1, -0, -1, 0, 0)
                CFrameMon = CFrame.new(-8763.7236328125, 165.72299194335938, 6159.86181640625)
            elseif MyLevel == 2000 or MyLevel <= 2024 then
                Mon = "Living Zombie"
                LevelQuest = 2
                NameQuest = "HauntedQuest1"
                NameMon = "Living Zombie"
                CFrameQuest = CFrame.new(-9479.2168, 141.215088, 5566.09277, 0, 0, 1, 0, 1, -0, -1, 0, 0)
                CFrameMon = CFrame.new(-10144.1318359375, 138.62667846679688, 5838.0888671875)
            elseif MyLevel == 2025 or MyLevel <= 2049 then
                Mon = "Demonic Soul"
                LevelQuest = 1
                NameQuest = "HauntedQuest2"
                NameMon = "Demonic Soul"
                CFrameQuest = CFrame.new(-9516.99316, 172.017181, 6078.46533, 0, 0, -1, 0, 1, 0, 1, 0, 0) 
                CFrameMon = CFrame.new(-9505.8720703125, 172.10482788085938, 6158.9931640625)
            elseif MyLevel == 2025 or MyLevel <= 2074 then
                Mon = "Posessed Mummy"
                LevelQuest = 2
                NameQuest = "HauntedQuest2"
                NameMon = "Posessed Mummy"
                CFrameQuest = CFrame.new(-9516.99316, 172.017181, 6078.46533, 0, 0, -1, 0, 1, 0, 1, 0, 0)
                CFrameMon = CFrame.new(-9582.0224609375, 6.251527309417725, 6205.478515625)
            elseif MyLevel == 2075 or MyLevel <= 2099 then
                Mon = "Peanut Scout"
                LevelQuest = 1
                NameQuest = "NutsIslandQuest"
                NameMon = "Peanut Scout"
                CFrameQuest = CFrame.new(-2104.3908691406, 38.104167938232, -10194.21875, 0, 0, -1, 0, 1, 0, 1, 0, 0)
                CFrameMon = CFrame.new(-2143.241943359375, 47.72198486328125, -10029.9951171875)
            elseif MyLevel == 2100 or MyLevel <= 2124 then
                Mon = "Peanut President"
                LevelQuest = 2
                NameQuest = "NutsIslandQuest"
                NameMon = "Peanut President"
                CFrameQuest = CFrame.new(-2104.3908691406, 38.104167938232, -10194.21875, 0, 0, -1, 0, 1, 0, 1, 0, 0)
                CFrameMon = CFrame.new(-1859.35400390625, 38.10316848754883, -10422.4296875)
            elseif MyLevel == 2125 or MyLevel <= 2149 then
                Mon = "Ice Cream Chef"
                LevelQuest = 1
                NameQuest = "IceCreamIslandQuest"
                NameMon = "Ice Cream Chef"
                CFrameQuest = CFrame.new(-820.64825439453, 65.819526672363, -10965.795898438, 0, 0, -1, 0, 1, 0, 1, 0, 0)
                CFrameMon = CFrame.new(-872.24658203125, 65.81957244873047, -10919.95703125)
            elseif MyLevel == 2150 or MyLevel <= 2199 then
                Mon = "Ice Cream Commander"
                LevelQuest = 2
                NameQuest = "IceCreamIslandQuest"
                NameMon = "Ice Cream Commander"
                CFrameQuest = CFrame.new(-820.64825439453, 65.819526672363, -10965.795898438, 0, 0, -1, 0, 1, 0, 1, 0, 0)
                CFrameMon = CFrame.new(-558.06103515625, 112.04895782470703, -11290.7744140625)
            elseif MyLevel == 2200 or MyLevel <= 2224 then
                Mon = "Cookie Crafter"
                LevelQuest = 1
                NameQuest = "CakeQuest1"
                NameMon = "Cookie Crafter"
                CFrameQuest = CFrame.new(-2021.32007, 37.7982254, -12028.7295, 0.957576931, -8.80302053e-08, 0.288177818, 6.9301187e-08, 1, 7.51931211e-08, -0.288177818, -5.2032135e-08, 0.957576931)
                CFrameMon = CFrame.new(-2374.13671875, 37.79826354980469, -12125.30859375)
            elseif MyLevel == 2225 or MyLevel <= 2249 then
                Mon = "Cake Guard"
                LevelQuest = 2
                NameQuest = "CakeQuest1"
                NameMon = "Cake Guard"
                CFrameQuest = CFrame.new(-2021.32007, 37.7982254, -12028.7295, 0.957576931, -8.80302053e-08, 0.288177818, 6.9301187e-08, 1, 7.51931211e-08, -0.288177818, -5.2032135e-08, 0.957576931)
                CFrameMon = CFrame.new(-1598.3070068359375, 43.773197174072266, -12244.5810546875)
            elseif MyLevel == 2250 or MyLevel <= 2274 then
                Mon = "Baking Staff"
                LevelQuest = 1
                NameQuest = "CakeQuest2"
                NameMon = "Baking Staff"
                CFrameQuest = CFrame.new(-1927.91602, 37.7981339, -12842.5391, -0.96804446, 4.22142143e-08, 0.250778586, 4.74911062e-08, 1, 1.49904711e-08, -0.250778586, 2.64211941e-08, -0.96804446)
                CFrameMon = CFrame.new(-1887.8099365234375, 77.6185073852539, -12998.3505859375)
            elseif MyLevel == 2275 or MyLevel <= 2299 then
                Mon = "Head Baker"
                LevelQuest = 2
                NameQuest = "CakeQuest2"
                NameMon = "Head Baker"
                CFrameQuest = CFrame.new(-1927.91602, 37.7981339, -12842.5391, -0.96804446, 4.22142143e-08, 0.250778586, 4.74911062e-08, 1, 1.49904711e-08, -0.250778586, 2.64211941e-08, -0.96804446)
                CFrameMon = CFrame.new(-2216.188232421875, 82.884521484375, -12869.2939453125)
            elseif MyLevel == 2300 or MyLevel <= 2324 then
                Mon = "Cocoa Warrior"
                LevelQuest = 1
                NameQuest = "ChocQuest1"
                NameMon = "Cocoa Warrior"
                CFrameQuest = CFrame.new(233.22836303710938, 29.876001358032227, -12201.2333984375)
                CFrameMon = CFrame.new(-21.55328369140625, 80.57499694824219, -12352.3876953125)
            elseif MyLevel == 2325 or MyLevel <= 2349 then
                Mon = "Chocolate Bar Battler"
                LevelQuest = 2
                NameQuest = "ChocQuest1"
                NameMon = "Chocolate Bar Battler"
                CFrameQuest = CFrame.new(233.22836303710938, 29.876001358032227, -12201.2333984375)
                CFrameMon = CFrame.new(582.590576171875, 77.18809509277344, -12463.162109375)
            elseif MyLevel == 2350 or MyLevel <= 2374 then
                Mon = "Sweet Thief"
                LevelQuest = 1
                NameQuest = "ChocQuest2"
                NameMon = "Sweet Thief"
                CFrameQuest = CFrame.new(150.5066375732422, 30.693693161010742, -12774.5029296875)
                CFrameMon = CFrame.new(165.1884765625, 76.05885314941406, -12600.8369140625)
            elseif MyLevel == 2375 or MyLevel <= 2399 then
                Mon = "Candy Rebel"
                LevelQuest = 2
                NameQuest = "ChocQuest2"
                NameMon = "Candy Rebel"
                CFrameQuest = CFrame.new(150.5066375732422, 30.693693161010742, -12774.5029296875)
                CFrameMon = CFrame.new(134.86563110351562, 77.2476806640625, -12876.5478515625)
            elseif MyLevel == 2400 or MyLevel <= 2424 then
                Mon = "Candy Pirate"
                LevelQuest = 1
                NameQuest = "CandyQuest1"
                NameMon = "Candy Pirate"
                CFrameQuest = CFrame.new(-1150.0400390625, 20.378934860229492, -14446.3349609375)
                CFrameMon = CFrame.new(-1310.5003662109375, 26.016523361206055, -14562.404296875)
            elseif MyLevel == 2425 or MyLevel <= 2449 then
                Mon = "Snow Demon"
                LevelQuest = 2
                NameQuest = "CandyQuest1"
                NameMon = "Snow Demon"
                CFrameQuest = CFrame.new(-1150.0400390625, 20.378934860229492, -14446.3349609375)
                CFrameMon = CFrame.new(-880.2006225585938, 71.24776458740234, -14538.609375)
            elseif MyLevel == 2450 or MyLevel <= 2474 then
                Mon = "Isle Outlaw"
                LevelQuest = 1
                NameQuest = "TikiQuest1"
                NameMon = "Isle Outlaw"
                CFrameQuest = CFrame.new(-16547.748046875, 61.13533401489258, -173.41360473632812)
                CFrameMon = CFrame.new(-16442.814453125, 116.13899993896484, -264.4637756347656)
            elseif MyLevel == 2475 or MyLevel <= 2499 then
                Mon = "Island Boy"
                LevelQuest = 2
                NameQuest = "TikiQuest1"
                NameMon = "Island Boy"
                CFrameQuest = CFrame.new(-16547.748046875, 61.13533401489258, -173.41360473632812)
                CFrameMon = CFrame.new(-16901.26171875, 84.06756591796875, -192.88906860351562)
            elseif MyLevel == 2500 or MyLevel <= 2524 then
                Mon = "Sun-kissed Warrior"
                LevelQuest = 1
                NameQuest = "TikiQuest2"
                NameMon = "kissed"
                CFrameQuest = CFrame.new(-16539.078125, 55.68632888793945, 1051.5738525390625)
                CFrameMon = CFrame.new(-16349.8779296875, 92.0808334350586, 1123.4169921875)
            elseif MyLevel == 2525 or MyLevel <= 2550 then
                Mon = "Isle Champion"
                LevelQuest = 2
                NameQuest = "TikiQuest2"
                NameMon = "Isle Champion"
                CFrameQuest = CFrame.new(-16539.078125, 55.68632888793945, 1051.5738525390625)
                CFrameMon = CFrame.new(-16347.4150390625, 92.09503936767578, 1122.335205078125)
                elseif MyLevel == 2550 or MyLevel <= 2575 then
                Mon = "Serpent Hunter"
                LevelQuest = 1
                NameQuest = "TikiQuest3"
                NameMon = "Serpent Hunter"
                CFrameQuest = CFrame.new(-16668.0312, 105.315765, 1568.60132, -0.999815822, 2.53269654e-08, 0.0191932656, 2.47972114e-08, 1, -2.78390253e-08, -0.0191932656, -2.73579577e-08, -0.999815822)
                CFrameMon = CFrame.new(-16645.6426, 163.092682, 1352.87317, 0.999801993, -7.3039903e-09, 0.0198997185, 5.12876497e-09, 1, 1.09360379e-07, -0.0198997185, -1.09236666e-07, 0.999801993)
                elseif MyLevel == 2575 or MyLevel <= 2600 then
                Mon = "Skull Slayer"
                LevelQuest = 2
                NameQuest = "TikiQuest3"
                NameMon = "Skull Slayer"
                CFrameQuest = CFrame.new(-16668.0312, 105.315765, 1568.60132, -0.999815822, 2.53269654e-08, 0.0191932656, 2.47972114e-08, 1, -2.78390253e-08, -0.0191932656, -2.73579577e-08, -0.999815822)
                CFrameMon = CFrame.new(-16838.25, 122.900497, 1722.86694, 0.998448908, 3.55804843e-08, -0.0556759238, -3.229162e-08, 1, 5.99712138e-08, 0.0556759238, -5.80803281e-08, 0.998448908)
            end
        end
    end
--------------------------------------------------------------------------------------------------------
    function Hop()
        local PlaceID = game.PlaceId
        local AllIDs = {}
        local foundAnything = ""
        local actualHour = os.date("!*t").hour
        local Deleted = false
        function TPReturner()
            local Site;
            if foundAnything == "" then
                Site = game.HttpService:JSONDecode(game:HttpGet('https://games.roblox.com/v1/games/' .. PlaceID .. '/servers/Public?sortOrder=Asc&limit=100'))
            else
                Site = game.HttpService:JSONDecode(game:HttpGet('https://games.roblox.com/v1/games/' .. PlaceID .. '/servers/Public?sortOrder=Asc&limit=100&cursor=' .. foundAnything))
            end
            local ID = ""
            if Site.nextPageCursor and Site.nextPageCursor ~= "null" and Site.nextPageCursor ~= nil then
                foundAnything = Site.nextPageCursor
            end
            local num = 0;
            for i,v in pairs(Site.data) do
                local Possible = true
                ID = tostring(v.id)
                if tonumber(v.maxPlayers) > tonumber(v.playing) then
                    for _,Existing in pairs(AllIDs) do
                        if num ~= 0 then
                            if ID == tostring(Existing) then
                                Possible = false
                            end
                        else
                            if tonumber(actualHour) ~= tonumber(Existing) then
                                local delFile = pcall(function()
                                    AllIDs = {}
                                    table.insert(AllIDs, actualHour)
                                end)
                            end
                        end
                        num = num + 1
                    end
                    if Possible == true then
                        table.insert(AllIDs, ID)
                        wait()
                        pcall(function()
                            wait()
                            game:GetService("TeleportService"):TeleportToPlaceInstance(PlaceID, ID, game.Players.LocalPlayer)
                        end)
                        wait(4)
                    end
                end
            end
        function Teleport() 
            while wait() do
                pcall(function()
                    TPReturner()
                    if foundAnything ~= "" then
                        TPReturner()
                    end
                end)
            end
        Teleport()

    function UpdateIslandESP() 
        for i,v in pairs(game:GetService("Workspace")["_WorldOrigin"].Locations:GetChildren()) do
            pcall(function()
                if IslandESP then 
                    if v.Name ~= "Sea" then
                        if not v:FindFirstChild('NameEsp') then
                            local bill = Instance.new('BillboardGui',v)
                            bill.Name = 'NameEsp'
                            bill.ExtentsOffset = Vector3.new(0, 1, 0)
                            bill.Size = UDim2.new(1,200,1,30)
                            bill.Adornee = v
                            bill.AlwaysOnTop = true
                            local name = Instance.new('TextLabel',bill)
                            name.Font = "GothamBold"
                            name.FontSize = "Size14"
                            name.TextWrapped = true
                            name.Size = UDim2.new(1,0,1,0)
                            name.TextYAlignment = 'Top'
                            name.BackgroundTransparency = 1
                            name.TextStrokeTransparency = 0.5
                            name.TextColor3 = Color3.fromRGB(7, 236, 240)
                        else
                            v['NameEsp'].TextLabel.Text = (v.Name ..'   \n'.. round((game:GetService('Players').LocalPlayer.Character.Head.Position - v.Position).Magnitude/3) ..' Distance')
                        end
                    end
                else
                    if v:FindFirstChild('NameEsp') then
                        v:FindFirstChild('NameEsp'):Destroy()
                    end
                end
            end)
        end
    
    function isnil(thing)
	return (thing == nil)
end
local function round(n)
	return math.floor(tonumber(n) + 0.5)
Number = math.random(1, 1000000)
function UpdatePlayerChams()
	for i,v in pairs(game:GetService'Players':GetChildren()) do
		pcall(function()
			if not isnil(v.Character) then
				if ESPPlayer then
					if not isnil(v.Character.Head) and not v.Character.Head:FindFirstChild('NameEsp'..Number) then
						local bill = Instance.new('BillboardGui',v.Character.Head)
						bill.Name = 'NameEsp'..Number
						bill.ExtentsOffset = Vector3.new(0, 1, 0)
						bill.Size = UDim2.new(1,200,1,30)
						bill.Adornee = v.Character.Head
						bill.AlwaysOnTop = true
						local name = Instance.new('TextLabel',bill)
						name.Font = Enum.Font.GothamSemibold
						name.FontSize = "Size14"
						name.TextWrapped = true
						name.Text = (v.Name ..' \n'.. round((game:GetService('Players').LocalPlayer.Character.Head.Position - v.Character.Head.Position).Magnitude/3) ..' Distance')
						name.Size = UDim2.new(1,0,1,0)
						name.TextYAlignment = 'Top'
						name.BackgroundTransparency = 1
						name.TextStrokeTransparency = 0.5
						if v.Team == game.Players.LocalPlayer.Team then
							name.TextColor3 = Color3.new(0,255,0)
						else
							name.TextColor3 = Color3.new(255,0,0)
						end
					else
						v.Character.Head['NameEsp'..Number].TextLabel.Text = (v.Name ..' | '.. round((game:GetService('Players').LocalPlayer.Character.Head.Position - v.Character.Head.Position).Magnitude/3) ..' Distance\nHealth: ' .. round(v.Character.Humanoid.Health*100/v.Character.Humanoid.MaxHealth) .. '%')
					end
				else
					if v.Character.Head:FindFirstChild('NameEsp'..Number) then
						v.Character.Head:FindFirstChild('NameEsp'..Number):Destroy()
					end
				end
			end
		end)
	end
function UpdateChestChams() 
	for i,v in pairs(game.Workspace:GetChildren()) do
		pcall(function()
			if string.find(v.Name,"Chest") then
				if ChestESP then
					if string.find(v.Name,"Chest") then
						if not v:FindFirstChild('NameEsp'..Number) then
							local bill = Instance.new('BillboardGui',v)
							bill.Name = 'NameEsp'..Number
							bill.ExtentsOffset = Vector3.new(0, 1, 0)
							bill.Size = UDim2.new(1,200,1,30)
							bill.Adornee = v
							bill.AlwaysOnTop = true
							local name = Instance.new('TextLabel',bill)
							name.Font = Enum.Font.GothamSemibold
							name.FontSize = "Size14"
							name.TextWrapped = true
							name.Size = UDim2.new(1,0,1,0)
							name.TextYAlignment = 'Top'
							name.BackgroundTransparency = 1
							name.TextStrokeTransparency = 0.5
							if v.Name == "Chest1" then
								name.TextColor3 = Color3.fromRGB(109, 109, 109)
								name.Text = ("Chest 1" ..' \n'.. round((game:GetService('Players').LocalPlayer.Character.Head.Position - v.Position).Magnitude/3) ..' Distance')
							end
							if v.Name == "Chest2" then
								name.TextColor3 = Color3.fromRGB(173, 158, 21)
								name.Text = ("Chest 2" ..' \n'.. round((game:GetService('Players').LocalPlayer.Character.Head.Position - v.Position).Magnitude/3) ..' Distance')
							end
							if v.Name == "Chest3" then
								name.TextColor3 = Color3.fromRGB(85, 255, 255)
								name.Text = ("Chest 3" ..' \n'.. round((game:GetService('Players').LocalPlayer.Character.Head.Position - v.Position).Magnitude/3) ..' Distance')
							end
						else
							v['NameEsp'..Number].TextLabel.Text = (v.Name ..'   \n'.. round((game:GetService('Players').LocalPlayer.Character.Head.Position - v.Position).Magnitude/3) ..' Distance')
						end
					end
				else
					if v:FindFirstChild('NameEsp'..Number) then
						v:FindFirstChild('NameEsp'..Number):Destroy()
					end
				end
			end
		end)
	end
function UpdateDevilChams() 
	for i,v in pairs(game.Workspace:GetChildren()) do
		pcall(function()
			if DevilFruitESP then
				if string.find(v.Name, "Fruit") then   
					if not v.Handle:FindFirstChild('NameEsp'..Number) then
						local bill = Instance.new('BillboardGui',v.Handle)
						bill.Name = 'NameEsp'..Number
						bill.ExtentsOffset = Vector3.new(0, 1, 0)
						bill.Size = UDim2.new(1,200,1,30)
						bill.Adornee = v.Handle
						bill.AlwaysOnTop = true
						local name = Instance.new('TextLabel',bill)
						name.Font = Enum.Font.GothamSemibold
						name.FontSize = "Size14"
						name.TextWrapped = true
						name.Size = UDim2.new(1,0,1,0)
						name.TextYAlignment = 'Top'
						name.BackgroundTransparency = 1
						name.TextStrokeTransparency = 0.5
						name.TextColor3 = Color3.fromRGB(255, 255, 255)
						name.Text = (v.Name ..' \n'.. round((game:GetService('Players').LocalPlayer.Character.Head.Position - v.Handle.Position).Magnitude/3) ..' Distance')
					else
						v.Handle['NameEsp'..Number].TextLabel.Text = (v.Name ..'   \n'.. round((game:GetService('Players').LocalPlayer.Character.Head.Position - v.Handle.Position).Magnitude/3) ..' Distance')
					end
				end
			else
				if v.Handle:FindFirstChild('NameEsp'..Number) then
					v.Handle:FindFirstChild('NameEsp'..Number):Destroy()
				end
			end
		end)
	end
function UpdateFlowerChams() 
	for i,v in pairs(game.Workspace:GetChildren()) do
		pcall(function()
			if v.Name == "Flower2" or v.Name == "Flower1" then
				if FlowerESP then 
					if not v:FindFirstChild('NameEsp'..Number) then
						local bill = Instance.new('BillboardGui',v)
						bill.Name = 'NameEsp'..Number
						bill.ExtentsOffset = Vector3.new(0, 1, 0)
						bill.Size = UDim2.new(1,200,1,30)
						bill.Adornee = v
						bill.AlwaysOnTop = true
						local name = Instance.new('TextLabel',bill)
						name.Font = Enum.Font.GothamSemibold
						name.FontSize = "Size14"
						name.TextWrapped = true
						name.Size = UDim2.new(1,0,1,0)
						name.TextYAlignment = 'Top'
						name.BackgroundTransparency = 1
						name.TextStrokeTransparency = 0.5
						name.TextColor3 = Color3.fromRGB(255, 0, 0)
						if v.Name == "Flower1" then 
							name.Text = ("Blue Flower" ..' \n'.. round((game:GetService('Players').LocalPlayer.Character.Head.Position - v.Position).Magnitude/3) ..' Distance')
							name.TextColor3 = Color3.fromRGB(0, 0, 255)
						end
						if v.Name == "Flower2" then
							name.Text = ("Red Flower" ..' \n'.. round((game:GetService('Players').LocalPlayer.Character.Head.Position - v.Position).Magnitude/3) ..' Distance')
							name.TextColor3 = Color3.fromRGB(255, 0, 0)
						end
					else
						v['NameEsp'..Number].TextLabel.Text = (v.Name ..'   \n'.. round((game:GetService('Players').LocalPlayer.Character.Head.Position - v.Position).Magnitude/3) ..' Distance')
					end
				else
					if v:FindFirstChild('NameEsp'..Number) then
					v:FindFirstChild('NameEsp'..Number):Destroy()
					end
				end
			end   
		end)
	end
function UpdateRealFruitChams() 
	for i,v in pairs(game.Workspace.AppleSpawner:GetChildren()) do
		if v:IsA("Tool") then
			if RealFruitESP then 
				if not v.Handle:FindFirstChild('NameEsp'..Number) then
					local bill = Instance.new('BillboardGui',v.Handle)
					bill.Name = 'NameEsp'..Number
					bill.ExtentsOffset = Vector3.new(0, 1, 0)
					bill.Size = UDim2.new(1,200,1,30)
					bill.Adornee = v.Handle
					bill.AlwaysOnTop = true
					local name = Instance.new('TextLabel',bill)
					name.Font = Enum.Font.GothamSemibold
					name.FontSize = "Size14"
					name.TextWrapped = true
					name.Size = UDim2.new(1,0,1,0)
					name.TextYAlignment = 'Top'
					name.BackgroundTransparency = 1
					name.TextStrokeTransparency = 0.5
					name.TextColor3 = Color3.fromRGB(255, 0, 0)
					name.Text = (v.Name ..' \n'.. round((game:GetService('Players').LocalPlayer.Character.Head.Position - v.Handle.Position).Magnitude/3) ..' Distance')
				else
					v.Handle['NameEsp'..Number].TextLabel.Text = (v.Name ..' '.. round((game:GetService('Players').LocalPlayer.Character.Head.Position - v.Handle.Position).Magnitude/3) ..' Distance')
				end
			else
				if v.Handle:FindFirstChild('NameEsp'..Number) then
					v.Handle:FindFirstChild('NameEsp'..Number):Destroy()
				end
			end 
		end
	end
	for i,v in pairs(game.Workspace.PineappleSpawner:GetChildren()) do
		if v:IsA("Tool") then
			if RealFruitESP then 
				if not v.Handle:FindFirstChild('NameEsp'..Number) then
					local bill = Instance.new('BillboardGui',v.Handle)
					bill.Name = 'NameEsp'..Number
					bill.ExtentsOffset = Vector3.new(0, 1, 0)
					bill.Size = UDim2.new(1,200,1,30)
					bill.Adornee = v.Handle
					bill.AlwaysOnTop = true
					local name = Instance.new('TextLabel',bill)
					name.Font = Enum.Font.GothamSemibold
					name.FontSize = "Size14"
					name.TextWrapped = true
					name.Size = UDim2.new(1,0,1,0)
					name.TextYAlignment = 'Top'
					name.BackgroundTransparency = 1
					name.TextStrokeTransparency = 0.5
					name.TextColor3 = Color3.fromRGB(255, 174, 0)
					name.Text = (v.Name ..' \n'.. round((game:GetService('Players').LocalPlayer.Character.Head.Position - v.Handle.Position).Magnitude/3) ..' Distance')
				else
					v.Handle['NameEsp'..Number].TextLabel.Text = (v.Name ..' '.. round((game:GetService('Players').LocalPlayer.Character.Head.Position - v.Handle.Position).Magnitude/3) ..' Distance')
				end
			else
				if v.Handle:FindFirstChild('NameEsp'..Number) then
					v.Handle:FindFirstChild('NameEsp'..Number):Destroy()
				end
			end 
		end
	end
	for i,v in pairs(game.Workspace.BananaSpawner:GetChildren()) do
		if v:IsA("Tool") then
			if RealFruitESP then 
				if not v.Handle:FindFirstChild('NameEsp'..Number) then
					local bill = Instance.new('BillboardGui',v.Handle)
					bill.Name = 'NameEsp'..Number
					bill.ExtentsOffset = Vector3.new(0, 1, 0)
					bill.Size = UDim2.new(1,200,1,30)
					bill.Adornee = v.Handle
					bill.AlwaysOnTop = true
					local name = Instance.new('TextLabel',bill)
					name.Font = Enum.Font.GothamSemibold
					name.FontSize = "Size14"
					name.TextWrapped = true
					name.Size = UDim2.new(1,0,1,0)
					name.TextYAlignment = 'Top'
					name.BackgroundTransparency = 1
					name.TextStrokeTransparency = 0.5
					name.TextColor3 = Color3.fromRGB(251, 255, 0)
					name.Text = (v.Name ..' \n'.. round((game:GetService('Players').LocalPlayer.Character.Head.Position - v.Handle.Position).Magnitude/3) ..' Distance')
				else
					v.Handle['NameEsp'..Number].TextLabel.Text = (v.Name ..' '.. round((game:GetService('Players').LocalPlayer.Character.Head.Position - v.Handle.Position).Magnitude/3) ..' Distance')
				end
			else
				if v.Handle:FindFirstChild('NameEsp'..Number) then
					v.Handle:FindFirstChild('NameEsp'..Number):Destroy()
				end
			end 
		end
	end
end

function UpdateIslandESP() 
        for i,v in pairs(game:GetService("Workspace")["_WorldOrigin"].Locations:GetChildren()) do
            pcall(function()
                if IslandESP then 
                    if v.Name ~= "Sea" then
                        if not v:FindFirstChild('NameEsp') then
                            local bill = Instance.new('BillboardGui',v)
                            bill.Name = 'NameEsp'
                            bill.ExtentsOffset = Vector3.new(0, 1, 0)
                            bill.Size = UDim2.new(1,200,1,30)
                            bill.Adornee = v
                            bill.AlwaysOnTop = true
                            local name = Instance.new('TextLabel',bill)
                            name.Font = "GothamBold"
                            name.FontSize = "Size14"
                            name.TextWrapped = true
                            name.Size = UDim2.new(1,0,1,0)
                            name.TextYAlignment = 'Top'
                            name.BackgroundTransparency = 1
                            name.TextStrokeTransparency = 0.5
                            name.TextColor3 = Color3.fromRGB(7, 236, 240)
                        else
                            v['NameEsp'].TextLabel.Text = (v.Name ..'   \n'.. round((game:GetService('Players').LocalPlayer.Character.Head.Position - v.Position).Magnitude/3) ..' Distance')
                        end
                    end
                else
                    if v:FindFirstChild('NameEsp') then
                        v:FindFirstChild('NameEsp'):Destroy()
                    end
                end
            end)
        end
    
    function isnil(thing)
	return (thing == nil)
end
local function round(n)
	return math.floor(tonumber(n) + 0.5)
Number = math.random(1, 1000000)
function UpdatePlayerChams()
	for i,v in pairs(game:GetService'Players':GetChildren()) do
		pcall(function()
			if not isnil(v.Character) then
				if ESPPlayer then
					if not isnil(v.Character.Head) and not v.Character.Head:FindFirstChild('NameEsp'..Number) then
						local bill = Instance.new('BillboardGui',v.Character.Head)
						bill.Name = 'NameEsp'..Number
						bill.ExtentsOffset = Vector3.new(0, 1, 0)
						bill.Size = UDim2.new(1,200,1,30)
						bill.Adornee = v.Character.Head
						bill.AlwaysOnTop = true
						local name = Instance.new('TextLabel',bill)
						name.Font = Enum.Font.GothamSemibold
						name.FontSize = "Size14"
						name.TextWrapped = true
						name.Text = (v.Name ..' \n'.. round((game:GetService('Players').LocalPlayer.Character.Head.Position - v.Character.Head.Position).Magnitude/3) ..' Distance')
						name.Size = UDim2.new(1,0,1,0)
						name.TextYAlignment = 'Top'
						name.BackgroundTransparency = 1
						name.TextStrokeTransparency = 0.5
						if v.Team == game.Players.LocalPlayer.Team then
							name.TextColor3 = Color3.new(0,255,0)
						else
							name.TextColor3 = Color3.new(255,0,0)
						end
					else
						v.Character.Head['NameEsp'..Number].TextLabel.Text = (v.Name ..' | '.. round((game:GetService('Players').LocalPlayer.Character.Head.Position - v.Character.Head.Position).Magnitude/3) ..' Distance\nHealth: ' .. round(v.Character.Humanoid.Health*100/v.Character.Humanoid.MaxHealth) .. '%')
					end
				else
					if v.Character.Head:FindFirstChild('NameEsp'..Number) then
						v.Character.Head:FindFirstChild('NameEsp'..Number):Destroy()
					end
				end
			end
		end)
	end
function UpdateChestChams() 
	for i,v in pairs(game.Workspace:GetChildren()) do
		pcall(function()
			if string.find(v.Name,"Chest") then
				if ChestESP then
					if string.find(v.Name,"Chest") then
						if not v:FindFirstChild('NameEsp'..Number) then
							local bill = Instance.new('BillboardGui',v)
							bill.Name = 'NameEsp'..Number
							bill.ExtentsOffset = Vector3.new(0, 1, 0)
							bill.Size = UDim2.new(1,200,1,30)
							bill.Adornee = v
							bill.AlwaysOnTop = true
							local name = Instance.new('TextLabel',bill)
							name.Font = Enum.Font.GothamSemibold
							name.FontSize = "Size14"
							name.TextWrapped = true
							name.Size = UDim2.new(1,0,1,0)
							name.TextYAlignment = 'Top'
							name.BackgroundTransparency = 1
							name.TextStrokeTransparency = 0.5
							if v.Name == "Chest1" then
								name.TextColor3 = Color3.fromRGB(109, 109, 109)
								name.Text = ("Chest 1" ..' \n'.. round((game:GetService('Players').LocalPlayer.Character.Head.Position - v.Position).Magnitude/3) ..' Distance')
							end
							if v.Name == "Chest2" then
								name.TextColor3 = Color3.fromRGB(173, 158, 21)
								name.Text = ("Chest 2" ..' \n'.. round((game:GetService('Players').LocalPlayer.Character.Head.Position - v.Position).Magnitude/3) ..' Distance')
							end
							if v.Name == "Chest3" then
								name.TextColor3 = Color3.fromRGB(85, 255, 255)
								name.Text = ("Chest 3" ..' \n'.. round((game:GetService('Players').LocalPlayer.Character.Head.Position - v.Position).Magnitude/3) ..' Distance')
							end
						else
							v['NameEsp'..Number].TextLabel.Text = (v.Name ..'   \n'.. round((game:GetService('Players').LocalPlayer.Character.Head.Position - v.Position).Magnitude/3) ..' Distance')
						end
					end
				else
					if v:FindFirstChild('NameEsp'..Number) then
						v:FindFirstChild('NameEsp'..Number):Destroy()
					end
				end
			end
		end)
	end
function UpdateDevilChams() 
	for i,v in pairs(game.Workspace:GetChildren()) do
		pcall(function()
			if DevilFruitESP then
				if string.find(v.Name, "Fruit") then   
					if not v.Handle:FindFirstChild('NameEsp'..Number) then
						local bill = Instance.new('BillboardGui',v.Handle)
						bill.Name = 'NameEsp'..Number
						bill.ExtentsOffset = Vector3.new(0, 1, 0)
						bill.Size = UDim2.new(1,200,1,30)
						bill.Adornee = v.Handle
						bill.AlwaysOnTop = true
						local name = Instance.new('TextLabel',bill)
						name.Font = Enum.Font.GothamSemibold
						name.FontSize = "Size14"
						name.TextWrapped = true
						name.Size = UDim2.new(1,0,1,0)
						name.TextYAlignment = 'Top'
						name.BackgroundTransparency = 1
						name.TextStrokeTransparency = 0.5
						name.TextColor3 = Color3.fromRGB(255, 255, 255)
						name.Text = (v.Name ..' \n'.. round((game:GetService('Players').LocalPlayer.Character.Head.Position - v.Handle.Position).Magnitude/3) ..' Distance')
					else
						v.Handle['NameEsp'..Number].TextLabel.Text = (v.Name ..'   \n'.. round((game:GetService('Players').LocalPlayer.Character.Head.Position - v.Handle.Position).Magnitude/3) ..' Distance')
					end
				end
			else
				if v.Handle:FindFirstChild('NameEsp'..Number) then
					v.Handle:FindFirstChild('NameEsp'..Number):Destroy()
				end
			end
		end)
	end
function UpdateFlowerChams() 
	for i,v in pairs(game.Workspace:GetChildren()) do
		pcall(function()
			if v.Name == "Flower2" or v.Name == "Flower1" then
				if FlowerESP then 
					if not v:FindFirstChild('NameEsp'..Number) then
						local bill = Instance.new('BillboardGui',v)
						bill.Name = 'NameEsp'..Number
						bill.ExtentsOffset = Vector3.new(0, 1, 0)
						bill.Size = UDim2.new(1,200,1,30)
						bill.Adornee = v
						bill.AlwaysOnTop = true
						local name = Instance.new('TextLabel',bill)
						name.Font = Enum.Font.GothamSemibold
						name.FontSize = "Size14"
						name.TextWrapped = true
						name.Size = UDim2.new(1,0,1,0)
						name.TextYAlignment = 'Top'
						name.BackgroundTransparency = 1
						name.TextStrokeTransparency = 0.5
						name.TextColor3 = Color3.fromRGB(255, 0, 0)
						if v.Name == "Flower1" then 
							name.Text = ("Blue Flower" ..' \n'.. round((game:GetService('Players').LocalPlayer.Character.Head.Position - v.Position).Magnitude/3) ..' Distance')
							name.TextColor3 = Color3.fromRGB(0, 0, 255)
						end
						if v.Name == "Flower2" then
							name.Text = ("Red Flower" ..' \n'.. round((game:GetService('Players').LocalPlayer.Character.Head.Position - v.Position).Magnitude/3) ..' Distance')
							name.TextColor3 = Color3.fromRGB(255, 0, 0)
						end
					else
						v['NameEsp'..Number].TextLabel.Text = (v.Name ..'   \n'.. round((game:GetService('Players').LocalPlayer.Character.Head.Position - v.Position).Magnitude/3) ..' Distance')
					end
				else
					if v:FindFirstChild('NameEsp'..Number) then
					v:FindFirstChild('NameEsp'..Number):Destroy()
					end
				end
			end   
		end)
	end
function UpdateRealFruitChams() 
	for i,v in pairs(game.Workspace.AppleSpawner:GetChildren()) do
		if v:IsA("Tool") then
			if RealFruitESP then 
				if not v.Handle:FindFirstChild('NameEsp'..Number) then
					local bill = Instance.new('BillboardGui',v.Handle)
					bill.Name = 'NameEsp'..Number
					bill.ExtentsOffset = Vector3.new(0, 1, 0)
					bill.Size = UDim2.new(1,200,1,30)
					bill.Adornee = v.Handle
					bill.AlwaysOnTop = true
					local name = Instance.new('TextLabel',bill)
					name.Font = Enum.Font.GothamSemibold
					name.FontSize = "Size14"
					name.TextWrapped = true
					name.Size = UDim2.new(1,0,1,0)
					name.TextYAlignment = 'Top'
					name.BackgroundTransparency = 1
					name.TextStrokeTransparency = 0.5
					name.TextColor3 = Color3.fromRGB(255, 0, 0)
					name.Text = (v.Name ..' \n'.. round((game:GetService('Players').LocalPlayer.Character.Head.Position - v.Handle.Position).Magnitude/3) ..' Distance')
				else
					v.Handle['NameEsp'..Number].TextLabel.Text = (v.Name ..' '.. round((game:GetService('Players').LocalPlayer.Character.Head.Position - v.Handle.Position).Magnitude/3) ..' Distance')
				end
			else
				if v.Handle:FindFirstChild('NameEsp'..Number) then
					v.Handle:FindFirstChild('NameEsp'..Number):Destroy()
				end
			end 
		end
	end
	for i,v in pairs(game.Workspace.PineappleSpawner:GetChildren()) do
		if v:IsA("Tool") then
			if RealFruitESP then 
				if not v.Handle:FindFirstChild('NameEsp'..Number) then
					local bill = Instance.new('BillboardGui',v.Handle)
					bill.Name = 'NameEsp'..Number
					bill.ExtentsOffset = Vector3.new(0, 1, 0)
					bill.Size = UDim2.new(1,200,1,30)
					bill.Adornee = v.Handle
					bill.AlwaysOnTop = true
					local name = Instance.new('TextLabel',bill)
					name.Font = Enum.Font.GothamSemibold
					name.FontSize = "Size14"
					name.TextWrapped = true
					name.Size = UDim2.new(1,0,1,0)
					name.TextYAlignment = 'Top'
					name.BackgroundTransparency = 1
					name.TextStrokeTransparency = 0.5
					name.TextColor3 = Color3.fromRGB(255, 174, 0)
					name.Text = (v.Name ..' \n'.. round((game:GetService('Players').LocalPlayer.Character.Head.Position - v.Handle.Position).Magnitude/3) ..' Distance')
				else
					v.Handle['NameEsp'..Number].TextLabel.Text = (v.Name ..' '.. round((game:GetService('Players').LocalPlayer.Character.Head.Position - v.Handle.Position).Magnitude/3) ..' Distance')
				end
			else
				if v.Handle:FindFirstChild('NameEsp'..Number) then
					v.Handle:FindFirstChild('NameEsp'..Number):Destroy()
				end
			end 
		end
	end
	for i,v in pairs(game.Workspace.BananaSpawner:GetChildren()) do
		if v:IsA("Tool") then
			if RealFruitESP then 
				if not v.Handle:FindFirstChild('NameEsp'..Number) then
					local bill = Instance.new('BillboardGui',v.Handle)
					bill.Name = 'NameEsp'..Number
					bill.ExtentsOffset = Vector3.new(0, 1, 0)
					bill.Size = UDim2.new(1,200,1,30)
					bill.Adornee = v.Handle
					bill.AlwaysOnTop = true
					local name = Instance.new('TextLabel',bill)
					name.Font = Enum.Font.GothamSemibold
					name.FontSize = "Size14"
					name.TextWrapped = true
					name.Size = UDim2.new(1,0,1,0)
					name.TextYAlignment = 'Top'
					name.BackgroundTransparency = 1
					name.TextStrokeTransparency = 0.5
					name.TextColor3 = Color3.fromRGB(251, 255, 0)
					name.Text = (v.Name ..' \n'.. round((game:GetService('Players').LocalPlayer.Character.Head.Position - v.Handle.Position).Magnitude/3) ..' Distance')
				else
					v.Handle['NameEsp'..Number].TextLabel.Text = (v.Name ..' '.. round((game:GetService('Players').LocalPlayer.Character.Head.Position - v.Handle.Position).Magnitude/3) ..' Distance')
				end
			else
				if v.Handle:FindFirstChild('NameEsp'..Number) then
					v.Handle:FindFirstChild('NameEsp'..Number):Destroy()
				end
			end 
		end
	end
end

spawn(function()
    while wait() do
        pcall(function()
            if MobESP then
                for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                    if v:FindFirstChild('HumanoidRootPart') then
                        if not v:FindFirstChild("MobEap") then
                            local BillboardGui = Instance.new("BillboardGui")
                            local TextLabel = Instance.new("TextLabel")

                            BillboardGui.Parent = v
                            BillboardGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
                            BillboardGui.Active = true
                            BillboardGui.Name = "MobEap"
                            BillboardGui.AlwaysOnTop = true
                            BillboardGui.LightInfluence = 1.000
                            BillboardGui.Size = UDim2.new(0, 200, 0, 50)
                            BillboardGui.StudsOffset = Vector3.new(0, 2.5, 0)

                            TextLabel.Parent = BillboardGui
                            TextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                            TextLabel.BackgroundTransparency = 1.000
                            TextLabel.Size = UDim2.new(0, 200, 0, 50)
                            TextLabel.Font = Enum.Font.SourceSansBold
                            TextLabel.TextColor3 = Color3.fromRGB(7, 236, 240)
                            TextLabel.Text.Size = 35
                        end
                        local Dis = math.floor((game.Players.LocalPlayer.Character.HumanoidRootPart.Position - v.HumanoidRootPart.Position).Magnitude)
                        v.MobEap.TextLabel.Text = v.Name.." - "..Dis.." Distance"
                    end
                end
            else
                for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                    if v:FindFirstChild("MobEap") then
                        v.MobEap:Destroy()
                    end
                end
            end
        end)

spawn(function()
    while wait() do
        pcall(function()
            if SeaESP then
                for i,v in pairs(game:GetService("Workspace").SeaBeasts:GetChildren()) do
                    if v:FindFirstChild('HumanoidRootPart') then
                        if not v:FindFirstChild("Seaesps") then
                            local BillboardGui = Instance.new("BillboardGui")
                            local TextLabel = Instance.new("TextLabel")

                            BillboardGui.Parent = v
                            BillboardGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
                            BillboardGui.Active = true
                            BillboardGui.Name = "Seaesps"
                            BillboardGui.AlwaysOnTop = true
                            BillboardGui.LightInfluence = 1.000
                            BillboardGui.Size = UDim2.new(0, 200, 0, 50)
                            BillboardGui.StudsOffset = Vector3.new(0, 2.5, 0)

                            TextLabel.Parent = BillboardGui
                            TextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                            TextLabel.BackgroundTransparency = 1.000
                            TextLabel.Size = UDim2.new(0, 200, 0, 50)
                            TextLabel.Font = Enum.Font.SourceSansBold
                            TextLabel.TextColor3 = Color3.fromRGB(7, 236, 240)
                            TextLabel.Text.Size = 35
                        end
                        local Dis = math.floor((game.Players.LocalPlayer.Character.HumanoidRootPart.Position - v.HumanoidRootPart.Position).Magnitude)
                        v.Seaesps.TextLabel.Text = v.Name.." - "..Dis.." Distance"
                    end
                end
            else
                for i,v in pairs (game:GetService("Workspace").SeaBeasts:GetChildren()) do
                    if v:FindFirstChild("Seaesps") then
                        v.Seaesps:Destroy()
                    end
                end
            end
        end)

spawn(function()
    while wait() do
        pcall(function()
            if NpcESP then
                for i,v in pairs(game:GetService("Workspace").NPCs:GetChildren()) do
                    if v:FindFirstChild('HumanoidRootPart') then
                        if not v:FindFirstChild("NpcEspes") then
                            local BillboardGui = Instance.new("BillboardGui")
                            local TextLabel = Instance.new("TextLabel")

                            BillboardGui.Parent = v
                            BillboardGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
                            BillboardGui.Active = true
                            BillboardGui.Name = "NpcEspes"
                            BillboardGui.AlwaysOnTop = true
                            BillboardGui.LightInfluence = 1.000
                            BillboardGui.Size = UDim2.new(0, 200, 0, 50)
                            BillboardGui.StudsOffset = Vector3.new(0, 2.5, 0)

                            TextLabel.Parent = BillboardGui
                            TextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                            TextLabel.BackgroundTransparency = 1.000
                            TextLabel.Size = UDim2.new(0, 200, 0, 50)
                            TextLabel.Font = Enum.Font.SourceSansBold
                            TextLabel.TextColor3 = Color3.fromRGB(7, 236, 240)
                            TextLabel.Text.Size = 35
                        end
                        local Dis = math.floor((game.Players.LocalPlayer.Character.HumanoidRootPart.Position - v.HumanoidRootPart.Position).Magnitude)
                        v.NpcEspes.TextLabel.Text = v.Name.." - "..Dis.." Distance"
                    end
                end
            else
                for i,v in pairs (game:GetService("Workspace").NPCs:GetChildren()) do
                    if v:FindFirstChild("NpcEspes") then
                        v.NpcEspes:Destroy()
                    end
                end
            end
        end)

local DamageModule = require(game:GetService("ReplicatedStorage").Effect.Container.Misc.Damage)
	local old = DamageModule.Run
	getgenv().FakeDamage = function(Damage)
    DamageModule.Run = function(...)
        args = {...}
        if Damage then
            args[1]['Value'] = tostring(Damage)
        end
        return old(unpack(args))
	function TienTiny(text)
		local Notification = require(game.ReplicatedStorage.Notification)
		local notification = Notification.new(text)
		notification.Duration = 4
		notification:Display()
	end
	local function tablefound(ta, object)
		for i,v in pairs(ta) do
			if v == object then
				return true
			end
		end
		return false

function isnil(thing)
    return (thing == nil)
end
local function round(n)
    return math.floor(tonumber(n) + 0.5)
Number = math.random(1, 1000000)

function UpdateIslandMirageESP() 
    for i,v in pairs(game:GetService("Workspace")["_WorldOrigin"].Locations:GetChildren()) do
        pcall(function()
            if MirageIslandESP then 
                if v.Name == "Mirage Island" then
                    if not v:FindFirstChild('NameEsp') then
                        local bill = Instance.new('BillboardGui',v)
                        bill.Name = 'NameEsp'
                        bill.ExtentsOffset = Vector3.new(0, 1, 0)
                        bill.Size = UDim2.new(1,200,1,30)
                        bill.Adornee = v
                        bill.AlwaysOnTop = true
                        local name = Instance.new('TextLabel',bill)
                        name.Font = "Code"
                        name.FontSize = "Size14"
                        name.TextWrapped = true
                        name.Size = UDim2.new(1,0,1,0)
                        name.TextYAlignment = 'Top'
                        name.BackgroundTransparency = 1
                        name.TextStrokeTransparency = 0.5
                        name.TextColor3 = Color3.fromRGB(80, 245, 245)
                    else
                        v['NameEsp'].TextLabel.Text = (v.Name ..'   \n'.. round((game:GetService('Players').LocalPlayer.Character.Head.Position - v.Position).Magnitude/3) ..' M')
                    end
                end
            else
                if v:FindFirstChild('NameEsp') then
                    v:FindFirstChild('NameEsp'):Destroy()
                end
            end
        end)
    end

function isnil(thing)
    return (thing == nil)
end
local function round(n)
    return math.floor(tonumber(n) + 0.5)
Number = math.random(1, 1000000)

function UpdateAfdESP() 
    for i,v in pairs(game:GetService("Workspace").NPCs:GetChildren()) do
        pcall(function()
            if AfdESP then 
                if v.Name == "Advanced Fruit Dealer" then
                    if not v:FindFirstChild('NameEsp') then
                        local bill = Instance.new('BillboardGui',v)
                        bill.Name = 'NameEsp'
                        bill.ExtentsOffset = Vector3.new(0, 1, 0)
                        bill.Size = UDim2.new(1,200,1,30)
                        bill.Adornee = v
                        bill.AlwaysOnTop = true
                        local name = Instance.new('TextLabel',bill)
                        name.Font = "Code"
                        name.FontSize = "Size14"
                        name.TextWrapped = true
                        name.Size = UDim2.new(1,0,1,0)
                        name.TextYAlignment = 'Top'
                        name.BackgroundTransparency = 1
                        name.TextStrokeTransparency = 0.5
                        name.TextColor3 = Color3.fromRGB(80, 245, 245)
                    else
                        v['NameEsp'].TextLabel.Text = (v.Name ..'   \n'.. round((game:GetService('Players').LocalPlayer.Character.Head.Position - v.Position).Magnitude/3) ..' M')
                    end
                end
            else
                if v:FindFirstChild('NameEsp') then
                    v:FindFirstChild('NameEsp'):Destroy()
                end
            end
        end)
    end

function UpdateAuraESP() 
    for i,v in pairs(game:GetService("Workspace").NPCs:GetChildren()) do
        pcall(function()
            if AuraESP then 
                if v.Name == "Master of Enhancement" then
                    if not v:FindFirstChild('NameEsp') then
                        local bill = Instance.new('BillboardGui',v)
                        bill.Name = 'NameEsp'
                        bill.ExtentsOffset = Vector3.new(0, 1, 0)
                        bill.Size = UDim2.new(1,200,1,30)
                        bill.Adornee = v
                        bill.AlwaysOnTop = true
                        local name = Instance.new('TextLabel',bill)
                        name.Font = "Code"
                        name.FontSize = "Size14"
                        name.TextWrapped = true
                        name.Size = UDim2.new(1,0,1,0)
                        name.TextYAlignment = 'Top'
                        name.BackgroundTransparency = 1
                        name.TextStrokeTransparency = 0.5
                        name.TextColor3 = Color3.fromRGB(80, 245, 245)
                    else
                        v['NameEsp'].TextLabel.Text = (v.Name ..'   \n'.. round((game:GetService('Players').LocalPlayer.Character.Head.Position - v.Position).Magnitude/3) ..' M')
                    end
                end
            else
                if v:FindFirstChild('NameEsp') then
                    v:FindFirstChild('NameEsp'):Destroy()
                end
            end
        end)
    end

function UpdateLSDESP() 
    for i,v in pairs(game:GetService("Workspace").NPCs:GetChildren()) do
        pcall(function()
            if LADESP then 
                if v.Name == "Legendary Sword Dealer" then
                    if not v:FindFirstChild('NameEsp') then
                        local bill = Instance.new('BillboardGui',v)
                        bill.Name = 'NameEsp'
                        bill.ExtentsOffset = Vector3.new(0, 1, 0)
                        bill.Size = UDim2.new(1,200,1,30)
                        bill.Adornee = v
                        bill.AlwaysOnTop = true
                        local name = Instance.new('TextLabel',bill)
                        name.Font = "Code"
                        name.FontSize = "Size14"
                        name.TextWrapped = true
                        name.Size = UDim2.new(1,0,1,0)
                        name.TextYAlignment = 'Top'
                        name.BackgroundTransparency = 1
                        name.TextStrokeTransparency = 0.5
                        name.TextColor3 = Color3.fromRGB(80, 245, 245)
                    else
                        v['NameEsp'].TextLabel.Text = (v.Name ..'   \n'.. round((game:GetService('Players').LocalPlayer.Character.Head.Position - v.Position).Magnitude/3) ..' M')
                    end
                end
            else
                if v:FindFirstChild('NameEsp') then
                    v:FindFirstChild('NameEsp'):Destroy()
                end
            end
        end)
    end

function UpdateGeaESP() 
    for i,v in pairs(game:GetService("Workspace").Map.MysticIsland:GetChildren()) do 
        pcall(function()
            if GearESP then 
                if v.Name == "MeshPart" then
                    if not v:FindFirstChild('NameEsp') then
                        local bill = Instance.new('BillboardGui',v)
                        bill.Name = 'NameEsp'
                        bill.ExtentsOffset = Vector3.new(0, 1, 0)
                        bill.Size = UDim2.new(1,200,1,30)
                        bill.Adornee = v
                        bill.AlwaysOnTop = true
                        local name = Instance.new('TextLabel',bill)
                        name.Font = "Code"
                        name.FontSize = "Size14"
                        name.TextWrapped = true
                        name.Size = UDim2.new(1,0,1,0)
                        name.TextYAlignment = 'Top'
                        name.BackgroundTransparency = 1
                        name.TextStrokeTransparency = 0.5
                        name.TextColor3 = Color3.fromRGB(80, 245, 245)
                    else
                        v['NameEsp'].TextLabel.Text = (v.Name ..'   \n'.. round((game:GetService('Players').LocalPlayer.Character.Head.Position - v.Position).Magnitude/3) ..' M')
                    end
                end
            else
                if v:FindFirstChild('NameEsp') then
                    v:FindFirstChild('NameEsp'):Destroy()
                end
            end
        end)
    end
    

    
    function InfAb()
        if InfAbility then
            if not game:GetService("Players").LocalPlayer.Character.HumanoidRootPart:FindFirstChild("Agility") then
                local inf = Instance.new("ParticleEmitter")
                inf.Acceleration = Vector3.new(0,0,0)
                inf.Archivable = true
                inf.Drag = 20
                inf.EmissionDirection = Enum.NormalId.Top
                inf.Enabled = true
                inf.Lifetime = NumberRange.new(0,0)
                inf.LightInfluence = 0
                inf.LockedToPart = true
                inf.Name = "Agility"
                inf.Rate = 500
                local numberKeypoints2 = {
                    NumberSequenceKeypoint.new(0, 0);
                    NumberSequenceKeypoint.new(1, 4); 
                }
                inf.Size = NumberSequence.new(numberKeypoints2)
                inf.RotSpeed = NumberRange.new(9999, 99999)
                inf.Rotation = NumberRange.new(0, 0)
                inf.Speed = NumberRange.new(30, 30)
                inf.SpreadAngle = Vector2.new(0,0,0,0)
                inf.Texture = ""
                inf.VelocityInheritance = 0
                inf.ZOffset = 2
                inf.Transparency = NumberSequence.new(0)
                inf.Color = ColorSequence.new(Color3.fromRGB(0,0,0),Color3.fromRGB(0,0,0))
                inf.Parent = game:GetService("Players").LocalPlayer.Character.HumanoidRootPart
            end
        else
            if game:GetService("Players").LocalPlayer.Character.HumanoidRootPart:FindFirstChild("Agility") then
                game:GetService("Players").LocalPlayer.Character.HumanoidRootPart:FindFirstChild("Agility"):Destroy()
            end
        end
    end
    
    local LocalPlayer = game:GetService'Players'.LocalPlayer
    local originalstam = LocalPlayer.Character.Energy.Value
    function infinitestam()
        LocalPlayer.Character.Energy.Changed:connect(function()
            if InfiniteEnergy then
                LocalPlayer.Character.Energy.Value = originalstam
            end 
        end)
    
    spawn(function()
        pcall(function()
            while wait(.1) do
                if InfiniteEnergy then
                    wait(0.1)
                    originalstam = LocalPlayer.Character.Energy.Value
                    infinitestam()
                end
            end
    
    function NoDodgeCool()
        if nododgecool then
            for i,v in next, getgc() do
                if game:GetService("Players").LocalPlayer.Character.Dodge then
                    if typeof(v) == "function" and getfenv(v).script == game:GetService("Players").LocalPlayer.Character.Dodge then
                        for i2,v2 in next, getupvalues(v) do
                            if tostring(v2) == "0.1" then
                            repeat wait(.1)
                                setupvalue(v,i2,0)
                            until not nododgecool
                            end
                        end
                    end
                end
            end
        end
    end
    
    function fly()
        local mouse=game:GetService("Players").LocalPlayer:GetMouse''
        localplayer=game:GetService("Players").LocalPlayer
        game:GetService("Players").LocalPlayer.Character:WaitForChild("HumanoidRootPart")
        local torso = game:GetService("Players").LocalPlayer.Character.HumanoidRootPart
        local speedSET=25
        local keys={a=false,d=false,w=false,s=false}
        local e1
        local e2
        local function start()
            local pos = Instance.new("BodyPosition",torso)
            local gyro = Instance.new("BodyGyro",torso)
            pos.Name="EPIXPOS"
            pos.maxForce = Vector3.new(math.huge, math.huge, math.huge)
            pos.position = torso.Position
            gyro.maxTorque = Vector3.new(9e9, 9e9, 9e9)
            gyro.CFrame = torso.CFrame
            repeat
                    wait()
                    localplayer.Character.Humanoid.PlatformStand=true
                    local new=gyro.CFrame - gyro.CFrame.p + pos.position
                    if not keys.w and not keys.s and not keys.a and not keys.d then
                    speed=1
                    end
                    if keys.w then
                    new = new + workspace.CurrentCamera.CoordinateFrame.lookVector * speed
                    speed=speed+speedSET
                    end
                    if keys.s then
                    new = new - workspace.CurrentCamera.CoordinateFrame.lookVector * speed
                    speed=speed+speedSET
                    end
                    if keys.d then
                    new = new * CFrame.new(speed,0,0)
                    speed=speed+speedSET
                    end
                    if keys.a then
                    new = new * CFrame.new(-speed,0,0)
                    speed=speed+speedSET
                    end
                    if speed>speedSET then
                    speed=speedSET
                    end
                    pos.position=new.p
                    if keys.w then
                    gyro.CFrame = workspace.CurrentCamera.CoordinateFrame*CFrame.Angles(-math.rad(speed*15),0,0)
                    elseif keys.s then
                    gyro.CFrame = workspace.CurrentCamera.CoordinateFrame*CFrame.Angles(math.rad(speed*15),0,0)
                    else
                    gyro.CFrame = workspace.CurrentCamera.CoordinateFrame
                    end
            until not Fly
            if gyro then 
                    gyro:Destroy() 
            end
            if pos then 
                    pos:Destroy() 
            end
            flying=false
            localplayer.Character.Humanoid.PlatformStand=false
            speed=0
        end
        e1=mouse.KeyDown:connect(function(key)
            if not torso or not torso.Parent then 
                    flying=false e1:disconnect() e2:disconnect() return 
            end
            if key=="w" then
                keys.w=true
            elseif key=="s" then
                keys.s=true
            elseif key=="a" then
                keys.a=true
            elseif key=="d" then
                keys.d=true
            end
        e2=mouse.KeyUp:connect(function(key)
            if key=="w" then
                keys.w=false
            elseif key=="s" then
                keys.s=false
            elseif key=="a" then
                keys.a=false
            elseif key=="d" then
                keys.d=false
            end
        start()
    
    function Click()
        game:GetService'VirtualUser':CaptureController()
        game:GetService'VirtualUser':Button1Down(Vector2.new(1280, 672))
    end
    
    function AutoHaki()
        if not game:GetService("Players").LocalPlayer.Character:FindFirstChild("HasBuso") then
            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Buso")
        end
    end
    
    function UnEquipWeapon(Weapon)
        if game.Players.LocalPlayer.Character:FindFirstChild(Weapon) then
            _G.NotAutoEquip = true
            wait(.5)
            game.Players.LocalPlayer.Character:FindFirstChild(Weapon).Parent = game.Players.LocalPlayer.Backpack
            wait(.1)
            _G.NotAutoEquip = false
        end
    end
    
    function EquipWeapon(ToolSe)
        if not _G.NotAutoEquip then
            if game.Players.LocalPlayer.Backpack:FindFirstChild(ToolSe) then
                Tool = game.Players.LocalPlayer.Backpack:FindFirstChild(ToolSe)
                wait(.1)
                game.Players.LocalPlayer.Character.Humanoid:EquipTool(Tool)
            end
        end
    end
   
    
    function GetDistance(target)
        return math.floor((target.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude)
    end
    
    function BTP(p)
    	pcall(function()
	    	if (p.Position-game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude >= 1500 and not Auto_Raid and game.Players.LocalPlayer.Character.Humanoid.Health > 0 then
				repeat wait()
					game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = p
					wait(.05)
					game.Players.LocalPlayer.Character.Head:Destroy()
					game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = p
				until (p.Position-game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude < 1500 and game.Players.LocalPlayer.Character.Humanoid.Health > 0
			end
		end)

function TelePPlayer(P)
	game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = P
end
    

function TP1(Pos)
        Distance = (Pos.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude
        if game.Players.LocalPlayer.Character.Humanoid.Sit == true then game.Players.LocalPlayer.Character.Humanoid.Sit = false end
        pcall(function() tween = game:GetService("TweenService"):Create(game.Players.LocalPlayer.Character.HumanoidRootPart,TweenInfo.new(Distance/210, Enum.EasingStyle.Linear),{CFrame = Pos}) end)
        tween:Play()
        if Distance <= 250 then
            tween:Cancel()
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = Pos
        end
        if _G.StopTween == true then
            tween:Cancel()
            _G.Clip = false
        end
    end
    
    function TP(Pos)
        Distance = (Pos.Position - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude
        if Distance < 250 then
            Speed = 600
        elseif Distance >= 1000 then
            Speed = 200
        end
        game:GetService("TweenService"):Create(
            game:GetService("Players").LocalPlayer.Character.HumanoidRootPart,
            TweenInfo.new(Distance/Speed, Enum.EasingStyle.Linear),
            {CFrame = Pos}
        ):Play()
        _G.Clip = true
        wait(Distance/Speed)
        _G.Clip = false
    end

    function topos(Pos)
        Distance = (Pos.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude
        if game.Players.LocalPlayer.Character.Humanoid.Sit == true then game.Players.LocalPlayer.Character.Humanoid.Sit = false end
        pcall(function() tween = game:GetService("TweenService"):Create(game.Players.LocalPlayer.Character.HumanoidRootPart,TweenInfo.new(Distance/210, Enum.EasingStyle.Linear),{CFrame = Pos}) end)
        tween:Play()
        if Distance <= 250 then
            tween:Cancel()
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = Pos
        end
        if _G.StopTween == true then
            tween:Cancel()
            _G.Clip = false
        end
    end
    
    
--Tween Boats 
function TPB(CFgo)
	local tween_s = game:service"TweenService"
	local info = TweenInfo.new((game:GetService("Workspace").Boats.PirateBrigade.VehicleSeat.CFrame.Position - CFgo.Position).Magnitude/300, Enum.EasingStyle.Linear)
	tween = tween_s:Create(game:GetService("Workspace").Boats.PirateBrigade.VehicleSeat, info, {CFrame = CFgo})
	tween:Play()

	local tweenfunc = {}

	function tweenfunc:Stop()
		tween:Cancel()
	end

	return tweenfunc
end

function TPP(CFgo)
	if game.Players.LocalPlayer.Character:WaitForChild("Humanoid").Health <= 0 or not game:GetService("Players").LocalPlayer.Character:WaitForChild("Humanoid") then tween:Cancel() repeat wait() until game:GetService("Players").LocalPlayer.Character:WaitForChild("Humanoid") and game:GetService("Players").LocalPlayer.Character:WaitForChild("Humanoid").Health > 0 wait(7) return end
	local tween_s = game:service"TweenService"
	local info = TweenInfo.new((game:GetService("Players")["LocalPlayer"].Character.HumanoidRootPart.Position - CFgo.Position).Magnitude/325, Enum.EasingStyle.Linear)
	tween = tween_s:Create(game.Players.LocalPlayer.Character["HumanoidRootPart"], info, {CFrame = CFgo})
	tween:Play()

	local tweenfunc = {}

	function tweenfunc:Stop()
		tween:Cancel()
	end

	return tweenfunc
end

getgenv().ToTargets = function(p)
    task.spawn(function()
        pcall(function()
            if game:GetService("Players").LocalPlayer:DistanceFromCharacter(p.Position) <= 250 then 
                game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = p
            elseif not game.Players.LocalPlayer.Character:FindFirstChild("Root")then 
                local K = Instance.new("Part",game.Players.LocalPlayer.Character)
                K.Size = Vector3.new(1,0.5,1)
                K.Name = "Root"
                K.Anchored = true
                K.Transparency = 1
                K.CanCollide = false
                K.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame * CFrame.new(0,20,0)
            end
            local U = (game.Players.LocalPlayer.Character.HumanoidRootPart.Position-p.Position).Magnitude
            local z = game:service("TweenService")
            local B = TweenInfo.new((p.Position-game.Players.LocalPlayer.Character.Root.Position).Magnitude/300,Enum.EasingStyle.Linear)
            local S,g = pcall(function()
            local q = z:Create(game.Players.LocalPlayer.Character.Root,B,{CFrame = p})
            q:Play()
        end)
        if not S then 
            return g
        end
        game.Players.LocalPlayer.Character.Root.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
            if S and game.Players.LocalPlayer.Character:FindFirstChild("Root") then 
                pcall(function()
                    if (game.Players.LocalPlayer.Character.HumanoidRootPart.Position-p.Position).Magnitude >= 20 then 
                        spawn(function()
                            pcall(function()
                                if (game.Players.LocalPlayer.Character.Root.Position-game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 150 then 
                                    game.Players.LocalPlayer.Character.Root.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
                                else 
                                    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame=game.Players.LocalPlayer.Character.Root.CFrame
                                end
                            end)
                        end)
                    elseif (game.Players.LocalPlayer.Character.HumanoidRootPart.Position-p.Position).Magnitude >= 10 and(game.Players.LocalPlayer.Character.HumanoidRootPart.Position-p.Position).Magnitude < 20 then 
                        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = p
                    elseif (game.Players.LocalPlayer.Character.HumanoidRootPart.Position-p.Position).Magnitude < 10 then 
                        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = p
                    end
                end)
    
Type = 1
spawn(function()
    while wait(.1) do
		if Type == 1 then
			Pos = CFrame.new(0,PosY,-30)
		elseif Type == 2 then
			Pos = CFrame.new(30,PosY,0)
		elseif Type == 3 then
			Pos = CFrame.new(0,PosY,30)	
		elseif Type == 4 then
			Pos = CFrame.new(-30,PosY,0)
        end
        end

spawn(function()
    while wait(.1) do
        Type = 1
        wait(0.5)
        Type = 2
        wait(0.5)
        Type = 3
        wait(0.5)
        Type = 4
        wait(0.5)
        Type = 5
        wait(0.5)
    end
    
    spawn(function()
    game:GetService("RunService").Heartbeat:Connect(function()
        if _G.AutoAdvanceDungeon or _G.AutoDoughtBoss or _G.Auto_DungeonMobAura or _G.AutoFarmChest or _G.AutoFactory or _G.AutoFarmBossHallow or _G.AutoFarmSwanGlasses or _G.AutoLongSword or _G.AutoBlackSpikeycoat or _G.AutoElectricClaw or _G.AutoFarmGunMastery or _G.AutoHolyTorch or _G.AutoLawRaid or _G.Boss or _G.AutoTwinHooks or _G.AutoOpenSwanDoor or _G.AutoDragon_Trident or _G.AutoSaber or _G.NOCLIP or _G.AutoFarmFruitMastery or _G.AutoFarmGunMastery or _G.TeleportIsland or _G.Auto_EvoRace or _G.AutoFarmAllMsBypassType or _G.AutoObservationv2 or _G.AutoMusketeerHat or _G.AutoEctoplasm or _G.AutoRengoku or _G.Auto_Rainbow_Haki or _G.AutoObservation or _G.AutoDarkDagger or _G.Safe_Mode or _G.MasteryFruit or _G.AutoBudySword or _G.AutoOderSword or _G.AutoBounty or _G.AutoAllBoss or _G.Auto_Bounty or _G.AutoSharkman or _G.Auto_Mastery_Fruit or _G.Auto_Mastery_Gun or _G.Auto_Dungeon or _G.Auto_Cavender or _G.Auto_Pole or _G.Auto_Kill_Ply or _G.Auto_Factory or _G.AutoSecondSea or _G.TpPlayer or _G.AutoBartilo or _G.Auto_DarkBoss or _G.GrabChest or _G.AutoFarmBounty or _G.Holy_Torch or _G.AutoFarm or _G.Clip or _G.AutoElitehunter or _G.AutoThirdSea or _G.Auto_Bone or _G.Autoheart or _G.Autodoughking or _G.AutoFarmMaterial or _G.AutoNevaSoulGuitar or _G.Auto_Dragon_Trident or _G.Autotushita or _G.d or _G.Autowaden or _G.Autogay or _G.Autopole or _G.Autosaw or _G.AutoObservationHakiV2 or _G.AutoFarmNearest or AutoFarmChest or _G.AutoCarvender or _G.AutoTwinHook or AutoMobAura or _G.Tweenfruit or _G.AutoKai or _G.TeleportNPC or _G.Leather or _G.Auto_Wing or _G.Umm or _G.Makori_gay or Radioactive or Fish or Gunpowder or Dragon_Scale or Cocoafarm or Scrap or MiniHee or _G.AutoFarmSeabaest or _G.CDK or _G.AutoFarmMob or _G.AutoMysticIsland or _G.AutoFarmDungeon or _G.AutoRaidPirate or _G.AutoQuestRace or _G.TweenMGear or getgenv().AutoFarm or _G.AutoPlayerHunter or _G.AutoFactory or Grab_Chest or _G.Namfon or _G.AutoSwordMastery or _G.AutoSeaBest or _G.AutoKillTial or _G.Auto_Saber or _G.Position_Spawn or _G.DefendVolcano or _G.KillGolem or _G.TpPrehistoric or _G.TpSpy or _G.Farmfast or _G.AutoRace or _G.RaidPirate or Open_Color_Haki then
            if not game:GetService("Workspace"):FindFirstChild("LOL") then
                local LOL = Instance.new("Part")
                LOL.Name = "LOL"
                LOL.Parent = game.Workspace
                LOL.Anchored = true
                LOL.Transparency = 1
                LOL.Size = Vector3.new(30,-0.5,30)
            elseif game:GetService("Workspace"):FindFirstChild("LOL") then
                game.Workspace["LOL"].CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame * CFrame.new(0, -3.6, 0)
            end
        else
            if game:GetService("Workspace"):FindFirstChild("LOL") then
                game:GetService("Workspace"):FindFirstChild("LOL"):Destroy()
            end
        end

    spawn(function()
        pcall(function()
            while wait() do
                if _G.AutoAdvanceDungeon or _G.AutoDoughtBoss or _G.Auto_DungeonMobAura or _G.AutoFarmChest or _G.AutoFactory or _G.AutoFarmBossHallow or _G.AutoFarmSwanGlasses or _G.AutoLongSword or _G.AutoBlackSpikeycoat or _G.AutoElectricClaw or _G.AutoFarmGunMastery or _G.AutoHolyTorch or _G.AutoLawRaid or _G.Boss or _G.AutoTwinHooks or _G.AutoOpenSwanDoor or _G.AutoDragon_Trident or _G.AutoSaber or _G.AutoFarmFruitMastery or _G.AutoFarmGunMastery or _G.TeleportIsland or _G.Auto_EvoRace or _G.AutoFarmAllMsBypassType or _G.AutoObservationv2 or _G.AutoMusketeerHat or _G.AutoEctoplasm or _G.AutoRengoku or _G.Auto_Rainbow_Haki or _G.AutoObservation or _G.AutoDarkDagger or _G.Safe_Mode or _G.MasteryFruit or _G.AutoBudySword or _G.AutoOderSword or _G.AutoBounty or _G.AutoAllBoss or _G.Auto_Bounty or _G.AutoSharkman or _G.Auto_Mastery_Fruit or _G.Auto_Mastery_Gun or _G.Auto_Dungeon or _G.Auto_Cavender or _G.Auto_Pole or _G.Auto_Kill_Ply or _G.Auto_Factory or _G.AutoSecondSea or _G.TpPlayer or _G.AutoBartilo or _G.Auto_DarkBoss or _G.GrabChest or _G.AutoFarmBounty or _G.Holy_Torch or _G.AutoFarm or _G.Clip or FarmBoss or _G.AutoElitehunter or _G.AutoThirdSea or _G.Auto_Bone or _G.Autoheart or _G.Autodoughking or _G.AutoFarmMaterial or _G.AutoNevaSoulGuitar or _G.Auto_Dragon_Trident or _G.Autotushita or _G.d or _G.Autowaden or _G.Autogay or _G.Autopole or _G.Autosaw or _G.AutoObservationHakiV2 or _G.AutoFarmNearest or AutoFarmChest or _G.AutoCarvender or _G.AutoTwinHook or AutoMobAura or _G.Tweenfruit or _G.TeleportNPC or _G.Leather or _G.Auto_Wing or _G.Umm or _G.Makori_gay or Radioactive or Fish or Gunpowder or Dragon_Scale or Cocoafarm or Scrap or MiniHee or _G.AutoFarmSeabaest or _G.CDK or _G.AutoFarmMob or _G.AutoMysticIsland or _G.AutoFarmDungeon or _G.AutoRaidPirate or _G.AutoQuestRace or _G.TweenMGear or getgenv().AutoFarm or _G.AutoPlayerHunter or _G.AutoFactory or Grab_Chest or _G.Namfon or _G.AutoSwordMastery or _G.Auto_Seabest or _G.AutoSeaBest or _G.AutoKillTial or _G.Auto_Saber or _G.Position_Spawn or _G.Farmfast or _G.AutoRace or _G.RaidPirate or Open_Color_Haki or _G.AutoTerrorshark or FarmShark or _G.farmpiranya or _G.Fish_Crew_Member or _G.StartSea or _G.Auto_Kill_Leviathan or _G.DefendVolcano or _G.KillGolem or _G.TpPrehistoric or _G.TpSpy or _G.bjirFishBoat or _G.KillGhostShip or _G.AutoFrozenDimension or _G.AutoFKitsune == true then
                    if not game:GetService("Players").LocalPlayer.Character.HumanoidRootPart:FindFirstChild("BodyClip") then
                        local Noclip = Instance.new("BodyVelocity")
                        Noclip.Name = "BodyClip"
                        Noclip.Parent = game:GetService("Players").LocalPlayer.Character.HumanoidRootPart
                        Noclip.MaxForce = Vector3.new(100000,100000,100000)
                        Noclip.Velocity = Vector3.new(0,0,0)
                    end
                end
            end
    
    spawn(function()
        pcall(function()
            game:GetService("RunService").Stepped:Connect(function()
                if _G.AutoAdvanceDungeon or _G.AutoDoughtBoss or _G.Auto_DungeonMobAura or _G.AutoFarmChest or _G.AutoFactory or _G.AutoFarmBossHallow or _G.AutoFarmSwanGlasses or _G.AutoLongSword or _G.AutoBlackSpikeycoat or _G.AutoElectricClaw or _G.AutoFarmGunMastery or _G.AutoHolyTorch or _G.AutoLawRaid or _G.Boss or _G.AutoTwinHooks or _G.AutoOpenSwanDoor or _G.AutoDragon_Trident or _G.AutoSaber or _G.NOCLIP or _G.AutoFarmFruitMastery or _G.AutoFarmGunMastery or _G.TeleportIsland or _G.Auto_EvoRace or _G.AutoFarmAllMsBypassType or _G.AutoObservationv2 or _G.AutoMusketeerHat or _G.AutoEctoplasm or _G.AutoRengoku or _G.Auto_Rainbow_Haki or _G.AutoObservation or _G.AutoDarkDagger or _G.Safe_Mode or _G.MasteryFruit or _G.AutoBudySword or _G.AutoOderSword or _G.AutoBounty or _G.AutoAllBoss or _G.Auto_Bounty or _G.AutoSharkman or _G.Auto_Mastery_Fruit or _G.Auto_Mastery_Gun or _G.Auto_Dungeon or _G.Auto_Cavender or _G.Auto_Pole or _G.Auto_Kill_Ply or _G.Auto_Factory or _G.AutoSecondSea or _G.TpPlayer or _G.AutoBartilo or _G.Auto_DarkBoss or _G.GrabChest or _G.AutoFarmBounty or _G.Holy_Torch or _G.AutoFarm or _G.Clip or _G.AutoElitehunter or _G.AutoThirdSea or _G.Auto_Bone or _G.Autoheart or _G.Autodoughking or _G.AutoFarmMaterial or _G.AutoNevaSoulGuitar or _G.Auto_Dragon_Trident or _G.Autotushita or _G.Autowaden or _G.Autogay or _G.Autopole or _G.Autosaw or _G.AutoObservationHakiV2 or _G.AutoFarmNearest or _G.AutoCarvender or _G.AutoTwinHook or AutoMobAura or _G.Tweenfruit or _G.TeleportNPC or _G.AutoKai or _G.Leather or _G.Auto_Wing or _G.Umm or _G.Makori_gay or Radioactive or Fish or Gunpowder or Dragon_Scale or Cocoafarm or Scrap or MiniHee or _G.AutoFarmSeabaest or _G.CDK or _G.AutoFarmMob or _G.AutoMysticIsland or _G.AutoFarmDungeon or _G.AutoRaidPirate or _G.AutoQuestRace or _G.TweenMGear or getgenv().AutoFarm or _G.AutoPlayerHunter or _G.AutoFactory or _G.Namfon or _G.AutoSwordMastery or _G.Auto_Seabest or _G.AutoSeaBest or _G.AutoKillTial or _G.Auto_Saber or _G.Position_Spawn or _G.TPB or _G.Farmfast or _G.AutoRace or _G.RaidPirate or Open_Color_Haki or _G.AutoTerrorshark or FarmShark or _G.farmpiranya or _G.Fish_Crew_Member or _G.StartSea or _G.Auto_Kill_Leviathan or _G.DefendVolcano or _G.KillGolem or _G.TpPrehistoric or _G.TpSpy or _G.AutoFrozenDimension or _G.AutoFKitsune == true then
                    for _, v in pairs(game:GetService("Players").LocalPlayer.Character:GetDescendants()) do
                        if v:IsA("BasePart") then
                            v.CanCollide = false    
                        end
                    end
                end
    
    spawn(function()
        pcall(function()
            while wait() do
                if _G.AutoAdvanceDungeon or _G.AutoDoughtBoss or _G.Auto_DungeonMobAura or _G.AutoFarmChest or _G.AutoFactory or _G.AutoFarmBossHallow or _G.AutoFarmSwanGlasses or _G.AutoLongSword or _G.AutoBlackSpikeycoat or _G.AutoElectricClaw or _G.AutoFarmGunMastery or _G.AutoHolyTorch or _G.AutoLawRaid or _G.Boss or _G.AutoTwinHooks or _G.AutoOpenSwanDoor or _G.AutoDragon_Trident or _G.AutoSaber or _G.AutoFarmFruitMastery or _G.AutoFarmGunMastery or _G.TeleportIsland or _G.Auto_EvoRace or _G.AutoFarmAllMsBypassType or _G.AutoObservationv2 or _G.AutoMusketeerHat or _G.AutoEctoplasm or _G.AutoRengoku or _G.Auto_Rainbow_Haki or _G.AutoObservation or _G.AutoDarkDagger or _G.Safe_Mode or _G.MasteryFruit or _G.AutoBudySword or _G.AutoOderSword or _G.AutoBounty or _G.AutoAllBoss or _G.Auto_Bounty or _G.AutoSharkman or _G.Auto_Mastery_Fruit or _G.Auto_Mastery_Gun or _G.Auto_Dungeon or _G.Auto_Cavender or _G.Auto_Pole or _G.Auto_Kill_Ply or _G.Auto_Factory or _G.AutoSecondSea or _G.TpPlayer or _G.AutoBartilo or _G.Auto_DarkBoss or _G.GrabChest or _G.AutoFarmBounty or _G.Holy_Torch or _G.AutoFarm or _G.Clip or FarmBoss or _G.AutoElitehunter or _G.AutoThirdSea or _G.Auto_Bone or _G.Autoheart or _G.Autodoughking or _G.AutoFarmMaterial or _G.AutoNevaSoulGuitar or _G.Auto_Dragon_Trident or _G.Autotushita or _G.d or _G.Autowaden or _G.Autogay or _G.Autopole or _G.Autosaw or _G.AutoObservationHakiV2 or _G.AutoFarmNearest or AutoFarmChest or _G.AutoCarvender or _G.AutoTwinHook or AutoMobAura or _G.Tweenfruit or _G.TeleportNPC or _G.Leather or _G.Auto_Wing or _G.Umm or _G.Makori_gay or Radioactive or Fish or Gunpowder or Dragon_Scale or Cocoafarm or Scrap or MiniHee or _G.AutoFarmSeabaest or _G.CDK or _G.AutoFarmMob or _G.AutoMysticIsland or _G.AutoFarmDungeon or _G.AutoRaidPirate or _G.AutoQuestRace or _G.TweenMGear or getgenv().AutoFarm or _G.AutoPlayerHunter or _G.AutoFactory or Grab_Chest or _G.Namfon or _G.AutoSwordMastery or _G.Auto_Seabest or _G.AutoSeaBest or _G.AutoKillTial or _G.Auto_Saber or _G.Position_Spawn or _G.Farmfast or _G.AutoRace or _G.RaidPirate or _G.AutoTushitaSword or Open_Color_Haki or _G.AutoTerrorshark or FarmShark or _G.farmpiranya or _G.Fish_Crew_Member or _G.StartSea or _G.Auto_Kill_Leviathan or _G.DefendVolcano or _G.KillGolem or _G.TpPrehistoric or _G.TpSpy or _G.bjirFishBoat or _G.KillGhostShip == true then
                    if not game.Players.LocalPlayer.Character:FindFirstChild("Highlight") then
	            		local Highlight = Instance.new("Highlight")
                    	Highlight.FillColor = Color3.new(144, 238, 144)
	            		Highlight.OutlineColor = Color3.new(144,238,144)
            			Highlight.Parent = game.Players.LocalPlayer.Character
                    end
                end
            end
    
    function InstancePos(pos)
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = pos
    end
    
    function TP3(pos)
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = pos
    end
    
    spawn(function()
        while wait() do
            if _G.AutoDoughtBoss or _G.Auto_DungeonMobAura or _G.AutoFarmChest or _G.AutoFarmBossHallow or _G.AutoFactory or _G.AutoFarmSwanGlasses or _G.AutoLongSword or _G.AutoBlackSpikeycoat or _G.AutoElectricClaw or _G.AutoFarmGunMastery or _G.AutoHolyTorch or _G.AutoLawRaid or _G.Boss or _G.AutoTwinHooks or _G.AutoOpenSwanDoor or _G.AutoDragon_Trident or _G.AutoSaber or _G.NOCLIP or _G.AutoFarmFruitMastery or _G.AutoFarmGunMastery or _G.TeleportIsland or _G.Auto_EvoRace or _G.AutoFarmAllMsBypassType or _G.AutoObservationv2 or _G.AutoMusketeerHat or _G.AutoEctoplasm or _G.AutoRengoku or _G.Auto_Rainbow_Haki or _G.AutoObservation or _G.AutoDarkDagger or _G.Safe_Mode or _G.MasteryFruit or _G.AutoBudySword or _G.AutoOderSword or _G.AutoAllBoss or _G.Auto_Bounty or _G.AutoSharkman or _G.Auto_Mastery_Fruit or _G.Auto_Mastery_Gun or _G.Auto_Dungeon or _G.Auto_Cavender or _G.Auto_Pole or _G.Auto_Kill_Ply or _G.Auto_Factory or _G.AutoSecondSea or _G.TpPlayer or _G.AutoBartilo or _G.Auto_DarkBoss or _G.AutoFarm or _G.Clip or _G.AutoElitehunter or _G.AutoThirdSea or _G.Auto_Bone or _G.Autoheart or _G.Autodoughking or _G.d or _G.Autowaden or _G.Autogay or _G.AutoObservationHakiV2 or _G.AutoFarmMaterial or _G.AutoFarmNearest or _G.AutoCarvender or _G.AutoTwinHook or AutoMobAura or _G.Leather or _G.Auto_Wing or _G.Umm or _G.Makori_gay or Radioactive or Fish or Gunpowder or Dragon_Scale or Cocoafarm or Scrap or MiniHee or _G.AutoFarmSeabaest or _G.CDK or _G.AutoFarmMob or _G.AutoRaidPirate or getgenv().AutoFarm or _G.AutoPlayerHunter or _G.AutoFactory or _G.AttackDummy or _G.AutoSwordMastery or _G.Auto_Seabest or _G.AutoSeaBest or _G.AutoKillTial or _G.Auto_Saber or _G.Farmfast or _G.RaidPirate or _G.AutoTerrorshark or FarmShark or _G.farmpiranya or _G.Fish_Crew_Member or _G.bjirFishBoat or _G.KillGhostShip == true then
                pcall(function()
                    game:GetService("ReplicatedStorage").Remotes.CommE:FireServer("Ken",true)
                end)
            end    
    
    spawn(function()
    game:GetService("RunService").RenderStepped:Connect(function()
        if _G.AutoClick or Fastattack then
             pcall(function()
                game:GetService'VirtualUser':CaptureController()
			    game:GetService'VirtualUser':Button1Down(Vector2.new(0,1,0,1))
            end)

    function StopTween(target)
        if not target then
            _G.StopTween = true
            wait()
            topos(game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame)
            wait()
            if game:GetService("Players").LocalPlayer.Character.HumanoidRootPart:FindFirstChild("BodyClip") then
                game:GetService("Players").LocalPlayer.Character.HumanoidRootPart:FindFirstChild("BodyClip"):Destroy()
            end
            _G.StopTween = false
            _G.Clip = false
        end
        if game.Players.LocalPlayer.Character:FindFirstChild('Highlight') then
    		game.Players.LocalPlayer.Character:FindFirstChild('Highlight'):Destroy()
        end
    end
    
    spawn(function()
        pcall(function()
            while wait() do
                for i,v in pairs(game:GetService("Players").LocalPlayer.Backpack:GetChildren()) do  
                    if v:IsA("Tool") then
                        if v:FindFirstChild("RemoteFunctionShoot") then 
                            SelectWeaponGun = v.Name
                        end
                    end
                end
            end
    
    game:GetService("Players").LocalPlayer.Idled:connect(function()
        game:GetService("VirtualUser"):Button2Down(Vector2.new(0,0),workspace.CurrentCamera.CFrame)
        wait(1)
        game:GetService("VirtualUser"):Button2Up(Vector2.new(0,0),workspace.CurrentCamera.CFrame)
    
local LIB = bm:Window(
    "Blue X Hub", 
    "Blox Fruits",
    Enum.KeyCode.F1 
)
Config = {
    Logo = "rbxassetid://103544969566862",
    TabColor = Color3.fromRGB(15, 15, 15),
    StrokeColor = Color3.fromRGB(23, 23, 23),
    Other = Color3.fromRGB(2, 182, 255),
    SizeLib = UDim2.new(0, 550, 0, 330)
}
local S = LIB:Tab("Setting Farm", "Cài Đặt", "rbxassetid://11446835336")
local M = LIB:Tab("Auto Farm", "Cày", "rbxassetid://11446835336")

S:Line()
S:Label("Setting Farm")
local Weaponlist = {"Melee", "Sword", "Fruit", "Gun"}
S:Dropdown("Select Weapon Farm", Weaponlist, function(value) 
    _G.SelectWeapon = value

task.spawn(function()
    while wait() do
        pcall(function()
            if _G.SelectWeapon == "Melee" then
                for i, v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
                    if v.ToolTip == "Melee" then
                        if game.Players.LocalPlayer.Backpack:FindFirstChild(tostring(v.Name)) then
                            _G.SelectWeapon = v.Name
                        end
                    end
                end
            elseif _G.SelectWeapon == "Sword" then
                for i, v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
                    if v.ToolTip == "Sword" then
                        if game.Players.LocalPlayer.Backpack:FindFirstChild(tostring(v.Name)) then
                            _G.SelectWeapon = v.Name
                        end
                    end
                end
            elseif _G.SelectWeapon == "Gun" then
                for i, v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
                    if v.ToolTip == "Gun" then
                        if game.Players.LocalPlayer.Backpack:FindFirstChild(tostring(v.Name)) then
                            _G.SelectWeapon = v.Name
                        end
                    end
                end
            elseif _G.SelectWeapon == "Fruit" then
                for i, v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
                    if v.ToolTip == "Blox Fruit" then
                        if game.Players.LocalPlayer.Backpack:FindFirstChild(tostring(v.Name)) then
                            _G.SelectWeapon = v.Name
                        end
                    end
                end
            end
        end)

S:Toggle("Fast Attack", "Đánh Nhanh", "rbxassetid://110698502441921", true, function(value) 
    _G.FastAttack = value

local player = game.Players.LocalPlayer

function FindEnemiesInRange(targets, enemies)
    local playerPos = (player.Character or player.CharacterAdded:Wait()):GetPivot().Position
    local primaryTarget = nil

    for _, enemy in ipairs(enemies) do
        if not enemy:GetAttribute("IsBoat") and enemy:FindFirstChildOfClass("Humanoid") and enemy.Humanoid.Health > 0 then
            local head = enemy:FindFirstChild("Head")
            if head and (playerPos - head.Position).Magnitude <= 60 then
                if enemy ~= player.Character then
                    table.insert(targets, { enemy, head })
                    primaryTarget = head
                end
            end
        end
    end

    return primaryTarget
end

function GetEquippedTool()
    local character = player.Character
    if not character then return nil end
    for _, item in ipairs(character:GetChildren()) do
        if item:IsA("Tool") then
            return item
        end
    end
    return nil
end

function AttackNoCoolDown()
    local targets = {}
    local enemies = game:GetService("Workspace").Enemies:GetChildren()
    local primaryPart = FindEnemiesInRange(targets, enemies)

    if not primaryPart then return end

    local tool = GetEquippedTool()
    if not tool then return end

    pcall(function()
        local storage = game:GetService("ReplicatedStorage")
        local attackEvent = storage:WaitForChild("Modules"):WaitForChild("Net"):WaitForChild("RE/RegisterAttack")
        local hitEvent = storage:WaitForChild("Modules"):WaitForChild("Net"):WaitForChild("RE/RegisterHit")

        if #targets > 0 then
            attackEvent:FireServer(0.000000001)
            hitEvent:FireServer(primaryPart, targets)
        else
            task.wait(0.000000001)
        end
    end)
end

spawn(function()
    if _G.FastAttack then
        repeat
            task.wait()
            AttackNoCoolDown()
        until not _G.FastAttack
    end
end)

S:Toggle("Bring Mob", "Gom Quái", "rbxassetid://110698502441921", true, function(value) 
    _G.BringMonster = value
end)

spawn(
    function()
        while task.wait() do
            pcall(
                function()
                    if _G.BringMonster then
                        CheckQuest()

                        local ListMob = {
                            ["Factory Staff [Lv. 800]"] = true,
                            ["Monkey [Lv. 14]"] = true,
                            ["Dragon Crew Warrior [Lv. 1575]"] = true,
                            ["Dragon Crew Archer [Lv. 1600]"] = true
                        }

                        for _, v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                            if
                                _G.AutoFarm and StartMagnet and v.Name == Mon and v:FindFirstChild("Humanoid") and
                                    v:FindFirstChild("HumanoidRootPart") and
                                    v.Humanoid.Health > 0
                             then
                                local Range = ListMob[Mon] and 1000 or 800

                                if
                                    (v.HumanoidRootPart.Position -
                                        game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <=
                                        Range
                                 then
                                    v.HumanoidRootPart.Size = Vector3.new(50, 50, 50)
                                    v.HumanoidRootPart.CFrame = PosMon
                                    v.HumanoidRootPart.CanCollide = false
                                    v.Head.CanCollide = false

                                    if v.Humanoid:FindFirstChild("Animator") then
                                        v.Humanoid.Animator:Destroy()
                                    end

                                    sethiddenproperty(
                                        game:GetService("Players").LocalPlayer,
                                        "SimulationRadius",
                                        math.huge
                                    )
                                end
                            end
                        end
                    end
                end
            )
        end
    end
)

S:Toggle("Bypass TP", "Dịch Chuyển Nhanh", "rbxassetid://110698502441921", false, function(value) 
    BypassTP = value

S:Toggle("Auto Haki Buso", "Bật Haki Vũ Trang", "rbxassetid://110698502441921", true, function(value) 
    _G.AUTOHAKI = value

spawn(function()
    while wait(.1) do
        if _G.AUTOHAKI then 
            if not game.Players.LocalPlayer.Character:FindFirstChild("HasBuso") then
                local args = {
                    [1] = "Buso"
                }
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
            end
        end
    end

M:Line()
M:Label("Auto Farm")

M:Toggle("Farm Level", "Cày Cấp", "rbxassetid://110698502441921", false, function(value) 
    _G.AutoFarm = value
    StopTween(_G.AutoFarm)

spawn(function()
        while wait() do
            if _G.AutoFarm then
                pcall(function()
                    local QuestTitle = game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text
                    if not string.find(QuestTitle, NameMon) then
                        StartMagnet = false
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("AbandonQuest")
                    end
                    if game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == false then
                        StartMagnet = false
                        CheckQuest()
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StartQuest",NameQuest,LevelQuest)
                        if BypassTP then
                        if (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - CFrameMon.Position).Magnitude > 1500 then
						BTP(CFrameMon)
						elseif (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - CFrameMon.Position).Magnitude < 1500 then
						TP1(CFrameMon)
						end
					else
						TP1(CFrameMon)
					end
                    elseif game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == true then
                        CheckQuest()
                        if game:GetService("Workspace").Enemies:FindFirstChild(Mon) then
                            for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                                if v:FindFirstChild("HumanoidRootPart") and v:FindFirstChild("Humanoid") and v.Humanoid.Health > 0 then
                                    if v.Name == Mon then
                                        if string.find(game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, NameMon) then
                                            repeat task.wait()
                                                EquipWeapon(_G.SelectWeapon)
                                                AutoHaki()                                            
                                                PosMon = v.HumanoidRootPart.CFrame
                                                TP1(v.HumanoidRootPart.CFrame * Pos)
                                                v.HumanoidRootPart.CanCollide = false
                                                v.Humanoid.WalkSpeed = 0
                                                v.Head.CanCollide = false
                                                v.HumanoidRootPart.Size = Vector3.new(70,70,70)
                                                StartMagnet = true
                                                game:GetService'VirtualUser':CaptureController()
                                                game:GetService'VirtualUser':Button1Down(Vector2.new(1280, 672))
                                            until not _G.AutoFarm or v.Humanoid.Health <= 0 or not v.Parent or game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == false
                                        else
                                            StartMagnet = false
                                            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("AbandonQuest")
                                        end
                                    end
                                end
                            end
                        else
                            TP1(CFrameMon)
                            UnEquipWeapon(_G.SelectWeapon)
                            StartMagnet = false
                            if game:GetService("ReplicatedStorage"):FindFirstChild(Mon) then
                             TP1(game:GetService("ReplicatedStorage"):FindFirstChild(Mon).HumanoidRootPart.CFrame * CFrame.new(15,10,2))
                            end
                        end
                    end
                end)
            end
