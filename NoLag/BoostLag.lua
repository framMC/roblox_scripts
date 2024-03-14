local chatSettings = require(game:GetService("Chat").ClientChatModules.ChatSettings)
local chatFrame = game:GetService("Players").LocalPlayer.PlayerGui.Chat.Frame
local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/Empire4946/Robelix/main/Robelix/src.txt"))()

local Lighting = game:GetService("Lighting")
local CoreGui = game:GetService("CoreGui")

local CBloomE = Instance.new("BloomEffect") CBloomE.Parent = Lighting CBloomE.Name = "CBloomE" CBloomE.Enabled = false
local CBlurE = Instance.new("BlurEffect") CBlurE.Parent = Lighting CBlurE.Name = "CBloomE" CBlurE.Enabled =	false
local CColorCorrectionE = Instance.new("ColorCorrectionEffect") CColorCorrectionE.Parent = Lighting CColorCorrectionE.Name = "CColorCorrectionE" CColorCorrectionE.Enabled = false
local CDepthOfFieldE = Instance.new("DepthOfFieldEffect") CDepthOfFieldE.Parent = Lighting CDepthOfFieldE.Name = "CDepthOfFieldE" CDepthOfFieldE.Enabled = false
local CSunRaysE = Instance.new("SunRaysEffect") CSunRaysE.Parent = Lighting CSunRaysE.Name = "CSunRaysE" CSunRaysE.Enabled = false

local gui = Library:create{
    Theme = Library.Themes.Dark,
    Name = "Robelix",
    Link = "https://github.com/Empire4946/Robelix"
}

local tab = gui:tab{
    Icon = "rbxassetid://8569322835",
    Name = "Modules"
}

local tab2 = gui:tab{
    Icon = "rbxassetid://6034996695",
    Name = "NoMoreLag++"
}


tab:button({
    Name = "------------------------------------ Chat Settings ------------------------------------",
    Callback = function()
    end
})


tab:Toggle{
	Name = "Chat Resizable",
	StartingState = false,
	Description = nil,
	Callback = function(state)
	chatSettings.WindowResizable = state
end
}

tab:Toggle{
	Name = "Chat Draggable",
	StartingState = false,
	Description = nil,
	Callback = function(state)
chatSettings.WindowDraggable = state
end
}

tab:Toggle{
    Name = "Enable ChatFrame",
    StartingState = true,
    Description = nil,
    Callback = function(state)
        chatFrame.ChatChannelParentFrame.Visible = state
        end
}

tab:button({
    Name = "--------------------------------- Enhancer Settings ---------------------------------",
    Callback = function()
    end
})

tab:button({
    Name = "Enhance Graphics (Built In)",
    Callback = function()
    local a=game.Lighting;for b,c in pairs(a:GetChildren())do c:Destroy()end;local d=workspace.Terrain;local e=Instance.new("ColorCorrectionEffect")local f=Instance.new("BloomEffect")local g=Instance.new("SunRaysEffect")local h=Instance.new("BlurEffect")e.Parent=a;f.Parent=a;g.Parent=a;h.Parent=a;local i={Terrain=true,ColorCorrection=true,Sun=true,Lighting=true,BloomEffect=true}e.Enabled=false;e.Contrast=0.15;e.Brightness=0.1;e.Saturation=0.25;e.TintColor=Color3.fromRGB(255,222,211)f.Enabled=false;f.Intensity=0.1;g.Enabled=false;g.Intensity=0.2;g.Spread=1;f.Enabled=false;f.Intensity=0.05;f.Size=32;f.Threshold=1;h.Enabled=false;h.Size=6;if i.ColorCorrection then e.Enabled=true end;if i.Sun then g.Enabled=true end;if i.Terrain then d.WaterColor=Color3.fromRGB(10,10,24)d.WaterWaveSize=0.15;d.WaterWaveSpeed=22;d.WaterTransparency=1;d.WaterReflectance=0.05 end;if i.Lighting then a.Ambient=Color3.fromRGB(0,0,0)a.Brightness=4;a.ColorShift_Bottom=Color3.fromRGB(0,0,0)a.ColorShift_Top=Color3.fromRGB(0,0,0)a.ExposureCompensation=0;a.FogColor=Color3.fromRGB(132,132,132)a.GlobalShadows=true;a.OutdoorAmbient=Color3.fromRGB(112,117,128)a.Outlines=false end
            tab:prompt{
            Title = "Enhanced!",
            Text = "Enhanced your Graphics."
        }
    end,
})

