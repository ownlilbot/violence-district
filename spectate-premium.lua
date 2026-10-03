-- ==============================================================================================================
--
--               FEATURE SPECTATOR DATABASE VIOLENCE DISTRICT BY XLILNYX OFFICIAL LEADER LEZARD
--                             API CHECK REALTIME DATABASE SERVER VIOLENCE DISTRICT
--
-- ==============================================================================================================

local Players = game:GetService("Players")
local TweenService = game:GetService("TweenService")
local UserInputService = game:GetService("UserInputService")

local LocalPlayer = Players.LocalPlayer
local PlayerGui = LocalPlayer:WaitForChild("PlayerGui")

local old = PlayerGui:FindFirstChild("VD_Spectator")

if old then
    old:Destroy()
end

-- ==============================================================================================================
-- GUI
-- ==============================================================================================================

local Gui = Instance.new("ScreenGui")
Gui.Name = "VD_Spectator"
Gui.ResetOnSpawn = false
Gui.IgnoreGuiInset = true
Gui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
Gui.Parent = PlayerGui

local function tween(object, duration, properties, style, direction)

    if not object or not object.Parent then
        return nil
    end

    local info = TweenInfo.new(
        duration,
        style or Enum.EasingStyle.Quad,
        direction or Enum.EasingDirection.Out
    )

    local t = TweenService:Create(object, info, properties)
    t:Play()

    return t
end

-- ==============================================================================================================
-- WELCOME
-- ==============================================================================================================

local WelcomeFinished = Instance.new("BindableEvent")

local Welcome = Instance.new("Frame")
Welcome.Name = "OfficialWelcome"
Welcome.Size = UDim2.new(0, 365, 0, 245)
Welcome.Position = UDim2.new(0.5, 0, 0, -280)
Welcome.AnchorPoint = Vector2.new(0.5, 0)
Welcome.BackgroundColor3 = Color3.fromRGB(12, 13, 18)
Welcome.BackgroundTransparency = 0.03
Welcome.BorderSizePixel = 0
Welcome.Visible = true
Welcome.ZIndex = 1000
Welcome.Parent = Gui

local WelcomeCorner = Instance.new("UICorner")
WelcomeCorner.CornerRadius = UDim.new(0, 15)
WelcomeCorner.Parent = Welcome

local Glow = Instance.new("Frame")
Glow.Name = "Glow"
Glow.Size = UDim2.new(1, 24, 1, 24)
Glow.Position = UDim2.new(0, -12, 0, -12)
Glow.BackgroundColor3 = Color3.fromRGB(65, 105, 190)
Glow.BackgroundTransparency = 0.96
Glow.BorderSizePixel = 0
Glow.ZIndex = 999
Glow.Parent = Welcome

local GlowCorner = Instance.new("UICorner")
GlowCorner.CornerRadius = UDim.new(0, 20)
GlowCorner.Parent = Glow

local WelcomeStroke = Instance.new("UIStroke")
WelcomeStroke.Color = Color3.fromRGB(80, 125, 215)
WelcomeStroke.Thickness = 1.4
WelcomeStroke.Transparency = 0.15
WelcomeStroke.Parent = Welcome

local Accent = Instance.new("Frame")
Accent.Size = UDim2.new(0, 0, 0, 3)
Accent.Position = UDim2.new(0.5, 0, 0, 0)
Accent.AnchorPoint = Vector2.new(0.5, 0)
Accent.BackgroundColor3 = Color3.fromRGB(85, 135, 235)
Accent.BorderSizePixel = 0
Accent.ZIndex = 1005
Accent.Parent = Welcome

local AccentCorner = Instance.new("UICorner")
AccentCorner.CornerRadius = UDim.new(1, 0)
AccentCorner.Parent = Accent

local Brand = Instance.new("TextLabel")
Brand.Size = UDim2.new(1, -30, 0, 22)
Brand.Position = UDim2.new(0, 15, 0, 18)
Brand.BackgroundTransparency = 1
Brand.Text = "XLILNYX OFFICIAL"
Brand.TextColor3 = Color3.fromRGB(135, 170, 235)
Brand.TextTransparency = 1
Brand.TextSize = 13
Brand.Font = Enum.Font.GothamBold
Brand.TextXAlignment = Enum.TextXAlignment.Center
Brand.ZIndex = 1005
Brand.Parent = Welcome

local WelcomeTitle = Instance.new("TextLabel")
WelcomeTitle.Size = UDim2.new(1, -30, 0, 30)
WelcomeTitle.Position = UDim2.new(0, 15, 0, 43)
WelcomeTitle.BackgroundTransparency = 1
WelcomeTitle.Text = "WELCOME TO MY SCRIPT"
WelcomeTitle.TextColor3 = Color3.fromRGB(245, 245, 248)
WelcomeTitle.TextTransparency = 1
WelcomeTitle.TextSize = 20
WelcomeTitle.Font = Enum.Font.GothamBold
WelcomeTitle.TextXAlignment = Enum.TextXAlignment.Center
WelcomeTitle.ZIndex = 1005
WelcomeTitle.Parent = Welcome

local Official = Instance.new("TextLabel")
Official.Size = UDim2.new(1, -30, 0, 18)
Official.Position = UDim2.new(0, 15, 0, 70)
Official.BackgroundTransparency = 1
Official.Text = "OFFICIAL SCRIPT SPECTATE DATABASE"
Official.TextColor3 = Color3.fromRGB(120, 125, 140)
Official.TextTransparency = 1
Official.TextSize = 10
Official.Font = Enum.Font.GothamMedium
Official.TextXAlignment = Enum.TextXAlignment.Center
Official.ZIndex = 1005
Official.Parent = Welcome

local Separator = Instance.new("Frame")
Separator.Size = UDim2.new(0, 0, 0, 1)
Separator.Position = UDim2.new(0.5, 0, 0, 95)
Separator.AnchorPoint = Vector2.new(0.5, 0)
Separator.BackgroundColor3 = Color3.fromRGB(55, 60, 72)
Separator.BackgroundTransparency = 0.1
Separator.BorderSizePixel = 0
Separator.ZIndex = 1005
Separator.Parent = Welcome

local InfoContainer = Instance.new("Frame")
InfoContainer.Size = UDim2.new(1, -42, 0, 68)
InfoContainer.Position = UDim2.new(0, 21, 0, 103)
InfoContainer.BackgroundTransparency = 1
InfoContainer.ZIndex = 1005
InfoContainer.Parent = Welcome

