local PastedPasser = Instance.new("Frame")
local UICorner = Instance.new("UICorner")
local TopBar = Instance.new("Frame")
local PastedPasserText = Instance.new("TextLabel")
local TextInput = Instance.new("TextBox")
local SendMessage = Instance.new("TextButton")
local AnnaBypasserToggle = Instance.new("TextButton")
local CatBypasserToggle = Instance.new("TextButton")
local UserCreatedToggle = Instance.new("TextButton")
local CloseButton = Instance.new("TextButton")
local ResetFilterButton = Instance.new("TextButton")
local ErrorLabel = Instance.new("TextLabel")

local AnnaBypasserWordMap = {
    ["anal"] = "аnаӏ",
    ["ANAL"] = "АΝАL",
    ["asshole"] = "asshoӏe",
    ["assholes"] = "asshoӏeѕ",
    ["ASSHOLE"] = "AِЅЅНОLЕ",
    ["ASSHOLES"] = "AِЅЅНОLЕS",
    ["bastard"] = "bِastard",
    ["BASTARD"] = "BAჽTARD",
    ["bdsm"] = "bِdsm",
    ["BDSM"] = "BDჽM",
    ["beaner"] = "beaⴖer",
    ["BEANER"] = "BِEANER",
    ["bisexual"] = "bisِexual",
    ["BISEXUAL"] = "BIჽEXUAL",
    ["black"] = "bӏack",
    ["bitch"] = "bِitch",
    ["bitches"] = "bِitches",
    ["BITCH"] = "BِITCH",
    ["BITCHES"] = "BِITCHES",
    ["blowjob"] = "bӏowjob",
    ["blowjobs"] = "bӏowjobs",
    ["BLOWJOB"] = "В〪LOWJОВ",
    ["bondage"] = "boⴖdage",
    ["BONDAGE"] = "BِONDAGE",
    ["boob"] = "bِооb",
    ["boobies"] = "bِооbies",
    ["boobs"] = "bِооbs",
    ["BOOB"] = "BِООВ",
    ["BOOBS"] = "BِООВЅ",
    ["booty"] = "bِooty",
    ["BOOTY"] = "BِООTY",
    ["bong"] = "boⴖg",
    ["BONG"] = "BِONG",
    ["boner"] = "boⴖer",
    ["BONER"] = "BِONER",
    ["breasts"] = "bꞅeasts",
    ["cocaine"] = "cocaiⴖe",
    ["childfucker"] = "childfบcker",
    ["CHILDFUCKER"] = "CHILDꜰUCKER",
    ["chink"] = "chink",
    ["CHINK"] = "CHINK",
    ["clit"] = "cӏit",
    ["CLIT"] = "CLlT",
    ["cock"] = "ᲃосk",
    ["COCK"] = "ᲃОСK",
    ["cocksuck"] = "cِِосksِuck",
    ["COCKSUCK"] = "ᲃОСKႽUCK",
    ["cocksucker"] = "cِِосksِucker",
    ["COCKSUCKER"] = "ᲃОСKSِUСKЕR",
    ["condom"] = "coⴖdom",
    ["CONDOM"] = "ᲃONDOM",
    ["consent"] = "coⴖsent",
    ["CONSENT"] = "ᲃONSENT",
    ["consented"] = "coⴖsented",
    ["CONSENTED"] = "ᲃONSENTED",
    ["coon"] = "coon",
    ["crack"] = "crack",
    ["creampie"] = "cِreampie",
    ["CREAMPIE"] = "ᲃREAMPIE",
    ["cuck"] = "cบck",
    ["CUCK"] = "ᲃUCK",
    ["cum"] = "cบm",
    ["CUM"] = "ᲃUM",
    ["cumming"] = "cบmming",
    ["CUMMING"] = "ᲃUMMING",
    ["cumslut"] = "cบmsӏut",
    ["CUMSLUT"] = "ᲃUMჽLUT",
    ["cunt"] = "cบnt",
    ["CUNT"] = "ᲃUNT",
    ["cunnie"] = "cบnnie",
    ["CUNNIE"] = "ᲃUNNIE",
    ["cunts"] = "cบnts",
    ["deepthroat"] = "deepthꞅoat",
    ["DEEPTHROAT"] = "ÐEEPTHROAT",
    ["deadass"] = "dِeadass",
    ["dildo"] = "diӏdo",
    ["DILDO"] = "ÐILDO",
    ["dick"] = "dِick",
    ["DICK"] = "ÐICK",
    ["dogfucker"] = "dogfบcker",
    ["DOGFUCKER"] = "DOGꜰUCKER",
    ["discord"] = "discoꞅd",
    ["DISCORD"] = "ÐISCORD",
    ["drugs"] = "drบgs",
    ["DRUGS"] = "ÐRUGS",
    ["dumbass"] = "dบmbass",
    ["DUMBASS"] = "ÐUMBASS",
    ["email"] = "emaiӏ",
    ["erection"] = "erectioⴖ",
    ["fagg"] = "fِagg",
    ["FAGG"] = "ꜰagg",
    ["faggot"] = "fِaggot",
    ["FAGGOT"] = "ꜰAGGOT",
    ["faggots"] = "fِaggots",
    ["FAGGOTS"] = "ꜰAGGOTS",
    ["fatass"] = "fِatass",
    ["FATASS"] = "ꜰATASS",
    ["fat"] = "ꜰat",
    ["FAT"] = "ꜰAT",
    ["fuck"] = "fบck",
    ["FUCK"] = "ꜰUCK",
    ["fucking"] = "fบсkіng",
    ["FUCKING"] = "ꜰUCKING",
    ["fuckable"] = "fบckable",
    ["FUCKABLE"] = "ꜰUCKABLE",
    ["fuckboy"] = "fบckboy",
    ["FUCKBOY"] = "ꜰUCKBOY",
    ["fucked"] = "fบcked",
    ["FUCKED"] = "ꜰUCKED",
    ["fucker"] = "fบcker",
    ["FUCKER"] = "ꜰUCKER",
    ["fucks"] = "fบcks",
    ["FUCKS"] = "ꜰUCKS",
    ["fucktard"] = "fบcktard",
    ["FUCKTARD"] = "ꜰUCKTARD",
    ["fucktoy"] = "fบcktoy",
    ["FUCKTOY"] = "ꜰUCKTOY",
    ["girl"] = "girӏ",
    ["GIRL"] = "GIRL",
    ["grop"] = "gꞅop",
    ["GROP"] = "GׅROP",
    ["gender"] = "geⴖder",
    ["genocide"] = "geⴖocide",
    ["google"] = "googӏe",
    ["handjob"] = "haⴖdjob",
    ["heil"] = "heiӏ",
    ["HEIL"] = "HEIL",
    ["hentai"] = "heⴖtai",
    ["HENTAI"] = "HِENTAI",
    ["hitler"] = "hitӏer",
    ["HITLER"] = "HِITLER",
    ["holocaust"] = "holocaบst",
    ["homosexual"] = "homosِexual",
    ["HOMOSEXUAL"] = "HOMOSِEXUAL",
    ["hooker"] = "hookeꞅ",
    ["HOOKER"] = "HِOOKER",
    ["horny"] = "horⴖy",
    ["HORNY"] = "HِORNY",
    ["instagram"] = "iⴖstagram",
    ["INSTAGRAM"] = "IِNSTAGRAM",
    ["isis"] = "iِsِiِsِ",
    ["jackass"] = "jِackass",
    ["JACKASS"] = "JِACKASS",
    ["jungle"] = "jungӏe",
    ["jerking"] = "jِerking",
    ["JERKMATE"] = "JِERKMATE",
    ["jig"] = "jِig",
    ["jigaboo"] = "jِigaboo",
    ["jiggaboo"] = "jِiggaboo",
    ["kkk"] = "kِkِkِ",
    ["KKK"] = "KِKِKِ",
    ["kys"] = "kys",
    ["kill"] = "ᴋill",
    ["KILL"] = "KِILL",
    ["killed"] = "kiӏӏed",
    ["KILLED"] = "KِILLED",
    ["kinky"] = "kiⴖky",
    ["KINKY"] = "Kiⴖky",
    ["kike"] = "kِike",
    ["lmao"] = "ӏmao",
    ["LMAO"] = "LMAO",
    ["love"] = "ӏove",
    ["lust"] = "ӏust",
    ["LUST"] = "LِUST",
    ["liberal"] = "liberal",
    ["LIBERAL"] = "LIBERAL",
    ["lsd"] = "ӏsd",
    ["LSD"] = "LِSD",
    ["lgbtq"] = "ӏgbtq",
    ["masturbate"] = "mastบrbate",
    ["mexican"] = "mexican",
    ["MEXICAN"] = "MEXICAN",
    ["myass"] = "myaِss",
    ["MYASS"] = "MYAِSS",
    ["mississippi"] = "mississippi",
    ["MISSISSIPPI"] = "MISSISSIPPI",
    ["milf"] = "miӏf",
    ["molest"] = "mِolest",
    ["MOLEST"] = "MOLEჽT",
    ["motherfucker"] = "motherfบcker",
    ["MOTHERFUCKER"] = "MOTHERꜰUCKER",
    ["motherfucking"] = "motherfบcking",
    ["MOTHERFUCKING"] = "MOTHERꜰUCKING",
    ["naked"] = "ⴖaked",
    ["NAKED"] = "NِAKED",
    ["nazi"] = "naⴭi",
    ["NAZI"] = "NAჍI",
    ["negro"] = "ⴖegro",
    ["NEGRO"] = "NِEGRO",
    ["negroes"] = "ⴖegroes",
    ["NEGROES"] = "NِEGROES",
    ["nigga"] = "Nِigga",
    ["NIGGA"] = "NlGGA",
    ["nig"] = "ⴖig",
    ["niger"] = "ⴖiger",
    ["nigeria"] = "ⴖigeria",
    ["niglet"] = "nigӏet",
    ["niglets"] = "nigӏetѕ",
    ["nigg"] = "ⴖigg",
    ["NIGG"] = "NِIGG",
    ["niggers"] = "ⴖiggers",
    ["NIGGER"] = "NِIGGER",
    ["NIGGERS"] = "NِِIGGERS",
    ["nsfw"] = "ⴖsfw",
    ["NSFW"] = "NِSFW",
    ["nude"] = "ⴖude",
    ["NUDE"] = "NِUDE",
    ["nudes"] = "ⴖudes",
    ["NUDES"] = "ΝِUDES",
    ["orgy"] = "oꞅgy",
    ["ORGY"] = "OِRGY",
    ["panties"] = "paⴖties",
    ["penis"] = "peⴖis",
    ["PENIS"] = "PENIჽ",
    ["porn"] = "porⴖ",
    ["PORN"] = "PِORN",
    ["PORNHUB"] = "PِORNHUB",
    ["power"] = "pِower",
    ["POWER"] = "PِOWER",
    ["pussy"] = "pบssy",
    ["PUSSY"] = "PUჽჽY",
    ["prostitute"] = "prostitบte",
    ["PROSTITUTE"] = "PِِROSTITUTE",
    ["pedophile"] = "pedophiӏe",
    ["rape"] = "rаре",
    ["RAPE"] = "RАРЕ",
    ["raped"] = "rаpеd",
    ["RAPED"] = "RАPЕD",
    ["raping"] = "rapiⴖg",
    ["rapist"] = "rаріѕt",
    ["RAPIST"] = "RАPӀЅТ",
    ["raghead"] = "ꞅaghead",
    ["RAGHEAD"] = "RِAGHEAD",
    ["redskin"] = "redskiⴖ",
    ["retard"] = "ꞅetard",
    ["RETARD"] = "RِِETARD",
    ["roblox"] = "roblox",
    ["republican"] = "republican",
    ["says"] = "sِays",
    ["SAYS"] = "SِAYS",
    ["semen"] = "semeⴖ",
    ["SEMEN"] = "ჽEMEN",
    ["seduc"] = "sِeduc",
    ["sex"] = "sِex",
    ["SEX"] = "ჽEX",
    ["sexist"] = "sِexist",
    ["sext"] = "sِext",
    ["sextoy"] = "sِextoy",
    ["sexual"] = "sِexual",
    ["sexy"] = "sِexy",
    ["sexdoll"] = "sِexdoll",
    ["shit"] = "sِhit",
    ["SHIT"] = "ჽНӀТ",
    ["shot"] = "sِhot",
    ["spic"] = "sِpic",
    ["SPIC"] = "ჽPIC",
    ["sieg"] = "SIEG",
    ["slave"] = "sӏave",
    ["SLAVE"] = "ჽLAVE",
    ["slavery"] = "ჽLAVERY",
    ["slaves"] = "ჽLAVES",
    ["slur"] = "ѕlur",
    ["slut"] = "ѕӏut",
    ["SLUT"] = "ჽLUT",
    ["strip"] = "sِtrip",
    ["STRIP"] = "ჽTRIP",
    ["sucker"] = "sบcker",
    ["SUCKER"] = "ჽUCKER",
    ["snapchat"] = "sⴖapchat",
    ["SNAPCHAT"] = "ჽNAPCHAT",
    ["sperm"] = "sِperm",
    ["SPERM"] = "ჽPERM",
    ["sperms"] = "sِperms",
    ["stupid"] = "sِtupid",
    ["suicide"] = "sบicide",
    ["tard"] = "tِard",
    ["terrorist"] = "tِerrorist",
    ["terrorism"] = "tِerrorism",
    ["this"] = "thisِ",
    ["THIS"] = "THIჽ",
    ["threesome"] = "tِhreesome",
    ["THREESOME"] = "THREEჽOME",
    ["thong"] = "thoⴖg",
    ["tits"] = "tِits",
    ["titt"] = "tίtt",
    ["titties"] = "tίtties",
    ["TITTIES"] = "TِITTIES",
    ["tiktok"] = "tiktok",
    ["tonight"] = "TONIGHT",
    ["tranny"] = "traⴖⴖy",
    ["TRANNY"] = "TِRANNY",
    ["trannie"] = "traⴖⴖie",
    ["trump"] = "trumр",
    ["TRUMP"] = "TRUMР",
    ["twat"] = "tِwat",
    ["TWAT"] = "ِTِWAT",
    ["twink"] = "twiⴖk",
    ["vagina"] = "vagiⴖa",
    ["weed"] = "wِeed",
    ["WEED"] = "WِEED",
    ["wetback"] = "wِetback",
    ["WETBACK"] = "WِETBACK",
    ["whore"] = "wِhore",
    ["WHORE"] = "WِHORE",
    ["whores"] = "wِhores",
    ["white"] = "wһіtе",
    ["xxx"] = "xِxِxِ",
    ["XXX"] = "XِXِXِ",
    ["youtube"] = "youtบbe",
    ["YOUTUBE"] = "YِOUTUBE",
    ["your"] = "yoบr",
    ["zoophile"] = "zoophiIe",
    ["cums"] = "cบms",
    ["cum"] = "cบm",
    ["tard"] = "tِard",
    ["fuck"] = "fบck",
    ["i"] = "iِ",
    ["l"] = "ӏ"
}

