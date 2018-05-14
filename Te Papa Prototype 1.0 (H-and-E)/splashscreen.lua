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

    -- create the title text
    local myText = display.newText( "H-and-E Games Presents:", 270, 200, native.systemFont, 16 )
    myText:setFillColor( 0, 0, 0 )
    sceneGroup:insert( myText )

    -- create start button
    -- create a group
    local group = display.newGroup()
    -- make a rounded ractangle
    local myRoundedRect = display.newRoundedRect( 270, 240, 150, 50, 12 )
    myRoundedRect.strokeWidth = 3
    myRoundedRect:setFillColor( 0.5 )
    myRoundedRect:setStrokeColor( 1, 0, 0 )
    -- add rounded rect to group
    group:insert( myRoundedRect )

    -- create text on top of button
    local myButtonText = display.newText( "START", 270, 240, native.systemFont, 16 )
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
      composer.gotoScene( "gameplay", options )
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