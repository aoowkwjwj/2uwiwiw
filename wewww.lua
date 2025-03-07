
game:GetService("StarterGui"):SetCore("SendNotification",{
	Title = "WewHub Premium",
	Text = "Loading Ui....",
	Icon = ""
})

function GetUi() 
    if getgenv().Tvk then
    if game.CoreGui:FindFirstChild("WEW GUI") then
        for a, v in ipairs(game.CoreGui:GetChildren()) do
            if v.Name == "WEW GUI" then
                v:Destroy()
            end
        end
    end
end
getgenv().Tvk = true
getgenv().Chon = true

local oldcolor = {
    ["Border Color"] = Color3.fromRGB(209, 23, 23),
    ["Click Effect Color"] = Color3.fromRGB(230, 230, 230),
    ["Setting Icon Color"] = Color3.fromRGB(230, 230, 230),
    ["Logo Image"] = "rbxassetid://126706776122280",
    ["Search Icon Color"] = Color3.fromRGB(255, 255, 255),
    ["Search Icon Highlight Color"] = Color3.fromRGB(209, 23, 23),
    ["GUI Text Color"] = Color3.fromRGB(230, 230, 230),
    ["Text Color"] = Color3.fromRGB(255, 255, 255),
    ["Placeholder Text Color"] = Color3.fromRGB(178, 178, 178),
    ["Title Text Color"] = Color3.fromRGB(0, 0, 0),
    ["Background 1 Color"] = Color3.fromRGB(43, 43, 43),
    ["Background 1 Transparency"] = 0,
    ["Background 2 Color"] = Color3.fromRGB(90, 90, 90),
    ["Background 3 Color"] = Color3.fromRGB(53, 53, 53),
    ["Background Image"] = "",
    ["Page Selected Color"] = Color3.fromRGB(209, 23, 23),
    ["Section Text Color"] = Color3.fromRGB(209, 23, 23),
    ["Section Underline Color"] = Color3.fromRGB(209, 23, 23),
    ["Toggle Border Color"] = Color3.fromRGB(209, 23, 23),
    ["Toggle Checked Color"] = Color3.fromRGB(230, 230, 230),
    ["Toggle Desc Color"] = Color3.fromRGB(185, 185, 185),
    ["Button Color"] = Color3.fromRGB(209, 23, 23),
    ["Label Color"] = Color3.fromRGB(209, 23, 23),
    ["Dropdown Icon Color"] = Color3.fromRGB(230, 230, 230),
    ["Dropdown Selected Color"] = Color3.fromRGB(209, 23, 23),
    ["Textbox Highlight Color"] = Color3.fromRGB(209, 23, 23),
    ["Box Highlight Color"] = Color3.fromRGB(209, 23, 23),
    ["Slider Line Color"] = Color3.fromRGB(75, 75, 75),
    ["Slider Highlight Color"] = Color3.fromRGB(209, 23, 23),
    ["Tween Animation 1 Speed"] = 0.25,
    ["Tween Animation 2 Speed"] = 0.5,
    ["Tween Animation 3 Speed"] = 0.1
}

local b = {
    ["Border Color"] = Color3.fromRGB(255, 255, 255),
    ["Click Effect Color"] = Color3.fromRGB(230, 230, 230),
    ["Setting Icon Color"] = Color3.fromRGB(230, 230, 230),
    ["Logo Image"] = "rbxassetid://126706776122280",
    ["Search Icon Color"] = Color3.fromRGB(255, 255, 255),
    ["Search Icon Highlight Color"] = Color3.fromRGB(209, 23, 23),
    ["GUI Text Color"] = Color3.fromRGB(230, 230, 230),
    ["Text Color"] = Color3.fromRGB(230, 230, 230),
    ["Placeholder Text Color"] = Color3.fromRGB(178, 178, 178),
    ["Title Text Color"] = Color3.fromRGB(255, 255, 255),
    ["Background Main Color"] = Color3.fromRGB(0, 0, 0),
    ["Background 1 Color"] = Color3.fromRGB(43, 43, 43),
    ["Background 1 Transparency"] = 0,
    ["Background 2 Color"] = Color3.fromRGB(90, 90, 90),
    ["Background 3 Color"] = Color3.fromRGB(53, 53, 53),
    ["Background Image"] = "",
    ["Page Selected Color"] = Color3.fromRGB(209, 23, 23),
    ["Section Text Color"] = Color3.fromRGB(209, 23, 23),
    ["Section Underline Color"] = Color3.fromRGB(209, 23, 23),
    ["Toggle Border Color"] = Color3.fromRGB(209, 23, 23),
    ["Toggle Checked Color"] = Color3.fromRGB(230, 230, 230),
    ["Toggle Desc Color"] = Color3.fromRGB(185, 185, 185),
    ["Button Color"] = Color3.fromRGB(209, 23, 23),
    ["Button Text Color"] = Color3.fromRGB(255, 255, 255),
    ["Label Color"] = Color3.fromRGB(209, 23, 23),
    ["Label Text Color"] = Color3.fromRGB(255, 255, 255),
    ["Dropdown Icon Color"] = Color3.fromRGB(230, 230, 230),
    ["Dropdown Selected Color"] = Color3.fromRGB(209, 23, 23),
    ["Textbox Highlight Color"] = Color3.fromRGB(209, 23, 23),
    ["Box Highlight Color"] = Color3.fromRGB(209, 23, 23),
    ["Slider Line Color"] = Color3.fromRGB(75, 75, 75),
    ["Slider Highlight Color"] = Color3.fromRGB(209, 23, 23),
    ["Tween Animation 1 Speed"] = 0.25,
    ["Tween Animation 2 Speed"] = 0.5,
    ["Tween Animation 3 Speed"] = 0.1
}

local c = {}
for d, v in pairs(b) do
    c[d] = {}
end
local e = {}
for d, v in pairs(b) do
    e[d] = {Color = v, Rainbow = false, Breathing = {Toggle = false, Color1 = Color3.new(), Color2 = Color3.new()}}
end
local function f(g)
    return {math.floor(g.r * 255), math.floor(g.g * 255), math.floor(g.b * 255), "Dit"}
end
function CorrectTable(h)
    local i = {}
    for d, v in pairs(h) do
        if typeof(v) == "Color3" then
            i[d] = f(v)
        elseif type(v) == "table" then
            i[d] = CorrectTable(v)
        else
            i[d] = v
        end
    end
    return i
end
function DCorrectTable(h)
    local i = {}
    for d, v in pairs(h) do
        if type(v) == "table" and v[4] == "Dit" then
            i[d] = Color3.fromRGB(unpack(v))
        elseif type(v) == "table" then
            i[d] = DCorrectTable(v)
        else
            i[d] = v
        end
    end
    return i
end
local j = game:GetService("HttpService")
local k = "!CustomUI.json"
function SaveCustomUISettings()
    local j = game:GetService("HttpService")
    if not isfolder("WeW") then
        makefolder("WeW")
    end
    writefile("WeW/" .. k, j:JSONEncode(CorrectTable(e)))
end
function ReadCustomUISetting()
    local l, m =
        pcall(
        function()
            local j = game:GetService("HttpService")
            if not isfolder("WeW") then
                makefolder("WeW")
            end
            local n = j:JSONDecode(readfile("WeW/" .. k))
            for d, v in pairs(n) do
                local function o()
                    if v.Color == nil then
                        return
                    end
                    if v.Rainbow == nil then
                        return
                    end
                    if v.Breathing == nil then
                        return
                    end
                    if v.Breathing.Color1 == nil then
                        return
                    end
                    if v.Breathing.Color2 == nil then
                        return
                    end
                    return true
                end
                if not o() then
                    SaveCustomUISettings()
                    return ReadCustomUISetting()
                end
            end
            return n
        end
    )
    if l then
        return m
    else
        SaveCustomUISettings()
        return ReadCustomUISetting()
    end
end
if not getgenv().Chon then 
    e = DCorrectTable(ReadCustomUISetting())
    for d, v in pairs(e) do
        b[d] = v.Color
    end
end
if not getgenv().ractvkretarddumb then
    spawn(
        function()
            while wait(1) do
                SaveCustomUISettings()
            end
        end
    )
    getgenv().ractvkretarddumb = true
end
getgenv().UIColor = b
    setmetatable(
    {},
    {__newindex = function(p, q, r)
            if c[q] then
                for d, v in pairs(c[q]) do
                    v()
                end
            end
            rawset(b, q, r)
            if not e[q] then
                e[q] = {
                    Color = v,
                    Rainbow = false,
                    Breathing = {Toggle = false, Color1 = Color3.new(), Color2 = Color3.new()}
                }
            end
            e[q].Color = r
        end, __index = b}
)
local s = {}
local t = {}
local u = {}
local w = game:GetService("TweenService")
local x = game:GetService("UserInputService")
function u.ButtonEffect()
    local y = game:GetService("Players").LocalPlayer:GetMouse()
    local z = Drawing.new("Circle")
    z.Visible = true
    z.Radius = 10
    z.Filled = true
    z.Color = getgenv().UIColor["Click Effect Color"]
    z.Position = Vector2.new(y.X, y.Y + 35)
    local A = Instance.new("Folder")
    A.Parent = u.gui
    A.Name = "Game nhu buoi"
    local n = Instance.new("NumberValue")
    n.Value = 10
    n.Parent = A
    n.Name = "Rua nhu buoi"
    local B = Instance.new("NumberValue")
    B.Value = 1
    B.Parent = A
    B.Name = "Rua nhu buoi 2"
    w:Create(n, TweenInfo.new(.25), {Value = 25}):Play()
    w:Create(B, TweenInfo.new(.25), {Value = 0}):Play()
    n:GetPropertyChangedSignal("Value"):Connect(
        function()
            z.Radius = n.Value
        end
    )
    B:GetPropertyChangedSignal("Value"):Connect(
        function()
            z.Transparency = B.Value
        end
    )
    wait(.5)
    A:Destroy()
end
u.GetIMG = function(C)
    local D = "SynAsset ["
    local E = ""
    if string.find(C, "rbxassetid://") then
        E = C
    else
        pcall(
            function()
                if C and type(C) == "string" and tostring(game:HttpGet(C)):find("PNG") then
                    for a = 1, 5 do
                        D = tostring(D .. string.char(math.random(65, 122)))
                    end
                    D = D .. "].png"
                    writefile(D, game:HttpGet(C))
                    spawn(
                        function()
                            wait(5)
                            delfile(D)
                        end
                    )
                    E = getsynasset(D)
                end
            end
        )
    end
    return E
end
u.Gui = Instance.new("ScreenGui")
u.Gui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
u.Gui.Name = "WeW GUI"
getgenv().ReadyForGuiLoaded = false
spawn(
    function()
        u.Gui.Enabled = false
        repeat
            wait()
        until getgenv().ReadyForGuiLoaded
        u.Gui.Enabled = true
    end
)
u.NotiGui = Instance.new("ScreenGui")
u.NotiGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
u.NotiGui.Name = "WeW Notification"
local F = Instance.new("Frame")
local G = Instance.new("UIListLayout")
F.Name = "NotiContainer"
F.Parent = u.NotiGui
F.AnchorPoint = Vector2.new(1, 1)
F.BackgroundColor3 = Color3.fromRGB(230, 230, 230)
F.BackgroundTransparency = 1.000
F.Position = UDim2.new(1, -5, 1, -5)
F.Size = UDim2.new(0, 350, 1, -10)
G.Name = "NotiList"
G.Parent = F
G.SortOrder = Enum.SortOrder.LayoutOrder
G.VerticalAlignment = Enum.VerticalAlignment.Bottom
G.Padding = UDim.new(0, 5)
wait()
getgenv().GUI = u.Gui
--syn.unprotect_gui(GUI)
-- // GOOGLE TRANSLATE // --

-- function SetUpTranslate()
--     local YourLang = "vi" -- Language code that the messages are going to be translated to

--     local googlev = isfile'googlev.txt' and readfile'googlev.txt' or ''
--     local request = request or syn.request
    
--     local function outputHook(fnc)
--         return function(...)
--             return fnc('[INLINE TRANSLATOR]', ...)
--         end
--     end
--     local translate, getISOCode do
--         function googleConsent(Body) -- Because google really said: "Fuck you."
--             local args = {}
    
--             for match in Body:gmatch('<input type="hidden" name=".-" value=".-">') do
--                 local k,v = match:match('<input type="hidden" name="(.-)" value="(.-)">')
--                 args[k] = v
--             end
--             googlev = args.v
--             writefile('googlev.txt', args.v)
--         end
    
--         local function got(url, Method, Body) -- Basic version of https://www.npmjs.com/package/got using synapse's request API for google websites
--             Method = Method or "GET"
            
--             local res = request({
--                 Url = url,
--                 Method = Method,
--                 Headers = {cookie="CONSENT=YES+"..googlev},
--                 Body = Body
--             })
            
--             if res.Body:match('https://consent.google.com/s') then
--                 googleConsent(res.Body)
--                 res = request({
--                     Url = url,
--                     Method = "GET",
--                     Headers = {cookie="CONSENT=YES+"..googlev}
--                 })
--             end
            
--             return res
--         end
    