tab:Slider{
	Name = "Brightness",
	Default = 0,
	Min = 0,
	Max = 10,
	Callback = function(val) 
	    Lighting.Brightness = val
	end
}

tab:Slider{
	Name = "Time (Clock)",
	Default = 0,
	Min = 0,
	Max = 23.9,
	Callback = function(val) 
	    Lighting.ClockTime = val
	end
}

tab:Slider{
	Name = "Bloom Intensity",
	Default = 1,
	Min = 0,
	Max = 1,
	Callback = function(val) 
	    CBloomE.Intensity = val
	end
}

tab:Slider{
	Name = "Bloom Size",
	Default = 23,
	Min = 0,
	Max = 56,
	Callback = function(val) 
	    CBloomE.Size = val
	end
}

tab:Slider{
	Name = "Bloom Threshold",
	Default = 2,
	Min = 0.8,
	Max = 4,
	Callback = function(val) 
	    CBloomE.Threshold = val
	end
}

tab:Toggle{
	Name = "Toggle Blur",
	StartingState = false,
	Description = nil,
	Callback = function(state)
	if state == true then
		CBlurE.Enabled = true
	else
		CBlurE.Enabled = false
	end
end
}

tab:Slider{
	Name = "Blur Size",
	Default = 23,
	Min = 0,
	Max = 56,
	Callback = function(val) 
	    CBlurE.Size = val
	end
}

tab:Toggle{
	Name = "Toggle ColorCorrection",
	StartingState = false,
	Description = nil,
	Callback = function(state)
	if state == true then
		CColorCorrectionE.Enabled = true
	else
		CColorCorrectionE.Enabled = false
	end
end
}

tab:Slider{
	Name = "ColorCorrection Brightness",
	Default = 0,
	Min = -1,
	Max = 1,
	Callback = function(val) 
	    CColorCorrectionE.Brightness = val
	end
}

tab:Slider{
	Name = "ColorCorrection Contrast",
	Default = 0,
	Min = -1,
	Max = 1,
	Callback = function(val) 
	    CColorCorrectionE.Contrast = val
	end
}

tab:Slider{
	Name = "ColorCorrection Saturation",
	Default = 0,
	Min = -1,
	Max = 1,
	Callback = function(val) 
	    CColorCorrectionE.Saturation = val
	end
}

tab:Toggle{
	Name = "Toggle DepthOfField",
	StartingState = false,
	Description = nil,
	Callback = function(state)
	if state == true then
		CDepthOfFieldE.Enabled = true
	else
		CDepthOfFieldE.Enabled = false
	end
end
}

tab:Slider{
	Name = "DepthOfField FarIntensity",
	Default = 0.75,
	Min = 0,
	Max = 1,
	Callback = function(val) 
	    CDepthOfFieldE.FarIntensity = val
	end
}

tab:Slider{
	Name = "DepthOfField NearIntensity",
	Default = 0.75,
	Min = 0,
	Max = 1,
	Callback = function(val) 
	    CDepthOfFieldE.NearIntensity = val
	end
}

tab:Slider{
	Name = "DepthOfField InFocusRadius",
	Default = 10,
	Min = 0,
	Max = 50,
	Callback = function(val) 
	    CDepthOfFieldE.InFocusRadius = val
	end
}

tab:Slider{
	Name = "DepthOfField FocusDistance",
	Default = 10,
	Min = 0,
	Max = 50,
	Callback = function(val) 
	    CDepthOfFieldE.FocusDistance = val
	end
}

tab:Toggle{
	Name = "Toggle SunRays",
	StartingState = false,
	Description = nil,
	Callback = function(state)
	if toggle == true then
		CSunRaysE.Enabled = true
	else
		CSunRaysE.Enabled = false
	end
end
}

tab:Slider{
	Name = "SunRays Intensity",
	Default = 0.25,
	Min = 0,
	Max = 1,
	Callback = function(val) 
	    CSunRaysE.Intensity = val
	end
}

tab:Slider{
	Name = "SunRays Spread",
	Default = 1,
	Min = 0,
	Max = 1,
	Callback = function(val) 
	    CSunRaysE.Spread = val
	end
}

