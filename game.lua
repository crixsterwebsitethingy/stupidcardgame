-- © 2026 crix_0z, All Rights Reserved.
-- This code is licensed under the MIT License.
local game = {}
game.__index = game
-- Modding Functions
--[[function game:mods_addCard(card, amt, pointvalue)
    -- Adds a card to the possibleCards table
    self.possibleCards[card] = {amt = amt, pointvalue = pointvalue}
end
function game:mods_setHandSize(size)
    -- Sets the hand size for the player
    if size < 1 then
        print(" ERROR LOADING MOD: 000 !!!! OOO Hand size must be at least 1. 000 !!! 000 ")
        print("RESTART THE GAME WITHOUT MODS TO FIX THIS ISSUE.")
        self.state = "fail_load"
        return
    end
    self.handsize = size

end
function game:mods_addJokers(jokerlist, effectList)
    -- Sets the jokers for the game
    for i = 1, #jokerlist do
        local joker = jokerlist[i]
        self.jokers[joker] = {effect = effectList[i]} 
        if #jokerlist ~= #effectList then
            self.state = "fail_load"
            print("Failed to load mod: Joker list and Effect list must be the same length with corresponding entries.")
        end
    end
end]]
function game:new()
    -- 000 DO NOT MODIFY CONTENTS OF THIS CONSTRUCTOR FUNCTION!! USE MODDING METHODS TO DO SO!! 000 --
    local instance = setmetatable({}, game)
    instance.state = "menu"
    instance.hand = {}
    instance.score = 0
    instance.target = 0
    instance.jokers = {
        ["Johhny the Magician"] = {effect = "doublepoints"},
        ["Lucy the Trickster"] = {effect = "extra_attempt"},
        ["Sam the Wildcard"] = {effect = "lower_target"}
    }
    instance.chosen = false
    instance.handsize = 12
    instance.modError = ""
    instance.possibleCards = {
        ["2_of_hearts"] = {amt = 1, pointvalue = 2},
        ["3_of_hearts"] = {amt = 1, pointvalue = 3},
        ["4_of_hearts"] = {amt = 1, pointvalue = 4},
        ["5_of_hearts"] = {amt = 1, pointvalue = 5},
        ["6_of_hearts"] = {amt = 1, pointvalue = 6},
        ["7_of_hearts"] = {amt = 1, pointvalue = 7},
        ["8_of_hearts"] = {amt = 1, pointvalue = 8},
        ["9_of_hearts"] = {amt = 1, pointvalue = 9},
        ["10_of_hearts"] = {amt = 1, pointvalue = 10},
        ["jack_of_hearts"] = {amt = 1, pointvalue = 10},
        ["queen_of_hearts"] = {amt = 1, pointvalue = 10},
        ["king_of_hearts"] = {amt = 1, pointvalue = 10},
        ["ace_of_hearts"] = {amt = 1, pointvalue = 11},
        ["2_of_diamonds"] = {amt = 1, pointvalue = 2},
        ["3_of_diamonds"] = {amt = 1, pointvalue = 3},
        ["4_of_diamonds"] = {amt = 1, pointvalue = 4},
        ["5_of_diamonds"] = {amt = 1, pointvalue = 5},
        ["6_of_diamonds"] = {amt = 1, pointvalue = 6},
        ["7_of_diamonds"] = {amt = 1, pointvalue = 7},
        ["8_of_diamonds"] = {amt = 1, pointvalue = 8},
        ["9_of_diamonds"] = {amt = 1, pointvalue = 9},
        ["10_of_diamonds"] = {amt = 1, pointvalue = 10},
        ["jack_of_diamonds"] = {amt = 1, pointvalue = 10},
        ["queen_of_diamonds"] = {amt = 1, pointvalue = 10},
        ["king_of_diamonds"] = {amt = 1, pointvalue = 10},
        ["ace_of_diamonds"] = {amt = 1, pointvalue = 11},
        ["2_of_clubs"] = {amt = 1, pointvalue = 2},
        ["3_of_clubs"] = {amt = 1, pointvalue = 3},
        ["4_of_clubs"] = {amt = 1, pointvalue = 4},
        ["5_of_clubs"] = {amt = 1, pointvalue = 5},
        ["6_of_clubs"] = {amt = 1, pointvalue = 6},
        ["7_of_clubs"] = {amt = 1, pointvalue = 7},
        ["8_of_clubs"] = {amt = 1, pointvalue = 8},
        ["9_of_clubs"] = {amt = 1, pointvalue = 9},
        ["10_of_clubs"] = {amt = 1, pointvalue = 10},
        ["jack_of_clubs"] = {amt = 1, pointvalue = 10},
        ["queen_of_clubs"] = {amt = 1, pointvalue = 10},
        ["king_of_clubs"] = {amt = 1, pointvalue = 10},
        ["ace_of_clubs"] = {amt = 1, pointvalue = 11},
        ["2_of_spades"] = {amt = 1, pointvalue = 2},
        ["3_of_spades"] = {amt = 1, pointvalue = 3},
        ["4_of_spades"] = {amt = 1, pointvalue = 4},
        ["5_of_spades"] = {amt = 1, pointvalue = 5},
        ["6_of_spades"] = {amt = 1, pointvalue = 6},
        ["7_of_spades"] = {amt = 1, pointvalue = 7},
        ["8_of_spades"] = {amt = 1, pointvalue = 8},
        ["9_of_spades"] = {amt = 1, pointvalue = 9},
        ["10_of_spades"] = {amt = 1, pointvalue = 10},
        ["jack_of_spades"] = {amt = 1, pointvalue = 10},
        ["queen_of_spades"] = {amt = 1, pointvalue = 10},
        ["king_of_spades"] = {amt = 1, pointvalue = 10},
        ["ace_of_spades"] = {amt = 1, pointvalue = 11}
    }
    return instance
end
--[[function game:LoadMods(name)
    self.modError = name
    print("Loading mods...")
    print("IF THE FOLLOWING MESSSAGE IS AN ERROR, THE MOD DOES NOT EXIST")
    local test = require(name)
    local ok, mod = pcall(require, name)
    if not ok then
        self.state = "fail_load"
        self.modError = "Could not load mod.lua"
        return
    end

    local success, err = pcall(mod, self)
    if not success then
        self.state = "fail_load"
        self.modError = err
        return
    end
    if not self.state == "fail_load" then
        print("Mods loaded successfully")
    else
        print("Failed to load mods: "..self.modError)
    end
    
end]]
function game:registerHand()
    local handsize = self.handsize
    local cardList = {}
    for key, value in pairs(self.possibleCards) do
        table.insert(cardList, {name = key, amt = value.amt, pointvalue = value.pointvalue})
    end
    local chosenCards = {}
    for i = 1, handsize do
        local j = math.random(1, #cardList)
        table.insert(chosenCards, cardList[j])
        table.remove(cardList, j)
    end
    self:SetHand(chosenCards)
    print("Hand Registered")
    print(chosenCards)
end
function game:GetHand()
    return self.hand
end
function game:SetHand(hand)
    self.hand = hand
end
function game:Start(date)
    self.state = "r1"
    self.startDate = date
end
function game:choosetarget(round)
    if not self.chosen then
        local posssible = {50, 70, 100, 150, 200}
        self.target = posssible[math.random(0, #posssible + 1)] * round
        self.chosen = true
    end

end


return game