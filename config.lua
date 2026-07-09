------------------------------------------------------
-- Area of Patrol, made by FAXES ft. MGMods Studios --
--                  CONFIG FILE                     --
------------------------------------------------------


------------------------------------------------------
-- STARTUP CONFIG
------------------------------------------------------
FaxCurAOP = "Paleto Bay" -- Set the default AOP
autoChangeAOP = false -- Auto-change AOP based on player count, see bellow for settings
AOPSpawnsEnabled = false -- Set the player spawn point based on AOP list, see bellow for settings; disabled if autoChangeAOP is disabled
soeLS = "green" -- Default SOE state for Los Santos
soeBC = "green" -- Default SOE state for Blaine County
soePB = "green" -- Default SOE state for Paleto Bay


------------------------------------------------------
-- DISPLAY CONFIG
------------------------------------------------------
AOPChangeNotification = true -- Display notification when changing AOP
SOEChangeNotification = true -- Display notification when changing SOE
textColor = "~w~" -- Color used to display most text
aopColor = "~y~" -- Color used to display the AOP
soeGreen = "~g~Green" -- Text used to display SOE state Green
soeAmber = "~o~Amber" -- Text used to display SOE state Amber
soeRed = "~r~Red" -- Text used to display SOE state Red
soeLSText = "State of Emergency | LS: " -- Text used to display SOE state in LS
soeBCText = "State of Emergency | BC: " -- Text used to display SOE state in BC
soePBText = "State of Emergency | PB: " -- Text used to display SOE state in PB
noPermsMessage = "~r~Insufficient Permissions." -- Message displayed when user's permissions are invalid
AOPTextLocation = "custom" -- Where to display the AOP text on screen. Possible values: bottom-left, bottom-center, bottom-right, top-left, top-center, custom
AOPx = 0.675 -- Only used if AOPTextLocation is set to "custom"
AOPy = 1.275 -- Only used if AOPTextLocation is set to "custom"


------------------------------------------------------
-- COMMANDS CONFIG
------------------------------------------------------
usingPerms = true -- Restrict commands to users with permissions, see Permissions.CFG file for settings
-- Use the values bellow to set the commands to use for each action
StatusCommand = "aop-status" -- Display various debug info; usage: <command>
ConfigRefreshCommand = "aop-reload" -- Reload this config file; usage: <command>
AOPCommand = "aop" -- Set the aop; usage: <command> [Area of Patrol]
SOECommandLS = "soe-ls" -- Set SOE for LS; usage: <command> [green | amber | red]
SOECommandBC = "soe-bc" -- Set SOE for LS; usage: <command> [green | amber | red]
SOECommandPB = "soe-pb" -- Set SOE for LS; usage: <command> [green | amber | red]
SOECommandGreenAll = "soe-green" -- Set all SOE to green; usage: <command>
SOECommandAmberAll = "soe-amber" -- Set all SOE to amber; usage: <command>
SOECommandRedAll = "soe-red" -- Set all SOE to red; usage: <command>
HelpCommand = "aop-help" -- Display the list of available commands; usage: <command>


------------------------------------------------------
-- AOP CONFIG
------------------------------------------------------
RegisteredAOP = {
    {
        Name = "Paleto Bay", -- Display name
        MaxPlayerCount = 2, -- Maximum number of players supported by that AOP (included)
        Coords = {x = -447.24, y = 5970.46, z = 31.78} -- Coordinates of a possible respawn point
    },
    {
        Name = "Mirror Park",
        MaxPlayerCount = 3,
        Coords = {x = 311.22, y = 3457.60, z = 36.15}
    },
    {
        Name = "Sandy Shores",
        MaxPlayerCount = 4,
        Coords = {x = 311.22, y = 3457.60, z = 36.15}
    },
    {
        Name = "Los Santos",
        MaxPlayerCount = 5,
        Coords = {x = 311.22, y = 3457.60, z = 36.15}
    },
    {
        Name = "Blaine County",
        MaxPlayerCount = 6,
        Coords = {x = 311.22, y = 3457.60, z = 36.15}
    },
    {
        Name = "Los Santos County",
        MaxPlayerCount = 7,
        Coords = {x = 311.22, y = 3457.60, z = 36.15}
    },
    {
        Name = "Statewide",
        MaxPlayerCount = 8,
        Coords = {x = 311.22, y = 3457.60, z = 36.15}
    },
}
