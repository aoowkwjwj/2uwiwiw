Library = {}

local function Tw(info)
	local Value = info.vu or info.Value or info.value or info.Vu or info.v or info.u
	local Time = info.Time or info.t or info.T or 0
	local Style = info.Style or info.style or info.Sty or info.sty or info.s or info.S or "Linear"
	local Direction = info.Direction or info.direction or info.d or info.D or info.Drt or info.drt or info.dt or info.Dt or "Out"
	local Goal = info.Goal or info.goal or info.go or info.Go or info.G or info.g

	return game:GetService("TweenService"):Create(Value,TweenInfo.new(Time,Enum.EasingStyle[Style],Enum.EasingDirection[Direction]),Goal)
end

local function lak(a)
	local Dragging = nil
	local DragInput = nil
	local DragStart = nil
	local StartPosition = nil

	local function Update(input)
		local Delta = input.Position - DragStart
		local pos = UDim2.new(StartPosition.X.Scale, StartPosition.X.Offset + Delta.X, StartPosition.Y.Scale, StartPosition.Y.Offset + Delta.Y)
		local Tween = game:GetService("TweenService"):Create(a, TweenInfo.new(0.3), {Position = pos})
		Tween:Play()
	end

	a.InputBegan:Connect(function(input)
		if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
			Dragging = true
			DragStart = input.Position
			StartPosition = a.Position

			input.Changed:Connect(function()
				if input.UserInputState == Enum.UserInputState.End then
					Dragging = false
				end
			end)
		end
	end)

	a.InputChanged:Connect(function(input)
		if input.UserInputType == Enum.UserInputType.MouseMovement or input.UserInputType == Enum.UserInputType.Touch then
			DragInput = input
		end
	end)

	game:GetService("UserInputService").InputChanged:Connect(function(input)
		if input == DragInput and Dragging then
			Update(input)
		end
	end)
end

local IconList = {
	["accessibility"] = "rbxassetid://10709751939",
	["activity"] = "rbxassetid://10709752035",
	["air-vent"] = "rbxassetid://10709752131",
	["airplay"] = "rbxassetid://10709752254",
	["alarm-check"] = "rbxassetid://10709752405",
	["alarm-clock"] = "rbxassetid://10709752630",
	["alarm-clock-off"] = "rbxassetid://10709752508",
	["alarm-minus"] = "rbxassetid://10709752732",
	["alarm-plus"] = "rbxassetid://10709752825",
	["album"] = "rbxassetid://10709752906",
	["alert-circle"] = "rbxassetid://10709752996",
	["alert-octagon"] = "rbxassetid://10709753064",
	["alert-triangle"] = "rbxassetid://10709753149",
	["align-center"] = "rbxassetid://10709753570",
	["align-center-horizontal"] = "rbxassetid://10709753272",
	["align-center-vertical"] = "rbxassetid://10709753421",
	["align-end-horizontal"] = "rbxassetid://10709753692",
	["align-end-vertical"] = "rbxassetid://10709753808",
	["align-horizontal-distribute-center"] = "rbxassetid://10747779791",
	["align-horizontal-distribute-end"] = "rbxassetid://10747784534",
	["align-horizontal-distribute-start"] = "rbxassetid://10709754118",
	["align-horizontal-justify-center"] = "rbxassetid://10709754204",
	["align-horizontal-justify-end"] = "rbxassetid://10709754317",
	["align-horizontal-justify-start"] = "rbxassetid://10709754436",
	["align-horizontal-space-around"] = "rbxassetid://10709754590",
	["align-horizontal-space-between"] = "rbxassetid://10709754749",
	["align-justify"] = "rbxassetid://10709759610",
	["align-left"] = "rbxassetid://10709759764",
	["align-right"] = "rbxassetid://10709759895",
	["align-start-horizontal"] = "rbxassetid://10709760051",
	["align-start-vertical"] = "rbxassetid://10709760244",
	["align-vertical-distribute-center"] = "rbxassetid://10709760351",
	["align-vertical-distribute-end"] = "rbxassetid://10709760434",
	["align-vertical-distribute-start"] = "rbxassetid://10709760612",
	["align-vertical-justify-center"] = "rbxassetid://10709760814",
	["align-vertical-justify-end"] = "rbxassetid://10709761003",
	["align-vertical-justify-start"] = "rbxassetid://10709761176",
	["align-vertical-space-around"] = "rbxassetid://10709761324",
	["align-vertical-space-between"] = "rbxassetid://10709761434",
	["anchor"] = "rbxassetid://10709761530",
	["angry"] = "rbxassetid://10709761629",
	["annoyed"] = "rbxassetid://10709761722",
	["aperture"] = "rbxassetid://10709761813",
	["apple"] = "rbxassetid://10709761889",
	["archive"] = "rbxassetid://10709762233",
	["archive-restore"] = "rbxassetid://10709762058",
	["armchair"] = "rbxassetid://10709762327",
	["arrow-big-down"] = "rbxassetid://10747796644",
	["arrow-big-left"] = "rbxassetid://10709762574",
	["arrow-big-right"] = "rbxassetid://10709762727",
	["arrow-big-up"] = "rbxassetid://10709762879",
	["arrow-down"] = "rbxassetid://10709767827",
	["arrow-down-circle"] = "rbxassetid://10709763034",
	["arrow-down-left"] = "rbxassetid://10709767656",
	["arrow-down-right"] = "rbxassetid://10709767750",
	["arrow-left"] = "rbxassetid://10709768114",
	["arrow-left-circle"] = "rbxassetid://10709767936",
	["arrow-left-right"] = "rbxassetid://10709768019",
	["arrow-right"] = "rbxassetid://10709768347",
	["arrow-right-circle"] = "rbxassetid://10709768226",
	["arrow-up"] = "rbxassetid://10709768939",
	["arrow-up-circle"] = "rbxassetid://10709768432",
	["arrow-up-down"] = "rbxassetid://10709768538",
	["arrow-up-left"] = "rbxassetid://10709768661",
	["arrow-up-right"] = "rbxassetid://10709768787",
	["asterisk"] = "rbxassetid://10709769095",
	["at-sign"] = "rbxassetid://10709769286",
	["award"] = "rbxassetid://10709769406",
	["axe"] = "rbxassetid://10709769508",
	["axis-3d"] = "rbxassetid://10709769598",
	["baby"] = "rbxassetid://10709769732",
	["backpack"] = "rbxassetid://10709769841",
	["baggage-claim"] = "rbxassetid://10709769935",
	["banana"] = "rbxassetid://10709770005",
	["banknote"] = "rbxassetid://10709770178",
	["bar-chart"] = "rbxassetid://10709773755",
	["bar-chart-2"] = "rbxassetid://10709770317",
	["bar-chart-3"] = "rbxassetid://10709770431",
	["bar-chart-4"] = "rbxassetid://10709770560",
	["bar-chart-horizontal"] = "rbxassetid://10709773669",
	["barcode"] = "rbxassetid://10747360675",
	["baseline"] = "rbxassetid://10709773863",
	["bath"] = "rbxassetid://10709773963",
	["battery"] = "rbxassetid://10709774640",
	["battery-charging"] = "rbxassetid://10709774068",
	["battery-full"] = "rbxassetid://10709774206",
	["battery-low"] = "rbxassetid://10709774370",
	["battery-medium"] = "rbxassetid://10709774513",
	["beaker"] = "rbxassetid://10709774756",
	["bed"] = "rbxassetid://10709775036",
	["bed-double"] = "rbxassetid://10709774864",
	["bed-single"] = "rbxassetid://10709774968",
	["beer"] = "rbxassetid://10709775167",
	["bell"] = "rbxassetid://10709775704",
	["bell-minus"] = "rbxassetid://10709775241",
	["bell-off"] = "rbxassetid://10709775320",
	["bell-plus"] = "rbxassetid://10709775448",
	["bell-ring"] = "rbxassetid://10709775560",
	["bike"] = "rbxassetid://10709775894",
	["binary"] = "rbxassetid://10709776050",
	["bitcoin"] = "rbxassetid://10709776126",
	["bluetooth"] = "rbxassetid://10709776655",
	["bluetooth-connected"] = "rbxassetid://10709776240",
	["bluetooth-off"] = "rbxassetid://10709776344",
	["bluetooth-searching"] = "rbxassetid://10709776501",
	["bold"] = "rbxassetid://10747813908",
	["bomb"] = "rbxassetid://10709781460",
	["bone"] = "rbxassetid://10709781605",
	["book"] = "rbxassetid://10709781824",
	["book-open"] = "rbxassetid://10709781717",
	["bookmark"] = "rbxassetid://10709782154",
	["bookmark-minus"] = "rbxassetid://10709781919",
	["bookmark-plus"] = "rbxassetid://10709782044",
	["bot"] = "rbxassetid://10709782230",
	["box"] = "rbxassetid://10709782497",
	["box-select"] = "rbxassetid://10709782342",
	["boxes"] = "rbxassetid://10709782582",
	["briefcase"] = "rbxassetid://10709782662",
	["brush"] = "rbxassetid://10709782758",
	["bug"] = "rbxassetid://10709782845",
	["building"] = "rbxassetid://10709783051",
	["building-2"] = "rbxassetid://10709782939",
	["bus"] = "rbxassetid://10709783137",
	["cake"] = "rbxassetid://10709783217",
	["calculator"] = "rbxassetid://10709783311",
	["calendar"] = "rbxassetid://10709789505",
	["calendar-check"] = "rbxassetid://10709783474",
	["calendar-check-2"] = "rbxassetid://10709783392",
	["calendar-clock"] = "rbxassetid://10709783577",
	["calendar-days"] = "rbxassetid://10709783673",
	["calendar-heart"] = "rbxassetid://10709783835",
	["calendar-minus"] = "rbxassetid://10709783959",
	["calendar-off"] = "rbxassetid://10709788784",
	["calendar-plus"] = "rbxassetid://10709788937",
	["calendar-range"] = "rbxassetid://10709789053",
	["calendar-search"] = "rbxassetid://10709789200",
	["calendar-x"] = "rbxassetid://10709789407",
	["calendar-x-2"] = "rbxassetid://10709789329",
	["camera"] = "rbxassetid://10709789686",
	["camera-off"] = "rbxassetid://10747822677",
	["car"] = "rbxassetid://10709789810",
	["carrot"] = "rbxassetid://10709789960",
	["cast"] = "rbxassetid://10709790097",
	["charge"] = "rbxassetid://10709790202",
	["check"] = "rbxassetid://10709790644",
	["check-circle"] = "rbxassetid://10709790387",
	["check-circle-2"] = "rbxassetid://10709790298",
	["check-square"] = "rbxassetid://10709790537",
	["chef-hat"] = "rbxassetid://10709790757",
	["cherry"] = "rbxassetid://10709790875",
	["chevron-down"] = "rbxassetid://10709790948",
	["chevron-first"] = "rbxassetid://10709791015",
	["chevron-last"] = "rbxassetid://10709791130",
	["chevron-left"] = "rbxassetid://10709791281",
	["chevron-right"] = "rbxassetid://10709791437",
	["chevron-up"] = "rbxassetid://10709791523",
	["chevrons-down"] = "rbxassetid://10709796864",
	["chevrons-down-up"] = "rbxassetid://10709791632",
	["chevrons-left"] = "rbxassetid://10709797151",
	["chevrons-left-right"] = "rbxassetid://10709797006",
	["chevrons-right"] = "rbxassetid://10709797382",
	["chevrons-right-left"] = "rbxassetid://10709797274",
	["chevrons-up"] = "rbxassetid://10709797622",
	["chevrons-up-down"] = "rbxassetid://10709797508",
	["chrome"] = "rbxassetid://10709797725",
	["circle"] = "rbxassetid://10709798174",
	["circle-dot"] = "rbxassetid://10709797837",
	["circle-ellipsis"] = "rbxassetid://10709797985",
	["circle-slashed"] = "rbxassetid://10709798100",
	["citrus"] = "rbxassetid://10709798276",
	["clapperboard"] = "rbxassetid://10709798350",
	["clipboard"] = "rbxassetid://10709799288",
	["clipboard-check"] = "rbxassetid://10709798443",
	["clipboard-copy"] = "rbxassetid://10709798574",
	["clipboard-edit"] = "rbxassetid://10709798682",
	["clipboard-list"] = "rbxassetid://10709798792",
	["clipboard-signature"] = "rbxassetid://10709798890",
	["clipboard-type"] = "rbxassetid://10709798999",
	["clipboard-x"] = "rbxassetid://10709799124",
	["clock"] = "rbxassetid://10709805144",
	["clock-1"] = "rbxassetid://10709799535",
	["clock-10"] = "rbxassetid://10709799718",
	["clock-11"] = "rbxassetid://10709799818",
	["clock-12"] = "rbxassetid://10709799962",
	["clock-2"] = "rbxassetid://10709803876",
	["clock-3"] = "rbxassetid://10709803989",
	["clock-4"] = "rbxassetid://10709804164",
	["clock-5"] = "rbxassetid://10709804291",
	["clock-6"] = "rbxassetid://10709804435",
	["clock-7"] = "rbxassetid://10709804599",
	["clock-8"] = "rbxassetid://10709804784",
	["clock-9"] = "rbxassetid://10709804996",
	["cloud"] = "rbxassetid://10709806740",
	["cloud-cog"] = "rbxassetid://10709805262",
	["cloud-drizzle"] = "rbxassetid://10709805371",
	["cloud-fog"] = "rbxassetid://10709805477",
	["cloud-hail"] = "rbxassetid://10709805596",
	["cloud-lightning"] = "rbxassetid://10709805727",
	["cloud-moon"] = "rbxassetid://10709805942",
	["cloud-moon-rain"] = "rbxassetid://10709805838",
	["cloud-off"] = "rbxassetid://10709806060",
	["cloud-rain"] = "rbxassetid://10709806277",
	["cloud-rain-wind"] = "rbxassetid://10709806166",
	["cloud-snow"] = "rbxassetid://10709806374",
	["cloud-sun"] = "rbxassetid://10709806631",
	["cloud-sun-rain"] = "rbxassetid://10709806475",
	["cloudy"] = "rbxassetid://10709806859",
	["clover"] = "rbxassetid://10709806995",
	["code"] = "rbxassetid://10709810463",
	["code-2"] = "rbxassetid://10709807111",
	["codepen"] = "rbxassetid://10709810534",
	["codesandbox"] = "rbxassetid://10709810676",
	["coffee"] = "rbxassetid://10709810814",
	["cog"] = "rbxassetid://10709810948",
	["coins"] = "rbxassetid://10709811110",
	["columns"] = "rbxassetid://10709811261",
	["command"] = "rbxassetid://10709811365",
	["compass"] = "rbxassetid://10709811445",
	["component"] = "rbxassetid://10709811595",
	["concierge-bell"] = "rbxassetid://10709811706",
	["connection"] = "rbxassetid://10747361219",
	["contact"] = "rbxassetid://10709811834",
	["contrast"] = "rbxassetid://10709811939",
	["cookie"] = "rbxassetid://10709812067",
	["copy"] = "rbxassetid://10709812159",
	["copyleft"] = "rbxassetid://10709812251",
	["copyright"] = "rbxassetid://10709812311",
	["corner-down-left"] = "rbxassetid://10709812396",
	["corner-down-right"] = "rbxassetid://10709812485",
	["corner-left-down"] = "rbxassetid://10709812632",
	["corner-left-up"] = "rbxassetid://10709812784",
	["corner-right-down"] = "rbxassetid://10709812939",
	["corner-right-up"] = "rbxassetid://10709813094",
	["corner-up-left"] = "rbxassetid://10709813185",
	["corner-up-right"] = "rbxassetid://10709813281",
	["cpu"] = "rbxassetid://10709813383",
	["croissant"] = "rbxassetid://10709818125",
	["crop"] = "rbxassetid://10709818245",
	["cross"] = "rbxassetid://10709818399",
	["crosshair"] = "rbxassetid://10709818534",
	["crown"] = "rbxassetid://10709818626",
	["cup-soda"] = "rbxassetid://10709818763",
	["curly-braces"] = "rbxassetid://10709818847",
	["currency"] = "rbxassetid://10709818931",
	["database"] = "rbxassetid://10709818996",
	["delete"] = "rbxassetid://10709819059",
	["diamond"] = "rbxassetid://10709819149",
	["dice-1"] = "rbxassetid://10709819266",
	["dice-2"] = "rbxassetid://10709819361",
	["dice-3"] = "rbxassetid://10709819508",
	["dice-4"] = "rbxassetid://10709819670",
	["dice-5"] = "rbxassetid://10709819801",
	["dice-6"] = "rbxassetid://10709819896",
	["dices"] = "rbxassetid://10723343321",
	["diff"] = "rbxassetid://10723343416",
	["disc"] = "rbxassetid://10723343537",
	["divide"] = "rbxassetid://10723343805",
	["divide-circle"] = "rbxassetid://10723343636",
	["divide-square"] = "rbxassetid://10723343737",
	["dollar-sign"] = "rbxassetid://10723343958",
	["download"] = "rbxassetid://10723344270",
	["download-cloud"] = "rbxassetid://10723344088",
	["droplet"] = "rbxassetid://10723344432",
	["droplets"] = "rbxassetid://10734883356",
	["drumstick"] = "rbxassetid://10723344737",
	["edit"] = "rbxassetid://10734883598",
	["edit-2"] = "rbxassetid://10723344885",
	["edit-3"] = "rbxassetid://10723345088",
	["egg"] = "rbxassetid://10723345518",
	["egg-fried"] = "rbxassetid://10723345347",
	["electricity"] = "rbxassetid://10723345749",
	["electricity-off"] = "rbxassetid://10723345643",
	["equal"] = "rbxassetid://10723345990",
	["equal-not"] = "rbxassetid://10723345866",
	["eraser"] = "rbxassetid://10723346158",
	["euro"] = "rbxassetid://10723346372",
	["expand"] = "rbxassetid://10723346553",
	["external-link"] = "rbxassetid://10723346684",
	["eye"] = "rbxassetid://10723346959",
	["eye-off"] = "rbxassetid://10723346871",
	["factory"] = "rbxassetid://10723347051",
	["fan"] = "rbxassetid://10723354359",
	["fast-forward"] = "rbxassetid://10723354521",
	["feather"] = "rbxassetid://10723354671",
	["figma"] = "rbxassetid://10723354801",
	["file"] = "rbxassetid://10723374641",
	["file-archive"] = "rbxassetid://10723354921",
	["file-audio"] = "rbxassetid://10723355148",
	["file-audio-2"] = "rbxassetid://10723355026",
	["file-axis-3d"] = "rbxassetid://10723355272",
	["file-badge"] = "rbxassetid://10723355622",
	["file-badge-2"] = "rbxassetid://10723355451",
	["file-bar-chart"] = "rbxassetid://10723355887",
	["file-bar-chart-2"] = "rbxassetid://10723355746",
	["file-box"] = "rbxassetid://10723355989",
	["file-check"] = "rbxassetid://10723356210",
	["file-check-2"] = "rbxassetid://10723356100",
	["file-clock"] = "rbxassetid://10723356329",
	["file-code"] = "rbxassetid://10723356507",
	["file-cog"] = "rbxassetid://10723356830",
	["file-cog-2"] = "rbxassetid://10723356676",
	["file-diff"] = "rbxassetid://10723357039",
	["file-digit"] = "rbxassetid://10723357151",
	["file-down"] = "rbxassetid://10723357322",
	["file-edit"] = "rbxassetid://10723357495",
	["file-heart"] = "rbxassetid://10723357637",
	["file-image"] = "rbxassetid://10723357790",
	["file-input"] = "rbxassetid://10723357933",
	["file-json"] = "rbxassetid://10723364435",
	["file-json-2"] = "rbxassetid://10723364361",
	["file-key"] = "rbxassetid://10723364605",
	["file-key-2"] = "rbxassetid://10723364515",
	["file-line-chart"] = "rbxassetid://10723364725",
	["file-lock"] = "rbxassetid://10723364957",
	["file-lock-2"] = "rbxassetid://10723364861",
	["file-minus"] = "rbxassetid://10723365254",
	["file-minus-2"] = "rbxassetid://10723365086",
	["file-output"] = "rbxassetid://10723365457",
	["file-pie-chart"] = "rbxassetid://10723365598",
	["file-plus"] = "rbxassetid://10723365877",
	["file-plus-2"] = "rbxassetid://10723365766",
	["file-question"] = "rbxassetid://10723365987",
	["file-scan"] = "rbxassetid://10723366167",
	["file-search"] = "rbxassetid://10723366550",
	["file-search-2"] = "rbxassetid://10723366340",
	["file-signature"] = "rbxassetid://10723366741",
	["file-spreadsheet"] = "rbxassetid://10723366962",
	["file-symlink"] = "rbxassetid://10723367098",
	["file-terminal"] = "rbxassetid://10723367244",
	["file-text"] = "rbxassetid://10723367380",
	["file-type"] = "rbxassetid://10723367606",
	["file-type-2"] = "rbxassetid://10723367509",
	["file-up"] = "rbxassetid://10723367734",
	["file-video"] = "rbxassetid://10723373884",
	["file-video-2"] = "rbxassetid://10723367834",
	["file-volume"] = "rbxassetid://10723374172",
	["file-volume-2"] = "rbxassetid://10723374030",
	["file-warning"] = "rbxassetid://10723374276",
	["file-x"] = "rbxassetid://10723374544",
	["file-x-2"] = "rbxassetid://10723374378",
	["files"] = "rbxassetid://10723374759",
	["film"] = "rbxassetid://10723374981",
	["filter"] = "rbxassetid://10723375128",
	["fingerprint"] = "rbxassetid://10723375250",
	["flag"] = "rbxassetid://10723375890",
	["flag-off"] = "rbxassetid://10723375443",
	["flag-triangle-left"] = "rbxassetid://10723375608",
	["flag-triangle-right"] = "rbxassetid://10723375727",
	["flame"] = "rbxassetid://10723376114",
	["flashlight"] = "rbxassetid://10723376471",
	["flashlight-off"] = "rbxassetid://10723376365",
	["flask-conical"] = "rbxassetid://10734883986",
	["flask-round"] = "rbxassetid://10723376614",
	["flip-horizontal"] = "rbxassetid://10723376884",
	["flip-horizontal-2"] = "rbxassetid://10723376745",
	["flip-vertical"] = "rbxassetid://10723377138",
	["flip-vertical-2"] = "rbxassetid://10723377026",
	["flower"] = "rbxassetid://10747830374",
	["flower-2"] = "rbxassetid://10723377305",
	["focus"] = "rbxassetid://10723377537",
	["folder"] = "rbxassetid://10723387563",
	["folder-archive"] = "rbxassetid://10723384478",
	["folder-check"] = "rbxassetid://10723384605",
	["folder-clock"] = "rbxassetid://10723384731",
	["folder-closed"] = "rbxassetid://10723384893",
	["folder-cog"] = "rbxassetid://10723385213",
	["folder-cog-2"] = "rbxassetid://10723385036",
	["folder-down"] = "rbxassetid://10723385338",
	["folder-edit"] = "rbxassetid://10723385445",
	["folder-heart"] = "rbxassetid://10723385545",
	["folder-input"] = "rbxassetid://10723385721",
	["folder-key"] = "rbxassetid://10723385848",
	["folder-lock"] = "rbxassetid://10723386005",
	["folder-minus"] = "rbxassetid://10723386127",
	["folder-open"] = "rbxassetid://10723386277",
	["folder-output"] = "rbxassetid://10723386386",
	["folder-plus"] = "rbxassetid://10723386531",
	["folder-search"] = "rbxassetid://10723386787",
	["folder-search-2"] = "rbxassetid://10723386674",
	["folder-symlink"] = "rbxassetid://10723386930",
	["folder-tree"] = "rbxassetid://10723387085",
	["folder-up"] = "rbxassetid://10723387265",
	["folder-x"] = "rbxassetid://10723387448",
	["folders"] = "rbxassetid://10723387721",
	["form-input"] = "rbxassetid://10723387841",
	["forward"] = "rbxassetid://10723388016",
	["frame"] = "rbxassetid://10723394389",
	["framer"] = "rbxassetid://10723394565",
	["frown"] = "rbxassetid://10723394681",
	["fuel"] = "rbxassetid://10723394846",
	["function-square"] = "rbxassetid://10723395041",
	["gamepad"] = "rbxassetid://10723395457",
	["gamepad-2"] = "rbxassetid://10723395215",
	["gauge"] = "rbxassetid://10723395708",
	["gavel"] = "rbxassetid://10723395896",
	["gem"] = "rbxassetid://10723396000",
	["ghost"] = "rbxassetid://10723396107",
	["gift"] = "rbxassetid://10723396402",
	["gift-card"] = "rbxassetid://10723396225",
	["git-branch"] = "rbxassetid://10723396676",
	["git-branch-plus"] = "rbxassetid://10723396542",
	["git-commit"] = "rbxassetid://10723396812",
	["git-compare"] = "rbxassetid://10723396954",
	["git-fork"] = "rbxassetid://10723397049",
	["git-merge"] = "rbxassetid://10723397165",
	["git-pull-request"] = "rbxassetid://10723397431",
	["git-pull-request-closed"] = "rbxassetid://10723397268",
	["git-pull-request-draft"] = "rbxassetid://10734884302",
	["glass"] = "rbxassetid://10723397788",
	["glass-2"] = "rbxassetid://10723397529",
	["glass-water"] = "rbxassetid://10723397678",
	["glasses"] = "rbxassetid://10723397895",
	["globe"] = "rbxassetid://10723404337",
	["globe-2"] = "rbxassetid://10723398002",
	["grab"] = "rbxassetid://10723404472",
	["graduation-cap"] = "rbxassetid://10723404691",
	["grape"] = "rbxassetid://10723404822",
	["grid"] = "rbxassetid://10723404936",
	["grip-horizontal"] = "rbxassetid://10723405089",
	["grip-vertical"] = "rbxassetid://10723405236",
	["hammer"] = "rbxassetid://10723405360",
	["hand"] = "rbxassetid://10723405649",
	["hand-metal"] = "rbxassetid://10723405508",
	["hard-drive"] = "rbxassetid://10723405749",
	["hard-hat"] = "rbxassetid://10723405859",
	["hash"] = "rbxassetid://10723405975",
	["haze"] = "rbxassetid://10723406078",
	["headphones"] = "rbxassetid://10723406165",
	["heart"] = "rbxassetid://10723406885",
	["heart-crack"] = "rbxassetid://10723406299",
	["heart-handshake"] = "rbxassetid://10723406480",
	["heart-off"] = "rbxassetid://10723406662",
	["heart-pulse"] = "rbxassetid://10723406795",
	["help-circle"] = "rbxassetid://10723406988",
	["hexagon"] = "rbxassetid://10723407092",
	["highlighter"] = "rbxassetid://10723407192",
	["history"] = "rbxassetid://10723407335",
	["home"] = "rbxassetid://10723407389",
	["hourglass"] = "rbxassetid://10723407498",
	["ice-cream"] = "rbxassetid://10723414308",
	["image"] = "rbxassetid://10723415040",
	["image-minus"] = "rbxassetid://10723414487",
	["image-off"] = "rbxassetid://10723414677",
	["image-plus"] = "rbxassetid://10723414827",
	["import"] = "rbxassetid://10723415205",
	["inbox"] = "rbxassetid://10723415335",
	["indent"] = "rbxassetid://10723415494",
	["indian-rupee"] = "rbxassetid://10723415642",
	["infinity"] = "rbxassetid://10723415766",
	["info"] = "rbxassetid://10723415903",
	["inspect"] = "rbxassetid://10723416057",
	["italic"] = "rbxassetid://10723416195",
	["japanese-yen"] = "rbxassetid://10723416363",
	["joystick"] = "rbxassetid://10723416527",
	["key"] = "rbxassetid://10723416652",
	["keyboard"] = "rbxassetid://10723416765",
	["lamp"] = "rbxassetid://10723417513",
	["lamp-ceiling"] = "rbxassetid://10723416922",
	["lamp-desk"] = "rbxassetid://10723417016",
	["lamp-floor"] = "rbxassetid://10723417131",
	["lamp-wall-down"] = "rbxassetid://10723417240",
	["lamp-wall-up"] = "rbxassetid://10723417356",
	["landmark"] = "rbxassetid://10723417608",
	["languages"] = "rbxassetid://10723417703",
	["laptop"] = "rbxassetid://10723423881",
	["laptop-2"] = "rbxassetid://10723417797",
	["lasso"] = "rbxassetid://10723424235",
	["lasso-select"] = "rbxassetid://10723424058",
	["laugh"] = "rbxassetid://10723424372",
	["layers"] = "rbxassetid://10723424505",
	["layout"] = "rbxassetid://10723425376",
	["layout-dashboard"] = "rbxassetid://10723424646",
	["layout-grid"] = "rbxassetid://10723424838",
	["layout-list"] = "rbxassetid://10723424963",
	["layout-template"] = "rbxassetid://10723425187",
	["leaf"] = "rbxassetid://10723425539",
	["library"] = "rbxassetid://10723425615",
	["life-buoy"] = "rbxassetid://10723425685",
	["lightbulb"] = "rbxassetid://10723425852",
	["lightbulb-off"] = "rbxassetid://10723425762",
	["line-chart"] = "rbxassetid://10723426393",
	["link"] = "rbxassetid://10723426722",
	["link-2"] = "rbxassetid://10723426595",
	["link-2-off"] = "rbxassetid://10723426513",
	["list"] = "rbxassetid://10723433811",
	["list-checks"] = "rbxassetid://10734884548",
	["list-end"] = "rbxassetid://10723426886",
	["list-minus"] = "rbxassetid://10723426986",
	["list-music"] = "rbxassetid://10723427081",
	["list-ordered"] = "rbxassetid://10723427199",
	["list-plus"] = "rbxassetid://10723427334",
	["list-start"] = "rbxassetid://10723427494",
	["list-video"] = "rbxassetid://10723427619",
	["list-x"] = "rbxassetid://10723433655",
	["loader"] = "rbxassetid://10723434070",
	["loader-2"] = "rbxassetid://10723433935",
	["locate"] = "rbxassetid://10723434557",
	["locate-fixed"] = "rbxassetid://10723434236",
	["locate-off"] = "rbxassetid://10723434379",
	["lock"] = "rbxassetid://10723434711",
	["log-in"] = "rbxassetid://10723434830",
	["log-out"] = "rbxassetid://10723434906",
	["luggage"] = "rbxassetid://10723434993",
	["magnet"] = "rbxassetid://10723435069",
	["mail"] = "rbxassetid://10734885430",
	["mail-check"] = "rbxassetid://10723435182",
	["mail-minus"] = "rbxassetid://10723435261",
	["mail-open"] = "rbxassetid://10723435342",
	["mail-plus"] = "rbxassetid://10723435443",
	["mail-question"] = "rbxassetid://10723435515",
	["mail-search"] = "rbxassetid://10734884739",
	["mail-warning"] = "rbxassetid://10734885015",
	["mail-x"] = "rbxassetid://10734885247",
	["mails"] = "rbxassetid://10734885614",
	["map"] = "rbxassetid://10734886202",
	["map-pin"] = "rbxassetid://10734886004",
	["map-pin-off"] = "rbxassetid://10734885803",
	["maximize"] = "rbxassetid://10734886735",
	["maximize-2"] = "rbxassetid://10734886496",
	["medal"] = "rbxassetid://10734887072",
	["megaphone"] = "rbxassetid://10734887454",
	["megaphone-off"] = "rbxassetid://10734887311",
	["meh"] = "rbxassetid://10734887603",
	["menu"] = "rbxassetid://10734887784",
	["message-circle"] = "rbxassetid://10734888000",
	["message-square"] = "rbxassetid://10734888228",
	["mic"] = "rbxassetid://10734888864",
	["mic-2"] = "rbxassetid://10734888430",
	["mic-off"] = "rbxassetid://10734888646",
	["microscope"] = "rbxassetid://10734889106",
	["microwave"] = "rbxassetid://10734895076",
	["milestone"] = "rbxassetid://10734895310",
	["minimize"] = "rbxassetid://10734895698",
	["minimize-2"] = "rbxassetid://10734895530",
	["minus"] = "rbxassetid://10734896206",
	["minus-circle"] = "rbxassetid://10734895856",
	["minus-square"] = "rbxassetid://10734896029",
	["monitor"] = "rbxassetid://10734896881",
	["monitor-off"] = "rbxassetid://10734896360",
	["monitor-speaker"] = "rbxassetid://10734896512",
	["moon"] = "rbxassetid://10734897102",
	["more-horizontal"] = "rbxassetid://10734897250",
	["more-vertical"] = "rbxassetid://10734897387",
	["mountain"] = "rbxassetid://10734897956",
	["mountain-snow"] = "rbxassetid://10734897665",
	["mouse"] = "rbxassetid://10734898592",
	["mouse-pointer"] = "rbxassetid://10734898476",
	["mouse-pointer-2"] = "rbxassetid://10734898194",
	["mouse-pointer-click"] = "rbxassetid://10734898355",
	["move"] = "rbxassetid://10734900011",
	["move-3d"] = "rbxassetid://10734898756",
	["move-diagonal"] = "rbxassetid://10734899164",
	["move-diagonal-2"] = "rbxassetid://10734898934",
	["move-horizontal"] = "rbxassetid://10734899414",
	["move-vertical"] = "rbxassetid://10734899821",
	["music"] = "rbxassetid://10734905958",
	["music-2"] = "rbxassetid://10734900215",
	["music-3"] = "rbxassetid://10734905665",
	["music-4"] = "rbxassetid://10734905823",
	["navigation"] = "rbxassetid://10734906744",
	["navigation-2"] = "rbxassetid://10734906332",
	["navigation-2-off"] = "rbxassetid://10734906144",
	["navigation-off"] = "rbxassetid://10734906580",
	["network"] = "rbxassetid://10734906975",
	["newspaper"] = "rbxassetid://10734907168",
	["octagon"] = "rbxassetid://10734907361",
	["option"] = "rbxassetid://10734907649",
	["outdent"] = "rbxassetid://10734907933",
	["package"] = "rbxassetid://10734909540",
	["package-2"] = "rbxassetid://10734908151",
	["package-check"] = "rbxassetid://10734908384",
	["package-minus"] = "rbxassetid://10734908626",
	["package-open"] = "rbxassetid://10734908793",
	["package-plus"] = "rbxassetid://10734909016",
	["package-search"] = "rbxassetid://10734909196",
	["package-x"] = "rbxassetid://10734909375",
	["paint-bucket"] = "rbxassetid://10734909847",
	["paintbrush"] = "rbxassetid://10734910187",
	["paintbrush-2"] = "rbxassetid://10734910030",
	["palette"] = "rbxassetid://10734910430",
	["palmtree"] = "rbxassetid://10734910680",
	["paperclip"] = "rbxassetid://10734910927",
	["party-popper"] = "rbxassetid://10734918735",
	["pause"] = "rbxassetid://10734919336",
	["pause-circle"] = "rbxassetid://10735024209",
	["pause-octagon"] = "rbxassetid://10734919143",
	["pen-tool"] = "rbxassetid://10734919503",
	["pencil"] = "rbxassetid://10734919691",
	["percent"] = "rbxassetid://10734919919",
	["person-standing"] = "rbxassetid://10734920149",
	["phone"] = "rbxassetid://10734921524",
	["phone-call"] = "rbxassetid://10734920305",
	["phone-forwarded"] = "rbxassetid://10734920508",
	["phone-incoming"] = "rbxassetid://10734920694",
	["phone-missed"] = "rbxassetid://10734920845",
	["phone-off"] = "rbxassetid://10734921077",
	["phone-outgoing"] = "rbxassetid://10734921288",
	["pie-chart"] = "rbxassetid://10734921727",
	["piggy-bank"] = "rbxassetid://10734921935",
	["pin"] = "rbxassetid://10734922324",
	["pin-off"] = "rbxassetid://10734922180",
	["pipette"] = "rbxassetid://10734922497",
	["pizza"] = "rbxassetid://10734922774",
	["plane"] = "rbxassetid://10734922971",
	["play"] = "rbxassetid://10734923549",
	["play-circle"] = "rbxassetid://10734923214",
	["plus"] = "rbxassetid://10734924532",
	["plus-circle"] = "rbxassetid://10734923868",
	["plus-square"] = "rbxassetid://10734924219",
	["podcast"] = "rbxassetid://10734929553",
	["pointer"] = "rbxassetid://10734929723",
	["pound-sterling"] = "rbxassetid://10734929981",
	["power"] = "rbxassetid://10734930466",
	["power-off"] = "rbxassetid://10734930257",
	["printer"] = "rbxassetid://10734930632",
	["puzzle"] = "rbxassetid://10734930886",
	["quote"] = "rbxassetid://10734931234",
	["radio"] = "rbxassetid://10734931596",
	["radio-receiver"] = "rbxassetid://10734931402",
	["rectangle-horizontal"] = "rbxassetid://10734931777",
	["rectangle-vertical"] = "rbxassetid://10734932081",
	["recycle"] = "rbxassetid://10734932295",
	["redo"] = "rbxassetid://10734932822",
	["redo-2"] = "rbxassetid://10734932586",
	["refresh-ccw"] = "rbxassetid://10734933056",
	["refresh-cw"] = "rbxassetid://10734933222",
	["refrigerator"] = "rbxassetid://10734933465",
	["regex"] = "rbxassetid://10734933655",
	["repeat"] = "rbxassetid://10734933966",
	["repeat-1"] = "rbxassetid://10734933826",
	["reply"] = "rbxassetid://10734934252",
	["reply-all"] = "rbxassetid://10734934132",
	["rewind"] = "rbxassetid://10734934347",
	["rocket"] = "rbxassetid://10734934585",
	["rocking-chair"] = "rbxassetid://10734939942",
	["rotate-3d"] = "rbxassetid://10734940107",
	["rotate-ccw"] = "rbxassetid://10734940376",
	["rotate-cw"] = "rbxassetid://10734940654",
	["rss"] = "rbxassetid://10734940825",
	["ruler"] = "rbxassetid://10734941018",
	["russian-ruble"] = "rbxassetid://10734941199",
	["sailboat"] = "rbxassetid://10734941354",
	["save"] = "rbxassetid://10734941499",
	["scale"] = "rbxassetid://10734941912",
	["scale-3d"] = "rbxassetid://10734941739",
	["scaling"] = "rbxassetid://10734942072",
	["scan"] = "rbxassetid://10734942565",
	["scan-face"] = "rbxassetid://10734942198",
	["scan-line"] = "rbxassetid://10734942351",
	["scissors"] = "rbxassetid://10734942778",
	["screen-share"] = "rbxassetid://10734943193",
	["screen-share-off"] = "rbxassetid://10734942967",
	["scroll"] = "rbxassetid://10734943448",
	["search"] = "rbxassetid://10734943674",
	["send"] = "rbxassetid://10734943902",
	["separator-horizontal"] = "rbxassetid://10734944115",
	["separator-vertical"] = "rbxassetid://10734944326",
	["server"] = "rbxassetid://10734949856",
	["server-cog"] = "rbxassetid://10734944444",
	["server-crash"] = "rbxassetid://10734944554",
	["server-off"] = "rbxassetid://10734944668",
	["settings"] = "rbxassetid://10734950309",
	["settings-2"] = "rbxassetid://10734950020",
	["share"] = "rbxassetid://10734950813",
	["share-2"] = "rbxassetid://10734950553",
	["sheet"] = "rbxassetid://10734951038",
	["shield"] = "rbxassetid://10734951847",
	["shield-alert"] = "rbxassetid://10734951173",
	["shield-check"] = "rbxassetid://10734951367",
	["shield-close"] = "rbxassetid://10734951535",
	["shield-off"] = "rbxassetid://10734951684",
	["shirt"] = "rbxassetid://10734952036",
	["shopping-bag"] = "rbxassetid://10734952273",
	["shopping-cart"] = "rbxassetid://10734952479",
	["shovel"] = "rbxassetid://10734952773",
	["shower-head"] = "rbxassetid://10734952942",
	["shrink"] = "rbxassetid://10734953073",
	["shrub"] = "rbxassetid://10734953241",
	["shuffle"] = "rbxassetid://10734953451",
	["sidebar"] = "rbxassetid://10734954301",
	["sidebar-close"] = "rbxassetid://10734953715",
	["sidebar-open"] = "rbxassetid://10734954000",
	["sigma"] = "rbxassetid://10734954538",
	["signal"] = "rbxassetid://10734961133",
	["signal-high"] = "rbxassetid://10734954807",
	["signal-low"] = "rbxassetid://10734955080",
	["signal-medium"] = "rbxassetid://10734955336",
	["signal-zero"] = "rbxassetid://10734960878",
	["siren"] = "rbxassetid://10734961284",
	["skip-back"] = "rbxassetid://10734961526",
	["skip-forward"] = "rbxassetid://10734961809",
	["skull"] = "rbxassetid://10734962068",
	["slack"] = "rbxassetid://10734962339",
	["slash"] = "rbxassetid://10734962600",
	["slice"] = "rbxassetid://10734963024",
	["sliders"] = "rbxassetid://10734963400",
	["sliders-horizontal"] = "rbxassetid://10734963191",
	["smartphone"] = "rbxassetid://10734963940",
	["smartphone-charging"] = "rbxassetid://10734963671",
	["smile"] = "rbxassetid://10734964441",
	["smile-plus"] = "rbxassetid://10734964188",
	["snowflake"] = "rbxassetid://10734964600",
	["sofa"] = "rbxassetid://10734964852",
	["sort-asc"] = "rbxassetid://10734965115",
	["sort-desc"] = "rbxassetid://10734965287",
	["speaker"] = "rbxassetid://10734965419",
	["sprout"] = "rbxassetid://10734965572",
	["square"] = "rbxassetid://10734965702",
	["star"] = "rbxassetid://10734966248",
	["star-half"] = "rbxassetid://10734965897",
	["star-off"] = "rbxassetid://10734966097",
	["stethoscope"] = "rbxassetid://10734966384",
	["sticker"] = "rbxassetid://10734972234",
	["sticky-note"] = "rbxassetid://10734972463",
	["stop-circle"] = "rbxassetid://10734972621",
	["stretch-horizontal"] = "rbxassetid://10734972862",
	["stretch-vertical"] = "rbxassetid://10734973130",
	["strikethrough"] = "rbxassetid://10734973290",
	["subscript"] = "rbxassetid://10734973457",
	["sun"] = "rbxassetid://10734974297",
	["sun-dim"] = "rbxassetid://10734973645",
	["sun-medium"] = "rbxassetid://10734973778",
	["sun-moon"] = "rbxassetid://10734973999",
	["sun-snow"] = "rbxassetid://10734974130",
	["sunrise"] = "rbxassetid://10734974522",
	["sunset"] = "rbxassetid://10734974689",
	["superscript"] = "rbxassetid://10734974850",
	["swiss-franc"] = "rbxassetid://10734975024",
	["switch-camera"] = "rbxassetid://10734975214",
	["sword"] = "rbxassetid://10734975486",
	["swords"] = "rbxassetid://10734975692",
	["syringe"] = "rbxassetid://10734975932",
	["table"] = "rbxassetid://10734976230",
	["table-2"] = "rbxassetid://10734976097",
	["tablet"] = "rbxassetid://10734976394",
	["tag"] = "rbxassetid://10734976528",
	["tags"] = "rbxassetid://10734976739",
	["target"] = "rbxassetid://10734977012",
	["tent"] = "rbxassetid://10734981750",
	["terminal"] = "rbxassetid://10734982144",
	["terminal-square"] = "rbxassetid://10734981995",
	["text-cursor"] = "rbxassetid://10734982395",
	["text-cursor-input"] = "rbxassetid://10734982297",
	["thermometer"] = "rbxassetid://10734983134",
	["thermometer-snowflake"] = "rbxassetid://10734982571",
	["thermometer-sun"] = "rbxassetid://10734982771",
	["thumbs-down"] = "rbxassetid://10734983359",
	["thumbs-up"] = "rbxassetid://10734983629",
	["ticket"] = "rbxassetid://10734983868",
	["timer"] = "rbxassetid://10734984606",
	["timer-off"] = "rbxassetid://10734984138",
	["timer-reset"] = "rbxassetid://10734984355",
	["toggle-left"] = "rbxassetid://10734984834",
	["toggle-right"] = "rbxassetid://10734985040",
	["tornado"] = "rbxassetid://10734985247",
	["toy-brick"] = "rbxassetid://10747361919",
	["train"] = "rbxassetid://10747362105",
	["trash"] = "rbxassetid://10747362393",
	["trash-2"] = "rbxassetid://10747362241",
	["tree-deciduous"] = "rbxassetid://10747362534",
	["tree-pine"] = "rbxassetid://10747362748",
	["trees"] = "rbxassetid://10747363016",
	["trending-down"] = "rbxassetid://10747363205",
	["trending-up"] = "rbxassetid://10747363465",
	["triangle"] = "rbxassetid://10747363621",
	["trophy"] = "rbxassetid://10747363809",
	["truck"] = "rbxassetid://10747364031",
	["tv"] = "rbxassetid://10747364593",
	["tv-2"] = "rbxassetid://10747364302",
	["type"] = "rbxassetid://10747364761",
	["umbrella"] = "rbxassetid://10747364971",
	["underline"] = "rbxassetid://10747365191",
	["undo"] = "rbxassetid://10747365484",
	["undo-2"] = "rbxassetid://10747365359",
	["unlink"] = "rbxassetid://10747365771",
	["unlink-2"] = "rbxassetid://10747397871",
	["unlock"] = "rbxassetid://10747366027",
	["upload"] = "rbxassetid://10747366434",
	["upload-cloud"] = "rbxassetid://10747366266",
	["usb"] = "rbxassetid://10747366606",
	["user"] = "rbxassetid://10747373176",
	["user-check"] = "rbxassetid://10747371901",
	["user-cog"] = "rbxassetid://10747372167",
	["user-minus"] = "rbxassetid://10747372346",
	["user-plus"] = "rbxassetid://10747372702",
	["user-x"] = "rbxassetid://10747372992",
	["users"] = "rbxassetid://10747373426",
	["utensils"] = "rbxassetid://10747373821",
	["utensils-crossed"] = "rbxassetid://10747373629",
	["venetian-mask"] = "rbxassetid://10747374003",
	["verified"] = "rbxassetid://10747374131",
	["vibrate"] = "rbxassetid://10747374489",
	["vibrate-off"] = "rbxassetid://10747374269",
	["video"] = "rbxassetid://10747374938",
	["video-off"] = "rbxassetid://10747374721",
	["view"] = "rbxassetid://10747375132",
	["voicemail"] = "rbxassetid://10747375281",
	["volume"] = "rbxassetid://10747376008",
	["volume-1"] = "rbxassetid://10747375450",
	["volume-2"] = "rbxassetid://10747375679",
	["volume-x"] = "rbxassetid://10747375880",
	["wallet"] = "rbxassetid://10747376205",
	["wand"] = "rbxassetid://10747376565",
	["wand-2"] = "rbxassetid://10747376349",
	["watch"] = "rbxassetid://10747376722",
	["waves"] = "rbxassetid://10747376931",
	["webcam"] = "rbxassetid://10747381992",
	["wifi"] = "rbxassetid://10747382504",
	["wifi-off"] = "rbxassetid://10747382268",
	["wind"] = "rbxassetid://10747382750",
	["wrap-text"] = "rbxassetid://10747383065",
	["wrench"] = "rbxassetid://10747383470",
	["x"] = "rbxassetid://10747384394",
	["x-circle"] = "rbxassetid://10747383819",
	["x-octagon"] = "rbxassetid://10747384037",
	["x-square"] = "rbxassetid://10747384217",
	["zoom-in"] = "rbxassetid://10747384552",
	["zoom-out"] = "rbxassetid://10747384679"
}

local Excusyz = Instance.new("ScreenGui")

Excusyz.Name = "Excusyz"
Excusyz.IgnoreGuiInset = true
Excusyz.Parent = game.Players.LocalPlayer.PlayerGui

function Library:CreateWindow(info)
	
	local NameHub = info.Name or info.name or info.Title or info.title or "Excusyz"
	local Icon = info.Icon or info.icon or 122610081600422
	
	local Background_1 = Instance.new("Frame")
	local UICorner_1 = Instance.new("UICorner")
	local Logo_1 = Instance.new("ImageLabel")
	local HubName_1 = Instance.new("TextLabel")
	local Day_1 = Instance.new("TextLabel")
	local Line_1 = Instance.new("Frame")
	
	Background_1.Name = "Background"
	Background_1.Parent = Excusyz
	Background_1.AnchorPoint = Vector2.new(0.5, 0.5)
	Background_1.BackgroundColor3 = Color3.fromRGB(24,24,24)
	Background_1.BorderColor3 = Color3.fromRGB(0,0,0)
	Background_1.BorderSizePixel = 0
	Background_1.Position = UDim2.new(0.5, 0,0.5, 0)
	Background_1.Size = UDim2.new(0, 0,0, 0)
	Background_1.ClipsDescendants = true
	
	lak(Background_1)
	
	UICorner_1.Parent = Background_1
	UICorner_1.CornerRadius = UDim.new(0,10)

	Logo_1.Name = "Logo"
	Logo_1.Parent = Background_1
	Logo_1.AnchorPoint = Vector2.new(0, 0.5)
	Logo_1.BackgroundColor3 = Color3.fromRGB(255,255,255)
	Logo_1.BackgroundTransparency = 1
	Logo_1.BorderColor3 = Color3.fromRGB(0,0,0)
	Logo_1.BorderSizePixel = 0
	Logo_1.Position = UDim2.new(0.0299999993, 0,0.0799999982, 0)
	Logo_1.Size = UDim2.new(0, 45,0, 45)
	if type(Icon) == 'string' and not Icon:find('rbxassetid://') then
		Logo_1.Image = "rbxassetid://".. Icon
	elseif type(Icon) == 'number' then
		Logo_1.Image = "rbxassetid://".. Icon
	else
		Logo_1.Image = Icon
	end

	HubName_1.Name = "HubName"
	HubName_1.Parent = Background_1
	HubName_1.AnchorPoint = Vector2.new(0.5, 0.5)
	HubName_1.BackgroundColor3 = Color3.fromRGB(255,255,255)
	HubName_1.BackgroundTransparency = 1
	HubName_1.BorderColor3 = Color3.fromRGB(0,0,0)
	HubName_1.BorderSizePixel = 0
	HubName_1.Position = UDim2.new(0.248750001, 0,0.0644999966, 0)
	HubName_1.Size = UDim2.new(0, 63,0, 30)
	HubName_1.Font = Enum.Font.SourceSansBold
	HubName_1.Text = NameHub
	HubName_1.TextColor3 = Color3.fromRGB(255,255,255)
	HubName_1.TextSize = 21
	HubName_1.TextXAlignment = Enum.TextXAlignment.Left

	Day_1.Name = "Day"
	Day_1.Parent = Background_1
	Day_1.AnchorPoint = Vector2.new(0.5, 0.5)
	Day_1.BackgroundColor3 = Color3.fromRGB(255,255,255)
	Day_1.BackgroundTransparency = 1
	Day_1.BorderColor3 = Color3.fromRGB(0,0,0)
	Day_1.BorderSizePixel = 0
	Day_1.Position = UDim2.new(0.248750001, 0,0.12, 0)
	Day_1.Size = UDim2.new(0, 63,0, 30)
	Day_1.FontFace = Font.new("rbxassetid://16658237174", Enum.FontWeight.Regular, Enum.FontStyle.Normal)
	Day_1.Text = os.date("%A, %B %d, %Y")
	Day_1.TextColor3 = Color3.fromRGB(255,255,255)
	Day_1.TextSize = 10
	Day_1.TextTransparency = 0.5
	Day_1.TextXAlignment = Enum.TextXAlignment.Left
	
	Line_1.Name = "Line"
	Line_1.Parent = Background_1
	Line_1.BackgroundColor3 = Color3.fromRGB(255,255,255)
	Line_1.BackgroundTransparency = 0.5
	Line_1.BorderColor3 = Color3.fromRGB(0,0,0)
	Line_1.BorderSizePixel = 0
	Line_1.Position = UDim2.new(0, 0,0.16, 0)
	Line_1.Size = UDim2.new(1, 0,0, 2)

	local CloseUI = Instance.new("TextButton")
	local UICorner_1 = Instance.new("UICorner")
	local ClouseUIIcon = Instance.new("ImageLabel")
	local BackgroundGradient_1 = Instance.new("UIGradient")
	local FPSText = Instance.new("TextLabel")
	local ServerTimeText = Instance.new("TextLabel")

	CloseUI.Name = "CloseUI"
	CloseUI.Parent = Excusyz
	CloseUI.Active = true
	CloseUI.AnchorPoint = Vector2.new(0.5, 0.5)
	CloseUI.BackgroundColor3 = Color3.fromRGB(58,58,58)
	CloseUI.BorderColor3 = Color3.fromRGB(0,0,0)
	CloseUI.BorderSizePixel = 0
	CloseUI.Position = UDim2.new(0.0909999982, 0,0.186000004, 0)
	CloseUI.Size = UDim2.new(0, 70,0, 30)
	CloseUI.Font = Enum.Font.Gotham
	CloseUI.Text = ""
	CloseUI.TextColor3 = Color3.fromRGB(255,255,255)
	CloseUI.TextSize = 14
	CloseUI.BackgroundTransparency = 1

	UICorner_1.Parent = CloseUI
	UICorner_1.CornerRadius = UDim.new(1,0)

	ClouseUIIcon.Parent = CloseUI
	ClouseUIIcon.AnchorPoint = Vector2.new(0.5, 0.5)
	ClouseUIIcon.BackgroundColor3 = Color3.fromRGB(255,255,255)
	ClouseUIIcon.BackgroundTransparency = 1
	ClouseUIIcon.BorderColor3 = Color3.fromRGB(0,0,0)
	ClouseUIIcon.BorderSizePixel = 0
	ClouseUIIcon.Position = UDim2.new(0.5, 0,0.5, 0)
	ClouseUIIcon.Size = UDim2.new(0, 20,0, 20)
	if type(Icon) == 'string' and not Icon:find('rbxassetid://') then
		ClouseUIIcon.Image = "rbxassetid://".. Icon
	elseif type(Icon) == 'number' then
		ClouseUIIcon.Image = "rbxassetid://".. Icon
	else
		ClouseUIIcon.Image = Icon
	end
	ClouseUIIcon.ImageTransparency = 1

	BackgroundGradient_1.Name = "BackgroundGradient"
	BackgroundGradient_1.Parent = CloseUI
	BackgroundGradient_1.Color = ColorSequence.new{ColorSequenceKeypoint.new(0, Color3.fromRGB(13, 13, 13)), ColorSequenceKeypoint.new(1, Color3.fromRGB(255, 255, 255))}
	BackgroundGradient_1.Rotation = -100
	
	FPSText.Name = "FPSText"
	FPSText.Parent = CloseUI
	FPSText.AnchorPoint = Vector2.new(0.5, 0.5)
	FPSText.BackgroundColor3 = Color3.fromRGB(255,255,255)
	FPSText.BackgroundTransparency = 1
	FPSText.BorderColor3 = Color3.fromRGB(0,0,0)
	FPSText.BorderSizePixel = 0
	FPSText.Position = UDim2.new(0.5, 0,0.5, 0)
	FPSText.Size = UDim2.new(0.800000012, 0,1, 0)
	FPSText.Font = Enum.Font.Gotham
	FPSText.Text = "FPS : 60"
	FPSText.TextColor3 = Color3.fromRGB(255,255,255)
	FPSText.TextSize = 10
	FPSText.TextXAlignment = Enum.TextXAlignment.Left
	FPSText.TextTransparency = 1

	ServerTimeText.Name = "ServerTimeText"
	ServerTimeText.Parent = CloseUI
	ServerTimeText.AnchorPoint = Vector2.new(0.5, 0.5)
	ServerTimeText.BackgroundColor3 = Color3.fromRGB(255,255,255)
	ServerTimeText.BackgroundTransparency = 1
	ServerTimeText.BorderColor3 = Color3.fromRGB(0,0,0)
	ServerTimeText.BorderSizePixel = 0
	ServerTimeText.Position = UDim2.new(0.5, 0,0.5, 0)
	ServerTimeText.Size = UDim2.new(0.800000012, 0,1, 0)
	ServerTimeText.Font = Enum.Font.Gotham
	ServerTimeText.Text = "00:00:00"
	ServerTimeText.TextColor3 = Color3.fromRGB(255,255,255)
	ServerTimeText.TextSize = 10
	ServerTimeText.TextXAlignment = Enum.TextXAlignment.Right
	ServerTimeText.TextTransparency = 1
	
	lak(CloseUI)
	
	local Sound_1 = Instance.new("Sound")

	Sound_1.Parent = CloseUI
	Sound_1.Volume = 0.3
	Sound_1.RollOffMode = Enum.RollOffMode.InverseTapered
	Sound_1.SoundId = "rbxassetid://17208361335"

	delay(0,function()
		Tw({
			v = CloseUI,
			t = 0.3,
			s = "Linear",
			d = "Out",
			g = {BackgroundTransparency = 0}
		}):Play()
		Tw({
			v = ClouseUIIcon,
			t = 0.3,
			s = "Linear",
			d = "Out",
			g = {ImageTransparency = 0}
		}):Play()
		Tw({
			v = Background_1,
			t = 0.3,
			s = "Linear",
			d = "Out",
			g = {Size = UDim2.new(0, 400,0, 300)}
		}):Play()
	end)
	
	local isopen = false
	local oripos
	
	CloseUI.MouseButton1Click:Connect(function()
		isopen = not isopen
		if isopen then
			oripos = CloseUI.Position
			Tw({
				v = Background_1,
				t = 0.15,
				s = "Linear",
				d = "Out",
				g = {Size = UDim2.new(0, 0,0, 0)}
			}):Play()
			Tw({
				v = CloseUI,
				t = 0.15,
				s = "Back",
				d = "In",
				g = {Position = UDim2.new(.5, 0,.1, 0)}
			}):Play()
			Tw({
				v = FPSText,
				t = 0.3,
				s = "Linear",
				d = "Out",
				g = {TextTransparency = 0}
			}):Play()
			Tw({
				v = ServerTimeText,
				t = 0.3,
				s = "Linear",
				d = "Out",
				g = {TextTransparency = 0}
			}):Play()
			Tw({
				v = CloseUI,
				t = 0.3,
				s = "Back",
				d = "Out",
				g = {Size = UDim2.new(0, 200,0, 30)}
			}):Play()
		else
			Tw({
				v = Background_1,
				t = 0.15,
				s = "Linear",
				d = "Out",
				g = {Size = UDim2.new(0, 400,0, 300)}
			}):Play()
			Tw({
				v = CloseUI,
				t = 0.15,
				s = "Linear",
				d = "Out",
				g = {Position = oripos}
			}):Play()
			Tw({
				v = FPSText,
				t = 0.3,
				s = "Linear",
				d = "Out",
				g = {TextTransparency = 1}
			}):Play()
			Tw({
				v = ServerTimeText,
				t = 0.3,
				s = "Linear",
				d = "Out",
				g = {TextTransparency = 1}
			}):Play()
			Tw({
				v = CloseUI,
				t = 0.3,
				s = "Back",
				d = "Out",
				g = {Size = UDim2.new(0, 70,0, 30)}
			}):Play()
		end
	end)
	
	local fps = 0
	local lastTime = tick()

	game:GetService("RunService").RenderStepped:Connect(function()
		local currentTime = tick()
		local deltaTime = currentTime - lastTime
		lastTime = currentTime
		fps = 1 / deltaTime
	end)
	
	spawn(function()
		while wait(1) do
			pcall(function()
				local scripttime = game.Workspace.DistributedGameTime
				local seconds = scripttime%60
				local minutes = math.floor(scripttime/60%60)
				local hours = math.floor(scripttime/3600)
				local tempo = string.format("%02d:%02d:%02d", hours ,minutes, seconds)
				ServerTimeText.Text = tostring(tempo)
				FPSText.Text = "FPS : "..string.format("%.0f", fps)
			end)
		end
	end)
	
	local Tablist_1 = Instance.new("Frame")
	local ScrollingFrame_1 = Instance.new("ScrollingFrame")
	local UIListLayout_1 = Instance.new("UIListLayout")
	
	Tablist_1.Name = "Tablist"
	Tablist_1.Parent = Background_1
	Tablist_1.AnchorPoint = Vector2.new(1, 0.5)
	Tablist_1.BackgroundColor3 = Color3.fromRGB(255,255,255)
	Tablist_1.BackgroundTransparency = 1
	Tablist_1.BorderColor3 = Color3.fromRGB(0,0,0)
	Tablist_1.BorderSizePixel = 0
	Tablist_1.Position = UDim2.new(0.970000029, 0,0.0799999982, 0)
	Tablist_1.Size = UDim2.new(0, 182,0, 45)

	ScrollingFrame_1.Name = "ScrollingFrame"
	ScrollingFrame_1.Parent = Tablist_1
	ScrollingFrame_1.Active = true
	ScrollingFrame_1.BackgroundColor3 = Color3.fromRGB(255,255,255)
	ScrollingFrame_1.BackgroundTransparency = 1
	ScrollingFrame_1.BorderColor3 = Color3.fromRGB(0,0,0)
	ScrollingFrame_1.BorderSizePixel = 0
	ScrollingFrame_1.Size = UDim2.new(1, 0,1, 0)
	ScrollingFrame_1.ClipsDescendants = true
	ScrollingFrame_1.AutomaticCanvasSize = Enum.AutomaticSize.None
	ScrollingFrame_1.BottomImage = "rbxasset://textures/ui/Scroll/scroll-bottom.png"
	ScrollingFrame_1.CanvasPosition = Vector2.new(0, 0)
	ScrollingFrame_1.CanvasSize = UDim2.new(2, 0,0, 0)
	ScrollingFrame_1.ElasticBehavior = Enum.ElasticBehavior.WhenScrollable
	ScrollingFrame_1.HorizontalScrollBarInset = Enum.ScrollBarInset.None
	ScrollingFrame_1.MidImage = "rbxasset://textures/ui/Scroll/scroll-middle.png"
	ScrollingFrame_1.ScrollBarImageColor3 = Color3.fromRGB(0,0,0)
	ScrollingFrame_1.ScrollBarImageTransparency = 0
	ScrollingFrame_1.ScrollBarThickness = 0
	ScrollingFrame_1.ScrollingDirection = Enum.ScrollingDirection.XY
	ScrollingFrame_1.TopImage = "rbxasset://textures/ui/Scroll/scroll-top.png"
	ScrollingFrame_1.VerticalScrollBarInset = Enum.ScrollBarInset.None
	ScrollingFrame_1.VerticalScrollBarPosition = Enum.VerticalScrollBarPosition.Right

	UIListLayout_1.Parent = ScrollingFrame_1
	UIListLayout_1.Padding = UDim.new(0,8)
	UIListLayout_1.FillDirection = Enum.FillDirection.Horizontal
	UIListLayout_1.SortOrder = Enum.SortOrder.LayoutOrder
	UIListLayout_1.VerticalAlignment = Enum.VerticalAlignment.Center
	
	Library.Tab = {
		Value = false
	}
	function Library.Tab:CreateTab(info)
		
		local Title = info.Name or info.name or info.Title or info.title or nil
		local Icon = info.Icon or info.icon or nil
		
		local Tab_1 = Instance.new("Frame")
		local UICorner_2 = Instance.new("UICorner")
		local List_1 = Instance.new("Frame")
		local UIListLayout_2 = Instance.new("UIListLayout")
		local Title_1 = Instance.new("TextLabel")
		local Icon_1 = Instance.new("Frame")
		local Icon_2 = Instance.new("ImageLabel")
		local Click_1 = Instance.new("TextButton")
		
		Tab_1.Name = "Tab"
		Tab_1.Parent = ScrollingFrame_1
		Tab_1.BackgroundColor3 = Color3.fromRGB(136,136,136)
		Tab_1.BackgroundTransparency = 1
		Tab_1.BorderColor3 = Color3.fromRGB(0,0,0)
		Tab_1.BorderSizePixel = 0
		Tab_1.Position = UDim2.new(0, 0,0.111111112, 0)
		Tab_1.Size = UDim2.new(0, 43,0, 35)
		Tab_1.ClipsDescendants = true

		UICorner_2.Parent = Tab_1
		UICorner_2.CornerRadius = UDim.new(0,4)

		List_1.Name = "List"
		List_1.Parent = Tab_1
		List_1.AnchorPoint = Vector2.new(0.5, 0.5)
		List_1.BackgroundColor3 = Color3.fromRGB(255,255,255)
		List_1.BackgroundTransparency = 1
		List_1.BorderColor3 = Color3.fromRGB(0,0,0)
		List_1.BorderSizePixel = 0
		List_1.Position = UDim2.new(0.5, 0,0.5, 0)
		List_1.Size = UDim2.new(0.899999976, 0,0.899999976, 0)

		UIListLayout_2.Parent = List_1
		UIListLayout_2.Padding = UDim.new(0,5)
		UIListLayout_2.HorizontalAlignment = Enum.HorizontalAlignment.Center
		UIListLayout_2.SortOrder = Enum.SortOrder.LayoutOrder

		Title_1.Name = "Title"
		Title_1.Parent = List_1
		Title_1.BackgroundColor3 = Color3.fromRGB(255,255,255)
		Title_1.BackgroundTransparency = 1
		Title_1.BorderColor3 = Color3.fromRGB(0,0,0)
		Title_1.BorderSizePixel = 0
		Title_1.LayoutOrder = 1
		Title_1.Size = UDim2.new(0, 50,0, 5)
		Title_1.Font = Enum.Font.GothamBold
		Title_1.Text = Title
		Title_1.TextColor3 = Color3.fromRGB(255,255,255)
		Title_1.TextSize = 9
		Title_1.TextTransparency = 0.8

		Icon_1.Name = "Icon"
		Icon_1.Parent = List_1
		Icon_1.BackgroundColor3 = Color3.fromRGB(255,255,255)
		Icon_1.BackgroundTransparency = 1
		Icon_1.BorderColor3 = Color3.fromRGB(0,0,0)
		Icon_1.BorderSizePixel = 0
		Icon_1.Size = UDim2.new(0, 18,0, 18)

		Icon_2.Name = "Icon"
		Icon_2.Parent = Icon_1
		Icon_2.AnchorPoint = Vector2.new(0.5, 0.5)
		Icon_2.BackgroundColor3 = Color3.fromRGB(255,255,255)
		Icon_2.BackgroundTransparency = 1
		Icon_2.BorderColor3 = Color3.fromRGB(0,0,0)
		Icon_2.BorderSizePixel = 0
		Icon_2.Position = UDim2.new(0.5, 0,0.5, 0)
		Icon_2.Size = UDim2.new(0, 15,0, 15)
		Icon_2.ImageTransparency = 0.8
		if IconList[Icon] then
			Icon_2.Image = IconList[Icon]
		elseif type(Icon) == 'string' and not Icon:find('rbxassetid://') then
			Icon_2.Image = "rbxassetid://".. Icon
		elseif type(Icon) == 'number' then
			Icon_2.Image = "rbxassetid://".. Icon
		else
			Icon_2.Image = Icon
		end
		
		Click_1.Name = "Click"
		Click_1.Parent = Tab_1
		Click_1.Active = true
		Click_1.BackgroundColor3 = Color3.fromRGB(255,255,255)
		Click_1.BackgroundTransparency = 1
		Click_1.BorderColor3 = Color3.fromRGB(0,0,0)
		Click_1.BorderSizePixel = 0
		Click_1.Size = UDim2.new(1, 0,1, 0)
		Click_1.Font = Enum.Font.SourceSans
		Click_1.Text = ""
		Click_1.TextSize = 14
		
		Title_1.Size = UDim2.new(0, Title_1.TextBounds.X + 10, 0, 5)
		Tab_1.Size = UDim2.new(0, math.max(Title_1.TextBounds.X + 20, 35), 0, 35)
		
		local Page_1 = Instance.new("Frame")
		local UIListLayout_6 = Instance.new("UIListLayout")
		local PageLeft_1 = Instance.new("ScrollingFrame")
		local PageRight_1 = Instance.new("ScrollingFrame")
		
		Page_1.Name = "Page"
		Page_1.Parent = Background_1
		Page_1.AnchorPoint = Vector2.new(0.5, 0.5)
		Page_1.BackgroundColor3 = Color3.fromRGB(255,255,255)
		Page_1.BackgroundTransparency = 1
		Page_1.BorderColor3 = Color3.fromRGB(0,0,0)
		Page_1.BorderSizePixel = 0
		Page_1.Position = UDim2.new(-2, 0,0.569999993, 0)
		Page_1.Size = UDim2.new(0.949999988, 0,0, 225)
		Page_1.Visible = false

		UIListLayout_6.Parent = Page_1
		UIListLayout_6.Padding = UDim.new(0,5)
		UIListLayout_6.FillDirection = Enum.FillDirection.Horizontal
		UIListLayout_6.HorizontalAlignment = Enum.HorizontalAlignment.Center
		UIListLayout_6.SortOrder = Enum.SortOrder.LayoutOrder

		PageLeft_1.Name = "PageLeft"
		PageLeft_1.Parent = Page_1
		PageLeft_1.Active = true
		PageLeft_1.BackgroundColor3 = Color3.fromRGB(255,255,255)
		PageLeft_1.BackgroundTransparency = 1
		PageLeft_1.BorderColor3 = Color3.fromRGB(0,0,0)
		PageLeft_1.BorderSizePixel = 0
		PageLeft_1.Size = UDim2.new(0.479999989, 0,1, 0)
		PageLeft_1.ClipsDescendants = true
		PageLeft_1.AutomaticCanvasSize = Enum.AutomaticSize.None
		PageLeft_1.BottomImage = "rbxasset://textures/ui/Scroll/scroll-bottom.png"
		PageLeft_1.CanvasPosition = Vector2.new(0, 0)
		PageLeft_1.ElasticBehavior = Enum.ElasticBehavior.WhenScrollable
		PageLeft_1.HorizontalScrollBarInset = Enum.ScrollBarInset.None
		PageLeft_1.MidImage = "rbxasset://textures/ui/Scroll/scroll-middle.png"
		PageLeft_1.ScrollBarImageColor3 = Color3.fromRGB(0,0,0)
		PageLeft_1.ScrollBarImageTransparency = 0
		PageLeft_1.ScrollBarThickness = 0
		PageLeft_1.ScrollingDirection = Enum.ScrollingDirection.XY
		PageLeft_1.TopImage = "rbxasset://textures/ui/Scroll/scroll-top.png"
		PageLeft_1.VerticalScrollBarInset = Enum.ScrollBarInset.None
		PageLeft_1.VerticalScrollBarPosition = Enum.VerticalScrollBarPosition.Right
		
		PageRight_1.Name = "PageRight"
		PageRight_1.Parent = Page_1
		PageRight_1.Active = true
		PageRight_1.BackgroundColor3 = Color3.fromRGB(255,255,255)
		PageRight_1.BackgroundTransparency = 1
		PageRight_1.BorderColor3 = Color3.fromRGB(0,0,0)
		PageRight_1.BorderSizePixel = 0
		PageRight_1.Size = UDim2.new(0.479999989, 0,1, 0)
		PageRight_1.ClipsDescendants = true
		PageRight_1.AutomaticCanvasSize = Enum.AutomaticSize.None
		PageRight_1.BottomImage = "rbxasset://textures/ui/Scroll/scroll-bottom.png"
		PageRight_1.CanvasPosition = Vector2.new(0, 0)
		PageRight_1.ElasticBehavior = Enum.ElasticBehavior.WhenScrollable
		PageRight_1.HorizontalScrollBarInset = Enum.ScrollBarInset.None
		PageRight_1.MidImage = "rbxasset://textures/ui/Scroll/scroll-middle.png"
		PageRight_1.ScrollBarImageColor3 = Color3.fromRGB(0,0,0)
		PageRight_1.ScrollBarImageTransparency = 0
		PageRight_1.ScrollBarThickness = 0
		PageRight_1.ScrollingDirection = Enum.ScrollingDirection.XY
		PageRight_1.TopImage = "rbxasset://textures/ui/Scroll/scroll-top.png"
		PageRight_1.VerticalScrollBarInset = Enum.ScrollBarInset.None
		PageRight_1.VerticalScrollBarPosition = Enum.VerticalScrollBarPosition.Right
		
		local UIListLayoutPageLeft = Instance.new("UIListLayout")

		UIListLayoutPageLeft.Parent = PageLeft_1
		UIListLayoutPageLeft.Padding = UDim.new(0,8)
		UIListLayoutPageLeft.HorizontalAlignment = Enum.HorizontalAlignment.Center
		UIListLayoutPageLeft.SortOrder = Enum.SortOrder.LayoutOrder
		
		local UIListLayoutPageRight = Instance.new("UIListLayout")

		UIListLayoutPageRight.Parent = PageRight_1
		UIListLayoutPageRight.Padding = UDim.new(0,8)
		UIListLayoutPageRight.HorizontalAlignment = Enum.HorizontalAlignment.Center
		UIListLayoutPageRight.SortOrder = Enum.SortOrder.LayoutOrder
		
		Click_1.MouseButton1Click:Connect(function()
			for i,v in pairs(ScrollingFrame_1:GetChildren()) do
				if v:IsA("Frame") then
					Tw({
						v = v,
						t = 0.3,
						s = "Linear",
						d = "Out",
						g = {BackgroundTransparency = 1}
					}):Play()
					Tw({
						v = v.List.Title,
						t = 0.3,
						s = "Linear",
						d = "Out",
						g = {TextTransparency = 0.8}
					}):Play()
					Tw({
						v = v.List.Icon.Icon,
						t = 0.3,
						s = "Linear",
						d = "Out",
						g = {ImageTransparency = 0.8}
					}):Play()
				end
			end
			for i,v in pairs(Background_1:GetChildren()) do
				if v.Name == "Page" then
					v.Visible = false
					v.Position = UDim2.new(-2, 0,0.569999993, 0)
				end
			end
			Tw({
				v = Icon_2,
				t = 0.3,
				s = "Linear",
				d = "Out",
				g = {ImageTransparency = 0}
			}):Play()
			Tw({
				v = Tab_1,
				t = 0.3,
				s = "Linear",
				d = "Out",
				g = {BackgroundTransparency = 0.8}
			}):Play()
			Tw({
				v = Title_1,
				t = 0.3,
				s = "Linear",
				d = "Out",
				g = {TextTransparency = 0}
			}):Play()
			Page_1.Visible = true
			Tw({
				v = Page_1,
				t = 0.3,
				s = "Linear",
				d = "Out",
				g = {Position = UDim2.new(0.5, 0,0.569999993, 0)}
			}):Play()
		end)
		
		delay(0,function()
			if not Library.Tab.Value then
				Tw({
					v = Icon_2,
					t = 0.3,
					s = "Linear",
					d = "Out",
					g = {ImageTransparency = 0}
				}):Play()
				Tw({
					v = Tab_1,
					t = 0.3,
					s = "Linear",
					d = "Out",
					g = {BackgroundTransparency = 0.8}
				}):Play()
				Tw({
					v = Title_1,
					t = 0.3,
					s = "Linear",
					d = "Out",
					g = {TextTransparency = 0}
				}):Play()
				Page_1.Visible = true
				Tw({
					v = Page_1,
					t = 0.3,
					s = "Linear",
					d = "Out",
					g = {Position = UDim2.new(0.5, 0,0.569999993, 0)}
				}):Play()
				Library.Tab.Value = true
			end
		end)
		
		local function GetSide(side)
			if side == "r" or side == "R" or side == "Right" or side == "right" or side == 2 then
				return PageRight_1
			elseif side == "l" or side == "L" or side == "Left" or side == "left" or side == 1 then
				return PageLeft_1
			else
				return PageLeft_1
			end
		end
		
		Library.Section = {}
		
		function Library.Section:CreateSection(info)
			
			local Title = info.Name or info.name or info.Title or info.title or nil
			local Side = info.Side or info.side
			
			local Section_1 = Instance.new("Frame")
			local UICorner_6 = Instance.new("UICorner")
			--local UIStroke_1 = Instance.new("UIStroke")
			local UIListLayout_7 = Instance.new("UIListLayout")
			local SectionTitle_1 = Instance.new("TextLabel")
			local Line_2 = Instance.new("Frame")
			local Line2_1 = Instance.new("Frame")
			
			Section_1.Name = "Section"
			Section_1.Parent = GetSide(Side)
			Section_1.BackgroundColor3 = Color3.fromRGB(29,29,29)
			Section_1.BorderColor3 = Color3.fromRGB(0,0,0)
			Section_1.BorderSizePixel = 0
			Section_1.Position = UDim2.new(0.0049999305, 0,0.0250000004, 0)
			Section_1.Size = UDim2.new(1, 0,0, 0)
			Section_1.ClipsDescendants = true

			UICorner_6.Parent = Section_1
			UICorner_6.CornerRadius = UDim.new(0,10)

			--UIStroke_1.Parent = Section_1
			--UIStroke_1.Color = Color3.fromRGB(43,43,43)
			--UIStroke_1.Thickness = 1

			UIListLayout_7.Parent = Section_1
			UIListLayout_7.HorizontalAlignment = Enum.HorizontalAlignment.Center
			UIListLayout_7.SortOrder = Enum.SortOrder.LayoutOrder

			SectionTitle_1.Name = "SectionTitle"
			SectionTitle_1.Parent = Section_1
			SectionTitle_1.BackgroundColor3 = Color3.fromRGB(255,255,255)
			SectionTitle_1.BackgroundTransparency = 1
			SectionTitle_1.BorderColor3 = Color3.fromRGB(0,0,0)
			SectionTitle_1.BorderSizePixel = 0
			SectionTitle_1.Size = UDim2.new(1, 0,0, 25)
			SectionTitle_1.Font = Enum.Font.GothamBold
			SectionTitle_1.Text = Title
			SectionTitle_1.TextColor3 = Color3.fromRGB(255,255,255)
			SectionTitle_1.TextSize = 10
			
			Line_2.Name = "Line"
			Line_2.Parent = Section_1
			Line_2.BackgroundColor3 = Color3.fromRGB(255,255,255)
			Line_2.BackgroundTransparency = 0.5
			Line_2.BorderColor3 = Color3.fromRGB(0,0,0)
			Line_2.BorderSizePixel = 0
			Line_2.LayoutOrder = 1
			Line_2.Size = UDim2.new(1, 0,0, 2)
			
			Line2_1.Name = "Line2"
			Line2_1.Parent = Section_1
			Line2_1.BackgroundColor3 = Color3.fromRGB(255,255,255)
			Line2_1.BackgroundTransparency = 1
			Line2_1.BorderColor3 = Color3.fromRGB(0,0,0)
			Line2_1.BorderSizePixel = 0
			Line2_1.LayoutOrder = 1
			Line2_1.Size = UDim2.new(1, 0,0, 5)
			
			Library.Main = {}
			
			function Library.Main:CreateToggle(info)
				
				local Title = info.Name or info.name or info.Title or info.title or nil
				local Value = info.Value or info.Defuse or info.value or info.defuse or info.vu or info.df or false
				local Callback = info.Callback or info.callback or info.cb or function() end
				
				local Toggle_1 = Instance.new("Frame")
				local ListfunctionToggle_1 = Instance.new("Frame")
				local UIListLayout_8 = Instance.new("UIListLayout")
				local Title_5 = Instance.new("TextLabel")
				local ToggleO_1 = Instance.new("Frame")
				local UICorner_7 = Instance.new("UICorner")
				local done_1 = Instance.new("ImageLabel")
				local UICorner_8 = Instance.new("UICorner")
				local UIStroke_2 = Instance.new("UIStroke")
				local Click_1 = Instance.new("TextButton")
				
				Toggle_1.Name = "Toggle"
				Toggle_1.Parent = Section_1
				Toggle_1.BackgroundColor3 = Color3.fromRGB(255,255,255)
				Toggle_1.BackgroundTransparency = 1
				Toggle_1.BorderColor3 = Color3.fromRGB(0,0,0)
				Toggle_1.BorderSizePixel = 0
				Toggle_1.LayoutOrder = 2
				Toggle_1.Size = UDim2.new(1, 0,0, 25)

				ListfunctionToggle_1.Name = "ListfunctionToggle"
				ListfunctionToggle_1.Parent = Toggle_1
				ListfunctionToggle_1.AnchorPoint = Vector2.new(0.5, 0.5)
				ListfunctionToggle_1.BackgroundColor3 = Color3.fromRGB(255,255,255)
				ListfunctionToggle_1.BackgroundTransparency = 1
				ListfunctionToggle_1.BorderColor3 = Color3.fromRGB(0,0,0)
				ListfunctionToggle_1.BorderSizePixel = 0
				ListfunctionToggle_1.Position = UDim2.new(0.5, 0,0.5, 0)
				ListfunctionToggle_1.Size = UDim2.new(0.899999976, 0,0, 25)

				UIListLayout_8.Parent = ListfunctionToggle_1
				UIListLayout_8.Padding = UDim.new(0,8)
				UIListLayout_8.FillDirection = Enum.FillDirection.Horizontal
				UIListLayout_8.SortOrder = Enum.SortOrder.LayoutOrder
				UIListLayout_8.VerticalAlignment = Enum.VerticalAlignment.Center

				Title_5.Name = "Title"
				Title_5.Parent = ListfunctionToggle_1
				Title_5.BackgroundColor3 = Color3.fromRGB(255,255,255)
				Title_5.BackgroundTransparency = 1
				Title_5.BorderColor3 = Color3.fromRGB(0,0,0)
				Title_5.BorderSizePixel = 0
				Title_5.Size = UDim2.new(1, 0,1, 0)
				Title_5.Font = Enum.Font.GothamBold
				Title_5.Text = Title
				Title_5.TextColor3 = Color3.fromRGB(255,255,255)
				Title_5.TextSize = 9
				Title_5.TextXAlignment = Enum.TextXAlignment.Left

				ToggleO_1.Name = "ToggleO"
				ToggleO_1.Parent = ListfunctionToggle_1
				ToggleO_1.BackgroundColor3 = Color3.fromRGB(255,255,255)
				ToggleO_1.BorderColor3 = Color3.fromRGB(0,0,0)
				ToggleO_1.BorderSizePixel = 0
				ToggleO_1.LayoutOrder = -1
				ToggleO_1.Size = UDim2.new(0, 15,0, 15)
				ToggleO_1.BackgroundTransparency = 1

				UICorner_7.Parent = ToggleO_1
				UICorner_7.CornerRadius = UDim.new(0,4)

				done_1.Name = "done"
				done_1.Parent = ToggleO_1
				done_1.AnchorPoint = Vector2.new(0.5, 0.5)
				done_1.BackgroundColor3 = Color3.fromRGB(27,27,27)
				done_1.BackgroundTransparency = 1
				done_1.BorderColor3 = Color3.fromRGB(27,27,27)
				done_1.Position = UDim2.new(0.5, 0,0.5, 0)
				done_1.Size = UDim2.new(0.899999976, 0,0.899999976, 0)
				done_1.ZIndex = 2
				done_1.Image = "rbxassetid://3926305904"
				done_1.ImageColor3 = Color3.fromRGB(27,27,27)
				done_1.ImageRectOffset = Vector2.new(644, 204)
				done_1.ImageRectSize = Vector2.new(36, 36)

				UICorner_8.Parent = done_1
				UICorner_8.CornerRadius = UDim.new(0,4)

				UIStroke_2.Parent = ToggleO_1
				UIStroke_2.Color = Color3.fromRGB(37,37,37)
				UIStroke_2.Thickness = 1

				Click_1.Name = "Click"
				Click_1.Parent = Toggle_1
				Click_1.Active = true
				Click_1.BackgroundColor3 = Color3.fromRGB(255,255,255)
				Click_1.BackgroundTransparency = 1
				Click_1.BorderColor3 = Color3.fromRGB(0,0,0)
				Click_1.BorderSizePixel = 0
				Click_1.Size = UDim2.new(1, 0,1, 0)
				Click_1.Font = Enum.Font.SourceSans
				Click_1.Text = ""
				Click_1.TextSize = 14
				
				local function ToggleC(Value)
					if not Value then 
						Callback(Value)
						Tw({
							v = ToggleO_1,
							t = 0.15,
							s = "Linear",
							d = "Out",
							g = {BackgroundTransparency = 1}
						}):Play()
						Tw({
							v = Title_5,
							t = 0.3,
							s = "Linear",
							d = "Out",
							g = {TextTransparency = 0.5}
						}):Play()
					elseif Value then 
						Callback(Value)
						Tw({
							v = ToggleO_1,
							t = 0.15,
							s = "Linear",
							d = "Out",
							g = {BackgroundTransparency = 0}
						}):Play()
						Tw({
							v = Title_5,
							t = 0.3,
							s = "Linear",
							d = "Out",
							g = {TextTransparency = 0}
						}):Play()
					end
				end

				Click_1.MouseButton1Click:Connect(function()
					Value = not Value
					ToggleC(Value)
				end)

				ToggleC(Value)

				local NewValue = {}

				function NewValue:SetValue(a)
					Value = a
					ToggleC(Value)
				end

				function NewValue:Set(b)
					Title_1.Text = b
				end

				return NewValue
			end
			
			function Library.Main:CreateSlider(info)
				
				local Title = info.Name or info.name or info.Title or info.title or nil
				local Textending = info.TextEnding or info.textending or info.te or info.ending or ""
				local Min = info.Min or info.min or 0
				local Max = info.Max or info.max or 100
				local Value = info.Value or info.Defuse or info.value or info.defuse or info.vu or info.df or Min or 50
				local Callback = info.Callback or info.callback or info.cb or function() end
				
				local Slider_1 = Instance.new("Frame")
				local SliderText_1 = Instance.new("Frame")
				local Title_7 = Instance.new("TextLabel")
				local SliderBar_1 = Instance.new("Frame")
				local SliderBarValue_1 = Instance.new("Frame")
				local UICorner_11 = Instance.new("UICorner")
				local SliderO_1 = Instance.new("Frame")
				local UICorner_12 = Instance.new("UICorner")
				local UICorner_13 = Instance.new("UICorner")
				local Click_3 = Instance.new("TextButton")
				local UIGradient_1 = Instance.new("UIGradient")
				local SliderValueBox_1 = Instance.new("Frame")
				local UICorner_14 = Instance.new("UICorner")
				local UIStroke_4 = Instance.new("UIStroke")
				local TextBox_1 = Instance.new("TextBox")
				
				Slider_1.Name = "Slider"
				Slider_1.Parent = Section_1
				Slider_1.BackgroundColor3 = Color3.fromRGB(255,255,255)
				Slider_1.BackgroundTransparency = 1
				Slider_1.BorderColor3 = Color3.fromRGB(0,0,0)
				Slider_1.BorderSizePixel = 0
				Slider_1.LayoutOrder = 2
				Slider_1.Size = UDim2.new(1, 0,0, 40)

				SliderText_1.Name = "SliderText"
				SliderText_1.Parent = Slider_1
				SliderText_1.AnchorPoint = Vector2.new(0.5, 0.5)
				SliderText_1.BackgroundColor3 = Color3.fromRGB(255,255,255)
				SliderText_1.BackgroundTransparency = 1
				SliderText_1.BorderColor3 = Color3.fromRGB(0,0,0)
				SliderText_1.BorderSizePixel = 0
				SliderText_1.Position = UDim2.new(0.5, 0,0.5, 0)
				SliderText_1.Size = UDim2.new(0.899999976, 0,0, 25)

				Title_7.Name = "Title"
				Title_7.Parent = SliderText_1
				Title_7.BackgroundColor3 = Color3.fromRGB(255,255,255)
				Title_7.BackgroundTransparency = 1
				Title_7.BorderColor3 = Color3.fromRGB(0,0,0)
				Title_7.BorderSizePixel = 0
				Title_7.Size = UDim2.new(1, 0,1, 0)
				Title_7.Font = Enum.Font.GothamBold
				Title_7.Text = Title
				Title_7.TextColor3 = Color3.fromRGB(255,255,255)
				Title_7.TextSize = 9
				Title_7.TextTransparency = 0.5
				Title_7.TextXAlignment = Enum.TextXAlignment.Left
				Title_7.TextYAlignment = Enum.TextYAlignment.Top

				SliderBar_1.Name = "SliderBar"
				SliderBar_1.Parent = Slider_1
				SliderBar_1.AnchorPoint = Vector2.new(0, 0.5)
				SliderBar_1.BackgroundColor3 = Color3.fromRGB(255,255,255)
				SliderBar_1.BackgroundTransparency = 0.6000000238418579
				SliderBar_1.BorderColor3 = Color3.fromRGB(0,0,0)
				SliderBar_1.BorderSizePixel = 0
				SliderBar_1.Position = UDim2.new(0.0500000007, 0,0.699999988, 0)
				SliderBar_1.Size = UDim2.new(0.680000007, 0,0, 3)

				SliderBarValue_1.Name = "SliderBarValue"
				SliderBarValue_1.Parent = SliderBar_1
				SliderBarValue_1.BackgroundColor3 = Color3.fromRGB(217,40,40)
				SliderBarValue_1.BorderColor3 = Color3.fromRGB(0,0,0)
				SliderBarValue_1.BorderSizePixel = 0
				SliderBarValue_1.Size = UDim2.new(0.5, 0,1, 0)

				UICorner_11.Parent = SliderBarValue_1
				UICorner_11.CornerRadius = UDim.new(1,0)

				SliderO_1.Name = "SliderO"
				SliderO_1.Parent = SliderBarValue_1
				SliderO_1.AnchorPoint = Vector2.new(1, 0.5)
				SliderO_1.BackgroundColor3 = Color3.fromRGB(217,40,40)
				SliderO_1.BorderColor3 = Color3.fromRGB(0,0,0)
				SliderO_1.BorderSizePixel = 0
				SliderO_1.Position = UDim2.new(1, 0,0.5, 0)
				SliderO_1.Size = UDim2.new(0, 8,0, 8)

				UICorner_12.Parent = SliderO_1
				UICorner_12.CornerRadius = UDim.new(1,0)

				UICorner_13.Parent = SliderBar_1
				UICorner_13.CornerRadius = UDim.new(1,0)

				Click_3.Name = "Click"
				Click_3.Parent = SliderBar_1
				Click_3.Active = true
				Click_3.AnchorPoint = Vector2.new(0.5, 0.5)
				Click_3.BackgroundColor3 = Color3.fromRGB(255,255,255)
				Click_3.BackgroundTransparency = 1
				Click_3.BorderColor3 = Color3.fromRGB(0,0,0)
				Click_3.BorderSizePixel = 0
				Click_3.Position = UDim2.new(0.5, 0,0.5, 0)
				Click_3.Size = UDim2.new(1, 10,1, 10)
				Click_3.Font = Enum.Font.SourceSans
				Click_3.Text = ""
				Click_3.TextSize = 14

				UIGradient_1.Parent = SliderBar_1
				UIGradient_1.Color = ColorSequence.new{ColorSequenceKeypoint.new(0, Color3.fromRGB(255, 255, 255)), ColorSequenceKeypoint.new(1, Color3.fromRGB(24, 24, 24))}

				SliderValueBox_1.Name = "SliderValueBox"
				SliderValueBox_1.Parent = Slider_1
				SliderValueBox_1.AnchorPoint = Vector2.new(1, 0.5)
				SliderValueBox_1.BackgroundColor3 = Color3.fromRGB(255,255,255)
				SliderValueBox_1.BackgroundTransparency = 1
				SliderValueBox_1.BorderColor3 = Color3.fromRGB(0,0,0)
				SliderValueBox_1.BorderSizePixel = 0
				SliderValueBox_1.LayoutOrder = -1
				SliderValueBox_1.Position = UDim2.new(0.959999979, 0,0.699999988, 0)
				SliderValueBox_1.Size = UDim2.new(0, 30,0, 15)

				UICorner_14.Parent = SliderValueBox_1
				UICorner_14.CornerRadius = UDim.new(0,4)

				UIStroke_4.Parent = SliderValueBox_1
				UIStroke_4.Color = Color3.fromRGB(37,37,37)
				UIStroke_4.Thickness = 1

				TextBox_1.Parent = SliderValueBox_1
				TextBox_1.Active = true
				TextBox_1.AnchorPoint = Vector2.new(0.5,0.5)
				TextBox_1.BackgroundColor3 = Color3.fromRGB(255,255,255)
				TextBox_1.BackgroundTransparency = 1
				TextBox_1.BorderColor3 = Color3.fromRGB(0,0,0)
				TextBox_1.BorderSizePixel = 0
				TextBox_1.Size = UDim2.new(1, 0,1, 0)
				TextBox_1.Font = Enum.Font.Gotham
				TextBox_1.PlaceholderText = ""
				TextBox_1.Text = "50"
				TextBox_1.TextColor3 = Color3.fromRGB(255,255,255)
				TextBox_1.TextSize = 8
				TextBox_1.Position = UDim2.new(0.5, 0,0.5, 0)
				
				local function updateSlider(value)
					value = math.clamp(value, Min, Max)
					Tw({
						v = SliderBarValue_1,
						t = 0.15,
						s = "Exponential",
						d = "Out",
						g = {Size = UDim2.new((value - Min) / (Max - Min), 0, 1, 0)}
					}):Play()
					TextBox_1.Text = tostring(value)..Textending
					TextBox_1.Size = UDim2.new(0, TextBox_1.TextBounds.X + 2, 0.5, 0)
					Callback(value)
				end

				updateSlider(Value or 0)

				TextBox_1.FocusLost:Connect(function()
					local value = tonumber(TextBox_1.Text) or Min
					updateSlider(value)
				end)

				local function move(input)
					local sliderBar = SliderBar_1
					local relativeX = math.clamp((input.Position.X - sliderBar.AbsolutePosition.X) / sliderBar.AbsoluteSize.X, 0, 1)
					local value = math.floor(relativeX * (Max - Min) + Min)
					updateSlider(value)
				end

				local dragging = false

				Click_3.InputBegan:Connect(function(input)
					if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
						dragging = true
						move(input)
					end
				end)

				Click_3.InputEnded:Connect(function(input)
					if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
						dragging = false
					end
				end)

				game:GetService("UserInputService").InputChanged:Connect(function(input)
					if dragging and (input.UserInputType == Enum.UserInputType.MouseMovement or input.UserInputType == Enum.UserInputType.Touch) then
						move(input)
					end
				end)
			end
			
			function Library.Main:CreateDropdown(info)
				
				local Title = info.Name or info.name or info.Title or info.title or info.Text or info.text or nil
				local Callback = info.Callback or info.callback or info.cb or function() end
				local Value = info.Value or info.Defuse or info.value or info.defuse or info.vu or info.df or ""
				local List = info.List or info.list
				local Multi = info.Multi or info.multi or info.MultiDropdown or info.multidropdown or info.Multidropdown or false
				
				local Dropdown_1 = Instance.new("Frame")
				local DropdownText_1 = Instance.new("Frame")
				local Title_8 = Instance.new("TextLabel")
				local DropdownBar_1 = Instance.new("Frame")
				local UICorner_15 = Instance.new("UICorner")
				local UIStroke_5 = Instance.new("UIStroke")
				local DropdownIcon_1 = Instance.new("ImageLabel")
				local TextLabel_1 = Instance.new("TextLabel")
				local Click_4 = Instance.new("TextButton")
				
				local DropdownSelect_1 = Instance.new("Frame")
				local DropdownItem_1 = Instance.new("Frame")
				local ScrollingFrame_2 = Instance.new("ScrollingFrame")
				local UIListLayout_10 = Instance.new("UIListLayout")
				local UICorner_16 = Instance.new("UICorner")
				
				Dropdown_1.Name = "Dropdown"
				Dropdown_1.Parent = Section_1
				Dropdown_1.BackgroundColor3 = Color3.fromRGB(255,255,255)
				Dropdown_1.BackgroundTransparency = 1
				Dropdown_1.BorderColor3 = Color3.fromRGB(0,0,0)
				Dropdown_1.BorderSizePixel = 0
				Dropdown_1.LayoutOrder = 2
				Dropdown_1.Size = UDim2.new(1, 0,0, 40)

				DropdownText_1.Name = "DropdownText"
				DropdownText_1.Parent = Dropdown_1
				DropdownText_1.AnchorPoint = Vector2.new(0.5, 0.5)
				DropdownText_1.BackgroundColor3 = Color3.fromRGB(255,255,255)
				DropdownText_1.BackgroundTransparency = 1
				DropdownText_1.BorderColor3 = Color3.fromRGB(0,0,0)
				DropdownText_1.BorderSizePixel = 0
				DropdownText_1.Position = UDim2.new(0.5, 0,0.5, 0)
				DropdownText_1.Size = UDim2.new(0.899999976, 0,0, 25)

				Title_8.Name = "Title"
				Title_8.Parent = DropdownText_1
				Title_8.BackgroundColor3 = Color3.fromRGB(255,255,255)
				Title_8.BackgroundTransparency = 1
				Title_8.BorderColor3 = Color3.fromRGB(0,0,0)
				Title_8.BorderSizePixel = 0
				Title_8.Size = UDim2.new(1, 0,1, 0)
				Title_8.Font = Enum.Font.GothamBold
				Title_8.Text = Title
				Title_8.TextColor3 = Color3.fromRGB(255,255,255)
				Title_8.TextSize = 9
				Title_8.TextTransparency = 0.5
				Title_8.TextXAlignment = Enum.TextXAlignment.Left
				Title_8.TextYAlignment = Enum.TextYAlignment.Top

				DropdownBar_1.Name = "DropdownBar"
				DropdownBar_1.Parent = Dropdown_1
				DropdownBar_1.AnchorPoint = Vector2.new(0.5, 0.5)
				DropdownBar_1.BackgroundColor3 = Color3.fromRGB(255,255,255)
				DropdownBar_1.BackgroundTransparency = 1
				DropdownBar_1.BorderColor3 = Color3.fromRGB(0,0,0)
				DropdownBar_1.BorderSizePixel = 0
				DropdownBar_1.Position = UDim2.new(0.5, 0,0.699999988, 0)
				DropdownBar_1.Size = UDim2.new(0.899999976, 0,0, 15)

				UICorner_15.Parent = DropdownBar_1
				UICorner_15.CornerRadius = UDim.new(0,4)

				UIStroke_5.Parent = DropdownBar_1
				UIStroke_5.Color = Color3.fromRGB(37,37,37)
				UIStroke_5.Thickness = 1

				DropdownIcon_1.Name = "DropdownIcon"
				DropdownIcon_1.Parent = DropdownBar_1
				DropdownIcon_1.AnchorPoint = Vector2.new(1, 0.5)
				DropdownIcon_1.BackgroundColor3 = Color3.fromRGB(255,255,255)
				DropdownIcon_1.BackgroundTransparency = 1
				DropdownIcon_1.BorderColor3 = Color3.fromRGB(0,0,0)
				DropdownIcon_1.BorderSizePixel = 0
				DropdownIcon_1.Position = UDim2.new(0.980000019, 0,0.5, 0)
				DropdownIcon_1.Size = UDim2.new(0, 10,0, 10)
				DropdownIcon_1.Image = "rbxassetid://12974428978"

				TextLabel_1.Parent = DropdownBar_1
				TextLabel_1.AnchorPoint = Vector2.new(0.5, 0)
				TextLabel_1.BackgroundColor3 = Color3.fromRGB(255,255,255)
				TextLabel_1.BackgroundTransparency = 1
				TextLabel_1.BorderColor3 = Color3.fromRGB(0,0,0)
				TextLabel_1.BorderSizePixel = 0
				TextLabel_1.Position = UDim2.new(0.5, 0,0, 0)
				TextLabel_1.Size = UDim2.new(0.899999976, 0,1, 0)
				TextLabel_1.Font = Enum.Font.Gotham
				if type(Value) == "table" then
					TextLabel_1.Text = table.concat(Value, ", ")
				else
					TextLabel_1.Text = Value
				end
				TextLabel_1.TextColor3 = Color3.fromRGB(255,255,255)
				TextLabel_1.TextSize = 9
				TextLabel_1.TextXAlignment = Enum.TextXAlignment.Left

				Click_4.Name = "Click"
				Click_4.Parent = Dropdown_1
				Click_4.Active = true
				Click_4.AnchorPoint = Vector2.new(0.5, 0.5)
				Click_4.BackgroundColor3 = Color3.fromRGB(255,255,255)
				Click_4.BackgroundTransparency = 1
				Click_4.BorderColor3 = Color3.fromRGB(0,0,0)
				Click_4.BorderSizePixel = 0
				Click_4.Position = UDim2.new(0.5, 0,0.5, 0)
				Click_4.Size = UDim2.new(1, 0,1, 0)
				Click_4.Font = Enum.Font.SourceSans
				Click_4.Text = ""
				Click_4.TextSize = 14

				DropdownSelect_1.Name = "DropdownSelect"
				DropdownSelect_1.Parent = Section_1
				DropdownSelect_1.BackgroundColor3 = Color3.fromRGB(255,255,255)
				DropdownSelect_1.BackgroundTransparency = 1
				DropdownSelect_1.BorderColor3 = Color3.fromRGB(0,0,0)
				DropdownSelect_1.BorderSizePixel = 0
				DropdownSelect_1.LayoutOrder = 2
				DropdownSelect_1.Size = UDim2.new(1, 0,0, 0)

				DropdownItem_1.Name = "DropdownItem"
				DropdownItem_1.Parent = DropdownSelect_1
				DropdownItem_1.AnchorPoint = Vector2.new(0.5, 0.5)
				DropdownItem_1.BackgroundColor3 = Color3.fromRGB(46,46,46)
				DropdownItem_1.BorderColor3 = Color3.fromRGB(0,0,0)
				DropdownItem_1.BorderSizePixel = 0
				DropdownItem_1.Position = UDim2.new(0.5, 0,0.5, 0)
				DropdownItem_1.Size = UDim2.new(0.899999976, 0,1, 0)
				DropdownItem_1.ClipsDescendants = true

				ScrollingFrame_2.Name = "ScrollingFrame"
				ScrollingFrame_2.Parent = DropdownItem_1
				ScrollingFrame_2.Active = true
				ScrollingFrame_2.BackgroundColor3 = Color3.fromRGB(255,255,255)
				ScrollingFrame_2.BackgroundTransparency = 1
				ScrollingFrame_2.BorderColor3 = Color3.fromRGB(0,0,0)
				ScrollingFrame_2.BorderSizePixel = 0
				ScrollingFrame_2.Size = UDim2.new(1, 0,1, 0)
				ScrollingFrame_2.ClipsDescendants = true
				ScrollingFrame_2.AutomaticCanvasSize = Enum.AutomaticSize.None
				ScrollingFrame_2.BottomImage = "rbxasset://textures/ui/Scroll/scroll-bottom.png"
				ScrollingFrame_2.CanvasPosition = Vector2.new(0, 0)
				ScrollingFrame_2.ElasticBehavior = Enum.ElasticBehavior.WhenScrollable
				ScrollingFrame_2.HorizontalScrollBarInset = Enum.ScrollBarInset.None
				ScrollingFrame_2.MidImage = "rbxasset://textures/ui/Scroll/scroll-middle.png"
				ScrollingFrame_2.ScrollBarImageColor3 = Color3.fromRGB(0,0,0)
				ScrollingFrame_2.ScrollBarImageTransparency = 0
				ScrollingFrame_2.ScrollBarThickness = 0
				ScrollingFrame_2.ScrollingDirection = Enum.ScrollingDirection.XY
				ScrollingFrame_2.TopImage = "rbxasset://textures/ui/Scroll/scroll-top.png"
				ScrollingFrame_2.VerticalScrollBarInset = Enum.ScrollBarInset.None
				ScrollingFrame_2.VerticalScrollBarPosition = Enum.VerticalScrollBarPosition.Right

				UIListLayout_10.Parent = ScrollingFrame_2
				UIListLayout_10.SortOrder = Enum.SortOrder.LayoutOrder
				
				UICorner_16.Parent = DropdownItem_1
				UICorner_16.CornerRadius = UDim.new(0,5)
				
				local isOpen = false
				
				Click_4.MouseButton1Click:Connect(function()
					isOpen = not isOpen
					if isOpen then
						if UIListLayout_10.AbsoluteContentSize.Y + 5 < 100 then
							Tw({
								v = DropdownSelect_1,
								t = 0.15,
								s = "Exponential",
								d = "Out",
								g = {Size = UDim2.new(1, 0,0, UIListLayout_10.AbsoluteContentSize.Y + 5)}
							}):Play()
						else
							Tw({
								v = DropdownSelect_1,
								t = 0.15,
								s = "Exponential",
								d = "Out",
								g = {Size = UDim2.new(1, 0,0, 100)}
							}):Play()
						end
					else
						Tw({
							v = DropdownSelect_1,
							t = 0.15,
							s = "Exponential",
							d = "Out",
							g = {Size = UDim2.new(1, 0,0, 0)}
						}):Play()
					end
				end)
				
				local itemslist = {}
				local selectedItem

				function itemslist:Clear()
					for _, child in ipairs(ScrollingFrame_2:GetChildren()) do
						if child:IsA("Frame") then
							child:Destroy()
						end
					end

					selectedItem = nil
					TextLabel_1.Text = ""
				end

				local selectedValues = {}
				
				function itemslist:AddList(text)
					
					local Item_1 = Instance.new("TextButton")
					
					Item_1.Name = "Item"
					Item_1.Parent = ScrollingFrame_2
					Item_1.Active = true
					Item_1.BackgroundColor3 = Color3.fromRGB(255,255,255)
					Item_1.BackgroundTransparency = 1
					Item_1.BorderColor3 = Color3.fromRGB(0,0,0)
					Item_1.BorderSizePixel = 0
					Item_1.Size = UDim2.new(1, 0,0, 20)
					Item_1.Font = Enum.Font.Gotham
					Item_1.Text = text
					Item_1.TextColor3 = Color3.fromRGB(255,255,255)
					Item_1.TextSize = 9
					Item_1.TextTransparency = 0.5
					
					Item_1.MouseButton1Click:Connect(function()
						if Multi then
							if selectedValues[text] then
								selectedValues[text] = nil
								Tw({
									v = Item_1,
									t = 0.15,
									s = "Back",
									d = "Out",
									g = {TextTransparency = 0.5}
								}):Play()
							else
								selectedValues[text] = true
								Tw({
									v = Item_1,
									t = 0.15,
									s = "Back",
									d = "Out",
									g = {TextTransparency = 0}
								}):Play()
							end
							local selectedList = {}
							for i, v in pairs(selectedValues) do
								table.insert(selectedList, i)
							end
							TextLabel_1.Text = table.concat(selectedList, ", ")
							Callback(TextLabel_1.Text)
						else
							for i,v in pairs(ScrollingFrame_2:GetChildren()) do
								if v:IsA("TextButton") then
									Tw({
										v = v,
										t = 0.15,
										s = "Back",
										d = "Out",
										g = {TextTransparency = 0.5}
									}):Play()
								end
							end
							Tw({
								v = Item_1,
								t = 0.15,
								s = "Back",
								d = "Out",
								g = {TextTransparency = 0}
							}):Play()
							Tw({
								v = DropdownSelect_1,
								t = 0.15,
								s = "Exponential",
								d = "Out",
								g = {Size = UDim2.new(1, 0,0, 0)}
							}):Play()
							isOpen = false
							Value = text
							TextLabel_1.Text = text
							Callback(TextLabel_1.Text)
						end
					end)

					local function isValueInTable(val, tbl)
						if type(tbl) ~= "table" then
							return false
						end

						for _, v in pairs(tbl) do
							if v == val then
								return true
							end
						end
						return false
					end

					delay(0,function()
						if Multi then
							if isValueInTable(text, Value) then
								Tw({
									v = Item_1,
									t = 0.15,
									s = "Back",
									d = "Out",
									g = {TextTransparency = 0}
								}):Play()

								selectedValues[text] = true
								local selectedList = {}
								for i, v in pairs(selectedValues) do
									table.insert(selectedList, i)
								end
								TextLabel_1.Text = table.concat(selectedList, ", ")
								Callback(TextLabel_1.Text)
							end
						else
							if text == Value then
								Tw({
									v = Item_1,
									t = 0.15,
									s = "Back",
									d = "Out",
									g = {TextTransparency = 0}
								}):Play()

								Value = text
								TextLabel_1.Text = text
								Callback(TextLabel_1.Text)
							end
						end
					end)
					
				end
				
				for i,v in ipairs(List) do
					itemslist:AddList(v, i)
				end

				UIListLayout_10:GetPropertyChangedSignal("AbsoluteContentSize"):Connect(function()
					ScrollingFrame_2.CanvasSize = UDim2.new(0, 0, 0, UIListLayout_10.AbsoluteContentSize.Y + 5)
				end)

				return itemslist
			end
			
			function Library.Main:CreateButton(info)
				
				local Title = info.Name or info.name or info.Title or info.title or info.Text or info.text or nil
				local Callback = info.Callback or info.callback or info.cb or function() end
				
				local Button = Instance.new("Frame")
				local Click_1 = Instance.new("TextButton")
				local UICorner_1 = Instance.new("UICorner")
				local UIStroke_1 = Instance.new("UIStroke")

				Button.Name = "Button"
				Button.Parent = Section_1
				Button.BackgroundColor3 = Color3.fromRGB(255,255,255)
				Button.BackgroundTransparency = 1
				Button.BorderColor3 = Color3.fromRGB(0,0,0)
				Button.BorderSizePixel = 0
				Button.LayoutOrder = 2
				Button.Size = UDim2.new(1, 0,0, 40)

				Click_1.Name = "Click"
				Click_1.Parent = Button
				Click_1.Active = true
				Click_1.AnchorPoint = Vector2.new(0.5, 0.5)
				Click_1.BackgroundColor3 = Color3.fromRGB(24,24,24)
				Click_1.BorderColor3 = Color3.fromRGB(0,0,0)
				Click_1.BorderSizePixel = 0
				Click_1.Position = UDim2.new(0.5, 0,0.5, 0)
				Click_1.Size = UDim2.new(0.9, 0,0, 25)
				Click_1.Font = Enum.Font.Gotham
				Click_1.Text = Title
				Click_1.TextColor3 = Color3.fromRGB(255,255,255)
				Click_1.TextSize = 10

				UICorner_1.Parent = Click_1

				UIStroke_1.Parent = Click_1
				UIStroke_1.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
				UIStroke_1.Color = Color3.fromRGB(43,43,43)
				UIStroke_1.Thickness = 1
				
				Click_1.MouseButton1Click:Connect(function()
					task.spawn(function()
						local twsizebutton = Tw({
							v = Click_1,
							t = 0.1,
							s = "Back",
							d = "Out",
							g = {Size = UDim2.new(.85, 0,0, 20)}
						})
						Tw({
							v = Click_1,
							t = 0.1,
							s = "Back",
							d = "Out",
							g = {TextSize = 8}
						}):Play()
						twsizebutton:Play()
						twsizebutton.Completed:Connect(function()
							Tw({
								v = Click_1,
								t = 0.1,
								s = "Back",
								d = "Out",
								g = {Size = UDim2.new(.9, 0,0, 25)}
							}):Play()
							Tw({
								v = Click_1,
								t = 0.1,
								s = "Back",
								d = "Out",
								g = {TextSize = 10}
							}):Play()
						end)
					end)
					Callback()
				end)
			end
			
			function Library.Main:CreateKeyBind(info)
				
				local Title = info.Name or info.name or info.Title or info.title or info.Text or info.text or nil
				local DefaultKey = info.Value or info.DefaultKey or info.defaultKey or Enum.KeyCode.Q
				local Callback = info.Callback or info.callback or info.cb or function() end
				
				local Keybind_1 = Instance.new("Frame")
				local KeybindText_1 = Instance.new("Frame")
				local Title_9 = Instance.new("TextLabel")
				local KeybindValue_1 = Instance.new("Frame")
				local UICorner_18 = Instance.new("UICorner")
				local UIStroke_7 = Instance.new("UIStroke")
				local ValueBind_1 = Instance.new("TextLabel")
				local Click_1 = Instance.new("TextButton")
				
				local Key = DefaultKey
				
				Keybind_1.Name = "Keybind"
				Keybind_1.Parent = Section_1
				Keybind_1.BackgroundColor3 = Color3.fromRGB(255,255,255)
				Keybind_1.BackgroundTransparency = 1
				Keybind_1.BorderColor3 = Color3.fromRGB(0,0,0)
				Keybind_1.BorderSizePixel = 0
				Keybind_1.LayoutOrder = 2
				Keybind_1.Size = UDim2.new(1, 0,0, 25)

				KeybindText_1.Name = "KeybindText"
				KeybindText_1.Parent = Keybind_1
				KeybindText_1.AnchorPoint = Vector2.new(0.5, 0.5)
				KeybindText_1.BackgroundColor3 = Color3.fromRGB(255,255,255)
				KeybindText_1.BackgroundTransparency = 1
				KeybindText_1.BorderColor3 = Color3.fromRGB(0,0,0)
				KeybindText_1.BorderSizePixel = 0
				KeybindText_1.Position = UDim2.new(0.5, 0,0.5, 0)
				KeybindText_1.Size = UDim2.new(0.899999976, 0,0, 25)

				Title_9.Name = "Title"
				Title_9.Parent = KeybindText_1
				Title_9.BackgroundColor3 = Color3.fromRGB(255,255,255)
				Title_9.BackgroundTransparency = 1
				Title_9.BorderColor3 = Color3.fromRGB(0,0,0)
				Title_9.BorderSizePixel = 0
				Title_9.Size = UDim2.new(1, 0,1, 0)
				Title_9.Font = Enum.Font.GothamBold
				Title_9.Text = Title
				Title_9.TextColor3 = Color3.fromRGB(255,255,255)
				Title_9.TextSize = 9
				Title_9.TextTransparency = 0.5
				Title_9.TextXAlignment = Enum.TextXAlignment.Left

				KeybindValue_1.Name = "KeybindValue"
				KeybindValue_1.Parent = Keybind_1
				KeybindValue_1.AnchorPoint = Vector2.new(1, 0.5)
				KeybindValue_1.BackgroundColor3 = Color3.fromRGB(255,255,255)
				KeybindValue_1.BackgroundTransparency = 1
				KeybindValue_1.BorderColor3 = Color3.fromRGB(0,0,0)
				KeybindValue_1.BorderSizePixel = 0
				KeybindValue_1.LayoutOrder = -1
				KeybindValue_1.Position = UDim2.new(0.959999979, 0,0.5, 0)
				KeybindValue_1.Size = UDim2.new(0, 20,0, 15)

				UICorner_18.Parent = KeybindValue_1
				UICorner_18.CornerRadius = UDim.new(0,4)

				UIStroke_7.Parent = KeybindValue_1
				UIStroke_7.Color = Color3.fromRGB(37,37,37)
				UIStroke_7.Thickness = 1

				ValueBind_1.Name = "ValueBind"
				ValueBind_1.Parent = KeybindValue_1
				ValueBind_1.BackgroundColor3 = Color3.fromRGB(255,255,255)
				ValueBind_1.BackgroundTransparency = 1
				ValueBind_1.BorderColor3 = Color3.fromRGB(0,0,0)
				ValueBind_1.BorderSizePixel = 0
				ValueBind_1.Size = UDim2.new(1, 0,1, 0)
				ValueBind_1.Font = Enum.Font.Gotham
				ValueBind_1.Text = tostring(Key):gsub("Enum.KeyCode.", "")
				ValueBind_1.TextColor3 = Color3.fromRGB(255,255,255)
				ValueBind_1.TextSize = 9
				
				Click_1.Name = "Click"
				Click_1.Parent = KeybindValue_1
				Click_1.Active = true
				Click_1.BackgroundColor3 = Color3.fromRGB(255,255,255)
				Click_1.BackgroundTransparency = 1
				Click_1.BorderColor3 = Color3.fromRGB(0,0,0)
				Click_1.BorderSizePixel = 0
				Click_1.Size = UDim2.new(1, 0,1, 0)
				Click_1.Font = Enum.Font.SourceSans
				Click_1.Text = ""
				Click_1.TextSize = 14
				
				local function adjustBoxBindSize()
					local textSize = game:GetService("TextService"):GetTextSize(ValueBind_1.Text, ValueBind_1.TextSize, ValueBind_1.Font, Vector2.new(1000, 1000))
					KeybindValue_1.Size = UDim2.new(0, textSize.X + 15, 0, 15)
				end

				adjustBoxBindSize()

				local function changeKey()
					ValueBind_1.Text = "..."
					Tw({
						v = Title_9,
						t = 0.1,
						s = "Linear",
						d = "Out",
						g = {TextTransparency = 0.5}
					}):Play()
					local inputConnection

					inputConnection = game:GetService("UserInputService").InputBegan:Connect(function(input)
						if input.UserInputType == Enum.UserInputType.Keyboard then
							Key = input.KeyCode
							ValueBind_1.Text = tostring(Key):gsub("Enum.KeyCode.", "")
							adjustBoxBindSize()
							inputConnection:Disconnect()
						end
					end)
				end

				Click_1.MouseButton1Click:Connect(function()
					changeKey()
				end)

				game:GetService("UserInputService").InputBegan:Connect(function(input)
					if input.KeyCode == Key then
						Callback(Key)
						Tw({
							v = Title_9,
							t = 0.1,
							s = "Linear",
							d = "Out",
							g = {TextTransparency = 0}
						}):Play()
					end
				end)

				delay(0,function()
					if ValueBind_1 ~= "..." then
						Callback(Key)
						Tw({
						v = Title_9,
							t = 0.1,
							s = "Linear",
							d = "Out",
							g = {TextTransparency = 0}
						}):Play()
					end
				end)

				local NewText = {}

				function NewText:Set(b)
					Title_9.Text = b
				end
				return NewText
			end
			
			function Library.Main:CreateLabel(info)
				
				local Title = info.Name or info.name or info.Title or info.title or info.Text or info.text or nil
				
				local Title_10 = Instance.new("TextLabel")
				local TextLabel_2 = Instance.new("Frame")

				TextLabel_2.Name = "TextLabel"
				TextLabel_2.Parent = Section_1
				TextLabel_2.BackgroundColor3 = Color3.fromRGB(255,255,255)
				TextLabel_2.BackgroundTransparency = 1
				TextLabel_2.BorderColor3 = Color3.fromRGB(0,0,0)
				TextLabel_2.BorderSizePixel = 0
				TextLabel_2.LayoutOrder = 2
				TextLabel_2.Size = UDim2.new(0.899999976, 0,0, 25)
				
				Title_10.Name = "Title"
				Title_10.Parent = TextLabel_2
				Title_10.BackgroundColor3 = Color3.fromRGB(255,255,255)
				Title_10.BackgroundTransparency = 1
				Title_10.BorderColor3 = Color3.fromRGB(0,0,0)
				Title_10.BorderSizePixel = 0
				Title_10.LayoutOrder = 2
				Title_10.Size = UDim2.new(1, 0,1, 0)
				Title_10.Font = Enum.Font.GothamBold
				Title_10.Text = Title
				Title_10.TextColor3 = Color3.fromRGB(255,255,255)
				Title_10.TextSize = 9
				Title_10.TextWrapped = true
				Title_10.TextXAlignment = Enum.TextXAlignment.Left
				Title_10.RichText = true
				
				local NewText = {}

				function NewText:Set(b)
					Title_10.Text = b
				end
				return NewText
			end
			
			function Library.Main:CreateTextBox(info)
				
				local Title = info.Name or info.name or info.Title or info.title or info.Text or info.text or nil
				local Placeholder = info.Placeholder or info.placeholder or "Place Your Text"
				local Value = info.Value or info.Defuse or info.value or info.defuse or info.vu or info.df or nil
				local Callback = info.Callback or info.callback or info.cb or function() end
				
				local TextBox = Instance.new("Frame")
				local TextBoxBar_1 = Instance.new("Frame")
				local UICorner_1 = Instance.new("UICorner")
				local UIStroke_1 = Instance.new("UIStroke")
				local TextBoxValue_1 = Instance.new("TextBox")
				local Title_1 = Instance.new("TextLabel")
				
				TextBox.Name = "TextBox"
				TextBox.Parent = Section_1
				TextBox.BackgroundColor3 = Color3.fromRGB(255,255,255)
				TextBox.BackgroundTransparency = 1
				TextBox.BorderColor3 = Color3.fromRGB(0,0,0)
				TextBox.BorderSizePixel = 0
				TextBox.LayoutOrder = 2
				TextBox.Size = UDim2.new(1, 0,0, 45)

				TextBoxBar_1.Name = "TextBoxBar"
				TextBoxBar_1.Parent = TextBox
				TextBoxBar_1.AnchorPoint = Vector2.new(0.5, 0.5)
				TextBoxBar_1.BackgroundColor3 = Color3.fromRGB(255,255,255)
				TextBoxBar_1.BackgroundTransparency = 1
				TextBoxBar_1.BorderColor3 = Color3.fromRGB(0,0,0)
				TextBoxBar_1.BorderSizePixel = 0
				TextBoxBar_1.Position = UDim2.new(0.5, 0,0.699999988, 0)
				TextBoxBar_1.Size = UDim2.new(0.899999976, 0,0, 20)

				UICorner_1.Parent = TextBoxBar_1
				UICorner_1.CornerRadius = UDim.new(0,4)

				UIStroke_1.Parent = TextBoxBar_1
				UIStroke_1.Color = Color3.fromRGB(37,37,37)
				UIStroke_1.Thickness = 1

				TextBoxValue_1.Name = "TextBoxValue"
				TextBoxValue_1.Parent = TextBoxBar_1
				TextBoxValue_1.Active = true
				TextBoxValue_1.AnchorPoint = Vector2.new(0.5, 0.5)
				TextBoxValue_1.BackgroundColor3 = Color3.fromRGB(255,255,255)
				TextBoxValue_1.BackgroundTransparency = 1
				TextBoxValue_1.BorderColor3 = Color3.fromRGB(0,0,0)
				TextBoxValue_1.BorderSizePixel = 0
				TextBoxValue_1.Position = UDim2.new(0.5, 0,0.5, 0)
				TextBoxValue_1.Size = UDim2.new(0.899999976, 0,1, 0)
				TextBoxValue_1.Font = Enum.Font.Gotham
				TextBoxValue_1.PlaceholderColor3 = Color3.fromRGB(145, 145, 145)
				TextBoxValue_1.PlaceholderText = Placeholder
				TextBoxValue_1.Text = Value
				TextBoxValue_1.TextColor3 = Color3.fromRGB(255,255,255)
				TextBoxValue_1.TextSize = 9

				Title_1.Name = "Title"
				Title_1.Parent = TextBox
				Title_1.AnchorPoint = Vector2.new(0.5, 0.5)
				Title_1.BackgroundColor3 = Color3.fromRGB(255,255,255)
				Title_1.BackgroundTransparency = 1
				Title_1.BorderColor3 = Color3.fromRGB(0,0,0)
				Title_1.BorderSizePixel = 0
				Title_1.Position = UDim2.new(0.5, 0,0.25, 0)
				Title_1.Size = UDim2.new(0.899999976, 0,0, 20)
				Title_1.Font = Enum.Font.GothamBold
				Title_1.Text = Title
				Title_1.TextColor3 = Color3.fromRGB(255,255,255)
				Title_1.TextSize = 9
				Title_1.TextXAlignment = Enum.TextXAlignment.Left
				
				TextBoxValue_1.FocusLost:Connect(function()
					if Value then
						if #TextBoxValue_1.Text > 0 then
							pcall(Callback,TextBoxValue_1.Text)
						end
					end
				end)

				delay(0,function()
					if Value then
						if #TextBoxValue_1.Text > 0 then
							pcall(Callback,TextBoxValue_1.Text)
						end
					end
				end)
			end
			
			function Library.Main:CreateColorPicker(info)
				
				local Title = info.Name or info.name or info.Title or info.title or info.Text or info.text or nil
				local preset = info.Color or info.color or Color3.fromRGB(255, 255, 255)
				local Callback = info.Callback or info.callback or info.cb or function() end
				
				local Colorpicker_1 = Instance.new("Frame")
				local ColorPickText_1 = Instance.new("Frame")
				local Title_11 = Instance.new("TextLabel")
				local ColorValue_1 = Instance.new("Frame")
				local UICorner_19 = Instance.new("UICorner")
				local UIStroke_8 = Instance.new("UIStroke")
				local Click_1 = Instance.new("TextButton")
				
				local ColorPickerBar_1 = Instance.new("Frame")
				local ColorPickerIn_1 = Instance.new("Frame")
				local UICorner_20 = Instance.new("UICorner")
				local Color_1 = Instance.new("ImageButton")
				local ColorCorner_1 = Instance.new("UICorner")
				local ColorSelection_1 = Instance.new("ImageLabel")
				local Hue_1 = Instance.new("ImageButton")
				local HueCorner_1 = Instance.new("UICorner")
				local HueGradient_1 = Instance.new("UIGradient")
				local HueSelection_1 = Instance.new("ImageLabel")
				local ValueBox_1 = Instance.new("Frame")
				local UICorner_21 = Instance.new("UICorner")
				local UIStroke_9 = Instance.new("UIStroke")
				local RGBValue_1 = Instance.new("TextBox")
				
				Colorpicker_1.Name = "Colorpicker"
				Colorpicker_1.Parent = Section_1
				Colorpicker_1.BackgroundColor3 = Color3.fromRGB(255,255,255)
				Colorpicker_1.BackgroundTransparency = 1
				Colorpicker_1.BorderColor3 = Color3.fromRGB(0,0,0)
				Colorpicker_1.BorderSizePixel = 0
				Colorpicker_1.LayoutOrder = 2
				Colorpicker_1.Size = UDim2.new(1, 0,0, 25)

				ColorPickText_1.Name = "ColorPickText"
				ColorPickText_1.Parent = Colorpicker_1
				ColorPickText_1.AnchorPoint = Vector2.new(0.5, 0.5)
				ColorPickText_1.BackgroundColor3 = Color3.fromRGB(255,255,255)
				ColorPickText_1.BackgroundTransparency = 1
				ColorPickText_1.BorderColor3 = Color3.fromRGB(0,0,0)
				ColorPickText_1.BorderSizePixel = 0
				ColorPickText_1.Position = UDim2.new(0.5, 0,0.5, 0)
				ColorPickText_1.Size = UDim2.new(0.899999976, 0,0, 25)

				Title_11.Name = "Title"
				Title_11.Parent = ColorPickText_1
				Title_11.BackgroundColor3 = Color3.fromRGB(255,255,255)
				Title_11.BackgroundTransparency = 1
				Title_11.BorderColor3 = Color3.fromRGB(0,0,0)
				Title_11.BorderSizePixel = 0
				Title_11.Size = UDim2.new(1, 0,1, 0)
				Title_11.Font = Enum.Font.GothamBold
				Title_11.Text = Title
				Title_11.TextColor3 = Color3.fromRGB(255,255,255)
				Title_11.TextSize = 9
				Title_11.TextTransparency = 0.5
				Title_11.TextXAlignment = Enum.TextXAlignment.Left

				ColorValue_1.Name = "ColorValue"
				ColorValue_1.Parent = Colorpicker_1
				ColorValue_1.AnchorPoint = Vector2.new(1, 0.5)
				ColorValue_1.BackgroundColor3 = Color3.fromRGB(255,255,255)
				ColorValue_1.BorderColor3 = Color3.fromRGB(0,0,0)
				ColorValue_1.BorderSizePixel = 0
				ColorValue_1.LayoutOrder = -1
				ColorValue_1.Position = UDim2.new(0.959999979, 0,0.5, 0)
				ColorValue_1.Size = UDim2.new(0, 20,0, 15)

				UICorner_19.Parent = ColorValue_1
				UICorner_19.CornerRadius = UDim.new(0,4)

				UIStroke_8.Parent = ColorValue_1
				UIStroke_8.Color = Color3.fromRGB(37,37,37)
				UIStroke_8.Thickness = 1
				
				ColorPickerBar_1.Name = "ColorPickerBar"
				ColorPickerBar_1.Parent = Section_1
				ColorPickerBar_1.BackgroundColor3 = Color3.fromRGB(255,255,255)
				ColorPickerBar_1.BackgroundTransparency = 1
				ColorPickerBar_1.BorderColor3 = Color3.fromRGB(0,0,0)
				ColorPickerBar_1.BorderSizePixel = 0
				ColorPickerBar_1.LayoutOrder = 2
				ColorPickerBar_1.Size = UDim2.new(1, 0,0, 0)

				ColorPickerIn_1.Name = "ColorPickerIn"
				ColorPickerIn_1.Parent = ColorPickerBar_1
				ColorPickerIn_1.AnchorPoint = Vector2.new(0.5, 0.5)
				ColorPickerIn_1.BackgroundColor3 = Color3.fromRGB(46,46,46)
				ColorPickerIn_1.BorderColor3 = Color3.fromRGB(0,0,0)
				ColorPickerIn_1.BorderSizePixel = 0
				ColorPickerIn_1.Position = UDim2.new(0.5, 0,0.5, 0)
				ColorPickerIn_1.Size = UDim2.new(0.899999976, 0,0.949999988, 0)
				ColorPickerIn_1.ClipsDescendants = true

				UICorner_20.Parent = ColorPickerIn_1
				UICorner_20.CornerRadius = UDim.new(0,5)

				Color_1.Name = "Color"
				Color_1.Parent = ColorPickerIn_1
				Color_1.BackgroundColor3 = Color3.fromRGB(39,39,39)
				Color_1.Position = UDim2.new(0.100000001, 0,0, 13)
				Color_1.Size = UDim2.new(0, 80,0, 80)
				Color_1.Image = "rbxassetid://4155801252"

				ColorCorner_1.Name = "ColorCorner"
				ColorCorner_1.Parent = Color_1
				ColorCorner_1.CornerRadius = UDim.new(0,3)

				ColorSelection_1.Name = "ColorSelection"
				ColorSelection_1.Parent = Color_1
				ColorSelection_1.AnchorPoint = Vector2.new(0.5, 0.5)
				ColorSelection_1.BackgroundColor3 = Color3.fromRGB(255,255,255)
				ColorSelection_1.BackgroundTransparency = 1
				ColorSelection_1.Size = UDim2.new(0, 18,0, 18)
				ColorSelection_1.Image = "http://www.roblox.com/asset/?id=4805639000"
				ColorSelection_1.ScaleType = Enum.ScaleType.Fit

				Hue_1.Name = "Hue"
				Hue_1.Parent = ColorPickerIn_1
				Hue_1.AnchorPoint = Vector2.new(1, 0)
				Hue_1.BackgroundColor3 = Color3.fromRGB(255,255,255)
				Hue_1.Position = UDim2.new(0.899999976, 0,0, 13)
				Hue_1.Size = UDim2.new(0, 25,0, 80)

				HueCorner_1.Name = "HueCorner"
				HueCorner_1.Parent = Hue_1
				HueCorner_1.CornerRadius = UDim.new(0,3)

				HueGradient_1.Name = "HueGradient"
				HueGradient_1.Parent = Hue_1
				HueGradient_1.Color = ColorSequence.new{ColorSequenceKeypoint.new(0, Color3.fromRGB(255, 0, 4)), ColorSequenceKeypoint.new(0.2, Color3.fromRGB(234, 255, 0)), ColorSequenceKeypoint.new(0.4, Color3.fromRGB(21, 255, 0)), ColorSequenceKeypoint.new(0.6, Color3.fromRGB(0, 255, 255)), ColorSequenceKeypoint.new(0.8, Color3.fromRGB(0, 17, 255)), ColorSequenceKeypoint.new(0.9, Color3.fromRGB(255, 0, 251)), ColorSequenceKeypoint.new(1, Color3.fromRGB(255, 0, 4))}
				HueGradient_1.Rotation = 270

				HueSelection_1.Name = "HueSelection"
				HueSelection_1.Parent = Hue_1
				HueSelection_1.AnchorPoint = Vector2.new(0.5, 0.5)
				HueSelection_1.BackgroundColor3 = Color3.fromRGB(255,255,255)
				HueSelection_1.BackgroundTransparency = 1
				HueSelection_1.Position = UDim2.new(0.479999989, 0,1, 0)
				HueSelection_1.Size = UDim2.new(0, 18,0, 18)
				HueSelection_1.Image = "http://www.roblox.com/asset/?id=4805639000"

				ValueBox_1.Name = "ValueBox"
				ValueBox_1.Parent = ColorPickerIn_1
				ValueBox_1.AnchorPoint = Vector2.new(0.5, 0.5)
				ValueBox_1.BackgroundColor3 = Color3.fromRGB(255,255,255)
				ValueBox_1.BackgroundTransparency = 1
				ValueBox_1.BorderColor3 = Color3.fromRGB(0,0,0)
				ValueBox_1.BorderSizePixel = 0
				ValueBox_1.Position = UDim2.new(0.5, 0,0.800000012, 0)
				ValueBox_1.Size = UDim2.new(0.899999976, 0,0, 20)

				UICorner_21.Parent = ValueBox_1
				UICorner_21.CornerRadius = UDim.new(0,4)

				UIStroke_9.Parent = ValueBox_1
				UIStroke_9.Color = Color3.fromRGB(37,37,37)
				UIStroke_9.Thickness = 1

				RGBValue_1.Name = "RGBValue"
				RGBValue_1.Parent = ValueBox_1
				RGBValue_1.Active = true
				RGBValue_1.AnchorPoint = Vector2.new(0.5, 0.5)
				RGBValue_1.BackgroundColor3 = Color3.fromRGB(255,255,255)
				RGBValue_1.BackgroundTransparency = 1
				RGBValue_1.BorderColor3 = Color3.fromRGB(0,0,0)
				RGBValue_1.BorderSizePixel = 0
				RGBValue_1.Position = UDim2.new(0.5, 0,0.5, 0)
				RGBValue_1.Size = UDim2.new(0.899999976, 0,1, 0)
				RGBValue_1.Font = Enum.Font.Gotham
				RGBValue_1.PlaceholderColor3 = Color3.fromRGB(178,178,178)
				RGBValue_1.PlaceholderText = "R,G,B"
				RGBValue_1.Text = string.format("%d, %d, %d", math.floor(ColorValue_1.BackgroundColor3.R * 255), math.floor(ColorValue_1.BackgroundColor3.G * 255), math.floor(ColorValue_1.BackgroundColor3.B * 255))
				RGBValue_1.TextColor3 = Color3.fromRGB(255,255,255)
				RGBValue_1.TextSize = 9
				
				Click_1.Name = "Click"
				Click_1.Parent = Colorpicker_1
				Click_1.Active = true
				Click_1.BackgroundColor3 = Color3.fromRGB(255,255,255)
				Click_1.BackgroundTransparency = 1
				Click_1.BorderColor3 = Color3.fromRGB(0,0,0)
				Click_1.BorderSizePixel = 0
				Click_1.Size = UDim2.new(1, 0,1, 0)
				Click_1.Font = Enum.Font.SourceSans
				Click_1.Text = ""
				Click_1.TextSize = 14
				
				local IsOpen = false

				local ColorH, ColorS, ColorV = 1, 1, 1
				local ColorInput = nil
				local HueInput = nil
				local Mouse = game:GetService("Players").LocalPlayer:GetMouse()
				local lastColor = nil
				local ColorInput = nil
				local HueInput = nil
				local isTouchDevice = game:GetService("UserInputService").TouchEnabled

				Click_1.MouseButton1Click:Connect(function()
					IsOpen = not IsOpen
					if IsOpen then
						Tw({
							v = ColorPickerBar_1,
							t = 0.3,
							s = "Exponential",
							d = "Out",
							g = {Size = UDim2.new(1, 0,0, 150)}
						}):Play()
					else
						Tw({
							v = ColorPickerBar_1,
							t = 0.3,
							s = "Exponential",
							d = "Out",
							g = {Size = UDim2.new(1, 0,0, 0)}
						}):Play()
					end
				end)

				local function UpdateColorPicker(nope)
					ColorValue_1.BackgroundColor3 = Color3.fromHSV(ColorH, ColorS, ColorV)
					Color_1.BackgroundColor3 = Color3.fromHSV(ColorH, 1, 1)

					local r, g, b = ColorValue_1.BackgroundColor3.R * 255, ColorValue_1.BackgroundColor3.G * 255, ColorValue_1.BackgroundColor3.B * 255

					RGBValue_1.Text = string.format("%d, %d, %d", math.floor(r), math.floor(g), math.floor(b))

					if lastColor ~= ColorValue_1.BackgroundColor3 then
						lastColor = ColorValue_1.BackgroundColor3
						pcall(Callback, math.floor(r), math.floor(g), math.floor(b))
					end
				end

				ColorH = 1 - (math.clamp(HueSelection_1.AbsolutePosition.Y - Hue_1.AbsolutePosition.Y, 0, Hue_1.AbsoluteSize.Y) / Hue_1.AbsoluteSize.Y)
				ColorS = (math.clamp(ColorSelection_1.AbsolutePosition.X - Color_1.AbsolutePosition.X, 0, Color_1.AbsoluteSize.X) / Color_1.AbsoluteSize.X)
				ColorV = 1 - (math.clamp(ColorSelection_1.AbsolutePosition.Y - Color_1.AbsolutePosition.Y, 0, Color_1.AbsoluteSize.Y) / Color_1.AbsoluteSize.Y)

				ColorValue_1.BackgroundColor3 = preset
				Color_1.BackgroundColor3 = preset

				Color_1.InputBegan:Connect(function(input)
					if input.UserInputType == Enum.UserInputType.MouseButton1 then
						if ColorInput then
							ColorInput:Disconnect()
						end

						ColorInput = game:GetService("RunService").RenderStepped:Connect(function()
							local ColorX = (math.clamp(Mouse.X - Color_1.AbsolutePosition.X, 0, Color_1.AbsoluteSize.X) /Color_1.AbsoluteSize.X)
							local ColorY = (math.clamp(Mouse.Y - Color_1.AbsolutePosition.Y, 0, Color_1.AbsoluteSize.Y) /Color_1.AbsoluteSize.Y)

							Tw({
								v = ColorSelection_1,
								t = 0.3,
								s = "Exponential",
								d = "Out",
								g = {Position = UDim2.new(ColorX, 0, ColorY, 0)}
							}):Play()
							ColorS = ColorX
							ColorV = 1 - ColorY

							UpdateColorPicker(true)
						end)
					end
				end)

				Color_1.InputEnded:Connect(function(input)
					if input.UserInputType == Enum.UserInputType.MouseButton1 then
						if ColorInput then
							ColorInput:Disconnect()
						end
					end
				end)

				Hue_1.InputBegan:Connect(function(input)
					if input.UserInputType == Enum.UserInputType.MouseButton1 then
						if HueInput then
							HueInput:Disconnect()
						end

						HueInput = game:GetService("RunService").RenderStepped:Connect(function()
							local HueY = (math.clamp(Mouse.Y - Hue_1.AbsolutePosition.Y, 0, Hue_1.AbsoluteSize.Y) /Hue_1.AbsoluteSize.Y)

							Tw({
								v = HueSelection_1,
								t = 0.3,
								s = "Exponential",
								d = "Out",
								g = {Position = UDim2.new(0.48, 0, HueY, 0)}
							}):Play()
							ColorH = 1 - HueY

							UpdateColorPicker(true)
						end)
					end
				end)

				Hue_1.InputEnded:Connect(function(input)
					if input.UserInputType == Enum.UserInputType.MouseButton1 then
						if HueInput then
							HueInput:Disconnect()
						end
					end
				end)

				if isTouchDevice then
					Color_1.InputBegan:Connect(function(input)
						if input.UserInputType == Enum.UserInputType.Touch then
							if ColorInput then
								ColorInput:Disconnect()
							end

							ColorInput = game:GetService("RunService").RenderStepped:Connect(function()
								local ColorX = (math.clamp(Mouse.X - Color_1.AbsolutePosition.X, 0, Color_1.AbsoluteSize.X) / Color_1.AbsoluteSize.X)
								local ColorY = (math.clamp(Mouse.Y - Color_1.AbsolutePosition.Y, 0, Color_1.AbsoluteSize.Y) / Color_1.AbsoluteSize.Y)

								Tw({
									v = ColorSelection_1,
									t = 0.3,
									s = "Exponential",
									d = "Out",
									g = {Position = UDim2.new(ColorX, 0, ColorY, 0)}
								}):Play()
								ColorS = ColorX
								ColorV = 1 - ColorY

								UpdateColorPicker(true)
							end)
						end
					end)

					Color_1.InputEnded:Connect(function(input)
						if input.UserInputType == Enum.UserInputType.Touch then
							if ColorInput then
								ColorInput:Disconnect()
							end
						end
					end)

					Hue_1.InputBegan:Connect(function(input)
						if input.UserInputType == Enum.UserInputType.Touch then
							if HueInput then
								HueInput:Disconnect()
							end

							HueInput = game:GetService("RunService").RenderStepped:Connect(function()
								local HueY = (math.clamp(Mouse.Y - Hue_1.AbsolutePosition.Y, 0, Hue_1.AbsoluteSize.Y) / Hue_1.AbsoluteSize.Y)

								Tw({
									v = HueSelection_1,
									t = 0.3,
									s = "Exponential",
									d = "Out",
									g = {Position = UDim2.new(0.48, 0, HueY, 0)}
								}):Play()
								
								ColorH = 1 - HueY

								UpdateColorPicker(true)
							end)
						end
					end)

					Hue_1.InputEnded:Connect(function(input)
						if input.UserInputType == Enum.UserInputType.Touch then
							if HueInput then
								HueInput:Disconnect()
							end
						end
					end)
				end

				RGBValue_1.FocusLost:Connect(function(enterPressed)
					if enterPressed then
						local inputText = RGBValue_1.Text
						local r, g, b = inputText:match("(%d+),%s*(%d+),%s*(%d+)")

						if r and g and b then
							r, g, b = tonumber(r), tonumber(g), tonumber(b)
							if r >= 0 and r <= 255 and g >= 0 and g <= 255 and b >= 0 and b <= 255 then
								local newColor = Color3.fromRGB(r, g, b)
								ColorValue_1.BackgroundColor3 = newColor
								Color_1.BackgroundColor3 = newColor

								local h, s, v = Color3.toHSV(newColor)
								ColorH, ColorS, ColorV = h, s, v
								
								Tw({
									v = ColorSelection_1,
									t = 0.3,
									s = "Exponential",
									d = "Out",
									g = {Position = UDim2.new(s, 0, 1 - v, 0)}
								}):Play()
								Tw({
									v = HueSelection_1,
									t = 0.3,
									s = "Exponential",
									d = "Out",
									g = {Position = UDim2.new(0.48, 0, 1 - h, 0)}
								}):Play()

								pcall(Callback, r, g, b)
							else
								RGBValue_1.Text = string.format("%d, %d, %d", math.floor(ColorValue_1.BackgroundColor3.R * 255), math.floor(ColorValue_1.BackgroundColor3.G * 255), math.floor(ColorValue_1.BackgroundColor3.B * 255))
							end
						else
							RGBValue_1.Text = string.format("%d, %d, %d", math.floor(ColorValue_1.BackgroundColor3.R * 255), math.floor(ColorValue_1.BackgroundColor3.G * 255), math.floor(ColorValue_1.BackgroundColor3.B * 255))
						end
					end
				end)

				delay(0,function()
					local r, g, b = ColorValue_1.BackgroundColor3.R * 255, ColorValue_1.BackgroundColor3.G * 255, ColorValue_1.BackgroundColor3.B * 255
					RGBValue_1.Text = string.format("%d, %d, %d", math.floor(r), math.floor(g), math.floor(b))
					pcall(Callback, math.floor(r), math.floor(g), math.floor(b))
				end)

				local NewColor = {}

				function NewColor:SetColor(colorTable)
					local r = colorTable.R or ColorValue_1.BackgroundColor3.R * 255
					local g = colorTable.G or ColorValue_1.BackgroundColor3.G * 255
					local b = colorTable.B or ColorValue_1.BackgroundColor3.B * 255

					if r >= 0 and r <= 255 and g >= 0 and g <= 255 and b >= 0 and b <= 255 then
						local newColor = Color3.fromRGB(r, g, b)

						ColorValue_1.BackgroundColor3 = newColor
						Color_1.BackgroundColor3 = newColor

						local h, s, v = Color3.toHSV(newColor)
						ColorH, ColorS, ColorV = h, s, v

						Tw({
							v = ColorSelection_1,
							t = 0.3,
							s = "Exponential",
							d = "Out",
							g = {Position = UDim2.new(s, 0, 1 - v, 0)}
						}):Play()
						Tw({
							v = HueSelection_1,
							t = 0.3,
							s = "Exponential",
							d = "Out",
							g = {Position = UDim2.new(0.48, 0, 1 - h, 0)}
						}):Play()

						RGBValue_1.Text = string.format("%d, %d, %d", math.floor(r), math.floor(g), math.floor(b))
						pcall(Callback, r, g, b)
					end
				end

				return NewColor
			end
			
			UIListLayoutPageLeft:GetPropertyChangedSignal("AbsoluteContentSize"):Connect(function()
				PageLeft_1.CanvasSize = UDim2.new(0, 0, 0, UIListLayoutPageLeft.AbsoluteContentSize.Y + 20)
			end)
			UIListLayoutPageRight:GetPropertyChangedSignal("AbsoluteContentSize"):Connect(function()
				PageRight_1.CanvasSize = UDim2.new(0, 0, 0, UIListLayoutPageRight.AbsoluteContentSize.Y + 20)
			end)
			
			UIListLayout_7:GetPropertyChangedSignal("AbsoluteContentSize"):Connect(function()
				Section_1.Size = UDim2.new(1, 0, 0, UIListLayout_7.AbsoluteContentSize.Y + 15)
			end)
			
			return Library.Main
		end
		
		return Library.Section
	end
	
	UIListLayout_1:GetPropertyChangedSignal("AbsoluteContentSize"):Connect(function()
		ScrollingFrame_1.CanvasSize = UDim2.new(0, UIListLayout_1.AbsoluteContentSize.X + 5, 0, 0)
	end)

	return Library.Tab
end

_G.Pirates = true

spawn(function()
    while _G.Pirates do
        task.wait(1)

        local player = game.Players.LocalPlayer
        if player.Team == nil then
            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("SetTeam", "Pirates")
        elseif player.Team.Name == "Marines" then
            _G.Pirates = false
        end
    end
end)

repeat task.wait(1) until game.Players.LocalPlayer.Team ~= nil
task.wait(3)

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
        if MyLevel >= 1 and MyLevel <= 9 then
            Mon = "Bandit"
            LevelQuest = 1
            NameQuest = "BanditQuest1"
            NameMon = "Bandit"
            CFrameQuest = CFrame.new(1059.37195, 15.4495068, 1550.4231, 0.939700544, -0, -0.341998369, 0, 1, -0, 0.341998369, 0, 0.939700544)
            CFrameMon = CFrame.new(1045.962646484375, 27.00250816345215, 1560.8203125)
        elseif MyLevel >= 10 and MyLevel <= 14 then
            Mon = "Monkey"
            LevelQuest = 1
            NameQuest = "JungleQuest"
            NameMon = "Monkey"
            CFrameQuest = CFrame.new(-1598.08911, 35.5501175, 153.377838, 0, 0, 1, 0, 1, -0, -1, 0, 0)
            CFrameMon = CFrame.new(-1448.51806640625, 67.85301208496094, 11.46579647064209)
        elseif MyLevel >= 15 and MyLevel <= 29 then
            Mon = "Gorilla"
            LevelQuest = 2
            NameQuest = "JungleQuest"
            NameMon = "Gorilla"
            CFrameQuest = CFrame.new(-1598.08911, 35.5501175, 153.377838, 0, 0, 1, 0, 1, -0, -1, 0, 0)
            CFrameMon = CFrame.new(-1129.8836669921875, 40.46354675292969, -525.4237060546875)
        elseif MyLevel >= 30 and MyLevel <= 39 then
            Mon = "Pirate"
            LevelQuest = 1
            NameQuest = "BuggyQuest1"
            NameMon = "Pirate"
            CFrameQuest = CFrame.new(-1141.07483, 4.10001802, 3831.5498, 0.965929627, -0, -0.258804798, 0, 1, -0, 0.258804798, 0, 0.965929627)
            CFrameMon = CFrame.new(-1103.513427734375, 13.752052307128906, 3896.091064453125)
        elseif MyLevel >= 40 and MyLevel <= 59 then
            Mon = "Brute"
            LevelQuest = 2
            NameQuest = "BuggyQuest1"
            NameMon = "Brute"
            CFrameQuest = CFrame.new(-1141.07483, 4.10001802, 3831.5498, 0.965929627, -0, -0.258804798, 0, 1, -0, 0.258804798, 0, 0.965929627)
            CFrameMon = CFrame.new(-1140.083740234375, 14.809885025024414, 4322.92138671875)
        elseif MyLevel >= 60 and MyLevel <= 74 then
            Mon = "Desert Bandit"
            LevelQuest = 1
            NameQuest = "DesertQuest"
            NameMon = "Desert Bandit"
            CFrameQuest = CFrame.new(894.488647, 5.14000702, 4392.43359, 0.819155693, -0, -0.573571265, 0, 1, -0, 0.573571265, 0, 0.819155693)
            CFrameMon = CFrame.new(924.7998046875, 6.44867467880249, 4481.5859375)
        elseif MyLevel >= 75 and MyLevel <= 89 then
            Mon = "Desert Officer"
            LevelQuest = 2
            NameQuest = "DesertQuest"
            NameMon = "Desert Officer"
            CFrameQuest = CFrame.new(894.488647, 5.14000702, 4392.43359, 0.819155693, -0, -0.573571265, 0, 1, -0, 0.573571265, 0, 0.819155693)
            CFrameMon = CFrame.new(1608.2822265625, 8.614224433898926, 4371.00732421875)
        elseif MyLevel >= 90 and MyLevel <= 99 then
            Mon = "Snow Bandit"
            LevelQuest = 1
            NameQuest = "SnowQuest"
            NameMon = "Snow Bandit"
            CFrameQuest = CFrame.new(1389.74451, 88.1519318, -1298.90796, -0.342042685, 0, 0.939684391, 0, 1, 0, -0.939684391, 0, -0.342042685)
            CFrameMon = CFrame.new(1354.347900390625, 87.27277374267578, -1393.946533203125)
        elseif MyLevel >= 100 and MyLevel <= 119 then
            Mon = "Snowman"
            LevelQuest = 2
            NameQuest = "SnowQuest"
            NameMon = "Snowman"
            CFrameQuest = CFrame.new(1389.74451, 88.1519318, -1298.90796, -0.342042685, 0, 0.939684391, 0, 1, 0, -0.939684391, 0, -0.342042685)
            CFrameMon = CFrame.new(1201.6412353515625, 144.57958984375, -1550.0670166015625)
        elseif MyLevel >= 120 and MyLevel <= 149 then
            Mon = "Chief Petty Officer"
            LevelQuest = 1
            NameQuest = "MarineQuest2"
            NameMon = "Chief Petty Officer"
            CFrameQuest = CFrame.new(-5039.58643, 27.3500385, 4324.68018, 0, 0, -1, 0, 1, 0, 1, 0, 0)
            CFrameMon = CFrame.new(-4881.23095703125, 22.65204429626465, 4273.75244140625)
        elseif MyLevel >= 150 and MyLevel <= 174 then
            Mon = "Sky Bandit"
            LevelQuest = 1
            NameQuest = "SkyQuest"
            NameMon = "Sky Bandit"
            CFrameQuest = CFrame.new(-4839.53027, 716.368591, -2619.44165, 0.866007268, 0, 0.500031412, 0, 1, 0, -0.500031412, 0, 0.866007268)
            CFrameMon = CFrame.new(-4953.20703125, 295.74420166015625, -2899.22900390625)
        elseif MyLevel >= 175 and MyLevel <= 189 then
            Mon = "Dark Master"
            LevelQuest = 2
            NameQuest = "SkyQuest"
            NameMon = "Dark Master"
            CFrameQuest = CFrame.new(-4839.53027, 716.368591, -2619.44165, 0.866007268, 0, 0.500031412, 0, 1, 0, -0.500031412, 0, 0.866007268)
            CFrameMon = CFrame.new(-5259.8447265625, 391.3976745605469, -2229.035400390625)
        elseif MyLevel >= 190 and MyLevel <= 209 then
            Mon = "Prisoner"
            LevelQuest = 1
            NameQuest = "PrisonerQuest"
            NameMon = "Prisoner"
            CFrameQuest = CFrame.new(5308.93115, 1.65517521, 475.120514, -0.0894274712, -5.00292918e-09, -0.995993316, 1.60817859e-09, 1, -5.16744869e-09, 0.995993316, -2.06384709e-09, -0.0894274712)
            CFrameMon = CFrame.new(5098.9736328125, -0.3204058110713959, 474.2373352050781)
        elseif MyLevel >= 210 and MyLevel <= 249 then
            Mon = "Dangerous Prisoner"
            LevelQuest = 2
            NameQuest = "PrisonerQuest"
            NameMon = "Dangerous Prisoner"
            CFrameQuest = CFrame.new(5308.93115, 1.65517521, 475.120514, -0.0894274712, -5.00292918e-09, -0.995993316, 1.60817859e-09, 1, -5.16744869e-09, 0.995993316, -2.06384709e-09, -0.0894274712)
            CFrameMon = CFrame.new(5654.5634765625, 15.633401870727539, 866.2991943359375)
        elseif MyLevel >= 250 and MyLevel <= 274 then
            Mon = "Toga Warrior"
            LevelQuest = 1
            NameQuest = "ColosseumQuest"
            NameMon = "Toga Warrior"
            CFrameQuest = CFrame.new(-1580.04663, 6.35000277, -2986.47534, -0.515037298, 0, -0.857167721, 0, 1, 0, 0.857167721, 0, -0.515037298)
            CFrameMon = CFrame.new(-1820.21484375, 51.68385696411133, -2740.6650390625)
        elseif MyLevel >= 275 and MyLevel <= 299 then
            Mon = "Gladiator"
            LevelQuest = 2
            NameQuest = "ColosseumQuest"
            NameMon = "Gladiator"
            CFrameQuest = CFrame.new(-1580.04663, 6.35000277, -2986.47534, -0.515037298, 0, -0.857167721, 0, 1, 0, 0.857167721, 0, -0.515037298)
            CFrameMon = CFrame.new(-1292.838134765625, 56.380882263183594, -3339.031494140625)
        elseif MyLevel >= 300 and MyLevel <= 324 then
            Mon = "Military Soldier"
            LevelQuest = 1
            NameQuest = "MagmaQuest"
            NameMon = "Military Soldier"
            CFrameQuest = CFrame.new(-5313.37012, 10.9500084, 8515.29395, -0.499959469, 0, 0.866048813, 0, 1, 0, -0.866048813, 0, -0.499959469)
            CFrameMon = CFrame.new(-5411.16455078125, 11.081554412841797, 8454.29296875)
        elseif MyLevel >= 325 and MyLevel <= 374 then
            Mon = "Military Spy"
            LevelQuest = 2
            NameQuest = "MagmaQuest"
            NameMon = "Military Spy"
            CFrameQuest = CFrame.new(-5313.37012, 10.9500084, 8515.29395, -0.499959469, 0, 0.866048813, 0, 1, 0, -0.866048813, 0, -0.499959469)
            CFrameMon = CFrame.new(-5802.8681640625, 86.26241302490234, 8828.859375)
        elseif MyLevel >= 375 and MyLevel <= 399 then
            Mon = "Fishman Warrior"
            LevelQuest = 1
            NameQuest = "FishmanQuest"
            NameMon = "Fishman Warrior"
            CFrameQuest = CFrame.new(61122.65234375, 18.497442245483, 1569.3997802734)
            CFrameMon = CFrame.new(60878.30078125, 18.482830047607422, 1543.7574462890625)
            if getgenv().AutoFarm and (CFrameQuest.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 10000 then
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(61163.8515625, 11.6796875, 1819.7841796875))
            end
        elseif MyLevel >= 400 and MyLevel <= 449 then
            Mon = "Fishman Commando"
            LevelQuest = 2
            NameQuest = "FishmanQuest"
            NameMon = "Fishman Commando"
            CFrameQuest = CFrame.new(61122.65234375, 18.497442245483, 1569.3997802734)
            CFrameMon = CFrame.new(61922.6328125, 18.482830047607422, 1493.934326171875)
            if getgenv().AutoFarm and (CFrameQuest.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 10000 then
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(61163.8515625, 11.6796875, 1819.7841796875))
            end
        elseif MyLevel >= 450 and MyLevel <= 474 then
            Mon = "God's Guard"
            LevelQuest = 1
            NameQuest = "SkyExp1Quest"
            NameMon = "God's Guard"
            CFrameQuest = CFrame.new(-4721.88867, 843.874695, -1949.96643, 0.996191859, -0, -0.0871884301, 0, 1, -0, 0.0871884301, 0, 0.996191859)
            CFrameMon = CFrame.new(-4710.04296875, 845.2769775390625, -1927.3079833984375)
            if getgenv().AutoFarm and (CFrameQuest.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 10000 then
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(-4607.82275, 872.54248, -1667.55688))
            end
        elseif MyLevel >= 475 and MyLevel <= 524 then
            Mon = "Shanda"
            LevelQuest = 2
            NameQuest = "SkyExp1Quest"
            NameMon = "Shanda"
            CFrameQuest = CFrame.new(-7859.09814, 5544.19043, -381.476196, -0.422592998, 0, 0.906319618, 0, 1, 0, -0.906319618, 0, -0.422592998)
            CFrameMon = CFrame.new(-7678.48974609375, 5566.40380859375, -497.2156066894531)
            if getgenv().AutoFarm and (CFrameQuest.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 10000 then
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(-7894.6176757813, 5547.1416015625, -380.29119873047))
            end
        elseif MyLevel >= 525 and MyLevel <= 549 then
            Mon = "Royal Squad"
            LevelQuest = 1
            NameQuest = "SkyExp2Quest"
            NameMon = "Royal Squad"
            CFrameQuest = CFrame.new(-7906.81592, 5634.6626, -1411.99194, 0, 0, -1, 0, 1, 0, 1, 0, 0)
            CFrameMon = CFrame.new(-7624.25244140625, 5658.13330078125, -1467.354248046875)
        elseif MyLevel >= 550 and MyLevel <= 624 then
            Mon = "Royal Soldier"
            LevelQuest = 2
            NameQuest = "SkyExp2Quest"
            NameMon = "Royal Soldier"
            CFrameQuest = CFrame.new(-7906.81592, 5634.6626, -1411.99194, 0, 0, -1, 0, 1, 0, 1, 0, 0)
            CFrameMon = CFrame.new(-7836.75341796875, 5645.6640625, -1790.6236572265625)
        elseif MyLevel >= 625 and MyLevel <= 649 then
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
        if MyLevel >= 700 and MyLevel <= 724 then
            Mon = "Raider"
            LevelQuest = 1
            NameQuest = "Area1Quest"
            NameMon = "Raider"
            CFrameQuest = CFrame.new(-429.543518, 71.7699966, 1836.18188, -0.22495985, 0, -0.974368095, 0, 1, 0, 0.974368095, 0, -0.22495985)
            CFrameMon = CFrame.new(-728.3267211914062, 52.779319763183594, 2345.7705078125)
        elseif MyLevel >= 725 and MyLevel <= 774 then
            Mon = "Mercenary"
            LevelQuest = 2
            NameQuest = "Area1Quest"
            NameMon = "Mercenary"
            CFrameQuest = CFrame.new(-429.543518, 71.7699966, 1836.18188, -0.22495985, 0, -0.974368095, 0, 1, 0, 0.974368095, 0, -0.22495985)
            CFrameMon = CFrame.new(-1004.3244018554688, 80.15886688232422, 1424.619384765625)
        elseif MyLevel >= 775 and MyLevel <= 799 then
            Mon = "Swan Pirate"
            LevelQuest = 1
            NameQuest = "Area2Quest"
            NameMon = "Swan Pirate"
            CFrameQuest = CFrame.new(638.43811, 71.769989, 918.282898, 0.139203906, 0, 0.99026376, 0, 1, 0, -0.99026376, 0, 0.139203906)
            CFrameMon = CFrame.new(1068.664306640625, 137.61428833007812, 1322.1060791015625)
        elseif MyLevel >= 800 and MyLevel <= 874 then
            Mon = "Factory Staff"
            NameQuest = "Area2Quest"
            LevelQuest = 2
            NameMon = "Factory Staff"
            CFrameQuest = CFrame.new(632.698608, 73.1055908, 918.666321, -0.0319722369, 8.96074881e-10, -0.999488771, 1.36326533e-10, 1, 8.92172336e-10, 0.999488771, -1.07732087e-10, -0.0319722369)
            CFrameMon = CFrame.new(73.07867431640625, 81.86344146728516, -27.470672607421875)
        elseif MyLevel >= 875 and MyLevel <= 899 then
            Mon = "Marine Lieutenant"
            LevelQuest = 1
            NameQuest = "MarineQuest3"
            NameMon = "Marine Lieutenant"
            CFrameQuest = CFrame.new(-2440.79639, 71.7140732, -3216.06812, 0.866007268, 0, 0.500031412, 0, 1, 0, -0.500031412, 0, 0.866007268)
            CFrameMon = CFrame.new(-2821.372314453125, 75.89727783203125, -3070.089111328125)
        elseif MyLevel >= 900 and MyLevel <= 949 then
            Mon = "Marine Captain"
            LevelQuest = 2
            NameQuest = "MarineQuest3"
            NameMon = "Marine Captain"
            CFrameQuest = CFrame.new(-2440.79639, 71.7140732, -3216.06812, 0.866007268, 0, 0.500031412, 0, 1, 0, -0.500031412, 0, 0.866007268)
            CFrameMon = CFrame.new(-1861.2310791015625, 80.17658233642578, -3254.697509765625)
        elseif MyLevel >= 950 and MyLevel <= 974 then
            Mon = "Zombie"
            LevelQuest = 1
            NameQuest = "ZombieQuest"
            NameMon = "Zombie"
            CFrameQuest = CFrame.new(-5497.06152, 47.5923004, -795.237061, -0.29242146, 0, -0.95628953, 0, 1, 0, 0.95628953, 0, -0.29242146)
            CFrameMon = CFrame.new(-5657.77685546875, 78.96973419189453, -928.68701171875)
        elseif MyLevel >= 975 and MyLevel <= 999 then
            Mon = "Vampire"
            LevelQuest = 2
            NameQuest = "ZombieQuest"
            NameMon = "Vampire"
            CFrameQuest = CFrame.new(-5497.06152, 47.5923004, -795.237061, -0.29242146, 0, -0.95628953, 0, 1, 0, 0.95628953, 0, -0.29242146)
            CFrameMon = CFrame.new(-6037.66796875, 32.18463897705078, -1340.6597900390625)
        elseif MyLevel >= 1000 and MyLevel <= 1049 then
            Mon = "Snow Trooper"
            LevelQuest = 1
            NameQuest = "SnowMountainQuest"
            NameMon = "Snow Trooper"
            CFrameQuest = CFrame.new(609.858826, 400.119904, -5372.25928, -0.374604106, 0, 0.92718488, 0, 1, 0, -0.92718488, 0, -0.374604106)
            CFrameMon = CFrame.new(549.1473388671875, 427.3870544433594, -5563.69873046875)
        elseif MyLevel >= 1050 and MyLevel <= 1099 then
            Mon = "Winter Warrior"
            LevelQuest = 2
            NameQuest = "SnowMountainQuest"
            NameMon = "Winter Warrior"
            CFrameQuest = CFrame.new(609.858826, 400.119904, -5372.25928, -0.374604106, 0, 0.92718488, 0, 1, 0, -0.92718488, 0, -0.374604106)
            CFrameMon = CFrame.new(1142.7451171875, 475.6398010253906, -5199.41650390625)
        elseif MyLevel >= 1100 and MyLevel <= 1124 then
            Mon = "Lab Subordinate"
            LevelQuest = 1
            NameQuest = "IceSideQuest"
            NameMon = "Lab Subordinate"
            CFrameQuest = CFrame.new(-6064.06885, 15.2422857, -4902.97852, 0.453972578, -0, -0.891015649, 0, 1, -0, 0.891015649, 0, 0.453972578)
            CFrameMon = CFrame.new(-5707.4716796875, 15.951709747314453, -4513.39208984375)
        elseif MyLevel >= 1125 and MyLevel <= 1174 then
            Mon = "Horned Warrior"
            LevelQuest = 2
            NameQuest = "IceSideQuest"
            NameMon = "Horned Warrior"
            CFrameQuest = CFrame.new(-6064.06885, 15.2422857, -4902.97852, 0.453972578, -0, -0.891015649, 0, 1, -0, 0.891015649, 0, 0.453972578)
            CFrameMon = CFrame.new(-6341.36669921875, 15.951770782470703, -5723.162109375)
        elseif MyLevel >= 1175 and MyLevel <= 1199 then
            Mon = "Magma Ninja"
            LevelQuest = 1
            NameQuest = "FireSideQuest"
            NameMon = "Magma Ninja"
            CFrameQuest = CFrame.new(-5428.03174, 15.0622921, -5299.43457, -0.882952213, 0, 0.469463557, 0, 1, 0, -0.469463557, 0, -0.882952213)
            CFrameMon = CFrame.new(-5449.6728515625, 76.65874481201172, -5808.20068359375)
        elseif MyLevel >= 1200 and MyLevel <= 1249 then
            Mon = "Lava Pirate"
            LevelQuest = 2
            NameQuest = "FireSideQuest"
            NameMon = "Lava Pirate"
            CFrameQuest = CFrame.new(-5428.03174, 15.0622921, -5299.43457, -0.882952213, 0, 0.469463557, 0, 1, 0, -0.469463557, 0, -0.882952213)
            CFrameMon = CFrame.new(-5213.33154296875, 49.73788070678711, -4701.451171875)
        elseif MyLevel >= 1250 and MyLevel <= 1274 then
            Mon = "Ship Deckhand"
            LevelQuest = 1
            NameQuest = "ShipQuest1"
            NameMon = "Ship Deckhand"
            CFrameQuest = CFrame.new(1037.80127, 125.092171, 32911.6016)         
            CFrameMon = CFrame.new(1212.0111083984375, 150.79205322265625, 33059.24609375)    
            if getgenv().AutoFarm and (CFrameQuest.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 10000 then
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(923.21252441406, 126.9760055542, 32852.83203125))
            end
        elseif MyLevel >= 1275 and MyLevel <= 1299 then
            Mon = "Ship Engineer"
            LevelQuest = 2
            NameQuest = "ShipQuest1"
            NameMon = "Ship Engineer"
            CFrameQuest = CFrame.new(1037.80127, 125.092171, 32911.6016)   
            CFrameMon = CFrame.new(919.4786376953125, 43.54401397705078, 32779.96875)   
            if getgenv().AutoFarm and (CFrameQuest.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 10000 then
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(923.21252441406, 126.9760055542, 32852.83203125))
            end             
        elseif MyLevel >= 1300 and MyLevel <= 1324 then
            Mon = "Ship Steward"
            LevelQuest = 1
            NameQuest = "ShipQuest2"
            NameMon = "Ship Steward"
            CFrameQuest = CFrame.new(968.80957, 125.092171, 33244.125)         
            CFrameMon = CFrame.new(919.4385375976562, 129.55599975585938, 33436.03515625)      
            if getgenv().AutoFarm and (CFrameQuest.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 10000 then
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(923.21252441406, 126.9760055542, 32852.83203125))
            end
        elseif MyLevel >= 1325 and MyLevel <= 1349 then
            Mon = "Ship Officer"
            LevelQuest = 2
            NameQuest = "ShipQuest2"
            NameMon = "Ship Officer"
            CFrameQuest = CFrame.new(968.80957, 125.092171, 33244.125)
            CFrameMon = CFrame.new(1036.0179443359375, 181.4390411376953, 33315.7265625)
            if getgenv().AutoFarm and (CFrameQuest.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 10000 then
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(923.21252441406, 126.9760055542, 32852.83203125))
            end
        elseif MyLevel >= 1350 and MyLevel <= 1374 then
            Mon = "Arctic Warrior"
            LevelQuest = 1
            NameQuest = "FrostQuest"
            NameMon = "Arctic Warrior"
            CFrameQuest = CFrame.new(5667.6582, 26.7997818, -6486.08984, -0.933587909, 0, -0.358349502, 0, 1, 0, 0.358349502, 0, -0.933587909)
            CFrameMon = CFrame.new(5966.24609375, 62.97002029418945, -6179.3828125)
            if getgenv().AutoFarm and (CFrameQuest.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 10000 then
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(-6508.5581054688, 5000.034996032715, -132.83953857422))
            end
        elseif MyLevel >= 1375 and MyLevel <= 1424 then
            Mon = "Snow Lurker"
            LevelQuest = 2
            NameQuest = "FrostQuest"
            NameMon = "Snow Lurker"
            CFrameQuest = CFrame.new(5667.6582, 26.7997818, -6486.08984, -0.933587909, 0, -0.358349502, 0, 1, 0, 0.358349502, 0, -0.933587909)
            CFrameMon = CFrame.new(5407.07373046875, 69.19437408447266, -6880.88037109375)
        elseif MyLevel >= 1425 and MyLevel <= 1449 then
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
            CFrameQuest = CFrame.new(-3054, 240, -10146)
            CFrameMon = CFrame.new(-3291, 252, -10501)
        end
    elseif World3 then
        if MyLevel >= 1500 and MyLevel <= 1524 then
            Mon = "Pirate Millionaire"
            LevelQuest = 1
            NameQuest = "PiratePortQuest"
            NameMon = "Pirate Millionaire"
            CFrameQuest = CFrame.new(-290.074677, 42.9034653, 5581.58984, 0.965929627, -0, -0.258804798, 0, 1, -0, 0.258804798, 0, 0.965929627)
            CFrameMon = CFrame.new(-245.9963836669922, 47.30615234375, 5584.1005859375)
        elseif MyLevel >= 1525 and MyLevel <= 1574 then
            Mon = "Pistol Billionaire"
            LevelQuest = 2
            NameQuest = "PiratePortQuest"
            NameMon = "Pistol Billionaire"
            CFrameQuest = CFrame.new(-290.074677, 42.9034653, 5581.58984, 0.965929627, -0, -0.258804798, 0, 1, -0, 0.258804798, 0, 0.965929627)
            CFrameMon = CFrame.new(-187.3301544189453, 86.23987579345703, 6013.513671875)
        elseif MyLevel >= 1575 and MyLevel <= 1599 then
            Mon = "Dragon Crew Warrior"
            LevelQuest = 1
            NameQuest = "DragonCrewQuest"
            NameMon = "Dragon Crew Warrior"
            CFrameQuest = CFrame.new(6738.96142578125, 127.81645965576172, -713.511474609375)
            CFrameMon = CFrame.new(6920.71435546875, 56.15597152709961, -942.5044555664062)
        elseif MyLevel >= 1600 and MyLevel <= 1624 then 
            Mon = "Dragon Crew Archer"
            NameQuest = "DragonCrewQuest"
            LevelQuest = 2
            NameMon = "Dragon Crew Archer"
            CFrameQuest = CFrame.new(6738.96142578125, 127.81645965576172, -713.511474609375)
            CFrameMon = CFrame.new(6817.91259765625, 484.804443359375, 513.4141235351562)
        elseif MyLevel >= 1625 and MyLevel <= 1649 then
            Mon = "Hydra Enforcer"
            NameQuest = "VenomCrewQuest"
            LevelQuest = 1
            NameMon = "Hydra Enforcer"
            CFrameQuest = CFrame.new(5213.8740234375, 1004.5042724609375, 758.6944580078125)
            CFrameMon = CFrame.new(4584.69287109375, 1002.6435546875, 705.7958984375)
        elseif MyLevel >= 1650 and MyLevel <= 1699 then 
            Mon = "Venomous Assailant"
            NameQuest = "VenomCrewQuest"
            LevelQuest = 2
            NameMon = "Venomous Assailant"
            CFrameQuest = CFrame.new(5213.8740234375, 1004.5042724609375, 758.6944580078125)
            CFrameMon = CFrame.new(4638.78564453125, 1078.94091796875, 881.8002319335938)        
        elseif MyLevel >= 1700 and MyLevel <= 1724 then
            Mon = "Marine Commodore"
            LevelQuest = 1
            NameQuest = "MarineTreeIsland"
            NameMon = "Marine Commodore"
            CFrameQuest = CFrame.new(2180.54126, 27.8156815, -6741.5498, -0.965929747, 0, 0.258804798, 0, 1, 0, -0.258804798, 0, -0.965929747)
            CFrameMon = CFrame.new(2286.0078125, 73.13391876220703, -7159.80908203125)
        elseif MyLevel >= 1725 and MyLevel <= 1774 then
            Mon = "Marine Rear Admiral"
            NameMon = "Marine Rear Admiral"
            NameQuest = "MarineTreeIsland"
            LevelQuest = 2
            CFrameQuest = CFrame.new(2179.98828125, 28.731239318848, -6740.0551757813)
            CFrameMon = CFrame.new(3656.773681640625, 160.52406311035156, -7001.5986328125)
        elseif MyLevel >= 1775 and MyLevel <= 1799 then
            Mon = "Fishman Raider"
            LevelQuest = 1
            NameQuest = "DeepForestIsland3"
            NameMon = "Fishman Raider"
            CFrameQuest = CFrame.new(-10581.6563, 330.872955, -8761.18652, -0.882952213, 0, 0.469463557, 0, 1, 0, -0.469463557, 0, -0.882952213)   
            CFrameMon = CFrame.new(-10407.5263671875, 331.76263427734375, -8368.5166015625)
        elseif MyLevel >= 1800 and MyLevel <= 1824 then
            Mon = "Fishman Captain"
            LevelQuest = 2
            NameQuest = "DeepForestIsland3"
            NameMon = "Fishman Captain"
            CFrameQuest = CFrame.new(-10581.6563, 330.872955, -8761.18652, -0.882952213, 0, 0.469463557, 0, 1, 0, -0.469463557, 0, -0.882952213)   
            CFrameMon = CFrame.new(-10994.701171875, 352.38140869140625, -9002.1103515625) 
        elseif MyLevel >= 1825 and MyLevel <= 1849 then
            Mon = "Forest Pirate"
            LevelQuest = 1
            NameQuest = "DeepForestIsland"
            NameMon = "Forest Pirate"
            CFrameQuest = CFrame.new(-13234.04, 331.488495, -7625.40137, 0.707134247, -0, -0.707079291, 0, 1, -0, 0.707079291, 0, 0.707134247)
            CFrameMon = CFrame.new(-13274.478515625, 332.3781433105469, -7769.58056640625)
        elseif MyLevel >= 1850 and MyLevel <= 1899 then
            Mon = "Mythological Pirate"
            LevelQuest = 2
            NameQuest = "DeepForestIsland"
            NameMon = "Mythological Pirate"
            CFrameQuest = CFrame.new(-13234.04, 331.488495, -7625.40137, 0.707134247, -0, -0.707079291, 0, 1, -0, 0.707079291, 0, 0.707134247)   
            CFrameMon = CFrame.new(-13680.607421875, 501.08154296875, -6991.189453125)
        elseif MyLevel >= 1900 and MyLevel <= 1924 then
            Mon = "Jungle Pirate"
            LevelQuest = 1
            NameQuest = "DeepForestIsland2"
            NameMon = "Jungle Pirate"
            CFrameQuest = CFrame.new(-12680.3818, 389.971039, -9902.01953, -0.0871315002, 0, 0.996196866, 0, 1, 0, -0.996196866, 0, -0.0871315002)
            CFrameMon = CFrame.new(-12256.16015625, 331.73828125, -10485.8369140625)
        elseif MyLevel >= 1925 and MyLevel <= 1974 then
            Mon = "Musketeer Pirate"
            LevelQuest = 2
            NameQuest = "DeepForestIsland2"
            NameMon = "Musketeer Pirate"
            CFrameQuest = CFrame.new(-12680.3818, 389.971039, -9902.01953, -0.0871315002, 0, 0.996196866, 0, 1, 0, -0.996196866, 0, -0.0871315002)
            CFrameMon = CFrame.new(-13457.904296875, 391.545654296875, -9859.177734375)
        elseif MyLevel >= 1975 and MyLevel <= 1999 then
            Mon = "Reborn Skeleton"
            LevelQuest = 1
            NameQuest = "HauntedQuest1"
            NameMon = "Reborn Skeleton"
            CFrameQuest = CFrame.new(-9479.2168, 141.215088, 5566.09277, 0, 0, 1, 0, 1, -0, -1, 0, 0)
            CFrameMon = CFrame.new(-8763.7236328125, 165.72299194335938, 6159.86181640625)
        elseif MyLevel >= 2000 and MyLevel <= 2024 then
            Mon = "Living Zombie"
            LevelQuest = 2
            NameQuest = "HauntedQuest1"
            NameMon = "Living Zombie"
            CFrameQuest = CFrame.new(-9479.2168, 141.215088, 5566.09277, 0, 0, 1, 0, 1, -0, -1, 0, 0)
            CFrameMon = CFrame.new(-10144.1318359375, 138.62667846679688, 5838.0888671875)
        elseif MyLevel >= 2025 and MyLevel <= 2049 then
            Mon = "Demonic Soul"
            LevelQuest = 1
            NameQuest = "HauntedQuest2"
            NameMon = "Demonic Soul"
            CFrameQuest = CFrame.new(-9516.99316, 172.017181, 6078.46533, 0, 0, -1, 0, 1, 0, 1, 0, 0) 
            CFrameMon = CFrame.new(-9505.8720703125, 172.10482788085938, 6158.9931640625)
        elseif MyLevel >= 2050 and MyLevel <= 2074 then
            Mon = "Posessed Mummy"
            LevelQuest = 2
            NameQuest = "HauntedQuest2"
            NameMon = "Posessed Mummy"
            CFrameQuest = CFrame.new(-9516.99316, 172.017181, 6078.46533, 0, 0, -1, 0, 1, 0, 1, 0, 0)
            CFrameMon = CFrame.new(-9582.0224609375, 6.251527309417725, 6205.478515625)
        elseif MyLevel >= 2075 and MyLevel <= 2099 then
            Mon = "Peanut Scout"
            LevelQuest = 1
            NameQuest = "NutsIslandQuest"
            NameMon = "Peanut Scout"
            CFrameQuest = CFrame.new(-2104.3908691406, 38.104167938232, -10194.21875, 0, 0, -1, 0, 1, 0, 1, 0, 0)
            CFrameMon = CFrame.new(-2143.241943359375, 47.72198486328125, -10029.9951171875)
        elseif MyLevel >= 2100 and MyLevel <= 2124 then
            Mon = "Peanut President"
            LevelQuest = 2
            NameQuest = "NutsIslandQuest"
            NameMon = "Peanut President"
            CFrameQuest = CFrame.new(-2104.3908691406, 38.104167938232, -10194.21875, 0, 0, -1, 0, 1, 0, 1, 0, 0)
            CFrameMon = CFrame.new(-1859.35400390625, 38.10316848754883, -10422.4296875)
        elseif MyLevel >= 2125 and MyLevel <= 2149 then
            Mon = "Ice Cream Chef"
            LevelQuest = 1
            NameQuest = "IceCreamIslandQuest"
            NameMon = "Ice Cream Chef"
            CFrameQuest = CFrame.new(-820.64825439453, 65.819526672363, -10965.795898438, 0, 0, -1, 0, 1, 0, 1, 0, 0)
            CFrameMon = CFrame.new(-872.24658203125, 65.81957244873047, -10919.95703125)
        elseif MyLevel >= 2150 and MyLevel <= 2199 then
            Mon = "Ice Cream Commander"
            LevelQuest = 2
            NameQuest = "IceCreamIslandQuest"
            NameMon = "Ice Cream Commander"
            CFrameQuest = CFrame.new(-820.64825439453, 65.819526672363, -10965.795898438, 0, 0, -1, 0, 1, 0, 1, 0, 0)
            CFrameMon = CFrame.new(-558.06103515625, 112.04895782470703, -11290.7744140625)
        elseif MyLevel >= 2200 and MyLevel <= 2224 then
            Mon = "Cookie Crafter"
            LevelQuest = 1
            NameQuest = "CakeQuest1"
            NameMon = "Cookie Crafter"
            CFrameQuest = CFrame.new(-2021.32007, 37.7982254, -12028.7295, 0.957576931, -8.80302053e-08, 0.288177818, 6.9301187e-08, 1, 7.51931211e-08, -0.288177818, -5.2032135e-08, 0.957576931)
            CFrameMon = CFrame.new(-2374.13671875, 37.79826354980469, -12125.30859375)
        elseif MyLevel >= 2225 and MyLevel <= 2249 then
            Mon = "Cake Guard"
            LevelQuest = 2
            NameQuest = "CakeQuest1"
            NameMon = "Cake Guard"
            CFrameQuest = CFrame.new(-2021.32007, 37.7982254, -12028.7295, 0.957576931, -8.80302053e-08, 0.288177818, 6.9301187e-08, 1, 7.51931211e-08, -0.288177818, -5.2032135e-08, 0.957576931)
            CFrameMon = CFrame.new(-1598.3070068359375, 43.773197174072266, -12244.5810546875)
        elseif MyLevel >= 2250 and MyLevel <= 2274 then
            Mon = "Baking Staff"
            LevelQuest = 1
            NameQuest = "CakeQuest2"
            NameMon = "Baking Staff"
            CFrameQuest = CFrame.new(-1927.91602, 37.7981339, -12842.5391, -0.96804446, 4.22142143e-08, 0.250778586, 4.74911062e-08, 1, 1.49904711e-08, -0.250778586, 2.64211941e-08, -0.96804446)
            CFrameMon = CFrame.new(-1887.8099365234375, 77.6185073852539, -12998.3505859375)
        elseif MyLevel >= 2275 and MyLevel <= 2299 then
            Mon = "Head Baker"
            LevelQuest = 2
            NameQuest = "CakeQuest2"
            NameMon = "Head Baker"
            CFrameQuest = CFrame.new(-1927.91602, 37.7981339, -12842.5391, -0.96804446, 4.22142143e-08, 0.250778586, 4.74911062e-08, 1, 1.49904711e-08, -0.250778586, 2.64211941e-08, -0.96804446)
            CFrameMon = CFrame.new(-2216.188232421875, 82.884521484375, -12869.2939453125)
        elseif MyLevel >= 2300 and MyLevel <= 2324 then
            Mon = "Cocoa Warrior"
            LevelQuest = 1
            NameQuest = "ChocQuest1"
            NameMon = "Cocoa Warrior"
            CFrameQuest = CFrame.new(233.22836303710938, 29.876001358032227, -12201.2333984375)
            CFrameMon = CFrame.new(-21.55328369140625, 80.57499694824219, -12352.3876953125)
        elseif MyLevel >= 2325 and MyLevel <= 2349 then
            Mon = "Chocolate Bar Battler"
            LevelQuest = 2
            NameQuest = "ChocQuest1"
            NameMon = "Chocolate Bar Battler"
            CFrameQuest = CFrame.new(233.22836303710938, 29.876001358032227, -12201.2333984375)
            CFrameMon = CFrame.new(582.590576171875, 77.18809509277344, -12463.162109375)
        elseif MyLevel >= 2350 and MyLevel <= 2374 then
            Mon = "Sweet Thief"
            LevelQuest = 1
            NameQuest = "ChocQuest2"
            NameMon = "Sweet Thief"
            CFrameQuest = CFrame.new(150.5066375732422, 30.693693161010742, -12774.5029296875)
            CFrameMon = CFrame.new(165.1884765625, 76.05885314941406, -12600.8369140625)
        elseif MyLevel >= 2375 and MyLevel <= 2399 then
            Mon = "Candy Rebel"
            LevelQuest = 2
            NameQuest = "ChocQuest2"
            NameMon = "Candy Rebel"
            CFrameQuest = CFrame.new(150.5066375732422, 30.693693161010742, -12774.5029296875)
            CFrameMon = CFrame.new(134.86563110351562, 77.2476806640625, -12876.5478515625)
        elseif MyLevel >= 2400 and MyLevel <= 2424 then
            Mon = "Candy Pirate"
            LevelQuest = 1
            NameQuest = "CandyQuest1"
            NameMon = "Candy Pirate"
            CFrameQuest = CFrame.new(-1150.0400390625, 20.378934860229492, -14446.3349609375)
            CFrameMon = CFrame.new(-1310.5003662109375, 26.016523361206055, -14562.404296875)
        elseif MyLevel >= 2425 and MyLevel <= 2449 then
            Mon = "Snow Demon"
            LevelQuest = 2
            NameQuest = "CandyQuest1"
            NameMon = "Snow Demon"
            CFrameQuest = CFrame.new(-1150.0400390625, 20.378934860229492, -14446.3349609375)
            CFrameMon = CFrame.new(-880.2006225585938, 71.24776458740234, -14538.609375)            
        elseif MyLevel >= 2450 and MyLevel <= 2474 then
            Mon = "Isle Outlaw"
            LevelQuest = 1
            NameQuest = "TikiQuest1"
            NameMon = "Isle Outlaw"
            CFrameQuest = CFrame.new(-16547.748046875, 61.13533401489258, -173.41360473632812)
            CFrameMon = CFrame.new(-16442.814453125, 116.13899993896484, -264.4637756347656)
        elseif MyLevel >= 2475 and MyLevel <= 2524 then
            Mon = "Island Boy"
            LevelQuest = 2
            NameQuest = "TikiQuest1"
            NameMon = "Island Boy"
            CFrameQuest = CFrame.new(-16547.748046875, 61.13533401489258, -173.41360473632812)
            CFrameMon = CFrame.new(-16901.26171875, 84.06756591796875, -192.88906860351562)
        elseif MyLevel >= 2525 and MyLevel <= 2550 then
            Mon = "Isle Champion"
            LevelQuest = 2
            NameQuest = "TikiQuest2"
            NameMon = "Isle Champion"
            CFrameQuest = CFrame.new(-16539.078125, 55.68632888793945, 1051.5738525390625)
            CFrameMon = CFrame.new(-16641.6796875, 235.7825469970703, 1031.282958984375)
        elseif MyLevel >= 2550 and MyLevel <= 2574 then
            Mon = "Serpent Hunter"
            LevelQuest = 1
            NameQuest = "TikiQuest3"
            NameMon = "Serpent Hunter"
            CFrameQuest = CFrame.new(-16665.1914, 104.596405, 1579.69434, 0.951068401, -0, -0.308980465, 0, 1, -0, 0.308980465, 0, 0.951068401)
            CFrameMon = CFrame.new(-16521.0625, 106.09285, 1488.78467, 0.469467044, 0, 0.882950008, 0, 1, 0, -0.882950008, 0, 0.469467044)
        elseif MyLevel >= 2575 then
            Mon = "Skull Slayer"
            LevelQuest = 2
            NameQuest = "TikiQuest3"
            NameMon = "Skull Slayer"
            CFrameQuest = CFrame.new(-16665.1914, 104.596405, 1579.69434, 0.951068401, -0, -0.308980465, 0, 1, -0, 0.308980465, 0, 0.951068401)
            CFrameMon = CFrame.new(-16855.043, 122.457253, 1478.15308, -0.999392271, 0, -0.0348687991, 0, 1, 0, 0.0348687991, 0, -0.999392271)
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
        if _G.AutoAdvanceDungeon or _G.TrialDraco or _G.TrialDracoDoor or _G.v2race or _G.AutoCollectChest or _G.SoulReaper or _G.TeleportMirage or _G.Cake or _G.Ancient or _G.PullLever or _G.GreatTree or _G.Door or _G.Auto_DungeonMobAura or _G.AutoFarmChest or _G.Factoryy or _G.AutoFarmBossHallow or _G.AutoFarmSwanGlasses or _G.AutoLongSword or _G.AutoBlackSpikeycoat or _G.AutoElectricClaw or _G.AutoFarmGunMastery or _G.AutoHolyTorch or _G.FullyKoko or _G.Boss or _G.AutoTwinHooks or _G.AutoOpenSwanDoor or _G.AutoDragon_Trident or _G.AutoSaber or _G.NOCLIP or _G.AutoFarmFruitMastery or _G.AutoFarmGunMastery or _G.TweenIsland or _G.Auto_EvoRace or _G.AutoFarmAllMsBypassType or _G.AutoObservationv2 or _G.AutoMusketeerHat or _G.AutoEctoplasm or _G.AutoRengoku or _G.Auto_Rainbow_Haki or _G.AutoObservation or _G.AutoDarkDagger or _G.Safe_Mode or _G.MasteryFruit or _G.AutoBudySword or _G.AutoOderSword or _G.AutoBounty or _G.AutoAllBoss or _G.Auto_Bounty or _G.AutoSharkman or _G.Auto_Mastery_Fruit or _G.Auto_Mastery_Gun or _G.Auto_Dungeon or _G.Auto_Cavender or _G.Auto_Pole or _G.Auto_Kill_Ply or _G.Auto_Factory or _G.AutoSecondSea or _G.TpPlayer or _G.AutoBartilo or _G.Auto_DarkBoss or _G.GrabChest or _G.AutoFarmBounty or _G.Holy_Torch or _G.AutoFarm or _G.Clip or _G.AutoElitehunter or _G.AutoThirdSea or _G.Bone or _G.Autoheart or _G.Autodoughking or _G.AutoFarmMaterial or _G.AutoNevaSoulGuitar or _G.Auto_Dragon_Trident or _G.Autotushita or _G.d or _G.Autowaden or _G.Autogay or _G.Autopole or _G.Autosaw or _G.AutoObservationHakiV2 or _G.FarmRaid or AutoFarmChest or _G.AutoCarvender or _G.AutoTwinHook or AutoMobAura or _G.Tweenfruit or _G.AutoKai or _G.TeleportNPC or _G.Leather or _G.Auto_Wing or _G.Umm or _G.Makori_gay or Radioactive or Fish or Gunpowder or Dragon_Scale or Cocoafarm or Scrap or MiniHee or _G.AutoFarmSeabaest or _G.CDK or _G.AutoFarmMob or _G.AutoMysticIsland or _G.AutoFarmDungeon or _G.AutoRaidPirate or _G.AutoQuestRace or _G.TweenMGear or getgenv().AutoFarm or _G.AutoPlayerHunter or _G.Factoryy or Grab_Chest or _G.Namfon or _G.AutoSwordMastery or _G.AutoSeaBest or _G.KillTriall or _G.Auto_Saber or _G.Position_Spawn or _G.DefendVolcano or _G.KillGolem or _G.TpPrehistoric or _G.TpSpy or _G.Farmfast or _G.AutoRace or _G.TapKichHaiTac or Open_Color_Haki then
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
                if _G.AutoAdvanceDungeon or _G.TrialDraco or _G.TrialDracoDoor or _G.v2race or _G.AutoCollectChest or _G.SoulReaper or _G.TeleportMirage or _G.Cake or _G.Ancient or _G.PullLever or _G.GreatTree or _G.Door or _G.Auto_DungeonMobAura or _G.AutoFarmChest or _G.Factoryy or _G.AutoFarmBossHallow or _G.AutoFarmSwanGlasses or _G.AutoLongSword or _G.AutoBlackSpikeycoat or _G.AutoElectricClaw or _G.AutoFarmGunMastery or _G.AutoHolyTorch or _G.FullyKoko or _G.Boss or _G.AutoTwinHooks or _G.AutoOpenSwanDoor or _G.AutoDragon_Trident or _G.AutoSaber or _G.AutoFarmFruitMastery or _G.AutoFarmGunMastery or _G.TweenIsland or _G.Auto_EvoRace or _G.AutoFarmAllMsBypassType or _G.AutoObservationv2 or _G.AutoMusketeerHat or _G.AutoEctoplasm or _G.AutoRengoku or _G.Auto_Rainbow_Haki or _G.AutoObservation or _G.AutoDarkDagger or _G.Safe_Mode or _G.MasteryFruit or _G.AutoBudySword or _G.AutoOderSword or _G.AutoBounty or _G.AutoAllBoss or _G.Auto_Bounty or _G.AutoSharkman or _G.Auto_Mastery_Fruit or _G.Auto_Mastery_Gun or _G.Auto_Dungeon or _G.Auto_Cavender or _G.Auto_Pole or _G.Auto_Kill_Ply or _G.Auto_Factory or _G.AutoSecondSea or _G.TpPlayer or _G.AutoBartilo or _G.Auto_DarkBoss or _G.GrabChest or _G.AutoFarmBounty or _G.Holy_Torch or _G.AutoFarm or _G.Clip or FarmBoss or _G.AutoElitehunter or _G.AutoThirdSea or _G.Bone or _G.Autoheart or _G.Autodoughking or _G.AutoFarmMaterial or _G.AutoNevaSoulGuitar or _G.Auto_Dragon_Trident or _G.Autotushita or _G.d or _G.Autowaden or _G.Autogay or _G.Autopole or _G.Autosaw or _G.AutoObservationHakiV2 or _G.FarmRaid or AutoFarmChest or _G.AutoCarvender or _G.AutoTwinHook or AutoMobAura or _G.Tweenfruit or _G.TeleportNPC or _G.Leather or _G.Auto_Wing or _G.Umm or _G.Makori_gay or Radioactive or Fish or Gunpowder or Dragon_Scale or Cocoafarm or Scrap or MiniHee or _G.AutoFarmSeabaest or _G.CDK or _G.AutoFarmMob or _G.AutoMysticIsland or _G.AutoFarmDungeon or _G.AutoRaidPirate or _G.AutoQuestRace or _G.TweenMGear or getgenv().AutoFarm or _G.AutoPlayerHunter or _G.Factoryy or Grab_Chest or _G.Namfon or _G.AutoSwordMastery or _G.Auto_Seabest or _G.AutoSeaBest or _G.KillTriall or _G.Auto_Saber or _G.Position_Spawn or _G.Farmfast or _G.AutoRace or _G.TapKichHaiTac or Open_Color_Haki or _G.AutoTerrorshark or FarmShark or _G.farmpiranya or _G.Fish_Crew_Member or _G.StartSea or _G.AutoFindPrehistoric or _G.AutoFindFrozen or _G.AutoFindMystic or _G.Auto_Kill_Leviathan or _G.DefendVolcano or _G.KillGolem or _G.TpPrehistoric or _G.TpSpy or _G.bjirFishBoat or _G.KillGhostShip or _G.TpLeviathan or _G.AutoFKitsune == true then
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
                if _G.AutoAdvanceDungeon or _G.TrialDraco or _G.TrialDracoDoor or _G.v2race or _G.AutoCollectChest or _G.SoulReaper or _G.TeleportMirage or _G.Cake or _G.Ancient or _G.PullLever or _G.GreatTree or _G.Door or _G.Auto_DungeonMobAura or _G.AutoFarmChest or _G.Factoryy or _G.AutoFarmBossHallow or _G.AutoFarmSwanGlasses or _G.AutoLongSword or _G.AutoBlackSpikeycoat or _G.AutoElectricClaw or _G.AutoFarmGunMastery or _G.AutoHolyTorch or _G.FullyKoko or _G.Boss or _G.AutoTwinHooks or _G.AutoOpenSwanDoor or _G.AutoDragon_Trident or _G.AutoSaber or _G.NOCLIP or _G.AutoFarmFruitMastery or _G.AutoFarmGunMastery or _G.TweenIsland or _G.Auto_EvoRace or _G.AutoFarmAllMsBypassType or _G.AutoObservationv2 or _G.AutoMusketeerHat or _G.AutoEctoplasm or _G.AutoRengoku or _G.Auto_Rainbow_Haki or _G.AutoObservation or _G.AutoDarkDagger or _G.Safe_Mode or _G.MasteryFruit or _G.AutoBudySword or _G.AutoOderSword or _G.AutoBounty or _G.AutoAllBoss or _G.Auto_Bounty or _G.AutoSharkman or _G.Auto_Mastery_Fruit or _G.Auto_Mastery_Gun or _G.Auto_Dungeon or _G.Auto_Cavender or _G.Auto_Pole or _G.Auto_Kill_Ply or _G.Auto_Factory or _G.AutoSecondSea or _G.TpPlayer or _G.AutoBartilo or _G.Auto_DarkBoss or _G.GrabChest or _G.AutoFarmBounty or _G.Holy_Torch or _G.AutoFarm or _G.Clip or _G.AutoElitehunter or _G.AutoThirdSea or _G.Bone or _G.Autoheart or _G.Autodoughking or _G.AutoFarmMaterial or _G.AutoNevaSoulGuitar or _G.Auto_Dragon_Trident or _G.Autotushita or _G.Autowaden or _G.Autogay or _G.Autopole or _G.Autosaw or _G.AutoObservationHakiV2 or _G.FarmRaid or _G.AutoCarvender or _G.AutoTwinHook or AutoMobAura or _G.Tweenfruit or _G.TeleportNPC or _G.AutoKai or _G.Leather or _G.Auto_Wing or _G.Umm or _G.Makori_gay or Radioactive or Fish or Gunpowder or Dragon_Scale or Cocoafarm or Scrap or MiniHee or _G.AutoFarmSeabaest or _G.CDK or _G.AutoFarmMob or _G.AutoMysticIsland or _G.AutoFarmDungeon or _G.AutoRaidPirate or _G.AutoQuestRace or _G.TweenMGear or getgenv().AutoFarm or _G.AutoPlayerHunter or _G.Factoryy or _G.Namfon or _G.AutoSwordMastery or _G.Auto_Seabest or _G.AutoSeaBest or _G.KillTriall or _G.Auto_Saber or _G.Position_Spawn or _G.TPB or _G.Farmfast or _G.AutoRace or _G.TapKichHaiTac or Open_Color_Haki or _G.AutoTerrorshark or FarmShark or _G.farmpiranya or _G.Fish_Crew_Member or _G.StartSea or _G.AutoFindPrehistoric or _G.AutoFindFrozen or _G.AutoFindMystic or _G.Auto_Kill_Leviathan or _G.DefendVolcano or _G.KillGolem or _G.TpPrehistoric or _G.TpSpy or _G.TpLeviathan or _G.AutoFKitsune == true then
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
                if _G.AutoAdvanceDungeon or _G.TrialDraco or _G.TrialDracoDoor or _G.v2race or _G.AutoCollectChest or _G.SoulReaper or _G.TeleportMirage or _G.Cake or _G.Ancient or _G.PullLever or _G.GreatTree or _G.Door or _G.Auto_DungeonMobAura or _G.AutoFarmChest or _G.Factoryy or _G.AutoFarmBossHallow or _G.AutoFarmSwanGlasses or _G.AutoLongSword or _G.AutoBlackSpikeycoat or _G.AutoElectricClaw or _G.AutoFarmGunMastery or _G.AutoHolyTorch or _G.FullyKoko or _G.Boss or _G.AutoTwinHooks or _G.AutoOpenSwanDoor or _G.AutoDragon_Trident or _G.AutoSaber or _G.AutoFarmFruitMastery or _G.AutoFarmGunMastery or _G.TweenIsland or _G.Auto_EvoRace or _G.AutoFarmAllMsBypassType or _G.AutoObservationv2 or _G.AutoMusketeerHat or _G.AutoEctoplasm or _G.AutoRengoku or _G.Auto_Rainbow_Haki or _G.AutoObservation or _G.AutoDarkDagger or _G.Safe_Mode or _G.MasteryFruit or _G.AutoBudySword or _G.AutoOderSword or _G.AutoBounty or _G.AutoAllBoss or _G.Auto_Bounty or _G.AutoSharkman or _G.Auto_Mastery_Fruit or _G.Auto_Mastery_Gun or _G.Auto_Dungeon or _G.Auto_Cavender or _G.Auto_Pole or _G.Auto_Kill_Ply or _G.Auto_Factory or _G.AutoSecondSea or _G.TpPlayer or _G.AutoBartilo or _G.Auto_DarkBoss or _G.GrabChest or _G.AutoFarmBounty or _G.Holy_Torch or _G.AutoFarm or _G.Clip or FarmBoss or _G.AutoElitehunter or _G.AutoThirdSea or _G.Bone or _G.Autoheart or _G.Autodoughking or _G.AutoFarmMaterial or _G.AutoNevaSoulGuitar or _G.Auto_Dragon_Trident or _G.Autotushita or _G.d or _G.Autowaden or _G.Autogay or _G.Autopole or _G.Autosaw or _G.AutoObservationHakiV2 or _G.FarmRaid or AutoFarmChest or _G.AutoCarvender or _G.AutoTwinHook or AutoMobAura or _G.Tweenfruit or _G.TeleportNPC or _G.Leather or _G.Auto_Wing or _G.Umm or _G.Makori_gay or Radioactive or Fish or Gunpowder or Dragon_Scale or Cocoafarm or Scrap or MiniHee or _G.AutoFarmSeabaest or _G.CDK or _G.AutoFarmMob or _G.AutoMysticIsland or _G.AutoFarmDungeon or _G.AutoRaidPirate or _G.AutoQuestRace or _G.TweenMGear or getgenv().AutoFarm or _G.AutoPlayerHunter or _G.Factoryy or Grab_Chest or _G.Namfon or _G.AutoSwordMastery or _G.Auto_Seabest or _G.AutoSeaBest or _G.KillTriall or _G.Auto_Saber or _G.Position_Spawn or _G.Farmfast or _G.AutoRace or _G.TapKichHaiTac or _G.AutoTushitaSword or Open_Color_Haki or _G.AutoTerrorshark or FarmShark or _G.farmpiranya or _G.Fish_Crew_Member or _G.StartSea or _G.AutoFindPrehistoric or _G.AutoFindFrozen or _G.AutoFindMystic or _G.Auto_Kill_Leviathan or _G.DefendVolcano or _G.KillGolem or _G.TpPrehistoric or _G.TpSpy or _G.bjirFishBoat or _G.TpLeviathan or _G.KillGhostShip == true then
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
            if _G.Cake or _G.AutoCollectChest or _G.SoulReaper or _G.Ancient or _G.PullLever or _G.GreatTree or _G.Door or _G.Auto_DungeonMobAura or _G.AutoFarmChest or _G.AutoFarmBossHallow or _G.Factoryy or _G.AutoFarmSwanGlasses or _G.AutoLongSword or _G.AutoBlackSpikeycoat or _G.AutoElectricClaw or _G.AutoFarmGunMastery or _G.AutoHolyTorch or _G.FullyKoko or _G.Boss or _G.AutoTwinHooks or _G.AutoOpenSwanDoor or _G.AutoDragon_Trident or _G.AutoSaber or _G.NOCLIP or _G.AutoFarmFruitMastery or _G.AutoFarmGunMastery or _G.TweenIsland or _G.Auto_EvoRace or _G.AutoFarmAllMsBypassType or _G.AutoObservationv2 or _G.AutoMusketeerHat or _G.AutoEctoplasm or _G.AutoRengoku or _G.Auto_Rainbow_Haki or _G.AutoObservation or _G.AutoDarkDagger or _G.Safe_Mode or _G.MasteryFruit or _G.AutoBudySword or _G.AutoOderSword or _G.AutoAllBoss or _G.Auto_Bounty or _G.AutoSharkman or _G.Auto_Mastery_Fruit or _G.Auto_Mastery_Gun or _G.Auto_Dungeon or _G.Auto_Cavender or _G.Auto_Pole or _G.Auto_Kill_Ply or _G.Auto_Factory or _G.AutoSecondSea or _G.TpPlayer or _G.AutoBartilo or _G.Auto_DarkBoss or _G.AutoFarm or _G.Clip or _G.AutoElitehunter or _G.AutoThirdSea or _G.Bone or _G.Autoheart or _G.Autodoughking or _G.d or _G.Autowaden or _G.Autogay or _G.AutoObservationHakiV2 or _G.AutoFarmMaterial or _G.FarmRaid or _G.AutoCarvender or _G.AutoTwinHook or AutoMobAura or _G.Leather or _G.Auto_Wing or _G.Umm or _G.Makori_gay or Radioactive or Fish or Gunpowder or Dragon_Scale or Cocoafarm or Scrap or MiniHee or _G.AutoFarmSeabaest or _G.CDK or _G.AutoFarmMob or _G.AutoRaidPirate or getgenv().AutoFarm or _G.AutoPlayerHunter or _G.Factoryy or _G.AttackDummy or _G.AutoSwordMastery or _G.Auto_Seabest or _G.AutoSeaBest or _G.KillTriall or _G.Auto_Saber or _G.Farmfast or _G.TapKichHaiTac or _G.AutoTerrorshark or FarmShark or _G.farmpiranya or _G.Fish_Crew_Member or _G.bjirFishBoat or _G.KillGhostShip == true then
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

local Fluent = loadstring(game:HttpGet("https://github.com/dawid-scripts/Fluent/releases/latest/download/main.lua"))()
    
local Window = Library:CreateWindow({
	Title = "Blue X Hub",
	Icon = 86347236611912
})

local foldername = "Blue X Hub Script Blox Fruits"
local filename = "BloxFruit_" .. game.Players.LocalPlayer.Name .. "_Config.json"
local filepath = foldername .. "/" .. filename

_G.Settings = _G.Settings or {
    FastFruit = "Blade";
    EnableFastFruit = false;
    Weapon = "Melee";
    FastAttack = true;
    BringMob = true;
    BypassTP = false;
    AutoHaki = true;
    Active = false;
    ActiveRaceV = false;
    HopAfter = false;
    HopAdminJoin = true;
    Rejoin = true;
    Effect = true;
    Sound = false;
    Notifi = false;
    StartFarmNek = false;
    StartBoneNek = false;
    StartCakeNek = false;
    SBoss = "Cake Queen";
    Boss = false;
    Elite = false;
    SoulFully = false;
    Law = false;
    RanBone = false;
    Pray = false;
    Try = false;
    ChestT = false;
    HopChest = false;
    Stop = true;
    Haki = false;
    HakiHop = false;
    Saber = false;
    TridentDra = false;
    CDK = false;
    FindPre = false;
    FixVol = false;
    KillGolem = false;
    CollectBone = false;
    CollectEgg = false;
    UseM = true;
    UseS = true;
    UseG = false;
    Rock = true;
    BerryCollect = false;
    BerryEsp = false;
    StartSeaa = false;
    Shark = false;
    Piran = false;
    Terror = false;
    Fish = false;
    Boat = false;
    GhostBoat = false;
    SelectBoatLevi = "Beast Hunter";
    FindLe = false;
    Drivee = "Tiki";
    BoatD = false;
    FindMirage = false;
    TpMirage = false;
    Look = false;
    DoorDraco = false;
    DracoV = false;
    RaceV = false;
    CompleteRace = false;
    KillTrial = false;
    Train = false;
    BuyGear = false;
    BuyChip = false;
    StartRaid = false;
    AttackRaid = false;
    Awa = false;
    GetFruitM = false;
    RanFruit = false;
    Store = false;
    CollectFruit = false;
    HopFruits = false;
    Factory = false;
    Piraid = false;
    Tpp = false;
    Water = true;
    Rain = false;
    TrainD = false;
    BuyGearD = false;
    Doors = false;
    Tree = false;
    Lever = false;
    One = false;
    Fogg = false;
    TpVolcanic = false;
    TpFrozen = false;
    AutoJob = false;
    Aimbot = false;
    DodgeNo = false;
    InfEn = false;
    InfNhayCao = false;
    InfSoru = false;
}

function SaveSettings()
    local HttpService = game:GetService("HttpService")
    local json = HttpService:JSONEncode(_G.Settings)

    if writefile then
        if not isfolder(foldername) then
            makefolder(foldername)
        end
        writefile(filepath, json)
    end
end

function loadSettings()
    local HttpService = game:GetService("HttpService")

    if isfile(filepath) then
        local success, data = pcall(function()
            return HttpService:JSONDecode(readfile(filepath))
        end)

        if success and type(data) == "table" then
            for k, v in pairs(data) do
                _G.Settings[k] = v
            end
        end
    end
end

loadSettings()

local Tab1 = Window:CreateTab({
	Title = "General",
	Icon = "home"
})

local F = Tab1:CreateSection({
	Title = "Auto Farm",
	Side = "Left"
})

F:CreateButton({
	Title = "Copy Link Discord",
	Callback = function()
		setclipboard("https://discord.gg/yqaMxpYJy8")
	end})

F:CreateToggle({
	Title = "Auto Farm Level",
	Value = _G.Settings.StartFarmNek,
	Callback = function(value)
		_G.AutoFarm = value
		_G.Settings.StartFarmNek = value
		SaveSettings()
		StopTween(_G.AutoFarm)
end})

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
        end
    end)
    
F:CreateToggle({
	Title = "Auto Farm Bone",
	Value = _G.Settings.StartBoneNek,
	Callback = function(value)
		_G.Bone = value
		_G.Settings.StartBoneNek = value
		SaveSettings()
		StopTween(_G.Bone)
end})

local Bone = {
    ["Reborn Skeleton"] = CFrame.new(-8724.32227, 139.552002, 5959.23291, 0, 0, 1, 0, 1, -0, -1, 0, 0),
    ["Living Zombie"] = CFrame.new(-10283.6777, 138.796997, 5999.02295, 0.382687271, 0, 0.923877954, 0, 1, 0, -0.923877954, 0, 0.382687271),
    ["Demonic Soul"] = CFrame.new(-9517.19629, 172.223343, 6078.43848, -0.177305937, 0.157681227, -0.971441805, 0.0574468896, 0.987056494, 0.149730653, 0.982477725, -0.0292581618, -0.184069276),
    ["Posessed Mummy"] = CFrame.new(-9517.19629, 172.223343, 6078.43848, -0.177305937, 0.157681227, -0.971441805, 0.0574468896, 0.987056494, 0.149730653, 0.982477725, -0.0292581618, -0.184069276)
}
spawn(function()
    while task.wait(0.2) do
        if BonesBring then
            pcall(function()
                for _, v in ipairs(game.Workspace.Enemies:GetChildren()) do
                    if Bone[v.Name] and v:FindFirstChild("HumanoidRootPart") and v:FindFirstChild("Humanoid") then
                        v.HumanoidRootPart.CFrame = Bone[v.Name]
                        v.Head.CanCollide = false
                        v.Humanoid.Sit = false
                        v.Humanoid:ChangeState(11)
                        task.wait(0.1)
                        v.Humanoid:ChangeState(14)
                        v.HumanoidRootPart.CanCollide = false
                        v.Humanoid.JumpPower = 0
                        v.Humanoid.WalkSpeed = 0
                        local animator = v.Humanoid:FindFirstChild("Animator")
                        if animator then
                            animator:Destroy()
                        end
                        sethiddenproperty(game.Players.LocalPlayer, "SimulationRadius", math.huge)
                    end
                end
            end)
        end
    end
end)
BonePos = CFrame.new(-9506.234375, 172.130615234375, 6117.0771484375)
spawn(function()
    while wait(0.1) do
        if _G.Bone and World3 then
            pcall(function()
                local enemies = game:GetService("Workspace").Enemies:GetChildren()
                local foundEnemy = false
                for _, v in pairs(enemies) do
                    if v.Name == "Reborn Skeleton" or v.Name == "Living Zombie" or v.Name == "Demonic Soul" or v.Name == "Posessed Mummy" then
                        if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
                            foundEnemy = true
                            repeat wait(0.1)
                                AutoHaki()
                                EquipWeapon(_G.SelectWeapon)
                                v.HumanoidRootPart.CanCollide = false
                                v.Humanoid.WalkSpeed = 0
                                v.Head.CanCollide = false
                                BonesBring = true
                                topos(v.HumanoidRootPart.CFrame * Pos)
                            until not _G.Bone or not v.Parent or v.Humanoid.Health <= 0
                        end
                    end
                end                
                if not foundEnemy then
                    if BypassTP then
                        local playerPos = game.Players.LocalPlayer.Character.HumanoidRootPart.Position
                        if (playerPos - BonePos.Position).Magnitude > 1500 then
                            BTP(BonePos)
                        else
                            topos(BonePos)
                        end
                    else
                        topos(BonePos)
                    end
                    UnEquipWeapon(_G.SelectWeapon)
                    BonesBring = false
                    topos(CFrame.new(-9515, 164, 5786))                    
                    for _, v in pairs(game:GetService("ReplicatedStorage"):GetChildren()) do
                        if v.Name == "Reborn Skeleton" or v.Name == "Living Zombie" or v.Name == "Demonic Soul" or v.Name == "Posessed Mummy" then
                            topos(v.HumanoidRootPart.CFrame * CFrame.new(2, 20, 2))
                        end
                    end
                end
            end)
        end
    end
end)

F:CreateToggle({
	Title = "Auto Random Bone",
	Value = _G.Settings.RanBone,
	Callback = function(value)
		_G.Auto_Random_Bone = value
		_G.Settings.RanBone = value
		SaveSettings()
end})

spawn(function()
        pcall(function()
            while wait(.1) do
                if _G.Auto_Random_Bone then    
                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Bones","Buy",1,1)
                end
            end
        end)
    end)
    
F:CreateToggle({
	Title = "Auto Farm Cake Prince",
	Value = _G.Settings.StartCakeNek,
	Callback = function(value)
		_G.Cake = value
		_G.Settings.StartCakeNek = value
		SaveSettings()
		StopTween(_G.Cake)
end})

local Cake = {
    ["Cookie Crafter"] = CFrame.new(-2270.52905, 52.9949951, -12159.9785, -0.0449341536, -0.25486812, 0.965931237, -0.984802127, 0.173679709, 1.46925449e-05, -0.167766392, -0.951250553, -0.258798838),
    ["Cake Guard"] = CFrame.new(-1584.46899, 38.7230072, -12309.4844, 0.258864343, -0, -0.965913713, 0, 1, -0, 0.965913713, 0, 0.258864343),
    ["Baking Staff"] = CFrame.new(-1814.54797, 48.6410065, -12884.6904, -0.258864403, 0, 0.965913713, 0, 1, 0, -0.965913713, 0, -0.258864403),
    ["Head Baker"] = CFrame.new(-2248.06299, 49.2669983, -12945.7383, -0.707134247, 0, -0.707079291, 0, 1, 0, 0.707079291, 0, -0.707134247)
}
spawn(function()
    while task.wait(0.2) do
        if CakeBring then
            pcall(function()
                for _, v in pairs(game.Workspace.Enemies:GetChildren()) do
                    if Cake[v.Name] then
                        local targetCFrame = Cake[v.Name]
                        if targetCFrame then
                            v.HumanoidRootPart.CFrame = targetCFrame
                        end
                        v.Head.CanCollide = false
                        v.Humanoid.Sit = false
                        v.Humanoid:ChangeState(11)
                        task.wait(0.1)
                        v.Humanoid:ChangeState(14)
                        v.HumanoidRootPart.CanCollide = false
                        v.Humanoid.JumpPower = 0
                        v.Humanoid.WalkSpeed = 0
                        if v.Humanoid:FindFirstChild('Animator') then
                            v.Humanoid.Animator:Destroy()
                        end
                        sethiddenproperty(game.Players.LocalPlayer, "SimulationRadius", math.huge)
                    end
                end
            end)
        end
    end
end)
spawn(function()
    while task.wait(0.1) do
        if _G.Cake and World3 then
            pcall(function()
                game.ReplicatedStorage.Remotes.CommF_:InvokeServer("CakePrinceSpawner")                
                if game.ReplicatedStorage:FindFirstChild("Cake Prince") or game:GetService("Workspace").Enemies:FindFirstChild("Cake Prince") then
                    if game:GetService("Workspace").Enemies:FindFirstChild("Cake Prince") then
                        for _, v in pairs(game.Workspace.Enemies:GetChildren()) do
                            if _G.Cake and v.Name == "Cake Prince" 
                                and v:FindFirstChild("HumanoidRootPart") 
                                and v:FindFirstChild("Humanoid") 
                                and v.Humanoid.Health > 0 then                                
                                repeat 
                                    game:GetService("RunService").Heartbeat:wait()
                                    AutoHaki()
                                    EquipWeapon(_G.SelectWeapon)
                                    v.HumanoidRootPart.CanCollide = false
                                    v.Humanoid.WalkSpeed = 0
                                    v.HumanoidRootPart.Size = Vector3.new(60, 60, 60)
                                    topos(v.HumanoidRootPart.CFrame * Pos)
                                until not _G.Cake or not v.Parent or v.Humanoid.Health <= 0
                            end
                        end
                    else
                        if game:GetService("Workspace").Map.CakeLoaf.BigMirror.Other.Transparency == 0 
                            and (CFrame.new(-1990.672607421875, 4532.99951171875, -14973.6748046875).Position 
                            - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude >= 2000 then                            
                            topos(CFrame.new(-2151.82153, 149.315704, -12404.9053))
                        end
                    end
                else
                    if game:GetService("Workspace").Enemies:FindFirstChild("Cookie Crafter") 
                        or game:GetService("Workspace").Enemies:FindFirstChild("Cake Guard") 
                        or game:GetService("Workspace").Enemies:FindFirstChild("Baking Staff") 
                        or game:GetService("Workspace").Enemies:FindFirstChild("Head Baker") then                        
                        for _, v in pairs(game.Workspace.Enemies:GetChildren()) do
                            if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
                                if (v.Name == "Cookie Crafter" or v.Name == "Cake Guard" 
                                    or v.Name == "Baking Staff" or v.Name == "Head Baker") 
                                    and v:FindFirstChild("HumanoidRootPart") 
                                    and v:FindFirstChild("Humanoid") 
                                    and v.Humanoid.Health > 0 then                                    
                                    repeat 
                                        game:GetService("RunService").Heartbeat:wait()
                                        AutoHaki()
                                        EquipWeapon(_G.SelectWeapon)
                                        v.HumanoidRootPart.CanCollide = false
                                        v.Humanoid.WalkSpeed = 0
                                        v.Head.CanCollide = false
                                        topos(v.HumanoidRootPart.CFrame * Pos)
                                        CakeBring = true
                                    until not _G.Cake or not v.Parent or v.Humanoid.Health <= 0
                                end
                            end
                        end
                    else
                        local CakePos = CFrame.new(-2077, 252, -12373)
                        if BypassTP then
                            BTP(CakePos)
                        else
                            topos(CakePos)
                        end
                    end
                end
            end)
        end
    end
end)

F:CreateToggle({
    Title = "Auto Spawn Cake Prince",
    Value = true,
    Callback = function(value)
        if value then
            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CakePrinceSpawner")
        end
    end
})

local Misc = Tab1:CreateSection({
	Title = "Farm Mastery",
	Side = "Left"
})

local Dojo = Tab1:CreateSection({
	Title = "Dojo",
	Side = "Left"
})

function CraftVolcanicMagnet()
    local args = {"CraftItem", "Craft", "Volcanic Magnet"}
    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
end

Dojo:CreateButton({
	Title = "Craft Volcanic Magnet",
	Callback = function()
		CraftVolcanicMagnet()
	end})
	
local Fsea = Tab1:CreateSection({
	Title = "Farm Sea",
	Side = "Left"
})

Fsea:CreateToggle({
	Title = "Auto Farm Factory",
	Value = _G.Settings.Factory,
	Callback = function(value)
		_G.Factoryy = value
		_G.Settings.Factory = value
		SaveSettings()
		StopTween(_G.Factoryy)
end})

spawn(function()
            while wait() do
                pcall(function()
                    if _G.Factoryy then
                        if game:GetService("Workspace").Enemies:FindFirstChild("Core") then
                            for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                                if v.Name == "Core" and v.Humanoid.Health > 0 then
                                    repeat task.wait()
                                        AutoHaki()         
                                        EquipWeapon(_G.SelectWeapon)           
                                        topos(CFrame.new(448.46756, 199.356781, -441.389252))                                  
                                        game:GetService("VirtualUser"):CaptureController()
                                        game:GetService("VirtualUser"):Button1Down(Vector2.new(1280,672))
                                    until v.Humanoid.Health <= 0 or _G.Factoryy == false
                                end
                            end
                        else
                            topos(CFrame.new(448.46756, 199.356781, -441.389252))
                        end
                    end
                end)
            end
        end)
        
Fsea:CreateToggle({
	Title = "Auto Farm Pirates Raid",
	Value = _G.Settings.Piraid,
	Callback = function(value)
		_G.TapKichHaiTac = value
		_G.Settings.Piraid = value
		SaveSettings()
		StopTween(_G.TapKichHaiTac)
end})

task.spawn(function()
    local maxDist = 1000
    local targetPos = Vector3.new(-5508.47998, 324.688995, -2995.97607)
    local vu = game:GetService("VirtualUser")

    while task.wait(0.1) do
        if not _G.TapKichHaiTac then
            task.wait(0.5)
            continue
        end

        local player = game.Players.LocalPlayer
        local char = player.Character
        if not char or not char:FindFirstChild("HumanoidRootPart") then
            task.wait(0.5)
            continue
        end

        local hrp = char.HumanoidRootPart
        if (hrp.Position - targetPos).Magnitude > 5 then
            topos(CFrame.new(targetPos))
        end

        local found = false
        for _, enemy in ipairs(game.Workspace.Enemies:GetChildren()) do
            local hum = enemy:FindFirstChild("Humanoid")
            local root = enemy:FindFirstChild("HumanoidRootPart")
            if hum and root and hum.Health > 0 and (root.Position - targetPos).Magnitude <= maxDist then
                found = true
                repeat task.wait(0.1)
                    EquipWeapon(_G.SelectWeapon)
                    if not char:FindFirstChild("HasBuso") then
                        game.ReplicatedStorage.Remotes.CommF_:InvokeServer("Buso")
                    end
                    topos(root.CFrame)
                    root.CanCollide = false
                    root.Size = Vector3.new(60, 60, 60)
                    PosMon = root.CFrame

                    vu:CaptureController()
                    vu:SetKeyDown("0x57")
                    vu:Button1Down(Vector2.new(0, 0), game.Workspace.CurrentCamera.CFrame)
                until not _G.TapKichHaiTac or not enemy.Parent or hum.Health <= 0

                vu:SetKeyUp("0x57")
            end
        end
    end
end)

local Boss = Tab1:CreateSection({
	Title = "Boss",
	Side = "Left"
})
 
if World1 then
    tableBoss = {
        "The Gorilla King", "Bobby", "Yeti", "Mob Leader", "Vice Admiral", 
        "Warden", "Chief Warden", "Swan", "Magma Admiral", "Fishman Lord", 
        "Wysper", "Thunder God", "Cyborg", "Saber Expert"
    }
elseif World2 then
    tableBoss = {
        "Diamond", "Jeremy", "Fajita", "Don Swan", "Smoke Admiral", 
        "Cursed Captain", "Darkbeard", "Order", "Awakened Ice Admiral", "Tide Keeper"
    }
elseif World3 then
    tableBoss = {
        "Stone", "Hydra Leader", "Kilo Admiral", "Captain Elephant", 
        "Beautiful Pirate", "rip_indra true form", "Longma", "Soul Reaper", 
        "Cake Queen", "Cake Prince", "Dough King"
    }
end   
Boss:CreateDropdown({
	Title = "Select Boss",
	List = tableBoss,
	Multi = false,
	Value = _G.Settings.SBoss,
	Callback = function(value)
		SelectBoss = value
		_G.Settings.SBoss = value
		SaveSettings()
end})

Boss:CreateToggle({
	Title = "Auto Farm Boss",
	Value = _G.Settings.Boss,
	Callback = function(value)
		_G.Boss = value
		_G.Settings.Boss = value
		SaveSettings()
		StopTween(_G.Boss)
end})

spawn(function()
    while task.wait(0.2) do
        if _G.Boss and BypassTP then
            pcall(function()
                local workspaceEnemies = game:GetService("Workspace").Enemies
                local selectBoss = SelectBoss
                local selectWeapon = _G.SelectWeapon
                local playerRoot = game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart")
                local boss = workspaceEnemies:FindFirstChild(selectBoss)
                if boss then
                    for _, v in pairs(workspaceEnemies:GetChildren()) do
                        if v.Name == selectBoss and v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") then
                            local humanoid = v.Humanoid
                            local humanoidRootPart = v.HumanoidRootPart
                            if humanoid.Health > 0 then
                                repeat
                                    task.wait()
                                    AutoHaki()
                                    EquipWeapon(_G.SelectWeapon)
                                    if humanoidRootPart.CanCollide then
                                        humanoidRootPart.CanCollide = false
                                    end
                                    if humanoid.WalkSpeed ~= 0 then
                                        humanoid.WalkSpeed = 0
                                    end
                                    if humanoidRootPart.Size ~= Vector3.new(80, 80, 80) then
                                        humanoidRootPart.Size = Vector3.new(80, 80, 80)
                                    end
                                    topos(humanoidRootPart.CFrame * Pos)
                                until not _G.Boss or not v.Parent or humanoid.Health <= 0
                            end
                        end
                    end
                elseif game.ReplicatedStorage:FindFirstChild(selectBoss) then
                    local bossReplicated = game.ReplicatedStorage:FindFirstChild(selectBoss)
                    local bossRoot = bossReplicated.HumanoidRootPart
                    if (bossRoot.CFrame.Position - playerRoot.Position).Magnitude <= 1500 then
                        topos(bossRoot.CFrame)
                    else
                        BTP(bossRoot.CFrame)
                    end
                end
            end)
        end
    end
end)
spawn(function()
    while task.wait(0.2) do
        if _G.Boss and not BypassTP then
            pcall(function()
                local workspaceEnemies = game:GetService("Workspace").Enemies
                local selectBoss = SelectBoss
                local selectWeapon = SelectWeapon
                local boss = workspaceEnemies:FindFirstChild(selectBoss)
                if boss then
                    for _, v in pairs(workspaceEnemies:GetChildren()) do
                        if v.Name == selectBoss and v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") then
                            local humanoid = v.Humanoid
                            local humanoidRootPart = v.HumanoidRootPart
                            if humanoid.Health > 0 then
                                repeat
                                    task.wait()
                                    AutoHaki()
                                    EquipWeapon(_G.SelectWeapon)
                                    if humanoidRootPart.CanCollide then
                                        humanoidRootPart.CanCollide = false
                                    end
                                    if humanoid.WalkSpeed ~= 0 then
                                        humanoid.WalkSpeed = 0
                                    end
                                    if humanoidRootPart.Size ~= Vector3.new(80, 80, 80) then
                                        humanoidRootPart.Size = Vector3.new(80, 80, 80)
                                    end
                                    topos(humanoidRootPart.CFrame * Pos)
                                until not _G.Boss or not v.Parent or humanoid.Health <= 0
                            end
                        end
                    end
                else
                    local replicatedBoss = game:GetService("ReplicatedStorage"):FindFirstChild(selectBoss)
                    if replicatedBoss then
                        topos(replicatedBoss.HumanoidRootPart.CFrame * CFrame.new(5, 10, 7))
                    end
                end
            end)
        end
    end
end)
     
Elite = Boss:CreateLabel({
    Title = "Status Elite Hunter: "
})

spawn(function()
    while wait(3) do
        pcall(function()
            local elite = "Status Elite Hunter:\n"
            if game:GetService("ReplicatedStorage"):FindFirstChild("Diablo") or 
               game:GetService("ReplicatedStorage"):FindFirstChild("Deandre") or 
               game:GetService("ReplicatedStorage"):FindFirstChild("Urban") or 
               game:GetService("Workspace").Enemies:FindFirstChild("Diablo") or 
               game:GetService("Workspace").Enemies:FindFirstChild("Deandre") or 
               game:GetService("Workspace").Enemies:FindFirstChild("Urban") then
                elite = elite .. "✅ Spawn"
            else
                elite = elite .. "❌ Not Spawn"
            end
            Elite:Set(elite)
        end)
    end
end)
       
Boss:CreateToggle({
	Title = "Auto Farm Elite Hunter",
	Value = _G.Settings.Elite,
	Callback = function(value)
		_G.AutoElitehunter = value
		_G.Settings.Elite = value
		SaveSettings()
		StopTween(_G.AutoElitehunter)
end})

spawn(function()
    while wait() do
        if _G.AutoElitehunter and World3 then
            pcall(function()
                local QuestGui = game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest
                local QuestTitle = QuestGui.Container.QuestTitle.Title.Text
                
                if not QuestGui.Visible then
                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("EliteHunter") 
                    wait(1) 
                else
                    if string.find(QuestTitle, "Diablo") or string.find(QuestTitle, "Deandre") or string.find(QuestTitle, "Urban") then
                        local Enemies = game:GetService("Workspace").Enemies
                        local Target = Enemies:FindFirstChild("Diablo") or Enemies:FindFirstChild("Deandre") or Enemies:FindFirstChild("Urban")

                        if Target and Target:FindFirstChild("Humanoid") and Target:FindFirstChild("HumanoidRootPart") and Target.Humanoid.Health > 0 then
                            repeat task.wait()
                                AutoHaki()
                                EquipWeapon(_G.SelectWeapon)
                                Target.HumanoidRootPart.CanCollide = false
                                Target.Humanoid.WalkSpeed = 0
                                Target.HumanoidRootPart.Size = Vector3.new(50,50,50)
                                topos(Target.HumanoidRootPart.CFrame * CFrame.new(0,20,0))
                                game:GetService("VirtualUser"):CaptureController()
                                game:GetService("VirtualUser"):Button1Down(Vector2.new(1280,672))
                                sethiddenproperty(game:GetService("Players").LocalPlayer, "SimulationRadius", math.huge)
                            until _G.AutoElitehunter == false or Target.Humanoid.Health <= 0 or not Target.Parent
                        else
                            local Replicated = game:GetService("ReplicatedStorage")
                            local StoredTarget = Replicated:FindFirstChild("Diablo") or Replicated:FindFirstChild("Deandre") or Replicated:FindFirstChild("Urban")
                            
                            if StoredTarget then
                                topos(StoredTarget.HumanoidRootPart.CFrame * CFrame.new(0,20,0))
                            elseif _G.AutoEliteHunterHop then
                                Hop()
                            end
                        end
                    end
                end
            end)
        end
    end
end)

local BFully = Tab1:CreateSection({
	Title = "Fully Boss",
	Side = "Left"
})

BFully:CreateToggle({
    Title = "Auto Farm Boss Law Koko [ Fully ]",
    Value = _G.Settings.Law,
    Callback = function(value)
        _G.FullyKoko = value
        _G.Settings.Law = value
        SaveSettings()
        StopTween(_G.FullyKoko)
    end
})

spawn(function()
    while task.wait() do
        if _G.FullyKoko then
            local function SummonBoss()
                local law = {
                    [1] = "BlackbeardReward",
                    [2] = "Microchip",
                    [3] = "2"
                }
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(law))

                task.wait(1)

                topos(CFrame.new(-6583.63818, 21.4980011, -4894.26221, 0.9510414, 0, 0.309063554, 0, 1, 0, -0.309063554, 0, 0.9510414))

                task.wait(1)

                local button = game:GetService("Workspace").Map.CircleIsland.RaidSummon.Button.Main.ClickDetector
                if button then
                    fireclickdetector(button)
                end

                task.wait(2)
            end

            local function KillBoss()
                while _G.FullyKoko do
                    task.wait()
                    pcall(function()
                        local enemies = game:GetService("Workspace").Enemies
                        local boss = enemies:FindFirstChild("Order")

                        if boss and boss:FindFirstChild("Humanoid") and boss:FindFirstChild("HumanoidRootPart") and boss.Humanoid.Health > 0 then
                            repeat
                                task.wait()
                                AutoHaki()
                                EquipWeapon(_G.SelectWeapon)
                                boss.HumanoidRootPart.CanCollide = false
                                boss.Humanoid.WalkSpeed = 0
                                boss.HumanoidRootPart.Size = Vector3.new(50, 50, 50)
                                topos(boss.HumanoidRootPart.CFrame * Pos)
                                sethiddenproperty(game.Players.LocalPlayer, "SimulationRadius", math.huge)
                            until not _G.FullyKoko or not boss.Parent or boss.Humanoid.Health <= 0
                        end
                    end)
                    if not game:GetService("Workspace").Enemies:FindFirstChild("Order") then
                        break
                    end
                end
            end

            while _G.FullyKoko do
                if game:GetService("Workspace").Enemies:FindFirstChild("Order") then
                    KillBoss()
                else
                    SummonBoss()
                end
            end
        end
    end
end)

local Berry = Tab1:CreateSection({
	Title = "Berry",
	Side = "Left"
})    

Berry:CreateLabel({
	Title = "Auto Collect Berry (Error)"
})

Berry:CreateToggle({
    Title = "ESP Berry",
    Value = _G.Settings.BerryEsp,
    Callback = function(value)
        _G.EspBerry = value
        _G.Settings.BerryEsp = value
        SaveSettings()
    end
})

local CollectionService = game:GetService("CollectionService")
local Players = game:GetService("Players")
local RunService = game:GetService("RunService")

local function createESP(bush, berryName)
    if not _G.EspBerry then return end

    local Billboard = Instance.new("BillboardGui")
    Billboard.Parent = bush.Parent
    Billboard.Adornee = bush.Parent
    Billboard.Size = UDim2.new(0, 200, 0, 50)
    Billboard.StudsOffset = Vector3.new(0, 3, 0)
    Billboard.AlwaysOnTop = true

    local TextLabel = Instance.new("TextLabel", Billboard)
    TextLabel.Size = UDim2.new(1, 0, 1, 0)
    TextLabel.BackgroundTransparency = 1
    TextLabel.TextColor3 = Color3.new(1, 1, 1)
    TextLabel.TextStrokeTransparency = 0.2
    TextLabel.Font = Enum.Font.GothamBold
    TextLabel.TextScaled = true
    TextLabel.Text = berryName

    local function updateESP()
        if not _G.EspBerry or not bush.Parent or not Players.LocalPlayer.Character then
            Billboard:Destroy()
            return
        end
        
        local player = Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart")
        local berry = bush.Parent:FindFirstChild("HumanoidRootPart")

        if player and berry then
            local distance = (berry.Position - player.Position).Magnitude
            TextLabel.Text = string.format("%s\n%.1f m", berryName, distance)
        end
    end

    RunService.RenderStepped:Connect(updateESP)
end

local function setupBerryESP()
    if not _G.EspBerry then return end
    for _, bush in pairs(CollectionService:GetTagged("BerryBush")) do
        for attributeName, berry in pairs(bush:GetAttributes()) do
            if not bush.Parent:FindFirstChildWhichIsA("BillboardGui") then
                createESP(bush, tostring(berry))
            end
        end
    end
end

local function clearBerryESP()
    for _, bush in pairs(CollectionService:GetTagged("BerryBush")) do
        if bush.Parent then
            for _, gui in pairs(bush.Parent:GetChildren()) do
                if gui:IsA("BillboardGui") then
                    gui:Destroy()
                end
            end
        end
    end
end

spawn(function()
    while wait(1) do
        if _G.EspBerry then
            setupBerryESP()
        else
            clearBerryESP()
        end
    end
end)

CollectionService:GetInstanceAddedSignal("BerryBush"):Connect(function()
    if _G.EspBerry then
        setupBerryESP()
    end
end)

local Mirage = Tab1:CreateSection({
	Title = "Mirage Island",
	Side = "Left"
})

Mystic = Mirage:CreateLabel({
	Title = "Status Mirage Island: "
})

spawn(function()
    while wait(3) do
        pcall(function()
            local mys = "Status Mirage Island:\n"
            if game.Workspace._WorldOrigin.Locations:FindFirstChild("Mirage Island") then
                mys = mys .. "✅ Spawn"
            else
                mys = mys .. "❌ Not Spawn"
            end
            Mystic:Set(mys)
        end)
    end
end)

Mirage:CreateToggle({
	Title = "Auto Find Mirage Island",
	Value = _G.Settings.FindMirage,
	Callback = function(value)
		_G.AutoFindMystic = value
		_G.Settings.FindMirage = value
		SaveSettings()
		StopTween(_G.AutoFindMystic)
end})

local seatHistory = {}
local Players = game:GetService("Players")
local RunService = game:GetService("RunService")
local VirtualInputManager = game:GetService("VirtualInputManager")
local Workspace = game:GetService("Workspace")
local SetSpeedBoat = 350  

RunService.RenderStepped:Connect(function()
    for boatName, seat in pairs(seatHistory) do
        if seat and seat.Parent and seat.Name == "VehicleSeat" and not seat.Occupant then
            seatHistory[boatName] = seat
        end
    end
end)

local function tpToMyBoat()
    for boatName, seat in pairs(seatHistory) do
        if seat and seat.Parent and seat.Name == "VehicleSeat" and not seat.Occupant then
            topos(seat.CFrame)
        end
    end
end

spawn(function()
    while wait() do
        pcall(function()
            if _G.AutoFindMystic then
                local LocalPlayer = game.Players.LocalPlayer
                local MyBoat = nil

                for _, boat in pairs(Workspace.Boats:GetChildren()) do
                    if boat.Name == "Guardian" and boat:FindFirstChild("Owner") and boat.Owner.Value == LocalPlayer then
                        MyBoat = boat
                        break
                    end
                end

                if not MyBoat then
                    buyb = TPP(CFrame.new(-17064.3008, 103.064011, 881.570007, 0.207885921, 0, 0.97815311, 0, 1, 0, -0.97815311, 0, 0.207885921))
                    if (LocalPlayer.Character.HumanoidRootPart.Position - Vector3.new(-17064.3008, 103.064011, 881.570007, 0.207885921, 0, 0.97815311, 0, 1, 0, -0.97815311, 0, 0.207885921)).Magnitude <= 10 then
                        if buyb then buyb:Stop() end
                        local args = {
                            [1] = "BuyBoat",
                            [2] = "Guardian"
                        }
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
                    end
                elseif MyBoat then
                    local seat = MyBoat:FindFirstChild("VehicleSeat")
                    if seat and LocalPlayer.Character:FindFirstChild("Humanoid").Sit == false then
                        TPP(seat.CFrame * CFrame.new(0,1,0))
                    end
                end
            end
        end)
    end
end)

local isTeleporting = false
local notified = false
RunService.RenderStepped:Connect(function()
    if not _G.AutoFindMystic then
        notified = false
        return
    end
    local player = Players.LocalPlayer
    local character = player.Character
    if not character or not character:FindFirstChild("Humanoid") then return end
    
    local function tpToMyBoat()
        if isTeleporting then return end
        isTeleporting = true
        for boatName, seat in pairs(seatHistory) do
            if seat and seat.Parent and seat.Name == "VehicleSeat" and not seat.Occupant then
                topos(seat.CFrame)
                break
            end
        end
        isTeleporting = false
    end
    
    local humanoid = character.Humanoid
    local boatFound = false
    local currentBoat = nil
    
    for _, b in pairs(Workspace.Boats:GetChildren()) do
        local seat = b:FindFirstChild("VehicleSeat")
        if seat and seat.Occupant == humanoid then
            boatFound = true
            currentBoat = seat
            seatHistory[b.Name] = seat
        elseif seat and seat.Occupant == nil then
            tpToMyBoat()
        end
    end

    if not boatFound then return end
    
    currentBoat.MaxSpeed = SetSpeedBoat
    currentBoat.CFrame = CFrame.new(Vector3.new(currentBoat.Position.X, currentBoat.Position.Y, currentBoat.Position.Z)) * currentBoat.CFrame.Rotation
    VirtualInputManager:SendKeyEvent(true, "W", false, game)

    for _, v in pairs(Workspace.Boats:GetDescendants()) do
        if v:IsA("BasePart") then v.CanCollide = false end
    end
    for _, v in pairs(character:GetDescendants()) do
        if v:IsA("BasePart") then v.CanCollide = false end
    end

    local islandsToDelete = { 
        "ShipwreckIsland", 
        "SandIsland", 
        "TreeIsland",
        "TinyIsland", 
        "PrehistoricIsland", 
        "KitsuneIsland", 
        "FrozenDimension" 
    }
    for _, islandName in ipairs(islandsToDelete) do
        local island = Workspace.Map:FindFirstChild(islandName)
        if island and island:IsA("Model") then
            island:Destroy()
        end
    end

    local mysticIsland = Workspace.Map:FindFirstChild("MysticIsland")
    if mysticIsland then
        VirtualInputManager:SendKeyEvent(false, "W", false, game)
        
        _G.AutoFindMystic = false
        Fluent:Notify({
            Title = "Notification",
            Content = "Mirage Island Spawn",
            Duration = 5
        })
        game.Players.LocalPlayer.Character.Humanoid.Sit = false
        _G.TeleportMirage = true

        if not notified then
            notified = true
        end
        return
    end
end)


Mirage:CreateToggle({
	Title = "Teleport Mirage Island",
	Value = _G.Settings.TpMirage,
	Callback = function(value)
		_G.TeleportMirage = value
		_G.Settings.TpMirage = value
		SaveSettings()
		StopTween(_G.TeleportMirage)
end})

spawn(function()
    pcall(function()
    while wait() do
        if _G.TeleportMirage then
            if game:GetService("Workspace").NPCs:FindFirstChild("Advanced Fruit Dealer") then
                topos(CFrame.new(game:GetService("Workspace").NPCs["Advanced Fruit Dealer"].HumanoidRootPart.Position))
                end
            end
        end
    end)
end)

Mirage:CreateToggle({
	Title = "Auto Look Moon",
	Value = _G.Settings.Look,
	Callback = function(value)
		_G.MoonLook = value
		_G.Settings.Look = value
		SaveSettings()
end})

function CamToMoon()
workspace.CurrentCamera.CFrame = CFrame.new(workspace.CurrentCamera.CFrame.Position,game:GetService("Lighting"):GetMoonDirection() + workspace.CurrentCamera.CFrame.Position)
end

spawn(function()
pcall(function()
while wait() do
if _G.MoonLook then
   CamToMoon()
end
end
end)
end)

local Chest = Tab1:CreateSection({
	Title = "Chest",
	Side = "Left"
})

Chest:CreateToggle({
	Title = "Auto Collect Chest",
	Value = _G.Settings.ChestT,
	Callback = function(value)
		_G.AutoCollectChest = value
		SaveSettings()
		StopTween(_G.AutoCollectChest)
end})

spawn(function()
    while wait() do
        if _G.AutoCollectChest then
            local Player = game:GetService("Players").LocalPlayer
            local Character = Player.Character or Player.CharacterAdded:Wait()
            local Position = Character:GetPivot().Position
            local CollectionService = game:GetService("CollectionService")
            local Chests = CollectionService:GetTagged("_ChestTagged") 
            local Distance, Nearest = math.huge
            local HasValidChest = false
            
            if _G.Settings.Stop and (
                Player.Backpack:FindFirstChild("Fist of Darkness") or Character:FindFirstChild("Fist of Darkness") or
                Player.Backpack:FindFirstChild("Sweet Chalice") or Character:FindFirstChild("Sweet Chalice") or
                Player.Backpack:FindFirstChild("God's Chalice") or Character:FindFirstChild("God's Chalice")
            ) then
                break
            end
            
            for i, Chest in ipairs(Chests) do
                local Magnitude = (Chest:GetPivot().Position - Position).Magnitude
                if not Chest:GetAttribute("IsDisabled") and Magnitude < Distance then
                    Distance, Nearest = Magnitude, Chest
                    HasValidChest = true
                end
            end
            
            if Nearest then
                local ChestPosition = Nearest:GetPivot().Position
                topos(CFrame.new(ChestPosition))
            elseif _G.ChestHop then
                Hop()
            end
        end
    end
end)

Chest:CreateToggle({
	Title = "Stop Lengendary Item",
	Value = _G.Settings.Stop,
	Callback = function(value)
		_G.Settings.Stop = value
		SaveSettings()
end})

Chest:CreateToggle({
	Title = "Hop Collect Chest",
	Value = _G.Settings.HopChest,
	Callback = function(value)
        if value and not _G.AutoCollectChest then
            Fluent:Notify({
                Title = "Notification",
                Content = "Pls Enable Auto Collect Chest",
                Duration = 8
            })
        end
        _G.ChestHop = value
        _G.Settings.HopChest = value
        SaveSettings()
    end
})

local S = Tab1:CreateSection({
	Title = "Setting",
	Side = "Right"
})

local WeaponFast = {"Blade-Blade","T-Rex-T-Rex","Gas-Gas","Yeti-Yeti","Kitsune-Kitsune","Dragon-Dragon"}

S:CreateDropdown({
	Title = "Select Fast Attack Fruits",
	List = WeaponFast,
	Multi = false,
	Value = _G.Settings.FastFruit,
	Callback = function(value)
		_G.FastFruits = value
		_G.Settings.FastFruit = value
		SaveSettings()
end})

S:CreateToggle({
	Title = "Enable Fast Attack Fruits",
	Value = _G.Settings.EnableFastFruit,
	Callback = function(value)
		_G.EnableFastFruit = value
		_G.Settings.EnableFastFruit = value
		SaveSettings()
end})

task.spawn(function()
    while true do
        if _G.EnableFastFruit then
            local player = game:GetService("Players").LocalPlayer
            local character = player.Character or player.CharacterAdded:Wait()
            local weapon = character:FindFirstChild(_G.FastFruits)

            if weapon then
                local function getNearestEnemy()
                    local enemiesFolder = game.Workspace:FindFirstChild("Enemies")
                    if not enemiesFolder then return nil end

                    local nearestEnemy = nil
                    local shortestDistance = math.huge
                    local playerPosition = character:FindFirstChild("HumanoidRootPart") and character.HumanoidRootPart.Position

                    if not playerPosition then return nil end

                    for _, enemy in ipairs(enemiesFolder:GetChildren()) do
                        if enemy:IsA("Model") and enemy:FindFirstChild("Humanoid") and enemy:FindFirstChild("HumanoidRootPart") then
                            local distance = (enemy.HumanoidRootPart.Position - playerPosition).Magnitude
                            if distance < shortestDistance then
                                shortestDistance = distance
                                nearestEnemy = enemy
                            end
                        end
                    end

                    return nearestEnemy
                end

                local targetEnemy = getNearestEnemy()
                if targetEnemy and weapon:FindFirstChild("LeftClickRemote") then
                    local args = {targetEnemy.HumanoidRootPart.Position * Vector3.new(1, 0, 1), 1} 
                    weapon.LeftClickRemote:FireServer(unpack(args))
                end
            end
        end
        task.wait(0.1) 
    end
end)

S:CreateDropdown({
	Title = "Select Weapon",
	List = {"Melee", "Sword", "Fruit", "Gun"},
	Multi = false,
	Value = _G.Settings.Weapon,
	Callback = function(value)
		_G.SelectWeapon = value
		_G.Settings.Weapon = value
		SaveSettings()
end})

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

S:CreateToggle({
	Title = "Fast Attack",
	Value = _G.Settings.FastAttack,
	Callback = function(value)
		_G.FastAttack = value
		_G.Settings.FastAttack = value
		SaveSettings()
end})

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
            task.wait(0.1)
        end
    end)
end

_G.FastAttack = true

spawn(function()
    if _G.FastAttack then
        repeat
            task.wait()
            AttackNoCoolDown()
        until not _G.FastAttack
    end
end)

S:CreateToggle({
	Title = "Bring Mob",
	Value = _G.Settings.BringMob,
	Callback = function(value)
		_G.GomQuai = value
		_G.Settings.BringMob = value
		SaveSettings()
end})

local RunService = game:GetService("RunService")
local Players = game:GetService("Players")
local Workspace = game:GetService("Workspace")
local LocalPlayer = Players.LocalPlayer
spawn(function()
    while task.wait(0.1) do
        pcall(function()
            CheckQuest()
            local enemies = Workspace.Enemies:GetChildren()
            local MonsterCount = 0
            for _, enemy in ipairs(enemies) do
                if MonsterCount >= 2 then
                    break
                end                
                if _G.GomQuai and enemy:FindFirstChild("Humanoid") and enemy:FindFirstChild("HumanoidRootPart") then
                    local humanoid = enemy:FindFirstChild("Humanoid")
                    local rootPart = enemy:FindFirstChild("HumanoidRootPart")
                    if humanoid and rootPart and LocalPlayer.Character and LocalPlayer.Character:FindFirstChild("HumanoidRootPart") then
                        local distance = (rootPart.Position - LocalPlayer.Character.HumanoidRootPart.Position).Magnitude
                        if StartMagnet and (enemy.Name == MonFarm or enemy.Name == Mon) and humanoid.Health > 0 and distance <= 350 then
                            if enemy.Name == "Factory Staff" and PosMon and (rootPart.Position - PosMon.Position).Magnitude <= 5000 then
                                if rootPart.Parent then
                                    rootPart.CanCollide = false
                                    rootPart.Size = Vector3.new(60, 60, 60)
                                    rootPart.CFrame = PosMon
                                    enemy.Head.CanCollide = false
                                    local animator = humanoid:FindFirstChild("Animator")
                                    if animator then
                                        pcall(function()
                                            animator:Destroy()
                                        end)
                                    end
                                    sethiddenproperty(LocalPlayer, "SimulationRadius", math.huge)
                                    MonsterCount = MonsterCount + 1
                                end
                            elseif (enemy.Name == MonFarm or enemy.Name == Mon) and PosMon and (rootPart.Position - PosMon.Position).Magnitude <= 4500 then
                                if rootPart.Parent then
                                    rootPart.CanCollide = false
                                    rootPart.Size = Vector3.new(60, 60, 60)
                                    rootPart.CFrame = PosMon
                                    enemy.Head.CanCollide = false
                                    local animator = humanoid:FindFirstChild("Animator")
                                    if animator then
                                        pcall(function()
                                            animator:Destroy()
                                        end)
                                    end
                                    sethiddenproperty(LocalPlayer, "SimulationRadius", math.huge)
                                    MonsterCount = MonsterCount + 1
                                end
                            end
                        end
                    end
                end
            end
        end)
    end
end)

S:CreateToggle({
	Title = "Bypass TP",
	Value = _G.Settings.BypassTP,
	Callback = function(value)
		BypassTP = value
		_G.Settings.BypassTP = value
		SaveSettings()
end})

S:CreateToggle({
	Title = "Auto Haki Buso",
	Value = _G.Settings.AutoHaki,
	Callback = function(value)
		_G.HakiEna = value
		_G.Settings.AutoHaki = value
		SaveSettings()
end})

spawn(function()
    while wait(.1) do
        if _G.HakiEna then 
            if not game.Players.LocalPlayer.Character:FindFirstChild("HasBuso") then
                local args = {
                    [1] = "Buso"
                }
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
            end
        end
    end
end)

S:CreateToggle({
	Title = "Auto Active Race V3",
	Value = _G.Settings.Active,
	Callback = function(value)
		_G.AutoAgility = value
		_G.Settings.Active = value
		SaveSettings()
end})

spawn(function()
        pcall(function()
            while wait() do
                if _G.AutoAgility then
                    game:GetService("ReplicatedStorage").Remotes.CommE:FireServer("ActivateAbility")
                end
            end
        end)
    end)
    
S:CreateToggle({
	Title = "Auto Active Race V4",
	Value = _G.Settings.ActiveRaceV,
	Callback = function(value)
		_G.AwaV = value
		_G.Settings.ActiveRaceV = value
		SaveSettings()
end}) 

spawn(function()
    while wait() do
		pcall(function()
			if _G.AwaV then
				game:GetService("VirtualInputManager"):SendKeyEvent(true,"Y",false,game)
				wait(0.1)
                game:GetService("VirtualInputManager"):SendKeyEvent(false,"Y",false,game)
			end
		end)
    end
end)   

local SM = Tab1:CreateSection({
	Title = "Setting Misc",
	Side = "Right"
})

SM:CreateToggle({
	Title = "Hop Server After 30 Minutes",
	Value = _G.Settings.HopAfter,
	Callback = function(value)
		_G.AntiBan = value
		_G.Settings.HopAfter = value
		SaveSettings()
end})

spawn(function()
    while task.wait(1800) do 
        if _G.AntiBan then
            Hop()
        end
    end
end)

local targetPlayers = {
    ["my_game43"] = true,
    ["rip_indra"] = true,
    ["Axiore"] = true,
    ["Polkster"] = true,
    ["wenlocktoad"] = true,
    ["Daigrock"] = true,
    ["toilamvidamme"] = true,
    ["oofficialnoobie"] = true,
    ["Uzoth"] = true,
    ["Azarth"] = true,
    ["arlthmetic"] = true,
    ["Death_King"] = true,
    ["Lunoven"] = true,
    ["TheGreateAced"] = true,
    ["rip_fud"] = true,
    ["drip_mama"] = true,
    ["layandikit12"] = true,
    ["Hingoi"] = true
}

SM:CreateToggle({
	Title = "Hop Server If Admin Join",
	Value = _G.Settings.HopAdminJoin,
	Callback = function(value)
		_G.HopIfAdminJoin = value
		_G.Settings.HopAdminJoin = value
		SaveSettings()
end})

spawn(function()
    while task.wait(1) do
        if _G.HopIfAdminJoin then
            for _, v in pairs(game.Players:GetPlayers()) do
                if targetPlayers[v.Name] then
                    Hop()
                    break
                end
            end
        end
    end
end)

local AFKConnection

SM:CreateToggle({
	Title = "Anti AFK",
	Value = true,
	Callback = function(value)
		if value then   
		 local vu = game:GetService("VirtualUser")
        local player = game:GetService("Players").LocalPlayer

        if AFKConnection then
            AFKConnection:Disconnect()
        end

        AFKConnection = player.Idled:Connect(function()
            vu:Button2Down(Vector2.new(0,0), workspace.CurrentCamera.CFrame)
            wait(1)
            vu:Button2Up(Vector2.new(0,0), workspace.CurrentCamera.CFrame)
        end)
    else
        if AFKConnection then
            AFKConnection:Disconnect()
            AFKConnection = nil
        end
    end
end})

SM:CreateToggle({
	Title = "Auto Rejoin",
	Value = _G.Settings.Rejoin,
	Callback = function(value)
		_G.AutoRejoin = value
		_G.Settings.Rejoin = value
		SaveSettings()
end})

spawn(function()
	    while wait() do
	        if _G.AutoRejoin then
	                getgenv().rejoin = game:GetService("CoreGui").RobloxPromptGui.promptOverlay.ChildAdded:Connect(function(child)
                        if child.Name == 'ErrorPrompt' and child:FindFirstChild('MessageArea') and child.MessageArea:FindFirstChild("ErrorFrame") then
                            game:GetService("TeleportService"):Teleport(game.PlaceId)
                        end
                     end)
	            end
	        end
	    end)

local Remove = Tab1:CreateSection({
	Title = "Remove",
	Side = "Right"
})
	    
Remove:CreateToggle({
    Title = "Remove Effect Mob Die",
    Value = _G.Settings.Effect,
    Callback = function(value)
        _G.Remove_Effect = value
        _G.Settings.Effect = value
        SaveSettings()
    end
})

Remove:CreateToggle({
	Title = "Remove Notification",
	Value = _G.Settings.Notifi,
	Callback = function(value)
		_G.RemoveThongBao = value
		_G.Settings.Notifi = value
		SaveSettings()
end})

spawn(function()
	while wait() do
		if _G.RemoveThongBao then
			game.Players.LocalPlayer.PlayerGui.Notifications.Enabled = false
		else
			game.Players.LocalPlayer.PlayerGui.Notifications.Enabled = true
		end
	end
end)

Remove:CreateToggle({
	Title = "Remove Sound",
	Value = _G.Settings.Sound,
	Callback = function(value)
		_G.RemoveAmThanh = value
		_G.Settings.Sound = value
		SaveSettings()
end})	    

spawn(function()
    game:GetService("RunService").RenderStepped:Connect(function()
        if _G.RemoveAmThanh == true then
            game:GetService("ReplicatedStorage").Effect.Container.LevelUp:Destroy()
            game:GetService("ReplicatedStorage").Util.Sound:Destroy()
            game:GetService("ReplicatedStorage").Util.Sound.Storage.Other:FindFirstChild("LevelUp_Proxy"):Destroy()
            game:GetService("ReplicatedStorage").Util.Sound.Storage.Other:FindFirstChild("LevelUp"):Destroy()
            game:GetService("ReplicatedStorage").Effect.Container.Respawn:Destroy()        
        end
    end)
end)

local Item = Window:CreateTab({
	Title = "Item",
	Icon = "home"
})

local Sword = Item:CreateSection({
	Title = "Sword",
	Side = "Left"
})

Sword:CreateToggle({
	Title = "Auto Farm Saber",
	Value = _G.Settings.Saber,
	Callback = function(value)
		_G.Auto_Saber = value
		_G.Settings.Saber = value
		SaveSettings()
		StopTween(_G.Auto_Saber)
end})

spawn(function()
        while task.wait() do
            if _G.Auto_Saber and game.Players.LocalPlayer.Data.Level.Value >= 200 then
                pcall(function()
                    if game:GetService("Workspace").Map.Jungle.Final.Part.Transparency == 0 then
                        if game:GetService("Workspace").Map.Jungle.QuestPlates.Door.Transparency == 0 then
                            if (CFrame.new(-1612.55884, 36.9774132, 148.719543, 0.37091279, 3.0717151e-09, -0.928667724, 3.97099491e-08, 1, 1.91679348e-08, 0.928667724, -4.39869794e-08, 0.37091279).Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 100 then
                                topos(game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame)
                                wait(1)
                                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").Map.Jungle.QuestPlates.Plate1.Button.CFrame
                                wait(1)
                                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").Map.Jungle.QuestPlates.Plate2.Button.CFrame
                                wait(1)
                                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").Map.Jungle.QuestPlates.Plate3.Button.CFrame
                                wait(1)
                                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").Map.Jungle.QuestPlates.Plate4.Button.CFrame
                                wait(1)
                                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").Map.Jungle.QuestPlates.Plate5.Button.CFrame
                                wait(1)
                            else
                                topos(CFrame.new(-1612.55884, 36.9774132, 148.719543, 0.37091279, 3.0717151e-09, -0.928667724, 3.97099491e-08, 1, 1.91679348e-08, 0.928667724, -4.39869794e-08, 0.37091279))
                            end
                        else
                            if game:GetService("Workspace").Map.Desert.Burn.Part.Transparency == 0 then
                                if game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Torch") or game.Players.LocalPlayer.Character:FindFirstChild("Torch") then
                                    EquipWeapon("Torch")
                                    topos(CFrame.new(1114.61475, 5.04679728, 4350.22803, -0.648466587, -1.28799094e-09, 0.761243105, -5.70652914e-10, 1, 1.20584542e-09, -0.761243105, 3.47544882e-10, -0.648466587))
                                  else
                                  topos(CFrame.new(-1610.00757, 11.5049858, 164.001587, 0.984807551, -0.167722285, -0.0449818149, 0.17364943, 0.951244235, 0.254912198, 3.42372805e-05, -0.258850515, 0.965917408))
                                end
                            else
                                if game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("ProQuestProgress","SickMan") ~= 0 then
                                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("ProQuestProgress","GetCup")
                                    wait(0.5)
                                    EquipWeapon("Cup")
                                    wait(0.5)
                                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("ProQuestProgress","FillCup",game:GetService("Players").LocalPlayer.Character.Cup)
                                    wait(0)
                                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("ProQuestProgress","SickMan")
                                else
                                    if game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("ProQuestProgress","RichSon") == nil then
                                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("ProQuestProgress","RichSon")
                                    elseif game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("ProQuestProgress","RichSon") == 0 then
                                    if game:GetService("Workspace").Enemies:FindFirstChild("Mob Leader") or game:GetService("ReplicatedStorage"):FindFirstChild("Mob Leader") then
										topos(CFrame.new(-2967.59521, -4.91089821, 5328.70703, 0.342208564, -0.0227849055, 0.939347804, 0.0251603816, 0.999569714, 0.0150796166, -0.939287126, 0.0184739735, 0.342634559)) 
                                            for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                                                if v.Name == "Mob Leader" then
                                                   if game:GetService("Workspace").Enemies:FindFirstChild("Mob Leader [Lv. 120] [Boss]") then
                                                    if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
                                                        repeat task.wait()
                                                        AutoHaki()
                                                        EquipWeapon(_G.SelectWeapon)
                                                        v.HumanoidRootPart.CanCollide = false
                                                        v.Humanoid.WalkSpeed = 0
                                                        v.HumanoidRootPart.Size = Vector3.new(80,80,80)                             
                                                        topos(v.HumanoidRootPart.CFrame * Pos)
                                                        game:GetService("VirtualUser"):CaptureController()
                                                        game:GetService("VirtualUser"):Button1Down(Vector2.new(1280,672))
                                                        sethiddenproperty(game:GetService("Players").LocalPlayer,"SimulationRadius",math.huge)
                                                        until v.Humanoid.Health <= 0 or not _G.Auto_Saber
                                                     end
                                                end
                                                if game:GetService("ReplicatedStorage"):FindFirstChild("Mob Leader") then
                                                    topos(game:GetService("ReplicatedStorage"):FindFirstChild("Mob Leader").HumanoidRootPart.CFrame * Farm_Mode)
                                                end
                                            end
                                        end
                                     end
                                    elseif game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("ProQuestProgress","RichSon") == 1 then
                                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("ProQuestProgress","RichSon")
                                        wait(0.5)
                                        EquipWeapon("Relic")
                                        wait(0.5)
                                        topos(CFrame.new(-1404.91504, 29.9773273, 3.80598116, 0.876514494, 5.66906877e-09, 0.481375456, 2.53851997e-08, 1, -5.79995607e-08, -0.481375456, 6.30572643e-08, 0.876514494))
                                    end
                                end
                            end
                        end
                    else
                        if game:GetService("Workspace").Enemies:FindFirstChild("Saber Expert") or game:GetService("ReplicatedStorage"):FindFirstChild("Saber Expert") then
                            for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                                if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
                                    if v.Name == "Saber Expert" then
                                        repeat task.wait()
                                            EquipWeapon(_G.SelectWeapon)
                                            topos(v.HumanoidRootPart.CFrame * Pos)
                                            v.HumanoidRootPart.Size = Vector3.new(60, 60, 60)
                                            v.HumanoidRootPart.Transparency = 1
                                            v.Humanoid.JumpPower = 0
                                            v.Humanoid.WalkSpeed = 0
                                            v.HumanoidRootPart.CanCollide = false
                                            --v.Humanoid:ChangeState(11)
                                            --v.Humanoid:ChangeState(14)
                                            FarmPos = v.HumanoidRootPart.CFrame
                                            MonFarm = v.Name
                                            game:GetService'VirtualUser':CaptureController()
                                            game:GetService'VirtualUser':Button1Down(Vector2.new(1280, 672),workspace.CurrentCamera.CFrame)
                                        until v.Humanoid.Health <= 0 or not _G.Auto_Saber
                                        if v.Humanoid.Health <= 0 then
                                            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("ProQuestProgress","PlaceRelic")
                                        end
                                    end
                                end
                            end
                        end
                    end
                end)
            end
        end
    end)

Sword:CreateToggle({
	Title = "Auto Dragon Trident",
	Value = _G.Settings.TridentDra,
	Callback = function(value)
		_G.Auto_Dragon_Trident = value
		_G.Settings.TridentDra = value
		SaveSettings()
		StopTween(_G.Auto_Dragon_Trident)
end})

local TridentPos = CFrame.new(-3914.830322265625, 123.29389190673828, -11516.8642578125)
    spawn(function()
        while wait() do
            if  _G.Auto_Dragon_Trident and World2 then
                pcall(function()
                    if game:GetService("Workspace").Enemies:FindFirstChild("Tide Keeper") then
                        for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                            if v.Name == "Tide Keeper" then
                                if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
                                    repeat task.wait()
                                        AutoHaki()
                                        EquipWeapon(_G.SelectWeapon)
                                        v.HumanoidRootPart.CanCollide = false
                                        v.Humanoid.WalkSpeed = 0
                                        v.HumanoidRootPart.Size = Vector3.new(50,50,50)
                                        topos(v.HumanoidRootPart.CFrame * Pos)
                                        game:GetService("VirtualUser"):CaptureController()
                                        game:GetService("VirtualUser"):Button1Down(Vector2.new(1280,672))
                                        sethiddenproperty(game.Players.LocalPlayer,"SimulationRadius",math.huge)
                                    until not  _G.Auto_Dragon_Trident or not v.Parent or v.Humanoid.Health <= 0
                                end
                            end
                        end
                    else
                    if BypassTP then
                    if (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - TridentPos.Position).Magnitude > 1500 then
			        BTP(TridentPos)
				    elseif (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - TridentPos.Position).Magnitude < 1500 then
				    topos(TridentPos)
					end
				else
				    topos(TridentPos)
				end
				    UnEquipWeapon(_G.SelectWeapon)
                    topos(CFrame.new(-3914.830322265625, 123.29389190673828, -11516.8642578125))
                        if game:GetService("ReplicatedStorage"):FindFirstChild("Tide Keeper") then
                            topos(game:GetService("ReplicatedStorage"):FindFirstChild("Tide Keeper").HumanoidRootPart.CFrame * CFrame.new(2,20,2))
                        end
                    end
                end)
            end
        end
    end)

Sword:CreateToggle({
	Title = "Auto Cursed Dual Katana",
	Value = _G.Settings.CDK,
	Callback = function(value)
		_G.CDK = value
		_G.Settings.CDK = value
		SaveSettings()
		StopTween(_G.CDK)
end})

spawn(function()
        while wait() do
            pcall(function()
                if _G.CDK then
                    if game.Players.LocalPlayer.Character:FindFirstChild("Tushita") or game.Players.LocalPlayer.Backpack:FindFirstChild("Tushita") or game.Players.LocalPlayer.Character:FindFirstChild("Yama") or game.Players.LocalPlayer.Backpack:FindFirstChild("Yama") then
                        if game.Players.LocalPlayer.Character:FindFirstChild("Tushita") or game.Players.LocalPlayer.Backpack:FindFirstChild("Tushita") then
                            if game.Players.LocalPlayer.Backpack:FindFirstChild("Tushita") then
                                EquipWeapon("Tushita")
                            end
                        elseif game.Players.LocalPlayer.Character:FindFirstChild("Yama") or game.Players.LocalPlayer.Backpack:FindFirstChild("Yama") then
                            if game.Players.LocalPlayer.Backpack:FindFirstChild("Yama") then
                                EquipWeapon("Yama")
                                
                            end
                        end
                    else
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("LoadItem","Tushita")
                    end
                end
            end)
        end
    end)
    spawn(function()
        while wait() do
            pcall(function()
                if _G.CDK then
                    if GetMaterial("Alucard Fragment") == 0 then
                        Auto_Quest_Yama_1 = true
                        Auto_Quest_Yama_2 = false
                        Auto_Quest_Yama_3 = false
                        Auto_Quest_Tushita_1 = false
                        Auto_Quest_Tushita_2 = false
                        Auto_Quest_Tushita_3 = false
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CDKQuest","Progress","Evil")
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CDKQuest","StartTrial","Evil")
                    elseif GetMaterial("Alucard Fragment") == 1 then
                        Auto_Quest_Yama_1 = false
                        Auto_Quest_Yama_2 = true
                        Auto_Quest_Yama_3 = false
                        Auto_Quest_Tushita_1 = false
                        Auto_Quest_Tushita_2 = false
                        Auto_Quest_Tushita_3 = false
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CDKQuest","Progress","Evil")
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CDKQuest","StartTrial","Evil")
                    elseif GetMaterial("Alucard Fragment") == 2 then
                        Auto_Quest_Yama_1 = false
                        Auto_Quest_Yama_2 = false
                        Auto_Quest_Yama_3 = true
                        Auto_Quest_Tushita_1 = false
                        Auto_Quest_Tushita_2 = false
                        Auto_Quest_Tushita_3 = false
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CDKQuest","Progress","Evil")
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CDKQuest","StartTrial","Evil")
                    elseif GetMaterial("Alucard Fragment") == 3 then
                        Auto_Quest_Yama_1 = false
                        Auto_Quest_Yama_2 = false
                        Auto_Quest_Yama_3 = false
                        Auto_Quest_Tushita_1 = true
                        Auto_Quest_Tushita_2 = false
                        Auto_Quest_Tushita_3 = false
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CDKQuest","Progress","Good")
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CDKQuest","StartTrial","Good")
                    elseif GetMaterial("Alucard Fragment") == 4 then
                        Auto_Quest_Yama_1 = false
                        Auto_Quest_Yama_2 = false
                        Auto_Quest_Yama_3 = false
                        Auto_Quest_Tushita_1 = false
                        Auto_Quest_Tushita_2 = true
                        Auto_Quest_Tushita_3 = false
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CDKQuest","Progress","Good")
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CDKQuest","StartTrial","Good")
                    elseif GetMaterial("Alucard Fragment") == 5 then
                        Auto_Quest_Yama_1 = false
                        Auto_Quest_Yama_2 = false
                        Auto_Quest_Yama_3 = false
                        Auto_Quest_Tushita_1 = false
                        Auto_Quest_Tushita_2 = false
                        Auto_Quest_Tushita_3 = true
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CDKQuest","Progress","Good")
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CDKQuest","StartTrial","Good")
                    elseif GetMaterial("Alucard Fragment") == 6 then
                        if game:GetService("Workspace").Enemies:FindFirstChild("Cursed Skeleton Boss [Lv. 2025] [Boss]") or game:GetService("Workspace").ReplicatedStorage:FindFirstChild("Cursed Skeleton Boss [Lv. 2025] [Boss]") then
                            Auto_Quest_Yama_1 = false
                            Auto_Quest_Yama_2 = false
                            Auto_Quest_Yama_3 = false
                            Auto_Quest_Tushita_1 = false
                            Auto_Quest_Tushita_2 = false
                            Auto_Quest_Tushita_3 = false
                            if game:GetService("Workspace").Enemies:FindFirstChild("Cursed Skeleton Boss [Lv. 2025] [Boss]") or game:GetService("Workspace").Enemies:FindFirstChild("Cursed Skeleton [Lv. 2200]") then
                                for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                                    if v.Name == "Cursed Skeleton Boss" or v.Name == "Cursed Skeleton" then
                                        if v.Humanoid.Health > 0 then
                                            EquipWeapon("Yama")
                                            topos(v.HumanoidRootPart.CFrame * CFrame.new(0, 34, 4))
                                            v.HumanoidRootPart.Size = Vector3.new(60, 60, 60)
                                            v.HumanoidRootPart.Transparency = 1
                                            v.Humanoid.JumpPower = 0
                                            v.Humanoid.WalkSpeed = 0
                                            v.HumanoidRootPart.CanCollide = false
                                            PosMon = v.HumanoidRootPart.CFrame
                                            MonFarm = v.Name
                                        end
                                    end
                                end
                            end
                        else
                            if (CFrame.new(-12361.7060546875, 603.3547973632812, -6550.5341796875).Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 100 then
                                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CDKQuest","Progress","Good")
                                wait(1)
                                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CDKQuest","Progress","Evil")
                                wait(1)
                                topos(CFrame.new(-12361.7060546875, 603.3547973632812, -6550.5341796875))
                                wait(1.5)
                                game:GetService("VirtualInputManager"):SendKeyEvent(true, "E", false, game)
                                wait(1.5)
                                topos(CFrame.new(-12253.5419921875, 598.8999633789062, -6546.8388671875))
                            else
                                topos(CFrame.new(-12361.7060546875, 603.3547973632812, -6550.5341796875))
                            end   
                        end
                    end
                end
            end)
        end
    end)

    spawn(function()
        while wait() do
            if Auto_Quest_Yama_1 then
                pcall(function()
                    if game:GetService("Workspace").Enemies:FindFirstChild("Mythological Pirate") then
                        for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                            if v.Name == "Mythological Pirate" then
                                repeat wait()
                                    topos(v.HumanoidRootPart.CFrame * CFrame.new(0,0,-2))
                                until _G.CDK == false or Auto_Quest_Yama_1 == false
                                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CDKQuest","StartTrial","Evil")
                            end
                        end
                    else
                        topos(CFrame.new(-13451.46484375, 543.712890625, -6961.0029296875))
                    end
                end)
            end
        end
    end)

    spawn(function()
        while wait() do
            pcall(function()
                if Auto_Quest_Yama_2 then
                    for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                        if v:FindFirstChild("HazeESP") then
                            v.HazeESP.Size = UDim2.new(50,50,50,50)
                            v.HazeESP.MaxDistance = "inf"
                        end
                    end
                    for i,v in pairs(game:GetService("ReplicatedStorage"):GetChildren()) do
                        if v:FindFirstChild("HazeESP") then
                            v.HazeESP.Size = UDim2.new(50,50,50,50)
                            v.HazeESP.MaxDistance = "inf"
                        end
                    end
                end
            end)
        end
    end)

    spawn(function()
        while wait() do
            pcall(function()
                for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                    if Auto_Quest_Yama_2 and v:FindFirstChild("HazeESP") and (v.HumanoidRootPart.Position - PosMonsEsp.Position).magnitude <= 300 then
                        v.HumanoidRootPart.CFrame = PosMonsEsp
                        v.HumanoidRootPart.CanCollide = false
                        v.HumanoidRootPart.Size = Vector3.new(50,50,50)
                        if not v.HumanoidRootPart:FindFirstChild("BodyVelocity") then
                            local vc = Instance.new("BodyVelocity", v.HumanoidRootPart)
                            vc.MaxForce = Vector3.new(1, 1, 1) * math.huge
                            vc.Velocity = Vector3.new(0, 0, 0)
                        end
                    end
                end
            end)
        end
    end)

    spawn(function()
        while wait() do
            if Auto_Quest_Yama_2 then 
                pcall(function() 
                    for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                        if v:FindFirstChild("HazeESP") then
                            repeat wait()
                                if (v.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 2000 then
                                    topos(v.HumanoidRootPart.CFrame * Pos)
                                else
                                    EquipWeapon("Yama")
                                    topos(v.HumanoidRootPart.CFrame * Pos)
                                    v.HumanoidRootPart.Size = Vector3.new(60, 60, 60)
                                    v.HumanoidRootPart.Transparency = 1
                                    v.Humanoid.JumpPower = 0
                                    v.Humanoid.WalkSpeed = 0
                                    v.HumanoidRootPart.CanCollide = false
                                    PosMon = v.HumanoidRootPart.CFrame
                                    MonFarm = v.Name
                                    if v.Humanoid.Health <= 0 and v.Humanoid:FindFirstChild("Animator") then
                                        v.Humanoid.Animator:Destroy()
                                    end							
                                end      
                            until _G.CDK == false or Auto_Quest_Yama_2 == false or not v.Parent or v.Humanoid.Health <= 0 or not v:FindFirstChild("HazeESP")
                        else
                            for x,y in pairs(game:GetService("ReplicatedStorage"):GetChildren()) do
                                if y:FindFirstChild("HazeESP") then
                                    if (y.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 2000 then
                                        topos(y.HumanoidRootPart.CFrameMon* Farm_Mode)
                                    else
                                        topos(y.HumanoidRootPart.CFrame * Farm_Mode)
                                    end
                                end
                            end
                        end
                    end
                end)
            end
        end
    end)

    spawn(function()
        while wait() do
            if Auto_Quest_Yama_3 then
                pcall(function()
                    if game.Players.LocalPlayer.Backpack:FindFirstChild("Hallow Essence") then         
                        topos(game:GetService("Workspace").Map["Haunted Castle"].Summoner.Detection.CFrame)
                    elseif game:GetService("Workspace").Map:FindFirstChild("HellDimension") then
                        repeat wait()
                            if game:GetService("Workspace").Enemies:FindFirstChild("Cursed Skeleton [Lv. 2200]") or game:GetService("Workspace").Enemies:FindFirstChild("Cursed Skeleton [Lv. 2200] [Boss]") or game:GetService("Workspace").Enemies:FindFirstChild("Hell's Messenger [Lv. 2200] [Boss]") then
                                for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                                    if v.Name == "Cursed Skeleton" or v.Name == "Cursed Skeleton" or v.Name == "Hell's Messenger" then
                                        if v.Humanoid.Health > 0 then
                                            repeat wait()
                                                EquipWeapon("Yama")
                                                topos(v.HumanoidRootPart.CFrame * Pos)
                                                v.HumanoidRootPart.Size = Vector3.new(60, 60, 60)
                                                v.HumanoidRootPart.Transparency = 1
                                                v.Humanoid.JumpPower = 0
                                                v.Humanoid.WalkSpeed = 0
                                                v.HumanoidRootPart.CanCollide = false
                                                PosMon = v.HumanoidRootPart.CFrame
                                                MonFarm = v.Name
                                                if v.Humanoid.Health <= 0 and v.Humanoid:FindFirstChild("Animator") then
                                                    v.Humanoid.Animator:Destroy()
                                                end
                                            until v.Humanoid.Health <= 0 or not v.Parent or Auto_Quest_Yama_3 == false
                                        end
                                    end
                                end
                            else
                                wait(5)
                                topos(game:GetService("Workspace").Map.HellDimension.Torch1.CFrame)
                                wait(1.5)
                                game:GetService("VirtualInputManager"):SendKeyEvent(true, "E", false, game)
                                wait(1.5)        
                                topos(game:GetService("Workspace").Map.HellDimension.Torch2.CFrame)
                                wait(1.5)
                                game:GetService("VirtualInputManager"):SendKeyEvent(true, "E", false, game)
                                wait(1.5)     
                                topos(game:GetService("Workspace").Map.HellDimension.Torch3.CFrame)
                                wait(1.5)
                                game:GetService("VirtualInputManager"):SendKeyEvent(true, "E", false, game)
                                wait(1.5)     
                                topos(game:GetService("Workspace").Map.HellDimension.Exit.CFrame)
                            end
                        until _G.CDK == false or Auto_Quest_Yama_3 == false or GetMaterial("Alucard Fragment") == 3
                    else
                        if game:GetService("Workspace").Enemies:FindFirstChild("Soul Reaper") or game.ReplicatedStorage:FindFirstChild("Soul Reaper [Lv. 2100] [Raid Boss]") then
                            if game:GetService("Workspace").Enemies:FindFirstChild("Soul Reaper") then
                                for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                                    if v.Name == "Soul Reaper" then
                                        if v.Humanoid.Health > 0 then
                                            repeat wait()
                                                topos(v.HumanoidRootPart.CFrame * CFrame.new(PosX,PosY,PosZ))
                                            until _G.CDK == false or Auto_Quest_Yama_3 == false or game:GetService("Workspace").Map:FindFirstChild("HellDimension")
                                        end
                                    end
                                end
                            else
                                topos(CFrame.new(-9570.033203125, 315.9346923828125, 6726.89306640625))
                            end
                        else
                            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Bones","Buy",1,1)
                        end
                    end
                end)
            end
        end
    end)
    spawn(function()
        while wait() do
            if Auto_Quest_Tushita_1 then
                topos(CFrame.new(-9546.990234375, 21.139892578125, 4686.1142578125))
                wait(5)
                topos(CFrame.new(-6120.0576171875, 16.455780029296875, -2250.697265625))
                wait(5)
                topos(CFrame.new(-9533.2392578125, 7.254445552825928, -8372.69921875))    
            end
        end
    end)
    spawn(function()
        while wait() do
            if Auto_Quest_Tushita_2 then
                pcall(function()
                    if (CFrame.new(-5539.3115234375, 313.800537109375, -2972.372314453125).Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 500 then
                        for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                            if Auto_Quest_Tushita_2 and v:FindFirstChild("HumanoidRootPart") and v:FindFirstChild("Humanoid") and v.Humanoid.Health > 0 then
                                if (v.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude < 2000 then
                                    repeat wait()
                                        EquipWeapon("Yama")
                                        topos(v.HumanoidRootPart.CFrame * Pos)
                                        v.HumanoidRootPart.Size = Vector3.new(60, 60, 60)
                                        v.HumanoidRootPart.Transparency = 1
                                        v.Humanoid.JumpPower = 0
                                        v.Humanoid.WalkSpeed = 0
                                        v.HumanoidRootPart.CanCollide = false
                                        PosMon = v.HumanoidRootPart.CFrame
                                        MonFarm = v.Name
                                        if v.Humanoid.Health <= 0 and v.Humanoid:FindFirstChild("Animator") then
                                            v.Humanoid.Animator:Destroy()
                                        end
                                    until v.Humanoid.Health <= 0 or not v.Parent or Auto_Quest_Tushita_2 == false
                                end
                            end
                        end
                    else
                        topos(CFrame.new(-5545.1240234375, 313.800537109375, -2976.616455078125))
                    end
                end)
            end
        end
    end)
    spawn(function()
        while wait() do
            if Auto_Quest_Tushita_3 then
                pcall(function()
                    if game:GetService("Workspace").Enemies:FindFirstChild("Cake Queen") or game.ReplicatedStorage:FindFirstChild("Cake Queen [Lv. 2175] [Boss]") then
                        if game:GetService("Workspace").Enemies:FindFirstChild("Cake Queen") then
                            for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                                if v.Name == "Cake Queen" then
                                    if v.Humanoid.Health > 0 then
                                        repeat wait()
                                            EquipWeapon("Yama")
                                            topos(v.HumanoidRootPart.CFrame * Pos)
                                            v.HumanoidRootPart.Size = Vector3.new(60, 60, 60)
                                            v.HumanoidRootPart.Transparency = 1
                                            v.Humanoid.JumpPower = 0
                                            v.Humanoid.WalkSpeed = 0
                                            v.HumanoidRootPart.CanCollide = false
                                            PosMon = v.HumanoidRootPart.CFrame
                                            MonFarm = v.Name
                                            if v.Humanoid.Health <= 0 and v.Humanoid:FindFirstChild("Animator") then
                                                v.Humanoid.Animator:Destroy()
                                            end
                                        until _G.CDK == false or Auto_Quest_Tushita_3 == false or game:GetService("Workspace").Map:FindFirstChild("HeavenlyDimension")
                                    end
                                end
                            end
                        else
                            topos(CFrame.new(-709.3132934570312, 381.6005859375, -11011.396484375))
                        end
                    elseif game:GetService("Workspace").Map:FindFirstChild("HeavenlyDimension") then
                        repeat wait()
                            if game:GetService("Workspace").Enemies:FindFirstChild("Cursed Skeleton [Lv. 2200]") or game:GetService("Workspace").Enemies:FindFirstChild("Cursed Skeleton [Lv. 2200] [Boss]") or game:GetService("Workspace").Enemies:FindFirstChild("Heaven's Guardian [Lv. 2200] [Boss]") then
                                for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                                    if v.Name == "Cursed Skeleton" or v.Name == "Cursed Skeleton" or v.Name == "Heaven's Guardian" then
                                        if v.Humanoid.Health > 0 then
                                            repeat wait()
                                                EquipWeapon("Yama")
                                                topos(v.HumanoidRootPart.CFrame * Pos)
                                                v.HumanoidRootPart.Size = Vector3.new(60, 60, 60)
                                                v.HumanoidRootPart.Transparency = 1
                                                v.Humanoid.JumpPower = 0
                                                v.Humanoid.WalkSpeed = 0
                                                v.HumanoidRootPart.CanCollide = false
                                                PosMon = v.HumanoidRootPart.CFrame
                                                MonFarm = v.Name    
                                                if v.Humanoid.Health <= 0 and v.Humanoid:FindFirstChild("Animator") then
                                                    v.Humanoid.Animator:Destroy()
                                                end
                                            until v.Humanoid.Health <= 0 or not v.Parent or Auto_Quest_Tushita_3 == false
                                        end
                                    end
                                end
                            else
                                wait(5)
                                topos(game:GetService("Workspace").Map.HeavenlyDimension.Torch1.CFrame)
                                wait(1.5)
                                game:GetService("VirtualInputManager"):SendKeyEvent(true, "E", false, game)
                                wait(1.5)        
                                topos(game:GetService("Workspace").Map.HeavenlyDimension.Torch2.CFrame)
                                wait(1.5)
                                game:GetService("VirtualInputManager"):SendKeyEvent(true, "E", false, game)
                                wait(1.5)     
                                topos(game:GetService("Workspace").Map.HeavenlyDimension.Torch3.CFrame)
                                wait(1.5)
                                game:GetService("VirtualInputManager"):SendKeyEvent(true, "E", false, game)
                                wait(1.5)     
                                topos(game:GetService("Workspace").Map.HeavenlyDimension.Exit.CFrame)
                            end
                        until not _G.CDK or not Auto_Quest_Tushita_3 or GetMaterial("Alucard Fragment") == 6
                    end
                end)
            end
        end
    end)

local Haki = Item:CreateSection({
	Title = "Haki Colors",
	Side = "Right"
})

Haki:CreateToggle({
	Title = "Auto Buy Unlock Haki Colors",
	Value = _G.Settings.Haki,
	Callback = function(value)
		_G.BuyUnlockHaki = value
		_G.Settings.Haki = value
		SaveSettings()
end})

spawn(function()
        while wait() do
            if _G.BuyUnlockHaki then
                local args = {
                    [1] = "ColorsDealer",
                    [2] = "2"
                }
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
                if _G.BuyUnlockHakiHop and _G.BuyUnlockHaki and not World1 then
                    wait(3)
                    Hop()
                end
            end 
        end
    end)

Haki:CreateToggle({
	Title = "Auto Buy Unlock Haki Colors [ Hop ]",
	Value = _G.Settings.HakiHop,
	Callback = function(value)
	    if value and not _G.BuyUnlockHaki then
            Fluent:Notify({
                Title = "Notification",
                Content = "Pls Enable Auto Buy Unlock Haki Colors",
                Duration = 8
            })
        end
        _G.BuyUnlockHakiHop = value
        _G.Settings.HakiHop = value
        SaveSettings()
    end
})    

Haki:CreateToggle({
	Title = "Auto Haki Rainbow",
	Value = _G.Settings.Rain,
	Callback = function(value)
		_G.Auto_Rainbow_Haki = value
		_G.Settings.Rain = value
		SaveSettings()
		StopTween(_G.Auto_Rainbow_Haki)
end})

spawn(function()
        pcall(function()
            while wait(.1) do
                if _G.Auto_Rainbow_Haki then
                    if game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == false then
                        topos(CFrame.new(-11892.0703125, 930.57672119141, -8760.1591796875))
                        if (Vector3.new(-11892.0703125, 930.57672119141, -8760.1591796875) - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 30 then
                            wait(1.5)
                            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("HornedMan","Bet")
                        end
                    elseif game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == true and string.find(game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, "Stone") then
                        if game:GetService("Workspace").Enemies:FindFirstChild("Stone") then
                            for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                                if v.Name == "Stone" then
                                    OldCFrameRainbow = v.HumanoidRootPart.CFrame
                                    repeat task.wait()
                                        EquipWeapon(_G.SelectWeapon)
                                        topos(v.HumanoidRootPart.CFrame * Pos)
                                        v.HumanoidRootPart.CanCollide = false
                                        v.HumanoidRootPart.CFrame = OldCFrameRainbow
                                        v.HumanoidRootPart.Size = Vector3.new(50,50,50)
                                        game:GetService("VirtualUser"):CaptureController()
                                        game:GetService("VirtualUser"):Button1Down(Vector2.new(1280, 672))
                                        sethiddenproperty(game:GetService("Players").LocalPlayer,"SimulationRadius",math.huge)
                                    until _G.Auto_Rainbow_Haki == false or v.Humanoid.Health <= 0 or not v.Parent or game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == false
                                end
                            end
                        else
                            topos(CFrame.new(-1086.11621, 38.8425903, 6768.71436, 0.0231462717, -0.592676699, 0.805107772, 2.03251839e-05, 0.805323839, 0.592835128, -0.999732077, -0.0137055516, 0.0186523199))
                        end
                    elseif game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == true and string.find(game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, "Hydra Leader") then
                        if game:GetService("Workspace").Enemies:FindFirstChild("Hydra Leader") then
                            for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                                if v.Name == "Hydra Leader" then
                                    OldCFrameRainbow = v.HumanoidRootPart.CFrame
                                    repeat task.wait()
                                        EquipWeapon(_G.SelectWeapon)
                                        topos(v.HumanoidRootPart.CFrame * Pos)
                                        v.HumanoidRootPart.CanCollide = false
                                        v.HumanoidRootPart.CFrame = OldCFrameRainbow
                                        v.HumanoidRootPart.Size = Vector3.new(50,50,50)
                                        game:GetService("VirtualUser"):CaptureController()
                                        game:GetService("VirtualUser"):Button1Down(Vector2.new(1280, 672))
                                        sethiddenproperty(game:GetService("Players").LocalPlayer,"SimulationRadius",math.huge)
                                    until _G.Auto_Rainbow_Haki == false or v.Humanoid.Health <= 0 or not v.Parent or game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == false
                                end
                            end
                        else
                            topos(CFrame.new(5713.98877, 601.922974, 202.751251, -0.101080291, -0, -0.994878292, -0, 1, -0, 0.994878292, 0, -0.101080291))
                        end
                    elseif string.find(game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, "Kilo Admiral") then
                        if game:GetService("Workspace").Enemies:FindFirstChild("Kilo Admiral") then
                            for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                                if v.Name == "Kilo Admiral" then
                                    OldCFrameRainbow = v.HumanoidRootPart.CFrame
                                    repeat task.wait()
                                        EquipWeapon(_G.SelectWeapon)
                                        topos(v.HumanoidRootPart.CFrame * Pos)
                                        v.HumanoidRootPart.CanCollide = false
                                        v.HumanoidRootPart.Size = Vector3.new(50,50,50)
                                        v.HumanoidRootPart.CFrame = OldCFrameRainbow
                                        game:GetService("VirtualUser"):CaptureController()
                                        game:GetService("VirtualUser"):Button1Down(Vector2.new(1280, 672))
                                        sethiddenproperty(game:GetService("Players").LocalPlayer,"SimulationRadius",math.huge)
                                    until _G.Auto_Rainbow_Haki == false or v.Humanoid.Health <= 0 or not v.Parent or game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == false
                                end
                            end
                        else
                            topos(CFrame.new(2877.61743, 423.558685, -7207.31006, -0.989591599, -0, -0.143904909, -0, 1.00000012, -0, 0.143904924, 0, -0.989591479))
                        end
                    elseif string.find(game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, "Captain Elephant") then
                        if game:GetService("Workspace").Enemies:FindFirstChild("Captain Elephant") then
                            for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                                if v.Name == "Captain Elephant" then
                                    OldCFrameRainbow = v.HumanoidRootPart.CFrame
                                    repeat task.wait()
                                        EquipWeapon(_G.SelectWeapon)
                                        topos(v.HumanoidRootPart.CFrame * Pos)
                                        v.HumanoidRootPart.CanCollide = false
                                        v.HumanoidRootPart.Size = Vector3.new(50,50,50)
                                        v.HumanoidRootPart.CFrame = OldCFrameRainbow
                                        game:GetService("VirtualUser"):CaptureController()
                                        game:GetService("VirtualUser"):Button1Down(Vector2.new(1280, 672))
                                        sethiddenproperty(game:GetService("Players").LocalPlayer,"SimulationRadius",math.huge)
                                    until _G.Auto_Rainbow_Haki == false or v.Humanoid.Health <= 0 or not v.Parent or game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == false
                                end
                            end
                        else
                            topos(CFrame.new(-13485.0283, 331.709259, -8012.4873, 0.714521289, 7.98849911e-08, 0.69961375, -1.02065748e-07, 1, -9.94383065e-09, -0.69961375, -6.43015241e-08, 0.714521289))
                        end
                    elseif string.find(game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, "Beautiful Pirate") then
                        if game:GetService("Workspace").Enemies:FindFirstChild("Beautiful Pirate") then
                            for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                                if v.Name == "Beautiful Pirate" then
                                    OldCFrameRainbow = v.HumanoidRootPart.CFrame
                                    repeat task.wait()
                                        EquipWeapon(_G.SelectWeapon)
                                        topos(v.HumanoidRootPart.CFrame * Pos)
                                        v.HumanoidRootPart.CanCollide = false
                                        v.HumanoidRootPart.Size = Vector3.new(50,50,50)
                                        v.HumanoidRootPart.CFrame = OldCFrameRainbow
                                        game:GetService("VirtualUser"):CaptureController()
                                        game:GetService("VirtualUser"):Button1Down(Vector2.new(1280, 672))
                                        sethiddenproperty(game:GetService("Players").LocalPlayer,"SimulationRadius",math.huge)
                                    until _G.Auto_Rainbow_Haki == false or v.Humanoid.Health <= 0 or not v.Parent or game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == false
                                end
                            end
                        else
                            topos(CFrame.new(5312.3598632813, 20.141201019287, -10.158538818359))
                        end
                    else
                        topos(CFrame.new(-11892.0703125, 930.57672119141, -8760.1591796875))
                        if (Vector3.new(-11892.0703125, 930.57672119141, -8760.1591796875) - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 30 then
                            wait(1.5)
                            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("HornedMan","Bet")
                        end
                    end
                end
            end
        end)
    end)
                           
local AllRace = Window:CreateTab({
	Title = "Race",
	Icon = "power"
})

local Race = AllRace:CreateSection({
	Title = "Race V4",
	Side = "Left"
})

Race:CreateToggle({
	Title = "Auto Complete Trial",
	Value = _G.Settings.CompleteRace,
	Callback = function(value)
		_G.AutoQuestRace = value
		_G.Settings.CompleteRace = value
		SaveSettings()
		StopTween(_G.AutoQuestRace)
end})

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
							topos(v.CFrame* CFrame.new(0,0,0))
						end
					end
				elseif game:GetService("Players").LocalPlayer.Data.Race.Value == "Fishman" then
					for i,v in pairs(game:GetService("Workspace").SeaBeasts.SeaBeast1:GetDescendants()) do
						if v.Name ==  "HumanoidRootPart" then
							topos(v.CFrame* CFrame.new(PosX,PosY,PosZ))
							for i,v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
								if v:IsA("Tool") then
									if v.ToolTip == "Melee" then -- "Blox Fruit" , "Sword" , "Wear" , "Agility"
										game.Players.LocalPlayer.Character.Humanoid:EquipTool(v)
									end
								end
							end
							game:GetService("VirtualInputManager"):SendKeyEvent(true,122,false,game.Players.LocalPlayer.Character.HumanoidRootPart)
							game:GetService("VirtualInputManager"):SendKeyEvent(false,122,false,game.Players.LocalPlayer.Character.HumanoidRootPart)
							wait(.2)
							game:GetService("VirtualInputManager"):SendKeyEvent(true,120,false,game.Players.LocalPlayer.Character.HumanoidRootPart)
							game:GetService("VirtualInputManager"):SendKeyEvent(false,120,false,game.Players.LocalPlayer.Character.HumanoidRootPart)
							wait(.2)
							game:GetService("VirtualInputManager"):SendKeyEvent(true,99,false,game.Players.LocalPlayer.Character.HumanoidRootPart)
							game:GetService("VirtualInputManager"):SendKeyEvent(false,99,false,game.Players.LocalPlayer.Character.HumanoidRootPart)
							for i,v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
								if v:IsA("Tool") then
									if v.ToolTip == "Blox Fruit" then -- "Blox Fruit" , "Sword" , "Wear" , "Agility"
										game.Players.LocalPlayer.Character.Humanoid:EquipTool(v)
									end
								end
							end
							game:GetService("VirtualInputManager"):SendKeyEvent(true,122,false,game.Players.LocalPlayer.Character.HumanoidRootPart)
							game:GetService("VirtualInputManager"):SendKeyEvent(false,122,false,game.Players.LocalPlayer.Character.HumanoidRootPart)
							wait(.2)
							game:GetService("VirtualInputManager"):SendKeyEvent(true,120,false,game.Players.LocalPlayer.Character.HumanoidRootPart)
							game:GetService("VirtualInputManager"):SendKeyEvent(false,120,false,game.Players.LocalPlayer.Character.HumanoidRootPart)
							wait(.2)
							game:GetService("VirtualInputManager"):SendKeyEvent(true,99,false,game.Players.LocalPlayer.Character.HumanoidRootPart)
							game:GetService("VirtualInputManager"):SendKeyEvent(false,99,false,game.Players.LocalPlayer.Character.HumanoidRootPart)
					
							wait(0.5)
							for i,v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
								if v:IsA("Tool") then
									if v.ToolTip == "Sword" then -- "Blox Fruit" , "Sword" , "Wear" , "Agility"
										game.Players.LocalPlayer.Character.Humanoid:EquipTool(v)
									end
								end
							end
							game:GetService("VirtualInputManager"):SendKeyEvent(true,122,false,game.Players.LocalPlayer.Character.HumanoidRootPart)
							game:GetService("VirtualInputManager"):SendKeyEvent(false,122,false,game.Players.LocalPlayer.Character.HumanoidRootPart)
							wait(.2)
							game:GetService("VirtualInputManager"):SendKeyEvent(true,120,false,game.Players.LocalPlayer.Character.HumanoidRootPart)
							game:GetService("VirtualInputManager"):SendKeyEvent(false,120,false,game.Players.LocalPlayer.Character.HumanoidRootPart)
							wait(.2)
							game:GetService("VirtualInputManager"):SendKeyEvent(true,99,false,game.Players.LocalPlayer.Character.HumanoidRootPart)
							game:GetService("VirtualInputManager"):SendKeyEvent(false,99,false,game.Players.LocalPlayer.Character.HumanoidRootPart)
							wait(0.5)
							for i,v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
								if v:IsA("Tool") then
									if v.ToolTip == "Gun" then -- "Blox Fruit" , "Sword" , "Wear" , "Agility"
										game.Players.LocalPlayer.Character.Humanoid:EquipTool(v)
									end
								end
							end
							game:GetService("VirtualInputManager"):SendKeyEvent(true,122,false,game.Players.LocalPlayer.Character.HumanoidRootPart)
							game:GetService("VirtualInputManager"):SendKeyEvent(false,122,false,game.Players.LocalPlayer.Character.HumanoidRootPart)
							wait(.2)
							game:GetService("VirtualInputManager"):SendKeyEvent(true,120,false,game.Players.LocalPlayer.Character.HumanoidRootPart)
							game:GetService("VirtualInputManager"):SendKeyEvent(false,120,false,game.Players.LocalPlayer.Character.HumanoidRootPart)
							wait(.2)
							game:GetService("VirtualInputManager"):SendKeyEvent(true,99,false,game.Players.LocalPlayer.Character.HumanoidRootPart)
							game:GetService("VirtualInputManager"):SendKeyEvent(false,99,false,game.Players.LocalPlayer.Character.HumanoidRootPart)
						end
					end
				elseif game:GetService("Players").LocalPlayer.Data.Race.Value == "Cyborg" then
					topos(CFrame.new(28654, 14898.7832, -30, 1, 0, 0, 0, 1, 0, 0, 0, 1))
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
							topos(v.CFrame* CFrame.new(0,10,0))
					  	end
				   	end
				end
			end
        end
    end)
end)

spawn(function()
    while wait() do
        if _G.AutoQuestRace and game:GetService("Players").LocalPlayer.Data.Race.Value == "Ghoul" then
            if game:GetService("Workspace").Enemies:FindFirstChild("Ancient Zombie") or game:GetService("Workspace").Enemies:FindFirstChild("Ancient Vampire") then
                for i, v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                    if v.Name == "Ancient Zombie" or v.Name == "Ancient Vampire" then
                        if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
                            repeat task.wait()
                                AutoHaki()
                                EquipWeapon(_G.SelectWeapon)
                                v.HumanoidRootPart.CanCollide = false
                                v.Humanoid.WalkSpeed = 0
                                v.Head.CanCollide = false 
                                StartMagnet = true
                                PosGay = v.HumanoidRootPart.CFrame
                                game:GetService("VirtualUser"):CaptureController()
                                game:GetService("VirtualUser"):Button1Down(Vector2.new(1280,672))
                            until not _G.AutoQuestRace or not v.Parent or v.Humanoid.Health <= 0
                            StartMagnet = false
                        end
                    end
                end
            else
                UnEquipWeapon(_G.SelectWeapon)
                if game:GetService("ReplicatedStorage"):FindFirstChild("Ancient Zombie") then
                elseif game:GetService("ReplicatedStorage"):FindFirstChild("Ancient Vampire") then
                end
            end
        end
    end
end) 

Race:CreateToggle({
	Title = "Kill Player Trial",
	Value = _G.Settings.KillTrial,
	Callback = function(value)
		_G.KillTriall = value
		_G.Settings.KillTrial = value
		SaveSettings()
		StopTween(_G.KillTriall)
end})

spawn(function()
    while wait() do 
        pcall(function()
            if _G.KillTriall then
                for i,v in pairs(game:GetService("Workspace").Characters:GetChildren()) do
                    if v.Name ~= game.Players.LocalPlayer.Name and (v.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 100 then
                        if v.Humanoid.Health > 0 then
                            repeat wait()
                                AutoHaki()
                                EquipWeapon(_G.SelectWeapon)
                                NameTarget = v.Name
                                TP1(v.HumanoidRootPart.CFrame * CFrame.new(0,0,5))
                                v.HumanoidRootPart.CanCollide = false
                                v.Head.CanCollide = false
                                v.HumanoidRootPart.Size = Vector3.new(60, 60, 60)
                                Click()
                            until not _G.KillTriall or not v.Parent or v.Humanoid.Health <= 0 
                        end
                    end
                end
            end
        end)
    end
end)

Race:CreateToggle({
	Title = "Auto Train Gear",
	Value = _G.Settings.Train,
	Callback = function(value)
		_G.Bone = value
        _G.Gear = value
        _G.AwaV = value
        _G.Settings.Train = value
        SaveSettings()
        StopTween(_G.Bone)
end})

Race:CreateToggle({
	Title = "Auto Buy Gear",
	Value = _G.Settings.BuyGear,
	Callback = function(value)
		_G.Gear = value
		_G.Settings.BuyGear = value
		SaveSettings()
end})

spawn(function()
            while _G.Gear do
                pcall(function()
                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer('UpgradeRace', 'Buy')
                end)
                task.wait(5)
            end
        end)

Race:CreateButton({
	Title = "Buy Gear",
	Callback = function()
		game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer('UpgradeRace','Buy')
	end})
	
Race:CreateToggle({
	Title = "Teleport To Race Door",
	Value = _G.Settings.Doors,
	Callback = function(value)
		_G.Door = value
		_G.Settings.Doors = value
		SaveSettings()
		StopTween(_G.Door)
end})

spawn(function()
            while _G.Door do
                local player = game:GetService("Players").LocalPlayer
        local hrp = player.Character and player.Character:FindFirstChild("HumanoidRootPart")
        if not hrp then return end  

        hrp.CFrame = CFrame.new(28286.355, 14895.302, 102.625)
        wait(0.1)

        local race = player.Data.Race.Value
        local racePositions = {
            ["Fishman"] = CFrame.new(28224.057, 14889.427, -210.587),
            ["Human"] = CFrame.new(29237.295, 14889.427, -206.950),
            ["Cyborg"] = CFrame.new(28492.414, 14894.427, -422.110),
            ["Skypiea"] = CFrame.new(28967.408, 14918.075, 234.312),
            ["Ghoul"] = CFrame.new(28672.721, 14889.128, 454.596),
            ["Mink"] = CFrame.new(29020.660, 14889.427, -379.268)
        }

        if racePositions[race] then
            wait(0.6)
            if topos then
                topos(racePositions[race])
            else
                hrp.CFrame = racePositions[race]
            end
        end
                task.wait(0.1)
            end
        end)

Race:CreateToggle({
	Title = "Teleport To Great Tree",
	Value = _G.Settings.Tree,
	Callback = function(value)
		_G.GreatTree = value
		_G.Settings.Tree = value
		SaveSettings()
		StopTween(_G.GreatTree)
end})

spawn(function()
            while _G.GreatTree do
                topos(CFrame.new(3032.78003, 2280.85107, -7325.47803, 0.607629955, 0, 0.794220269, 0, 1, 0, -0.794220269, 0, 0.607629955))
                task.wait(0.1)
            end
        end)

Race:CreateToggle({
	Title = "Teleport To Lever",
	Value = _G.Settings.Lever,
	Callback = function(value)
		_G.PullLever = value
		_G.Settings.Lever = value
		SaveSettings()
		StopTween(_G.PullLever)
end})

spawn(function()
            while _G.PullLever do
                topos(CFrame.new(28575.181640625, 14936.6279296875, 72.31636810302734))
                task.wait(0.1)
            end
        end)

Race:CreateToggle({
	Title = "Teleport To Ancient One",
	Value = _G.Settings.One,
	Callback = function(value)
		_G.Ancient = value
		_G.Settings.One = value
		SaveSettings()
		StopTween(_G.Ancient)
end})

spawn(function()
            while _G.Ancient do
                topos(CFrame.new(28981.552734375, 14888.4267578125, -120.245849609375))
                task.wait(0.1)
            end
        end)

local Draco = AllRace:CreateSection({
	Title = "Draco",
	Side = "Right"
})

Draco:CreateToggle({
    Title = "Teleport Doors Trial Draco",
    Value = _G.Settings.DoorDraco,
    Callback = function(value)
        _G.TrialDracoDoor = value
        _G.Settings.DoorDraco = value
        SaveSettings()
        StopTween(_G.TrialDracoDoor)
    end
})

spawn(function()
    while wait() do
        if _G.TrialDracoDoor then
            local trialTeleport = workspace.Map.PrehistoricIsland:FindFirstChild("TrialTeleport")
            if trialTeleport and trialTeleport:IsA("Part") then
                topos(CFrame.new(trialTeleport.Position))
                local distance = (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - trialTeleport.Position).Magnitude
                if distance <= 1 then
                    _G.TrialDracoDoor = false
                end
            end
        end
    end
end)

Draco:CreateToggle({
    Title = "Auto Trial Draco V4 (Beta)",
    Value = _G.Settings.DracoV,
    Callback = function(value)
        _G.TrialDraco = value
        _G.Autoe = value
        _G.Settings.DracoV = value
        SaveSettings()
        StopTween(_G.TrialDraco)
    end
})

local targets = {
    CFrame.new(-40511.5156, 9376.47559, 23461.0684, 0.344219446, -0, -0.938889205, 0, 1, -0, 0.938889205, 0, 0.344219446),
    CFrame.new(-39932.1719, 10690.8682, 22998.2168, -0.545981169, -0.00131224166, -0.837796509, -0.00172352674, 0.999998391, -0.00044309895, 0.837795794, 0.00120204105, -0.545982599),
    CFrame.new(-40043.7031, 9376.47559, 22793.7246, 0.999885917, -0, -0.0151059246, 0, 1, -0, 0.0151059246, 0, 0.999885917),
    CFrame.new(-39913.6797, 10690.8291, 22999.6816, 0.447730243, -0.00137595867, -0.894167602, -0.000347757246, 0.99999845, -0.00171294285, 0.894168556, 0.00107788958, 0.447729051),
    CFrame.new(-39608.3047, 9376.47559, 23470.6914, -0.374410987, 0, -0.927262843, 0, 1, 0, 0.927262843, 0, -0.374410987),
    CFrame.new(-39908.7578, 10690.8496, 22986.3145, 0.997909248, 0.00107694988, -0.0646221414, -0.00116624858, 0.999998391, -0.00134415214, 0.0646205917, 0.00141670729, 0.99790889),
    CFrame.new(-39831.1562, 10669.5391, 23010.709, -0.374036908, -0.661393404, -0.650119364, -0.86683774, 0.000129938126, 0.49859041, -0.329679966, 0.75003916, -0.573369384),
}

spawn(function()
    while wait() do
        if _G.TrialDraco then
            for _, target in ipairs(targets) do
                if not _G.TrialDraco then break end
                topos(target)
                wait()
                local character = game.Players.LocalPlayer.Character
                if character and character:FindFirstChild("HumanoidRootPart") then
                    local distance = (character.HumanoidRootPart.Position - target.Position).Magnitude
                    if distance <= 1 then
                        wait(3)
                        game:GetService("VirtualInputManager"):SendKeyEvent(true, "E", false, game)
                        game:GetService("VirtualInputManager"):SendKeyEvent(false, "E", false, game)
                        wait(4.5)
                    end
                end
            end
        end
    end
end)

Draco:CreateToggle({
	Title = "Auto Train Gear Draco",
	Value = _G.Settings.TrainD,
	Callback = function(value)
		_G.Bone = value
        _G.Gear = value
        _G.AwaV = value
        _G.Settings.TrainD = value
        SaveSettings()
        StopTween(_G.Bone)
end})

Draco:CreateToggle({
	Title = "Auto Buy Gear Draco",
	Value = _G.Settings.BuyGearD,
	Callback = function(value)
		_G.GearDraco = value
		_G.Settings.BuyGearD = value
		SaveSettings()
end})

spawn(function()
            while _G.GearDraco do
                pcall(function()
                    local args = {
    [1] = "Interacted"
}

workspace.Map.Waterfall.HydraIslandClient.RemoteFunction:InvokeServer(unpack(args))
local args = {
    [1] = "UpgradeRace",
    [2] = "Check",
    [3] = 2
}

game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
local args = {
    [1] = "UpgradeRace",
    [2] = "Buy",
    [3] = 2
}

game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
                end)
                task.wait(5)
            end
        end)
        
Draco:CreateButton({
	Title = "Buy Gear Draco",
	Callback = function()
		local args = {
    [1] = "Interacted"
}

workspace.Map.Waterfall.HydraIslandClient.RemoteFunction:InvokeServer(unpack(args))
local args = {
    [1] = "UpgradeRace",
    [2] = "Check",
    [3] = 2
}

game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
local args = {
    [1] = "UpgradeRace",
    [2] = "Buy",
    [3] = 2
}

game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
	end})
	        
local Racee = AllRace:CreateSection({
	Title = "Race V2",
	Side = "Right"
})

Racee:CreateToggle({
	Title = "Auto Upgrade Race V2",
	Value = _G.Settings.AutoJob,
	Callback = function(value)
	    _G.v2race = value
		_G.Settings.RaceV = value
		SaveSettings()
		StopTween(_G.v2race)
end})

spawn(function()
    pcall(function()
        while wait(0.1) do
            if _G.v2race then
                if not game.Players.LocalPlayer.Data.Race:FindFirstChild("Evolved") then
                    if game.ReplicatedStorage.Remotes.CommF_:InvokeServer("Alchemist", "1") == 0 then
                        if BypassTP and not game.Players.LocalPlayer.Backpack:FindFirstChild("Flower 1") and not game.Players.LocalPlayer.Character:FindFirstChild("Flower 1") then
                            if (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - CFrame.new(-2775.2002, 72.9661407, -3569.91821).Position).Magnitude > 1500 then
                                BTP(CFrame.new(-2775.2002, 72.9661407, -3569.91821))
                            elseif (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - CFrame.new(-2775.2002, 72.9661407, -3569.91821).Position).Magnitude < 1500 then
                                TP1(CFrame.new(-2775.2002, 72.9661407, -3569.91821))
                            end
                        end

                        if (CFrame.new(-2777.6001, 72.9661407, -3571.42285).Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 3 then
                            wait(1.3)
                            game.ReplicatedStorage.Remotes.CommF_:InvokeServer("Alchemist", "2")
                        end

                    elseif game.ReplicatedStorage.Remotes.CommF_:InvokeServer("Alchemist", "1") == 1 then
                        if not game.Players.LocalPlayer.Backpack:FindFirstChild("Flower 1") and not game.Players.LocalPlayer.Character:FindFirstChild("Flower 1") then
                            if workspace.Flower1.Transparency ~= 1 then
                                if (workspace.Flower1.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 300 then
                                    TP1(workspace.Flower1.CFrame)
                                else
                                    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = workspace.Flower1.CFrame
                                    wait(1)
                                end
                            elseif game.Lighting.ClockTime > 3 and game.Lighting.ClockTime < 16 then
                                local a={}local b=""local c=os.date("!*t").hour;local d=false;local e=pcall(function()a=game:GetService('HttpService'):JSONDecode(readfile("ChestCollect.SkullHub"))end)if not e then table.insert(a,c)writefile("collect.json",game:GetService('HttpService'):JSONEncode(a))end;function TPReturner()local f;if b==""then f=game.HttpService:JSONDecode(game:HttpGet('https://games.roblox.com/v1/games/'..PlaceID..'/servers/Public?sortOrder=Asc&limit=100'))else f=game.HttpService:JSONDecode(game:HttpGet('https://games.roblox.com/v1/games/'..PlaceID..'/servers/Public?sortOrder=Asc&limit=100&cursor='..b))end;local g=""if f.nextPageCursor and f.nextPageCursor~="null"and f.nextPageCursor~=nil then b=f.nextPageCursor end;local h=0;for i,j in pairs(f.data)do local k=true;g=tostring(j.id)if tonumber(j.maxPlayers)>tonumber(j.playing)then for l,m in pairs(a)do if h~=0 then if g==tostring(m)then k=false end else if tonumber(c)~=tonumber(m)then local n=pcall(function()delfile("collect.json")a={}table.insert(a,c)end)end end;h=h+1 end;if k==true then table.insert(a,g)wait()pcall(function()writefile("collect.json",game:GetService('HttpService'):JSONEncode(a))wait()game:GetService("TeleportService"):TeleportToPlaceInstance(PlaceID,g,game.Players.LocalPlayer)end)wait(4)end end end end;function Teleport()while wait()do pcall(function()TPReturner()if b~=""then TPReturner()end end)end end;Teleport()
                            end
                        end
                        if not game.Players.LocalPlayer.Backpack:FindFirstChild("Flower 2") and not game.Players.LocalPlayer.Character:FindFirstChild("Flower 2") then
                            if workspace.Flower2.Transparency ~= 1 then
                                if (workspace.Flower2.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 300 then
                                    TP1(workspace.Flower2.CFrame)
                                else
                                    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = workspace.Flower2.CFrame
                                    wait(1)
                                end
                            end
                        end
                        if not game.Players.LocalPlayer.Backpack:FindFirstChild("Flower 3") and not game.Players.LocalPlayer.Character:FindFirstChild("Flower 3") then
                            if game:GetService("Workspace").Enemies:FindFirstChild("Zombie") then
                                for i, v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                                    if v.Name == "Zombie" then
                                        repeat
                                            task.wait()                                                                                        bringmob = true
                                            _G.FastAttack = true
                                            AutoHaki()
                                            EquipTool(_G.SelectWeapon)
                                            TP1(v.HumanoidRootPart.CFrame * Pos)
                                            v.HumanoidRootPart.Size = Vector3.new(1, 1, 1)
                                            v.HumanoidRootPart.Transparency = 1
                                            v.Humanoid.JumpPower = 0
                                            v.Humanoid.WalkSpeed = 0
                                            v.HumanoidRootPart.CanCollide = false
                                            StardMag = true
                                    FastMon = v.HumanoidRootPart.CFrame
                                        until game.Players.LocalPlayer.Backpack:FindFirstChild("Flower 3") or not v.Parent or v.Humanoid.Health <= 0 or _G.v2race == false
                                        StardMag = false
                                    end
                                end
                            else
                                TP1(CFrame.new(-5685.9233398438, 48.480125427246, -853.23724365234))
                            end
                        end
                    elseif game.ReplicatedStorage.Remotes.CommF_:InvokeServer("Alchemist", "1") == 2 then
                        if (CFrame.new(-2777.6001, 72.9661407, -3571.42285).Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 3 then
                            TP1(CFrame.new(-2777.6001, 72.9661407, -3571.42285))
                        else
                            game.ReplicatedStorage.Remotes.CommF_:InvokeServer("Alchemist", "3")
                        end
                    end
                end
            end
        end
    end)
end)

local Sea = Window:CreateTab({
	Title = "Sea Event",
	Icon = "waves"
})

local Pre = Sea:CreateSection({
	Title = "Prehistoric Island",
	Side = "Left"
})

Pre:CreateButton({
	Title = "Craft Dino Hood",
	Callback = function()
		local args = {
            [1] = "CraftItem",
            [2] = "Craft",
            [3] = "DinoHood"
        }
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
	end})
	
Pre:CreateButton({
	Title = "Craft T-Rex Skull",
	Callback = function()
		local args = {
            [1] = "CraftItem",
            [2] = "Craft",
            [3] = "TRexSkull"
        }
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
	end})
		
Pre:CreateButton({
	Title = "Remove Lava Prehistoric Island",
	Callback = function()
		RemoveLava()
	end})

function RemoveLava()
    for _, v in pairs(game.Workspace:GetDescendants()) do
        if v.Name == "Lava" then   
            v:Destroy()
        end
    end
    for _, v in pairs(game.ReplicatedStorage:GetDescendants()) do
        if v.Name == "Lava" then   
            v:Destroy()
        end
    end
end

Volcanic = Pre:CreateLabel({
	Title = "Status Prehistoric Island:"
})

spawn(function()
    while wait(3) do
        pcall(function()
            local pre = "Status Prehistoric Island:\n"
            if game.Workspace._WorldOrigin.Locations:FindFirstChild("Prehistoric Island") then
                pre = pre .. "✅ Spawn"
            else
                pre = pre .. "❌ Not Spawn"
            end
            Volcanic:Set(pre)
        end)
    end
end)

Pre:CreateToggle({
	Title = "Auto Find Prehistoric Island",
	Value = _G.Settings.FindPre,
	Callback = function(value)
		_G.AutoFindPrehistoric = value
		_G.Settings.FindPre = value
		SaveSettings()
		StopTween(_G.AutoFindPrehistoric)
end})

local seatHistory = {}
local Players = game:GetService("Players")
local RunService = game:GetService("RunService")
local VirtualInputManager = game:GetService("VirtualInputManager")
local Workspace = game:GetService("Workspace")
local SetSpeedBoat = 350  

RunService.RenderStepped:Connect(function()
    for boatName, seat in pairs(seatHistory) do
        if seat and seat.Parent and seat.Name == "VehicleSeat" and not seat.Occupant then
            seatHistory[boatName] = seat
        end
    end
end)

local function tpToMyBoat()
    for boatName, seat in pairs(seatHistory) do
        if seat and seat.Parent and seat.Name == "VehicleSeat" and not seat.Occupant then
            topos(seat.CFrame)
        end
    end
end

spawn(function()
    while wait() do
        pcall(function()
            if _G.AutoFindPrehistoric then
                local LocalPlayer = game.Players.LocalPlayer
                local MyBoat = nil

                for _, boat in pairs(Workspace.Boats:GetChildren()) do
                    if boat.Name == "Guardian" and boat:FindFirstChild("Owner") and boat.Owner.Value == LocalPlayer then
                        MyBoat = boat
                        break
                    end
                end

                if not MyBoat then
                    buyb = TPP(CFrame.new(-17064.3008, 103.064011, 881.570007, 0.207885921, 0, 0.97815311, 0, 1, 0, -0.97815311, 0, 0.207885921))
                    if (LocalPlayer.Character.HumanoidRootPart.Position - Vector3.new(-17064.3008, 103.064011, 881.570007, 0.207885921, 0, 0.97815311, 0, 1, 0, -0.97815311, 0, 0.207885921)).Magnitude <= 10 then
                        if buyb then buyb:Stop() end
                        local args = {
                            [1] = "BuyBoat",
                            [2] = "Guardian"
                        }
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
                    end
                elseif MyBoat then
                    local seat = MyBoat:FindFirstChild("VehicleSeat")
                    if seat and LocalPlayer.Character:FindFirstChild("Humanoid").Sit == false then
                        TPP(seat.CFrame * CFrame.new(0,1,0))
                    end
                end
            end
        end)
    end
end)

local isTeleporting = false
local notified = false
RunService.RenderStepped:Connect(function()
    if not _G.AutoFindPrehistoric then
        notified = false
        return
    end
    local player = Players.LocalPlayer
    local character = player.Character
    if not character or not character:FindFirstChild("Humanoid") then return end
    
    local function tpToMyBoat()
        if isTeleporting then return end
        isTeleporting = true
        for boatName, seat in pairs(seatHistory) do
            if seat and seat.Parent and seat.Name == "VehicleSeat" and not seat.Occupant then
                topos(seat.CFrame)
                break
            end
        end
        isTeleporting = false
    end
    
    local humanoid = character.Humanoid
    local boatFound = false
    local currentBoat = nil
    
    for _, b in pairs(Workspace.Boats:GetChildren()) do
        local seat = b:FindFirstChild("VehicleSeat")
        if seat and seat.Occupant == humanoid then
            boatFound = true
            currentBoat = seat
            seatHistory[b.Name] = seat
        elseif seat and seat.Occupant == nil then
            tpToMyBoat()
        end
    end

    if not boatFound then return end
    
    currentBoat.MaxSpeed = SetSpeedBoat
    currentBoat.CFrame = CFrame.new(Vector3.new(currentBoat.Position.X, currentBoat.Position.Y, currentBoat.Position.Z)) * currentBoat.CFrame.Rotation
    VirtualInputManager:SendKeyEvent(true, "W", false, game)

    for _, v in pairs(Workspace.Boats:GetDescendants()) do
        if v:IsA("BasePart") then v.CanCollide = false end
    end
    for _, v in pairs(character:GetDescendants()) do
        if v:IsA("BasePart") then v.CanCollide = false end
    end

    local islandsToDelete = { 
        "ShipwreckIsland", 
        "SandIsland", 
        "TreeIsland",
        "TinyIsland", 
        "MysticIsland", 
        "KitsuneIsland", 
        "FrozenDimension" 
    }
    for _, islandName in ipairs(islandsToDelete) do
        local island = Workspace.Map:FindFirstChild(islandName)
        if island and island:IsA("Model") then
            island:Destroy()
        end
    end

    local prehistoricIsland = Workspace.Map:FindFirstChild("PrehistoricIsland")
    if prehistoricIsland then
        VirtualInputManager:SendKeyEvent(false, "W", false, game)
      
        _G.AutoFindPrehistoric = false
        Fluent:Notify({
            Title = "Notification",
            Content = "Prehistoric Island Spawn",
            Duration = 5
        })
        game.Players.LocalPlayer.Character.Humanoid.Sit = false
        _G.TpPrehistoric = true

        if not notified then
            notified = true
        end
        return
    end
end)

Pre:CreateToggle({
	Title = "Teleport Prehistoric Island",
	Value = _G.Settings.TpVolcanic,
	Callback = function(value)
		_G.TpPrehistoric = value
		_G.Settings.TpVolcanic = value
		SaveSettings()
		StopTween(_G.TpPrehistoric)
end})

spawn(function()
    local island
    while not island do
        island = game:GetService("Workspace").Map:FindFirstChild("PrehistoricIsland")
        wait()
    end
    while wait() do
        if _G.TpPrehistoric then
            local prehistoricIslandCore = game:GetService("Workspace").Map:FindFirstChild("PrehistoricIsland")
            if prehistoricIslandCore then
                local relic = prehistoricIslandCore:FindFirstChild("Core") and prehistoricIslandCore.Core:FindFirstChild("PrehistoricRelic")
                local skull = relic and relic:FindFirstChild("Skull")
                if skull then
                    topos(CFrame.new(skull.Position))
                    _G.TpPrehistoric = false
                end
            end
        end
    end
end)

Pre:CreateToggle({
	Title = "Auto Fix Volcanic",
	Value = _G.Settings.FixVol,
	Callback = function(value)
		_G.DefendVolcano = value
		_G.Water = value
		_G.Settings.FixVol = value
		SaveSettings()
		StopTween(_G.DefendVolcano)
end})

local function useSkill(skillKey)
	game:GetService("VirtualInputManager"):SendKeyEvent(true, skillKey, false, game)
	game:GetService("VirtualInputManager"):SendKeyEvent(false, skillKey, false, game)
end

local function removeLava()
	local interiorLavaModel = game.Workspace.Map.PrehistoricIsland.Core:FindFirstChild("InteriorLava")
	if interiorLavaModel and interiorLavaModel:IsA("Model") then
		interiorLavaModel:Destroy()
	end

	local prehistoricIsland1 = game.Workspace.Map:FindFirstChild("PrehistoricIsland")
	if prehistoricIsland1 then
		for _, descendant in pairs(prehistoricIsland1:GetDescendants()) do
			if descendant:IsA("Part") and descendant.Name:lower():find("lava") then
				descendant:Destroy()
			end
		end
	end

	local prehistoricIsland2 = game.Workspace.Map:FindFirstChild("PrehistoricIsland")
	if prehistoricIsland2 then
		for _, model in pairs(prehistoricIsland2:GetDescendants()) do
			if model:IsA("Model") then
				for _, child in pairs(model:GetDescendants()) do
					if child:IsA("MeshPart") and child.Name:lower():find("lava") then
						child:Destroy()
					end
				end
			end
		end
	end
end

local function findValidRock()
	local volcanoRocksFolder = game.Workspace.Map.PrehistoricIsland.Core.VolcanoRocks
	for _, Rock in pairs(volcanoRocksFolder:GetChildren()) do
		if Rock:IsA("Model") then
			local volcanorock = Rock:FindFirstChild("volcanorock")
			if volcanorock and volcanorock:IsA("MeshPart") then
				local color = volcanorock.Color
				if color == Color3.fromRGB(185, 53, 56) or color == Color3.fromRGB(185, 53, 57) then
					return volcanorock
				end
			end
		end
	end
	return nil
end

local function equipAndUseSkill(toolType)
	local player = game.Players.LocalPlayer
	local backpack = player.Backpack
	for _, item in pairs(backpack:GetChildren()) do
		if item:IsA("Tool") and item.ToolTip == toolType then
			item.Parent = player.Character
			for _, skill in ipairs({"Z", "X", "C", "V", "F"}) do
				wait()
				pcall(function()
					useSkill(skill)
				end)
			end
			item.Parent = backpack
			break
		end
	end
end

spawn(function()
	while wait() do
		if _G.DefendVolcano then
			AutoHaki()
			pcall(removeLava)
			local currentTarget = findValidRock()
			if currentTarget then
				local targetPosition = CFrame.new(currentTarget.Position)
				topos(targetPosition)
				local color = currentTarget.Color
				if color ~= Color3.fromRGB(185, 53, 56) and color ~= Color3.fromRGB(185, 53, 57) then
					currentTarget = findValidRock()
				else
					local currentPosition = game.Players.LocalPlayer.Character.HumanoidRootPart.Position
					local distance = (currentPosition - currentTarget.Position).Magnitude
					if distance <= 1 then
						if _G.UseMelee then
							equipAndUseSkill("Melee")
						end
						if _G.UseSword then
							equipAndUseSkill("Sword")
						end
						if _G.UseGun then
							equipAndUseSkill("Gun")
						end
					end
					_G.TpPrehistoric = false
				end
			else
				_G.TpPrehistoric = true
			end
		end
	end
end)

Pre:CreateToggle({
	Title = "Auto Kill Golem",
	Value = _G.Settings.KillGolem,
	Callback = function(value)
		_G.KillGolem = value
		_G.Kill_Aura = value
		_G.Water = value
		_G.Settings.KillGolem = value
		SaveSettings()
		StopTween(_G.KillGolem)
end})

spawn(function()
    while wait() do
        if _G.KillGolem and World3 then
            pcall(function()
                if game:GetService("Workspace").Enemies:FindFirstChild("Lava Golem") then
                    for i, v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                        if v.Name == "Lava Golem" then
                            if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
                                EquipWeapon(_G.SelectWeapon)

                                repeat task.wait()
                                    AutoHaki()
                                    v.HumanoidRootPart.CanCollide = false
                                    v.Humanoid.WalkSpeed = 0
                                    v.HumanoidRootPart.Size = Vector3.new(50, 50, 50)
                                    topos(v.HumanoidRootPart.CFrame * Pos)
                                    sethiddenproperty(game.Players.LocalPlayer, "SimulationRadius", math.huge)
                                until not _G.KillGolem or not v.Parent or v.Humanoid.Health <= 0
                            end
                        end
                    end
                else
                    UnEquipWeapon(_G.SelectWeapon)
                    if game:GetService("ReplicatedStorage"):FindFirstChild("Lava Golem") then
                        topos(game:GetService("ReplicatedStorage"):FindFirstChild("Lava Golem").HumanoidRootPart.CFrame * CFrame.new(2, 20, 2))
                    end
                end
            end)
        end
    end
end)

spawn(function()
    pcall(function()
        while wait() do
            if _G.Kill_Aura then
                local player = game:GetService("Players").LocalPlayer
                local enemies = game:GetService("Workspace").Enemies:GetChildren()
                local playerPos = player.Character and player.Character:FindFirstChild("HumanoidRootPart") and player.Character.HumanoidRootPart.Position
                if playerPos then
                    for _, enemy in pairs(enemies) do
                        if enemy:FindFirstChild("Humanoid") and enemy:FindFirstChild("HumanoidRootPart") and enemy.Humanoid.Health > 0 then
                            local distance = (enemy.HumanoidRootPart.Position - playerPos).Magnitude
                            if distance <= 1000 then
                                pcall(function()
                                    repeat wait()
                                        sethiddenproperty(player, "SimulationRadius", math.huge)
                                        enemy.Humanoid.Health = 0
                                        enemy.HumanoidRootPart.CanCollide = false
                                    until not _G.Kill_Aura or not enemy.Parent or enemy.Humanoid.Health <= 0
                                end)
                            end
                        end
                    end
                end
            end
        end
    end)
end)

spawn(function()
			while task.wait() do
				pcall(function()
					if _G.Water then
						game:GetService("Workspace").Map["WaterBase-Plane"].Size = Vector3.new(1000,112,1000)
					else
						game:GetService("Workspace").Map["WaterBase-Plane"].Size = Vector3.new(1000,80,1000)
					end
				end)
			end
		end)

Pre:CreateToggle({
	Title = "Auto Collect Dino Bone",
	Value = _G.Settings.CollectBone,
	Callback = function(value)
		_G.CollectBone = value
		_G.Settings.CollectBone = value
		SaveSettings()
end})

spawn(function()
    while wait() do
        if _G.CollectBone then
            for _, obj in pairs(workspace:GetDescendants()) do
                if obj:IsA("BasePart") and obj.Name == "DinoBone" then
                    topos(CFrame.new(obj.Position))
                end
            end
        end
    end
end)

Pre:CreateToggle({
	Title = "Auto Collect Dragon Egg",
	Value = _G.Settings.CollectEgg,
	Callback = function(value)
		_G.CollectEgg = value
		_G.Settings.CollectEgg = value
		SaveSettings()
end})

spawn(function()
	while wait() do
		if _G.CollectEgg then
			local dragonEggs = workspace.Map.PrehistoricIsland.Core.SpawnedDragonEggs:GetChildren()
			if #dragonEggs > 0 then
				local randomEgg = dragonEggs[math.random(1, #dragonEggs)]
				if randomEgg:IsA("Model") and randomEgg.PrimaryPart then
					topos(randomEgg.PrimaryPart.CFrame)
					local playerPosition = game.Players.LocalPlayer.Character.HumanoidRootPart.Position
					local eggPosition = randomEgg.PrimaryPart.Position
					local distance = (playerPosition - eggPosition).Magnitude
					if distance <= 1 then
						game:GetService("VirtualInputManager"):SendKeyEvent(true, "E", false, game)
						wait(1.5)
						game:GetService("VirtualInputManager"):SendKeyEvent(false, "E", false, game)
					end
				end
			end
		end
	end
end)

Pre:CreateLabel({
	Title = "Weapon Fix Volcanic"
})

Pre:CreateToggle({
	Title = "Use Melee",
	Value = _G.Settings.UseM,
	Callback = function(value)
		_G.UseMelee = value
		_G.Settings.UseM = value
		SaveSettings()
end})

Pre:CreateToggle({
	Title = "Use Sword",
	Value = _G.Settings.UseS,
	Callback = function(value)
		_G.UseSword = value
		_G.Settings.UseS = value
		SaveSettings()
end})

Pre:CreateToggle({
	Title = "Use Gun",
	Value = _G.Settings.UseG,
	Callback = function(value)
		_G.UseGun = value
		_G.Settings.UseG = value
		SaveSettings()
end})

local Se = Sea:CreateSection({
	Title = "Sea Event",
	Side = "Right"
})

Se:CreateToggle({
	Title = "Remove Rock Sea Event",
	Value = _G.Settings.Rock,
	Callback = function(value)
		_G.Settings.Rock = value
		SaveSettings()
end})

game:GetService("RunService").RenderStepped:Connect(function()
    if _G.Settings.Rock then
        local rocks = Workspace.Rocks:GetChildren()
        for _, rock in pairs(rocks) do
            if rock:IsA("BasePart") then
                rock.CanCollide = false
                rock:Destroy()
            end
        end
    end
end)

Se:CreateToggle({
	Title = "Remove Fog",
	Value = _G.Settings.Fogg,
	Callback = function(value)
		_G.Fog = value
		_G.Settings.Fogg = value
		SaveSettings()
end})

spawn(function()
            pcall(function()
             if _G.Fog then
                game:GetService("Lighting").LightingLayers:Destroy()
                game:GetService("Lighting").Sky:Destroy()
             end
            end)
        end)

Se:CreateLabel({
	Title = "Sea Event Fix Soon"
})

local Le = Sea:CreateSection({
	Title = "Leviathan",
	Side = "Right"
})

Le:CreateButton({
	Title = "Buy Spy",
	Callback = function()
		game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("InfoLeviathan", "2")
	end})

Frozen = Le:CreateLabel({
	Title = "Status Frozen Dimension:"
})

spawn(function()
    while wait(3) do
        pcall(function()
            local frozen = "Status Frozen Dimension:\n"
            if game.Workspace._WorldOrigin.Locations:FindFirstChild("Frozen Dimension") then
                frozen = frozen .. "✅ Spawn"
            else
                frozen = frozen .. "❌ Not Spawn"
            end
            Frozen:Set(frozen)
        end)
    end
end)

local boatfrozen = {"Guardian","Beast Hunter"}

Le:CreateDropdown({
	Title = "Select Boat Find Leviathan",
	List = boatfrozen,
	Multi = false,
	Value = _G.Settings.SelectBoatLevi,
	Callback = function(value)
		_G.BoatFindLevi = value
		_G.Settings.SelectBoatLevi = value
		SaveSettings()
end})

Le:CreateToggle({
	Title = "Auto Find Frozen Dimension",
	Value = _G.Settings.FindLe,
	Callback = function(value)
		_G.AutoFindFrozen = value
		_G.Settings.FindLe = value
		SaveSettings()
		StopTween(_G.AutoFindFrozen)
end})

local seatHistory = {}
local Players = game:GetService("Players")
local RunService = game:GetService("RunService")
local VirtualInputManager = game:GetService("VirtualInputManager")
local Workspace = game:GetService("Workspace")
local SetSpeedBoat = 350  

RunService.RenderStepped:Connect(function()
    for boatName, seat in pairs(seatHistory) do
        if seat and seat.Parent and seat.Name == "VehicleSeat" and not seat.Occupant then
            seatHistory[boatName] = seat
        end
    end
end)

local function tpToMyBoat()
    for boatName, seat in pairs(seatHistory) do
        if seat and seat.Parent and seat.Name == "VehicleSeat" and not seat.Occupant then
            topos(seat.CFrame)
        end
    end
end

spawn(function()
    while wait() do
        pcall(function()
            if _G.AutoFindFrozen then
                local LocalPlayer = game.Players.LocalPlayer
                local selectedBoat = _G.BoatFindLevi
                local MyBoat = nil

                for _, boat in pairs(Workspace.Boats:GetChildren()) do
                    if boat.Name == selectedBoat and boat:FindFirstChild("Owner") and boat.Owner.Value == LocalPlayer then
                        MyBoat = boat
                        break
                    end
                end

                if not MyBoat then
                    buyb = TPP(CFrame.new(-17064.3008, 103.064011, 881.570007, 0.207885921, 0, 0.97815311, 0, 1, 0, -0.97815311, 0, 0.207885921))
                    if (LocalPlayer.Character.HumanoidRootPart.Position - Vector3.new(-17064.3008, 103.064011, 881.570007, 0.207885921, 0, 0.97815311, 0, 1, 0, -0.97815311, 0, 0.207885921)).Magnitude <= 10 then
                        if buyb then buyb:Stop() end
                        local args = {
                            [1] = "BuyBoat",
                            [2] = selectedBoat
                        }
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
                    end
                elseif MyBoat then
                    local seat = MyBoat:FindFirstChild("VehicleSeat")
                    if seat and LocalPlayer.Character:FindFirstChild("Humanoid").Sit == false then
                        TPP(seat.CFrame * CFrame.new(0,1,0))
                    end
                end
            end
        end)
    end
end)

local isTeleporting = false
local notified = false
RunService.RenderStepped:Connect(function()
    if not _G.AutoFindFrozen then
        notified = false
        return
    end
    local player = Players.LocalPlayer
    local character = player.Character
    if not character or not character:FindFirstChild("Humanoid") then return end
    
    local function tpToMyBoat()
        if isTeleporting then return end
        isTeleporting = true
        for boatName, seat in pairs(seatHistory) do
            if seat and seat.Parent and seat.Name == "VehicleSeat" and not seat.Occupant then
                topos(seat.CFrame)
                break
            end
        end
        isTeleporting = false
    end
    
    local humanoid = character.Humanoid
    local boatFound = false
    local currentBoat = nil
    
    for _, b in pairs(Workspace.Boats:GetChildren()) do
        local seat = b:FindFirstChild("VehicleSeat")
        if seat and seat.Occupant == humanoid then
            boatFound = true
            currentBoat = seat
            seatHistory[b.Name] = seat
        elseif seat and seat.Occupant == nil then
            tpToMyBoat()
        end
    end

    if not boatFound then return end
    
    currentBoat.MaxSpeed = SetSpeedBoat
    currentBoat.CFrame = CFrame.new(Vector3.new(currentBoat.Position.X, currentBoat.Position.Y, currentBoat.Position.Z)) * currentBoat.CFrame.Rotation
    VirtualInputManager:SendKeyEvent(true, "W", false, game)

    for _, v in pairs(Workspace.Boats:GetDescendants()) do
        if v:IsA("BasePart") then v.CanCollide = false end
    end
    for _, v in pairs(character:GetDescendants()) do
        if v:IsA("BasePart") then v.CanCollide = false end
    end

    local islandsToDelete = { 
        "ShipwreckIsland", 
        "SandIsland", 
        "TreeIsland",
        "TinyIsland", 
        "MysticIsland", 
        "KitsuneIsland", 
        "PrehistoricIsland" 
    }
    for _, islandName in ipairs(islandsToDelete) do
        local island = Workspace.Map:FindFirstChild(islandName)
        if island and island:IsA("Model") then
            island:Destroy()
        end
    end

    local frozenIsland = Workspace.Map:FindFirstChild("FrozenDimension")
    if frozenIsland then
        VirtualInputManager:SendKeyEvent(false, "W", false, game)
           
        _G.AutoFindFrozen = false
        Fluent:Notify({
            Title = "Notification",
            Content = "Frozen Dimension Spawn",
            Duration = 10
        })

        if not notified then
            notified = true
        end
        return
    end
end)

Le:CreateToggle({
	Title = "Teleport Frozen Dimension",
	Value = _G.Settings.TpFrozen,
	Callback = function(value)
		_G.TpLeviathan = value
		_G.Settings.TpFrozen = value
		SaveSettings()
		StopTween(_G.TpLeviathan)
end})

spawn(function()
            while wait() do
                if _G.TpLeviathan then
                    pcall(function()
                        if game.Workspace._WorldOrigin.Locations:FindFirstChild('Frozen Dimension') then
                            topos(game.Workspace._WorldOrigin.Locations:FindFirstChild('Frozen Dimension').HumanoidRootPart.CFrame * CFrame.new(0,500,-100))
                        end
                    end)
                end
            end
        end)
        
Le:CreateLabel({
	Title = "Auto Attack Leviathan (Error)"
})
	
local boatdrive = {"Tiki", "Hydra"}

Le:CreateDropdown({
	Title = "Select Island Drive Boat To",
	List = boatdrive,
	Multi = false,
	Value = _G.Settings.Drivee,
	Callback = function(value)
		_G.Settings.Drivee = value
		SaveSettings()
end})

Le:CreateToggle({
	Title = "Drive Boat To",
	Value = _G.Settings.BoatD,
	Callback = function(value)
		_G.BoatTo = value
		_G.Settings.BoatD = value
		SaveSettings()
end})

local TargetPositions = {
    Tiki = Vector3.new(-16066.626, -60, 433.520233),
    Hydra = Vector3.new(5057.6875, -60, 2470.07349)
}

RunService.RenderStepped:Connect(function()
    if not _G.BoatTo then return end 

    local player = Players.LocalPlayer
    local character = player.Character
    if not character or not character:FindFirstChild("Humanoid") then return end
    local humanoid = character.Humanoid

    local boat = nil
    for _, b in pairs(Workspace.Boats:GetChildren()) do
        if b.Name == "Beast Hunter" then
            local seat = b:FindFirstChild("VehicleSeat")
            if seat and seat.Occupant == humanoid then
                boat = seat
                break
            end
        end
    end

    if boat then
        boat.MaxSpeed = SetSpeedBoat  
        local destination = TargetPositions[_G.Settings.Drivee] or TargetPositions["Tiki"]
        local currentPosition = boat.Position
        local targetPosition = destination
        local direction = (targetPosition - currentPosition).unit
        local moveVector = direction * boat.MaxSpeed * RunService.RenderStepped:Wait()
        
        boat.CFrame = boat.CFrame + moveVector 
        boat.CFrame = CFrame.new(boat.Position, targetPosition)  

        if (boat.Position - targetPosition).magnitude < 120 then
            _G.BoatTo = false
            VirtualInputManager:SendKeyEvent(false, "W", false, game) 
            
            Fluent:Notify({
                Title = "Notification",
                Content = "Went to " .. (_G.Settings.Drivee or "Tiki"),
                Duration = 5
            })
        end
    end
end)

local Combat = Window:CreateTab({
	Title = "Player",
	Icon = "user"
})

local Player = Combat:CreateSection({
	Title = "Player",
	Side = "Left"
})

local Playerslist = {}
for i,v in pairs(game:GetService("Players"):GetChildren()) do
    table.insert(Playerslist,v.Name)
end

Player:CreateDropdown({
	Title = "Select Player",
	List = Playerslist,
	Multi = false,
	Value = 1,
	Callback = function(value)
		SelectPlayer = value
end})

Player:CreateButton({
	Title = "Refresh Player",
	Callback = function()
		table.clear(Playerslist)
        for i,v in pairs(game:GetService("Players"):GetChildren()) do
            table.insert(Playerslist,v.Name)
        end
	end})

Player:CreateToggle({
    Title = "Teleport To Player",
    Value = _G.Settings.Tpp,
    Callback = function(value)
        _G.TpPlayer = value
        _G.Settings.Tpp = value
        SaveSettings()
        if value == false then
        wait()
        topos(game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame)
        wait()
        StopTween(_G.TpPlayer)
        end
    end
})

spawn(function()
    while wait() do
        if _G.TpPlayer then
            pcall(function()
                if game.Players:FindFirstChild(SelectPlayer) then
                    topos(game.Players[SelectPlayer].Character.HumanoidRootPart.CFrame)
                end
            end)
        end
    end
end)

local PVP = Combat:CreateSection({
	Title = "PVP",
	Side = "Right"
})

PVP:CreateToggle({
	Title = "Aimbot Camera Player",
	Value = _G.Settings.Aimbot,
	Callback = function(value)
		_G.AimP = value
		_G.Settings.Aimbot = value
		SaveSettings()
end})

local Players = game:GetService("Players")
local LocalPlayer = Players.LocalPlayer
local Camera = workspace.CurrentCamera
local AimDistance = 2000

local function getNearestPlayer()
    local nearestPlayer = nil
    local shortestDistance = AimDistance

    for _, player in pairs(Players:GetPlayers()) do
        if player ~= LocalPlayer and player.Character and player.Character:FindFirstChild("HumanoidRootPart") then
            local targetPos = player.Character.HumanoidRootPart.Position
            local myPos = LocalPlayer.Character and LocalPlayer.Character:FindFirstChild("HumanoidRootPart") and LocalPlayer.Character.HumanoidRootPart.Position

            if myPos then
                local distance = (targetPos - myPos).Magnitude
                if distance < shortestDistance then
                    shortestDistance = distance
                    nearestPlayer = player
                end
            end
        end
    end

    return nearestPlayer
end

spawn(function()
    while wait() do
        pcall(function()
            if _G.AimP then
                local targetPlayer = getNearestPlayer()
                if targetPlayer and targetPlayer.Character and targetPlayer.Character:FindFirstChild("HumanoidRootPart") then
                    local targetPosition = targetPlayer.Character.HumanoidRootPart.Position
                    Camera.CFrame = CFrame.new(Camera.CFrame.Position, targetPosition) 
                end
            end
        end)
    end
end)

PVP:CreateToggle({
    Title = "Walk Water",
    Value = _G.Settings.Water,
    Callback = function(value)
        _G.Water = value
        _G.Settings.Water = value
        SaveSettings()
end})

PVP:CreateToggle({
	Title = "Dash No Cooldown",
	Value = _G.Settings.DodgeNo,
	Callback = function(value)
		nododgecool = value
        NoDodgeCool()
		_G.Settings.DodgeNo = value
		SaveSettings()
end})

PVP:CreateToggle({
	Title = "Infinite Enegry",
	Value = _G.Settings.InfEn,
	Callback = function(value)
		InfiniteEnergy = value
        originalstam = LocalPlayer.Character.Energy.Value
		_G.Settings.InfEn = value
		SaveSettings()
end})

PVP:CreateToggle({
	Title = "Infinite Geppo",
	Value = _G.Settings.InfNhayCao,
	Callback = function(value)
		_G.InfGeppo = value
		_G.Settings.InfNhayCao = value
		SaveSettings()
end})

spawn(function()
        while wait() do
            pcall(function()
                if _G.InfGeppo then
                    for i,v in next, getgc() do
                        if game:GetService("Players").LocalPlayer.Character.Geppo then
                            if typeof(v) == "function" and getfenv(v).script == game:GetService("Players").LocalPlayer.Character.Geppo then
                                for i2,v2 in next, getupvalues(v) do
                                    if tostring(i2) == "9" then
                                        repeat wait(.1)
                                            setupvalue(v,i2,0)
                                        until not _G.InfGeppo or game:GetService("Players").LocalPlayer.Character.Humanoid.Health <= 0 
                                    end
                                end
                            end
                        end
                    end
                end
            end)
        end
    end)
    
PVP:CreateToggle({
	Title = "Soru No Cooldown",
	Value = _G.Settings.InfSoru,
	Callback = function(value)
		_G.InfSoru = value
		_G.Settings.InfSoru = value
		SaveSettings()
end})

spawn(function()
        while wait() do
            pcall(function()
                if _G.InfSoru and game:GetService("Players").LocalPlayer.Character:FindFirstChild("HumanoidRootPart") ~= nil  then
                    for i,v in next, getgc() do
                        if game:GetService("Players").LocalPlayer.Character.Soru then
                            if typeof(v) == "function" and getfenv(v).script == game:GetService("Players").LocalPlayer.Character.Soru then
                                for i2,v2 in next, getupvalues(v) do
                                    if typeof(v2) == "table" then
                                        repeat wait(0.1)
                                            v2.LastUse = 0
                                        until not _G.InfSoru or game:GetService("Players").LocalPlayer.Character.Humanoid.Health <= 0
                                    end
                                end
                            end
                        end
                    end
                end
            end)
        end
    end)
	
local FruitRaid = Window:CreateTab({
	Title = "Fruits",
	Icon = "apple"
})

local Fruit = FruitRaid:CreateSection({
	Title = "Fruits",
	Side = "Left"
})

Fruit:CreateToggle({
	Title = "Auto Random Fruits",
	Value = _G.Settings.RanFruit,
	Callback = function(value)
		_G.Random_Auto = value
		_G.Settings.RanFruit = value
		SaveSettings()
end})

spawn(function()
        pcall(function()
            while wait(.1) do
                if _G.Random_Auto then
                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Cousin","Buy")
                end 
            end
        end)
    end)

Fruit:CreateToggle({
	Title = "Auto Store Fruits",
	Value = _G.Settings.Store,
	Callback = function(value)
		_G.AutoStoreFruit = value
		_G.Settings.Store = value
		SaveSettings()
end})

function DropFruit()
	pcall(function()
		game.Players.LocalPlayer.PlayerGui.Main.FruitInventory.Position = UDim2.new(10.100, 0, 0.100, 0) 
		game.Players.LocalPlayer.PlayerGui.Main.FruitInventory.Visible = true 
		local invenfruit = game.Players.LocalPlayer.PlayerGui.Main.FruitInventory.Container.Stored.ScrollingFrame.Frame
		wait(.3)
		for i,v in pairs(invenfruit:GetChildren()) do
			if string.find(v.Name,"-") then
				for _,Backpack in pairs(game:GetService("Players").LocalPlayer.Backpack:GetChildren()) do
					FruitStoreF = string.split(Backpack.Name, " ")[1]
					FruitStoreR = FruitStoreF.."-"..FruitStoreF
					if v.Name == FruitStoreR then
						game:GetService("Players").LocalPlayer.Backpack:FindFirstChild(Backpack.Name):Destroy()
					end												
				end
			end
		end
		for i,v in pairs(invenfruit:GetChildren()) do
			if string.find(v.Name,"-") then
				for _,Character in pairs(game:GetService("Players").LocalPlayer.Character:GetChildren()) do
					FruitStoreF = string.split(Character.Name, " ")[1]
					FruitStoreR = FruitStoreF.."-"..FruitStoreF
					if v.Name == FruitStoreR then
						game:GetService("Players").LocalPlayer.Character:FindFirstChild(Character.Name):Destroy()
					end												
				end
			end
		end
	end)
end

spawn(function()
	while wait() do
		if _G.AutoStoreFruit then
			pcall(function()
				DropFruit()
				wait()
				if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Bomb Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Bomb Fruit") then
					game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit","Bomb-Bomb",game:GetService("Players").LocalPlayer.Character:FindFirstChild("Bomb Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Bomb Fruit"))
				end
				if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Spike Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Spike Fruit") then
					game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit","Spike-Spike",game:GetService("Players").LocalPlayer.Character:FindFirstChild("Spike Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Spike Fruit"))
				end
				if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Rocket Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Rocket Fruit") then
					game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit","Rocket-Rocket",game:GetService("Players").LocalPlayer.Character:FindFirstChild("Rocket Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Rocket Fruit"))
				end
				if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Blade Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Blade Fruit") then
					game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit","Blade-Blade",game:GetService("Players").LocalPlayer.Character:FindFirstChild("Blade Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Blade Fruit"))
				end
				if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Spring Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Spring Fruit") then
					game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit","Spring-Spring",game:GetService("Players").LocalPlayer.Character:FindFirstChild("Spring Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Spring Fruit"))
				end
				if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Gas Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Gas Fruit") then
					game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit","Gas-Gas",game:GetService("Players").LocalPlayer.Character:FindFirstChild("Gas Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Gas Fruit"))
				end
				if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Smoke Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Smoke Fruit") then
					game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit","Smoke-Smoke",game:GetService("Players").LocalPlayer.Character:FindFirstChild("Smoke Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Smoke Fruit"))
				end
				if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Spin Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Spin Fruit") then
					game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit","Spin-Spin",game:GetService("Players").LocalPlayer.Character:FindFirstChild("Spin Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Spin Fruit"))
				end
				if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Flame Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Flame Fruit") then
					game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit","Flame-Flame",game:GetService("Players").LocalPlayer.Character:FindFirstChild("Flame Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Flame Fruit"))
				end
				if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Bird: Falcon Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Bird: Falcon Fruit") then
					game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit","Bird-Bird: Falcon",game:GetService("Players").LocalPlayer.Character:FindFirstChild("Bird: Falcon Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Bird: Falcon Fruit"))
				end
				if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Ice Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Ice Fruit") then
					game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit","Ice-Ice",game:GetService("Players").LocalPlayer.Character:FindFirstChild("Ice Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Ice Fruit"))
				end
				if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Sand Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Sand Fruit") then
					game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit","Sand-Sand",game:GetService("Players").LocalPlayer.Character:FindFirstChild("Sand Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Sand Fruit"))
				end
				if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Dark Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Dark Fruit") then
					game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit","Dark-Dark",game:GetService("Players").LocalPlayer.Character:FindFirstChild("Dark Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Dark Fruit"))
				end
				if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Ghost Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Ghost Fruit") then
					game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit","Ghost-Ghost",game:GetService("Players").LocalPlayer.Character:FindFirstChild("Ghost Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Ghost Fruit"))
				end
				if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Diamond Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Diamond Fruit") then
					game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit","Diamond-Diamond",game:GetService("Players").LocalPlayer.Character:FindFirstChild("Diamond Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Diamond Fruit"))
				end
				if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Light Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Light Fruit") then
					game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit","Light-Light",game:GetService("Players").LocalPlayer.Character:FindFirstChild("Light Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Light Fruit"))
				end
				if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Love Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Love Fruit") then
					game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit","Love-Love",game:GetService("Players").LocalPlayer.Character:FindFirstChild("Love Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Love Fruit"))
				end
				if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Rubber Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Rubber Fruit") then
					game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit","Rubber-Rubber",game:GetService("Players").LocalPlayer.Character:FindFirstChild("Rubber Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Rubber Fruit"))
				end
				if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Barrier Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Barrier Fruit") then
					game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit","Barrier-Barrier",game:GetService("Players").LocalPlayer.Character:FindFirstChild("Barrier Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Barrier Fruit"))
				end
				if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Magma Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Magma Fruit") then
					game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit","Magma-Magma",game:GetService("Players").LocalPlayer.Character:FindFirstChild("Magma Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Magma Fruit"))
				end
				if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Portal Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Portal Fruit") then
					game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit","Portal-Portal",game:GetService("Players").LocalPlayer.Character:FindFirstChild("Portal Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Portal Fruit"))
				end
				if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Quake Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Quake Fruit") then
					game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit","Quake-Quake",game:GetService("Players").LocalPlayer.Character:FindFirstChild("Quake Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Quake Fruit"))
				end
				if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Human-Human: Buddha Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Human-Human: Buddha Fruit") then
					game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit","Human-Human: Buddha",game:GetService("Players").LocalPlayer.Character:FindFirstChild("Human-Human: Buddha Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Human-Human: Buddha Fruit"))
				end
				if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Spider Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Spider Fruit") then
					game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit","Spider-Spider",game:GetService("Players").LocalPlayer.Character:FindFirstChild("Spider Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Spider Fruit"))
				end
				if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Bird: Phoenix Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Bird: Phoenix Fruit") then
					game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit","Bird-Bird: Phoenix",game:GetService("Players").LocalPlayer.Character:FindFirstChild("Bird: Phoenix Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Bird: Phoenix Fruit"))
				end
				if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Rumble Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Rumble Fruit") then
					game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit","Rumble-Rumble",game:GetService("Players").LocalPlayer.Character:FindFirstChild("Rumble Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Rumble Fruit"))
				end
				if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Pain Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Pain Fruit") then
					game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit","Pain-Pain",game:GetService("Players").LocalPlayer.Character:FindFirstChild("Pain Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Pain Fruit"))
				end
				if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Gravity Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Gravity Fruit") then
					game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit","Gravity-Gravity",game:GetService("Players").LocalPlayer.Character:FindFirstChild("Gravity Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Gravity Fruit"))
				end
				if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Dough Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Dough Fruit") then
					game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit","Dough-Dough",game:GetService("Players").LocalPlayer.Character:FindFirstChild("Dough Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Dough Fruit"))
				end
				if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Shadow Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Shadow Fruit") then
					game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit","Shadow-Shadow",game:GetService("Players").LocalPlayer.Character:FindFirstChild("Shadow Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Shadow Fruit"))
				end
				if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Venom Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Venom Fruit") then
					game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit","Venom-Venom",game:GetService("Players").LocalPlayer.Character:FindFirstChild("Venom Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Venom Fruit"))
				end
				if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Control Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Control Fruit") then
					game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit","Control-Control",game:GetService("Players").LocalPlayer.Character:FindFirstChild("Control Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Control Fruit"))
				end
				if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Dragon Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Dragon Fruit") then
					game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit","Dragon-Dragon",game:GetService("Players").LocalPlayer.Character:FindFirstChild("Dragon Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Dragon Fruit"))
				end
				if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Kitsune Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Kitsune Fruit") then
					game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit","Kitsune-Kitsune",game:GetService("Players").LocalPlayer.Character:FindFirstChild("Kitsune Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Kitsune Fruit"))
				end
				if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Leopard Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Leopard Fruit") then
					game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit","Leopard-Leopard",game:GetService("Players").LocalPlayer.Character:FindFirstChild("Leopard Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Leopard Fruit"))
				end
				if game:GetService("Players").LocalPlayer.Character:FindFirstChild("T-Rex Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("T-Rex Fruit") then
					game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit","T-Rex-T-Rex",game:GetService("Players").LocalPlayer.Character:FindFirstChild("T-Rex Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("T-Rex Fruit"))
				end
				if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Mammoth Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Mammoth Fruit") then
					game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit","Mammoth-Mammoth",game:GetService("Players").LocalPlayer.Character:FindFirstChild("Mammoth Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Mammoth Fruit"))
				end
				if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Yeti Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Yeti Fruit") then
					game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit","Yeti-Yeti",game:GetService("Players").LocalPlayer.Character:FindFirstChild("Yeti Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Yeti Fruit"))
				end
			end)
		 end
	   end
    end)

Fruit:CreateToggle({
    Title = "Auto Collect Fruits",
    Value = _G.Settings.CollectFruit,
    Callback = function(value)
        _G.CollectFruits = value
        _G.Settings.CollectFruit = value
        SaveSettings()
    end
})

spawn(function()
    while wait(.1) do
        if _G.CollectFruits then
            local foundFruit = false
            for i, v in pairs(game.Workspace:GetChildren()) do
                if string.find(v.Name, "Fruit") then
                    foundFruit = true
                    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.Handle.CFrame
                    break
                end
            end

            if not foundFruit and _G.HopFruits then  
                Hop()  
            end  
        end
    end
end)

Fruit:CreateToggle({
	Title = "Hop Find Fruits",
	Value = _G.Settings.HopFruits,
	Callback = function(value)
        if value and not _G.CollectFruits then
            Fluent:Notify({
                Title = "Notification",
                Content = "Pls Enable Auto Collect Fruits",
                Duration = 8
            })
        end
        _G.HopFruits = value
        _G.Settings.HopFruits = value
        SaveSettings()
    end
})

local Raid = FruitRaid:CreateSection({
	Title = "Raid",
	Side = "Right"
})

_G.SelectChip = selectraids or ""
	Raidslist = {}
	RaidsModule = require(game.ReplicatedStorage.Raids)
	for i,v in pairs(RaidsModule.raids) do
		table.insert(Raidslist,v)
	end
	for i,v in pairs(RaidsModule.advancedRaids) do
		table.insert(Raidslist,v)
	end
Raid:CreateDropdown({
	Title = "Select Chip",
	List = Raidslist,
	Multi = false,
	Value = 1,
	Callback = function(value)
		_G.SelectChip = value
end})

Raid:CreateToggle({
	Title = "Auto Buy Chip",
	Value = _G.Settings.BuyChip,
	Callback = function(value)
		_G.AutoBuyChip = value
		_G.Settings.BuyChip = value
		SaveSettings()
end})

spawn(function()
        pcall(function()
            while wait() do
                if _G.AutoBuyChip then
                    if not game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Special Microchip") or not game:GetService("Players").LocalPlayer.Character:FindFirstChild("Special Microchip") then
                        if not game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 1") then
                            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("RaidsNpc", "Select", _G.SelectChip)
                        end
                    end
                end
            end
        end)
    end)

Raid:CreateToggle({
	Title = "Auto Start Raid",
	Value = _G.Settings.StartRaid,
	Callback = function(value)
		_G.Auto_StartRaid = value
		_G.Settings.StartRaid = value
		SaveSettings()
end})

spawn(function()
    while wait(.1) do
        pcall(function()
            if _G.Auto_StartRaid then
                if game:GetService("Players").LocalPlayer.PlayerGui.Main.Timer.Visible == false then
                    if not game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 1") 
                    and (game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Special Microchip") 
                    or game:GetService("Players").LocalPlayer.Character:FindFirstChild("Special Microchip")) then
                        
                        local player = game:GetService("Players").LocalPlayer
                        if player and player.Character and player.Character:FindFirstChild("HumanoidRootPart") then
                            if World2 then
                                player.Character.HumanoidRootPart.CFrame = CFrame.new(-6446.21094, 245.322006, -4485.10889, 
                                                                                     0.997567594, -0, -0.069705762, 
                                                                                     0, 1, -0, 
                                                                                     0.069705762, 0, 0.997567594)
                            elseif World3 then
                                player.Character.HumanoidRootPart.CFrame = CFrame.new(-5016.92676, 322.531006, -3093.74707, 
                                                                                     0.374604106, -0, -0.92718488, 
                                                                                     0, 1, -0, 
                                                                                     0.92718488, 0, 0.374604106)
                            end
                        end
                        
                        wait(1)

                        if World2 then
                            fireclickdetector(game:GetService("Workspace").Map.CircleIsland.RaidSummon2.Button.Main.ClickDetector)
                        elseif World3 then
                            fireclickdetector(game:GetService("Workspace").Map["Boat Castle"].RaidSummon2.Button.Main.ClickDetector)
                        end
                    end
                end
            end
        end)
    end
end)

Raid:CreateToggle({
	Title = "Auto Farm Raid",
	Value = _G.Settings.AttackRaid,
	Callback = function(value)
		_G.FarmRaid = value
		_G.Settings.AttackRaid = value
		SaveSettings()
		StopTween(_G.FarmRaid)
end})

spawn(function()
    local vs = {}
    local maxDistance = 1000

    while wait(0.1) do
        if _G.FarmRaid then
            local foundEnemy = false

            for _, v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                if v:FindFirstChild("Humanoid") and v.Humanoid.Health > 0 then
                    local player = game.Players.LocalPlayer
                    local character = player.Character
                    if character and character:FindFirstChild("HumanoidRootPart") then
                        local distance = (v.HumanoidRootPart.Position - character.HumanoidRootPart.Position).Magnitude

                        if distance <= maxDistance then
                            foundEnemy = true
                            repeat wait(0.1)
                                EquipWeapon(_G.SelectWeapon)
                                if not character:FindFirstChild("HasBuso") then
                                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Buso")
                                end
                                topos(v.HumanoidRootPart.CFrame)
                                v.HumanoidRootPart.CanCollide = false
                                Fastattack = true
                                v.HumanoidRootPart.Size = Vector3.new(60, 60, 60)
                                game:GetService("VirtualUser"):CaptureController()
                                game:GetService("VirtualUser"):Button1Down(Vector2.new(1280, 672), game.Workspace.CurrentCamera.CFrame)
                                AutoFarmNearestMagnet = true
                                PosMon = v.HumanoidRootPart.CFrame
                            until not _G.FarmRaid or not v.Parent or v.Humanoid.Health <= 0
                            AutoFarmNearestMagnet = false
                            Fastattack = false
                        end
                    end
                end
            end

            if not foundEnemy then
                pcall(function()
                    local pc = game.Players.LocalPlayer.Character
                    if pc and pc:FindFirstChild("HumanoidRootPart") then
                        local wl = game:GetService("Workspace")['_WorldOrigin'].Locations
                        local pp = pc.HumanoidRootPart.Position
                        if ((pp - Vector3.new(-6438.73535, 250.645355, -4501.50684)).Magnitude < 1) or
                           ((pp - Vector3.new(-5017.40869, 314.844055, -2823.0127)).Magnitude < 1) then
                            vs = {}
                        end
                        for i = 1, 5 do
                            local il = "Island " .. i
                            if wl:FindFirstChild(il) and not vs[il] then
                                topos(wl[il].CFrame)
                                vs[il] = true
                                break
                            end
                        end
                    end
                end)
            end
        end
    end
end)

Raid:CreateToggle({
	Title = "Auto Awakening Fruits",
	Value = _G.Settings.Awa,
	Callback = function(value)
		_G.Auto_Awakening = value
		_G.Settings.Awa = value
		SaveSettings()
end})

spawn(function()
        pcall(function()
            while wait(.1) do
                if _G.Auto_Awakener then
                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Awakener","Check")
                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Awakener","Awaken")
                end
            end
        end)
    end)

Raid:CreateToggle({
	Title = "Get Fruits Under 1M Beli",
	Value = _G.Settings.GetFruitM,
	Callback = function(value)
		_G.AutoGetFruit = value
		_G.Settings.GetFruitM = value
		SaveSettings()
end})

local fruitsUnder1M = {
    "Rocket-Rocket", "Spin-Spin", "Chop-Chop", "Spring-Spring",
    "Bomb-Bomb", "Smoke-Smoke", "Spike-Spike", "Flame-Flame",
    "Falcon-Falcon", "Ice-Ice", "Sand-Sand", "Dark-Dark",
    "Ghost-Ghost", "Diamond-Diamond", "Light-Light",
    "Rubber-Rubber", "Barrier-Barrier"
}

spawn(function()
    while wait(1) do
        pcall(function()
            if _G.AutoGetFruit then
                local remote = game:GetService("ReplicatedStorage").Remotes.CommF_
                for _, fruit in pairs(fruitsUnder1M) do
                    remote:InvokeServer("LoadFruit", fruit)
                end
            end
        end)
    end
end)

local Tp = Window:CreateTab({
	Title = "Teleport",
	Icon = "compass"
})

local TpIs = Tp:CreateSection({
	Title = "Teleport Island",
	Side = "Left"
})

local TpSea = Tp:CreateSection({
	Title = "Teleport Sea",
	Side = "Right"
})
        
TpSea:CreateButton({
	Title = "Teleport Sea 1",
	Callback = function()
		game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("TravelMain")
	end})
	
TpSea:CreateButton({
	Title = "Teleport Sea 2",
	Callback = function()
		game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("TravelDressrosa")
	end})
	
TpSea:CreateButton({
	Title = "Teleport Sea 3",
	Callback = function()
		game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("TravelZou")
	end})
			                	                
local Misc = Window:CreateTab({
	Title = "Misc",
	Icon = "backpack"
})

local Job = Misc:CreateSection({
	Title = "Job ID",
	Side = "Left"
})

Job:CreateTextBox({
	Title = "Job ID",
	Placeholder = "Blue X Script",
	Value = "",
	Callback = function(value)
		_G.Job = value
	end})
	
Job:CreateToggle({
	Title = "Auto Spam Join Job ID",
	Value = _G.Settings.AutoJob,
	Callback = function(value)
		_G.SpamJob = value
		_G.Settings.AutoJob = value
		SaveSettings()
end})

spawn(function()
            while _G.SpamJob do
                if _G.Job and _G.Job ~= "" then
                    game:GetService("TeleportService"):TeleportToPlaceInstance(game.PlaceId, _G.Job, game.Players.LocalPlayer)
                end
                task.wait(5)
            end
        end)

Job:CreateButton({
	Title = "Join Server Job ID",
	Callback = function()
		game:GetService("TeleportService"):TeleportToPlaceInstance(game.placeId,_G.Job, game.Players.LocalPlayer)
	end})	

local Server = Misc:CreateSection({
	Title = "Server",
	Side = "Right"
})
			
Server:CreateButton({
	Title = "Hop Server",
	Callback = function()
		Hop()
	end})
	
game:GetService("Players").LocalPlayer.PlayerGui.Main.Version.Visible = false	