--         getgenv().languages = {
--             auto = "Automatic",
--             ['zh-cn'] = "Chinese Simplified",
--             ['zh-tw'] = "Chinese Traditional",
--             en = "English",
--             fr = "French",
--             de = "German",
--             el = "Greek",
--             hu = "Hungarian",
--             id = "Indonesian",
--             it = "Italian",
--             ja = "Japanese",
--             ko = "Korean",
--             mg = "Malagasy",
--             pl = "Polish",
--             pt = "Portuguese",
--             ru = "Russian",
--             es = "Spanish",
--             tr = "Turkish",
--             vi = "Vietnamese",
--         };
--         local listl = {}
--         for k,v in pairs(languages) do table.insert(listl,k) end
--         function SetRandomLang() 
--             YourLang = listl[math.random(1,#listl)]
--         end
--         function find(lang)
--             for i,v in pairs(languages) do
--                 if i == lang or v == lang then
--                     return i
--                 end
--             end
--         end
    
--         function isSupported(lang)
--             local key = find(lang)
--             return key and true or false 
--         end
    
--         function getISOCode(lang)
--             local key = find(lang)
--             return key
--         end
    
--         function stringifyQuery(dataFields)
--             local data = ""
--             for k, v in pairs(dataFields) do
--                 if type(v) == "table" then
--                     for _,v in pairs(v) do
--                         data = data .. ("&%s=%s"):format(
--                             game.HttpService:UrlEncode(k),
--                             game.HttpService:UrlEncode(v)
--                         )
--                     end
--                 else
--                     data = data .. ("&%s=%s"):format(
--                         game.HttpService:UrlEncode(k),
--                         game.HttpService:UrlEncode(v)
--                     )
--                 end
--             end
--             data = data:sub(2)
--             return data
--         end
    
--         local reqid = math.random(1000,9999)
--         local rpcidsTranslate = "MkEWBc"
--         local rootURL = "https://translate.google.com/"
--         local executeURL = "https://translate.google.com/_/TranslateWebserverUi/data/batchexecute"
--         local fsid, bl
    
--         do -- init
--             local InitialReq = got(rootURL)
--             fsid = InitialReq.Body:match('"FdrFJe":"(.-)"')
--             bl = InitialReq.Body:match('"cfb2h":"(.-)"')
--         end
    
--         local HttpService = game:GetService("HttpService")
--         function jsonE(o)
--             return HttpService:JSONEncode(o)
--         end
--         function jsonD(o)
--             return HttpService:JSONDecode(o)
--         end
    
--         function translate(str, to, from)
--             reqid = reqid + 10000
--             from = from and getISOCode(from) or 'auto'
--             to = to and getISOCode(to) or 'en'
    
--             local data = {{str, from, to, true}, {nil}}
    
--             local freq = {
--                 {
--                     {
--                         rpcidsTranslate, 
--                         jsonE(data),
--                         nil,
--                         "generic"
--                     }
--                 }
--             }
    
--             local url = executeURL..'?'..stringifyQuery{rpcids = rpcidsTranslate, ['f.sid'] = fsid, bl = bl, hl="en", _reqid = reqid-10000, rt = 'c'}
--             local body = stringifyQuery{['f.req'] = jsonE(freq)}
            
--             local req = got(url, "POST", body)
            
--             local body = jsonD(req.Body:match'%[.-%]\n')
--             local translationData = jsonD(body[1][3])
--             local result = {
--                 text = "",
--                 from = {
--                     language = "",
--                     text = ""
--                 },
--                 raw = ""
--             }
--             result.raw = translationData
--             result.text = translationData[2][1][1][6][1][1]
            
--             result.from.language = translationData[3]
--             result.from.text = translationData[2][5][1]
    
--             return result
--         end
--     end
--     function translateFrom(message)
--         local translation = translate(message, YourLang)
    
--         local text
--         if translation.from.language ~= YourLang then 
--             text = translation.text
--         end
    
--         return {text, translation.from.language}
--     end
--     function Translate(message) 
--         local s,translated =  pcall(function() 
--             return translateFrom(message)[1]
--         end)
--         if s then return translated 
--         else
--             --print(message,translated)
--         end
--     end
-- end
-- SetUpTranslate()
-- getgenv().TranslateCache = {}
-- if not isfolder("WeW") then
--     makefolder("WeW")
-- end
-- local s,Translated = pcall(function() 
--     return game.HttpService:JSONDecode(readfile("wew/!UIText.json"))
-- end)
-- function SaveFile() 
--     pcall(function() 
--         writefile("amin Hub/!UIText.json",game.HttpService:JSONEncode(getgenv().TranslateCache))
--     end)
-- end
-- function isnumber() end
-- local UIChanged = false
-- if s and Translated then 
--     getgenv().TranslateCache = Translated end
-- if GUI then 
--     GUI.DescendantAdded:Connect(function(des) 
--         if des then 
--             if pcall(function() return des.Text end) then 
--                 delay(0,function() 
--                     if des.Text=="" or #des.Text<=4 or tonumber(des.Text)~=nil then
--                         return
--                     end
--                     if string.match(des.Text,"Heiskso Hub") then 
--                         local tvk = des.Text:gsub("Heiskso Hub","Trung Tâm Biển")
--                         des.Text = tvk
--                         return
--                     end
--                     local old = des.Text
--                     local c = 0
--                     while des.Text==old and c<3 do 
--                         --SetRandomLang()
--                         if getgenv().TranslateCache[des.Text] then 
--                             des.Text = getgenv().TranslateCache[des.Text]
--                             return
--                         end
--                         local t = Translate(des.Text)
--                         if t and t ~= old then 
--                             getgenv().TranslateCache[des.Text] = t
--                             UIChanged =true
--                             if t then des.Text = t end
--                         end
--                         wait(1)
--                         c=c+1
--                     end
--                     getgenv().TranslateCache[des.Text]  = des.Text
--                     UIChanged =true
--                 end)
--             end
--         end
--     end)
-- end
-- spawn(function() 
--     local t = tick()
--     while wait(2) do 
--         if tick()-t>30 then 
--             if UIChanged then 
--                 SaveFile()
--                 UIChanged = false
--             end
--         else
--             SaveFile()
--         end
--     end
-- end)
-- if syn.protect_gui then
--     syn.protect_gui(u.Gui)
--     syn.protect_gui(u.NotiGui)
--     u.Gui.Parent = game:GetService("CoreGui")
--     u.NotiGui.Parent = game:GetService("CoreGui")
-- end
u.Gui.Parent = game:GetService("CoreGui")
u.NotiGui.Parent = game:GetService("CoreGui")

function u.Getcolor(g)
    return {math.floor(g.r * 255), math.floor(g.g * 255), math.floor(g.b * 255)}
end
function t.CreateNoti(H)
    getgenv().TitleNameNoti = H.Title or ""
    local I = H.Desc
    local J = H.ShowTime or 10
    local K = Instance.new("Frame")
    local L = Instance.new("Frame")
    local M = Instance.new("UICorner")
    local N = Instance.new("Frame")
    local O = Instance.new("ImageLabel")
    local P = Instance.new("UICorner")
    local Q = Instance.new("TextLabel")
    local R = Instance.new("Frame")
    local S = Instance.new("ImageLabel")
    local T = Instance.new("TextButton")
    local U = Instance.new("TextLabel")
    K.Name = "NotiFrame"
    K.Parent = F
    K.BackgroundColor3 = Color3.fromRGB(230, 230, 230)
    K.BackgroundTransparency = 1.000
    K.ClipsDescendants = true
    K.Position = UDim2.new(0, 0, 0, 0)
    K.Size = UDim2.new(1, 0, 0, 0)
    K.AutomaticSize = Enum.AutomaticSize.Y
    L.Name = "Noticontainer"
    L.Parent = K
    L.Position = UDim2.new(1, 0, 0, 0)
    L.Size = UDim2.new(1, 0, 1, 6)
    L.AutomaticSize = Enum.AutomaticSize.Y
    L.BackgroundColor3 = getgenv().UIColor["Background 3 Color"]
    table.insert(
        c["Background 3 Color"],
        function()
            L.BackgroundColor3 = getgenv().UIColor["Background 3 Color"]
        end
    )
    M.CornerRadius = UDim.new(0, 4)
    M.Parent = L
    N.Name = "Topnoti"
    N.Parent = L
    N.BackgroundColor3 = Color3.fromRGB(230, 230, 230)
    N.BackgroundTransparency = 1.000
    N.Position = UDim2.new(0, 0, 0, 5)
    N.Size = UDim2.new(1, 0, 0, 25)
    O.Name = "Ruafimg"
    O.Parent = N
    O.BackgroundColor3 = Color3.fromRGB(230, 230, 230)
    O.BackgroundTransparency = 1.000
    O.Position = UDim2.new(0, 10, 0, 0)
    O.Size = UDim2.new(0, 25, 0, 25)
    O.Image = getgenv().UIColor["Logo Image"]
    table.insert(
        c["Logo Image"],
        function()
            O.Image = u.GetIMG(getgenv().UIColor["Logo Image"])
        end
    )
    P.CornerRadius = UDim.new(1, 0)
    P.Name = "RuafimgCorner"
    P.Parent = O
    local V = tostring(u.Getcolor(getgenv().UIColor["Title Text Color"])[1])
    local W = tostring(u.Getcolor(getgenv().UIColor["Title Text Color"])[2])
    local X = tostring(u.Getcolor(getgenv().UIColor["Title Text Color"])[3])
    local g = V .. "," .. W .. "," .. X
    Q.Text = '<font color="rgb(' .. g .. ')">WeW  Hub</font> ' .. getgenv().TitleNameNoti
    table.insert(
        c["Title Text Color"],
        function()
            local V = tostring(u.Getcolor(getgenv().UIColor["Title Text Color"])[1])
            local W = tostring(u.Getcolor(getgenv().UIColor["Title Text Color"])[2])
            local X = tostring(u.Getcolor(getgenv().UIColor["Title Text Color"])[3])
            local g = V .. "," .. W .. "," .. X
            Q.Text = '<font color="rgb(' .. g .. ')">WewHub premium</font> ' .. getgenv().TitleNameNoti
        end
    )
    Q.Name = "TextLabelNoti"
    Q.Parent = N
    Q.BackgroundColor3 = Color3.fromRGB(230, 230, 230)
    Q.BackgroundTransparency = 1.000
    Q.Position = UDim2.new(0, 40, 0, 0)
    Q.Size = UDim2.new(1, -40, 1, 0)
    Q.Font = Enum.Font.GothamBold
    Q.TextSize = 14.000
    Q.TextWrapped = true
    Q.TextXAlignment = Enum.TextXAlignment.Left
    Q.RichText = true
    Q.TextColor3 = getgenv().UIColor["GUI Text Color"]
    table.insert(
        c["GUI Text Color"],
        function()
            Q.TextColor3 = getgenv().UIColor["GUI Text Color"]
        end
    )
    R.Name = "CloseContainer"
    R.Parent = N
    R.AnchorPoint = Vector2.new(1, 0.5)
    R.BackgroundColor3 = Color3.fromRGB(230, 230, 230)
    R.BackgroundTransparency = 1.000
    R.Position = UDim2.new(1, -4, 0.5, 0)
    R.Size = UDim2.new(0, 22, 0, 22)
    S.Name = "CloseImage"
    S.Parent = R
    S.BackgroundColor3 = Color3.fromRGB(230, 230, 230)
    S.BackgroundTransparency = 1.000
    S.Size = UDim2.new(1, 0, 1, 0)
    S.Image = "rbxassetid://13717478897"
    S.ImageRectOffset = Vector2.new(284, 4)
    S.ImageRectSize = Vector2.new(24, 24)
    S.ImageColor3 = getgenv().UIColor["Search Icon Color"]
    table.insert(
        c["Search Icon Color"],
        function()
            S.ImageColor3 = getgenv().UIColor["Search Icon Color"]
        end
    )
    T.Parent = R
    T.BackgroundColor3 = Color3.fromRGB(230, 230, 230)
    T.BackgroundTransparency = 1.000
    T.Size = UDim2.new(1, 0, 1, 0)
    T.Font = Enum.Font.SourceSans
    T.Text = ""
    T.TextColor3 = Color3.fromRGB(0, 0, 0)
    T.TextSize = 14.000
    if I then
        U.Name = "TextColor"
        U.Parent = L
        U.BackgroundColor3 = Color3.fromRGB(230, 230, 230)
        U.BackgroundTransparency = 1.000
        U.Position = UDim2.new(0, 10, 0, 35)
        U.Size = UDim2.new(1, -15, 0, 0)
        U.Font = Enum.Font.GothamBold
        U.Text = I
        U.TextSize = 14.000
        U.TextXAlignment = Enum.TextXAlignment.Left
        U.RichText = true
        U.TextColor3 = getgenv().UIColor["Text Color"]
        U.AutomaticSize = Enum.AutomaticSize.Y
        U.TextWrapped = true
        table.insert(
            c["Text Color"],
            function()
                U.TextColor3 = getgenv().UIColor["Text Color"]
            end
        )
    end
    local function Y()
        w:Create(L, TweenInfo.new(getgenv().UIColor["Tween Animation 1 Speed"]), {Position = UDim2.new(1, 0, 0, 0)}):Play(

        )
        wait(.25)
        K:Destroy()
    end
    w:Create(L, TweenInfo.new(getgenv().UIColor["Tween Animation 1 Speed"]), {Position = UDim2.new(0, 0, 0, 0)}):Play()
    T.MouseEnter:Connect(
        function()
            w:Create(
                S,
                TweenInfo.new(getgenv().UIColor["Tween Animation 1 Speed"]),
                {ImageColor3 = getgenv().UIColor["Search Icon Highlight Color"]}
            ):Play()
        end
    )
    T.MouseLeave:Connect(
        function()
            w:Create(
                S,
                TweenInfo.new(getgenv().UIColor["Tween Animation 1 Speed"]),
                {ImageColor3 = getgenv().UIColor["Search Icon Color"]}
            ):Play()
        end
    )
    T.MouseButton1Click:Connect(
        function()
            spawn(
                function()
                    u.ButtonEffect()
                end
            )
            wait(.25)
            Y()
        end
    )
    spawn(
        function()
            wait(J)
            Y()
        end
    )
end
function t.CreateMain(H)
    local Z = tostring(H.Title) or "Wewhub premium"
    getgenv().MainDesc = H.Desc or ""
    local _ = false
    cac = false
    local function a0(a1, a2)
        local a3 = nil
        local a4 = nil
        local a5 = nil
        local a6 = nil
        a1.InputBegan:Connect(
            function(a7)
                if a7.UserInputType == Enum.UserInputType.MouseButton1 or a7.UserInputType == Enum.UserInputType.Touch then
                    a3 = true
                    a5 = a7.Position
                    a6 = a2.Position
                    a7.Changed:Connect(
                        function()
                            if a7.UserInputState == Enum.UserInputState.End then
                                a3 = false
                            end
                        end
                    )
                end
            end
        )
        a1.InputChanged:Connect(
            function(a7)
                if a7.UserInputType == Enum.UserInputType.MouseMovement or a7.UserInputType == Enum.UserInputType.Touch then
                    a4 = a7
                end
            end
        )
        x.InputChanged:Connect(
            function(a7)
                if a7 == a4 and a3 then
                    local a8 = a7.Position - a5
                    if not _ and cac then
                        w:Create(
                            a2,
                            TweenInfo.new(0.35, Enum.EasingStyle.Linear, Enum.EasingDirection.Out),
                            {Position = UDim2.new(a6.X.Scale, a6.X.Offset + a8.X, a6.Y.Scale, a6.Y.Offset + a8.Y)}
                        ):Play()
                    elseif not _ and not cac then
                        a2.Position = UDim2.new(a6.X.Scale, a6.X.Offset + a8.X, a6.Y.Scale, a6.Y.Offset + a8.Y)
                    end
                end
            end
        )
    end
    local a9 = Instance.new("Frame")
    local aa = Instance.new("ImageLabel")
    local ab = Instance.new("UICorner")
    local ac = Instance.new("Frame")
    local O = Instance.new("ImageLabel")
    local ad = Instance.new("TextLabel")
    local ae = Instance.new("Frame")
    local M = Instance.new("UICorner")
    local af = Instance.new("ScrollingFrame")
    local ag = Instance.new("UIListLayout")
    local ah = Instance.new("TextLabel")
    local ai = Instance.new("Frame")
    local aj = Instance.new("UIPageLayout")
    local ak = Instance.new("Frame")
    local al = Instance.new("TextButton")
    local am = Instance.new("ImageLabel")
    local an = Instance.new("Frame")
    local ao = Instance.new("Frame")
    local ap = Instance.new("Frame")
    local aq = Instance.new("UIPageLayout")
    local ar
    a9.Name = "Main"
    a9.Parent = u.Gui
    a9.BackgroundColor3 = Color3.fromRGB(42, 42, 42)
    a9.BackgroundTransparency = 1.000
    a9.Position = UDim2.new(0.5, 0, 0.5, 0)
    a9.AnchorPoint = Vector2.new(0.5, 0.5)
    a9.Size = UDim2.new(0, 629, 0, 359)
    a0(a9, a9)
    aa.Name = "maingui"
    aa.Parent = a9
    aa.AnchorPoint = Vector2.new(0.5, 0.5)
    aa.BackgroundColor3 = Color3.fromRGB(230, 230, 230)
    aa.BackgroundTransparency = 1.000
    aa.Position = UDim2.new(0.5, 0, 0.5, 0)
    aa.Selectable = true
    aa.Size = UDim2.new(1, 30, 1, 30)
    aa.Image = ""
    aa.ScaleType = Enum.ScaleType.Slice
    aa.SliceCenter = Rect.new(15, 15, 175, 175)
    aa.SliceScale = 1.300
    aa.ImageColor3 = getgenv().UIColor["Border Color"]
    table.insert(
        c["Border Color"],
        function()
            aa.ImageColor3 = getgenv().UIColor["Border Color"]
        end
    )
    local ScreenGui = Instance.new("ScreenGui")
    local ImageButton = Instance.new("ImageButton")
    local UICorner = Instance.new("UICorner")
    local UIStroke = Instance.new("UIStroke")
    _G.CloseandOpenUi = true

    ScreenGui.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")

    ImageButton.Parent = ScreenGui
    ImageButton.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
    ImageButton.BorderColor3 = Color3.fromRGB(0, 0, 0)
    ImageButton.BorderSizePixel = 0
    ImageButton.Position = UDim2.new(0.100739375, 0, 0.121457487, 0)
    ImageButton.Size = UDim2.new(0, 40, 0, 40)
    ImageButton.Image = "rbxassetid://126706776122280"
    ImageButton.MouseButton1Click:Connect(function()
        _G.CloseandOpenUi = not _G.CloseandOpenUi
        a9.Visible = _G.CloseandOpenUi
    end)

    UICorner.Parent = ImageButton

    UIStroke.Color = Color3.fromRGB(255, 255, 255)
    UIStroke.Parent = ImageButton
    function u.ReloadMain(v)
        aa.ImageColor3 = getgenv().UIColor["Title Text Color"]
        local V = tostring(u.Getcolor(getgenv().UIColor["Title Text Color"])[1])
        local W = tostring(u.Getcolor(getgenv().UIColor["Title Text Color"])[2])
        local X = tostring(u.Getcolor(getgenv().UIColor["Title Text Color"])[3])
        local g = V .. "," .. W .. "," .. X
        ad.Text = '<font color="rgb(' .. g .. ')">WeW  Hub</font> ' .. getgenv().MainDesc
        table.insert(
            c["Title Text Color"],
            function()
                aa.ImageColor3 = getgenv().UIColor["Title Text Color"]
                local V = tostring(u.Getcolor(getgenv().UIColor["Title Text Color"])[1])
                local W = tostring(u.Getcolor(getgenv().UIColor["Title Text Color"])[2])
                local X = tostring(u.Getcolor(getgenv().UIColor["Title Text Color"])[3])
                local g = V .. "," .. W .. "," .. X
                ad.Text = '<font color="rgb(' .. g .. ')">WewHub premium</font> ' .. getgenv().MainDesc
            end
        )
        local as
        if
            v ~= "" and type(v) == "string" and string.find(v:lower(), ".webm") and
                pcall(
                    function()
                        writefile("seahub.webm", syn.request({Url = v}).Body)
                    end
                )
         then
            wait(.25)
            local at = isfile("seahub.webm")
            wait(.25)
            if at then
                as = Instance.new("VideoFrame")
                as.Name = "MainContainer"
                as.Parent = a9
                as.BackgroundColor3 = getgenv().UIColor["Background Main Color"]
                as.Size = UDim2.new(1, 0, 1, 0)
                as.Video = getsynasset("seahub.webm")
                as.Looped = true
                as:Play()
                wait(.5)
                delfile("seahub.webm")
            end
        else
            as = Instance.new("ImageLabel")
            as.Name = "MainContainer"
            as.Parent = a9
            as.BackgroundColor3 = getgenv().UIColor["Background Main Color"]
            as.Size = UDim2.new(1, 0, 1, 0)
            as.Image = u.GetIMG(v)
        end
        MainCorner_ = Instance.new("UICorner")
        MainCorner_.CornerRadius = UDim.new(0, 4)
        MainCorner_.Name = "MainCorner"
        MainCorner_.Parent = as
        for a, m in next, a9:GetChildren() do
            if m.Name == "MainContainer" then
                for a, v in next, m:GetChildren() do
                    v.Parent = as
                end
                wait()
                m:Destroy()
                break
            end
        end
        table.insert(
            c["Background 3 Color"],
            function()
                as.BackgroundColor3 = getgenv().UIColor["Background 3 Color"]
            end
        )
    end
    aa.ImageColor3 = getgenv().UIColor["Title Text Color"]
    local V = tostring(u.Getcolor(getgenv().UIColor["Title Text Color"])[1])
    local W = tostring(u.Getcolor(getgenv().UIColor["Title Text Color"])[2])
    local X = tostring(u.Getcolor(getgenv().UIColor["Title Text Color"])[3])
    local g = V .. "," .. W .. "," .. X
    ad.Text = '<font color="rgb(' .. g .. ')">WewHub premium</font> ' .. getgenv().MainDesc
    table.insert(
        c["Title Text Color"],
        function()
            aa.ImageColor3 = getgenv().UIColor["Title Text Color"]
            local V = tostring(u.Getcolor(getgenv().UIColor["Title Text Color"])[1])
            local W = tostring(u.Getcolor(getgenv().UIColor["Title Text Color"])[2])
            local X = tostring(u.Getcolor(getgenv().UIColor["Title Text Color"])[3])
            local g = V .. "," .. W .. "," .. X
            ad.Text = '<font color="rgb(' .. g .. ')">WewHub Premium</font> ' .. getgenv().MainDesc
        end
    )
    local ar
    local au = getgenv().UIColor["Background Image"]
    if
        au ~= "" and type(au) == "string" and string.find(au:lower(), ".webm") and
            pcall(
                function()
                    writefile("seahub.webm", syn.request({Url = au}).Body)
                end
            )
     then
        wait(.25)
        local at = isfile("seahub.webm")
        wait(.25)
        if at then
            ar = Instance.new("VideoFrame")
            ar.Name = "MainContainer"
            ar.Parent = a9
            ar.BackgroundColor3 = getgenv().UIColor["Background Main Color"]
            ar.Size = UDim2.new(1, 0, 1, 0)
            ar.Video = getsynasset("seahub.webm")
            ar.Looped = true
            ar:Play()
            wait(.5)
            delfile("seahub.webm")
        end
    else
        ar = Instance.new("ImageLabel")
        ar.Name = "MainContainer"
        ar.Parent = a9
        ar.BackgroundColor3 = getgenv().UIColor["Background Main Color"]
        ar.Size = UDim2.new(1, 0, 1, 0)
        ar.Image = u.GetIMG(au)
    end
    table.insert(
        c["Background 3 Color"],
        function()
            ar.BackgroundColor3 = getgenv().UIColor["Background 3 Color"]
        end
    )
    getgenv().ReadyForGuiLoaded = true
    ab.CornerRadius = UDim.new(0, 4)
    ab.Name = "MainCorner"
    ab.Parent = ar
    an.Name = "Concacontainer"
    an.Parent = ar
    an.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    an.BackgroundTransparency = 1.000
    an.ClipsDescendants = true
    an.Position = UDim2.new(0, 0, 0, 30)
    an.Size = UDim2.new(1, 0, 1, -30)
    ao.Name = "Concacmain"
    ao.Parent = an
    ao.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    ao.BackgroundTransparency = 1.000
    ao.Selectable = true
    ao.Size = UDim2.new(1, 0, 1, 0)
    ap.Name = "Background1"
    ap.Parent = an
    ap.LayoutOrder = 1
    ap.Selectable = true
    ap.Size = UDim2.new(1, 0, 1, 0)
    ap.BackgroundTransparency = getgenv().UIColor["Background 1 Transparency"]
    table.insert(
        c["Background 1 Transparency"],
        function()
            ap.BackgroundTransparency = getgenv().UIColor["Background 1 Transparency"]
        end
    )
    ap.BackgroundColor3 = getgenv().UIColor["Background 1 Color"]
    table.insert(
        c["Background 1 Color"],
        function()
            ap.BackgroundColor3 = getgenv().UIColor["Background 1 Color"]
        end
    )
    aq.Name = "Concacpage"
    aq.Parent = an
    aq.SortOrder = Enum.SortOrder.LayoutOrder
    aq.EasingDirection = Enum.EasingDirection.InOut
    aq.EasingStyle = Enum.EasingStyle.Quad
    aq.TweenTime = getgenv().UIColor["Tween Animation 1 Speed"]
    table.insert(
        c["Tween Animation 1 Speed"],
        function()
            aq.TweenTime = getgenv().UIColor["Tween Animation 1 Speed"]
        end
    )
    ac.Name = "TopMain"
    ac.Parent = ar
    ac.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    ac.BackgroundTransparency = 1.000
    ac.Size = UDim2.new(1, 0, 0, 25)
    O.Name = "Ruafimg"
    O.Parent = ac
    O.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    O.BackgroundTransparency = 1.000
    O.Position = UDim2.new(0, 5, 0, 0)
    O.Size = UDim2.new(0, 25, 0, 25)
    O.Image = getgenv().UIColor["Logo Image"]
    table.insert(
        c["Logo Image"],
        function()
            O.Image = getgenv().UIColor["Logo Image"]
        end
    )
    ad.Name = "TextLabelMain"
    ad.Parent = ac
    ad.BackgroundColor3 = Color3.fromRGB(230, 230, 230)
    ad.BackgroundTransparency = 1.000
    ad.Position = UDim2.new(0, 35, 0, 0)
    ad.Size = UDim2.new(1, -35, 1, 0)
    ad.Font = Enum.Font.GothamBold
    ad.RichText = true
    ad.TextSize = 16.000
    ad.TextWrapped = true
    ad.TextXAlignment = Enum.TextXAlignment.Left
    ad.TextColor3 = getgenv().UIColor["GUI Text Color"]
    table.insert(
        c["GUI Text Color"],
        function()
            ad.TextColor3 = getgenv().UIColor["GUI Text Color"]
        end
    )
    local V = tostring(u.Getcolor(getgenv().UIColor["Title Text Color"])[1])
    local W = tostring(u.Getcolor(getgenv().UIColor["Title Text Color"])[2])
    local X = tostring(u.Getcolor(getgenv().UIColor["Title Text Color"])[3])
    local g = V .. "," .. W .. "," .. X
    ad.Text = '<font color="rgb(' .. g .. ')">WewHub Premium</font> ' .. getgenv().MainDesc
    table.insert(
        c["Title Text Color"],
        function()
            local V = tostring(u.Getcolor(getgenv().UIColor["Title Text Color"])[1])
            local W = tostring(u.Getcolor(getgenv().UIColor["Title Text Color"])[2])
            local X = tostring(u.Getcolor(getgenv().UIColor["Title Text Color"])[3])
            local g = V .. "," .. W .. "," .. X
            ad.Text = '<font color="rgb(' .. g .. ')">WewHub Premium</font> ' .. getgenv().MainDesc
        end
    )
    ak.Name = "SettionMain"
    ak.Parent = ac
    ak.AnchorPoint = Vector2.new(1, 0)
    ak.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    ak.BackgroundTransparency = 1.000
    ak.Position = UDim2.new(1, 0, 0, 0)
    ak.Size = UDim2.new(0, 30, 0, 30)
    al.Name = "SettionButton"
    al.Parent = ak
    al.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    al.BackgroundTransparency = 1.000
    al.BorderColor3 = Color3.fromRGB(27, 42, 53)
    al.Size = UDim2.new(1, 0, 1, 0)
    al.Font = Enum.Font.SourceSans
    al.Text = ""
    al.TextColor3 = Color3.fromRGB(0, 0, 0)
    al.TextSize = 14.000
    al.Visible = true
    am.Name = "SettingIcon"
    am.Parent = ak
    am.AnchorPoint = Vector2.new(0.5, 0.5)
    am.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    am.BackgroundTransparency = 1.000
    am.Position = UDim2.new(0.5, 0, 0.5, 0)
    am.Size = UDim2.new(1, -10, 1, -10)
    am.Image = "rbxassetid://126706776122280"
    am.Visible = true
    am.ImageColor3 = getgenv().UIColor["Setting Icon Color"]
    table.insert(
        c["Setting Icon Color"],
        function()
            am.ImageColor3 = getgenv().UIColor["Setting Icon Color"]
        end
    )
    ae.Name = "Background1"
    ae.Parent = ao
    ae.Position = UDim2.new(0, 5, 0, 0)
    ae.Size = UDim2.new(0, 180, 0, 325)
    ae.BackgroundTransparency = getgenv().UIColor["Background 1 Transparency"]
    table.insert(
        c["Background 1 Transparency"],
        function()
            ae.BackgroundTransparency = getgenv().UIColor["Background 1 Transparency"]
        end
    )
    ae.BackgroundColor3 = getgenv().UIColor["Background 1 Color"]
    table.insert(
        c["Background 1 Color"],
        function()
            ae.BackgroundColor3 = getgenv().UIColor["Background 1 Color"]
        end
    )
    M.CornerRadius = UDim.new(0, 4)
    M.Parent = ae
    af.Name = "ControlList"
    af.Parent = ae
    af.Active = true
    af.BackgroundColor3 = Color3.fromRGB(230, 230, 230)
    af.BackgroundTransparency = 1.000
    af.BorderColor3 = Color3.fromRGB(27, 42, 53)
    af.BorderSizePixel = 0
    af.Position = UDim2.new(0, 0, 0, 30)
    af.Size = UDim2.new(1, -5, 1, -30)
    af.BottomImage = "rbxasset://textures/ui/Scroll/scroll-middle.png"
    af.CanvasSize = UDim2.new(0, 0, 0, 0)
    af.ScrollBarThickness = 5
    af.TopImage = "rbxasset://textures/ui/Scroll/scroll-middle.png"
    ag.Parent = af
    ag.SortOrder = Enum.SortOrder.LayoutOrder
    ag.Padding = UDim.new(0, 5)
    ah.Name = "GUITextColor"
    ah.Parent = ae
    ah.BackgroundColor3 = Color3.fromRGB(230, 230, 230)
    ah.BackgroundTransparency = 1.000
    ah.Position = UDim2.new(0, 5, 0, 0)
    ah.Size = UDim2.new(1, 0, 0, 25)
    ah.Font = Enum.Font.GothamBold
    ah.Text = Z
    ah.TextSize = 14.000
    ah.TextXAlignment = Enum.TextXAlignment.Left
    ah.TextColor3 = getgenv().UIColor["GUI Text Color"]
    table.insert(
        c["GUI Text Color"],
        function()
            ah.TextColor3 = getgenv().UIColor["GUI Text Color"]
        end
    )
    ai.Name = "MainPage"
    ai.Parent = ao
    ai.BackgroundColor3 = Color3.fromRGB(230, 230, 230)
    ai.BackgroundTransparency = 1.000
    ai.ClipsDescendants = true
    ai.Position = UDim2.new(0, 190, 0, 0)
    ai.Size = UDim2.new(0, 435, 0, 325)
    aj.Name = "UIPage"
    aj.Parent = ai
    aj.FillDirection = Enum.FillDirection.Vertical
    aj.SortOrder = Enum.SortOrder.LayoutOrder
    aj.EasingDirection = Enum.EasingDirection.InOut
    aj.EasingStyle = Enum.EasingStyle.Quart
    aj.Padding = UDim.new(0, 10)
    aj.TweenTime = getgenv().UIColor["Tween Animation 1 Speed"]
    aj.ScrollWheelInputEnabled = false
    table.insert(
        c["Tween Animation 1 Speed"],
        function()
            aj.TweenTime = getgenv().UIColor["Tween Animation 1 Speed"]
        end
    )
    ag:GetPropertyChangedSignal("AbsoluteContentSize"):Connect(
        function()
            af.CanvasSize = UDim2.new(0, 0, 0, ag.AbsoluteContentSize.Y + 5)
        end
    )
    local av = false
    al.MouseButton1Click:Connect(
        function()
            u.ButtonEffect()
        end
    )
    al.MouseButton1Click:Connect(
        function()
            av = not av
            pa = av and 1 or 0
            ro = av and 180 or 0
          --  aq:JumpToIndex(pa)
            game.TweenService:Create(am, TweenInfo.new(getgenv().UIColor["Tween Animation 1 Speed"]), {Rotation = ro}):Play(

            )
        end
    )
    local aw = Instance.new("ScrollingFrame")
    local ax = Instance.new("UIListLayout")
    aw.Name = "CustomList"
    aw.Parent = ap
    aw.Active = true
    aw.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    aw.BackgroundTransparency = 1.000
    aw.BorderColor3 = Color3.fromRGB(27, 42, 53)
    aw.BorderSizePixel = 0
    aw.Position = UDim2.new(0, 5, 0, 30)
    aw.Size = UDim2.new(1, -10, 1, -30)
    aw.BottomImage = "rbxasset://textures/ui/Scroll/scroll-middle.png"
    aw.ScrollBarThickness = 5
    aw.TopImage = "rbxasset://textures/ui/Scroll/scroll-middle.png"
    ax.Name = "CustomListLayout"
    ax.Parent = aw
    ax.SortOrder = Enum.SortOrder.LayoutOrder
    ax.Padding = UDim.new(0, 5)
    ax:GetPropertyChangedSignal("AbsoluteContentSize"):Connect(
        function()
            aw.CanvasSize = UDim2.new(0, 0, 0, ax.AbsoluteContentSize.Y + 5)
        end
    )
    local ay = Instance.new("TextLabel")
    ay.Name = "GUITextColor"
    ay.Parent = ap
    ay.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    ay.BackgroundTransparency = 1.000
    ay.Position = UDim2.new(0, 15, 0, 0)
    ay.Size = UDim2.new(1, -15, 0, 25)
    ay.Font = Enum.Font.GothamBold
    ay.Text = ""
    ay.TextSize = 16.000
    ay.TextXAlignment = Enum.TextXAlignment.Left
    ay.TextColor3 = getgenv().UIColor["GUI Text Color"]
    table.insert(
        c["GUI Text Color"],
        function()
            ay.TextColor3 = getgenv().UIColor["GUI Text Color"]
        end
    )
    local az = Instance.new("Frame")
    local aA = Instance.new("UICorner")
    local aB = Instance.new("Frame")
    local aC = Instance.new("ImageLabel")
    local aD = Instance.new("TextButton")
    local aE = Instance.new("TextBox")
    az.Name = "Background2"
    az.Parent = ap
    az.AnchorPoint = Vector2.new(1, 0)
    az.BackgroundColor3 = getgenv().UIColor["Background 2 Color"]
    az.ClipsDescendants = true
    az.Position = UDim2.new(1, -5, 0, 5)
    az.Size = UDim2.new(0, 20, 0, 20)
    az.ClipsDescendants = true
    table.insert(
        c["Background 2 Color"],
        function()
            az.BackgroundColor3 = getgenv().UIColor["Background 2 Color"]
        end
    )
    aA.CornerRadius = UDim.new(0, 2)
    aA.Name = "PageSearchCorner"
    aA.Parent = az
    aB.Name = "SearchFrame"
    aB.Parent = az
    aB.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    aB.BackgroundTransparency = 1.000
    aB.Size = UDim2.new(0, 20, 0, 20)
    aC.Name = "SearchIcon"
    aC.Parent = aB
    aC.AnchorPoint = Vector2.new(0.5, 0.5)
    aC.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    aC.BackgroundTransparency = 1.000
    aC.Position = UDim2.new(0.5, 0, 0.5, 0)
    aC.Size = UDim2.new(0, 16, 0, 16)
    aC.Image = "rbxassetid://8154282545"
    aC.ImageColor3 = getgenv().UIColor["Search Icon Color"]
    table.insert(
        c["Search Icon Color"],
        function()
            aC.ImageColor3 = getgenv().UIColor["Search Icon Color"]
        end
    )
    aD.Name = "active"
    aD.Parent = aB
    aD.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    aD.BackgroundTransparency = 1.000
    aD.Size = UDim2.new(1, 0, 1, 0)
    aD.Font = Enum.Font.SourceSans
    aD.Text = ""
    aD.TextColor3 = Color3.fromRGB(0, 0, 0)
    aD.TextSize = 14.000
    aE.Name = "TextColorPlaceholder"
    aE.Parent = az
    aE.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    aE.BackgroundTransparency = 1.000
    aE.Position = UDim2.new(0, 30, 0, 0)
    aE.Size = UDim2.new(1, -30, 1, 0)
    aE.Font = Enum.Font.GothamBold
    aE.Text = ""
    aE.TextSize = 14.000
    aE.TextXAlignment = Enum.TextXAlignment.Left
    aE.PlaceholderText = "Search Section name"
    aE.PlaceholderColor3 = getgenv().UIColor["Placeholder Text Color"]
    aE.TextColor3 = getgenv().UIColor["Text Color"]
    table.insert(
        c["Placeholder Text Color"],
        function()
            aE.PlaceholderColor3 = getgenv().UIColor["Placeholder Text Color"]
        end
    )
    table.insert(
        c["Text Color"],
        function()
            aE.TextColor3 = getgenv().UIColor["Text Color"]
        end
    )
    local aF = false
    aD.MouseEnter:Connect(
        function()
            w:Create(
                aC,
                TweenInfo.new(getgenv().UIColor["Tween Animation 3 Speed"]),
                {ImageColor3 = getgenv().UIColor["Search Icon Highlight Color"]}
            ):Play()
        end
    )
    aD.MouseLeave:Connect(
        function()
            w:Create(
                aC,
                TweenInfo.new(getgenv().UIColor["Tween Animation 3 Speed"]),
                {ImageColor3 = getgenv().UIColor["Search Icon Color"]}
            ):Play()
        end
    )
    aD.MouseButton1Click:Connect(
        function()
            u.ButtonEffect()
        end
    )
    aE.Focused:Connect(
        function()
            u.ButtonEffect()
        end
    )
    aD.MouseButton1Click:Connect(
        function()
            aF = not aF
            local aG = aF and UDim2.new(0, 175, 0, 20) or UDim2.new(0, 20, 0, 20)
            game.TweenService:Create(az, TweenInfo.new(getgenv().UIColor["Tween Animation 2 Speed"]), {Size = aG}):Play(

            )
        end
    )
    local function aH()
        for a, v in next, aw:GetChildren() do
            if not v:IsA("UIListLayout") then
                v.Visible = false
            end
        end
    end
    local function aI()
        for n, B in pairs(aw:GetChildren()) do
            if not B:IsA("UIListLayout") then
                if string.find(string.lower(B.Name), string.lower(aE.Text)) then
                    B.Visible = true
                end
            end
        end
    end
    aE:GetPropertyChangedSignal("Text"):Connect(
        function()
            aH()
            aI()
        end
    )
    function t.CreateCustomColor(aJ)
        ay.Text = aJ or "Custom GUI"
        local aK = {}
        function aK.CreateSection(aL)
            local aM = Instance.new("Frame")
            local M = Instance.new("UICorner")
            local aN = Instance.new("Frame")
            local aO = Instance.new("TextLabel")
            local aP = Instance.new("Frame")
            local aQ = Instance.new("UIGradient")
            local aR = Instance.new("UIListLayout")
            local aS = aL or "Section"
            aM.Name = aL .. "Section"
            aM.Parent = aw
            aM.Size = UDim2.new(1, 0, 0, 285)
            aM.BackgroundColor3 = getgenv().UIColor["Background 3 Color"]
            table.insert(
                c["Background 3 Color"],
                function()
                    aM.BackgroundColor3 = getgenv().UIColor["Background 3 Color"]
                end
            )
            aM.BackgroundTransparency = getgenv().UIColor["Background 1 Transparency"]
            table.insert(
                c["Background 1 Transparency"],
                function()
                    aM.BackgroundTransparency = getgenv().UIColor["Background 1 Transparency"]
                end
            )
            M.CornerRadius = UDim.new(0, 4)
            M.Parent = aM
            aN.Name = "Topsec"
            aN.Parent = aM
            aN.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
            aN.BackgroundTransparency = 1.000
            aN.Size = UDim2.new(1, 0, 0, 27)
            aO.Name = "Sectiontitle"
            aO.Parent = aN
            aO.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
            aO.BackgroundTransparency = 1.000
            aO.Size = UDim2.new(1, 0, 1, 0)
            aO.Font = Enum.Font.GothamBold
            aO.Text = aL
            aO.TextSize = 14.000
            aO.TextColor3 = getgenv().UIColor["Section Text Color"]
            table.insert(
                c["Section Text Color"],
                function()
                    aO.TextColor3 = getgenv().UIColor["Section Text Color"]
                end
            )
            aP.Name = "Linesec"
            aP.Parent = aN
            aP.AnchorPoint = Vector2.new(0.5, 1)
            aP.BorderSizePixel = 0
            aP.Position = UDim2.new(0.5, 0, 1, -2)
            aP.Size = UDim2.new(1, -10, 0, 2)
            aP.BackgroundColor3 = getgenv().UIColor["Section Underline Color"]
            table.insert(
                c["Section Underline Color"],
                function()
                    aP.BackgroundColor3 = getgenv().UIColor["Section Underline Color"]
                end
            )
            aQ.Transparency =
                NumberSequence.new {
                NumberSequenceKeypoint.new(0.00, 1.00),
                NumberSequenceKeypoint.new(0.50, 0.00),
                NumberSequenceKeypoint.new(0.51, 0.02),
                NumberSequenceKeypoint.new(1.00, 1.00)
            }
            aQ.Parent = aP
            aR.Name = "SectionList"
            aR.Parent = aM
            aR.SortOrder = Enum.SortOrder.LayoutOrder
            aR.Padding = UDim.new(0, 5)
            aR:GetPropertyChangedSignal("AbsoluteContentSize"):Connect(
                function()
                    aM.Size = UDim2.new(1, 0, 0, aR.AbsoluteContentSize.Y + 5)
                end
            )
            local aT = {}
            function aT.CreateColorPicker(H)
                local aU =
                    setmetatable(
                    {},
                    {__index = function(p, q)
                            if q == "Cungroi" then
                                return e[H.Type].Rainbow
                            end
                        end, __newindex = function(p, q, r)
                            if q == "Cungroi" then
                                e[H.Type].Rainbow = r
                            end
                        end}
                )
                local aV, aW, aX
                local aY = H.Title or "Color Picker"
                local aZ = e[H.Type].Color or Color3.fromRGB(255, 255, 255)
                local a_ = H.Type
                local b0 = Instance.new("Frame")
                local b1 = Instance.new("UICorner")
                local b2 = Instance.new("Frame")
                local b3 = Instance.new("UICorner")
                local b4 = Instance.new("TextLabel")
                local b5 = Instance.new("Frame")
                local b6 = Instance.new("UICorner")
                local b7 = Instance.new("TextButton")
                local b8 = Instance.new("Frame")
                local b9 = Instance.new("UIGradient")
                local ba = Instance.new("Frame")
                local M = Instance.new("UICorner")
                local bb = Instance.new("Frame")
                local bc = Instance.new("Frame")
                local bd = Instance.new("TextLabel")
                local be = Instance.new("TextBox")
                local bf = Instance.new("Frame")
                local bg = Instance.new("TextLabel")
                local bh = Instance.new("TextBox")
                local bi = Instance.new("Frame")
                local bj = Instance.new("TextLabel")
                local bk = Instance.new("TextBox")
                local ag = Instance.new("UIListLayout")
                local bl = Instance.new("Frame")
                local bm = Instance.new("TextLabel")
                local bn = Instance.new("TextBox")
                local aP = Instance.new("Frame")
                local aQ = Instance.new("UIGradient")
                local bo = Instance.new("Frame")
                local bp = Instance.new("Frame")
                local bq = Instance.new("TextLabel")
                local br = Instance.new("ImageLabel")
                local bs = Instance.new("ImageLabel")
                local bt = Instance.new("TextButton")
                local bu = Instance.new("ImageLabel")
                local bv = Instance.new("Frame")
                local bw = Instance.new("UICorner")
                local bx = Instance.new("Frame")
                local by = Instance.new("Frame")
                local bz = Instance.new("TextLabel")
                local bA = Instance.new("ImageLabel")
                local bB = Instance.new("ImageLabel")
                local bC = Instance.new("TextButton")
                local bD = Instance.new("Frame")
                local bE = Instance.new("UIListLayout")
                local bF = Instance.new("Frame")
                local bG = Instance.new("UICorner")
                local bH = Instance.new("TextButton")
                local bI = Instance.new("Frame")
                local bJ = Instance.new("UICorner")
                local bK = Instance.new("TextButton")
                b0.Name = "ColorPick"
                b0.Parent = aM
                b0.BackgroundColor3 = Color3.fromRGB(60, 60, 60)
                b0.BackgroundTransparency = 1.000
                b0.ClipsDescendants = true
                b0.Position = UDim2.new(0, 0, 0.112280704, 0)
                b0.Size = UDim2.new(1, 0, 0, 35)
                b1.CornerRadius = UDim.new(0, 4)
                b1.Name = "ColorPickCorner"
                b1.Parent = b0
                b2.Name = "Background1"
                b2.Parent = b0
                b2.AnchorPoint = Vector2.new(0.5, 0.5)
                b2.BackgroundColor3 = getgenv().UIColor["Background 1 Color"]
                b2.Position = UDim2.new(0.5, 0, 0.5, 0)
                b2.Size = UDim2.new(1, -10, 1, 0)
                table.insert(
                    c["Background 1 Color"],
                    function()
                        b2.BackgroundColor3 = getgenv().UIColor["Background 1 Color"]
                    end
                )
                b2.BackgroundTransparency = getgenv().UIColor["Background 1 Transparency"]
                table.insert(
                    c["Background 1 Transparency"],
                    function()
                        b2.BackgroundTransparency = getgenv().UIColor["Background 1 Transparency"]
                    end
                )
                b3.CornerRadius = UDim.new(0, 4)
                b3.Name = "ColorpickBGCorner"
                b3.Parent = b2
                b4.Name = "TextColor"
                b4.Parent = b2
                b4.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                b4.BackgroundTransparency = 1.000
                b4.Position = UDim2.new(0, 10, 0, 0)
                b4.Size = UDim2.new(1, -10, 0, 35)
                b4.Font = Enum.Font.GothamBlack
                b4.Text = aY
                b4.TextSize = 14.000
                b4.TextXAlignment = Enum.TextXAlignment.Left
                b4.TextColor3 = getgenv().UIColor["Text Color"]
                table.insert(
                    c["Text Color"],
                    function()
                        b4.TextColor3 = getgenv().UIColor["Text Color"]
                    end
                )
                b5.Name = "ColorVal"
                b5.Parent = b0
                b5.AnchorPoint = Vector2.new(1, 0)
                b5.BackgroundColor3 = e[a_].Color
                b5.Position = UDim2.new(1, -10, 0, 5)
                b5.Size = UDim2.new(0, 150, 0, 25)
                b6.CornerRadius = UDim.new(0, 4)
                b6.Name = "ColorValCorner"
                b6.Parent = b5
                b7.Name = "ColorValButton"
                b7.Parent = b5
                b7.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                b7.BackgroundTransparency = 1.000
                b7.Size = UDim2.new(1, 0, 1, 0)
                b7.Font = Enum.Font.SourceSans
                b7.Text = ""
                b7.TextColor3 = Color3.fromRGB(0, 0, 0)
                b7.TextSize = 14.000
                b8.Name = "Hue"
                b8.Parent = b0
                b8.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                b8.BorderSizePixel = 0
                b8.Position = UDim2.new(0, 460, 0, 40)
                b8.Size = UDim2.new(0, 25, 0, 200)
                b9.Color =
                    ColorSequence.new {
                    ColorSequenceKeypoint.new(0.00, Color3.fromRGB(255, 0, 4)),
                    ColorSequenceKeypoint.new(0.17, Color3.fromRGB(235, 7, 255)),
                    ColorSequenceKeypoint.new(0.33, Color3.fromRGB(0, 9, 189)),
                    ColorSequenceKeypoint.new(0.49, Color3.fromRGB(0, 193, 196)),
                    ColorSequenceKeypoint.new(0.66, Color3.fromRGB(0, 255, 0)),
                    ColorSequenceKeypoint.new(0.84, Color3.fromRGB(255, 247, 0)),
                    ColorSequenceKeypoint.new(1.00, Color3.fromRGB(255, 0, 0))
                }
                b9.Rotation = 90
                b9.Name = "HueGra"
                b9.Parent = b8
                ba.Parent = b8
                ba.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                ba.Position = UDim2.new(0, 0, 1, 0)
                ba.Size = UDim2.new(1, 0, 0, 2)
                M.CornerRadius = UDim.new(0, 4)
                M.Parent = b8
                bb.Name = "Concac"
                bb.Parent = b0
                bb.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                bb.BackgroundTransparency = 1.000
                bb.Position = UDim2.new(0, 495, 0, 40)
                bb.Size = UDim2.new(0, 115, 0, 100)
                bc.Name = "RFrame"
                bc.Parent = bb
                bc.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                bc.BackgroundTransparency = 1.000
                bc.Size = UDim2.new(1, 0, 0, 25)
                bc.LayoutOrder = 0
                bd.Name = "RText"
                bd.Parent = bc
                bd.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                bd.BackgroundTransparency = 1.000
                bd.Size = UDim2.new(0, 25, 0, 25)
                bd.Font = Enum.Font.GothamBold
                bd.Text = "R:"
                bd.TextColor3 = Color3.fromRGB(115, 115, 115)
                bd.TextSize = 14.000
                bd.TextXAlignment = Enum.TextXAlignment.Left
                be.Name = "RBox"
                be.Parent = bc
                be.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                be.BackgroundTransparency = 1.000
                be.Position = UDim2.new(0, 25, 0, 0)
                be.Size = UDim2.new(1, -25, 1, 0)
                be.ClearTextOnFocus = false
                be.Font = Enum.Font.GothamBold
                be.Text = "255"
                be.TextColor3 = Color3.fromRGB(255, 255, 255)
                be.TextSize = 14.000
                be.TextXAlignment = Enum.TextXAlignment.Left
                bf.Name = "GFrame"
                bf.Parent = bb
                bf.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                bf.BackgroundTransparency = 1.000
                bf.Size = UDim2.new(1, 0, 0, 25)
                bf.LayoutOrder = 1
                bg.Name = "GText"
                bg.Parent = bf
                bg.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                bg.BackgroundTransparency = 1.000
                bg.Size = UDim2.new(0, 25, 0, 25)
                bg.Font = Enum.Font.GothamBold
                bg.Text = "G:"
                bg.TextColor3 = Color3.fromRGB(115, 115, 115)
                bg.TextSize = 14.000
                bg.TextXAlignment = Enum.TextXAlignment.Left
                bh.Name = "GBox"
                bh.Parent = bf
                bh.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                bh.BackgroundTransparency = 1.000
                bh.Position = UDim2.new(0, 25, 0, 0)
                bh.Size = UDim2.new(1, -25, 1, 0)
                bh.ClearTextOnFocus = false
                bh.Font = Enum.Font.GothamBold
                bh.Text = "255"
                bh.TextColor3 = Color3.fromRGB(255, 255, 255)
                bh.TextSize = 14.000
                bh.TextXAlignment = Enum.TextXAlignment.Left
                bi.Name = "BFrame"
                bi.Parent = bb
                bi.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                bi.BackgroundTransparency = 1.000
                bi.Size = UDim2.new(1, 0, 0, 25)
                bi.LayoutOrder = 2
                bj.Name = "BText"
                bj.Parent = bi
                bj.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                bj.BackgroundTransparency = 1.000
                bj.Size = UDim2.new(0, 25, 0, 25)
                bj.Font = Enum.Font.GothamBold
                bj.Text = "B:"
                bj.TextColor3 = Color3.fromRGB(115, 115, 115)
                bj.TextSize = 14.000
                bj.TextXAlignment = Enum.TextXAlignment.Left
                bk.Name = "BBox"
                bk.Parent = bi
                bk.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                bk.BackgroundTransparency = 1.000
                bk.Position = UDim2.new(0, 25, 0, 0)
                bk.Size = UDim2.new(1, -25, 1, 0)
                bk.ClearTextOnFocus = false
                bk.Font = Enum.Font.GothamBold
                bk.Text = "255"
                bk.TextColor3 = Color3.fromRGB(255, 255, 255)
                bk.TextSize = 14.000
                bk.TextXAlignment = Enum.TextXAlignment.Left
                ag.Parent = bb
                ag.SortOrder = Enum.SortOrder.LayoutOrder
                bl.Name = "HexFrame"
                bl.Parent = bb
                bl.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                bl.BackgroundTransparency = 1.000
                bl.Size = UDim2.new(1, 0, 0, 25)
                bl.LayoutOrder = 3
                bm.Name = "HexText"
                bm.Parent = bl
                bm.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                bm.BackgroundTransparency = 1.000
                bm.Size = UDim2.new(0, 25, 0, 25)
                bm.Font = Enum.Font.GothamBold
                bm.Text = "#"
                bm.TextColor3 = Color3.fromRGB(115, 115, 115)
                bm.TextSize = 14.000
                bm.TextXAlignment = Enum.TextXAlignment.Left
                bn.Name = "HexBox"
                bn.Parent = bl
                bn.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                bn.BackgroundTransparency = 1.000
                bn.Position = UDim2.new(0, 25, 0, 0)
                bn.Size = UDim2.new(1, -25, 1, 0)
                bn.ClearTextOnFocus = false
                bn.Font = Enum.Font.GothamBold
                bn.Text = "FFFFFF"
                bn.TextColor3 = Color3.fromRGB(255, 255, 255)
                bn.TextSize = 14.000
                bn.TextXAlignment = Enum.TextXAlignment.Left
                aP.Name = "Linesec"
                aP.Parent = bb
                aP.AnchorPoint = Vector2.new(0.5, 1)
                aP.BorderSizePixel = 0
                aP.Position = UDim2.new(0.5, 0, 1, -2)
                aP.Size = UDim2.new(1, -10, 0, 2)
                aP.LayoutOrder = 4
                aP.BackgroundColor3 = getgenv().UIColor["Section Underline Color"]
                table.insert(
                    c["Section Underline Color"],
                    function()
                        aP.BackgroundColor3 = getgenv().UIColor["Section Underline Color"]
                    end
                )
                aQ.Transparency =
                    NumberSequence.new {
                    NumberSequenceKeypoint.new(0.00, 1.00),
                    NumberSequenceKeypoint.new(0.30, 0.25),
                    NumberSequenceKeypoint.new(0.70, 0.25),
                    NumberSequenceKeypoint.new(1.00, 1.00)
                }
                aQ.Parent = aP
                bo.Name = "CungroiF"
                bo.Parent = b0
                bo.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                bo.BackgroundTransparency = 1.000
                bo.Position = UDim2.new(0, 495, 0, 145)
                bo.Size = UDim2.new(0, 115, 0, 25)
                bp.Name = "CungroiFF"
                bp.Parent = bo
                bp.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                bp.BackgroundTransparency = 1.000
                bp.Size = UDim2.new(1, 0, 0, 25)
                bp.LayoutOrder = 4
                bq.Name = "TextColor"
                bq.Parent = bp
                bq.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                bq.BackgroundTransparency = 1.000
                bq.Size = UDim2.new(0, 85, 0, 25)
                bq.Font = Enum.Font.GothamBold
                bq.Text = "Rainbow"
                bq.TextSize = 14.000
                bq.TextXAlignment = Enum.TextXAlignment.Left
                bq.TextColor3 = getgenv().UIColor["Text Color"]
                table.insert(
                    c["Text Color"],
                    function()
                        bq.TextColor3 = getgenv().UIColor["Text Color"]
                    end
                )
                br.Name = "Setting_checkbox"
                br.Parent = bp
                br.AnchorPoint = Vector2.new(1, 0.5)
                br.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                br.BackgroundTransparency = 1.000
                br.Position = UDim2.new(1, -5, 0.5, 0)
                br.Size = UDim2.new(0, 25, 0, 25)
                br.Image = "rbxassetid://4552505888"
                br.ImageColor3 = getgenv().UIColor["Toggle Border Color"]
                table.insert(
                    c["Toggle Border Color"],
                    function()
                        br.ImageColor3 = getgenv().UIColor["Toggle Border Color"]
                    end
                )
                bs.Name = "Setting_check"
                bs.Parent = br
                bs.AnchorPoint = Vector2.new(0, 1)
                bs.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                bs.BackgroundTransparency = 1.000
                bs.Position = UDim2.new(0, 0, 1, 0)
                bs.Image = "rbxassetid://4555411759"
                bs.ImageColor3 = getgenv().UIColor["Toggle Checked Color"]
                table.insert(
                    c["Toggle Checked Color"],
                    function()
                        bs.ImageColor3 = getgenv().UIColor["Toggle Checked Color"]
                    end
                )
                bt.Name = "Cungroitog"
                bt.Parent = bp
                bt.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                bt.BackgroundTransparency = 1.000
                bt.Size = UDim2.new(1, 0, 1, 0)
                bt.Font = Enum.Font.SourceSans
                bt.Text = ""
                bt.TextColor3 = Color3.fromRGB(0, 0, 0)
                bt.TextSize = 14.000
                bu.Name = "Color"
                bu.Parent = b0
                bu.BackgroundColor3 = Color3.fromRGB(255, 0, 0)
                bu.BorderSizePixel = 0
                bu.Position = UDim2.new(0, 10, 0, 40)
                bu.Size = UDim2.new(0, 440, 0, 200)
                bu.Image = "rbxassetid://4155801252"
                bv.Name = "SelectorColor"
                bv.Parent = bu
                bv.AnchorPoint = Vector2.new(0.5, 0.5)
                bv.BackgroundColor3 = Color3.fromRGB(203, 203, 203)
                bv.BorderColor3 = Color3.fromRGB(70, 70, 70)
                bv.Position = UDim2.new(1, 0, 0, 0)
                bv.Size = UDim2.new(0, 4, 0, 4)
                bw.CornerRadius = UDim.new(0, 4)
                bw.Parent = bu
                bx.Name = "HoithoF"
                bx.Parent = b0
                bx.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                bx.BackgroundTransparency = 1.000
                bx.Position = UDim2.new(0, 495, 0, 175)
                bx.Size = UDim2.new(0, 115, 0, 25)
                bx.LayoutOrder = 5
                by.Name = "HoithoF"
                by.Parent = bx
                by.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                by.BackgroundTransparency = 1.000
                by.Size = UDim2.new(1, 0, 1, 25)
                bz.Name = "TextColor"
                bz.Parent = by
                bz.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                bz.BackgroundTransparency = 1.000
                bz.Size = UDim2.new(0, 85, 0, 25)
                bz.Font = Enum.Font.GothamBold
                bz.Text = "Breathing"
                bz.TextSize = 14.000
                bz.TextXAlignment = Enum.TextXAlignment.Left
                bz.TextColor3 = getgenv().UIColor["Text Color"]
                table.insert(
                    c["Text Color"],
                    function()
                        bz.TextColor3 = getgenv().UIColor["Text Color"]
                    end
                )
                bA.Name = "setting_checkbox"
                bA.Parent = by
                bA.AnchorPoint = Vector2.new(1, 0)
                bA.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                bA.BackgroundTransparency = 1.000
                bA.Position = UDim2.new(1, -5, 0, 0)
                bA.Size = UDim2.new(0, 25, 0, 25)
                bA.Image = "rbxassetid://4552505888"
                bA.ImageColor3 = Color3.fromRGB(209, 23, 23)
                bA.ImageColor3 = getgenv().UIColor["Toggle Border Color"]
                table.insert(
                    c["Toggle Border Color"],
                    function()
                        bA.ImageColor3 = getgenv().UIColor["Toggle Border Color"]
                    end
                )
                bB.Name = "setting_check"
                bB.Parent = bA
                bB.AnchorPoint = Vector2.new(0, 1)
                bB.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                bB.BackgroundTransparency = 1.000
                bB.Position = UDim2.new(0, 0, 1, 0)
                bB.Image = "rbxassetid://4555411759"
                bB.ImageColor3 = getgenv().UIColor["Toggle Checked Color"]
                table.insert(
                    c["Toggle Checked Color"],
                    function()
                        bB.ImageColor3 = getgenv().UIColor["Toggle Checked Color"]
                    end
                )
                bC.Name = "Hoithoitog"
                bC.Parent = by
                bC.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                bC.BackgroundTransparency = 1.000
                bC.Size = UDim2.new(1, 0, 0, 25)
                bC.Font = Enum.Font.SourceSans
                bC.Text = ""
                bC.TextColor3 = Color3.fromRGB(0, 0, 0)
                bC.TextSize = 14.000
                bD.Parent = by
                bD.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                bD.BackgroundTransparency = 1.000
                bD.Position = UDim2.new(0, 0, 0, 30)
                bD.Size = UDim2.new(1, 0, 0, 25)
                bE.Parent = bD
                bE.FillDirection = Enum.FillDirection.Horizontal
                bE.SortOrder = Enum.SortOrder.LayoutOrder
                bE.Padding = UDim.new(0, 5)
                bF.Name = "Cor1"
                bF.Parent = bD
                bF.BackgroundColor3 = e[a_].Breathing.Color1
                bF.Selectable = true
                bF.Size = UDim2.new(0, 25, 0, 25)
                bG.CornerRadius = UDim.new(1, 0)
                bG.Parent = bF
                bH.Name = "BCor1"
                bH.Parent = bF
                bH.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                bH.BackgroundTransparency = 1.000
                bH.Size = UDim2.new(1, 0, 1, 0)
                bH.Font = Enum.Font.SourceSans
                bH.Text = ""
                bH.TextColor3 = Color3.fromRGB(0, 0, 0)
                bH.TextSize = 14.000
                bI.Name = "Cor2"
                bI.Parent = bD
                bI.BackgroundColor3 = e[a_].Breathing.Color2
                bI.Selectable = true
                bI.Size = UDim2.new(0, 25, 0, 25)
                bJ.CornerRadius = UDim.new(1, 0)
                bJ.Parent = bI
                bK.Name = "BCor2"
                bK.Parent = bI
                bK.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                bK.BackgroundTransparency = 1.000
                bK.Size = UDim2.new(1, 0, 1, 0)
                bK.Font = Enum.Font.SourceSans
                bK.Text = ""
                bK.TextColor3 = Color3.fromRGB(0, 0, 0)
                bK.TextSize = 14.000
                local bL = false
                b7.MouseButton1Click:Connect(
                    function()
                        bL = not bL
                        local bM = bL and UDim2.new(1, 0, 0, 255) or UDim2.new(1, 0, 0, 35)
                        w:Create(b0, TweenInfo.new(getgenv().UIColor["Tween Animation 1 Speed"]), {Size = bM}):Play()
                    end
                )
                b7.MouseButton1Click:Connect(
                    function()
                        u.ButtonEffect()
                    end
                )
                local bN = game:GetService("UserInputService")
                local bO = game:GetService("RunService")
                local bP = game.Players.LocalPlayer
                local y = bP:GetMouse()
                local bQ, bR = nil, nil
                local bS = true
                local bT = 0
                local function bU(...)
                    if bS then
                        return wait(...)
                    else
                        wait()
                        return false
                    end
                end
                local function bV(g)
                    return {math.floor(g.r * 255), math.floor(g.g * 255), math.floor(g.b * 255)}
                end
                local function bW(bX)
                    bX = bX:gsub("#", ""):upper():gsub("0X", "")
                    return Color3.fromRGB(
                        tonumber(bX:sub(1, 2), 16),
                        tonumber(bX:sub(3, 4), 16),
                        tonumber(bX:sub(5, 6), 16)
                    )
                end
                local function bY(g)
                    local bZ, b_, B =
                        string.format("%X", math.floor(g.R * 255)),
                        string.format("%X", math.floor(g.G * 255)),
                        string.format("%X", math.floor(g.B * 255))
                    if #bZ < 2 then
                        bZ = "0" .. bZ
                    end
                    if #b_ < 2 then
                        b_ = "0" .. b_
                    end
                    if #B < 2 then
                        B = "0" .. B
                    end
                    return string.format("%s%s%s", bZ, b_, B)
                end
                aV, aW, aX = 1, 1, 1
                local function c0(n, B)
                    if n > B then
                        return n, B
                    else
                        return B, n
                    end
                end
                local function c1(n, B)
                    if n + B > 255 then
                        local c2, c3 = c0(n, B)
                        local a8 = 255 - c2
                        local c4, c5 = c0(a8, c3)
                        return c4 - c5
                    else
                        return n + B
                    end
                end
                function CongColor(n, B)
                    local c6, c7 = n, B
                    local c8 = math.sqrt
                    local c9 = {}
                    c9.R = 255 - c8(((255 - c6.R) ^ 2 + (255 - c7.R) ^ 2) / 2)
                    c9.G = 255 - c8(((255 - c6.G) ^ 2 + (255 - c7.G) ^ 2) / 2)
                    c9.B = 255 - c8(((255 - c6.B) ^ 2 + (255 - c7.B) ^ 2) / 2)
                    return Color3.new(c9.R, c9.G, c9.B)
                end
                local function ca(cb)
                    local c9 = cb or Color3.fromHSV(aV, aW, aX)
                    if not c9 then
                        aW, aV, aX = cb:ToHSV()
                    end
                    bn.Text = bY(c9)
                    bu.BackgroundColor3 = Color3.fromHSV(aV, 1, 1)
                    if cb then
                        bu.BackgroundColor3 = cb
                        bv.Position = UDim2.new(cb and select(3, Color3.toHSV(cb)))
                    end
                    local cc = 1 - Color3.toHSV(c9)
                    local cd = b8.Frame.Position.Y.Scale
                    if cd ~= cc and not ((cc == 0 or cc == 1) and (cd == 1 or cd == 0)) then
                        b8.Frame.Position = UDim2.fromScale(0, cc)
                    end
                    be.Text, bh.Text, bk.Text = bV(c9)[1], bV(c9)[2], bV(c9)[3]
                    b5.BackgroundColor3 = c9
                    local ce = {}
                    getgenv().UIColor[a_] = c9
                end
                ca(e[a_].Color)
                local function cf(cg)
                    if bQ then
                        bQ = bQ:Disconnect() and nil or nil
                    end
                    if bR then
                        bR = bR:Disconnect() and nil or nil
                    end
                    if cg then
                        pcall(
                            function()
                                local ch = 1 / 255
                                while bU() and aU.Cungroi do
                                    bT = ch + bT
                                    if bT > 1 then
                                        bT = 0
                                    end
                                    aV = bT
                                    ca(Color3.fromHSV(bT, 1, 1))
                                end
                            end
                        )
                    end
                end
                local ci = aU.Cungroi and UDim2.new(1, -4, 1, -4) or UDim2.new(0, 0, 0, 0)
                local cc = aU.Cungroi and UDim2.new(.5, 0, .5, 0) or UDim2.new(0, 0, 1, 0)
                local cj = aU.Cungroi and Vector2.new(.5, .5) or Vector2.new(0, 1)
                bs.Size = ci
                bs.Position = cc
                bs.AnchorPoint = cj
                spawn(
                    function()
                        cf(aU.Cungroi)
                    end
                )
                bt.MouseButton1Click:Connect(
                    function()
                        u.ButtonEffect()
                    end
                )
                bt.MouseButton1Click:Connect(
                    function()
                        aU.Cungroi = not aU.Cungroi
                        ci = aU.Cungroi and UDim2.new(1, -4, 1, -4) or UDim2.new(0, 0, 0, 0)
                        cc = aU.Cungroi and UDim2.new(.5, 0, .5, 0) or UDim2.new(0, 0, 1, 0)
                        cj = aU.Cungroi and Vector2.new(.5, .5) or Vector2.new(0, 1)
                        game.TweenService:Create(
                            bs,
                            TweenInfo.new(getgenv().UIColor["Tween Animation 1 Speed"]),
                            {Size = ci, Position = cc, AnchorPoint = cj}
                        ):Play()
                        cf(aU.Cungroi)
                    end
                )
                bn.FocusLost:Connect(
                    function()
                        if #bn.Text > 5 then
                            local ck, cl = pcall(bW, bn.Text)
                            ca(ck and cl)
                        end
                    end
                )
                be.FocusLost:Connect(
                    function()
                        if tonumber(be.Text) > 255 then
                            be.Text = 255
                        elseif tonumber(be.Text) < 0 then
                            be.Text = 0
                        end
                        local ck, cl = pcall(Color3.fromRGB, tonumber(be.Text), tonumber(bk.Text), tonumber(bh.Text))
                        ca(ck and cl)
                    end
                )
                bh.FocusLost:Connect(
                    function()
                        if tonumber(bh.Text) > 255 then
                            bh.Text = 255
                        elseif tonumber(bh.Text) < 0 then
                            bh.Text = 0
                        end
                        local ck, cl = pcall(Color3.fromRGB, tonumber(be.Text), tonumber(bk.Text), tonumber(bh.Text))
                        ca(ck and cl)
                    end
                )
                bk.FocusLost:Connect(
                    function()
                        if tonumber(bk.Text) > 255 then
                            bk.Text = 255
                        elseif tonumber(bk.Text) < 0 then
                            bk.Text = 0
                        end
                        local ck, cl = pcall(Color3.fromRGB, tonumber(be.Text), tonumber(bk.Text), tonumber(bh.Text))
                        ca(ck and cl)
                    end
                )
                aV =
                    1 -
                    math.clamp(b8.Frame.AbsolutePosition.Y - b8.AbsolutePosition.Y, 0, b8.AbsoluteSize.Y) /
                        b8.AbsoluteSize.Y
                aW =
                    math.clamp(bu.SelectorColor.AbsolutePosition.X - bu.AbsolutePosition.X, 0, bu.AbsoluteSize.X) /
                    bu.AbsoluteSize.X
                aX =
                    1 -
                    math.clamp(bu.SelectorColor.AbsolutePosition.Y - bu.AbsolutePosition.Y, 0, bu.AbsoluteSize.Y) /
                        bu.AbsoluteSize.Y
                bu.InputBegan:Connect(
                    function(a7)
                        if a7.UserInputType == Enum.UserInputType.MouseButton1 then
                            if bQ then
                                bQ:Disconnect()
                            end
                            _ = true
                            bQ =
                                bO.RenderStepped:Connect(
                                function()
                                    local cm =
                                        math.clamp(y.X - bu.AbsolutePosition.X, 0, bu.AbsoluteSize.X) /
                                        bu.AbsoluteSize.X
                                    local cn =
                                        math.clamp(y.Y - bu.AbsolutePosition.Y, 0, bu.AbsoluteSize.Y) /
                                        bu.AbsoluteSize.Y
                                    bv.Position = UDim2.fromScale(cm, cn)
                                    aW = cm
                                    aX = 1 - cn
                                    ca()
                                end
                            )
                        end
                    end
                )
                bu.InputEnded:Connect(
                    function(a7)
                        if a7.UserInputType == Enum.UserInputType.MouseButton1 then
                            if bQ then
                                _ = false
                                bQ:Disconnect()
                            end
                        end
                    end
                )
                b8.InputBegan:Connect(
                    function(a7)
                        if a7.UserInputType == Enum.UserInputType.MouseButton1 then
                            if bR then
                                bR:Disconnect()
                            end
                            _ = true
                            bR =
                                bO.RenderStepped:Connect(
                                function()
                                    local co =
                                        math.clamp(y.Y - b8.AbsolutePosition.Y, 0, b8.AbsoluteSize.Y) /
                                        b8.AbsoluteSize.Y
                                    b8.Frame.Position = UDim2.fromScale(0, co)
                                    aV = 1 - co
                                    ca()
                                end
                            )
                        end
                    end
                )
                b8.InputEnded:Connect(
                    function(a7)
                        if a7.UserInputType == Enum.UserInputType.MouseButton1 then
                            if bR then
                                _ = false
                                bR:Disconnect()
                            end
                        end
                    end
                )
                bH.MouseButton1Click:Connect(
                    function()
                        u.ButtonEffect()
                    end
                )
                bK.MouseButton1Click:Connect(
                    function()
                        u.ButtonEffect()
                    end
                )
                bH.MouseButton1Click:Connect(
                    function()
                        bF.BackgroundColor3 = b5.BackgroundColor3
                        e[a_].Breathing.Color1 = b5.BackgroundColor3
                    end
                )
                bK.MouseButton1Click:Connect(
                    function()
                        bI.BackgroundColor3 = b5.BackgroundColor3
                        e[a_].Breathing.Color2 = b5.BackgroundColor3
                    end
                )
                bC.MouseButton1Click:Connect(
                    function()
                        u.ButtonEffect()
                    end
                )
                local cp = false
                spawn(
                    function()
                        while wait() do
                            if e[a_].Breathing.Toggle then
                                ca(b5.BackgroundColor3)
                            end
                        end
                    end
                )
                local function cq()
                    local cr, cs = bI.BackgroundColor3, bF.BackgroundColor3
                    local ci = e[a_].Breathing.Toggle and UDim2.new(1, -4, 1, -4) or UDim2.new(0, 0, 0, 0)
                    local cc = e[a_].Breathing.Toggle and UDim2.new(.5, 0, .5, 0) or UDim2.new(0, 0, 1, 0)
                    local cj = e[a_].Breathing.Toggle and Vector2.new(.5, .5) or Vector2.new(0, 1)
                    game.TweenService:Create(
                        bB,
                        TweenInfo.new(getgenv().UIColor["Tween Animation 1 Speed"]),
                        {Size = ci, Position = cc, AnchorPoint = cj}
                    ):Play()
                    if e[a_].Breathing.Toggle then
                        local ct = game.TweenService:Create(b5, TweenInfo.new(2), {BackgroundColor3 = cs})
                        local cu = game.TweenService:Create(bu, TweenInfo.new(2), {BackgroundColor3 = cs})
                        ct:Play()
                        cu:Play()
                        ct.Completed:Connect(
                            function()
                                if e[a_].Breathing.Toggle then
                                    local cv = game.TweenService:Create(b5, TweenInfo.new(2), {BackgroundColor3 = cr})
                                    local cw = game.TweenService:Create(bu, TweenInfo.new(2), {BackgroundColor3 = cr})
                                    cv:Play()
                                    cw:Play()
                                    if e[a_].Breathing.Toggle then
                                        cv.Completed:Connect(
                                            function()
                                                ct:Play()
                                                cu:Play()
                                            end
                                        )
                                    end
                                end
                            end
                        )
                    end
                end
                spawn(
                    function()
                        cq()
                    end
                )
                bC.MouseButton1Click:Connect(
                    function()
                        e[a_].Breathing.Toggle = not e[a_].Breathing.Toggle
                        cq()
                    end
                )
            end
            function aT.CreateBox(H)
                local cx = tostring(H.Title) or ""
                local cy = tostring(H.Placeholder) or ""
                local aZ = getgenv().UIColor[H.Type] or ""
                local cz = Instance.new("Frame")
                local cA = Instance.new("UICorner")
                local cB = Instance.new("Frame")
                local cC = Instance.new("UICorner")
                local cD = Instance.new("TextLabel")
                local cE = Instance.new("Frame")
                local cF = Instance.new("UICorner")
                local cG = Instance.new("TextBox")
                local cH = Instance.new("Frame")
                cz.Name = "BoxFrame"
                cz.Parent = aM
                cz.BackgroundColor3 = Color3.fromRGB(60, 60, 60)
                cz.BackgroundTransparency = 1.000
                cz.Position = UDim2.new(0, 0, 0.208333328, 0)
                cz.Size = UDim2.new(1, 0, 0, 60)
                cA.CornerRadius = UDim.new(0, 4)
                cA.Name = "BoxCorner"
                cA.Parent = cz
                cB.Name = "Background1"
                cB.Parent = cz
                cB.AnchorPoint = Vector2.new(0.5, 0.5)
                cB.Position = UDim2.new(0.5, 0, 0.5, 0)
                cB.Size = UDim2.new(1, -10, 1, 0)
                cB.BackgroundColor3 = getgenv().UIColor["Background 1 Color"]
                table.insert(
                    c["Background 1 Color"],
                    function()
                        cB.BackgroundColor3 = getgenv().UIColor["Background 1 Color"]
                    end
                )
                cB.BackgroundTransparency = getgenv().UIColor["Background 1 Transparency"]
                table.insert(
                    c["Background 1 Transparency"],
                    function()
                        cB.BackgroundTransparency = getgenv().UIColor["Background 1 Transparency"]
                    end
                )
                cC.CornerRadius = UDim.new(0, 4)
                cC.Name = "ButtonCorner"
                cC.Parent = cB
                cD.Name = "TextColor"
                cD.Parent = cB
                cD.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                cD.BackgroundTransparency = 1.000
                cD.Position = UDim2.new(0, 10, 0, 0)
                cD.Size = UDim2.new(1, -10, 0.5, 0)
                cD.Font = Enum.Font.GothamBlack
                cD.Text = cx
                cD.TextSize = 14.000
                cD.TextXAlignment = Enum.TextXAlignment.Left
                cD.TextColor3 = getgenv().UIColor["Text Color"]
                table.insert(
                    c["Text Color"],
                    function()
                        cD.TextColor3 = getgenv().UIColor["Text Color"]
                    end
                )
                cE.Name = "Background2"
                cE.Parent = cB
                cE.AnchorPoint = Vector2.new(1, 0.5)
                cE.BackgroundColor3 = getgenv().UIColor["Background 2 Color"]
                cE.ClipsDescendants = true
                cE.Position = UDim2.new(1, -5, 0, 40)
                cE.Size = UDim2.new(1, -10, 0, 25)
                table.insert(
                    c["Text Color"],
                    function()
                        cE.BackgroundColor3 = getgenv().UIColor["Background 2 Color"]
                    end
                )
                cF.CornerRadius = UDim.new(0, 4)
                cF.Name = "ButtonCorner"
                cF.Parent = cE
                cG.Name = "TextColorPlaceholder"
                cG.Parent = cE
                cG.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                cG.BackgroundTransparency = 1.000
                cG.Position = UDim2.new(0, 5, 0, 0)
                cG.Size = UDim2.new(1, -5, 1, 0)
                cG.Font = Enum.Font.GothamBold
                cG.PlaceholderText = cy
                cG.Text = ""
                cG.TextSize = 14.000
                cG.TextXAlignment = Enum.TextXAlignment.Left
                cG.PlaceholderColor3 = getgenv().UIColor["Placeholder Text Color"]
                cG.TextColor3 = getgenv().UIColor["Text Color"]
                table.insert(
                    c["Placeholder Text Color"],
                    function()
                        cG.PlaceholderColor3 = getgenv().UIColor["Placeholder Text Color"]
                    end
                )
                table.insert(
                    c["Text Color"],
                    function()
                        cG.TextColor3 = getgenv().UIColor["Text Color"]
                    end
                )
                cH.Name = "Setting_Lineeeee"
                cH.Parent = cE
                cH.BackgroundTransparency = 1.000
                cH.Position = UDim2.new(0, 0, 1, -2)
                cH.Size = UDim2.new(1, 0, 0, 6)
                cH.BackgroundColor3 = getgenv().UIColor["Textbox Highlight Color"]
                table.insert(
                    c["Textbox Highlight Color"],
                    function()
                        cH.BackgroundColor3 = getgenv().UIColor["Textbox Highlight Color"]
                    end
                )
                cG.Focused:Connect(
                    function()
                        w:Create(
                            cH,
                            TweenInfo.new(getgenv().UIColor["Tween Animation 2 Speed"]),
                            {BackgroundTransparency = 0}
                        ):Play()
                    end
                )
                cG.Focused:Connect(
                    function()
                        u.ButtonEffect()
                    end
                )
                cG.FocusLost:Connect(
                    function()
                        w:Create(
                            cH,
                            TweenInfo.new(getgenv().UIColor["Tween Animation 2 Speed"]),
                            {BackgroundTransparency = 1}
                        ):Play()
                        if cG.Text ~= "" then
                            getgenv().UIColor[H.Type] = cG.Text
                            if H.Type == "Background Image" then
                                u.ReloadMain(cG.Text)
                            end
                        end
                    end
                )
                local cI = {}
                if aZ then
                    cG.Text = aZ
                    getgenv().UIColor[H.Type] = aZ
                end
                function cI.SetValue(r)
                    cG.Text = r
                    getgenv().UIColor[H.Type] = r
                end
                return cI
            end
            function aT.CreateSlider(H)
                local cx = tostring(H.Title) or ""
                local cJ = tonumber(H.min) or 0
                local cK = tonumber(H.Max) or 100
                local cL = H.Precise or false
                local cM = getgenv().UIColor[H.Type] or 0
                local cN = function(v)
                    getgenv().UIColor[H.Type] = v
                end
                local cO = 600
                local cP = Instance.new("Frame")
                local cQ = Instance.new("UICorner")
                local cR = Instance.new("Frame")
                local cS = Instance.new("UICorner")
                local cT = Instance.new("TextLabel")
                local cU = Instance.new("Frame")
                local cV = Instance.new("TextButton")
                local cW = Instance.new("UICorner")
                local cX = Instance.new("Frame")
                local cY = Instance.new("UICorner")
                local cZ = Instance.new("Frame")
                local c_ = Instance.new("UICorner")
                local d0 = Instance.new("TextBox")
                cP.Name = cx .. "buda"
                cP.Parent = aM
                cP.BackgroundColor3 = Color3.fromRGB(60, 60, 60)
                cP.BackgroundTransparency = 1.000
                cP.Position = UDim2.new(0, 0, 0.208333328, 0)
                cP.Size = UDim2.new(1, 0, 0, 50)
                cQ.CornerRadius = UDim.new(0, 4)
                cQ.Name = "SliderCorner"
                cQ.Parent = cP
                cR.Name = "Background1"
                cR.Parent = cP
                cR.AnchorPoint = Vector2.new(0.5, 0.5)
                cR.Position = UDim2.new(0.5, 0, 0.5, 0)
                cR.Size = UDim2.new(1, -10, 1, 0)
                cR.BackgroundColor3 = getgenv().UIColor["Background 1 Color"]
                table.insert(
                    c["Background 1 Color"],
                    function()
                        cR.BackgroundColor3 = getgenv().UIColor["Background 1 Color"]
                    end
                )
                cR.BackgroundTransparency = getgenv().UIColor["Background 1 Transparency"]
                table.insert(
                    c["Background 1 Transparency"],
                    function()
                        cR.BackgroundTransparency = getgenv().UIColor["Background 1 Transparency"]
                    end
                )
                cS.CornerRadius = UDim.new(0, 4)
                cS.Name = "SliderBGCorner"
                cS.Parent = cR
                cT.Name = "TextColor"
                cT.Parent = cR
                cT.BackgroundColor3 = Color3.fromRGB(230, 230, 230)
                cT.BackgroundTransparency = 1.000
                cT.Position = UDim2.new(0, 10, 0, 0)
                cT.Size = UDim2.new(1, -10, 0, 25)
                cT.Font = Enum.Font.GothamBlack
                cT.Text = cx
                cT.TextSize = 14.000
                cT.TextXAlignment = Enum.TextXAlignment.Left
                cT.TextColor3 = getgenv().UIColor["Text Color"]
                table.insert(
                    c["Text Color"],
                    function()
                        cT.TextColor3 = getgenv().UIColor["Text Color"]
                    end
                )
                cU.Name = "SliderBar"
                cU.Parent = cP
                cU.AnchorPoint = Vector2.new(.5, 0.5)
                cU.Position = UDim2.new(.5, 0, 0.5, 14)
                cU.Size = UDim2.new(0, 600, 0, 6)
                cU.BackgroundColor3 = getgenv().UIColor["Background 2 Color"]
                table.insert(
                    c["Background 2 Color"],
                    function()
                        cU.BackgroundColor3 = getgenv().UIColor["Background 2 Color"]
                    end
                )
                cV.Name = "SliderButton "
                cV.Parent = cU
                cV.BackgroundColor3 = Color3.fromRGB(230, 230, 230)
                cV.BackgroundTransparency = 1.000
                cV.Size = UDim2.new(1, 0, 1, 0)
                cV.Font = Enum.Font.GothamBold
                cV.Text = ""
                cV.TextColor3 = Color3.fromRGB(230, 230, 230)
                cV.TextSize = 14.000
                cW.CornerRadius = UDim.new(1, 0)
                cW.Name = "SliderBarCorner"
                cW.Parent = cU
                cX.Name = "Bar"
                cX.BorderSizePixel = 0
                cX.Parent = cU
                cX.Size = UDim2.new(0, 0, 1, 0)
                cX.BackgroundColor3 = getgenv().UIColor["Slider Line Color"]
                table.insert(
                    c["Slider Line Color"],
                    function()
                        cX.BackgroundColor3 = getgenv().UIColor["Slider Line Color"]
                    end
                )
                cY.CornerRadius = UDim.new(1, 0)
                cY.Name = "BarCorner"
                cY.Parent = cX
                cZ.Name = "Background2"
                cZ.Parent = cP
                cZ.AnchorPoint = Vector2.new(1, 0)
                cZ.Position = UDim2.new(1, -10, 0, 5)
                cZ.Size = UDim2.new(0, 150, 0, 25)
                cZ.BackgroundColor3 = getgenv().UIColor["Background 2 Color"]
                table.insert(
                    c["Background 2 Color"],
                    function()
                        cZ.BackgroundColor3 = getgenv().UIColor["Background 2 Color"]
                    end
                )
                c_.CornerRadius = UDim.new(0, 4)
                c_.Name = "Sliderbox"
                c_.Parent = cZ
                d0.Name = "TextColor"
                d0.Parent = cZ
                d0.BackgroundColor3 = Color3.fromRGB(230, 230, 230)
                d0.BackgroundTransparency = 1.000
                d0.Size = UDim2.new(1, 0, 1, 0)
                d0.Font = Enum.Font.GothamBold
                d0.Text = ""
                d0.TextSize = 14.000
                d0.TextColor3 = getgenv().UIColor["Text Color"]
                table.insert(
                    c["Text Color"],
                    function()
                        d0.TextColor3 = getgenv().UIColor["Text Color"]
                    end
                )
                cV.MouseEnter:Connect(
                    function()
                        w:Create(
                            cX,
                            TweenInfo.new(getgenv().UIColor["Tween Animation 2 Speed"]),
                            {BackgroundColor3 = getgenv().UIColor["Slider Highlight Color"]}
                        ):Play()
                    end
                )
                cV.MouseLeave:Connect(
                    function()
                        w:Create(
                            cX,
                            TweenInfo.new(getgenv().UIColor["Tween Animation 2 Speed"]),
                            {BackgroundColor3 = getgenv().UIColor["Slider Line Color"]}
                        ):Play()
                    end
                )
                local y = game.Players.LocalPlayer:GetMouse()
                if cM then
                    if cM <= cJ then
                        cM = cJ
                    elseif cM >= cK then
                        cM = cK
                    end
                    cX.Size = UDim2.new(1 - (cK - cM) / (cK - cJ), 0, 0, 6)
                    d0.Text = cM
                    cN(cM)
                end
                cV.MouseButton1Down:Connect(
                    function()
                        local d1 =
                            cL and
                            tonumber(
                                string.format(
                                    "%.1f",
                                    (tonumber(cK) - tonumber(cJ)) / cO * cX.AbsoluteSize.X + tonumber(cJ)
                                )
                            ) or
                            math.floor((tonumber(cK) - tonumber(cJ)) / cO * cX.AbsoluteSize.X + tonumber(cJ))
                        pcall(
                            function()
                                cN(d1)
                                d0.Text = d1
                            end
                        )
                        cX.Size = UDim2.new(0, math.clamp(y.X - cX.AbsolutePosition.X, 0, cO), 0, 6)
                        moveconnection =
                            y.Move:Connect(
                            function()
                                local d1 =
                                    cL and
                                    tonumber(
                                        string.format(
                                            "%.1f",
                                            (tonumber(cK) - tonumber(cJ)) / cO * cX.AbsoluteSize.X + tonumber(cJ)
                                        )
                                    ) or
                                    math.floor((tonumber(cK) - tonumber(cJ)) / cO * cX.AbsoluteSize.X + tonumber(cJ))
                                pcall(
                                    function()
                                        cN(d1)
                                        d0.Text = d1
                                    end
                                )
                                cX.Size = UDim2.new(0, math.clamp(y.X - cX.AbsolutePosition.X, 0, cO), 0, 6)
                            end
                        )
                        releaseconnection =
                            x.InputEnded:Connect(
                            function(d2)
                                if d2.UserInputType == Enum.UserInputType.MouseButton1 then
                                    local d1 =
                                        cL and
                                        tonumber(
                                            string.format(
                                                "%.1f",
                                                (tonumber(cK) - tonumber(cJ)) / cO * cX.AbsoluteSize.X + tonumber(cJ)
                                            )
                                        ) or
                                        math.floor(
                                            (tonumber(cK) - tonumber(cJ)) / cO * cX.AbsoluteSize.X + tonumber(cJ)
                                        )
                                    pcall(
                                        function()
                                            cN(d1)
                                            d0.Text = d1
                                        end
                                    )
                                    cX.Size = UDim2.new(0, math.clamp(y.X - cX.AbsolutePosition.X, 0, cO), 0, 6)
                                    moveconnection:Disconnect()
                                    releaseconnection:Disconnect()
                                end
                            end
                        )
                    end
                )
                local function d3(r)
                    if tonumber(r) <= cJ then
                        cX.Size = UDim2.new(0, 0 * cO, 0, 6)
                        d0.Text = cJ
                        cN(tonumber(cJ))
                    elseif tonumber(r) >= cK then
                        cX.Size = UDim2.new(0, cK / cK * cO, 0, 6)
                        d0.Text = cK
                        cN(tonumber(cK))
                    else
                        cX.Size = UDim2.new(1 - (cK - r) / (cK - cJ), 0, 0, 6)
                        cN(tonumber(r))
                    end
                end
                d0.FocusLost:Connect(
                    function()
                        d3(d0.Text)
                    end
                )
                local d4 = {}
                function d4.SetValue(r)
                    d3(r)
                end
                return d4
            end
            return aT
        end
        return aK
    end
    local d5 = t.CreateCustomColor()
    local d6 = d5.CreateSection("Main")
    d6.CreateColorPicker({Title = "Border Color", Type = "Border Color"})
    d6.CreateColorPicker({Title = "Click Effect Color", Type = "Click Effect Color"})
    d6.CreateColorPicker({Title = "Setting Icon Color", Type = "Setting Icon Color"})
    d6.CreateBox({Title = "Logo Image", Placeholder = "URL Here (PNG only), Recommended 128x128", Type = "Logo Image"})
    local d7 = d5.CreateSection("Search")
    d7.CreateColorPicker({Title = "Search Icon Color", Type = "Search Icon Color"})
    d7.CreateColorPicker({Title = "Search Icon Highlight Color", Type = "Search Icon Highlight Color"})
    local d8 = d5.CreateSection("Text")
    d8.CreateColorPicker({Title = "GUI Text Color", Type = "GUI Text Color"})
    d8.CreateColorPicker({Title = "Text Color", Type = "Text Color"})
    d8.CreateColorPicker({Title = "Placeholder Text Color", Type = "Placeholder Text Color"})
    d8.CreateColorPicker({Title = "Title Text Color", Type = "Title Text Color"})
    local d9 = d5.CreateSection("Background")
    d9.CreateColorPicker({Title = "Background 1 Color", Type = "Background 1 Color"})
    d9.CreateSlider(
        {
            Title = "Background 1 Transparency",
            Type = "Background 1 Transparency",
            Min = 0,
            Max = 1,
            Default = 0,
            Precise = true
        }
    )
    d9.CreateColorPicker({Title = "Background 2 Color", Type = "Background 2 Color"})
    d9.CreateColorPicker({Title = "Background 3 Color", Type = "Background 3 Color"})
    d9.CreateBox(
        {
            Title = "Background Image",
            Placeholder = "URL Here (WEBM / PNG only), Recommended 1280x720",
            Type = "Background Image"
        }
    )
    local da = d5.CreateSection("Page")
    da.CreateColorPicker({Title = "Page Selected Color", Type = "Page Selected Color"})
    local db = d5.CreateSection("Section")
    db.CreateColorPicker({Title = "Section Text Color", Type = "Section Text Color"})
    db.CreateColorPicker({Title = "Section Underline Color", Type = "Section Underline Color"})
    local dc = d5.CreateSection("Toggle")
    dc.CreateColorPicker({Title = "Toggle Border Color", Type = "Toggle Border Color"})
    dc.CreateColorPicker({Title = "Toggle Checked Color", Type = "Toggle Checked Color"})
    dc.CreateColorPicker({Title = "Toggle Desc Color", Type = "Toggle Desc Color"})
    local dd = d5.CreateSection("Button")
    dd.CreateColorPicker({Title = "Button Color", Type = "Button Color"})
    local dd = d5.CreateSection("Label")
    dd.CreateColorPicker({Title = "Label Color", Type = "Label Color"})
    local de = d5.CreateSection("Dropdown")
    de.CreateColorPicker({Title = "Dropdown Icon Color", Type = "Dropdown Icon Color"})
    de.CreateColorPicker({Title = "Dropdown Selected Color", Type = "Dropdown Selected Color"})
    local df = d5.CreateSection("Textbox")
    df.CreateColorPicker({Title = "Textbox Highlight Color", Type = "Textbox Highlight Color"})
    local dg = d5.CreateSection("Box")
    dg.CreateColorPicker({Title = "Box Highlight Color", Type = "Box Highlight Color"})
    local dh = d5.CreateSection("Slider")
    dh.CreateColorPicker({Title = "Slider Line Color", Type = "Slider Line Color"})
    dh.CreateColorPicker({Title = "Slider Highlight Color", Type = "Slider Highlight Color"})
    local di = d5.CreateSection("Animation")
    di.CreateSlider(
        {
            Title = "Tween Animation 1 Speed",
            Type = "Tween Animation 1 Speed",
            Min = 0,
            Max = 0.75,
            Default = 0.25,
            Precise = true
        }
    )
    di.CreateSlider(
        {
            Title = "Tween Animation 2 Speed",
            Type = "Tween Animation 2 Speed",
            Min = 0,
            Max = 1,
            Default = 0.5,
            Precise = true
        }
    )
    di.CreateSlider(
        {
            Title = "Tween Animation 3 Speed",
            Type = "Tween Animation 3 Speed",
            Min = 0,
            Max = 0.5,
            Default = 0.1,
            Precise = true
        }
    )
    local dj = {}
    local dk = -1
    local dl = -1
    local dm = 1
    function dj.CreatePage(H)
        local dn = tostring(H.Page_Name)
        local dp = tostring(H.Page_Title)
        dl = dl + 1
        dk = dk + 1
        local dq = Instance.new("Frame")
        local ba = Instance.new("Frame")
        local dr = Instance.new("UICorner")
        local ds = Instance.new("Frame")
        local dt = Instance.new("Frame")
        local du = Instance.new("UICorner")
        local dv = Instance.new("Frame")
        local dw = Instance.new("TextLabel")
        local dx = Instance.new("TextButton")
        dq.Name = dn .. "_Control"
        dq.Parent = af
        dq.BackgroundColor3 = Color3.fromRGB(230, 230, 230)
        dq.BackgroundTransparency = 1.000
        dq.Size = UDim2.new(1, -10, 0, 25)
        dq.LayoutOrder = dk
        ba.Parent = dq
        ba.BackgroundColor3 = Color3.fromRGB(230, 230, 230)
        ba.BackgroundTransparency = 1.000
        ba.Position = UDim2.new(0, 5, 0, 0)
        ba.Size = UDim2.new(1, -5, 1, 0)
        dr.CornerRadius = UDim.new(0, 4)
        dr.Name = "TabNameCorner"
        dr.Parent = ba
        ds.Name = "Line"
        ds.Parent = ba
        ds.AnchorPoint = Vector2.new(0, 0.5)
        ds.BackgroundColor3 = Color3.fromRGB(230, 230, 230)
        ds.BackgroundTransparency = 1.000
        ds.Position = UDim2.new(0, 0, 0.5, 0)
        ds.Size = UDim2.new(0, 14, 1, 0)
        dt.Name = "PageInLine"
        dt.Parent = ds
        dt.AnchorPoint = Vector2.new(0.5, 0.5)
        dt.BorderSizePixel = 0
        dt.Position = UDim2.new(0.5, 0, 0.5, 0)
        dt.Size = UDim2.new(1, -10, 0, 0)
        dt.BackgroundColor3 = getgenv().UIColor["Page Selected Color"]
        table.insert(
            c["Page Selected Color"],
            function()
                dt.BackgroundColor3 = getgenv().UIColor["Page Selected Color"]
            end
        )
        du.Name = "LineCorner"
        du.Parent = dt
        dv.Name = "TabTitleContainer"
        dv.Parent = ba
        dv.BackgroundColor3 = Color3.fromRGB(230, 230, 230)
        dv.BackgroundTransparency = 1.000
        dv.Position = UDim2.new(0, 15, 0, 0)
        dv.Size = UDim2.new(1, -15, 1, 0)
        dw.Name = "GUITextColor"
        dw.Parent = dv
        dw.BackgroundColor3 = Color3.fromRGB(230, 230, 230)
        dw.BackgroundTransparency = 1.000
        dw.Size = UDim2.new(1, 0, 1, 0)
        dw.Font = Enum.Font.GothamBold
        dw.Text = dn
        dw.TextColor3 = Color3.fromRGB(230, 230, 230)
        dw.TextSize = 14.000
        dw.TextXAlignment = Enum.TextXAlignment.Left
        dw.TextColor3 = getgenv().UIColor["GUI Text Color"]
        table.insert(
            c["GUI Text Color"],
            function()
                dw.TextColor3 = getgenv().UIColor["GUI Text Color"]
            end
        )
        dx.Name = "PageButton"
        dx.Parent = dq
        dx.BackgroundColor3 = Color3.fromRGB(230, 230, 230)
        dx.BackgroundTransparency = 1.000
        dx.Size = UDim2.new(1, 0, 1, 0)
        dx.Font = Enum.Font.SourceSans
        dx.Text = ""
        dx.TextColor3 = Color3.fromRGB(0, 0, 0)
        dx.TextSize = 14.000
        local dy = Instance.new("Frame")
        local M = Instance.new("UICorner")
        local dz = Instance.new("TextLabel")
        local dA = Instance.new("ScrollingFrame")
        local dB = Instance.new("UIListLayout")
        local dC = dm
        dm = dm + 1
        dy.Name = "Page" .. dC
        dy.Parent = ai
        dy.BackgroundColor3 = getgenv().UIColor["Background 1 Color"]
        dy.Position = UDim2.new(0, 190, 0, 30)
        dy.Size = UDim2.new(0, 435, 0, 325)
        dy.LayoutOrder = dl
        table.insert(
            c["Background 1 Color"],
            function()
                dy.BackgroundColor3 = getgenv().UIColor["Background 1 Color"]
            end
        )
        dy.BackgroundTransparency = getgenv().UIColor["Background 1 Transparency"]
        table.insert(
            c["Background 1 Transparency"],
            function()
                dy.BackgroundTransparency = getgenv().UIColor["Background 1 Transparency"]
            end
        )
        M.CornerRadius = UDim.new(0, 4)
        M.Parent = dy
        dz.Name = "GUITextColor"
        dz.Parent = dy
        dz.BackgroundColor3 = Color3.fromRGB(230, 230, 230)
        dz.BackgroundTransparency = 1.000
        dz.Position = UDim2.new(0, 5, 0, 0)
        dz.Size = UDim2.new(1, 0, 0, 25)
        dz.Font = Enum.Font.GothamBold
        dz.Text = dp
        dz.TextSize = 16.000
        dz.TextXAlignment = Enum.TextXAlignment.Left
        dz.TextColor3 = getgenv().UIColor["GUI Text Color"]
        table.insert(
            c["GUI Text Color"],
            function()
                dz.TextColor3 = getgenv().UIColor["GUI Text Color"]
            end
        )
        dA.Name = "PageList"
        dA.Parent = dy
        dA.Active = true
        dA.BackgroundColor3 = Color3.fromRGB(230, 230, 230)
        dA.BackgroundTransparency = 1.000
        dA.BorderColor3 = Color3.fromRGB(27, 42, 53)
        dA.BorderSizePixel = 0
        dA.Position = UDim2.new(0, 5, 0, 30)
        dA.Size = UDim2.new(1, -10, 1, -30)
        dA.BottomImage = "rbxasset://textures/ui/Scroll/scroll-middle.png"
        dA.ScrollBarThickness = 5
        dA.TopImage = "rbxasset://textures/ui/Scroll/scroll-middle.png"
        dB.Name = "Pagelistlayout"
        dB.Parent = dA
        dB.SortOrder = Enum.SortOrder.LayoutOrder
        dB.Padding = UDim.new(0, 5)
        dB:GetPropertyChangedSignal("AbsoluteContentSize"):Connect(
            function()
                dA.CanvasSize = UDim2.new(0, 0, 0, dB.AbsoluteContentSize.Y + 5)
            end
        )
        local dD = Instance.new("Frame")
        local aA = Instance.new("UICorner")
        local aB = Instance.new("Frame")
        local aC = Instance.new("ImageLabel")
        local aD = Instance.new("TextButton")
        local dE = Instance.new("TextBox")
        dD.Name = "Background2"
        dD.Parent = dy
        dD.AnchorPoint = Vector2.new(1, 0)
        dD.BackgroundColor3 = getgenv().UIColor["Background 2 Color"]
        dD.Position = UDim2.new(1, -5, 0, 5)
        dD.Size = UDim2.new(0, 20, 0, 20)
        dD.ClipsDescendants = true
        table.insert(
            c["Background 2 Color"],
            function()
                dD.BackgroundColor3 = getgenv().UIColor["Background 2 Color"]
            end
        )
        aA.CornerRadius = UDim.new(0, 2)
        aA.Name = "PageSearchCorner"
        aA.Parent = dD
        aB.Name = "SearchFrame"
        aB.Parent = dD
        aB.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
        aB.BackgroundTransparency = 1.000
        aB.Size = UDim2.new(0, 20, 0, 20)
        aC.Name = "SearchIcon"
        aC.Parent = aB
        aC.AnchorPoint = Vector2.new(0.5, 0.5)
        aC.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
        aC.BackgroundTransparency = 1.000
        aC.Position = UDim2.new(0.5, 0, 0.5, 0)
        aC.Size = UDim2.new(0, 16, 0, 16)
        aC.Image = "rbxassetid://8154282545"
        aC.ImageColor3 = getgenv().UIColor["Search Icon Color"]
        table.insert(
            c["Search Icon Color"],
            function()
                aC.ImageColor3 = getgenv().UIColor["Search Icon Color"]
            end
        )
        aD.Name = "active"
        aD.Parent = aB
        aD.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
        aD.BackgroundTransparency = 1.000
        aD.Size = UDim2.new(1, 0, 1, 0)
        aD.Font = Enum.Font.SourceSans
        aD.Text = ""
        aD.TextColor3 = Color3.fromRGB(0, 0, 0)
        aD.TextSize = 14.000
        dE.Name = "TextColorPlaceholder"
        dE.Parent = dD
        dE.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
        dE.BackgroundTransparency = 1.000
        dE.Position = UDim2.new(0, 30, 0, 0)
        dE.Size = UDim2.new(1, -30, 1, 0)
        dE.Font = Enum.Font.GothamBold
        dE.Text = ""
        dE.TextSize = 14.000
        dE.TextXAlignment = Enum.TextXAlignment.Left
        dE.PlaceholderText = "Search Section name"
        dE.PlaceholderColor3 = getgenv().UIColor["Placeholder Text Color"]
        dE.TextColor3 = getgenv().UIColor["Text Color"]
        table.insert(
            c["Placeholder Text Color"],
            function()
                dE.PlaceholderColor3 = getgenv().UIColor["Placeholder Text Color"]
            end
        )
        table.insert(
            c["Text Color"],
            function()
                dE.TextColor3 = getgenv().UIColor["Text Color"]
            end
        )
        local dF = false
        aD.MouseEnter:Connect(
            function()
                w:Create(
                    aC,
                    TweenInfo.new(getgenv().UIColor["Tween Animation 3 Speed"]),
                    {ImageColor3 = getgenv().UIColor["Search Icon Highlight Color"]}
                ):Play()
            end
        )
        aD.MouseLeave:Connect(
            function()
                w:Create(
                    aC,
                    TweenInfo.new(getgenv().UIColor["Tween Animation 3 Speed"]),
                    {ImageColor3 = getgenv().UIColor["Search Icon Color"]}
                ):Play()
            end
        )
        aD.MouseButton1Click:Connect(
            function()
                u.ButtonEffect()
            end
        )
        dE.Focused:Connect(
            function()
                u.ButtonEffect()
            end
        )
        aD.MouseButton1Click:Connect(
            function()
                dF = not dF
                local aG = dF and UDim2.new(0, 175, 0, 20) or UDim2.new(0, 20, 0, 20)
                game.TweenService:Create(dD, TweenInfo.new(getgenv().UIColor["Tween Animation 2 Speed"]), {Size = aG}):Play(

                )
            end
        )
        local function dG()
            for a, v in next, dA:GetChildren() do
                if not v:IsA("UIListLayout") then
                    v.Visible = false
                end
            end
        end
        local function dH()
            for n, B in pairs(dA:GetChildren()) do
                if not B:IsA("UIListLayout") then
                    if string.find(string.lower(B.Name), string.lower(dE.Text)) then
                        B.Visible = true
                    end
                end
            end
        end
        dE:GetPropertyChangedSignal("Text"):Connect(
            function()
                dG()
                dH()
            end
        )
        for a, v in pairs(af:GetChildren()) do
            if not v:IsA("UIListLayout") then
                if a == 2 then
                    v.Frame.Line.PageInLine.Size = UDim2.new(1, -10, 1, -10)
                    oldlay = v.LayoutOrder
                    oldobj = v
                end
            end
        end
        dx.MouseButton1Click:Connect(
            function()
                spawn(
                    function()
                        u.ButtonEffect()
                    end
                )
                if tostring(aj.CurrentPage) == dy.Name then
                    return
                end
                for a, v in pairs(ai:GetChildren()) do
                    if not v:IsA("UIPageLayout") and not v:IsA("UICorner") then
                        v.Visible = false
                    end
                end
                dy.Visible = true
                aj:JumpTo(dy)
                for a, v in next, af:GetChildren() do
                    if not v:IsA("UIListLayout") then
                        if v.Name == dn .. "_Control" then
                            if v.LayoutOrder > oldlay then
                                oldobj.Active = false
                                w:Create(
                                    oldobj.Frame.Line.PageInLine,
                                    TweenInfo.new(getgenv().UIColor["Tween Animation 1 Speed"]),
                                    {
                                        Size = UDim2.new(1, -10, 0, 0),
                                        Position = UDim2.new(0.5, 0, 1, 0),
                                        AnchorPoint = Vector2.new(.5, 1)
                                    }
                                ):Play()
                                v.Frame.Line.PageInLine.Position = UDim2.new(0.5, 0, 0, 0)
                                v.Frame.Line.PageInLine.AnchorPoint = Vector2.new(.5, 0)
                                wait(getgenv().UIColor["Tween Animation 1 Speed"])
                                w:Create(
                                    v.Frame.Line.PageInLine,
                                    TweenInfo.new(getgenv().UIColor["Tween Animation 1 Speed"]),
                                    {
                                        Size = UDim2.new(1, -10, 1, -10),
                                        Position = UDim2.new(0.5, 0, .5, 0),
                                        AnchorPoint = Vector2.new(.5, .5)
                                    }
                                ):Play()
                                v.Active = true
                                oldobj = v
                                oldlay = v.LayoutOrder
                            else
                                oldobj.Active = false
                                w:Create(
                                    oldobj.Frame.Line.PageInLine,
                                    TweenInfo.new(getgenv().UIColor["Tween Animation 1 Speed"]),
                                    {
                                        Size = UDim2.new(1, -10, 0, 0),
                                        Position = UDim2.new(0.5, 0, 0, 0),
                                        AnchorPoint = Vector2.new(.5, 0)
                                    }
                                ):Play()
                                v.Frame.Line.PageInLine.Position = UDim2.new(0.5, 0, 1, 0)
                                v.Frame.Line.PageInLine.AnchorPoint = Vector2.new(.5, 1)
                                wait(getgenv().UIColor["Tween Animation 1 Speed"])
                                w:Create(
                                    v.Frame.Line.PageInLine,
                                    TweenInfo.new(getgenv().UIColor["Tween Animation 1 Speed"]),
                                    {
                                        Size = UDim2.new(1, -10, 1, -10),
                                        Position = UDim2.new(0.5, 0, .5, 0),
                                        AnchorPoint = Vector2.new(.5, .5)
                                    }
                                ):Play()
                                v.Active = true
                                oldobj = v
                                oldlay = v.LayoutOrder
                            end
                        end
                    end
                end
            end
        )
        local dI = {}
        function dI.CreateSection(aL)
            local aM = Instance.new("Frame")
            local M = Instance.new("UICorner")
            local aN = Instance.new("Frame")
            local aO = Instance.new("TextLabel")
            local aP = Instance.new("Frame")
            local aQ = Instance.new("UIGradient")
            local aR = Instance.new("UIListLayout")
            aM.Name = aL .. "_Dot"
            aM.Parent = dA
            aM.Size = UDim2.new(0, 415, 0, 100)
            aM.BackgroundColor3 = getgenv().UIColor["Background 3 Color"]
            table.insert(
                c["Background 3 Color"],
                function()
                    aM.BackgroundColor3 = getgenv().UIColor["Background 3 Color"]
                end
            )
            aM.BackgroundTransparency = getgenv().UIColor["Background 1 Transparency"]
            table.insert(
                c["Background 1 Transparency"],
                function()
                    aM.BackgroundTransparency = getgenv().UIColor["Background 1 Transparency"]
                end
            )
            M.CornerRadius = UDim.new(0, 4)
            M.Parent = aM
            aN.Name = "Topsec"
            aN.Parent = aM
            aN.BackgroundColor3 = Color3.fromRGB(230, 230, 230)
            aN.BackgroundTransparency = 1.000
            aN.Size = UDim2.new(0, 415, 0, 30)
            aO.Name = "Sectiontitle"
            aO.Parent = aN
            aO.BackgroundColor3 = Color3.fromRGB(230, 230, 230)
            aO.BackgroundTransparency = 1.000
            aO.Size = UDim2.new(1, 0, 1, 0)
            aO.Font = Enum.Font.GothamBold
            aO.Text = aL
            aO.TextSize = 14.000
            aO.TextColor3 = getgenv().UIColor["Section Text Color"]
            table.insert(
                c["Section Text Color"],
                function()
                    aO.TextColor3 = getgenv().UIColor["Section Text Color"]
                end
            )
            aP.Name = "Linesec"
            aP.Parent = aN
            aP.AnchorPoint = Vector2.new(0.5, 1)
            aP.BorderSizePixel = 0
            aP.Position = UDim2.new(0.5, 0, 1, -2)
            aP.Size = UDim2.new(1, -10, 0, 2)
            aP.BackgroundColor3 = getgenv().UIColor["Section Underline Color"]
            table.insert(
                c["Section Underline Color"],
                function()
                    aP.BackgroundColor3 = getgenv().UIColor["Section Underline Color"]
                end
            )
            aQ.Transparency =
                NumberSequence.new {
                NumberSequenceKeypoint.new(0.00, 1.00),
                NumberSequenceKeypoint.new(0.50, 0.00),
                NumberSequenceKeypoint.new(0.51, 0.02),
                NumberSequenceKeypoint.new(1.00, 1.00)
            }
            aQ.Parent = aP
            aR.Name = "SectionList"
            aR.Parent = aM
            aR.SortOrder = Enum.SortOrder.LayoutOrder
            aR.Padding = UDim.new(0, 5)
            aR:GetPropertyChangedSignal("AbsoluteContentSize"):Connect(
                function()
                    aM.Size = UDim2.new(1, -5, 0, aR.AbsoluteContentSize.Y + 5)
                end
            )
            local dJ = {}
            function dJ.CreateToggle(H, cN)
                local aY = tostring(H.Title)
                local I = H.Desc
                local aZ = H.Default
                local cN = cN or function()
                    end
                local dK = Instance.new("Frame")
                local dL = Instance.new("Frame")
                local br = Instance.new("ImageLabel")
                local bs = Instance.new("ImageLabel")
                local dM = Instance.new("TextLabel")
                local dN = Instance.new("TextLabel")
                local dO = Instance.new("Frame")
                local dP = Instance.new("UICorner")
                local dQ = Instance.new("TextButton")
                local dR = Instance.new("UIListLayout")
                dK.Name = "ToggleFrame"
                dK.Parent = aM
                dK.BackgroundColor3 = Color3.fromRGB(230, 230, 230)
                dK.BackgroundTransparency = 1.000
                dK.Position = UDim2.new(0, 0, 0.300000012, 0)
                dK.Size = UDim2.new(1, 0, 0, 0)
                dK.AutomaticSize = Enum.AutomaticSize.Y
                dL.Name = "TogFrame1"
                dL.Parent = dK
                dL.AnchorPoint = Vector2.new(0.5, 0.5)
                dL.BackgroundColor3 = Color3.fromRGB(230, 230, 230)
                dL.BackgroundTransparency = 1.000
                dL.Position = UDim2.new(0.5, 0, 0.5, 0)
                dL.Size = UDim2.new(1, -10, 0, 0)
                dL.AutomaticSize = Enum.AutomaticSize.Y
                br.Name = "checkbox"
                br.Parent = dL
                br.AnchorPoint = Vector2.new(1, 0.5)
                br.BackgroundColor3 = Color3.fromRGB(230, 230, 230)
                br.BackgroundTransparency = 1.000
                br.Position = UDim2.new(1, -5, 0.5, 3)
                br.Size = UDim2.new(0, 25, 0, 25)
                br.Image = "rbxassetid://4552505888"
                br.ImageColor3 = getgenv().UIColor["Toggle Border Color"]
                table.insert(
                    c["Toggle Border Color"],
                    function()
                        br.ImageColor3 = getgenv().UIColor["Toggle Border Color"]
                    end
                )
                bs.Name = "check"
                bs.Parent = br
                bs.AnchorPoint = Vector2.new(0, 1)
                bs.BackgroundColor3 = Color3.fromRGB(230, 230, 230)
                bs.BackgroundTransparency = 1.000
                bs.Position = UDim2.new(0, 0, 1, 0)
                bs.Image = "rbxassetid://4555411759"
                bs.ImageColor3 = getgenv().UIColor["Toggle Checked Color"]
                table.insert(
                    c["Toggle Checked Color"],
                    function()
                        bs.ImageColor3 = getgenv().UIColor["Toggle Checked Color"]
                    end
                )
                local cac = 5
                if I then
                    cac = 0
                    dM.Name = "ToggleDesc"
                    dM.Parent = dL
                    dM.BackgroundColor3 = Color3.fromRGB(230, 230, 230)
                    dM.BackgroundTransparency = 1.000
                    dM.Position = UDim2.new(0, 15, 0, 20)
                    dM.Size = UDim2.new(1, -50, 0, 0)
                    dM.Font = Enum.Font.GothamBlack
                    dM.Text = I
                    dM.TextSize = 13.000
                    dM.TextWrapped = true
                    dM.TextXAlignment = Enum.TextXAlignment.Left
                    dM.RichText = true
                    dM.AutomaticSize = Enum.AutomaticSize.Y
                    dM.TextColor3 = getgenv().UIColor["Toggle Desc Color"]
                    table.insert(
                        c["Toggle Desc Color"],
                        function()
                            dM.TextColor3 = getgenv().UIColor["Toggle Desc Color"]
                        end
                    )
                else
                    dM.Text = ""
                end
                dN.Name = "TextColor"
                dN.Parent = dL
                dN.BackgroundColor3 = Color3.fromRGB(230, 230, 230)
                dN.BackgroundTransparency = 1.000
                dN.Position = UDim2.new(0, 10, 0, cac)
                dN.Size = UDim2.new(1, -10, 0, 20)
                dN.Font = Enum.Font.GothamBlack
                dN.Text = aY
                dN.TextSize = 14.000
                dN.TextXAlignment = Enum.TextXAlignment.Left
                dN.TextYAlignment = Enum.TextYAlignment.Center
                dN.RichText = true
                dN.AutomaticSize = Enum.AutomaticSize.Y
                dN.TextColor3 = getgenv().UIColor["Text Color"]
                table.insert(
                    c["Text Color"],
                    function()
                        dN.TextColor3 = getgenv().UIColor["Text Color"]
                    end
                )
                dO.Name = "Background1"
                dO.Parent = dL
                dO.Size = UDim2.new(1, 0, 1, 6)
                dO.ZIndex = 0
                dO.BackgroundColor3 = getgenv().UIColor["Background 1 Color"]
                table.insert(
                    c["Background 1 Color"],
                    function()
                        dO.BackgroundColor3 = getgenv().UIColor["Background 1 Color"]
                    end
                )
                dO.BackgroundTransparency = getgenv().UIColor["Background 1 Transparency"]
                table.insert(
                    c["Background 1 Transparency"],
                    function()
                        dO.BackgroundTransparency = getgenv().UIColor["Background 1 Transparency"]
                    end
                )
                dP.CornerRadius = UDim.new(0, 4)
                dP.Name = "ToggleCorner"
                dP.Parent = dO
                dQ.Name = "ToggleButton"
                dQ.Parent = dL
                dQ.BackgroundColor3 = Color3.fromRGB(230, 230, 230)
                dQ.BackgroundTransparency = 1.000
                dQ.Size = UDim2.new(1, 0, 1, 6)
                dQ.Font = Enum.Font.SourceSans
                dQ.Text = ""
                dQ.TextColor3 = Color3.fromRGB(0, 0, 0)
                dQ.TextSize = 14.000
                dR.Name = "ToggleList"
                dR.Parent = dK
                dR.HorizontalAlignment = Enum.HorizontalAlignment.Center
                dR.SortOrder = Enum.SortOrder.LayoutOrder
                dR.VerticalAlignment = Enum.VerticalAlignment.Center
                dR.Padding = UDim.new(0, 5)
                local function dS(dT)
                    local ci = dT and UDim2.new(1, -4, 1, -4) or UDim2.new(0, 0, 0, 0)
                    local cc = dT and UDim2.new(.5, 0, .5, 0) or UDim2.new(0, 0, 1, 0)
                    local cj = dT and Vector2.new(.5, .5) or Vector2.new(0, 1)
                    game.TweenService:Create(
                        bs,
                        TweenInfo.new(getgenv().UIColor["Tween Animation 1 Speed"]),
                        {Size = ci, Position = cc, AnchorPoint = cj}
                    ):Play()
                    cN(dT)
                end
                if cN then
                    dS(aZ)
                end
                dQ.MouseButton1Click:Connect(
                    function()
                        u.ButtonEffect()
                    end
                )
                dQ.MouseButton1Down:Connect(
                    function()
                        aZ = not aZ
                        dS(aZ)
                    end
                )
                local dU = {}
                function dU.SetStage(d1)
                    dS(d1)
                end
                return dU
            end
            function dJ.CreateButton(H, cN)
                local aY = H.Title
                local cN = cN or function()
                    end
                local dV = Instance.new("Frame")
                local dW = Instance.new("Frame")
                local cC = Instance.new("UICorner")
                local dX = Instance.new("TextLabel")
                local dY = Instance.new("TextButton")
                dV.Name = aY .. "dot"
                dV.Parent = aM
                dV.BackgroundColor3 = Color3.fromRGB(230, 230, 230)
                dV.BackgroundTransparency = 1.000
                dV.Position = UDim2.new(0, 0, 0.300000012, 0)
                dV.Size = UDim2.new(1, 0, 0, 25)
                dW.Name = "ButtonBG"
                dW.Parent = dV
                dW.AnchorPoint = Vector2.new(0.5, 0.5)
                dW.Position = UDim2.new(0.5, 0, 0.5, 0)
                dW.Size = UDim2.new(1, -10, 1, 0)
                dW.BackgroundColor3 = getgenv().UIColor["Button Color"]
                table.insert(
                    c["Button Color"],
                    function()
                        dW.BackgroundColor3 = getgenv().UIColor["Button Color"]
                    end
                )
                dW.BackgroundTransparency = getgenv().UIColor["Background 1 Transparency"]
                table.insert(
                    c["Background 1 Transparency"],
                    function()
                        dW.BackgroundTransparency = getgenv().UIColor["Background 1 Transparency"]
                    end
                )
                cC.CornerRadius = UDim.new(0, 4)
                cC.Name = "ButtonCorner"
                cC.Parent = dW
                dX.Name = "TextColor"
                dX.Parent = dW
                dX.BackgroundColor3 = Color3.fromRGB(230, 230, 230)
                dX.BackgroundTransparency = 1.000
                dX.Position = UDim2.new(0, 10, 0, 0)
                dX.Size = UDim2.new(1, -10, 1, 0)
                dX.Font = Enum.Font.GothamBlack
                dX.Text = aY
                dX.TextSize = 14.000
                dX.TextXAlignment = Enum.TextXAlignment.Left
                dX.TextColor3 = getgenv().UIColor["Button Text Color"]
                table.insert(
                    c["Button Text Color"],
                    function()
                        dX.TextColor3 = getgenv().UIColor["Button Text Color"]
                    end
                )
                dY.Name = "Button"
                dY.Parent = dW
                dY.BackgroundColor3 = Color3.fromRGB(230, 230, 230)
                dY.BackgroundTransparency = 1.000
                dY.Size = UDim2.new(1, 0, 1, 0)
                dY.Font = Enum.Font.SourceSans
                dY.Text = ""
                dY.TextColor3 = Color3.fromRGB(0, 0, 0)
                dY.TextSize = 14.000
                dY.MouseButton1Click:Connect(
                    function()
                        u.ButtonEffect()
                    end
                )
                dY.MouseButton1Down:Connect(
                    function()
                        cN()
                    end
                )
            end
            function dJ.CreateLabel(H)
                local aY = tostring(H.Title)
                local dZ = Instance.new("Frame")
                local d_ = Instance.new("Frame")
                local e0 = Instance.new("UICorner")
                local e1 = Instance.new("TextLabel")
                dZ.Name = "LabelFrame"
                dZ.Parent = aM
                dZ.BackgroundColor3 = Color3.fromRGB(230, 230, 230)
                dZ.BackgroundTransparency = 1.000
                dZ.Position = UDim2.new(0, 0, 0, 0)
                dZ.Size = UDim2.new(1, 0, 0, 0)
                dZ.AutomaticSize = Enum.AutomaticSize.Y
                d_.Name = "LabelBG"
                d_.Parent = dZ
                d_.AnchorPoint = Vector2.new(0.5, 0)
                d_.Position = UDim2.new(0.5, 0, 0, 0)
                d_.Size = UDim2.new(1, -10, 0, -10)
                d_.BackgroundColor3 = getgenv().UIColor["Label Color"]
                d_.AutomaticSize = Enum.AutomaticSize.Y
                table.insert(
                    c["Label Color"],
                    function()
                        d_.BackgroundColor3 = getgenv().UIColor["Label Color"]
                    end
                )
                d_.BackgroundTransparency = getgenv().UIColor["Background 1 Transparency"]
                table.insert(
                    c["Background 1 Transparency"],
                    function()
                        d_.BackgroundTransparency = getgenv().UIColor["Background 1 Transparency"]
                    end
                )
                e0.CornerRadius = UDim.new(0, 4)
                e0.Name = "LabelCorner"
                e0.Parent = d_
                e1.Name = "TextColor"
                e1.Parent = d_
                e1.BackgroundColor3 = Color3.fromRGB(230, 230, 230)
                e1.BackgroundTransparency = 1.000
                e1.Position = UDim2.new(0, 10, 0, 3)
                e1.Size = UDim2.new(1, -20, 1, 0)
                e1.Font = Enum.Font.GothamBlack
                e1.Text = aY
                e1.TextSize = 14.000
                e1.TextXAlignment = Enum.TextXAlignment.Left
                e1.AutomaticSize = Enum.AutomaticSize.Y
                e1.TextWrapped = true
                e1.TextColor3 = getgenv().UIColor["Label Text Color"]
                table.insert(
                    c["Label Text Color"],
                    function()
                        e1.TextColor3 = getgenv().UIColor["Label Text Color"]
                    end
                )
                local e2 = {}
                function e2.SetText(duma)
                    e1.Text = duma
                end
                function e2.SetColor(g)
                    e1.TextColor3 = g
                end
                return e2
            end
            function dJ.CreateDropdown(H, cN)
                local aY = tostring(H.Title)
                local e4 = H.List
                local e5 = H.Search or false
                local e6 = H.Selected or false
                local aZ = H.Default
                local cN = cN or function()
                    end
                local e7 = Instance.new("Frame")
                local e8 = Instance.new("Frame")
                local e9 = Instance.new("UICorner")
                local ea = Instance.new("Frame")
                local M = Instance.new("UICorner")
                local eb = Instance.new("ImageLabel")
                local ec = Instance.new("TextButton")
                local ed = Instance.new("Frame")
                local ee = Instance.new("ScrollingFrame")
                local ef = Instance.new("Frame")
                local eg = Instance.new("UIListLayout")
                local eh
                if e5 then
                    eh = Instance.new("TextBox")
                    ec.Visible = false
                else
                    eh = Instance.new("TextLabel")
                end
                e7.Name = aY .. "DropdownFrame"
                e7.Parent = aM
                e7.BackgroundColor3 = Color3.fromRGB(230, 230, 230)
                e7.BackgroundTransparency = 1.000
                e7.Position = UDim2.new(0, 0, 0.473684222, 0)
                e7.Size = UDim2.new(1, 0, 0, 25)
                e8.Name = "Background1"
                e8.Parent = e7
                e8.AnchorPoint = Vector2.new(0.5, 0.5)
                e8.Position = UDim2.new(0.5, 0, 0.5, 0)
                e8.Size = UDim2.new(1, -10, 1, 0)
                e8.ClipsDescendants = true
                e8.BackgroundColor3 = getgenv().UIColor["Background 1 Color"]
                table.insert(
                    c["Background 1 Color"],
                    function()
                        e8.BackgroundColor3 = getgenv().UIColor["Background 1 Color"]
                    end
                )
                e8.BackgroundTransparency = getgenv().UIColor["Background 1 Transparency"]
                table.insert(
                    c["Background 1 Transparency"],
                    function()
                        e8.BackgroundTransparency = getgenv().UIColor["Background 1 Transparency"]
                    end
                )
                e9.CornerRadius = UDim.new(0, 4)
                e9.Name = "Dropdowncorner"
                e9.Parent = e8
                ea.Name = "Background2"
                ea.Parent = e8
                ea.Size = UDim2.new(1, 0, 0, 25)
                ea.BackgroundColor3 = getgenv().UIColor["Background 2 Color"]
                table.insert(
                    c["Background 2 Color"],
                    function()
                        ea.BackgroundColor3 = getgenv().UIColor["Background 2 Color"]
                    end
                )
                ea.BackgroundTransparency = getgenv().UIColor["Background 1 Transparency"]
                table.insert(
                    c["Background 1 Transparency"],
                    function()
                        ea.BackgroundTransparency = getgenv().UIColor["Background 1 Transparency"]
                    end
                )
                M.CornerRadius = UDim.new(0, 4)
                M.Parent = ea
                eh.Name = "TextColorPlaceholder"
                eh.Parent = ea
                eh.BackgroundColor3 = Color3.fromRGB(230, 230, 230)
                eh.BackgroundTransparency = 1.000
                eh.Position = UDim2.new(0, 10, 0, 0)
                eh.Size = UDim2.new(1, -40, 1, 0)
                eh.Font = Enum.Font.GothamBlack
                eh.Text = ""
                eh.TextSize = 14.000
                eh.TextXAlignment = Enum.TextXAlignment.Left
                eh.ClipsDescendants = true
                local ei = Instance.new("IntValue", eh)
                ei.Value = -1
                if aZ and table.find(e4, aZ) then
                    ei.Value = table.find(e4, aZ)
                end
                if not e6 then
                    if e5 then
                        eh.PlaceholderColor3 = getgenv().UIColor["Placeholder Text Color"]
                        eh.PlaceholderText = aY .. ": " .. tostring(aZ)
                        table.insert(
                            c["Placeholder Text Color"],
                            function()
                                eh.PlaceholderColor3 = getgenv().UIColor["Placeholder Text Color"]
                            end
                        )
                    else
                        eh.Text = aY .. ": " .. tostring(aZ)
                    end
                else
                    if e5 then
                        eh.PlaceholderColor3 = getgenv().UIColor["Placeholder Text Color"]
                        eh.PlaceholderText = aY .. ": " .. tostring(aZ)
                        table.insert(
                            c["Placeholder Text Color"],
                            function()
                                eh.PlaceholderColor3 = getgenv().UIColor["Placeholder Text Color"]
                            end
                        )
                    else
                        eh.Text = aY .. ": " .. tostring(aZ)
                    end
                end
                eh.TextColor3 = getgenv().UIColor["Text Color"]
                table.insert(
                    c["Text Color"],
                    function()
                        eh.TextColor3 = getgenv().UIColor["Text Color"]
                    end
                )
                eb.Name = "ImgDrop"
                eb.Parent = ea
                eb.AnchorPoint = Vector2.new(1, 0.5)
                eb.BackgroundTransparency = 1.000
                eb.BorderColor3 = Color3.fromRGB(27, 42, 53)
                eb.Position = UDim2.new(1, -6, 0.5, 0)
                eb.Size = UDim2.new(0, 15, 0, 15)
                eb.Image = "rbxassetid://6954383209"
                eb.ImageColor3 = getgenv().UIColor["Dropdown Icon Color"]
                table.insert(
                    c["Dropdown Icon Color"],
                    function()
                        eb.ImageColor3 = getgenv().UIColor["Dropdown Icon Color"]
                    end
                )
                ec.Name = "DropdownButton"
                ec.Parent = ea
                ec.BackgroundColor3 = Color3.fromRGB(230, 230, 230)
                ec.BackgroundTransparency = 1.000
                ec.Size = UDim2.new(1, 0, 1, 0)
                ec.Font = Enum.Font.GothamBold
                ec.Text = ""
                ec.TextColor3 = Color3.fromRGB(230, 230, 230)
                ec.TextSize = 14.000
                ed.Name = "Dropdownlisttt"
                ed.Parent = e8
                ed.BackgroundTransparency = 1.000
                ed.BorderSizePixel = 0
                ed.Position = UDim2.new(0, 0, 0, 25)
                ed.Size = UDim2.new(1, 0, 0, 25)
                ed.BackgroundColor3 = Color3.fromRGB(230, 230, 230)
                ee.Name = "DropdownScroll"
                ee.Parent = ed
                ee.Active = true
                ee.BackgroundColor3 = Color3.fromRGB(230, 230, 230)
                ee.BackgroundTransparency = 1.000
                ee.BorderSizePixel = 0
                ee.Size = UDim2.new(1, 0, 1, 0)
                ee.BottomImage = "rbxasset://textures/ui/Scroll/scroll-middle.png"
                ee.CanvasSize = UDim2.new(0, 0, 0, 0)
                ee.ScrollBarThickness = 5
                ee.TopImage = "rbxasset://textures/ui/Scroll/scroll-middle.png"
                ef.Name = "ScrollContainer"
                ef.Parent = ee
                ef.BackgroundColor3 = Color3.fromRGB(230, 230, 230)
                ef.BackgroundTransparency = 1.000
                ef.Position = UDim2.new(0, 5, 0, 5)
                ef.Size = UDim2.new(1, -15, 1, -5)
                eg.Name = "ScrollContainerList"
                eg.Parent = ef
                eg.SortOrder = Enum.SortOrder.LayoutOrder
                eg:GetPropertyChangedSignal("AbsoluteContentSize"):Connect(
                    function()
                        ee.CanvasSize = UDim2.new(0, 0, 0, 10 + eg.AbsoluteContentSize.Y + 5)
                    end
                )
                local ej = false
                local ek = {}
                local el = {}
                local function em()
                    for a in pairs(ek) do
                        ek[a] = nil
                    end
                    for en, eo in pairs(ef:GetChildren()) do
                        if not eo:IsA("UIListLayout") and not eo:IsA("UIPadding") and not eo:IsA("UIGridLayout") then
                            eo.Visible = false
                        end
                    end
                    eh.Text = string.lower(eh.Text)
                end
                local function ep()
                    local eq = {}
                    for a, v in pairs(el) do
                        if string.find(v, eh.Text) then
                            table.insert(ek, v)
                        end
                    end
                    for n, B in pairs(ef:GetChildren()) do
                        for er, es in pairs(ek) do
                            if es == B.Name then
                                B.Visible = true
                            end
                        end
                    end
                end
                local function et()
                    for a, v in next, ef:GetChildren() do
                        if v:IsA("Frame") then
                            v:Destroy()
                        end
                    end
                end
                local eu = e4
                local function ev()
                    et()
                    el = {}
                    for a, v in pairs(eu) do
                        if not e6 then
                            table.insert(el, string.lower(v))
                        else
                            table.insert(el, string.lower(a))
                        end
                    end
                    if not e6 then
                        for a, v in pairs(eu) do
                            local ew = Instance.new("Frame")
                            local ex = Instance.new("UICorner")
                            local ds = Instance.new("Frame")
                            local dt = Instance.new("Frame")
                            local du = Instance.new("UICorner")
                            local ey = Instance.new("Frame")
                            local ez = Instance.new("TextButton")
                            ew.Name = string.lower(v)
                            ew.Parent = ef
                            ew.BackgroundColor3 = Color3.fromRGB(230, 230, 230)
                            ew.BackgroundTransparency = 1.000
                            ew.Size = UDim2.new(1, 0, 0, 25)
                            ex.CornerRadius = UDim.new(0, 4)
                            ex.Name = "DropvalCorner"
                            ex.Parent = ew
                            ds.Name = "Line"
                            ds.Parent = ew
                            ds.AnchorPoint = Vector2.new(0, 0.5)
                            ds.BackgroundColor3 = Color3.fromRGB(230, 230, 230)
                            ds.BackgroundTransparency = 1.000
                            ds.Position = UDim2.new(0, 0, 0.5, 0)
                            ds.Size = UDim2.new(0, 14, 1, 0)
                            dt.Name = "InLine"
                            dt.Parent = ds
                            dt.AnchorPoint = Vector2.new(0.5, 0.5)
                            dt.BorderSizePixel = 0
                            dt.Position = UDim2.new(0.5, 0, 0.5, 0)
                            dt.Size = UDim2.new(1, -10, 1, -10)
                            dt.BackgroundTransparency = 1
                            dt.BackgroundColor3 = getgenv().UIColor["Dropdown Selected Color"]
                            table.insert(
                                c["Dropdown Selected Color"],
                                function()
                                    dt.BackgroundColor3 = getgenv().UIColor["Dropdown Selected Color"]
                                end
                            )
                            du.Name = "LineCorner"
                            du.Parent = dt
                            ey.Name = "Dropvalcontainer"
                            ey.Parent = ew
                            ey.BackgroundColor3 = Color3.fromRGB(230, 230, 230)
                            ey.BackgroundTransparency = 1.000
                            ey.Position = UDim2.new(0, 15, 0, 0)
                            ey.Size = UDim2.new(1, -15, 1, 0)
                            ez.Name = "TextColor"
                            ez.Parent = ey
                            ez.Active = false
                            ez.BackgroundTransparency = 1.000
                            ez.Selectable = false
                            ez.Size = UDim2.new(1, 0, 1, 0)
                            ez.Font = Enum.Font.GothamBold
                            ez.Text = v
                            ez.TextSize = 14.000
                            ez.TextWrapped = true
                            ez.TextXAlignment = Enum.TextXAlignment.Left
                            ez.BackgroundColor3 = Color3.fromRGB(230, 230, 230)
                            ez.TextColor3 = getgenv().UIColor["Text Color"]
                            table.insert(
                                c["Text Color"],
                                function()
                                    ez.TextColor3 = getgenv().UIColor["Text Color"]
                                end
                            )
                            if e5 then
                                if ei.Value == a then
                                    dt.BackgroundTransparency = 0
                                end
                            else
                                if ei.Value == a then
                                    dt.BackgroundTransparency = 0
                                end
                            end
                            ez.MouseButton1Click:Connect(
                                function()
                                    if e5 then
                                        eh.PlaceholderText = aY .. ": " .. v
                                        ei.Value = a
                                    else
                                        eh.Text = aY .. ": " .. v
                                        ei.Value = a
                                    end
                                    ev()
                                    if cN then
                                        cN(v, a)
                                    end
                                end
                            )
                            ez.MouseButton1Click:Connect(
                                function()
                                    u.ButtonEffect()
                                end
                            )
                        end
                    else
                        for a, v in pairs(eu) do
                            local eA = v and 0 or 1
                            local ew = Instance.new("Frame")
                            local ex = Instance.new("UICorner")
                            local ds = Instance.new("Frame")
                            local dt = Instance.new("Frame")
                            local du = Instance.new("UICorner")
                            local ey = Instance.new("Frame")
                            local ez = Instance.new("TextButton")
                            ew.Name = string.lower(a)
                            ew.Parent = ef
                            ew.BackgroundColor3 = Color3.fromRGB(230, 230, 230)
                            ew.BackgroundTransparency = 1.000
                            ew.Size = UDim2.new(1, 0, 0, 25)
                            ex.CornerRadius = UDim.new(0, 4)
                            ex.Name = "DropvalCorner"
                            ex.Parent = ew
                            ds.Name = "Line"
                            ds.Parent = ew
                            ds.AnchorPoint = Vector2.new(0, 0.5)
                            ds.BackgroundColor3 = Color3.fromRGB(230, 230, 230)
                            ds.BackgroundTransparency = 1
                            ds.Position = UDim2.new(0, 0, 0.5, 0)
                            ds.Size = UDim2.new(0, 14, 1, 0)
                            dt.Name = "InLine"
                            dt.Parent = ds
                            dt.AnchorPoint = Vector2.new(0.5, 0.5)
                            dt.BorderSizePixel = 0
                            dt.Position = UDim2.new(0.5, 0, 0.5, 0)
                            dt.Size = UDim2.new(1, -10, 1, -10)
                            dt.BackgroundTransparency = eA
                            dt.BackgroundColor3 = getgenv().UIColor["Dropdown Selected Color"]
                            table.insert(
                                c["Dropdown Selected Color"],
                                function()
                                    dt.BackgroundColor3 = getgenv().UIColor["Dropdown Selected Color"]
                                end
                            )
                            du.Name = "LineCorner"
                            du.Parent = dt
                            ey.Name = "Dropvalcontainer"
                            ey.Parent = ew
                            ey.BackgroundColor3 = Color3.fromRGB(230, 230, 230)
                            ey.BackgroundTransparency = 1.000
                            ey.Position = UDim2.new(0, 15, 0, 0)
                            ey.Size = UDim2.new(1, -15, 1, 0)
                            ez.Name = "TextColor"
                            ez.Parent = ey
                            ez.Active = false
                            ez.BackgroundColor3 = Color3.fromRGB(230, 230, 230)
                            ez.BackgroundTransparency = 1.000
                            ez.Selectable = false
                            ez.Size = UDim2.new(1, 0, 1, 0)
                            ez.Font = Enum.Font.GothamBold
                            ez.Text = a
                            ez.TextSize = 14.000
                            ez.TextWrapped = true
                            ez.TextXAlignment = Enum.TextXAlignment.Left
                            ez.TextColor3 = getgenv().UIColor["Text Color"]
                            table.insert(
                                c["Text Color"],
                                function()
                                    ez.TextColor3 = getgenv().UIColor["Text Color"]
                                end
                            )
                            ez.MouseButton1Click:Connect(
                                function()
                                    u.ButtonEffect()
                                end
                            )
                            ez.MouseButton1Click:Connect(
                                function()
                                    v = not v
                                    local eA = v and 0 or 1
                                    w:Create(
                                        dt,
                                        TweenInfo.new(getgenv().UIColor["Tween Animation 2 Speed"]),
                                        {BackgroundTransparency = eA}
                                    ):Play()
                                    if cN then
                                        cN(a, v)
                                        eu[a] = v
                                    end
                                end
                            )
                        end
                    end
                end
                if e5 then
                    eh.Changed:Connect(
                        function()
                            em()
                            ep()
                        end
                    )
                end
                if typeof(aZ) ~= "table" then
                    cN(aZ)
                    if e5 then
                        eh.PlaceholderText = aY .. ": " .. tostring(aZ)
                    else
                        eh.Text = aY .. ": " .. tostring(aZ)
                    end
                elseif e6 then
                    for a, v in next, aZ do
                        eu[a] = v
                        cN(a, v)
                    end
                    eh.Text = ""
                    eh.PlaceholderText = aY .. ": "
                end
                ec.MouseButton1Click:Connect(
                    function()
                        ev()
                        ej = not ej
                        local eB = ej and UDim2.new(1, 0, 0, 170) or UDim2.new(1, 0, 0, 0)
                        local eC = ej and UDim2.new(1, 0, 0, 200) or UDim2.new(1, 0, 0, 25)
                        local eD = ej and 90 or 0
                        w:Create(ed, TweenInfo.new(getgenv().UIColor["Tween Animation 2 Speed"]), {Size = eB}):Play()
                        w:Create(e7, TweenInfo.new(getgenv().UIColor["Tween Animation 2 Speed"]), {Size = eC}):Play()
                        w:Create(eb, TweenInfo.new(getgenv().UIColor["Tween Animation 2 Speed"]), {Rotation = eD}):Play(

                        )
                    end
                )
                ec.MouseButton1Click:Connect(
                    function()
                        u.ButtonEffect()
                    end
                )
                if e5 then
                    eh.Focused:Connect(
                        function()
                            ev()
                            ej = not ej
                            local eB = ej and UDim2.new(1, 0, 0, 170) or UDim2.new(1, 0, 0, 0)
                            local eC = ej and UDim2.new(1, 0, 0, 200) or UDim2.new(1, 0, 0, 25)
                            local eD = ej and 90 or 0
                            w:Create(ed, TweenInfo.new(getgenv().UIColor["Tween Animation 2 Speed"]), {Size = eB}):Play(

                            )
                            w:Create(e7, TweenInfo.new(getgenv().UIColor["Tween Animation 2 Speed"]), {Size = eC}):Play(

                            )
                            w:Create(eb, TweenInfo.new(getgenv().UIColor["Tween Animation 2 Speed"]), {Rotation = eD}):Play(

                            )
                        end
                    )
                    eh.Focused:Connect(
                        function()
                            u.ButtonEffect()
                        end
                    )
                end
                local eE = {rf = ev}
                function eE:ClearText()
                    if not e6 then
                        if e5 then
                            eh.PlaceholderText = aY .. ": "
                        else
                            eh.Text = aY .. ": "
                        end
                    else
                        eh.Text = aY .. ": "
                    end
                end
                function eE:GetNewList(e4)
                    ev()
                    ej = false
                    local eB = ej and UDim2.new(1, 0, 0, 170) or UDim2.new(1, 0, 0, 0)
                    local eC = ej and UDim2.new(1, 0, 0, 200) or UDim2.new(1, 0, 0, 25)
                    local eD = ej and 90 or 0
                    w:Create(ed, TweenInfo.new(getgenv().UIColor["Tween Animation 2 Speed"]), {Size = eB}):Play()
                    w:Create(e7, TweenInfo.new(getgenv().UIColor["Tween Animation 2 Speed"]), {Size = eC}):Play()
                    w:Create(eb, TweenInfo.new(getgenv().UIColor["Tween Animation 2 Speed"]), {Rotation = eD}):Play()
                    eu = {}
                    eu = e4
                    for a, v in next, eu do
                        if e6 then
                            cN(a, v)
                        end
                    end
                end
                return eE
            end
            function dJ.CreateBind(H, cN)
                local cx = tostring(H.Title) or ""
                local eF = H.Key
                local aZ = H.Default or H.Key
                local a_ = tostring(aZ):match("UserInputType") and "UserInputType" or "KeyCode"
                local cN = cN or function()
                    end
                eF = tostring(eF):gsub("Enum.UserInputType.", "")
                eF = tostring(eF):gsub("Enum.KeyCode.", "")
                local eG = Instance.new("Frame")
                local eH = Instance.new("UICorner")
                local eI = Instance.new("Frame")
                local cC = Instance.new("UICorner")
                local eJ = Instance.new("TextLabel")
                local dY = Instance.new("TextButton")
                local eK = Instance.new("Frame")
                local cF = Instance.new("UICorner")
                local eL = Instance.new("TextButton")
                eG.Name = cx .. "bguvl"
                eG.Parent = aM
                eG.BackgroundColor3 = Color3.fromRGB(60, 60, 60)
                eG.BackgroundTransparency = 1.000
                eG.Position = UDim2.new(0, 0, 0.208333328, 0)
                eG.Size = UDim2.new(1, 0, 0, 35)
                eH.CornerRadius = UDim.new(0, 4)
                eH.Name = "BindCorner"
                eH.Parent = eG
                eI.Name = "Background1"
                eI.Parent = eG
                eI.AnchorPoint = Vector2.new(0.5, 0.5)
                eI.Position = UDim2.new(0.5, 0, 0.5, 0)
                eI.Size = UDim2.new(1, -10, 1, 0)
                eI.BackgroundColor3 = getgenv().UIColor["Background 1 Color"]
                table.insert(
                    c["Background 1 Color"],
                    function()
                        eI.BackgroundColor3 = getgenv().UIColor["Background 1 Color"]
                    end
                )
                eI.BackgroundTransparency = getgenv().UIColor["Background 1 Transparency"]
                table.insert(
                    c["Background 1 Transparency"],
                    function()
                        eI.BackgroundTransparency = getgenv().UIColor["Background 1 Transparency"]
                    end
                )
                cC.CornerRadius = UDim.new(0, 4)
                cC.Name = "ButtonCorner"
                cC.Parent = eI
                eJ.Name = "TextColor"
                eJ.Parent = eI
                eJ.BackgroundColor3 = Color3.fromRGB(230, 230, 230)
                eJ.BackgroundTransparency = 1.000
                eJ.Position = UDim2.new(0, 10, 0, 0)
                eJ.Size = UDim2.new(1, -10, 1, 0)
                eJ.Font = Enum.Font.GothamBlack
                eJ.Text = cx
                eJ.TextSize = 14.000
                eJ.TextXAlignment = Enum.TextXAlignment.Left
                eJ.TextColor3 = getgenv().UIColor["Text Color"]
                table.insert(
                    c["Text Color"],
                    function()
                        eJ.TextColor3 = getgenv().UIColor["Text Color"]
                    end
                )
                eK.Name = "Background2"
                eK.Parent = eI
                eK.AnchorPoint = Vector2.new(1, 0.5)
                eK.Position = UDim2.new(1, -5, 0.5, 0)
                eK.Size = UDim2.new(0, 150, 0, 25)
                eK.BackgroundColor3 = getgenv().UIColor["Background 2 Color"]
                table.insert(
                    c["Background 2 Color"],
                    function()
                        eK.BackgroundColor3 = getgenv().UIColor["Background 2 Color"]
                    end
                )
                cF.CornerRadius = UDim.new(0, 4)
                cF.Name = "ButtonCorner"
                cF.Parent = eK
                eL.Name = "Bindkey"
                eL.Parent = eK
                eL.BackgroundColor3 = Color3.fromRGB(230, 230, 230)
                eL.BackgroundTransparency = 1.000
                eL.Size = UDim2.new(1, 0, 1, 0)
                eL.Font = Enum.Font.GothamBold
                eL.Text = tostring(aZ):gsub("Enum.KeyCode.", "")
                eL.TextSize = 14.000
                eL.TextColor3 = getgenv().UIColor["Text Color"]
                table.insert(
                    c["Text Color"],
                    function()
                        eL.TextColor3 = getgenv().UIColor["Text Color"]
                    end
                )
                local eM = {
                    [Enum.UserInputType.MouseButton1] = "Mouse1",
                    [Enum.UserInputType.MouseButton2] = "Mouse2",
                    [Enum.UserInputType.MouseButton3] = "Mouse3"
                }
                eL.MouseButton1Click:Connect(
                    function()
                        u.ButtonEffect()
                    end
                )
                eL.MouseButton1Click:Connect(
                    function()
                        local eN
                        eL.Text = "..."
                        eN =
                            game:GetService("UserInputService").InputBegan:Connect(
                            function(a)
                                if eM[a.UserInputType] then
                                    eL.Text = eM[a.UserInputType]
                                    spawn(
                                        function()
                                            wait(0.1)
                                            aZ = a.UserInputType
                                            a_ = "UserInputType"
                                        end
                                    )
                                elseif a.KeyCode ~= Enum.KeyCode.Unknown then
                                    eL.Text = tostring(a.KeyCode):gsub("Enum.KeyCode.", "")
                                    spawn(
                                        function()
                                            wait(0.1)
                                            aZ = a.KeyCode
                                            a_ = "KeyCode"
                                        end
                                    )
                                end
                                eN:Disconnect()
                            end
                        )
                    end
                )
                game:GetService("UserInputService").InputBegan:Connect(
                    function(a)
                        if aZ == a.UserInputType or aZ == a.KeyCode then
                            cN(aZ)
                        end
                    end
                )
            end
            function dJ.CreateBox(H, cN)
                local cx = tostring(H.Title) or ""
                local cy = tostring(H.Placeholder) or ""
                local aZ = H.Default or false
                local eO = H.Number or false
                local cN = cN or function()
                    end
                local cz = Instance.new("Frame")
                local cA = Instance.new("UICorner")
                local cB = Instance.new("Frame")
                local cC = Instance.new("UICorner")
                local cD = Instance.new("TextLabel")
                local cE = Instance.new("Frame")
                local cF = Instance.new("UICorner")
                local eP = Instance.new("TextBox")
                local cH = Instance.new("Frame")
                local M = Instance.new("UICorner")
                cz.Name = "BoxFrame"
                cz.Parent = aM
                cz.BackgroundColor3 = Color3.fromRGB(60, 60, 60)
                cz.BackgroundTransparency = 1.000
                cz.Position = UDim2.new(0, 0, 0.208333328, 0)
                cz.Size = UDim2.new(1, 0, 0, 60)
                cA.CornerRadius = UDim.new(0, 4)
                cA.Name = "BoxCorner"
                cA.Parent = cz
                cB.Name = "Background1"
                cB.Parent = cz
                cB.AnchorPoint = Vector2.new(0.5, 0.5)
                cB.Position = UDim2.new(0.5, 0, 0.5, 0)
                cB.Size = UDim2.new(1, -10, 1, 0)
                cB.BackgroundColor3 = getgenv().UIColor["Background 1 Color"]
                table.insert(
                    c["Background 1 Color"],
                    function()
                        cB.BackgroundColor3 = getgenv().UIColor["Background 1 Color"]
                    end
                )
                cB.BackgroundTransparency = getgenv().UIColor["Background 1 Transparency"]
                table.insert(
                    c["Background 1 Transparency"],
                    function()
                        cB.BackgroundTransparency = getgenv().UIColor["Background 1 Transparency"]
                    end
                )
                cC.CornerRadius = UDim.new(0, 4)
                cC.Name = "ButtonCorner"
                cC.Parent = cB
                cD.Name = "TextColor"
                cD.Parent = cB
                cD.BackgroundColor3 = Color3.fromRGB(230, 230, 230)
                cD.BackgroundTransparency = 1.000
                cD.Position = UDim2.new(0, 10, 0, 0)
                cD.Size = UDim2.new(1, -10, 0.5, 0)
                cD.Font = Enum.Font.GothamBlack
                cD.Text = cx
                cD.TextSize = 14.000
                cD.TextXAlignment = Enum.TextXAlignment.Left
                cD.TextColor3 = getgenv().UIColor["Text Color"]
                table.insert(
                    c["Text Color"],
                    function()
                        cD.TextColor3 = getgenv().UIColor["Text Color"]
                    end
                )
                cE.Name = "Background2"
                cE.Parent = cB
                cE.AnchorPoint = Vector2.new(1, 0.5)
                cE.ClipsDescendants = true
                cE.Position = UDim2.new(1, -5, 0, 40)
                cE.Size = UDim2.new(1, -10, 0, 25)
                cE.BackgroundColor3 = getgenv().UIColor["Background 2 Color"]
                table.insert(
                    c["Background 2 Color"],
                    function()
                        cE.BackgroundColor3 = getgenv().UIColor["Background 2 Color"]
                    end
                )
                cF.CornerRadius = UDim.new(0, 4)
                cF.Name = "ButtonCorner"
                cF.Parent = cE
                eP.Name = "TextColorPlaceholder"
                eP.Parent = cE
                eP.BackgroundColor3 = Color3.fromRGB(230, 230, 230)
                eP.BackgroundTransparency = 1.000
                eP.Position = UDim2.new(0, 5, 0, 0)
                eP.Size = UDim2.new(1, -5, 1, 0)
                eP.Font = Enum.Font.GothamBold
                eP.PlaceholderText = cy
                eP.Text = ""
                eP.TextSize = 14.000
                eP.TextXAlignment = Enum.TextXAlignment.Left
                eP.PlaceholderColor3 = getgenv().UIColor["Placeholder Text Color"]
                eP.TextColor3 = getgenv().UIColor["Text Color"]
                table.insert(
                    c["Placeholder Text Color"],
                    function()
                        eP.PlaceholderColor3 = getgenv().UIColor["Placeholder Text Color"]
                    end
                )
                table.insert(
                    c["Text Color"],
                    function()
                        eP.TextColor3 = getgenv().UIColor["Text Color"]
                    end
                )
                cH.Name = "TextNSBoxLineeeee"
                cH.Parent = cE
                cH.BackgroundTransparency = 1.000
                cH.Position = UDim2.new(0, 0, 1, -2)
                cH.Size = UDim2.new(1, 0, 0, 6)
                cH.BackgroundColor3 = getgenv().UIColor["Box Highlight Color"]
                table.insert(
                    c["Box Highlight Color"],
                    function()
                        cH.BackgroundColor3 = getgenv().UIColor["Box Highlight Color"]
                    end
                )
                M.CornerRadius = UDim.new(1, 0)
                M.Parent = cH
                eP.Focused:Connect(
                    function()
                        w:Create(
                            cH,
                            TweenInfo.new(getgenv().UIColor["Tween Animation 2 Speed"]),
                            {BackgroundTransparency = 0}
                        ):Play()
                    end
                )
                eP.Focused:Connect(
                    function()
                        u.ButtonEffect()
                    end
                )
                if eO then
                    eP:GetPropertyChangedSignal("Text"):Connect(
                        function()
                            if tonumber(eP.Text) then
                            else
                                eP.PlaceholderText = cy
                                eP.Text = ""
                            end
                        end
                    )
                end
                eP.FocusLost:Connect(
                    function()
                        w:Create(
                            cH,
                            TweenInfo.new(getgenv().UIColor["Tween Animation 2 Speed"]),
                            {BackgroundTransparency = 1}
                        ):Play()
                        if eP.Text ~= "" then
                            cN(eP.Text)
                        end
                    end
                )
                local cI = {}
                if aZ then
                    eP.Text = aZ
                    cN(aZ)
                end
                function cI.SetValue(r)
                    eP.Text = r
                    cN(r)
                end
                return cI
            end
            function dJ.CreateSlider(H, cN)
                local cx = tostring(H.Title) or ""
                local cJ = tonumber(H.Min) or 0
                local cK = tonumber(H.Max) or 100
                local cL = H.Precise or false
                local cM = tonumber(H.Default) or 0
                local cN = cN or function()
                    end
                local cO = 400
                local cN = cN or function()
                    end
                local cP = Instance.new("Frame")
                local cQ = Instance.new("UICorner")
                local cR = Instance.new("Frame")
                local cS = Instance.new("UICorner")
                local cT = Instance.new("TextLabel")
                local cU = Instance.new("Frame")
                local cV = Instance.new("TextButton")
                local cW = Instance.new("UICorner")
                local cX = Instance.new("Frame")
                local cY = Instance.new("UICorner")
                local cZ = Instance.new("Frame")
                local c_ = Instance.new("UICorner")
                local d0 = Instance.new("TextBox")
                cP.Name = cx .. "buda"
                cP.Parent = aM
                cP.BackgroundColor3 = Color3.fromRGB(60, 60, 60)
                cP.BackgroundTransparency = 1.000
                cP.Position = UDim2.new(0, 0, 0.208333328, 0)
                cP.Size = UDim2.new(1, 0, 0, 50)
                cQ.CornerRadius = UDim.new(0, 4)
                cQ.Name = "SliderCorner"
                cQ.Parent = cP
                cR.Name = "Background1"
                cR.Parent = cP
                cR.AnchorPoint = Vector2.new(0.5, 0.5)
                cR.Position = UDim2.new(0.5, 0, 0.5, 0)
                cR.Size = UDim2.new(1, -10, 1, 0)
                cR.BackgroundColor3 = getgenv().UIColor["Background 1 Color"]
                table.insert(
                    c["Background 1 Color"],
                    function()
                        cR.BackgroundColor3 = getgenv().UIColor["Background 1 Color"]
                    end
                )
                cR.BackgroundTransparency = getgenv().UIColor["Background 1 Transparency"]
                table.insert(
                    c["Background 1 Transparency"],
                    function()
                        cR.BackgroundTransparency = getgenv().UIColor["Background 1 Transparency"]
                    end
                )
                cS.CornerRadius = UDim.new(0, 4)
                cS.Name = "SliderBGCorner"
                cS.Parent = cR
                cT.Name = "TextColor"
                cT.Parent = cR
                cT.BackgroundColor3 = Color3.fromRGB(230, 230, 230)
                cT.BackgroundTransparency = 1.000
                cT.Position = UDim2.new(0, 10, 0, 0)
                cT.Size = UDim2.new(1, -10, 0, 25)
                cT.Font = Enum.Font.GothamBlack
                cT.Text = cx
                cT.TextSize = 14.000
                cT.TextXAlignment = Enum.TextXAlignment.Left
                cT.TextColor3 = getgenv().UIColor["Text Color"]
                table.insert(
                    c["Text Color"],
                    function()
                        cT.TextColor3 = getgenv().UIColor["Text Color"]
                    end
                )
                cU.Name = "SliderBar"
                cU.Parent = cP
                cU.AnchorPoint = Vector2.new(.5, 0.5)
                cU.Position = UDim2.new(.5, 0, 0.5, 14)
                cU.Size = UDim2.new(0, 400, 0, 6)
                cU.BackgroundColor3 = getgenv().UIColor["Background 2 Color"]
                table.insert(
                    c["Background 2 Color"],
                    function()
                        cU.BackgroundColor3 = getgenv().UIColor["Background 2 Color"]
                    end
                )
                cV.Name = "SliderButton "
                cV.Parent = cU
                cV.BackgroundColor3 = Color3.fromRGB(230, 230, 230)
                cV.BackgroundTransparency = 1.000
                cV.Size = UDim2.new(1, 0, 1, 0)
                cV.Font = Enum.Font.GothamBold
                cV.Text = ""
                cV.TextColor3 = Color3.fromRGB(230, 230, 230)
                cV.TextSize = 14.000
                cW.CornerRadius = UDim.new(1, 0)
                cW.Name = "SliderBarCorner"
                cW.Parent = cU
                cX.Name = "Bar"
                cX.BorderSizePixel = 0
                cX.Parent = cU
                cX.Size = UDim2.new(0, 0, 1, 0)
                cX.BackgroundColor3 = getgenv().UIColor["Slider Line Color"]
                table.insert(
                    c["Slider Line Color"],
                    function()
                        cX.BackgroundColor3 = getgenv().UIColor["Slider Line Color"]
                    end
                )
                cY.CornerRadius = UDim.new(1, 0)
                cY.Name = "BarCorner"
                cY.Parent = cX
                cZ.Name = "Background2"
                cZ.Parent = cP
                cZ.AnchorPoint = Vector2.new(1, 0)
                cZ.Position = UDim2.new(1, -10, 0, 5)
                cZ.Size = UDim2.new(0, 150, 0, 25)
                cZ.BackgroundColor3 = getgenv().UIColor["Background 2 Color"]
                table.insert(
                    c["Background 2 Color"],
                    function()
                        cZ.BackgroundColor3 = getgenv().UIColor["Background 2 Color"]
                    end
                )
                c_.CornerRadius = UDim.new(0, 4)
                c_.Name = "Sliderbox"
                c_.Parent = cZ
                d0.Name = "TextColor"
                d0.Parent = cZ
                d0.BackgroundColor3 = Color3.fromRGB(230, 230, 230)
                d0.BackgroundTransparency = 1.000
                d0.Size = UDim2.new(1, 0, 1, 0)
                d0.Font = Enum.Font.GothamBold
                d0.Text = ""
                d0.TextSize = 14.000
                d0.TextColor3 = getgenv().UIColor["Text Color"]
                table.insert(
                    c["Text Color"],
                    function()
                        d0.TextColor3 = getgenv().UIColor["Text Color"]
                    end
                )
                cV.MouseEnter:Connect(
                    function()
                        w:Create(
                            cX,
                            TweenInfo.new(getgenv().UIColor["Tween Animation 2 Speed"]),
                            {BackgroundColor3 = getgenv().UIColor["Slider Highlight Color"]}
                        ):Play()
                    end
                )
                cV.MouseLeave:Connect(
                    function()
                        w:Create(
                            cX,
                            TweenInfo.new(getgenv().UIColor["Tween Animation 2 Speed"]),
                            {BackgroundColor3 = getgenv().UIColor["Slider Line Color"]}
                        ):Play()
                    end
                )
                local y = game.Players.LocalPlayer:GetMouse()
                if cM then
                    if cM <= cJ then
                        cM = cJ
                    elseif cM >= cK then
                        cM = cK
                    end
                    cX.Size = UDim2.new(1 - (cK - cM) / (cK - cJ), 0, 0, 6)
                    d0.Text = cM
                    cN(cM)
                end
                cV.MouseButton1Down:Connect(
                    function()
                        local d1 =
                            cL and
                            tonumber(
                                string.format(
                                    "%.1f",
                                    (tonumber(cK) - tonumber(cJ)) / cO * cX.AbsoluteSize.X + tonumber(cJ)
                                )
                            ) or
                            math.floor((tonumber(cK) - tonumber(cJ)) / cO * cX.AbsoluteSize.X + tonumber(cJ))
                        pcall(
                            function()
                                cN(d1)
                                d0.Text = d1
                            end
                        )
                        cX.Size = UDim2.new(0, math.clamp(y.X - cX.AbsolutePosition.X, 0, cO), 0, 6)
                        moveconnection =
                            y.Move:Connect(
                            function()
                                local d1 =
                                    cL and
                                    tonumber(
                                        string.format(
                                            "%.1f",
                                            (tonumber(cK) - tonumber(cJ)) / cO * cX.AbsoluteSize.X + tonumber(cJ)
                                        )
                                    ) or
                                    math.floor((tonumber(cK) - tonumber(cJ)) / cO * cX.AbsoluteSize.X + tonumber(cJ))
                                pcall(
                                    function()
                                        cN(d1)
                                        d0.Text = d1
                                    end
                                )
                                cX.Size = UDim2.new(0, math.clamp(y.X - cX.AbsolutePosition.X, 0, cO), 0, 6)
                            end
                        )
                        releaseconnection =
                            x.InputEnded:Connect(
                            function(d2)
                                if d2.UserInputType == Enum.UserInputType.MouseButton1 then
                                    local d1 =
                                        cL and
                                        tonumber(
                                            string.format(
                                                "%.1f",
                                                (tonumber(cK) - tonumber(cJ)) / cO * cX.AbsoluteSize.X + tonumber(cJ)
                                            )
                                        ) or
                                        math.floor(
                                            (tonumber(cK) - tonumber(cJ)) / cO * cX.AbsoluteSize.X + tonumber(cJ)
                                        )
                                    pcall(
                                        function()
                                            cN(d1)
                                            d0.Text = d1
                                        end
                                    )
                                    cX.Size = UDim2.new(0, math.clamp(y.X - cX.AbsolutePosition.X, 0, cO), 0, 6)
                                    moveconnection:Disconnect()
                                    releaseconnection:Disconnect()
                                end
                            end
                        )
                    end
                )
                local function d3(r)
                    if tonumber(r) <= cJ then
                        cX.Size = UDim2.new(0, 0 * cO, 0, 6)
                        d0.Text = cJ
                        cN(tonumber(cJ))
                    elseif tonumber(r) >= cK then
                        cX.Size = UDim2.new(0, cK / cK * cO, 0, 6)
                        d0.Text = cK
                        cN(tonumber(cK))
                    else
                        cX.Size = UDim2.new(1 - (cK - r) / (cK - cJ), 0, 0, 6)
                        cN(tonumber(r))
                    end
                end
                d0.FocusLost:Connect(
                    function()
                        d3(d0.Text)
                    end
                )
                local d4 = {}
                function d4.SetValue(r)
                    d3(r)
                end
                return d4
            end
            return dJ
        end
        return dI
    end
    return dj
end
return t end
local Library = GetUi()

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
    end)
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
end
spawn(function()
    while wait() do
        if _G.SafeFarm then
            pcall(function()
                CheckAntiCheatBypass()
                bypassAntiExploit()
            end)
        end
    end
end)
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
end)

