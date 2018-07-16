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
    proto_rect = display.newRect( 100, 50, 100, 30 )
    proto_rect.color = {0,0,0}
    sceneGroup:insert( proto_rect )

    -- Color palette Buttons (Set to insivisble on game start)

    -- Palette For Player 1

    local btn_new1 = display.newCircle( 40, 500, 20 )
    btn_new1.color = { 0.3, 0.5, 0.3 }
    btn_new1.strokeWidth = 3
    btn_new1:setStrokeColor( 0.3, 0.5, 0.3 )
    btn_new1:setFillColor( 0.3, 0.5, 0.3 )
    btn_new1:addEventListener( "tap", btn_swatch_tap )
    sceneGroup:insert( btn_new1 )
    toggleVisibility( btn_new1 )

    local btn_new2 = display.newCircle( 90, 500, 20 )
    btn_new2.color = { 0.3, 0.5, 0.1 }
    btn_new2.strokeWidth = 3
    btn_new2:setStrokeColor( 0.3, 0.5, 0.1 )
    btn_new2:setFillColor( 0.3, 0.5, 0.1 )
    btn_new2:addEventListener( "tap", btn_swatch_tap )
    sceneGroup:insert( btn_new2 )
    toggleVisibility( btn_new2 )

    local btn_new3 = display.newCircle( 140, 500, 20 )
    btn_new3.color = { 0.1, 0.4, 0.2 }
    btn_new3.strokeWidth = 3
    btn_new3:setStrokeColor( 0.1, 0.4, 0.2 )
    btn_new3:setFillColor( 0.1, 0.4, 0.2 )
    btn_new3:addEventListener( "tap", btn_swatch_tap )
    sceneGroup:insert( btn_new3 )
    toggleVisibility( btn_new3 )

    local btn_new4 = display.newCircle( 190, 500, 20 )
    btn_new4.color = { 0.4, 0.2, 0.1 }
    btn_new4.strokeWidth = 3
    btn_new4:setStrokeColor( 0.4, 0.2, 0.1 )
    btn_new4:setFillColor( 0.4, 0.2, 0.1 )
    btn_new4:addEventListener( "tap", btn_swatch_tap )
    sceneGroup:insert( btn_new4 )
    toggleVisibility( btn_new4 )



    -- creates done buttons for when you're finished colouring, set to invisible on level start.

    local donebtn_spawnFern = display.newImageRect( "images/Done Button Template.png", 150, 55)
    donebtn_spawnFern.x = display.contentCenterX-360
    donebtn_spawnFern.y = display.contentCenterY+180
    toggleVisibility( donebtn_spawnFern )

    local donebtn_spawnBush = display.newImageRect( "images/Done Button Template.png", 150, 55)
    donebtn_spawnBush.x = display.contentCenterX-360
    donebtn_spawnBush.y = display.contentCenterY+180
    toggleVisibility( donebtn_spawnBush )

    --Creates Buttons for spawning Plants
    local btn_spawnFern = display.newImageRect( "images/selectbuttons/Select Fern Button.png", 50, 50)
    btn_spawnFern.x = display.contentCenterX-440
    btn_spawnFern.y = display.contentCenterY+230
   
    local btn_spawnBush = display.newImageRect( "images/selectbuttons/Select Bush Button.png", 50, 50)
    btn_spawnBush.x = display.contentCenterX-385
    btn_spawnBush.y = display.contentCenterY+230
    
    -- Spawn Fern
    local function btn_spawn_tapFern ()
      toggleVisibility( donebtn_spawnFern )
      toggleVisibility( btn_spawnBush )
      toggleVisibility( btn_spawnFern )
      
      toggleVisibility( btn_new1 )
      toggleVisibility( btn_new2 )
      toggleVisibility( btn_new3 )
      toggleVisibility( btn_new4 )

      img_plant = createImage("images/plant1/plant1.png", 65, 37.5, display.contentCenterX-330, display.contentCenterY+115)
      img_plant:addEventListener( "tap", tintPlant )
      img_plant:setFillColor(0.6)



      sceneGroup:insert( img_plant )

      img_plant2 = createImage("images/plant1/plant2.png", 65, 49, display.contentCenterX-390, display.contentCenterY+115)
      img_plant2:addEventListener( "tap", tintPlant )
      img_plant2:setFillColor(0.7)

      sceneGroup:insert( img_plant2 )

      img_plant3 = createImage("images/plant1/plant3.png", 75, 97.5, display.contentCenterX-330, display.contentCenterY+85)
      img_plant3:addEventListener( "tap", tintPlant )
      img_plant3:setFillColor(0.8)

      sceneGroup:insert( img_plant3 )

      img_plant4 = createImage("images/plant1/plant4.png", 90, 67, display.contentCenterX-400, display.contentCenterY+85)
      img_plant4:addEventListener( "tap", tintPlant )
      img_plant4:setFillColor(0.6)


      sceneGroup:insert( img_plant4 )

      img_plant5 = createImage("images/plant1/plant5.png", 51.5, 92.5, display.contentCenterX-380, display.contentCenterY+85)
      img_plant5:addEventListener( "tap", tintPlant )
      img_plant5:setFillColor(0.7)



      sceneGroup:insert( img_plant5 )

      img_plant6 = createImage("images/plant1/plant6.png", 64, 83.5, display.contentCenterX-330, display.contentCenterY+85)
      img_plant6:addEventListener( "tap", tintPlant )
      img_plant6:setFillColor(0.7)


      sceneGroup:insert( img_plant6 )


      resetTimer(  )

    end
    btn_spawnFern:addEventListener( "tap", btn_spawn_tapFern )
    -- add the group to the sceneGroup
    sceneGroup:insert( btn_spawnFern )


   
    --Spawn Bush
    local function btn_spawn_tapBush ()
      toggleVisibility( donebtn_spawnBush )
      toggleVisibility( btn_spawnBush )
      toggleVisibility( btn_spawnFern )

      toggleVisibility( btn_new1 )
      toggleVisibility( btn_new2 )
      toggleVisibility( btn_new3 )
      toggleVisibility( btn_new4 )

      img_plant = createImage("images/bush_01.png", 128, 128, display.contentCenterX-345, display.contentCenterY+77)
      img_plant:addEventListener( "tap", tintPlant )
      img_plant:setFillColor(0.7)

      local mask = graphics.newMask( "images/bush_01_mask.png" )
      img_plant:setMask( mask )

      sceneGroup:insert( img_plant )

      img_plant2 = createImage("images/bush_01.png", 128, 128, display.contentCenterX-380, display.contentCenterY+55)
      img_plant2:addEventListener( "tap", tintPlant )
      img_plant2:setFillColor(0.6)

      local mask2 = graphics.newMask( "images/bush_01_mask.png" )
      img_plant2:setMask( mask2 )

      sceneGroup:insert( img_plant2 )

      img_plant3 = createImage("images/bush_01.png", 128, 128, display.contentCenterX-400, display.contentCenterY+77)
      img_plant3:addEventListener( "tap", tintPlant )
      img_plant3:setFillColor(0.5)

      local mask3 = graphics.newMask( "images/bush_01_mask.png" )
      img_plant3:setMask( mask3 )

      sceneGroup:insert( img_plant3 )


      resetTimer(  )

    end
    btn_spawnBush:addEventListener( "tap", btn_spawn_tapBush )
    -- add the group to the sceneGroup
    sceneGroup:insert( btn_spawnBush )



    -- sends plant to background, makes them non-interactable and resets the level back to original start up (WORK IN PROGRESS)
    local function donebtn_spawn_tapFern ()
        toggleVisibility( btn_spawnBush )
        toggleVisibility( btn_spawnFern )
        toggleVisibility( donebtn_spawnFern )

        toggleVisibility( btn_new1 )
        toggleVisibility( btn_new2 )
        toggleVisibility( btn_new3 )
        toggleVisibility( btn_new4 )


        finishedPlant = display.newGroup();

        finishedPlant:insert(img_plant)
        finishedPlant:insert(img_plant2)
        finishedPlant:insert(img_plant3)
        finishedPlant:insert(img_plant4)
        finishedPlant:insert(img_plant5)
        finishedPlant:insert(img_plant6)

        transition.to(finishedPlant, {
            x= math.random(-60, 700 ), 
            y= math.random(-30, -20), 
            time=1000})
        img_plant:scale(0.95, 0.95)
        img_plant:removeEventListener( "tap", tintPlant )
        img_plant2:scale(0.95, 0.95)
        img_plant2:removeEventListener( "tap", tintPlant )
        img_plant3:scale(0.95, 0.95)
        img_plant3:removeEventListener( "tap", tintPlant )
        img_plant4:scale(0.95, 0.95)
        img_plant4:removeEventListener( "tap", tintPlant )
        img_plant5:scale(0.95, 0.95)
        img_plant5:removeEventListener( "tap", tintPlant )
        img_plant6:scale(0.95, 0.95)
        img_plant6:removeEventListener( "tap", tintPlant )

        resetTimer(  )

        local secondsTillcomplete = 1  -- 10 minutes = 600 seconds

        local function updateTimeForDone( event )

            -- Decrement the number of seconds
            secondsTillcomplete = secondsTillcomplete - 1
    
            -- Time is tracked in seconds; convert it to minutes and seconds
            local minutes = math.floor( secondsTillcomplete / 1 )
            local seconds = secondsLeft % 1
    
            Donetimeup ()
    
        end

        DonebuttonTimer = timer.performWithDelay( 1000, updateTimeForDone, secondsTillcomplete )

        function Donetimeup ()

            if secondsTillcomplete <= 0
             then 
                sceneGroup:insert( finishedPlant )
                  
            end
        end


    end
    donebtn_spawnFern:addEventListener( "tap", donebtn_spawn_tapFern )
    -- add the group to the sceneGroup
    sceneGroup:insert( donebtn_spawnFern )

    local function donebtn_spawn_tapBush ()
        toggleVisibility( btn_spawnBush )
        toggleVisibility( btn_spawnFern )
        toggleVisibility( donebtn_spawnBush )

        toggleVisibility( btn_new1 )
        toggleVisibility( btn_new2 )
        toggleVisibility( btn_new3 )
        toggleVisibility( btn_new4 )

        finishedPlant = display.newGroup();

        finishedPlant:insert(img_plant)
        finishedPlant:insert(img_plant2)
        finishedPlant:insert(img_plant3)

        transition.to(finishedPlant, {
            x= math.random(-60, 700 ), 
            y= math.random(-20, -12), 
            time=1000})
        img_plant:scale(0.95, 0.95)
        img_plant:removeEventListener( "tap", tintPlant )
        img_plant2:scale(0.95, 0.95)
        img_plant2:removeEventListener( "tap", tintPlant )
        img_plant3:scale(0.95, 0.95)
        img_plant3:removeEventListener( "tap", tintPlant )

        resetTimer(  )

        local secondsTillcomplete = 1  -- 10 minutes = 600 seconds

        local function updateTimeForDone( event )

            -- Decrement the number of seconds
            secondsTillcomplete = secondsTillcomplete - 1
    
            -- Time is tracked in seconds; convert it to minutes and seconds
            local minutes = math.floor( secondsTillcomplete / 1 )
            local seconds = secondsLeft % 1
    
            Donetimeup ()
    
        end

        DonebuttonTimer = timer.performWithDelay( 1000, updateTimeForDone, secondsTillcomplete )

        function Donetimeup ()

            if secondsTillcomplete <= 0
             then 
                sceneGroup:insert( finishedPlant )
                  
            end
        end


    end
    donebtn_spawnBush:addEventListener( "tap", donebtn_spawn_tapBush )
    -- add the group to the sceneGroup
    sceneGroup:insert( donebtn_spawnBush )

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
