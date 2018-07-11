-----------------------------------------------------------------------------------------
--
-- main.lua
--
-----------------------------------------------------------------------------------------

-- Background part of main.lua file so it appears on all scenes (subject to change)

local background = display.newImageRect( "images/background.png", display.contentWidth, display.contentHeight )
background.x = display.contentCenterX
background.y = display.contentCenterY

-- the external library that allows us to jump scenes
local composer = require( "composer" )

-- to jump to a different scene, use this line:
composer.gotoScene( "scenes.proto_spawn" )