if game.PlaceId == 2753915549 then
        World1 = true
    elseif game.PlaceId == 4442272183 then
        World2 = true
    elseif game.PlaceId == 7449423635 then
        World3 = true
    end

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
    end
    
    function isnil(thing)
	return (thing == nil)
end
local function round(n)
	return math.floor(tonumber(n) + 0.5)
end
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
    end
    
    function isnil(thing)
	return (thing == nil)
end
local function round(n)
	return math.floor(tonumber(n) + 0.5)
end
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
    end
end
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
	end

function isnil(thing)
    return (thing == nil)
end
local function round(n)
    return math.floor(tonumber(n) + 0.5)
end
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
end

function isnil(thing)
    return (thing == nil)
end
local function round(n)
    return math.floor(tonumber(n) + 0.5)
end
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
    end
    
    spawn(function()
        pcall(function()
            while wait(.1) do
                if InfiniteEnergy then
                    wait(0.1)
                    originalstam = LocalPlayer.Character.Energy.Value
                    infinitestam()
                end
            end
        end)
    end)
    
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
        end)
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
        end)
        start()
    end
    
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
	end

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
            end
	    end)
    end)
    end
    
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
    end)

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
end)
    
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
    end)
    end)

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
        end)
    end)
    
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
            end)
        end)
    end)
    
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
        end)
    end)
    
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
        end
    end)
    
    spawn(function()
    game:GetService("RunService").RenderStepped:Connect(function()
        if _G.AutoClick or Fastattack then
             pcall(function()
                game:GetService'VirtualUser':CaptureController()
			    game:GetService'VirtualUser':Button1Down(Vector2.new(0,1,0,1))
            end)
        end
    end)
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
        end)
    end)
    
    game:GetService("Players").LocalPlayer.Idled:connect(function()
        game:GetService("VirtualUser"):Button2Down(Vector2.new(0,0),workspace.CurrentCamera.CFrame)
        wait(1)
        game:GetService("VirtualUser"):Button2Up(Vector2.new(0,0),workspace.CurrentCamera.CFrame)
    end)
    
