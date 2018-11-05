local composer = require( "composer" )
local name = require( "libraries.proto_utilities" )

local scene = composer.newScene()

local physics = require( "physics" )


-- -----------------------------------------------------------------------------------
-- Code outside of the scene event functions below will only be executed ONCE unless
-- the scene is removed entirely (not recycled) via "composer.removeScene()"
-- -----------------------------------------------------------------------------------

-- -----------------------------------------------------------------------------------
-- Scene event functions
-- -----------------------------------------------------------------------------------

-- create()
function scene:create( event )

    local sceneGroup = self.view
    -- Code here runs when the scene is first created but has not yet appeared on screen

    ----------------------------------------
    -- Timer and trigger for game restart
    ----------------------------------------

    local restartSecondsLeft = 10  -- 10 minutes = 600 seconds

    local function RestartTime( event )

      -- Decrement the number of seconds
      restartSecondsLeft = restartSecondsLeft - 1

      -- Time is tracked in seconds; convert it to minutes and seconds
      local minutes = math.floor( restartSecondsLeft / 10 )
      local seconds = restartSecondsLeft % 10

      startGame ()

    end

    local countDownTimer = timer.performWithDelay( 1000, RestartTime, restartSecondsLeft )

    function startGame()
        local startoptions = {
            effect = "fade",
            time = 600
        }

        if restartSecondsLeft <= 0 then
            composer.gotoScene( "scenes.proto_spawn", startoptions )
            backtoGameplay ()
        end
    end

    function backtoGameplay ()

        local secondsTillchange = 1  -- 10 minutes = 600 seconds
  
        local function updateTimeForScenechange( event )
  
            -- Decrement the number of seconds
            secondsTillchange = secondsTillchange - 1
  
            -- Time is tracked in seconds; convert it to minutes and seconds
            local minutes = math.floor( secondsTillchange / 1 )
            local seconds = secondsTillchange % 1
  
            Replaybegin()
        end
  
        SceneChangeTimer = timer.performWithDelay( 600, updateTimeForScenechange, secondsTillchange )
  
        function Replaybegin()
            if secondsTillchange <= 0 then
                composer.removeScene( "scenes.splashscreen", false)
            end
        end
      
    end

    ------------------------
    -- Splashscreen images
    ------------------------
    splasher = createImage("images/SplashTwo.png", 4000, 2180, display.contentCenterX, display.contentCenterY)
    splasher.alpha = 0.7
    sceneGroup:insert( splasher )

    splashtext = createImage("images/SplashOne.png", 2060, 1100, display.contentCenterX, display.contentCenterY)
    splashtext.alpha = 0
    sceneGroup:insert( splashtext )

    -----------------------------
    -- Splashscreen Dino set up 
    -----------------------------
    local DinoSplashsheetData1 = { width =319.49, height =397, numFrames=37, sheetContentWidth=11830, sheetContentHeight=397 } 
    local DinoSplashImageSheet1 = graphics.newImageSheet("images/sprite sheet/Walk Test4.png",DinoSplashsheetData1)
    local DinoSplashsheetData2 = { width =319.49, height =397, numFrames=37, sheetContentWidth=11830, sheetContentHeight=397 } 
    local DinoSplashImageSheet2 = graphics.newImageSheet("images/sprite sheet/Stand Test2.png", DinoSplashsheetData2)

    local sequenceDinoSplashData = {
    {name="SplashWalk", sheet=DinoSplashImageSheet1, frames={ 37, 36, 35, 34, 33, 32, 31, 30, 29, 28, 27, 26, 25, 24, 23, 22, 21, 20, 19, 18, 17, 16, 15, 14, 13, 12, 11, 10, 9, 8, 7, 6, 5, 4, 3, 2, 1, }, time=1500},
    {name="SplashStand", sheet=DinoSplashImageSheet2, frames={ 37, 36, 35, 34, 33, 32, 31, 30, 29, 28, 27, 26, 25, 24, 23, 22, 21, 20, 19, 18, 17, 16, 15, 14, 13, 12, 11, 10, 9, 8, 7, 6, 5, 4, 3, 2, 1, }, time=2000}
    }

    local DinoSplash = display.newSprite(DinoSplashImageSheet1, sequenceDinoSplashData)
    local DinoSplashscale = 7
    DinoSplash:scale(DinoSplashscale, DinoSplashscale)
    DinoSplash:play()
    DinoSplash.x = display.contentCenterX+2800
    DinoSplash.y = display.contentCenterY-50
    sceneGroup:insert( DinoSplash )

    transition.to( DinoSplash, { time=3000, x=display.contentCenterX+1} )

    local DinoSplashSecondsLeft = 10  -- 10 minutes = 600 seconds

    local function DinoSplashTime( event )

      -- Decrement the number of seconds
      DinoSplashSecondsLeft = DinoSplashSecondsLeft - 1

      -- Time is tracked in seconds; convert it to minutes and seconds
      local minutes = math.floor( DinoSplashSecondsLeft / 10 )
      local seconds = DinoSplashSecondsLeft % 10

      DinoSplashTriggers ()

    end

    local DinoSplashTimer = timer.performWithDelay( 1000, DinoSplashTime, DinoSplashSecondsLeft )

    function DinoSplashTriggers ()
        if DinoSplashSecondsLeft == 7 then
            DinoSplash:setSequence( "SplashStand" )
            DinoSplash:play()
        end
        if DinoSplashSecondsLeft == 5 then
            transition.fadeIn( splashtext, { time=600 } )
            DinoSplash:setSequence( "SplashWalk" )
            DinoSplash:play()
            transition.to( DinoSplash, { time=3000, x=display.contentCenterX-2800} )
        end
    end



end


-- show()
function scene:show( event )

    local sceneGroup = self.view
    local phase = event.phase

    if ( phase == "will" ) then
        -- Code here runs when the scene is still off screen (but is about to come on screen)

    elseif ( phase == "did" ) then
        -- Code here runs when the scene is entirely on screen

    end
end


-- hide()
function scene:hide( event )

    local sceneGroup = self.view
    local phase = event.phase

    if ( phase == "will" ) then
        -- Code here runs when the scene is on screen (but is about to go off screen)

    elseif ( phase == "did" ) then
        -- Code here runs immediately after the scene goes entirely off screen

    end
end


-- destroy()
function scene:destroy( event )

    local sceneGroup = self.view
    -- Code here runs prior to the removal of scene's view

end


-- -----------------------------------------------------------------------------------
-- Scene event function listeners
-- -----------------------------------------------------------------------------------
scene:addEventListener( "create", scene )
scene:addEventListener( "show", scene )
scene:addEventListener( "hide", scene )
scene:addEventListener( "destroy", scene )
-- -----------------------------------------------------------------------------------

return scene
