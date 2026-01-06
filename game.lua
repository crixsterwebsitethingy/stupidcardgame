-- © 2026 crix_0z, All Rights Reserved.
-- This code is licensed under the MIT License.
local game = {}
game.__index = game
function game:new()
    local instance = setmetatable({}, game)
    instance.state = "menu"
    instance.hand = {}
    instance.score = 0
    instance.target = 0
    instance.jokers = {}
    return instance
end


return game