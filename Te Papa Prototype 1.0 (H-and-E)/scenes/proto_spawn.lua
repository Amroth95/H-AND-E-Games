local composer = require( "composer" )
local name = require( "libraries.proto_utilities" )

local scene = composer.newScene()

-- -----------------------------------------------------------------------------------
-- Code outside of the scene event functions below will only be executed ONCE unless
-- the scene is removed entirely (not recycled) via "composer.removeScene()"
-- -----------------------------------------------------------------------------------

local function btn_swatch_tap ( event )
  -- get the colour of the button tapped
  -- local red, green, blue, alpha = unpack(event.target.fill)
  print( "Object tapped: " .. tostring(event.target) )
  print (tostring(event.target.fill))
end

local function createPalette ()
  print ( "createPalette" )
  local palette = display.newGroup()
  -- create three colour swatch circles
  local btn_swatchRed = display.newCircle( 300, 500, 30 )
  btn_swatchRed.strokeWidth = 3
  btn_swatchRed:setFillColor( 1, 0, 0 )
  btn_swatchRed:setStrokeColor( 0 )
  palette:insert( btn_swatchRed )
  btn_swatchRed:addEventListener( "tap", btn_swatch_tap )

  local btn_swatchBlue = display.newCircle( 375, 500, 30 )
  btn_swatchBlue.strokeWidth = 3
  btn_swatchBlue:setFillColor( 0, 1, 0 )
  btn_swatchBlue:setStrokeColor( 0 )
  palette:insert( btn_swatchBlue )

  local btn_swatchGreen = display.newCircle( 450, 500, 30 )
  btn_swatchGreen.strokeWidth = 3
  btn_swatchGreen:setFillColor( 0, 0, 1 )
  btn_swatchGreen:setStrokeColor( 0 )
  palette:insert( btn_swatchGreen )

  return palette
end


-- -----------------------------------------------------------------------------------
-- Scene event functions
-- -----------------------------------------------------------------------------------

-- create()
function scene:create( event )

    local sceneGroup = self.view
    -- Code here runs when the scene is first created but has not yet appeared on screen

    local proto_rect = display.newRect( 300, 100, 100, 30 )
    sceneGroup:insert( proto_rect )

    local btn_spawn = createRoundedRectButton(400, 400, 150, 50, 12, "Spawn Plant")
    -- make it a button
    local function btn_spawn_tap ()
      local img_plant = createImage("animation/animation1.png", 370, 380,display.contentCenterX,display.contentCenterY)
      sceneGroup:insert( img_plant )
      toggleVisibility( btn_spawn )
      createPalette()
    end
    btn_spawn:addEventListener( "tap", btn_spawn_tap )
    -- add the group to the sceneGroup
    sceneGroup:insert( btn_spawn )
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
