local backgroundComponents = require( "libraries.background_setup" )
local backgroundAmbient = require( "libraries.background_ambience" )

-----------------------------------------------------------------------------------------
--
-- main.lua
--
-----------------------------------------------------------------------------------------

-- First prototype of in-game sound
--local backgroundMusic = audio.loadSound( "sounds/background/Ambience.mp3" )

--local backgroundMusicChannel = audio.play( backgroundMusic, { channel=1, loops=-1, fadein=5000 } )

-- First prototype of game music
--local backgroundMusic = audio.loadSound( "sounds/background/Flourish Demo.mp3" )

--local backgroundMusicChannel = audio.play( backgroundMusic, { channel=7, loops=-1, fadein=5000 } )

audio.setVolume( 0.1 )

native.setProperty( "windowMode", "fullscreen" )
native.setProperty( "mouseCursorVisible", false )

background()

-- the external library that allows us to jump scenes
local composer = require( "composer" )

-- to jump to a different scene, use this line:
composer.gotoScene( "scenes.proto_spawn" )
 
