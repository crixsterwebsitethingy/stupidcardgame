-- © 2026 crix_0z, All Rights Reserved.
-- This code is licensed under the MIT License.
local game = {}
game.__index = game
function game:mods_addCard(card, amt, pointvalue)
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
    instance.chosen = false
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
    print("Mods Found!")
    -- This is for v2.0 when modding is implemented
end
function game:registerHand()
    local handsize = 12
    local cardList = {}
    for key, value in pairs(self.possibleCards) do
        table.insert(cardList, {name = key, amt = value.amt, pointvalue = value.pointvalue})
    end
    local chosenCards = {}
    for i = 1, handsize do
        local j = math.random(1, #cardList)
        if not table.find(chosenCards, cardList[j]) then
            table.insert(chosenCards, cardList[j])
        end
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
    if not chosen then
        local posssible = {50, 70, 100, 150, 200}
        self.target = posssible[math.random(1, #posssible)]
        chosen = true
    end

end


return game