-- Hide the status bar
display.setStatusBar(display.HiddenStatusBar)

-- System event listener
local function applicationSystemEventListener(event)
  if event.type == "applicationStart" then
    print(event.type)
  elseif event.type == "applicationExit" then
    print(event.type)
  end
end
Runtime:addEventListener("system", applicationSystemEventListener)

-- Styoryboard
local storyboard = require "storyboard"
storyboard.purgeOnSceneChange = true
