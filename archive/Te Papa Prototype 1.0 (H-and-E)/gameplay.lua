local composer = require( "composer" )

local scene = composer.newScene()

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

    -- Create a tap counter (mechaincal prototype only)
    local tapCount = 1

    local tapText = display.newText( tapCount, display.contentCenterX, 20, native.systemFont, 40 )
    tapText:setFillColor( 0, 0, 0 )
    sceneGroup:insert( tapText )

    -- Create  grow plant button
    local balloon = display.newImageRect( "animation/animation1.png", 370, 380 )
    balloon.x = display.contentCenterX
    balloon.y = display.contentCenterY
    balloon.alpha = 0.9
    sceneGroup:insert(balloon)

-- on touch make image

    local function Tapballoon()
        tapCount = tapCount + 1
        tapText.text = tapCount
        tapFilename = "animation/animation" .. tostring(tapCount) .. ".png"
        print ("tapFilename: " .. tapFilename)
        -- tap = display.newImageRect( "animation/animation"..tostring(tapCount).."png", 370, 380 )
        tap = display.newImageRect(sceneGroup, tapFilename, 370, 380)
        tap.x = display.contentCenterX
        tap.y = display.contentCenterY
        
        -- if tapCount reaches a set number, the scene changes to endgame (IN DEVELOPMENT)

        if tapCount == 4 then
            local options = {
                effect = "fade",
                time = 500,
                params = {
                }
            }
            -- removes scene so it can be freshly reloaded on next play 
            composer.removeScene( "gameplay", options)
            composer.gotoScene( "endgame", options )
        end

    end
  balloon:addEventListener( "tap", Tapballoon )

  



    -- Create Button push function
    local function TapCounter()
        tapCount = tapCount + 1
        tapText.text = tapCount
        Tapballoons(tapCount)

    end

    -- balloon:addEventListener( "tap", TapCounter )

    -- create the title text

    local myText = display.newText( "Main Gameplay:", 270, 120, native.systemFont, 16 )
    myText:setFillColor( 0, 0, 0 )
    sceneGroup:insert( myText )

    -- create return to skip to end button (WON'T be in the final game, this is just for testing the composer flow)
    -- create a group
    local group = display.newGroup()
    -- make a rounded ractangle
    local myRoundedRect = display.newRoundedRect( 270, 760, 250, 50, 12 )
    myRoundedRect.strokeWidth = 3
    myRoundedRect:setFillColor( 0.5 )
    myRoundedRect:setStrokeColor( 1, 0, 0 )
    -- add rounded rect to group
    group:insert( myRoundedRect )

    -- create text on top of button
    local myButtonText = display.newText( "Skip to end (Development Only)", 270, 760, native.systemFont, 16 )
    myButtonText:setFillColor( 1, 0, 0 )
    -- add text to group
    group:insert( myButtonText )
    -- add the group to the sceneGroup
    sceneGroup:insert( group )

    -- create button function
    function buttonFunction (event)
      -- create the transition effects
      local options = {
          effect = "fade",
          time = 500,
          params = {
          }
      }
      -- removes scene so it can be freshly reloaded on next play 
      composer.removeScene( "gameplay", options)
      composer.gotoScene( "endgame", options )
    end
    -- attach this function to the button
    group:addEventListener( "tap", buttonFunction )
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
