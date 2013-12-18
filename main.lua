-- Logger
local Logger = require("vendor.corona-logger.Logger")
Logger.setLevel(Logger.LEVEL.DEBUG)

-- Hide the status bar
display.setStatusBar(display.HiddenStatusBar)

-- System event listener
local function applicationSystemEventListener(event)
  if event.type == "applicationStart" then
    Logger.debug(event.type)
  elseif event.type == "applicationExit" then
    Logger.debug(event.type)
  end
end
Runtime:addEventListener("system", applicationSystemEventListener)

-- Styoryboard
local storyboard = require "storyboard"
storyboard.purgeOnSceneChange = true
