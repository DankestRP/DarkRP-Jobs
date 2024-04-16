PASTEBIN
API
TOOLS
FAQ
paste
Search...

LOGIN SIGN UP
SHARE
TWEET
DCNOS18
GMOD Custom DarkRP Jobs
DCNOS18
SEP 16TH, 2013
1,434
0
NEVER
ADD COMMENT
Not a member of Pastebin yet? Sign Up, it unlocks many cool features!
 3.17 KB | None |  
     
TEAM_secretagent = AddExtraTeam("Secret Agent", {
        color = Color(255, 255, 255, 255),
        model = {
                "models/player/halo/hacks/agenteirc.mdl"
                },
        description = [[This text will serve as the description of
                this team.]],
        weapons = {"gdcw_cm1911" ,"fists"},
        command = "secretagent",
        max = 1,
        salary = 45,
        admin = 0,
        vote = false,
        hasLicense = false,
        help = "You are an example. Walk around and be exemplary.",
        customCheck = function(ply) return ply:getDarkRPVar("money") > 10000 end,
        CustomCheckFailMsg = "You don't have enough money!",
        modelScale = 1.2,
        maxpocket = 20,
        maps = {"rp_downtown_v2", "gm_construct"},
        candemote = false,
        mayor = false,
        chief = false,
        medic = false,
        cook = false,
        hobo = false,
        mayorCanSetSalary = false,
 
        CanPlayerSuicide = function(ply) return false end,
        PlayerCanPickupWeapon = function(ply, weapon) return true end,
        PlayerDeath = function(ply, weapon, killer) end,
        PlayerLoadout = function(ply) return true end,
        PlayerSelectSpawn = function(ply, spawn) end,
        PlayerSetModel = function(ply) return "models/player/halo/hacks/agenteirc.mdl" end,
        PlayerSpawn = function(ply) end,
        PlayerSpawnProp = function(ply, model) end,
        RequiresVote = function(ply, job) for k,v in pairs(player.GetAll()) do if IsValid(v) and v:IsAdmin() then return false end end return true end, -- People need to make a vote when there is no admin around
        ShowSpare1 = function(ply) end,
        ShowSpare2 = function(ply) end
})
 
TEAM_LOCKPICK = AddExtraTeam("Black Market Dealer", {
	color = Color(50, 50, 50, 255),
	model = "models/player/odessa.mdl",
	description = [[Get paid to lockpick doors.]],
	weapons = {"fists"},
	command = "Black Market Dealer",
	max = 2,
	salary = 45,
	admin = 0,
	vote = true,
	hasLicense = false
})
 
TEAM_ADMIN = AddExtraTeam("Admin On Duty", {
	color = Color(0, 0, 0, 255),
	model = "models/player/Combine_Super_Soldier.mdl",
	description = [[Admin On Duty.]],
	weapons = {fists},
	command = "admin",
	max = 5,
	salary = 0,
	admin = 2,
	vote = false,
	hasLicense = true
})
 
TEAM_BODY = AddExtraTeam("Bodyguard", {
	color = Color(150, 25, 25, 255),
	model = "models/player/Barney.mdl",
	description = [[Get paid to protect people.]],
	weapons = {"weapon_deagle2", "stunstick", "fists"},
	command = "Bodyguard",
	max = 3,
	salary = 55,
	admin = 0,
	vote = true,
	hasLicense = true
})
 
TEAM_SWAT = AddExtraTeam("S.W.A.T", Color(0,204,255,255), "models/tlsaudrl2548/blackops2/swat3.mdl", [[S.W.A.T is some who come in,
 when the police is having trouble.]], {"weapon_real_cs_p228", "weapon_real_cs_mac10", "item_ammo_pistol"}, "swat", 2, 70, 0, false, true, TEAM_POLICE)
 
TEAM_Assassin = AddExtraTeam("Assassin", Color(1, 2, 3, 255), "garrysmod/addons/Dark Female Assassin PM/models/player/e3assassin.mdl", [[You are an assassin, you are paid to assassinate people. ]], {"gdcw_lr300ironsupp" , "fists"}, "assassin", 1, 75, 0, false)
