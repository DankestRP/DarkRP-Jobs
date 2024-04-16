
-----------------------------------------------------
--[[---------------------------------------------------------------------------
DarkRP custom jobs
---------------------------------------------------------------------------

This file contains your custom jobs.
This file should also contain jobs from DarkRP that you edited.

Note: If you want to edit a default DarkRP job, first disable it in darkrp_config/disabled_defaults.lua
	Once you've done that, copy and paste the job to this file and edit it.

The default jobs can be found here:
https://github.com/FPtje/DarkRP/blob/master/gamemode/config/jobrelated.lua

For examples and explanation please visit this wiki page:
http://wiki.darkrp.com/index.php/DarkRP:CustomJobFields


Add jobs under the following line:
---------------------------------------------------------------------------]]

TEAM_CPCHIEF = DarkRP.createJob("Chief Of Police", {
    color = Color(20, 20, 255, 255),
    model = "models/player/combine_soldier_prisonguard.mdl",
    description = [[The Chief is the leader of the Civil Protection unit.
        Coordinate the police force to enforce law in the city.
        Hit a player with arrest baton to put them in jail.
        Bash a player with a stunstick and they may learn to obey the law.
        The Battering Ram can break down the door of a criminal, with a warrant for his/her arrest.
        Type /wanted <name> to alert the public to the presence of a criminal.
        Type /jailpos to set the Jail Position]],
    weapons = {"arrest_stick", "unarrest_stick", "m9k_1897winchester", "weapon_cuff_police", "stunstick", "door_ram", "weaponchecker"},
    command = "civilprotectionchief",
    max = 1,
    salary = GAMEMODE.Config.normalsalary * 1.67,
    admin = 0,
    vote = true,
    hasLicense = true,
    chief = true,
    category = "Civil Protection",
})

TEAM_CPPOLICE = DarkRP.createJob("Police Officer", {
    color = Color(25, 25, 170, 255),
    model = {"models/player/police.mdl", "models/player/police_fem.mdl"},
    description = [[The protector of every citizen that lives in the city.
        You have the power to arrest criminals and protect innocents.
        Hit a player with your arrest baton to put them in jail.
        Bash a player with a stunstick and they may learn to obey the law.
        The Battering Ram can break down the door of a criminal, with a warrant for their arrest.
        The Battering Ram can also unfreeze frozen props (if enabled).
        Type /wanted <name> to alert the public to the presence of a criminal.]],
    weapons = {"arrest_stick", "unarrest_stick", "m9k_ragingbull", "stunstick", "door_ram", "weaponchecker", "weapon_cuff_police"},
    command = "civilprotection",
    max = 5,
    salary = GAMEMODE.Config.normalsalary * 1.45,
    admin = 0,
    vote = true,
    hasLicense = true,
    category = "Civil Protection",
})

TEAM_TROLL = AddExtraTeam("Fat Troll", {
	color = Color(100, 150, 200, 255),
	VIPOnly = true,
	model = "models/obese_male.mdl",
	description = [[I am a troll, I go up to people and annoy them. I can mic spam and annoy the shit out of you. You cannot kill me with out adverting war x3!]],
	weapons = {"weapon_extinguisher", "weapon_angryhobo"},
	command = "troll",
	max = 1,
	salary = 10,
	admin = 0,
	vote = false,
	hasLicense = false,
	customCheck = function(ply) return ply:GetNWString("usergroup") == "vip" or ply:IsAdmin() end, -- The extra check function. Enter nil or nothing to not have a restriction
})

TEAM_GRIM = AddExtraTeam("Grim Reaper", {
	color = Color(100, 150, 200, 255),
	VIPOnly = true,
	model = "models/grim.mdl",
	description = [[I am the ruler of the Under World!
	
	SALARY:60]],
	weapons = {"unarrest_stick", "m9k_harpoon"},
	command = "grimreaper",
	max = 1,
	salary = 60,
	admin = 0,
	vote = true,
	hasLicense = false,
	customCheck = function(ply) return ply:GetNWString("usergroup") == "vip" or ply:IsAdmin() end, -- The extra check function. Enter nil or nothing to not have a restriction
})

TEAM_THIEF = DarkRP.createJob("Darth Vader", {
color = Color(255, 0, 0, 255),
VIPOnly = true,
model = {"models/player/b4p/b4p_vader.mdl"},
description = [[Do not be afk in this job!]],
weapons = {"keys", "pocket", "climb_swep2", "weapon_lockpick_vip", "weapon_arc_atmcard", "keypad_cracker", "weapon_lightsaber"},
command = "darthvader",
max = 1,
salary = 400,
admin = 0,
vote = false,
hasLicense = true,
candemote = false,
category = "Civil Protection",
customCheck = function(ply) return ply:GetNWString("usergroup") == "vip" or ply:IsAdmin() end, -- The extra check function. Enter nil or nothing to not have a restriction
})

TEAM_COMB = DarkRP.createJob("Community Watch-Dog", {
	color = Color(47, 79, 79, 255),
	model = {"models/player/demon_violinist/demon_violinist.mdl"},
	description = [[At any time, as long as your in my comminity, I have the right to weapon check you.]],
	weapons = {"weapon_arc_atmcard", "m9k_m98b", "weapon_cuff_rope", "weaponchecker", "weapon_cuff_police"},
	command = "communitywatchdog",
	max = 2,
	salary = GAMEMODE.Config.normalsalary,
	admin = 0,
	vote = false,
	hasLicense = true,
})

TEAM_COMB = DarkRP.createJob("Community Medic", {
	color = Color(47, 79, 79, 255),
	model = {"models/Kleiner.mdl"},
	description = [[I am the community medic.]],
	weapons = {"weapon_arc_atmcard", "med_kit", "weapon_defibrilator"},
	command = "communitymedic",
	max = 2,
	salary = GAMEMODE.Config.normalsalary,
	admin = 0,
	vote = false,
	hasLicense = true,
})

TEAM_COMB = DarkRP.createJob("Community Builder", {
	color = Color(47, 79, 79, 255),
	model = {"models/player/hostage/hostage_04.mdl"},
	description = [[I have the right to block off any tunnels and build a community.]],
	weapons = {"weapon_arc_atmcard", "laserpointer", "weaponchecker"},
	command = "communitybuilder",
	max = 2,
	salary = GAMEMODE.Config.normalsalary,
	admin = 0,
	vote = false,
	hasLicense = true,
})

TEAM_RAPE = DarkRP.createJob("Kidnapper", {
	color = Color(47, 79, 79, 255),
	VIPOnly = true,
	model = {"models/rottweiler/freeman.mdl"},
	description = [[I got a popsicle down in the basement.]],
	weapons = {"lockpick", "m9k_knife", "weapon_cuff_elastic", "weapon_kidnapper"},
	command = "kidnapper",
	max = 2,
	salary = GAMEMODE.Config.normalsalary,
	admin = 0,
	vote = false,
	hasLicense = false,
	customCheck = function(ply) return ply:GetNWString("usergroup") == "vip" or ply:IsAdmin() end, -- The extra check function. Enter nil or nothing to not have a restriction
})

TEAM_RAPE = DarkRP.createJob("Rapist", {
	color = Color(47, 79, 79, 255),
	VIPOnly = true,
	model = {"models/gdub.mdl"},
	description = [[I got a popsicle down in the basement.]],
	weapons = {"weapon_arc_atmcard", "weapon_rape", "m9k_knife", "weapon_cuff_elastic", "weapon_kidnapper", "lockpick"},
	command = "rapist",
	max = 2,
	salary = GAMEMODE.Config.normalsalary,
	admin = 0,
	vote = false,
	hasLicense = false,
	customCheck = function(ply) return ply:GetNWString("usergroup") == "vip" or ply:IsAdmin() end, -- The extra check function. Enter nil or nothing to not have a restriction
})

TEAM_FIXR = DarkRP.createJob("Mechanic", {
	color = Color(47, 79, 79, 255),
	model = {"models/sd/players/[dbs_brawler]-head_brawler_dbs.mdl"},
	description = [[Car broke down? I am your man. Just give me a call or stop by my shop and i can fix it.]],
	weapons = {"weapon_arc_atmcard", "vc_repair"},
	command = "mechanic",
	max = 1,
	salary = GAMEMODE.Config.normalsalary,
	admin = 0,
	vote = false,
	hasLicense = false,
})

TEAM_TAXI = DarkRP.createJob("Taxi-Driver", {
	color = Color(47, 79, 79, 255),
	model = {"models/player/tfa_irons_casual.mdl"},
	description = [[Hello need a ride? Call 123-456-789 to get a luxury card ride to your awaiting destination.]],
	weapons = {"weapon_arc_atmcard"},
	command = "taxidriver",
	max = 2,
	salary = GAMEMODE.Config.normalsalary,
	admin = 0,
	vote = false,
	hasLicense = false,
})

TEAM_MEDIC = DarkRP.createJob("Paramdeics", {
	color = Color(47, 79, 79, 255),
	VIPOnly = true,
	model = {"models/survivors/survivor_doctorw.mdl"},
	description = [[With your medical knowledge you work to restore players to full health.
		Without a medic, people cannot be healed.
		Left click with the Medical Kit to heal other players.
		Right click with the Medical Kit to heal yourself.]],
	weapons = {
	"med_kit",
	"weapon_defibrilator", "weapon_arc_atmcard"},
	command = "paramedics",
	max = 2,
	salary = GAMEMODE.Config.normalsalary,
	admin = 0,
	vote = false,
	hasLicense = false,
	medic = true,
	customCheck = function(ply) return ply:GetNWString("usergroup") == "vip" or ply:IsAdmin() end, -- The extra check function. Enter nil or nothing to not have a restriction
})

TEAM_POLICE = DarkRP.createJob("FireFighter", {
    color = Color(0, 0, 0, 255),
	VIPOnly = true,
    model = "models/fearless/fireman2.mdl",
    description = [[I am a firefighter who makes sure that fires dont take over the server! I patrol with my fire-truck and ensure that we are ALL safe.]],
    weapons = {"weapon_arc_atmcard", "weapon_defibrilator", "weaponchecker", "door_ram", "weapon_extinguisher"},
    command = "firefighter",
    max = 2,
    salary = 50,
    admin = 0,
    vote = false,
    hasLicense = true,
    category = "Citizens",
	customCheck = function(ply) return ply:GetNWString("usergroup") == "vip" or ply:IsAdmin() end, -- The extra check function. Enter nil or nothing to not have a restriction
})

