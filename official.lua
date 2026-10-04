-- ==============================================================================================================
-- 
--                       OFFICIAL SCRIPT MADE BY XLILNYX OFFICIAL LEADER LEZARD NEW ERA
-- 
-- ==============================================================================================================

local version = "premium"
repeat task.wait() until game:IsLoaded()

-- ============================================================
--    SERVICES MENU MADE BY XLILNYX OFFICIAL LEADER LEZARD
-- ============================================================

local _Players = game:GetService("Players")
local _TweenService = game:GetService("TweenService")

local _LocalPlayer = _Players.LocalPlayer
local _PlayerGui = _LocalPlayer:WaitForChild("PlayerGui")

-- ============================================================
-- CLEAN OLD LOADING SCREEN
-- ============================================================

pcall(function()
    local old = _PlayerGui:FindFirstChild("XLILNYX_LOADING_SCREEN")

    if old then
        old:Destroy()
    end
end)

-- ============================================================
-- SCREEN GUI
-- ============================================================

local LoadingGui = Instance.new("ScreenGui")

LoadingGui.Name = "XLILNYX_LOADING_SCREEN"
LoadingGui.ResetOnSpawn = false
LoadingGui.IgnoreGuiInset = true
LoadingGui.DisplayOrder = 999999
LoadingGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
LoadingGui.Parent = _PlayerGui

-- ============================================================
-- BACKGROUND
-- ============================================================

local Background = Instance.new("Frame")

Background.Name = "Background"
Background.Size = UDim2.fromScale(1, 1)
Background.Position = UDim2.fromScale(0, 0)
Background.BackgroundColor3 = Color3.fromRGB(2, 2, 6)
Background.BorderSizePixel = 0
Background.Parent = LoadingGui

-- ============================================================
-- SOFT PINK GLOW
-- ============================================================

local Glow = Instance.new("Frame")

Glow.Name = "Glow"
Glow.Size = UDim2.fromOffset(560, 420)
Glow.Position = UDim2.new(0.5, 0, 0.5, 0)
Glow.AnchorPoint = Vector2.new(0.5, 0.5)
Glow.BackgroundColor3 = Color3.fromRGB(255, 0, 105)
Glow.BackgroundTransparency = 0.975
Glow.BorderSizePixel = 0
Glow.ZIndex = 1
Glow.Parent = Background

local GlowCorner = Instance.new("UICorner")
GlowCorner.CornerRadius = UDim.new(1, 0)
GlowCorner.Parent = Glow

-- ============================================================
-- MAIN CARD
-- ============================================================

local Card = Instance.new("Frame")

Card.Name = "MainCard"
Card.Size = UDim2.fromOffset(370, 225)
Card.Position = UDim2.new(0.5, 0, 0.5, 0)
Card.AnchorPoint = Vector2.new(0.5, 0.5)
Card.BackgroundColor3 = Color3.fromRGB(7, 7, 13)
Card.BorderSizePixel = 0
Card.ZIndex = 5
Card.Parent = Background

local CardCorner = Instance.new("UICorner")
CardCorner.CornerRadius = UDim.new(0, 20)
CardCorner.Parent = Card

-- ============================================================
-- OUTER NEON BORDER
-- ============================================================

local CardStroke = Instance.new("UIStroke")

CardStroke.Name = "CardStroke"
CardStroke.Color = Color3.fromRGB(255, 20, 115)
CardStroke.Thickness = 1.7
CardStroke.Transparency = 0
CardStroke.Parent = Card

-- ============================================================
-- INNER DARK BORDER
-- ============================================================

local InnerBorder = Instance.new("Frame")

InnerBorder.Name = "InnerBorder"
InnerBorder.Size = UDim2.new(1, -10, 1, -10)
InnerBorder.Position = UDim2.new(0.5, 0, 0.5, 0)
InnerBorder.AnchorPoint = Vector2.new(0.5, 0.5)
InnerBorder.BackgroundTransparency = 1
InnerBorder.BorderSizePixel = 0
InnerBorder.ZIndex = 6
InnerBorder.Parent = Card

local InnerStroke = Instance.new("UIStroke")

InnerStroke.Color = Color3.fromRGB(255, 35, 125)
InnerStroke.Thickness = 0.6
InnerStroke.Transparency = 0.72
InnerStroke.Parent = InnerBorder

local InnerCorner = Instance.new("UICorner")
InnerCorner.CornerRadius = UDim.new(0, 16)
InnerCorner.Parent = InnerBorder

-- ============================================================
-- CORNER DECORATION
-- ============================================================

local CornerObjects = {}

local function CreateCorner(name, x, y, flipX, flipY)

    local Holder = Instance.new("Frame")

    Holder.Name = name
    Holder.Size = UDim2.fromOffset(34, 34)
    Holder.Position = UDim2.new(
        x,
        flipX and -8 or 8,
        y,
        flipY and -8 or 8
    )

    Holder.AnchorPoint = Vector2.new(
        flipX and 1 or 0,
        flipY and 1 or 0
    )

    Holder.BackgroundTransparency = 1
    Holder.ZIndex = 12
    Holder.Parent = Card

    -- horizontal
    local H = Instance.new("Frame")

    H.Size = UDim2.fromOffset(27, 2)
    H.Position = UDim2.fromOffset(
        flipX and 5 or 2,
        flipY and 27 or 5
    )

    H.BackgroundColor3 = Color3.fromRGB(255, 25, 120)
    H.BorderSizePixel = 0
    H.ZIndex = 13
    H.Parent = Holder

    -- vertical
    local V = Instance.new("Frame")

    V.Size = UDim2.fromOffset(2, 21)
    V.Position = UDim2.fromOffset(
        flipX and 29 or 2,
        5
    )

    V.BackgroundColor3 = Color3.fromRGB(255, 25, 120)
    V.BorderSizePixel = 0
    V.ZIndex = 13
    V.Parent = Holder

    -- diagonal
    local D = Instance.new("Frame")

    D.Size = UDim2.fromOffset(11, 2)
    D.Position = UDim2.fromOffset(
        flipX and 17 or 3,
        flipY and 15 or 4
    )

    D.Rotation = flipX and -45 or 45
    D.BackgroundColor3 = Color3.fromRGB(255, 55, 140)
    D.BorderSizePixel = 0
    D.ZIndex = 14
    D.Parent = Holder

    table.insert(CornerObjects, Holder)

    return Holder
end

CreateCorner(
    "CornerTopLeft",
    0,
    0,
    false,
    false
)

CreateCorner(
    "CornerTopRight",
    1,
    0,
    true,
    false
)

CreateCorner(
    "CornerBottomLeft",
    0,
    1,
    false,
    true
)

CreateCorner(
    "CornerBottomRight",
    1,
    1,
    true,
    true
)

-- ============================================================
-- CONTENT HOLDER
-- ============================================================

local Content = Instance.new("Frame")

Content.Name = "Content"
Content.Size = UDim2.fromScale(1, 1)
Content.BackgroundTransparency = 1
Content.ZIndex = 20
Content.Parent = Card

-- ============================================================
-- TITLE
-- ============================================================

local Title = Instance.new("TextLabel")

Title.Name = "Title"
Title.Size = UDim2.new(1, -35, 0, 29)
Title.Position = UDim2.new(0.5, 0, 0, 25)
Title.AnchorPoint = Vector2.new(0.5, 0)
Title.BackgroundTransparency = 1
Title.Text = "WELCOME TO MY SCRIPT"
Title.TextColor3 = Color3.fromRGB(255, 255, 255)
Title.Font = Enum.Font.GothamBlack
Title.TextSize = 18
Title.TextXAlignment = Enum.TextXAlignment.Center
Title.ZIndex = 21
Title.Parent = Content

-- ============================================================
-- OFFICIAL
-- ============================================================

local Official = Instance.new("TextLabel")

Official.Name = "Official"
Official.Size = UDim2.new(1, -35, 0, 27)
Official.Position = UDim2.new(0.5, 0, 0, 49)
Official.AnchorPoint = Vector2.new(0.5, 0)
Official.BackgroundTransparency = 1
Official.Text = "OFFICIAL SCRIPT"
Official.TextColor3 = Color3.fromRGB(255, 25, 115)
Official.Font = Enum.Font.GothamBlack
Official.TextSize = 17
Official.TextXAlignment = Enum.TextXAlignment.Center
Official.ZIndex = 21
Official.Parent = Content

-- ============================================================
-- VIOLENCE DISTRICT LEFT LINE
-- ============================================================

local DistrictLineLeft = Instance.new("Frame")

DistrictLineLeft.Name = "DistrictLineLeft"
DistrictLineLeft.Size = UDim2.fromOffset(55, 1)
DistrictLineLeft.Position = UDim2.new(0.5, -82, 0, 78)
DistrictLineLeft.AnchorPoint = Vector2.new(1, 0.5)
DistrictLineLeft.BackgroundColor3 = Color3.fromRGB(255, 30, 120)
DistrictLineLeft.BorderSizePixel = 0
DistrictLineLeft.ZIndex = 21
DistrictLineLeft.Parent = Content

-- ============================================================
-- VIOLENCE DISTRICT
-- ============================================================

local SubTitle = Instance.new("TextLabel")

SubTitle.Name = "SubTitle"
SubTitle.Size = UDim2.fromOffset(150, 20)
SubTitle.Position = UDim2.new(0.5, 0, 0, 69)
SubTitle.AnchorPoint = Vector2.new(0.5, 0)
SubTitle.BackgroundTransparency = 1
SubTitle.Text = "VIOLENCE DISTRICT"
SubTitle.TextColor3 = Color3.fromRGB(165, 165, 175)
SubTitle.Font = Enum.Font.GothamMedium
SubTitle.TextSize = 9
SubTitle.TextXAlignment = Enum.TextXAlignment.Center
SubTitle.ZIndex = 21
SubTitle.Parent = Content

-- ============================================================
-- VIOLENCE DISTRICT RIGHT LINE
-- ============================================================

local DistrictLineRight = Instance.new("Frame")

DistrictLineRight.Name = "DistrictLineRight"
DistrictLineRight.Size = UDim2.fromOffset(55, 1)
DistrictLineRight.Position = UDim2.new(0.5, 82, 0, 78)
DistrictLineRight.AnchorPoint = Vector2.new(0, 0.5)
DistrictLineRight.BackgroundColor3 = Color3.fromRGB(255, 30, 120)
DistrictLineRight.BorderSizePixel = 0
DistrictLineRight.ZIndex = 21
DistrictLineRight.Parent = Content

-- ============================================================
-- LOADING AREA
-- ============================================================

local LoadingArea = Instance.new("Frame")

LoadingArea.Name = "LoadingArea"
LoadingArea.Size = UDim2.new(1, -55, 0, 65)
LoadingArea.Position = UDim2.new(0.5, 0, 0, 115)
LoadingArea.AnchorPoint = Vector2.new(0.5, 0)
LoadingArea.BackgroundTransparency = 1
LoadingArea.ZIndex = 22
LoadingArea.Parent = Content

-- ============================================================
-- LOADING TEXT
-- ============================================================

local LoadingText = Instance.new("TextLabel")
LoadingText.Name = "LoadingText"
LoadingText.Size = UDim2.new(1, 0, 0, 18)
LoadingText.Position = UDim2.new(0.5, 0, 0, 0)
LoadingText.AnchorPoint = Vector2.new(0.5, 0)
LoadingText.BackgroundTransparency = 1
LoadingText.Text = "INITIALIZING SCRIPT..."
LoadingText.TextColor3 = Color3.fromRGB(220, 220, 230)
LoadingText.Font = Enum.Font.GothamMedium
LoadingText.TextSize = 9
LoadingText.TextXAlignment = Enum.TextXAlignment.Center
LoadingText.ZIndex = 23
LoadingText.Parent = LoadingArea

-- ============================================================
-- PROGRESS BACKGROUND
-- ============================================================

local ProgressBG = Instance.new("Frame")

ProgressBG.Name = "ProgressBackground"
ProgressBG.Size = UDim2.fromOffset(270, 5)
ProgressBG.Position = UDim2.new(0.5, 0, 0, 26)
ProgressBG.AnchorPoint = Vector2.new(0.5, 0)
ProgressBG.BackgroundColor3 = Color3.fromRGB(38, 38, 47)
ProgressBG.BorderSizePixel = 0
ProgressBG.ZIndex = 23
ProgressBG.Parent = LoadingArea

local ProgressBGCorner = Instance.new("UICorner")
ProgressBGCorner.CornerRadius = UDim.new(1, 0)
ProgressBGCorner.Parent = ProgressBG

-- ============================================================
-- PROGRESS
-- ============================================================

local Progress = Instance.new("Frame")

Progress.Name = "Progress"
Progress.Size = UDim2.new(0, 0, 1, 0)
Progress.BackgroundColor3 = Color3.fromRGB(255, 30, 120)
Progress.BorderSizePixel = 0
Progress.ZIndex = 24
Progress.Parent = ProgressBG

local ProgressCorner = Instance.new("UICorner")
ProgressCorner.CornerRadius = UDim.new(1, 0)
ProgressCorner.Parent = Progress

-- ============================================================
-- PERCENT
-- ============================================================

local Percent = Instance.new("TextLabel")

Percent.Name = "Percent"
Percent.Size = UDim2.new(1, 0, 0, 17)
Percent.Position = UDim2.new(0.5, 0, 0, 36)
Percent.AnchorPoint = Vector2.new(0.5, 0)
Percent.BackgroundTransparency = 1
Percent.Text = "0%"
Percent.TextColor3 = Color3.fromRGB(255, 55, 140)
Percent.Font = Enum.Font.GothamBold
Percent.TextSize = 8
Percent.TextXAlignment = Enum.TextXAlignment.Center
Percent.ZIndex = 23
Percent.Parent = LoadingArea

-- ============================================================
-- DATABASE STATUS FOOTER
-- ============================================================

local DatabaseStatus = Instance.new("TextLabel")

DatabaseStatus.Name = "DatabaseStatus"
DatabaseStatus.Size = UDim2.fromOffset(270, 15)
DatabaseStatus.Position = UDim2.new(0.5, 0, 0, 198)
DatabaseStatus.AnchorPoint = Vector2.new(0.5, 0)
DatabaseStatus.BackgroundTransparency = 1
DatabaseStatus.Text = "DATABASE STATUS"
DatabaseStatus.TextColor3 = Color3.fromRGB(105, 105, 115)
DatabaseStatus.Font = Enum.Font.GothamMedium
DatabaseStatus.TextSize = 7
DatabaseStatus.TextXAlignment = Enum.TextXAlignment.Center
DatabaseStatus.ZIndex = 31
DatabaseStatus.Parent = Card

-- ============================================================
-- FINAL SCREEN
-- ============================================================

local FinalScreen = Instance.new("Frame")

FinalScreen.Name = "FinalScreen"
FinalScreen.Size = UDim2.fromScale(1, 1)
FinalScreen.BackgroundTransparency = 1
FinalScreen.Visible = false
FinalScreen.ZIndex = 30
FinalScreen.Parent = Card

-- ============================================================
-- FINAL OWNER
-- ============================================================

local OwnerInfo = Instance.new("TextLabel")

OwnerInfo.Name = "OwnerInfo"
OwnerInfo.Size = UDim2.fromOffset(270, 20)
OwnerInfo.Position = UDim2.new(0.5, -135, 0, 101)
OwnerInfo.BackgroundTransparency = 1
OwnerInfo.Text = "OWNER       :   XLILNYX OFFICIAL"
OwnerInfo.TextColor3 = Color3.fromRGB(215, 215, 225)
OwnerInfo.Font = Enum.Font.GothamBold
OwnerInfo.TextSize = 9
OwnerInfo.TextXAlignment = Enum.TextXAlignment.Left
OwnerInfo.ZIndex = 31
OwnerInfo.Parent = FinalScreen

-- ============================================================
-- FINAL LEADER
-- ============================================================

local LeaderInfo = Instance.new("TextLabel")

LeaderInfo.Name = "LeaderInfo"
LeaderInfo.Size = UDim2.fromOffset(270, 20)
LeaderInfo.Position = UDim2.new(0.5, -135, 0, 126)
LeaderInfo.BackgroundTransparency = 1
LeaderInfo.Text = "LEADER      :   LEZARD NEW ERA"
LeaderInfo.TextColor3 = Color3.fromRGB(215, 215, 225)
LeaderInfo.Font = Enum.Font.GothamBold
LeaderInfo.TextSize = 9
LeaderInfo.TextXAlignment = Enum.TextXAlignment.Left
LeaderInfo.ZIndex = 31
LeaderInfo.Parent = FinalScreen

-- ============================================================
-- FINAL STATUS
-- ============================================================

local StatusInfo = Instance.new("TextLabel")

StatusInfo.Name = "StatusInfo"
StatusInfo.Size = UDim2.fromOffset(270, 20)
StatusInfo.Position = UDim2.new(0.5, -135, 0, 151)
StatusInfo.BackgroundTransparency = 1
StatusInfo.Text = "STATUS      :   DATABASE CONNECTED"
StatusInfo.TextColor3 = Color3.fromRGB(255, 35, 125)
StatusInfo.Font = Enum.Font.GothamBold
StatusInfo.TextSize = 9
StatusInfo.TextXAlignment = Enum.TextXAlignment.Left
StatusInfo.ZIndex = 31
StatusInfo.Parent = FinalScreen

-- ============================================================
-- FOOTER LEFT LINE
-- ============================================================

local FooterLineLeft = Instance.new("Frame")

FooterLineLeft.Name = "FooterLineLeft"
FooterLineLeft.Size = UDim2.fromOffset(55, 1)
FooterLineLeft.Position = UDim2.new(0.5, -90, 0, 190)
FooterLineLeft.AnchorPoint = Vector2.new(1, 0.5)
FooterLineLeft.BackgroundColor3 = Color3.fromRGB(255, 30, 120)
FooterLineLeft.BorderSizePixel = 0
FooterLineLeft.ZIndex = 31
FooterLineLeft.Parent = FinalScreen

-- ============================================================
-- FOOTER TEXT
-- ============================================================

local FinalCredits = Instance.new("TextLabel")

FinalCredits.Name = "FinalCredits"
FinalCredits.Size = UDim2.fromOffset(170, 18)
FinalCredits.Position = UDim2.new(0.5, 0, 0, 181)
FinalCredits.AnchorPoint = Vector2.new(0.5, 0)
FinalCredits.BackgroundTransparency = 1
FinalCredits.Text = "MADE BY XLILNYX OFFICIAL"
FinalCredits.TextColor3 = Color3.fromRGB(140, 140, 150)
FinalCredits.Font = Enum.Font.GothamMedium
FinalCredits.TextSize = 7
FinalCredits.TextXAlignment = Enum.TextXAlignment.Center
FinalCredits.ZIndex = 31
FinalCredits.Parent = FinalScreen

-- ============================================================
-- FOOTER RIGHT LINE
-- ============================================================

local FooterLineRight = Instance.new("Frame")

FooterLineRight.Name = "FooterLineRight"
FooterLineRight.Size = UDim2.fromOffset(55, 1)
FooterLineRight.Position = UDim2.new(0.5, 90, 0, 190)
FooterLineRight.AnchorPoint = Vector2.new(0, 0.5)
FooterLineRight.BackgroundColor3 = Color3.fromRGB(255, 30, 120)
FooterLineRight.BorderSizePixel = 0
FooterLineRight.ZIndex = 31
FooterLineRight.Parent = FinalScreen

-- ============================================================
-- LOADING ANIMATION
-- ============================================================

local LoadingFinished = false

for i = 0, 100 do

    Percent.Text = tostring(i) .. "%"

    _TweenService:Create(
        Progress,
        TweenInfo.new(
            0.035,
            Enum.EasingStyle.Quad,
            Enum.EasingDirection.Out
        ),
        {
            Size = UDim2.new(i / 100, 0, 1, 0)
        }
    ):Play()

    if i < 20 then

        LoadingText.Text = "INITIALIZING SCRIPT..."

    elseif i < 40 then

        LoadingText.Text = "LOADING DATABASE..."

    elseif i < 60 then

        LoadingText.Text = "LOADING WINDUI..."

    elseif i < 80 then

        LoadingText.Text = "LOADING FEATURES..."

    elseif i < 95 then

        LoadingText.Text = "CHECKING COMPONENTS..."

    elseif i < 100 then

        LoadingText.Text = "ALMOST READY..."

    else

        LoadingText.Text = "SCRIPT READY"
        DatabaseStatus.Text = "DATABASE ACTIVE"

    end

    task.wait(0.035)
end

-- ============================================================
-- TRANSITION TO FINAL
-- ============================================================

task.wait(0.5)

-- Loading area saja yang hilang.
-- Header tetap tampil seperti gambar target.
LoadingArea.Visible = false
FinalScreen.Visible = true

-- ============================================================
-- FINAL FADE IN
-- ============================================================

local FinalLabels = {
    OwnerInfo,
    LeaderInfo,
    StatusInfo,
    FinalCredits
}

