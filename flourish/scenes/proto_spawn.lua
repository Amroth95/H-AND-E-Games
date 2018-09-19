local composer = require( "composer" )
local utilities = require( "libraries.proto_utilities" )
local backgroundComponents = require( "libraries.background_setup" )
local backgroundAmbient = require( "libraries.background_ambience" )
local soundEffects = require( "libraries.sound_functions" )
local playerOne = require( "libraries.playerOne_utilities" )
local playerTwo = require( "libraries.playerTwo_utilities" )

local scene = composer.newScene()

local physics = require( "physics" )

-- -----------------------------------------------------------------------------------
-- Code outside of the scene event functions below will only be executed ONCE unless
-- the scene is removed entirely (not recycled) via "composer.removeScene()"
-- -----------------------------------------------------------------------------------

clouds ()
birds ()

--------------------------------------------------------------------------------------
-- Scene event functions
-- -----------------------------------------------------------------------------------

-- create()
function scene:create( event )

    local sceneGroup = self.view
    -- Code here runs when the scene is first created but has not yet appeared on screen
    physics.start()

    butterfly1 ()

    ----------------------
    -- Ecosystem set up
    ----------------------

    ecosystem_P1 = display.newGroup()
    sceneGroup:insert( ecosystem_P1 )
    ecosystem_P1:toBack(sceneGroup)

    ecosystem_P2 = display.newGroup()
    sceneGroup:insert( ecosystem_P2 )
    ecosystem_P2:toBack(sceneGroup)

    ---------------------------------------------------------------------------------------------------------
    -- Set up for dinosaur animations
    ---------------------------------------------------------------------------------------------------------

    local DinosheetData1 = { width =319.49, height =397, numFrames=37, sheetContentWidth=11830, sheetContentHeight=397 } 
    local DinoImageSheet1 = graphics.newImageSheet("images/sprite sheet/Walk Test4.png", DinosheetData1)

    local DinosheetData2 = { width =319.49, height =397, numFrames=37, sheetContentWidth=11830, sheetContentHeight=397 } 
    local DinoImageSheet2 = graphics.newImageSheet("images/sprite sheet/Idle Test2.png", DinosheetData2)

    local DinosheetData3 = { width =319.49, height =397, numFrames=37, sheetContentWidth=11830, sheetContentHeight=397 } 
    local DinoImageSheet3 = graphics.newImageSheet("images/sprite sheet/Eat Test2.png", DinosheetData3)

    local DinosheetData4 = { width =319.49, height =397, numFrames=37, sheetContentWidth=11830, sheetContentHeight=397 } 
    local DinoImageSheet4 = graphics.newImageSheet("images/sprite sheet/Stand Test2.png", DinosheetData4)

    local sequenceDinoData = {
    {name="normalWalk", sheet=DinoImageSheet1, frames={ 37, 36, 35, 34, 33, 32, 31, 30, 29, 28, 27, 26, 25, 24, 23, 22, 21, 20, 19, 18, 17, 16, 15, 14, 13, 12, 11, 10, 9, 8, 7, 6, 5, 4, 3, 2, 1, }, time=1500},
    {name="normalIdle", sheet=DinoImageSheet2, frames={ 37, 36, 35, 34, 33, 32, 31, 30, 29, 28, 27, 26, 25, 24, 23, 22, 21, 20, 19, 18, 17, 16, 15, 14, 13, 12, 11, 10, 9, 8, 7, 6, 5, 4, 3, 2, 1, }, time=2000},
    {name="normalStand", sheet=DinoImageSheet4, frames={ 37, 36, 35, 34, 33, 32, 31, 30, 29, 28, 27, 26, 25, 24, 23, 22, 21, 20, 19, 18, 17, 16, 15, 14, 13, 12, 11, 10, 9, 8, 7, 6, 5, 4, 3, 2, 1, }, time=2000},
    {name="normalEat", sheet=DinoImageSheet3, frames={ 37, 36, 35, 34, 33, 32, 31, 30, 29, 28, 27, 26, 25, 24, 23, 22, 21, 20, 19, 18, 17, 16, 15, 14, 13, 12, 11, 10, 9, 8, 7, 6, 5, 4, 3, 2, 1, }, time=2000, loopCount=0}
    }

    ---------------------------------------------------------------------------------------------------------------
    -- Dino creation and placement
    ---------------------------------------------------------------------------------------------------------------
    local Dino = display.newSprite(DinoImageSheet1, sequenceDinoData)
    local Dinoscale = 5
    Dino:scale(Dinoscale, Dinoscale)
    Dino:play()

    Dino.x = display.contentCenterX+1100
    Dino.y = display.contentCenterY+420
    physics.addBody(Dino, {density=5000, friction=5000, radius=100})
    physics.setGravity(0,0)
    Dino.myName = "Dino"

    sceneGroup:insert( Dino )
    physics.start( Dino )

    ---------------------------------------------------------------------------------------------------------
    -- move the dino left
    ---------------------------------------------------------------------------------------------------------
    function goLeft()
        if Dino == nil then
            do return end
        else
            Dino.xScale = 5
            Dino:setSequence( "normalWalk" )
            Dino:play()
        end

        local sqCenterX, sqCenterY = Dino:localToContent( 0, 0 )
        print( "Dino position in screen coordinates: ", sqCenterX, sqCenterY )

      transition.to( Dino, { time=3000, x=sqCenterX-800} )

      local rightsecondsTillcomplete = 12

        local function LeftTimer( event )

         -- Decrement the number of seconds
         rightsecondsTillcomplete = rightsecondsTillcomplete - 1

         -- Time is tracked in seconds; convert it to minutes and seconds
         local minutes = math.floor( rightsecondsTillcomplete / 12 )
         local seconds = rightsecondsTillcomplete % 12

         Lefttimeup ()
         IdleTrigger()

        end

      gorighttimer = timer.performWithDelay( 1000, LeftTimer, rightsecondsTillcomplete )

      function Lefttimeup ()
        if rightsecondsTillcomplete <= 0
           then
             goRight()
           end
        end

        function IdleTrigger()
            if Dino == nil then
                do return end
            else
                if rightsecondsTillcomplete == 9
                then
                  Dino:setSequence( "normalIdle" )
                  Dino:play()
                end
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
            Dino.xScale = -5
            Dino:setSequence( "normalWalk" )
            Dino:play()
        end

        local sqCenterX, sqCenterY = Dino:localToContent( 0, 0 )
        print( "Dino position in screen coordinates: ", sqCenterX, sqCenterY )

      transition.to( Dino, { time=3000, x=sqCenterX+800 } )

      local rightsecondsTillcomplete = 12

        local function RightTimer( event )

         -- Decrement the number of seconds
         rightsecondsTillcomplete = rightsecondsTillcomplete - 1

         -- Time is tracked in seconds; convert it to minutes and seconds
         local minutes = math.floor( rightsecondsTillcomplete / 12 )
         local seconds = rightsecondsTillcomplete % 12

         Righttimeup ()
         IdleTrigger()

        end

      gorighttimer = timer.performWithDelay( 1000, RightTimer, rightsecondsTillcomplete )

       function Righttimeup ()
          if rightsecondsTillcomplete <= 0
            then
              goLeft()
            end
        end

        function IdleTrigger()
            if Dino == nil then
                do return end
            else
                if rightsecondsTillcomplete == 9
                then
                  Dino:setSequence( "normalIdle" )
                  Dino:play()
                end
            end
        end

    end

    ----------------------------------------------------------------------
    -- function for stoping the dino and making it eat
    ----------------------------------------------------------------------
    function DinoEat ()
      transition.pause(Dino)
      Dino:setSequence( "normalEat" )
      Dino:play()
      
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
                  physics.start( Dino )
                  Dino:setSequence( "normalWalk" )
                  Dino:play()
                  timer.cancel( eatingtimer )
                    if Dino.xScale == 5 then
                     goLeft()
                    end
                    if Dino.xScale == -5 then
                     goRight()
                    end  
                end
            end
        end
    end

    ----------------------------------------------------------------------
    -- functions for dino rearing up
    ----------------------------------------------------------------------

    function DinoRear ()
        if Dino == nil then
            do return end
        else
         transition.cancel( Dino )
         timer.cancel( gorighttimer )
         Dino:setSequence( "normalStand" )
         Dino:play()
        end
        
        local Reartimeseconds = 2
  
        local function RearTimer( event )
  
            -- Decrement the number of seconds
            Reartimeseconds = Reartimeseconds - 1
  
            -- Time is tracked in seconds; convert it to minutes and seconds
            local minutes = math.floor( Reartimeseconds / 2 )
            local seconds = Reartimeseconds % 2
  
            Reartimeup ()
  
        end
  
        Rearingtimer = timer.performWithDelay( 1000, RearTimer, Reartimeseconds )
  
        function Reartimeup ()
            if Dino == nil then
                do return end
            else
                if Reartimeseconds <= 0 then    
                  Dino:setSequence( "normalIdle" )
                  Dino:play()
                  timer.cancel( Rearingtimer )
                    if Dino.xScale == 5 then
                     goLeft()
                    end
                    if Dino.xScale == -5 then
                      goRight()
                    end   
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

    -- Player One
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

    -- Player Two
    local function btn_swatch_tapP2 ( event, color )
        proto_rectP2:setFillColor(unpack(event.target.color))
        proto_rectP2.color = event.target.color
        print(unpack(proto_rectP2.color))
    
        local Paintselect = audio.loadSound( "sounds/buttons/Paint Select.mp3" )
  
        local Paintselectchannel = audio.play( Paintselect, { channel=2, loops=0 } )
  
    end
  
    local function tintPlantP2 ( event )
        event.target:setFillColor(unpack(proto_rectP2.color))
  
        local Paintplant = audio.loadSound( "sounds/buttons/Paint Plant.mp3" )
  
        local Paintplantchannel = audio.play( Paintplant, { channel=2, loops=0 } )
  
    end

    --------------------------------------------------------------------------
    -- Counts the number of finished plants (Text won't be in the final game)
    --------------------------------------------------------------------------

    -- Player One
    local FinishedPlantCountP1 = 0

    local FinishedPlantTextP1 = display.newText( FinishedPlantCountP1, display.contentCenterX, 20, native.systemFont, 40 )
    FinishedPlantTextP1:setFillColor( 0, 0, 0 )
    sceneGroup:insert( FinishedPlantTextP1 )

    local SmallPlantCountP1 = 0
    local MediumPlantCountP1 = 0
    local LargePlantCountP1 = 0

    --Player Two
    local FinishedPlantCountP2 = 0

    local FinishedPlantTextP2 = display.newText( FinishedPlantCountP1, display.contentCenterX, 20, native.systemFont, 40 )
    FinishedPlantTextP1:setFillColor( 0, 0, 0 )
    sceneGroup:insert( FinishedPlantTextP1 )

    local SmallPlantCountP2 = 0
    local MediumPlantCountP2 = 0
    local LargePlantCountP2 = 0

    -----------------------------------------------
    -- creates timer and trigger for splashscreen
    -----------------------------------------------

    local secondsLeft = 300  -- 10 minutes = 600 seconds

    local function updateTime( event )

      -- Decrement the number of seconds
      secondsLeft = secondsLeft - 1

      -- Time is tracked in seconds; convert it to minutes and seconds
      local minutes = math.floor( secondsLeft / 300 )
      local seconds = secondsLeft % 300

      timeup ()

    end

    local countDownTimer = timer.performWithDelay( 1000, updateTime, secondsLeft )
    
    local function resetTimer()
      timer.cancel(countDownTimer)
      secondsLeft = 300
      countDownTimer = timer.performWithDelay( 1000, updateTime, secondsLeft )
    end

    -- Resets Timer
    function timeup ()

        local splashoptions = {
            effect = "fade",
            time = 600
        }
   
        if secondsLeft <= 0
            then composer.gotoScene( "scenes..splashscreen", splashoptions)
            scenechange ()
            Dino = nil
        end

    end

    function scenechange ()

      local secondsTillchange = 1  -- 10 minutes = 600 seconds

        local function updateTimeForScenechange( event )

          -- Decrement the number of seconds
          secondsTillchange = secondsTillchange - 1

          -- Time is tracked in seconds; convert it to minutes and seconds
          local minutes = math.floor( secondsTillchange / 1 )
          local seconds = secondsLeft % 1

          Nextscene ()
        end

      SceneChangeTimer = timer.performWithDelay( 600, updateTimeForScenechange, secondsTillchange )

       function Nextscene()
            if secondsTillchange <= 0 then
              composer.removeScene( "scenes..proto_spawn")
            end
        end
    end


    ---------------------------------------------------------------------------
    -- Functions for handling ecosystem detection and reseting during eating
    ---------------------------------------------------------------------------

   -- Player One
   local function GoToEcosystemP1 ()
      transition.cancel( Dino )
      timer.cancel( gorighttimer )
      physics.pause( Dino )
      Dino:setSequence( "normalWalk" )
      Dino:play()
      transition.to( Dino, { time=2000, x=500, y=1500 } )
       if Dino.x >= 500 then
         print("Moving left")
         Dino.xScale = 5
       elseif Dino.x <= 500 then
         print("Moving right")
         Dino.xScale = -5     
       end

        if btn_spawnPalmP1.isVisible == false then
          do return end
        else
          toggleVisibility( btn_spawnPalmP1 )
        end

        if btn_spawnPineP1.isVisible == false then
          do return end
        else
         toggleVisibility( btn_spawnPineP1 )
        end
        
        local TimeTillEat1 = 2  -- 10 minutes = 600 seconds

        function updateTimeTillEat1( event )

         -- Decrement the number of seconds
         TimeTillEat1 = TimeTillEat1 - 1

         -- Time is tracked in seconds; convert it to minutes and seconds
         local minutes = math.floor( TimeTillEat1 / 2 )
         local seconds = TimeTillEat1 % 2

         TimeToEatEcosystem1 ()
        end

       ReadyToEat1Timer = timer.performWithDelay( 1000, updateTimeTillEat1, TimeTillEat1 )

     function TimeToEatEcosystem1()
          if TimeTillEat1 <= 0 then
           -- timer.cancel( ReadyToEat1Timer )
            EatEcosystem1 ()      
          end
      end
    end

    function EatEcosystem1 ()
        DinoEat ()
              
        eatnoise ()

        transition.fadeOut( ecosystem_P1, {time = 1000, onComplete = display.remove} )
        print("Yummy!")

        FinishedPlantCountP1 = 0
        FinishedPlantTextP1.text = FinishedPlantCountP1
        SmallPlantCountP1 = 0
        MediumPlantCountP1 = 0
        LargePlantCountP1 = 0
        ecosystem_P1 = display.newGroup()
        sceneGroup:insert( ecosystem_P1 )
        ecosystem_P1:toBack(sceneGroup)
        print("New Ecosystem Ready")
    end

    -- Player Two
    local function GoToEcosystemP2 ()
        transition.cancel( Dino )
        timer.cancel( gorighttimer )
        physics.pause( Dino )
        Dino:setSequence( "normalWalk" )
        Dino:play()
        transition.to( Dino, { time=2000, x=1300, y=1500 } )
        if Dino.x >= 1300 then
            print("Moving left")
            Dino.xScale = 5
        elseif Dino.x <= 1300 then
            print("Moving right")
            Dino.xScale = -5     
        end
  
        if btn_spawnKaoriP2.isVisible == false then
            do return end
        else
            toggleVisibility( btn_spawnKaoriP2 )
        end
  
        if btn_spawnMagnoliaP2.isVisible == false then
            do return end
        else
           toggleVisibility( btn_spawnMagnoliaP2 )
        end
          
        local TimeTillEat2 = 2  -- 10 minutes = 600 seconds
  
        function updateTimeTillEat2( event )
  
           -- Decrement the number of seconds
           TimeTillEat2 = TimeTillEat2 - 1
  
           -- Time is tracked in seconds; convert it to minutes and seconds
           local minutes = math.floor( TimeTillEat2 / 2 )
           local seconds = TimeTillEat2 % 2
  
           TimeToEatEcosystem2 ()
        end
  
        ReadyToEat2Timer = timer.performWithDelay( 1000, updateTimeTillEat2, TimeTillEat2 )
  
       function TimeToEatEcosystem2()
            if TimeTillEat2 <= 0 then
              --timer.cancel( ReadyToEat2Timer )
              EatEcosystem2 ()      
            end
        end
    end

    function EatEcosystem2 ()
        DinoEat ()
              
        eatnoise ()

        transition.fadeOut( ecosystem_P2, {time = 1000, onComplete = display.remove} )
        print("Yummy!")

        FinishedPlantCountP2 = 0
        FinishedPlantTextP2.text = FinishedPlantCountP2
        SmallPlantCountP2 = 0
        MediumPlantCountP2 = 0
        LargePlantCountP2 = 0
        ecosystem_P2 = display.newGroup()
        sceneGroup:insert( ecosystem_P2 )
        ecosystem_P2:toBack(sceneGroup)
        print("New Ecosystem Ready")
    end

   --------------------------------------
   -- Handling for Butterfly collisions
   --------------------------------------
   local function DinoCollision( self, event )
       if event.phase == "began" then
            if event.target.myName == "Dino" and event.other.myName == "Butterflies!" then
             transition.cancel( Dino )
             DinoRear ()
             print("Yay!")
            end 
        end
    end

    Dino.collision = DinoCollision
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

    -- Palette For Player 1
    colouringSetupP2()
    btn_new5:addEventListener( "tap", btn_swatch_tapP2 )
    btn_new6:addEventListener( "tap", btn_swatch_tapP2 )
    btn_new7:addEventListener( "tap", btn_swatch_tapP2 )
    btn_new8:addEventListener( "tap", btn_swatch_tapP2 )
    btn_rainbow5:addEventListener( "tap", btn_swatch_tapP2 )
    btn_rainbow6:addEventListener( "tap", btn_swatch_tapP2 )
    btn_rainbow7:addEventListener( "tap", btn_swatch_tapP2 )
    btn_rainbow8:addEventListener( "tap", btn_swatch_tapP2 )
    sceneGroup:insert( P2Colouring )

    ------------------------------------
    -- Color indicators
    ------------------------------------

    -- Player One
    BrushP1 = display.newImageRect( "images/paintbuttons/Colour Indicator/Brush1.png", 180, 180)
    BrushP1.x = display.contentCenterX-1780
    BrushP1.y = display.contentCenterY+1100
    proto_rectP1 = display.newImageRect( "images/paintbuttons/Colour Indicator/Brush2.png", 180, 180)
    proto_rectP1.x = display.contentCenterX-1780
    proto_rectP1.y = display.contentCenterY+1100
    proto_rectP1:setFillColor(0.3, 0.5, 0.3)
    proto_rectP1.color = {0.3, 0.5, 0.3}
    P1Colouring:insert( proto_rectP1 )
    P1Colouring:insert( BrushP1 )

    -- Player Two
    BrushP2 = display.newImageRect( "images/paintbuttons/Colour Indicator/Brush1.png", 180, 180)
    BrushP2.x = display.contentCenterX-840
    BrushP2.y = display.contentCenterY+1100
    proto_rectP2 = display.newImageRect( "images/paintbuttons/Colour Indicator/Brush2.png", 180, 180)
    proto_rectP2.x = display.contentCenterX-840
    proto_rectP2.y = display.contentCenterY+1100
    proto_rectP2:setFillColor(0.3, 0.5, 0.3)
    proto_rectP2.color = {0.3, 0.5, 0.3}
    P2Colouring:insert( proto_rectP2 )
    P2Colouring:insert( BrushP2 )
    
    ---------------------------------------
    --Creates Buttons for spawning Plants
    ---------------------------------------
    
    -- Buttons for Player 1
    selectionSetupP1 ()
    sceneGroup:insert( P1Select )

    -- Buttons for Player 2
    selectionSetupP2 ()
    sceneGroup:insert( P2Select )

    ---------------------------------------
    --Creates Spawn functions for buttons
    ---------------------------------------

    ----------------------
    -- Player One Spawns
    ----------------------

    -- Spawn Flax
    local function btn_spawn_tapFlax_P1 ()
      toggleVisibility( donebtn_spawnFlaxP1 )
      toggleVisibility( compostButtonFlaxP1 )

      clicksound ()
      resetTimer()
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
      resetTimer()
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
        resetTimer()
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
        resetTimer()
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

    ----------------------
    -- Player Two Spawns
    ----------------------

    -- Spawn Horsetail
    local function btn_spawn_tapHorsetail_P2 ()
        toggleVisibility( donebtn_spawnHorsetailP2 )
        toggleVisibility( compostButtonHorsetailP2 )
          
        clicksound ()
        resetTimer()
        createHorsetailP2 ()
          
        Horsetail_P2:addEventListener( "tap", tintPlantP2 )
        Horsetail_P2_2:addEventListener( "tap", tintPlantP2 )
        Horsetail_P2_3:addEventListener( "tap", tintPlantP2 )
        Horsetail_P2_4:addEventListener( "tap", tintPlantP2 )
        Horsetail_P2_5:addEventListener( "tap", tintPlantP2 )
          
        P2Colouring:insert( P2Horsetail )
          
        transition.to( P2Select, { time=500, y=(800) } )
          
        transition.to( P2Colouring, { time=600, y=(-600) } )
          
          
    end
    btn_spawnHorsetailP2:addEventListener( "tap", btn_spawn_tapHorsetail_P2 )

    -- Spawn Kaori
    local function btn_spawn_tapKaori_P2 ()
        toggleVisibility( donebtn_spawnKaoriP2 )
        toggleVisibility( compostButtonKaoriP2 )
        
        clicksound ()
        resetTimer()
        createKaoriP2 ()
        
        Kaori_P2:addEventListener( "tap", tintPlantP2 )
        Kaori_P2_2:addEventListener( "tap", tintPlantP2 )
        Kaori_P2_3:addEventListener( "tap", tintPlantP2 )
        Kaori_P2_4:addEventListener( "tap", tintPlantP2 )
        Kaori_P2_5:addEventListener( "tap", tintPlantP2 )
        Kaori_P2_6:addEventListener( "tap", tintPlantP2 )
        Kaori_P2_7:addEventListener( "tap", tintPlantP2 )
        Kaori_P2_8:addEventListener( "tap", tintPlantP2 )
        
        P2Colouring:insert( P2Kaori )
        
        transition.to( P2Select, { time=500, y=(800) } )
        
        transition.to( P2Colouring, { time=600, y=(-600) } )
        
    end
    btn_spawnKaoriP2:addEventListener( "tap", btn_spawn_tapKaori_P2 )

    -- Spawn Magnolia
    local function btn_spawn_tapMagnolia_P2 ()
        toggleVisibility( donebtn_spawnMagnoliaP2 )
        toggleVisibility( compostButtonMagnoliaP2 )
    
        clicksound ()
        resetTimer()
        createMagnoliaP2 ()
    
        Magnolia_P2:addEventListener( "tap", tintPlantP2 )
        Magnolia_P2_2:addEventListener( "tap", tintPlantP2 )
        Magnolia_P2_3:addEventListener( "tap", tintPlantP2 )
        Magnolia_P2_4:addEventListener( "tap", tintPlantP2 )
        Magnolia_P2_5:addEventListener( "tap", tintPlantP2 )
        Magnolia_P2_6:addEventListener( "tap", tintPlantP2 )
        Magnolia_P2_7:addEventListener( "tap", tintPlantP2 )
    
        P2Colouring:insert( P2Magnolia )
    
        transition.to( P2Select, { time=500, y=(800) } )
    
        transition.to( P2Colouring, { time=600, y=(-600) } )
    
    end
    btn_spawnMagnoliaP2:addEventListener( "tap", btn_spawn_tapMagnolia_P2 )

    ------------------------------------------------------------------------------
    -- sends plant to background, makes them non-interactable (WORK IN PROGRESS)
    ------------------------------------------------------------------------------

    ------------------------------
    -- Player One done functions
    ------------------------------

    -- Done Flax
    local function donebtn_spawn_tapFlaxP1 ()

        transition.to( P1Colouring, { time=500, y=(120) } )

        clicksound ()
        donesound ()
        resetTimer()

        FinishedPlantCountP1 = FinishedPlantCountP1 + 1
        FinishedPlantTextP1.text = FinishedPlantCountP1

        SmallPlantCountP1 = SmallPlantCountP1 + 1

        if SmallPlantCountP1 == 1 then

         toggleVisibility( btn_spawnPalmP1 )
        end
        
        if LargePlantCountP1 >=3 and FinishedPlantCountP1 >=6  then
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

    end
    donebtn_spawnFlaxP1:addEventListener( "tap", donebtn_spawn_tapFlaxP1 )


    -- Done Palm
    local function donebtn_spawn_tapPalmP1 ()

        transition.to( P1Colouring, { time=500, y=(120) } )

        clicksound ()
        donesound ()
        resetTimer()

        FinishedPlantCountP1 = FinishedPlantCountP1 + 1
        FinishedPlantTextP1.text = FinishedPlantCountP1

        MediumPlantCountP1 = MediumPlantCountP1 + 1

        if MediumPlantCountP1 == 2 then

         toggleVisibility( btn_spawnPineP1 )
        end  

        if LargePlantCountP1 >=3 and FinishedPlantCountP1 >=6  then
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
        resetTimer()

        FinishedPlantCountP1 = FinishedPlantCountP1 + 1
        FinishedPlantTextP1.text = FinishedPlantCountP1

        LargePlantCountP1 = LargePlantCountP1 + 1

        if LargePlantCountP1 >=3 and FinishedPlantCountP1 >=6  then
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
        resetTimer()

        FinishedPlantCountP1 = FinishedPlantCountP1 + 1
        FinishedPlantTextP1.text = FinishedPlantCountP1

        SmallPlantCountP1 = SmallPlantCountP1 + 1

        if SmallPlantCountP1 == 1 then

         toggleVisibility( btn_spawnPalmP1 )
        end  

        if LargePlantCountP1 >=3 and FinishedPlantCountP1 >=6  then
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

    end
    donebtn_spawnFernP1:addEventListener( "tap", donebtn_spawn_tapFernP1 )

    ------------------------------
    -- Player Two done functions
    ------------------------------

    -- Done Horsetail
    local function donebtn_spawn_tapHorsetailP2 ()

        transition.to( P2Colouring, { time=500, y=(120) } )
    
        clicksound ()
        donesound ()
        resetTimer()
    
        FinishedPlantCountP2 = FinishedPlantCountP2 + 1
        FinishedPlantTextP2.text = FinishedPlantCountP2
    
        SmallPlantCountP2 = SmallPlantCountP2 + 1
    
        if SmallPlantCountP2 == 1 then
    
            toggleVisibility( btn_spawnKaoriP2 )
        end
            
        if LargePlantCountP2 >=3 and FinishedPlantCountP2 >=6  then
            GoToEcosystemP2()
        end  
    
        transition.to(P2Horsetail, {
            x= math.random(-200, 400 ),
            y= math.random(-790, -785),
            time=1000})
        Horsetail_P2:scale(1.35, 1.35)
        Horsetail_P2:removeEventListener( "tap", tintPlantP2 )
        Horsetail_P2_2:scale(1.35, 1.35)
        Horsetail_P2_2:removeEventListener( "tap", tintPlantP2 )
        Horsetail_P2_3:scale(1.35, 1.35)
        Horsetail_P2_3:removeEventListener( "tap", tintPlantP2 )
        Horsetail_P2_4:scale(1.35, 1.35)
        Horsetail_P2_4:removeEventListener( "tap", tintPlantP2 )
        Horsetail_P2_5:scale(1.35, 1.35)
        Horsetail_P2_5:removeEventListener( "tap", tintPlantP2 )
       
        ecosystem_P2:insert( P2Horsetail )
    
        transition.to( P2Select, { time=500, y=(-3) } )
        toggleVisibility( donebtn_spawnHorsetailP2 )
        toggleVisibility( compostButtonHorsetailP2 )

    end
    donebtn_spawnHorsetailP2:addEventListener( "tap", donebtn_spawn_tapHorsetailP2 )

    -- Done Kaori
    local function donebtn_spawn_tapKaoriP2 ()

        transition.to( P2Colouring, { time=500, y=(120) } )
    
        clicksound ()
        donesound ()
        resetTimer()
    
        FinishedPlantCountP2 = FinishedPlantCountP2 + 1
        FinishedPlantTextP2.text = FinishedPlantCountP2
    
        MediumPlantCountP2 = MediumPlantCountP2 + 1
    
        if MediumPlantCountP2 == 2 then
            toggleVisibility( btn_spawnMagnoliaP2 )
        end  
    
        if LargePlantCountP2 >=3 and FinishedPlantCountP2 >=6  then
            GoToEcosystemP2()
        end 
    
        transition.to(P2Kaori, {
            x= math.random(-300, 500 ),
            y= math.random(-830, -785),
            time=1000})
        Kaori_P2:scale(2.35, 2.35)
        Kaori_P2:removeEventListener( "tap", tintPlantP2 )
        Kaori_P2_2:scale(2.35, 2.35)
        Kaori_P2_2:removeEventListener( "tap", tintPlantP2 )
        Kaori_P2_3:scale(2.35, 2.35)
        Kaori_P2_3:removeEventListener( "tap", tintPlantP2 )
        Kaori_P2_4:scale(2.35, 2.35)
        Kaori_P2_4:removeEventListener( "tap", tintPlantP2 )
        Kaori_P2_5:scale(2.35, 2.35)
        Kaori_P2_5:removeEventListener( "tap", tintPlantP2 )
        Kaori_P2_6:scale(2.35, 2.35)
        Kaori_P2_6:removeEventListener( "tap", tintPlantP2 )
        Kaori_P2_7:scale(2.35, 2.35)
        Kaori_P2_7:removeEventListener( "tap", tintPlantP2 )
        Kaori_P2_8:scale(2.35, 2.35)
        Kaori_P2_8:removeEventListener( "tap", tintPlantP2 )
           
        ecosystem_P2:insert( P2Kaori )
    
        transition.to( P2Select, { time=500, y=(-3) } )
        toggleVisibility( donebtn_spawnKaoriP2 )
        toggleVisibility( compostButtonKaoriP2 )
    
    end
    donebtn_spawnKaoriP2:addEventListener( "tap", donebtn_spawn_tapKaoriP2 )

    -- Done Magnolia
    local function donebtn_spawn_tapMagnoliaP2 ()

        transition.to( P2Colouring, { time=500, y=(120) } )

        clicksound ()
        donesound ()
        resetTimer()

        FinishedPlantCountP2 = FinishedPlantCountP2 + 1
        FinishedPlantTextP2.text = FinishedPlantCountP2

        LargePlantCountP2 = LargePlantCountP2 + 1

        if LargePlantCountP2 >=3 and FinishedPlantCountP2 >=6  then
            GoToEcosystemP2()
        end 

        transition.to(P2Magnolia, {
            x= math.random(-300, 500 ),
            y= math.random(-1080, -990),
            time=1000})
        Magnolia_P2:scale(2, 2.95)
        Magnolia_P2:removeEventListener( "tap", tintPlantP2 )
        Magnolia_P2_2:scale(2, 2.95)
        Magnolia_P2_2:removeEventListener( "tap", tintPlantP2 )
        Magnolia_P2_3:scale(2, 2.95)
        Magnolia_P2_3:removeEventListener( "tap", tintPlantP2 )
        Magnolia_P2_4:scale(2, 2.95)
        Magnolia_P2_4:removeEventListener( "tap", tintPlantP2 )
        Magnolia_P2_5:scale(2, 2.95)
        Magnolia_P2_5:removeEventListener( "tap", tintPlantP2 )
        Magnolia_P2_6:scale(2, 2.95)
        Magnolia_P2_6:removeEventListener( "tap", tintPlantP2 )
        Magnolia_P2_7:scale(2, 2.95)
        Magnolia_P2_7:removeEventListener( "tap", tintPlantP2 )

        ecosystem_P2:insert( P2Magnolia)

        transition.to( P2Select, { time=500, y=(-3) } )
        toggleVisibility( donebtn_spawnMagnoliaP2 )
        toggleVisibility( compostButtonMagnoliaP2 )

    end
    donebtn_spawnMagnoliaP2:addEventListener( "tap", donebtn_spawn_tapMagnoliaP2 )

    -----------------------------------
    -- Functions for compost buttons
    -----------------------------------

    -----------------------
    -- Player One Compost
    -----------------------
    local function CompostP1Flax ()
        resetTimer()
        clicksound ()
        display.remove( P1Flax )
        transition.to( P1Colouring, { time=500, y=(120) } )
        transition.to( P1Select, { time=500, y=(-3) } )
        toggleVisibility( donebtn_spawnFlaxP1 )
        toggleVisibility( compostButtonFlaxP1 )
    end
    compostButtonFlaxP1:addEventListener( "tap", CompostP1Flax )

    local function CompostP1Palm ()
        resetTimer()
        clicksound ()
        display.remove( P1Palm )
        transition.to( P1Colouring, { time=500, y=(120) } )
        transition.to( P1Select, { time=500, y=(-3) } )
        toggleVisibility( donebtn_spawnPalmP1 )
        toggleVisibility( compostButtonPalmP1 )
    end
    compostButtonPalmP1:addEventListener( "tap", CompostP1Palm )

    local function CompostP1Pine ()
        resetTimer()
        clicksound ()
        display.remove( P1Pine )
        transition.to( P1Colouring, { time=500, y=(120) } )
        transition.to( P1Select, { time=500, y=(-3) } )
        toggleVisibility( donebtn_spawnPineP1 )
        toggleVisibility( compostButtonPineP1 )
    end
    compostButtonPineP1:addEventListener( "tap", CompostP1Pine )

    local function CompostP1Fern ()
        resetTimer()
        clicksound ()
        display.remove( P1Fern )
        transition.to( P1Colouring, { time=500, y=(120) } )
        transition.to( P1Select, { time=500, y=(-3) } )
        toggleVisibility( donebtn_spawnFernP1 )
        toggleVisibility( compostButtonFernP1 )
    end
    compostButtonFernP1:addEventListener( "tap", CompostP1Fern )

    -----------------------
    -- Player two Compost
    -----------------------
    local function CompostP2Horsetail ()
        resetTimer()
        clicksound ()
        display.remove( P2Horsetail )
        transition.to( P2Colouring, { time=500, y=(120) } )
        transition.to( P2Select, { time=500, y=(-3) } )
        toggleVisibility( donebtn_spawnHorsetailP2 )
        toggleVisibility( compostButtonHorsetailP2 )
    end
    compostButtonHorsetailP2:addEventListener( "tap", CompostP2Horsetail )

    local function CompostP2Kaori ()
        resetTimer()
        clicksound ()
        display.remove( P2Kaori )
        transition.to( P2Colouring, { time=500, y=(120) } )
        transition.to( P2Select, { time=500, y=(-3) } )
        toggleVisibility( donebtn_spawnKaoriP2 )
        toggleVisibility( compostButtonKaoriP2 )
    end
    compostButtonKaoriP2:addEventListener( "tap", CompostP2Kaori )

    local function CompostP2Magnolia ()
        resetTimer()
        clicksound ()
        display.remove( P2Magnolia )
        transition.to( P2Colouring, { time=500, y=(120) } )
        transition.to( P2Select, { time=500, y=(-3) } )
        toggleVisibility( donebtn_spawnMagnoliaP2 )
        toggleVisibility( compostButtonMagnoliaP2 )
    end
    compostButtonMagnoliaP2:addEventListener( "tap", CompostP2Magnolia )

   -------------------------------------
   -- Functions for palette selection
   -------------------------------------
    
    ---------------
    -- Player One
    ---------------
    function chooseNormalP1 ()
        clicksound ()
        resetTimer()
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
        resetTimer()
        if P1rainbowPalette.isVisible == true then
            do return end
        else
           toggleVisibility( P1rainbowPalette )
           toggleVisibility( P1normalPalette )
        end
    end
    P1RainbowSelect:addEventListener( "tap", chooseRainbowP1 )

    ---------------
    -- Player Two
    ---------------
    function chooseNormalP2 ()
        clicksound ()
        resetTimer()
        if P2normalPalette.isVisible == true then
            do return end
        else
           toggleVisibility( P2rainbowPalette )
           toggleVisibility( P2normalPalette )
        end
    end
    P2NormalSelect:addEventListener( "tap", chooseNormalP2 )

    function chooseRainbowP2 ()
        clicksound ()
        resetTimer()
        if P2rainbowPalette.isVisible == true then
            do return end
        else
           toggleVisibility( P2rainbowPalette )
           toggleVisibility( P2normalPalette )
        end
    end
    P2RainbowSelect:addEventListener( "tap", chooseRainbowP2 )

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