local CatBypasserWordMap = {
    ["fucking"] = "f〪ucking",
    ["blowjob"] = "bIowjob",
    ["discord"] = "di〪scord",
    ["discord.gg"] = "di〪scord.gg",
    ["kill"] = "ki〪ll",
    ["nigga"] = "ⴖigga",
    ["fag"] = "fลg",
    ["faggot"] = "fลggot",
    ["nigger"] = "ⴖigger",
    ["FUCK"] = "ꜰUCK",
    ["niggas"] = "ⴖiggas",
    ["shit"] = "shi〪t",
    ["pussy"] = "pussⴘ",
    ["retarded"] = "ꞅetarded",
    ["whore"] = "wh〪ore",
    ["dick"] = "di〪ck",
    ["NIGGERS"] = "NI〪GGERS",
    ["ass"] = "ass",
    ["FAGGOTS"] = "ꜰAGGOTS",
    ["penis"] = "peni〪s",
    ["gay"] = "gay",
    ["dildo"] = "di〪ldo",
    ["LGBTQ"] = "LGBTQ",
    ["sex"] = "ჽex",
    ["COCK"] = "С〪OCK",
    ["cock"] = "ᲃock",
    ["tits"] = "ti〪ts",
    ["cuckold"] = "ᲃuckold",
    ["pornhub.com"] = "porⴖhub.com",
    ["trans"] = "trans",
    ["e-sex"] = "e-ჽex",
    ["SEX"] = "S〪EX"
}

