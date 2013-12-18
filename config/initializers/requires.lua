-- Logger
local Logger = require("vendor.corona-logger.Logger")
Logger.setLevel(Logger.LEVEL.DEBUG)
Logger.debug("Logger required.")

-- Styoryboard
local storyboard = require "storyboard"
storyboard.purgeOnSceneChange = true
Logger.debug("Storyboard required.")
