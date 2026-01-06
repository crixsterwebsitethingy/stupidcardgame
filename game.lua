-- © 2026 crix_0z, All Rights Reserved.
-- This code is licensed under the MIT License.
local game = {}
game.__index = game
function game:addCard(card, amt, pointvalue)
    -- Adds a card to the possibleCards table
    self.possibleCards[card] = {amt = amt, pointvalue = pointvalue}
end
function game:new()
    local instance = setmetatable({}, game)
    instance.state = "menu"
    instance.hand = {}
    instance.score = 0
    instance.target = 0
    instance.jokers = {}
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
function game:LoadMods()

end
function game:SetHand(hand)
    self.hand = hand
end
function game:Start(date)
    self.state = "early"
    self.startDate = date
end


return game