local UserCreatedWordMap = {
    ["fuck"] = "fบck",
    ["dick"] = "diᲃk",
    ["minors"] = "minors",
    ["e-sex"] = "e-sеִx",
    ["booty"] = "boot〪y",
    ["ass"] = "аรร",
    ["fatty"] = "fatty",
    ["fatass"] = "fat〪ass",
    ["tf"] = "tf",
    ["kill yourself"] = "kіllyoบrself",
    ["yourself"] = "your〪self〪",
    ["kill"] = "kill〪",
    ["shit"] = "shi〪t",
    ["slave"] = "sIavew",
    [" "] = "",
    ["niggerish"] = "ⴖiggerish",
    ["NIGGER"] = "NI〪GGER",
    ["NIGGA"] = "NI〪GGA",
    ["field"] = "field",
    ["jerk"] = "j〪erk",
    ["autistic"] = "autistic",
    ["queer"] = "queer",
    ["faggots"] = "fลggots",
    ["cock"] = "co〪ck",
    ["balls"] = "balls",
    ["suck"] = "suck",
    ["fent"] = "fent",
    ["glock 19"] = "glock19",
    ["shove"] = "รhove",
    ["twink"] = "twiⴖk",
    ["rape"] = "rаpe",
    ["classic"] = "clаรรic",
    ["incest"] = "incest",
    ["hang"] = "haⴖg",
    ["https://twitch.tv"] = "һttps://twi〪tch.tv",
    ["kkk"] = "k〪kk〪",
    ["tranny"] = "traⴖⴖy",
    ["cum"] = "cบm",
    ["porn"] = "porⴖ",
    ["SEX"] = "SЕִX",
    ["TRANNY"] = "TRAN〪NY",
    ["stroking"] = "stroking",
    ["errection"] = "ereᲃtion",
    ["https://"] = "һttps://",
    ["pornhub.com"] = "porⴖhub.com",
    ["һttps://pornhub.com"] = "һttps://porⴖhub.com",
    ["robux"] = "robux",
    ["boobs"] = "bоִоִbs",
    ["pussy"] = "pบssy",
    ["titties"] = "t〪it〪ties",
    ["slut"] = "slบt",
    ["obese"] = "obese",
    ["cornball"] = "cornball",
    ["glock 17"] = "glock17",
    ["retard"] = "retลrd",
    ["cuck"] = "cบck",
    ["fucking"] = "fบcking",
    ["girlfriend"] = "girlfriend",
    ["roblox"] = "roblox",
    ["bypassers"] = "bypаรรers",
    ["fucktard"] = "fบcktard",
    ["whore"] = "wһor〪e",
    ["ugly"] = "ugly",
    ["loser"] = "Ioser",
    ["crypto"] = "crypto"
}

