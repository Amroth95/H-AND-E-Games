local composer = require( "composer" )
local name = require( "libraries.proto_utilities" )

local scene = composer.newScene()
local img_plant, img_plant2
local proto_rect
local proto_dest
-- -----------------------------------------------------------------------------------
-- Code outside of the scene event functions below will only be executed ONCE unless
-- the scene is removed entirely (not recycled) via "composer.removeScene()"
-- -----------------------------------------------------------------------------------
--add image+movement+
image = display.newImageRect("images/dino.png", 90, 180)
image.x = display.contentCenterX+100
image.y = display.contentCenterY-250

function goLeft()
transition.to( image, { time=1500, delay=1500, x=(image.x - 150), onComplete=goRight() } )
end


function goRight()
transition.to( image, { time=1500, delay=1500, x=(image.x + 150), onComplete=goRight} )
end

goLeft()

    -- create timer for splashscreen
    local secondsLeft = 10  -- 10 minutes = 600 seconds

    local clockText = display.newText( "00:10", display.contentCenterX, 80, native.systemFont, 42 )
    clockText:setFillColor( 0.7, 0.7, 1 )

    local function updateTime( event )

        -- Decrement the number of seconds
        secondsLeft = secondsLeft - 1

        -- Time is tracked in seconds; convert it to minutes and seconds
        local minutes = math.floor( secondsLeft / 10 )
        local seconds = secondsLeft % 10

        -- Make it a formatted string
        local timeDisplay = string.format( "%02d:%02d", minutes, seconds )

        -- Update the text object
        clockText.text = timeDisplay

        timeup ()

    end

    local countDownTimer = timer.performWithDelay( 1000, updateTime, secondsLeft )

    local function resetTimer( )
        timer.cancel(countDownTimer)
        secondsLeft = 10
        countDownTimer = timer.performWithDelay( 1000, updateTime, secondsLeft )
    end

    function timeup ()

        if secondsLeft <= 0
         then composer.gotoScene( "scenes..splashscreen", options )
              composer.removeScene( "scenes..proto_spawn", options )
              display.remove(clockText)
        end
    end



local function btn_swatch_tap ( event, color )
  -- get the colour of the button tapped
  -- local red, green, blue, alpha = unpack(event.target.fill)
  -- print( "Object tapped: " .. tostring(event.target) )
  -- print (unpack(event.target.color))
  -- event.target.rect:setFillColor(unpack(event.target.color))
  proto_rect:setFillColor(unpack(event.target.color))
  proto_rect.color = event.target.color
  print(unpack(proto_rect.color))
  resetTimer( )
  -- event.target:scale(1.25)
end

local function createPaletteSwatch ( color, x, y )
  local btn_new = display.newCircle( x, y, 30 )
  btn_new.color = color
  btn_new.strokeWidth = 3
  btn_new:setFillColor( unpack(color) )
  btn_new:setStrokeColor( 0 )
   -- paletteGroup:insert( btn_swatchRed )
  btn_new:addEventListener( "tap", btn_swatch_tap )
  return btn_new
end


local function createPalette (  )
  print ( "createPalette" )

  local paletteGroup = display.newGroup()

  -- create three colour swatch circles
  -- local btn_swatchRed = display.newCircle( 300, 500, 30 )
  -- btn_swatchRed.color = {1, 0, 0}
  -- btn_swatchRed.strokeWidth = 3
  -- btn_swatchRed:setFillColor( 1, 0, 0 )
  -- btn_swatchRed:setStrokeColor( 0 )
  -- paletteGroup:insert( btn_swatchRed )
  -- btn_swatchRed:addEventListener( "tap", btn_swatch_tap )
  --
  -- local btn_swatchBlue = display.newCircle( 375, 500, 30 )
  -- btn_swatchBlue.color = {0.3, 0.5, 0.1}
  -- btn_swatchBlue.strokeWidth = 3
  -- btn_swatchBlue:setFillColor( 0.3, 0.5, 0.1 )
  -- btn_swatchBlue:setStrokeColor( 0 )
  -- paletteGroup:insert( btn_swatchBlue )
  -- btn_swatchBlue:addEventListener( "tap", btn_swatch_tap )
  --
  -- local btn_swatchGreen = display.newCircle( 450, 500, 30 )
  -- btn_swatchGreen.color = {0, 0, 1}
  -- btn_swatchGreen.strokeWidth = 3
  -- btn_swatchGreen:setFillColor( 0, 0, 1 )
  -- btn_swatchGreen:setStrokeColor( 0 )
  -- paletteGroup:insert( btn_swatchGreen )
  -- btn_swatchGreen:addEventListener( "tap", btn_swatch_tap )

  paletteGroup:insert (createPaletteSwatch({0.6, 0.1, 0.2}, 300, 500))
  paletteGroup:insert (createPaletteSwatch({0.3, 0.5, 0.1}, 375, 500))
  paletteGroup:insert (createPaletteSwatch({0, 0, 1}, 450, 500))
  paletteGroup:insert (createPaletteSwatch({0.4, 0.2, 0.1}, 525, 500))

  return palette
