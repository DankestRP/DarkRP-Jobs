hook.Add("loadCustomDarkRPItems", "RandomDRPJobs_Initialize", function()

DarkRP.createCategory{
    name = "The Good",
    categorises = "jobs",
    startExpanded = false,
    color = Color(3, 99, 24, 100),
    canSee = function(ply) return true end,
    sortOrder = 3,
}
DarkRP.createCategory{
    name = "The Bad",
    categorises = "jobs",
    startExpanded = false,
    color = Color(60, 61, 56, 100),
    canSee = function(ply) return true end,
    sortOrder = 4,
}

TEAM_SEWERKING = AddExtraTeam("Sewer King", {
    color = Color(63, 60, 60, 255),
    model = {"models/player/zombie_soldier.mdl"},
    description = [[
    You can start a sewer surge for £5,000 by typing /startsure.
    You cannot base.
    You can only use melee weapons.
    You cannot build.
    You cannot mug.
    You cannot raid bases, PD or bank.
    You cannot kidnap.
    You can KOS everywhere only during a sewer surge.
    You are KOS everywhere.
    You can KOS Underground only (unless in self defence).
    Fading door limit: 0.]],
    weapons = {"weapon_sewerking", "bhop_swep", "weapon_crowbar"},
    command = "sewerking",
    max = 1,
    salary = 0,
    admin = 0,
    vote = false,
    hobo = true,
    hasLicense = false,
    candemote = false,
    PlayerLoadout = function(ply) return ply:SetArmor(0) end,
    category = "The Bad"
})

TEAM_SEWERSLAVE = AddExtraTeam("Sewer Mutant", {
    color = Color(20, 20, 20, 255),
    model = {"models/player/zombie_fast.mdl"},
    description = [[    
    You cannot base.
    You can only use melee weapons.
    You cannot build.
    You cannot mug.
    You cannot raid bases, PD or bank.
    You cannot kidnap.
    You can KOS everywhere only during a sewer surge.
    You are KOS everywhere.
    You can KOS Underground only (unless in self defence).
    Fading door limit: 0.]],
    weapons = {"weapon_sewerking", "bhop_swep", "weapon_crowbar"},
    command = "sewermutant",
    max = 30,
    salary = 0,
    admin = 0,
    vote = false,
    hobo = true,
    canDemote = false,
    hasLicense = false,
    PlayerLoadout = function( ply ) return ply:SetArmor(0) end,
    category = "The Bad",
})

TEAM_GOOSE = AddExtraTeam("Goose", {
    color = Color(204, 204, 0, 255),
    model = {
        "models/goose.mdl"
    },
    description = [[
    You cannot base.
    You cannot mug.
    You cannot raid bases, PD or bank.
    You cannot build on the streets.
    You cannot kidnap.
    Fading door limit: 0.]],
    weapons = {"weapon_goose"},
    command = "goose",
    max = 4,
    salary = 45,
    admin = 0,
    vote = false,
    hasLicense = false,
    candemote = false,
    category = "Fun"
})

TEAM_CAT = AddExtraTeam("Cat", {
    color = Color(204, 204, 0, 255),
    model = {
        "models/yevocore/cat/cat.mdl"
    },
    description = [[
    You cannot base.
    You cannot mug.
    You cannot raid bases, PD or bank.
    You cannot build on the streets.
    You cannot kidnap.
    Fading door limit: 0.]],
    weapons = {},
    command = "cat",
    max = 4,
    salary = 45,
    admin = 0,
    vote = false,
    hasLicense = false,
    candemote = false,
    category = "Fun"
})

TEAM_DOG = AddExtraTeam("Doge", {
    color = Color(204, 204, 0, 255),
    model = {
        "models/doge_player/doge_player.mdl"
    },
    description = [[
    You cannot base.
    You cannot mug.
    You cannot raid bases, PD or bank.
    You cannot build on the streets.
    You cannot kidnap.
    Fading door limit: 0.]],
    weapons = {},
    command = "doge",
    max = 4,
    salary = 45,
    admin = 0,
    vote = false,
    hasLicense = false,
    candemote = false,
    category = "Fun"
})

TEAM_TUBBIE = AddExtraTeam("Teletubbie", {
    color = Color(204, 204, 0, 255),
    model = {
        "models/player/manatails/tinkywinky/player.mdl",
        "models/player/manatails/po/player.mdl",
        "models/player/manatails/laalaa/player.mdl",
        "models/player/manatails/dipsy/player.mdl"
    },
    description = [[
    You cannot base.
    You cannot mug.
    You cannot raid bases, PD or bank.
    You cannot build on the streets.
    You cannot kidnap.
    Fading door limit: 0.]],
    weapons = {},
    command = "teletubbie",
    max = 4,
    salary = 45,
    admin = 0,
    vote = false,
    hasLicense = false,
    candemote = false,
    category = "Fun"
})

TEAM_MINER = AddExtraTeam("Miner", {
    color = Color(255, 163, 0, 255),
    description = [[
    You cannot base.
    You cannot mug.
    You cannot raid bases, PD or bank.
    You cannot build in the streets.
    You cannot kidnap.
    Fading door limit: 0.]],
    model = {"models/player/eli.mdl"},
    weapons = {"pickaxe"},
    command = "miner",
    max = 4,
    salary = 65,
    admin = 0,
    vote = false,
    hasLicense = false,
    candemote = false,
    category = "Citizens"
})

TEAM_CITYWORKER = AddExtraTeam("City Worker", {
    color = Color(20, 150, 20, 255),
    description = [[
    Your job is to fix leaks and electrical problems around the city.
    You cannot base.
    You cannot mug.
    You cannot raid bases, PD or bank.
    You cannot build in the streets.
    You cannot kidnap.
    Fading door limit: 0.]],
    model = {"models/player/group02/male_04.mdl"},
    weapons = {"cityworker_pliers", "cityworker_wrench"},
    command = "cityworker",
    max = 6,
    salary = 75,
    admin = 0,
    vote = false,
    hasLicense = false,
    candemote = false,
    category = "Citizens"
})

TEAM_LUMBERJACK = AddExtraTeam("Lumberjack", {
    color = Color(51, 44, 32, 255),
    description = [[
    You are to chop down trees and process them into other types of sellable wood.
    You can base only inside the farm house in the lumberjack area.
    You can defend the farm house.
    You cannot mug.
    You cannot raid bases, PD or bank.
    You cannot build in the streets.
    You cannot kidnap.
    Fading door limit: 3.]],
    model = {"models/player/eli.mdl"},
    weapons = {"lumberjack_axe"},
    command = "lumberjack",
    max = 2,
    salary = 65,
    admin = 0,
    vote = false,
    hasLicense = false,
    candemote = false,
    category = "Citizens"
})

TEAM_BANKER = AddExtraTeam("Banker", {
    color = Color(10, 79, 63, 255),
    model = {"models/player/magnusson.mdl"},
    description = [[
    You can legally store peoples money printers and you cannot be arrested for this.
    You must base in the Bank.
    You cannot mug.
    You cannot raid bases, PD or bank.
    You cannot build in the streets.
    You cannot kidnap.
    Fading door limit: 3.]],
    weapons = {},
    command = "banker",
    max = 2,
    salary = 300,
    admin = 0,
    vote = false,
    canDemote = false,
    hasLicense = false,
    PlayerLoadout = function( ply ) return ply:SetArmor( 0 ) end,
    category = "Citizens",
})

TEAM_HOTELMANAGER = AddExtraTeam("Hotel Manager", {
    color = Color(15, 115, 115, 255),
    model = {"models/player/mossman.mdl"},
    description = [[
    You can base only in the hotel, you can also sell rooms to others for up to £10,000.
    You cannot mug.
    You cannot raid bases, PD or bank.
    You cannot build in the streets.
    You cannot kidnap.
    Fading door limit: 3.]],
    weapons = {},
    command = "hotelmanager",
    max = 1,
    salary = 250,
    admin = 0,
    vote = false,
    canDemote = false,
    hasLicense = false,
    PlayerLoadout = function( ply ) return ply:SetArmor( 0 ) end,
    category = "Citizens",
})

TEAM_CINEMAMANAGER = AddExtraTeam("Cinema Manager", {
    color = Color(65, 21, 122, 255),
    model = {"models/player/mossman_arctic.mdl"},
    description = [[
    You can base only in the cinema, you can also put on movies per request and charge up to £5,000.
    You cannot put on inappropriate media or you will be punished.
    You cannot mug.
    You cannot raid bases, PD or bank.
    You cannot build in the streets.
    You cannot kidnap.
    Fading door limit: 3.]],
    weapons = {},
    command = "cinemamanager",
    max = 1,
    salary = 250,
    admin = 0,
    vote = false,
    canDemote = false,
    hasLicense = false,
    PlayerLoadout = function( ply ) return ply:SetArmor( 0 ) end,
    category = "Citizens",
})

TEAM_BOOKIE = AddExtraTeam("Betfred Manager", {
    color = Color(255, 0, 127, 255),
    model = {"models/player/magnusson.mdl"},
    description = [[
    You can base only in the Betfred in residential, you can also take bets on the horses with max odds of 10/1.
    You can defend your business.
    You cannot mug.
    You cannot raid bases, PD or bank.
    You cannot build in the streets.
    You cannot kidnap.
    Fading door limit: 3.]],
    weapons = {},
    command = "betfredmanager",
    max = 1,
    salary = 0,
    admin = 0,
    vote = false,
    canDemote = false,
    hasLicense = false,
    PlayerLoadout = function( ply ) return ply:SetArmor( 0 ) end,
    category = "Citizens",
})

// CP Jobs
TEAM_SWAT = AddExtraTeam("S.W.A.T", {
    color = Color(0, 0, 255, 255),
    model = {"models/player/urban.mdl"},
    description = [[
    You must base inside of the PD.
    You must try to arrest people before killing them.
    You must enforce the law.
    You must follow the Mayors orders as long as it has a valid RP reason behind it and as long as it does not break any of the server/job rules.
    You cannot build in the streets except for checkpoints.
    You can create checkpoints for valid RP reasons.
    Checkpoints cannot be connected to any of the paths from the main spawn.
    You cannot mug.
    You cannot kidnap.
    You must have a valid reason to arrest/want someone (e.g. Watch them commit a crime).
    You must have a valid reason to warrant someone (e.g. Hearing/seeing evidence of illegal entities.).
    You must have a valid reason to check someone for weapons. i.e. Red on a checkpoint.
    You cannot raid with criminals.
    Fading door limit: 3 to PD, 2 to Checkpoints.]],
    weapons = {"dradio", "arrest_stick", "unarrest_stick", "m9k_mp5", "m9k_usp", "stunstick", "door_ram", "weaponchecker"},
    command = "swat",
    max = 8,
    salary = 600,
    admin = 0,
    vote = false,
    chief = true,
    hasLicense = true,
    canDemote = false,
    PlayerLoadout = function( ply ) return ply:SetArmor( 125 ) end,
    category = "The Good",
})

TEAM_SWATMEDIC = AddExtraTeam("S.W.A.T Medic", {
    color = Color(0, 10, 245, 255),
    model = {"models/player/riot.mdl"},
    description = [[
    You must base inside of the PD.
    You must try to arrest people before killing them.
    You must enforce the law.
    You must follow the Mayors orders as long as it has a valid RP reason behind it and as long as it does not break any of the server/job rules.
    You cannot build in the streets except for checkpoints.
    You can create checkpoints for valid RP reasons.
    Checkpoints cannot be connected to any of the paths from the main spawn.
    You cannot mug.
    You cannot kidnap.
    You must have a valid reason to arrest/want someone (e.g. Watch them commit a crime).
    You must have a valid reason to warrant someone (e.g. Hearing/seeing evidence of illegal entities.).
    You must have a valid reason to check someone for weapons. i.e. Red on a checkpoint.
    You cannot raid with criminals.
    Fading door limit: 3 to PD, 2 to Checkpoints.]],
    weapons = {"dradio", "arrest_stick", "unarrest_stick", "m9k_usp", "stunstick", "door_ram", "weaponchecker", "med_kit"},
    command = "swatmedic",
    max = 2,
    salary = 600,
    admin = 0,
    vote = false,
    hasLicense = true,
    canDemote = false,
    PlayerLoadout = function( ply ) return ply:SetArmor( 150 ) end,
    category = "The Good",
})

TEAM_SWATLEADER = AddExtraTeam("S.W.A.T Leader", {
    color = Color(0, 14, 123, 255),
    model = {"models/player/gasmask.mdl"},
    description = [[
    You must base inside of the PD.
    You must try to arrest people before killing them.
    You must enforce the law.
    You must follow the Mayors orders as long as it has a valid RP reason behind it and as long as it does not break any of the server/job rules.
    You cannot build in the streets except for checkpoints.
    You can create checkpoints for valid RP reasons.
    Checkpoints cannot be connected to any of the paths from the main spawn.
    You cannot mug.
    You cannot kidnap.
    You must have a valid reason to arrest/want someone (e.g. Watch them commit a crime).
    You must have a valid reason to warrant someone (e.g. Hearing/seeing evidence of illegal entities.).
    You must have a valid reason to check someone for weapons. i.e. Red on a checkpoint.
    You cannot raid with criminals.
    Fading door limit: 3 to PD, 2 to Checkpoints.]],
    weapons = {"dradio", "arrest_stick", "unarrest_stick", "m9k_m416", "m9k_usp", "stunstick", "door_ram", "weaponchecker"},
    command = "swatleader",
    max = 1,
    salary = 700,
    admin = 0,
    vote = false,
    chief = true,
    hasLicense = true,
    canDemote = false,
    PlayerLoadout = function( ply ) return ply:SetArmor( 150 ) end,
    category = "The Good",
})

TEAM_SWATSNIPER = AddExtraTeam("S.W.A.T Sniper", {
    color = Color(0, 14, 123, 255),
    model = {"models/player/swat.mdl"},
    description = [[
    You must base inside of the PD.
    You must try to arrest people before killing them.
    You must enforce the law.
    You must follow the Mayors orders as long as it has a valid RP reason behind it and as long as it does not break any of the server/job rules.
    You cannot build in the streets except for checkpoints.
    You can create checkpoints for valid RP reasons.
    Checkpoints cannot be connected to any of the paths from the main spawn.
    You cannot mug.
    You cannot kidnap.
    You must have a valid reason to arrest/want someone (e.g. Watch them commit a crime).
    You must have a valid reason to warrant someone (e.g. Hearing/seeing evidence of illegal entities.).
    You must have a valid reason to check someone for weapons. i.e. Red on a checkpoint.
    You cannot raid with criminals.
    Fading door limit: 3 to PD, 2 to Checkpoints.]],
    weapons = {"dradio", "arrest_stick", "unarrest_stick", "m9k_usp", "m9k_aw50", "stunstick", "door_ram", "weaponchecker"},
    command = "swatsniper",
    max = 2,
    salary = 600,
    admin = 0,
    vote = false,
    chief = true,
    hasLicense = true,
    candemote = true,
    PlayerLoadout = function( ply ) return ply:SetArmor(150) end,
    category = "The Good",
})

TEAM_SECRET = AddExtraTeam("Secret Service", {
    color = Color(25, 25, 25, 255),
    model = "models/player/barney.mdl",
    description = [[
    You cannot partake in civil protection activities.
    You cannot enforce the law.
    You cannot protect/defend the PD.
    You cannot build in the streets.
    You cannot raid bases, PD or bank.
    You cannot mug.
    You cannot kidnap.
    You can defend the Mayor if he is being attacked.
    Your only duty is to keep the Mayor safe.]],
    weapons = {"dradio", "stunstick", "m9k_mp5"},
    command = "secretservice",
    max = 2,
    salary = 250,
    admin = 0,
    vote = false,
    canDemote = false,
    hasLicense = true,
    PlayerLoadout = function( ply ) return ply:SetArmor(50) end,
    category = "The Good"
})

TEAM_GUARD = AddExtraTeam("Security Guard", {
    color = Color(38, 38, 38, 255),
    model = {"models/player/odessa.mdl"},
    description = [[
    You can base, however, not by yourself: you can be hired by others to protect their base, but your name must be on the doors to defend or your job must be set accordingly. (e.g. /job Defending (Name) or /job W/(Name)).
    You cannot mug.
    You cannot build in the streets.
    You cannot raid bases, PD or bank.
    You cannot kidnap.
    Fading door limit: 0.]],
    weapons = {"stunstick", "weaponchecker"},
    command = "guard",
    max = 4,
    salary = 50,
    admin = 0,
    vote = false,
    hasLicense = true,
    canDemote = false,
    PlayerLoadout = function(ply) return ply:SetArmor(75) end,  
    category = "Citizens",
})

TEAM_ELITEGUARD = AddExtraTeam("Elite Guard", {
    color = Color(43, 42, 42, 255),
    model = {"models/player/guerilla.mdl"},
    description = [[
    You can base, however, not by yourself: you can be hired by others to protect their base, but your name must be on the doors to defend or your job must be set accordingly. (e.g. /job Defending (Name) or /job W/(Name)).
    You cannot mug.
    You cannot build in the streets.
    You cannot raid bases, PD or bank.
    You cannot kidnap.
    Fading door limit: 0.]],
    weapons = {"stunstick", "weaponchecker", "m9k_amd65"},
    command = "eliteguard",
    max = 2,
    salary = 0,
    admin = 0,
    vote = false,
    hasLicense = true,
    canDemote = false,
    PlayerLoadout = function(ply) return ply:SetArmor(100) end,
    category = "Citizens",
})

TEAM_MOB = AddExtraTeam("Mob Boss", {
    color = Color(75, 75, 75, 255),
    model = "models/player/gman_high.mdl",
    description = [[
        You cannot raid/kidnap solo, you must be in a group with other gangsters (1 or more).
        You can mug for a maximum of £10,000. (NOTE: DO NOT mug AFK players at spawn).
        You cannot raid bank
        You cannot build in the streets.
        You can only raid the PD to break someone out and you must have a gangsters with you.
        You can kidnapp.]],
    weapons = {"pro_lockpick_update", "unarrest_stick", "3d2dcracker_weapon"},
    command = "mobboss",
    max = 1,
    salary = 60,
    admin = 0,
    vote = false,
    canDemote = false,
    hasLicense = false,
    category = "The Bad",   
})

TEAM_GANG = AddExtraTeam("Gangster", {
    color = Color(75, 75, 75, 255),
    model = {
        "models/player/Group03/Female_01.mdl",
        "models/player/Group03/Female_02.mdl",
        "models/player/Group03/Female_03.mdl",
        "models/player/Group03/Female_04.mdl",
        "models/player/Group03/Female_06.mdl",
        "models/player/group03/male_01.mdl",
        "models/player/Group03/Male_02.mdl",
        "models/player/Group03/male_03.mdl",
        "models/player/Group03/Male_05.mdl",
        "models/player/Group03/Male_07.mdl",
        "models/player/Group03/Male_08.mdl",
        "models/player/Group03/Male_09.mdl"
    },
    description = [[
    You can raid bases.
    You can mug for a maximum of £10,000
    You can kidnap for a maximum of £50,000.
    You cannot raid bank.
    You cannot build in the streets.
    You can base with any other criminal.
    You can raid the PD but only to break someone out.
    Fading door limit: 3.]],
    weapons = {"weapon_fists", "pro_lockpick_update", "3d2dcracker_weapon"},
    command = "gangster",
    max = 30,
    salary = 45,
    admin = 0,
    vote = false,
    canDemote = false,
    hasLicense = false,
    category = "The Bad",
})

TEAM_CIGARETTE = AddExtraTeam("Cigarette Maker", {
    color = Color(75, 75, 75, 255),
    model = {"models/player/hostage/hostage_02.mdl"},
    description = [[
    You can base with other criminals.
    You cannot mug.
    You cannot build in the streets.
    You cannot raid bases, PD or Bank.
    You cannot kidnap.
    Fading door limit: 3.]],
    weapons = {},
    command = "cigmaker",
    max = 30,
    salary = 45,
    admin = 0,
    vote = false,
    canDemote = false,
    hasLicense = false,
    category = "The Bad",
})

TEAM_COCAINE = AddExtraTeam("Cocaine Cook", {
    color = Color(0, 128, 255, 255),
    model = {"models/player/group01/male_02.mdl"},
    description = [[
    You can base with other criminals.
    You cannot mug.
    You cannot build in the streets.
    You cannot raid bases, PD or Bank.
    You cannot kidnap.
    Fading door limit: 3.]],
    weapons = {"cocaine_repair_wrench"},
    command = "cocainecook",
    max = 4,
    salary = 15,
    admin = 0,
    vote = false,
    canDemote = false,
    hasLicense = false,
    category = "The Bad",
})

TEAM_METHCOOK = AddExtraTeam("Meth Cook", {
    color = Color(17, 188, 22, 255),
    model = "models/player/hostage/hostage_04.mdl",
    description = [[
    You can base with any other criminal.
    You cannot mug.
    You cannot build in the streets.
    You cannot raid bases, PD or Bank.
    You cannot kidnap.
    Fading door limit: 3.]],
    weapons = {},
    command = "methcook",
    max = 5,
    salary = 50,
    admin = 0,
    vote = false,
    canDemote = false,
    hasLicense = false,
    category = "The Bad",
})

TEAM_PARKOUR = AddExtraTeam("Parkour Thief", {
    color = Color(0, 0, 0, 255),
    model = "models/player/arctic.mdl",
    description = [[
        You can base with any other criminal.
        You can defend your base with your name on the door.
        You cannot mug.
        You can raid bases.
        You cannot raid PD or Bank.
        You cannot build in the streets.
        You cannot kidnap.]],
    weapons = {"climb_swep2", "bhop_swep", "pro_lockpick_update", "3d2dcracker_weapon"},
    command = "parkour",
    max = 4,
    salary = 85,
    admin = 0,
    vote = false,
    hasLicense = false,
    canDemote = false,
    category = "The Bad"
})

TEAM_THIEF = AddExtraTeam("Thief", {
    color = Color(0, 0, 0, 255),
    model = {"models/player/arctic.mdl"},
    description = [[
        You can base with any other criminal.
        You can defend your base with your name on the door.
        You can mug for a maximum of £10,000. (NOTE: DO NOT mug AFK players at spawn)
        You can raid bases and Bank
        You cannot raid PD.
        You cannot build in the streets.
        You cannot kidnap.]],
    weapons = {"pro_lockpick_update", "3d2dcracker_weapon", "wp_hammer"},
    command = "thief",
    max = 0,
    salary = 30,
    admin = 0,
    vote = false,
    hasLicense = false,
    candemote = false,
    category = "The Bad",
})
TEAM_MASTERTHIEF = AddExtraTeam("Master Thief", {
    color = Color(0, 0, 0, 255),
    model = {"models/player/phoenix.mdl"},
    description = [[
        You can base with any other criminal.
        You can defend your base with your name on the door.
        You can mug for a maximum of £10,000. (NOTE: DO NOT mug AFK players at spawn)
        You can raid bases and Bank
        You cannot raid PD.
        You cannot build in the streets.
        You cannot kidnap.]],
    weapons = {"m9k_glock", "pro_lockpick_update", "3d2dcracker_weapon", "m9k_magpulpdr", "wp_hammer"},
    command = "masterthief",
    max = 4,
    salary = 85,
    admin = 0,
    vote = false,
    canDemote = false,
    hasLicense = false,
    PlayerLoadout = function( ply ) return ply:SetArmor(50) end,
    category = "The Bad",
})

TEAM_HITMAN = AddExtraTeam("Hitman", {
    color = Color(20, 50, 200, 255),
    model = {"models/player/leet.mdl"},
    description = [[
        You cannot base.
        You cannot build in the streets.
        You cannot mug.
        You can only kill people you have accepted hits on unless in self defence.
        You can raid bases, PD or bank ONLY IF your target is proven to be inside and you may ONLY harm the specified target.
        You cannot kidnap.]],
    weapons = {"csgo_huntsman", "diguisekit"},
    command = "hitman",
    max = 5,
    salary = 0,
    admin = 0,
    vote = false,
    hasLicense = false,
    canDemote = false,
    PlayerLoadout = function( ply ) return ply:SetArmor(50) end,
    category = "The Bad",
})

TEAM_ELITEHITMAN = AddExtraTeam("Elite Hitman", {
    color = Color(80, 80, 210, 255),
    model = {"models/player/p2_chell.mdl"},
    description = [[
        You cannot base.
        You cannot build in the streets.
        You cannot mug.
        You can only kill people you have accepted hits on unless in self defence.
        You can raid bases, PD or bank ONLY IF your target is proven to be inside and you may ONLY harm the specified target.
        You cannot kidnap.]],
    weapons = {"csgo_huntsman", "diguisekit", "m9k_svt40"},
    command = "elitehitman",
    max = 4,
    salary = 0,
    admin = 0,
    vote = false,
    hasLicense = false,
    canDemote = false,
    customCheck = IsVIP,
    CustomCheckFailMsg = VIPMsg,
    PlayerLoadout = function( ply ) return ply:SetArmor(100) end,
    category = "The Bad",
})

TEAM_GUN = AddExtraTeam("Gun Dealer", {
    color = Color(255, 140, 0, 255),
    model = {"models/player/monk.mdl"},
    description = [[
        You can base.
        You can defend your base with your name on the door.
        You cannot mug.
        You cannot raid bases, PD or bank
        You cannot build in the streets.
        You cannot kidnap.
        You can self supply guns to yourself however you must be a gun dealer for at least 10 minutes to not violate the job abuse rule.
        You must provide the items payed for or else you will be punished.]],
    weapons = {},
    command = "gundealer",
    max = 2,
    salary = 80,
    admin = 0,
    vote = false,
    canDemote = false,
    hasLicense = false,
    PlayerLoadout = function( ply ) return ply:SetArmor( 0 ) end,
    category = "Citizens",
})

TEAM_S_GUN = AddExtraTeam("Special Gun Dealer", {
    color = Color(102, 204, 255, 255),
    model = { "models/player/dod_german.mdl" },
    description = [[
        You can base.
        You can defend your base with your name on the door.
        You cannot mug.
        You cannot raid bases, PD or bank
        You cannot build in the streets.
        You cannot kidnap.
        You can self supply guns to yourself however you must be a gun dealer for at least 10 minutes to not violate the job abuse rule.
        You must provide the items payed for or else you will be punished.]],
    weapons = {},
    command = "specialgundealer",
    max = 2,
    salary = 45,
    admin = 0,
    vote = false,
    canDemote = false,
    hasLicense = false,
    PlayerLoadout = function( ply ) return ply:SetArmor( 0 ) end,
    category = "Citizens",
})

TEAM_MOONSHINE = AddExtraTeam("Moonshine Brewer", {
    color = Color(30, 204, 255, 255),
    model = {"models/player/hostage/hostage_01.mdl"},
    description = [[
        You are distilling Moonshine.
        You can base.
        You can defend your base with your name on the door.
        You cannot mug.
        You cannot raid bases, PD or bank.
        You cannot build in the streets.
        You cannot kidnap.]],    
    weapons = {},
    command = "brewer",
    max = 4,
    salary = 0,
    admin = 0,
    vote = false,
    hasLicense = false,
    canDemote = false,
    PlayerLoadout = function( ply ) return ply:SetArmor( 0 ) end,
    category = "The Bad",
})

TEAM_HEROIN = AddExtraTeam("Heroin Cook", {
    color = Color(169, 139, 199, 255),
    model = {"models/player/Group03/male_06.mdl"},
    description = [[
        You are growing opium and extracting heroine.
        You can base.
        You can defend your base with your name on the door.
        You cannot mug.
        You cannot raid bases, PD or bank.
        You cannot build in the streets.
        You cannot kidnap.]],    
    weapons = {},
    command = "heroincook",
    max = 4,
    salary = 0,
    admin = 0,
    vote = false,
    hasLicense = false,
    canDemote = false,
    PlayerLoadout = function( ply ) return ply:SetArmor( 0 ) end,
    category = "The Bad",
})

end)