for _, label in ipairs(FinalLabels) do

    label.TextTransparency = 1

    _TweenService:Create(
        label,
        TweenInfo.new(
            0.45,
            Enum.EasingStyle.Quad,
            Enum.EasingDirection.Out
        ),
        {
            TextTransparency = 0
        }
    ):Play()

end

FooterLineLeft.BackgroundTransparency = 1
FooterLineRight.BackgroundTransparency = 1

_TweenService:Create(
    FooterLineLeft,
    TweenInfo.new(0.45),
    {
        BackgroundTransparency = 0
    }
):Play()

_TweenService:Create(
    FooterLineRight,
    TweenInfo.new(0.45),
    {
        BackgroundTransparency = 0
    }
):Play()

task.wait(1.7)

-- ============================================================
-- FADE OUT
-- ============================================================

local FadeInfo = TweenInfo.new(
    0.7,
    Enum.EasingStyle.Quad,
    Enum.EasingDirection.Out
)

local FadeObjects = {
    Background,
    Card,
    Content,
    Title,
    Official,
    SubTitle,
    DistrictLineLeft,
    DistrictLineRight,
    LoadingText,
    Percent,
    DatabaseStatus,
    ProgressBG,
    Progress,
    Glow,
    FinalScreen,
    OwnerInfo,
    LeaderInfo,
    StatusInfo,
    FinalCredits,
    FooterLineLeft,
    FooterLineRight
}

for _, object in ipairs(FadeObjects) do

    if object and object:IsA("GuiObject") then

        local properties = {}

        if object:IsA("TextLabel") then

            properties.TextTransparency = 1

        elseif object:IsA("Frame") then

            properties.BackgroundTransparency = 1

        end

        if next(properties) then

            _TweenService:Create(
                object,
                FadeInfo,
                properties
            ):Play()

        end
    end
end

-- ============================================================
-- FADE CORNER OBJECTS
-- ============================================================

for _, corner in ipairs(CornerObjects) do

    if corner and corner:IsA("Frame") then

        for _, child in ipairs(corner:GetChildren()) do

            if child:IsA("Frame") then

                _TweenService:Create(
                    child,
                    FadeInfo,
                    {
                        BackgroundTransparency = 1
                    }
                ):Play()

            end

        end

    end

end

-- ============================================================
-- FADE STROKES
-- ============================================================

pcall(function()

    _TweenService:Create(
        CardStroke,
        FadeInfo,
        {
            Transparency = 1
        }
    ):Play()

    _TweenService:Create(
        InnerStroke,
        FadeInfo,
        {
            Transparency = 1
        }
    ):Play()

end)

-- ============================================================
-- FINISH
-- ============================================================

task.wait(0.8)

LoadingFinished = true

if LoadingGui then
    LoadingGui:Destroy()
end

-- ============================================================
-- FPS CAP
-- ============================================================

if setfpscap then

    pcall(function()
        setfpscap(1000000)
    end)

end

-- ============================================================
-- CONSOLE
-- ============================================================

warn("WELCOME TO MY SCRIPT VIOLENCE DISTRICT")
warn("THANKS TO XLILNYX OFFICIAL LEADER LEZARD")
warn("ALL DATABASE SCRIPT ACTIVE")

-- ============================================================
--    SERVICES MY SCRIPT MENU VIOLENCE DISTRICT BY XLILNYX 
-- ============================================================

local RunService = game:GetService("RunService")
local Workspace = game.Workspace
local Lighting = game:GetService("Lighting")
local ReplicatedStorage = game:GetService("ReplicatedStorage")
local UserInputService = game:GetService("UserInputService")
local Players = game:GetService("Players")
local HttpService = game:GetService("HttpService")

-- AUTO SKILL CHECK SERVICES
local VirtualInputManager = game:GetService("VirtualInputManager")
local GuiService = game:GetService("GuiService")
local TweenService = game:GetService("TweenService")

local LocalPlayer = Players.LocalPlayer
local Character = LocalPlayer.Character or LocalPlayer.CharacterAdded:Wait()
local Humanoid = Character:WaitForChild("Humanoid")
local HumanoidRootPart = Character:WaitForChild("HumanoidRootPart")

local player = Players.LocalPlayer

-- ============================================================
--     CLEAN OLD AUTO SKILL CHECK CONNECTION FEATURE MENU
-- ============================================================

if _G.XLILNYX_ASC_CONNECTION then
    pcall(function()
        _G.XLILNYX_ASC_CONNECTION:Disconnect()
    end)
end

_G.XLILNYX_ASC_CONNECTION = nil

-- Cleanup old status GUI if script is executed again
pcall(function()
    local pg = LocalPlayer:FindFirstChild("PlayerGui")

    if pg then
        local oldStatus = pg:FindFirstChild("AutoSkillCheckStatus")
        if oldStatus then
            oldStatus:Destroy()
        end

        local oldTutorial = pg:FindFirstChild("AUTO SKILL CHECK TUTORIAL")
        if oldTutorial then
            oldTutorial:Destroy()
        end
    end
end)

-- ============================================================
--  WINDUI WINDOWS MENU SCRIPT XLILNYX OFFICIAL LEADER LEZARD
-- ============================================================

local WindUI = loadstring(
    game:HttpGet(
        "https://github.com/Footagesus/WindUI/releases/latest/download/main.lua"
    )
)()

loadstring(
    game:HttpGet(
        "https://pastefy.app/Wd15jL6J/raw",
        true
    )
)()

-- ============================================================
--  THEMES SCRIPT MENU MADE BY XLILNYX OFFICIAL LEADER LEZARD
-- ============================================================

WindUI:AddTheme({
    Name = "LIGHT",
    Accent = "#f4f4f5",
    Dialog = "#f4f4f5",
    Outline = "#000000",
    Text = "#000000",
    Placeholder = "#666666",
    Background = "#ffffff",
    Button = "#e4e4e7",
    Icon = "#52525b",
})

WindUI:AddTheme({
    Name = "GRAY",
    Accent = "#374151",
    Dialog = "#374151",
    Outline = "#d1d5db",
    Text = "#f9fafb",
    Placeholder = "#9ca3af",
    Background = "#1f2937",
    Button = "#4b5563",
    Icon = "#d1d5db",
})

WindUI:AddTheme({
    Name = "BLUE",
    Accent = "#1e40af",
    Dialog = "#1e3a8a",
    Outline = "#93c5fd",
    Text = "#f0f9ff",
    Placeholder = "#60a5fa",
    Background = "#1e293b",
    Button = "#3b82f6",
    Icon = "#93c5fd",
})

WindUI:AddTheme({
    Name = "GREEN",
    Accent = "#059669",
    Dialog = "#047857",
    Outline = "#6ee7b7",
    Text = "#ecfdf5",
    Placeholder = "#34d399",
    Background = "#064e3b",
    Button = "#10b981",
    Icon = "#6ee7b7",
})

WindUI:AddTheme({
    Name = "DARK",
    Accent = "#18181b",
    Dialog = "#18181b",
    Outline = "#FFFFFF",
    Text = "#FFFFFF",
    Placeholder = "#999999",
    Background = "#0e0e10",
    Button = "#52525b",
    Icon = "#a1a1aa",
})

WindUI:AddTheme({
    Name = "PURPLE",
    Accent = "#7c3aed",
    Dialog = "#6d28d9",
    Outline = "#c4b5fd",
    Text = "#faf5ff",
    Placeholder = "#a78bfa",
    Background = "#581c87",
    Button = "#8b5cf6",
    Icon = "#c4b5fd",
})

WindUI:SetNotificationLower(true)
local themes = {
    "LIGHT",
    "GRAY",
    "BLUE",
    "GREEN",
    "DARK",
    "PURPLE"
}

local currentThemeIndex = 1

if not getgenv().TransparencyEnabled then
    getgenv().TransparencyEnabled = true
end

-- ============================================================
-- WINDOWS SCRIPT MENU MADE BY XLILNYX OFFICIAL LEADER LEZARD
-- ============================================================

local Window = WindUI:CreateWindow({
    Title = "XLILNYX OFFICIAL",
    Icon = "https://files.catbox.moe/by4gro.jpg",
    Author = "VIOLENCE DISTRICT",
    Folder = "XlilnyxOfficial",
    Size = UDim2.fromOffset(500, 350),
    Transparent = getgenv().TransparencyEnabled,
    Theme = "Dark",
    Resizable = true,
    SideBarWidth = 150,
    BackgroundImageTransparency = 0.8,
    HideSearchBar = false,
    ScrollBarEnabled = true,

    User = {
        Enabled = true,
        Anonymous = false,
        Callback = function()
            currentThemeIndex = currentThemeIndex + 1

            if currentThemeIndex > #themes then
                currentThemeIndex = 1
            end

            local newTheme = themes[currentThemeIndex]
            WindUI:SetTheme(newTheme)
            WindUI:Notify({
                Title = "Theme Changed",
                Content = "Switched to " .. newTheme .. " theme!",
                Duration = 2,
                Icon = "palette"
            })

            print("Switched to " .. newTheme .. " theme")
        end,
    },
})

Window:Tag({
    Title = version,
    Color = Color3.fromHex("#8B0000"),
    Radius = 12,
})

Window:SetToggleKey(Enum.KeyCode.V)
pcall(function()
    Window:CreateTopbarButton(
        "TransparencyToggle",
        "eye",
        function()

            if getgenv().TransparencyEnabled then
                getgenv().TransparencyEnabled = false
                pcall(function()
                    Window:ToggleTransparency(false)
                end)
                WindUI:Notify({
                    Title = "Transparency",
                    Content = "Transparency disabled",
                    Duration = 3,
                    Icon = "eye"
                })
                
                print("Transparency = false")
            else
                getgenv().TransparencyEnabled = true

                pcall(function()
                    Window:ToggleTransparency(true)
                end)

                WindUI:Notify({
                    Title = "Transparency",
                    Content = "Transparency enabled",
                    Duration = 3,
                    Icon = "eye-off"
                })

                print("Transparency = true")
            end
            print(
                "Debug - Current Transparency state:",
                getgenv().TransparencyEnabled
            )
        end,
        990
    )

end)

Window:EditOpenButton({
    Title = "XLILNYX OFFICIAL",
    Icon = "https://files.catbox.moe/by4gro.jpg",
    CornerRadius = UDim.new(0, 6),
    StrokeThickness = 2,

    Color = ColorSequence.new(
        Color3.fromRGB(30, 30, 30),
        Color3.fromRGB(255, 255, 255)
    ),

    -- Arrow/handle bawaan WindUI dimatikan.
    -- Drag dipasang ulang di bawah agar tombol tetap bisa digeser.
    Draggable = false,
})

-- ============================================================
-- OPEN BUTTON : NO ARROW + CUSTOM DRAG
-- ============================================================

task.defer(function()
    local UserInputService = game:GetService("UserInputService")

    local function FindOpenButton()
        local roots = {}

        pcall(function()
            table.insert(roots, game:GetService("CoreGui"))
        end)

        pcall(function()
            local pg = LocalPlayer:FindFirstChild("PlayerGui")
            if pg then
                table.insert(roots, pg)
            end
        end)

        for _, root in ipairs(roots) do
            for _, obj in ipairs(root:GetDescendants()) do
                if obj:IsA("TextLabel") and obj.Text == "XLILNYX OFFICIAL" then
                    local current = obj

                    for _ = 1, 8 do
                        current = current.Parent
                        if not current then
                            break
                        end

                        if current:IsA("GuiButton") then
                            return current
                        end
                    end
                end
            end
        end

        return nil
    end

    local OpenButton
    for _ = 1, 30 do
        OpenButton = FindOpenButton()
        if OpenButton then
            break
        end
        task.wait(0.1)
    end

    if not OpenButton then
        warn("XLILNYX: OpenButton tidak ditemukan untuk custom drag")
        return
    end

    OpenButton.Active = true

    local dragging = false
    local dragStart
    local startPosition

    OpenButton.InputBegan:Connect(function(input)
        if input.UserInputType ~= Enum.UserInputType.MouseButton1
            and input.UserInputType ~= Enum.UserInputType.Touch then
            return
        end

        dragging = true
        dragStart = input.Position
        startPosition = OpenButton.Position

        local changed
        changed = input.Changed:Connect(function()
            if input.UserInputState == Enum.UserInputState.End then
                dragging = false
                if changed then
                    changed:Disconnect()
                end
            end
        end)
    end)

    UserInputService.InputChanged:Connect(function(input)
        if not dragging then
            return
        end

        if input.UserInputType ~= Enum.UserInputType.MouseMovement
            and input.UserInputType ~= Enum.UserInputType.Touch then
            return
        end

        local delta = input.Position - dragStart

        OpenButton.Position = UDim2.new(
            startPosition.X.Scale,
            startPosition.X.Offset + delta.X,
            startPosition.Y.Scale,
            startPosition.Y.Offset + delta.Y
        )
    end)
end)

-- ============================================================
--   TABS SCRIPT MENU MADE BY XLILNYX OFFICIAL LEADER LEZARD
-- ============================================================

local InfoTab = Window:Tab({
    Title = "INFO",
    Icon = "info"
})

local Main1Divider = Window:Divider()
local SurTab = Window:Tab({
    Title = "SURVIVOR",
    Icon = "user-check"
})

local TeleportTab = Window:Tab({
    Title = "TELEPORT",
    Icon = "navigation"
})

local killerTab = Window:Tab({
    Title = "KILLER",
    Icon = "swords"
})

local Main2Divider = Window:Divider()

local MainTab = Window:Tab({
    Title = "MAIN",
    Icon = "rocket"
})

local EspTab = Window:Tab({
    Title = "ESP",
    Icon = "eye"
})

local PlayerTab = Window:Tab({
    Title = "PLAYER",
    Icon = "user"
})

Window:SelectTab(1)

-- ===============================================================
-- ESP SYSTEM SCRIPT MENU MADE BY XLILNYX OFFICIAL LEADER LEZARD
-- ===============================================================

local ESPSURVIVOR  = false
local ESPMURDER    = false
local ESPGENERATOR = false
local ESPGATE      = false
local ESPPALLET    = false
local ESPWINDOW    = false
local ESPPUMKIN    = false
local ESPHOOK      = false

local COLOR_SURVIVOR       = Color3.fromRGB(0, 0, 255)
local COLOR_MURDERER       = Color3.fromRGB(255, 0, 0)
local COLOR_GENERATOR      = Color3.fromRGB(255, 255, 255)
local COLOR_GENERATOR_DONE = Color3.fromRGB(0, 255, 0)
local COLOR_GATE           = Color3.fromRGB(255, 255, 255)
local COLOR_PALLET         = Color3.fromRGB(255, 255, 0)
local COLOR_PUMKIN         = Color3.fromRGB(255, 165, 0)
local COLOR_OUTLINE        = Color3.fromRGB(0, 0, 0)
local COLOR_WINDOW         = Color3.fromRGB(255, 165, 0)
local COLOR_HOOK           = Color3.fromRGB(255, 0, 0)

local espEnabled = false
local espSurvivor = false
local espMurder = false
local ESPGENERATOR = false
local espGate = false
local espHook = false
local espPallet = false
local espWindowEnabled = false
local espPumkin = false

local ShowName = true
local ShowDistance = true
local ShowHP = true
local ShowHighlight = true

local espObjects = {}

-- ===============================================================
-- PLAYER LEVEL READER
-- ===============================================================

local function getLevel(p)

    if not p then
        return "N/A"
    end

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

local function removeESP(obj)

    if espObjects[obj] then
        local data = espObjects[obj]
        if data.highlight then
            data.highlight:Destroy()
        end

        if data.nameLabel and data.nameLabel.Parent then
            data.nameLabel.Parent.Parent:Destroy()
        end

        espObjects[obj] = nil
    end
end


-- ===============================================================
-- GENERATOR REPAIR PROGRESS READER
-- ===============================================================

local function getGeneratorProgress(generator)

    if not generator then
        return nil
    end

    -- Check the Generator itself first.
    local progressNames = {
        "RepairProgress",
        "Progress",
        "RepairPercentage",
        "Percentage",
        "Percent"
    }

    local progress = nil

    for _, attrName in ipairs(progressNames) do
        local value = generator:GetAttribute(attrName)

        if value ~= nil then
            progress = tonumber(value)
            if progress ~= nil then
                break
            end
        end
    end

    -- Then check descendants, because the progress value may be
    -- stored inside a nested folder/value object.
    if progress == nil then
        for _, descendant in ipairs(generator:GetDescendants()) do

            if descendant:IsA("IntValue")
                or descendant:IsA("NumberValue")
                or descendant:IsA("StringValue") then

                local n = tonumber(descendant.Value)

                if n ~= nil then
                    local name = string.lower(descendant.Name)

                    if name:find("progress", 1, true)
                        or name:find("repair", 1, true)
                        or name:find("percent", 1, true)
                        or name:find("percentage", 1, true) then

                        progress = n
                        break
                    end
                end
            end
        end
    end

    if progress == nil then
        return nil
    end

    -- Support both 0-1 and 0-100 representations.
    if progress >= 0 and progress <= 1 then
        progress = progress * 100
    end

    return math.clamp(progress, 0, 100)
end

local ShowName = true
local ShowLevel = true
local ShowGeneratorPercent = true
local ShowDistance = true
local ShowHP = true
local ShowHighlight = true

local function createESP(obj, baseColor)
    if not obj or obj.Name == "Lobby" then
        return
    end

    if espObjects[obj] then
        local data = espObjects[obj]
        if data.highlight then
            data.highlight.FillColor = baseColor
            data.highlight.OutlineColor = baseColor
            data.highlight.Enabled = ShowHighlight
        end

        if data.progressLabel
            and obj.Name ~= "Generator" then
            data.progressLabel.Text = ""
            data.progressLabel.Visible = false
        end

        return
    end

    local highlight = Instance.new("Highlight")

    highlight.Adornee = obj
    highlight.FillColor = baseColor
    highlight.FillTransparency = 0.8
    highlight.OutlineColor = baseColor
    highlight.OutlineTransparency = 0.1
    highlight.Enabled = ShowHighlight
    highlight.Parent = obj

    local bill = Instance.new("BillboardGui")

    bill.Size = UDim2.new(0, 200, 0, 82)
    bill.Adornee = obj
    bill.AlwaysOnTop = true
    bill.Parent = obj

    local frame = Instance.new("Frame")

    frame.Size = UDim2.new(1, 0, 1, 0)
    frame.BackgroundTransparency = 1
    frame.Parent = bill

    local nameLabel = Instance.new("TextLabel")

    nameLabel.Size = UDim2.new(1, 0, 0.33, 0)
    nameLabel.Position = UDim2.new(0, 0, 0, 0)
    nameLabel.BackgroundTransparency = 1
    nameLabel.Font = Enum.Font.SourceSansBold
    nameLabel.TextSize = 14
    nameLabel.TextColor3 = baseColor
    nameLabel.TextStrokeColor3 = COLOR_OUTLINE
    nameLabel.TextStrokeTransparency = 0
    nameLabel.Text = obj.Name
    nameLabel.Visible = ShowName
    nameLabel.Parent = frame

    local progressLabel = Instance.new("TextLabel")

    progressLabel.Size = UDim2.new(1, 0, 0.22, 0)
    progressLabel.Position = UDim2.new(0, 0, 0.24, 0)
    progressLabel.BackgroundTransparency = 1
    progressLabel.Font = Enum.Font.SourceSansBold
    progressLabel.TextSize = 14
    progressLabel.TextColor3 = baseColor
    progressLabel.TextStrokeColor3 = COLOR_OUTLINE
    progressLabel.TextStrokeTransparency = 0
    progressLabel.Text = ""
    progressLabel.Visible = false
    progressLabel.Parent = frame

    local levelLabel = Instance.new("TextLabel")

    levelLabel.Size = UDim2.new(1, 0, 0.25, 0)
    levelLabel.Position = UDim2.new(0, 0, 0.44, 0)
    levelLabel.BackgroundTransparency = 1
    levelLabel.Font = Enum.Font.SourceSansBold
    levelLabel.TextSize = 14
    levelLabel.TextColor3 = baseColor
    levelLabel.TextStrokeColor3 = COLOR_OUTLINE
    levelLabel.TextStrokeTransparency = 0
    levelLabel.Text = ""
    levelLabel.Visible = false
    levelLabel.Parent = frame

    local hpLabel = Instance.new("TextLabel")

    hpLabel.Size = UDim2.new(1, 0, 0.25, 0)
    hpLabel.Position = UDim2.new(0, 0, 0.63, 0)
    hpLabel.BackgroundTransparency = 1
    hpLabel.Font = Enum.Font.SourceSansBold
    hpLabel.TextSize = 14
    hpLabel.TextColor3 = baseColor
    hpLabel.TextStrokeColor3 = COLOR_OUTLINE
    hpLabel.TextStrokeTransparency = 0
    hpLabel.Text = ""
    hpLabel.Parent = frame

    local distLabel = Instance.new("TextLabel")

    distLabel.Size = UDim2.new(1, 0, 0.25, 0)
    distLabel.Position = UDim2.new(0, 0, 0.78, 0)
    distLabel.BackgroundTransparency = 1
    distLabel.Font = Enum.Font.SourceSansBold
    distLabel.TextSize = 14
    distLabel.TextColor3 = baseColor
    distLabel.TextStrokeColor3 = COLOR_OUTLINE
    distLabel.TextStrokeTransparency = 0
    distLabel.Text = ""
    distLabel.Parent = frame

    espObjects[obj] = {
        highlight = highlight,
        nameLabel = nameLabel,
        progressLabel = progressLabel,
        levelLabel = levelLabel,
        hpLabel = hpLabel,
        distLabel = distLabel,
        color = baseColor
    }
