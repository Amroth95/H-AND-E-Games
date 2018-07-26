-----------------------------------------------------------------------------------------
--
-- main.lua
--
-----------------------------------------------------------------------------------------

-- Background part of main.lua file so it appears on all scenes (subject to change)

local background = display.newImageRect( "images/background.png", display.contentWidth, display.contentHeight )
background.x = display.contentCenterX
background.y = display.contentCenterY


-- First prototype of in-game sound
local backgroundMusic = audio.loadSound( "sounds/background/Ambience.mp3" )

local backgroundMusicChannel = audio.play( backgroundMusic, { channel=1, loops=-1, fadein=5000 } )

audio.setVolume( 0.1 )

-- the external library that allows us to jump scenes
local composer = require( "composer" )

-- to jump to a different scene, use this line:
composer.gotoScene( "scenes.proto_spawn" )
 
