--MADE BY MERTISH12 converted variables to english with some random tool from website so yall can understand :sob:
print("le menu loadedd");
local player = game.Players.LocalPlayer;
local version_ = "8.5";
wait(1);
local tween = game:GetService("TweenService");
local UIS = game:GetService("UserInputService");
local VR = game:GetService("VRService");
local RS = game:GetService("RunService");
local Players = game:GetService("Players");
local localPlayer = Players.LocalPlayer;
local Lighting = game:GetService("Lighting");
local VRService = game:GetService("VRService");
local ReplicatedStorage = game:GetService("ReplicatedStorage");
local panel;
local holding = false;
local lastClick = 0;
local CurrentPage = 1;
local menuFallOnClose = false;
local menuFallLastPosition = nil;
local menuFallLastTime = 0;
local menuFallVelocity = Vector3.zero;
local pcMenu = false;
local pcSelected = 1;
local pcLastMove = 0;
local pcMoveDelay = 0.15;
local clicksounds = {Default="rbxassetid://131665195317239",Key="rbxassetid://102008284012845",Rock="rbxassetid://120691957831852",Tag="rbxassetid://91782604686830",Round="rbxassetid://76607029523750",WaterSplash="rbxassetid://82891453696514",ModernClick="rbxassetid://88442833509532",JuulClick="rbxassetid://8816939097"};
local soundOrder = {"Default","Key","Rock","Tag","Round","WaterSplash","ModernClick","JuulClick"};
local ColorList = {{Name="Default1",Value=Color3.fromRGB(1, 0, 117)},{Name="Default2",Value=Color3.fromRGB(0, 0, 0)},{Name="Red",Value=Color3.fromRGB(145, 0, 0)},{Name="Green",Value=Color3.fromRGB(0, 145, 0)},{Name="Yellow",Value=Color3.fromRGB(145, 128, 0)},{Name="Blue",Value=Color3.fromRGB(0, 0, 145)},{Name="Black",Value=Color3.fromRGB(0, 0, 0)},{Name="White",Value=Color3.fromRGB(145, 145, 145)},{Name="Purple",Value=Color3.fromRGB(81, 0, 145)},{Name="Orange",Value=Color3.fromRGB(145, 77, 0)},{Name="Pink",Value=Color3.fromRGB(145, 60, 102)},{Name="Bright Blue",Value=Color3.fromRGB(0, 97, 145)},{Name="Bright Pink",Value=Color3.fromRGB(145, 0, 116)}};
local currentTheme = 6;
local Themes = {{Name="Default",MenuDescription=true,MenuColor1=Color3.fromRGB(1, 0, 117),MenuColor2=Color3.fromRGB(0, 0, 0),ButtonColor=Color3.fromRGB(255, 255, 0),ToggleColor=Color3.fromRGB(244, 4, 245),NavColor=Color3.fromRGB(0, 0, 0),DisconnectColor=Color3.fromRGB(155, 0, 0),ButtonTextColor=Color3.fromRGB(0, 0, 0),ButtonTextTransparency=0,MenuTextColor=Color3.fromRGB(255, 255, 255),MenuTextTransparency=0,NavTextColor=Color3.fromRGB(255, 255, 255),SearchHomeTextColor=Color3.fromRGB(255, 255, 255),DisconnectTextColor=Color3.fromRGB(255, 255, 255),ButtonSize=Vector3.new(1.53, 0.2, 0.055),ItemsPerPage=4,ButtonPositions={Vector3.new(0, 0.04, -0.05),Vector3.new(0, -0.237, -0.05),Vector3.new(0, -0.524, -0.05),Vector3.new(0, -0.804, -0.05)},NextPosition=Vector3.new(0, 0.313, -0.025),PreviousPosition=Vector3.new(0, 0.615, -0.025),NextSize=Vector3.new(1.53, 0.2, 0.055),PreviousSize=Vector3.new(1.53, 0.2, 0.055),HomePosition=Vector3.new(-1.158, 1.47, 0),HomeSize=Vector3.new(0.4, 0.15, 0.05),DisconnectPosition=Vector3.new(-1.546, 0.083, 0),DisconnectSize=Vector3.new(1, 0.415, 0.085)},{Name="Mertish's Holdable",MenuName="Mertish's Holdable",MenuNameTextSize=60,MenuDescription=false,PreviousText="<---Page1--",NextText="--Page1--->",PageCount="Page1",MenuColor1=Color3.fromRGB(128, 2, 132),MenuColor2=Color3.fromRGB(128, 2, 132),ButtonColor=Color3.fromRGB(0, 0, 0),ToggleColor=Color3.fromRGB(251, 4, 255),NavColor=Color3.fromRGB(0, 0, 0),DisconnectColor=Color3.fromRGB(155, 0, 0),ButtonTextColor=Color3.fromRGB(255, 255, 255),ButtonTextTransparency=0,MenuTextColor=Color3.fromRGB(255, 255, 10),MenuTextTransparency=0,NavTextColor=Color3.fromRGB(255, 255, 255),SearchHomeTextColor=Color3.fromRGB(255, 255, 255),DisconnectTextColor=Color3.fromRGB(255, 255, 255),ButtonSize=Vector3.new(1.53, 0.2, 0.055),ItemsPerPage=7,ButtonPositions={Vector3.new(0, 1.14, -0.05),Vector3.new(0, 0.84, -0.05),Vector3.new(0, 0.54, -0.05),Vector3.new(0, 0.24, -0.05),Vector3.new(0, -0.06, -0.05),Vector3.new(0, -0.36, -0.05),Vector3.new(0, -0.66, -0.05)},NextPosition=Vector3.new(0, -1.26, -0.05),PreviousPosition=Vector3.new(0, -0.96, -0.05),NextSize=Vector3.new(1.53, 0.2, 0.055),PreviousSize=Vector3.new(1.53, 0.2, 0.055),HomePosition=Vector3.new(999999, 999999, 999999),HomeSize=Vector3.new(0, 0, 0),DisconnectPosition=Vector3.new(999999, 999999, 999999),DisconnectSize=Vector3.new(1, 0.415, 0.085),PanelSize=Vector3.new(1.865, 3, 0.085)},{Name="Mertish's Holdable",MenuName="Mertish's Holdable",MenuDescription=true,MenuNameTextSize=55,PreviousText="",NextText="",PageCount="- Page 1",MenuColor1=Color3.fromRGB(0, 0, 0),MenuColor2=Color3.fromRGB(255, 255, 0),ButtonColor=Color3.fromRGB(255, 255, 0),ToggleColor=Color3.fromRGB(81, 0, 145),NavColor=Color3.fromRGB(0, 0, 0),DisconnectColor=Color3.fromRGB(155, 0, 0),ButtonTextColor=Color3.fromRGB(0, 0, 0),ButtonTextTransparency=0,MenuTextColor=Color3.fromRGB(255, 255, 255),MenuTextTransparency=0,NavTextColor=Color3.fromRGB(255, 255, 255),SearchHomeTextColor=Color3.fromRGB(255, 255, 255),DisconnectTextColor=Color3.fromRGB(255, 255, 255),ButtonSize=Vector3.new(1.53, 0.2, 0.055),ItemsPerPage=6,ButtonPositions={Vector3.new(0, 0.79, -0.05),Vector3.new(0, 0.49, -0.05),Vector3.new(0, 0.19, -0.05),Vector3.new(0, -0.11, -0.05),Vector3.new(0, -0.41, -0.05),Vector3.new(0, -0.71, -0.05)},NextPosition=Vector3.new(-0.758, 1.287, -0.025),PreviousPosition=Vector3.new(0.758, 1.287, -0.025),NextSize=Vector3.new(0.35, 0.17, 0.055),PreviousSize=Vector3.new(0.35, 0.17, 0.055),HomePosition=Vector3.new(999999, 999999, 999999),HomeSize=Vector3.new(0, 0, 0),DisconnectPosition=Vector3.new(-1.546, 0.083, 0),DisconnectSize=Vector3.new(1, 0.415, 0.085)},{Name="Mertish's Holdable",MenuName="Mertish's Holdable",MenuDescription=true,PreviousText="<",NextText=">",PageCount="[1]",MenuColor1=Color3.fromRGB(200, 93, 0),MenuColor2=Color3.fromRGB(200, 93, 0),ButtonColor=Color3.fromRGB(199, 83, 0),ToggleColor=Color3.fromRGB(184, 74, 0),NavColor=Color3.fromRGB(199, 83, 0),DisconnectColor=Color3.fromRGB(199, 83, 0),ButtonTextColor=Color3.fromRGB(255, 128, 0),ButtonTextTransparency=0,MenuTextColor=Color3.fromRGB(255, 173, 119),MenuTextTransparency=0,NavTextColor=Color3.fromRGB(255, 255, 255),SearchHomeTextColor=Color3.fromRGB(255, 255, 255),DisconnectTextColor=Color3.fromRGB(255, 255, 255),ButtonSize=Vector3.new(1.713, 0.18, 0.055),ItemsPerPage=8,ButtonPositions={Vector3.new(-0.006, 0.835, -0.024),Vector3.new(-0.006, 0.585, -0.024),Vector3.new(-0.006, 0.335, -0.024),Vector3.new(-0.006, 0.085, -0.024),Vector3.new(-0.006, -0.165, -0.024),Vector3.new(-0.006, -0.415, -0.024),Vector3.new(-0.006, -0.665, -0.024),Vector3.new(-0.006, -0.915, -0.024)},NextPosition=Vector3.new(-1.25, 0.013, -0.025),PreviousPosition=Vector3.new(1.25, 0.015, -0.025),NextSize=Vector3.new(0.4, 2, 0.055),PreviousSize=Vector3.new(0.4, 2, 0.055),HomePosition=Vector3.new(-1.169, -1.33, 0),HomeSize=Vector3.new(0.2, 0.2, 0.05),DisconnectPosition=Vector3.new(0.004, 1.383, 0),DisconnectSize=Vector3.new(1.7, 0.215, 0.085)},{Name="Mertish's Holdable",MenuName="Mertish's Holdable",MenuDescription=false,PreviousText="<",NextText=">",PageCount="[1]",MenuColor1=Color3.fromRGB(180, 82, 1),MenuColor2=Color3.fromRGB(180, 82, 1),ButtonColor=Color3.fromRGB(143, 72, 0),ToggleColor=Color3.fromRGB(80, 49, 49),NavColor=Color3.fromRGB(143, 72, 0),DisconnectColor=Color3.fromRGB(199, 83, 0),ButtonTextColor=Color3.fromRGB(255, 128, 0),ButtonTextTransparency=0,MenuTextColor=Color3.fromRGB(255, 173, 119),MenuTextTransparency=0,NavTextColor=Color3.fromRGB(255, 255, 255),SearchHomeTextColor=Color3.fromRGB(255, 255, 255),DisconnectTextColor=Color3.fromRGB(255, 255, 255),ButtonSize=Vector3.new(2.713, 0.17, 0.055),ItemsPerPage=6,ButtonPositions={Vector3.new(-0.006, 0.235, -0.024),Vector3.new(-0.006, 0.035, -0.024),Vector3.new(-0.006, -0.165, -0.024),Vector3.new(-0.006, -0.365, -0.024),Vector3.new(-0.006, -0.565, -0.024),Vector3.new(-0.006, -0.765, -0.024)},NextPosition=Vector3.new(-0.006, 0.435, -0.024),PreviousPosition=Vector3.new(-0.006, 0.635, -0.024),NextSize=Vector3.new(2.713, 0.17, 0.055),PreviousSize=Vector3.new(2.713, 0.17, 0.055),HomePosition=Vector3.new(99999, 999999, 999999),HomeSize=Vector3.new(99999, 999999, 999999),DisconnectPosition=Vector3.new(99999, 999999, 999999),DisconnectSize=Vector3.new(1.7, 0.215, 0.085),PanelSize=Vector3.new(3, 1.95, 0.085)},{Name="Mertish's Holdable",MenuName="Mertish's Holdable",MenuNameTextSize=100,MenuDescription=false,PreviousText="<---------",NextText="--------->",MenuColor1=Color3.fromRGB(18, 22, 30),MenuColor2=Color3.fromRGB(18, 22, 30),ButtonColor=Color3.fromRGB(251, 4, 255),ToggleColor=Color3.fromRGB(255, 0, 4),NavColor=Color3.fromRGB(251, 4, 255),DisconnectColor=Color3.fromRGB(155, 0, 0),ButtonTextColor=Color3.fromRGB(255, 255, 255),ButtonTextTransparency=0,MenuTextColor=Color3.fromRGB(255, 255, 255),MenuTextTransparency=0,NavTextColor=Color3.fromRGB(255, 255, 255),SearchHomeTextColor=Color3.fromRGB(255, 255, 255),DisconnectTextColor=Color3.fromRGB(255, 255, 255),ButtonSize=Vector3.new(1.53, 0.2, 0.055),ItemsPerPage=7,ButtonPositions={Vector3.new(0, 1.14, -0.05),Vector3.new(0, 0.84, -0.05),Vector3.new(0, 0.54, -0.05),Vector3.new(0, 0.24, -0.05),Vector3.new(0, -0.06, -0.05),Vector3.new(0, -0.36, -0.05),Vector3.new(0, -0.66, -0.05)},NextPosition=Vector3.new(0, -1.26, -0.05),PreviousPosition=Vector3.new(0, -0.96, -0.05),NextSize=Vector3.new(1.53, 0.2, 0.055),PreviousSize=Vector3.new(1.53, 0.2, 0.055),HomePosition=Vector3.new(999999, 999999, 999999),HomeSize=Vector3.new(0, 0, 0),DisconnectPosition=Vector3.new(999999, 999999, 999999),DisconnectSize=Vector3.new(1, 0.415, 0.085),PanelSize=Vector3.new(1.865, 3, 0.085)}};
local longMenu = false;
local normalPanelSize = Vector3.new(1.865, 2.35, 0.085);
local longMenuSpacing = 0.29;
local longMenuButtons = 12;
local function GetLongButtonPositions(theme, extra)
	local p = {};
	local first = theme.ButtonPositions[1];
	for i = 1, longMenuButtons do
		p[i] = first + Vector3.new(0, (extra / 2) - (longMenuSpacing * (i - 1)), 0);
	end
	return p;
