if _G.RunScriptRequest then
	game:GetService("Players").LocalPlayer:Kick("[ Run Script only 1 times ]")
else
	_G.RunScriptRequest = true
end
local Notification = require(game:GetService("ReplicatedStorage").Notification)
Notification.new("<Color=Blue>Loading <Reviz Hub> ...<Color=/>"):Display()
wait(1)
Notification.new("<Color=Blue><Discord> : https://discord.gg/9vw7emS3vZ!<Color=/>"):Display()
wait(1)
local LocalHttp = ""
-----------------------------------------------------------------
Notification.new("Version Premium"):Display()
local ScreenGui = Instance.new("ScreenGui")
local ImageButton = Instance.new("ImageButton")
ScreenGui.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
ScreenGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
ImageButton.Parent = ScreenGui
ImageButton.BackgroundColor3 = Color3.fromRGB(143, 0, 255)
ImageButton.BorderSizePixel = 0
ImageButton.Position = UDim2.new(0.120833337, 0, 0.0952890813, 0)--(0.120833337, 0, 0.0952890813, 0)
ImageButton.Size = UDim2.new(0, 50, 0, 50)
ImageButton.Draggable = true
ImageButton.BackgroundTransparency = 1
ImageButton.Image = "http://www.roblox.com/asset/?id=13180421663"
ImageButton.MouseButton1Down:connect(function()
    game:GetService("VirtualInputManager"):SendKeyEvent(true,305,false,game)
    game:GetService("VirtualInputManager"):SendKeyEvent(false,305,false,game)
end)
do
	local ui = game.CoreGui:FindFirstChild("SimpleUI")
	if ui then
		ui:Destroy()
	end
end
local logo = getgenv().Logo 
if logo == nil then logo = 13018730049 end
local UserInputService = game:GetService("UserInputService")
local TweenService = game:GetService("TweenService")

local function MakeDraggable(topbarobject, object)
	local Dragging = nil
	local DragInput = nil
	local DragStart = nil
	local StartPosition = nil

	local function Update(input)
		local Delta = input.Position - DragStart
		local pos =
			UDim2.new(
				StartPosition.X.Scale,
				StartPosition.X.Offset + Delta.X,
				StartPosition.Y.Scale,
				StartPosition.Y.Offset + Delta.Y
			)
		local Tween = TweenService:Create(object, TweenInfo.new(0.2), {Position = pos})
		Tween:Play()
	end

	topbarobject.InputBegan:Connect(
		function(input)
			if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
				Dragging = true
				DragStart = input.Position
				StartPosition = object.Position

				input.Changed:Connect(
					function()
						if input.UserInputState == Enum.UserInputState.End then
							Dragging = false
						end
					end
				)
			end
		end
	)

	topbarobject.InputChanged:Connect(
		function(input)
			if
				input.UserInputType == Enum.UserInputType.MouseMovement or
				input.UserInputType == Enum.UserInputType.Touch
			then
				DragInput = input
			end
		end
	)

	UserInputService.InputChanged:Connect(
		function(input)
			if input == DragInput and Dragging then
				Update(input)
			end
		end
	)
end

local library = {}