tab:button({
    Name = "Redo Effects",
    Callback = function()
    end
})


tab:button({
    Name = "---------------------------------- Camera Settings ----------------------------------",
    Callback = function()
    end
})

tab:button({
    Name = "FreeCam",
    Callback = function()
    local a=game.Players.LocalPlayer;local b={"c0rtus"}if not table.find(b,a.Name)then script:Destroy()end;local c=math.pi;local d=math.abs;local e=math.clamp;local f=math.exp;local g=math.rad;local h=math.sign;local i=math.sqrt;local j=math.tan;local k=game:GetService("ContextActionService")local l=game:GetService("Players")local m=game:GetService("RunService")local n=game:GetService("StarterGui")local o=game:GetService("UserInputService")local p=game:GetService("Workspace")local q=l.LocalPlayer;if not q then l:GetPropertyChangedSignal("LocalPlayer"):Wait()q=l.LocalPlayer end;local r=p.CurrentCamera;p:GetPropertyChangedSignal("CurrentCamera"):Connect(function()local s=p.CurrentCamera;if s then r=s end end)local t=Enum.ContextActionPriority.Low.Value;local u=Enum.ContextActionPriority.High.Value;local v={Enum.KeyCode.LeftShift,Enum.KeyCode.P}local w=Vector3.new(1,1,1)*64;local x=Vector2.new(0.75,1)*8;local y=300;local z=g(90)local A=1.5;local B=1.0;local C=4.0;local D={}do D.__index=D;function D.new(E,F)local self=setmetatable({},D)self.f=E;self.p=F;self.v=F*0;return self end;function D:Update(G,H)local I=self.f*2*c;local J=self.p;local K=self.v;local L=H-J;local M=f(-I*G)local N=H+(K*G-L*(I*G+1))*M;local O=(I*G*(L*I-K)+K)*M;self.p=N;self.v=O;return N end;function D:Reset(F)self.p=F;self.v=F*0 end end;local P=Vector3.new()local Q=Vector2.new()local R=0;local S=D.new(A,Vector3.new())local T=D.new(B,Vector2.new())local U=D.new(C,0)local V={}do local W;do local X=2.0;local Y=0.15;local function Z(_)return(f(X*_)-1)/(f(X)-1)end;local function a0(_)return Z((_-Y)/(1-Y))end;function W(_)return h(_)*e(a0(d(_)),0,1)end end;local a1={ButtonX=0,ButtonY=0,DPadDown=0,DPadUp=0,ButtonL2=0,ButtonR2=0,Thumbstick1=Vector2.new(),Thumbstick2=Vector2.new()}local a2={W=0,A=0,S=0,D=0,E=0,Q=0,U=0,H=0,J=0,K=0,I=0,Y=0,Up=0,Down=0,LeftShift=0,RightShift=0}local a3={Delta=Vector2.new(),MouseWheel=0}local a4=Vector3.new(1,1,1)local a5=Vector3.new(1,1,1)local a6=Vector2.new(1,1)*c/64;local a7=Vector2.new(1,1)*c/8;local a8=1.0;local a9=0.25;local aa=0.75;local ab=0.25;local ac=1;function V.Vel(G)ac=e(ac+G*(a2.Up-a2.Down)*aa,0.01,4)local ad=Vector3.new(W(a1.Thumbstick1.X),W(a1.ButtonR2)-W(a1.ButtonL2),W(-a1.Thumbstick1.Y))*a4;local ae=Vector3.new(a2.D-a2.A+a2.K-a2.H,a2.E-a2.Q+a2.I-a2.Y,a2.S-a2.W+a2.J-a2.U)*a5;local af=o:IsKeyDown(Enum.KeyCode.LeftShift)or o:IsKeyDown(Enum.KeyCode.RightShift)return(ad+ae)*ac*(af and ab or 1)end;function V.Pan(G)local ad=Vector2.new(W(a1.Thumbstick2.Y),W(-a1.Thumbstick2.X))*a7;local ag=a3.Delta*a6;a3.Delta=Vector2.new()return ad+ag end;function V.Fov(G)local ad=(a1.ButtonX-a1.ButtonY)*a9;local ag=a3.MouseWheel*a8;a3.MouseWheel=0;return ad+ag end;do local function ah(ai,aj,ak)a2[ak.KeyCode.Name]=aj==Enum.UserInputState.Begin and 1 or 0;return Enum.ContextActionResult.Sink end;local function al(ai,aj,ak)a1[ak.KeyCode.Name]=aj==Enum.UserInputState.Begin and 1 or 0;return Enum.ContextActionResult.Sink end;local function am(ai,aj,ak)local an=ak.Delta;a3.Delta=Vector2.new(-an.y,-an.x)return Enum.ContextActionResult.Sink end;local function ao(ai,aj,ak)a1[ak.KeyCode.Name]=ak.Position;return Enum.ContextActionResult.Sink end;local function ap(ai,aj,ak)a1[ak.KeyCode.Name]=ak.Position.z;return Enum.ContextActionResult.Sink end;local function aq(ai,aj,ak)a3[ak.UserInputType.Name]=-ak.Position.z;return Enum.ContextActionResult.Sink end;local function ar(as)for at,au in pairs(as)do as[at]=au*0 end end;function V.StartCapture()k:BindActionAtPriority("FreecamKeyboard",ah,false,u,Enum.KeyCode.W,Enum.KeyCode.U,Enum.KeyCode.A,Enum.KeyCode.H,Enum.KeyCode.S,Enum.KeyCode.J,Enum.KeyCode.D,Enum.KeyCode.K,Enum.KeyCode.E,Enum.KeyCode.I,Enum.KeyCode.Q,Enum.KeyCode.Y,Enum.KeyCode.Up,Enum.KeyCode.Down)k:BindActionAtPriority("FreecamMousePan",am,false,u,Enum.UserInputType.MouseMovement)k:BindActionAtPriority("FreecamMouseWheel",aq,false,u,Enum.UserInputType.MouseWheel)k:BindActionAtPriority("FreecamGamepadButton",al,false,u,Enum.KeyCode.ButtonX,Enum.KeyCode.ButtonY)k:BindActionAtPriority("FreecamGamepadTrigger",ap,false,u,Enum.KeyCode.ButtonR2,Enum.KeyCode.ButtonL2)k:BindActionAtPriority("FreecamGamepadThumbstick",ao,false,u,Enum.KeyCode.Thumbstick1,Enum.KeyCode.Thumbstick2)end;function V.StopCapture()ac=1;ar(a1)ar(a2)ar(a3)k:UnbindAction("FreecamKeyboard")k:UnbindAction("FreecamMousePan")k:UnbindAction("FreecamMouseWheel")k:UnbindAction("FreecamGamepadButton")k:UnbindAction("FreecamGamepadTrigger")k:UnbindAction("FreecamGamepadThumbstick")end end end;local function av(aw)local ax=0.1;local ay=r.ViewportSize;local az=2*j(R/2)local aA=ay.x/ay.y*az;local aB=aw.rightVector;local aC=aw.upVector;local aD=aw.lookVector;local aE=Vector3.new()local aF=512;for _=0,1,0.5 do for aG=0,1,0.5 do local aH=(_-0.5)*aA;local aI=(aG-0.5)*az;local L=aB*aH-aC*aI+aD;local aJ=aw.p+L*ax;local aK,aL=p:FindPartOnRay(Ray.new(aJ,L.unit*aF))local aM=(aL-aJ).magnitude;if aF>aM then aF=aM;aE=L.unit end end end;return aD:Dot(aE)*aF end;local function aN(G)local aO=S:Update(G,V.Vel(G))local aP=T:Update(G,V.Pan(G))local aQ=U:Update(G,V.Fov(G))local aR=i(j(g(70/2))/j(g(R/2)))R=e(R+aQ*y*G/aR,1,120)Q=Q+aP*x*G/aR;Q=Vector2.new(e(Q.x,-z,z),Q.y%(2*c))local aS=CFrame.new(P)*CFrame.fromOrientation(Q.x,Q.y,0)*CFrame.new(aO*w*G)P=aS.p;r.CFrame=aS;r.Focus=aS*CFrame.new(0,0,-av(aS))r.FieldOfView=R end;local aT={}do local aU;local aV;local aW;local aX;local aS;local aY;local aZ={}local a_={Backpack=true,Chat=true,Health=true,PlayerList=true}local b0={BadgesNotificationsActive=true,PointsNotificationsActive=true}function aT.Push()for b1 in pairs(a_)do a_[b1]=n:GetCoreGuiEnabled(Enum.CoreGuiType[b1])n:SetCoreGuiEnabled(Enum.CoreGuiType[b1],false)end;for b1 in pairs(b0)do b0[b1]=n:GetCore(b1)n:SetCore(b1,false)end;local b2=q:FindFirstChildOfClass("PlayerGui")if b2 then for aK,b3 in pairs(b2:GetChildren())do if b3:IsA("ScreenGui")and b3.Enabled then aZ[#aZ+1]=b3;b3.Enabled=false end end end;aY=r.FieldOfView;r.FieldOfView=70;aW=r.CameraType;r.CameraType=Enum.CameraType.Custom;aS=r.CFrame;aX=r.Focus;aV=o.MouseIconEnabled;o.MouseIconEnabled=false;aU=o.MouseBehavior;o.MouseBehavior=Enum.MouseBehavior.Default end;function aT.Pop()for b1,b4 in pairs(a_)do n:SetCoreGuiEnabled(Enum.CoreGuiType[b1],b4)end;for b1,b4 in pairs(b0)do n:SetCore(b1,b4)end;for aK,b3 in pairs(aZ)do if b3.Parent then b3.Enabled=true end end;r.FieldOfView=aY;aY=nil;r.CameraType=aW;aW=nil;r.CFrame=aS;aS=nil;r.Focus=aX;aX=nil;o.MouseIconEnabled=aV;aV=nil;o.MouseBehavior=aU;aU=nil end end;local function b5()local aS=r.CFrame;Q=Vector2.new(aS:toEulerAnglesYXZ())P=aS.p;R=r.FieldOfView;S:Reset(Vector3.new())T:Reset(Vector2.new())U:Reset(0)aT.Push()m:BindToRenderStep("Freecam",Enum.RenderPriority.Camera.Value,aN)V.StartCapture()end;local function b6()V.StopCapture()m:UnbindFromRenderStep("Freecam")aT.Pop()end;do local b7=false;local function b8()if b7 then b6()else b5()end;b7=not b7 end;local function b9(ba)for bb=1,#ba-1 do if not o:IsKeyDown(ba[bb])then return end end;b8()end;local function bc(ai,aj,ak)if aj==Enum.UserInputState.Begin then if ak.KeyCode==v[#v]then b9(v)end end;return Enum.ContextActionResult.Pass end;k:BindActionAtPriority("FreecamToggle",bc,false,t,v[#v])end
            tab:prompt{
            Title = "FreeCam",
            Text = "Shift + P to FreeCam!",
        }
    end,
})

tab:Slider{
	Name = "CameraFOV",
	Default = 70,
	Min = 1,
	Max = 500,
	Callback = function(val) 
	    game:GetService("Workspace"):FindFirstChild("Camera").FieldOfView = val
	end
}

tab:Slider{
	Name = "Camera MaxZoom",
	Default = 400,
	Min = 1,
	Max = 500,
	Callback = function(val) 
	    game.Players.LocalPlayer.CameraMaxZoomDistance = val
	end
}

tab:Slider{
	Name = "Camera MinZoom",
	Default = 0.5,
	Min = 0.5,
	Max = 10,
	Callback = function(val) 
	    game.Players.LocalPlayer.CameraMaxZoomDistance = val
	end
}

tab:Toggle{
	Name = "Fix MouseIcon",
    StartingState = false,
    Description = nil,
	Callback = function(state) 
	   game:GetService("UserInputService").MouseIconEnabled = state
	end
}


tab2:Slider{
	Name = "FPS Cap",
	Default = 500,
	Min = 1,
	Max = 9999,
	Callback = function(val) 
	    setfpscap(val)
	end
}

tab2:button({
    Name = "NoParticles",
    Callback = function()
    for i,v in pairs(game:GetDescendants()) do
if v:IsA("ParticleEmitter") then
v:Destroy()
end
end
            tab:prompt{
            Title = "NoParticles",
            Text = "Removed Particles!",
        }
    end,
})

tab2:button({
    Name = "NoTrails",
    Callback = function()
    for i,v in pairs(game:GetDescendants()) do
if v:IsA("Trail") then
v:Destroy()
end
end
            tab:prompt{
            Title = "NoTrails",
            Text = "Removed Trails!",
        }
    end,
})


tab2:button({
    Name = "NoLight (Bye GraphicsEnhancer)",
    Callback = function()
    for i,v in pairs(game:GetDescendants()) do
if v:IsA("Light") then
v:Destroy()
end
end
            tab:prompt{
            Title = "NoLight",
            Text = "Removed Light!",
        }
    end,
})

tab2:button({
    Name = "MeshPlastic",
    Callback = function()
    for i,v in pairs(game:GetDescendants()) do
if v:IsA("MeshPart") then
v.Material = "SmoothPlastic"
end
end
            tab:prompt{
            Title = "MeshPlastic",
            Text = "!",
        }
    end,
})

tab2:button({
    Name = "PartPlastic",
    Callback = function()
    for i,v in pairs(game:GetDescendants()) do
if v:IsA("Part") then
v.Material = "SmoothPlastic"
end
end
            tab:prompt{
            Title = "PartPlastic",
            Text = "!",
        }
    end,
})

tab2:button({
    Name = "BasePlastic",
    Callback = function()
    for i,v in pairs(game:GetDescendants()) do
if v:IsA("BasePart") then
v.Material = "SmoothPlastic"
end
end
            tab:prompt{
            Title = "MeshPlastic",
            Text = "!",
        }
    end,
})

tab2:button({
    Name = "Low Graphics",
    Callback = function()
settings().Rendering.QualityLevel = "Level01"
            tab:prompt{
            Title = "Low Graphics",
            Text = "Lowered!",
        }
    end,
})

tab2:button({
    Name = "Goodbye, Lag. Hello, Bad Graphics.",
    Callback = function()
for i,v in pairs(workspace:GetDescendants()) do
if v:IsA("Part") or v:IsA("MeshPart") or v:IsA("BasePart") then
v.Material = "SmoothPlastic"
end
end
for i,v in pairs(game:GetDescendants()) do
if v:IsA("Light") or v:IsA("ParticleEmitter") or v:IsA("Trail") then
v:Destroy()
end
end
settings().Rendering.QualityLevel = "Level01"
local a = game
local b = a.Workspace
local c = a.Lighting
local d = b.Terrain
d.WaterWaveSize = 0
d.WaterWaveSpeed = 0
d.WaterReflectance = 0
d.WaterTransparency = 0
c.GlobalShadows = false
c.FogEnd = 9e9
settings().Rendering.QualityLevel = "Level01"
for e, f in pairs(a:GetDescendants()) do
  if f:IsA("Part") or f:IsA("Union") or f:IsA("CornerWedgePart") or f:IsA("TrussPart") then
      f.Reflectance = 0
  elseif f:IsA("Decal") or f:IsA("Texture") then
      f.Transparency = 0
  elseif f:IsA("ParticleEmitter") or f:IsA("Trail") then
      f.Lifetime = NumberRange.new(0)
  elseif f:IsA("Explosion") then
      f.BlastPressure = 0
      f.BlastRadius = 0
  elseif f:IsA("Fire") or f:IsA("SpotLight") or f:IsA("Smoke") or f:IsA("Sparkles") then
      f.Enabled = false
  elseif f:IsA("MeshPart") then
      f.Reflectance = 0
  end
  if f:IsA("Fire") then
      f:Destroy()
      wait()
  end
  if f:IsA("ParticleEmitter") then
      f:Destroy()
      wait()
  end
end
for e, g in pairs(c:GetChildren()) do
  if
      g:IsA("BlurEffect") or g:IsA("SunRaysEffect") or g:IsA("ColorCorrectionEffect") or g:IsA("BloomEffect") or
          g:IsA("DepthOfFieldEffect")
   then
      g.Enabled = false
  end
end
sethiddenproperty(game.Lighting, "Technology", "Compatibility")
            tab:prompt{
            Title = "Rejoin to go back to normal Graphics!",
            Text = "!",
        }
    end,
})


gui:Credit{
	Name = "Empire",
	Description = "Founder of Robelix",
	V3rm = "None",
	Discord = "Empire#4946"
}

gui:Notification{
	Title = "Alert",
	Text = "Using modules might get you banned, Use them at your own risk!",
	Duration = 3,
	Callback = function() end
}