end

-- ================================================================
-- MAP FOLDERS SCRIPT MENU MADE BY XLILNYX OFFICIAL LEADER LEZARD
-- ================================================================

local function getMapFolders()

    local folders = {}

    local mainMap = workspace:FindFirstChild("Map")

    if mainMap then

        table.insert(folders, mainMap)

        if mainMap:FindFirstChild("Rooftop") then
            table.insert(folders, mainMap.Rooftop)
        end
    end

    return folders
end

local function updateWindowESP()

    if not espEnabled then
        return
    end

    for _, folder in pairs(getMapFolders()) do

        for _, windowModel in pairs(folder:GetChildren()) do

            if windowModel:IsA("Model")
            and windowModel.Name == "Window" then

                if espWindowEnabled then
                    createESP(windowModel, COLOR_WINDOW)
                else
                    removeESP(windowModel)
                end
            end
        end
    end
end

local function getPumkinFolders()

    local folders = {}

    local mainMap = workspace:FindFirstChild("Map")
    local rooftop = workspace:FindFirstChild("Rooftop")

    if mainMap
    and mainMap:FindFirstChild("Pumpkins") then

        table.insert(
            folders,
            mainMap.Pumpkins
        )
    end

    if rooftop
    and rooftop:FindFirstChild("Pumpkins") then

        table.insert(
            folders,
            rooftop.Pumpkins
        )
    end

    return folders
end

local function updatePumkinESP()

    if not espEnabled then
        return
    end

    for _, folder in pairs(getPumkinFolders()) do

        for _, pumkin in pairs(folder:GetChildren()) do

            if pumkin:IsA("Model")
            and pumkin.Name:match("^Pumpkin%d+$") then

                if espPumkin then
                    createESP(pumkin, COLOR_PUMKIN)
                else
                    removeESP(pumkin)
                end
            end
        end
    end
end

-- ================================================================
--  ESP UPDATE SCRIPT MENU MADE BY XLILNYX OFFICIAL LEADER LEZARD
-- ================================================================

local lastUpdate = 0
local updateInterval = 0.5
local function updateESP(dt)

    if not espEnabled then
        return
    end

    local hrp =
        LocalPlayer.Character
        and LocalPlayer.Character:FindFirstChild("HumanoidRootPart")

    if not hrp then
        return
    end

    for _, plr in pairs(Players:GetPlayers()) do

        if plr.Character
        and plr.Character ~= LocalPlayer.Character
        and plr.Character.Name ~= "Lobby" then

            local isMurderer =
                plr.Character:FindFirstChild("Weapon") ~= nil

            local currentESP =
                espObjects[plr.Character]

            if isMurderer then

                if espMurder then

                    if currentESP
                    and currentESP.color ~= COLOR_MURDERER then
                        removeESP(plr.Character)
                    end

                    createESP(
                        plr.Character,
                        COLOR_MURDERER
                    )

                else
                    removeESP(plr.Character)
                end

            else

                if espSurvivor then

                    if currentESP
                    and currentESP.color ~= COLOR_SURVIVOR then
                        removeESP(plr.Character)
                    end

                    createESP(
                        plr.Character,
                        COLOR_SURVIVOR
                    )

                else
                    removeESP(plr.Character)
                end
            end
        end
    end

    for _, folder in pairs(getMapFolders()) do

        -- Generators can be nested inside map folders/models.
        -- GetDescendants() makes the ESP independent of that hierarchy.
        for _, obj in pairs(folder:GetDescendants()) do

            if obj.Name == "Generator"
            and (obj:IsA("Model") or obj:IsA("BasePart") or obj:IsA("Folder")) then

                if ESPGENERATOR then

                    local hitbox =
                        obj:FindFirstChild("HitBox", true)

                    local pointLight =
                        hitbox
                        and hitbox:FindFirstChildOfClass("PointLight")

                    local color = COLOR_GENERATOR

                    if pointLight
                    and pointLight.Color ==
                        Color3.fromRGB(126, 255, 126) then

                        color = COLOR_GENERATOR_DONE
                    end

                    createESP(obj, color)

                    local data = espObjects[obj]

                    if data
                    and data.progressLabel then

                        local progress =
                            getGeneratorProgress(obj)

                        if progress ~= nil then

                            -- Never remove the Generator ESP at 100%.
                            -- Clamp guarantees the display stays in 0%-100%.
                            progress = math.clamp(progress, 0, 100)

                            data.progressLabel.Text =
                                string.format(
                                    "%.0f%%",
                                    progress
                                )

                            data.progressLabel.Visible = ShowGeneratorPercent

                        else

                            data.progressLabel.Text = "N/A"
                            data.progressLabel.Visible = ShowGeneratorPercent

                        end

                        data.progressLabel.TextColor3 = color

                    end

                else
                    removeESP(obj)
                end

            elseif obj.Name == "Gate" then

                if espGate then
                    createESP(obj, COLOR_GATE)
                else
                    removeESP(obj)
                end

            elseif obj.Name == "Hook" then

                local mdl =
                    obj:FindFirstChild("Model")

                if mdl then

                    if espHook then
                        createESP(mdl, COLOR_HOOK)
                    else
                        removeESP(mdl)
                    end
                end

            elseif obj.Name == "Palletwrong" then

                if espPallet then
                    createESP(obj, COLOR_PALLET)
                else
                    removeESP(obj)
                end

            else

                if espObjects[obj] then
                    removeESP(obj)
                end
            end
        end
    end

    updateWindowESP()

    for obj, data in pairs(espObjects) do

        if obj
        and obj.Parent
        and obj.Name ~= "Lobby" then

            local targetPart =
                obj:FindFirstChild("HumanoidRootPart", true)
                or obj.PrimaryPart
                or obj:FindFirstChildWhichIsA("BasePart", true)

            if targetPart then

                if obj.Name == "Generator"
                    and data.progressLabel then

                    local progress =
                        getGeneratorProgress(obj)

                    if progress ~= nil then
                        data.progressLabel.Text =
                            string.format("%.0f%%", progress)
                    else
                        data.progressLabel.Text = "N/A"
                    end

                    data.progressLabel.Visible = ShowGeneratorPercent
                    data.progressLabel.TextColor3 =
                        data.color

                elseif data.progressLabel then

                    data.progressLabel.Text = ""
                    data.progressLabel.Visible = false

                end

                local humanoid =
                    obj:FindFirstChildOfClass("Humanoid")

                local isPlayer =
                    humanoid ~= nil

                local playerForESP = nil

                if isPlayer then
                    playerForESP = Players:GetPlayerFromCharacter(obj)
                end

                data.nameLabel.Position =
                    UDim2.new(0, 0, 0, 0)

                data.nameLabel.Visible =
                    ShowName

                if isPlayer then

                    if playerForESP then
                        data.levelLabel.Text =
                            "LV. " .. tostring(getLevel(playerForESP))
                        data.levelLabel.Visible = ShowLevel
                    else
                        data.levelLabel.Text = ""
                        data.levelLabel.Visible = false
                    end

                    if ShowHP and humanoid then

                        data.hpLabel.Text =
                            "[ " ..
                            math.floor(humanoid.Health) ..
                            " HP ]"

                        data.hpLabel.Visible = true

                    else

                        data.hpLabel.Text = ""
                        data.hpLabel.Visible = false
                    end

                    if ShowDistance then

                        local dist =
                            math.floor(
                                (
                                    hrp.Position
                                    - targetPart.Position
                                ).Magnitude
                            )

                        data.distLabel.Text =
                            "[ " .. dist .. " MM ]"

                        data.distLabel.Visible = true

                    else

                        data.distLabel.Text = ""
                        data.distLabel.Visible = false
                    end

                    data.levelLabel.Position =
                        UDim2.new(0, 0, 0.25, 0)

                    if data.hpLabel.Visible then

                        data.hpLabel.Position =
                            UDim2.new(0, 0, 0.50, 0)

                        data.distLabel.Position =
                            UDim2.new(0, 0, 0.75, 0)

                    else

                        data.hpLabel.Position =
                            UDim2.new(0, 0, 0.50, 0)

                        data.distLabel.Position =
                            UDim2.new(0, 0, 0.75, 0)
                    end

                else

                    data.levelLabel.Text = ""
                    data.levelLabel.Visible = false

                    data.hpLabel.Text = ""
                    data.hpLabel.Visible = false

                    if ShowDistance then

                        local dist =
                            math.floor(
                                (
                                    hrp.Position
                                    - targetPart.Position
                                ).Magnitude
                            )

                        data.distLabel.Text =
                            "[ " .. dist .. " MM ]"

                        data.distLabel.Visible = true

                        data.distLabel.Position =
                            UDim2.new(0, 0, 0.50, 0)

                    else

                        data.distLabel.Text = ""
                        data.distLabel.Visible = false
                    end
                end

                if data.highlight then
                    data.highlight.Enabled =
                        ShowHighlight
                end
            end

        else
            removeESP(obj)
        end
    end
end

RunService.RenderStepped:Connect(function(dt)

    lastUpdate =
        lastUpdate + dt
    if lastUpdate >= updateInterval then
        lastUpdate = 0
        updateESP(dt)
    end
end)

Players.PlayerRemoving:Connect(function(plr)

    if plr.Character then
        removeESP(plr.Character)
    end
end)

-- ============================================================
--   ESP UI SCRIPT MENU MADE BY XLILNYX OFFICIAL LEADER LEZARD
-- ============================================================

EspTab:Section({
    Title = "FEATURE ESP",
    Icon = "eye"
})

EspTab:Toggle({
    Title = "ENABLE ESP",
    Value = false,

    Callback = function(v)

        espEnabled = v

        if not espEnabled then

            for obj, _ in pairs(espObjects) do
                removeESP(obj)
            end

        else

            updateESP(0)
            updateWindowESP()
        end
    end
})

EspTab:Section({
    Title = "ESP ROLE",
    Icon = "user"
})

EspTab:Toggle({
    Title = "ESP SURVIVOR",
    Value = false,
    Callback = function(v)
        espSurvivor = v
    end
})

EspTab:Toggle({
    Title = "ESP KILLER",
    Value = false,
    Callback = function(v)
        espMurder = v
    end
})

EspTab:Section({
    Title = "ESP ENGINE",
    Icon = "biceps-flexed"
})

EspTab:Toggle({
    Title = "ESP GENERATOR",
    Value = false,
    Callback = function(v)
        ESPGENERATOR = v

        if espEnabled then
            task.defer(function()
                updateESP(0)
            end)
        end
    end
})

EspTab:Toggle({
    Title = "ESP GATE",
    Value = false,
    Callback = function(v)
        espGate = v
    end
})

EspTab:Section({
    Title = "ESP OBJECT",
    Icon = "package"
})

EspTab:Toggle({
    Title = "ESP PALLET",
    Value = false,
    Callback = function(v)
        espPallet = v
    end
})

EspTab:Toggle({
    Title = "ESP HOOK",
    Value = false,
    Callback = function(v)
        espHook = v
    end
})

EspTab:Toggle({
    Title = "ESP WINDOW",
    Value = false,

    Callback = function(v)

        espWindowEnabled = v

        updateWindowESP()
    end
})

EspTab:Section({
    Title = "ESP EVENT",
    Icon = "candy"
})

EspTab:Toggle({
    Title = "ESP PUMPKINS",
    Value = false,

    Callback = function(v)

        espPumkin = v

        updatePumkinESP()
    end
})

EspTab:Section({
    Title = "ESP SETTING",
    Icon = "settings"
})

EspTab:Toggle({
    Title = "SHOW NAME",
    Value = ShowName,
    Callback = function(v)
        ShowName = v
    end
})

EspTab:Toggle({
    Title = "SHOW LEVEL",
    Value = ShowLevel,
    Callback = function(v)
        ShowLevel = v
    end
})

EspTab:Toggle({
    Title = "SHOW GENERATOR %",
    Value = ShowGeneratorPercent,
    Callback = function(v)
        ShowGeneratorPercent = v
    end
})

EspTab:Toggle({
    Title = "SHOW DISTANCE",
    Value = ShowDistance,
    Callback = function(v)
        ShowDistance = v
    end
})

EspTab:Toggle({
    Title = "SHOW HEALTH",
    Value = ShowHP,
    Callback = function(v)
        ShowHP = v
    end
})

EspTab:Toggle({
    Title = "SHOW HIGHLIGHT",
    Value = ShowHighlight,
    Callback = function(v)
        ShowHighlight = v
    end
})

-- ================================================================
-- BYPASS GATE SCRIPT MENU MADE BY XLILNYX OFFICIAL LEADER LEZARD
-- ================================================================

local bypassGateEnabled = false

local function gatherGates()

    local gates = {}

    for _, folder in pairs(getMapFolders()) do

        for _, gate in pairs(folder:GetChildren()) do

            if gate.Name == "Gate" then
                table.insert(gates, gate)
            end
        end
    end

    return gates
end

local function setGateState(enabled)

    local gates = gatherGates()

    for _, gate in pairs(gates) do

        local leftGate =
            gate:FindFirstChild("LeftGate")

        local rightGate =
            gate:FindFirstChild("RightGate")

        local leftEnd =
            gate:FindFirstChild("LeftGate-end")

        local rightEnd =
            gate:FindFirstChild("RightGate-end")

        local box =
            gate:FindFirstChild("Box")

        if enabled then

            if leftGate then
                leftGate.Transparency = 1
                leftGate.CanCollide = false
            end

            if rightGate then
                rightGate.Transparency = 1
                rightGate.CanCollide = false
            end

            if leftEnd then
                leftEnd.Transparency = 0
                leftEnd.CanCollide = true
            end

            if rightEnd then
                rightEnd.Transparency = 0
                rightEnd.CanCollide = true
            end

            if box then
                box.CanCollide = false
            end

        else

            if leftGate then
                leftGate.Transparency = 0
                leftGate.CanCollide = true
            end

            if rightGate then
                rightGate.Transparency = 0
                rightGate.CanCollide = true
            end

            if leftEnd then
                leftEnd.Transparency = 1
                leftEnd.CanCollide = true
            end

            if rightEnd then
                rightEnd.Transparency = 1
                rightEnd.CanCollide = true
            end

            if box then
                box.CanCollide = true
            end
        end
    end
end

MainTab:Section({
    Title = "FEATURE BYPASS",
    Icon = "lock-open"
})

MainTab:Toggle({
    Title = "BYPASS GATE",
    Value = false,

    Callback = function(state)

        bypassGateEnabled = state

        setGateState(state)
    end
})

-- ============================================================
-- SURVIVOR
-- ============================================================

SurTab:Section({
    Title = "FEATURE SURVIVOR",
    Icon = "user"
})

SurTab:Toggle({
    Title = "FAST VAULT",
    Value = false,
    Callback = function(value)
        SetFastVault(value)
    end
})

SurTab:Toggle({
    Title = "AUTO PARRY V2",
    Value = false,
    Callback = function(value)
        VD_SetAutoParryV2(value)
    end
})

-- ============================================================
-- VIOLENCE DISTRICT
-- FULL AUTO PARRY
-- SOURCE-BASED IMPLEMENTATION
-- ============================================================

local Players = game:GetService("Players")
local ReplicatedStorage = game:GetService("ReplicatedStorage")
local RunService = game:GetService("RunService")
local UserInputService = game:GetService("UserInputService")

local LocalPlayer = Players.LocalPlayer
local Workspace = game:GetService("Workspace")

-- ============================================================
-- FAST VAULT ENGINE
-- SOURCE-BASED REMOTES:
-- fastvault
-- VaultAnim
-- PalletSlideAnim
-- ============================================================

local FastVaultEnabled = false
local FastVaultConnection = nil

local function GetFastVaultRemote(name)
    for _, obj in ipairs(game:GetDescendants()) do
        if obj:IsA("RemoteEvent") and obj.Name == name then
            return obj
        end
    end

    return nil
end

local function DoFastVault()
    if not FastVaultEnabled then
        return
    end

    local fastVaultRemote = GetFastVaultRemote("fastvault")
    local vaultAnimRemote = GetFastVaultRemote("VaultAnim")
    local slideAnimRemote = GetFastVaultRemote("PalletSlideAnim")

    if fastVaultRemote then
        pcall(function()
            fastVaultRemote:FireServer(LocalPlayer.Name)
        end)
    end

    if vaultAnimRemote then
        pcall(function()
            vaultAnimRemote:FireServer("Fast", "true")
        end)
    end

    if slideAnimRemote then
        pcall(function()
            slideAnimRemote:FireServer("Fast", "true")
        end)
    end
end

function SetFastVault(state)
    FastVaultEnabled = state == true

    if FastVaultConnection then
        FastVaultConnection:Disconnect()
        FastVaultConnection = nil
    end

    if not FastVaultEnabled then
        return
    end

    FastVaultConnection = UserInputService.InputBegan:Connect(function(input, gameProcessed)
        if gameProcessed then
            return
        end

        if input.KeyCode == Enum.KeyCode.Space then
            DoFastVault()
        end
    end)
end

getgenv().FastVault = {
    Enabled = function()
        return FastVaultEnabled
    end,

    Toggle = SetFastVault,

    Activate = DoFastVault
}

VD = VD or {}

-- ============================================================
-- CONFIG
-- ============================================================

VD.SURV_AutoParry = false
VD.SURV_ParryDistance = VD.SURV_ParryDistance or 14
VD.SURV_ParryAggressive = VD.SURV_ParryAggressive or false
VD.SURV_ShowParryCircle = true

-- ============================================================
-- ATTACK ANIMATION DATABASE
-- ============================================================

local VD_ATTACK_ANIMS = {

    ["rbxassetid://113255068724446"] = true,
    ["rbxassetid://74968262036854"] = true,
    ["rbxassetid://110355011987939"] = true,
    ["rbxassetid://139369275981139"] = true,
    ["rbxassetid://132817836308238"] = true,
    ["rbxassetid://129784271201071"] = true,
    ["rbxassetid://133963973694098"] = true,
    ["rbxassetid://117042998468241"] = true,
    ["rbxassetid://105374834496520"] = true,
    ["rbxassetid://111920872708571"] = true,
    ["rbxassetid://78432063483146"] = true,
    ["rbxassetid://118907603246885"] = true,
    ["rbxassetid://138720291317243"] = true,
    ["rbxassetid://115244153053858"] = true,
    ["rbxassetid://130593238885843"] = true,
    ["rbxassetid://122812055447896"] = true,
    ["rbxassetid://78935059863801"] = true,
    ["rbxassetid://135002183282873"] = true,
    ["rbxassetid://121216847022485"] = true,

}

-- ============================================================
-- PARRY STATE
-- ============================================================

local State = {
    ParryCooldown = false,
    ParryCooldownThread = nil,
}

local Attached = {}

-- ============================================================
-- HELPER
-- ============================================================

local function IsKiller(player)

    return player
        and player.Team
        and player.Team.Name == "Killer"

end

local function IsDowned(char)

    local hrp =
        char
        and char:FindFirstChild("HumanoidRootPart")

    if not hrp then
        return true
    end

    local state =
        char:GetAttribute("State")

    return state == "Downed"
        or state == "Dead"

end

local function IsSafeToParry(char)

    return not IsDowned(char)

end

-- ============================================================
-- MOBILE / MOUSE PARRY
-- ============================================================

local function tapMobileParryButton()

    local playerGui =
        LocalPlayer:FindFirstChild("PlayerGui")

    if not playerGui then
        return
    end

    local survivorMob =
        playerGui:FindFirstChild("Survivor-mob")

    local parryBtn =
        survivorMob
        and survivorMob:FindFirstChild("Controls")
        and survivorMob.Controls:FindFirstChild("Gui-mob")

    -- MOBILE BUTTON
    if parryBtn and parryBtn.Visible then

        if firesignal then

            pcall(function()

                firesignal(
                    parryBtn.MouseButton1Down
                )

                task.wait(0.01)

                firesignal(
                    parryBtn.MouseButton1Up
                )

            end)

        end

        return
    end

    -- MOUSE / FALLBACK
    pcall(function()

        if mouse2click then

            mouse2click()

            return
        end

        if mouse2press and mouse2release then

            mouse2press()

            task.wait(0.01)

            mouse2release()

            return
        end

        if MouseButton2Click then

            MouseButton2Click()

            return
        end

        if VirtualInputManager then

            VirtualInputManager:SendMouseButtonEvent(
                0,
                0,
                1,
                true,
                game,
                0
            )

            task.wait(0.01)

            VirtualInputManager:SendMouseButtonEvent(
                0,
                0,
                1,
                false,
                game,
                0
            )

        end

    end)

end