for word, replacement in pairs(AnnaBypasserWordMap) do
    UserCreatedWordMap[word] = replacement
end

for word, replacement in pairs(CatBypasserWordMap) do
    UserCreatedWordMap[word] = replacement
end

local Chat = game:GetService("Chat")

local player = game.Players.LocalPlayer
local playerGui = player:WaitForChild("PlayerGui")
local screenGui = Instance.new("ScreenGui")
screenGui.Name = "PastedPasserGui"
screenGui.Enabled = true
screenGui.Parent = playerGui

local TextChatService = game:GetService("TextChatService")
local chatChannel = nil

if TextChatService.TextChannels then
    chatChannel = TextChatService.TextChannels.RBXGeneral
    if chatChannel then
        print("Using TextChatService with channel: RBXGeneral")
    else
        print("RBXGeneral channel not found in TextChatService.TextChannels")
    end
else
    print("TextChatService.TextChannels not found")
end

local useTagDetector = true
local taggedUserCreatedWords = {}

local function checkFilter(text)
    local success, result = pcall(function()
        return Chat:FilterStringAsync(text, player, player)
    end)
    return success, result
end

local function isTagged(text)
    local success, filtered = checkFilter(text)
    if success and filtered then
        return filtered:match("^#+$") or filtered == ""
    end
    return false