function library:AddWindow(text,keybind)
    local currenttab = ""
    local uihide = false
    local abc = false
    keybind = keybind or Enum.KeyCode.RightControl
    yoo = string.gsub(tostring(keybind),"Enum.KeyCode.","")

    local Kub = Instance.new("ScreenGui")
    Kub.Name = "SimpleUI"
    Kub.Parent = game.CoreGui
    Kub.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

    local Main = Instance.new("Frame")
    Main.Name = "Main"
    Main.Parent = Kub
    Main.AnchorPoint = Vector2.new(0.5,0.5)
    Main.ClipsDescendants = true
    Main.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
    Main.Position = UDim2.new(0.5, 0, 0.499, 0)
    Main.Size = UDim2.new(0, 0, 0, 0)

    Main:TweenSize(UDim2.new(0, 656, 0, 400),"Out","Quad",0.4,true)

    local MainCorner = Instance.new("UICorner")
    MainCorner.Name = "MainCorner"
    MainCorner.Parent = Main

    local Top = Instance.new("Frame")
    Top.Name = "Top"
    Top.Parent = Main
    Top.BackgroundColor3 = Color3.fromRGB(35, 35, 35)
    Top.Size = UDim2.new(0, 656, 0, 27)

    local TopCorner = Instance.new("UICorner")
    TopCorner.Name = "TopCorner"
    TopCorner.Parent = Top

    local NameHub = Instance.new("TextLabel")
    NameHub.Name = "NameHub"
    NameHub.Parent = Top
    NameHub.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    NameHub.BackgroundTransparency = 1.000
    NameHub.Position = UDim2.new(0, 12, 0, 0)
    NameHub.Size = UDim2.new(0, 61, 0, 27)
    NameHub.Font = Enum.Font.GothamSemibold
    NameHub.Text = string.upper(text)
    NameHub.TextColor3 = Color3.fromRGB(51, 153, 255)
    NameHub.TextSize = 17.000

    local NameHub2 = Instance.new("TextLabel")
    NameHub2.Name = "NameHub2"
    NameHub2.Parent = Top
    NameHub2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    NameHub2.BackgroundTransparency = 1.000
    NameHub2.Position = UDim2.new(0, 71, 0, 0)
    NameHub2.Size = UDim2.new(0, 61, 0, 27)
    NameHub2.Font = Enum.Font.GothamSemibold
    NameHub2.Text = ""
    NameHub2.TextColor3 = Color3.fromRGB(51, 153, 255)
    NameHub2.TextSize = 17.000
    NameHub2.TextXAlignment = Enum.TextXAlignment.Left

    local UiToggle_UiStroke1 = Instance.new("UIStroke")
	UiToggle_UiStroke1.Color = Color3.fromRGB(51, 153, 255)
	UiToggle_UiStroke1.Thickness = 2
	UiToggle_UiStroke1.Name = "UiToggle_UiStroke1"
	UiToggle_UiStroke1.Parent = Main

    local Top = Instance.new("Frame")
    Top.Name = "Top"
    Top.Parent = Main
    Top.BackgroundColor3 = Color3.fromRGB(35, 35, 35)
    Top.Size = UDim2.new(0, 656, 0, 27)

    local TopCorner = Instance.new("UICorner")
    TopCorner.Name = "TopCorner"
    TopCorner.Parent = Top

    local NameHub = Instance.new("TextLabel")
    NameHub.Name = "NameHub"
    NameHub.Parent = Top
    NameHub.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    NameHub.BackgroundTransparency = 1.000
    NameHub.Position = UDim2.new(0, 12, 0, 0)
    NameHub.Size = UDim2.new(0, 61, 0, 27)
    NameHub.Font = Enum.Font.GothamSemibold
    NameHub.Text = string.upper(text)
    NameHub.TextColor3 = Color3.fromRGB(51, 153, 255)
    NameHub.TextSize = 17.000

    local NameHub2 = Instance.new("TextLabel")
    NameHub2.Name = "NameHub2"
    NameHub2.Parent = Top
    NameHub2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    NameHub2.BackgroundTransparency = 1.000
    NameHub2.Position = UDim2.new(0, 71, 0, 0)
    NameHub2.Size = UDim2.new(0, 61, 0, 27)
    NameHub2.Font = Enum.Font.GothamSemibold
    NameHub2.Text = ""
    NameHub2.TextColor3 = Color3.fromRGB(51, 153, 255)
    NameHub2.TextSize = 17.000
    NameHub2.TextXAlignment = Enum.TextXAlignment.Left
    
    local Tab = Instance.new("Frame")
    Tab.Name = "Tab"
    Tab.Parent = Main
    Tab.BackgroundColor3 = Color3.fromRGB(35, 35, 35)
    Tab.Position = UDim2.new(0, 12, 0, 40)
    Tab.Size = UDim2.new(0, 633, 0, 29)

    local TabCorner = Instance.new("UICorner")
    TabCorner.Name = "TabCorner"
    TabCorner.Parent = Tab
    
    local ScrollTab = Instance.new("ScrollingFrame")
    ScrollTab.Name = "ScrollTab"
    ScrollTab.Parent = Tab
    ScrollTab.Active = true
    ScrollTab.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    ScrollTab.BackgroundTransparency = 1.000
    ScrollTab.BorderSizePixel = 0
    ScrollTab.Size = UDim2.new(0, 633, 0, 29)
    ScrollTab.CanvasSize = UDim2.new(0, 0, 0, 0)
    ScrollTab.ScrollBarThickness = 0
    
    local UIPadding = Instance.new("UIPadding")
    UIPadding.Parent = ScrollTab
    UIPadding.PaddingLeft = UDim.new(0, 10)

    local TabList = Instance.new("UIListLayout")
    TabList.Name = "TabList"
    TabList.Parent = ScrollTab
    TabList.FillDirection = Enum.FillDirection.Horizontal
    TabList.SortOrder = Enum.SortOrder.LayoutOrder
    TabList.Padding = UDim.new(0, 5)

    MakeDraggable(Top,Main)

	UserInputService.InputBegan:Connect(function(input)
		if input.KeyCode == Enum.KeyCode[yoo] then
			if uihide == false then
				uihide = true
				Main:TweenSize(UDim2.new(0, 0, 0, 0),"In","Quad",0.4,true)
			else
				uihide = false
				Main:TweenSize(UDim2.new(0, 656, 0, 400),"Out","Quad",0.4,true)
			end
		end
	end)

    local Page = Instance.new("Frame")
    Page.Name = "Page"
    Page.Parent = Main
    Page.BackgroundColor3 = Color3.fromRGB(35, 35, 35)
    Page.Position = UDim2.new(0, 11, 0, 80)
    Page.Size = UDim2.new(0, 633, 0, 305)

    local PageCorner = Instance.new("UICorner")
    PageCorner.Name = "PageCorner"
    PageCorner.Parent = Page

    local PageFolder = Instance.new("Folder")
    PageFolder.Name = "PageFolder"
    PageFolder.Parent = Page

    local UIPageLayout = Instance.new("UIPageLayout")

    UIPageLayout.Parent = PageFolder
    UIPageLayout.SortOrder = Enum.SortOrder.LayoutOrder
    UIPageLayout.EasingDirection = Enum.EasingDirection.InOut
    UIPageLayout.EasingStyle = Enum.EasingStyle.Quad
    UIPageLayout.Padding = UDim.new(0, 10)
    UIPageLayout.TweenTime = 0.400
    UIPageLayout.GamepadInputEnabled = false
    UIPageLayout.ScrollWheelInputEnabled = false
    UIPageLayout.TouchInputEnabled = false


    local Ui = {}
    function Ui:AddTab(text)
        local TabButton = Instance.new("TextButton")
        TabButton.Name = "TabButton"
        TabButton.Parent = ScrollTab
        TabButton.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
        TabButton.BackgroundTransparency = 1.000
        TabButton.Size = UDim2.new(0, 100, 0, 29)
        TabButton.Font = Enum.Font.GothamSemibold
        TabButton.TextColor3 = Color3.fromRGB(225, 225, 225)
        TabButton.TextSize = 15.000
        TabButton.Text = text
        TabButton.TextTransparency = 0.500
        
        local MainPage = Instance.new("Frame")

        MainPage.Name = "MainPage"
        MainPage.Parent = PageFolder
        MainPage.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
        MainPage.BackgroundTransparency = 1.000
        MainPage.Position = UDim2.new(0.00357977885, 0, 0, 0)
        MainPage.Size = UDim2.new(0, 632, 0, 305)

        TabButton.MouseButton1Click:Connect(function()
            for i,v in next, ScrollTab:GetChildren() do
                if v:IsA("TextButton") then
                    TweenService:Create(
                        v,
                        TweenInfo.new(0.3,Enum.EasingStyle.Quad,Enum.EasingDirection.Out),
                        {TextTransparency = 0.5}
                    ):Play()
                end
                TweenService:Create(
                    TabButton,
                    TweenInfo.new(0.3,Enum.EasingStyle.Quad,Enum.EasingDirection.Out),
                    {TextTransparency = 0}
                ):Play()
            end
            for i,v in next, PageFolder:GetChildren() do 
                if v.Name == "MainPage" then
                    currenttab = v.Name
                end
                UIPageLayout:JumpTo(MainPage)
            end
		end)

		if abc == false then
            for i,v in next, ScrollTab:GetChildren() do
                if v:IsA("TextButton") then
                    TweenService:Create(
                        v,
                        TweenInfo.new(0.3,Enum.EasingStyle.Quad,Enum.EasingDirection.Out),
                        {TextTransparency = 0.5}
                    ):Play()
                end
                TweenService:Create(
                    TabButton,
                    TweenInfo.new(0.3,Enum.EasingStyle.Quad,Enum.EasingDirection.Out),
                    {TextTransparency = 0}
                ):Play()
            end
            UIPageLayout:JumpToIndex(1)
			abc = true
		end

        local uitab = {}
        function uitab:AddPage()
            local MainFramePage = Instance.new("Frame")
            local UICorner = Instance.new("UICorner")
            local ScrollPage = Instance.new("ScrollingFrame")
            local PageList = Instance.new("UIListLayout")
            local UIPadding = Instance.new("UIPadding")
            local UIPadding_2 = Instance.new("UIPadding")
            local UIListLayout_2 = Instance.new("UIListLayout")
        
            MainFramePage.Name = "MainFramePage"
            MainFramePage.Parent = MainPage
            MainFramePage.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
            MainFramePage.Size = UDim2.new(0, 300, 0, 285)
        
            UICorner.Parent = MainFramePage
        
            ScrollPage.Name = "ScrollPage"
            ScrollPage.Parent = MainFramePage
            ScrollPage.Active = true
            ScrollPage.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
            ScrollPage.BackgroundTransparency = 1.000
            ScrollPage.BorderSizePixel = 0
            ScrollPage.Size = UDim2.new(0, 300, 0, 285)
            ScrollPage.CanvasSize = UDim2.new(0, 0, 0, 0)
            ScrollPage.ScrollBarThickness = 0
        
            PageList.Name = "PageList"
            PageList.Parent = ScrollPage
            PageList.SortOrder = Enum.SortOrder.LayoutOrder
            PageList.Padding = UDim.new(0, 13)
        
            UIPadding.Parent = ScrollPage
            UIPadding.PaddingLeft = UDim.new(0, 20)
            UIPadding.PaddingTop = UDim.new(0, 10)
        
            UIPadding_2.Parent = MainPage
            UIPadding_2.PaddingLeft = UDim.new(0, 10)
            UIPadding_2.PaddingTop = UDim.new(0, 10)
        
            UIListLayout_2.Parent = MainPage
            UIListLayout_2.FillDirection = Enum.FillDirection.Horizontal
            UIListLayout_2.SortOrder = Enum.SortOrder.LayoutOrder
            UIListLayout_2.Padding = UDim.new(0, 13)

            game:GetService("RunService").Stepped:Connect(function()
                pcall(function()
                    ScrollPage.CanvasSize = UDim2.new(0,0,0,PageList.AbsoluteContentSize.Y + 26)
                    ScrollTab.CanvasSize = UDim2.new(0,TabList.AbsoluteContentSize.X + 10,0,0)
                end)
            end)

            local main = {}
            function main:AddSeperator(text)
                local SepText = {}
                local Seperator = Instance.new("Frame")
                local Sep1 = Instance.new("Frame")
                local Sep2 = Instance.new("TextLabel")
                local Sep3 = Instance.new("Frame")
                
                Seperator.Name = "Seperator"
                Seperator.Parent = ScrollPage
                Seperator.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                Seperator.BackgroundTransparency = 1.000
                Seperator.Size = UDim2.new(0, 260, 0, 20)
                
                Sep1.Name = "Sep1"
                Sep1.Parent = Seperator
                Sep1.BackgroundColor3 = Color3.fromRGB(51, 153, 255)
                Sep1.BorderSizePixel = 0
                Sep1.Position = UDim2.new(0, 0, 0, 10)
                Sep1.Size = UDim2.new(0, 40, 0, 1)
                
                Sep2.Name = "Sep2"
                Sep2.Parent = Seperator
                Sep2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                Sep2.BackgroundTransparency = 1.000
                Sep2.Position = UDim2.new(0, 80, 0, 0)
                Sep2.Size = UDim2.new(0, 100, 0, 20)
                Sep2.Font = Enum.Font.GothamSemibold
                Sep2.Text = text
                Sep2.TextColor3 = Color3.fromRGB(255, 255, 255)
                Sep2.TextSize = 14.000
                
                Sep3.Name = "Sep3"
                Sep3.Parent = Seperator
                Sep3.BackgroundColor3 = Color3.fromRGB(51, 153, 255)
                Sep3.BorderSizePixel = 0
                Sep3.Position = UDim2.new(0, 220, 0, 10)
                Sep3.Size = UDim2.new(0, 40, 0, 1)

                function SepText:RefreshSeperator(l)
                    Sep2.Text = l
                end
                return SepText
            end

            function main:AddLine()
                local Linee = Instance.new("Frame")
                local Line = Instance.new("Frame")
                
                Linee.Name = "Linee"
                Linee.Parent = ScrollPage
                Linee.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                Linee.BackgroundTransparency = 1.000
                Linee.Position = UDim2.new(0, 0, 0.119999997, 0)
                Linee.Size = UDim2.new(0, 260, 0, 20)
                
                Line.Name = "Line"
                Line.Parent = Linee
                Line.BackgroundColor3 = Color3.fromRGB(51, 153, 255)
                Line.BorderSizePixel = 0
                Line.Position = UDim2.new(0, 0, 0, 10)
                Line.Size = UDim2.new(0, 260, 0, 1)
            end

            function main:Button(text,callback)
                local Button = Instance.new("Frame")
                local ButtonCorner = Instance.new("UICorner")
                local Btn = Instance.new("TextButton")
                local BtnCorner = Instance.new("UICorner")
                local btim = Instance.new('ImageLabel')
                
                Button.Name = "Button"
                Button.Parent = ScrollPage
                Button.BackgroundColor3 = Color3.fromRGB(51, 153, 255)
                Button.Size = UDim2.new(0, 260, 0, 38)
                Button.BackgroundTransparency = 0.5
                
                ButtonCorner.CornerRadius = UDim.new(0, 5)
                ButtonCorner.Name = "ButtonCorner"
                ButtonCorner.Parent = Button
                
                Btn.Name = "Btn"
                Btn.Parent = Button
                Btn.AutoButtonColor = false
                Btn.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
                Btn.Position = UDim2.new(0, 1, 0, 1)
                Btn.Size = UDim2.new(0, 258, 0, 36)
                Btn.Font = Enum.Font.GothamSemibold
                Btn.TextColor3 = Color3.fromRGB(225, 225, 225)
                Btn.TextSize = 16.000
                Btn.Text = text
                Btn.TextTransparency = 0.500
                Btn.TextXAlignment = Enum.TextXAlignment.Center
                
                BtnCorner.CornerRadius = UDim.new(0, 5)
                BtnCorner.Name = "BtnCorner"
                BtnCorner.Parent = Btn

                btim.Name = "ButtonLogo"
                btim.Parent = Btn
                btim.BackgroundTransparency = 1.000
                btim.Position = UDim2.new(0, 5, 0, 3)
                btim.Rotation = 0
                btim.Size = UDim2.new(0, 30, 0, 30)
                btim.Image = ''
                btim.ImageTransparency = 0

                Btn.MouseEnter:Connect(function()
                    TweenService:Create(
                        Btn,
                        TweenInfo.new(0.3,Enum.EasingStyle.Quad,Enum.EasingDirection.Out),
                        {TextTransparency = 0}
                    ):Play()
                    TweenService:Create(
                        Button,
                        TweenInfo.new(0.3,Enum.EasingStyle.Quad,Enum.EasingDirection.Out),
                        {BackgroundTransparency = 0}
                    ):Play()
                end)

                Btn.MouseLeave:Connect(function()
                    TweenService:Create(
                        Btn,
                        TweenInfo.new(0.3,Enum.EasingStyle.Quad,Enum.EasingDirection.Out),
                        {TextTransparency = 0.5}
                    ):Play()
                    TweenService:Create(
                        Button,
                        TweenInfo.new(0.3,Enum.EasingStyle.Quad,Enum.EasingDirection.Out),
                        {BackgroundTransparency = 0.5}
                    ):Play()
                end)

                Btn.MouseButton1Click:Connect(function()
                    callback()
                    Btn.TextSize = 9
                    TweenService:Create(
                        Btn,
                        TweenInfo.new(0.4,Enum.EasingStyle.Back,Enum.EasingDirection.Out),
                        {TextSize = 16}
                    ):Play()
                end)
            end 

            function main:Dropdown(text,option,callback)
                local Dropdown = Instance.new("Frame")
                local dropcorner = Instance.new("UICorner")
                local Dropdownn = Instance.new("Frame")
                local droppcorner = Instance.new("UICorner")
                local DropBtn = Instance.new("TextButton")
                local DropLabel = Instance.new("TextLabel")
                local DropScroll = Instance.new("ScrollingFrame")
                local dpd = Instance.new("UIPadding")
                local dll = Instance.new("UIListLayout")
                local DropImage = Instance.new("ImageLabel")
                local isdropping = false

                Dropdown.Name = "Dropdown"
                Dropdown.Parent = ScrollPage
                Dropdown.BackgroundColor3 = Color3.fromRGB(51, 153, 255)
                Dropdown.BackgroundTransparency = 0.500
                Dropdown.Size = UDim2.new(0, 260, 0, 38) -- 114
                
                dropcorner.CornerRadius = UDim.new(0, 5)
                dropcorner.Name = "dropcorner"
                dropcorner.Parent = Dropdown
                
                Dropdownn.Name = "Dropdownn"
                Dropdownn.Parent = Dropdown
                Dropdownn.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
                Dropdownn.ClipsDescendants = true
                Dropdownn.Position = UDim2.new(0, 1, 0, 1)
                Dropdownn.Size = UDim2.new(0, 258, 0, 36) -- 112
                
                droppcorner.CornerRadius = UDim.new(0, 5)
                droppcorner.Name = "droppcorner"
                droppcorner.Parent = Dropdownn
                
                DropBtn.Name = "DropBtn"
                DropBtn.Parent = Dropdownn
                DropBtn.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                DropBtn.BackgroundTransparency = 1.000
                DropBtn.Size = UDim2.new(0, 258, 0, 36)
                DropBtn.Font = Enum.Font.SourceSans
                DropBtn.Text = ""
                DropBtn.TextColor3 = Color3.fromRGB(0, 0, 0)
                DropBtn.TextSize = 14.000
                
                DropLabel.Name = "DropLabel"
                DropLabel.Parent = Dropdownn
                DropLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                DropLabel.BackgroundTransparency = 1.000
                DropLabel.Position = UDim2.new(0, 15, 0, 0)
                DropLabel.Size = UDim2.new(0, 180, 0, 36)
                DropLabel.Font = Enum.Font.GothamSemibold
                DropLabel.Text = text
                DropLabel.TextColor3 = Color3.fromRGB(225, 225, 225)
                DropLabel.TextSize = 16.000
                DropLabel.TextTransparency = 0.500
                DropLabel.TextXAlignment = Enum.TextXAlignment.Left

                DropImage.Name = "DropImage"
                DropImage.Parent = Dropdownn
                DropImage.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                DropImage.BackgroundTransparency = 1.000
                DropImage.Position = UDim2.new(0, 230, 0, 9)
                DropImage.Rotation = 180.000
                DropImage.Size = UDim2.new(0, 20, 0, 20)
                DropImage.Image = "rbxassetid://6031090990"
                DropImage.ImageTransparency = 0.500
                
                DropScroll.Name = "DropScroll"
                DropScroll.Parent = DropLabel
                DropScroll.Active = true
                DropScroll.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                DropScroll.BackgroundTransparency = 1.000
                DropScroll.BorderSizePixel = 0
                DropScroll.Position = UDim2.new(-0.105555557, 0, 1.11111116, 0)
                DropScroll.Size = UDim2.new(0, 258, 0, 128) -- 70
                DropScroll.CanvasSize = UDim2.new(0, 0, 0, 0)
                DropScroll.ScrollBarThickness = 3
                
                dpd.Name = "dpd"
                dpd.Parent = DropScroll
                dpd.PaddingLeft = UDim.new(0, 5)
                dpd.PaddingTop = UDim.new(0, 5)
                
                dll.Name = "dll"
                dll.Parent = DropScroll
                dll.SortOrder = Enum.SortOrder.LayoutOrder
                dll.Padding = UDim.new(0, 5)

                for i,v in next, option do
                    local Item = Instance.new("TextButton")
                    Item.Name = "Item"
                    Item.Parent = DropScroll
                    Item.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                    Item.BackgroundTransparency = 1.000
                    Item.Size = UDim2.new(0, 248, 0, 29)
                    Item.Font = Enum.Font.GothamSemibold
                    Item.TextColor3 = Color3.fromRGB(225, 225, 225)
                    Item.TextSize = 16.000
                    Item.Text = tostring(v)
                    Item.TextTransparency = 0.5

                    Item.MouseEnter:Connect(function()
                        TweenService:Create(
                        Item,
                        TweenInfo.new(0.4,Enum.EasingStyle.Back,Enum.EasingDirection.Out),
                        {TextColor3 = Color3.fromRGB(51, 153, 255)}
                    ):Play()
                        TweenService:Create(
                            Item,
                            TweenInfo.new(0.3,Enum.EasingStyle.Quad,Enum.EasingDirection.Out),
                            {TextTransparency = 0}
                        ):Play()
                    end)
                    Item.MouseLeave:Connect(function()
                        TweenService:Create(
                        Item,
                        TweenInfo.new(0.4,Enum.EasingStyle.Back,Enum.EasingDirection.Out),
                        {TextColor3 = Color3.fromRGB(255,255,255)}
                    ):Play()
                        TweenService:Create(
                            Item,
                            TweenInfo.new(0.3,Enum.EasingStyle.Quad,Enum.EasingDirection.Out),
                            {TextTransparency = 0.5}
                        ):Play()
                    end)

                    Item.MouseButton1Click:Connect(function()
                        isdropping = false
                        Dropdown:TweenSize(UDim2.new(0,260,0,38),"Out","Quad",0.3,true)
                        Dropdownn:TweenSize(UDim2.new(0,258,0,36),"Out","Quad",0.3,true)
                        TweenService:Create(
                            DropImage,
                            TweenInfo.new(0.3,Enum.EasingStyle.Quad,Enum.EasingDirection.Out),
                            {Rotation = 180}
                        ):Play()
                        callback(Item.Text)
                        DropLabel.Text = text.." : "..Item.Text
                        callback(v)
                    end)
                end 

                DropScroll.CanvasSize = UDim2.new(0,0,0,dll.AbsoluteContentSize.Y + 10)

                DropBtn.MouseEnter:Connect(function()
                    TweenService:Create(
                        Dropdown,
                        TweenInfo.new(0.3,Enum.EasingStyle.Quad,Enum.EasingDirection.Out),
                        {BackgroundTransparency = 0}
                    ):Play()
                    TweenService:Create(
                        DropLabel,
                        TweenInfo.new(0.3,Enum.EasingStyle.Quad,Enum.EasingDirection.Out),
                        {TextTransparency = 0}
                    ):Play()
                    TweenService:Create(
                        DropImage,
                        TweenInfo.new(0.3,Enum.EasingStyle.Quad,Enum.EasingDirection.Out),
                        {ImageTransparency = 0}
                    ):Play()
                end)

                DropBtn.MouseLeave:Connect(function()
                    TweenService:Create(
                        Dropdown,
                        TweenInfo.new(0.3,Enum.EasingStyle.Quad,Enum.EasingDirection.Out),
                        {BackgroundTransparency = 0.5}
                    ):Play()
                    TweenService:Create(
                        DropLabel,
                        TweenInfo.new(0.3,Enum.EasingStyle.Quad,Enum.EasingDirection.Out),
                        {TextTransparency = 0.5}
                    ):Play()
                    TweenService:Create(
                        DropImage,
                        TweenInfo.new(0.3,Enum.EasingStyle.Quad,Enum.EasingDirection.Out),
                        {ImageTransparency = 0.5}
                    ):Play()
                end)

                DropBtn.MouseButton1Click:Connect(function()
                    if isdropping == false then
                        isdropping = true
                        Dropdown:TweenSize(UDim2.new(0,260,0,145),"Out","Quad",0.3,true) --114
                        Dropdownn:TweenSize(UDim2.new(0,258,0,143),"Out","Quad",0.3,true)
                        DropBtn:TweenSize(UDim2.new(0,258,0,143),"Out","Quad",0.3,true)
                        TweenService:Create(
                            DropImage,
                            TweenInfo.new(0.3,Enum.EasingStyle.Quad,Enum.EasingDirection.Out),
                            {Rotation = 0}
                        ):Play()
                    else
                        isdropping = false
                        Dropdown:TweenSize(UDim2.new(0,260,0,38),"Out","Quad",0.3,true)
                        Dropdownn:TweenSize(UDim2.new(0,258,0,36),"Out","Quad",0.3,true)
                        DropBtn:TweenSize(UDim2.new(0,258,0,36),"Out","Quad",0.3,true)
                        TweenService:Create(
                            DropImage,
                            TweenInfo.new(0.3,Enum.EasingStyle.Quad,Enum.EasingDirection.Out),
                            {Rotation = 180}
                        ):Play()
                    end
                end)

                local drop = {}

                function drop:Clear()
                    DropLabel.Text = tostring(text).." : "
                    isdropping = false
                    Dropdown:TweenSize(UDim2.new(0,260,0,38),"Out","Quad",0.3,true)
                    Dropdownn:TweenSize(UDim2.new(0,258,0,36),"Out","Quad",0.3,true)
                    TweenService:Create(
                        DropImage,
                        TweenInfo.new(0.3,Enum.EasingStyle.Quad,Enum.EasingDirection.Out),
                        {Rotation = 180}
                    ):Play()
                    for i, v in next, DropScroll:GetChildren() do
                        if v:IsA("TextButton") then
                            v:Destroy()
                        end
                    end
                end
                function drop:Add(t)
                    local Item = Instance.new("TextButton")
                    Item.Name = "Item"
                    Item.Parent = DropScroll
                    Item.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                    Item.BackgroundTransparency = 1.000
                    Item.Size = UDim2.new(0, 248, 0, 29)
                    Item.Font = Enum.Font.GothamSemibold
                    Item.TextColor3 = Color3.fromRGB(255, 255, 255)
                    Item.TextSize = 16.000
                    Item.TextTransparency = 0.5
                    Item.Text = tostring(t)

                    Item.MouseButton1Click:Connect(function()
                        isdropping = false
                        Dropdown:TweenSize(UDim2.new(0,260,0,36),"Out","Quad",0.3,true)
                        Dropdownn:TweenSize(UDim2.new(0,258,0,34),"Out","Quad",0.3,true)
                        TweenService:Create(
                            DropImage,
                            TweenInfo.new(0.3,Enum.EasingStyle.Quad,Enum.EasingDirection.Out),
                            {Rotation = 180}
                        ):Play()
                        callback(Item.Text)
                        DropLabel.Text = text.." : "..Item.Text
                        callback(t)
                    end)
                end
                return drop
            end

            function main:Slider(text,min,max,set,callback)
                local Slider = Instance.new("Frame")
                local slidercorner = Instance.new("UICorner")
                local sliderr = Instance.new("Frame")
                local sliderrcorner = Instance.new("UICorner")
                local SliderLabel = Instance.new("TextLabel")
                local HAHA = Instance.new("Frame")
                local AHEHE = Instance.new("TextButton")
                local bar = Instance.new("Frame")
                local bar1 = Instance.new("Frame")
                local bar1corner = Instance.new("UICorner")
                local barcorner = Instance.new("UICorner")
                local circlebar = Instance.new("Frame")
                local UICorner = Instance.new("UICorner")
                local slidervalue = Instance.new("Frame")
                local valuecorner = Instance.new("UICorner")
                local TextBox = Instance.new("TextBox")
                local UICorner_2 = Instance.new("UICorner")

                Slider.Name = "Slider"
                Slider.Parent = ScrollPage
                Slider.BackgroundColor3 = Color3.fromRGB(51, 153, 255)
                Slider.BackgroundTransparency = 0.500
                Slider.Size = UDim2.new(0, 260, 0, 48)

                slidercorner.CornerRadius = UDim.new(0, 5)
                slidercorner.Name = "slidercorner"
                slidercorner.Parent = Slider

                sliderr.Name = "sliderr"
                sliderr.Parent = Slider
                sliderr.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
                sliderr.Position = UDim2.new(0, 1, 0, 1)
                sliderr.Size = UDim2.new(0, 258, 0, 46)

                sliderrcorner.CornerRadius = UDim.new(0, 5)
                sliderrcorner.Name = "sliderrcorner"
                sliderrcorner.Parent = sliderr

                SliderLabel.Name = "SliderLabel"
                SliderLabel.Parent = sliderr
                SliderLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                SliderLabel.BackgroundTransparency = 1.000
                SliderLabel.Position = UDim2.new(0.0581395365, 0, 0, 0)
                SliderLabel.Size = UDim2.new(0, 180, 0, 26)
                SliderLabel.Font = Enum.Font.GothamSemibold
                SliderLabel.Text = text
                SliderLabel.TextColor3 = Color3.fromRGB(225, 225, 225)
                SliderLabel.TextSize = 16.000
                SliderLabel.TextTransparency = 0.500
                SliderLabel.TextXAlignment = Enum.TextXAlignment.Left

                HAHA.Name = "HAHA"
                HAHA.Parent = sliderr
                HAHA.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                HAHA.BackgroundTransparency = 1.000
                HAHA.Size = UDim2.new(0, 258, 0, 46)

                AHEHE.Name = "AHEHE"
                AHEHE.Parent = sliderr
                AHEHE.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                AHEHE.BackgroundTransparency = 1.000
                AHEHE.Position = UDim2.new(0, 10, 0, 35)
                AHEHE.Size = UDim2.new(0, 238, 0, 5)
                AHEHE.Font = Enum.Font.SourceSans
                AHEHE.Text = ""
                AHEHE.TextColor3 = Color3.fromRGB(0, 0, 0)
                AHEHE.TextSize = 14.000

                bar.Name = "bar"
                bar.Parent = AHEHE
                bar.BackgroundColor3 = Color3.fromRGB(35, 35, 35)
                bar.Size = UDim2.new(0, 238, 0, 5)

                bar1.Name = "bar1"
                bar1.Parent = bar
                bar1.BackgroundColor3 = Color3.fromRGB(51, 153, 255)
                bar1.BackgroundTransparency = 0.500
                bar1.Size = UDim2.new(set/max, 0, 0, 5)

                bar1corner.CornerRadius = UDim.new(0, 5)
                bar1corner.Name = "bar1corner"
                bar1corner.Parent = bar1

                barcorner.CornerRadius = UDim.new(0, 5)
                barcorner.Name = "barcorner"
                barcorner.Parent = bar

                circlebar.Name = "circlebar"
                circlebar.Parent = bar1
                circlebar.BackgroundColor3 = Color3.fromRGB(180, 180, 180)
                circlebar.Position = UDim2.new(1, -2, 0, -3)
                circlebar.Size = UDim2.new(0, 10, 0, 10)

                UICorner.CornerRadius = UDim.new(0, 5)
                UICorner.Parent = circlebar

                slidervalue.Name = "slidervalue"
                slidervalue.Parent = sliderr
                slidervalue.BackgroundColor3 = Color3.fromRGB(51, 153, 255)
                slidervalue.BackgroundTransparency = 0.500
                slidervalue.Position = UDim2.new(0, 185, 0, 5)
                slidervalue.Size = UDim2.new(0, 65, 0, 18)

                valuecorner.CornerRadius = UDim.new(0, 5)
                valuecorner.Name = "valuecorner"
                valuecorner.Parent = slidervalue

                TextBox.Parent = slidervalue
                TextBox.BackgroundColor3 = Color3.fromRGB(35, 35, 35)
                TextBox.Position = UDim2.new(0, 1, 0, 1)
                TextBox.Size = UDim2.new(0, 63, 0, 16)
                TextBox.Font = Enum.Font.GothamSemibold
                TextBox.TextColor3 = Color3.fromRGB(225, 225, 225)
                TextBox.TextSize = 9.000
                TextBox.Text = set
                TextBox.TextTransparency = 0.500

                UICorner_2.CornerRadius = UDim.new(0, 5)
                UICorner_2.Parent = TextBox

                HAHA.MouseEnter:Connect(function()
                    TweenService:Create(
                        Slider,
                        TweenInfo.new(0.3,Enum.EasingStyle.Quad,Enum.EasingDirection.Out),
                        {BackgroundTransparency = 0}
                    ):Play()
                    TweenService:Create(
                        SliderLabel,
                        TweenInfo.new(0.3,Enum.EasingStyle.Quad,Enum.EasingDirection.Out),
                        {TextTransparency = 0}
                    ):Play()
                    TweenService:Create(
                        bar1,
                        TweenInfo.new(0.3,Enum.EasingStyle.Quad,Enum.EasingDirection.Out),
                        {BackgroundTransparency = 0}
                    ):Play()
                    TweenService:Create(
                        circlebar,
                        TweenInfo.new(0.3,Enum.EasingStyle.Quad,Enum.EasingDirection.Out),
                        {BackgroundColor3 = Color3.fromRGB(225,225,225)}
                    ):Play()
                    TweenService:Create(
                        slidervalue,
                        TweenInfo.new(0.3,Enum.EasingStyle.Quad,Enum.EasingDirection.Out),
                        {BackgroundTransparency = 0}
                    ):Play()
                    TweenService:Create(
                        TextBox,
                        TweenInfo.new(0.3,Enum.EasingStyle.Quad,Enum.EasingDirection.Out),
                        {TextTransparency = 0}
                    ):Play()
                end)

                HAHA.MouseLeave:Connect(function()
                    TweenService:Create(
                        Slider,
                        TweenInfo.new(0.3,Enum.EasingStyle.Quad,Enum.EasingDirection.Out),
                        {BackgroundTransparency = 0.5}
                    ):Play()
                    TweenService:Create(
                        SliderLabel,
                        TweenInfo.new(0.3,Enum.EasingStyle.Quad,Enum.EasingDirection.Out),
                        {TextTransparency = 0.5}
                    ):Play()
                    TweenService:Create(
                        bar1,
                        TweenInfo.new(0.3,Enum.EasingStyle.Quad,Enum.EasingDirection.Out),
                        {BackgroundTransparency = 0.5}
                    ):Play()
                    TweenService:Create(
                        circlebar,
                        TweenInfo.new(0.3,Enum.EasingStyle.Quad,Enum.EasingDirection.Out),
                        {BackgroundColor3 = Color3.fromRGB(180,180,180)}
                    ):Play()
                    TweenService:Create(
                        slidervalue,
                        TweenInfo.new(0.3,Enum.EasingStyle.Quad,Enum.EasingDirection.Out),
                        {BackgroundTransparency = 0.5}
                    ):Play()
                    TweenService:Create(
                        TextBox,
                        TweenInfo.new(0.3,Enum.EasingStyle.Quad,Enum.EasingDirection.Out),
                        {TextTransparency = 0.5}
                    ):Play()
                end)

                local mouse = game.Players.LocalPlayer:GetMouse()
                local uis = game:GetService("UserInputService")

                if Value == nil then
                    Value = set
                    pcall(function()
                        callback(Value)
                    end)
                end
                
                AHEHE.MouseButton1Down:Connect(function()
                    Value = math.floor((((tonumber(max) - tonumber(min)) / 238) * bar1.AbsoluteSize.X) + tonumber(min)) or 0
                    pcall(function()
                        callback(Value)
                    end)
                    bar1.Size = UDim2.new(0, math.clamp(mouse.X - bar1.AbsolutePosition.X, 0, 238), 0, 5)
                    circlebar.Position = UDim2.new(0, math.clamp(mouse.X - bar1.AbsolutePosition.X - 2, 0, 228), 0, -3)
                    moveconnection = mouse.Move:Connect(function()
                        TextBox.Text = Value
                        Value = math.floor((((tonumber(max) - tonumber(min)) / 238) * bar1.AbsoluteSize.X) + tonumber(min))
                        pcall(function()
                            callback(Value)
                        end)
                        bar1.Size = UDim2.new(0, math.clamp(mouse.X - bar1.AbsolutePosition.X, 0, 238), 0, 5)
                        circlebar.Position = UDim2.new(0, math.clamp(mouse.X - bar1.AbsolutePosition.X - 2, 0, 228), 0, -3)
                    end)
                    releaseconnection = uis.InputEnded:Connect(function(Mouse)
                        if Mouse.UserInputType == Enum.UserInputType.MouseButton1 then
                            Value = math.floor((((tonumber(max) - tonumber(min)) / 238) * bar1.AbsoluteSize.X) + tonumber(min))
                            pcall(function()
                                callback(Value)
                            end)
                            bar1.Size = UDim2.new(0, math.clamp(mouse.X - bar1.AbsolutePosition.X, 0, 238), 0, 5)
                            circlebar.Position = UDim2.new(0, math.clamp(mouse.X - bar1.AbsolutePosition.X - 2, 0, 228), 0, -3)
                            moveconnection:Disconnect()
                            releaseconnection:Disconnect()
                        end
                    end)
                end)
                releaseconnection = uis.InputEnded:Connect(function(Mouse)
                    if Mouse.UserInputType == Enum.UserInputType.MouseButton1 then
                        Value = math.floor((((tonumber(max) - tonumber(min)) / 238) * bar1.AbsoluteSize.X) + tonumber(min))
                        TextBox.Text = Value
                    end
                end)

                TextBox.FocusLost:Connect(function()
                    if tonumber(TextBox.Text) > max then
                        TextBox.Text  = max
                    end
                    bar1.Size = UDim2.new((tonumber(TextBox.Text) or 0) / max, 0, 0, 5)
                    circlebar.Position = UDim2.new(1, -2, 0, -3)
                    TextBox.Text = tostring(tonumber(TextBox.Text) and math.floor( (tonumber(TextBox.Text) / max) * (max - min) + min) )
                    pcall(callback, TextBox.Text)
                end)
            end

            function main:TextBox(text,disappear,callback)
                local Textbox = Instance.new("Frame")
                local TextboxCorner = Instance.new("UICorner")
                local Textboxx = Instance.new("Frame")
                local TextboxxCorner = Instance.new("UICorner")
                local TextboxLabel = Instance.new("TextLabel")
                local txtbtn = Instance.new("TextButton")
                local RealTextbox = Instance.new("TextBox")
                local UICorner = Instance.new("UICorner")

                Textbox.Name = "Textbox"
                Textbox.Parent = ScrollPage
                Textbox.BackgroundColor3 = Color3.fromRGB(51, 153, 255)
                Textbox.BackgroundTransparency = 0.500
                Textbox.Size = UDim2.new(0, 260, 0, 38)

                TextboxCorner.CornerRadius = UDim.new(0, 5)
                TextboxCorner.Name = "TextboxCorner"
                TextboxCorner.Parent = Textbox

                Textboxx.Name = "Textboxx"
                Textboxx.Parent = Textbox
                Textboxx.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
                Textboxx.Position = UDim2.new(0, 1, 0, 1)
                Textboxx.Size = UDim2.new(0, 258, 0, 36)

                TextboxxCorner.CornerRadius = UDim.new(0, 5)
                TextboxxCorner.Name = "TextboxxCorner"
                TextboxxCorner.Parent = Textboxx

                TextboxLabel.Name = "TextboxLabel"
                TextboxLabel.Parent = Textbox
                TextboxLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                TextboxLabel.BackgroundTransparency = 1.000
                TextboxLabel.Position = UDim2.new(0, 15, 0, 0)
                TextboxLabel.Text = text
                TextboxLabel.Size = UDim2.new(0, 145, 0, 38)
                TextboxLabel.Font = Enum.Font.GothamSemibold
                TextboxLabel.TextColor3 = Color3.fromRGB(51, 153, 255)
                TextboxLabel.TextSize = 16.000
                TextboxLabel.TextTransparency = 0.500
                TextboxLabel.TextXAlignment = Enum.TextXAlignment.Left

                txtbtn.Name = "txtbtn"
                txtbtn.Parent = Textbox
                txtbtn.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                txtbtn.BackgroundTransparency = 1.000
                txtbtn.Position = UDim2.new(0, 1, 0, 1)
                txtbtn.Size = UDim2.new(0, 258, 0, 36)
                txtbtn.Font = Enum.Font.SourceSans
                txtbtn.Text = ""
                txtbtn.TextColor3 = Color3.fromRGB(0, 0, 0)
                txtbtn.TextSize = 14.000

                RealTextbox.Name = "RealTextbox"
                RealTextbox.Parent = Textbox
                RealTextbox.BackgroundColor3 = Color3.fromRGB(35, 35, 35)
                RealTextbox.BackgroundTransparency = 0.500
                RealTextbox.Position = UDim2.new(0, 150, 0, 7)
                RealTextbox.Size = UDim2.new(0, 100, 0, 22)
                RealTextbox.Font = Enum.Font.GothamSemibold
                RealTextbox.Text = ""
                RealTextbox.TextColor3 = Color3.fromRGB(225, 225, 225)
                RealTextbox.TextSize = 11.000
                RealTextbox.TextTransparency = 0.500

                txtbtn.MouseEnter:Connect(function()
                    TweenService:Create(
                        Textbox,
                        TweenInfo.new(0.3,Enum.EasingStyle.Quad,Enum.EasingDirection.Out),
                        {BackgroundTransparency = 0}
                    ):Play()
                    TweenService:Create(
                        TextboxLabel,
                        TweenInfo.new(0.3,Enum.EasingStyle.Quad,Enum.EasingDirection.Out),
                        {TextTransparency = 0}
                    ):Play()
                    TweenService:Create(
                        RealTextbox,
                        TweenInfo.new(0.3,Enum.EasingStyle.Quad,Enum.EasingDirection.Out),
                        {TextTransparency = 0}
                    ):Play()
                    TweenService:Create(
                        RealTextbox,
                        TweenInfo.new(0.3,Enum.EasingStyle.Quad,Enum.EasingDirection.Out),
                        {BackgroundTransparency = 0}
                    ):Play()
                end)

                txtbtn.MouseLeave:Connect(function()
                    TweenService:Create(
                        Textbox,
                        TweenInfo.new(0.3,Enum.EasingStyle.Quad,Enum.EasingDirection.Out),
                        {BackgroundTransparency = 0.5}
                    ):Play()
                    TweenService:Create(
                        TextboxLabel,
                        TweenInfo.new(0.3,Enum.EasingStyle.Quad,Enum.EasingDirection.Out),
                        {TextTransparency = 0.5}
                    ):Play()
                    TweenService:Create(
                        RealTextbox,
                        TweenInfo.new(0.3,Enum.EasingStyle.Quad,Enum.EasingDirection.Out),
                        {TextTransparency = 0.5}
                    ):Play()
                    TweenService:Create(
                        RealTextbox,
                        TweenInfo.new(0.3,Enum.EasingStyle.Quad,Enum.EasingDirection.Out),
                        {BackgroundTransparency = 0.5}
                    ):Play()
                end)

                RealTextbox.FocusLost:Connect(function()
                    callback(RealTextbox.Text)
                    if disappear then
                        RealTextbox.Text = ""
                    end
                end)

                UICorner.CornerRadius = UDim.new(0, 5)
                UICorner.Parent = RealTextbox
            end

            function main:Toggle(text,config,callback)
                local tglb = {}
                local Toggle = Instance.new("Frame")
                local ToggleCorner = Instance.new("UICorner")
                local Tgle = Instance.new("Frame")
                local TgleCorner = Instance.new("UICorner")
                local tglebtn = Instance.new("TextButton")
                local ToggleLabel = Instance.new("TextLabel")
                local ToggleImage = Instance.new("Frame")
                local UICorner_3 = Instance.new("UICorner")
                local Circle = Instance.new("Frame")
                local UICorner_4 = Instance.new("UICorner")
                local Tgim = Instance.new('ImageLabel')

                Toggle.Name = "Toggle"
                Toggle.Parent = ScrollPage
                Toggle.BackgroundColor3 = Color3.fromRGB(51, 153, 255)
                Toggle.BackgroundTransparency = 0
                Toggle.Size = UDim2.new(0, 260, 0, 38)

                ToggleCorner.CornerRadius = UDim.new(0, 5)
                ToggleCorner.Name = "ToggleCorner"
                ToggleCorner.Parent = Toggle

                Tgle.Name = "Tgle"
                Tgle.Parent = Toggle
                Tgle.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
                Tgle.Position = UDim2.new(0, 1, 0, 1)
                Tgle.Size = UDim2.new(0, 258, 0, 36)

                TgleCorner.CornerRadius = UDim.new(0, 5)
                TgleCorner.Name = "TgleCorner"
                TgleCorner.Parent = Tgle

                tglebtn.Name = "tglebtn"
                tglebtn.Parent = Tgle
                tglebtn.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                tglebtn.BackgroundTransparency = 1.000
                tglebtn.Size = UDim2.new(0, 258, 0, 36)
                tglebtn.Font = Enum.Font.SourceSans
                tglebtn.Text = ""
                tglebtn.TextColor3 = Color3.fromRGB(0, 0, 0)
                tglebtn.TextSize = 14.000

                ToggleLabel.Name = "ToggleLabel"
                ToggleLabel.Parent = Tgle
                ToggleLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                ToggleLabel.BackgroundTransparency = 1.000
                ToggleLabel.Position = UDim2.new(0, 0, 0, 0)
                ToggleLabel.Size = UDim2.new(0, 258, 0, 36)
                ToggleLabel.Font = Enum.Font.GothamSemibold
                ToggleLabel.Text = text
                ToggleLabel.TextColor3 = Color3.fromRGB(51, 153, 255)
                ToggleLabel.TextSize = 16.000
                ToggleLabel.TextTransparency = 0.500
                ToggleLabel.TextXAlignment = Enum.TextXAlignment.Center

                ToggleImage.Name = "ToggleImage"
                ToggleImage.Parent = Toggle
                ToggleImage.BackgroundColor3 = Color3.fromRGB(225, 225, 225)
                ToggleImage.Position = UDim2.new(0, 205, 0, 9)
                ToggleImage.Size = UDim2.new(0, 45, 0, 20)
    
                UICorner_3.CornerRadius = UDim.new(0, 20)
                UICorner_3.Parent = ToggleImage
    
                Circle.Name = "Circle"
                Circle.Parent = ToggleImage
                Circle.BackgroundColor3 = Color3.fromRGB(51, 153, 255)
                Circle.Position = UDim2.new(0, 2, 0, 2)
                Circle.Size = UDim2.new(0, 16, 0, 16)
    
                UICorner_4.CornerRadius = UDim.new(0, 10)
                UICorner_4.Parent = Circle

                Tgim.Name = "ToggleLogo"
                Tgim.Parent = Tgle
                Tgim.BackgroundTransparency = 1.000
                Tgim.Position = UDim2.new(0, 5, 0, 3)
                Tgim.Rotation = 0
                Tgim.Size = UDim2.new(0, 30, 0, 30)
                Tgim.Image = ''
                Tgim.ImageTransparency = 0

                tglebtn.MouseEnter:Connect(function()
                    TweenService:Create(
                        Toggle,
                        TweenInfo.new(0.4,Enum.EasingStyle.Quad,Enum.EasingDirection.Out),
                        {BackgroundTransparency = 0}
				    ):Play()
                    TweenService:Create(
                        ToggleLabel,
                        TweenInfo.new(0.4,Enum.EasingStyle.Quad,Enum.EasingDirection.Out),
                        {TextTransparency = 0}
				    ):Play()
                    TweenService:Create(
                        ToggleImage,
                        TweenInfo.new(0.4,Enum.EasingStyle.Quad,Enum.EasingDirection.Out),
                        {BackgroundTransparency = 0}
				    ):Play()
                    TweenService:Create(
                        Circle,
                        TweenInfo.new(0.4,Enum.EasingStyle.Quad,Enum.EasingDirection.Out),
                        {BackgroundTransparency = 0}
				    ):Play()
                end)
                tglebtn.MouseLeave:Connect(function()
                    TweenService:Create(
                        Toggle,
                        TweenInfo.new(0.4,Enum.EasingStyle.Quad,Enum.EasingDirection.Out),
                        {BackgroundTransparency = 0}
				    ):Play()
                    TweenService:Create(
                        ToggleLabel,
                        TweenInfo.new(0.4,Enum.EasingStyle.Quad,Enum.EasingDirection.Out),
                        {TextTransparency = 0}
				    ):Play()
                    TweenService:Create(
                        ToggleImage,
                        TweenInfo.new(0,Enum.EasingStyle.Quad,Enum.EasingDirection.Out),
                        {BackgroundTransparency = 0}
				    ):Play()
                    TweenService:Create(
                        Circle,
                        TweenInfo.new(0,Enum.EasingStyle.Quad,Enum.EasingDirection.Out),
                        {BackgroundTransparency = 0}
				    ):Play()
                end)
                if config == true then
                    istoggled = true
                    pcall(callback,istoggled)
                    Circle:TweenPosition(UDim2.new(0,27,0,2),"Out","Sine",0.2,true)
                    TweenService:Create(
                        Circle,
                        TweenInfo.new(0.4,Enum.EasingStyle.Quad,Enum.EasingDirection.Out),
                        {BackgroundColor3 = Color3.fromRGB(51, 153, 255)}
				    ):Play()
                    TweenService:Create(
                        Toggle,
                        TweenInfo.new(0.4,Enum.EasingStyle.Quad,Enum.EasingDirection.Out),
                        {BackgroundColor3 = Color3.fromRGB(51, 153, 255)}
				    ):Play()
                    TweenService:Create(
                        ToggleLabel,
                        TweenInfo.new(0.4,Enum.EasingStyle.Quad,Enum.EasingDirection.Out),
                        {TextColor3 = Color3.fromRGB(51, 153, 255)}
                    ):Play()
                end

                local istoggled = config or false
                tglebtn.MouseButton1Click:Connect(function()
                    if istoggled == false then
                        istoggled = true
                        Circle:TweenPosition(UDim2.new(0,27,0,2),"Out","Sine",0.2,true)
                        TweenService:Create(
                        Circle,
                        TweenInfo.new(0.4,Enum.EasingStyle.Quad,Enum.EasingDirection.Out),
                        {BackgroundColor3 = Color3.fromRGB(51, 153, 255)}
				    ):Play()
                        TweenService:Create(
                            Toggle,
                            TweenInfo.new(0.4,Enum.EasingStyle.Quad,Enum.EasingDirection.Out),
                            {BackgroundColor3 = Color3.fromRGB(51, 153, 255)}
				        ):Play()
                        TweenService:Create(
                            ToggleLabel,
                            TweenInfo.new(0.4,Enum.EasingStyle.Quad,Enum.EasingDirection.Out),
                            {TextColor3 = Color3.fromRGB(51, 153, 255)}
                        ):Play()
                    else
                        istoggled = false
                        TweenService:Create(
                        Circle,
                        TweenInfo.new(0.4,Enum.EasingStyle.Quad,Enum.EasingDirection.Out),
                        {BackgroundColor3 = Color3.fromRGB(51, 153, 255)}
				    ):Play()
                        TweenService:Create(
                        Toggle,
                        TweenInfo.new(0.4,Enum.EasingStyle.Quad,Enum.EasingDirection.Out),
                        {BackgroundColor3 = Color3.fromRGB(51, 153, 255)}
				    ):Play()
                        Circle:TweenPosition(UDim2.new(0,2,0,2),"Out","Sine",0.2,true)
                        TweenService:Create(
                            Toggle,
                            TweenInfo.new(0.4,Enum.EasingStyle.Quad,Enum.EasingDirection.Out),
                            {BackgroundColor3 = Color3.fromRGB(51, 153, 255)}
				        ):Play()
                        TweenService:Create(
                            ToggleLabel,
                            TweenInfo.new(0.4,Enum.EasingStyle.Quad,Enum.EasingDirection.Out),
                            {TextColor3 = Color3.fromRGB(51, 153, 255)}
                        ):Play()
                    end
                    pcall(callback,istoggled)
                end)
                    function tglb:RefeshToggle(e)
                        ToggleLabel.Text = e
                    end
                return tglb
            end

            function main:Label(text)
                local Label = Instance.new("TextLabel")
                local PaddingLabel = Instance.new("UIPadding")
                local labell = {}
        
                Label.Name = "Label"
                Label.Parent = ScrollPage
                Label.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                Label.BackgroundTransparency = 1.000
                Label.Size = UDim2.new(0, 260, 0, 20)
                Label.Font = Enum.Font.GothamSemibold
                Label.TextColor3 = Color3.fromRGB(225, 225, 225)
                Label.TextSize = 16.000
                Label.Text = text
                Label.TextXAlignment = Enum.TextXAlignment.Left
    
                PaddingLabel.PaddingLeft = UDim.new(0,15)
                PaddingLabel.Parent = Label
                PaddingLabel.Name = "PaddingLabel"
        
                function labell:Set(newtext)
                    Label.Text = newtext
                end
    
                return labell
            end

            return main
        end
        return uitab
    end
    return Ui
