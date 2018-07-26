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

-- Prototype of dinosaur movement (Lines 14 to 77)
 function Dino()
local sheetOptions =
{
    width = 581,
    height = 621,
    numFrames = 9
}
local sequences_runningCat = {
    -- consecutive frames sequence
    {
        name = "normalRun",
        start = 1,
        count = 9,
        time = 700,
        loopCount = 0,
        loopDirection = "forward"
    }
}

local Dino = graphics.newImageSheet( "images/sprite/sheetdino.png", sheetOptions )
}

Dino.x = display.contentCenterX+400
Dino.y = display.contentCenterY-250


function goLeft()
 transition.to( Dino, { time=6000, x=(45) } )

 local leftsecondsTillcomplete = 7

 local function LeftTimer( event )

   -- Decrement the number of seconds
   leftsecondsTillcomplete = leftsecondsTillcomplete - 1

   -- Time is tracked in seconds; convert it to minutes and seconds
   local minutes = math.floor( leftsecondsTillcomplete / 7 )
   local seconds = leftsecondsTillcomplete % 7

   Lefttimeup ()

 end

 gorighttimer = timer.performWithDelay( 1000, LeftTimer, leftsecondsTillcomplete )

 function Lefttimeup ()
   if leftsecondsTillcomplete <= 0
    then
       goRight()
    end

 end

end


function goRight()
 transition.to( Dino, { time=6000, x=(875) } )

 local rightsecondsTillcomplete = 7

 local function RightTimer( event )

   -- Decrement the number of seconds
   rightsecondsTillcomplete = rightsecondsTillcomplete - 1

   -- Time is tracked in seconds; convert it to minutes and seconds
   local minutes = math.floor( rightsecondsTillcomplete / 7 )
   local seconds = rightsecondsTillcomplete % 7

   Righttimeup ()

 end

 gorighttimer = timer.performWithDelay( 1000, RightTimer, rightsecondsTillcomplete )

 function Righttimeup ()
   if rightsecondsTillcomplete <= 0
    then
       goLeft()
    end

 end
end


goLeft()

-- create timer for splashscreen (Clock Text will not be part of the final game. It is just for testing purposes)

local secondsLeft = 25  -- 10 minutes = 600 seconds

local clockText = display.newText( "00:25", display.contentCenterX, 80, native.systemFont, 42 )
clockText:setFillColor( 0.7, 0.7, 1 )

local function updateTime( event )

 -- Decrement the number of seconds
  secondsLeft = secondsLeft - 1

 -- Time is tracked in seconds; convert it to minutes and seconds
  local minutes = math.floor( secondsLeft / 25 )
  local seconds = secondsLeft % 25

 -- Make it a formatted string
  local timeDisplay = string.format( "%02d:%02d", minutes, seconds )

 -- Update the text object
    clockText.text = timeDisplay

  timeup ()

end

local countDownTimer = timer.performWithDelay( 1000, updateTime, secondsLeft )

local function resetTimer( )
    timer.cancel(countDownTimer)
    secondsLeft = 25
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
  proto_rect:setFillColor(unpack(event.target.color))
  proto_rect.color = event.target.color
  print(unpack(proto_rect.color))
  resetTimer( )
  -- event.target:scale(1.25)
end