end

local function bypassText(message, primaryWordMap, secondaryWordMap1, secondaryWordMap2, useSecondary)
    local newMessage = message
    for word, replacement in pairs(primaryWordMap) do
        local pattern = "(%f[%w])(" .. word .. ")([s%.]?)(%f[%W])"
        newMessage = newMessage:gsub(pattern, function(start, match, suffix, endBoundary)
            if useSecondary and taggedUserCreatedWords[match] then
                local secondaryReplacement = secondaryWordMap1[match] or secondaryWordMap2[match] or match
                return start .. secondaryReplacement .. suffix .. endBoundary
            else
                return start .. replacement .. suffix .. endBoundary
            end
        end)
    end
    return newMessage
end

PastedPasser.Name = "PastedPasser"
PastedPasser.Size = UDim2.new(0, 585, 0, 323)
PastedPasser.BorderColor3 = Color3.new(0, 0, 0)
PastedPasser.BorderSizePixel = 0
PastedPasser.BackgroundTransparency = 0.375
PastedPasser.Position = UDim2.new(0.205658108, 0, 0.25923717, 0)
PastedPasser.BackgroundColor3 = Color3.new(1, 1, 1)
PastedPasser.Parent = screenGui

UICorner.Name = "UICorner"
UICorner.Parent = PastedPasser

TopBar.Name = "TopBar"
TopBar.Size = UDim2.new(0, 585, 0, 51)
TopBar.BorderColor3 = Color3.new(0, 0, 0)
TopBar.BorderSizePixel = 0
TopBar.BackgroundTransparency = 0.8999999761581421
TopBar.BackgroundColor3 = Color3.new(1, 1, 1)
TopBar.Parent = PastedPasser

PastedPasserText.Name = "PastedPasserText"
PastedPasserText.Size = UDim2.new(0, 255, 0, 50)
PastedPasserText.BorderColor3 = Color3.new(0, 0, 0)
PastedPasserText.BorderSizePixel = 0
PastedPasserText.BackgroundTransparency = 1
PastedPasserText.BackgroundColor3 = Color3.new(1, 1, 1)
PastedPasserText.RichText = true
PastedPasserText.TextColor3 = Color3.new(0, 0, 0)
PastedPasserText.Text = "PastedPasser"
PastedPasserText.FontFace = Font.new("rbxasset://fonts/families/SourceSansPro.json", Enum.FontWeight.Bold, Enum.FontStyle.Italic)
PastedPasserText.TextSize = 50
PastedPasserText.TextScaled = false
PastedPasserText.Parent = TopBar