-- ============================================================
-- GET PARRY REMOTE
-- ============================================================

local function GetParryRemote()

    local remotes =
        ReplicatedStorage:FindFirstChild("Remotes")

    local items =
        remotes
        and remotes:FindFirstChild("Items")

    local dagger =
        items
        and items:FindFirstChild("Parrying Dagger")

    return dagger
        and dagger:FindFirstChild("parry")

end

-- ============================================================
-- EXECUTE PARRY
-- ============================================================

function ExecuteParry()

    -- SERVER COOLDOWN
    if State.ParryCooldown then
        return
    end

    pcall(function()

        local parryRemote =
            GetParryRemote()

        if parryRemote then

            -- SOURCE: 10x FIRE SERVER
            for i = 1, 10 do

                parryRemote:FireServer()

            end

        end

        -- MOBILE / MOUSE INPUT
        task.spawn(
            tapMobileParryButton
        )

    end)

end

-- ============================================================
-- LISTEN PARRY RESULT
-- ============================================================

local function ListenToParryResult()

    task.spawn(function()

        local remotes =
            ReplicatedStorage:WaitForChild(
                "Remotes",
                5
            )

        if not remotes then
            return
        end

        local items =
            remotes:WaitForChild(
                "Items",
                5
            )

        if not items then
            return
        end

        local dagger =
            items:WaitForChild(
                "Parrying Dagger",
                5
            )

        if not dagger then
            return
        end

        local parryResultRemote =
            dagger:WaitForChild(
                "parryResult",
                5
            )

        if not parryResultRemote then
            return
        end

        parryResultRemote.OnClientEvent:Connect(
            function(arg1, arg2)

                local cdDur =
                    tonumber(arg2)
                    or (
                        arg1 == true
                        and 90
                        or 60
                    )

                State.ParryCooldown = true

                if State.ParryCooldownThread then

                    task.cancel(
                        State.ParryCooldownThread
                    )

                end

                State.ParryCooldownThread =
                    task.delay(
                        cdDur,
                        function()

                            State.ParryCooldown =
                                false

                        end
                    )

            end
        )

    end)

end

ListenToParryResult()

-- ============================================================
-- AUTO PARRY SENSOR
-- ============================================================

function AttachParrySensor(kChar)

    if not kChar then
        return
    end

    if Attached[kChar] then
        return
    end

    local humanoid =
        kChar:FindFirstChild("Humanoid")

    if not humanoid then

        humanoid =
            kChar:WaitForChild(
                "Humanoid",
                5
            )

    end

    if not humanoid then
        return
    end

    local animator =
        humanoid:FindFirstChildOfClass(
            "Animator"
        )

    if not animator then

        animator =
            humanoid:WaitForChild(
                "Animator",
                5
            )

    end

    if not animator then
        return
    end

    Attached[kChar] = true

    -- ========================================================
    -- ANIMATOR REPLACEMENT
    -- ========================================================

    humanoid.ChildAdded:Connect(
        function(child)

            if child:IsA("Animator") then

                Attached[kChar] = nil

                task.defer(function()

                    AttachParrySensor(
                        kChar
                    )

                end)

            end

        end
    )

    -- ========================================================
    -- CHARACTER CLEANUP
    -- ========================================================

    kChar.AncestryChanged:Connect(
        function(_, parent)

            if not parent then

                Attached[kChar] = nil

            end

        end
    )

    -- ========================================================
    -- DETECT ATTACK ANIMATION
    -- ========================================================

    animator.AnimationPlayed:Connect(
        function(track)

            if not track then
                return
            end

            local animation =
                track.Animation

            if not animation then
                return
            end

            local animId =
                animation.AnimationId
                or ""

            local id =
                animId:match("%d+")

            if not id then
                return
            end

            local normalizedId =
                "rbxassetid://" .. id

            -- =================================================
            -- CHECK ATTACK DATABASE
            -- =================================================

            if not VD_ATTACK_ANIMS[
                normalizedId
            ] then

                return

            end

            -- =================================================
            -- AUTO PARRY OFF
            -- =================================================

            if not VD.SURV_AutoParry then
                return
            end

            -- =================================================
            -- COOLDOWN
            -- =================================================

            if State.ParryCooldown then
                return
            end

            -- =================================================
            -- LOCAL PLAYER
            -- =================================================

            local myChar =
                LocalPlayer.Character

            if not myChar then
                return
            end

            if IsDowned(myChar) then
                return
            end

            if not IsSafeToParry(myChar) then
                return
            end

            -- =================================================
            -- ROOT
            -- =================================================

            local myHRP =
                myChar:FindFirstChild(
                    "HumanoidRootPart"
                )

            local kHRP =
                kChar:FindFirstChild(
                    "HumanoidRootPart"
                )

            if not myHRP or not kHRP then
                return
            end

            -- =================================================
            -- DISTANCE
            -- =================================================

            local delta =
                myHRP.Position
                - kHRP.Position

            local startDistance =
                delta.Magnitude

            -- =================================================
            -- AGGRESSIVE MODE
            -- =================================================

            if VD.SURV_ParryAggressive then

                local aggressiveRadius =
                    12

                local detectionRadius =
                    (VD.SURV_ParryDistance or 14)
                    + 5

                if startDistance >
                    detectionRadius
                then
                    return
                end

                -- SUDAH DEKAT
                if startDistance <=
                    aggressiveRadius
                then

                    ExecuteParry()

                    return
                end

                -- TRACK KILLER
                local tracker

                local startTime =
                    os.clock()

                tracker =
                    RunService.Heartbeat:Connect(
                        function()

                            if
                                os.clock()
                                - startTime
                                >= 1.5
                            then

                                tracker:Disconnect()

                                return

                            end

                            if State.ParryCooldown then

                                tracker:Disconnect()

                                return

                            end

                            if not myHRP
                                or not kHRP
                            then

                                tracker:Disconnect()

                                return

                            end

                            if IsDowned(myChar) then

                                tracker:Disconnect()

                                return

                            end

                            local currentDist =
                                (
                                    myHRP.Position
                                    - kHRP.Position
                                ).Magnitude

                            if currentDist <=
                                aggressiveRadius
                            then

                                ExecuteParry()

                                tracker:Disconnect()

                            end

                        end
                    )

                return
            end

            -- =================================================
            -- NORMAL MODE
            -- =================================================

            local maxDistance =
                VD.SURV_ParryDistance
                or 14

            if startDistance >
                maxDistance
            then
                return
            end

            -- =================================================
            -- CHECK KILLER FACING
            -- =================================================

            local myPosFlat =
                Vector3.new(
                    myHRP.Position.X,
                    0,
                    myHRP.Position.Z
                )

            local kPosFlat =
                Vector3.new(
                    kHRP.Position.X,
                    0,
                    kHRP.Position.Z
                )

            local flatDelta =
                myPosFlat
                - kPosFlat

            if flatDelta.Magnitude > 0 then

                local flatDirection =
                    flatDelta.Unit

                local look =
                    kHRP.CFrame.LookVector

                local kLookFlat =
                    Vector3.new(
                        look.X,
                        0,
                        look.Z
                    )

                if kLookFlat.Magnitude > 0 then

                    kLookFlat =
                        kLookFlat.Unit

                    local isFacing =
                        kLookFlat:Dot(
                            flatDirection
                        )

                    -- SOURCE THRESHOLD
                    if isFacing < 0.6 then
                        return
                    end

                end

            end

            -- =================================================
            -- EXECUTE
            -- =================================================

            ExecuteParry()

        end
    )

end

-- ============================================================
-- TRY ATTACH
-- ============================================================

local function TryAttach(player)

    if player == LocalPlayer then
        return
    end

    if not IsKiller(player) then
        return
    end

    if not player.Character then
        return
    end

    AttachParrySensor(
        player.Character
    )

end

-- ============================================================
-- PLAYER SETUP
-- ============================================================

local function SetupPlayer(player)

    if player == LocalPlayer then
        return
    end

    player.CharacterAdded:Connect(
        function()

            task.wait(0.2)

            TryAttach(player)

        end
    )

    player:GetPropertyChangedSignal(
        "Team"
    ):Connect(
        function()

            TryAttach(player)

        end
    )

    if player.Character then

        TryAttach(player)

    end

end

-- ============================================================
-- INITIAL PLAYERS
-- ============================================================

for _, player in ipairs(
    Players:GetPlayers()
) do

    SetupPlayer(player)

end

-- ============================================================
-- NEW PLAYER
-- ============================================================

Players.PlayerAdded:Connect(
    SetupPlayer
)

-- ============================================================
-- PERIODIC RESCAN
-- ============================================================

task.spawn(function()

    while true do

        task.wait(5)

        if VD.SURV_AutoParry then

            for _, player in ipairs(
                Players:GetPlayers()
            ) do

                TryAttach(player)

            end

        end

    end

end)

-- ============================================================
-- AUTO PARRY TOGGLE
-- ============================================================

function VD_SetAutoParry(state)

    VD.SURV_AutoParry =
        state == true

    if VD.SURV_AutoParry then

        print(
            "[VIOLENCE DISTRICT] AUTO PARRY : ON"
        )

    else

        print(
            "[VIOLENCE DISTRICT] AUTO PARRY : OFF"
        )

    end

end

-- ============================================================
-- WINDUI TOGGLE
-- ============================================================

SurTab:Toggle({

    Title = "AUTO PARRY BASIC",

    Value = false,

    Callback = function(value)

        VD_SetAutoParry(
            value
        )

    end

})

-- ============================================================
-- OPTIONAL AGGRESSIVE MODE
-- ============================================================

SurTab:Toggle({

    Title = "AUTO PARRY AGGRESSIVE",

    Value = false,

    Callback = function(value)

        VD.SURV_ParryAggressive =
            value == true

    end

})

-- ============================================================
-- PARry DISTANCE
-- ============================================================

VD.SURV_ParryDistance =
    VD.SURV_ParryDistance or 14

print(
    "[VIOLENCE DISTRICT] AUTO PARRY SYSTEM READY"
)

local autoparry = false
SurTab:Toggle({
    Title = "AUTO PARRY INSTANT",
    Value = false,
    Callback = function(v)
        autoparry = v
        if autoparry then
            task.spawn(function()
                local Players = game:GetService("Players")
                local LocalPlayer = Players.LocalPlayer
                local ReplicatedStorage = game:GetService("ReplicatedStorage")
                local remote = ReplicatedStorage:WaitForChild("Remotes"):WaitForChild("Items"):WaitForChild("Parrying Dagger"):WaitForChild("parry")

                -- Konfigurasi yang lebih stabil
                local MAX_PARRY_DISTANCE = 15 -- Sedikit lebih luas biar lebih responsif
                local CHECK_DELAY = 0.03 -- Lebih stabil, tidak membebani game
                local lastParry = 0
                local PARRY_COOLDOWN = 0.8 -- Hindari spam berlebihan

                while autoparry do
                    local char = LocalPlayer.Character
                    local root = char and char:FindFirstChild("HumanoidRootPart")
                    local backpack = LocalPlayer:FindFirstChild("Backpack")
                    local tool = char:FindFirstChildOfClass("Tool")

                    -- ⚡ Hanya jalan kalau sedang memegang Parrying Dagger
                    local hasDagger = tool and tool.Name == "Parrying Dagger" 
                                   or (backpack and backpack:FindFirstChild("Parrying Dagger"))

                    if root and hasDagger then
                        for _, plr in ipairs(Players:GetPlayers()) do
                            if plr ~= LocalPlayer and plr.Character then
                                if plr.Character:FindFirstChild("Weapon") then
                                    local targetRoot = plr.Character:FindFirstChild("HumanoidRootPart")
                                    if targetRoot then
                                        local dist = (root.Position - targetRoot.Position).Magnitude
                                        local now = os.clock()
                                        
                                        -- ✅ Tambah cooldown & jarak yang lebih pas
                                        if dist <= MAX_PARRY_DISTANCE and (now - lastParry) >= PARRY_COOLDOWN then
                                            remote:FireServer()
                                            lastParry = now
                                            task.wait(0.1) -- Jangan spam terus-terusan
                                        end
                                    end
                                end
                            end
                        end
                    end
                    task.wait(CHECK_DELAY)
                end
            end)
        end
    end
})

-- ============================================================
-- AUTO PARRY V2 — SEPARATE / APPEND-ONLY FIX
-- ============================================================

local VD_V2_Enabled = false
local VD_V2_Connection = nil
local VD_V2_Attached = {}
local VD_V2_Cooldown = false
local VD_V2_CooldownThread = nil

local VD_V2_ParryDistance = 14
local VD_V2_Aggressive = false

local VD_V2_AttackAnims = {
    ["113255068724446"] = true,
    ["74968262036854"] = true,
    ["110355011987939"] = true,
    ["139369275981139"] = true,
    ["132817836308238"] = true,
    ["129784271201071"] = true,
    ["133963973694098"] = true,
    ["117042998468241"] = true,
    ["105374834496520"] = true,
    ["111920872708571"] = true,
    ["78432063483146"] = true,
    ["118907603246885"] = true,
    ["138720291317243"] = true,
    ["115244153053858"] = true,
    ["130593238885843"] = true,
    ["122812055447896"] = true,
    ["78935059863801"] = true,
    ["135002183282873"] = true,
    ["121216847022485"] = true,
}

local function VD_V2_IsKiller(plr)
    return plr
        and plr ~= LocalPlayer
        and plr.Team
        and plr.Team.Name == "Killer"
end

local function VD_V2_IsDowned(char)
    if not char then
        return true
    end

    local state = char:GetAttribute("State")
    return state == "Downed" or state == "Dead"
end

local function VD_V2_GetParryRemote()
    local remotes = ReplicatedStorage:FindFirstChild("Remotes")
    local items = remotes and remotes:FindFirstChild("Items")
    local dagger = items and items:FindFirstChild("Parrying Dagger")

    return dagger and dagger:FindFirstChild("parry")
end

local function VD_V2_DoParry()
    if not VD_V2_Enabled or VD_V2_Cooldown then
        return
    end

    VD_V2_Cooldown = true

    pcall(function()
        local remote = VD_V2_GetParryRemote()

        if remote then
            for _ = 1, 10 do
                remote:FireServer()
            end
        end

        local playerGui = LocalPlayer:FindFirstChild("PlayerGui")
        local survivorMob = playerGui and playerGui:FindFirstChild("Survivor-mob")
        local controls = survivorMob and survivorMob:FindFirstChild("Controls")
        local parryButton = controls and controls:FindFirstChild("Gui-mob")

        if parryButton and parryButton.Visible and firesignal then
            firesignal(parryButton.MouseButton1Down)
            task.wait(0.01)
            firesignal(parryButton.MouseButton1Up)
        end
    end)

    if VD_V2_CooldownThread then
        task.cancel(VD_V2_CooldownThread)
    end

    VD_V2_CooldownThread = task.delay(0.35, function()
        VD_V2_Cooldown = false
        VD_V2_CooldownThread = nil
    end)
end

local function VD_V2_AttachCharacter(kChar)
    if not VD_V2_Enabled or not kChar or VD_V2_Attached[kChar] then
        return
    end

    local humanoid = kChar:FindFirstChildOfClass("Humanoid")
        or kChar:WaitForChild("Humanoid", 5)

    if not humanoid then
        return
    end

    local animator = humanoid:FindFirstChildOfClass("Animator")
        or humanoid:WaitForChild("Animator", 5)

    if not animator then
        return
    end

    VD_V2_Attached[kChar] = true

    animator.AnimationPlayed:Connect(function(track)
        if not VD_V2_Enabled or not track or not track.Animation then
            return
        end

        local id = (track.Animation.AnimationId or ""):match("%d+")
        if not id or not VD_V2_AttackAnims[id] then
            return
        end

        local myChar = LocalPlayer.Character
        if not myChar or VD_V2_IsDowned(myChar) then
            return
        end

        local myRoot = myChar:FindFirstChild("HumanoidRootPart")
        local killerRoot = kChar:FindFirstChild("HumanoidRootPart")

        if not myRoot or not killerRoot then
            return
        end

        local startDistance = (myRoot.Position - killerRoot.Position).Magnitude

        if VD_V2_Aggressive then
            local detectionRadius = VD_V2_ParryDistance + 5
            local aggressiveRadius = 12

            if startDistance > detectionRadius then
                return
            end

            if startDistance <= aggressiveRadius then
                VD_V2_DoParry()
                return
            end

            local started = os.clock()
            local tracker

            tracker = RunService.Heartbeat:Connect(function()
                if not VD_V2_Enabled
                    or VD_V2_Cooldown
                    or not myRoot.Parent
                    or not killerRoot.Parent
                    or VD_V2_IsDowned(myChar)
                    or os.clock() - started >= 1.5 then
                    if tracker then
                        tracker:Disconnect()
                    end
                    return
                end

                local distance = (myRoot.Position - killerRoot.Position).Magnitude

                if distance <= aggressiveRadius then
                    VD_V2_DoParry()
                    tracker:Disconnect()
                end
            end)

            return
        end

        if startDistance > VD_V2_ParryDistance then
            return
        end

        local myFlat = Vector3.new(myRoot.Position.X, 0, myRoot.Position.Z)
        local killerFlat = Vector3.new(killerRoot.Position.X, 0, killerRoot.Position.Z)
        local delta = myFlat - killerFlat

        if delta.Magnitude > 0 then
            local direction = delta.Unit
            local look = Vector3.new(
                killerRoot.CFrame.LookVector.X,
                0,
                killerRoot.CFrame.LookVector.Z
            )

            if look.Magnitude > 0 then
                local facing = look.Unit:Dot(direction)
                if facing < 0.6 then
                    return
                end
            end
        end

        VD_V2_DoParry()
    end)

    humanoid.ChildAdded:Connect(function(child)
        if child:IsA("Animator") then
            VD_V2_Attached[kChar] = nil
            task.defer(function()
                VD_V2_AttachCharacter(kChar)
            end)
        end
    end)

    kChar.AncestryChanged:Connect(function(_, parent)
        if not parent then
            VD_V2_Attached[kChar] = nil
        end
    end)
end

local function VD_V2_AttachPlayer(plr)
    if plr == LocalPlayer then
        return
    end

    if plr.Character and VD_V2_IsKiller(plr) then
        VD_V2_AttachCharacter(plr.Character)
    end
end

local function VD_V2_Start()
    if VD_V2_Connection then
        return
    end

    for _, plr in ipairs(Players:GetPlayers()) do
        VD_V2_AttachPlayer(plr)
    end

    VD_V2_Connection = Players.PlayerAdded:Connect(function(plr)
        plr.CharacterAdded:Connect(function()
            if VD_V2_Enabled then
                task.wait(0.1)
                VD_V2_AttachPlayer(plr)
            end
        end)

        plr:GetPropertyChangedSignal("Team"):Connect(function()
            if VD_V2_Enabled then
                VD_V2_AttachPlayer(plr)
            end
        end)
    end)

    task.spawn(function()
        while VD_V2_Enabled do
            for _, plr in ipairs(Players:GetPlayers()) do
                VD_V2_AttachPlayer(plr)
            end
            task.wait(2)
        end
    end)
end

function VD_SetAutoParryV2(state)
    VD_V2_Enabled = state == true

    if VD_V2_Enabled then
        VD_V2_Start()
        print("[VIOLENCE DISTRICT] AUTO PARRY V2 : ON")
    else
        VD_V2_Cooldown = false

        if VD_V2_CooldownThread then
            task.cancel(VD_V2_CooldownThread)
            VD_V2_CooldownThread = nil
        end

        if VD_V2_Connection then
            VD_V2_Connection:Disconnect()
            VD_V2_Connection = nil
        end

        table.clear(VD_V2_Attached)
        print("[VIOLENCE DISTRICT] AUTO PARRY V2 : OFF")
    end
end

-- ============================================================
-- AUTO PARRY V2 SETTINGS
-- ============================================================

SurTab:Toggle({
    Title = "AUTO PARRY V2 AGGRESSIVE",
    Value = false,
    Callback = function(value)
        VD_V2_Aggressive = value == true
    end
})

SurTab:Slider({
    Title = "AUTO PARRY V2 DISTANCE",
    Value = {
        Min = 8,
        Max = 30,
        Default = VD_V2_ParryDistance,
    },
    Step = 1,
    Callback = function(value)
        VD_V2_ParryDistance = tonumber(value) or 14
    end
})

-- ============================================================
-- PISTOL AUTO AIM — TWIST OF FATE
-- ============================================================

local pistolOneTap = false
local pistolAntiExplode = false

local AIM_RANGE = 50
local MIN_SAFE_DIST = 8
local MAX_SAFE_DIST = 45

local PISTOL_NAME = "Twist of Fate"

-- ============================================================
-- CEK JARAK KILLER
-- ============================================================