end

getgenv().ToTargets = function(p)
    task.spawn(function()
        pcall(function()
            if game:GetService("Players").LocalPlayer:DistanceFromCharacter(p.Position) <= 330 then 
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
            local B = TweenInfo.new((p.Position-game.Players.LocalPlayer.Character.Root.Position).Magnitude/330,Enum.EasingStyle.Linear)
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
                    if (game.Players.LocalPlayer.Character.HumanoidRootPart.Position-p.Position).Magnitude >= 180 then 
                        spawn(function()
                            pcall(function()
                                if (game.Players.LocalPlayer.Character.Root.Position-game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 300 then 
                                    game.Players.LocalPlayer.Character.Root.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
                                else 
                                    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame=game.Players.LocalPlayer.Character.Root.CFrame
                                end
                            end)
                        end)
                    elseif (game.Players.LocalPlayer.Character.HumanoidRootPart.Position-p.Position).Magnitude >= 45 and(game.Players.LocalPlayer.Character.HumanoidRootPart.Position-p.Position).Magnitude < 60 then 
                        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = p
                    elseif (game.Players.LocalPlayer.Character.HumanoidRootPart.Position-p.Position).Magnitude < 45 then 
                        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = p
                    end
                end)
            end
	    end)
    end)
end
local TweenService = game:GetService("TweenService")
local LocalPlayer = game.Players.LocalPlayer
local HRP = LocalPlayer.Character.HumanoidRootPart
function get_dis(pos)
    return (HRP.Position-pos).Magnitude
end
function tween_to(pos)
    pcall(function()
        local dis = get_dis(pos)
        local T
        if dis < 440 then
            T = dis/440
        elseif dis < 750 then
            T = dis/370
        else
            T = dis/350
        end
        local T_info = TweenInfo.new(T,Enum.EasingStyle.Linear)
        local TW = TweenService:Create(HRP, T_info, { CFrame = CFrame.new(pos) })
        TW:Play()
        TW.Completed:wait()
    end)
end    

local data_chest = {}
for _,v in pairs(game.workspace:GetDescendants()) do
    if v.Name == "Chest3" then
        table.insert(data_chest, v)
    end
end
for _,v in pairs(game.workspace:GetDescendants()) do
    if v.Name == "Chest2" then
        table.insert(data_chest, v)
    end
end
for _,v in pairs(game.workspace:GetDescendants()) do
    if v.Name == "Chest1" then
        table.insert(data_chest, v)
    end
end
function main()
    while #data_chest > 0 and _G.LtwChest and not LocalPlayer.Backpack:FindFirstChild("Fist of Darkness")and not LocalPlayer.Backpack:FindFirstChild("God's Chalice") do                      
        task.wait()
        local closest_chest = data_chest[1]
        local found = false
        for i,v in pairs(data_chest) do
            -- > First
            if table.find(data_chest, "Chest3") then
                if v.Name ~= "Chest3" then
                    continue
                else
                    if closest_chest.Name ~= "Chest3" then
                        closest_chest = v
                    end
                end
            end
            -- > Second
            if table.find(data_chest, "Chest2") then
                if v.Name ~= "Chest2" then
                    continue
                else
                    if closest_chest.Name ~= "Chest2" then
                        closest_chest = v
                    end
                end
            end
            
            
            if not _G.LtwChest then
                break
            end
            if v.Parent == nil then
            	continue
            end
            
            local dis = get_dis(v.Position)
            if dis <= 300 then
                table.remove(data_chest, i)
                tween_to(v.Position)
                
                local T = tick()
                repeat wait() until closest_chest.Parent == nil or tick() - T >= 1
                found = true
                break
            end
            if dis < get_dis(closest_chest.Position) then
                closest_chest = v
            end
        end
        if not found then
            local i = table.find(data_chest, closest_chest)
            table.remove(data_chest, i)
            tween_to(closest_chest.Position)
            
            local T = tick()
            repeat wait() until closest_chest.Parent == nil or tick() - T >= 1
        end
    end
end
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
	end
	Teleport()
end
function Attack()
    pcall(function()
        wait()
        game:GetService'VirtualUser':CaptureController()
        game:GetService'VirtualUser':Button1Down(Vector2.new(1280, 672))
    end)
end
function toTarget(targetPos, targetCFrame)
    local tweenfunc = {}
    local tween_s = game:service"TweenService"
    local info = TweenInfo.new((targetPos - game:GetService("Players").LocalPlayer.Character:WaitForChild("HumanoidRootPart").Position).Magnitude/300, Enum.EasingStyle.Linear)
    local tween = tween_s:Create(game:GetService("Players").LocalPlayer.Character["HumanoidRootPart"], info, {CFrame = targetCFrame * CFrame.fromAxisAngle(Vector3.new(1,0,0), math.rad(0))})
    tween:Play()
    function tweenfunc:Stop()
        tween:Cancel()
        return tween
    end
    if not tween then return tween end
    return tweenfunc
end
---------------------------------------------------------------
function EquipTool(Tool)
    pcall(function()
    game.Players.LocalPlayer.Character.Humanoid:EquipTool(game.Players.LocalPlayer.Backpack[Tool])
    end)
end
---------------------------------------------------------------
local win = library:AddWindow("                                 Reviz Hub | Blox Fruits")

local Tab = win:AddTab("Main")
local Tab1 = win:AddTab("Mystic")
local Tab2 = win:AddTab("Player")
local Tab4 = win:AddTab("Teleport")
local Tab5 = win:AddTab("Raid")
local Tab3 = win:AddTab("Shop")
local Tab6 = win:AddTab("Misc")

local SectionLeft = Tab:AddPage()
local SectionRight = Tab:AddPage()
SectionLeft:Label("- Auto Farm -")
FAMMode ={
	"Normal",
	"Fast"
}
SectionLeft:Dropdown("Select Farm Mode",FAMMode,function(v)
    _G.Farm_Mode = v
end)
SectionLeft:Toggle("Auto Farm Level",false,function(v)
    _G.AutoFarmL = v
	_G.Auto_Farm_Checking = v
end)
spawn(function()
	while wait(.1) do
	 pcall(function()
		 if _G.Auto_Farm_Checking then
		 if _G.Farm_Mode == "Normal" then
			 _G.Auto_Farm = true
			 _G.Fast_Farm = false
			 _G.Semi_Tp = false
		 end
		 if _G.Farm_Mode == "Fast" then
			 if game:GetService("Players").LocalPlayer.Data.Level.Value < 60 or game:GetService("Players").LocalPlayer.Data.Level.Value > 80 then
			 _G.Auto_Farm = true
			 _G.Fast_Farm = true
			 _G.Semi_Tp = true
			 elseif game:GetService("Players").LocalPlayer.Data.Level.Value > 60 or game:GetService("Players").LocalPlayer.Data.Level.Value < 80 then
			 _G.Auto_Farm = false
			 _G.Fast_Farm = true
			 _G.Semi_Tp = false
			 end
		 end
		 else
			 _G.Auto_Farm = false
			 _G.Fast_Farm = false
			 _G.Semi_Tp = false
		 end
	 end)
	end
end)
SectionLeft:Toggle("Auto Mastery",false,function(a)
    _G.AuToFarmMasFruits = a
end)
SectionLeft:Slider("Kill At",1,1000,25,function(value)
    _G.KillAt = value
end)
SectionLeft:Label("- Auto Something -")
if game.PlaceId == 2753915549 then
    SectionLeft:Toggle("Auto New World",false,function(value)
        _G.Sea2 = value
    end)
    
    SectionLeft:Toggle("Auto Saber",false,function(value)
        _G.Auto_Saber = value
    end)   
    SectionLeft:Toggle("Auto Saber Hop",false,function(value)
        _G.Auto_Saber_Hop = value
    end)  
	elseif game.PlaceId == 4442272183 then
	SectionLeft:Toggle("Auto Third World",false,function(value)
		_G.Auto_Third_World  = value
	end)
	SectionLeft:Toggle("Auto Rengoku",false,function(value)
		_G.Auto_Rengoku = value
		StopTween(_G.Auto_Rengoku)
	end)
	else

		SectionLeft:Toggle("Auto Farm Bone",false,function(value)
			_G.Auto_Farm_Bone = value
		end)
	
		SectionLeft:Toggle("Auto Random Bone",false,function(value)
			_G.Auto_Random_Bone = value
		end)
		SectionLeft:Button("Random Bone",function()
			local args = {
				[1] = "Bones",
				[2] = "Buy",
				[3] = 1,
				[4] = 1
			}
			game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
		end)	
        SectionLeft:Toggle("Auto Cake Prince",false,function(value)
			_G.Auto_Cake_Prince = value
		end)
		SectionLeft:Toggle("Auto Chest",false,function(value)
			_G.LtwChest = value
			_G.NChest = value
			main()
		end)
	
		SectionLeft:Button("Fast Chest Farm",function()
			loadstring(game:HttpGet("https://raw.githubusercontent.com/ZoiIntra/Loyz/main/YMeQMTStR/ysfMaScEgCluKuoIUZAlMATVqNAVLbgvEZLGGJnRaXBqyffeEeVyXM/tyqfmKJdjDsDYbeaxuSgjDEtieW/gGDGperhsS"))()
			wait(15)
			Hop()
		end)
        SectionLeft:Label("- Elite Hunter -")
        SectionLeft:Toggle("Auto Elite Hunter",_G.Auto_Elite_Hunter,function(v)
			_G.Auto_Elite_Hunter = v    
		end)
		
		SectionLeft:Toggle("Auto Elite Hunter Hop",_G.Auto_Elite_Hunter_Hop,function(v)
			_G.Auto_Elite_Hunter_Hop = v    
		end)
		SectionLeft:Button("Check Elite Hunter",function(v)
			game.StarterGui:SetCore("SendNotification", {
				Title = "Elite Hunter : "..game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("EliteHunter","Progress"), 
				Text = "Check elite killed",
				Duration = 2.5
			})
		end)
	end

SectionRight:Label("- Setting -")
Wapon = {}
for i,v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do  
   if v:IsA("Tool") then
      table.insert(Wapon ,v.Name)
   end
end
for i,v in pairs(game.Players.LocalPlayer.Character:GetChildren()) do  
   if v:IsA("Tool") then
      table.insert(Wapon, v.Name)
   end
end
local SelectWeapona = SectionRight:Dropdown("Select Weapon/Combat",Wapon,function(v)
    _G.ConfigTestDropdownNormal = v
end)
SectionRight:Button("Refresh Weapon",function()
   SelectWeapona:Clear()
   for i,v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do  
      if v:IsA("Tool") then
        SelectWeapona:Add(v.Name)
      end
   end
   for i,v in pairs(game.Players.LocalPlayer.Character:GetChildren()) do  
      if v:IsA("Tool") then
        SelectWeapona:Add(v.Name)
      end
   end
end) 
SectionRight:Label("- Players -")
SectionRight:Button("Redeem All Code EXP X2",function()
    function UseCode(Text)
        game:GetService("ReplicatedStorage").Remotes.Redeem:InvokeServer(Text)
    end
    UseCode("UPD16")
    UseCode("2BILLION")
    UseCode("UPD15")
    UseCode("FUDD10")
    UseCode("BIGNEWS")
    UseCode("THEGREATACE")
    UseCode("SUB2GAMERROBOT_EXP1")
    UseCode("StrawHatMaine")
    UseCode("Sub2OfficialNoobie")
    UseCode("SUB2NOOBMASTER123")
    UseCode("Sub2Daigrock")
    UseCode("Axiore")
    UseCode("TantaiGaming")
    UseCode("STRAWHATMAINE")
    UseCode("GAMERROBOT_YT")
    UseCode("EXP_5B")
    UseCode("RESET_5B")
    UseCode("KittGaming")
    UseCode("Enyu_is_Pro")
    UseCode("Sub2Fer999")
    UseCode("Bluxxy")
    UseCode("JCWK")
    UseCode("Magicbus")
    UseCode("fudd10_v2 ")
    UseCode("Starcodeheo")
    UseCode("3BVISITS")
    UseCode("1MLIKES_RESET")
    UseCode("2BILLION")
end)
SectionRight:Toggle("Normal FastAttack",true,function(a)
    _G.FastAttackNormalSpeed = a
    _G.FastAttackExtra = false
end)
SectionRight:Toggle("Super FastAttack",true,function(value)
    _G.FastAttackNormalSpeed = false
    _G.FastAttackExtra = value
end)
local Module = require(game.Players.LocalPlayer.PlayerScripts.CombatFramework)
local CombatFramework = debug.getupvalues(Module)[2]
local CamShake = require(game.ReplicatedStorage.Util.CameraShaker)
spawn(function()
while task.wait() do
	if _G.FastAttack then
    pcall(function()
        CamShake:Stop()
        CombatFramework.activeController.hitSound = 0
        CombatFramework.activeController.attacking = false
        CombatFramework.activeController.timeToNextAttack = 0
        CombatFramework.activeController.increment = 3
        CombatFramework.activeController.hitboxMagnitude = 1000
        CombatFramework.activeController.blocking = false
        CombatFramework.activeController.timeToNextBlock = 0
        CombatFramework.activeController.focusStart = 0
    end)
    end
    task.wait()
end
end)
local SeraphFrame = debug.getupvalues(require(game:GetService("Players").LocalPlayer.PlayerScripts:WaitForChild("CombatFramework")))[2]
local VirtualUser = game:GetService('VirtualUser')
local RigControllerR = debug.getupvalues(require(game:GetService("Players").LocalPlayer.PlayerScripts.CombatFramework.RigController))[2]
local Client = game:GetService("Players").LocalPlayer
local DMG = require(Client.PlayerScripts.CombatFramework.Particle.Damage)
function SeraphFuckWeapon() 
	local p13 = SeraphFrame.activeController
	local wea = p13.blades[1]
	if not wea then return end
	while wea.Parent~=game.Players.LocalPlayer.Character do wea=wea.Parent end
	return wea
end
function getHits(Size)
	local Hits = {}
	local Enemies = workspace.Enemies:GetChildren()
	local Characters = workspace.Characters:GetChildren()
	for i=1,#Enemies do local v = Enemies[i]
		local Human = v:FindFirstChildOfClass("Humanoid")
		if Human and Human.RootPart and Human.Health > 0 and game.Players.LocalPlayer:DistanceFromCharacter(Human.RootPart.Position) < Size+5 then
			table.insert(Hits,Human.RootPart)
		end
	end
	for i=1,#Characters do local v = Characters[i]
		if v ~= game.Players.LocalPlayer.Character then
			local Human = v:FindFirstChildOfClass("Humanoid")
			if Human and Human.RootPart and Human.Health > 0 and game.Players.LocalPlayer:DistanceFromCharacter(Human.RootPart.Position) < Size+5 then
				table.insert(Hits,Human.RootPart)
			end
		end
	end
	return Hits
end
task.spawn(
	function()
	while wait(0) do
		if  _G.FastAttack then
			if SeraphFrame.activeController then
				-- if v.Humanoid.Health > 0 then
					SeraphFrame.activeController.timeToNextAttack = 0
					SeraphFrame.activeController.focusStart = 0
					SeraphFrame.activeController.hitboxMagnitude = 2048
					SeraphFrame.activeController.humanoid.AutoRotate = true
					SeraphFrame.activeController.increment = 0
				-- end
			end
		end
	end
end)
local cdnormal = 0
local Animation = Instance.new("Animation")
local CooldownFastAttack = 0
Attack = function()
	local ac = SeraphFrame.activeController
	if ac and ac.equipped then
		task.spawn(
			function()
			if tick() - cdnormal > 0 then
				ac:attack()
				cdnormal = tick()
			else
				-- Animation.AnimationId = ac.anims.basic[2]
				-- ac.humanoid:LoadAnimation(Animation):Play(1, 1)
				game:GetService("ReplicatedStorage").RigControllerEvent:FireServer("hit", getHits(5000), 10, "")
			end
		end)
	end