TextInput.Name = "TextInput"
TextInput.Size = UDim2.new(0, 276, 0, 113)
TextInput.BorderColor3 = Color3.new(0, 0, 0)
TextInput.BorderSizePixel = 2
TextInput.BackgroundTransparency = 0.875
TextInput.Position = UDim2.new(0.43589744, 0, 0.247678012, 0)
TextInput.BackgroundColor3 = Color3.new(1, 1, 1)
TextInput.CursorPosition = -1
TextInput.TextWrapped = true
TextInput.RichText = true
TextInput.TextColor3 = Color3.new(0, 0, 0)
TextInput.Text = ""
TextInput.FontFace = Font.new("rbxasset://fonts/families/SourceSansPro.json", Enum.FontWeight.Regular, Enum.FontStyle.Normal)
TextInput.TextScaled = true
TextInput.Parent = PastedPasser

SendMessage.Name = "SendMessage"
SendMessage.AutoButtonColor = true
SendMessage.Size = UDim2.new(0, 200, 0, 50)
SendMessage.BorderColor3 = Color3.new(0, 0, 0)
SendMessage.BorderSizePixel = 2
SendMessage.BackgroundTransparency = 0.75
SendMessage.Position = UDim2.new(0.500854731, 0, 0.699690402, 0)
SendMessage.BackgroundColor3 = Color3.new(0, 0, 0)
SendMessage.RichText = true
SendMessage.TextColor3 = Color3.new(0, 0, 0)
SendMessage.Text = "Send Message ;)"
SendMessage.FontFace = Font.new("rbxasset://fonts/families/SourceSansPro.json", Enum.FontWeight.Regular, Enum.FontStyle.Normal)
SendMessage.TextWrapped = true
SendMessage.TextTransparency = 0.3499999940395355
SendMessage.TextSize = 24
SendMessage.TextScaled = false
SendMessage.Parent = PastedPasser

AnnaBypasserToggle.Name = "AnnaBypasserToggle"
AnnaBypasserToggle.AutoButtonColor = true
AnnaBypasserToggle.Size = UDim2.new(0, 200, 0, 50)
AnnaBypasserToggle.BorderColor3 = Color3.new(0, 0, 0)
AnnaBypasserToggle.BorderSizePixel = 0
AnnaBypasserToggle.BackgroundTransparency = 0.875
AnnaBypasserToggle.Position = UDim2.new(0.0461538471, 0, 0.247678012, 0)
AnnaBypasserToggle.BackgroundColor3 = Color3.new(0, 1, 0)
AnnaBypasserToggle.RichText = true
AnnaBypasserToggle.TextColor3 = Color3.new(0, 0, 0)
AnnaBypasserToggle.Text = "Anna Bypasser"
AnnaBypasserToggle.FontFace = Font.new("rbxasset://fonts/families/SourceSansPro.json", Enum.FontWeight.Regular, Enum.FontStyle.Normal)
AnnaBypasserToggle.TextWrapped = true
AnnaBypasserToggle.TextSize = 24
AnnaBypasserToggle.TextScaled = false
AnnaBypasserToggle.Parent = PastedPasser

CatBypasserToggle.Name = "CatBypasserToggle"
CatBypasserToggle.AutoButtonColor = true
CatBypasserToggle.Size = UDim2.new(0, 200, 0, 50)
CatBypasserToggle.BorderColor3 = Color3.new(0, 0, 0)
CatBypasserToggle.BorderSizePixel = 0
CatBypasserToggle.BackgroundTransparency = 0.875
CatBypasserToggle.Position = UDim2.new(0.0461538471, 0, 0.498452008, 0)
CatBypasserToggle.BackgroundColor3 = Color3.new(1, 0, 0)
CatBypasserToggle.RichText = true
CatBypasserToggle.TextColor3 = Color3.new(0, 0, 0)
CatBypasserToggle.Text = "CatBypasser (Addon)"
CatBypasserToggle.FontFace = Font.new("rbxasset://fonts/families/SourceSansPro.json", Enum.FontWeight.Regular, Enum.FontStyle.Normal)
CatBypasserToggle.TextWrapped = true
CatBypasserToggle.TextSize = 24
CatBypasserToggle.TextScaled = false
CatBypasserToggle.Parent = PastedPasser