local function tintPlant ( event )
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

    sceneGroup:insert( Dino )

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

    local donebtn_spawnFlax = display.newImageRect( "images/Done Button Template.png", 150, 55)
    donebtn_spawnFlax.x = display.contentCenterX-360
    donebtn_spawnFlax.y = display.contentCenterY+180
    toggleVisibility( donebtn_spawnFlax )
    sceneGroup:insert( donebtn_spawnFlax )

    local donebtn_spawnPalm = display.newImageRect( "images/Done Button Template.png", 150, 55)
    donebtn_spawnPalm.x = display.contentCenterX-360
    donebtn_spawnPalm.y = display.contentCenterY+180
    toggleVisibility( donebtn_spawnPalm )
    sceneGroup:insert( donebtn_spawnPalm )

    local donebtn_spawnPine = display.newImageRect( "images/Done Button Template.png", 150, 55)
    donebtn_spawnPine.x = display.contentCenterX-360
    donebtn_spawnPine.y = display.contentCenterY+180
    toggleVisibility( donebtn_spawnPine )
    sceneGroup:insert( donebtn_spawnPine )

    local donebtn_spawnFern = display.newImageRect( "images/Done Button Template.png", 150, 55)
    donebtn_spawnFern.x = display.contentCenterX-360
    donebtn_spawnFern.y = display.contentCenterY+180
    toggleVisibility( donebtn_spawnFern )
    sceneGroup:insert( donebtn_spawnFern )

    --Creates Buttons for spawning Plants
    local btn_spawnFlax = display.newImageRect( "images/selectbuttons/Select Flax Button.png", 50, 50)
    btn_spawnFlax.x = display.contentCenterX-443
    btn_spawnFlax.y = display.contentCenterY+230
    sceneGroup:insert( btn_spawnFlax )

    local btn_spawnPalm = display.newImageRect( "images/selectbuttons/Select Palm Button.png", 50, 50)
    btn_spawnPalm.x = display.contentCenterX-387
    btn_spawnPalm.y = display.contentCenterY+230
    sceneGroup:insert( btn_spawnPalm )

    local btn_spawnPine = display.newImageRect( "images/selectbuttons/Select Pine Button.png", 50, 50)
    btn_spawnPine.x = display.contentCenterX-333
    btn_spawnPine.y = display.contentCenterY+230
    sceneGroup:insert( btn_spawnPine )

    local btn_spawnFern = display.newImageRect( "images/selectbuttons/Select Fern Button.png", 50, 50)
    btn_spawnFern.x = display.contentCenterX-277
    btn_spawnFern.y = display.contentCenterY+230
    sceneGroup:insert( btn_spawnFern )

    --Creates Spawn functions for buttons

    -- Spawn Flax
    local function btn_spawn_tapFlax ()
      toggleVisibility( donebtn_spawnFlax )
      toggleVisibility( btn_spawnPalm )
      toggleVisibility( btn_spawnFlax )
      toggleVisibility( btn_spawnPine )
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
    btn_spawnFlax:addEventListener( "tap", btn_spawn_tapFlax )



    -- Spawn Palm
    local function btn_spawn_tapPalm ()
      toggleVisibility( donebtn_spawnPalm )
      toggleVisibility( btn_spawnPalm )
      toggleVisibility( btn_spawnFlax )
      toggleVisibility( btn_spawnPine )
      toggleVisibility( btn_spawnFern )

      toggleVisibility( btn_new1 )
      toggleVisibility( btn_new2 )
      toggleVisibility( btn_new3 )
      toggleVisibility( btn_new4 )

      img_plant = createImage("images/plant2/plant3.png", 50, 110, display.contentCenterX-350, display.contentCenterY+77)
      img_plant:addEventListener( "tap", tintPlant )
      img_plant:setFillColor(0.7)


      img_plant:setMask( mask )

      sceneGroup:insert( img_plant )

      img_plant2 = createImage("images/plant2/plant2.png", 80, 40, display.contentCenterX-400, display.contentCenterY+42)
      img_plant2:addEventListener( "tap", tintPlant )
      img_plant2:setFillColor(0.6)


      img_plant2:setMask( mask2 )

      sceneGroup:insert( img_plant2 )

      img_plant3 = createImage("images/plant2/plant1.png", 80, 40, display.contentCenterX-330, display.contentCenterY+37)
      img_plant3:addEventListener( "tap", tintPlant )
      img_plant3:setFillColor(0.5)


      img_plant3:setMask( mask3 )

      sceneGroup:insert( img_plant3 )


      resetTimer(  )

    end
    btn_spawnPalm:addEventListener( "tap", btn_spawn_tapPalm )

    -- Spawn Pine
    local function btn_spawn_tapPine ()
        toggleVisibility( donebtn_spawnPine )
        toggleVisibility( btn_spawnPalm )
        toggleVisibility( btn_spawnFlax )
        toggleVisibility( btn_spawnPine )
        toggleVisibility( btn_spawnFern )

        toggleVisibility( btn_new1 )
        toggleVisibility( btn_new2 )
        toggleVisibility( btn_new3 )
        toggleVisibility( btn_new4 )

        img_plant = createImage("images/plant4/plant1.png", 20, 200, display.contentCenterX-360, display.contentCenterY+35)
        img_plant:addEventListener( "tap", tintPlant )
        img_plant:setFillColor(0.6)



        sceneGroup:insert( img_plant )

        img_plant2 = createImage("images/plant4/plant2.png", 65, 35, display.contentCenterX-360, display.contentCenterY-35)
        img_plant2:addEventListener( "tap", tintPlant )
        img_plant2:setFillColor(0.7)

        sceneGroup:insert( img_plant2 )

        img_plant3 = createImage("images/plant4/plant3.png", 75, 35, display.contentCenterX-360, display.contentCenterY-15)
        img_plant3:addEventListener( "tap", tintPlant )
        img_plant3:setFillColor(0.8)

        sceneGroup:insert( img_plant3 )

        img_plant4 = createImage("images/plant4/plant4.png", 25, 25, display.contentCenterX-360, display.contentCenterY-70)
        img_plant4:addEventListener( "tap", tintPlant )
        img_plant4:setFillColor(0.6)


        sceneGroup:insert( img_plant4 )

        img_plant5 = createImage("images/plant4/plant5.png", 85, 35, display.contentCenterX-360, display.contentCenterY+10)
        img_plant5:addEventListener( "tap", tintPlant )
        img_plant5:setFillColor(0.7)



        sceneGroup:insert( img_plant5 )

        img_plant6 = createImage("images/plant4/plant6.png", 115, 35, display.contentCenterX-360, display.contentCenterY+35)
        img_plant6:addEventListener( "tap", tintPlant )
        img_plant6:setFillColor(0.7)


        sceneGroup:insert( img_plant6 )

        img_plant7 = createImage("images/plant4/plant7.png", 145, 45, display.contentCenterX-360, display.contentCenterY+65)
        img_plant7:addEventListener( "tap", tintPlant )
        img_plant7:setFillColor(0.7)


        sceneGroup:insert( img_plant7 )


        resetTimer(  )

    end
    btn_spawnPine:addEventListener( "tap", btn_spawn_tapPine )


    -- Spawn Fern
    local function btn_spawn_tapFern ()
        toggleVisibility( donebtn_spawnFern )
        toggleVisibility( btn_spawnPalm )
        toggleVisibility( btn_spawnFlax )
        toggleVisibility( btn_spawnPine )
        toggleVisibility( btn_spawnFern )

        toggleVisibility( btn_new1 )
        toggleVisibility( btn_new2 )
        toggleVisibility( btn_new3 )
        toggleVisibility( btn_new4 )

        img_plant = createImage("images/plant3/plant1.png", 101.25, 93.75, display.contentCenterX-350, display.contentCenterY+75)
        img_plant:addEventListener( "tap", tintPlant )
        img_plant:setFillColor(0.6)



        sceneGroup:insert( img_plant )

        img_plant2 = createImage("images/plant3/plant2.png", 67.5, 48.75, display.contentCenterX-323, display.contentCenterY+94)
        img_plant2:addEventListener( "tap", tintPlant )
        img_plant2:setFillColor(0.7)

        sceneGroup:insert( img_plant2 )

        img_plant3 = createImage("images/plant3/plant3.png", 60, 33.75, display.contentCenterX-382, display.contentCenterY+107)
        img_plant3:addEventListener( "tap", tintPlant )
        img_plant3:setFillColor(0.8)

        sceneGroup:insert( img_plant3 )

        img_plant4 = createImage("images/plant3/plant4.png", 67.5, 26.25, display.contentCenterX-325, display.contentCenterY+112)
        img_plant4:addEventListener( "tap", tintPlant )
        img_plant4:setFillColor(0.6)


        sceneGroup:insert( img_plant4 )


        resetTimer(  )

    end
    btn_spawnFern:addEventListener( "tap", btn_spawn_tapFern )


    -- sends plant to background, makes them non-interactable and resets the level back to original start up (WORK IN PROGRESS)

    -- Done Flax
    local function donebtn_spawn_tapFlax ()
        toggleVisibility( btn_spawnPalm )
        toggleVisibility( btn_spawnFlax )
        toggleVisibility( btn_spawnPine )
        toggleVisibility( btn_spawnFern )
        toggleVisibility( donebtn_spawnFlax )

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
    donebtn_spawnFlax:addEventListener( "tap", donebtn_spawn_tapFlax )


    -- Done Palm
    local function donebtn_spawn_tapPalm ()
        toggleVisibility( btn_spawnPalm )
        toggleVisibility( btn_spawnFlax )
        toggleVisibility( btn_spawnPine )
        toggleVisibility( btn_spawnFern )
        toggleVisibility( donebtn_spawnPalm )

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
            y= math.random(-40, -33),
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
    donebtn_spawnPalm:addEventListener( "tap", donebtn_spawn_tapPalm )


    -- Done Pine
     local function donebtn_spawn_tapPine ()
        toggleVisibility( btn_spawnPalm )
        toggleVisibility( btn_spawnFlax )
        toggleVisibility( btn_spawnPine )
        toggleVisibility( btn_spawnFern )
        toggleVisibility( donebtn_spawnPine )

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
        finishedPlant:insert(img_plant7)

        transition.to(finishedPlant, {
            x= math.random(-60, 700 ),
            y= math.random(-40, -35),
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
        img_plant7:scale(0.95, 0.95)
        img_plant7:removeEventListener( "tap", tintPlant )

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
    donebtn_spawnPine:addEventListener( "tap", donebtn_spawn_tapPine )


    -- Done Flax
    local function donebtn_spawn_tapFern ()
        toggleVisibility( btn_spawnPalm )
        toggleVisibility( btn_spawnFlax )
        toggleVisibility( btn_spawnPine )
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