Library.CreateNoti({
    Title = "WewHub Premium",
    Desc = "Loaded Gui Completed!",
    ShowTime = 5,
})

local Ui = Library.CreateMain({Title = 'Blue X Hub', Desc = ''})

local S = Ui.CreatePage({Page_Name = 'Setting Farm', Page_Title = 'Cài Đặt'})
local M = Ui.CreatePage({Page_Name = 'Auto Farm', Page_Title = 'Cày'})

local SF = S.CreateSection('Setting Farm')

local Weaponlist = {"Melee", "Sword", "Gun", "Fruit"}
SF.CreateDropdown({Title = 'Select Weapon', List = Weaponlist, Search = false, Selected = false}, function(value)
    _G.SelectWeapon = (value)
end)

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
    end
end)

SF.CreateToggle({Title = "Fast Attack", Default = true}, function(value)
    _G.FastAttack = (value)
end)

if _G.FastAttack then
    local _ENV = (getgenv or getrenv or getfenv)()

    local function SafeWaitForChild(parent, childName)
        local success, result = pcall(function()
            return parent:WaitForChild(childName)
        end)
        if not success or not result then
            warn("noooooo: " .. childName)
        end
        return result
    end

    local function WaitChilds(path, ...)
        local last = path
        for _, child in {...} do
            last = last:FindFirstChild(child) or SafeWaitForChild(last, child)
            if not last then break end
        end
        return last
    end

    local VirtualInputManager = game:GetService("VirtualInputManager")
    local CollectionService = game:GetService("CollectionService")
    local ReplicatedStorage = game:GetService("ReplicatedStorage")
    local TeleportService = game:GetService("TeleportService")
    local RunService = game:GetService("RunService")
    local Players = game:GetService("Players")
    local Player = Players.LocalPlayer

    if not Player then
        warn("Heyy.")
        return
    end

    local Remotes = SafeWaitForChild(ReplicatedStorage, "Remotes")
    if not Remotes then return end

    local Validator = SafeWaitForChild(Remotes, "Validator")
    local CommF = SafeWaitForChild(Remotes, "CommF_")
    local CommE = SafeWaitForChild(Remotes, "CommE")

    local ChestModels = SafeWaitForChild(workspace, "ChestModels")
    local WorldOrigin = SafeWaitForChild(workspace, "_WorldOrigin")
    local Characters = SafeWaitForChild(workspace, "Characters")
    local Enemies = SafeWaitForChild(workspace, "Enemies")
    local Map = SafeWaitForChild(workspace, "Map")

    local EnemySpawns = SafeWaitForChild(WorldOrigin, "EnemySpawns")
    local Locations = SafeWaitForChild(WorldOrigin, "Locations")

    local RenderStepped = RunService.RenderStepped
    local Heartbeat = RunService.Heartbeat
    local Stepped = RunService.Stepped

    local Modules = SafeWaitForChild(ReplicatedStorage, "Modules")
    local Net = SafeWaitForChild(Modules, "Net")

    local sethiddenproperty = sethiddenproperty or function(...) return ... end
    local setupvalue = setupvalue or (debug and debug.setupvalue)
    local getupvalue = getupvalue or (debug and debug.getupvalue)

    local Settings = {
        AutoClick = true,
        ClickDelay = 0,
    }

    local Module = {}

    Module.FastAttack = (function()
        if _ENV.rz_FastAttack then
            return _ENV.rz_FastAttack
        end

        local FastAttack = {
            Distance = 100,
            attackMobs = true,
            attackPlayers = false,
            Equipped = nil
        }

        local RegisterAttack = SafeWaitForChild(Net, "RE/RegisterAttack")
        local RegisterHit = SafeWaitForChild(Net, "RE/RegisterHit")

        local function IsAlive(character)
        return character and character:FindFirstChild("Humanoid") and character.Humanoid.Health > 0
        end

        local function ProcessEnemies(OthersEnemies, Folder)
            local BasePart = nil
            for _, Enemy in Folder:GetChildren() do
                local Head = Enemy:FindFirstChild("Head")
                if Head and IsAlive(Enemy) and Player:DistanceFromCharacter(Head.Position) < FastAttack.Distance then
                    if Enemy ~= Player.Character then
                        table.insert(OthersEnemies, { Enemy, Head })
                        BasePart = Head
                    end
                end
            end
            return BasePart
        end

        function FastAttack:Attack(BasePart, OthersEnemies)
            if not BasePart or #OthersEnemies == 0 then return end
            RegisterAttack:FireServer(Settings.ClickDelay or 0)
            RegisterHit:FireServer(BasePart, OthersEnemies)
        end

        function FastAttack:AttackNearest()
            local OthersEnemies = {}
            local Part1 = ProcessEnemies(OthersEnemies, Enemies)
            local Part2 = ProcessEnemies(OthersEnemies, Characters)
            if #OthersEnemies > 0 then
                self:Attack(Part1 or Part2, OthersEnemies)
            else
                task.wait(0)
            end
        end

        function FastAttack:BladeHits()
            local Equipped = IsAlive(Player.Character) and Player.Character:FindFirstChildOfClass("Tool")
            if Equipped and Equipped.ToolTip ~= "Gun" then
                self:AttackNearest()
            else
                task.wait(0)
            end
        end

        task.spawn(function()
            while task.wait(Settings.ClickDelay) do
                if Settings.AutoClick then
                    FastAttack:BladeHits()
                end
            end
        end)

        _ENV.rz_FastAttack = FastAttack
        return FastAttack
    end)()
end

SF.CreateToggle({Title = "Bring Mob", Default = true}, function(value)
    _G.BringMonster = (value)
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

SF.CreateToggle({Title = "Bypass TP", Default = BypassTP}, function(value)
    BypassTP = (value)
end)

SF.CreateToggle({Title = "Auto Farm Level", Default = true}, function(value)
    _G.AUTOHAKI = (value)
end)

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
end)

local F = M.CreateSection('Farm')

F.CreateToggle({Title = "Auto Farm Level", Default = _G.AutoFarm}, function(value)
    _G.AutoFarm = (value)
    StopTween(_G.AutoFarm)
end)

spawn(function()
        while wait() do
            if FarmMode == "Level" and _G.AutoFarm then
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
        end
    end)