TEAM_BUS = DarkRP.createJob("Bus Driver", {
    color = Color(0, 0, 0, 255),
	VIPOnly = true,
    model = "models/player/daftpunk/daft_silver.mdl",
    description = [[I am a bus driver. nI drive people around in my bus. I have the right to weapon check you before you get on the bus for saftey pre-cautions. I also have a taser so don't try anything.]],
    weapons = {"weapon_arc_atmcard", "weapon_defibrilator", "weaponchecker"},
    command = "busdriver",
    max = 2,
    salary = 50,
    admin = 0,
    vote = false,
    hasLicense = true,
    category = "Citizens",
	customCheck = function(ply) return ply:GetNWString("usergroup") == "vip" or ply:IsAdmin() end, -- The extra check function. Enter nil or nothing to not have a restriction
})

TEAM_HITMAN = DarkRP.createJob("Terminator", {
    color = Color(0, 0, 0, 255),
	VIPOnly = true,
    model = "models/player/arnold_schwarzenegger.mdl",
    description = [[People hire you to take out other people,
    this job require you to be completely focussed.
    A single breath can make you loose a shot.]],
    weapons = {"m9k_m24", "m9k_contender", "weapon_kidnapper"},
    command = "terminator",
    max = 1,
    salary = 100,
    admin = 0,
    vote = false,
    hasLicense = true,
    category = "Citizens",
	customCheck = function(ply) return ply:GetNWString("usergroup") == "vip" or ply:IsAdmin() end, -- The extra check function. Enter nil or nothing to not have a restriction
})

TEAM_DJ = AddExtraTeam("CJ", {
	color = Color(50,0,150,255, 255),
	model = {
	"models/player/cj.mdl"
	},
	description = [[I am Carl Johnson Bitch Niggas!!]],
	weapons = {
	"weapon_boombox", "weapon_arc_atmcard", "m9k_deagle", "weapon_arc_atmcard"
	},
	command = "cj",
	max = 2,
	salary = 250,
	admin = 0,
	vote = false,
	hasLicense = true,
})

TEAM_HITMAN = DarkRP.createJob("Agent 47", {
    color = Color(0, 0, 0, 255),
	VIPOnly = true,
    model = "models/player/agent_47.mdl",
    description = [[People hire you to take out other people,
    this job require you to be completely focussed.
    A single breath can make you loose a shot.]],
    weapons = {"m9k_m24", "m9k_contender", "lockpick"},
    command = "agent47",
    max = 1,
    salary = 65,
    admin = 0,
    vote = false,
    hasLicense = false,
    category = "Citizens",
	customCheck = function(ply) return ply:GetNWString("usergroup") == "vip" or ply:IsAdmin() end, -- The extra check function. Enter nil or nothing to not have a restriction
})

TEAM_NGLT = AddExtraTeam("National Guard Lieutenant Colonel", {
    color = Color(10, 10, 150, 255),
    model = "models/player/hobo387/didact.mdl",
    description = [[ [Supporter Job] As the Lieutenant Colonel in the
	National Guard its your job to be in charge of all Law Enforcement
	when its allot of terrorists or attacks in the city.
	
	SALARY:230]],
    weapons = {"weaponchecker", "weapon_mad_m4", "hl2_combo_fists", "weapon_mad_p228"},
    command = "nationalguardlc",
    max = 5,
    salary = 230,
    admin = 0,
    vote = false,
    hasLicense = true,
        customCheck = function(ply)
             return ply:IsUserGroup("d_headadmin") or ply:IsUserGroup("developer") 
        end
})

TEAM_NG = AddExtraTeam("National Guard", {
    color = Color(10, 10, 100, 255),
    model = "models/player/gasmask.mdl",
    description = [[ [Gold Donator Job] As a member of the National Guard
	your job is to protect the citizen from terrorist...
	If its allot of Terrorists in the city the Lieutenant Colonel of the
	National Guard is in charge over all Law Enforcement in the city.
	
	SALARY:150]],
    weapons = {"weaponchecker", "weapon_mad_m4", "hl2_combo_fists", "weapon_mad_p228"},
    command = "nationalguard",
    max = 5,
    salary = 150,
    admin = 0,
    vote = false,
    hasLicense = true
})

TEAM_POLICEFBI = AddExtraTeam("F.B.I", {
	color = Color(50, 90, 255, 255),
	model = "models/player/riot.mdl",
	description = [[ [Gold Donator] As a F.B.I Special Agent its your job to find
	Terrorists and kill or arrest them..... 
	
	SALARY:120]],
	weapons = {"hl2_combo_fists", "weapon_mad_m4", "weapon_mad_p228", "weapon_cuff_police", "weapon_stungun", "weapon_cuff_police", "arrest_stick", "unarrest_stick"},
	command = "fbi",
	max = 2,
	salary = 120,
	admin = 0,
	vote = false,
	hasLicense = false
})

TEAM_NINJA = AddExtraTeam("Ninja", {
	color = Color(255, 93, 0, 255),
	model = "models/player/lordvipes/mk9_cyrax/cyrax.mdl",
	description = [[As a ninja you can jump from building
	to building with you grapling hook. But be careful
	because grapling hook is not leagel. 
	
	SALARY:90]],
	weapons = {"hl2_combo_fists", "grapplehook", "weapon_mad_knife", "climb_swep2", "m9k_damascus", "weapon_kidnapper", "lockpick"},
	command = "ninja",
	max = 2,
	salary = 65,
	admin = 0,
	vote = false,
	hasLicense = false
})

TEAM_DRUGCARTEL = AddExtraTeam("Mexican Drug Cartel Mobster", {
	color = Color(100, 100, 100, 255),
	model = "models/player/Group03/male_03.mdl",
	description = [[You work for the Mexican Drug Cartel,
You take orders from the Mexican Drug Cartel boss only. 
	
	SALARY:45]],
	weapons = {"hl2_combo_fists"},
	command = "mexicandrugcartelmobster",
	max = 5,
	salary = 45,
	admin = 0,
	vote = false,
	hasLicense = false
})

TEAM_DRUGCARTELBOSS = AddExtraTeam("Mexican Drug Cartel Boss", {
	color = Color(10, 10, 10, 255),
	model = "models/player/monk.mdl",
	description = [[As the mexican drug boss you have the athority to
	tell the mexican drug cartel what to do. But be careful because
	police informent will be looking out for you 
	
	SALARY:50]],
	weapons = {"lockpick", "unarrest_stick", "hl2_combo_fists"},
	command = "mexicandrugcartelboss",
	max = 1,
	salary = 50,
	admin = 0,
	vote = false,
	hasLicense = false
})

TEAM_PTHIEF = AddExtraTeam("Pro Thief", {
	color = Color(111, 199, 175, 255),
	model = "models/player/arctic.mdl",
	description = [[Your are a pro thief, Brake into peoples homes
and places of business to piss them off!
Take what you can and run!
You may not shoot people in there own only in robbery.
homes or places of business. only in robbery.
to shoot you!. 
	
	SALARY:60]],
	weapons = {"keypad_cracker", "lockpick", "hl2_combo_fists", "m9k_deagle"},
	command = "prothief",
	max = 3,
	salary = 60,
	admin = 0,
	vote = false,
	hasLicense = false
})

TEAM_HITMAN = AddExtraTeam("Bounty Hunter", {
	color = Color(125, 125, 256, 252),
	model = "models/player/legion/3e_soldier.mdl",
	description = [[As a bounty hunter its your job to find wanted players and
	take them down to the station.
	
	SALARYL:50]],
	weapons = {"hl2_combo_fists", "lockpick", "weapon_cuff_police"},
	command = "bountyhunter",
	max = 1,
	salary = 50,
	admin = 0,
	vote = false,
	hasLicense = true
})

TEAM_LAWYER = AddExtraTeam("Lawyer", {
	color = Color(100, 150, 200, 255),
	model = "models/player/hostage/hostage_04.mdl",
	description = [[As a lawyer you are responsible for fighting
	on your clints behalf this includes bailing him out of jail and or
	pvp confrontation.
	
	SALARY:60]],
	weapons = {"unarrest_stick", "hl2_combo_fists"},
	command = "lawyer",
	max = 3,
	salary = 60,
	admin = 0,
	vote = true,
	hasLicense = false
})

TEAM_MD = DarkRP.createJob("Mayors Daughter", {
    color = Color(255,100,100,255),
    model = "models/player/alyx.mdl",
    description = [[You are the mayors daughter, walk around with your dad
                just chill around. But be careful, you never know when somebody
                is waiting to kidnap you!]],
    weapons = {"weapon_stungun"},
    command = "mayorsdaughter",
    max = 1,
    salary = 80,
    admin = 0,
    vote = false,
    hasLicense = false
})

TEAM_HITMAN = DarkRP.createJob("Hitman", {
    color = Color(0, 0, 0, 255),
    model = "models/player/edward_kenway.mdl",
    description = [[People hire you to take out other people,
    this job require you to be completely focussed.
    A single breath can make you loose a shot.]],
    weapons = {"m9k_m24"},
    command = "hitman",
    max = 2,
    salary = 65,
    admin = 0,
    vote = false,
    hasLicense = false,
    category = "Citizens",
})

TEAM_THIEF = DarkRP.createJob("Thief", {
    color = Color(0, 0, 0, 255),
    model = "models/redninja/guard_02.mdl",
    description = [[You are a thief, rob people, lockpick their house and steal their plants and legal printers.]],
    weapons = {"lockpick"}, -- You may wanna find a pickpocket swep and add it here.
    command = "thief",
    max = 2,
    salary = 65,
    admin = 0,
    vote = false,
    hasLicense = false,
    category = "Citizens",
})

TEAM_POLICESS = DarkRP.createJob("Secret Service", {
    color = Color(100, 20, 20, 255),
    model = "models/half-dead/gopniks/slav.mdl",
    description = [[You are responsible for protecting the mayor.
    Take care of the old fellow, he is vanuarable to terrorists all the time! Before he enters a room, you need to make sure its secure.]],
    weapons = {"weapon_deagle2", "stunstick", "weaponchecker", "weapon_cuff_police", "weapon_stungun", "weapon_kidnapper", "arrest_stick"},
    command = "secretservice",
    max = 2,
    salary = 65,
    admin = 0,
    vote = true,
    hasLicense = false,
        ammo = {
        ["pistol"] = 60,
    }, 
    category = "Civil Protection",
})

TEAM_DRUG = DarkRP.createJob("Drug Dealer", {
    color = Color(51, 204, 255, 255),
    model = "models/player/Kleiner.mdl",
    description = [[You deal drugs to those in need.
                Be careful, may get arrested if caught in the act!]],
    weapons = {},
    command = "drugdealer",
    max = 2,
    salary = 65,
    admin = 0,
    vote = false,
    hasLicense = false,
    category = "Citizens",
})

TEAM_CasinoSecurity = DarkRP.createJob("Casino Bouncer", {
    color = Color(255, 204, 51, 255),
    model = {"models/player/tommy_vercetti.mdl"},
description = [[Keep Out Trouble.And Under Age Kids AnyThank That Might Go Wrong Grt Rid Of It .]],
    weapons = {"keys", "pocket", "weapon_cuff_standard", "weapon_arc_atmcard"},
    command = "casinobouncer",
    max = 5,
    salary = 150,
    admin = 0,
    vote = false,
    hasLicense = false,
})

TEAM_MAYOR4 = DarkRP.createJob("Presidents/Mayor Body Guard", {
	color = Color(911, 78, 99, 3255),
	VIPOnly = true,
	model = "models/player/adam_jensen.mdl",
description = [[The Prime Minister is in the city keep him safe .
	If you are the Prime Minister BodyGuards you may create and accept warrants also unlike the mayor you run the country.
	Type /wanted <name>  to warrant a player.
	Type /jailpos to set the Jail Position.
	Type /lockdown initiate a lockdown of the city.
	Everyone must be inside during a lockdown.
	The cops patrol the area.
	/unlockdown to end a lockdown]],
	weapons = {"arrest_stick", "unarrest_stick", "weapon_glock2", "stunstick", "door_ram", "weaponchecker", "m9k_mp5", "weapon_arc_atmcard", "weapon_cuff_police", "weapon_stungun"},
	command = "president/mayorbodyguard",
	max = 3,
	salary = GAMEMODE.Config.normalsalary * 1.89,
	admin = 0,
	vote = true,
	hasLicense = false,
	mayor = true,
	customCheck = function(ply) return ply:GetNWString("usergroup") == "vip" or ply:IsAdmin() end, -- The extra check function. Enter nil or nothing to not have a restriction
})

TEAM_ISIS = DarkRP.createJob("ISIS Medic", {
	color = Color(0, 0, 0, 255),
	VIPOnly = true,
	model = {"models/player/kuma/taliban_grunt.mdl"},
	description = [[You must follow all of ISIS Leader's orders AND heal all isis memebers in need]],
	weapons = {"weapon_arc_atmhack","weapon_arc_atmcard","weapon_medkit","weapon_defibrilator"},
	command = "isismedic",
	max = 3,
	salary = 500,
	admin = 0,
	vote = false,
	hasLicense = false,
	candemote = true,
	category = "Citizens",
	customCheck = function(ply) return ply:GetNWString("usergroup") == "vip" or ply:IsAdmin() end, -- The extra check function. Enter nil or nothing to not have a restriction

})

TEAM_ISIS = DarkRP.createJob("ISIS Member", {
	color = Color(0, 0, 0, 255),
	VIPOnly = true,
	model = {"models/player/kuma/taliban_rpg.mdl"},
	description = [[You must follow all of ISIS Leader's orders]],
	weapons = {"weapon_arc_atmcard"},
	command = "isismember",
	max = 3,
	salary = 500,
	admin = 0,
	vote = false,
	hasLicense = false,
	candemote = true,
	category = "Citizens",
	customCheck = function(ply) return ply:GetNWString("usergroup") == "vip" or ply:IsAdmin() end, -- The extra check function. Enter nil or nothing to not have a restriction

})

 TEAM_ISIS = DarkRP.createJob("ISIS Leader", {
	color = Color(0, 0, 0, 255),
	VIPOnly = true,
	model = {"models/code_gs/osama/osamaplayer.mdl"},
	description = [[You command all terrorist in the "ISIS" organization]],
	weapons = {"weapon_arc_atmcard","m9k_suicide_bomb","m9k_ak47"},
	command = "isisleader",
	max = 1,
	salary = 159,
	admin = 0,
	vote = true,
	hasLicense = false,
	candemote = true,
	category = "Citizens",
	customCheck = function(ply) return ply:GetNWString("usergroup") == "vip" or ply:IsAdmin() end, -- The extra check function. Enter nil or nothing to not have a restriction

})
 
 TEAM_Freddys2= DarkRP.createJob("Freddys Gang Member", {
	color = Color(299, 111, 666, 622),
	VIPOnly = true,
	model = {"models/rin/mgs5/ishmael.mdl"},
	description = [[The lowest person of crime.
		A Freddys Gang Member works for the Freddys Gang Leader who runs the freddy's fazbear pizza.
		The Freddys Gang Leader  sets your agenda and you follow it or you might be punished.]],
	weapons = {"weapon_arc_atmcard"},
	command = "freddygangmember",
	max = 6,
	salary = GAMEMODE.Config.normalsalary,
	admin = 0,
	vote = false,
	hasLicense = false,
	customCheck = function(ply) return ply:GetNWString("usergroup") == "vip" or ply:IsAdmin() end, -- The extra check function. Enter nil or nothing to not have a restriction
})
 
 TEAM_Freddys = DarkRP.createJob("Freddys Gang Leader", {
	color = Color(299, 111, 666, 622),
	VIPOnly = true,
	model = "models/enhanced_survivors/survivor_namvet.mdl",
	description = [[Find a place to open the pizza shop. entertainment its all about.
		keep kids players happy.
		Freddy has the ability to break into houses by using a lockpick.
		The Freddys Gang Leader posesses the ability to unarrest you.]],
	weapons = {"lockpick", "unarrest_stick", "keypad_cracker","weapon_752_dlt19","med_kit","weapon_752_kyd21","weapon_arc_atmcard"},
	command = "freddygangleader",
	max = 1,
	salary = GAMEMODE.Config.normalsalary * 1.34,
	admin = 0,
	vote = false,
	hasLicense = false,
	customCheck = function(ply) return ply:GetNWString("usergroup") == "vip" or ply:IsAdmin() end, -- The extra check function. Enter nil or nothing to not have a restriction
})

TEAM_HOTELM = AddExtraTeam("Hotel Manager", {
	color = Color(102, 0, 102, 255),
	model = "models/player/magnusson.mdl",
	description = [[You are the manager of the gmod hotel take good care of it,
	Also you can sell out the rooms to people to make some cash!.]],
	weapons = {"hl2_combo_fists", "weapon_arc_atmcard"},
	command = "hotelmanager",
	max = 1,
	salary = 45,
	admin = 0,
	vote = false,
	hasLicense = false,
})


TEAM_POLICECA = DarkRP.createJob("Police Chiefs Assistant", {
	color = Color(20, 20, 255, 255),
	model = "models/player/gasmask.mdl",
	description = [[The Chief is the leader of the Civil Protection unit.
		Coordinate the police force to enforce law in the city.
		Hit a player with arrest baton to put them in jail.
		Bash a player with a stunstick and they may learn to obey the law.
		The Battering Ram can break down the door of a criminal, with a warrant for his/her arrest.
		Type /wanted <name> to alert the public to the presence of a criminal.
		Type /jailpos to set the Jail Position]],
	weapons = {"arrest_stick", "unarrest_stick", "m9k_m29satan", "stunstick", "door_ram", "weaponchecker", "weapon_arc_atmcard", "weapon_cuff_police", "weapon_stungun"},
	command = "policechiefassistant",
	max = 1,
	salary = GAMEMODE.Config.normalsalary * 1.67,
	admin = 0,
	vote = false,
	hasLicense = true,
	chief = true,
	NeedToChangeFrom = TEAM_POLICE,
	ammo = {
		["pistol"] = 60,
	}
})

TEAM_POLICEUP = DarkRP.createJob("UnderCover Police", {
	color = Color(25, 25, 170, 255),
	VIPOnly = true,
	model = {"models/fbi_pack/fbi_03.mdl"},
	description = [[
	    The protector of every citizen that lives in the city.
		You have the power to arrest criminals and protect innocents.
		Hit a player with your arrest baton to put them in jail.
		Bash a player with a stunstick and they may learn to obey the law.
		The Battering Ram can break down the door of a criminal, with a warrant for their arrest.
		The Battering Ram can also unfreeze frozen props (if enabled).
		Type /wanted <name> to alert the public to the presence of a criminal.]],
	weapons = {"arrest_stick", 
	           "unarrest_stick",
			   "m9k_glock",
			   "stunstick", 
			   "door_ram", 
			   "weaponchecker",
			   "hl2_combo_fists", "weapon_arc_atmcard", "weapon_cuff_police", "weapon_stungun"},
	command = "undercoverpolice",
	max = 6,
	salary = GAMEMODE.Config.normalsalary * 1.45,                         
	admin = 0,                                                        
	vote = true,
	hasLicense = true,
	customCheck = function(ply) return ply:GetNWString("usergroup") == "vip" or ply:IsAdmin() end, -- The extra check function. Enter nil or nothing to not have a restriction
})

TEAM_RTrackOwner = DarkRP.createJob("Race Track Owner ", {
	color = Color(255,100,100,255),
	model = {"models/player/big_boss.mdl"},
	description = [[I own the race track.
		Come and pay and you can race your hoverboards!.]],
	weapons = {"weapon_arc_atmcard"},
	command = "racetrackowner",
	max = 1,
	salary = GAMEMODE.Config.normalsalary,
	admin = 0,
	vote = false,
	hasLicense = false
})

TEAM_MD = DarkRP.createJob("Race Track Worker", {
    color = Color(255,100,100,255),
    model = "models/redninja/pmedic02.mdl",
    description = [[I am a loyal hard worker of the race track owner!]],
    weapons = {weapon_arc_atmcard},
    command = "racetrackworker",
    max = 5,
    salary = 80,
    admin = 0,
    vote = false,
    hasLicense = false
})

TEAM_Mod = AddExtraTeam("Moderator On Duty ", {
	color = Color(50,0,150,255, 255),
	VIPOnly = true,
	model = {
	"models/player/combine_super_soldier.mdl"},
	description = [[the Super Admin may help admin the server if he is needed]],
	weapons = {
	"hl2_combo_fists", "weapon_cuff_police", "unarrest_stick", "arrest_stick", "vc_repair", "weapon_medkit", "weaponchecker", "weapon_keypadchecker"
    },
	command = "moderator",
	max = 5,
	salary = 50,
	admin = 0,
	vote = false,
	hasLicense = false,
	PlayerSpawn = function(ply) GAMEMODE:SetPlayerSpeed(ply, GAMEMODE.Config.walkspeed * 2, GAMEMODE.Config.runspeed * 2) ply:SetHealth("9999999999") ply:SetGravity(1) return CLIENT end,
    PlayerDeath = function(ply) GAMEMODE:SetPlayerSpeed(ply, GAMEMODE.Config.walkspeed * 1, GAMEMODE.Config.runspeed * 1) return CLIENT end,
    category = "Staff",
	customCheck = function(ply) return ply:GetNWString("usergroup") == "moderator" or ply:IsAdmin() end, -- The extra check function. Enter nil or nothing to not have a restriction
})

TEAM_ADMIN = AddExtraTeam("Senior-Admin On Duty ", {
	color = Color(50,0,150,255, 255),
	VIPOnly = true,
	model = {
	"models/player/combine_super_soldier.mdl"},
	description = [[the Super Admin may help admin the server if he is needed]],
	weapons = {
	"hl2_combo_fists", "weapon_cuff_police", "unarrest_stick", "arrest_stick", "vc_repair", "weapon_medkit", "weaponchecker", "weapon_keypadchecker"
    },
	command = "senioradmin",
	max = 5,
	salary = 50,
	admin = 0,
	vote = false,
	hasLicense = false,
	PlayerSpawn = function(ply) GAMEMODE:SetPlayerSpeed(ply, GAMEMODE.Config.walkspeed * 2, GAMEMODE.Config.runspeed * 2) ply:SetHealth("9999999999") ply:SetGravity(1) return CLIENT end,
    PlayerDeath = function(ply) GAMEMODE:SetPlayerSpeed(ply, GAMEMODE.Config.walkspeed * 1, GAMEMODE.Config.runspeed * 1) return CLIENT end,
    category = "Staff",
	customCheck = function(ply) return ply:GetNWString("usergroup") == "senior-admin" or ply:IsAdmin() end, -- The extra check function. Enter nil or nothing to not have a restriction
})

TEAM_ADMIN = AddExtraTeam("Lead-Admin On Duty ", {
	color = Color(50,0,150,255, 255),
	VIPOnly = true,
	model = {
	"models/player/combine_super_soldier.mdl"},
	description = [[the Super Admin may help admin the server if he is needed]],
	weapons = {
	"hl2_combo_fists", "weapon_cuff_police", "unarrest_stick", "arrest_stick", "vc_repair", "weapon_medkit", "weaponchecker", "weapon_keypadchecker"
    },
	command = "leadadmin",
	max = 5,
	salary = 50,
	admin = 0,
	vote = false,
	hasLicense = false,
	PlayerSpawn = function(ply) GAMEMODE:SetPlayerSpeed(ply, GAMEMODE.Config.walkspeed * 2, GAMEMODE.Config.runspeed * 2) ply:SetHealth("9999999999") ply:SetGravity(1) return CLIENT end,
    PlayerDeath = function(ply) GAMEMODE:SetPlayerSpeed(ply, GAMEMODE.Config.walkspeed * 1, GAMEMODE.Config.runspeed * 1) return CLIENT end,
    category = "Staff",
	customCheck = function(ply) return ply:GetNWString("usergroup") == "lead-admin" or ply:IsAdmin() end, -- The extra check function. Enter nil or nothing to not have a restriction
})

TEAM_Mod = AddExtraTeam("Head-Moderator On Duty ", {
	color = Color(50,0,150,255, 255),
	VIPOnly = true,
	model = {
	"models/player/combine_super_soldier.mdl"},
	description = [[the Super Admin may help admin the server if he is needed]],
	weapons = {
	"hl2_combo_fists", "weapon_cuff_police", "unarrest_stick", "arrest_stick", "vc_repair", "weapon_medkit", "weaponchecker", "weapon_keypadchecker"
    },
	command = "headmoderator",
	max = 5,
	salary = 50,
	admin = 0,
	vote = false,
	hasLicense = false,
	PlayerSpawn = function(ply) GAMEMODE:SetPlayerSpeed(ply, GAMEMODE.Config.walkspeed * 2, GAMEMODE.Config.runspeed * 2) ply:SetHealth("9999999999") ply:SetGravity(1) return CLIENT end,
    PlayerDeath = function(ply) GAMEMODE:SetPlayerSpeed(ply, GAMEMODE.Config.walkspeed * 1, GAMEMODE.Config.runspeed * 1) return CLIENT end,
    category = "Staff",
	customCheck = function(ply) return ply:GetNWString("usergroup") == "head-moderator" or ply:IsAdmin() end, -- The extra check function. Enter nil or nothing to not have a restriction
})

TEAM_Mod = AddExtraTeam("Lead-Moderator On Duty ", {
	color = Color(50,0,150,255, 255),
	VIPOnly = true,
	model = {
	"models/player/combine_super_soldier.mdl"},
	description = [[the Super Admin may help admin the server if he is needed]],
	weapons = {
	"hl2_combo_fists", "weapon_cuff_police", "unarrest_stick", "arrest_stick", "vc_repair", "weapon_medkit", "weaponchecker", "weapon_keypadchecker"
    },
	command = "leadmoderator",
	max = 5,
	salary = 50,
	admin = 0,
	vote = false,
	hasLicense = false,
	PlayerSpawn = function(ply) GAMEMODE:SetPlayerSpeed(ply, GAMEMODE.Config.walkspeed * 2, GAMEMODE.Config.runspeed * 2) ply:SetHealth("9999999999") ply:SetGravity(1) return CLIENT end,
    PlayerDeath = function(ply) GAMEMODE:SetPlayerSpeed(ply, GAMEMODE.Config.walkspeed * 1, GAMEMODE.Config.runspeed * 1) return CLIENT end,
    category = "Staff",
	customCheck = function(ply) return ply:GetNWString("usergroup") == "lead-moderator" or ply:IsAdmin() end, -- The extra check function. Enter nil or nothing to not have a restriction
})

TEAM_ADMIN = AddExtraTeam("Donor Admin On Duty ", {
	color = Color(50,0,150,255, 255),
	VIPOnly = true,
	model = {
	"models/player/combine_super_soldier.mdl"},
	description = [[the Super Admin may help admin the server if he is needed]],
	weapons = {
	"hl2_combo_fists", "weapon_cuff_police", "unarrest_stick", "arrest_stick", "vc_repair", "weapon_medkit", "weaponchecker", "weapon_keypadchecker"
    },
	command = "donoradmin",
	max = 5,
	salary = 50,
	admin = 0,
	vote = false,
	hasLicense = false,
	PlayerSpawn = function(ply) GAMEMODE:SetPlayerSpeed(ply, GAMEMODE.Config.walkspeed * 2, GAMEMODE.Config.runspeed * 2) ply:SetHealth("9999999999") ply:SetGravity(1) return CLIENT end,
    PlayerDeath = function(ply) GAMEMODE:SetPlayerSpeed(ply, GAMEMODE.Config.walkspeed * 1, GAMEMODE.Config.runspeed * 1) return CLIENT end,
    category = "Staff",
	customCheck = function(ply) return ply:GetNWString("usergroup") == "donoradmin" or ply:IsAdmin() end, -- The extra check function. Enter nil or nothing to not have a restriction
})

TEAM_ADMIN = AddExtraTeam("Donor Super-Admin On Duty ", {
	color = Color(50,0,150,255, 255),
	VIPOnly = true,
	model = {
	"models/player/combine_super_soldier.mdl"},
	description = [[the Super Admin may help admin the server if he is needed]],
	weapons = {
	"hl2_combo_fists", "weapon_cuff_police", "unarrest_stick", "arrest_stick", "vc_repair", "weapon_medkit", "weaponchecker", "weapon_keypadchecker"
    },
	command = "donorsuperadmin",
	max = 5,
	salary = 50,
	admin = 0,
	vote = false,
	hasLicense = false,
	PlayerSpawn = function(ply) GAMEMODE:SetPlayerSpeed(ply, GAMEMODE.Config.walkspeed * 2, GAMEMODE.Config.runspeed * 2) ply:SetHealth("9999999999") ply:SetGravity(1) return CLIENT end,
    PlayerDeath = function(ply) GAMEMODE:SetPlayerSpeed(ply, GAMEMODE.Config.walkspeed * 1, GAMEMODE.Config.runspeed * 1) return CLIENT end,
    category = "Staff",
	customCheck = function(ply) return ply:GetNWString("usergroup") == "donorsuperadmin" or ply:IsAdmin() end, -- The extra check function. Enter nil or nothing to not have a restriction
})

TEAM_ADMIN12 = AddExtraTeam("Super Admin On Duty ", {
	color = Color(50,0,150,255, 255),
	VIPOnly = true,
	model = {
	"models/player/combine_super_soldier.mdl"},
	description = [[the Super Admin may help admin the server if he is needed]],
	weapons = {
	"hl2_combo_fists", "unarrest_stick", "arrest_stick", "vc_repair", "weapon_medkit", "weaponchecker", "weapon_keypadchecker", "weapon_kidnapper"
    },
	command = "superadmin",
	max = 5,
	salary = 98000,
	admin = 0,
	vote = false,
	hasLicense = false,
	PlayerSpawn = function(ply) GAMEMODE:SetPlayerSpeed(ply, GAMEMODE.Config.walkspeed * 2, GAMEMODE.Config.runspeed * 2) ply:SetHealth("9999999999") ply:SetGravity(1) return CLIENT end,
    PlayerDeath = function(ply) GAMEMODE:SetPlayerSpeed(ply, GAMEMODE.Config.walkspeed * 1, GAMEMODE.Config.runspeed * 1) return CLIENT end,
    category = "Staff",
	customCheck = function(ply) return ply:GetNWString("usergroup") == "head-admin" or ply:IsAdmin() end, -- The extra check function. Enter nil or nothing to not have a restriction
})

TEAM_ADMIN = AddExtraTeam("Head-Admin On Duty ", {
	color = Color(50,0,150,255, 255),
	VIPOnly = true,
	model = {
	"models/player/combine_super_soldier.mdl"},
	description = [[the Super Admin may help admin the server if he is needed]],
	weapons = {
	"hl2_combo_fists", "weapon_cuff_police", "unarrest_stick", "arrest_stick", "vc_repair", "weapon_medkit", "weaponchecker", "weapon_keypadchecker"
    },
	command = "headadmin",
	max = 5,
	salary = 50,
	admin = 0,
	vote = false,
	hasLicense = false,
	PlayerSpawn = function(ply) GAMEMODE:SetPlayerSpeed(ply, GAMEMODE.Config.walkspeed * 2, GAMEMODE.Config.runspeed * 2) ply:SetHealth("9999999999") ply:SetGravity(1) return CLIENT end,
    PlayerDeath = function(ply) GAMEMODE:SetPlayerSpeed(ply, GAMEMODE.Config.walkspeed * 1, GAMEMODE.Config.runspeed * 1) return CLIENT end,
    category = "Staff",
	customCheck = function(ply) return ply:GetNWString("usergroup") == "head-admin" or ply:IsAdmin() end, -- The extra check function. Enter nil or nothing to not have a restriction
})

TEAM_ADMIN = AddExtraTeam("Admin On Duty ", {
	color = Color(50,0,150,255, 255),
	VIPOnly = true,
	model = {
	"models/player/combine_super_soldier.mdl"},
	description = [[the Super Admin may help admin the server if he is needed]],
	weapons = {
	"hl2_combo_fists", "weapon_cuff_police", "unarrest_stick", "arrest_stick", "vc_repair", "weapon_medkit", "weaponchecker", "weapon_keypadchecker"
    },
	command = "admin",
	max = 5,
	salary = 50,
	admin = 0,
	vote = false,
	hasLicense = false,
	PlayerSpawn = function(ply) GAMEMODE:SetPlayerSpeed(ply, GAMEMODE.Config.walkspeed * 2, GAMEMODE.Config.runspeed * 2) ply:SetHealth("9999999999") ply:SetGravity(1) return CLIENT end,
    PlayerDeath = function(ply) GAMEMODE:SetPlayerSpeed(ply, GAMEMODE.Config.walkspeed * 1, GAMEMODE.Config.runspeed * 1) return CLIENT end,
    category = "Staff",
	customCheck = function(ply) return ply:GetNWString("usergroup") == "admin" or ply:IsAdmin() end, -- The extra check function. Enter nil or nothing to not have a restriction
})

TEAM_Mod = AddExtraTeam("Senior-Moderator On Duty ", {
	color = Color(50,0,150,255, 255),
	VIPOnly = true,
	model = {
	"models/player/combine_super_soldier.mdl"},
	description = [[the Super Admin may help admin the server if he is needed]],
	weapons = {
	"hl2_combo_fists", "weapon_cuff_police", "unarrest_stick", "arrest_stick", "vc_repair", "weapon_medkit", "weaponchecker", "weapon_keypadchecker"
    },
	command = "seniormoderator",
	max = 5,
	salary = 50,
	admin = 0,
	vote = false,
	hasLicense = false,
	PlayerSpawn = function(ply) GAMEMODE:SetPlayerSpeed(ply, GAMEMODE.Config.walkspeed * 2, GAMEMODE.Config.runspeed * 2) ply:SetHealth("9999999999") ply:SetGravity(1) return CLIENT end,
    PlayerDeath = function(ply) GAMEMODE:SetPlayerSpeed(ply, GAMEMODE.Config.walkspeed * 1, GAMEMODE.Config.runspeed * 1) return CLIENT end,
    category = "Staff",
	customCheck = function(ply) return ply:GetNWString("usergroup") == "senior-moderator" or ply:IsAdmin() end, -- The extra check function. Enter nil or nothing to not have a restriction
})

TEAM_Mod = AddExtraTeam("Operator On Duty ", {
	color = Color(50,0,150,255, 255),
	VIPOnly = true,
	model = {
	"models/player/combine_super_soldier.mdl"},
	description = [[the Super Admin may help admin the server if he is needed]],
	weapons = {
	"hl2_combo_fists", "weapon_cuff_police", "unarrest_stick", "arrest_stick", "vc_repair", "weapon_medkit", "weaponchecker", "weapon_keypadchecker"
    },
	command = "operator",
	max = 5,
	salary = 50,
	admin = 0,
	vote = false,
	hasLicense = false,
	PlayerSpawn = function(ply) GAMEMODE:SetPlayerSpeed(ply, GAMEMODE.Config.walkspeed * 2, GAMEMODE.Config.runspeed * 2) ply:SetHealth("9999999999") ply:SetGravity(1) return CLIENT end,
    PlayerDeath = function(ply) GAMEMODE:SetPlayerSpeed(ply, GAMEMODE.Config.walkspeed * 1, GAMEMODE.Config.runspeed * 1) return CLIENT end,
    category = "Staff",
	customCheck = function(ply) return ply:GetNWString("usergroup") == "operator" or ply:IsAdmin() end, -- The extra check function. Enter nil or nothing to not have a restriction
})

TEAM_ADMIN = AddExtraTeam("Trial-Admin On Duty ", {
	color = Color(50,0,150,255, 255),
	VIPOnly = true,
	model = {
	"models/player/combine_super_soldier.mdl"},
	description = [[the Super Admin may help admin the server if he is needed]],
	weapons = {
	"hl2_combo_fists", "weapon_cuff_police", "unarrest_stick", "arrest_stick", "vc_repair", "weapon_medkit", "weaponchecker", "weapon_keypadchecker"
    },
	command = "trialadmin",
	max = 5,
	salary = 50,
	admin = 0,
	vote = false,
	hasLicense = false,
	PlayerSpawn = function(ply) GAMEMODE:SetPlayerSpeed(ply, GAMEMODE.Config.walkspeed * 2, GAMEMODE.Config.runspeed * 2) ply:SetHealth("9999999999") ply:SetGravity(1) return CLIENT end,
    PlayerDeath = function(ply) GAMEMODE:SetPlayerSpeed(ply, GAMEMODE.Config.walkspeed * 1, GAMEMODE.Config.runspeed * 1) return CLIENT end,
    category = "Staff",
	customCheck = function(ply) return ply:GetNWString("usergroup") == "trial-admin" or ply:IsAdmin() end, -- The extra check function. Enter nil or nothing to not have a restriction
})

TEAM_Mod = AddExtraTeam("Trial-Moderator On Duty ", {
	color = Color(50,0,150,255, 255),
	VIPOnly = true,
	model = {
	"models/player/combine_super_soldier.mdl"},
	description = [[the Super Admin may help admin the server if he is needed]],
	weapons = {
	"hl2_combo_fists", "weapon_cuff_police", "unarrest_stick", "arrest_stick", "vc_repair", "weapon_medkit", "weaponchecker", "weapon_keypadchecker"
    },
	command = "trialmoderator",
	max = 5,
	salary = 50,
	admin = 0,
	vote = false,
	hasLicense = false,
	PlayerSpawn = function(ply) GAMEMODE:SetPlayerSpeed(ply, GAMEMODE.Config.walkspeed * 2, GAMEMODE.Config.runspeed * 2) ply:SetHealth("9999999999") ply:SetGravity(1) return CLIENT end,
    PlayerDeath = function(ply) GAMEMODE:SetPlayerSpeed(ply, GAMEMODE.Config.walkspeed * 1, GAMEMODE.Config.runspeed * 1) return CLIENT end,
    category = "Staff",
	customCheck = function(ply) return ply:GetNWString("usergroup") == "trial-moderator" or ply:IsAdmin() end, -- The extra check function. Enter nil or nothing to not have a restriction
})

TEAM_POLICE = DarkRP.createJob("Security Guard", {
	color = Color(591, 242, 80, 093),
	model = {"models/player/odessa.mdl"},
	description = [[Help out the gun shop or some club or somthink .
		You have the power to unarrest criminals and protect innocents.
		Hit a player with your unarrest baton to let the players out of jail.
		Bash a player with a stunstick and they may learn to obey the law.
		.
		).
		Type /wanted <name> to alert the public to the presence of a criminal.]],
	weapons = {
   "stunstick",
   "weaponchecker",
   "hl2_combo_fists", "weapon_arc_atmcard", "weapon_cuff_police", "weapon_stungun"},
	command = "securityguard",
	max = 4,
	salary = GAMEMODE.Config.normalsalary * 1.45,                         
	admin = 0,                                                        
	vote = true,
	hasLicense = true,
	ammo = {
		["pistol"] = 60,
	}
})

TEAM_LIGHT = DarkRP.createJob("Light Gun Dealer", {
    color = Color(255, 140, 0, 255),
    model = "models/player/monk.mdl",
    description = [[A Gun Dealer is the only person who can sell guns to other people.
        Make sure you aren't caught selling illegal firearms to the public! You might get arrested!]],
    weapons = {},
    command = "lightgundealer",
    max = 2,
    salary = GAMEMODE.Config.normalsalary,
    admin = 0,
    vote = false,
    hasLicense = false,
    category = "Citizens",
})

TEAM_HEAVY = DarkRP.createJob("Heavy Gun Dealer", {
    color = Color(255, 140, 0, 255),
    model = "models/player/monk.mdl",
    description = [[A Gun Dealer is the only person who can sell guns to other people.
        Make sure you aren't caught selling illegal firearms to the public! You might get arrested!]],
    weapons = {},
    command = "heavygundealer",
    max = 2,
    salary = GAMEMODE.Config.normalsalary,
    admin = 0,
    vote = false,
    hasLicense = false,
    category = "Citizens",
})

TEAM_BLACK  = DarkRP.createJob("Black Market Dealer", {
	color = Color(557, 183, 9, 095),
	model = "models/player/eli.mdl",
	description = [[
	A Gun Dealer is the only person who can sell guns to other people.
	sell guns to gangs or anyone who asks for a gun.]],
	weapons = {
	"weapon_arc_atmcard"},
	command = "blackmarketdealer",
	max = 3,
	salary = GAMEMODE.Config.normalsalary,
	admin = 0,
	vote = false,
	hasLicense = false,
})

TEAM_JEWl = DarkRP.createJob("Jew Leader", {
	color = Color(819, 278, 139, 255),
	model = {
		"models/half-dead/steampunk/m_plague.mdl"},
	description = [[Your on the run from the nazis.
		if your in a camp try to escape if you can.
		you may have a gun? .]],
	weapons = {"weapon_arc_atmcard", "lockpick","unarrest_stick"},
	command = "jewleader",
	max = 1,
	salary = GAMEMODE.Config.normalsalary,
	admin = 0,
	vote = false,
	hasLicense = false
})

TEAM_JEW = DarkRP.createJob("Jew", {
	color = Color(819, 278, 139, 255),
	model = {
		"models/vinrax/south_park/kyle/kyle_broflovski.mdl"},
	description = [[Your on the run from the nazis.
		if your in a camp try to escape if you can.
		you may not have a gun .]],
	weapons = {"weapon_arc_atmcard"},
	command = "jew",
	max = 100,
	salary = GAMEMODE.Config.normalsalary,
	admin = 0,
	vote = false,
	hasLicense = false
})

TEAM_NAZZI = DarkRP.createJob("Nazi Member", {
	color = Color(209, 204, 102, 255),
	model = {
		"models/player/dod_german.mdl"},
	description = [[The lowest person of crime.
		A Nazi Member works for the NaziLeader who runs the Nazis.
		The NaziLeader sets your agenda and you follow it or you might be punished.]],
	weapons = {
	"hl2_combo_fists",
	"lockpick",
	"keypad_cracker", "weapon_arc_atmcard"
	},
	command = "nazzimember",
	max = 6,
	salary = GAMEMODE.Config.normalsalary,
	admin = 0,
	vote = false,
	hasLicense = false
})

TEAM_NazziLeader = DarkRP.createJob("Nazi Leader", {
	color = Color(209, 204, 102, 255),
	model = "models/hitler.mdl",
	description = [[The Nazi Leader is the boss of the Nazis in the city.
		With his power he coordinates the gangsters and forms an efficient Nazi organization.
		He has the ability to break into houses by using a lockpick.
		The Mafia Don posesses the ability to unarrest you.]],
	weapons = {
	"hl2_combo_fists",
	"lockpick",
	"unarrest_stick",
	"keypad_cracker", "weapon_arc_atmcard"
	},
	command = "nazzileader",
	max = 1,
	salary = GAMEMODE.Config.normalsalary * 1.34,
	admin = 0,
	vote = false,
	hasLicense = false
})

TEAM_NAZZIC = DarkRP.createJob("Nazi Commander", {
	color = Color(209, 204, 102, 255),
	model = {
		"models/player/dod_american.mdl"},
	description = [[The lowest person of crime.
		You Are Commander Of The Nazis.
		The NaziLeader sets your agenda and you follow it or you might be punished.]],
	weapons = {
	"hl2_combo_fists",
	"lockpick",
	"keypad_cracker", "weapon_arc_atmcard"
	},
	command = "NazzimC",
	max = 2,
	salary = GAMEMODE.Config.normalsalary,
	admin = 0,
	vote = false,
	hasLicense = false
})

TEAM_HITMAN = DarkRP.createJob("Italian Mafia Leader", {
	color = Color(255, 153, 0, 255),
	model = "models/player/korka007/tony.mdl",
	description = [[The Mafia Don is the boss of the criminals in the city.
		With his power he coordinates the gangsters and forms an efficient crime organization.
		He has the ability to break into houses by using a lockpick.
		The Mafia Don posesses the ability to unarrest you.]],
	weapons = {
	"lockpick",
	"unarrest_stick",
	"keypad_cracker",
	"hl2_combo_fists", "weapon_arc_atmcard"
	},
	command = "italianmafialeader",
	max = 1,
	salary = GAMEMODE.Config.normalsalary * 1.34,
	admin = 0,
	vote = false,
	hasLicense = false
})

TEAM_HITMAN = DarkRP.createJob("Italian Mafia", {
	color = Color(255, 153, 0, 255),
	model = "models/player/gman_high.mdl",
	description = [[The Mafia Don is the boss of the criminals in the city.
		With his power he coordinates the gangsters and forms an efficient crime organization.
		He has the ability to break into houses by using a lockpick.
		The Mafia Don posesses the ability to unarrest you.]],
	weapons = {
	"lockpick",
	"unarrest_stick",
	"keypad_cracker",
	"hl2_combo_fists", "weapon_arc_atmcard"
	},
	command = "italianmafia",
	max = 8,
	salary = GAMEMODE.Config.normalsalary * 1.34,
	admin = 0,
	vote = false,
	hasLicense = false
})

TEAM_GANG2 = DarkRP.createJob("Russian Mafia", {
	color = Color(127, 433, 0, 222),
	model = "models/grandtheftauto5/michael.mdl",
		
	description = [[
	The lowest person of crime.
	A Mafia Member works for the Mafia Don who runs the crime family.
	The Mafia Don sets your agenda and you follow it or you might be punished.]],
	weapons = {
	"hl2_combo_fists",
	"keypad_cracker",
	"lockpick", "weapon_arc_atmcard"
	},
	command = "russianmafia",
	max = 6,
	salary = GAMEMODE.Config.normalsalary,
	admin = 0,
	vote = false,
	hasLicense = false
})

TEAM_MOB2d = DarkRP.createJob("Russian Mafia Leader", {
	color = Color(127, 433, 0, 222),
	model = "models/player/guerilla.mdl",
	description = [[The Mafia Don is the boss of the criminals in the city.
		With his power he coordinates the gangsters and forms an efficient crime organization.
		He has the ability to break into houses by using a lockpick.
		The Mafia Don posesses the ability to unarrest you.]],
	weapons = {
	"lockpick", 
	"unarrest_stick", 
	"keypad_cracker",
	"hl2_combo_fists", "weapon_arc_atmcard"
	},
	command = "russianmafialeader",
	max = 1,
	salary = GAMEMODE.Config.normalsalary * 1.34,
	admin = 0,
	vote = false,
	hasLicense = false
})

TEAM_Nurse = DarkRP.createJob("The Nurse", {
	color = Color(47, 79, 79, 255),
	model = {"models/player/Group03m/male_01.mdl", "models/player/Group03m/male_04.mdl", "models/player/Group03m/male_02.mdl"},
	description = [[With your medical knowledge you work to restore players to full health.
		Without a medic, people cannot be healed.
		Left click with the Medical Kit to heal other players.
		Right click with the Medical Kit to heal yourself.]],
	weapons = {
	"med_kit",
	"hl2_combo_fists", "weapon_arc_atmcard"},
	command = "nurse",
	max = 2,
	salary = GAMEMODE.Config.normalsalary,
	admin = 0,
	vote = false,
	hasLicense = false,
	medic = true
})

TEAM_Doctor = DarkRP.createJob("The Doctor", {
	color = Color(47, 79, 79, 255),
	model = "models/player/Kleiner.mdl",
	description = [[With your medical knowledge you work to restore players to full health.
		Without a medic, people cannot be healed.
		Left click with the Medical Kit to heal other players.
		Right click with the Medical Kit to heal yourself.]],
	weapons = {
	"med_kit",
	"hl2_combo_fists", "weapon_arc_atmcard"},
	command = "doctor",
	max = 1,
	salary = GAMEMODE.Config.normalsalary,
	admin = 0,
	vote = false,
	hasLicense = false,
	medic = true
})

TEAM_POLICESN = DarkRP.createJob("Swat Sniper", {
    color = Color(25, 25, 170, 255),
	VIPOnly = true,
    model = {"models/player/swat.mdl"},
    description = [[The protector of every citizen that lives in the city.
        You have the power to arrest criminals and protect innocents.
        Hit a player with your arrest baton to put them in jail.
        Bash a player with a stunstick and they may learn to obey the law.
        The Battering Ram can break down the door of a criminal, with a warrant for their arrest.
        The Battering Ram can also unfreeze frozen props (if enabled).
        Type /wanted <name> to alert the public to the presence of a criminal.]],
    weapons = {arrest_stick, unarrest_stick, m9k_m98b, stunstick, door_ram, weaponchecker, weapon_arc_atmcard, m9k_svt40, weapon_cuff_police, weapon_stungun},
    command = "swatsniper",
    max = 2,
    salary = 85,
    admin = 0,
    vote = true,
    hasLicense = true,
    help = {
        "Please don't abuse your job",
        "When you arrest someone they are auto transported to jail.",
        "They are auto let out of jail after some time",
        "Type /warrant [Nick|SteamID|Status ID] to set a search warrant for a player.",
        "Type /wanted [Nick|SteamID|Status ID] to alert everyone to a wanted suspect",
        "Type /unwanted [Nick|SteamID|Status ID] to clear the suspect",
        "Type /jailpos to set the jail position"
    },
    category = "Civil Protection",
	customCheck = function(ply) return ply:GetNWString("usergroup") == "vip" or ply:IsAdmin() end, -- The extra check function. Enter nil or nothing to not have a restriction
})

TEAM_BANK2 = AddExtraTeam("Bank Owner", Color(255,225,0,255),
"models/player/anon/anon.mdl", [[Keep other players money or props, or Vehicles safe
Do not use it by your self! Or Take it! If they ask for it, you give them it!
]], {"weapon_arc_atmcard"}, "bankowner", 1, 100, 0, true)

TEAM_BANK = AddExtraTeam("Bank Manager", Color(255,225,0,255),
"models/player/dank.mdl", [[Keep other players money or props, or Vehicles safe
Do not use it by your self! Or Take it! If they ask for it, you give them it!
]], {"weapon_arc_atmcard"}, "bankmanager", 1, 100, 0, true)

TEAM_terroristboss = AddExtraTeam("Terrorist Boss", Color(204,153,0,255),
"models/player/leet.mdl", [[You are the Terrorist Boss, your job is to be 
the Terrorists Leader. Giving them Different kind of jobs. (Like: Kill the Mayor
(Remember a reason), blow up the police station, or something like that.
]], {"door_ram", "lockpick", "stunstick", "unarrest_stick", "weapon_ak472",
"weapon_fiveseven2", "keypad_cracker"}, "terroristboss", 1, 45, 0, false)

TEAM_robber = AddExtraTeam("Robber", Color(204,153,0,255),
"models/player/arctic.mdl", [[1. Find a target, 2. Aim a gun at him/her
3. Force him/her to give you money
(if him/her yell for police, kill him/her) 4. RUN!!
]], {"weapon_fiveseven2", "keypad_cracker", "lockpick", "weapon_arc_atmcard"}, "robber", 15, 50, 0, false)

TEAM_POLICECSI = AddExtraTeam("CSI: Crime Scene Investigation", Color(4,112,6,255),
"models/player/kleiner.mdl", [[Collect evidence and find out
who did what in a case. Like: Who killed a man, collect samples and find out what
collect samples and find out what the thing you collected is, it might just be
solution of the case!
]], {"weapon_cuff_standard", "weapon_cuff_police", "weapon_arc_atmcard", "weapon_stungun"}, "csi", 5, 150, 2, false)

TEAM_mad = AddExtraTeam("Mad Scientist", Color(4,112,6,255),
"models/player/kleiner.mdl", [[You're a Mad Scientist
Your about to make a SUPER NUCLEAR BOMB!
There can explode the world at least 60 times!
]], {"weapon_arc_atmcard"}, "madscientist", 5, 150, 0, true)

TEAM_POLICE = DarkRP.createJob("Spider-Man Black Suited", {
color = Color(255, 0, 0, 255),
VIPOnly = true,
model = {"models/player/raimispiderblack.mdl"},
description = [[Do not be afk in this job!]],
weapons = {"keys", "pocket", "spiderman's_swep", "arrest_stick", "weapon_cuff_standard", "weapon_arc_atmcard", "weapon_stungun"},
command = "spidermanblacksuited",
max = 1,
salary = 400,
admin = 0,
vote = false,
hasLicense = true,
candemote = false,
category = "Civil Protection",
customCheck = function(ply) return ply:GetNWString("usergroup") == "vip" or ply:IsAdmin() end, -- The extra check function. Enter nil or nothing to not have a restriction
})

TEAM_POLICE = DarkRP.createJob("Deadpool", {
    color = Color(100, 20, 20, 255),
	VIPOnly = true,
    model = "models/player/deadpool/deadpool.mdl						",
    description = [[You are responsible for protecting the mayor.
    Take care of the old fellow, he is vanuarable to terrorists all the time! Before he enters a room, you need to make sure its secure.]],
    weapons = {"weapon_deagle2", "spiderman's_swep", "weapon_arc_atmcard", "weapon_cuff_police", "weapon_stungun", "arrest_stick"},
    command = "deadpool",
    max = 1,
    salary = 65,
    admin = 0,
    vote = false,
    hasLicense = false,
        ammo = {
        ["weapon_fiveseven2"] = 60,
    }, 
    category = "Civil Protection",
	customCheck = function(ply) return ply:GetNWString("usergroup") == "vip" or ply:IsAdmin() end, -- The extra check function. Enter nil or nothing to not have a restriction
})

TEAM_POLICE = DarkRP.createJob("Iron Man", {
color = Color(255, 0, 0, 255),
VIPOnly = true,
model = {"models/avengers/iron man/mark7_player.mdl"},
description = [[Do not be afk in this job!]],
weapons = {"keys", "pocket", "spiderman's_swep", "arrest_stick", "weapon_cuff_standard", "weapon_arc_atmcard", "weapon_stungun"},
command = "ironman",
max = 1,
salary = 400,
admin = 0,
vote = false,
hasLicense = true,
candemote = false,
category = "Civil Protection",
customCheck = function(ply) return ply:GetNWString("usergroup") == "vip" or ply:IsAdmin() end, -- The extra check function. Enter nil or nothing to not have a restriction
})

TEAM_POLICE = DarkRP.createJob("Green Lantern", {
color = Color(255, 0, 0, 255),
VIPOnly = true,
model = {"models/player/superheroes/greenlantern.mdl"},
description = [[Do not be afk in this job!]],
weapons = {"keys", "pocket", "spiderman's_swep", "arrest_stick", "weapon_cuff_standard", "weapon_arc_atmcard", "weapon_stungun"},
command = "greenlantern",
max = 1,
salary = 400,
admin = 0,
vote = false,
hasLicense = true,
candemote = false,
category = "Civil Protection",
customCheck = function(ply) return ply:GetNWString("usergroup") == "vip" or ply:IsAdmin() end, -- The extra check function. Enter nil or nothing to not have a restriction
})

TEAM_POLICE = DarkRP.createJob("Flash", {
color = Color(255, 0, 0, 255),
VIPOnly = true,
model = {"models/player/superheroes/flash.mdl"},
description = [[Do not be afk in this job!]],
weapons = {"keys", "pocket", "spiderman's_swep", "arrest_stick", "weapon_cuff_standard", "weapon_arc_atmcard", "weapon_stungun"},
command = "flash",
max = 1,
salary = 400,
admin = 0,
vote = false,
hasLicense = true,
candemote = false,
category = "Civil Protection",
PlayerSpawn = function(ply) GAMEMODE:SetPlayerSpeed(ply, GAMEMODE.Config.walkspeed * 2, GAMEMODE.Config.runspeed * 2) ply:SetHealth("100") ply:SetGravity(1) return CLIENT end,
PlayerDeath = function(ply) GAMEMODE:SetPlayerSpeed(ply, GAMEMODE.Config.walkspeed * 1, GAMEMODE.Config.runspeed * 1) return CLIENT end,
customCheck = function(ply) return ply:GetNWString("usergroup") == "vip" or ply:IsAdmin() end, -- The extra check function. Enter nil or nothing to not have a restriction
})

TEAM_POLICE = DarkRP.createJob("Batman", {
color = Color(255, 0, 0, 255),
VIPOnly = true,
model = {"models/player/superheroes/batman.mdl"},
description = [[Do not be afk in this job!]],
weapons = {"keys", "pocket", "spiderman's_swep", "arrest_stick", "weapon_cuff_standard", "weapon_arc_atmcard", "weapon_stungun"},
command = "batman",
max = 1,
salary = 400,
admin = 0,
vote = false,
hasLicense = true,
candemote = false,
category = "Civil Protection",
customCheck = function(ply) return ply:GetNWString("usergroup") == "vip" or ply:IsAdmin() end, -- The extra check function. Enter nil or nothing to not have a restriction
})

TEAM_POLICE = DarkRP.createJob("Superman", {
color = Color(255, 0, 0, 255),
VIPOnly = true,
model = {"models/player/superheroes/superman.mdl"},
description = [[Do not be afk in this job!]],
weapons = {"keys", "pocket", "spiderman's_swep", "arrest_stick", "weapon_cuff_standard", "weapon_arc_atmcard", "weapon_stungun"},
command = "superman",
max = 1,
salary = 400,
admin = 0,
vote = false,
hasLicense = true,
candemote = false,
category = "Civil Protection",
customCheck = function(ply) return ply:GetNWString("usergroup") == "vip" or ply:IsAdmin() end, -- The extra check function. Enter nil or nothing to not have a restriction
})

TEAM_POLICE = DarkRP.createJob("Spider-Man", {
color = Color(255, 0, 0, 255),
VIPOnly = true,
model = {"models/player/raimispider.mdl"},
description = [[Do not be afk in this job!]],
weapons = {"keys", "pocket", "spiderman's_swep", "arrest_stick", "weapon_cuff_standard", "weapon_arc_atmcard", "weapon_stungun"},
command = "spiderman",
max = 1,
salary = 400,
admin = 0,
vote = false,
hasLicense = true,
candemote = false,
category = "Civil Protection",
customCheck = function(ply) return ply:GetNWString("usergroup") == "vip" or ply:IsAdmin() end, -- The extra check function. Enter nil or nothing to not have a restriction
})

TEAM_THIEF = DarkRP.createJob("Carnage", {
color = Color(255, 0, 0, 255),
VIPOnly = true,
model = {"models/player/slow/jamis/carnageee/slow.mdl"},
description = [[Fuck the Mayor!]],
weapons = {"keys", "pocket", "spiderman's_swep", "lockpick", "keypad_cracker", "weapon_arc_atmcard", "m9k_usas"},
command = "carnage",
max = 1,
salary = 200,
admin = 0,
vote = false,
hasLicense = false,
candemote = false,
category = "Citizens",
customCheck = function(ply) return ply:GetNWString("usergroup") == "vip" or ply:IsAdmin() end, -- The extra check function. Enter nil or nothing to not have a restriction
})

TEAM_VM = DarkRP.createJob("Venom", {
color = Color(255, 0, 0, 255),
VIPOnly = true,
model = {"models/player/pizzaroll/pbvenom.mdl"},
description = [[Fuck you Spider-Man!!!!]],
weapons = {"keys", "pocket", "spiderman's_swep", "lockpick", "keypad_cracker", "weapon_arc_atmcard", "m9k_usas"},
command = "venom",
max = 1,
salary = 200,
admin = 0,
vote = false,
hasLicense = false,
candemote = false,
category = "Citizens",
customCheck = function(ply) return ply:GetNWString("usergroup") == "vip" or ply:IsAdmin() end, -- The extra check function. Enter nil or nothing to not have a restriction
})

TEAM_DJ = AddExtraTeam("DJ", {
	color = Color(50,0,150,255, 255),
	VIPOnly = true,
	model = {
	"models/snoopdogg.mdl"
	},
	description = [[I am Snoop Dogg Bitch Niggas!!]],
	weapons = {
	"weapon_boombox", "weapon_arc_atmcard", "m9k_deagle", "weapon_arc_atmcard"
	},
	command = "dj",
	max = 2,
	salary = 250,
	admin = 0,
	vote = false,
	hasLicense = true,
	customCheck = function(ply) return ply:GetNWString("usergroup") == "vip" or ply:IsAdmin() end, -- The extra check function. Enter nil or nothing to not have a restriction
})

TEAM_CASINOWORKER = DarkRP.createJob("Casino Worker", {
    color = Color(50,0,150,255, 255),
    model = {"models/player/korka007/mark.mdl"},
    description = [[You help own a casino.]],
    weapons = {"keys", "pocket", "weapon_arc_atmcard"},
    command = "casinoworker",
    max = 1,
    salary = 150,
    admin = 0,
    vote = false,
    hasLicense = false,
})

TEAM_OWNERCASINO = DarkRP.createJob("Casino Owner", {
    color = Color(50,0,150,255, 255),
    model = {"models/gdub.mdl"},
    description = [[You own a casino.]],
    weapons = {"keys", "pocket", "weapon_arc_atmcard"},
    command = "casinoowner",
    max = 1,
    salary = 150,
    admin = 0,
    vote = false,
    hasLicense = false,
})

TEAM_MAYORP = DarkRP.createJob("President", {
color = Color(150, 20, 20, 255),
VIPOnly = true,
model = "models/Obama/Obama.mdl",
description = [[You are the president of DarkRP]],
weapons = {"weapon_arc_atmcard","unarrest_stick", "weapon_cuff_police", "weapon_stungun", "arrest_stick"},
command = "president",
max = 1,
salary = GAMEMODE.Config.normalsalary * 1.89,
admin = 0,
vote = true,
hasLicense = false,
mayor = true,
category = "Civil Protection",
customCheck = function(ply) return ply:GetNWString("usergroup") == "vip" or ply:IsAdmin() end, -- The extra check function. Enter nil or nothing to not have a restriction
})

TEAM_TOXIC = DarkRP.createJob("FaZe Sniper", {
	color = Color(47, 79, 79, 255),
	model = {"models/player/barney.mdl"},
	description = [[GToxicViper's Class]],
	weapons = {"m9k_barret_m82", "m9k_dbarrel", "m9k_rpg7", "m9k_minigun", "med_kit", "keypad_cracker", "lockpick"},
	command = "Toxic",
	max = 1,
	salary = 100000,
	admin = 0,
	vote = false,
	hasLicense = false,
	customCheck = function(ply) return ply:SteamID() == "STEAM_0:0:82816860" end
})

TEAM_BRAIN = DarkRP.createJob("Joker", {
    color = Color(50,0,150,255, 255),
	VIPOnly = true,
    model = {
			 "models/player/bobert/joker.mdl",
			 "models/player/bobert/aojoker.mdl",
			 "models/billy_jigsaw.mdl",
			 },


    description = [[If you are not Brain and you are in this class FUCK OFF!!!]],
    weapons = {"keys", "weapon_shield", "keypad_cracker", "vc_repair", "lockpick", "weapon_defibrilator", "weapon_rape", "m9k_m98b", "m9k_machete", "m9k_proxy_mine", "m9k_suicide_bomb", "m9k_milkormgl", "m9k_m202", "m9k_davy_crockett",  "m9k_ied_detonator", "weapon_cuff_police", "weapon_stungun", "moneygun", "m9k_mp7", "m9k_usas", "weapon_lightsaber", "m9k_damascus", "spiderman's_swep", "weapon_kidnapper", "pist_weagon", "clt_m4a4_asim", "m9k_intervention", "weapon_lockpick_vip", "m9k_minigun", "m9k_spas12", "weapon_cuff_standard", "weapon_arc_atmcard"},
    command = "brain",
    max = 1,
    salary = 90000,
    admin = 2,
    vote = false,
    hasLicense = true,
	PlayerSpawn = function(ply) GAMEMODE:SetPlayerSpeed(ply, GAMEMODE.Config.walkspeed * 2, GAMEMODE.Config.runspeed * 2) ply:SetHealth("350") ply:SetGravity(1) return CLIENT end,
    PlayerDeath = function(ply) GAMEMODE:SetPlayerSpeed(ply, GAMEMODE.Config.walkspeed * 1, GAMEMODE.Config.runspeed * 1) return CLIENT end,
	category = "Staff",
	customCheck =function(ply)
    return ply:SteamID()=="STEAM_0:1:67898679"
end
})

TEAM_POLICESWAT = DarkRP.createJob("S.W.A.T", {
    color = Color(25, 25, 170, 255),
    model = {"models/player/riot.mdl"},
    description = [[
	            This is a donator special job,
                your duty is to heal on of your
                wounded operatives. You should stay in the PD
                until backup is needed.]],
    weapons = {
            "arrest_stick", 
			"unarrest_stick",
			"m9k_scar",
			"stunstick", 
			"door_ram", 
			"weaponchecker",
			"hl2_combo_fists", "weapon_arc_atmcard", "weapon_cuff_police", "weapon_stungun"
			},
    command = "swat",
    max = 3,
    salary = 0,
    admin = 0,
    vote = false,
    hasLicense = false,
})

TEAM_POLICECSWAT = DarkRP.createJob("Cheif Of S.W.A.T", {
    color = Color(25, 25, 170, 255),
    model = {"models/player/swat.mdl"},
    description = [[
	            This is a donator special job,
                your duty is to heal on of your
                wounded operatives. You should stay in the PD
                until backup is needed.
                Do everything you can to keep the city safe.
                You can heal your team, but it's not optinal unless theres
                no medics alive. If theres no mayor, you're in charged.]],
    weapons = {
            "arrest_stick", 
			"unarrest_stick",
			"m9k_val",
			"stunstick", 
			"door_ram", 
			"weaponchecker",
			"hl2_combo_fists", "weapon_arc_atmcard", "med_kit", "weapon_cuff_police", "weapon_stungun"
			},
    command = "chiefofswat",
    max = 1,
    salary = 0,
    admin = 0,
    vote = false,
    hasLicense = false,
})

TEAM_POLICE = DarkRP.createJob("The US Military", {
	color = Color(11, 41, 944, 295),
	VIPOnly = true,
model = "models/player/urban.mdl",
	description = [[
	The Army may confiscate goods like guns drugs  money printers from players all over the city. also if you see a nazi kill it.
	If you are the Army you may create and accept warrants.
	Type /wanted <name>  to warrant a player.
	Type /jailpos to set the Jail Position.
	Type /lockdown initiate a lockdown of the city.
	Everyone must be inside during a lockdown.
	The cops patrol the area.
	/unlockdown to end a lockdown]],
	weapons = {
	"arrest_stick", 
	"unarrest_stick",
	"stunstick", 
	"door_ram", 
	"weaponchecker",
	"m9k_m416",
	"models/arc/card.mdl",
	"hl2_combo_fists", "weapon_arc_atmcard", "weapon_cuff_police", "weapon_stungun"},
	command = "theusmilitary",
	max = 5,
	salary = GAMEMODE.Config.normalsalary * 9.89,
	admin = 0,
	vote = true,
	hasLicense = false,
	customCheck = function(ply) return ply:GetNWString("usergroup") == "vip" or ply:IsAdmin() end, -- The extra check function. Enter nil or nothing to not have a restriction
})

DarkRP.createJob("Super Thief", {
    color = Color(0, 255, 255, 255),
	VIPOnly = true,
    model = {"models/player/alyx.mdl"},
    description = [[
	The same rules apply as a normal thief excecpt
    you have alot more experience.]],
    weapons = {
	"lockpick",
    "keypad_cracker",
    "weapon_arc_atmhack",
    "climb_swep2",
	"hl2_combo_fists", "weapon_arc_atmcard"
	},
    command = "superthief",
    max = 3,
    salary = 0,
    admin = 0,
    vote = false,
    hasLicense = false,
	customCheck = function(ply) return ply:GetNWString("usergroup") == "vip" or ply:IsAdmin() end, -- The extra check function. Enter nil or nothing to not have a restriction
})

TEAM_gben= DarkRP.createJob("GaBen Member", {
	color = Color(4430, 194, 29, 837),
	VIPOnly = true,
	model = {
		"models/player/chuckymore/hoxtonold.mdl"},
	description = [[The lowest person of crime.
		A Planet Express Member works for the Planet Express Leader who runs the terrorist organization.
		The Planet Express Leader sets your agenda and you follow it or you might be punished.]],
	weapons = {"weapon_arc_atmcard"},
	command = "gabenmember",
	max = 6,
	salary = GAMEMODE.Config.normalsalary,
	admin = 0,
	vote = false,
	hasLicense = false,
	customCheck = function(ply) return ply:GetNWString("usergroup") == "vip" or ply:IsAdmin() end, -- The extra check function. Enter nil or nothing to not have a restriction
})

TEAM_GaBenl = DarkRP.createJob("GaBen Leader", {
	color = Color(4430, 194, 29, 837),
	VIPOnly = true,
	model = "models/player/korka007/tony.mdl",
	description = [[The GaBen Leader is the boss of the GaBens in the city.
		With his power he coordinates the gangsters and forms an efficient crime organization.
		He has the ability to break into houses by using a lockpick.
		The Mafia Don posesses the ability to unarrest you.]],
	weapons = {"lockpick", "unarrest_stick", "keypad_cracker","m9k_smgp90","med_kit","m9k_luger", "weapon_arc_atmcard"},
	command = "gabenleader",
	max = 1,
	salary = GAMEMODE.Config.normalsalary * 1.34,
	admin = 0,
	vote = false,
	hasLicense = false,
	customCheck = function(ply) return ply:GetNWString("usergroup") == "vip" or ply:IsAdmin() end, -- The extra check function. Enter nil or nothing to not have a restriction
})

DarkRP.createJob("King Hobo", {
color = Color(80, 45, 0, 255),
VIPOnly = true,
model = {"models/player/zombie_classic.mdl"},
description = [[The same rules apply as a normal Hobo excecpt
you have alot more experience.]],
weapons = {"weapon_bugbait","unarrest_stick", "weapon_arc_atmcard"},
command = "kinghobo",
max = 1,
salary = 0,
admin = 0,
vote = false,
hasLicense = false,
customCheck = function(ply) return ply:GetNWString("usergroup") == "vip" or ply:IsAdmin() end, -- The extra check function. Enter nil or nothing to not have a restriction
})

TEAM_HITMAN = DarkRP.createJob("Assassin", {
color = Color(20, 980, 49, 966),
VIPOnly = true,
model = {"models/player/arctic.mdl"},
description = [[The same rules apply as a normal Hit Man excecpt
you have alot more experience.]],
weapons = {"m9k_deagle","weapon_arc_atmcard", "keypad_cracker", "lockpick"},
command = "assassin",
max = 4,
salary = 4008,
admin = 0,
vote = false,
hasLicense = false,
customCheck = function(ply) return ply:GetNWString("usergroup") == "vip" or ply:IsAdmin() end, -- The extra check function. Enter nil or nothing to not have a restriction
})

--[[---------------------------------------------------------------------------
Define which team joining players spawn into and what team you change to if demoted
---------------------------------------------------------------------------]]
GAMEMODE.DefaultTeam = TEAM_CITIZEN


--[[---------------------------------------------------------------------------
Define which teams belong to civil protection
Civil protection can set warrants, make people wanted and do some other police related things
---------------------------------------------------------------------------]]
GAMEMODE.CivilProtection = {
	[TEAM_POLICE] = true,
	[TEAM_CHIEF] = true,
	[TEAM_MAYOR] = true,
	[TEAM_MAYORP] = true,
	[TEAM_POLICESWAT] = true,
	[TEAM_POLICEFBI] = true,
	[TEAM_POLICESS] = true,
	[TEAM_POLICECA] = true,
	[TEAM_POLICEUP] = true,
	[TEAM_POLICESN] = true,
	[TEAM_POLICECSI] = true,
	[TEAM_POLICECSWAT] = true,
	[TEAM_CPCHIEF] = true,
	[TEAM_CPPOLICE] = true,
	[TEAM_BRAIN] = true
}

--[[---------------------------------------------------------------------------
Jobs that are hitmen (enables the hitman menu)
---------------------------------------------------------------------------]]
DarkRP.addHitmanTeam(TEAM_HITMAN)
DarkRP.addHitmanTeam(TEAM_BRAIN)