local function checkPistolDistance()

    local char = LocalPlayer.Character
    local root = char and char:FindFirstChild("HumanoidRootPart")

    if not root then
        return false, "Karakter tidak ditemukan"
    end

    local foundKiller = false

    for _, plr in ipairs(Players:GetPlayers()) do

        if plr ~= LocalPlayer and plr.Character then

            local killer = plr.Character
            local weapon = killer:FindFirstChild("Weapon")
            local killerRoot = killer:FindFirstChild("HumanoidRootPart")

            if weapon and killerRoot then

                foundKiller = true

                local distance =
                    (root.Position - killerRoot.Position).Magnitude

                if distance < MIN_SAFE_DIST then
                    return false, "TERLALU DEKAT! Mundur dulu!"
                end

                if distance > MAX_SAFE_DIST then
                    return false, "TERLALU JAUH! Dekati sedikit"
                end

                return true,
                    "AMAN — Jarak: " .. math.floor(distance)
            end
        end
    end

    if not foundKiller then
        return false, "Tidak ada Killer terlihat"
    end

    return false, "Tidak ada Killer dalam jarak aman"
end

-- ============================================================
-- CARI KILLER TERDEKAT
-- ============================================================

local function getPistolTarget()

    local char = LocalPlayer.Character
    local root = char and char:FindFirstChild("HumanoidRootPart")

    if not root then
        return nil, nil
    end

    local targetHead = nil
    local closestDistance = AIM_RANGE

    for _, plr in ipairs(Players:GetPlayers()) do

        if plr ~= LocalPlayer and plr.Character then

            local killer = plr.Character
            local weapon = killer:FindFirstChild("Weapon")
            local killerRoot = killer:FindFirstChild("HumanoidRootPart")
            local head = killer:FindFirstChild("Head")

            if weapon and killerRoot and head then

                local distance =
                    (root.Position - killerRoot.Position).Magnitude

                if distance >= MIN_SAFE_DIST
                    and distance <= AIM_RANGE
                    and distance < closestDistance
                then

                    closestDistance = distance
                    targetHead = head
                end
            end
        end
    end

    return targetHead, closestDistance
end

-- ============================================================
-- CEK TWIST OF FATE
-- ============================================================

local function hasTwistOfFate()

    local char = LocalPlayer.Character

    if not char then
        return false
    end

    local tool = char:FindFirstChildOfClass("Tool")

    return tool and tool.Name == PISTOL_NAME
end

-- ============================================================
-- MONITOR JARAK
-- ============================================================

task.spawn(function()

    local lastMessage = ""

    while true do

        task.wait(0.5)

        if not pistolAntiExplode then
            lastMessage = ""
            continue
        end

        local safe, message =
            checkPistolDistance()

        if message ~= lastMessage then

            lastMessage = message

            WindUI:Notify({
                Title =
                    safe
                    and "AMAN"
                    or "PERINGATAN",

                Content = message,

                Duration =
                    safe
                    and 1.5
                    or 2,

                Icon =
                    safe
                    and "shield-check"
                    or "alert-triangle"
            })
        end
    end
end)

-- ============================================================
-- ONE-TAP AUTO AIM
-- ============================================================

UserInputService.TouchTap:Connect(function()

    if not pistolOneTap then
        return
    end

    -- CEK SENJATA
    if not hasTwistOfFate() then

        WindUI:Notify({
            Title = "TWIST OF FATE",
            Content = "CARI JARAK/POSISI AMAN",
            Duration = 1.5,
            Icon = "pistol"
        })

        return
    end

    -- CEK JARAK
    local safe, message =
        checkPistolDistance()

    if not safe then

        WindUI:Notify({
            Title = "JARAK TIDAK AMAN",
            Content = message,
            Duration = 2,
            Icon = "alert-triangle"
        })

        return
    end

    -- CARI TARGET
    local targetHead, distance =
        getPistolTarget()

    if not targetHead then

        WindUI:Notify({
            Title = "TARGET TIDAK DITEMUKAN",
            Content = "killer nya cari dulu jir wkwk",
            Duration = 1.5,
            Icon = "alert"
        })

        return
    end

    -- AIM
    local camera = workspace.CurrentCamera

    if not camera then
        return
    end

    camera.CFrame =
        CFrame.lookAt(
            camera.CFrame.Position,
            targetHead.Position
        )

    WindUI:Notify({
        Title = "TARGET TERKUNCI!",
        Content =
            "NOH KILLERNYA KETEMU \n"
            .. "JARAK : "
            .. math.floor(distance),

        Duration = 1,

        Icon = "crosshairs"
    })
end)

-- ============================================================
-- MENU SURVIVOR BAGIAN PISTOL MADE BY XLILNYX OFFICIAL
-- ============================================================

SurTab:Section({
    Title = "PISTOL AUTO AIM",
    Icon = "target"
})

SurTab:Toggle({
    Title = "ONE-TAP AUTO AIM",
    Value = false,
    Callback = function(v)

        pistolOneTap = v
        WindUI:Notify({
            Title =
                v
                and "AUTO AIM ON"
                or "AUTO AIM OFF",

            Content =
                v
                and "OTOMATIS AUTO AIM"
                or "AUTO AIM NON ACTIVE",

            Duration = 2,

            Icon =
                v
                and "crosshairs"
                or "x"
        })
    end
})

SurTab:Toggle({
    Title = "SAFE DISTANCE",
    Value = false,

    Callback = function(v)

        pistolAntiExplode = v

        WindUI:Notify({
            Title =
                v
                and "SAFE DISTANCE ON"
                or "SAFE DISTANCE OFF",

            Content =
                v
                and "Pengecekan jarak Killer aktif."
                or "Pengecekan jarak dimatikan.",

            Duration = 2,

            Icon =
                v
                and "shield-check"
                or "shield-off"
        })
    end
})

-- ============================================================
-- AUTO SKILL CHECK ENGINE
-- ============================================================

SurTab:Section({
    Title = "FEATURE OBJECT",
    Icon = "zap"
})

local autoSkillCheckEnabled = false
local autoSkillCheckConnection = nil

local TouchID = 8822
local ActionPath = "Survivor-mob.Controls.action.check"

local StatusGui = nil
local Container = nil
local StatusDot = nil
local StatusLabel = nil
local Stroke = nil
local StatusCredits = nil

local isProcessingHit = false
local wasHitTriggered = false
local currentVisualState = ""

local lastRotation = 0
local lastTime = os.clock()

local ASCColors = {
    Spectator = Color3.fromRGB(150, 150, 150),
    Survivor  = Color3.fromRGB(0, 140, 255),
    Killer    = Color3.fromRGB(235, 40, 40),
    Standby   = Color3.fromRGB(0, 225, 255),
    Tracking  = Color3.fromRGB(255, 215, 0),
    Perfect   = Color3.fromRGB(45, 220, 115),
    Velvet    = Color3.fromRGB(140, 30, 80),
    Failed    = Color3.fromRGB(255, 120, 0)
}

-- ============================================================
-- CREATE STATUS GUI
-- ============================================================

local function CreateStatusGui()

    local pg =
        LocalPlayer:FindFirstChild("PlayerGui")

    if not pg then
        return
    end

    local old =
        pg:FindFirstChild("AutoSkillCheckStatus")

    if old then
        old:Destroy()
    end

    StatusGui = Instance.new("ScreenGui")

    StatusGui.Name =
        "AutoSkillCheckStatus"

    StatusGui.ResetOnSpawn = false
    StatusGui.IgnoreGuiInset = true
    StatusGui.Parent = pg

    Container = Instance.new("Frame")

    Container.Name =
        "StatusContainer"

    Container.Size =
        UDim2.new(0, 160, 0, 22)

    Container.Position =
        UDim2.new(0.5, 0, 0, 32)

    Container.AnchorPoint =
        Vector2.new(0.5, 0)

    Container.BackgroundColor3 =
        Color3.fromRGB(15, 15, 20)

    Container.BackgroundTransparency =
        0.25

    Container.BorderSizePixel = 0
    Container.Parent = StatusGui

    local Corner =
        Instance.new("UICorner")

    Corner.CornerRadius =
        UDim.new(0, 11)

    Corner.Parent =
        Container

    Stroke =
        Instance.new("UIStroke")

    Stroke.Color =
        Color3.fromRGB(255, 255, 255)

    Stroke.Transparency = 0.85
    Stroke.Thickness = 1
    Stroke.Parent = Container

    StatusDot =
        Instance.new("Frame")

    StatusDot.Name =
        "StatusDot"

    StatusDot.Size =
        UDim2.new(0, 6, 0, 6)

    StatusDot.Position =
        UDim2.new(0, 8, 0.5, -3)

    StatusDot.BackgroundColor3 =
        ASCColors.Spectator

    StatusDot.BorderSizePixel = 0
    StatusDot.Parent = Container

    local DotCorner =
        Instance.new("UICorner")

    DotCorner.CornerRadius =
        UDim.new(1, 0)

    DotCorner.Parent =
        StatusDot

    StatusLabel =
        Instance.new("TextLabel")

    StatusLabel.Name =
        "StatusLabel"

    StatusLabel.Size =
        UDim2.new(1, -20, 1, 0)

    StatusLabel.Position =
        UDim2.new(0, 18, 0, 0)

    StatusLabel.BackgroundTransparency = 1

    StatusLabel.TextColor3 =
        Color3.fromRGB(240, 240, 240)

    StatusLabel.Font =
        Enum.Font.GothamMedium

    StatusLabel.TextSize = 9

    StatusLabel.TextXAlignment =
        Enum.TextXAlignment.Left

    StatusLabel.Text =
        "INITIALIZING..."

    StatusLabel.Parent =
        Container

    StatusCredits =
        Instance.new("TextLabel")

    StatusCredits.Name =
        "StatusCredits"

    StatusCredits.Size =
        UDim2.new(1, 0, 0, 10)

    StatusCredits.Position =
        UDim2.new(0.5, 0, 1, 2)

    StatusCredits.AnchorPoint =
        Vector2.new(0.5, 0)

    StatusCredits.BackgroundTransparency = 1

    StatusCredits.TextColor3 =
        Color3.fromRGB(255, 255, 255)

    StatusCredits.TextTransparency = 0.55

    StatusCredits.Font =
        Enum.Font.Gotham

    StatusCredits.TextSize = 7

    StatusCredits.TextXAlignment =
        Enum.TextXAlignment.Center

    StatusCredits.Text =
        "MADE BY XLILNYX OFFICIAL"

    StatusCredits.Parent =
        Container

    currentVisualState = ""
end

-- ============================================================
-- STATUS STATE
-- ============================================================

local function SetVisualState(
    stateId,
    text,
    color,
    force
)

    if
        currentVisualState ~= stateId
        or force
    then

        currentVisualState =
            stateId

        if
            not StatusGui
            or not StatusGui.Parent
        then
            return
        end

        if
            not StatusLabel
            or not StatusDot
            or not Stroke
        then
            return
        end

        StatusLabel.Text =
            string.upper(text)

        pcall(function()

            TweenService:Create(
                StatusDot,
                TweenInfo.new(0.25),
                {
                    BackgroundColor3 = color
                }
            ):Play()

            TweenService:Create(
                Stroke,
                TweenInfo.new(0.25),
                {
                    Color = color,
                    Transparency = 0.65
                }
            ):Play()

        end)
    end
end

-- ============================================================
--   TUTORIAL ESP CHECK SKILL / GUIDE AUTO GENE BY XLILNYX
-- ============================================================

local function ShowTutorialGui()

    local pg =
        LocalPlayer:FindFirstChild(
            "PlayerGui"
        )

    if not pg then
        return
    end

    if pg:FindFirstChild(
        "AUTO SKILL CHECK TUTORIAL"
    ) then
        return
    end

    local TutGui =
        Instance.new("ScreenGui")

    TutGui.Name =
        "AUTO SKILL CHECK TUTORIAL"
    TutGui.ResetOnSpawn = false
    TutGui.Parent = pg

    local BG =
        Instance.new("Frame")

    BG.Size =
        UDim2.new(0, 260, 0, 330)

    BG.Position =
        UDim2.new(0.5, 0, 0.5, 0)

    BG.AnchorPoint =
        Vector2.new(0.5, 0.5)

    BG.BackgroundColor3 =
        Color3.fromRGB(20, 20, 25)

    BG.BackgroundTransparency = 0.1
    BG.Parent = TutGui

    Instance.new(
        "UICorner",
        BG
    ).CornerRadius =
        UDim.new(0, 12)

    Instance.new(
        "UIStroke",
        BG
    ).Color =
        Color3.fromRGB(255, 255, 255)

    local Title =
        Instance.new("TextLabel", BG)

    Title.Size =
        UDim2.new(1, -60, 0, 24)

    Title.Position =
        UDim2.new(0, 20, 0, 12)

    Title.BackgroundTransparency = 1

    Title.Text =
        "GUIDE MY SCRIPT"

    Title.TextColor3 =
        Color3.fromRGB(255, 255, 255)

    Title.Font =
        Enum.Font.GothamBold

    Title.TextSize = 15

    Title.TextXAlignment =
        Enum.TextXAlignment.Left

    local CreditsLabel =
        Instance.new("TextLabel", BG)

    CreditsLabel.Size =
        UDim2.new(1, -40, 0, 14)

    CreditsLabel.Position =
        UDim2.new(0, 20, 0, 34)

    CreditsLabel.BackgroundTransparency = 1

    CreditsLabel.Text =
        "MADE BY XLILNYX OFFICIAL"

    CreditsLabel.TextColor3 =
        Color3.fromRGB(180, 180, 200)

    CreditsLabel.Font =
        Enum.Font.Gotham

    CreditsLabel.TextSize = 10

    CreditsLabel.TextXAlignment =
        Enum.TextXAlignment.Left

    local CloseBtn =
        Instance.new("TextButton", BG)

    CloseBtn.Size =
        UDim2.new(0, 30, 0, 30)

    CloseBtn.Position =
        UDim2.new(1, -35, 0, 12)

    CloseBtn.BackgroundTransparency = 1

    CloseBtn.Text = "X"

    CloseBtn.TextColor3 =
        Color3.fromRGB(255, 80, 80)

    CloseBtn.Font =
        Enum.Font.GothamBold

    CloseBtn.TextSize = 18

    CloseBtn.MouseButton1Click:Connect(
        function()
            if TutGui then
                TutGui:Destroy()
            end
        end
    )

    local ListContainer =
        Instance.new("Frame", BG)

    ListContainer.Size =
        UDim2.new(1, -40, 0, 220)

    ListContainer.AnchorPoint =
        Vector2.new(0, 1)

    ListContainer.Position =
        UDim2.new(0, 20, 1, -18)

    ListContainer.BackgroundTransparency = 1

    local Layout =
        Instance.new("UIListLayout", ListContainer)

    Layout.Padding =
        UDim.new(0, 14)

    Layout.HorizontalAlignment =
        Enum.HorizontalAlignment.Left

    Layout.VerticalAlignment =
        Enum.VerticalAlignment.Bottom

    local Legend = {

        {
            "IN LOBBY / SPECTATOR",
            ASCColors.Spectator
        },

        {
            "SURVIVOR TEAM",
            ASCColors.Survivor
        },

        {
            "KILLER TEAM",
            ASCColors.Killer
        },

        {
            "STANDBY & READY",
            ASCColors.Standby
        },

        {
            "TRACKING NEEDLE",
            ASCColors.Tracking
        },

        {
            "PERFECT HIT",
            ASCColors.Perfect
        },

        {
            "MANUAL TAP REQUIRED",
            ASCColors.Velvet
        },

        {
            "FAILED / INTERRUPTED",
            ASCColors.Failed
        }
    }

    for _, item in ipairs(Legend) do

        local row =
            Instance.new(
                "Frame",
                ListContainer
            )

        row.Size =
            UDim2.new(1, 0, 0, 15)

        row.BackgroundTransparency = 1

        local dot =
            Instance.new("Frame", row)

        dot.Size =
            UDim2.new(0, 10, 0, 10)

        dot.Position =
            UDim2.new(0, 0, 0.5, -5)

        dot.BackgroundColor3 =
            item[2]

        Instance.new(
            "UICorner",
            dot
        ).CornerRadius =
            UDim.new(1, 0)

        local txt =
            Instance.new(
                "TextLabel",
                row
            )

        txt.Size =
            UDim2.new(1, -25, 1, 0)

        txt.Position =
            UDim2.new(0, 25, 0, 0)

        txt.BackgroundTransparency = 1

        txt.Text =
            item[1]

        txt.TextColor3 =
            Color3.fromRGB(
                220,
                220,
                220
            )

        txt.Font =
            Enum.Font.GothamMedium

        txt.TextSize = 12

        txt.TextXAlignment =
            Enum.TextXAlignment.Left
    end
end

-- ============================================================
-- ACTION TARGET
-- ============================================================

local function GetActionTarget()

    local current =
        LocalPlayer:FindFirstChild(
            "PlayerGui"
        )

    if not current then
        return nil
    end

    for segment in string.gmatch(
        ActionPath,
        "[^%.]+"
    ) do

        current =
            current
            and current:FindFirstChild(
                segment
            )
    end

    return current
end

-- ============================================================
-- TRIGGER MOBILE BUTTON
-- ============================================================

local function TriggerMobileButton()

    local b =
        GetActionTarget()

    if
        b
        and b:IsA("GuiObject")
    then

        local p =
            b.AbsolutePosition

        local s =
            b.AbsoluteSize

        local i =
            GuiService:GetGuiInset()

        local cx =
            p.X
            + (s.X / 2)
            + i.X

        local cy =
            p.Y
            + (s.Y / 2)
            + i.Y

        pcall(function()

            VirtualInputManager:
                SendTouchEvent(
                    TouchID,
                    0,
                    cx,
                    cy
                )

            task.wait(0.002)

            VirtualInputManager:
                SendTouchEvent(
                    TouchID,
                    2,
                    cx,
                    cy
                )

        end)

    else

        pcall(function()

            VirtualInputManager:
                SendKeyEvent(
                    true,
                    Enum.KeyCode.Space,
                    false,
                    game
                )

            task.wait(0.002)

            VirtualInputManager:
                SendKeyEvent(
                    false,
                    Enum.KeyCode.Space,
                    false,
                    game
                )

        end)
    end
end

-- ============================================================
-- TEAM STATE
-- ============================================================

local function EvaluateTeamState()

    local team =
        LocalPlayer.Team

    local teamName =
        team
        and team.Name:lower()
        or ""

    if teamName:find("killer") then

        return "killer"

    elseif
        teamName:find("spectator")
        or teamName:find("lobby")
        or teamName == ""
    then

        return "spectator"

    elseif teamName:find("survivor") then

        return "survivor"
    end

    return "spectator"
end

-- ============================================================
-- STOP AUTO SKILL CHECK
-- ============================================================

local function StopAutoSkillCheck()

    if autoSkillCheckConnection then

        pcall(function()
            autoSkillCheckConnection:Disconnect()
        end)

        autoSkillCheckConnection = nil
    end

    _G.XLILNYX_ASC_CONNECTION = nil

    isProcessingHit = false
    wasHitTriggered = false
    currentVisualState = ""
    lastRotation = 0
    lastTime = os.clock()

    local pg =
        LocalPlayer:FindFirstChild(
            "PlayerGui"
        )

    if pg then

        local status =
            pg:FindFirstChild(
                "AutoSkillCheckStatus"
            )

        if status then
            status:Destroy()
        end

        local tutorial =
            pg:FindFirstChild(
                "AUTO SKILL CHECK TUTORIAL"
            )

        if tutorial then
            tutorial:Destroy()
        end
    end

    StatusGui = nil
    Container = nil
    StatusDot = nil
    StatusLabel = nil
    Stroke = nil
    StatusCredits = nil
end

-- ============================================================
-- START AUTO SKILL CHECK
-- ============================================================