end


local function tintPlant ( event )
  -- img_plant:setFillColor(unpack(proto_rect.color))
  event.target:setFillColor(unpack(proto_rect.color))
  resetTimer( )
end

local function tintDest ( event )
  proto_dest:setFillColor(unpack(proto_rect.color))
end

-- -----------------------------------------------------------------------------------
-- Scene event functions
-- -----------------------------------------------------------------------------------

-- create()
function scene:create( event )

    local sceneGroup = self.view
    -- Code here runs when the scene is first created but has not yet appeared on screen



    -- Color indicator, (Test Only)
    proto_rect = display.newRect( 300, 100, 100, 30 )
    proto_rect.color = {0,0,0}
    sceneGroup:insert( proto_rect )



    -- creates done button for when you're finished colouring, set to invisible on level start.
    local donebtn_spawn = createRoundedRectButton(400, 400, 150, 50, 12, "Done")
    toggleVisibility( donebtn_spawn )



    --first spawn plant button prototype
    local btn_spawn = createRoundedRectButton(400, 400, 150, 50, 12, "Spawn Bush")
    -- make it a button, creates plant and palette, also makes done button visible
    local function btn_spawn_tap ()
      toggleVisibility( donebtn_spawn )
      toggleVisibility( btn_spawn )

      img_plant = createImage("images/plant1/plant1.png", 131, 75, display.contentCenterX-280, display.contentCenterY+70)
      img_plant:addEventListener( "tap", tintPlant )
      img_plant:setFillColor(0.9)



      sceneGroup:insert( img_plant )

      img_plant2 = createImage("images/plant1/plant2.png", 130, 98, display.contentCenterX-400, display.contentCenterY+70)
      img_plant2:addEventListener( "tap", tintPlant )
      img_plant2:setFillColor(0.9)

    sceneGroup:insert( img_plant2 )

      img_plant3 = createImage("images/plant1/plant3.png", 150, 195, display.contentCenterX-280, display.contentCenterY-10)
      img_plant3:addEventListener( "tap", tintPlant )
      img_plant3:setFillColor(0.9)

    sceneGroup:insert( img_plant3 )

      img_plant4 = createImage("images/plant1/plant4.png", 180, 138, display.contentCenterX-425, display.contentCenterY-10)
      img_plant4:addEventListener( "tap", tintPlant )
      img_plant4:setFillColor(0.9)


    sceneGroup:insert( img_plant4 )

      img_plant5 = createImage("images/plant1/plant5.png", 103, 185, display.contentCenterX-370, display.contentCenterY-10)
      img_plant5:addEventListener( "tap", tintPlant )
      img_plant5:setFillColor(0.9)



    sceneGroup:insert( img_plant5 )

    img_plant6 = createImage("images/plant1/plant6.png", 128, 167, display.contentCenterX-280, display.contentCenterY)
      img_plant6:addEventListener( "tap", tintPlant )
      img_plant6:setFillColor(0.9)


      sceneGroup:insert( img_plant6 )


      -- proto_dest = display.newRect( 500, 300, 200, 60 )
      -- proto_rect.color = {0,0,0}
      -- proto_dest:addEventListener( "tap", tintDest )
      -- sceneGroup:insert( proto_dest )

      palette = createPalette(  )

      resetTimer(  )

    end
    btn_spawn:addEventListener( "tap", btn_spawn_tap )
    -- add the group to the sceneGroup
    sceneGroup:insert( btn_spawn )



    -- sends plant to background, makes them non-interactable and resets the level back to original start up (WORK IN PROGRESS)
    local function donebtn_spawn_tap ()
        toggleVisibility( btn_spawn )
        toggleVisibility( donebtn_spawn )

        transition.to(img_plant, {x=math.random(0, display.contentWidth), y=math.random(0, display.contentHeight) , time=1000})
        img_plant:scale(0.8, 0.8)
        img_plant:removeEventListener( "tap", tintPlant )

        transition.to(img_plant2, {x=math.random(0, display.contentWidth), y=math.random(0, display.contentHeight) , time=1000})
        img_plant2:scale(0.8, 0.8)
        img_plant2:removeEventListener( "tap", tintPlant )

        resetTimer(  )

    end
    donebtn_spawn:addEventListener( "tap", donebtn_spawn_tap )
    -- add the group to the sceneGroup
    sceneGroup:insert( donebtn_spawn )

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