UserCreatedToggle.Name = "UserCreatedToggle"
UserCreatedToggle.AutoButtonColor = true
UserCreatedToggle.Size = UDim2.new(0, 200, 0, 50)
UserCreatedToggle.BorderColor3 = Color3.new(0, 0, 0)
UserCreatedToggle.BorderSizePixel = 0
UserCreatedToggle.BackgroundTransparency = 0.875
UserCreatedToggle.Position = UDim2.new(0.0461538471, 0, 0.746130049, 0)
UserCreatedToggle.BackgroundColor3 = Color3.new(1, 0, 0)
UserCreatedToggle.RichText = true
UserCreatedToggle.TextColor3 = Color3.new(0, 0, 0)
UserCreatedToggle.Text = "UserCreated (Premium)"
UserCreatedToggle.FontFace = Font.new("rbxasset://fonts/families/SourceSansPro.json", Enum.FontWeight.Regular, Enum.FontStyle.Normal)
UserCreatedToggle.TextWrapped = true
UserCreatedToggle.TextSize = 24
UserCreatedToggle.TextScaled = false
UserCreatedToggle.Parent = PastedPasser

CloseButton.Name = "CloseButton"
CloseButton.AutoButtonColor = true
CloseButton.Size = UDim2.new(0, 45, 0, 37)
CloseButton.BorderColor3 = Color3.new(0, 0, 0)
CloseButton.BorderSizePixel = 0
CloseButton.Position = UDim2.new(0.907692313, 0, 0.021671826, 0)
CloseButton.BackgroundColor3 = Color3.new(1, 1, 1)
CloseButton.RichText = true
CloseButton.TextColor3 = Color3.new(0, 0, 0)
CloseButton.Text = "X"
CloseButton.FontFace = Font.new("rbxasset://fonts/families/SourceSansPro.json", Enum.FontWeight.Bold, Enum.FontStyle.Normal)
CloseButton.TextWrapped = true
CloseButton.TextScaled = true
CloseButton.Parent = PastedPasser

ResetFilterButton.Name = "ResetFilterButton"
ResetFilterButton.AutoButtonColor = true
ResetFilterButton.Size = UDim2.new(0, 55, 0, 37)
ResetFilterButton.BorderColor3 = Color3.new(0, 0, 0)
ResetFilterButton.BorderSizePixel = 0
ResetFilterButton.Position = UDim2.new(0.7282, 0, 0.021671826, 0)
ResetFilterButton.BackgroundColor3 = Color3.new(1, 1, 1)
ResetFilterButton.RichText = true
ResetFilterButton.TextColor3 = Color3.new(0, 0, 0)
ResetFilterButton.Text = "reset filter"
ResetFilterButton.FontFace = Font.new("rbxasset://fonts/families/SourceSansPro.json", Enum.FontWeight.Bold, Enum.FontStyle.Normal)
ResetFilterButton.TextWrapped = true
ResetFilterButton.TextScaled = true
ResetFilterButton.Parent = PastedPasser

ErrorLabel.Name = "ErrorLabel"
ErrorLabel.Size = UDim2.new(0, 300, 0, 30)
ErrorLabel.Position = UDim2.new(0.5, -150, 0.9, 0)
ErrorLabel.BackgroundTransparency = 1
ErrorLabel.TextColor3 = Color3.new(1, 0, 0)
ErrorLabel.Text = ""
ErrorLabel.FontFace = Font.new("rbxasset://fonts/families/SourceSansPro.json", Enum.FontWeight.Regular, Enum.FontStyle.Normal)
ErrorLabel.TextSize = 20
ErrorLabel.TextScaled = false
ErrorLabel.Parent = PastedPasser

if not chatChannel then
    ErrorLabel.Text = "Error: RBXGeneral channel not found"
end

local UserInputService = game:GetService("UserInputService")
local dragging = false
local dragStart = nil
local startPos = nil

local function updatePosition(input)
    local delta = input.Position - dragStart
    PastedPasser.Position = UDim2.new(
        startPos.X.Scale,
        startPos.X.Offset + delta.X,
        startPos.Y.Scale,
        startPos.Y.Offset + delta.Y
    )
end

TopBar.InputBegan:Connect(function(input)
    if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
        dragging = true
        dragStart = input.Position
        startPos = PastedPasser.Position
    end
end)

TopBar.InputEnded:Connect(function(input)
    if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
        dragging = false
    end
end)

UserInputService.InputChanged:Connect(function(input)
    if dragging and (input.UserInputType == Enum.UserInputType.MouseMovement or input.UserInputType == Enum.UserInputType.Touch) then
        updatePosition(input)
    end
end)

local isAnnaBypasserToggled = true
local isCatBypasserToggled = false
local isUserCreatedToggled = false