local function StartAutoSkillCheck()

    StopAutoSkillCheck()

    if not autoSkillCheckEnabled then
        return
    end

    CreateStatusGui()

    task.spawn(function()

        if not autoSkillCheckEnabled then
            return
        end

        SetVisualState(
            "boot1",
            "20%: LOADING STATUS BAR...",
            ASCColors.Standby,
            true
        )

        task.wait(0.5)

        if not autoSkillCheckEnabled then
            return
        end

        SetVisualState(
            "boot2",
            "40%: FETCHING REMOTES...",
            ASCColors.Standby,
            true
        )

        task.wait(0.5)

        if not autoSkillCheckEnabled then
            return
        end

        SetVisualState(
            "boot3",
            "60%: ADDING AUTO SKILLCHECK...",
            ASCColors.Standby,
            true
        )

        task.wait(0.5)

        if not autoSkillCheckEnabled then
            return
        end

        SetVisualState(
            "boot4",
            "80%: FINALIZING...",
            ASCColors.Standby,
            true
        )

        task.wait(0.5)

        if not autoSkillCheckEnabled then
            return
        end

        SetVisualState(
            "boot5",
            "100%: DONE!",
            ASCColors.Perfect,
            true
        )

        task.wait(0.3)

        if not autoSkillCheckEnabled then
            return
        end

        ShowTutorialGui()

        task.wait(0.2)

        if not autoSkillCheckEnabled then
            return
        end

        -- ====================================================
        -- CORE ENGINE
        -- ====================================================

        autoSkillCheckConnection =
            RunService.Heartbeat:Connect(
                function()

                    if not autoSkillCheckEnabled then
                        return
                    end

                    local forceUpdate = false

                    if
                        not StatusGui
                        or not StatusGui.Parent
                        or not StatusGui:FindFirstChild(
                            "StatusContainer"
                        )
                    then

                        CreateStatusGui()

                        forceUpdate = true
                    end

                    local teamState =
                        EvaluateTeamState()

                    local checkActive = false

                    if teamState == "survivor" then

                        local pg =
                            LocalPlayer:FindFirstChild(
                                "PlayerGui"
                            )

                        local prompt =
                            pg
                            and pg:FindFirstChild(
                                "SkillCheckPromptGui"
                            )

                        if prompt then

                            local check =
                                prompt:FindFirstChild(
                                    "Check"
                                )

                            if
                                not check
                                or not check.Visible
                                or not check.Parent
                            then

                                isProcessingHit =
                                    false

                            else

                                local line =
                                    check:FindFirstChild(
                                        "Line"
                                    )

                                local goal =
                                    check:FindFirstChild(
                                        "Goal"
                                    )

                                if line and goal then

                                    checkActive = true

                                    local currentTime =
                                        os.clock()

                                    local dt =
                                        currentTime
                                        - lastTime

                                    lastTime =
                                        currentTime

                                    local lr =
                                        line.Rotation
                                        % 360

                                    local gr =
                                        goal.Rotation
                                        % 360

                                    lastRotation =
                                        lr

                                    -- ====================================
                                    -- SKILL CHECK ZONE
                                    -- ====================================

                                    local startOffset =
                                        102

                                    local endOffset =
                                        116

                                    local ss =
                                        (
                                            gr
                                            + startOffset
                                        ) % 360

                                    local se =
                                        (
                                            gr
                                            + endOffset
                                        ) % 360

                                    local isInZone =
                                        (
                                            ss > se
                                            and (
                                                lr >= ss
                                                or lr <= se
                                            )
                                        )
                                        or (
                                            lr >= ss
                                            and lr <= se
                                        )

                                    if
                                        not isInZone
                                        and isProcessingHit
                                    then

                                        isProcessingHit =
                                            false
                                    end

                                    if
                                        not isProcessingHit
                                    then

                                        SetVisualState(
                                            "tracking",
                                            "TRACKING NEEDLE...",
                                            ASCColors.Tracking,
                                            forceUpdate
                                        )

                                        if isInZone then

                                            isProcessingHit =
                                                true

                                            wasHitTriggered =
                                                true

                                            TriggerMobileButton()

                                            SetVisualState(
                                                "perfect",
                                                "PERFECT HIT!!",
                                                ASCColors.Perfect,
                                                true
                                            )

                                            task.delay(
                                                0.02,
                                                function()

                                                    if
                                                        autoSkillCheckEnabled
                                                    then

                                                        isProcessingHit =
                                                            false
                                                    end
                                                end
                                            )
                                        end
                                    end

                                else

                                    SetVisualState(
                                        "velvet",
                                        "MANUAL TAP NEEDED",
                                        ASCColors.Velvet,
                                        forceUpdate
                                    )
                                end
                            end

                        else

                            isProcessingHit =
                                false
                        end

                        if
                            not checkActive
                            and not isProcessingHit
                        then

                            if
                                currentVisualState ==
                                    "tracking"
                                and not wasHitTriggered
                            then

                                SetVisualState(
                                    "failed",
                                    "FAILED / INTERRUPTED",
                                    ASCColors.Failed,
                                    forceUpdate
                                )

                                task.delay(
                                    0.5,
                                    function()

                                        if
                                            autoSkillCheckEnabled
                                            and
                                            currentVisualState ==
                                                "failed"
                                        then

                                            currentVisualState =
                                                ""
                                        end
                                    end
                                )

                            elseif
                                currentVisualState ~= "failed"
                            then

                                SetVisualState(
                                    "standby",
                                    "STANDBY : READY",
                                    ASCColors.Standby,
                                    forceUpdate
                                )

                                wasHitTriggered =
                                    false
                            end
                        end

                    elseif teamState == "killer" then

                        SetVisualState(
                            "killer",
                            "KILLER TEAM",
                            ASCColors.Killer,
                            forceUpdate
                        )

                    else

                        SetVisualState(
                            "spectator",
                            "IN LOBBY",
                            ASCColors.Spectator,
                            forceUpdate
                        )
                    end
                end
            )

        _G.XLILNYX_ASC_CONNECTION =
            autoSkillCheckConnection
    end)
end

-- ============================================================
-- CHARACTER RESPAWN HANDLER
-- ============================================================

LocalPlayer.CharacterAdded:Connect(
    function()

        Character =
            LocalPlayer.Character

        if Character then

            Humanoid =
                Character:WaitForChild(
                    "Humanoid"
                )

            HumanoidRootPart =
                Character:WaitForChild(
                    "HumanoidRootPart"
                )
        end

        if autoSkillCheckEnabled then

            task.wait(0.5)

            if autoSkillCheckEnabled then
                CreateStatusGui()
            end
        end
    end
)

-- ============================================================
-- AUTO SKILL CHECK TOGGLE
-- ============================================================

SurTab:Toggle({
    Title = "AUTO SKILL CHECK",
    Value = false,

    Callback = function(state)

        autoSkillCheckEnabled =
            state

        if state then

            WindUI:Notify({
    Title = "XLILNYX DATABASE",
    Content =
        "AUTO SKILL CHECK : ACTIVE\n"
        .. "STATUS SERVER : ONLINE",
    Duration = 3,
    Icon = "zap",
    TextAlign = "Center"
})

            StartAutoSkillCheck()
        else

            StopAutoSkillCheck()

            WindUI:Notify({
    Title = "XLILNYX DATABASE",
    Content =
        "AUTO SKILL CHECK : DISABLED\n"
        .. "STATUS SERVER : OFFLINE",
    Duration = 2,
    Icon = "zap-off",
    TextAlign = "Center"
})
            
        end
    end
})

-- ============================================================
-- AUTO SKILL CHECK V2 + KILLER AVOID
-- COMPATIBLE STANDALONE ENGINE
-- ORIGINAL AUTO SKILL CHECK IS NOT MODIFIED
-- ============================================================

do
    -- ------------------------------------------------------------
    -- V2 SERVICES: deliberately local to this engine
    -- No reuse of the ORIGINAL AUTO SKILL CHECK state/functions.
    -- ------------------------------------------------------------
    local ASC_V2_Players = game:GetService("Players")
    local ASC_V2_RunService = game:GetService("RunService")
    local ASC_V2_VirtualInputManager = game:GetService("VirtualInputManager")
    local ASC_V2_GuiService = game:GetService("GuiService")
    local ASC_V2_TweenService = game:GetService("TweenService")
    local ASC_V2_LocalPlayer = ASC_V2_Players.LocalPlayer

    -- ------------------------------------------------------------
    -- V2 STATE
    -- ------------------------------------------------------------
    local ASC_V2_Enabled = false
    local ASC_V2_Connection = nil
    local ASC_V2_Processing = false
    local ASC_V2_LastTeleport = 0
    local ASC_V2_TeleportBusy = false
    local ASC_V2_LastState = ""

    local ASC_V2_KILLER_RADIUS = 40
    local ASC_V2_TELEPORT_COOLDOWN = 1
    local ASC_V2_TOUCH_ID = 8822
    local ASC_V2_ACTION_PATH = "Survivor-mob.Controls.action.check"

    local ASC_V2_Colors = {
        Standby = Color3.fromRGB(0,225,255),
        Tracking = Color3.fromRGB(255,215,0),
        Perfect = Color3.fromRGB(45,220,115),
        Killer = Color3.fromRGB(235,40,40),
        KillerAvoid = Color3.fromRGB(255,70,70),
        Lobby = Color3.fromRGB(150,150,150),
        Failed = Color3.fromRGB(255,120,0)
    }

    -- ------------------------------------------------------------
    -- V2 STATUS UI
    -- ------------------------------------------------------------
    local ASC_V2_Gui
    local ASC_V2_Label
    local ASC_V2_Dot
    local ASC_V2_Stroke

    local function ASC_V2_CreateStatus()
        local pg = ASC_V2_LocalPlayer:FindFirstChild("PlayerGui")
        if not pg then return end

        local old = pg:FindFirstChild("AutoSkillCheckStatus_V2")
        if old then old:Destroy() end

        ASC_V2_Gui = Instance.new("ScreenGui")
        ASC_V2_Gui.Name = "AutoSkillCheckStatus_V2"
        ASC_V2_Gui.ResetOnSpawn = false
        ASC_V2_Gui.IgnoreGuiInset = true
        ASC_V2_Gui.Parent = pg

        local frame = Instance.new("Frame")
        frame.Name = "StatusContainer"
        frame.Size = UDim2.new(0,170,0,22)
        frame.Position = UDim2.new(0.5,0,0,58)
        frame.AnchorPoint = Vector2.new(0.5,0)
        frame.BackgroundColor3 = Color3.fromRGB(15,15,20)
        frame.BackgroundTransparency = 0.25
        frame.BorderSizePixel = 0
        frame.Parent = ASC_V2_Gui

        Instance.new("UICorner",frame).CornerRadius = UDim.new(0,11)

        ASC_V2_Stroke = Instance.new("UIStroke")
        ASC_V2_Stroke.Thickness = 1
        ASC_V2_Stroke.Transparency = 0.65
        ASC_V2_Stroke.Parent = frame

        ASC_V2_Dot = Instance.new("Frame")
        ASC_V2_Dot.Size = UDim2.new(0,6,0,6)
        ASC_V2_Dot.Position = UDim2.new(0,8,0.5,-3)
        ASC_V2_Dot.BorderSizePixel = 0
        ASC_V2_Dot.Parent = frame
        Instance.new("UICorner",ASC_V2_Dot).CornerRadius = UDim.new(1,0)

        ASC_V2_Label = Instance.new("TextLabel")
        ASC_V2_Label.Size = UDim2.new(1,-25,1,0)
        ASC_V2_Label.Position = UDim2.new(0,18,0,0)
        ASC_V2_Label.BackgroundTransparency = 1
        ASC_V2_Label.Font = Enum.Font.GothamMedium
        ASC_V2_Label.TextSize = 9
        ASC_V2_Label.TextColor3 = Color3.fromRGB(240,240,240)
        ASC_V2_Label.TextXAlignment = Enum.TextXAlignment.Left
        ASC_V2_Label.Parent = frame

        ASC_V2_LastState = ""
    end

    local function ASC_V2_Status(id,text,color,force)
        if ASC_V2_LastState == id and not force then return end
        ASC_V2_LastState = id

        if not ASC_V2_Gui or not ASC_V2_Gui.Parent then return end
        if not ASC_V2_Label or not ASC_V2_Dot or not ASC_V2_Stroke then return end

        ASC_V2_Label.Text = string.upper(text)
        pcall(function()
            ASC_V2_TweenService:Create(ASC_V2_Dot,TweenInfo.new(0.2),{BackgroundColor3=color}):Play()
            ASC_V2_TweenService:Create(ASC_V2_Stroke,TweenInfo.new(0.2),{Color=color}):Play()
        end)
    end

    -- ------------------------------------------------------------
    -- V2 TEAM / ACTION FUNCTIONS
    -- ------------------------------------------------------------
    local function ASC_V2_TeamState()
        local team = ASC_V2_LocalPlayer.Team
        local name = team and string.lower(team.Name) or ""

        if name:find("killer") then
            return "killer"
        elseif name:find("survivor") then
            return "survivor"
        end
        return "spectator"
    end

    local function ASC_V2_ActionTarget()
        local current = ASC_V2_LocalPlayer:FindFirstChild("PlayerGui")
        if not current then return nil end

        for segment in string.gmatch(ASC_V2_ACTION_PATH,"[^%.]+") do
            current = current and current:FindFirstChild(segment)
        end

        return current
    end

    local function ASC_V2_TriggerAction()
        local button = ASC_V2_ActionTarget()

        if button and button:IsA("GuiObject") then
            local p = button.AbsolutePosition
            local s = button.AbsoluteSize
            local inset = ASC_V2_GuiService:GetGuiInset()
            local x = p.X + s.X/2 + inset.X
            local y = p.Y + s.Y/2 + inset.Y

            pcall(function()
                ASC_V2_VirtualInputManager:SendTouchEvent(ASC_V2_TOUCH_ID,0,x,y)
                task.wait(0.002)
                ASC_V2_VirtualInputManager:SendTouchEvent(ASC_V2_TOUCH_ID,2,x,y)
            end)
        else
            pcall(function()
                ASC_V2_VirtualInputManager:SendKeyEvent(true,Enum.KeyCode.Space,false,game)
                task.wait(0.002)
                ASC_V2_VirtualInputManager:SendKeyEvent(false,Enum.KeyCode.Space,false,game)
            end)
        end
    end

    -- ------------------------------------------------------------
    -- V2 KILLER / GENERATOR FUNCTIONS
    -- ------------------------------------------------------------
    local function ASC_V2_NearestKiller()
        local character = ASC_V2_LocalPlayer.Character
        local myRoot = character and character:FindFirstChild("HumanoidRootPart")
        if not myRoot then return nil,math.huge end

        local nearest,nearestDistance = nil,math.huge

        for _,plr in ipairs(ASC_V2_Players:GetPlayers()) do
            if plr ~= ASC_V2_LocalPlayer
                and plr.Team
                and string.lower(plr.Team.Name):find("killer")
                and plr.Character then

                local root = plr.Character:FindFirstChild("HumanoidRootPart")
                if root then
                    local distance = (myRoot.Position-root.Position).Magnitude
                    if distance < nearestDistance then
                        nearest = plr
                        nearestDistance = distance
                    end
                end
            end
        end

        return nearest,nearestDistance
    end

    local function ASC_V2_GeneratorRoot(generator)
        if not generator then return nil end
        return generator:FindFirstChild("HitBox")
            or generator.PrimaryPart
            or generator:FindFirstChildWhichIsA("BasePart",true)
    end

    local function ASC_V2_GeneratorCompleted(generator)
        local hitbox = generator and generator:FindFirstChild("HitBox")
        if not hitbox then return false end

        local light = hitbox:FindFirstChildOfClass("PointLight")
        return light ~= nil and light.Color == Color3.fromRGB(126,255,126)
    end

    local function ASC_V2_SafeGenerator(killerRoot)
        if not killerRoot then return nil end

        local character = ASC_V2_LocalPlayer.Character
        local myRoot = character and character:FindFirstChild("HumanoidRootPart")
        if not myRoot then return nil end

        local best,bestKillerDistance = nil,-math.huge

        -- Uses the MAIN SCRIPT map-folder helper only.
        -- It does not use any ORIGINAL Auto Skill Check function/state.
        for _,folder in ipairs(getMapFolders()) do
            for _,generator in ipairs(folder:GetChildren()) do
                if generator.Name == "Generator" and not ASC_V2_GeneratorCompleted(generator) then
                    local root = ASC_V2_GeneratorRoot(generator)
                    if root then
                        local playerDistance = (myRoot.Position-root.Position).Magnitude
                        local killerDistance = (killerRoot.Position-root.Position).Magnitude

                        if playerDistance > 8 and killerDistance > bestKillerDistance then
                            best = root
                            bestKillerDistance = killerDistance
                        end
                    end
                end
            end
        end

        return best
    end

    local function ASC_V2_KillerAvoid(killerRoot)
        if ASC_V2_TeleportBusy then return end

        local now = os.clock()
        if now-ASC_V2_LastTeleport < ASC_V2_TELEPORT_COOLDOWN then return end

        ASC_V2_TeleportBusy = true
        ASC_V2_LastTeleport = now

        local target = ASC_V2_SafeGenerator(killerRoot)
        local character = ASC_V2_LocalPlayer.Character
        local root = character and character:FindFirstChild("HumanoidRootPart")

        if target and root then
            pcall(function()
                root.CFrame = target.CFrame * CFrame.new(0,3,0)
            end)
            ASC_V2_Status("killer_avoid","KILLER DETECTED - TELEPORT",ASC_V2_Colors.KillerAvoid,true)
        end

        task.delay(ASC_V2_TELEPORT_COOLDOWN,function()
            ASC_V2_TeleportBusy = false
        end)
    end

    -- ------------------------------------------------------------
    -- V2 STOP / START
    -- ------------------------------------------------------------
    local function ASC_V2_Stop()
        if ASC_V2_Connection then
            pcall(function() ASC_V2_Connection:Disconnect() end)
            ASC_V2_Connection = nil
        end

        _G.XLILNYX_ASC_V2_CONNECTION = nil
        ASC_V2_Processing = false
        ASC_V2_LastTeleport = 0
        ASC_V2_TeleportBusy = false
        ASC_V2_LastState = ""

        local pg = ASC_V2_LocalPlayer:FindFirstChild("PlayerGui")
        if pg then
            local gui = pg:FindFirstChild("AutoSkillCheckStatus_V2")
            if gui then gui:Destroy() end
        end

        ASC_V2_Gui = nil
        ASC_V2_Label = nil
        ASC_V2_Dot = nil
        ASC_V2_Stroke = nil
    end

    local function ASC_V2_Start()
        ASC_V2_Stop()
        if not ASC_V2_Enabled then return end

        ASC_V2_CreateStatus()

        ASC_V2_Connection = ASC_V2_RunService.Heartbeat:Connect(function()
            if not ASC_V2_Enabled then return end

            if not ASC_V2_Gui or not ASC_V2_Gui.Parent then
                ASC_V2_CreateStatus()
            end

            local teamState = ASC_V2_TeamState()

            -- Killer avoidance is independent from the ORIGINAL engine.
            if teamState == "survivor" then
                local killer,distance = ASC_V2_NearestKiller()
                if killer and distance <= ASC_V2_KILLER_RADIUS then
                    local killerRoot = killer.Character and killer.Character:FindFirstChild("HumanoidRootPart")
                    if killerRoot then
                        ASC_V2_KillerAvoid(killerRoot)
                    end
                end
            end

            -- V2 skill check only.
            if teamState == "survivor" then
                local pg = ASC_V2_LocalPlayer:FindFirstChild("PlayerGui")
                local prompt = pg and pg:FindFirstChild("SkillCheckPromptGui")
                local check = prompt and prompt:FindFirstChild("Check")
                local line = check and check:FindFirstChild("Line")
                local goal = check and check:FindFirstChild("Goal")

                if check and check.Visible and line and goal then
                    local lr = line.Rotation % 360
                    local gr = goal.Rotation % 360
                    local ss = (gr+102)%360
                    local se = (gr+116)%360

                    local inZone = (ss > se and (lr >= ss or lr <= se))
                        or (lr >= ss and lr <= se)

                    if not inZone then
                        ASC_V2_Processing = false
                    end

                    if not ASC_V2_Processing then
                        ASC_V2_Status("tracking","TRACKING NEEDLE V2...",ASC_V2_Colors.Tracking,false)

                        if inZone then
                            ASC_V2_Processing = true
                            ASC_V2_TriggerAction()
                            ASC_V2_Status("perfect","PERFECT HIT V2!!",ASC_V2_Colors.Perfect,true)

                            task.delay(0.03,function()
                                if ASC_V2_Enabled then
                                    ASC_V2_Processing = false
                                end
                            end)
                        end
                    end
                else
                    ASC_V2_Processing = false
                    ASC_V2_Status("standby","STANDBY : READY V2",ASC_V2_Colors.Standby,false)
                end
            elseif teamState == "killer" then
                ASC_V2_Status("killer","KILLER TEAM",ASC_V2_Colors.Killer,false)
            else
                ASC_V2_Status("spectator","IN LOBBY",ASC_V2_Colors.Lobby,false)
            end
        end)

        _G.XLILNYX_ASC_V2_CONNECTION = ASC_V2_Connection
    end

    ASC_V2_LocalPlayer.CharacterAdded:Connect(function()
        if ASC_V2_Enabled then
            task.wait(0.5)
            if ASC_V2_Enabled then
                ASC_V2_CreateStatus()
            end
        end
    end)

    -- ------------------------------------------------------------
    -- MENU SCRIPT VIOLENCE DISTRICT PREMIUM
    -- ------------------------------------------------------------
    SurTab:Section({
        Title = "FEATURE OBJECT PREMIUM",
        Icon = "zap"
    })

    SurTab:Toggle({
        Title = "AUTO FARM REPAIR",
        Value = false,
        Callback = function(state)
            ASC_V2_Enabled = state

            if state then
                WindUI:Notify({
    Title = "XLILNYX DATABASE V2",

    Content =
        "OWNER : XLILNYX OFFICIAL\n"
        .. "LEADER : LEZARD\n"
        .. "STATUS : CONNECTED\n"
        .. "━━━━━━━━━━━━━━━━\n"
        .. "AUTO FARM : ACTIVE\n"
        .. "ORIGINAL ENGINE : UNCHANGED",

    Duration = 4,
    Icon = "zap",
    TextAlign = "Center"
})
                ASC_V2_Start()
            else
                ASC_V2_Stop()
                WindUI:Notify({
    Title = "XLILNYX DATABASE V2",

    Content =
        "OWNER : XLILNYX OFFICIAL\n"
        .. "LEADER : LEZARD\n"
        .. "STATUS : DISCONNECTED\n"
        .. "━━━━━━━━━━━━━━━━\n"
        .. "AUTO FARM : DISABLED\n"
        .. "ORIGINAL ENGINE : UNCHANGED",

    Duration = 4,

    Icon = "zap-off",

    TextAlign = "Center"
})
            end
        end
    })