local function createInfoRow(y, label, value)

    local row = Instance.new("Frame")

    row.Name = label .. "Row"
    row.Size = UDim2.new(1, 0, 0, 21)
    row.Position = UDim2.new(0, 0, 0, y)
    row.BackgroundTransparency = 1
    row.BorderSizePixel = 0
    row.ZIndex = 1006
    row.Parent = InfoContainer

    local Label = Instance.new("TextLabel")

    Label.Name = "Label"
    Label.Size = UDim2.new(0, 72, 1, 0)
    Label.Position = UDim2.new(0, 0, 0, 0)
    Label.BackgroundTransparency = 1
    Label.Text = label
    Label.TextColor3 = Color3.fromRGB(190, 192, 202)
    Label.TextTransparency = 1
    Label.TextSize = 11
    Label.Font = Enum.Font.GothamMedium
    Label.TextXAlignment = Enum.TextXAlignment.Left
    Label.TextYAlignment = Enum.TextYAlignment.Center
    Label.ZIndex = 1007
    Label.Parent = row

    local Colon = Instance.new("TextLabel")

    Colon.Name = "Colon"
    Colon.Size = UDim2.new(0, 15, 1, 0)
    Colon.Position = UDim2.new(0, 72, 0, 0)
    Colon.BackgroundTransparency = 1
    Colon.Text = ":"
    Colon.TextColor3 = Color3.fromRGB(125, 128, 140)
    Colon.TextTransparency = 1
    Colon.TextSize = 11
    Colon.Font = Enum.Font.GothamMedium
    Colon.TextXAlignment = Enum.TextXAlignment.Center
    Colon.TextYAlignment = Enum.TextYAlignment.Center
    Colon.ZIndex = 1007
    Colon.Parent = row

    local Value = Instance.new("TextLabel")

    Value.Name = "Value"
    Value.Size = UDim2.new(1, -92, 1, 0)
    Value.Position = UDim2.new(0, 92, 0, 0)
    Value.BackgroundTransparency = 1
    Value.Text = value
    Value.TextColor3 = Color3.fromRGB(190, 192, 202)
    Value.TextTransparency = 1
    Value.TextSize = 11
    Value.Font = Enum.Font.GothamMedium
    Value.TextXAlignment = Enum.TextXAlignment.Left
    Value.TextYAlignment = Enum.TextYAlignment.Center
    Value.TextTruncate = Enum.TextTruncate.AtEnd
    Value.ZIndex = 1007
    Value.Parent = row

    return row
end

local function showInfoRow(row, duration)

    if not row or not row.Parent then
        return
    end

    for _, child in ipairs(row:GetChildren()) do

        if child:IsA("TextLabel") then

            tween(
                child,
                duration,
                {
                    TextTransparency = 0
                }
            )
        end
    end
end

local function hideInfoRow(row, duration)

    if not row then
        return
    end

    for _, child in ipairs(row:GetChildren()) do

        if child:IsA("TextLabel") then

            tween(
                child,
                duration,
                {
                    TextTransparency = 1
                }
            )
        end
    end
end

local OwnerRow = createInfoRow(
    0,
    "OWNER",
    "XLILNYX OFFICIAL"
)

local LeaderRow = createInfoRow(
    21,
    "LEADER",
    "LEZARD NEW ERA"
)

local FeatureRow = createInfoRow(
    42,
    "FEATURE",
    "SPECTATE DATABASE"
)

local Status = Instance.new("TextLabel")
Status.Size = UDim2.new(1, -42, 0, 17)
Status.Position = UDim2.new(0, 21, 0, 176)
Status.BackgroundTransparency = 1
Status.Text = "INITIALIZING SYSTEM..."
Status.TextColor3 = Color3.fromRGB(115, 155, 225)
Status.TextTransparency = 1
Status.TextSize = 9
Status.Font = Enum.Font.GothamMedium
Status.TextXAlignment = Enum.TextXAlignment.Left
Status.ZIndex = 1006
Status.Parent = Welcome

local Percent = Instance.new("TextLabel")
Percent.Size = UDim2.new(0, 45, 0, 17)
Percent.Position = UDim2.new(1, -66, 0, 176)
Percent.BackgroundTransparency = 1
Percent.Text = "0%"
Percent.TextColor3 = Color3.fromRGB(130, 160, 215)
Percent.TextTransparency = 1
Percent.TextSize = 9
Percent.Font = Enum.Font.GothamBold
Percent.TextXAlignment = Enum.TextXAlignment.Right
Percent.ZIndex = 1006
Percent.Parent = Welcome

local ProgressBG = Instance.new("Frame")
ProgressBG.Size = UDim2.new(1, -42, 0, 4)
ProgressBG.Position = UDim2.new(0, 21, 0, 201)
ProgressBG.BackgroundColor3 = Color3.fromRGB(34, 37, 47)
ProgressBG.BackgroundTransparency = 1
ProgressBG.BorderSizePixel = 0
ProgressBG.ZIndex = 1006
ProgressBG.Parent = Welcome

local ProgressBGCorner = Instance.new("UICorner")
ProgressBGCorner.CornerRadius = UDim.new(1, 0)
ProgressBGCorner.Parent = ProgressBG

local Progress = Instance.new("Frame")
Progress.Size = UDim2.new(0, 0, 1, 0)
Progress.BackgroundColor3 = Color3.fromRGB(80, 130, 230)
Progress.BorderSizePixel = 0
Progress.ZIndex = 1007
Progress.Parent = ProgressBG

local ProgressCorner = Instance.new("UICorner")
ProgressCorner.CornerRadius = UDim.new(1, 0)
ProgressCorner.Parent = Progress

local Copyright = Instance.new("TextLabel")
Copyright.Size = UDim2.new(1, -42, 0, 15)
Copyright.Position = UDim2.new(0, 21, 0, 216)
Copyright.BackgroundTransparency = 1
Copyright.Text = "THANKS TO ALL PARTNER"
Copyright.TextColor3 = Color3.fromRGB(75, 78, 88)
Copyright.TextTransparency = 1
Copyright.TextSize = 8
Copyright.Font = Enum.Font.Gotham
Copyright.TextXAlignment = Enum.TextXAlignment.Center
Copyright.ZIndex = 1006
Copyright.Parent = Welcome