end
local function GetTheme()
	return Themes[currentTheme];
end
local function GetHand(left)
	local camera = workspace.CurrentCamera;
	if not camera then
		return nil;
	end
	local cf = VRService:GetUserCFrame((left and Enum.UserCFrame.LeftHand) or Enum.UserCFrame.RightHand);
	return camera.CFrame * (cf.Rotation + (cf.Position * camera.HeadScale));
end
local ItemsPerPage = Themes[currentTheme].ItemsPerPage;
local clickSoundButton;
local color1Index = 1;
local color2Index = 2;
local buttonColorIndex = 5;
local toggledColorIndex = 9;
local currentSoundIndex = 1;
local nextText;
local previousText;
local pageCount;
local OpenMenu;
local BuildMenu;
local Menus = {};
local function GetCurrentSound()
	return soundOrder[currentSoundIndex];
end
local MenuFont = "rbxasset://fonts/families/Arial.json";
VRService.FadeOutViewOnCollision = false;
model = Instance.new("Model");
model.Name = "Mert's Menu Reborn";
model.Parent = workspace;
local BUTTON_SIZE = Vector3.new(1.53, 0.2, 0.055);
local MENU_SCALES = {0.15,0.2,0.25,0.3,0.4,0.5,0.75,1};
local menuScaleIndex = 6;
local function MS()
	return MENU_SCALES[menuScaleIndex];
