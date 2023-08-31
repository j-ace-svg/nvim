local Remap = require('j-ace-svg.keymap')
local nnrm = Remap.nnoremap
local cell = require('cellular-automaton')
local register = cell.register_animation
local start = cell.start_animation

local slide = {
    fps = 50,
    name = 'slide',
    update = function (grid)
        for i = 1, #grid do
            local prev = grid[i][#(grid[i])]
            for j = 1, #(grid[i]) do
                grid[i][j], prev = prev, grid[i][j]
            end
        end
        return true
    end
}

register(slide)

nnrm("<leader>fcam", function() start("make_it_rain") end, {silent = true})
nnrm("<leader>fcal", function() start("game_of_life") end, {silent = true})
nnrm("<leader>fcas", function() start("slide") end, {silent = true})
