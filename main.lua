-- Requires
require("config.initializers.requires")

-- Logger
local Logger = require("vendor.corona-logger.Logger")

-- System event listener
local function applicationSystemEventListener(event)
  if event.type == "applicationStart" then
    Logger.debug(event.type)
  elseif event.type == "applicationExit" then
    Logger.debug(event.type)
  end
end
Runtime:addEventListener("system", applicationSystemEventListener)

-- Hide the status bar
display.setStatusBar(display.HiddenStatusBar)

-- Go to scene: Splash Screen
local storyboard = require("storyboard")
storyboard.gotoScene("app.controllers.splashScreenController", "fade", 500)

-- Initialize GameAnalytics
local GA = require ("vendor.GA-Corona-SDK.GameAnalytics")
GA.init({
  game_key   = Application.GA.GAME_KEY,
  secret_key = Application.GA.SECRET_KEY,
  build_name = Application.GA.BUILD_NAME,
})