end
local STYLE = {PixelsPerStud=363.636,TextSize=85,Font=Font.new(MenuFont, Enum.FontWeight.Regular, Enum.FontStyle.Normal),NormalColor=Color3.fromRGB(145, 130, 0),ToggleOnColor=Color3.fromRGB(150, 25, 150),TextColor=Color3.fromRGB(0, 0, 0)};
local function ChangeButtonText(buttonName, text)
	for _, o in ipairs(model:GetChildren()) do
		if (o:IsA("Part") and (o.Name == buttonName)) then
			local gui = o:FindFirstChildWhichIsA("SurfaceGui");
			local label = gui and gui:FindFirstChildWhichIsA("TextLabel");
			if label then
				label.Text = text;
			end
			break;
		end
	end
end
local Home_Buttons;
local Setting_Buttons = {{Name="Exit Settings",Enabled=false,Enable=function()
	OpenMenu(Home_Buttons);
end,Disable=function()
end,Toggleable=false,Description="Exits Settings"},{Name="Change Click Sound",Enabled=false,Toggleable=false,Description="Change click sound of the menu",GetText=function()
	return "Change Click Sound: " .. soundOrder[currentSoundIndex];
end,Enable=function()
	currentSoundIndex = (currentSoundIndex % #soundOrder) + 1;
	ChangeButtonText("Change Click Sound", "Change Click Sound: " .. soundOrder[currentSoundIndex]);
end,Disable=function()
end},{Name="Change Menu 1s Color",Enabled=false,Toggleable=false,Description="Changes primary menu color",GetText=function()
	return "Change Menu 1s Color: " .. ColorList[color1Index].Name;
end,Enable=function()
	color1Index = (color1Index % #ColorList) + 1;
	GetTheme().MenuColor1 = ColorList[color1Index].Value;
	ChangeButtonText("Change Menu 1s Color", "Change Menu 1s Color: " .. ColorList[color1Index].Name);
end,Disable=function()
end},{Name="Change Menu 2s Color",Enabled=false,Toggleable=false,Description="Changes secondary menu color",GetText=function()
	return "Change Menu 2s Color: " .. ColorList[color2Index].Name;
end,Enable=function()
	color2Index = (color2Index % #ColorList) + 1;
	GetTheme().MenuColor2 = ColorList[color2Index].Value;
	ChangeButtonText("Change Menu 2s Color", "Change Menu 2s Color: " .. ColorList[color2Index].Name);
end,Disable=function()
end},{Name="Change Button Color",Enabled=false,Toggleable=false,Description="Changes normal button color",GetText=function()
	return "Change Button Color: " .. ColorList[buttonColorIndex].Name;
end,Enable=function()
	buttonColorIndex = (buttonColorIndex % #ColorList) + 1;
	GetTheme().ButtonColor = ColorList[buttonColorIndex].Value;
	BuildMenu();
end,Disable=function()
end},{Name="Change Toggled Color",Enabled=false,Toggleable=false,Description="Changes toggled button color",GetText=function()
	return "Change Toggled Color: " .. ColorList[toggledColorIndex].Name;
end,Enable=function()
	toggledColorIndex = (toggledColorIndex % #ColorList) + 1;
	GetTheme().ToggleColor = ColorList[toggledColorIndex].Value;
	BuildMenu();
end,Disable=function()
end},{Name="Change Menu Theme",Enabled=false,Toggleable=false,Description="Changes the menu style",GetText=function()
	return "Themes: " .. Themes[currentTheme].Name;
end,Enable=function()
	currentTheme = (currentTheme % #Themes) + 1;
	ChangeButtonText("Change Menu Theme", "Themes: " .. Themes[currentTheme].Name);
	BuildMenu();
end,Disable=function()
end},{Name="Menu Size",Enabled=false,Toggleable=false,Description="Changes how big the menu is",GetText=function()
	return "Menu Size: " .. MS() .. "x";
end,Enable=function()
	menuScaleIndex = (menuScaleIndex % #MENU_SCALES) + 1;
	BuildMenu();
end,Disable=function()
end},{Name="Long Menu",Enabled=false,Enable=function()
	longMenu = true;
	BuildMenu();
end,Disable=function()
	longMenu = false;
	BuildMenu();
end,Toggleable=true,Description="Makes the menu longer and shows more buttons"},{Name="Menu Fall on Close",Enabled=false,Enable=function()
	menuFallOnClose = true;
end,Disable=function()
	menuFallOnClose = false;
end,Toggleable=true,Description="Throws the menu and makes it fall when you release Y"},{Name="Right Handed Menu",Enabled=false,Toggleable=true,Description="Moves the menu to your right hand and cursor to your left hand",Enable=function()
	_G.RightHandedMenu = true;
end,Disable=function()
	_G.RightHandedMenu = false;
end},{Name="Menu Notifications",Enabled=false,Enable=function()
	NotificationSystem.Enabled = true;
end,Disable=function()
	NotificationSystem.Enabled = false;
end,Toggleable=true,Description="Enables or disables menu notifications"}};
Menus[#Menus + 1] = Setting_Buttons;
Home_Buttons = {{Name="Settings",Enabled=false,Enable=function()
	OpenMenu(Setting_Buttons);
end,Disable=function()
end,Toggleable=false,Description="Go to settings page"},{Name="Platforms",Enabled=false,Toggleable=true,Description="Gives you small grey plastic platforms under your hands while holding grip",Enable=function()
	_G.Plats_enabled = true;
	_G.PlatformsHeld = {Left=false,Right=false};
	_G.PlatformsParts = {Left=nil,Right=nil};
	_G.PlatformsConnections = {UIS.InputBegan:Connect(function(i, g)
		if g then
			return;
		end
		if (i.UserInputType == Enum.UserInputType.Gamepad1) then
			local side = ((i.KeyCode == Enum.KeyCode.ButtonL1) and "Left") or ((i.KeyCode == Enum.KeyCode.ButtonR1) and "Right");
			if (side and not _G.PlatformsHeld[side]) then
				_G.PlatformsHeld[side] = true;
				local h = GetHand(side == "Left");
				if h then
					local p = Instance.new("Part");
					p.Name = "VRPlatform";
					p.Size = Vector3.new(0.08, 1, 1);
					p.Material = Enum.Material.SmoothPlastic;
					p.Color = Color3.fromRGB(25, 25, 25);
					p.Anchored = true;
					p.CanCollide = true;
					p:SetAttribute("MTNSlip", 0.03);
					p:SetAttribute("MtnSourceNode", 9900);
					p:SetAttribute("MtnSourcePath", "Level/forest");
					p:SetAttribute("MtnSubmesh", 0);
					p:SetAttribute("MtnSurfaceIndex", 7);
					p.CFrame = h * CFrame.new(((side == "Left") and 0.16) or -0.16, -0.08, 0);
					p.Parent = workspace;
					_G.PlatformsParts[side] = p;
				end
			end
		end
	end),UIS.InputEnded:Connect(function(i)
		if (i.UserInputType == Enum.UserInputType.Gamepad1) then
			local side = ((i.KeyCode == Enum.KeyCode.ButtonL1) and "Left") or ((i.KeyCode == Enum.KeyCode.ButtonR1) and "Right");
			if side then
				_G.PlatformsHeld[side] = false;
				if _G.PlatformsParts[side] then
					_G.PlatformsParts[side]:Destroy();
					_G.PlatformsParts[side] = nil;
				end
			end
		end
	end),RS.RenderStepped:Connect(function()
		if not _G.Plats_enabled then
			return;
		end
		for _, side in ipairs({"Left","Right"}) do
			if (_G.PlatformsHeld[side] and not _G.PlatformsParts[side]) then
				local h = GetHand(side == "Left");
				if h then
					local p = Instance.new("Part");
					p.Name = "VRPlatform";
					p.Size = Vector3.new(0.08, 1, 1);
					p.Material = Enum.Material.SmoothPlastic;
					p.Color = Color3.fromRGB(25, 25, 25);
					p.Anchored = true;
					p.CanCollide = true;
					p:SetAttribute("MTNSlip", 0.03);
					p:SetAttribute("MtnSourceNode", 9900);
					p:SetAttribute("MtnSourcePath", "Level/forest");
					p:SetAttribute("MtnSubmesh", 0);
					p:SetAttribute("MtnSurfaceIndex", 7);
					p.CFrame = h * CFrame.new(((side == "Left") and 0.16) or -0.16, -0.08, 0);
					p.Parent = workspace;
					_G.PlatformsParts[side] = p;
				end
			end
		end
	end)};
end,Disable=function()
	_G.Plats_enabled = false;
	for _, c in ipairs(_G.PlatformsConnections or {}) do
		c:Disconnect();
	end
	for _, p in pairs(_G.PlatformsParts or {}) do
		if p then
			p:Destroy();
		end
	end
	_G.PlatformsHeld = nil;
	_G.PlatformsParts = nil;
	_G.PlatformsConnections = nil;
end},{Name="Steam Long Arms",Enabled=false,Toggleable=true,Description="Sets head scale to 1.2",Enable=function()
	workspace.Camera.HeadScale = 1.2;
end,Disable=function()
	workspace.Camera.HeadScale = 1;
end},{Name="LongArms",Enabled=false,Toggleable=true,Description="Sets head scale to 1.3",Enable=function()
	workspace.Camera.HeadScale = 1.3;
end,Disable=function()
	workspace.Camera.HeadScale = 1;
end},{Name="Super Longarms",Enabled=false,Toggleable=true,Description="Sets head scale to 2",Enable=function()
	workspace.Camera.HeadScale = 2;
end,Disable=function()
	workspace.Camera.HeadScale = 1;
end},{Name="RGB Monke",Enabled=false,Toggleable=true,Description="Smoothly cycles your fur through rainbow colors",Enable=function()
	_G.MTNRainbow = {Mode="Smooth",Connection=game:GetService("RunService").RenderStepped:Connect(function()
		game.Players.LocalPlayer:SetAttribute("MtnColor", Color3.fromHSV((os.clock() * 0.15) % 1, 1, 1));
	end)};
end,Disable=function()
	if _G.MTNRainbow then
		_G.MTNRainbow.Connection:Disconnect();
		_G.MTNRainbow = nil;
	end
end},{Name="RGB Strobe Monke",Enabled=false,Toggleable=true,Description="Rapidly cycles your fur through rainbow colors",Enable=function()
	_G.MTNRainbow = {Mode="Strobe",Connection=game:GetService("RunService").RenderStepped:Connect(function()
		game.Players.LocalPlayer:SetAttribute("MtnColor", Color3.fromHSV((math.floor(os.clock() * 15) / 15) % 1, 1, 1));
	end)};
end,Disable=function()
	if _G.MTNRainbow then
		_G.MTNRainbow.Connection:Disconnect();
		_G.MTNRainbow = nil;
	end
end},{Name="Black & White Strobe Monke",Enabled=false,Toggleable=true,Description="Rapidly alternates your fur between black and white",Enable=function()
	_G.MTNRainbow = {Mode="BW",Connection=game:GetService("RunService").RenderStepped:Connect(function()
		game.Players.LocalPlayer:SetAttribute("MtnColor", (((math.floor(os.clock() * 15) % 2) == 0) and Color3.new(0, 0, 0)) or Color3.new(1, 1, 1));
	end)};
end,Disable=function()
	if _G.MTNRainbow then
		_G.MTNRainbow.Connection:Disconnect();
		_G.MTNRainbow = nil;
	end
end}};
Menus[#Menus + 1] = Home_Buttons;
local ActiveMenu = Home_Buttons;
panel = Instance.new("Part");
panel.Name = "Panel";
panel.Size = normalPanelSize;
panel.Position = Vector3.new(0.839, 0.318, 0.027);
panel.Material = Enum.Material.Plastic;
panel.Color = Color3.fromRGB(2, 0, 120);
panel.Anchored = true;
panel.CanCollide = false;
panel.CastShadow = false;
panel.Parent = model;
task.spawn(function()
	while true do
		pcall(function()
			game.StarterGui:SetCore("VRLaserPointerMode", 0);
			game.StarterGui:SetCore("VREnableControllerModels", false);
		end);
		local theme = GetTheme();
		tween:Create(panel, TweenInfo.new(1.2, Enum.EasingStyle.Sine, Enum.EasingDirection.InOut), {Color=theme.MenuColor1}):Play();
		task.wait(1.2);
		if (not panel or not panel.Parent) then
			break;
		end
		tween:Create(panel, TweenInfo.new(1.2, Enum.EasingStyle.Sine, Enum.EasingDirection.InOut), {Color=theme.MenuColor2}):Play();
		task.wait(1.2);
	end
end);
local origin = Instance.new("Attachment");
origin.Name = "Origin";
local ORIGIN_POSITION = Vector3.new(0.992, -0.721, 0.385);
origin.Position = ORIGIN_POSITION * MS();
origin.Orientation = Vector3.new(0, 0, 75);
origin.Axis = Vector3.new(0.259, 0.966, 0);
origin.SecondaryAxis = Vector3.new(-0.966, 0.259, 0);
origin.Parent = panel;
model:PivotTo(panel.CFrame);
function MenuFall()
	if not menuFallOnClose then
		model.Parent = Lighting;
		return;
	end
	local clone = model:Clone();
	clone.Name = "MenuFall_" .. math.random(1, 999999);
	clone.Parent = workspace;
	local root = clone:FindFirstChild("Panel");
	if (not root or not root:IsA("BasePart")) then
		clone:Destroy();
		model.Parent = Lighting;
		return;
	end
	local parts = clone:GetDescendants();
	for i = 1, #parts do
		local v = parts[i];
		if v:IsA("BasePart") then
			local distance = (v.Position - root.Position).Magnitude;
			if (distance > 100) then
				v:Destroy();
			else
				v.Anchored = true;
				v.CanCollide = false;
				v.CanTouch = false;
				v.CanQuery = false;
			end
		end
	end
	parts = clone:GetDescendants();
	for i = 1, #parts do
		local v = parts[i];
		if (v:IsA("BasePart") and (v ~= root) and ((v.Position - root.Position).Magnitude <= 100)) then
			local weld = Instance.new("WeldConstraint");
			weld.Part0 = root;
			weld.Part1 = v;
			weld.Parent = root;
		end
	end
	parts = clone:GetDescendants();
	for i = 1, #parts do
		local v = parts[i];
		if v:IsA("BasePart") then
			v.Anchored = false;
			v.CanCollide = false;
			v.CanTouch = false;
			v.CanQuery = false;
		end
	end
	root.AssemblyLinearVelocity = menuFallVelocity + Vector3.new(0, -4, 0);
	root.AssemblyAngularVelocity = Vector3.new(0, 1.2, 0);
	model.Parent = Lighting;
end
UIS.InputBegan:Connect(function(i, g)
	if (i.KeyCode == Enum.KeyCode.ButtonY) then
		holding = true;
		menuFallLastPosition = model:GetPivot().Position;
		menuFallLastTime = os.clock();
		menuFallVelocity = Vector3.zero;
		model.Parent = workspace;
	end
end);
UIS.InputEnded:Connect(function(i, g)
	if (i.KeyCode == Enum.KeyCode.ButtonY) then
		holding = false;
		MenuFall();
		local cursor = workspace:FindFirstChild("VR_Cursor_MENUUUU");
		if cursor then
			cursor:Destroy();
		end
	end
end);
RS.RenderStepped:Connect(function()
	if not holding then
		return;
	end
	if (model.Parent ~= workspace) then
		return;
	end
	if holding then
		local now = os.clock();
		local pos = model:GetPivot().Position;
		if menuFallLastPosition then
			local dt = math.max(now - menuFallLastTime, 0.001);
			menuFallVelocity = (pos - menuFallLastPosition) / dt;
			if (menuFallVelocity.Magnitude > 35) then
				menuFallVelocity = menuFallVelocity.Unit * 35;
			end
		end
		menuFallLastPosition = pos;
		menuFallLastTime = now;
	end
	local hand = GetHand(not _G.RightHandedMenu);
	local rhand = GetHand(_G.RightHandedMenu);
	if (not hand or not rhand) then
		return;
	end
	if not pcMenu then
		model:PivotTo(hand * CFrame.new(Vector3.new(0.15, 0, 0.7) * MS()) * CFrame.Angles(0, math.rad(-90), 90) * origin.CFrame:Inverse());
		local now = os.clock();
		local pos = model:GetPivot().Position;
		if menuFallLastPosition then
			local dt = math.max(now - menuFallLastTime, 0.001);
			menuFallVelocity = (pos - menuFallLastPosition) / dt;
			if (menuFallVelocity.Magnitude > 35) then
				menuFallVelocity = menuFallVelocity.Unit * 35;
			end
		end
		menuFallLastPosition = pos;
		menuFallLastTime = now;
	elseif pcMenu then
		local camera = workspace.CurrentCamera;
		if camera then
			local pcPosition = camera.CFrame * CFrame.new(0, 0, -3 * MS()) * CFrame.Angles(0, math.rad(180), 0);
			model:PivotTo(pcPosition);
		end
	end
	if not workspace:FindFirstChild("VR_Cursor_MENUUUU") then
		local cursor = Instance.new("Part");
		cursor.Name = "VR_Cursor_MENUUUU";
		cursor.Shape = Enum.PartType.Ball;
		cursor.Size = Vector3.new(0.08, 0.08, 0.08) * MS();
		cursor.Material = Enum.Material.SmoothPlastic;
		cursor.Color = ColorList[buttonColorIndex].Value;
		cursor.Anchored = true;
		cursor.CanCollide = false;
		cursor.CastShadow = false;
		cursor.Parent = workspace;
	end
	local cursor = workspace:FindFirstChild("VR_Cursor_MENUUUU");
	cursor.Size = Vector3.new(0.08, 0.08, 0.08) * MS();
	cursor.CFrame = rhand * CFrame.new(0, 0, -1 * MS());
end);
local infoGui = Instance.new("SurfaceGui");
infoGui.Name = "Info";
infoGui.Face = Enum.NormalId.Front;
infoGui.SizingMode = Enum.SurfaceGuiSizingMode.PixelsPerStud;
infoGui.PixelsPerStud = 363.636;
infoGui.Parent = panel;
local nameLabel = Instance.new("TextLabel");
nameLabel.Name = "MenuName";
nameLabel.Size = UDim2.new(1, 0, 0, 95);
nameLabel.Position = UDim2.new(0, 0, 0, 0);
nameLabel.BackgroundTransparency = 1;
nameLabel.Text = "Mertish's Holdable " .. version_;
nameLabel.TextColor3 = GetTheme().MenuTextColor;
nameLabel.TextTransparency = GetTheme().MenuTextTransparency;
nameLabel.TextSize = 60;
nameLabel.TextStrokeTransparency = 1;
nameLabel.TextWrapped = true;
nameLabel.FontFace = STYLE.Font;
nameLabel.Parent = infoGui;
local description = Instance.new("TextLabel");
description.Name = "Description";
description.Size = UDim2.new(1, 0, 0, 80);
description.Position = UDim2.new(0, 0, 0, 775);
description.BackgroundTransparency = 1;
description.Text = "";
description.TextColor3 = GetTheme().MenuTextColor;
description.TextTransparency = GetTheme().MenuTextTransparency;
description.TextSize = 35;
description.TextStrokeTransparency = 1;
description.TextWrapped = true;
description.FontFace = STYLE.Font;
description.Parent = infoGui;
local backGui = Instance.new("SurfaceGui");
backGui.Name = "Back";
backGui.Face = Enum.NormalId.Back;
backGui.SizingMode = Enum.SurfaceGuiSizingMode.PixelsPerStud;
backGui.PixelsPerStud = 363.636;
backGui.Parent = panel;
local backText = Instance.new("TextLabel");
backText.Name = "Text";
backText.Position = UDim2.new(0, 0, 0, 300);
backText.Size = UDim2.new(1, 0, 0, 80);
backText.BackgroundTransparency = 1;
backText.Text = "Made by Mertz";
backText.TextColor3 = Color3.fromRGB(255, 255, 255);
backText.TextSize = 50;
backText.TextStrokeTransparency = 1;
backText.TextWrapped = true;
backText.FontFace = STYLE.Font;
backText.Parent = backGui;
local disconnectButton = Instance.new("Part");
disconnectButton.Name = "DisconnectButton";
disconnectButton.Size = Vector3.new(1, 0.415, 0.085);
disconnectButton.Position = Vector3.new(-0.707, 0.401, 0.027);
disconnectButton.Material = Enum.Material.SmoothPlastic;
disconnectButton.Color = Color3.fromRGB(155, 0, 0);
disconnectButton.Anchored = true;
disconnectButton.CanCollide = false;
disconnectButton.CastShadow = false;
disconnectButton.Parent = model;
local textGui = Instance.new("SurfaceGui");
textGui.Name = "Text";
textGui.Face = Enum.NormalId.Front;
textGui.SizingMode = Enum.SurfaceGuiSizingMode.PixelsPerStud;
textGui.PixelsPerStud = 500;
textGui.Parent = disconnectButton;
local textLabel = Instance.new("TextLabel");
textLabel.Name = "TextLabel";
textLabel.Size = UDim2.new(1, 0, 1, 0);
textLabel.Position = UDim2.new(0, 0, 0, 0);
textLabel.BackgroundTransparency = 1;
textLabel.Text = "Disconnect";
textLabel.TextColor3 = GetTheme().ButtonTextColor;
textLabel.TextTransparency = GetTheme().ButtonTextTransparency;
textLabel.TextSize = 100;
textLabel.TextStrokeTransparency = 1;
textLabel.TextWrapped = true;
textLabel.FontFace = STYLE.Font;
textLabel.Parent = textGui;
local homeButton = Instance.new("Part");
homeButton.Name = "Home";
homeButton.Size = Vector3.new(0.4, 0.15, 0.05);
homeButton.Position = Vector3.new(-0.319, 1.788, 0.027);
homeButton.Material = Enum.Material.SmoothPlastic;
homeButton.Color = Color3.fromRGB(0, 0, 0);
homeButton.Anchored = true;
homeButton.CanCollide = false;
homeButton.CastShadow = false;
homeButton.Parent = model;
local homeGui = Instance.new("SurfaceGui");
homeGui.Face = Enum.NormalId.Front;
homeGui.SizingMode = Enum.SurfaceGuiSizingMode.PixelsPerStud;
homeGui.PixelsPerStud = 500;
homeGui.Parent = homeButton;
local homeText = Instance.new("TextLabel");
homeText.BackgroundTransparency = 1;
homeText.Size = UDim2.new(1, 0, 1, 0);
homeText.Position = UDim2.new(0, 0, 0, 0);
homeText.Text = "Home";
homeText.TextTransparency = 1;
homeText.TextScaled = true;
homeText.FontFace = STYLE.Font;
homeText.TextColor3 = GetTheme().ButtonTextColor;
homeText.TextTransparency = GetTheme().ButtonTextTransparency;
homeText.Parent = homeGui;
local previousButton = Instance.new("Part");
previousButton.Name = "Previous";
previousButton.Size = BUTTON_SIZE;
previousButton.Position = Vector3.new(0.839, 0.933, -0.025);
previousButton.Material = Enum.Material.SmoothPlastic;
previousButton.Color = Color3.fromRGB(0, 0, 0);
previousButton.Anchored = true;
previousButton.CanCollide = false;
previousButton.CastShadow = false;
previousButton.Parent = model;
local previousGui = Instance.new("SurfaceGui");
previousGui.Name = "Text";
previousGui.Face = Enum.NormalId.Front;
previousGui.SizingMode = Enum.SurfaceGuiSizingMode.PixelsPerStud;
previousGui.PixelsPerStud = 363.636;
previousGui.Parent = previousButton;
previousText = Instance.new("TextLabel");
previousText.Name = "TextLabel";
previousText.Size = UDim2.new(1, 0, 1, 0);
previousText.Position = UDim2.new(0, 0, 0, 0);
previousText.BackgroundTransparency = 1;
previousText.Text = "<";
previousText.TextColor3 = GetTheme().ButtonTextColor;
previousText.TextTransparency = GetTheme().ButtonTextTransparency;
previousText.TextScaled = true;
previousText.TextStrokeTransparency = 1;
previousText.TextWrapped = true;
previousText.FontFace = STYLE.Font;
previousText.Parent = previousGui;
local nextButton = Instance.new("Part");
nextButton.Name = "Next";
nextButton.Size = BUTTON_SIZE;
nextButton.Position = Vector3.new(0.839, 0.631, -0.025);
nextButton.Material = Enum.Material.SmoothPlastic;
nextButton.Color = Color3.fromRGB(0, 0, 0);
nextButton.Anchored = true;
nextButton.CanCollide = false;
nextButton.CastShadow = false;
nextButton.Parent = model;
local nextGui = Instance.new("SurfaceGui");
nextGui.Name = "Text";
nextGui.Face = Enum.NormalId.Front;
nextGui.SizingMode = Enum.SurfaceGuiSizingMode.PixelsPerStud;
nextGui.PixelsPerStud = 363.636;
nextGui.Parent = nextButton;
nextText = Instance.new("TextLabel");
nextText.Name = "TextLabel";
nextText.Size = UDim2.new(1, 0, 1, 0);
nextText.Position = UDim2.new(0, 0, 0, 0);
nextText.BackgroundTransparency = 1;
nextText.Text = ">";
nextText.TextColor3 = GetTheme().ButtonTextColor;
nextText.TextTransparency = GetTheme().ButtonTextTransparency;
nextText.TextScaled = true;
nextText.TextStrokeTransparency = 1;
nextText.TextWrapped = true;
nextText.FontFace = STYLE.Font;
nextText.Parent = nextGui;
local function GetCurrentPageItems()
	local items = {};
	for _, data in ipairs(ActiveMenu) do
		table.insert(items, data);
	end
	local startIndex = ((CurrentPage - 1) * ItemsPerPage) + 1;
	local endIndex = math.min((startIndex + ItemsPerPage) - 1, #items);
	local pageItems = {};
	for i = startIndex, endIndex do
		table.insert(pageItems, items[i]);
	end
	return pageItems, #items;
end
local function GetPagedButtons()
	local pageItems, count = GetCurrentPageItems();
	return pageItems, count;
end
local buttonPositions = Themes[currentTheme].ButtonPositions;
local function GetMaxPages()
	local _, count = GetCurrentPageItems();
	return math.max(1, math.ceil(count / ItemsPerPage));
end
local function UpdateTopButtons()
	local visible = ActiveMenu ~= Home_Buttons;
	homeText.TextTransparency = (visible and 0) or 1;
	homeButton.Transparency = (visible and 0) or 1;
end
local function UpdatePageText()
	local theme = GetTheme();
	local maxPages = GetMaxPages();
	if previousText then
		if (currentTheme == 1) then
			previousText.Text = "<< Prev [" .. CurrentPage .. "]";
		elseif (currentTheme == 2) then
			local prevPage = ((CurrentPage <= 1) and maxPages) or (CurrentPage - 1);
			previousText.Text = "<---Page" .. prevPage .. "--";
		elseif (theme.PreviousText ~= nil) then
			previousText.Text = theme.PreviousText:gsub("%d+", tostring(CurrentPage));
		else
			previousText.Text = "";
		end
	end
	if nextText then
		if (currentTheme == 1) then
			nextText.Text = "[" .. CurrentPage .. "] >> Next";
		elseif (currentTheme == 2) then
			local nextPage = ((CurrentPage >= maxPages) and 1) or (CurrentPage + 1);
			nextText.Text = "--Page" .. nextPage .. "--->";
		elseif (theme.NextText ~= nil) then
			nextText.Text = theme.NextText:gsub("%d+", tostring(CurrentPage));
		else
			nextText.Text = "";
		end
	end
	if nameLabel then
		local menuName = theme.MenuName or ("Mertish's Holdable " .. version_);
		local pageFormat = theme.PageCount;
		if (currentTheme == 4) then
			nameLabel.RichText = true;
			nameLabel.Text = menuName .. ' <font color=\"rgb(120,120,120)\">[</font><font color=\"rgb(255,255,255)\">' .. CurrentPage .. '</font><font color=\"rgb(120,120,120)\">]</font>';
		else
			nameLabel.RichText = false;
			if pageFormat then
				pageFormat = pageFormat:gsub("%d+", tostring(CurrentPage));
				nameLabel.Text = menuName .. " " .. pageFormat;
			else
				nameLabel.Text = menuName;
			end
		end
	end
end
local function GetPCItems()
	local items, count = GetCurrentPageItems();
	return items, count;
end
local function UpdatePCSelection()
	if not pcMenu then
		return;
	end
	local items, count = GetPCItems();
	if (count <= 0) then
		pcSelected = 1;
		return;
	end
	if (pcSelected < 1) then
		pcSelected = count;
	elseif (pcSelected > count) then
		pcSelected = 1;
	end
	for _, v in ipairs(model:GetChildren()) do
		if (v:IsA("Part") and v:GetAttribute("ButtonName")) then
			local name = v:GetAttribute("ButtonName");
			local gui = v:FindFirstChildOfClass("SurfaceGui");
			local text = gui and gui:FindFirstChildOfClass("TextLabel");
			if text then
				local selected = false;
				for i, data in ipairs(items) do
					if ((data.Name == name) and (i == pcSelected)) then
						selected = true;
						break;
					end
				end
				if selected then
					text.Text = "> " .. name;
				else
					text.Text = name;
				end
			end
		end
	end
end
function BuildMenu()
	local theme = GetTheme();
	description.Visible = theme.MenuDescription ~= false;
	nameLabel.TextColor3 = theme.MenuTextColor;
	nameLabel.TextTransparency = theme.MenuTextTransparency;
	nameLabel.TextSize = theme.MenuNameTextSize or 60;
	description.TextColor3 = theme.MenuTextColor;
	description.TextTransparency = theme.MenuTextTransparency;
	previousText.TextColor3 = theme.NavTextColor;
	previousText.TextTransparency = 0;
	nextText.TextColor3 = theme.NavTextColor;
	nextText.TextTransparency = 0;
	if (theme.PreviousText and (theme.PreviousText ~= "")) then
		previousText.Text = theme.PreviousText;
	end
	if (theme.NextText and (theme.NextText ~= "")) then
		nextText.Text = theme.NextText;
	end
	textLabel.TextColor3 = theme.DisconnectTextColor;
	textLabel.TextTransparency = 0;
	homeText.TextColor3 = theme.SearchHomeTextColor;
	homeText.TextTransparency = (theme.MenuDescription and 0) or 1;
	panel.Color = theme.MenuColor1;
	nextButton.Color = theme.NavColor;
	previousButton.Color = theme.NavColor;
	homeButton.Color = theme.NavColor;
	disconnectButton.Color = theme.DisconnectColor;
	if theme.NextPosition then
		nextButton.Position = theme.NextPosition;
	end
	if theme.PreviousPosition then
		previousButton.Position = theme.PreviousPosition;
	end
	if theme.NextSize then
		nextButton.Size = theme.NextSize;
	end
	if theme.PreviousSize then
		previousButton.Size = theme.PreviousSize;
	end
	local baseSize = theme.PanelSize or normalPanelSize;
	local extra = 0;
	if longMenu then
		extra = (longMenuButtons - 4) * longMenuSpacing;
		ItemsPerPage = longMenuButtons;
		buttonPositions = GetLongButtonPositions(theme, extra);
	else
		ItemsPerPage = theme.ItemsPerPage;
		buttonPositions = theme.ButtonPositions;
	end
	local newHeight = baseSize.Y + extra;
	local S = MS();
	origin.Position = ORIGIN_POSITION * S;
	local panelOffsetY = -(newHeight - normalPanelSize.Y) / 2;
	panel.CFrame = model:GetPivot() * CFrame.new(0, panelOffsetY * S, 0);
	panel.Size = Vector3.new(baseSize.X, newHeight, baseSize.Z) * S;
	BUTTON_SIZE = theme.ButtonSize * S;
	local navOffset = (longMenu and (extra / 2)) or 0;
	disconnectButton.CFrame = panel.CFrame:ToWorldSpace(CFrame.new((theme.DisconnectPosition + Vector3.new(0, navOffset, 0)) * S));
	disconnectButton.Size = theme.DisconnectSize * S;
	nextButton.CFrame = panel.CFrame:ToWorldSpace(CFrame.new((theme.NextPosition + Vector3.new(0, navOffset, 0)) * S));
	nextButton.Size = theme.NextSize * S;
	previousButton.CFrame = panel.CFrame:ToWorldSpace(CFrame.new((theme.PreviousPosition + Vector3.new(0, navOffset, 0)) * S));
	previousButton.Size = theme.PreviousSize * S;
	homeButton.CFrame = panel.CFrame:ToWorldSpace(CFrame.new((theme.HomePosition + Vector3.new(0, navOffset, 0)) * S));
	homeButton.Size = theme.HomeSize * S;
	for _, v in ipairs(model:GetChildren()) do
		if (v:IsA("Part") and (v.Name ~= "Panel") and (v.Name ~= "Home") and (v.Name ~= "DisconnectButton") and (v.Name ~= "Next") and (v.Name ~= "Previous")) then
			v:Destroy();
		end
	end
	local pageItems = GetPagedButtons();
	local function CreateButton(name, data, pos)
		local buttonPart = Instance.new("Part");
		buttonPart.Name = name;
		buttonPart.Size = BUTTON_SIZE;
		buttonPart.CFrame = panel.CFrame:ToWorldSpace(CFrame.new(pos * S));
		buttonPart.Material = Enum.Material.SmoothPlastic;
		buttonPart.Color = theme.ButtonColor;
		buttonPart.Anchored = true;
		buttonPart.CanCollide = false;
		buttonPart.CastShadow = false;
		buttonPart.Parent = model;
		if (data.Toggleable and data.Toggled) then
			buttonPart.Color = theme.ToggleColor;
		end
		local gui = Instance.new("SurfaceGui");
		gui.Face = Enum.NormalId.Front;
		gui.SizingMode = Enum.SurfaceGuiSizingMode.PixelsPerStud;
		gui.PixelsPerStud = STYLE.PixelsPerStud;
		gui.Parent = buttonPart;
		local text = Instance.new("TextLabel");
		text.Size = UDim2.new(1, 0, 1, 0);
		text.BackgroundTransparency = 1;
		text.Text = (data.GetText and data.GetText()) or name;
		text.TextColor3 = theme.ButtonTextColor;
		text.TextTransparency = theme.ButtonTextTransparency;
		text.TextScaled = true;
		text.TextWrapped = true;
		text.FontFace = STYLE.Font;
		text.Parent = gui;
		if pcMenu then
			local items = GetPCItems();
			for i, v in ipairs(items) do
				if ((v.Name == name) and (i == pcSelected)) then
					text.Text = "> " .. text.Text;
					break;
				end
			end
		end
		buttonPart:SetAttribute("ButtonName", name);
		return buttonPart;
	end
	for i = 1, ItemsPerPage do
		local item = pageItems[i];
		if item then
			CreateButton(item.Name, item, buttonPositions[i]);
		end
	end
	UpdatePageText();
	UpdateTopButtons();
	for _, gui in ipairs(model:GetDescendants()) do
		if gui:IsA("SurfaceGui") then
			local base = gui:GetAttribute("BasePPS");
			if not base then
				base = gui.PixelsPerStud;
				gui:SetAttribute("BasePPS", base);
			end
			gui.PixelsPerStud = base / S;
		end
	end
end
function OpenMenu(menuTable)
	ActiveMenu = menuTable;
	CurrentPage = 1;
	local soundName = soundOrder[currentSoundIndex];
	local soundId = clicksounds[soundName];
	local sound = Instance.new("Sound");
	sound.SoundId = soundId;
	sound.Volume = 1;
	sound.Parent = game.Workspace;
	sound:Play();
	game:GetService("Debris"):AddItem(sound, 2);
	BuildMenu();
	UpdateTopButtons();
end
local function NextPage()
	local maxPages = GetMaxPages();
	if (CurrentPage >= maxPages) then
		CurrentPage = 1;
	else
		CurrentPage += 1
	end
	BuildMenu();
end
local function PrevPage()
	local maxPages = GetMaxPages();
	if (CurrentPage <= 1) then
		CurrentPage = maxPages;
	else
		CurrentPage -= 1
	end
	BuildMenu();
end
local function isTouching(part, pos)
	local size = part.Size / 2;
	local relative = part.CFrame:PointToObjectSpace(pos);
	return (math.abs(relative.X) <= size.X) and (math.abs(relative.Y) <= size.Y) and (math.abs(relative.Z) <= size.Z);
end
NotificationSystem = {};
NotificationSystem.Stack = {};
NotificationSystem.Max = 5;
NotificationSystem.Distance = 8;
NotificationSystem.Left = -1.5;
NotificationSystem.Down = -3.2;
NotificationSystem.Spacing = 0.55;
NotificationSystem.Enabled = false;
NotificationSystem.Create = function(message)
	if not NotificationSystem.Enabled then
		return;
	end
	local part = Instance.new("Part");
	part.Name = "MenuNotification";
	part.Size = Vector3.new(6, 0.5, 0.03);
	part.Anchored = true;
	part.CanCollide = false;
	part.CanTouch = false;
	part.CanQuery = false;
	part.Transparency = 1;
	part.CastShadow = false;
	part.Parent = workspace;
	local gui = Instance.new("SurfaceGui");
	gui.Name = "NotificationGui";
	gui.Face = Enum.NormalId.Front;
	gui.AlwaysOnTop = true;
	gui.LightInfluence = 0;
	gui.SizingMode = Enum.SurfaceGuiSizingMode.PixelsPerStud;
	gui.PixelsPerStud = 100;
	gui.Parent = part;
	local text = Instance.new("TextLabel");
	text.Size = UDim2.fromScale(1, 1);
	text.BackgroundTransparency = 1;
	text.Text = "";
	text.TextColor3 = Color3.new(1, 1, 1);
	text.TextScaled = false;
	text.TextWrapped = false;
	text.TextSize = 34;
	text.RichText = true;
	text.FontFace = Font.new("rbxasset://fonts/families/Arimo.json", Enum.FontWeight.Regular, Enum.FontStyle.Italic);
	text.TextXAlignment = Enum.TextXAlignment.Left;
	text.TextYAlignment = Enum.TextYAlignment.Center;
	text.Text = '<font color="rgb(0,170,0)">[ToolTip]</font> <font color="rgb(255,255,255)">' .. tostring(message) .. "</font>";
	text.Parent = gui;
	local notification = {part=part,text=text,message=tostring(message),born=os.clock()};
	table.insert(NotificationSystem.Stack, notification);
	if (#NotificationSystem.Stack > NotificationSystem.Max) then
		local old = table.remove(NotificationSystem.Stack, 1);
		if (old and old.part) then
			old.part:Destroy();
		end
	end
	task.delay(5, function()
		for i, v in ipairs(NotificationSystem.Stack) do
			if (v == notification) then
				table.remove(NotificationSystem.Stack, i);
				break;
			end
		end
		if notification.part then
			notification.part:Destroy();
		end
	end);
	return part;
end;
RS.RenderStepped:Connect(function()
	if not NotificationSystem.Enabled then
		return;
	end
	local t = (math.sin(((os.clock() % 2.4) / 2.4) * math.pi * 2) + 1) / 2;
	local color = GetTheme().MenuColor1:Lerp(GetTheme().MenuColor2, t);
	local r = math.floor((color.R * 255) + 0.5);
	local g = math.floor((color.G * 255) + 0.5);
	local b = math.floor((color.B * 255) + 0.5);
	for _, v in ipairs(NotificationSystem.Stack) do
		if (v.text and v.text.Parent) then
			v.text.Text = '<font color="rgb(0,170,0)">[ToolTip]</font> <font color="rgb(' .. r .. "," .. g .. "," .. b .. ')">' .. v.message .. "</font>";
		end
	end
end);
RS:BindToRenderStep("MenuNotifications", Enum.RenderPriority.Last.Value, function()
	local camera = workspace.CurrentCamera;
	if not camera then
		return;
	end
	local headVR = VRService:GetUserCFrame(Enum.UserCFrame.Head);
	local headCF = camera.CFrame * CFrame.new(headVR.Position * camera.HeadScale) * headVR.Rotation;
	for i, data in ipairs(NotificationSystem.Stack) do
		if (data.part and data.part.Parent) then
			data.part.CFrame = headCF * CFrame.new(NotificationSystem.Left, NotificationSystem.Down + ((i - 1) * NotificationSystem.Spacing), -NotificationSystem.Distance);
		end
	end
end);
RS.RenderStepped:Connect(function()
	if (not holding or (model.Parent ~= workspace)) then
		return;
	end
	local cursor = workspace:FindFirstChild("VR_Cursor_MENUUUU");
	if not cursor then
		return;
	end
	if ((os.clock() - lastClick) < 0.271) then
		return;
	end
	for _, obj in ipairs(model:GetChildren()) do
		if (obj:IsA("Part") and (obj.Name ~= "Panel") and (obj.Name ~= "Origin") and isTouching(obj, cursor.Position)) then
			lastClick = os.clock();
			local oldColor = obj.Color;
			if ((obj.Name ~= "Next") and (obj.Name ~= "Previous")) then
				obj.Color = Color3.fromRGB(255, 0, 0);
			end
			local sound = Instance.new("Sound");
			sound.SoundId = clicksounds[soundOrder[currentSoundIndex]];
			sound.Volume = 1;
			sound.Parent = obj;
			sound:Play();
			game:GetService("Debris"):AddItem(sound, 2);
			local data;
			for _, v in ipairs(GetCurrentPageItems()) do
				if (v.Name == obj.Name) then
					data = v;
					break;
				end
			end
			if (obj.Name == "Next") then
				NextPage();
			elseif (obj.Name == "Previous") then
				PrevPage();
			elseif ((obj.Name == "Home") and (ActiveMenu ~= Home_Buttons)) then
				OpenMenu(Home_Buttons);
			elseif (obj.Name == "DisconnectButton") then
				model:Destroy();
				local cursor = workspace:FindFirstChild("VR_Cursor_MENUUUU");
				if cursor then
					cursor:Destroy();
				end
				for _, v in ipairs(Menus) do
					for _, data in ipairs(v) do
						if (data.Enabled and data.Disable) then
							pcall(data.Disable);
						end
						data.Enabled = false;
						data.Toggled = false;
					end
				end
				holding = false;
				pcMenu = false;
			elseif data then
				local desc = data.Description or "";
				description.Text = data.Name .. ": " .. desc;
				if (desc ~= "") then
					NotificationSystem.Create(desc);
				else
					NotificationSystem.Create(data.Name);
				end
				if data.Toggleable then
					data.Enabled = not data.Enabled;
					data.Toggled = data.Enabled;
					if data.Enabled then
						if data.Enable then
							data.Enable();
						end
					elseif data.Disable then
						data.Disable();
					end
					obj.Color = (data.Enabled and GetTheme().ToggleColor) or GetTheme().ButtonColor;
				elseif data.Enable then
					data.Enable();
				end
			end
			task.delay(0.271, function()
				if (obj and obj.Parent and (obj.Name ~= "Next") and (obj.Name ~= "Previous")) then
					if (data and data.Toggleable) then
						obj.Color = (data.Enabled and GetTheme().ToggleColor) or GetTheme().ButtonColor;
					else
						obj.Color = oldColor;
					end
				end
			end);
			return;
		end
	end
end);
UIS.InputBegan:Connect(function(i, g)
	if g then
		return;
	end
	if (i.KeyCode == Enum.KeyCode.Q) then
		if holding then
			return;
		end
		pcMenu = true;
		pcSelected = 1;
		holding = true;
		model.Parent = workspace;
		local camera = workspace.CurrentCamera;
		if camera then
			model:PivotTo(camera.CFrame * CFrame.new(0, 0, -3 * MS()) * CFrame.Angles(0, math.rad(180), 0));
		end
		BuildMenu();
		UpdatePCSelection();
	end
	if (i.KeyCode == Enum.KeyCode.P) then
		if pcMenu then
			pcMenu = false;
			holding = false;
			model.Parent = Lighting;
			local cursor = workspace:FindFirstChild("VR_Cursor_MENUUUU");
			if cursor then
				cursor:Destroy();
			end
		end
	end
	if not pcMenu then
		return;
	end
	if ((i.KeyCode == Enum.KeyCode.W) or (i.KeyCode == Enum.KeyCode.Up)) then
		local now = os.clock();
		if ((now - pcLastMove) >= pcMoveDelay) then
			pcLastMove = now;
			local _, count = GetPCItems();
			if (count > 0) then
				pcSelected -= 1
				if (pcSelected < 1) then
					pcSelected = count;
				end
				BuildMenu();
			end
		end
	elseif ((i.KeyCode == Enum.KeyCode.S) or (i.KeyCode == Enum.KeyCode.Down)) then
		local now = os.clock();
		if ((now - pcLastMove) >= pcMoveDelay) then
			pcLastMove = now;
			local _, count = GetPCItems();
			if (count > 0) then
				pcSelected += 1
				if (pcSelected > count) then
					pcSelected = 1;
				end
				BuildMenu();
			end
		end
	elseif (i.KeyCode == Enum.KeyCode.Left) then
		PrevPage();
		pcSelected = 1;
		BuildMenu();
	elseif (i.KeyCode == Enum.KeyCode.Right) then
		NextPage();
		pcSelected = 1;
		BuildMenu();
	elseif (i.KeyCode == Enum.KeyCode.Return) then
		local items = GetPCItems();
		local data = items[pcSelected];
		if data then
			if data.Toggleable then
				data.Enabled = not data.Enabled;
				data.Toggled = data.Enabled;
				if data.Enabled then
					if data.Enable then
						data.Enable();
					end
				elseif data.Disable then
					data.Disable();
				end
			elseif data.Enable then
				data.Enable();
			end
			BuildMenu();
		end
	end
end);
UIS.InputEnded:Connect(function(i)
	if ((i.KeyCode == Enum.KeyCode.Q) and pcMenu) then
		pcMenu = false;
		holding = false;
		MenuFall();
		local cursor = workspace:FindFirstChild("VR_Cursor_MENUUUU");
		if cursor then
			cursor:Destroy();
		end
	end
end);
BuildMenu();