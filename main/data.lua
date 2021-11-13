local M = {}

M.STATE_MENU = 0
M.STATE_PLAY = 1
M.STATE_GAMEOVER = 2
M.STATE_PAUSE = 3

M.state = M.STATE_PLAY
M.bgm_play = false
M.sound = true

return M