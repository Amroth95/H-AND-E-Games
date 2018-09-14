local composer = require( "composer" )
local utilities = require( "libraries.proto_utilities" )
local backgroundComponents = require( "libraries.background_setup" )
local backgroundAmbient = require( "libraries.background_ambience" )
local soundEffects = require( "libraries.sound_functions" )
local playerOne = require( "libraries.playerOne_utilities" )

local scene = composer.newScene()

local physics = require( "physics" )
--physics.start()

-- -----------------------------------------------------------------------------------
-- Code outside of the scene event functions below will only be executed ONCE unless
-- the scene is removed entirely (not recycled) via "composer.removeScene()"
-- -----------------------------------------------------------------------------------

background()
birds ()
clouds ()

-- -----------------------------------------------------------------------------------
-- Scene event functions
-- -----------------------------------------------------------------------------------

-- create()
function scene:create( event )

    local sceneGroup = self.view
    -- Code here runs when the scene is first created but has not yet appeared on screen
    physics.start()

    ecosystem_P1 = display.newGroup()
    sceneGroup:insert( ecosystem_P1 )
    ecosystem_P1:toBack(sceneGroup)

    ---------------------------------------------------------------------------------------------------------
    -- Set up for dinosaur animations
    ---------------------------------------------------------------------------------------------------------

    local DinosheetData1 = { width =159.864864865, height =199, numFrames=37, sheetContentWidth=5932, sheetContentHeight=199 } 
    local DinoImageSheet1 = graphics.newImageSheet("images/sprite sheet/Walk Test3.png", DinosheetData1)

    local DinosheetData2 = { width =1284.125, height =1399, numFrames=8, sheetContentWidth=10273, sheetContentHeight=1399 } 
    local DinoImageSheet2 = graphics.newImageSheet("images/sprite sheet/Eat fix.png", DinosheetData2)

    local sequenceDinoData = {
    {name="normalWalk", sheet=DinoImageSheet1, frames={ 37, 36, 35, 34, 33, 32, 31, 30, 29, 28, 27, 26, 25, 24, 23, 22, 21, 20, 19, 18, 17, 16, 15, 14, 13, 12, 11, 10, 9, 8, 7, 6, 5, 4, 3, 2, 1, }, time=1500},
    {name="normalEat", sheet=DinoImageSheet2, frames={ 8, 7, 6, 5, 4, 3, 2, 1, 2, 3, 4, 5, 6, 7, 8, }, time=2000, loopCount=0}
    }

    ---------------------------------------------------------------------------------------------------------------
    -- Dino placement and set up for movement and eating
    ---------------------------------------------------------------------------------------------------------------
    local Dino = display.newSprite(DinoImageSheet1, sequenceDinoData)
    local Dinoscale = 10
    Dino.x = display.contentWidth/2 ; Dino.y = display.contentHeight/2
    Dino:scale(Dinoscale, Dinoscale)
    Dino:play()

    Dino.x = display.contentCenterX+1500
    Dino.y = display.contentCenterY+420
    physics.addBody(Dino, {density=1000, friction=100, radius=30})
    physics.setGravity(0,0)
    Dino.myName = "Dino"

    sceneGroup:insert( Dino )
    physics.pause( Dino )

    ---------------------------------------------------------------------------------------------------------
    -- move the dino left
    ---------------------------------------------------------------------------------------------------------
    function goLeft()
        if Dino == nil then
            do return end
        else
            Dino.xScale = 10
            Dino:setSequence( "normalWalk" )
            Dino:play()
        end

      transition.to( Dino, { time=6000, x=math.random(200, 900) } )

      local rightsecondsTillcomplete = 7

      local function LeftTimer( event )

         -- Decrement the number of seconds
         rightsecondsTillcomplete = rightsecondsTillcomplete - 1

         -- Time is tracked in seconds; convert it to minutes and seconds
         local minutes = math.floor( rightsecondsTillcomplete / 7 )
         local seconds = rightsecondsTillcomplete % 7

         Lefttimeup ()

        end

      local gorightttimer = timer.performWithDelay( 1000, LeftTimer, rightsecondsTillcomplete )

      function Lefttimeup ()
        if rightsecondsTillcomplete <= 0
           then
             goRight()
           end

        end

    end

    ---------------------------------------------------------------------------------------------------------
    -- move the dino right
    ---------------------------------------------------------------------------------------------------------
    function goRight()
        if Dino == nil then
            do return end
        else
            Dino.xScale = -10
            Dino:setSequence( "normalWalk" )
            Dino:play()
        end

      transition.to( Dino, { time=6000, x=math.random(2800, 3100) } )

      local rightsecondsTillcomplete = 7

      local function RightTimer( event )

         -- Decrement the number of seconds
         rightsecondsTillcomplete = rightsecondsTillcomplete - 1

         -- Time is tracked in seconds; convert it to minutes and seconds
         local minutes = math.floor( rightsecondsTillcomplete / 7 )
         local seconds = rightsecondsTillcomplete % 7

         Righttimeup ()

        end

      local gorighttimer = timer.performWithDelay( 1000, RightTimer, rightsecondsTillcomplete )

       function Righttimeup ()
          if rightsecondsTillcomplete <= 0
            then
              goLeft()
            end

        end
    end

    ---------------------------------------------------------------------------------------------------------
    -- function for stoping the dino and making it eat (Work in Progress)
    ---------------------------------------------------------------------------------------------------------
    function DinoEat ()
      transition.pause(Dino)
      Dino:setSequence( "normalEat" )
      Dino:play()
      --rightsecondsTillcomplete = 11 -- maybe remove -------------------------------------------------------------------------------------

      local Eattimeseconds = 2

        local function EatTimer( event )

          -- Decrement the number of seconds
          Eattimeseconds = Eattimeseconds - 1

          -- Time is tracked in seconds; convert it to minutes and seconds
          local minutes = math.floor( Eattimeseconds / 2 )
          local seconds = Eattimeseconds % 2

          Eattimeup ()

        end

      eatingtimer = timer.performWithDelay( 1000, EatTimer, Eattimeseconds )

        function Eattimeup ()

           if Dino == nil then
              do return end
            else
                if Eattimeseconds <= 0 then
                  
                  Dino:setSequence( "normalWalk" )
                  Dino:play()
                  timer.cancel( eatingtimer )
                    
                end
            end
        end
    end

   ---------------------------------------------------------------------------------------------------------
   --start the dinos movement
   ---------------------------------------------------------------------------------------------------------
   goLeft()
  
    ------------------------
    -- Colouring functions
    ------------------------
    local function btn_swatch_tapP1 ( event, color )
      proto_rectP1:setFillColor(unpack(event.target.color))
      proto_rectP1.color = event.target.color
      print(unpack(proto_rectP1.color))
  
      local Paintselect = audio.loadSound( "sounds/buttons/Paint Select.mp3" )

      local Paintselectchannel = audio.play( Paintselect, { channel=2, loops=0 } )
  
    end

    local function tintPlantP1 ( event )
      event.target:setFillColor(unpack(proto_rectP1.color))

      local Paintplant = audio.loadSound( "sounds/buttons/Paint Plant.mp3" )

      local Paintplantchannel = audio.play( Paintplant, { channel=2, loops=0 } )
    end

    --------------------------------------------------------------------------
    -- Counts the number of finished plants (Text won't be in the final game)
    --------------------------------------------------------------------------
    local FinishedPlantCountP1 = 0

    local FinishedPlantTextP1 = display.newText( FinishedPlantCountP1, display.contentCenterX, 20, native.systemFont, 40 )
    FinishedPlantTextP1:setFillColor( 0, 0, 0 )
    sceneGroup:insert( FinishedPlantTextP1 )

    local SmallPlantCountP1 = 0
    local MediumPlantCountP1 = 0
    local LargePlantCountP1 = 0

    -------------------------------------------------
    -- Early collision test for Dino Eating Plants
    -------------------------------------------------


   local function GoToEcosystemP1 ()
      transition.cancel( Dino )
      transition.to( Dino, { time=2000, x=500, y=1500 } )
      Dino.xScale = 10

      toggleVisibility( btn_spawnPalmP1 )
      toggleVisibility( btn_spawnPineP1 )

      physics.start( SensorP1 )
      physics.start( Dino )

    end


   local function DinoPlantCollision( self, event )
    if event.phase == "began" then
           if event.target.myName == "FinishedPlant" and event.other.myName == "Dino" then
              print("Plant detected")

              DinoEat ()

              eatnoise ()

              transition.fadeOut( event.target.parent, {time = 1000} )

              display.remove( event.target )
              print("Yummy!")

              FinishedPlantCountP1 = 0
              FinishedPlantTextP1.text = FinishedPlantCountP1
              SmallPlantCountP1 = 0
              MediumPlantCountP1 = 0
              LargePlantCountP1 = 0

              physics.pause( Dino )

              ecosystem_P1 = display.newGroup()
              sceneGroup:insert( ecosystem_P1 )
              ecosystem_P1:toBack(sceneGroup)


            end
        end
    end

    Dino.collision = DinoPlantCollision
    Dino:addEventListener( "collision", Dino )

    -------------------------------------------------------------
    -- Color palette Buttons (Set to insivisble on game start)
    -------------------------------------------------------------

    -- Palette For Player 1
    colouringSetupP1()
    btn_new1:addEventListener( "tap", btn_swatch_tapP1 )
    btn_new2:addEventListener( "tap", btn_swatch_tapP1 )
    btn_new3:addEventListener( "tap", btn_swatch_tapP1 )
    btn_new4:addEventListener( "tap", btn_swatch_tapP1 )
    btn_rainbow1:addEventListener( "tap", btn_swatch_tapP1 )
    btn_rainbow2:addEventListener( "tap", btn_swatch_tapP1 )
    btn_rainbow3:addEventListener( "tap", btn_swatch_tapP1 )
    btn_rainbow4:addEventListener( "tap", btn_swatch_tapP1 )

    sceneGroup:insert( P1Colouring )

    ------------------------------------
    -- Color indicators
    ------------------------------------
    proto_rectP1 = display.newRect( 260, 2540, 100, 30 )
    proto_rectP1.color = {0,0,0}
    P1Colouring:insert( proto_rectP1 )
    
    ---------------------------------------
    --Creates Buttons for spawning Plants
    ---------------------------------------
    
    -- Buttons for Player 1
    selectionSetupP1 ()
    sceneGroup:insert( P1Select )

    ---------------------------------------
    --Creates Spawn functions for buttons
    ---------------------------------------

    -- Spawn Flax
    local function btn_spawn_tapFlax_P1 ()
      toggleVisibility( donebtn_spawnFlaxP1 )
      toggleVisibility( compostButtonFlaxP1 )

      clicksound ()

      createFlaxP1 ()

      flax_P1:addEventListener( "tap", tintPlantP1 )
      flax_P1_2:addEventListener( "tap", tintPlantP1 )
      flax_P1_3:addEventListener( "tap", tintPlantP1 )
      flax_P1_4:addEventListener( "tap", tintPlantP1 )
      flax_P1_5:addEventListener( "tap", tintPlantP1 )
      flax_P1_6:addEventListener( "tap", tintPlantP1 )

      P1Colouring:insert( P1Flax )

      transition.to( P1Select, { time=500, y=(800) } )

      transition.to( P1Colouring, { time=600, y=(-600) } )


    end
    btn_spawnFlaxP1:addEventListener( "tap", btn_spawn_tapFlax_P1 )

    -- Spawn Palm
    local function btn_spawn_tapPalm_P1 ()
      toggleVisibility( donebtn_spawnPalmP1 )
      toggleVisibility( compostButtonPalmP1 )

      clicksound ()

      createPalmP1 ()

      palm_P1:addEventListener( "tap", tintPlantP1 )
      palm_P1_2:addEventListener( "tap", tintPlantP1 )
      palm_P1_3:addEventListener( "tap", tintPlantP1 )

      P1Colouring:insert( P1Palm )

      transition.to( P1Select, { time=500, y=(800) } )

      transition.to( P1Colouring, { time=600, y=(-600) } )


    end
    btn_spawnPalmP1:addEventListener( "tap", btn_spawn_tapPalm_P1 )

    -- Spawn Pine
    local function btn_spawn_tapPine_P1 ()
        toggleVisibility( donebtn_spawnPineP1 )
        toggleVisibility( compostButtonPineP1 )

        clicksound ()

        createPineP1 ()

        pine_P1:addEventListener( "tap", tintPlantP1 )
        pine_P1_2:addEventListener( "tap", tintPlantP1 )
        pine_P1_3:addEventListener( "tap", tintPlantP1 )
        pine_P1_4:addEventListener( "tap", tintPlantP1 )
        pine_P1_5:addEventListener( "tap", tintPlantP1 )
        pine_P1_6:addEventListener( "tap", tintPlantP1 )
        pine_P1_7:addEventListener( "tap", tintPlantP1 )

        P1Colouring:insert( P1Pine )

        transition.to( P1Select, { time=500, y=(800) } )

        transition.to( P1Colouring, { time=600, y=(-600) } )

    end
    btn_spawnPineP1:addEventListener( "tap", btn_spawn_tapPine_P1 )

    -- Spawn Fern
    local function btn_spawn_tapFern_P1 ()
        toggleVisibility( donebtn_spawnFernP1 )
        toggleVisibility( compostButtonFernP1 )

        clicksound ()

        createFernP1 ()

        fern_P1:addEventListener( "tap", tintPlantP1 )
        fern_P1_2:addEventListener( "tap", tintPlantP1 )
        fern_P1_3:addEventListener( "tap", tintPlantP1 )
        fern_P1_4:addEventListener( "tap", tintPlantP1 )

        P1Colouring:insert( P1Fern )

        transition.to( P1Select, { time=500, y=(800) } )

        transition.to( P1Colouring, { time=600, y=(-600) } )

    end
    btn_spawnFernP1:addEventListener( "tap", btn_spawn_tapFern_P1 )

    ------------------------------------------------------------------------------
    -- sends plant to background, makes them non-interactable (WORK IN PROGRESS)
    ------------------------------------------------------------------------------

    -- Done Flax
    local function donebtn_spawn_tapFlaxP1 ()

        transition.to( P1Colouring, { time=500, y=(120) } )

        clicksound ()
        donesound ()

        FinishedPlantCountP1 = FinishedPlantCountP1 + 1
        FinishedPlantTextP1.text = FinishedPlantCountP1

        SmallPlantCountP1 = SmallPlantCountP1 + 1

        if SmallPlantCountP1 == 1 then

         toggleVisibility( btn_spawnPalmP1 )
        end
        
        if LargePlantCountP1 ==3 and FinishedPlantCountP1 >=6  then
            GoToEcosystemP1()
        end  

        transition.to(P1Flax, {
            x= math.random(-200, 400 ),
            y= math.random(-790, -785),
            time=1000})
        flax_P1:scale(1.35, 1.35)
        flax_P1:removeEventListener( "tap", tintPlantP1 )
        flax_P1_2:scale(1.35, 1.35)
        flax_P1_2:removeEventListener( "tap", tintPlantP1 )
        flax_P1_3:scale(1.35, 1.35)
        flax_P1_3:removeEventListener( "tap", tintPlantP1 )
        flax_P1_4:scale(1.35, 1.35)
        flax_P1_4:removeEventListener( "tap", tintPlantP1 )
        flax_P1_5:scale(1.35, 1.35)
        flax_P1_5:removeEventListener( "tap", tintPlantP1 )
        flax_P1_6:scale(1.35, 1.35)
        flax_P1_6:removeEventListener( "tap", tintPlantP1 )


        ecosystem_P1:insert( P1Flax )

        transition.to( P1Select, { time=500, y=(-3) } )
        toggleVisibility( donebtn_spawnFlaxP1 )
        toggleVisibility( compostButtonFlaxP1 )


        if FinishedPlantCountP1 == 1 then
            local SensorP1 = display.newCircle( 500, 1500, 100 )
            SensorP1.strokeWidth = 3
            SensorP1:setStrokeColor( 0.1, 0.4, 0.2 )
            SensorP1:setFillColor( 0.1, 0.4, 0.2 )
            physics.addBody(SensorP1, "Dynamic", {density=5, friction=5, radius=1})
            physics.setGravity(0,0)
            SensorP1.myName = "FinishedPlant"
            physics.pause( SensorP1 )
            SensorP1.collision = DinoPlantCollision
            SensorP1:addEventListener( "collision", SensorP1 )
            ecosystem_P1:insert( SensorP1 )
            toggleVisibility( SensorP1 )
            
        end

    end
    donebtn_spawnFlaxP1:addEventListener( "tap", donebtn_spawn_tapFlaxP1 )


    -- Done Palm
    local function donebtn_spawn_tapPalmP1 ()

        transition.to( P1Colouring, { time=500, y=(120) } )

        clicksound ()
        donesound ()

        FinishedPlantCountP1 = FinishedPlantCountP1 + 1
        FinishedPlantTextP1.text = FinishedPlantCountP1

        MediumPlantCountP1 = MediumPlantCountP1 + 1

        if MediumPlantCountP1 == 2 then

         toggleVisibility( btn_spawnPineP1 )
        end  

        if LargePlantCountP1 ==3 and FinishedPlantCountP1 >=6  then
            GoToEcosystemP1()
        end 

        transition.to(P1Palm, {
            x= math.random(-300, 500 ),
            y= math.random(-830, -785),
            time=1000})
        palm_P1:scale(2.35, 2.35)
        palm_P1:removeEventListener( "tap", tintPlantP1 )
        palm_P1_2:scale(2.35, 2.35)
        palm_P1_2:removeEventListener( "tap", tintPlantP1 )
        palm_P1_3:scale(2.35, 2.35)
        palm_P1_3:removeEventListener( "tap", tintPlantP1 )

        ecosystem_P1:insert( P1Palm )

        transition.to( P1Select, { time=500, y=(-3) } )
        toggleVisibility( donebtn_spawnPalmP1 )
        toggleVisibility( compostButtonPalmP1 )


    end
    donebtn_spawnPalmP1:addEventListener( "tap", donebtn_spawn_tapPalmP1 )


    -- Done Pine
     local function donebtn_spawn_tapPineP1 ()

        transition.to( P1Colouring, { time=500, y=(120) } )

        clicksound ()
        donesound ()

        FinishedPlantCountP1 = FinishedPlantCountP1 + 1
        FinishedPlantTextP1.text = FinishedPlantCountP1

        LargePlantCountP1 = LargePlantCountP1 + 1

        if LargePlantCountP1 ==3 and FinishedPlantCountP1 >=6  then
            GoToEcosystemP1()
        end 

        transition.to(P1Pine, {
            x= math.random(-300, 500 ),
            y= math.random(-1080, -990),
            time=1000})
        pine_P1:scale(2, 2.95)
        pine_P1:removeEventListener( "tap", tintPlantP1 )
        pine_P1_2:scale(2, 2.95)
        pine_P1_2:removeEventListener( "tap", tintPlantP1 )
        pine_P1_3:scale(2, 2.95)
        pine_P1_3:removeEventListener( "tap", tintPlantP1 )
        pine_P1_4:scale(2, 2.95)
        pine_P1_4:removeEventListener( "tap", tintPlantP1 )
        pine_P1_5:scale(2, 2.95)
        pine_P1_5:removeEventListener( "tap", tintPlantP1 )
        pine_P1_6:scale(2, 2.95)
        pine_P1_6:removeEventListener( "tap", tintPlantP1 )
        pine_P1_7:scale(2, 2.95)
        pine_P1_7:removeEventListener( "tap", tintPlantP1 )

        ecosystem_P1:insert( P1Pine)

        transition.to( P1Select, { time=500, y=(-3) } )
        toggleVisibility( donebtn_spawnPineP1 )
        toggleVisibility( compostButtonPineP1 )


    end
    donebtn_spawnPineP1:addEventListener( "tap", donebtn_spawn_tapPineP1 )


    -- Done Fern
    local function donebtn_spawn_tapFernP1 ()

        transition.to( P1Colouring, { time=500, y=(120) } )

        clicksound ()
        donesound ()

        FinishedPlantCountP1 = FinishedPlantCountP1 + 1
        FinishedPlantTextP1.text = FinishedPlantCountP1

        SmallPlantCountP1 = SmallPlantCountP1 + 1

        if SmallPlantCountP1 == 1 then

         toggleVisibility( btn_spawnPalmP1 )
        end  

        if LargePlantCountP1 ==3 and FinishedPlantCountP1 >=6  then
            GoToEcosystemP1()
        end 

        transition.to(P1Fern, {
            x= math.random(-200, 600 ),
            y= math.random(-790, -785),
            time=1000})
        fern_P1:scale(1.35, 1.35)
        fern_P1:removeEventListener( "tap", tintPlantP1 )
        fern_P1_2:scale(1.35, 1.35)
        fern_P1_2:removeEventListener( "tap", tintPlantP1 )
        fern_P1_3:scale(1.35, 1.35)
        fern_P1_3:removeEventListener( "tap", tintPlantP1 )
        fern_P1_4:scale(1.35, 1.35)
        fern_P1_4:removeEventListener( "tap", tintPlantP1 )

        ecosystem_P1:insert( P1Fern )

        transition.to( P1Select, { time=500, y=(-3) } )
        toggleVisibility( donebtn_spawnFernP1 )
        toggleVisibility( compostButtonFernP1 )


        if FinishedPlantCountP1 == 1 then
            local SensorP1 = display.newCircle( 500, 1500, 100 )
            SensorP1.strokeWidth = 3
            SensorP1:setStrokeColor( 0.1, 0.4, 0.2 )
            SensorP1:setFillColor( 0.1, 0.4, 0.2 )
            physics.addBody(SensorP1, "Dynamic", {density=5, friction=5, radius=1})
            physics.setGravity(0,0)
            SensorP1.myName = "FinishedPlant"
            physics.pause( SensorP1 )
            SensorP1.collision = DinoPlantCollision
            SensorP1:addEventListener( "collision", SensorP1 )
            ecosystem_P1:insert( SensorP1 )
            toggleVisibility( SensorP1 )
            
        end

    end
    donebtn_spawnFernP1:addEventListener( "tap", donebtn_spawn_tapFernP1 )

    -----------------------------------
    -- Functions for compost buttons
    -----------------------------------

    local function CompostP1Flax ()
        clicksound ()
        display.remove( P1Flax )
        transition.to( P1Colouring, { time=500, y=(120) } )
        transition.to( P1Select, { time=500, y=(-3) } )
        toggleVisibility( donebtn_spawnFlaxP1 )
        toggleVisibility( compostButtonFlaxP1 )
    end
    compostButtonFlaxP1:addEventListener( "tap", CompostP1Flax )

    local function CompostP1Palm ()
        clicksound ()
        display.remove( P1Palm )
        transition.to( P1Colouring, { time=500, y=(120) } )
        transition.to( P1Select, { time=500, y=(-3) } )
        toggleVisibility( donebtn_spawnPalmP1 )
        toggleVisibility( compostButtonPalmP1 )
    end
    compostButtonPalmP1:addEventListener( "tap", CompostP1Palm )

    local function CompostP1Pine ()
        clicksound ()
        display.remove( P1Pine )
        transition.to( P1Colouring, { time=500, y=(120) } )
        transition.to( P1Select, { time=500, y=(-3) } )
        toggleVisibility( donebtn_spawnPineP1 )
        toggleVisibility( compostButtonPineP1 )
    end
    compostButtonPineP1:addEventListener( "tap", CompostP1Pine )

    local function CompostP1Fern ()
        clicksound ()
        display.remove( P1Fern )
        transition.to( P1Colouring, { time=500, y=(120) } )
        transition.to( P1Select, { time=500, y=(-3) } )
        toggleVisibility( donebtn_spawnFernP1 )
        toggleVisibility( compostButtonFernP1 )
    end
    compostButtonFernP1:addEventListener( "tap", CompostP1Fern )

   -------------------------------------
   -- Functions for palette selection
   -------------------------------------

    function chooseNormalP1 ()
        clicksound ()
        if P1normalPalette.isVisible == true then
            do return end
        else
           toggleVisibility( P1rainbowPalette )
           toggleVisibility( P1normalPalette )
        end
    end
    P1NormalSelect:addEventListener( "tap", chooseNormalP1 )

    function chooseRainbowP1 ()
        clicksound ()
        if P1rainbowPalette.isVisible == true then
            do return end
        else
           toggleVisibility( P1rainbowPalette )
           toggleVisibility( P1normalPalette )
        end
    end
    P1RainbowSelect:addEventListener( "tap", chooseRainbowP1 )

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