end


-- ============================================================
-- AUTO LEVER
-- ============================================================

local autoLeverEnabled = false

SurTab:Toggle({
    Title = "AUTO LEVER (NO HOLD)",
    Value = false,

    Callback = function(v)

        autoLeverEnabled = v

        if autoLeverEnabled then

            task.spawn(function()

                local remote =
                    ReplicatedStorage
                    :WaitForChild("Remotes")
                    :WaitForChild("Exit")
                    :WaitForChild("LeverEvent")

                while autoLeverEnabled do

                    local char =
                        LocalPlayer.Character

                    local root =
                        char
                        and char:FindFirstChild(
                            "HumanoidRootPart"
                        )

                    if root then

                        local folders =
                            getMapFolders()

                        for _, folder in ipairs(
                            folders
                        ) do

                            local gate =
                                folder:FindFirstChild(
                                    "Gate"
                                )

                            if
                                gate
                                and gate:FindFirstChild(
                                    "ExitLever"
                                )
                            then

                                local main =
                                    gate.ExitLever:
                                    FindFirstChild(
                                        "Main"
                                    )

                                if main then

                                    local dist =
                                        (
                                            root.Position
                                            - main.Position
                                        ).Magnitude

                                    if dist <= 10 then

                                        pcall(function()
                                            remote:FireServer(
                                                main,
                                                true
                                            )
                                        end)
                                    end
                                end
                            end
                        end
                    end

                    task.wait(2)
                end
            end)
        end
    end
})

-- ============================================================
-- AUTO HEAL
-- ============================================================

SurTab:Section({
    Title = "FEATURE HEAL",
    Icon = "cross"
})

local autoHealEnabled = false
local autoHealBusy = false
local autoHealRunning = false

SurTab:Toggle({
    Title = "AUTO HEAL",
    Value = false,
    Callback = function(v)

        autoHealEnabled = v
        if autoHealEnabled then
            if autoHealRunning then
                return
            end

            autoHealRunning = true
            WindUI:Notify({
    Title = "AUTO HEAL",
    Content =
        "AUTO HEAL ACTIVE\n"
        .. "THANKS FOR USING MY SCRIPT",
    TextAlign = "Center",
    Duration = 3,
    Icon = "heart-pulse"
})

            task.spawn(function()
                local success, errorMessage =
                    xpcall(function()

                        local remote =
                            ReplicatedStorage
                            :WaitForChild("Remotes")
                            :WaitForChild("Healing")
                            :WaitForChild(
                                "SkillCheckResultEvent"
                            )

                        while autoHealEnabled do

                            task.wait(0.3)

                            if autoHealBusy then
                                continue
                            end

                            local char =
                                LocalPlayer.Character

                            local root =
                                char
                                and char:FindFirstChild(
                                    "HumanoidRootPart"
                                )

                            if not root then
                                continue
                            end

                            local targetPlayer = nil
                            local targetHumanoid = nil
                            local targetRoot = nil

                            local lowestHealth =
                                math.huge

                            for _, plr in ipairs(
                                Players:GetPlayers()
                            ) do

                                if
                                    plr ~= LocalPlayer
                                    and plr.Character
                                then

                                    local targetCharacter =
                                        plr.Character

                                    local humanoid =
                                        targetCharacter:
                                        FindFirstChildOfClass(
                                            "Humanoid"
                                        )

                                    local targetHRP =
                                        targetCharacter:
                                        FindFirstChild(
                                            "HumanoidRootPart"
                                        )

                                    if
                                        humanoid
                                        and targetHRP
                                    then

                                        local health =
                                            humanoid.Health

                                        local maxHealth =
                                            humanoid.MaxHealth

                                        if
                                            health > 0
                                            and maxHealth > 0
                                            and health < maxHealth
                                        then

                                            if
                                                health
                                                < lowestHealth
                                            then

                                                lowestHealth =
                                                    health

                                                targetPlayer =
                                                    plr

                                                targetHumanoid =
                                                    humanoid

                                                targetRoot =
                                                    targetHRP
                                            end
                                        end
                                    end
                                end
                            end

                            if
                                targetPlayer
                                and targetHumanoid
                                and targetRoot
                            then

                                autoHealBusy = true

                                local originalCFrame =
                                    root.CFrame

                                local targetName =
                                    targetPlayer.DisplayName

                                if targetName == "" then
                                    targetName =
                                        targetPlayer.Name
                                end

                                local maxHP =
                                    math.floor(
                                        targetHumanoid.MaxHealth
                                    )

                                local hpBefore =
                                    math.floor(
                                        targetHumanoid.Health
                                    )

                                WindUI:Notify({
                                    Title = "AUTO HEAL",
                                    Content =
                                        "SURVIVOR DITEMUKAN\n"
                                        .. targetName
                                        .. "\nHP: "
                                        .. hpBefore
                                        .. " / "
                                        .. maxHP,

                                    Duration = 3,
                                    Icon = "heart"
                                })

                                local teleportOK =
                                    pcall(function()

                                        root.CFrame =
                                            targetRoot.CFrame
                                            * CFrame.new(
                                                0,
                                                0,
                                                2
                                            )
                                    end)

                                if not teleportOK then

                                    WindUI:Notify({
                                        Title = "AUTO HEAL",
                                        Content =
                                            "TELEPORT GAGAL\n"
                                            .. targetName,

                                        Duration = 3,
                                        Icon = "triangle-alert"
                                    })

                                    if
                                        root
                                        and root.Parent
                                    then

                                        pcall(function()
                                            root.CFrame =
                                                originalCFrame
                                        end)
                                    end

                                    autoHealBusy =
                                        false

                                    continue
                                end

                                task.wait(0.2)

                                local healRequestOK =
                                    pcall(function()

                                        remote:FireServer(
                                            "success",
                                            1,
                                            targetPlayer.Character
                                        )
                                    end)

                                if not healRequestOK then

                                    WindUI:Notify({
                                        Title = "AUTO HEAL",
                                        Content =
                                            "HEAL GAGAL\n"
                                            .. targetName
                                            .. "\nDATABASE ERROR",

                                        Duration = 3,
                                        Icon = "triangle-alert"
                                    })

                                else

                                    WindUI:Notify({
                                        Title = "AUTO HEAL",
                                        Content =
                                            "MENGOBATI\n"
                                            .. targetName
                                            .. "\nSABAR JANGAN DITINGGAL",

                                        Duration = 2,
                                        Icon = "heart-pulse"
                                    })
                                end

                                local healTimeout = 5
                                local startTime =
                                    os.clock()

                                local healSucceeded =
                                    false

                                while
                                    autoHealEnabled
                                    and targetHumanoid
                                    and targetHumanoid.Parent
                                    and targetHumanoid.Health > 0
                                    and targetHumanoid.Health
                                        < targetHumanoid.MaxHealth
                                    and
                                        os.clock()
                                        - startTime
                                        < healTimeout
                                do

                                    task.wait(0.2)

                                    if
                                        targetHumanoid.Health
                                        >=
                                        targetHumanoid.MaxHealth
                                    then

                                        healSucceeded =
                                            true

                                        break
                                    end
                                end

                                if
                                    targetHumanoid
                                    and targetHumanoid.Parent
                                then

                                    local currentHP =
                                        math.floor(
                                            targetHumanoid.Health
                                        )

                                    local currentMaxHP =
                                        math.floor(
                                            targetHumanoid.MaxHealth
                                        )

                                    if
                                        currentHP
                                        >= currentMaxHP
                                    then

                                        healSucceeded =
                                            true
                                    end
                                end

                                if
                                    root
                                    and root.Parent
                                then

                                    pcall(function()

                                        root.CFrame =
                                            originalCFrame

                                    end)
                                end

                                if healSucceeded then

                                    WindUI:Notify({
                                        Title = "AUTO HEAL",
                                        Content =
                                            "HEAL BERHASIL\n"
                                            .. targetName
                                            .. "\nRISPEK ABANGKUH\n"
                                            .. "MAKASIH BANYAK",

                                        Duration = 3,
                                        Icon = "heart"
                                    })

                                elseif not healRequestOK then

                                    WindUI:Notify({
                                        Title = "AUTO HEAL",
                                        Content =
                                            "HEAL GAGAL\n"
                                            .. targetName
                                            .. "\nDATABASE ERROR",

                                        Duration = 3,
                                        Icon = "triangle-alert"
                                    })

                                else

                                    WindUI:Notify({
                                        Title = "AUTO HEAL",
                                        Content =
                                            "HEAL BELUM SELESAI\n"
                                            .. targetName
                                            .. "\nTUNGGU DULU WOI\n"
                                            .. "TAHAN BEBERAPA DETIK",

                                        Duration = 3,
                                        Icon = "clock"
                                    })
                                end

                                targetPlayer = nil
                                targetHumanoid = nil
                                targetRoot = nil

                                autoHealBusy = false

                                task.wait(0.5)
                            end
                        end

                    end, function(err)

                        return tostring(err)
                    end)

                autoHealBusy = false
                autoHealRunning = false

                if not success then

                    WindUI:Notify({
                        Title = "AUTO HEAL ERROR",
                        Content =
                            "DATABASE ERROR\n"
                            .. tostring(errorMessage),

                        Duration = 5,
                        Icon = "triangle-alert"
                    })
                end
            end)

        else

            autoHealEnabled = false
            autoHealBusy = false

            WindUI:Notify({
                Title = "AUTO HEAL",
                Content = "AUTO HEAL OFF",
                Duration = 2,
                Icon = "heart-off"
            })
        end
    end
})

-- ============================================================
-- ALL MENU CHEAT TAMBAHAN SCRIPT VIOLENCE DISTRICT
-- ============================================================

SurTab:Section({
    Title = "FEATURE CHEAT",
    Icon = "bug"
})

-- =========================
-- GOD MODE
-- =========================

local godMode = false
local godConnection

SurTab:Toggle({
    Title = "GOD MODE",
    Value = false,

    Callback = function(v)

        godMode = v

        if godMode then

            if godConnection then
                godConnection:Disconnect()
                godConnection = nil
            end

            godConnection = RunService.Heartbeat:Connect(function()

                local character = LocalPlayer.Character
                local humanoid =
                    character
                    and character:FindFirstChildOfClass("Humanoid")

                if not humanoid then
                    return
                end

                humanoid.Health = humanoid.MaxHealth

                for _, status in ipairs(
                    character:GetChildren()
                ) do

                    if
                        status.Name == "Downed"
                        or status.Name == "Knocked"
                        or status.Name == "Ragdoll"
                        or status.Name == "Hooked"
                        or status.Name == "Hang"
                        or status.Name == "Trapped"
                    then

                        pcall(function()
                            status:Destroy()
                        end)

                    end

                end

            end)

        else

            if godConnection then
                godConnection:Disconnect()
                godConnection = nil
            end

        end

    end
})

-- =========================
-- TEMBUS TEMBOK
-- =========================

local tembusTembok = false
local tembusConnection

SurTab:Toggle({
    Title = "TEMBUS TEMBOK",
    Value = false,

    Callback = function(v)

        tembusTembok = v

        if tembusTembok then

            if tembusConnection then
                tembusConnection:Disconnect()
                tembusConnection = nil
            end

            tembusConnection = RunService.Stepped:Connect(function()

                local character = LocalPlayer.Character

                if not character then
                    return
                end

                for _, part in ipairs(
                    character:GetDescendants()
                ) do

                    if part:IsA("BasePart") then
                        part.CanCollide = false
                    end

                end

            end)

        else

            if tembusConnection then
                tembusConnection:Disconnect()
                tembusConnection = nil
            end

            local character = LocalPlayer.Character

            if character then

                for _, part in ipairs(
                    character:GetDescendants()
                ) do

                    if part:IsA("BasePart") then
                        part.CanCollide = true
                    end

                end

            end

        end

    end
})

local NoFallEnabled = false

SurTab:Toggle({
    Title = "NO FALL",
    Value = false,

    Callback = function(v)

        NoFallEnabled = v

        if NoFallEnabled then

            task.spawn(function()

                local FallRemote =
                    ReplicatedStorage
                    :WaitForChild("Remotes")
                    :WaitForChild("Mechanics")
                    :WaitForChild("Fall")

                while NoFallEnabled do

                    pcall(function()

                        FallRemote:FireServer(
                            -100
                        )

                    end)

                    task.wait(1)
                end
            end)
        end
    end
})

-- ============================================================
--                    SURVIVOR TELEPORT
-- ============================================================

TeleportTab:Section({
    Title = "SURVIVOR",
    Icon = "navigation"
})

local survivorButtons = {}

local function IsSurvivor(player)
    if not player or player == LocalPlayer then
        return false
    end

    if player.Team then
        local teamName = string.lower(player.Team.Name)

        return teamName:find("survivor") ~= nil
            or teamName:find("survivors") ~= nil
    end

    return false
end

local function TeleportToSurvivor(player)
    local myCharacter = LocalPlayer.Character
    local targetCharacter = player and player.Character

    local myRoot =
        myCharacter
        and myCharacter:FindFirstChild("HumanoidRootPart")

    local targetRoot =
        targetCharacter
        and targetCharacter:FindFirstChild("HumanoidRootPart")

    if not myRoot or not targetRoot then
        WindUI:Notify({
            Title = "SURVIVOR",
            Content = "DATABASE ERROR",
            Duration = 2,
            Icon = "circle-alert"
        })
        return
    end

    myRoot.CFrame =
        targetRoot.CFrame * CFrame.new(0, 0, 3)

    WindUI:Notify({
        Title = "TELEPORT SURVIVOR",
        Content =
            player.Name
            .. "\nTELEPORT BERHASIL",
        Duration = 2,
        Icon = "navigation"
    })
end

local function ClearSurvivorButtons()
    for _, button in ipairs(survivorButtons) do
        pcall(function()
            button:Destroy()
        end)
    end

    table.clear(survivorButtons)
end

local function RefreshSurvivor()
    ClearSurvivorButtons()

    local survivors = {}

    for _, player in ipairs(Players:GetPlayers()) do
        if IsSurvivor(player) then
            table.insert(survivors, player)
        end
    end

    table.sort(survivors, function(a, b)
        return a.Name:lower() < b.Name:lower()
    end)

    if #survivors == 0 then

        local button = TeleportTab:Button({
            Title = "NO SURVIVOR",
            Desc = "SURVIVOR TIDAK VALID",

            Callback = function()
                RefreshSurvivor()
            end
        })

        table.insert(survivorButtons, button)
        return
    end

    for _, player in ipairs(survivors) do

        local button = TeleportTab:Button({
            Title = " " .. player.Name,
            Desc = "KLIK UNTUK TELEPORT",

            Callback = function()
                TeleportToSurvivor(player)
            end
        })

        table.insert(survivorButtons, button)
    end
end

TeleportTab:Button({
    Title = "REFRESH SURVIVOR",
    Desc = "REFRESH DATABASE SURVIVOR",

    Callback = function()
        RefreshSurvivor()
    end
})

RefreshSurvivor()

-- ============================================================
-- FLING KILLER
-- ============================================================

SurTab:Button({
    Title = "SCARE KILLER",

    Callback = function()

        local Player =
            Players.LocalPlayer

        local Targets = {}

        for _, plr in ipairs(
            Players:GetPlayers()
        ) do

            if
                plr ~= Player
                and plr.Character
                and plr.Character:FindFirstChild(
                    "Weapon"
                )
            then

                table.insert(
                    Targets,
                    plr.Name
                )
            end
        end

        local AllBool = false

        local GetPlayer = function(Name)

            Name =
                Name:lower()

            if
                Name == "all"
                or Name == "others"
            then

                AllBool = true

                return

            elseif Name == "random" then

                local GetPlayers =
                    Players:GetPlayers()

                local index =
                    table.find(
                        GetPlayers,
                        Player
                    )

                if index then
                    table.remove(
                        GetPlayers,
                        index
                    )
                end

                if #GetPlayers > 0 then
                    return GetPlayers[
                        math.random(
                            #GetPlayers
                        )
                    ]
                end

            else

                for _, x in next,
                    Players:GetPlayers()
                do

                    if x ~= Player then

                        if
                            x.Name:lower():
                            match("^" .. Name)
                            or
                            x.DisplayName:
                            lower():
                            match("^" .. Name)
                        then

                            return x
                        end
                    end
                end
            end
        end

        local Message =
            function(
                _Title,
                _Text,
                Time
            )

                game:GetService(
                    "StarterGui"
                ):SetCore(
                    "SendNotification",
                    {
                        Title = _Title,
                        Text = _Text,
                        Duration = Time
                    }
                )
            end

        local SkidFling =
            function(TargetPlayer)

                local Character =
                    Player.Character

                local Humanoid =
                    Character
                    and Character:
                    FindFirstChildOfClass(
                        "Humanoid"
                    )

                local RootPart =
                    Humanoid
                    and Humanoid.RootPart

                local TCharacter =
                    TargetPlayer.Character

                local THumanoid =
                    TCharacter
                    and TCharacter:
                    FindFirstChildOfClass(
                        "Humanoid"
                    )

                local TRootPart =
                    THumanoid
                    and THumanoid.RootPart

                local THead =
                    TCharacter
                    and TCharacter:
                    FindFirstChild("Head")

                local Accessory =
                    TCharacter
                    and TCharacter:
                    FindFirstChildOfClass(
                        "Accessory"
                    )

                local Handle =
                    Accessory
                    and Accessory:
                    FindFirstChild("Handle")

                if
                    Character
                    and Humanoid
                    and RootPart
                then

                    if
                        RootPart.Velocity.Magnitude
                        < 50
                    then

                        getgenv().OldPos =
                            RootPart.CFrame
                    end

                    if
                        THumanoid
                        and THumanoid.Sit
                        and not AllBool
                    then

                        return Message(
                            "Error Occurred",
                            "Targeting is sitting",
                            5
                        )
                    end

                    if THead then

                        workspace.CurrentCamera
                            .CameraSubject =
                            THead

                    elseif Handle then

                        workspace.CurrentCamera
                            .CameraSubject =
                            Handle

                    elseif
                        THumanoid
                        and TRootPart
                    then

                        workspace.CurrentCamera
                            .CameraSubject =
                            THumanoid
                    end

                    if not TCharacter:
                        FindFirstChildWhichIsA(
                            "BasePart"
                        )
                    then
                        return
                    end

                    local FPos =
                        function(
                            BasePart,
                            Pos,
                            Ang
                        )

                        RootPart.CFrame =
                            CFrame.new(
                                BasePart.Position
                            )
                            * Pos
                            * Ang

                        Character:
                            SetPrimaryPartCFrame(
                                CFrame.new(
                                    BasePart.Position
                                )
                                * Pos
                                * Ang
                            )

                        RootPart.Velocity =
                            Vector3.new(
                                9e7,
                                9e7 * 10,
                                9e7
                            )

                        RootPart.RotVelocity =
                            Vector3.new(
                                9e8,
                                9e8,
                                9e8
                            )
                    end

                    local SFBasePart =
                        function(BasePart)

                        local TimeToWait = 2
                        local Time = tick()
                        local Angle = 0

                        repeat

                            if
                                RootPart
                                and THumanoid
                            then

                                if
                                    BasePart.Velocity
                                    .Magnitude < 50
                                then

                                    Angle += 100

                                    FPos(
                                        BasePart,
                                        CFrame.new(
                                            0,
                                            1.5,
                                            0
                                        )
                                        +
                                        THumanoid
                                        .MoveDirection
                                        *
                                        BasePart
                                        .Velocity
                                        .Magnitude
                                        / 1.25,

                                        CFrame.Angles(
                                            math.rad(Angle),
                                            0,
                                            0
                                        )
                                    )

                                    task.wait()

                                    FPos(
                                        BasePart,
                                        CFrame.new(
                                            0,
                                            -1.5,
                                            0
                                        )
                                        +
                                        THumanoid
                                        .MoveDirection
                                        *
                                        BasePart
                                        .Velocity
                                        .Magnitude
                                        / 1.25,

                                        CFrame.Angles(
                                            math.rad(Angle),
                                            0,
                                            0
                                        )
                                    )

                                    task.wait()

                                    FPos(
                                        BasePart,
                                        CFrame.new(
                                            2.25,
                                            1.5,
                                            -2.25
                                        )
                                        +
                                        THumanoid
                                        .MoveDirection
                                        *
                                        BasePart
                                        .Velocity
                                        .Magnitude
                                        / 1.25,

                                        CFrame.Angles(
                                            math.rad(Angle),
                                            0,
                                            0
                                        )
                                    )

                                    task.wait()

                                    FPos(
                                        BasePart,
                                        CFrame.new(
                                            -2.25,
                                            -1.5,
                                            2.25
                                        )
                                        +
                                        THumanoid
                                        .MoveDirection
                                        *
                                        BasePart
                                        .Velocity
                                        .Magnitude
                                        / 1.25,

                                        CFrame.Angles(
                                            math.rad(Angle),
                                            0,
                                            0
                                        )
                                    )

                                    task.wait()

                                else

                                    FPos(
                                        BasePart,
                                        CFrame.new(
                                            0,
                                            1.5,
                                            TRootPart
                                            .Velocity
                                            .Magnitude
                                            / 1.25
                                        ),
                                        CFrame.Angles(
                                            math.rad(90),
                                            0,
                                            0
                                        )
                                    )

                                    task.wait()
                                end

                            else

                                break
                            end

                        until
                            BasePart.Velocity
                            .Magnitude > 500
                            or
                            BasePart.Parent
                            ~= TargetPlayer.Character
                            or
                            TargetPlayer.Parent
                            ~= Players
                            or
                            THumanoid.Sit
                            or
                            Humanoid.Health <= 0
                            or
                            tick()
                            > Time + TimeToWait
                    end

                    workspace.FallenPartsDestroyHeight =
                        0 / 0

                    local BV =
                        Instance.new(
                            "BodyVelocity"
                        )

                    BV.Name =
                        "PolleserHub-YES"

                    BV.Parent =
                        RootPart

                    BV.Velocity =
                        Vector3.new(
                            9e9,
                            9e9,
                            9e9
                        )

                    BV.MaxForce =
                        Vector3.new(
                            math.huge,
                            math.huge,
                            math.huge
                        )

                    Humanoid:SetStateEnabled(
                        Enum.HumanoidStateType.Seated,
                        false
                    )

                    if
                        TRootPart
                        and THead
                    then

                        if
                            (
                                TRootPart.CFrame.p
                                - THead.CFrame.p
                            ).Magnitude > 5
                        then

                            SFBasePart(THead)

                        else

                            SFBasePart(
                                TRootPart
                            )
                        end

                    elseif TRootPart then

                        SFBasePart(
                            TRootPart
                        )

                    elseif THead then

                        SFBasePart(THead)

                    elseif Handle then

                        SFBasePart(Handle)

                    else

                        return Message(
                            "DATABASE ERROR",
                            "target is missing",
                            5
                        )
                    end

                    BV:Destroy()

                    Humanoid:SetStateEnabled(
                        Enum.HumanoidStateType.Seated,
                        true
                    )

                    workspace.CurrentCamera
                        .CameraSubject =
                        Humanoid

                    repeat

                        RootPart.CFrame =
                            getgenv().OldPos
                            * CFrame.new(
                                0,
                                0.5,
                                0
                            )

                        Character:
                            SetPrimaryPartCFrame(
                                getgenv().OldPos
                                * CFrame.new(
                                    0,
                                    0.5,
                                    0
                                )
                            )

                        Humanoid:ChangeState(
                            "GettingUp"
                        )

                        for _, x in ipairs(
                            Character:GetChildren()
                        ) do

                            if
                                x:IsA("BasePart")
                            then

                                x.Velocity =
                                    Vector3.new()

                                x.RotVelocity =
                                    Vector3.new()
                            end
                        end

                        task.wait()

                    until
                        (
                            RootPart.Position
                            - getgenv().OldPos.p
                        ).Magnitude < 25

                    workspace.FallenPartsDestroyHeight =
                        getgenv().FPDH

                else

                    return Message(
                        "DATABASE ERROR",
                        "target is missing",
                        5
                    )
                end
            end

        if not getgenv().Welcome then

            Message(
                "XLILNYX OFFICIAL | FLING",
                "THANK FOR USING",
                6
            )
        end

        getgenv().Welcome = true

        if AllBool then

            for _, x in next,
                Players:GetPlayers()
            do

                if x ~= Player then
                    SkidFling(x)
                end
            end
        end

        for _, x in next, Targets do

            local TPlayer =
                GetPlayer(x)

            if
                TPlayer
                and TPlayer ~= Player
            then

                if
                    TPlayer.UserId
                    ~= 4340578793
                then

                    SkidFling(TPlayer)

                else

                    Message(
                        "ERROR FLING OWNER",
                        "",
                        8
                    )
                end

            elseif
                not TPlayer
                and not AllBool
            then

                Message(
                    "ERROR OWNER",
                    "YOU CANT FLING OWNER",
                    8
                )
            end
        end
    end
})

