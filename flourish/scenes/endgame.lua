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

    local function restartGame()

        local restartoptions = {
            effect = "fade",
            time = 600
        }

        composer.gotoScene( "scenes..proto_spawn", restartoptions )
        backtoGameplay ()

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
                composer.removeScene( "scenes..endgame")
            end
        end
      
    end

    splasher = createImage("images/SplashTwo.png", 1920, 1080, display.contentCenterX, display.contentCenterY)
    splasher.alpha = 0.7
    sceneGroup:insert( splasher )

    fact = createImage("images/dino.png", 1249, 1080, display.contentCenterX, display.contentCenterY)
    sceneGroup:insert( fact )

    local ThanksText = display.newText( "THANK YOU!", 470, 80, native.systemFont, 46 )
    ThanksText:setFillColor( 1, 1, 1 )
    sceneGroup:insert( ThanksText )



    local Restartseconds = 4

    local function RestartTimer()

        -- Decrement the number of seconds
        Restartseconds = Restartseconds - 1

        -- Time is tracked in seconds; convert it to minutes and seconds
        local minutes = math.floor( Restartseconds / 4 )
        local seconds = Restartseconds % 4

        Restart ()
    end

    restarttriggertimer = timer.performWithDelay( 1000, RestartTimer, Restartseconds ) 

    function Restart ()
        if Restartseconds <= 0 then
            restartGame()
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
