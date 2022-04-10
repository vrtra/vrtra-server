-----------------------------------
--  Area: Throne Room [S]
--  NPC:  Vrtra
--  Type: Greeter NPC / Spell trainer
-----------------------------------
local ID = require("scripts/zones/Throne_Room_[S]/IDs")
local entity = {}
require("scripts/globals/vrtraQuests")
require("scripts/globals/keyitems")

local spell_table = {

159,97,296,220,254,169,258,154,230,249,245,144,189,239,149,261,238,199,
164,236,184,225,235,247,264,160,240,174,263,170,251,273,179,155,231,194,
190,262,259,150,221,200,252,165,185,206,161,208,175,210,171,241,212,274,
146,191,151,201,166,186,162,176,172,181,157,147,196,152,167,195,180,250,237,334,337,276,
1,2,3,4,5,6,7,8,9,10,12,13,14,15,16,17,18,19,20,21,23,24,28,29,30,33,38,39,43,214,156,145,
45,46,47,48,49,50,51,52,53,54,55,56,57,58,59,60,61,62,63,64,65,66,67,68,69,70,71,72,73,214,
74,75,76,77,78,81,82,83,84,85,86,87,88,89,90,91,92,93,94,95,96,98,99,100,101,102,103,104,44,
105,106,108,109,110,111,112,113,114,115,116,117,118,119,120,121,122,123,124,125,126,204,253,
127,128,129,130,131,132,133,134,135,136,137,138,139,140,141,142,143,144,145,146,147,318,317,
149,150,151,152,154,155,156,157,159,160,161,162,163,164,165,166,167,169,170,171,172,173,174,
175,176,179,180,181,184,185,186,189,190,191,194,195,196,199,200,201,204,206,208,210,320,319,
212,214,216,220,221,225,230,231,235,236,237,238,239,240,241,242,245,246,247,248,249,250,321,
251,252,253,254,258,259,260,261,262,263,264,266,267,268,269,270,271,272,273,274,275,324,323,
277,278,279,280,281,282,283,284,285,287,288,289,290,291,292,293,294,295,312,313,314,315,316,
332,333,335,336,338,339,341,344,345,347,348,350,353,354,368,369,370,371,372,373,374,376,326,
378,379,380,381,382,383,386,387,389,390,391,392,393,394,395,396,397,399,400,401,402,403,404,
405,406,408,409,410,412,414,415,419,420,421,422,424,425,426,427,428,429,430,431,432,329,327,
433,434,435,436,437,438,439,440,441,442,443,444,445,454,455,456,457,458,459,460,461,843,330,
462,463,464,465,466,467,477,845,841,205,207,209,211,213,215,25,232,79,80,107,322,325,328,331
}

entity.onTrigger = function(player, npc)

    local menu =
    {
        title = "Vrtra : RaaawRRRR!",
        onStart = function(playerArg)
            -- NOTE: This could be used to lock the player in place
            -- playerArg:PrintToPlayer("Teleport Menu", xi.msg.channel.NS_SAY)
        end,
        options =
        {
            {
                "Add All Spells",
				function(playerArg)
                    local has_all_spells = true
                    for i = 1, #spell_table, 1 do
                        if player:hasSpell(spell_table[i]) == false then
                           has_all_spells = false
                        end
					end
                    if has_all_spells then
                        player:PrintToPlayer(string.format("Vrtra : You have all spells already, get out of here!"), 21)
                    elseif has_all_spells == false then
                        for i = 1, #spell_table, 1 do
                            player:addSpell(spell_table[i], true, true)
                        end
                        player:PrintToPlayer(string.format("Vrtra : You now have all spells learned! Zone to see them in your spell list."), 21)
                    end
				end,
            },
            {
                "Hear an explaination",
                function(playerArg)
                    vrtraDialog(player,npc)
                end,
            },
        },
        onCancelled = function(playerArg)
        --    playerArg:PrintToPlayer("Teleport Menu Cancelled", xi.msg.channel.NS_SAY)
        end,
        onEnd = function(playerArg)
            -- NOTE: This could be used to release a locked player,
            -- playerArg:PrintToPlayer("Have a safe trip!", xi.msg.channel.NS_SAY)
        end,
		
    }
    player:customMenu(menu)
end

return entity