end
b = tick()
spawn(function()
	while wait() do
		if  _G.FastAttack then
			if b - tick() > 0 then
				b = tick()
			end
			pcall(function()
				for i, v in pairs(game.Workspace.Enemies:GetChildren()) do
					if v.Humanoid.Health > 0 then
						if (v.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 2048 then
							wait(.2)
							Boost()
						end
					end
				end
			end)
		end
	end
end)
k = tick()
spawn(function()
	while wait() do
		if  _G.FastAttack then
			if k - tick() > 0 then
				k = tick()
			end
			pcall(function()
				for i, v in pairs(game.Workspace.Enemies:GetChildren()) do
					if v.Humanoid.Health > 0 then
						if (v.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 2048 then
						wait(.2)
						Unboost()
						end
					end
				end
			end)
		end
	end
end)
tjw1 = true
task.spawn(
	function()
		local a = game.Players.LocalPlayer
		local b = require(a.PlayerScripts.CombatFramework.Particle)
		local c = require(game:GetService("ReplicatedStorage").CombatFramework.RigLib)
		if not shared.orl then
			shared.orl = c.wrapAttackAnimationAsync
		end
		if not shared.cpc then
			shared.cpc = b.play
		end
		if tjw1 then
			pcall(
				function()
					c.wrapAttackAnimationAsync = function(d, e, f, g, h)
						local i = c.getBladeHits(e, f, g)
						if i then
							b.play = function()
							end
							d:Play(1.25, 1.25, 1.25)
							h(i)
							b.play = shared.cpc
							wait(.1)
							d:Stop()
						end
					end
				end
			)
		end
	end
)
local Client = game.Players.LocalPlayer
local STOP = require(Client.PlayerScripts.CombatFramework.Particle)
local STOPRL = require(game:GetService("ReplicatedStorage").CombatFramework.RigLib)
task.spawn(function()
	pcall(function()
		if not shared.orl then
			shared.orl = STOPRL.wrapAttackAnimationAsync
		end
			if not shared.cpc then
				shared.cpc = STOP.play 
			end
		spawn(function()
			game:GetService("RunService").Stepped:Connect(function()
				STOPRL.wrapAttackAnimationAsync = function(a,b,c,d,func)
					local Hits = STOPRL.getBladeHits(b,c,d)
					if Hits then
						if  _G.FastAttack then
							STOP.play = function() end
							a:Play(2.1,2.1,2.1)
							func(Hits)
							STOP.play = shared.cpc
							wait(a.length * 0.5)
							a:Stop()
						else
							func(Hits)
							STOP.play = shared.cpc
							wait(a.length * 0.5)
							a:Stop()
						end
					end
				end
			end)
		end)
	end)
	end)
if _G.FastAttack then
while true do
wait()
game:GetService'VirtualUser':CaptureController()
game:GetService'VirtualUser':Button1Down(Vector2.new(1280, 672))
end
end
local CameraShaker = require(game.ReplicatedStorage.Util.CameraShaker)
CombatFrameworkR = require(game:GetService("Players").LocalPlayer.PlayerScripts.CombatFramework)
y = debug.getupvalues(CombatFrameworkR)[2]
spawn(function()
game:GetService("RunService").RenderStepped:Connect(function()
if _G.FastAttack then
if typeof(y) == "table" then
	pcall(function()
		CameraShaker:Stop()
		y.activeController.timeToNextAttack = (math.huge^math.huge^math.huge)
		y.activeController.timeToNextAttack = 0
		y.activeController.hitboxMagnitude = 2048
		y.activeController.active = false
		y.activeController.timeToNextBlock = 0
		y.activeController.focusStart = 1655503339.0980349
		y.activeController.increment = 1
		y.activeController.blocking = false
		y.activeController.attacking = false
		y.activeController.humanoid.AutoRotate = true
	end)
end
end
end)
end)
end)
SectionRight:Toggle("White Screen",false,function(v)
    _G.WhiteScreen = v
    if _G.WhiteScreen  then
        game:GetService("RunService"):Set3dRenderingEnabled(false)
    else
        game:GetService("RunService"):Set3dRenderingEnabled(true)
    end
end)
SectionRight:Toggle("Auto Set Spawn",false,function(a)
    _G.SetSpawn = a
end)
SectionRight:Toggle("Auto Haki",true,function(a)
    _G.Haki = a
end)
SectionRight:Label("- Auto Skill -")
SectionRight:Toggle("Skill Z",false,function(a)
	_G.SkillZ = a
end)
SectionRight:Toggle("Skill X",false,function(a)
	_G.SkillX = a
end)
SectionRight:Toggle("Skill C",false,function(a)
	_G.SkillC = a
end)
SectionRight:Toggle("Skill V",false,function(a)
	_G.SkillV = a
end)
SectionRight:Label("- Farm Boss -")
local BossTable = {}   
for i, v in pairs(game:GetService("ReplicatedStorage"):GetChildren()) do
	if string.find(v.Name, "Boss") then
		if v.Name == "Ice Admiral [Lv. 700] [Boss]" then
		else
			table.insert(BossTable, v.Name)
		end
	end
end
local boss = SectionRight:Dropdown("Select Boss",BossTable,function(v)
    _G.Select_Boss = v
end)
SectionRight:Button("Refresh Boss",function()
	table.clear(BossTable)
	boss:Clear(v.Name)
	for i, v in pairs(game:GetService("ReplicatedStorage"):GetChildren()) do
		if string.find(v.Name, "Boss") then
			if v.Name == "Ice Admiral [Lv. 700] [Boss]" then
				
			else
				table.insert(BossTable, v.Name)
			end
		end
	end
end)
SectionRight:Toggle("Auto Kill Boss",false,function(v)
    _G.Auto_Farm_Boss = v
end)
SectionRight:Toggle("Auto Kills All Boss",false,function(v)
    _G.Auto_Farm_All_Boss = v
end)
local Section1Left = Tab1:AddPage()
local Section1Right = Tab1:AddPage()
Section1Left:Label("- Mystic -")
Section1Left:Button("Check Mirage/FullMoon",function(chm)
	if game:GetService("Workspace").Map:FindFirstChild("MysticIsland") then
		getgenv().MysticSp = "Spawn"
	else
		getgenv().MysticSp = "Not Spawn"
	end
	for i,v in pairs(game:GetService("Lighting"):GetChildren()) do  
		if v:IsA("Sky") then
			if v.MoonTextureId == "http://www.roblox.com/asset/?id=9709149431" then
				getgenv().MoonIs = "\240\159\140\157 :Full Moon 5/5"
			elseif v.MoonTextureId == "http://www.roblox.com/asset/?id=9709149052" then
				getgenv().MoonIs = "\240\159\140\150 :Full Moon 4/5"
			elseif v.MoonTextureId == "http://www.roblox.com/asset/?id=9709143733" then
				getgenv().MoonIs = "\240\159\140\151 :Full Moon 3/5"
			elseif v.MoonTextureId=="http://www.roblox.com/asset/?id=9709150401" then
				getgenv().MoonIs = "\240\159\140\152 :Full Moon 2/5"
			elseif v.MoonTextureId=="http://www.roblox.com/asset/?id=9709149680" then
				getgenv().MoonIs = "\32\240\159\140\156 :Full Moon 1/5"
			else
				getgenv().MoonIs = "\240\159\140\154 :Full Moon 0/5"
			end
		end
	 end
	game.StarterGui:SetCore("SendNotification", {
		Title = "Mirage : "..getgenv().MysticSp, 
		Text = "Check mirage island",
		Duration = 2.5
	})
	game.StarterGui:SetCore("SendNotification", {
		Title = getgenv().MoonIs, 
		Text = "Check moon / full moon",
		Duration = 2.5
	})
end)
Section1Left:Button("Remove Fog (Cant check moon)",function(qww)
	game:GetService("Lighting").LightingLayers:Destroy()
	game:GetService("Lighting").Sky:Destroy()
end)

Section1Left:Toggle("Tween Mirage Island",false,function(mmm)
	_G.TweenMRIG = mmm
end)
Section1Left:Toggle("Tween to Gear",false,function(mgg)
	_G.TweenMGear = mgg
end)
Section1Left:Label("- Race V4 -")
Section1Left:Toggle("Auto Quest",false,function(v)
	_G.AutoQuestRace = v
end)
Section1Left:Label("- Troll -")
Section1Left:Button("Fake Unlock Temple",function(uns)
	game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(28654, 14898.7832, -30, 1, 0, 0, 0, 1, 0, 0, 0, 1)
	game:GetService("Workspace").Map["Temple of Time"].MainDoor1:Destroy()
	game:GetService("Workspace").Map["Temple of Time"].MainDoor2:Destroy()
	game:GetService("Workspace").Map["Temple of Time"].DoNotEnter:Destroy()
	spawn(function()
		pcall(function()
			while wait() do
				if game:GetService("Workspace").Map["Temple of Time"]:FindFirstChild("NoGlitching") then
					for i,v in pairs(game:GetService("Workspace").Map["Temple of Time"]:GetChildren()) do 
						if v.Name == "NoGlitching" then
							v:Destroy()
						end
					end
				end
			end
		end)
	end)
	wait(2)
	game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(28654, 14898.7832, -30, 1, 0, 0, 0, 1, 0, 0, 0, 1)
end)
Section1Right:Label("- Teleport -")
MysList = {
	"Temple of Time",
	"Mink Door",
	"Cyborg Door",
	"Fish Door",
	"Human Door",
	"Ghoul Door",
	"Angle Door",
	"Ancient One",
    ""
}	
Section1Right:Dropdown("Select Mystic Location",MysList,function(v)
	_G.MysChoose = v
end)
Section1Right:Toggle("Start Tween",false,function(value)
_G.Start_Tween_Mys = value    
if _G.Start_Tween_Mys == true then
	repeat wait()
		if _G.MysChoose == "Temple of Time" then
			game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(28286.35546875, 14896.8505859375, 102.62469482421875)
		elseif _G.MysChoose == "Mink Door" then
			getgenv().ToTargets(CFrame.new(29012.341796875, 14890.9755859375, -380.1492614746094))
		elseif _G.MysChoose == "Cyborg Door" then
			getgenv().ToTargets(CFrame.new(28502.681640625, 14895.9755859375, -423.7279357910156))
		elseif _G.MysChoose == "Fish Door" then
			getgenv().ToTargets(CFrame.new(28231.17578125, 14890.9755859375, -211.64173889160156))
		elseif _G.MysChoose == "Human Door" then
			getgenv().ToTargets(CFrame.new(29221.822265625, 14890.9755859375, -205.99114990234375))
		elseif _G.MysChoose == "Ghoul Door" then
			getgenv().ToTargets(CFrame.new(28674.244140625, 14890.6767578125, 445.4310607910156))
		elseif _G.MysChoose == "Angle Door" then
			getgenv().ToTargets(CFrame.new(28960.158203125, 14919.6240234375, 235.03948974609375))
		elseif _G.MysChoose == "Ancient One" then
			getgenv().ToTargets(CFrame.new(28975.416015625, 14889.9755859375, -119.18738555908203))
		end
	until not _G.Start_Tween_Mys
end
StopTween(_G.Start_Tween_Mys)
end)
Section1Right:Label("- Auto -")
Section1Right:Button("Buy Boat (Sea castle)",function()
	local args = {
		[1] = "BuyBoat",
		[2] = "PirateSloop"
	}

	game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
end)

Section1Right:Toggle("Teleport to SeaPort",false,function(v)
	_G.PortTP = v
end)

Section1Right:Toggle("Auto Drive Boat",false,function(v)
	_G.DriveBoat = v
end)
local Section2Left = Tab2:AddPage()
local Section2Right = Tab2:AddPage()
Section2Left:Label("- Up Stats -")
Section2Left:Toggle("Melee",false,function(v)
	_G.Melee = v    
end)
Section2Left:Toggle("Defense",false,function(v)
	_G.Defense = v 
end)
Section2Left:Toggle("Sword",false,function(v)
	_G.Sword = v 
end)
Section2Left:Toggle("Gun",false,function(v)
	_G.Gun = v 
end)
Section2Left:Toggle("Fruit",false,function(v)
	_G.Fruit = v 
end)
Section2Left:Label("- FOV Aimbot -")
local Circle = Drawing.new("Circle")
Circle.Color =  Color3.fromRGB(255, 255, 255)
Circle.Thickness = 1
Circle.Radius = 250
Circle.NumSides = 460
Circle.Filled = false
Circle.Transparency = 1

game:GetService("RunService").Stepped:Connect(function()
	Circle.Radius = _G.Select_Size_Fov
	Circle.Thickness = 1
	Circle.NumSides = 460
	Circle.Position = game:GetService('UserInputService'):GetMouseLocation()
	if _G.Show_Fov then
		Circle.Visible = true
	else
		Circle.Visible = false
	end
end)
_G.Select_Size_Fov = 1000
_G.Show_Fov = false
Section2Left:Toggle("Aimbot Skill",false,function(value)
	_G.Aimbot_Skill_Fov = value
end)
Section2Left:Label("- Bounty -")
Plrs = {}
for i,v in pairs(game:GetService("Players"):GetChildren()) do  
    table.insert(Plrs ,v.Name)
end
local SelectPlayerYo = Section2Left:Dropdown("Select Player",Plrs,function(v)
    _G.Playeras = v
end)
Section2Left:Button("Refresh Player",function()
    SelectPlayerYo:Clear()
    for i,v in pairs(game:GetService("Players"):GetChildren()) do  
        SelectPlayerYo:Add(v.Name)
    end
 end) 
Section2Left:Toggle("Kill Target",false,function(v)
	_G.AFdf = v    
end)
Section2Right:Label("- Combat -")
Section2Right:Toggle("Auto Active Race v3",false,function(v)
	_G.Rv3 = v    
end)
Section2Right:Toggle("Auto Active Race v4",false,function(v)
	_G.Rv4 = v    
end)
Section2Right:Toggle("God Speed",false,function(v)
	_G.GsE = v    
end)
Section2Right:Toggle("Aura Attack",false,function(v)
	_G.AccsF = v    
end)
Section2Right:Toggle("Tween to Save Place",false,function(v)
	_G.SaveModeSS = v    
end)
Section2Right:Label("- Other -")
Section2Right:Toggle("Noclip",false,function(v)
	_G.LOf = v
end)
local Section4Left = Tab4:AddPage()
local Section4Right = Tab4:AddPage()
Section4Left:Label("- Teleport Sea -")
Section4Left:Button("First Sea",function()
    local args = {
        [1] = "TravelMain"
    }
    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
end)
Section4Left:Button("Second Sea",function()
    local args = {
        [1] = "TravelDressrosa"
    }
    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
end)
Section4Left:Button("Third Sea",function()
    local args = {
        [1] = "TravelZou"
    }
    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
end)
Section4Right:Label("- Teleport Island -")
if game.PlaceId == 2753915549 then
	wait(.1)
	Island = {
		"WindMill",
		"Middle Town",
		"Jungle",
		"Pirate Village",
		"Desert",
		"Snow Island",
		"MarineFord",
		"Colosseum",
		"Sky Island 1",
		"Sky Island 2",
		"Prison",
		"Magma Village",
		"Under Water Island",
		"Fountain City",
        ""
		}
elseif game.PlaceId == 4442272183 then  
	wait(.1)
	Island = {
		"The Cafe",
		"Frist Spot",
		"Dark Area",
		"Flamingo Mansion",
		"Green Zone",
		"Colossuim",
		"Zombie Island",
		"Ice And Magma Island",
		"Ice Castle",
		"Forgotten Island",
		"Ussop Island",
        ""
		}
else
	wait(.1)
	Island = {
		"Mansion",
		"Hydra Island",
		"Castle On The Sea",
		"Port Town",
		"Great Tree",
		"Floating Turtle",
		"Haunted Castle",
		"Ice Cream Island",
		"Peanut Island",
		"Cake Island",
		"Sea Of Treats",
		"Candy Cane Island",
        ""
		}	
end
Section4Right:Dropdown("Select Island",Island,function(v)
    _G.Select_Island = v
end)
Section4Right:Toggle("Start Tween",false,function(value)
    _G.Start_Tween_Island = value    
    if _G.Start_Tween_Island == true then
        repeat wait()
            if _G.Select_Island == "WindMill" then
                getgenv().ToTargets(CFrame.new(1110.11669921875, 115.3574447631836, 1426.2801513671875))
            elseif _G.Select_Island == "Middle Town" then
                getgenv().ToTargets(CFrame.new(-780.8069458007812, 33.67769241333008, 1606.4222412109375))
            elseif _G.Select_Island == "Jungle" then
                getgenv().ToTargets(CFrame.new(-1614.43310546875, 145.3488311767578, 144.54666137695312))
            elseif _G.Select_Island == "Pirate Village" then
                getgenv().ToTargets(CFrame.new(-1250.5933837890625, 44.77783203125, 3820.25634765625))
            elseif _G.Select_Island == "Desert" then
                getgenv().ToTargets(CFrame.new(960.5593872070312, 94.5592269897461, 4201.6435546875))
            elseif _G.Select_Island == "Snow Island" then
                getgenv().ToTargets(CFrame.new(1179.448486328125, 154.553955078125, -1276.5528564453125))
            elseif _G.Select_Island == "MarineFord" then
                getgenv().ToTargets(CFrame.new(-4795.46484375, 106.639892578125, 4344.22802734375))
            elseif _G.Select_Island == "Colosseum" then
                getgenv().ToTargets(CFrame.new(-1438.7559814453125, 99.13253784179688, -2788.081787109375))
            elseif _G.Select_Island == "Sky Island 1" then
                getgenv().ToTargets(CFrame.new(-4914.2744140625, 737.7118530273438, -2577.97412109375))
            elseif _G.Select_Island == "Sky Island 2" then
                getgenv().ToTargets(CFrame.new(-4663.37646484375, 921.312255859375, -1775.239013671875))
            elseif _G.Select_Island == "Prison" then
                getgenv().ToTargets( CFrame.new(4846.578125, 87.28545379638672, 734.9696044921875))
            elseif _G.Select_Island == "Magma Village" then
                getgenv().ToTargets(CFrame.new(-5242.55615234375, 59.861671447753906, 8445.515625))
            elseif _G.Select_Island == "Under Water Island" then
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(61173.4140625, 61.560420989990234, 1820.6488037109375))
            elseif _G.Select_Island == "Fountain City" then
                getgenv().ToTargets(CFrame.new(5026.87548828125, 72.85872650146484, 4038.395263671875))
            elseif _G.Select_Island == "Shank Room" then
                getgenv().ToTargets(CFrame.new(-1442.16553, 29.8788261, -28.3547478))
            elseif _G.Select_Island == "Mob Island" then
                getgenv().ToTargets(CFrame.new(-2850.20068, 7.39224768, 5354.99268))
            elseif _G.Select_Island == "The Cafe" then
                getgenv().ToTargets(CFrame.new(-385.25091552734375, 73.08590698242188, 280.3886413574219))
            elseif _G.Select_Island == "Frist Spot" then
                getgenv().ToTargets(CFrame.new(-11.311455726623535, 67.51933288574219, 2771.5224609375))
            elseif _G.Select_Island == "Dark Area" then
                getgenv().ToTargets(CFrame.new(3780.15234375, 113.120849609375, -3499.829345703125))
            elseif _G.Select_Island == "Flamingo Mansion" then
                getgenv().ToTargets(CFrame.new(-388.4208068847656, 454.63671875, 641.76904296875))
            elseif _G.Select_Island == "Green Zone" then
                getgenv().ToTargets( CFrame.new(-2277.50927734375, 170.26324462890625, -2738.119140625))
            elseif _G.Select_Island == "Colossuim" then
                getgenv().ToTargets( CFrame.new(-1837.1778564453125, 176.788330078125, 1355.9031982421875))
            elseif _G.Select_Island == "Zombie Island" then
                getgenv().ToTargets(CFrame.new(-5407.49658203125, 130.1032257080078, -714.726806640625))
            elseif _G.Select_Island == "Ice and lawa Island" then
                getgenv().ToTargets(CFrame.new(-5850.67529296875, 113.928466796875, -5128.80859375))
            elseif _G.Select_Island == "Ice And Magma Island" then
                getgenv().ToTargets(CFrame.new(-5687.322265625, 134.99508666992188, -5142.4560546875))
            elseif _G.Select_Island == "Cursed Ship" then
                getgenv().ToTargets(CFrame.new(923.40197753906, 125.05712890625, 32885.875))
            elseif _G.Select_Island == "Ice Castle" then
                getgenv().ToTargets(CFrame.new(5714.26611328125, 240.810791015625, -6495.71875))
            elseif _G.Select_Island == "Forgotten Island" then
                getgenv().ToTargets(CFrame.new(-2809.4375, 110.94773864746094, -9532.626953125))
            elseif _G.Select_Island == "Ussop Island" then
                getgenv().ToTargets(CFrame.new(4816.8618164063, 8.4599885940552, 2863.8195800781))
            elseif _G.Select_Island == "Mini Sky Island" then
                getgenv().ToTargets(CFrame.new(-288.74060058594, 49326.31640625, -35248.59375))
            elseif _G.Select_Island == "Great Tree" then
                getgenv().ToTargets(CFrame.new(2316.61962890625, 130.3724822998047, -6442.16650390625))
            elseif _G.Select_Island == "Castle On The Sea" then
                getgenv().ToTargets(CFrame.new(-4987.142578125, 361.6728210449219, -3017.964111328125))
            elseif _G.Select_Island == "MiniSky" then
                getgenv().ToTargets(CFrame.new(-260.65557861328, 49325.8046875, -35253.5703125))
            elseif _G.Select_Island == "Port Town" then
                getgenv().ToTargets(CFrame.new(-286.2393493652344, 46.503822326660156, 5335.642578125))
            elseif _G.Select_Island == "Hydra Island" then
                getgenv().ToTargets(CFrame.new(5230.0830078125, 766.97607421875, 346.3645324707031))
            elseif _G.Select_Island == "Floating Turtle" then
                getgenv().ToTargets(CFrame.new(-12609.65625, 510.88226318359375, -8630.134765625))
            elseif _G.Select_Island == "Mansion" then
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(-12465.3720703125, 374.94024658203125, -7452.3486328125))
            elseif _G.Select_Island == "Haunted Castle" then
                getgenv().ToTargets(CFrame.new(-9515.3720703125, 274.4736633300781, 5786.06103515625))
            elseif _G.Select_Island == "Ice Cream Island" then
                getgenv().ToTargets(CFrame.new(-846.4985961914062, 177.26763916015625, -10938.6875))
            elseif _G.Select_Island == "Peanut Island" then
                getgenv().ToTargets(CFrame.new(-2044.5743408203125, 107.43963623046875, -9971.8896484375))
            elseif _G.Select_Island == "Cake Island" then
                getgenv().ToTargets(CFrame.new(-1915.0732421875, 113.5052261352539, -11563.021484375))
            elseif _G.Select_Island == "Sea Of Treats" then
                getgenv().ToTargets(CFrame.new(-54.24225997924805, 108.86431121826172, -11999.5390625))
			elseif _G.Select_Island == "Candy Cane Island" then
				getgenv().ToTargets(CFrame.new(-1080.7022705078125, 14.957878112792969, -14483.0458984375))
            end
        until not _G.Start_Tween_Island
    end
    StopTween(_G.Start_Tween_Island)
end)
local Section5Left = Tab5:AddPage()
Section5Left:Label("- Main Dungeon -")
Dungeon = {
	"Flame", 
	"Ice", 
	"Quake", 
	"Light",
	"Dark",
	"String",
	"Rumble",
	"Magma",
	"Human: Buddha",
	"Sand",
	"Bird: Phoenix",
	"Dough",
    ""
}
Section5Left:Dropdown("Select Dungeon",Dungeon,function(v)
    _G.Select_Dungeon = v
end)
Section5Left:Toggle("Auto Buy Chip Dungeon",false,function(a)
	_G.Auto_Buy_Chips_Dungeon = a
end)
Section5Left:Toggle("Auto Start Dungeon",false,function(a)
	_G.Auto_Start_Dungeon = a
end)
Section5Left:Toggle("Auto Finish Dungeon",false,function(a)
	_G.Auto_Next_Island = a
end)
Section5Left:Toggle("Kill Aura",false,function(a)
	_G.Kill_Aura = a
end)
Section5Left:Toggle("Auto Awake",false,function(a)
	_G.Auto_Awake = a
end)
local Section3Left = Tab3:AddPage()
local Section3Right = Tab3:AddPage()
Section3Left:Label("- Melee -")
Section3Left:Button("Buy Black Leg",function()
    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyBlackLeg")
end)
Section3Left:Button("Buy Electro",function()
    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyElectro")
end)
Section3Left:Button("Buy Fishman Karate",function()
    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyFishmanKarate")
end)
Section3Left:Button("Buy DragonClaw",function()
    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BlackbeardReward","DragonClaw","1")
    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BlackbeardReward","DragonClaw","2")
end)
Section3Left:Button("Buy SuperHuman",function()
    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuySuperhuman")
end)
Section3Left:Button("Buy Death Step",function()
    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyDeathStep")
end)
Section3Left:Button("Buy Sharkman Karate",function()
    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuySharkmanKarate",true)
    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuySharkmanKarate")
end)
Section3Left:Button("Buy Electric Claw",function()
    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyElectricClaw")
end)
Section3Left:Button("Buy Dragon Talon",function()
    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyDragonTalon")
end)
Section3Left:Button("Buy God Human",function()
    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyGodhuman")
end)
Section3Left:Label("- Sword -")
Section3Left:Button("Buy Cutlass",function()
    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyItem","Cutlass")
end)
Section3Left:Button("Buy Iron Mace",function()
    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyItem","Iron Mace")
end)
Section3Left:Button("Buy Duel Katana",function()
    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyItem","Duel Katana")
end)
Section3Left:Button("Buy Katana",function()
    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyItem","Katana")
end)
Section3Left:Button("Buy Triple Katana",function()
    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyItem","Triple Katana")
end)
Section3Left:Button("Buy Dual-Headed Blade",function()
    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyItem","Dual-Headed Blade")
end)
Section3Left:Button("Buy Bisento",function()
    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyItem","Bisento")
end)
Section3Left:Button("Buy Soul Cane",function()
    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyItem","Soul Cane")
end)
Section3Right:Label("- Fruit -")
Section3Right:Button("Random Fruit",function()
	local args = {
		[1] = "Cousin",
		[2] = "Buy"
	}
	game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
end)
Section3Right:Label("- Ability -")
Section3Right:Button("Buy Geppo",function()
    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyHaki","Geppo")
end)
Section3Right:Button("Buy Buso Haki",function()
    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyHaki","Buso")
end)
Section3Right:Button("Buy Soru",function()
    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyHaki","Soru")
end)
Section3Right:Button("Buy Ken Haki",function()
    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("KenTalk","Buy")
end)
Section3Right:Label("- Gun -")
Section3Right:Button("Buy Kabucha",function()
	game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BlackbeardReward","Slingshot","1")
	game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BlackbeardReward","Slingshot","2")
end)
Section3Right:Button("Buy Flintlock",function()
    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyItem","Flintlock")
end)
Section3Right:Button("Buy Refined Flintlock",function()
    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyItem","Refined Flintlock")
end)
Section3Right:Button("Buy Musket",function()
    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyItem","Musket")
end)
Section3Right:Button("Buy Slingshot",function()
    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyItem","Slingshot")
end)
Section3Right:Button("Buy Cannon",function()
    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyItem","Cannon")
end)
local Section6Left = Tab6:AddPage()
local Section6Right = Tab6:AddPage()
Section6Left:Label("- Team -")
Section6Left:Button("Join Pirates Team",function()
	local args = {
		[1] = "SetTeam",
		[2] = "Pirates"
	}
	game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args)) 
	local args = {
		[1] = "BartiloQuestProgress"
	}
	game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
end)
Section6Left:Button("Join Marines Team",function()
	local args = {
		[1] = "SetTeam",
		[2] = "Marines"
	}
	game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
	local args = {
		[1] = "BartiloQuestProgress"
	}
	game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
end)
Section6Left:Label("- Server -")
Section6Left:Button("Rejoin Server",function()
	local ts = game:GetService("TeleportService")
	local p = game:GetService("Players").LocalPlayer
	ts:Teleport(game.PlaceId, p)
end)
Section6Left:Button("Server Hop",function()
	Hop()
end)
Section6Right:Label("- Setting Players -")
Section6Right:Toggle("Anit Afk",true,function(v)
	_G.Anit_Afk = v
end)
Section6Right:Label("- GUI -")
Section6Right:Button("Inventory Fruit",function()
	local args = {
		[1] = "getInventoryFruits"
	}
	
	game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("getInventoryFruits")
	game:GetService("Players").LocalPlayer.PlayerGui.Main.FruitInventory.Visible = true
end)
Section6Right:Button("Shop Devil Fruit",function()
	local args = {
		[1] = "GetFruits"
	}
	game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
	game.Players.localPlayer.PlayerGui.Main.FruitShop.Visible = true
end)
Section6Right:Button("Color Haki",function()
	game.Players.localPlayer.PlayerGui.Main.Colors.Visible = true
end)
Section6Right:Button("Title Name",function()
	local args = {
		[1] = "getTitles"
	}
	game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
	game.Players.localPlayer.PlayerGui.Main.Titles.Visible = true
end)
local vu = game:GetService("VirtualUser")
game:GetService("Players").LocalPlayer.Idled:connect(function()
   vu:Button2Down(Vector2.new(0,0),workspace.CurrentCamera.CFrame)
   wait(1)
   vu:Button2Up(Vector2.new(0,0),workspace.CurrentCamera.CFrame)
end)

    getgenv().BringMobs = function(F, z)
        coroutine.wrap(function()
            pcall(function()
                for U, d in pairs(game.Workspace.Enemies:GetChildren()) do
                    if d:FindFirstChild("Humanoid") and d:FindFirstChild("HumanoidRootPart") and (d.Name == z) then
                        if isnetworkowner ~= nil and isnetworkowner(d:FindFirstChild("HumanoidRootPart")) then
                            d:FindFirstChild("HumanoidRootPart").Transparency = 1
                            d:FindFirstChild("Humanoid"):ChangeState(11)
                            d:FindFirstChild("HumanoidRootPart").Size = Vector3.new(60,60,60)
                            d:FindFirstChild("Humanoid").WalkSpeed = 0
                            d:FindFirstChild("Humanoid").JumpPower = 0
                            if not d:FindFirstChild("HumanoidRootPart"):FindFirstChild("BV") then
                                local m = Instance.new("BodyVelocity")
                                m.Parent = d:FindFirstChild("HumanoidRootPart")
                                m.Name = "BV"
                                m.MaxForce = Vector3.new(100000, 100000, 100000)
                                m.Velocity = Vector3.new(0, 0, 0)
                            end
                            if d:FindFirstChild("Humanoid"):FindFirstChild("Animator") then
                                d:FindFirstChild("Humanoid"):FindFirstChild("Animator"):Remove()
                            end
                            d:FindFirstChild("HumanoidRootPart").CFrame = F
                            sethiddenproperty(game:GetService("Players").LocalPlayer,"SimulationRadius",math.huge)
                        elseif (F.Position - d.HumanoidRootPart.Position).magnitude < 300 then
                            d:FindFirstChild("HumanoidRootPart").Transparency = 1
                            d:FindFirstChild("Humanoid"):ChangeState(11)
                            d:FindFirstChild("HumanoidRootPart").Size = Vector3.new(60,60,60)
                            d:FindFirstChild("Humanoid").WalkSpeed = 0
                            d:FindFirstChild("Humanoid").JumpPower = 0
                            if not d:FindFirstChild("HumanoidRootPart"):FindFirstChild("BV") then
                                local u = Instance.new("BodyVelocity")
                                u.Parent = d:FindFirstChild("HumanoidRootPart")
                                u.Name = "BV"
                                u.MaxForce = Vector3.new(100000, 100000, 100000)
                                u.Velocity = Vector3.new(0, 0, 0)
                            end
                            if d:FindFirstChild("Humanoid"):FindFirstChild("Animator") then
                                d:FindFirstChild("Humanoid"):FindFirstChild("Animator"):Remove()
                            end
                            d:FindFirstChild("HumanoidRootPart").CFrame = F
                            sethiddenproperty(game:GetService("Players").LocalPlayer,"SimulationRadius",math.huge)
                        end
                    end
                end
            end)
        end)()
    end

function TP(gotoCFrame)
	pcall(function()
		game.Players.LocalPlayer.Character.Humanoid.Sit = false
	end)
	if (game:GetService("Players")["LocalPlayer"].Character.HumanoidRootPart.Position - gotoCFrame.Position).Magnitude <= 200 then
		pcall(function() 
			tween:Cancel()
		end)
		game:GetService("Players")["LocalPlayer"].Character.HumanoidRootPart.CFrame = gotoCFrame
	else
		local tween_s = game:service"TweenService"
		local info = TweenInfo.new((game:GetService("Players")["LocalPlayer"].Character.HumanoidRootPart.Position - gotoCFrame.Position).Magnitude/300, Enum.EasingStyle.Linear)
		local tween, err = pcall(function()
			tween = tween_s:Create(game.Players.LocalPlayer.Character["HumanoidRootPart"], info, {CFrame = gotoCFrame})
			tween:Play()
		end)
		if not tween then return err end
	end