AnnaBypasserToggle.MouseButton1Click:Connect(function()
    if not isUserCreatedToggled then
        isAnnaBypasserToggled = not isAnnaBypasserToggled
        if isAnnaBypasserToggled then
            AnnaBypasserToggle.BackgroundColor3 = Color3.new(0, 1, 0)
        else
            AnnaBypasserToggle.BackgroundColor3 = Color3.new(1, 0, 0)
        end
    end
end)

CatBypasserToggle.MouseButton1Click:Connect(function()
    if not isUserCreatedToggled then
        isCatBypasserToggled = not isCatBypasserToggled
        if isCatBypasserToggled then
            CatBypasserToggle.BackgroundColor3 = Color3.new(0, 1, 0)
        else
            CatBypasserToggle.BackgroundColor3 = Color3.new(1, 0, 0)
        end
    end
end)

UserCreatedToggle.MouseButton1Click:Connect(function()
    isUserCreatedToggled = not isUserCreatedToggled
    if isUserCreatedToggled then
        UserCreatedToggle.BackgroundColor3 = Color3.new(0, 1, 0)
        isAnnaBypasserToggled = false
        isCatBypasserToggled = false
        AnnaBypasserToggle.BackgroundColor3 = Color3.new(1, 0, 0)
        CatBypasserToggle.BackgroundColor3 = Color3.new(1, 0, 0)
    else
        UserCreatedToggle.BackgroundColor3 = Color3.new(1, 0, 0)
    end
end)

ResetFilterButton.MouseButton1Click:Connect(function()
    local success, err = pcall(function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/joshclark756/joshclark756-s-scripts/refs/heads/main/reset%20filter.lua"))()
    end)
    if success then
        print("Filter reset successfully")
    else
        print("Failed to reset filter: " .. tostring(err))
        ErrorLabel.Text = "Failed to reset filter: " .. tostring(err)
    end
end)

SendMessage.MouseButton1Click:Connect(function()
    local message = TextInput.Text
    if message ~= "" then
        print("Original message: " .. message)
        if isUserCreatedToggled then
            message = bypassText(message, UserCreatedWordMap, CatBypasserWordMap, AnnaBypasserWordMap, true)
            print("After UserCreated (Premium): " .. message)
            message = bypassText(message, AnnaBypasserWordMap, CatBypasserWordMap, UserCreatedWordMap, false)
            print("After applying remaining AnnaBypasser: " .. message)
            message = bypassText(message, CatBypasserWordMap, AnnaBypasserWordMap, UserCreatedWordMap, false)
            print("After applying remaining CatBypasser: " .. message)
        else
            if isAnnaBypasserToggled then
                message = bypassText(message, AnnaBypasserWordMap, CatBypasserWordMap, UserCreatedWordMap, false)
                print("After AnnaBypasser: " .. message)
            end
            if isCatBypasserToggled then
                message = bypassText(message, CatBypasserWordMap, AnnaBypasserWordMap, UserCreatedWordMap, false)
                print("After CatBypasser: " .. message)
            end
        end
        if useTagDetector then
            local success, filteredMessage = checkFilter(message)
            if success and filteredMessage ~= "" then
                message = filteredMessage
                print("Filtered message: " .. message)
                if isUserCreatedToggled then
                    for word, _ in pairs(UserCreatedWordMap) do
                        local pattern = "%f[%w]" .. word .. "[s%.]?%f[%W]"
                        if message:find(pattern) then
                            local isolatedWord = word
                            local successWord, filteredWord = checkFilter(isolatedWord)
                            if successWord and isTagged(filteredWord) then
                                taggedUserCreatedWords[word] = true
                                print("UserCreated bypass for '" .. word .. "' tagged, switching to backup")
                            end
                        end
                    end
                end
            else
                useTagDetector = false
                print("Tag-Detector failed, disabling for this session")
                ErrorLabel.Text = "Tag-Detector failed, disabled for session"
            end
        end
        print("Final message to send: " .. message)
        if chatChannel then
            print("Sending to TextChatService channel: RBXGeneral, Message: " .. message)
            local success, err = pcall(function()
                chatChannel:SendAsync(message)
            end)
            if success then
                print("Message sent successfully via TextChatService")
            else
                print("Failed to send via TextChatService: " .. tostring(err))
                ErrorLabel.Text = "Failed to send message: " .. tostring(err)
            end
        else
            print("No TextChatService channel available to send message")
            ErrorLabel.Text = "Error: No chat channel found"
        end
        TextInput.Text = ""
    else
        print("Message is empty, not sending")
    end
end)

CloseButton.MouseButton1Click:Connect(function()
    PastedPasser:Destroy()
end)
