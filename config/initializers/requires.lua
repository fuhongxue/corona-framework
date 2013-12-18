-- Application
require("config.application")

-- Logger
local Logger = require("vendor.corona-logger.Logger")
Logger.setLevel(Logger.LEVEL.DEBUG)
Logger.debug("Logger required.")

-- Styoryboard
local storyboard = require("storyboard")
storyboard.purgeOnSceneChange = true
Logger.debug("Storyboard required.")

-- GameAnalytics
local GA = require ("vendor.GA-Corona-SDK.GameAnalytics")
GA.isDebug                = true
GA.runInSimulator         = true
GA.submitSystemInfo       = true
GA.archiveEvents          = true
GA.useStoryboard          = true
GA.submitStoryboardEvents = true
Logger.debug("GA required.")