end
spawn(function()
    while task.wait() do
        pcall(function()
            for i,v in pairs(game.Workspace.Enemies:GetChildren()) do
                if v:FindFirstChild("Humanoid") then
                    if v.Humanoid.Health <= 0 then
                        v.Parent = game.Workspace
                    end
                end
            end
        end)
    end
end)
spawn(function()
    while task.wait() do
        pcall(function()
            setfflag("HumanoidParallelRemoveNoPhysics", "False")
            setfflag("HumanoidParallelRemoveNoPhysicsNoSimulate2", "False")
        end)
    end
end)
spawn(function()
    while task.wait() do
        pcall(function()
            if _G.AuToFarmMasFruits then
                CheckQuest()
                for i,v in pairs(game.Workspace.Enemies:GetChildren()) do
                    if v.Name == Ms then
                        if v:FindFirstChild("HumanoidRootPart") then
                            repeat task.wait()
								getgenv().BringMobs(v.HumanoidRootPart.CFrame , v.Name)
                                if v.Humanoid.Health <= v.Humanoid.MaxHealth * _G.KillAt/100 then
									EquipTool(game.Players.LocalPlayer.Data.DevilFruit.Value)
                                    _G.UseSkill = true
									getgenv().ToTargets(v.HumanoidRootPart.CFrame * CFrame.new(0,0,25))
                                    FruitPos = v.HumanoidRootPart.CFrame
                                else
                                    _G.UseSkill = false
									EquipTool(_G.ConfigTestDropdownNormal)
									getgenv().ToTargets(v.HumanoidRootPart.CFrame * CFrame.new(0,0,25))
									Attack()
                                end
                            until not _G.AuToFarmMasFruits or not v.Parent or v.Humanoid.Health <= 0
                        end
					else
						getgenv().ToTargets(CFrameMon)
						EquipTool(_G.ConfigTestDropdownNormal)
                    end
                end
            end
        end)
    end
end)
spawn(function()
    while task.wait() do
        pcall(function()
            if _G.AuToFarmMasFruits then
                local On = {
                    [1] = FruitPos.Position
                }
                game:GetService("Players").LocalPlayer.Character[game:GetService("Players").LocalPlayer.Data.DevilFruit.Value].RemoteEvent:FireServer(unpack(On))
            else
               local Off = {
                    [1] = nil
                }
                game:GetService("Players").LocalPlayer.Character[game:GetService("Players").LocalPlayer.Data.DevilFruit.Value].RemoteEvent:FireServer(unpack(Off)) 
            end
        end)
    end
end)
spawn(function()
    while task.wait() do
        pcall(function()
            if _G.UseSkill then
                if _G.SkillZ then
					wait()
                    game:GetService("VirtualInputManager"):SendKeyEvent(true,"Z",false,game)
                    game:GetService("VirtualInputManager"):SendKeyEvent(false,"Z",false,game)
					wait()
                end
                if _G.SkillX then
					wait()
                    game:GetService("VirtualInputManager"):SendKeyEvent(true,"X",false,game)
                    game:GetService("VirtualInputManager"):SendKeyEvent(false,"X",false,game)
					wait()
                end
                if _G.SkillC then
					wait()
                    game:GetService("VirtualInputManager"):SendKeyEvent(true,"C",false,game)
                    game:GetService("VirtualInputManager"):SendKeyEvent(false,"C",false,game)
					wait()
                end
                if _G.SkillV then
					wait()
                    game:GetService("VirtualInputManager"):SendKeyEvent(true,"V",false,game)
                    game:GetService("VirtualInputManager"):SendKeyEvent(false,"V",false,game)
					wait()
                end
            end
        end)
    end
end)
spawn(function()
	if _G.AuToFarmMasFruits == false then
		_G.UseSkill = false
	end
end)
spawn(function()
	while wait(.1) do
		if _G.Sea2 then
			local Lvv = game.Players.LocalPlayer.Data.Level.Value
			if Lvv >= 700 and game.PlaceId == 2753915549 then
				_G.AutoFarmL = false
				if game.Workspace.Map.Ice.Door.CanCollide == true and game.Workspace.Map.Ice.Door.Transparency == 0 then
					TP(CFrame.new(4851.8720703125, 5.6514348983765, 718.47094726563))
					if (game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 5 then
						wait(.5)
					game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("DressrosaQuestProgress","Detective")
					end
					EquipTool("Key")
					TP(CFrame.new(1347.7124, 37.3751602, -1325.6488))
					wait(3)
				elseif game.Workspace.Map.Ice.Door.CanCollide == false and game.Workspace.Map.Ice.Door.Transparency == 1 then
					if game:GetService("Workspace").Enemies:FindFirstChild("Ice Admiral [Lv. 700] [Boss]") then
						for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
							if v.Name == "Ice Admiral [Lv. 700] [Boss]" and v.Humanoid.Health > 0 then
								repeat game:GetService("RunService").Heartbeat:wait()
									pcall(function()
										EquipTool(_G.SelectToolWeapon)
										getgenv().ToTarget(v.HumanoidRootPart.CFrame * CFrame.new(0,40,0))
										Attack()					
									end)
								until _G.Sea2 == false or v.Humanoid.Health <= 0 or not v.Parent
								game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("TravelDressrosa")
							end
						end
					else
						TP(CFrame.new(1347.7124, 37.3751602, -1325.6488))
					end
				else
					game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("TravelDressrosa")
				end
			end
		end
	end
end)
spawn(function()
	while wait() do
		if _G.Auto_Saber then
			if game.Players.localPlayer.Data.Level.Value < 200 then
			else
				if game.Workspace.Map.Jungle.Final.Part.CanCollide == false then
					if _G.Auto_Saber and game.ReplicatedStorage:FindFirstChild("Saber Expert [Lv. 200] [Boss]") or game.Workspace.Enemies:FindFirstChild("Saber Expert [Lv. 200] [Boss]") then
						if game.Workspace.Enemies:FindFirstChild("Saber Expert [Lv. 200] [Boss]") then
							for i,v in pairs(game.Workspace.Enemies:GetChildren()) do
								if v.Name == "Saber Expert [Lv. 200] [Boss]" and v:FindFirstChild("HumanoidRootPart") and v:FindFirstChild("Humanoid") and v.Humanoid.Health > 0 then
									repeat wait()
										if (v.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude > 300 then
											Farmtween = toTarget(v.HumanoidRootPart.Position,v.HumanoidRootPart.CFrame)
										elseif (v.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude <= 300 then
											if Farmtween then
												Farmtween:Stop()
											end
											EquipTool(_G.ConfigTestDropdownNormal)
											game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.HumanoidRootPart.CFrame * CFrame.new(0,30,0)
											game:GetService'VirtualUser':CaptureController()
											game:GetService'VirtualUser':Button1Down(Vector2.new(1280, 672))
										end
									until not _G.Auto_Saber or not v.Parent or v.Humanoid.Health <= 0
								end
							end
						else
							Questtween = toTarget(CFrame.new(-1405.41956, 29.8519993, 5.62435055).Position,CFrame.new(-1405.41956, 29.8519993, 5.62435055))
							if (CFrame.new(-1405.41956, 29.8519993, 5.62435055).Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude <= 300 then
								if Questtween then
									Questtween:Stop()
								end
								game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-1405.41956, 29.8519993, 5.62435055, 0.885240912, 3.52892613e-08, 0.465132833, -6.60881128e-09, 1, -6.32913171e-08, -0.465132833, 5.29540891e-08, 0.885240912)
							end
						end
					else
						if _G.Auto_Saber_Hop then
							Hop()
						end
					end
				elseif game.Players.LocalPlayer.Backpack:FindFirstChild("Relic") or game.Players.LocalPlayer.Character:FindFirstChild("Relic") and game.Players.localPlayer.Data.Level.Value >= 200 then
					EquipTool("Relic")
					wait(0.5)
					Questtween = toTarget(CFrame.new(-1405.41956, 29.8519993, 5.62435055).Position,CFrame.new(-1405.41956, 29.8519993, 5.62435055))
					if (CFrame.new(-1405.41956, 29.8519993, 5.62435055).Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude <= 300 then
						if Questtween then
							Questtween:Stop()
						end
						game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-1405.41956, 29.8519993, 5.62435055, 0.885240912, 3.52892613e-08, 0.465132833, -6.60881128e-09, 1, -6.32913171e-08, -0.465132833, 5.29540891e-08, 0.885240912)
					end
				else
					if Workspace.Map.Jungle.QuestPlates.Door.CanCollide == false then
						if game.Workspace.Map.Desert.Burn.Part.CanCollide == false then
							if game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("ProQuestProgress","SickMan") == 0 then
								if game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("ProQuestProgress","RichSon") == 0 then
									if game.Workspace.Enemies:FindFirstChild("Mob Leader [Lv. 120] [Boss]") then
										for i,v in pairs(game.Workspace.Enemies:GetChildren()) do
											if _G.Auto_Saber and v:IsA("Model") and v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 and v.Name == "Mob Leader [Lv. 120] [Boss]" then
												repeat
													pcall(function() wait() 
														if (v.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude > 300 then
															Farmtween = toTarget(v.HumanoidRootPart.Position,v.HumanoidRootPart.CFrame)
														elseif (v.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude <= 300 then
															if Farmtween then
																Farmtween:Stop()
															end
															EquipTool(_G.ConfigTestDropdownNormal)
															game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.HumanoidRootPart.CFrame * CFrame.new(0,25, 0)
															game:GetService'VirtualUser':CaptureController()
															game:GetService'VirtualUser':Button1Down(Vector2.new(1280, 672))
														end
													end)
												until not _G.Auto_Saber or not v.Parent or v.Humanoid.Health <= 0
											end
										end
									else
										Questtween = toTarget(CFrame.new(-2848.59399, 7.4272871, 5342.44043).Position,CFrame.new(-2848.59399, 7.4272871, 5342.44043))
										if (CFrame.new(-2848.59399, 7.4272871, 5342.44043).Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude <= 300 then
											if Questtween then
												Questtween:Stop()
											end
											game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-2848.59399, 7.4272871, 5342.44043, -0.928248107, -8.7248246e-08, 0.371961564, -7.61816636e-08, 1, 4.44474857e-08, -0.371961564, 1.29216433e-08, -0.928248107)
										end
									end
								elseif game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("ProQuestProgress","RichSon") == 1 then
									if game.Players.LocalPlayer.Backpack:FindFirstChild("Relic") or game.Players.LocalPlayer.Character:FindFirstChild("Relic") then
										EquipTool("Relic")
										wait(0.5)
										Questtween = toTarget(CFrame.new(-1405.41956, 29.8519993, 5.62435055).Position,CFrame.new(-1405.41956, 29.8519993, 5.62435055))
										if (CFrame.new(-1405.41956, 29.8519993, 5.62435055).Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude <= 300 then
											if Questtween then
												Questtween:Stop()
											end
											game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-1405.41956, 29.8519993, 5.62435055)
										end
									else
										Questtween = toTarget(CFrame.new(-910.979736, 13.7520342, 4078.14624).Position,CFrame.new(-910.979736, 13.7520342, 4078.14624))
										if (CFrame.new(-910.979736, 13.7520342, 4078.14624).Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude <= 300 then
											if Questtween then
												Questtween:Stop()
											end
											game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-910.979736, 13.7520342, 4078.14624, 0.00685182028, -1.53155766e-09, -0.999976516, 9.15205245e-09, 1, -1.46888401e-09, 0.999976516, -9.14177267e-09, 0.00685182028)
											wait(.5)
											local args = {
												[1] = "ProQuestProgress",
												[2] = "RichSon"
											}
											game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
										end
									end
								else
									Questtween = toTarget(CFrame.new(-910.979736, 13.7520342, 4078.14624).Position,CFrame.new(-910.979736, 13.7520342, 4078.14624))
									if (CFrame.new(-910.979736, 13.7520342, 4078.14624).Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude <= 300 then
										if Questtween then
											Questtween:Stop()
										end
										game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-910.979736, 13.7520342, 4078.14624)
										local args = {
											[1] = "ProQuestProgress",
											[2] = "RichSon"
										}
										game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
									end
								end
							else
								if game.Players.LocalPlayer.Backpack:FindFirstChild("Cup") or game.Players.LocalPlayer.Character:FindFirstChild("Cup") then
									EquipTool("Cup")
									if game.Players.LocalPlayer.Character.Cup.Handle:FindFirstChild("TouchInterest") then
										Questtween = toTarget(CFrame.new(1397.229, 37.3480148, -1320.85217).Position,CFrame.new(1397.229, 37.3480148, -1320.85217))
										if (CFrame.new(1397.229, 37.3480148, -1320.85217).Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude <= 300 then
											if Questtween then
												Questtween:Stop()
											end
											game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(1397.229, 37.3480148, -1320.85217, -0.11285457, 2.01368788e-08, 0.993611455, 1.91641178e-07, 1, 1.50028845e-09, -0.993611455, 1.90586206e-07, -0.11285457)
										end
									else
										wait(0.5)
										if game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("ProQuestProgress","SickMan") ~= 0 then
											local args = {
												[1] = "ProQuestProgress",
												[2] = "SickMan"
											}
											game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
										end
									end
								else
									Questtween = toTarget(game.Workspace.Map.Desert.Cup.Position,game.Workspace.Map.Desert.Cup.CFrame)
									if (game.Workspace.Map.Desert.Cup.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude <= 300 then
										if Questtween then
											Questtween:Stop()
										end
										game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.Workspace.Map.Desert.Cup.CFrame
									end
									-- firetouchinterest(game.Workspace.Map.Desert.Cup.TouchInterest,game.Players.LocalPlayer.Character.Head, 1)
								end
							end
						else
							if game.Players.LocalPlayer.Backpack:FindFirstChild("Torch") or game.Players.LocalPlayer.Character:FindFirstChild("Torch") then
								EquipTool("Torch")
								Questtween = toTarget(CFrame.new(1114.87708, 4.9214654, 4349.8501).Position,CFrame.new(1114.87708, 4.9214654, 4349.8501))
								if (CFrame.new(1114.87708, 4.9214654, 4349.8501).Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude <= 300 then
									if Questtween then
										Questtween:Stop()
									end
									game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(1114.87708, 4.9214654, 4349.8501, -0.612586915, -9.68697833e-08, 0.790403247, -1.2634203e-07, 1, 2.4638446e-08, -0.790403247, -8.47679615e-08, -0.612586915)
								end
							else
								Questtween = toTarget(CFrame.new(-1610.00757, 11.5049858, 164.001587).Position,CFrame.new(-1610.00757, 11.5049858, 164.001587))
								if (CFrame.new(-1610.00757, 11.5049858, 164.001587).Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude <= 300 then
									if Questtween then
										Questtween:Stop()
									end
									game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-1610.00757, 11.5049858, 164.001587, 0.984807551, -0.167722285, -0.0449818149, 0.17364943, 0.951244235, 0.254912198, 3.42372805e-05, -0.258850515, 0.965917408)
								end
							end
						end
					else
						for i,v in pairs(Workspace.Map.Jungle.QuestPlates:GetChildren()) do
							if v:IsA("Model") then wait()
								if v.Button.BrickColor ~= BrickColor.new("Camo") then
									repeat wait()
										Questtween = toTarget(v.Button.Position,v.Button.CFrame)
										if (v.Button.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude <= 150 then
											if Questtween then
												Questtween:Stop()
											end
											game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.Button.CFrame
										end
									until not _G.Auto_Saber or v.Button.BrickColor == BrickColor.new("Camo")
								end
							end
						end    
					end
				end
			end 
		end
	end
end)
spawn(function()
	while wait() do
		if _G.Auto_Third_World then
			pcall(function()
				if game:GetService("Players").LocalPlayer.Data.Level.Value >= 1500 and game.PlaceId == 2753915549 then
					_G.AutoFarmL = false
					if game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("ZQuestProgress","Check") == 0 then
						getgenv().ToTargets(CFrame.new(-1926.3221435547, 12.819851875305, 1738.3092041016))
						if (CFrame.new(-1926.3221435547, 12.819851875305, 1738.3092041016).Position - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 10 then
							wait(1.5)
							game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("ZQuestProgress","Begin")
						end
						wait(1.8)
						if game:GetService("Workspace").Enemies:FindFirstChild("rip_indra [Lv. 1500] [Boss]") then
							for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
								if v.Name == "rip_indra [Lv. 1500] [Boss]" then
									OldCFrameThird = v.HumanoidRootPart.CFrame
									repeat wait()
										EquipTool(_G.ConfigTestDropdownNormal)
										v.HumanoidRootPart.CFrame = OldCFrameThird
										v.HumanoidRootPart.Size = Vector3.new(50,50,50)
										v.HumanoidRootPart.CanCollide = false
										v.Humanoid.WalkSpeed = 0
										getgenv().ToTargets(v.HumanoidRootPart.CFrame * CFrame.new(0,40,0))
										game:GetService'VirtualUser':CaptureController()
                                        game:GetService'VirtualUser':Button1Down(Vector2.new(1280, 672))
										game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("TravelZou")
										sethiddenproperty(game:GetService("Players").LocalPlayer,"SimulationRadius",math.huge)
									until _G.Auto_Third_World == false or v.Humanoid.Health <= 0 or not v.Parent
								end
							end
						elseif not game:GetService("Workspace").Enemies:FindFirstChild("rip_indra [Lv. 1500] [Boss]") and (CFrame.new(-26880.93359375, 22.848554611206, 473.18951416016).Position - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 1000 then
							getgenv().ToTargets(CFrame.new(-26880.93359375, 22.848554611206, 473.18951416016))
						end
					end
				end
			end)
		end
	end
end)
spawn(function()
	game:GetService("RunService").Heartbeat:Connect(function()
		pcall(function()
			for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
				if _G.Auto_Rengoku and StartRengokuMagnet and (v.Name == "Snow Lurker [Lv. 1375]" or v.Name == "Arctic Warrior [Lv. 1350]") and (v.HumanoidRootPart.Position - RengokuMon.Position).magnitude <= 350 then
					v.HumanoidRootPart.CFrame = RengokuMon
					v.HumanoidRootPart.CanCollide = false
					v.HumanoidRootPart.Size = Vector3.new(50,50,50)
					if v.Humanoid:FindFirstChild("Animator") then
						v.Humanoid.Animator:Destroy()
					end
					sethiddenproperty(game.Players.LocalPlayer, "SimulationRadius",  math.huge)
				end
			end
		end)
	end)
end)
spawn(function()
	while wait() do
		if _G.Auto_Rengoku then
			pcall(function()
				if game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Hidden Key") or game:GetService("Players").LocalPlayer.Character:FindFirstChild("Hidden Key") then
					EquipTool("Hidden Key")
					getgenv().ToTargets(CFrame.new(6571.1201171875, 299.23028564453, -6967.841796875))
				elseif game:GetService("Workspace").Enemies:FindFirstChild("Snow Lurker [Lv. 1375]") or game:GetService("Workspace").Enemies:FindFirstChild("Arctic Warrior [Lv. 1350]") then
					for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
						if (v.Name == "Snow Lurker [Lv. 1375]" or v.Name == "Arctic Warrior [Lv. 1350]") and v.Humanoid.Health > 0 then
							repeat wait()
								getgenv().BringMobs(v.HumanoidRootPart.CFrame , v.Name)
								EquipTool(_G.ConfigTestDropdownNormal)
								v.HumanoidRootPart.CanCollide = false
								v.HumanoidRootPart.Size = Vector3.new(50,50,50)
								RengokuMon = v.HumanoidRootPart.CFrame
								getgenv().ToTargets(v.HumanoidRootPart.CFrame * CFrame.new(0,40,0))
								game:GetService'VirtualUser':CaptureController()
								game:GetService'VirtualUser':Button1Down(Vector2.new(1280, 672))
								StartRengokuMagnet = true
							until game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Hidden Key") or _G.Auto_Rengoku == false or not v.Parent or v.Humanoid.Health <= 0
							StartRengokuMagnet = false
						end
					end
				else
					StartRengokuMagnet = false
					getgenv().ToTargets(CFrame.new(5662.0419921875, 46.64726257324219, -6501.89990234375))
				end
			end)
		end
	end
end)
spawn(function()
	game:GetService("RunService").Heartbeat:Connect(function()
		pcall(function()
			for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
				if _G.Auto_Farm_Bone and StartMagnetBoneMon and (v.Name == "Reborn Skeleton [Lv. 1975]" or v.Name == "Living Zombie [Lv. 2000]" or v.Name == "Demonic Soul [Lv. 2025]" or v.Name == "Posessed Mummy [Lv. 2050]") and (v.HumanoidRootPart.Position - PosMonBone.Position).magnitude <= 350 then
					v.HumanoidRootPart.CFrame = PosMonBone
					v.HumanoidRootPart.CanCollide = false
					v.HumanoidRootPart.Size = Vector3.new(50,50,50)
					if v.Humanoid:FindFirstChild("Animator") then
						v.Humanoid.Animator:Destroy()
					end
					sethiddenproperty(game.Players.LocalPlayer, "SimulationRadius",  math.huge)
				end
			end
		end)
	end)
end)

spawn(function()
    while task.wait() do
        pcall(function()
            if _G.NoClip or _G.Auto_Chest or _G.Auto_Dragon_Trident or _G.Auto_Elite_Hunter or _G.Auto_SeaBeast or _G.Auto_Bounty_MinkV4 or _G.Auto_Bounty_MinkV4_Hop or _G.Auto_Farm or _G.Fast_Farm or _G.Auto_Mastery or _G.AUTO600MAS or _G.Auto600Melee or _G.Auto_Rengoku or _G.Auto_Next_Island or _G.TPSTART or _G.Auto_Fruits_Mastery or _G.AUTOBONE or _G.CAKEPRINCE or _G.CAKEPRINCE2 or _G.Auto_Hearts or _G.Auto_Material or _G.Auto_Boss or _G.auto_new_world or _G.Auto_Hallow_Scythe or _G.Auto600MasGun then 
                if not game:GetService("Players").LocalPlayer.Character.HumanoidRootPart:FindFirstChild("BodyClip") then
                    local Noclip = Instance.new("BodyVelocity")
                    Noclip.Name = "BodyClip"
                    Noclip.Parent = game:GetService("Players").LocalPlayer.Character.HumanoidRootPart
                    Noclip.MaxForce = Vector3.new(100000,100000,100000)
                    Noclip.Velocity = Vector3.new(0,0,0)
                end
            else
                game:GetService("Players").LocalPlayer.Character.HumanoidRootPart:FindFirstChild("BodyClip"):Destroy()
            end
        end)
    end
end)

spawn(function()
    pcall(function()
        game:GetService("RunService").Stepped:Connect(function()
            if _G.NoClip or _G.Auto_Chest or _G.Auto_Dragon_Trident or _G.Auto_Elite_Hunter or _G.Auto_SeaBeast or _G.Auto_Bounty_MinkV4 or _G.Auto_Bounty_MinkV4_Hop or _G.Auto_Farm or _G.Fast_Farm or _G.Auto_Mastery or _G.AUTO600MAS or _G.Auto600Melee or _G.Auto_Rengoku or _G.Auto_Next_Island or _G.TPSTART or _G.Auto_Fruits_Mastery or _G.AUTOBONE or _G.CAKEPRINCE or _G.CAKEPRINCE2 or _G.Auto_Hearts or _G.Auto_Material or _G.Auto_Boss or _G.auto_new_world or _G.Auto_Hallow_Scythe or _G.Auto600MasGun then
                for _, v in pairs(game.Players.LocalPlayer.Character:GetDescendants()) do
                    if v:IsA("BasePart") then
                        v.CanCollide = false    
                    end
                end
            end
        end)
    end)
end)

    spawn(function()
               game:GetService("RunService").RenderStepped:Connect(function()
                pcall(function()
                    if _G.Auto_Farm then
                        CheckLevel()
        if game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == false then    
            local args = {
                [1] = "StartQuest",
                [2] = QN,
                [3] = QC
            }
            
            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
        elseif game:GetService("Workspace").Enemies:FindFirstChild(Mon) then
                totarget(game:GetService("Workspace").Enemies[Mon].HumanoidRootPart.CFrame * CFrame.new(0,45,0))
            local CombatFramework = require(game:GetService("Players").LocalPlayer.PlayerScripts.CombatFramework)
            local Camera = require(game.ReplicatedStorage.Util.CameraShaker)
            Camera:Stop()
            getupvalues(CombatFramework)[2].activeController.hitboxMagnitude = 80
getupvalues(CombatFramework)[2]['activeController']:attack()    
    end
                end
                end)
               end)
            end)
            
            function bypass(x)
                if game.Players.LocalPlayer.Character.Humanoid.Health >= 1 then
                    wait(.1)
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = x
wait(.1)
game.Players.LocalPlayer.Character.Humanoid:ChangeState(15)
end
            end
            
            spawn(function()
               while wait(1) do
                pcall(function()
                    if _G.Semi_Tp then
                    CheckLevel()
                    local Distance2 = (CMON.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude
                    if Distance2 >= 3000 then
bypass(CMON)
                    end
                end
                end)
               end
            end)
            
            spawn(function()
               while wait(1) do
                pcall(function()
                    if _G.AUTO_EQUIP or _G.Auto_Dragon_Trident or _G.Auto_Elite_Hunter or _G.Auto_SeaBeast or _G.Auto_Bounty_MinkV4 or _G.Auto_Farm or _G.Fast_Farm or _G.Auto_Mastery or _G.AUTOBONE or _G.Auto_Material or _G.CAKEPRINCE or _G.CAKEPRINCE2 or _G.Auto_Hearts or _G.Auto_Boss or _G.auto_new_world or _G.Auto_Hallow_Scythe or _G.Auto_Rengoku then
                        for i,v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
                        if v.ToolTip == _G.SelectWeapon then
                        game.Players.LocalPlayer.Character.Humanoid:EquipTool(game:GetService("Players").LocalPlayer.Backpack:FindFirstChild(v.Name))
                        end
                        end
                end
                end)
               end
            end)
            
            spawn(function()
               game:GetService("RunService").RenderStepped:Connect(function()
                pcall(function()
                    if _G.Auto_Farm then
                        CheckLevel()
                        if not game:GetService("Workspace").Enemies:FindFirstChild(Mon) then
            totarget(CMON)
            end
            end
            end)
            end)
            end)
            
            spawn(function()
               while wait(.2) do
                pcall(function()
                    if _G.Auto_Farm then
                        CheckLevel()
                        if not string.find(game.Players.LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, TITLE) then
        local args = {
            [1] = "AbandonQuest"
        }
        
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
        end
            end
            end)
        end
            end)
    

            
            spawn(function()
               game:GetService("RunService").RenderStepped:Connect(function()
                pcall(function()
                    if _G.Auto_Buso then
                if not game.Players.LocalPlayer.Character:FindFirstChild("HasBuso") then
                local args = {
            	[1] = "Buso"
            	}
            	game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
            end
            end
            end)
            end)
            end)
        
spawn(function()
               while wait(.5) do
                pcall(function()
                    if _G.Fast_Farm then
                        if game:GetService("Players").LocalPlayer.Data.Level.Value > 60 and game:GetService("Players").LocalPlayer.Data.Level.Value < 80 then
local args = {
    [1] = "EnablePvp"
}

game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
end
                    end
                end)
end
end)


            spawn(function()
               game:GetService("RunService").RenderStepped:Connect(function()
                pcall(function()
                    if _G.Fast_Farm then
                        if game:GetService("Players").LocalPlayer.Data.Level.Value > 60 and game:GetService("Players").LocalPlayer.Data.Level.Value < 80 then
                            for i,v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
                                if v.ToolTip == _G.SelectWeapon then
                        game.Players.LocalPlayer.Character.Humanoid:EquipTool(game:GetService("Players").LocalPlayer.Backpack:FindFirstChild(v.Name))
                                end
                                end
                    end
                       end
                end)
end)
end)    




            spawn(function()
               game:GetService("RunService").RenderStepped:Connect(function()
                pcall(function()
                    if _G.Fast_Farm then
                        for i,v in pairs(game.Players:GetChildren()) do
                                                    if game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == false and game:GetService("Players").LocalPlayer.Data.Level.Value > 80 then
                            _G.Auto_Farm = true
                        elseif game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == false and game:GetService("Players").LocalPlayer.Data.Level.Value > 60 then
                            _G.Auto_Farm = false
                            wait(1)
local args = {
    [1] = "PlayerHunter"
}

game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
                        elseif game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == true and string.find(game.Players.LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, v.Name) then
    v.Character.HumanoidRootPart.CanCollide = false
	v.Character.HumanoidRootPart.Size = Vector3.new(120,120,120)
                    totarget(v.Character.HumanoidRootPart.CFrame * CFrame.new(0,0,7))
            local CombatFramework = require(game:GetService("Players").LocalPlayer.PlayerScripts.CombatFramework)
            local Camera = require(game.ReplicatedStorage.Util.CameraShaker)
            Camera:Stop()
            getupvalues(CombatFramework)[2].activeController.hitboxMagnitude = 80
getupvalues(CombatFramework)[2]['activeController']:attack()  
end
                        end
                end
                
        end)
            end)
            end)
            
            spawn(function()
               while wait(1) do
                pcall(function()
                    if _G.Fast_Farm then
if game:GetService("Players").LocalPlayer.Data.Level.Value > 60 and game:GetService("Players").LocalPlayer.Data.Level.Value < 80 then
for i,v in pairs(game.Players:GetChildren()) do
    if game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == true and string.find(game.Players.LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, v.Name) then
        if v.Data.Level.Value < 20 or v.Data.Level.Value > 150 then
local args = {
    [1] = "PlayerHunter"
}

game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
        end
    end
    end
    end
                       end
                end)
end
end)   
                
            spawn(function()
               game:GetService("RunService").RenderStepped:Connect(function()
                pcall(function()
                    if _G.Auto_Farm then
                        CheckLevel()    
            for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                                for i2,v2 in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                                    if v.Name == Mon and v2.Name == Mon then
                                        local Distance2 = (v.HumanoidRootPart.Position - v2.HumanoidRootPart.Position).Magnitude
                                        if Distance2 <= 150 then    
                                        v2.HumanoidRootPart.CFrame = v.HumanoidRootPart.CFrame
                                        v2.HumanoidRootPart.CanCollide = false
                                        v.Humanoid:ChangeState(11)
                                    v.Humanoid.JumpPower = 0
                                    v.Humanoid.WalkSpeed = 0
                                    if v.Humanoid:FindFirstChild("Animator") then
                                        v.Humanoid.Animator:Destroy()
                                    end
                                        sethiddenproperty(game.Players.LocalPlayer, "SimulationRadius", math.huge)
                                    end
                                end
                                end
        end
                        
                                end
                end)
               end)
            end)
            
            spawn(function()
               game:GetService("RunService").RenderStepped:Connect(function()
                pcall(function()
                    if _G.Auto_Farm then
                        CheckLevel()
                    if game:GetService("Workspace").Enemies[Mon].Humanoid.Health == 0 then
        game:GetService("Workspace").Enemies[Mon]:Destroy()
        end
        end
        end)
        end)
            end)
            
                       local plr = game.Players.LocalPlayer
    
    local CbFw = debug.getupvalues(require(plr.PlayerScripts.CombatFramework))
    local CbFw2 = CbFw[2]
    
    function GetCurrentBlade() 
    	local p13 = CbFw2.activeController
    	local ret = p13.blades[1]
    	if not ret then return end
    	while ret.Parent ~= game.Players.LocalPlayer.Character do ret=ret.Parent end
    	return ret
    end
    
    
    spawn(function()
    	while task.wait(0.1) do
    		if _G.FastAttackExtra then
    			pcall(function()
            		local AC = CbFw2.activeController
            		for i = 1,1 do 
            			local bladehit = require(game.ReplicatedStorage.CombatFramework.RigLib).getBladeHits(
            				plr.Character,
            				{plr.Character.HumanoidRootPart},
            				60
            			)
            			local cac = {}
            			local hash = {}
            			for k, v in pairs(bladehit) do
            				if v.Parent:FindFirstChild("HumanoidRootPart") and not hash[v.Parent] then
            					table.insert(cac, v.Parent.HumanoidRootPart)
            					hash[v.Parent] = true
            				end
            			end
            			bladehit = cac
            			if #bladehit > 0 then
            				local u8 = debug.getupvalue(AC.attack, 5)
            				local u9 = debug.getupvalue(AC.attack, 6)
            				local u7 = debug.getupvalue(AC.attack, 4)
            				local u10 = debug.getupvalue(AC.attack, 7)
            				local u12 = (u8 * 798405 + u7 * 727595) % u9
            				local u13 = u7 * 798405
            				(function()
            					u12 = (u12 * u9 + u13) % 1099511627776
            					u8 = math.floor(u12 / u9)
            					u7 = u12 - u8 * u9
            				end)()
            				u10 = u10 + 1
            				debug.setupvalue(AC.attack, 5, u8)
            				debug.setupvalue(AC.attack, 6, u9)
            				debug.setupvalue(AC.attack, 4, u7)
            				debug.setupvalue(AC.attack, 7, u10)
            				if plr.Character:FindFirstChildOfClass("Tool") and AC.blades and AC.blades[1] then 
            					game:GetService("ReplicatedStorage").RigControllerEvent:FireServer("weaponChange",tostring(GetCurrentBlade()))
            					game.ReplicatedStorage.Remotes.Validator:FireServer(math.floor(u12 / 1099511627776 * 16777215), u10)
            					game:GetService("ReplicatedStorage").RigControllerEvent:FireServer("hit", bladehit, i, "") 
            				end
            			end
            		end
            	end)
    		end
    	end
    end)
    
local SeraphFrame = debug.getupvalues(require(game:GetService("Players").LocalPlayer.PlayerScripts:WaitForChild("CombatFramework")))[2]
            local VirtualUser = game:GetService('VirtualUser')
            local RigControllerR = debug.getupvalues(require(game:GetService("Players").LocalPlayer.PlayerScripts.CombatFramework.RigController))[2]
            local Client = game:GetService("Players").LocalPlayer
            local DMG = require(Client.PlayerScripts.CombatFramework.Particle.Damage)
            
            function SeraphFuckWeapon() 
                local p13 = SeraphFrame.activeController
                local wea = p13.blades[1]
                if not wea then return end
                while wea.Parent~=game.Players.LocalPlayer.Character do wea=wea.Parent end
                return wea
            end
            
            function getHits(Size)
                local Hits = {}
                local Enemies = workspace.Enemies:GetChildren()
                local Characters = workspace.Characters:GetChildren()
                for i=1,#Enemies do local v = Enemies[i]
                    local Human = v:FindFirstChildOfClass("Humanoid")
                    if Human and Human.RootPart and Human.Health > 0 and game.Players.LocalPlayer:DistanceFromCharacter(Human.RootPart.Position) < Size+5 then
                        table.insert(Hits,Human.RootPart)
                    end
                end
                for i=1,#Characters do local v = Characters[i]
                    if v ~= game.Players.LocalPlayer.Character then
                        local Human = v:FindFirstChildOfClass("Humanoid")
                        if Human and Human.RootPart and Human.Health > 0 and game.Players.LocalPlayer:DistanceFromCharacter(Human.RootPart.Position) < Size+5 then
                            table.insert(Hits,Human.RootPart)
                        end
                    end
                end
                return Hits
            end
            
            function Boost()
                spawn(function()
                game:GetService("ReplicatedStorage").RigControllerEvent:FireServer("weaponChange",tostring(SeraphFuckWeapon()))
                end)
            end
            
            function Unboost()
                spawn(function()
                    game:GetService("ReplicatedStorage").RigControllerEvent:FireServer("unequipWeapon",tostring(SeraphFuckWeapon()))
                end)
            end

local cdnormal = 0
            local Animation = Instance.new("Animation")
            local CooldownFastAttack = 0
            Attack = function()
                local ac = SeraphFrame.activeController
                if ac and ac.equipped then
                    task.spawn(
                        function()
                        if tick() - cdnormal > 0.5 then
                            ac:attack()
                            cdnormal = tick()
                        else
                            -- Animation.AnimationId = ac.anims.basic[2]
                            -- ac.humanoid:LoadAnimation(Animation):Play(1, 1)
                            game:GetService("ReplicatedStorage").RigControllerEvent:FireServer("hit", getHits(120), 2, "")
                        end
                    end)
                end
            end
            
            b = tick()
            spawn(function()
                while wait(.2) do
                    if  _G.FastAttackNormalSpeed then
                        if b - tick() > 0.75 then
                            wait(.2)
                            b = tick()
                        end
                        pcall(function()
                            for i, v in pairs(game.Workspace.Enemies:GetChildren()) do
                                if v.Humanoid.Health > 0 then
                                    if (v.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 60.9 then
                                        Attack()
                                        wait(.2)
                                        Boost()
                                    end
                                end
                            end
                        end)
                    end
                end
            end)
            
            k = tick()
            spawn(function()
                while wait(0.059) do
                    if  _G.FastAttackNormalSpeed then
                        if k - tick() > 0.75 then
                            wait(0)
                            k = tick()
                        end
                        pcall(function()
                            for i, v in pairs(game.Workspace.Enemies:GetChildren()) do
                                if v.Humanoid.Health > 0 then
                                    if (v.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 60.9 then
                                    wait(.2)
                                    Unboost()
                                    end
                                end
                            end
                        end)
                    end
                end
            end)
            
            tjw1 = true
            task.spawn(
                function()
                    local a = game.Players.LocalPlayer
                    local b = require(a.PlayerScripts.CombatFramework.Particle)
                    local c = require(game:GetService("ReplicatedStorage").CombatFramework.RigLib)
                    if not shared.orl then
                        shared.orl = c.wrapAttackAnimationAsync
                    end
                    if not shared.cpc then
                        shared.cpc = b.play
                    end
                    if tjw1 then
                        pcall(
                            function()
                                c.wrapAttackAnimationAsync = function(d, e, f, g, h)
                                    local i = c.getBladeHits(e, f, g)
                                    if i then
                                        b.play = function()
                                        end
                                        d:Play(1.25, 1.25, 1.25)
                                        h(i)
                                        b.play = shared.cpc
                                        wait(.5)
                                        d:Stop()
                                    end
                                end
                            end
                        )
                    end
                end
            )
            
            
            

            
            local Client = game.Players.LocalPlayer
            local STOP = require(Client.PlayerScripts.CombatFramework.Particle)
            local STOPRL = require(game:GetService("ReplicatedStorage").CombatFramework.RigLib)
            task.spawn(function()
                pcall(function()
                    if not shared.orl then
                        shared.orl = STOPRL.wrapAttackAnimationAsync
                    end
                        if not shared.cpc then
                            shared.cpc = STOP.play 
                        end
                    spawn(function()
                        game:GetService("RunService").Stepped:Connect(function()
                            STOPRL.wrapAttackAnimationAsync = function(a,b,c,d,func)
                                local Hits = STOPRL.getBladeHits(b,c,d)
                                if Hits then
                                    if  _G.FastAttackNormalSpeed then
                                        STOP.play = function() end
                                        a:Play(2.1,2.1,2.1)
                                        func(Hits)
                                        STOP.play = shared.cpc
                                        wait(a.length * 0.5)
                                        a:Stop()
                                    else
                                        func(Hits)
                                        STOP.play = shared.cpc
                                        wait(a.length * 0.5)
                                        a:Stop()
                                    end
                                end
                            end
                        end)
                    end)
                end)
            end)

spawn(function()
               game:GetService("RunService").RenderStepped:Connect(function()
                pcall(function()
                    if _G.Auto_Buso then
                if not game.Players.LocalPlayer.Character:FindFirstChild("HasBuso") then
                local args = {
            	[1] = "Buso"
            	}
            	game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
            end
            end
            end)
            end)
            end)

if _G.Farm_Mode == nil then _G.Farm_Mode = "Normal" end
spawn(function()
	while wait() do
		if _G.Auto_Farm_Bone then
			pcall(function()
				if game:GetService("Workspace").Enemies:FindFirstChild("Reborn Skeleton [Lv. 1975]") or game:GetService("Workspace").Enemies:FindFirstChild("Living Zombie [Lv. 2000]") or game:GetService("Workspace").Enemies:FindFirstChild("Domenic Soul [Lv. 2025]") or game:GetService("Workspace").Enemies:FindFirstChild("Posessed Mummy [Lv. 2050]") then
					for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
						if v.Name == "Reborn Skeleton [Lv. 1975]" or v.Name == "Living Zombie [Lv. 2000]" or v.Name == "Demonic Soul [Lv. 2025]" or v.Name == "Posessed Mummy [Lv. 2050]" then
							if v.Humanoid.Health > 0 then
								repeat wait()
									StartMagnetBoneMon = true
									v.HumanoidRootPart.CanCollide = false
									v.HumanoidRootPart.Size = Vector3.new(60, 60, 60)
									PosMonBone = v.HumanoidRootPart.CFrame
									getgenv().ToTargets(v.HumanoidRootPart.CFrame * CFrame.new(0,40,0))
									game:GetService'VirtualUser':CaptureController()
									game:GetService'VirtualUser':Button1Down(Vector2.new(1280, 672))
								until _G.Auto_Farm_Bone == false or not v.Parent or v.Humanoid.Health <= 0
							end
						end
					end
				else
					StartMagnetBoneMon = false
					for i,v in pairs(game:GetService("ReplicatedStorage"):GetChildren()) do 
						if v.Name == "Reborn Skeleton [Lv. 1975]" then
							getgenv().ToTargets(v.HumanoidRootPart.CFrame * CFrame.new(0,40,0))
						elseif v.Name == "Living Zombie [Lv. 2000]" then
							getgenv().ToTargets(v.HumanoidRootPart.CFrame * CFrame.new(0,40,0))
						elseif v.Name == "Demonic Soul [Lv. 2025]" then
							getgenv().ToTargets(v.HumanoidRootPart.CFrame * CFrame.new(0,40,0))
						elseif v.Name == "Posessed Mummy [Lv. 2050]" then
							getgenv().ToTargets(v.HumanoidRootPart.CFrame * CFrame.new(0,40,0))
						end
					end
					getgenv().ToTargets(CFrame.new(-9515.1181640625, 163.98355102539062, 5787.2041015625))
				end
			end)
		end
	end
end)
spawn(function()
    pcall(function()
        while wait()do
            if _G.Auto_Random_Bone then
                local args = {
                    [1] = "Bones",
                    [2] = "Buy",
                    [3] = 1,
                    [4] = 1
                }
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
            end
        end
    end)
end)
spawn(function()
    while wait() do
        if _G.Auto_Elite_Hunter then
            pcall(function()
                if game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == true then
                    if string.find(game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text,"Diablo") or string.find(game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text,"Deandre") or string.find(game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text,"Urban") then
                        if game:GetService("Workspace").Enemies:FindFirstChild("Diablo [Lv. 1750]") or game:GetService("Workspace").Enemies:FindFirstChild("Deandre [Lv. 1750]") or game:GetService("Workspace").Enemies:FindFirstChild("Urban [Lv. 1750]") then
                            for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                                if v.Name == "Diablo [Lv. 1750]" or v.Name == "Deandre [Lv. 1750]" or v.Name == "Urban [Lv. 1750]" then
                                    if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
                                        repeat wait()
                                            v.HumanoidRootPart.CanCollide = false
                                            v.Humanoid.WalkSpeed = 0
                                            v.HumanoidRootPart.Size = Vector3.new(50,50,50)
                                            getgenv().ToTargets(v.HumanoidRootPart.CFrame * CFrame.new(0,40,0))
                                            game:GetService("VirtualUser"):CaptureController()
                                            game:GetService("VirtualUser"):Button1Down(Vector2.new(1280,672))
                                            sethiddenproperty(game:GetService("Players").LocalPlayer,"SimulationRadius",math.huge)
                                        until _G.Auto_Elite_Hunter == false or v.Humanoid.Health <= 0 or not v.Parent
                                    end
                                end
                            end
                        else
                            if game:GetService("ReplicatedStorage"):FindFirstChild("Diablo [Lv. 1750]") then
                                getgenv().ToTarget(game:GetService("ReplicatedStorage"):FindFirstChild("Diablo [Lv. 1750]").HumanoidRootPart.CFrame * CFrame.new(0,40,0))
                            elseif game:GetService("ReplicatedStorage"):FindFirstChild("Deandre [Lv. 1750]") then
                                getgenv().ToTarget(game:GetService("ReplicatedStorage"):FindFirstChild("Deandre [Lv. 1750]").HumanoidRootPart.CFrame * CFrame.new(0,40,0))
                            elseif game:GetService("ReplicatedStorage"):FindFirstChild("Urban [Lv. 1750]") then
                                getgenv().ToTarget(game:GetService("ReplicatedStorage"):FindFirstChild("Urban [Lv. 1750]").HumanoidRootPart.CFrame * CFrame.new(0,40,0))
                            end
                        end                    
                    end
                else
                    if _G.Auto_Elite_Hunter_Hop and game:GetService("ReplicatedStorage").Remotes["CommF_"]:InvokeServer("EliteHunter") == "I don't have anything for you right now. Come back later." then
                        Hop()
                    else
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("EliteHunter")
                    end
                end
            end)
        end
    end
end)
spawn(function()
	pcall(function()
		while wait(.1) do
			if _G.SetSpawn and game.Players.LocalPlayer.Character.Humanoid.Health > 0 then
				game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("SetSpawnPoint")
			end
		end
	end)
end)
spawn(function()
	while task.wait() do
		pcall(function()
            if _G.Haki then
			if not game.Players.LocalPlayer.Character:FindFirstChild("HasBuso") then
				game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Buso")
            end
			end
		end)
	end
end)
function CheckBossQuest()
    if _G.Select_Boss == "Saber Expert [Lv. 200] [Boss]" then
        MsBoss = "Saber Expert [Lv. 200] [Boss]"
        NameBoss = "Saber Expert"
        CFrameBoss = CFrame.new(-1458.89502, 29.8870335, -50.633564, 0.858821094, 1.13848939e-08, 0.512275636, -4.85649254e-09, 1, -1.40823326e-08, -0.512275636, 9.6063415e-09, 0.858821094)
		if _G.Select_Boss and (CFrameBoss.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 3000 then
			game.Players.LocalPlayer.Character.Head:Destroy()
			game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrameBoss
			wait(1)
			game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("SetSpawnPoint")
		end
    elseif _G.Select_Boss == "The Saw [Lv. 100] [Boss]" then
        MsBoss = "The Saw [Lv. 100] [Boss]"
        NameBoss = "The Saw"
        CFrameBoss = CFrame.new(-683.519897, 13.8534927, 1610.87854, -0.290192783, 6.88365773e-08, 0.956968188, 6.98413629e-08, 1, -5.07531119e-08, -0.956968188, 5.21077759e-08, -0.290192783)
		if _G.Select_Boss and (CFrameBoss.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 3000 then
			game.Players.LocalPlayer.Character.Head:Destroy()
			game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrameBoss
			wait(1)
			game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("SetSpawnPoint")
		end
    elseif _G.Select_Boss == "Greybeard [Lv. 750] [Raid Boss]" then
        MsBoss = "Greybeard [Lv. 750] [Raid Boss]"
        NameBoss = "Greybeard"
        CFrameBoss = CFrame.new(-4955.72949, 80.8163834, 4305.82666, -0.433646321, -1.03394289e-08, 0.901083171, -3.0443168e-08, 1, -3.17633075e-09, -0.901083171, -2.88092288e-08, -0.433646321)
		if _G.Select_Boss and (CFrameBoss.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 3000 then
			game.Players.LocalPlayer.Character.Head:Destroy()
			game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrameBoss
			wait(1)
			game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("SetSpawnPoint")
		end
    elseif _G.Select_Boss == "The Gorilla King [Lv. 25] [Boss]" then
        MsBoss = "The Gorilla King [Lv. 25] [Boss]"
        NameBoss = "The Gorilla King"
        NameQuestBoss = "JungleQuest"
        LevelQuestBoss = 3
        CFrameQuestBoss = CFrame.new(-1604.12012, 36.8521118, 154.23732, 0.0648873374, -4.70858913e-06, -0.997892559, 1.41431883e-07, 1, -4.70933674e-06, 0.997892559, 1.64442184e-07, 0.0648873374)
        CFrameBoss = CFrame.new(-1223.52808, 6.27936459, -502.292664, 0.310949147, -5.66602516e-08, 0.950426519, -3.37275488e-08, 1, 7.06501808e-08, -0.950426519, -5.40241736e-08, 0.310949147)
		if _G.Select_Boss and (CFrameBoss.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 3000 then
			game.Players.LocalPlayer.Character.Head:Destroy()
			game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrameBoss
			wait(1)
			game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("SetSpawnPoint")
		end
    elseif _G.Select_Boss == "Bobby [Lv. 55] [Boss]" then
        MsBoss = "Bobby [Lv. 55] [Boss]"
        NameBoss = "Bobby"
        NameQuestBoss = "BuggyQuest1"
        LevelQuestBoss = 3
        CFrameQuestBoss = CFrame.new(-1139.59717, 4.75205183, 3825.16211, -0.959730506, -7.5857054e-09, 0.280922383, -4.06310328e-08, 1, -1.11807175e-07, -0.280922383, -1.18718916e-07, -0.959730506)
        CFrameBoss = CFrame.new(-1147.65173, 32.5966301, 4156.02588, 0.956680477, -1.77109952e-10, -0.29113996, 5.16530874e-10, 1, 1.08897802e-09, 0.29113996, -1.19218679e-09, 0.956680477)
    	if _G.Select_Boss and (CFrameBoss.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 3000 then
			game.Players.LocalPlayer.Character.Head:Destroy()
			game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrameBoss
			wait(1)
			game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("SetSpawnPoint")
		end
	elseif _G.Select_Boss == "Yeti [Lv. 110] [Boss]" then
        MsBoss = "Yeti [Lv. 110] [Boss]"
        NameBoss = "Yeti"
        NameQuestBoss = "SnowQuest"
        LevelQuestBoss = 3
        CFrameQuestBoss = CFrame.new(1384.90247, 87.3078308, -1296.6825, 0.280209213, 2.72035177e-08, -0.959938943, -6.75690828e-08, 1, 8.6151708e-09, 0.959938943, 6.24481444e-08, 0.280209213)
        CFrameBoss = CFrame.new(1221.7356, 138.046906, -1488.84082, 0.349343032, -9.49245944e-08, 0.936994851, 6.29478194e-08, 1, 7.7838429e-08, -0.936994851, 3.17894653e-08, 0.349343032)
    	if _G.Select_Boss and (CFrameBoss.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 3000 then
			game.Players.LocalPlayer.Character.Head:Destroy()
			game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrameBoss
			wait(1)
			game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("SetSpawnPoint")
		end
	elseif _G.Select_Boss == "Mob Leader [Lv. 120] [Boss]" then
        MsBoss = "Mob Leader [Lv. 120] [Boss]"
        NameBoss = "Mob Leader"
        CFrameBoss = CFrame.new(-2848.59399, 7.4272871, 5342.44043, -0.928248107, -8.7248246e-08, 0.371961564, -7.61816636e-08, 1, 4.44474857e-08, -0.371961564, 1.29216433e-08, -0.92824)
    	if _G.Select_Boss and (CFrameBoss.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 3000 then
			game.Players.LocalPlayer.Character.Head:Destroy()
			game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrameBoss
			wait(1)
			game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("SetSpawnPoint")
		end
	elseif _G.Select_Boss == "Vice Admiral [Lv. 130] [Boss]" then
        MsBoss = "Vice Admiral [Lv. 130] [Boss]"
        NameBoss = "Vice Admiral"
        NameQuestBoss = "MarineQuest2"
        LevelQuestBoss = 2
        CFrameQuestBoss = CFrame.new(-5035.42285, 28.6520386, 4324.50293, -0.0611100644, -8.08395768e-08, 0.998130739, -1.57416586e-08, 1, 8.00271849e-08, -0.998130739, -1.08217701e-08, -0.0611100644)
        CFrameBoss = CFrame.new(-5078.45898, 99.6520691, 4402.1665, -0.555574954, -9.88630566e-11, 0.831466436, -6.35508286e-08, 1, -4.23449258e-08, -0.831466436, -7.63661632e-08, -0.555574954)
    	if _G.Select_Boss and (CFrameBoss.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 3000 then
			game.Players.LocalPlayer.Character.Head:Destroy()
			game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrameBoss
			wait(1)
			game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("SetSpawnPoint")
		end
	elseif _G.Select_Boss == "Warden [Lv. 175] [Boss]" then
        MsBoss = "Warden [Lv. 175] [Boss]"
        NameBoss = "Warden"
        NameQuestBoss = "ImpelQuest"
        LevelQuestBoss = 1
        CFrameQuestBoss = CFrame.new(4851.35059, 5.68744135, 743.251282, -0.538484037, -6.68303741e-08, -0.842635691, 1.38001752e-08, 1, -8.81300792e-08, 0.842635691, -5.90851599e-08, -0.538484037)
        CFrameBoss = CFrame.new(5232.5625, 5.26856995, 747.506897, 0.943829298, -4.5439414e-08, 0.330433697, 3.47818627e-08, 1, 3.81658154e-08, -0.330433697, -2.45289105e-08, 0.943829298)
    	if _G.Select_Boss and (CFrameBoss.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 3000 then
			game.Players.LocalPlayer.Character.Head:Destroy()
			game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrameBoss
			wait(1)
			game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("SetSpawnPoint")
		end
	elseif _G.Select_Boss == "Chief Warden [Lv. 200] [Boss]" then
        MsBoss = "Chief Warden [Lv. 200] [Boss]"
        NameBoss = "Chief Warden"
        NameQuestBoss = "ImpelQuest"
        LevelQuestBoss = 2
        CFrameQuestBoss = CFrame.new(4851.35059, 5.68744135, 743.251282, -0.538484037, -6.68303741e-08, -0.842635691, 1.38001752e-08, 1, -8.81300792e-08, 0.842635691, -5.90851599e-08, -0.538484037)
        CFrameBoss = CFrame.new(5232.5625, 5.26856995, 747.506897, 0.943829298, -4.5439414e-08, 0.330433697, 3.47818627e-08, 1, 3.81658154e-08, -0.330433697, -2.45289105e-08, 0.943829298)
    	if _G.Select_Boss and (CFrameBoss.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 3000 then
			game.Players.LocalPlayer.Character.Head:Destroy()
			game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrameBoss
			wait(1)
			game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("SetSpawnPoint")
		end
	elseif _G.Select_Boss == "Swan [Lv. 225] [Boss]" then
        MsBoss = "Swan [Lv. 225] [Boss]"
        NameBoss = "Swan"
        NameQuestBoss = "ImpelQuest"
        LevelQuestBoss = 3
        CFrameQuestBoss = CFrame.new(4851.35059, 5.68744135, 743.251282, -0.538484037, -6.68303741e-08, -0.842635691, 1.38001752e-08, 1, -8.81300792e-08, 0.842635691, -5.90851599e-08, -0.538484037)
        CFrameBoss = CFrame.new(5232.5625, 5.26856995, 747.506897, 0.943829298, -4.5439414e-08, 0.330433697, 3.47818627e-08, 1, 3.81658154e-08, -0.330433697, -2.45289105e-08, 0.943829298)
    	if _G.Select_Boss and (CFrameBoss.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 3000 then
			game.Players.LocalPlayer.Character.Head:Destroy()
			game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrameBoss
			wait(1)
			game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("SetSpawnPoint")
		end
	elseif _G.Select_Boss == "Magma Admiral [Lv. 350] [Boss]" then
        MsBoss = "Magma Admiral [Lv. 350] [Boss]"
        NameBoss = "Magma Admiral"
        NameQuestBoss = "MagmaQuest"
        LevelQuestBoss = 3
        CFrameQuestBoss = CFrame.new(-5317.07666, 12.2721891, 8517.41699, 0.51175487, -2.65508806e-08, -0.859131515, -3.91131572e-08, 1, -5.42026761e-08, 0.859131515, 6.13418294e-08, 0.51175487)
        CFrameBoss = CFrame.new(-5530.12646, 22.8769703, 8859.91309, 0.857838571, 2.23414389e-08, 0.513919294, 1.53689133e-08, 1, -6.91265853e-08, -0.513919294, 6.71978384e-08, 0.857838571)
    	if _G.Select_Boss and (CFrameBoss.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 3000 then
			game.Players.LocalPlayer.Character.Head:Destroy()
			game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrameBoss
			wait(1)
			game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("SetSpawnPoint")
		end
	elseif _G.Select_Boss == "Fishman Lord [Lv. 425] [Boss]" then
        MsBoss = "Fishman Lord [Lv. 425] [Boss]"
        NameBoss = "Fishman Lord"
        NameQuestBoss = "FishmanQuest"
        LevelQuestBoss = 3
        CFrameQuestBoss = CFrame.new(61123.0859, 18.5066795, 1570.18018, 0.927145958, 1.0624845e-07, 0.374700129, -6.98219367e-08, 1, -1.10790765e-07, -0.374700129, 7.65569368e-08, 0.927145958)
        CFrameBoss = CFrame.new(61351.7773, 31.0306778, 1113.31409, 0.999974668, 0, -0.00714713801, 0, 1.00000012, 0, 0.00714714266, 0, 0.999974549)
    	if _G.Select_Boss and (CFrameBoss.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 3000 then
			game.Players.LocalPlayer.Character.Head:Destroy()
			game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrameBoss
			wait(1)
			game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("SetSpawnPoint")
		end
	elseif _G.Select_Boss == "Wysper [Lv. 500] [Boss]" then
        MsBoss = "Wysper [Lv. 500] [Boss]"
        NameBoss = "Wysper"
        NameQuestBoss = "SkyExp1Quest"
        LevelQuestBoss = 3
        CFrameQuestBoss = CFrame.new(-7862.94629, 5545.52832, -379.833954, 0.462944925, 1.45838088e-08, -0.886386991, 1.0534996e-08, 1, 2.19553424e-08, 0.886386991, -1.95022007e-08, 0.462944925)
        CFrameBoss = CFrame.new(-7925.48389, 5550.76074, -636.178345, 0.716468513, -1.22915289e-09, 0.697619379, 3.37381434e-09, 1, -1.70304748e-09, -0.697619379, 3.57381835e-09, 0.716468513)
    	if _G.Select_Boss and (CFrameBoss.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 3000 then
			game.Players.LocalPlayer.Character.Head:Destroy()
			game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrameBoss
			wait(1)
			game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("SetSpawnPoint")
		end
	elseif _G.Select_Boss == "Thunder God [Lv. 575] [Boss]" then
        MsBoss = "Thunder God [Lv. 575] [Boss]"
        NameBoss = "Thunder God"
        NameQuestBoss = "SkyExp2Quest"
        LevelQuestBoss = 3
        CFrameQuestBoss = CFrame.new(-7902.78613, 5635.99902, -1411.98706, -0.0361216255, -1.16895912e-07, 0.999347389, 1.44533963e-09, 1, 1.17024491e-07, -0.999347389, 5.6715117e-09, -0.0361216255)
        CFrameBoss = CFrame.new(-7917.53613, 5616.61377, -2277.78564, 0.965189934, 4.80563429e-08, -0.261550069, -6.73089886e-08, 1, -6.46515304e-08, 0.261550069, 8.00056768e-08, 0.965189934)
    	if _G.Select_Boss and (CFrameBoss.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 3000 then
			game.Players.LocalPlayer.Character.Head:Destroy()
			game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrameBoss
			wait(1)
			game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("SetSpawnPoint")
		end
	elseif _G.Select_Boss == "Cyborg [Lv. 675] [Boss]" then
        MsBoss = "Cyborg [Lv. 675] [Boss]"
        NameBoss = "Cyborg"
        NameQuestBoss = "FountainQuest"
        LevelQuestBoss = 3
        CFrameQuestBoss = CFrame.new(5253.54834, 38.5361786, 4050.45166, -0.0112687312, -9.93677887e-08, -0.999936521, 2.55291371e-10, 1, -9.93769547e-08, 0.999936521, -1.37512213e-09, -0.0112687312)
        CFrameBoss = CFrame.new(6041.82813, 52.7112198, 3907.45142, -0.563162148, 1.73805248e-09, -0.826346457, -5.94632716e-08, 1, 4.26280238e-08, 0.826346457, 7.31437524e-08, -0.563162148)
    -- New World
    elseif _G.Select_Boss == "Diamond [Lv. 750] [Boss]" then
        MsBoss = "Diamond [Lv. 750] [Boss]"
        NameBoss = "Diamond"
        NameQuestBoss = "Area1Quest"
        LevelQuestBoss = 3
        CFrameQuestBoss = CFrame.new(-424.080078, 73.0055847, 1836.91589, 0.253544956, -1.42165932e-08, 0.967323601, -6.00147771e-08, 1, 3.04272909e-08, -0.967323601, -6.5768397e-08, 0.253544956)
        CFrameBoss = CFrame.new(-1736.26587, 198.627731, -236.412857, -0.997808516, 0, -0.0661673471, 0, 1, 0, 0.0661673471, 0, -0.997808516)
		if _G.Select_Boss and (CFrameBoss.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 3000 then
			game.Players.LocalPlayer.Character.Head:Destroy()
			game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrameBoss
			wait(1)
			game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("SetSpawnPoint")
		end
	elseif _G.Select_Boss == "Jeremy [Lv. 850] [Boss]" then
        MsBoss = "Jeremy [Lv. 850] [Boss]"
        NameBoss = "Jeremy"
        NameQuestBoss = "Area2Quest"
        LevelQuestBoss = 3
        CFrameQuestBoss = CFrame.new(632.698608, 73.1055908, 918.666321, -0.0319722369, 8.96074881e-10, -0.999488771, 1.36326533e-10, 1, 8.92172336e-10, 0.999488771, -1.07732087e-10, -0.0319722369)
        CFrameBoss = CFrame.new(2203.76953, 448.966034, 752.731079, -0.0217453763, 0, -0.999763548, 0, 1, 0, 0.999763548, 0, -0.0217453763)
		if _G.Select_Boss and (CFrameBoss.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 3000 then
			game.Players.LocalPlayer.Character.Head:Destroy()
			game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrameBoss
			wait(1)
			game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("SetSpawnPoint")
		end
	elseif _G.Select_Boss == "Fajita [Lv. 925] [Boss]" then
        MsBoss = "Fajita [Lv. 925] [Boss]"
        NameBoss = "Fajita"
        NameQuestBoss = "MarineQuest3"
        LevelQuestBoss = 3
        CFrameQuestBoss = CFrame.new(-2442.65015, 73.0511475, -3219.11523, -0.873540044, 4.2329841e-08, -0.486752301, 5.64383384e-08, 1, -1.43220786e-08, 0.486752301, -3.99823996e-08, -0.873540044)
        CFrameBoss = CFrame.new(-2297.40332, 115.449463, -3946.53833, 0.961227536, -1.46645796e-09, -0.275756449, -2.3212845e-09, 1, -1.34094433e-08, 0.275756449, 1.35296352e-08, 0.961227536)
		if _G.Select_Boss and (CFrameBoss.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 3000 then
			game.Players.LocalPlayer.Character.Head:Destroy()
			game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrameBoss
			wait(1)
			game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("SetSpawnPoint")
		end
	elseif _G.Select_Boss == "Don Swan [Lv. 1000] [Boss]" then
        MsBoss = "Don Swan [Lv. 1000] [Boss]"
        NameBoss = "Don Swan"
        CFrameBoss = CFrame.new(2288.802, 15.1870775, 863.034607, 0.99974072, -8.41247214e-08, -0.0227668174, 8.4774733e-08, 1, 2.75850098e-08, 0.0227668174, -2.95079072e-08, 0.99974072)
		if _G.Select_Boss and (CFrameBoss.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 3000 then
			game.Players.LocalPlayer.Character.Head:Destroy()
			game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrameBoss
			wait(1)
			game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("SetSpawnPoint")
		end
	elseif _G.Select_Boss == "Smoke Admiral [Lv. 1150] [Boss]" then
        MsBoss = "Smoke Admiral [Lv. 1150] [Boss]"
        NameBoss = "Smoke Admiral"
        NameQuestBoss = "IceSideQuest"
        LevelQuestBoss = 3
        CFrameQuestBoss = CFrame.new(-6059.96191, 15.9868021, -4904.7373, -0.444992423, -3.0874483e-09, 0.895534337, -3.64098796e-08, 1, -1.4644522e-08, -0.895534337, -3.91229982e-08, -0.444992423)
        CFrameBoss = CFrame.new(-5115.72754, 23.7664986, -5338.2207, 0.251453817, 1.48345061e-08, -0.967869282, 4.02796978e-08, 1, 2.57916977e-08, 0.967869282, -4.54708946e-08, 0.251453817)
		if _G.Select_Boss and (CFrameBoss.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 3000 then
			game.Players.LocalPlayer.Character.Head:Destroy()
			game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrameBoss
			wait(1)
			game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("SetSpawnPoint")
		end
	elseif _G.Select_Boss == "Cursed Captain [Lv. 1325] [Raid Boss]" then
        MsBoss = "Cursed Captain [Lv. 1325] [Raid Boss]"
        NameBoss = "Cursed Captain"
        CFrameBoss = CFrame.new(916.928589, 181.092773, 33422, -0.999505103, 9.26310495e-09, 0.0314563364, 8.42916226e-09, 1, -2.6643713e-08, -0.0314563364, -2.63653774e-08, -0.999505103)
		if _G.Select_Boss and (CFrameBoss.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 3000 then
			game.Players.LocalPlayer.Character.Head:Destroy()
			game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrameBoss
			wait(1)
			game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("SetSpawnPoint")
		end
	elseif _G.Select_Boss == "Darkbeard [Lv. 1000] [Raid Boss]" then
        MsBoss = "Darkbeard [Lv. 1000] [Raid Boss]"
        NameBoss = "Darkbeard"
        CFrameBoss = CFrame.new(3876.00366, 24.6882591, -3820.21777, -0.976951957, 4.97356325e-08, 0.213458836, 4.57335361e-08, 1, -2.36868622e-08, -0.213458836, -1.33787044e-08, -0.976951957)
		if _G.Select_Boss and (CFrameBoss.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 3000 then
			game.Players.LocalPlayer.Character.Head:Destroy()
			game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrameBoss
			wait(1)
			game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("SetSpawnPoint")
		end
	elseif _G.Select_Boss == "Order [Lv. 1250] [Raid Boss]" then
        MsBoss = "Order [Lv. 1250] [Raid Boss]"
        NameBoss = "Order"
        CFrameBoss = CFrame.new(-6221.15039, 16.2351036, -5045.23584, -0.380726993, 7.41463495e-08, 0.924687505, 5.85604774e-08, 1, -5.60738549e-08, -0.924687505, 3.28013137e-08, -0.380726993)
		if _G.Select_Boss and (CFrameBoss.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 3000 then
			game.Players.LocalPlayer.Character.Head:Destroy()
			game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrameBoss
			wait(1)
			game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("SetSpawnPoint")
		end
	elseif _G.Select_Boss == "Awakened Ice Admiral [Lv. 1400] [Boss]" then
        MsBoss = "Awakened Ice Admiral [Lv. 1400] [Boss]"
        NameBoss = "Awakened Ice Admiral"
        NameQuestBoss = "FrostQuest"
        LevelQuestBoss = 3
        CFrameQuestBoss = CFrame.new(5669.33203, 28.2118053, -6481.55908, 0.921275556, -1.25320829e-08, 0.388910472, 4.72230788e-08, 1, -7.96414241e-08, -0.388910472, 9.17372489e-08, 0.921275556)
        CFrameBoss = CFrame.new(6407.33936, 340.223785, -6892.521, 0.49051559, -5.25310213e-08, -0.871432424, -2.76146022e-08, 1, -7.58250565e-08, 0.871432424, 6.12576301e-08, 0.49051559)
		if _G.Select_Boss and (CFrameBoss.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 3000 then
			game.Players.LocalPlayer.Character.Head:Destroy()
			game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrameBoss
			wait(1)
			game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("SetSpawnPoint")
		end
	elseif _G.Select_Boss == "Tide Keeper [Lv. 1475] [Boss]" then
        MsBoss = "Tide Keeper [Lv. 1475] [Boss]"
         NameBoss = "Tide Keeper"
        NameQuestBoss = "ForgottenQuest"             
        LevelQuestBoss = 3
        CFrameQuestBoss = CFrame.new(-3053.89648, 236.881363, -10148.2324, -0.985987961, -3.58504737e-09, 0.16681771, -3.07832915e-09, 1, 3.29612559e-09, -0.16681771, 2.73641976e-09, -0.985987961)
        CFrameBoss = CFrame.new(-3570.18652, 123.328949, -11555.9072, 0.465199202, -1.3857326e-08, 0.885206044, 4.0332897e-09, 1, 1.35347511e-08, -0.885206044, -2.72606271e-09, 0.465199202)
		if _G.Select_Boss and (CFrameBoss.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 3000 then
			game.Players.LocalPlayer.Character.Head:Destroy()
			game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrameBoss
			wait(1)
			game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("SetSpawnPoint")
		end
		-- Thire World
    elseif _G.Select_Boss == "Stone [Lv. 1550] [Boss]" then
        MsBoss = "Stone [Lv. 1550] [Boss]"
        NameBoss = "Stone"
        NameQuestBoss = "PiratePortQuest"             
        LevelQuestBoss = 3
        CFrameQuestBoss = CFrame.new(-290, 44, 5577)
        CFrameBoss = CFrame.new(-1085, 40, 6779)
		if _G.Select_Boss and (CFrameBoss.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 3000 then
			game.Players.LocalPlayer.Character.Head:Destroy()
			game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrameBoss
			wait(1)
			game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("SetSpawnPoint")
		end
    elseif _G.Select_Boss == "Island Empress [Lv. 1675] [Boss]" then
        MsBoss = "Island Empress [Lv. 1675] [Boss]"
         NameBoss = "Island Empress"
        NameQuestBoss = "AmazonQuest2"             
        LevelQuestBoss = 3
        CFrameQuestBoss = CFrame.new(5443, 602, 752)
        CFrameBoss = CFrame.new(5659, 602, 244)
		if _G.Select_Boss and (CFrameBoss.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 3000 then
			game.Players.LocalPlayer.Character.Head:Destroy()
			game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrameBoss
			wait(1)
			game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("SetSpawnPoint")
		end
    elseif _G.Select_Boss == "Kilo Admiral [Lv. 1750] [Boss]" then
        MsBoss = "Kilo Admiral [Lv. 1750] [Boss]"
        NameBoss = "Kilo Admiral"
        NameQuestBoss = "MarineTreeIsland"             
        LevelQuestBoss = 3
        CFrameQuestBoss = CFrame.new(2178, 29, -6737)
        CFrameBoss =CFrame.new(2846, 433, -7100)
		if _G.Select_Boss and (CFrameBoss.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 3000 then
			game.Players.LocalPlayer.Character.Head:Destroy()
			game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrameBoss
			wait(1)
			game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("SetSpawnPoint")
		end
    elseif _G.Select_Boss == "Captain Elephant [Lv. 1875] [Boss]" then
        MsBoss = "Captain Elephant [Lv. 1875] [Boss]"
        NameBoss = "Captain Elephant"
        NameQuestBoss = "DeepForestIsland"             
        LevelQuestBoss = 3
        CFrameQuestBoss = CFrame.new(-13232, 333, -7631)
        CFrameBoss = CFrame.new(-13221, 325, -8405)
		if _G.Select_Boss and (CFrameBoss.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 3000 then
			game.Players.LocalPlayer.Character.Head:Destroy()
			game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrameBoss
			wait(1)
			game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("SetSpawnPoint")
		end
    elseif _G.Select_Boss == "Beautiful Pirate [Lv. 1950] [Boss]" then
        MsBoss = "Beautiful Pirate [Lv. 1950] [Boss]"
        NameBoss = "Beautiful Pirate"
        NameQuestBoss = "DeepForestIsland2"             
        LevelQuestBoss = 3
        CFrameQuestBoss = CFrame.new(-12686, 391, -9902)
        CFrameBoss = CFrame.new(5182, 23, -20)
		if _G.Select_Boss and (CFrameBoss.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 3000 then
			game.Players.LocalPlayer.Character.Head:Destroy()
			game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrameBoss
			wait(1)
			game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("SetSpawnPoint")
		end
    elseif _G.Select_Boss == "Cake Queen [Lv. 2175] [Boss]" then
        MsBoss = "Cake Queen [Lv. 2175] [Boss]"
        NameBoss = "Cake Queen"
        NameQuestBoss = "IceCreamIslandQuest"             
        LevelQuestBoss = 3
        CFrameQuestBoss = CFrame.new(-716, 382, -11010)
        CFrameBoss = CFrame.new(-821, 66, -10965)
		if _G.Select_Boss and (CFrameBoss.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 3000 then
			game.Players.LocalPlayer.Character.Head:Destroy()
			game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrameBoss
			wait(1)
			game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("SetSpawnPoint")
		end
    elseif _G.Select_Boss == "rip_indra True Form [Lv. 5000] [Raid Boss]" then
        MsBoss = "rip_indra True Form [Lv. 5000] [Raid Boss]"
        NameBoss = "rip_indra True Form"
        CFrameBoss = CFrame.new(-5359, 424, -2735)
		if _G.Select_Boss and (CFrameBoss.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 3000 then
			game.Players.LocalPlayer.Character.Head:Destroy()
			game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrameBoss
			wait(1)
			game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("SetSpawnPoint")
		end
    elseif _G.Select_Boss == "Longma [Lv. 2000] [Boss]" then
        MsBoss = "Longma [Lv. 2000] [Boss]"
        NameBoss = "Longma"
        CFrameBoss = CFrame.new(-10248.3936, 353.79129, -9306.34473)
		if _G.Select_Boss and (CFrameBoss.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 3000 then
			game.Players.LocalPlayer.Character.Head:Destroy()
			game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrameBoss
			wait(1)
			game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("SetSpawnPoint")
		end
    elseif _G.Select_Boss == "Soul Reaper [Lv. 2100] [Raid Boss]" then
        MsBoss = "Soul Reaper [Lv. 2100] [Raid Boss]"
        NameBoss = "Soul Reaper"
        CFrameBoss = CFrame.new(-9515.62109, 315.925537, 6691.12012)
		if _G.Select_Boss and (CFrameBoss.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 3000 then
			game.Players.LocalPlayer.Character.Head:Destroy()
			game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrameBoss
			wait(1)
			game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("SetSpawnPoint")
		end
    end
end
spawn(function()
	while wait() do
		if _G.Auto_Farm_Boss then
			pcall(function()
				CheckBossQuest()
				if MsBoss == "Soul Reaper [Lv. 2100] [Raid Boss]" or MsBoss == "Longma [Lv. 2000] [Boss]" or MsBoss == "Don Swan [Lv. 1000] [Boss]" or MsBoss == "Cursed Captain [Lv. 1325] [Raid Boss]" or MsBoss == "Order [Lv. 1250] [Raid Boss]" or MsBoss == "rip_indra True Form [Lv. 5000] [Raid Boss]" then
					if game:GetService("Workspace").Enemies:FindFirstChild(MsBoss) then
						for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
							if v.Name == MsBoss then
								repeat wait()
									getgenv().ToTargets(v.HumanoidRootPart.CFrame * CFrame.new(0,40,0))
									v.HumanoidRootPart.CanCollide = false
									v.HumanoidRootPart.Size = Vector3.new(60, 60, 60)
									game:GetService'VirtualUser':CaptureController()
									game:GetService'VirtualUser':Button1Down(Vector2.new(1280, 672))
								until _G.Auto_Farm_Boss == false or not v.Parent or v.Humanoid.Health <= 0
							end
						end
					else
						getgenv().ToTargets(CFrameBoss)
					end
				else
					if _G.Auto_Quest_Boss then
						CheckBossQuest()
						if not string.find(game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, NameBoss) then
                            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("AbandonQuest")
                        end
						if game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == false then
							repeat wait() getgenv().ToTargets(CFrameQuestBoss) until (CFrameQuestBoss.Position - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 3 or not _G.Auto_Farm_Boss
							if (CFrameQuestBoss.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 4 then
								wait(1.1)
								game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StartQuest", NameQuestBoss, LevelQuestBoss)
							end
						elseif game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == true then
							if game:GetService("Workspace").Enemies:FindFirstChild(MsBoss) then
								for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
									if v.Name == MsBoss then
										repeat wait()
											if string.find(game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, NameBoss) then
												getgenv().ToTargets(v.HumanoidRootPart.CFrame * CFrame.new(0,40,0))
												v.HumanoidRootPart.CanCollide = false
												v.HumanoidRootPart.Size = Vector3.new(60, 60, 60)
												game:GetService'VirtualUser':CaptureController()
												game:GetService'VirtualUser':Button1Down(Vector2.new(1280, 672))									
											else
												game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("AbandonQuest")
											end
										until _G.Auto_Farm_Boss == false or not v.Parent or v.Humanoid.Health <= 0
									end
								end
							else
								getgenv().ToTargets(CFrameBoss)
							end
						end
					else
						if game:GetService("Workspace").Enemies:FindFirstChild(MsBoss) then
							for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
								if v.Name == MsBoss then
									repeat wait()
										getgenv().ToTargets(v.HumanoidRootPart.CFrame * CFrame.new(0,40,0))
										v.HumanoidRootPart.CanCollide = false
										v.HumanoidRootPart.Size = Vector3.new(60, 60, 60)
										game:GetService'VirtualUser':CaptureController()
                                        game:GetService'VirtualUser':Button1Down(Vector2.new(1280, 672))										
									until _G.Auto_Farm_Boss == false or not v.Parent or v.Humanoid.Health <= 0
								end
							end
						else
							getgenv().ToTargets(CFrameBoss)
						end
					end
				end
			end)
		end
	end
end)
spawn(function()
	while wait() do
		if _G.Auto_Farm_All_Boss then
			pcall(function()
				for i,v in pairs(game.ReplicatedStorage:GetChildren()) do
					if string.find(v.Name,"Boss") then
						repeat task.wait()
							if v:FindFirstChild("HumanoidRootPart") and v:FindFirstChild("Humanoid") and (v.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude > 350 then
								getgenv().ToTargets(v.HumanoidRootPart.CFrame)
							elseif v:FindFirstChild("HumanoidRootPart") and v:FindFirstChild("Humanoid") and (v.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude <= 350 then
								v.Humanoid.WalkSpeed = 0
								v.HumanoidRootPart.CanCollide = false
								v.Head.CanCollide = false
								v.HumanoidRootPart.Size = Vector3.new(80,80,80)
								getgenv().ToTargets(v.HumanoidRootPart.CFrame * CFrame.new(0,40,0))
								game:GetService'VirtualUser':CaptureController()
								game:GetService'VirtualUser':Button1Down(Vector2.new(1280, 672))
								sethiddenproperty(game.Players.LocalPlayer,"SimulationRadius",math.huge)
							end
						until v.Humanoid.Health <= 0 or _G.Auto_Farm_All_Boss == false or not v.Parent
					end
				end
			end)
		end
	end
end)
spawn(function()
    pcall(function()
        while wait() do
            if _G.TweenMRIG then
				if game:GetService("Workspace").Map:FindFirstChild("MysticIsland") then
					_G.CenterMI = game:GetService("Workspace").Map.MysticIsland.Center.Position
					getgenv().ToTargets(CFrame.new(_G.CenterMI))
				end
			end
        end
    end)
end)
spawn(function()
    game:GetService("RunService").Heartbeat:Connect(function()
        pcall(function()
            for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                if _G.Auto_Cake_Prince and StartCakeMagnet and (v.Name == "Cookie Crafter [Lv. 2200]" or v.Name == "Cake Guard [Lv. 2225]" or v.Name == "Baking Staff [Lv. 2250]" or v.Name == "Head Baker [Lv. 2275]") and (v.HumanoidRootPart.Position - POSCAKE.Position).magnitude <= 350 then
                    v.HumanoidRootPart.CFrame = POSCAKE
                    v.HumanoidRootPart.CanCollide = false
                    v.HumanoidRootPart.Size = Vector3.new(50,50,50)
                    if v.Humanoid:FindFirstChild("Animator") then
                        v.Humanoid.Animator:Destroy()
                    end
                    sethiddenproperty(game.Players.LocalPlayer, "SimulationRadius",  math.huge)
                end
            end
        end)
    end)
end)

spawn(function()
    while wait() do
        if _G.Auto_Cake_Prince then
            pcall(function()
                if game.ReplicatedStorage:FindFirstChild("Cake Prince [Lv. 2300] [Raid Boss]") or game:GetService("Workspace").Enemies:FindFirstChild("Cake Prince [Lv. 2300] [Raid Boss]") then   
                    if game:GetService("Workspace").Enemies:FindFirstChild("Cake Prince [Lv. 2300] [Raid Boss]") then
                        for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do 
                            if v.Name == "Cake Prince [Lv. 2300] [Raid Boss]" then
                                repeat wait()
                                    v.HumanoidRootPart.Size = Vector3.new(60, 60, 60)
                                    v.HumanoidRootPart.CanCollide = false
                                    getgenv().ToTargets(v.HumanoidRootPart.CFrame * CFrame.new(0,40,0))
                                    game:GetService'VirtualUser':CaptureController()
                                    game:GetService'VirtualUser':Button1Down(Vector2.new(1280, 672))
                                until _G.Auto_Cake_Prince == false or not v.Parent or v.Humanoid.Health <= 0
                            end    
                        end    
                    else
                        getgenv().ToTargets(CFrame.new(-2009.2802734375, 4532.97216796875, -14937.3076171875)) 
                    end
                else
                    if game.Workspace.Enemies:FindFirstChild("Baking Staff [Lv. 2250]") or game.Workspace.Enemies:FindFirstChild("Head Baker [Lv. 2275]") or game.Workspace.Enemies:FindFirstChild("Cake Guard [Lv. 2225]") or game.Workspace.Enemies:FindFirstChild("Cookie Crafter [Lv. 2200]")  then
                        for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do  
                            if (v.Name == "Baking Staff [Lv. 2250]" or v.Name == "Head Baker [Lv. 2275]" or v.Name == "Cake Guard [Lv. 2225]" or v.Name == "Cookie Crafter [Lv. 2200]") and v.Humanoid.Health > 0 then
                                repeat wait()
                                    StartCakeMagnet = true
                                    v.HumanoidRootPart.Size = Vector3.new(60, 60, 60)  
                                    POSCAKE = v.HumanoidRootPart.CFrame
                                    getgenv().ToTargets(v.HumanoidRootPart.CFrame * CFrame.new(0,40,0))
                                    game:GetService'VirtualUser':CaptureController()
                                    game:GetService'VirtualUser':Button1Down(Vector2.new(1280, 672))
                                until _G.Auto_Cake_Prince == false or game:GetService("ReplicatedStorage"):FindFirstChild("Cake Prince [Lv. 2300] [Raid Boss]") or not v.Parent or v.Humanoid.Health <= 0
                            end
                        end
                    else
                        StartCakeMagnet = false
                        getgenv().ToTargets(CFrame.new(-1619.9583740234375, 195.66017150878906, -12307.0380859375))
                    end
                end
            end)
        end
    end
end)
spawn(function()
    game:GetService("RunService").Heartbeat:Connect(function()
        pcall(function()
            for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                if _G.Auto_Cake_Prince and StartCakeMagnet and (v.Name == "Cookie Crafter [Lv. 2200]" or v.Name == "Cake Guard [Lv. 2225]" or v.Name == "Baking Staff [Lv. 2250]" or v.Name == "Head Baker [Lv. 2275]") and (v.HumanoidRootPart.Position - POSCAKE.Position).magnitude <= 350 then
                    v.HumanoidRootPart.CFrame = POSCAKE
                    v.HumanoidRootPart.CanCollide = false
                    v.HumanoidRootPart.Size = Vector3.new(50,50,50)
                    if v.Humanoid:FindFirstChild("Animator") then
                        v.Humanoid.Animator:Destroy()
                    end
                    sethiddenproperty(game.Players.LocalPlayer, "SimulationRadius",  math.huge)
                end
            end
        end)
    end)
end)

spawn(function()
    while wait() do
        if _G.Auto_Cake_Prince then
            pcall(function()
                if game.ReplicatedStorage:FindFirstChild("Cake Prince [Lv. 2300] [Raid Boss]") or game:GetService("Workspace").Enemies:FindFirstChild("Cake Prince [Lv. 2300] [Raid Boss]") then   
                    if game:GetService("Workspace").Enemies:FindFirstChild("Cake Prince [Lv. 2300] [Raid Boss]") then
                        for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do 
                            if v.Name == "Cake Prince [Lv. 2300] [Raid Boss]" then
                                repeat wait()
                                    v.HumanoidRootPart.Size = Vector3.new(60, 60, 60)
                                    v.HumanoidRootPart.CanCollide = false
                                    getgenv().ToTargets(v.HumanoidRootPart.CFrame * CFrame.new(0,40,0))
                                    game:GetService'VirtualUser':CaptureController()
                                    game:GetService'VirtualUser':Button1Down(Vector2.new(1280, 672))
                                until _G.Auto_Cake_Prince == false or not v.Parent or v.Humanoid.Health <= 0
                            end    
                        end    
                    else
                        getgenv().ToTargets(CFrame.new(-2009.2802734375, 4532.97216796875, -14937.3076171875)) 
                    end
                else
                    if game.Workspace.Enemies:FindFirstChild("Baking Staff [Lv. 2250]") or game.Workspace.Enemies:FindFirstChild("Head Baker [Lv. 2275]") or game.Workspace.Enemies:FindFirstChild("Cake Guard [Lv. 2225]") or game.Workspace.Enemies:FindFirstChild("Cookie Crafter [Lv. 2200]")  then
                        for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do  
                            if (v.Name == "Baking Staff [Lv. 2250]" or v.Name == "Head Baker [Lv. 2275]" or v.Name == "Cake Guard [Lv. 2225]" or v.Name == "Cookie Crafter [Lv. 2200]") and v.Humanoid.Health > 0 then
                                repeat wait()
                                    StartCakeMagnet = true
                                    v.HumanoidRootPart.Size = Vector3.new(60, 60, 60)  
                                    POSCAKE = v.HumanoidRootPart.CFrame
                                    getgenv().ToTargets(v.HumanoidRootPart.CFrame * CFrame.new(0,40,0))
                                    game:GetService'VirtualUser':CaptureController()
                                    game:GetService'VirtualUser':Button1Down(Vector2.new(1280, 672))
                                until _G.Auto_Cake_Prince == false or game:GetService("ReplicatedStorage"):FindFirstChild("Cake Prince [Lv. 2300] [Raid Boss]") or not v.Parent or v.Humanoid.Health <= 0
                            end
                        end
                    else
                        StartCakeMagnet = false
                        getgenv().ToTargets(CFrame.new(-1619.9583740234375, 195.66017150878906, -12307.0380859375))
                    end
                end
            end)
        end
    end
end)
spawn(function()
    pcall(function()
        while wait() do
            if _G.TweenMGear then
				if game:GetService("Workspace").Map:FindFirstChild("MysticIsland") then
					getgenv().ToTargets(game:GetService("Workspace").Map.MysticIsland:FindFirstChildOfClass("MeshPart").CFrame)
				end
			end
        end
    end)
end)
spawn(function()
    pcall(function()
        while wait() do
            if _G.AutoQuestRace then
				if game:GetService("Players").LocalPlayer.Data.Race.Value == "Human" then
					for i,v in pairs(game.Workspace.Enemies:GetDescendants()) do
						if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
							pcall(function()
								repeat wait(.1)
									v.Humanoid.Health = 0
									v.HumanoidRootPart.CanCollide = false
									sethiddenproperty(game.Players.LocalPlayer, "SimulationRadius", math.huge)
								until not _G.AutoQuestRace or not v.Parent or v.Humanoid.Health <= 0
							end)
						end
					end
				elseif game:GetService("Players").LocalPlayer.Data.Race.Value == "Skypiea" then
					for i,v in pairs(game:GetService("Workspace").Map.SkyTrial.Model:GetDescendants()) do
						if v.Name ==  "snowisland_Cylinder.081" then
							getgenv().ToTargets(v.CFrame+ Vector3.new(0,2,0))
						end
					end
				elseif game:GetService("Players").LocalPlayer.Data.Race.Value == "Fishman" then
					game.StarterGui:SetCore("SendNotification", {
						Title = "Race V4 - Fish : Not support", 
						Text = "Wait for update",
						Duration = 2.5
					})
				elseif game:GetService("Players").LocalPlayer.Data.Race.Value == "Cyborg" then
					getgenv().ToTargets(CFrame.new(28654, 14898.7832, -30, 1, 0, 0, 0, 1, 0, 0, 0, 1))
				elseif game:GetService("Players").LocalPlayer.Data.Race.Value == "Ghoul" then
					for i,v in pairs(game.Workspace.Enemies:GetDescendants()) do
						if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
							pcall(function()
								repeat wait(.1)
									v.Humanoid.Health = 0
									v.HumanoidRootPart.CanCollide = false
									sethiddenproperty(game.Players.LocalPlayer, "SimulationRadius", math.huge)
								until not _G.AutoQuestRace or not v.Parent or v.Humanoid.Health <= 0
							end)
						end
					end
				elseif game:GetService("Players").LocalPlayer.Data.Race.Value == "Mink" then
					for i,v in pairs(game:GetService("Workspace"):GetDescendants()) do
						if v.Name == "StartPoint" then
							getgenv().ToTargets(v.CFrame* CFrame.new(0,10,0))
					  	end
				   	end
				end
			end
        end
    end)
end)
spawn(function()
    pcall(function()
        while wait() do
            if _G.DriveBoat and game:GetService("Players").LocalPlayer.Character.Humanoid.Sit == true then
				game:GetService("VirtualInputManager"):SendKeyEvent(true,"W",false,game)
			end
        end
    end)
end)
spawn(function()
	while wait() do
		if _G.Aimbot_Skill_Fov then
			pcall(function()
				local MaxDist, Closest = math.huge
				for i,v in pairs(game:GetService("Players"):GetChildren()) do 
					local Head = v.Character:FindFirstChild("HumanoidRootPart")
					local Pos, Vis = game.Workspace.CurrentCamera.WorldToScreenPoint(game.Workspace.CurrentCamera, Head.Position)
					local MousePos, TheirPos = Vector2.new(mouse.X, mouse.Y), Vector2.new(Pos.X, Pos.Y)
					local Dist = (TheirPos - MousePos).Magnitude
					if Dist < MaxDist and Dist <= _G.Select_Size_Fov and v.Name ~= game.Players.LocalPlayer.Name then
						MaxDist = Dist
						_G.Aim_Players = v
					end
				end
			end)
		end
	end
end)
spawn(function()
	local gg = getrawmetatable(game)
	local old = gg.__namecall
	setreadonly(gg,false)
	gg.__namecall = newcclosure(function(...)
		local method = getnamecallmethod()
		local args = {...}
		if tostring(method) == "FireServer" then
			if tostring(args[1]) == "RemoteEvent" then
				if tostring(args[2]) ~= "true" and tostring(args[2]) ~= "false" then
					if _G.Aimbot_Skill_Fov then
						args[2] = _G.Aim_Players.Character.HumanoidRootPart.Position
						return old(unpack(args))
					end
				end
			end
		end
		return old(...)
	end)
end)
spawn(function()
    pcall(function()
        while wait() do
            if _G.PortTP then
				getgenv().ToTargets(CFrame.new(-6035.8916015625, 16.76398277282715, -2050.17919921875))
			end
        end
    end)
end)
spawn(function()
    while wait() do
		pcall(function()
			if _G.AFdf then
                local TargetB = _G.Playeras
				local PositionPS = game:GetService("Players")[TargetB].Character.HumanoidRootPart.CFrame
                getgenv().ToTarget(PositionPS*CFrame.new(0,8,0))
            end
		end)
    end
end)
spawn(function()
    while wait() do
		pcall(function()
			if _G.AFdf then
				wait()
				game:GetService("VirtualInputManager"):SendKeyEvent(true,"Z",false,game)
				game:GetService("VirtualInputManager"):SendKeyEvent(false,"Z",false,game)
				wait()
				game:GetService("VirtualInputManager"):SendKeyEvent(true,"X",false,game)
				game:GetService("VirtualInputManager"):SendKeyEvent(false,"X",false,game)
				wait()
				game:GetService("VirtualInputManager"):SendKeyEvent(true,"C",false,game)
				game:GetService("VirtualInputManager"):SendKeyEvent(false,"C",false,game)
				wait()
				game:GetService("VirtualInputManager"):SendKeyEvent(true,"V",false,game)
				game:GetService("VirtualInputManager"):SendKeyEvent(false,"V",false,game)
			end
		end)
	end
end)
spawn(function()
    while wait() do
		pcall(function()
			if _G.AFdf then
				wait(5)
				game:GetService("VirtualInputManager"):SendKeyEvent(true,"One",false,game)
				game:GetService("VirtualInputManager"):SendKeyEvent(false,"One",false,game)
				wait(5)
				game:GetService("VirtualInputManager"):SendKeyEvent(true,"Two",false,game)
				game:GetService("VirtualInputManager"):SendKeyEvent(false,"Two",false,game)
				wait(5)
				game:GetService("VirtualInputManager"):SendKeyEvent(true,"Three",false,game)
				game:GetService("VirtualInputManager"):SendKeyEvent(false,"Three",false,game)
				wait(5)
				game:GetService("VirtualInputManager"):SendKeyEvent(true,"Four",false,game)
				game:GetService("VirtualInputManager"):SendKeyEvent(false,"Four",false,game)
			end
		end)
	end
end)
spawn(function()
    while wait() do
		pcall(function()
			if _G.AFdf then
				Attack()
			end
		end)
	end
end)
spawn(function()
    while wait() do
		pcall(function()
			if _G.SaveModeSS then
                local MeIs = game.Players.LocalPlayer.Name
				local MePosIs = game:GetService("Players")[MeIs].Character.HumanoidRootPart.CFrame
                getgenv().ToTarget(MePosIs*CFrame.new(0,30,0))
            end
		end)
    end
end)
spawn(function()
    while wait() do
		pcall(function()
			if _G.AccsF then
				Attack()
			end
		end)
    end
end)
spawn(function()
    while wait() do
		pcall(function()
			if _G.Rv3 then
				game:GetService("VirtualInputManager"):SendKeyEvent(true,"T",false,game)
                game:GetService("VirtualInputManager"):SendKeyEvent(false,"T",false,game)
			end
		end)
    end
end)
spawn(function()
    while wait() do
		pcall(function()
			if _G.Rv4 then
				game:GetService("VirtualInputManager"):SendKeyEvent(true,"Y",false,game)
                game:GetService("VirtualInputManager"):SendKeyEvent(false,"Y",false,game)
			end
		end)
    end
end)
spawn(function()
    while wait() do
		pcall(function()
			if _G.GsE then
				game:GetService("Players").LocalPlayer.Character.Humanoid.WalkSpeed = 300
				game:GetService("Players").LocalPlayer.Character.Humanoid.WalkSpeed = 300
				game:GetService("Players").LocalPlayer.Character.Humanoid.WalkSpeed = 300
			end
		end)
    end
end)
spawn(function()
    while wait() do
		if _G.Auto_Buy_Chips_Dungeon then
			pcall(function()
				local args = {
					[1] = "RaidsNpc",
					[2] = "Select",
					[3] = _G.Select_Dungeon
				}
				
				game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
			end)
		end
    end
end)
spawn(function()
    while wait() do
		if _G.Auto_Start_Dungeon then
			pcall(function()
				if game.PlaceId == 4442272183 then
					if not game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 1") then
						if game.Players.LocalPlayer.Backpack:FindFirstChild("Special Microchip") then 
							fireclickdetector(game.Workspace.Map.CircleIsland.RaidSummon2.Button.Main.ClickDetector)
						end
					end
				elseif game.PlaceId == 7449423635 then
					if not game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 1") then
						if game.Players.LocalPlayer.Backpack:FindFirstChild("Special Microchip") then
							fireclickdetector(game.Workspace.Map["Boat Castle"].RaidSummon2.Button.Main.ClickDetector)
						end
					end
				end
			end)
		end
    end
end)
spawn(function()
    while wait() do
        if _G.Auto_Next_Island then
			if not game.Players.LocalPlayer.PlayerGui.Main.Timer.Visible == false then
				if game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 5") then
					getgenv().ToTargets(game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 5").CFrame * CFrame.new(0,80,100))
				elseif game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 4") then
					getgenv().ToTargets(game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 4").CFrame * CFrame.new(0,70,100))
				elseif game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 3") then
					getgenv().ToTargets(game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 3").CFrame * CFrame.new(0,70,100))
				elseif game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 2") then
					getgenv().ToTargets(game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 2").CFrame * CFrame.new(0,70,100))
				elseif game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 1") then
					getgenv().ToTargets(game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 1").CFrame * CFrame.new(0,70,100))
				end
			end
        end
    end
end)
spawn(function()
    while wait() do
        if _G.Auto_Next_Island or _G.Kill_Aura then
            for i,v in pairs(game.Workspace.Enemies:GetDescendants()) do
                if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
                    pcall(function()
                        repeat wait(.1)
                            v.Humanoid.Health = 0
                            v.HumanoidRootPart.CanCollide = false
							sethiddenproperty(game.Players.LocalPlayer, "SimulationRadius", math.huge)
                        until not _G.Auto_Next_Island or not _G.Kill_Aura or not v.Parent or v.Humanoid.Health <= 0
                    end)
                end
            end
        end
    end
end)
spawn(function()
	while wait(.1) do
		if _G.Auto_Awake then
			pcall(function()
				local args = {
					[1] = "Awakener",
					[2] = "Check"
				}
				
				game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
				local args = {
					[1] = "Awakener",
					[2] = "Awaken"
				}
				game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
			end)
		end
	end
end)
spawn(function()
	pcall(function()
		if _G.Anit_Afk then
			local vu = game:GetService("VirtualUser")
			game:GetService("Players").LocalPlayer.Idled:connect(function()
				vu:Button2Down(Vector2.new(0,0),workspace.CurrentCamera.CFrame)
				wait(1)
				vu:Button2Up(Vector2.new(0,0),workspace.CurrentCamera.CFrame)
			end)
		end
	end)
end)


---------------------------------------------------------------
spawn(function()
    while wait() do
        if _G.AutoFarmL or _G.AutoFarmBone or _G.Auto_Rengoku or _G.Auto_Farm_Boss or _G.Auto_Farm_Bone or _G.Auto_Elite_Hunter or _G.Auto_Cake_Prince then
            pcall(function()
                game.Players.LocalPlayer.Character.Humanoid:EquipTool(game.Players.LocalPlayer.Backpack:FindFirstChild(_G.ConfigTestDropdownNormal))
            end)
        end
    end
end)
local Module = require(game.Players.LocalPlayer.PlayerScripts.CombatFramework)
local CombatFramework = debug.getupvalues(Module)[2]
local CamShake = require(game.ReplicatedStorage.Util.CameraShaker)
spawn(function()
while task.wait() do
	if _G.AutoFarmL or _G.NChest or _G.AFdf or _G.Auto_Cake_Prince or _G.Auto_Elite_Hunter or _G.Auto_Farm_Bone  or _G.AutoFarmBone or _G.AuToFarmMasFruits or _G.Sea2 or _G.Auto_Rengoku or _G.Auto_Next_Island or _G.Auto_Farm_Boss or _G.Auto_Saber then
    pcall(function()
        CamShake:Stop()
        CombatFramework.activeController.hitSound = 0
        CombatFramework.activeController.attacking = false
        CombatFramework.activeController.timeToNextAttack = 0
        CombatFramework.activeController.increment = 3
        CombatFramework.activeController.hitboxMagnitude = 1000
        CombatFramework.activeController.blocking = false
        CombatFramework.activeController.timeToNextBlock = 0
        CombatFramework.activeController.focusStart = 0
    end)
    end
    task.wait()
end
end)
spawn(function()
    while task.wait() do
        pcall(function()
            if _G.AutoFarmL or _G.NChest or _G.SaveModeSS or _G.AFdf or _G.Auto_Cake_Prince or _G.Auto_Elite_Hunter or _G.Auto_Farm_Bone or _G.Auto_Farm_All_Boss or _G.AutoFarmBone or _G.Auto_Third_World or _G.AuToFarmMasFruits or _G.Sea2 or _G.Start_Tween_Island or _G.Auto_Rengoku or _G.Auto_Next_Island or _G.Auto_Farm_Boss or _G.Auto_Saber or _G.Auto_Fully_SharkMan_Karate then
                if not game:GetService("Players").LocalPlayer.Character.HumanoidRootPart:FindFirstChild("BodyClip") then
                    local Noclip = Instance.new("BodyVelocity")
                    Noclip.Name = "BodyClip"
                    Noclip.Parent = game:GetService("Players").LocalPlayer.Character.HumanoidRootPart
                    Noclip.MaxForce = Vector3.new(100000,100000,100000)
                    Noclip.Velocity = Vector3.new(0,0,0)
                end
            else
                game:GetService("Players").LocalPlayer.Character.HumanoidRootPart:FindFirstChild("BodyClip"):Destroy()
            end
        end)
    end
end)
spawn(function()
    pcall(function()
        game:GetService("RunService").Stepped:Connect(function()
            if _G.AutoFarmL or _G.NChest or _G.SaveModeSS or _G.LOf or _G.AFdf or _G.Auto_Cake_Prince or _G.Auto_Elite_Hunter or _G.Auto_Farm_Bone  or _G.Auto_Farm_All_Boss or _G.AutoFarmBone or _G.AuToFarmMasFruits or _G.Sea2 or _G.Start_Tween_Island or _G.Auto_Rengoku or _G.NoClip or _G.Auto_Farm_Boss or _G.Auto_Saber then
                for _, v in pairs(game.Players.LocalPlayer.Character:GetDescendants()) do
                    if v:IsA("BasePart") then
                        v.CanCollide = false    
                    end
                end
            end
        end)
    end)
end)
-------------------------[[ÅºàÍ¿à¿¤ÁèÍ¹µÒÂ]]-------------------------
-------------------------[[ÅºàÍ¿à¿¤ÁèÍ¹µÒÂ]]-------------------------
spawn(function()
	pcall(function()
		while wait() do
			if _G.AutoFarmL or _G.Auto_Cake_Prince or _G.Auto_Elite_Hunter or _G.Auto_Farm_Bone  or _G.AutoFarmBone or _G.AuToFarmMasFruits or _G.Sea2 or _G.Auto_Rengoku or _G.Auto_Farm_Boss or _G.Auto_Saber then
				game:GetService("ReplicatedStorage").Effect.Container.Death:Destroy()
			end
		end
	end)
end)
spawn(function()
	game:GetService("RunService").Heartbeat:Connect(function()
		if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Humanoid") and _G.Auto_Next_Island or _G.Start_Tween_Island then
			setfflag("HumanoidParallelRemoveNoPhysics", "False")
			setfflag("HumanoidParallelRemoveNoPhysicsNoSimulate2", "False")
			game:GetService("Players").LocalPlayer.Character.Humanoid:ChangeState(11)
		end
	end)
end)
local SeraphFrame = debug.getupvalues(require(game:GetService("Players").LocalPlayer.PlayerScripts:WaitForChild("CombatFramework")))[2]
local VirtualUser = game:GetService('VirtualUser')
local RigControllerR = debug.getupvalues(require(game:GetService("Players").LocalPlayer.PlayerScripts.CombatFramework.RigController))[2]
local Client = game:GetService("Players").LocalPlayer
local DMG = require(Client.PlayerScripts.CombatFramework.Particle.Damage)
function SeraphFuckWeapon() 
	local p13 = SeraphFrame.activeController
	local wea = p13.blades[1]
	if not wea then return end
	while wea.Parent~=game.Players.LocalPlayer.Character do wea=wea.Parent end
	return wea
end
function getHits(Size)
	local Hits = {}
	local Enemies = workspace.Enemies:GetChildren()
	local Characters = workspace.Characters:GetChildren()
	for i=1,#Enemies do local v = Enemies[i]
		local Human = v:FindFirstChildOfClass("Humanoid")
		if Human and Human.RootPart and Human.Health > 0 and game.Players.LocalPlayer:DistanceFromCharacter(Human.RootPart.Position) < Size+5 then
			table.insert(Hits,Human.RootPart)
		end
	end
	for i=1,#Characters do local v = Characters[i]
		if v ~= game.Players.LocalPlayer.Character then
			local Human = v:FindFirstChildOfClass("Humanoid")
			if Human and Human.RootPart and Human.Health > 0 and game.Players.LocalPlayer:DistanceFromCharacter(Human.RootPart.Position) < Size+5 then
				table.insert(Hits,Human.RootPart)
			end
		end
	end
	return Hits
end
task.spawn(
	function()
	while wait(0) do
		if  _G.FastAttackNormalSpeed then
			if SeraphFrame.activeController then
				-- if v.Humanoid.Health > 0 then
					SeraphFrame.activeController.timeToNextAttack = 0
					SeraphFrame.activeController.focusStart = 0
					SeraphFrame.activeController.hitboxMagnitude = 2048
					SeraphFrame.activeController.humanoid.AutoRotate = true
					SeraphFrame.activeController.increment = 0
				-- end
			end
		end
	end
end)
local cdnormal = 0
local Animation = Instance.new("Animation")
local CooldownFastAttack = 0
Attack = function()
	local ac = SeraphFrame.activeController
	if ac and ac.equipped then
		task.spawn(
			function()
			if tick() - cdnormal > 0 then
				ac:attack()
				cdnormal = tick()
			else
				-- Animation.AnimationId = ac.anims.basic[2]
				-- ac.humanoid:LoadAnimation(Animation):Play(1, 1)
				game:GetService("ReplicatedStorage").RigControllerEvent:FireServer("hit", getHits(5000), 10, "")
			end
		end)
	end
end
b = tick()
spawn(function()
	while wait() do
		if  _G.FastAttackNormalSpeed then
			if b - tick() > 0 then
				b = tick()
			end
			pcall(function()
				for i, v in pairs(game.Workspace.Enemies:GetChildren()) do
					if v.Humanoid.Health > 0 then
						if (v.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 2048 then
							wait(.2)
							Boost()
						end
					end
				end
			end)
		end
	end
end)
k = tick()
spawn(function()
	while wait() do
		if  _G.FastAttackNormalSpeed then
			if k - tick() > 0 then
				k = tick()
			end
			pcall(function()
				for i, v in pairs(game.Workspace.Enemies:GetChildren()) do
					if v.Humanoid.Health > 0 then
						if (v.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 2048 then
						wait(.2)
						Unboost()
						end
					end
				end
			end)
		end
	end
end)
tjw1 = true
task.spawn(
	function()
		local a = game.Players.LocalPlayer
		local b = require(a.PlayerScripts.CombatFramework.Particle)
		local c = require(game:GetService("ReplicatedStorage").CombatFramework.RigLib)
		if not shared.orl then
			shared.orl = c.wrapAttackAnimationAsync
		end
		if not shared.cpc then
			shared.cpc = b.play
		end
		if tjw1 then
			pcall(
				function()
					c.wrapAttackAnimationAsync = function(d, e, f, g, h)
						local i = c.getBladeHits(e, f, g)
						if i then
							b.play = function()
							end
							d:Play(1.25, 1.25, 1.25)
							h(i)
							b.play = shared.cpc
							wait(.1)
							d:Stop()
						end
					end
				end
			)
		end
	end
)
local Client = game.Players.LocalPlayer
local STOP = require(Client.PlayerScripts.CombatFramework.Particle)
local STOPRL = require(game:GetService("ReplicatedStorage").CombatFramework.RigLib)
task.spawn(function()
	pcall(function()
		if not shared.orl then
			shared.orl = STOPRL.wrapAttackAnimationAsync
		end
			if not shared.cpc then
				shared.cpc = STOP.play 
			end
		spawn(function()
			game:GetService("RunService").Stepped:Connect(function()
				STOPRL.wrapAttackAnimationAsync = function(a,b,c,d,func)
					local Hits = STOPRL.getBladeHits(b,c,d)
					if Hits then
						if  _G.FastAttackNormalSpeed then
							STOP.play = function() end
							a:Play(2.1,2.1,2.1)
							func(Hits)
							STOP.play = shared.cpc
							wait(a.length * 0.5)
							a:Stop()
						else
							func(Hits)
							STOP.play = shared.cpc
							wait(a.length * 0.5)
							a:Stop()
						end
					end
				end
			end)
		end)
	end)
	end)
local CameraShaker = require(game.ReplicatedStorage.Util.CameraShaker)
CombatFrameworkR = require(game:GetService("Players").LocalPlayer.PlayerScripts.CombatFramework)
y = debug.getupvalues(CombatFrameworkR)[2]
spawn(function()
game:GetService("RunService").RenderStepped:Connect(function()
if _G.FastAttack then
if typeof(y) == "table" then
	pcall(function()
		CameraShaker:Stop()
		y.activeController.timeToNextAttack = (math.huge^math.huge^math.huge)
		y.activeController.timeToNextAttack = 0
		y.activeController.hitboxMagnitude = 2048
		y.activeController.active = false
		y.activeController.timeToNextBlock = 0
		y.activeController.focusStart = 1655503339.0980349
		y.activeController.increment = 1
		y.activeController.blocking = false
		y.activeController.attacking = false
		y.activeController.humanoid.AutoRotate = true
	end)
end
end
end)
end)
