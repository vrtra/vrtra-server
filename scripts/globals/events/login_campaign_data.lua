-- This file is called by login_campaign.lua and require()'s no file, it should not be require()'d by any
-- other lua scripts, which should instead require() login_campaign.lua directly.

-- TODO: Move this table somewhere untracked so it can be freely modified without polluting the
--       git workspace

-- TODO: Fill in with _commented out entries_ for all the things seen in each category
-- https://www.bg-wiki.com/ffxi/Repeat_Login_Campaign/Past_Login_Campaign_Rewards
local prizes =
{
    [1] =
    {
        ["price"] = 10,
        ["items"] =
        {
            1126, -- Beastmen's Seal
            1127, -- Kindred's Seal
            2955, -- Kindred's Crest
            2956, -- High Kindred's Crest
            2957, -- Sacred Kindred's Crest
			6465, -- food
			6225, 
			6469,
			4146,
			6064,
			5735,
			5736,

        },
    },

    [5] =
    {
        ["price"] = 100,
        ["items"] =
        {
            10384, -- Cumulus Masque
            20666, -- Blizzard Brand
            25658, -- Wyrm. Masque +1
            25757, -- Wyrmking Suit +1
        },
    },

    [9] =
    {
        ["price"] = 100,
        ["items"] =
        {
            27325, -- track pants
			25713, -- track shirt 
			25737, -- apururu unity shirt
			25735, -- ayame unity shirt
			26516, -- Citrullus shirt
        },
    },

    [13] =
    {
        ["price"] = 300,
        ["items"] =
        {
            10069, -- ♪Goobbue
            10051, -- ♪Crab
            10058, -- ♪Beetle
            10073, -- ♪Dhalmel
			10068, -- ♪coeurl
        },
    },

    [17] =
    {
        ["price"] = 500,
        ["items"] =
        {
            10053, -- ♪bomb
			10075, -- ♪red_raptor
			10076, -- ♪golden_bomb
			10070, -- ♪raaz
        },

    },

    [21] =
    {
        ["price"] = 750,
        ["items"] =
        {
            3339, -- Honey Wine
            3341, -- Beastly Shank
            3343, -- Blue Pondweed

        },
    },

    [25] =
    {
        ["price"] = 1500,
        ["items"] =
        {
            3340, -- Sweet Tea
            3342, -- Savory Shank
            3344, -- Red Pondweed
        },
    },

    [29] =
    {
        ["price"] = 2500,
        ["items"] =
        {
            10080, -- ♪byakko
			10079, -- ♪iron_giant
			10077, -- ♪buffalo

        },
    },
}
return prizes