task.spawn(function()

    tween(
        Welcome,
        0.65,
        {
            Position = UDim2.new(0.5, 0, 0.5, -122)
        },
        Enum.EasingStyle.Back,
        Enum.EasingDirection.Out
    )

    tween(
        Glow,
        0.65,
        {
            BackgroundTransparency = 0.93
        },
        Enum.EasingStyle.Quart
    )

    tween(
        WelcomeStroke,
        0.5,
        {
            Transparency = 0.15
        }
    )

    tween(
        Accent,
        0.55,
        {
            Size = UDim2.new(0.42, 0, 0, 3)
        },
        Enum.EasingStyle.Quart
    )

    task.wait(0.18)

    tween(Brand, 0.35, {
        TextTransparency = 0
    })

    task.wait(0.15)

    tween(WelcomeTitle, 0.4, {
        TextTransparency = 0
    })

    task.wait(0.15)

    tween(Official, 0.35, {
        TextTransparency = 0
    })

    task.wait(0.2)

    tween(
        Separator,
        0.4,
        {
            Size = UDim2.new(1, -42, 0, 1)
        },
        Enum.EasingStyle.Quart
    )

    task.wait(0.2)

    showInfoRow(OwnerRow, 0.3)

    task.wait(0.12)

    showInfoRow(LeaderRow, 0.3)

    task.wait(0.12)

    showInfoRow(FeatureRow, 0.3)

    task.wait(0.2)

    tween(Status, 0.3, {
        TextTransparency = 0
    })

    tween(Percent, 0.3, {
        TextTransparency = 0
    })

    tween(ProgressBG, 0.25, {
        BackgroundTransparency = 0
    })

    tween(Copyright, 0.3, {
        TextTransparency = 0
    })

    local stages = {
        {
            text = "INITIALIZING SPECTATOR SYSTEM...",
            percent = "20%"
        },
        {
            text = "CONNECTING TO PLAYER DATABASE...",
            percent = "45%"
        },
        {
            text = "CHECKING REALTIME PLAYER DATA...",
            percent = "70%"
        },
        {
            text = "LOADING SPECTATE DATABASE...",
            percent = "90%"
        },
        {
            text = "SPECTATOR SYSTEM READY",
            percent = "100%"
        }
    }

    for i, stage in ipairs(stages) do

        Status.Text = stage.text
        Percent.Text = stage.percent

        tween(
            Progress,
            0.45,
            {
                Size = UDim2.new(i / #stages, 0, 1, 0)
            },
            Enum.EasingStyle.Quart,
            Enum.EasingDirection.Out
        )

        task.wait(0.38)
    end

    task.wait(0.35)

    tween(Glow, 0.2, {
        BackgroundTransparency = 0.84
    })

    tween(WelcomeStroke, 0.2, {
        Thickness = 2
    })

    task.wait(0.2)

    tween(Glow, 0.35, {
        BackgroundTransparency = 0.94
    })

    tween(WelcomeStroke, 0.35, {
        Thickness = 1.4
    })

    task.wait(0.4)

    tween(
        Welcome,
        0.5,
        {
            Position = UDim2.new(0.5, 0, 0.5, -160),
            BackgroundTransparency = 1
        },
        Enum.EasingStyle.Quart,
        Enum.EasingDirection.In
    )

    tween(Glow, 0.4, {
        BackgroundTransparency = 1
    })

    tween(WelcomeStroke, 0.35, {
        Transparency = 1
    })

    tween(Brand, 0.25, {
        TextTransparency = 1
    })

    tween(WelcomeTitle, 0.25, {
        TextTransparency = 1
    })

    tween(Official, 0.25, {
        TextTransparency = 1
    })

    hideInfoRow(OwnerRow, 0.25)
    hideInfoRow(LeaderRow, 0.25)
    hideInfoRow(FeatureRow, 0.25)

    tween(Status, 0.25, {
        TextTransparency = 1
    })

    tween(Percent, 0.25, {
        TextTransparency = 1
    })

    tween(Copyright, 0.25, {
        TextTransparency = 1
    })

    tween(Separator, 0.25, {
        BackgroundTransparency = 1
    })

    tween(ProgressBG, 0.25, {
        BackgroundTransparency = 1
    })

    tween(Progress, 0.25, {
        BackgroundTransparency = 1
    })

    tween(Accent, 0.3, {
        Size = UDim2.new(0, 0, 0, 3)
    })

    task.wait(0.55)

    if Welcome and Welcome.Parent then
        Welcome:Destroy()
    end

    WelcomeFinished:Fire()
end)

WelcomeFinished.Event:Wait()
WelcomeFinished:Destroy()

-- ==============================================================================================================
-- MAIN FRAME
-- ==============================================================================================================

local Frame = Instance.new("Frame")
Frame.Name = "SpectatorFrame"
Frame.Size = UDim2.new(0, 350, 0, 430)
Frame.Position = UDim2.new(0.5, -175, 0.5, -215)
Frame.BackgroundTransparency = 0.05
Frame.BackgroundColor3 = Color3.fromRGB(20, 20, 25)
Frame.BorderSizePixel = 0
Frame.ZIndex = 10
Frame.Parent = Gui

local FrameCorner = Instance.new("UICorner")
FrameCorner.CornerRadius = UDim.new(0, 11)
FrameCorner.Parent = Frame

local FrameStroke = Instance.new("UIStroke")
FrameStroke.Color = Color3.fromRGB(55, 55, 68)
FrameStroke.Thickness = 1
FrameStroke.Transparency = 0.25
FrameStroke.Parent = Frame

-- ==============================================================================================================
-- STATE
-- ==============================================================================================================

local minimized = false
local closed = false
local autoNext = true

local targets = {}
local current = nil
local currentIndex = 0

-- ==============================================================================================================
-- HEADER
-- ==============================================================================================================

local Title = Instance.new("TextLabel")
Title.Size = UDim2.new(1, -150, 0, 30)
Title.Position = UDim2.new(0, 12, 0, 5)
Title.BackgroundTransparency = 1
Title.Text = "SPECTATE DATABASE"
Title.TextColor3 = Color3.new(1, 1, 1)
Title.TextSize = 16
Title.Font = Enum.Font.GothamBold
Title.TextXAlignment = Enum.TextXAlignment.Left
Title.Parent = Frame

local LiveStatus = Instance.new("TextLabel")
LiveStatus.Size = UDim2.new(0, 95, 0, 20)
LiveStatus.Position = UDim2.new(0, 12, 0, 31)
LiveStatus.BackgroundTransparency = 1
LiveStatus.Text = "● LIVE DATABASE"
LiveStatus.TextColor3 = Color3.fromRGB(100, 170, 110)
LiveStatus.TextSize = 9
LiveStatus.Font = Enum.Font.GothamMedium
LiveStatus.TextXAlignment = Enum.TextXAlignment.Left
LiveStatus.Parent = Frame

local Minimize = Instance.new("TextButton")
Minimize.Size = UDim2.new(0, 32, 0, 28)
Minimize.Position = UDim2.new(1, -72, 0, 8)
Minimize.BackgroundColor3 = Color3.fromRGB(45, 45, 55)
Minimize.BorderSizePixel = 0
Minimize.Text = "—"
Minimize.TextColor3 = Color3.new(1, 1, 1)
Minimize.TextSize = 17
Minimize.Font = Enum.Font.GothamBold
Minimize.Parent = Frame

local MinCorner = Instance.new("UICorner")
MinCorner.CornerRadius = UDim.new(0, 6)
MinCorner.Parent = Minimize

local Close = Instance.new("TextButton")
Close.Size = UDim2.new(0, 32, 0, 28)
Close.Position = UDim2.new(1, -37, 0, 8)
Close.BackgroundColor3 = Color3.fromRGB(110, 45, 45)
Close.BorderSizePixel = 0
Close.Text = "×"
Close.TextColor3 = Color3.new(1, 1, 1)
Close.TextSize = 17
Close.Font = Enum.Font.GothamBold
Close.Parent = Frame

local CloseCorner = Instance.new("UICorner")
CloseCorner.CornerRadius = UDim.new(0, 6)
CloseCorner.Parent = Close

-- ==============================================================================================================
-- TARGET HEADER
-- ==============================================================================================================

local TargetHeader = Instance.new("TextLabel")
TargetHeader.Size = UDim2.new(1, -24, 0, 18)
TargetHeader.Position = UDim2.new(0, 12, 0, 58)
TargetHeader.BackgroundTransparency = 1
TargetHeader.Text = "CURRENT TARGET"
TargetHeader.TextColor3 = Color3.fromRGB(120, 125, 140)
TargetHeader.TextSize = 9
TargetHeader.Font = Enum.Font.GothamBold
TargetHeader.TextXAlignment = Enum.TextXAlignment.Left
TargetHeader.Parent = Frame

local TargetCount = Instance.new("TextLabel")
TargetCount.Size = UDim2.new(0, 90, 0, 18)
TargetCount.Position = UDim2.new(1, -102, 0, 58)
TargetCount.BackgroundTransparency = 1
TargetCount.Text = "TARGET 0 / 0"
TargetCount.TextColor3 = Color3.fromRGB(130, 160, 215)
TargetCount.TextSize = 9
TargetCount.Font = Enum.Font.GothamBold
TargetCount.TextXAlignment = Enum.TextXAlignment.Right
TargetCount.Parent = Frame

-- ==============================================================================================================
-- TARGET CARD
-- ==============================================================================================================

local TargetCard = Instance.new("Frame")
TargetCard.Size = UDim2.new(1, -24, 0, 72)
TargetCard.Position = UDim2.new(0, 12, 0, 79)
TargetCard.BackgroundColor3 = Color3.fromRGB(27, 28, 35)
TargetCard.BackgroundTransparency = 0.05
TargetCard.BorderSizePixel = 0
TargetCard.Parent = Frame

local TargetCardCorner = Instance.new("UICorner")
TargetCardCorner.CornerRadius = UDim.new(0, 8)
TargetCardCorner.Parent = TargetCard

local TargetCardStroke = Instance.new("UIStroke")
TargetCardStroke.Color = Color3.fromRGB(55, 58, 70)
TargetCardStroke.Thickness = 1
TargetCardStroke.Transparency = 0.45
TargetCardStroke.Parent = TargetCard

local TargetName = Instance.new("TextLabel")
TargetName.Size = UDim2.new(1, -85, 0, 24)
TargetName.Position = UDim2.new(0, 10, 0, 7)
TargetName.BackgroundTransparency = 1
TargetName.Text = "NO TARGET"
TargetName.TextColor3 = Color3.fromRGB(245, 245, 248)
TargetName.TextSize = 14
TargetName.Font = Enum.Font.GothamBold
TargetName.TextXAlignment = Enum.TextXAlignment.Left
TargetName.TextTruncate = Enum.TextTruncate.AtEnd
TargetName.Parent = TargetCard

local TargetRole = Instance.new("TextLabel")
TargetRole.Size = UDim2.new(0, 115, 0, 17)
TargetRole.Position = UDim2.new(0, 10, 0, 37)
TargetRole.BackgroundTransparency = 1
TargetRole.Text = "ROLE: N/A"
TargetRole.TextColor3 = Color3.fromRGB(150, 153, 165)
TargetRole.TextSize = 9
TargetRole.Font = Enum.Font.GothamMedium
TargetRole.TextXAlignment = Enum.TextXAlignment.Left
TargetRole.Parent = TargetCard

local TargetLevel = Instance.new("TextLabel")
TargetLevel.Size = UDim2.new(0, 75, 0, 17)
TargetLevel.Position = UDim2.new(0, 120, 0, 37)
TargetLevel.BackgroundTransparency = 1
TargetLevel.Text = "LV. N/A"
TargetLevel.TextColor3 = Color3.fromRGB(150, 153, 165)
TargetLevel.TextSize = 9
TargetLevel.Font = Enum.Font.GothamMedium
TargetLevel.TextXAlignment = Enum.TextXAlignment.Left
TargetLevel.Parent = TargetCard

local TargetState = Instance.new("TextLabel")
TargetState.Size = UDim2.new(0, 75, 0, 17)
TargetState.Position = UDim2.new(1, -85, 0, 37)
TargetState.BackgroundTransparency = 1
TargetState.Text = "○ IDLE"
TargetState.TextColor3 = Color3.fromRGB(130, 133, 145)
TargetState.TextSize = 9
TargetState.Font = Enum.Font.GothamBold
TargetState.TextXAlignment = Enum.TextXAlignment.Right
TargetState.Parent = TargetCard

-- ==============================================================================================================
-- PLAYER LIST HEADER
-- ==============================================================================================================

local ListHeader = Instance.new("TextLabel")
ListHeader.Size = UDim2.new(1, -24, 0, 18)
ListHeader.Position = UDim2.new(0, 12, 0, 160)
ListHeader.BackgroundTransparency = 1
ListHeader.Text = "PLAYER LIST"
ListHeader.TextColor3 = Color3.fromRGB(120, 125, 140)
ListHeader.TextSize = 9
ListHeader.Font = Enum.Font.GothamBold
ListHeader.TextXAlignment = Enum.TextXAlignment.Left
ListHeader.Parent = Frame

local ListStatus = Instance.new("TextLabel")
ListStatus.Size = UDim2.new(0, 120, 0, 18)
ListStatus.Position = UDim2.new(1, -132, 0, 160)
ListStatus.BackgroundTransparency = 1
ListStatus.Text = "0 AVAILABLE"
ListStatus.TextColor3 = Color3.fromRGB(100, 105, 118)
ListStatus.TextSize = 9
ListStatus.Font = Enum.Font.GothamMedium
ListStatus.TextXAlignment = Enum.TextXAlignment.Right
ListStatus.Parent = Frame

-- ==============================================================================================================
-- PLAYER LIST
-- ==============================================================================================================

local List = Instance.new("ScrollingFrame")
List.Size = UDim2.new(1, -24, 0, 137)
List.Position = UDim2.new(0, 12, 0, 181)
List.BackgroundTransparency = 0.18
List.BackgroundColor3 = Color3.fromRGB(10, 10, 15)
List.BorderSizePixel = 0
List.ScrollBarThickness = 4
List.ScrollBarImageTransparency = 0.35
List.CanvasSize = UDim2.new(0, 0, 0, 0)
List.AutomaticCanvasSize = Enum.AutomaticSize.None
List.Parent = Frame

local ListCorner = Instance.new("UICorner")
ListCorner.CornerRadius = UDim.new(0, 8)
ListCorner.Parent = List

local ListPadding = Instance.new("UIPadding")
ListPadding.PaddingTop = UDim.new(0, 5)
ListPadding.PaddingBottom = UDim.new(0, 5)
ListPadding.PaddingLeft = UDim.new(0, 5)
ListPadding.PaddingRight = UDim.new(0, 5)
ListPadding.Parent = List

local Layout = Instance.new("UIListLayout")
Layout.Padding = UDim.new(0, 4)
Layout.SortOrder = Enum.SortOrder.LayoutOrder
Layout.Parent = List

-- ==============================================================================================================
-- AUTO NEXT
-- ==============================================================================================================

local AutoNextLabel = Instance.new("TextLabel")
AutoNextLabel.Size = UDim2.new(0, 90, 0, 28)
AutoNextLabel.Position = UDim2.new(0, 12, 1, -82)
AutoNextLabel.BackgroundTransparency = 1
AutoNextLabel.Text = "AUTO NEXT"
AutoNextLabel.TextColor3 = Color3.fromRGB(155, 158, 170)
AutoNextLabel.TextSize = 9
AutoNextLabel.Font = Enum.Font.GothamBold
AutoNextLabel.TextXAlignment = Enum.TextXAlignment.Left
AutoNextLabel.Parent = Frame

local AutoNext = Instance.new("TextButton")
AutoNext.Size = UDim2.new(0, 54, 0, 25)
AutoNext.Position = UDim2.new(0, 88, 1, -80)
AutoNext.BackgroundColor3 = Color3.fromRGB(55, 90, 150)
AutoNext.BorderSizePixel = 0
AutoNext.Text = "ON"
AutoNext.TextColor3 = Color3.new(1, 1, 1)
AutoNext.TextSize = 9
AutoNext.Font = Enum.Font.GothamBold
AutoNext.Parent = Frame

local AutoNextCorner = Instance.new("UICorner")
AutoNextCorner.CornerRadius = UDim.new(0, 6)
AutoNextCorner.Parent = AutoNext

-- ==============================================================================================================
-- STATUS
-- ==============================================================================================================

local BottomStatus = Instance.new("TextLabel")
BottomStatus.Size = UDim2.new(1, -158, 0, 25)
BottomStatus.Position = UDim2.new(0, 152, 1, -80)
BottomStatus.BackgroundTransparency = 1
BottomStatus.Text = "○ SPECTATE STOPPED"
BottomStatus.TextColor3 = Color3.fromRGB(110, 113, 125)
BottomStatus.TextSize = 8
BottomStatus.Font = Enum.Font.GothamMedium
BottomStatus.TextXAlignment = Enum.TextXAlignment.Right
BottomStatus.TextTruncate = Enum.TextTruncate.AtEnd
BottomStatus.Parent = Frame

-- ==============================================================================================================
-- CONTROLS
-- ==============================================================================================================

local Prev = Instance.new("TextButton")
Prev.Size = UDim2.new(0, 100, 0, 35)
Prev.Position = UDim2.new(0, 12, 1, -45)
Prev.Text = "◀  PREV"
Prev.TextSize = 11
Prev.Font = Enum.Font.GothamBold
Prev.TextColor3 = Color3.new(1, 1, 1)
Prev.BackgroundColor3 = Color3.fromRGB(45, 45, 55)
Prev.BorderSizePixel = 0
Prev.Parent = Frame

local PrevCorner = Instance.new("UICorner")
PrevCorner.CornerRadius = UDim.new(0, 6)
PrevCorner.Parent = Prev

local Stop = Instance.new("TextButton")
Stop.Size = UDim2.new(0, 100, 0, 35)
Stop.Position = UDim2.new(0.5, -50, 1, -45)
Stop.Text = "STOP"
Stop.TextSize = 11
Stop.Font = Enum.Font.GothamBold
Stop.TextColor3 = Color3.new(1, 1, 1)
Stop.BackgroundColor3 = Color3.fromRGB(100, 45, 45)
Stop.BorderSizePixel = 0
Stop.Parent = Frame

local StopCorner = Instance.new("UICorner")
StopCorner.CornerRadius = UDim.new(0, 6)
StopCorner.Parent = Stop

local Next = Instance.new("TextButton")
Next.Size = UDim2.new(0, 100, 0, 35)
Next.Position = UDim2.new(1, -112, 1, -45)
Next.Text = "NEXT  ▶"
Next.TextSize = 11
Next.Font = Enum.Font.GothamBold
Next.TextColor3 = Color3.new(1, 1, 1)
Next.BackgroundColor3 = Color3.fromRGB(45, 45, 55)
Next.BorderSizePixel = 0
Next.Parent = Frame

local NextCorner = Instance.new("UICorner")
NextCorner.CornerRadius = UDim.new(0, 6)
NextCorner.Parent = Next

-- ==============================================================================================================
-- REOPEN
-- ==============================================================================================================

local Reopen = Instance.new("TextButton")
Reopen.Size = UDim2.new(0, 145, 0, 42)
Reopen.Position = UDim2.new(0, 12, 1, -54)
Reopen.BackgroundColor3 = Color3.fromRGB(25, 25, 32)
Reopen.BorderSizePixel = 0
Reopen.Text = "SPECTATE DATABASE"
Reopen.TextColor3 = Color3.new(1, 1, 1)
Reopen.TextSize = 11
Reopen.Font = Enum.Font.GothamBold
Reopen.Visible = false
Reopen.Parent = Gui

local ReopenCorner = Instance.new("UICorner")
ReopenCorner.CornerRadius = UDim.new(0, 8)
ReopenCorner.Parent = Reopen

local MiniBar = Instance.new("Frame")
MiniBar.Size = UDim2.new(0, 245, 0, 44)
MiniBar.Position = UDim2.new(0, 12, 1, -104)
MiniBar.BackgroundColor3 = Color3.fromRGB(25, 25, 32)
MiniBar.BorderSizePixel = 0
MiniBar.Visible = false
MiniBar.Parent = Gui

local MiniCorner = Instance.new("UICorner")
MiniCorner.CornerRadius = UDim.new(0, 8)
MiniCorner.Parent = MiniBar

local MiniTitle = Instance.new("TextLabel")
MiniTitle.Size = UDim2.new(1, -55, 0, 18)
MiniTitle.Position = UDim2.new(0, 10, 0, 4)
MiniTitle.BackgroundTransparency = 1
MiniTitle.Text = "SPECTATE DATABASE"
MiniTitle.TextColor3 = Color3.new(1, 1, 1)
MiniTitle.TextSize = 10
MiniTitle.Font = Enum.Font.GothamBold
MiniTitle.TextXAlignment = Enum.TextXAlignment.Left
MiniTitle.Parent = MiniBar

local MiniTarget = Instance.new("TextLabel")
MiniTarget.Size = UDim2.new(1, -55, 0, 17)
MiniTarget.Position = UDim2.new(0, 10, 0, 22)
MiniTarget.BackgroundTransparency = 1
MiniTarget.Text = "○ NO TARGET"
MiniTarget.TextColor3 = Color3.fromRGB(135, 138, 150)
MiniTarget.TextSize = 8
MiniTarget.Font = Enum.Font.GothamMedium
MiniTarget.TextXAlignment = Enum.TextXAlignment.Left
MiniTarget.TextTruncate = Enum.TextTruncate.AtEnd
MiniTarget.Parent = MiniBar

local MiniOpen = Instance.new("TextButton")
MiniOpen.Size = UDim2.new(0, 38, 0, 34)
MiniOpen.Position = UDim2.new(1, -43, 0.5, -17)
MiniOpen.BackgroundColor3 = Color3.fromRGB(55, 90, 150)
MiniOpen.BorderSizePixel = 0
MiniOpen.Text = "+"
MiniOpen.TextColor3 = Color3.new(1, 1, 1)
MiniOpen.TextSize = 20
MiniOpen.Font = Enum.Font.GothamBold
MiniOpen.Parent = MiniBar

local MiniOpenCorner = Instance.new("UICorner")
MiniOpenCorner.CornerRadius = UDim.new(0, 6)
MiniOpenCorner.Parent = MiniOpen

-- ==============================================================================================================
-- MINIMIZE / CLOSE
-- ==============================================================================================================

local function setMinimized(state)

    minimized = state

    if state then

        Frame.Visible = false
        Reopen.Visible = false
        MiniBar.Visible = true

    else

        Frame.Visible = true
        Reopen.Visible = false
        MiniBar.Visible = false
    end
end

local function setClosed(state)

    closed = state

    if state then

        Frame.Visible = false
        MiniBar.Visible = false
        Reopen.Visible = true

    else

        Frame.Visible = true
        MiniBar.Visible = false
        Reopen.Visible = false
    end
end

Minimize.MouseButton1Click:Connect(function()
    setMinimized(true)
end)

Close.MouseButton1Click:Connect(function()
    setClosed(true)
end)

Reopen.MouseButton1Click:Connect(function()
    setClosed(false)
end)

MiniOpen.MouseButton1Click:Connect(function()
    setMinimized(false)
end)

-- ==============================================================================================================
-- DRAG MAIN
-- ==============================================================================================================

local dragging = false
local dragInput
local dragStart
local startPosition

local function updateDrag(input)

    if not dragStart or not startPosition then
        return
    end

    local delta = input.Position - dragStart

    Frame.Position = UDim2.new(
        startPosition.X.Scale,
        startPosition.X.Offset + delta.X,
        startPosition.Y.Scale,
        startPosition.Y.Offset + delta.Y
    )
end

Title.InputBegan:Connect(function(input)

    if input.UserInputType == Enum.UserInputType.MouseButton1
        or input.UserInputType == Enum.UserInputType.Touch then

        dragging = true
        dragStart = input.Position
        startPosition = Frame.Position

        input.Changed:Connect(function()

            if input.UserInputState == Enum.UserInputState.End then
                dragging = false
            end
        end)
    end
end)

Title.InputChanged:Connect(function(input)

    if input.UserInputType == Enum.UserInputType.MouseMovement
        or input.UserInputType == Enum.UserInputType.Touch then

        dragInput = input
    end
end)

UserInputService.InputChanged:Connect(function(input)

    if input == dragInput and dragging then
        updateDrag(input)
    end
end)

-- ==============================================================================================================
-- DRAG MINI BAR
-- ==============================================================================================================

local miniDragging = false
local miniDragInput
local miniDragStart
local miniStartPosition

local function updateMiniDrag(input)

    if not miniDragStart or not miniStartPosition then
        return
    end

    local delta = input.Position - miniDragStart

    MiniBar.Position = UDim2.new(
        miniStartPosition.X.Scale,
        miniStartPosition.X.Offset + delta.X,
        miniStartPosition.Y.Scale,
        miniStartPosition.Y.Offset + delta.Y
    )
end

MiniBar.InputBegan:Connect(function(input)

    if input.UserInputType == Enum.UserInputType.MouseButton1
        or input.UserInputType == Enum.UserInputType.Touch then

        miniDragging = true
        miniDragStart = input.Position
        miniStartPosition = MiniBar.Position

        input.Changed:Connect(function()

            if input.UserInputState == Enum.UserInputState.End then
                miniDragging = false
            end
        end)
    end
end)

MiniBar.InputChanged:Connect(function(input)

    if input.UserInputType == Enum.UserInputType.MouseMovement
        or input.UserInputType == Enum.UserInputType.Touch then

        miniDragInput = input
    end
end)

UserInputService.InputChanged:Connect(function(input)

    if input == miniDragInput and miniDragging then
        updateMiniDrag(input)
    end
end)

-- ==============================================================================================================
-- DRAG REOPEN
-- ==============================================================================================================

local popupDragging = false
local popupDragInput
local popupDragStart
local popupStartPosition

local function updatePopupDrag(input)

    if not popupDragStart or not popupStartPosition then
        return
    end

    local delta = input.Position - popupDragStart

    Reopen.Position = UDim2.new(
        popupStartPosition.X.Scale,
        popupStartPosition.X.Offset + delta.X,
        popupStartPosition.Y.Scale,
        popupStartPosition.Y.Offset + delta.Y
    )
end

Reopen.InputBegan:Connect(function(input)

    if input.UserInputType == Enum.UserInputType.MouseButton1
        or input.UserInputType == Enum.UserInputType.Touch then

        popupDragging = true
        popupDragStart = input.Position
        popupStartPosition = Reopen.Position

        input.Changed:Connect(function()

            if input.UserInputState == Enum.UserInputState.End then
                popupDragging = false
            end
        end)
    end
end)

Reopen.InputChanged:Connect(function(input)

    if input.UserInputType == Enum.UserInputType.MouseMovement
        or input.UserInputType == Enum.UserInputType.Touch then

        popupDragInput = input
    end
end)

UserInputService.InputChanged:Connect(function(input)

    if input == popupDragInput and popupDragging then
        updatePopupDrag(input)
    end
end)

-- ==============================================================================================================
-- DATA FUNCTIONS
-- ==============================================================================================================

local function getKillerWeapon(p)

    local char = p.Character

    if char then

        for _, obj in ipairs(char:GetChildren()) do

            if obj:IsA("Tool") then
                return obj.Name
            end
        end
    end

    local attrNames = {
        "EquippedWeapon",
        "KillerWeapon",
        "Weapon",
        "WeaponName",
        "EquippedItem"
    }

    for _, attr in ipairs(attrNames) do

        local value = p:GetAttribute(attr)

        if value ~= nil
            and tostring(value) ~= ""
            and tostring(value) ~= "None" then

            return tostring(value)
        end

        if char then

            value = char:GetAttribute(attr)

            if value ~= nil
                and tostring(value) ~= ""
                and tostring(value) ~= "None" then

                return tostring(value)
            end
        end
    end

    return "N/A"
end

local function getLevel(p)

    local attrNames = {
        "Level",
        "LEVEL",
        "PlayerLevel",
        "SurvivorLevel",
        "KillerLevel"
    }

    for _, attr in ipairs(attrNames) do

        local value = p:GetAttribute(attr)

        if value ~= nil and tostring(value) ~= "" then
            return tostring(value)
        end

        local char = p.Character

        if char then

            value = char:GetAttribute(attr)

            if value ~= nil and tostring(value) ~= "" then
                return tostring(value)
            end
        end
    end

    local leaderstats = p:FindFirstChild("leaderstats")

    if leaderstats then

        local level = leaderstats:FindFirstChild("Level")

        if level
            and (
                level:IsA("IntValue")
                or level:IsA("NumberValue")
                or level:IsA("StringValue")
            ) then

            return tostring(level.Value)
        end
    end

    return "N/A"
end

local function getRole(p)

    local team = p.Team

    if team then

        local name = tostring(team.Name)

        if name == "Killer" then
            return "KILLER"
        end

        if name == "Survivors" then
            return "SURVIVOR"
        end

        return name
    end

    return "N/A"
end

local function getHumanoid(p)

    local character = p.Character

    if not character then
        return nil
    end

    return character:FindFirstChildOfClass("Humanoid")
end

local function getCamera()
    return workspace.CurrentCamera
end

local function isAlive(p)

    local humanoid = getHumanoid(p)

    if not humanoid then
        return false
    end

    return humanoid.Health > 0
end

-- ==============================================================================================================
-- TARGET UI
-- ==============================================================================================================

local function updateTargetCount()

    local count = #targets

    if current then

        for i, p in ipairs(targets) do

            if p == current then
                currentIndex = i
                break
            end
        end

    else

        currentIndex = 0
    end

    if currentIndex > 0 then

        TargetCount.Text =
            "TARGET " ..
            tostring(currentIndex) ..
            " / " ..
            tostring(count)

    else

        TargetCount.Text =
            "TARGET 0 / " ..
            tostring(count)
    end

    ListStatus.Text =
        tostring(count) ..
        " AVAILABLE"
end

local function updateMiniBar()

    if current and current.Parent == Players then

        local role = getRole(current)
        local level = getLevel(current)

        if isAlive(current) then

            MiniTarget.Text =
                "● " ..
                current.Name ..
                "  •  LV." ..
                tostring(level) ..
                "  •  " ..
                tostring(role)

        else

            MiniTarget.Text =
                "○ " ..
                current.Name ..
                "  •  DEAD"
        end

    else

        MiniTarget.Text = "○ NO TARGET"
    end
end

local function updateTargetCard()

    if not current or current.Parent ~= Players then

        TargetName.Text = "NO TARGET"
        TargetRole.Text = "ROLE: N/A"
        TargetLevel.Text = "LV. N/A"
        TargetState.Text = "○ IDLE"
        TargetState.TextColor3 = Color3.fromRGB(130, 133, 145)

        BottomStatus.Text = "○ SPECTATE STOPPED"

        updateMiniBar()
        updateTargetCount()

        return
    end

    local role = getRole(current)
    local level = getLevel(current)

    TargetName.Text = current.Name
    TargetRole.Text = "ROLE: " .. tostring(role)
    TargetLevel.Text = "LV. " .. tostring(level)

    if isAlive(current) then

        TargetState.Text = "● ALIVE"
        TargetState.TextColor3 = Color3.fromRGB(100, 175, 115)

        BottomStatus.Text =
            "● SPECTATING: " ..
            current.Name

    else

        TargetState.Text = "○ DEAD"
        TargetState.TextColor3 = Color3.fromRGB(175, 105, 105)

        BottomStatus.Text =
            "○ TARGET DEAD: " ..
            current.Name
    end

    updateMiniBar()
    updateTargetCount()
end

-- ==============================================================================================================
-- INFO
-- ==============================================================================================================

local function updateInfo(p)

    if not p then
        updateTargetCard()
        return
    end

    local role = getRole(p)
    local equipped = p:GetAttribute("EquippedItem")
    local killer = p:GetAttribute("SelectedKiller")
    local level = getLevel(p)

    if equipped == nil then
        equipped = "N/A"
    end

    if killer == nil then
        killer = "N/A"
    end

    if role == "KILLER" then

        local killerWeapon = getKillerWeapon(p)

        InfoText = nil

    end

    updateTargetCard()
end

-- ==============================================================================================================
-- SPECTATE / STOP
-- ==============================================================================================================

local function stop()

    current = nil
    currentIndex = 0

    local camera = getCamera()
    local ownHumanoid = getHumanoid(LocalPlayer)

    if camera then

        camera.CameraType = Enum.CameraType.Custom

        if ownHumanoid then
            camera.CameraSubject = ownHumanoid
        end
    end

    updateTargetCard()
end

local spectatingBusy = false

local function spectate(p)

    if not p or p == LocalPlayer then
        return false
    end

    local humanoid = getHumanoid(p)

    if not humanoid then
        return false
    end

    if humanoid.Health <= 0 then
        return false
    end

    local camera = getCamera()

    if not camera then
        return false
    end

    current = p

    for i, target in ipairs(targets) do

        if target == p then
            currentIndex = i
            break
        end
    end

    camera.CameraType = Enum.CameraType.Custom
    camera.CameraSubject = humanoid

    updateTargetCard()

    return true
end

-- ==============================================================================================================
-- AUTO NEXT
-- ==============================================================================================================

local function getNextAliveTarget(exclude)

    if #targets == 0 then
        return nil
    end

    local startIndex = currentIndex

    if startIndex < 1 then
        startIndex = 1
    end

    for offset = 1, #targets do

        local index = ((startIndex + offset - 1) % #targets) + 1
        local candidate = targets[index]

        if candidate
            and candidate ~= exclude
            and candidate.Parent == Players
            and isAlive(candidate) then

            return candidate
        end
    end

    return nil
end

local function tryAutoNext(exclude)

    if not autoNext then
        return false
    end

    local nextTarget = getNextAliveTarget(exclude)

    if nextTarget then

        task.delay(0.15, function()

            if nextTarget.Parent == Players then
                spectate(nextTarget)
            end
        end)

        return true
    end

    stop()

    return false
end

-- ==============================================================================================================
-- PLAYER LIST REBUILD
-- ==============================================================================================================

local rebuilding = false
local rebuildPending = false

local function clearPlayerButtons()

    for _, child in ipairs(List:GetChildren()) do

        if child:IsA("TextButton") then
            child:Destroy()
        end
    end
end

local function createPlayerButton(p, order)

    local button = Instance.new("TextButton")

    button.Name = "Player_" .. p.Name
    button.Size = UDim2.new(1, 0, 0, 39)
    button.LayoutOrder = order
    button.Text = ""
    button.AutoButtonColor = false
    button.BackgroundColor3 = Color3.fromRGB(31, 32, 40)
    button.BorderSizePixel = 0
    button.Parent = List

    local corner = Instance.new("UICorner")
    corner.CornerRadius = UDim.new(0, 6)
    corner.Parent = button

    local indicator = Instance.new("TextLabel")
    indicator.Size = UDim2.new(0, 20, 1, 0)
    indicator.Position = UDim2.new(0, 7, 0, 0)
    indicator.BackgroundTransparency = 1
    indicator.Text = "○"
    indicator.TextColor3 = Color3.fromRGB(100, 103, 115)
    indicator.TextSize = 10
    indicator.Font = Enum.Font.GothamBold
    indicator.TextXAlignment = Enum.TextXAlignment.Center
    indicator.Parent = button

    local nameLabel = Instance.new("TextLabel")
    nameLabel.Size = UDim2.new(1, -125, 0, 19)
    nameLabel.Position = UDim2.new(0, 30, 0, 4)
    nameLabel.BackgroundTransparency = 1
    nameLabel.Text = p.Name
    nameLabel.TextColor3 = Color3.fromRGB(235, 235, 240)
    nameLabel.TextSize = 10
    nameLabel.Font = Enum.Font.GothamBold
    nameLabel.TextXAlignment = Enum.TextXAlignment.Left
    nameLabel.TextTruncate = Enum.TextTruncate.AtEnd
    nameLabel.Parent = button

    local role = getRole(p)
    local level = getLevel(p)

    local subLabel = Instance.new("TextLabel")
    subLabel.Size = UDim2.new(1, -125, 0, 14)
    subLabel.Position = UDim2.new(0, 30, 0, 22)
    subLabel.BackgroundTransparency = 1
    subLabel.Text =
        "LV. " ..
        tostring(level) ..
        "  •  " ..
        tostring(role)
    subLabel.TextColor3 = Color3.fromRGB(125, 128, 140)
    subLabel.TextSize = 8
    subLabel.Font = Enum.Font.GothamMedium
    subLabel.TextXAlignment = Enum.TextXAlignment.Left
    subLabel.TextTruncate = Enum.TextTruncate.AtEnd
    subLabel.Parent = button

    local stateLabel = Instance.new("TextLabel")
    stateLabel.Size = UDim2.new(0, 82, 0, 18)
    stateLabel.Position = UDim2.new(1, -90, 0, 10)
    stateLabel.BackgroundTransparency = 1
    stateLabel.TextXAlignment = Enum.TextXAlignment.Right
    stateLabel.TextSize = 8
    stateLabel.Font = Enum.Font.GothamBold
    stateLabel.Parent = button

    if current == p then

        indicator.Text = "●"
        indicator.TextColor3 = Color3.fromRGB(100, 170, 235)

        button.BackgroundColor3 = Color3.fromRGB(39, 47, 62)

        stateLabel.Text = "SPECTATING"
        stateLabel.TextColor3 = Color3.fromRGB(100, 170, 235)

    elseif isAlive(p) then

        indicator.Text = "●"
        indicator.TextColor3 = Color3.fromRGB(95, 155, 105)

        stateLabel.Text = "ALIVE"
        stateLabel.TextColor3 = Color3.fromRGB(95, 155, 105)

    else

        indicator.Text = "○"
        indicator.TextColor3 = Color3.fromRGB(105, 108, 120)

        stateLabel.Text = "DEAD"
        stateLabel.TextColor3 = Color3.fromRGB(125, 105, 105)
    end

    button.MouseEnter:Connect(function()

        if current ~= p then

            tween(
                button,
                0.12,
                {
                    BackgroundColor3 = Color3.fromRGB(40, 42, 52)
                }
            )
        end
    end)

    button.MouseLeave:Connect(function()

        if current ~= p then

            tween(
                button,
                0.12,
                {
                    BackgroundColor3 = Color3.fromRGB(31, 32, 40)
                }
            )
        end
    end)

    button.MouseButton1Click:Connect(function()

        if p.Parent ~= Players then
            return
        end

        if not isAlive(p) then
            return
        end

        spectate(p)
        task.defer(rebuild)
    end)

    return button
end

local function rebuild()

    if rebuilding then

        rebuildPending = true

        return
    end

    rebuilding = true
    rebuildPending = false

    clearPlayerButtons()

    targets = {}

    for _, p in ipairs(Players:GetPlayers()) do

        if p ~= LocalPlayer
            and p.Parent == Players
            and getHumanoid(p) then

            table.insert(targets, p)
        end
    end

    if current then

        local stillExists = false

        for i, p in ipairs(targets) do

            if p == current then

                currentIndex = i
                stillExists = true

                break
            end
        end

        if not stillExists then
            current = nil
            currentIndex = 0
        end
    end

    for i, p in ipairs(targets) do
        createPlayerButton(p, i)
    end

    if #targets == 0 then

        local empty = Instance.new("TextLabel")

        empty.Name = "EmptyState"
        empty.Size = UDim2.new(1, -10, 0, 55)
        empty.LayoutOrder = 999
        empty.BackgroundTransparency = 1
        empty.Text = "NO TARGET AVAILABLE\nWaiting for players..."
        empty.TextColor3 = Color3.fromRGB(105, 108, 120)
        empty.TextSize = 9
        empty.Font = Enum.Font.GothamMedium
        empty.TextXAlignment = Enum.TextXAlignment.Center
        empty.TextYAlignment = Enum.TextYAlignment.Center
        empty.Parent = List
    end

    task.defer(function()

        if Layout and Layout.Parent then

            List.CanvasSize = UDim2.new(
                0,
                0,
                0,
                Layout.AbsoluteContentSize.Y + 10
            )
        end

        updateTargetCount()
        updateTargetCard()

        rebuilding = false

        if rebuildPending then
            task.defer(rebuild)
        end
    end)
end

-- ==============================================================================================================
-- MOVE
-- ==============================================================================================================

local function move(dir)

    if #targets == 0 then

        rebuild()

        return
    end

    local index = currentIndex

    if index < 1 then
        index = 1
    end

    index = index + dir

    if index > #targets then
        index = 1
    end

    if index < 1 then
        index = #targets
    end

    local target = targets[index]

    if target and target.Parent == Players then

        if isAlive(target) then

            spectate(target)

        else

            local nextTarget = getNextAliveTarget(target)

            if nextTarget then
                spectate(nextTarget)
            else
                stop()
            end
        end
    end

    task.defer(rebuild)
end

-- ==============================================================================================================
-- BUTTON CONNECTIONS
-- ==============================================================================================================

Prev.MouseButton1Click:Connect(function()
    move(-1)
end)

Next.MouseButton1Click:Connect(function()
    move(1)
end)

Stop.MouseButton1Click:Connect(function()
    stop()
    task.defer(rebuild)
end)

AutoNext.MouseButton1Click:Connect(function()

    autoNext = not autoNext

    if autoNext then

        AutoNext.Text = "ON"

        tween(
            AutoNext,
            0.15,
            {
                BackgroundColor3 = Color3.fromRGB(55, 90, 150)
            }
        )

    else

        AutoNext.Text = "OFF"

        tween(
            AutoNext,
            0.15,
            {
                BackgroundColor3 = Color3.fromRGB(75, 75, 82)
            }
        )
    end
end)

-- ==============================================================================================================
-- PLAYER HOOKS
-- ==============================================================================================================

local hookedPlayers = {}
local hookedHumanoids = {}

local function hookCharacter(p, character)

    if not character then
        return
    end

    if hookedHumanoids[character] then
        return
    end

    hookedHumanoids[character] = true

    local humanoid = character:FindFirstChildOfClass("Humanoid")

    if humanoid then

        humanoid.Died:Connect(function()

            if current == p then

                updateTargetCard()
                task.defer(rebuild)

                if autoNext then
                    tryAutoNext(p)
                end

            else

                task.defer(rebuild)
            end
        end)
    end

    character.ChildAdded:Connect(function()

        if current == p then
            updateTargetCard()
        end

        rebuild()
    end)

    character.ChildRemoved:Connect(function()

        if current == p then
            updateTargetCard()
        end

        rebuild()
    end)

    character.AttributeChanged:Connect(function()

        if current == p then
            updateTargetCard()
        end
    end)
end

local function hookPlayer(p)

    if not p or p == LocalPlayer then
        return
    end

    if hookedPlayers[p] then
        return
    end

    hookedPlayers[p] = true

    p:GetPropertyChangedSignal("Team"):Connect(function()

        rebuild()

        if current == p then
            updateTargetCard()
        end
    end)

    p.AttributeChanged:Connect(function(attributeName)

        if current == p then
            updateTargetCard()
        end

        if attributeName == "SelectedKiller"
            or attributeName == "EquippedItem"
            or attributeName == "Level"
            or attributeName == "LEVEL"
            or attributeName == "PlayerLevel"
            or attributeName == "SurvivorLevel"
            or attributeName == "KillerLevel" then

            rebuild()
        end
    end)

    p.CharacterAdded:Connect(function(character)

        hookedHumanoids[character] = nil

        hookCharacter(p, character)

        task.delay(0.15, function()

            if p.Parent == Players then
                rebuild()
            end
        end)
    end)

    p.CharacterRemoving:Connect(function(character)

        hookedHumanoids[character] = nil

        if current == p then

            if autoNext then
                tryAutoNext(p)
            else
                stop()
            end
        end

        task.defer(rebuild)
    end)

    if p.Character then
        hookCharacter(p, p.Character)
    end
end

-- ==============================================================================================================
-- PLAYER ADDED
-- ==============================================================================================================

Players.PlayerAdded:Connect(function(p)

    hookPlayer(p)

    task.delay(0.1, function()

        if p.Parent == Players then
            rebuild()
        end
    end)
end)

-- ==============================================================================================================
-- PLAYER REMOVING
-- ==============================================================================================================

Players.PlayerRemoving:Connect(function(p)

    local wasCurrent = current == p

    hookedPlayers[p] = nil

    if wasCurrent then

        if autoNext then

            current = nil
            currentIndex = 0

            task.defer(function()

                rebuild()

                task.wait(0.15)

                tryAutoNext(p)
            end)

        else

            stop()
            task.defer(rebuild)
        end

    else

        task.defer(rebuild)
    end
end)

-- ==============================================================================================================
-- INITIAL HOOK
-- ==============================================================================================================

for _, p in ipairs(Players:GetPlayers()) do

    if p ~= LocalPlayer then
        hookPlayer(p)
    end
end

-- ==============================================================================================================
-- INITIAL BUILD
-- ==============================================================================================================

rebuild()

-- ==============================================================================================================
--
--               FEATURE SPECTATOR DATABASE VIOLENCE DISTRICT BY XLILNYX OFFICIAL LEADER LEZARD
--                             API CHECK REALTIME DATABASE SERVER VIOLENCE DISTRICT
--
-- ==============================================================================================================