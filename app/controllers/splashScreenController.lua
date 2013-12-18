-- Logger
local Logger = require("vendor.corona-logger.Logger")

-- Storyboard and scene
local storyboard = require("storyboard")
local scene = storyboard.newScene()

-- Add system event listener
function scene:addSystemEventListener()
  function scene.splashScreenSystemEventListener(event)
    if event.type == "applicationSuspend" then
      Logger.debug(event.type)
    elseif event.type == "applicationResume" then
      Logger.debug(event.type)
    end
  end
  Runtime:addEventListener("system", scene.splashScreenSystemEventListener)
end

-- Remove system event listener
function scene:removeSystemEventListener()
  Logger.debug("scene:removeSystemEventListener")
  Runtime:removeEventListener("system", scene.splashScreenSystemEventListener)
end

-- Called when the scene's view does not exist
function scene:createScene(event)
  Logger.debug(event.name)
  local group = self.view
end

-- Called BEFORE scene has moved onscreen
function scene:willEnterScene(event)
  Logger.debug(event.name)
  local group = self.view
end

-- Called immediately after scene has moved onscreen
function scene:enterScene(event)
  Logger.debug(event.name)
  local group = self.view

  scene:addSystemEventListener()
end

-- Called when scene is about to move offscreen
function scene:exitScene(event)
  Logger.debug(event.name)
  local group = self.view

  scene:removeSystemEventListener()
end

-- Called AFTER scene has finished moving offscreen
function scene:didExitScene(event)
  Logger.debug(event.name)
  local group = self.view
end

-- Called prior to the removal of scene's "view" (display group)
function scene:destroyScene(event)
  Logger.debug(event.name)
  local group = self.view
end

-- Called if/when overlay scene is displayed via storyboard.showOverlay()
function scene:overlayBegan(event)
  local group = self.view
  local overlayScene = event.sceneName
  Logger.debug(string.format("%s: %s", event.name, overlayScene))

  scene:removeSystemEventListener()
end

-- Called if/when overlay scene is hidden/removed via storyboard.hideOverlay()
function scene:overlayEnded(event)
  local group = self.view
  local overlayScene = event.sceneName
  Logger.debug(string.format("%s: %s", event.name, overlayScene))

  scene:addSystemEventListener()
end

-- Add event listeners
scene:addEventListener("createScene"   , scene)
scene:addEventListener("willEnterScene", scene)
scene:addEventListener("enterScene"    , scene)
scene:addEventListener("exitScene"     , scene)
scene:addEventListener("didExitScene"  , scene)
scene:addEventListener("destroyScene"  , scene)
scene:addEventListener("overlayBegan"  , scene)
scene:addEventListener("overlayEnded"  , scene)

return scene