-- ============================================================
-- INVISIBLE
-- ============================================================

SurTab:Button({
    Title = "INVISIBLE",

    Callback = function()

        loadstring(
            game:HttpGet(
                "https://raw.githubusercontent.com/mabdu21/kjandsaddjadbhahayenajhsjbdwa/refs/heads/main/INV.lua"
            )
        )()
    end
})

-- ============================================================
-- KILLER
-- ============================================================

killerTab:Section({
    Title = "FEATURE KILLER",
    Icon = "swords"
})

local killallEnabled = false

killerTab:Toggle({
    Title = "KILL ALL (WARNING : GET BAN)",
    Value = false,
    Callback = function(v)

        killallEnabled = v
        if killallEnabled then
            task.spawn(function()

                local remote =
                    ReplicatedStorage
                    :WaitForChild("Remotes")
                    :WaitForChild("Attacks")
                    :WaitForChild(
                        "BasicAttack"
                    )

                local startCFrame = nil
                while killallEnabled do
                    local char =
                        LocalPlayer.Character

                    local root =
                        char
                        and char:FindFirstChild(
                            "HumanoidRootPart"
                        )

                    if root then
                        if not startCFrame then
                            startCFrame =
                                root.CFrame
                        end

                        local targets = {}
                        for _, plr in ipairs(
                            Players:GetPlayers()
                        ) do

                            if
                                plr ~= LocalPlayer
                                and plr.Character
                            then

                                local targetRoot =
                                    plr.Character:
                                    FindFirstChild(
                                        "HumanoidRootPart"
                                    )

                                local humanoid =
                                    plr.Character:
                                    FindFirstChildOfClass(
                                        "Humanoid"
                                    )

                                if
                                    targetRoot
                                    and humanoid
                                then

                                    table.insert(
                                        targets,
                                        {
                                            player = plr,
                                            root = targetRoot,
                                            humanoid = humanoid
                                        }
                                    )
                                end
                            end
                        end

                        if #targets > 0 then

                            for _, entry in ipairs(
                                targets
                            ) do

                                if
                                    not killallEnabled
                                then
                                    break
                                end

                                local targetRoot =
                                    entry.root

                                if
                                    targetRoot
                                    and targetRoot.Parent
                                then

                                    root.CFrame =
                                        targetRoot.CFrame
                                        * CFrame.new(
                                            0,
                                            0,
                                            2
                                        )

                                    pcall(function()
                                        remote:FireServer()
                                    end)

                                    task.wait(0.15)
                                end
                            end

                            local allLowHealth =
                                true

                            for _, entry in ipairs(
                                targets
                            ) do

                                if
                                    entry.humanoid.Health
                                    > 20
                                then

                                    allLowHealth =
                                        false

                                    break
                                end
                            end

                            if
                                allLowHealth
                                and startCFrame
                            then

                                root.CFrame =
                                    startCFrame

                                task.wait(1)

                            else

                                task.wait(0.2)
                            end

                        else

                            task.wait(0.5)
                        end

                    else

                        task.wait(0.2)
                    end
                end
            end)
        end
    end
})

-- ============================================================
-- ANTI PARRY
-- ============================================================

local antiParryEnabled = false
local ANTI_PARRY_DISTANCE = 30

-- Menyimpan survivor yang sudah pernah diberi notif
local antiParryNotified = {}

-- ============================================================
-- CEK PLAYER YANG MEMBAWA PARRYING DAGGER
-- ============================================================

local function HasParryingDagger(player)

    if not player then
        return false
    end

    local character =
        player.Character

    local backpack =
        player:FindFirstChild("Backpack")

    -- Dagger di Character
    if character
        and character:FindFirstChild("Parrying Dagger")
    then
        return true
    end

    -- Dagger di Backpack
    if backpack
        and backpack:FindFirstChild("Parrying Dagger")
    then
        return true
    end

    return false
end

-- ============================================================
-- AMBIL SEMUA SURVIVOR YANG MEMBAWA DAGGER
-- ============================================================

local function GetAllParryingDaggers()

    local result = {}

    for _, player in ipairs(Players:GetPlayers()) do

        if player ~= LocalPlayer
            and HasParryingDagger(player)
        then

            table.insert(
                result,
                player
            )

        end
    end

    return result
end

-- ============================================================
-- NOTIFIKASI JUMLAH + NAMA SURVIVOR
-- ============================================================

local function NotifyDaggerCount()

    local daggerPlayers =
        GetAllParryingDaggers()

    local count =
        #daggerPlayers

    if count == 0 then

        WindUI:Notify({
            Title = "SCAN DAGGER DATABASE",
            Content =
                "SURVIVOR DAGGER : 0\n"
                .. "HAHA GADA BAWA DAGGER",
            Duration = 4,
            Icon = "shield"
        })

        return
    end

    local names = {}

    for _, player in ipairs(daggerPlayers) do

        table.insert(
            names,
            player.Name
        )

    end

    WindUI:Notify({
        Title = "SCAN DAGGER DATABASE",
        Content =
            "SURVIVOR DAGGER : "
            .. count
            .. "\n"
            .. table.concat(
                names,
                ", "
            ),
        Duration = 5,
        Icon = "shield-alert"
    })

end

-- ============================================================
-- DETEKSI SURVIVOR ≤ 30 STUDS
-- ============================================================

task.spawn(function()
    while true do
        task.wait(0.1)

        if not antiParryEnabled then
            continue
        end

        local myCharacter =
            LocalPlayer.Character

        local myRoot =
            myCharacter
            and myCharacter:FindFirstChild(
                "HumanoidRootPart"
            )

        if not myRoot then
            continue
        end

        for _, player in ipairs(
            Players:GetPlayers()
        ) do

            if player ~= LocalPlayer
                and HasParryingDagger(player)
            then

                local character =
                    player.Character

                local targetRoot =
                    character
                    and character:FindFirstChild(
                        "HumanoidRootPart"
                    )

                if targetRoot then

                    local distance =
                        (
                            myRoot.Position
                            - targetRoot.Position
                        ).Magnitude

                    -- ========================================
                    -- BELUM PERNAH TERDETEKSI
                    -- ========================================

                    if distance <= ANTI_PARRY_DISTANCE
                        and not antiParryNotified[player.UserId]
                    then

                        -- Tandai PERMANEN selama Anti Parry aktif
                        antiParryNotified[player.UserId] = true

                        WindUI:Notify({
                            Title = "SCAN DAGGER DATABASE",
                            Content =
                                player.Name
                                .. " SURVI BAWA DAGGER TUH\n"
                                .. "JARAK : "
                                .. math.floor(distance)
                                .. " studs",
                            Duration = 3,
                            Icon = "shield-alert"
                        })

                    end

                end

            end

        end

    end

end)

-- ============================================================
-- CLEANUP PLAYER
-- ============================================================

Players.PlayerRemoving:Connect(function(player)

    antiParryNotified[player.UserId] = nil

end)

-- ============================================================
-- TOGGLE ANTI PARRY
-- ============================================================

killerTab:Toggle({
    Title = "ANTI PARRY",
    Value = false,

    Callback = function(state)

        antiParryEnabled = state

        if state then

            -- Mulai sesi baru
            antiParryNotified = {}

            -- 1× notif jumlah + nama
            NotifyDaggerCount()

        else

            -- Reset ketika fitur dimatikan
            antiParryNotified = {}

        end

    end
})

-- ============================================================
-- AUTO ATTACK
-- ============================================================

killerTab:Section({
    Title = "FEATURE NO-COOLDOWN",
    Icon = "crown"
})

local nocooldownskillEnabled = false

killerTab:Toggle({
    Title = "AUTO ATTACK (NO ANIMATION)",
    Value = false,

    Callback = function(v)

        nocooldownskillEnabled =
            v

        if nocooldownskillEnabled then

            task.spawn(function()

                local remote =
                    ReplicatedStorage
                    :WaitForChild("Remotes")
                    :WaitForChild("Attacks")
                    :WaitForChild(
                        "BasicAttack"
                    )

                while nocooldownskillEnabled do

                    local char =
                        LocalPlayer.Character

                    local root =
                        char
                        and char:FindFirstChild(
                            "HumanoidRootPart"
                        )

                    if root then

                        local closestTarget = nil
                        local closestDist = 10

                        for _, plr in ipairs(
                            Players:GetPlayers()
                        ) do

                            if
                                plr ~= LocalPlayer
                                and plr.Character
                            then

                                local targetRoot =
                                    plr.Character:
                                    FindFirstChild(
                                        "HumanoidRootPart"
                                    )

                                if targetRoot then

                                    local dist =
                                        (
                                            root.Position
                                            - targetRoot.Position
                                        ).Magnitude

                                    if
                                        dist
                                        <= closestDist
                                    then

                                        closestDist =
                                            dist

                                        closestTarget =
                                            plr.Character
                                    end
                                end
                            end
                        end

                        if closestTarget then

                            pcall(function()
                                remote:FireServer()
                            end)
                        end
                    end

                    task.wait(0.1)
                end
            end)
        end
    end
})

-- ============================================================
-- NO FLASHLIGHT
-- ============================================================

killerTab:Section({
    Title = "FEATURE CHEAT",
    Icon = "bug"
})

local noFlashlightEnabled = false

killerTab:Toggle({
    Title = "NO FLASHLIGHT",
    Value = false,

    Callback = function(state)

        noFlashlightEnabled =
            state
    end
})

local function removeBlindGui()

    local playerGui =
        LocalPlayer:FindFirstChild(
            "PlayerGui"
        )

    if not playerGui then
        return
    end

    for _, descendant in pairs(
        playerGui:GetDescendants()
    ) do

        if
            descendant:IsA("GuiObject")
            and descendant.Name == "Blind"
        then

            descendant:Destroy()
        end
    end
end

task.spawn(function()

    while true do

        task.wait(0.5)

        if noFlashlightEnabled then
            removeBlindGui()
        end
    end
end)

-- ============================================================
-- FIX CAMERA
-- ============================================================

local camera =
    workspace.CurrentCamera

killerTab:Button({

    Title =
        "FIX CAM (3RD PERSON CAMERA)",

    Callback = function()

        local character =
            player.Character
            or player.CharacterAdded:Wait()

        local humanoid =
            character:FindFirstChildOfClass(
                "Humanoid"
            )

        if humanoid then

            camera.CameraType =
                Enum.CameraType.Custom

            camera.CameraSubject =
                humanoid

            player.CameraMinZoomDistance =
                0.5

            player.CameraMaxZoomDistance =
                400

            player.CameraMode =
                Enum.CameraMode.Classic

            local head =
                character:FindFirstChild(
                    "Head"
                )

            if head then
                head.Anchored = false
            end
        end
    end
})

-- ============================================================
-- VISUAL
-- ============================================================

local fullBrightEnabled = false
local noFogEnabled = false

MainTab:Section({
    Title = "FEATURE VISUAL",
    Icon = "lightbulb"
})

MainTab:Toggle({

    Title = "FULL BRIGHT",

    Value = false,

    Callback = function(v)

        fullBrightEnabled =
            v

        if v then

            task.spawn(function()

                while fullBrightEnabled do

                    if
                        Lighting.Brightness
                        ~= 2
                    then

                        Lighting.Brightness =
                            2
                    end

                    if
                        Lighting.ClockTime
                        ~= 14
                    then

                        Lighting.ClockTime =
                            14
                    end

                    if
                        Lighting.Ambient
                        ~=
                        Color3.fromRGB(
                            255,
                            255,
                            255
                        )
                    then

                        Lighting.Ambient =
                            Color3.fromRGB(
                                255,
                                255,
                                255
                            )
                    end

                    task.wait(0.5)
                end
            end)

        else

            Lighting.Brightness = 1
            Lighting.ClockTime = 12

            Lighting.Ambient =
                Color3.fromRGB(
                    128,
                    128,
                    128
                )
        end
    end
})

MainTab:Toggle({

    Title = "NO FOG",

    Value = false,

    Callback = function(v)

        noFogEnabled =
            v

        if v then

            task.spawn(function()

                while noFogEnabled do

                    local atmosphere =
                        Lighting:FindFirstChild(
                            "Atmosphere"
                        )

                    if atmosphere then

                        if
                            atmosphere.Density
                            ~= 0
                        then

                            atmosphere.Density =
                                0
                        end
                    end

                    task.wait(0.5)
                end
            end)

        else

            local atmosphere =
                Lighting:FindFirstChild(
                    "Atmosphere"
                )

            if atmosphere then

                atmosphere.Density =
                    0.5
            end
        end
    end
})

local speedEnabled = false
local flyNoclipSpeed = 3

local speedConnection = nil
local noclipConnection = nil

PlayerTab:Section({
    Title = "FEATURE PLAYER",
    Icon = "rabbit"
})

PlayerTab:Slider({
    Title = "SET SPEED VALUE",
    Value = {
        Min = 1,
        Max = 50,
        Default = 4
    },

    Step = 1,
    Callback = function(val)
        flyNoclipSpeed =
            val
    end
})

PlayerTab:Toggle({
    Title = "ENABLE SPEED",
    Value = false,
    Callback = function(v)
        speedEnabled =
            v

        if speedEnabled then
            if speedConnection then
                speedConnection:
                    Disconnect()
            end

            speedConnection =
                RunService.RenderStepped:
                Connect(function()

                    local char =
                        LocalPlayer.Character

                    if
                        char
                        and char:FindFirstChild(
                            "HumanoidRootPart"
                        )
                        and char:FindFirstChild(
                            "Humanoid"
                        )
                        and char.Humanoid
                            .MoveDirection
                            .Magnitude > 0
                    then

                        char.HumanoidRootPart.CFrame =
                            char.HumanoidRootPart.CFrame
                            +
                            char.Humanoid.MoveDirection
                            *
                            flyNoclipSpeed
                            *
                            0.016
                    end
                end)

        else

            if speedConnection then
                speedConnection:
                    Disconnect()

                speedConnection = nil
            end
        end
    end
})

PlayerTab:Section({
    Title = "FEATURE POWER",
    Icon = "flame"
})

PlayerTab:Toggle({

    Title = "NO CLIP",

    Value = false,

    Callback = function(state)

        if state then

            if noclipConnection then
                noclipConnection:Disconnect()
            end

            noclipConnection =
                RunService.Stepped:
                Connect(function()

                    local char =
                        LocalPlayer.Character

                    if char then

                        for _, part in pairs(
                            char:GetDescendants()
                        ) do

                            if
                                part:IsA(
                                    "BasePart"
                                )
                            then

                                part.CanCollide =
                                    false
                            end
                        end
                    end
                end)

        else

            if noclipConnection then

                noclipConnection:
                    Disconnect()

                noclipConnection = nil
            end

            local char =
                LocalPlayer.Character

            if char then

                for _, part in pairs(
                    char:GetDescendants()
                ) do

                    if
                        part:IsA(
                            "BasePart"
                        )
                    then

                        part.CanCollide =
                            true
                    end
                end
            end
        end
    end
})

-- ============================================================
--    INFO TABS MENU XLILNYX OFFICIAL LEADER LEZARD NEW ERA
-- ============================================================

local Info = InfoTab

Info:Divider()

Info:Section({
    Title = "XLILNYX OFFICIAL INFORMATION",
    TextXAlignment = "Center",
    TextSize = 17,
})

Info:Divider()

-- ============================================================
--    INFORMATION WHATSAPP XLILNYX OFFICIAL LEADER LEZARD
-- ============================================================

Info:Paragraph({
    Title = "MY CHANNEL WHATSAPP OFFICIAL",
    Desc = "JOIN MY CHANNEL WHATSAPP FOR SCRIPT",
    TextXAlignment = "Center",

    Image = "",
    ImageSize = 0,
    Thumbnail = "",
    ThumbnailSize = 0,
    Locked = false,

    Buttons = {
        {
            Icon = "copy",
            Title = "Copy Link",

            Callback = function()

                pcall(function()

                    setclipboard(
                        "https://whatsapp.com/channel/0029Vb7oF1XCBtxGrzkQtq29"
                    )

                    WindUI:Notify({
                        Title = "LINK COPIED",
                        Content =
                            "LINK WHATSAPP BERHASIL DISALIN\n"
                            .. "THANKS FOR USING MY SCRIPT",
                        TextAlign = "Center",
                        Duration = 3,
                        Icon = "copy"
                    })

                end)

                print("YEAYYY,COPIED LINK TO CLIPBOARD")

            end,
        }
    }
})

print("========================================")
print(" XLILNYX OFFICIAL")
print(" VIOLENCE DISTRICT")
print(" VERSION : BETA")
print(" STATUS  : DATABASE ACTIVE")
print("========================================")

-- ==============================================================================================================
-- 
--                       OFFICIAL SCRIPT MADE BY XLILNYX OFFICIAL LEADER LEZARD NEW ERA
-- 
-- ==============================================================================================================
