-- Put functions in this file to use them in several other scripts.
-- To get access to the functions, you need to put:
-- require "my_directory.my_file"
-- in any script using the functions.

local M = {}

function M.split(inputstr, sep)
    if sep == nil then
        sep = "%s"
    end
    local t={} ; i=1
    for str in string.gmatch(inputstr, "([^"..sep.."]+)") do
        t[i] = str
        i = i + 1
    end
    return t
end

function M.testfunction()
    return "teststrin"
end

function M.checkCollide(click_pos, collider)
    return click_pos.x > collider.x and click_pos.x < collider.x + collider.width and click_pos.y > collider.y and click_pos.y < collider.y + collider.height
end

return M