-- iPad
if string.sub(system.getInfo("model"), 1, 4) == "iPad" then
  application = {
    content = {
      width  = 360,
      height = 480,
      fps    = 60,
      scale  = "letterBox",
      xAlign = "center",
      yAlign = "center",
      imageSuffix = {
        ["@2x"] = 1.5,
        ["@4x"] = 3.0,
      },
    },
    notification = {
      iphone = {
        types = { "badge", "sound", "alert", }
      },
    },
  }

-- iPhone5
elseif string.sub(system.getInfo("model"), 1, 2) == "iP" and 960 < display.pixelHeight then
  application = {
    content = {
      width  = 320,
      height = 568,
      fps    = 60,
      scale  = "letterBox",
      xAlign = "center",
      yAlign = "center",
      imageSuffix = {
        ["@2x"] = 1.5,
        ["@4x"] = 3.0,
      },
    },
    notification = {
      iphone = {
        types = { "badge", "sound", "alert", }
      },
    },
  }

-- iPhone 3,4 and Older iPod Touch
elseif string.sub(system.getInfo("model"), 1, 2) == "iP" then
  application = {
    content = {
      width  = 320,
      height = 480,
      fps    = 60,
      scale  = "letterBox",
      xAlign = "center",
      yAlign = "center",
      imageSuffix = {
          ["@2x"] = 1.5,
          ["@4x"] = 3.0,
      },
    },
    notification = {
      iphone = {
        types = { "badge", "sound", "alert", }
      },
    },
  }

-- Android and Kindle Fire and Nook
elseif display.pixelHeight / display.pixelWidth > 1.72 then
  application = {
    content = {
      width  = 320,
      height = 570,
      fps    = 60,
      scale  = "letterBox",
      xAlign = "center",
      yAlign = "center",
      imageSuffix = {
        ["@2x"] = 1.5,
        ["@4x"] = 3.0,
      },
    },
    notification = {
      google = {
        projectNumber = "xxxxxxxxxxxx",
      },
    },
  }

-- Other
else
  application = {
    content = {
      width  = 320,
      height = 512,
      fps    = 60,
      scale  = "letterBox",
      xAlign = "center",
      yAlign = "center",
      imageSuffix = {
        ["@2x"] = 1.5,
        ["@4x"] = 3.0,
      },
    },
    notification = {
      google = {
        projectNumber = "xxxxxxxxxxxx",
      },
    },
  }
end
