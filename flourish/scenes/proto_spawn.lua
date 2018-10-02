local composer = require( "composer" )
local utilities = require( "libraries.proto_utilities" )
local backgroundComponents = require( "libraries.background_setup" )
local backgroundAmbient = require( "libraries.background_ambience" )
local soundEffects = require( "libraries.sound_functions" )
local playerOne = require( "libraries.playerOne_utilities" )
local playerTwo = require( "libraries.playerTwo_utilities" )
local playerThree = require( "libraries.playerThree_utilities" )
local playerFour = require( "libraries.playerFour_utilities" )

local scene = composer.newScene()

local physics = require( "physics" )

-- -----------------------------------------------------------------------------------
-- Code outside of the scene event functions below will only be executed ONCE unless
-- the scene is removed entirely (not recycled) via "composer.removeScene()"
-- -----------------------------------------------------------------------------------

--------------------------------------------------------------------------------------
-- Scene event functions
-- -----------------------------------------------------------------------------------

-- create()
function scene:create( event )

    local sceneGroup = self.view
    -- Code here runs when the scene is first created but has not yet appeared on screen
    physics.start()
    
    ----------------------
    -- Ecosystem set up
    ----------------------

    ecosystem_P1 = display.newGroup()
    sceneGroup:insert( ecosystem_P1 )
    ecosystem_P1:toBack(sceneGroup)

    ecosystem_P2 = display.newGroup()
    sceneGroup:insert( ecosystem_P2 )
    ecosystem_P2:toBack(sceneGroup)

    ecosystem_P3 = display.newGroup()
    sceneGroup:insert( ecosystem_P3 )
    ecosystem_P3:toBack(sceneGroup)

    ecosystem_P4 = display.newGroup()
    sceneGroup:insert( ecosystem_P4 )
    ecosystem_P4:toBack(sceneGroup)

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

    local DinosheetData5 = { width =319.49, height =397, numFrames=7, sheetContentWidth=2238, sheetContentHeight=397 } 
    local DinoImageSheet5 = graphics.newImageSheet("images/sprite sheet/ReartoRun Test1.png", DinosheetData5)

    local DinosheetData6 = { width =319.49, height =397, numFrames=27, sheetContentWidth=8633, sheetContentHeight=397 } 
    local DinoImageSheet6 = graphics.newImageSheet("images/sprite sheet/Run Test1.png", DinosheetData6)

    local DinosheetData7 = { width =319.49, height =397, numFrames=37, sheetContentWidth=11830, sheetContentHeight=397 } 
    local DinoImageSheet7 = graphics.newImageSheet("images/sprite sheet/Jump Test1.png", DinosheetData7)

    local sequenceDinoData = {
    {name="normalWalk", sheet=DinoImageSheet1, frames={ 37, 36, 35, 34, 33, 32, 31, 30, 29, 28, 27, 26, 25, 24, 23, 22, 21, 20, 19, 18, 17, 16, 15, 14, 13, 12, 11, 10, 9, 8, 7, 6, 5, 4, 3, 2, 1, }, time=1500},
    {name="normalIdle", sheet=DinoImageSheet2, frames={ 37, 36, 35, 34, 33, 32, 31, 30, 29, 28, 27, 26, 25, 24, 23, 22, 21, 20, 19, 18, 17, 16, 15, 14, 13, 12, 11, 10, 9, 8, 7, 6, 5, 4, 3, 2, 1, }, time=2000},
    {name="normalStand", sheet=DinoImageSheet4, frames={ 37, 36, 35, 34, 33, 32, 31, 30, 29, 28, 27, 26, 25, 24, 23, 22, 21, 20, 19, 18, 17, 16, 15, 14, 13, 12, 11, 10, 9, 8, 7, 6, 5, 4, 3, 2, 1, }, time=2000},
    {name="normalEat", sheet=DinoImageSheet3, frames={ 37, 36, 35, 34, 33, 32, 31, 30, 29, 28, 27, 26, 25, 24, 23, 22, 21, 20, 19, 18, 17, 16, 15, 14, 13, 12, 11, 10, 9, 8, 7, 6, 5, 4, 3, 2, 1, }, time=2000, loopCount=0},
    {name="normalJump", sheet=DinoImageSheet7, frames={ 37, 36, 35, 34, 33, 32, 31, 30, 29, 28, 27, 26, 25, 24, 23, 22, 21, 20, 19, 18, 17, 16, 15, 14, 13, 12, 11, 10, 9, 8, 7, 6, 5, 4, 3, 2, 1, }, time=1000},
    {name="normalRun", sheet=DinoImageSheet6, frames={ 27, 26, 25, 24, 23, 22, 21, 20, 19, 18, 17, 16, 15, 14, 13, 12, 11, 10, 9, 8, 7, 6, 5, 4, 3, 2, 1, }, time=1000},
    {name="normalRearUp", sheet=DinoImageSheet5, frames={7, 6, 5, 4, 3, 2, 1, }, time=1000},
    {name="normalRearDown", sheet=DinoImageSheet5, frames={1, 2, 3, 4, 5, 6, 7, }, time=1000}
    }

    ---------------------------------------------------------------------------------------------------------------
    -- Dino creation and placement
    ---------------------------------------------------------------------------------------------------------------
    local Dino = display.newSprite(DinoImageSheet1, sequenceDinoData)
    local Dinoscale = 5
    Dino:scale(Dinoscale, Dinoscale)
    Dino:play()

    Dino.x = display.contentCenterX+1100
    Dino.y = display.contentCenterY+100
    physics.addBody(Dino, {density=5000, friction=5000, radius=100})
    physics.setGravity(0,0)
    Dino.myName = "Dino"

    sceneGroup:insert( Dino )
    physics.start( Dino )

    -- Set up foreground grass
    grass ()
    sceneGroup:insert( backgroundGrassFront )

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
    -- function for making the Dino jump
    ----------------------------------------------------------------------
    function DinoJump ()
      Dino:setSequence( "normalJump" )
      Dino:play()
      
      local Jumptimeseconds = 2

        local function JumpTimer( event )

          -- Decrement the number of seconds
          Jumptimeseconds = Jumptimeseconds - 1

          -- Time is tracked in seconds; convert it to minutes and seconds
          local minutes = math.floor( Jumptimeseconds / 2 )
          local seconds = Jumptimeseconds % 2

          Jumptimeup ()

        end

        Jumpingtimer = timer.performWithDelay( 1000, JumpTimer, Jumptimeseconds )

        function Jumptimeup ()

           if Dino == nil then
              do return end
            else
                if Jumptimeseconds <= 0 then
                  physics.start( Dino )
                  Dino:setSequence( "normalWalk" )
                  Dino:play()
                  timer.cancel( Jumpingtimer )
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
                     DinoJump ()
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

    -- Player Three
    local function btn_swatch_tapP3 ( event, color )
        proto_rectP3:setFillColor(unpack(event.target.color))
        proto_rectP3.color = event.target.color
        print(unpack(proto_rectP3.color))
        
        local Paintselect = audio.loadSound( "sounds/buttons/Paint Select.mp3" )
      
        local Paintselectchannel = audio.play( Paintselect, { channel=2, loops=0 } )
      
    end
      
    local function tintPlantP3 ( event )
        event.target:setFillColor(unpack(proto_rectP3.color))
      
        local Paintplant = audio.loadSound( "sounds/buttons/Paint Plant.mp3" )
      
        local Paintplantchannel = audio.play( Paintplant, { channel=2, loops=0 } )
      
    end

    -- Player Three
    local function btn_swatch_tapP4 ( event, color )
        proto_rectP4:setFillColor(unpack(event.target.color))
        proto_rectP4.color = event.target.color
        print(unpack(proto_rectP4.color))
        
        local Paintselect = audio.loadSound( "sounds/buttons/Paint Select.mp3" )
      
        local Paintselectchannel = audio.play( Paintselect, { channel=2, loops=0 } )
      
    end
      
    local function tintPlantP4 ( event )
        event.target:setFillColor(unpack(proto_rectP4.color))
      
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

    --Player Three
    local FinishedPlantCountP3 = 0

    local FinishedPlantTextP3 = display.newText( FinishedPlantCountP1, display.contentCenterX, 20, native.systemFont, 40 )
    FinishedPlantTextP1:setFillColor( 0, 0, 0 )
    sceneGroup:insert( FinishedPlantTextP1 )
    
    local SmallPlantCountP3 = 0
    local MediumPlantCountP3 = 0
    local LargePlantCountP3 = 0

    --Player Four
    local FinishedPlantCountP4 = 0

    local FinishedPlantTextP4 = display.newText( FinishedPlantCountP1, display.contentCenterX, 20, native.systemFont, 40 )
    FinishedPlantTextP1:setFillColor( 0, 0, 0 )
    sceneGroup:insert( FinishedPlantTextP1 )
    
    local SmallPlantCountP4 = 0
    local MediumPlantCountP4 = 0
    local LargePlantCountP4 = 0

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
            physics.stop()
            timer.cancel( cloudsDuplicationTimer )
            timer.cancel( flyingBirdTimer )
            timer.cancel( ButterflyClocktimer )
            Dino = nil
            P1Select = nil
            P2Select = nil
            P3Select = nil
            P4Select = nil
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
      transition.to( Dino, { time=2000, x=500 } )
        if Dino.x >= 500 then
         print("Moving left")
         Dino.xScale = 5
        elseif Dino.x <= 500 then
         print("Moving right")
         Dino.xScale = -5     
        end

        if P1MediumPlants.isVisible == false then
          do return end
        else
          toggleVisibility( P1MediumPlants )
        end

        if P1LargePlants.isVisible == false then
          do return end
        else
         toggleVisibility( P1LargePlants )
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
        ecosystem_P1:toFront(sceneGroup)
        Dino:toFront(sceneGroup)
        backgroundGrassFront:toFront(sceneGroup)
        P1Colouring:toFront(sceneGroup)
        P1Select:toFront(sceneGroup)
        P2Colouring:toFront(sceneGroup)
        P2Select:toFront(sceneGroup)
        P3Colouring:toFront(sceneGroup)
        P3Select:toFront(sceneGroup)
        P4Colouring:toFront(sceneGroup)
        P4Select:toFront(sceneGroup)
        print("New Ecosystem Ready")
    end

    -- Player Two
    local function GoToEcosystemP2 ()
        transition.cancel( Dino )
        timer.cancel( gorighttimer )
        physics.pause( Dino )
        Dino:setSequence( "normalWalk" )
        Dino:play()
        transition.to( Dino, { time=2000, x=1300 } )
        if Dino.x >= 1300 then
            print("Moving left")
            Dino.xScale = 5
        elseif Dino.x <= 1300 then
            print("Moving right")
            Dino.xScale = -5     
        end
  
        if P2MediumPlants.isVisible == false then
            do return end
        else
            toggleVisibility( P2MediumPlants )
        end
  
        if P2LargePlants.isVisible == false then
            do return end
        else
           toggleVisibility( P2LargePlants )
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
        ecosystem_P2:toFront(sceneGroup)
        Dino:toFront(sceneGroup)
        backgroundGrassFront:toFront(sceneGroup)
        P1Colouring:toFront(sceneGroup)
        P1Select:toFront(sceneGroup)
        P2Colouring:toFront(sceneGroup)
        P2Select:toFront(sceneGroup)
        P3Colouring:toFront(sceneGroup)
        P3Select:toFront(sceneGroup)
        P4Colouring:toFront(sceneGroup)
        P4Select:toFront(sceneGroup)
        print("New Ecosystem Ready")
    end

    -- Player Three
    local function GoToEcosystemP3 ()
        transition.cancel( Dino )
        timer.cancel( gorighttimer )
        physics.pause( Dino )
        Dino:setSequence( "normalWalk" )
        Dino:play()
        transition.to( Dino, { time=2000, x=2500 } )
        if Dino.x >= 2500 then
            print("Moving left")
            Dino.xScale = 5
        elseif Dino.x <= 2500 then
            print("Moving right")
            Dino.xScale = -5     
        end
  
        if P3MediumPlants.isVisible == false then
            do return end
        else
            toggleVisibility( P3MediumPlants )
        end
  
        if P3LargePlants.isVisible == false then
            do return end
        else
           toggleVisibility( P3LargePlants )
        end
          
        local TimeTillEat3 = 2  -- 10 minutes = 600 seconds
  
        function updateTimeTillEat3( event )
  
           -- Decrement the number of seconds
           TimeTillEat3 = TimeTillEat3 - 1
  
           -- Time is tracked in seconds; convert it to minutes and seconds
           local minutes = math.floor( TimeTillEat3 / 2 )
           local seconds = TimeTillEat3 % 2
  
           TimeToEatEcosystem3 ()
        end
  
        ReadyToEat3Timer = timer.performWithDelay( 1000, updateTimeTillEat3, TimeTillEat3 )
  
       function TimeToEatEcosystem3()
            if TimeTillEat3 <= 0 then
              --timer.cancel( ReadyToEat2Timer )
              EatEcosystem3 ()      
            end
        end
    end

    function EatEcosystem3 ()
        DinoEat ()
              
        eatnoise ()

        transition.fadeOut( ecosystem_P3, {time = 1000, onComplete = display.remove} )
        print("Yummy!")

        FinishedPlantCountP3 = 0
        FinishedPlantTextP3.text = FinishedPlantCountP3
        SmallPlantCountP3 = 0
        MediumPlantCountP3 = 0
        LargePlantCountP3 = 0
        ecosystem_P3 = display.newGroup()
        sceneGroup:insert( ecosystem_P3 )
        ecosystem_P3:toFront(sceneGroup)
        Dino:toFront(sceneGroup)
        backgroundGrassFront:toFront(sceneGroup)
        P1Colouring:toFront(sceneGroup)
        P1Select:toFront(sceneGroup)
        P2Colouring:toFront(sceneGroup)
        P2Select:toFront(sceneGroup)
        P3Colouring:toFront(sceneGroup)
        P3Select:toFront(sceneGroup)
        P4Colouring:toFront(sceneGroup)
        P4Select:toFront(sceneGroup)
        print("New Ecosystem Ready")
    end

    -- Player Four
    local function GoToEcosystemP4 ()
        transition.cancel( Dino )
        timer.cancel( gorighttimer )
        physics.pause( Dino )
        Dino:setSequence( "normalWalk" )
        Dino:play()
        transition.to( Dino, { time=2000, x=3100 } )
        if Dino.x >= 3100 then
            print("Moving left")
            Dino.xScale = 5
        elseif Dino.x <= 3100 then
            print("Moving right")
            Dino.xScale = -5     
        end
  
        if P4MediumPlants.isVisible == false then
            do return end
        else
            toggleVisibility( P4MediumPlants )
        end
  
        if P4LargePlants.isVisible == false then
            do return end
        else
           toggleVisibility( P4LargePlants )
        end
          
        local TimeTillEat4 = 2  -- 10 minutes = 600 seconds
  
        function updateTimeTillEat4( event )
  
           -- Decrement the number of seconds
           TimeTillEat4 = TimeTillEat4 - 1
  
           -- Time is tracked in seconds; convert it to minutes and seconds
           local minutes = math.floor( TimeTillEat4 / 2 )
           local seconds = TimeTillEat4 % 2
  
           TimeToEatEcosystem4 ()
        end
  
        ReadyToEat4Timer = timer.performWithDelay( 1000, updateTimeTillEat4, TimeTillEat4 )
  
       function TimeToEatEcosystem4()
            if TimeTillEat4 <= 0 then
              --timer.cancel( ReadyToEat2Timer )
              EatEcosystem4 ()      
            end
        end
    end

    function EatEcosystem4 ()
        DinoEat ()
              
        eatnoise ()

        transition.fadeOut( ecosystem_P4, {time = 1000, onComplete = display.remove} )
        print("Yummy!")

        FinishedPlantCountP4 = 0
        FinishedPlantTextP4.text = FinishedPlantCountP4
        SmallPlantCountP4 = 0
        MediumPlantCountP4 = 0
        LargePlantCountP4 = 0
        ecosystem_P4 = display.newGroup()
        sceneGroup:insert( ecosystem_P4 )
        ecosystem_P4:toFront(sceneGroup)
        Dino:toFront(sceneGroup)
        backgroundGrassFront:toFront(sceneGroup)
        P1Colouring:toFront(sceneGroup)
        P1Select:toFront(sceneGroup)
        P2Colouring:toFront(sceneGroup)
        P2Select:toFront(sceneGroup)
        P3Colouring:toFront(sceneGroup)
        P3Select:toFront(sceneGroup)
        P4Colouring:toFront(sceneGroup)
        P4Select:toFront(sceneGroup)
        print("New Ecosystem Ready")
    end

    -----------------------
    -- Ambience Functions
    -----------------------

    -- Clouds
    local function CloudAmbience ()
        clouds ()
        mountainOverlayer ()
        sceneGroup:insert( mountainOverlay )
        mountainOverlay:toBack()
        sceneGroup:insert( cloud1 )
        cloud1:toBack()
        sceneGroup:insert( cloud2 )
        cloud2:toBack()
        sceneGroup:insert( cloud3 )
        cloud3:toBack()

        cloudDuplicateSeconds = 35

        function cloudDuplicateTimer( event )
  
          -- Decrement the number of seconds
          cloudDuplicateSeconds = cloudDuplicateSeconds - 1
  
          -- Time is tracked in seconds; convert it to minutes and seconds
          local minutes = math.floor( cloudDuplicateSeconds / 35 )
          local seconds = cloudDuplicateSeconds % 35
  
          cloudDuplicate ()
  
        end
  
        cloudsDuplicationTimer = timer.performWithDelay( 1000, cloudDuplicateTimer, cloudDuplicateSeconds )
  
        function cloudDuplicate ()
            if cloudDuplicateSeconds <= 0 then
             timer.cancel( cloudsDuplicationTimer )
             CloudAmbience ()
            end
        end
    end
    CloudAmbience ()

    -- Birds
    local function BirdAmbience ()
        birds ()
        sceneGroup:insert( Bird )
        sceneGroup:insert( Bird2 )

        birdsecondsTillcomplete = 20

        function birdTimer( event )

         -- Decrement the number of seconds
         birdsecondsTillcomplete = birdsecondsTillcomplete - 1

         -- Time is tracked in seconds; convert it to minutes and seconds
         local minutes = math.floor( birdsecondsTillcomplete / 20 )
         local seconds = birdsecondsTillcomplete % 20

         birdTimeup ()

        end

        flyingBirdTimer = timer.performWithDelay( 1000, birdTimer, birdsecondsTillcomplete )

        function birdTimeup ()
            if birdsecondsTillcomplete <= 0 then
             timer.cancel( flyingBirdTimer )
             display.remove( Bird )
             Bird = nil
             display.remove( Bird2 )
             Bird2 = nil
             BirdAmbience ()   
            end
        end
    end
    BirdAmbience ()

    -- Butterflies
    local function ButterflyAmbience ()
        butterfly1 ()
        sceneGroup:insert( Butterfly )

        local ButterflyClockseconds = 244
  
        local function ButterflyClock( event )
    
            -- Decrement the number of seconds
            ButterflyClockseconds = ButterflyClockseconds - 1
    
            -- Time is tracked in seconds; convert it to minutes and seconds
            local minutes = math.floor( ButterflyClockseconds / 240 )
            local seconds = ButterflyClockseconds % 240
    
            ButterflySpawnCheck ()
        end
    
        ButterflyClocktimer = timer.performWithDelay( 1000, ButterflyClock, ButterflyClockseconds )
    
        function ButterflySpawnCheck ()
            if ButterflyClockseconds == 183 then
                display.remove( Butterfly )
                butterfly2 ()
                sceneGroup:insert( Butterfly )
            end
            if ButterflyClockseconds == 122 then
                display.remove( Butterfly )
                butterfly3 ()
                sceneGroup:insert( Butterfly )
            end
            if ButterflyClockseconds == 61 then
                display.remove( Butterfly )
                butterfly4 ()
                sceneGroup:insert( Butterfly )
            end
            if ButterflyClockseconds <= 0 then
                timer.cancel( ButterflyClocktimer )
                display.remove( Butterfly )
                ButterflyAmbience ()
            end
        end

    end
    ButterflyAmbience ()

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
    P1Colouring.y = display.contentCenterY+1
    sceneGroup:insert( P1Colouring )

    -- Palette For Player 2
    colouringSetupP2()
    btn_new5:addEventListener( "tap", btn_swatch_tapP2 )
    btn_new6:addEventListener( "tap", btn_swatch_tapP2 )
    btn_new7:addEventListener( "tap", btn_swatch_tapP2 )
    btn_new8:addEventListener( "tap", btn_swatch_tapP2 )
    btn_rainbow5:addEventListener( "tap", btn_swatch_tapP2 )
    btn_rainbow6:addEventListener( "tap", btn_swatch_tapP2 )
    btn_rainbow7:addEventListener( "tap", btn_swatch_tapP2 )
    btn_rainbow8:addEventListener( "tap", btn_swatch_tapP2 )
    P2Colouring.y = display.contentCenterY+1
    sceneGroup:insert( P2Colouring )

    -- Palette For Player 3
    colouringSetupP3()
    btn_new9:addEventListener( "tap", btn_swatch_tapP3 )
    btn_new10:addEventListener( "tap", btn_swatch_tapP3 )
    btn_new11:addEventListener( "tap", btn_swatch_tapP3 )
    btn_new12:addEventListener( "tap", btn_swatch_tapP3 )
    btn_rainbow9:addEventListener( "tap", btn_swatch_tapP3 )
    btn_rainbow10:addEventListener( "tap", btn_swatch_tapP3 )
    btn_rainbow11:addEventListener( "tap", btn_swatch_tapP3 )
    btn_rainbow12:addEventListener( "tap", btn_swatch_tapP3 )
    P3Colouring.y = display.contentCenterY+1
    sceneGroup:insert( P3Colouring )

    -- Palette For Player 3
    colouringSetupP4()
    btn_new13:addEventListener( "tap", btn_swatch_tapP4 )
    btn_new14:addEventListener( "tap", btn_swatch_tapP4 )
    btn_new15:addEventListener( "tap", btn_swatch_tapP4 )
    btn_new16:addEventListener( "tap", btn_swatch_tapP4 )
    btn_rainbow13:addEventListener( "tap", btn_swatch_tapP4 )
    btn_rainbow14:addEventListener( "tap", btn_swatch_tapP4 )
    btn_rainbow15:addEventListener( "tap", btn_swatch_tapP4 )
    btn_rainbow16:addEventListener( "tap", btn_swatch_tapP4 )
    P4Colouring.y = display.contentCenterY+1
    sceneGroup:insert( P4Colouring )

    ------------------------------------
    -- Colour indicators (Brushes)
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
    BrushP2.x = display.contentCenterX-850
    BrushP2.y = display.contentCenterY+1100
    proto_rectP2 = display.newImageRect( "images/paintbuttons/Colour Indicator/Brush2.png", 180, 180)
    proto_rectP2.x = display.contentCenterX-850
    proto_rectP2.y = display.contentCenterY+1100
    proto_rectP2:setFillColor(0.3, 0.5, 0.3)
    proto_rectP2.color = {0.3, 0.5, 0.3}
    P2Colouring:insert( proto_rectP2 )
    P2Colouring:insert( BrushP2 )

    -- Player Three
    BrushP3 = display.newImageRect( "images/paintbuttons/Colour Indicator/Brush1.png", 180, 180)
    BrushP3.x = display.contentCenterX+180
    BrushP3.y = display.contentCenterY+1100
    proto_rectP3 = display.newImageRect( "images/paintbuttons/Colour Indicator/Brush2.png", 180, 180)
    proto_rectP3.x = display.contentCenterX+180
    proto_rectP3.y = display.contentCenterY+1100
    proto_rectP3:setFillColor(0.3, 0.5, 0.3)
    proto_rectP3.color = {0.3, 0.5, 0.3}
    P3Colouring:insert( proto_rectP3 )
    P3Colouring:insert( BrushP3 )

    -- Player Four
    BrushP4 = display.newImageRect( "images/paintbuttons/Colour Indicator/Brush1.png", 180, 180)
    BrushP4.x = display.contentCenterX+1110
    BrushP4.y = display.contentCenterY+1100
    proto_rectP4 = display.newImageRect( "images/paintbuttons/Colour Indicator/Brush2.png", 180, 180)
    proto_rectP4.x = display.contentCenterX+1110
    proto_rectP4.y = display.contentCenterY+1100
    proto_rectP4:setFillColor(0.3, 0.5, 0.3)
    proto_rectP4.color = {0.3, 0.5, 0.3}
    P4Colouring:insert( proto_rectP4 )
    P4Colouring:insert( BrushP4 )
    
    ---------------------------------------
    --Creates Buttons for spawning Plants
    ---------------------------------------
    
    -- Buttons for Player 1
    selectionSetupP1 ()
    sceneGroup:insert( P1Select )

    -- Buttons for Player 2
    selectionSetupP2 ()
    sceneGroup:insert( P2Select )

    -- Buttons for Player 3
    selectionSetupP3 ()
    sceneGroup:insert( P3Select )

    -- Buttons for Player 4
    selectionSetupP4 ()
    sceneGroup:insert( P4Select )

    buttonFlipOne ( event )

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
      flax_P1_7:addEventListener( "tap", tintPlantP1 )

      P1Colouring:insert( P1Flax )

      transition.to( P1Select, { time=500, y=(800) } )

      transition.to( P1Colouring, { time=600, y=(-600) } )


    end
    btn_spawnFlaxP1:addEventListener( "tap", btn_spawn_tapFlax_P1 )

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
        fern_P1_5:addEventListener( "tap", tintPlantP1 )
    
        P1Colouring:insert( P1Fern )
    
        transition.to( P1Select, { time=500, y=(800) } )
    
        transition.to( P1Colouring, { time=600, y=(-600) } )
    
    end
    btn_spawnFernP1:addEventListener( "tap", btn_spawn_tapFern_P1 )

    -- Spawn Horsetail
    local function btn_spawn_tapHorsetail_P1 ()
        toggleVisibility( donebtn_spawnHorsetailP1 )
        toggleVisibility( compostButtonHorsetailP1 )
              
        clicksound ()
        resetTimer()
        createHorsetailP1 ()
              
        Horsetail_P1:addEventListener( "tap", tintPlantP1 )
        Horsetail_P1_2:addEventListener( "tap", tintPlantP1 )
        Horsetail_P1_3:addEventListener( "tap", tintPlantP1 )
        Horsetail_P1_4:addEventListener( "tap", tintPlantP1 )
        Horsetail_P1_5:addEventListener( "tap", tintPlantP1 )
              
        P1Colouring:insert( P1Horsetail )
              
        transition.to( P1Select, { time=500, y=(800) } )
              
        transition.to( P1Colouring, { time=600, y=(-600) } )
              
              
    end
    btn_spawnHorsetailP1:addEventListener( "tap", btn_spawn_tapHorsetail_P1 )

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
      palm_P1_4:addEventListener( "tap", tintPlantP1 )
      palm_P1_5:addEventListener( "tap", tintPlantP1 )
      palm_P1_6:addEventListener( "tap", tintPlantP1 )
      palm_P1_7:addEventListener( "tap", tintPlantP1 )
      palm_P1_8:addEventListener( "tap", tintPlantP1 )
      palm_P1_9:addEventListener( "tap", tintPlantP1 )
      palm_P1_10:addEventListener( "tap", tintPlantP1 )

      P1Colouring:insert( P1Palm )

      transition.to( P1Select, { time=500, y=(800) } )

      transition.to( P1Colouring, { time=600, y=(-600) } )


    end
    btn_spawnPalmP1:addEventListener( "tap", btn_spawn_tapPalm_P1 )

    -- Spawn Cycad
    local function btn_spawn_tapCycad_P1 ()
        toggleVisibility( donebtn_spawnCycadP1 )
        toggleVisibility( compostButtonCycadP1 )
  
        clicksound ()
        resetTimer()
        createCycadP1 ()
  
        Cycad_P1:addEventListener( "tap", tintPlantP1 )
        Cycad_P1_2:addEventListener( "tap", tintPlantP1 )
        Cycad_P1_3:addEventListener( "tap", tintPlantP1 )
        Cycad_P1_4:addEventListener( "tap", tintPlantP1 )
        Cycad_P1_5:addEventListener( "tap", tintPlantP1 )
  
        P1Colouring:insert( P1Cycad )
  
        transition.to( P1Select, { time=500, y=(800) } )
  
        transition.to( P1Colouring, { time=600, y=(-600) } )
    
    end
    btn_spawnCycadP1:addEventListener( "tap", btn_spawn_tapCycad_P1 )

    -- Spawn TreeFern
    local function btn_spawn_tapTreeFern_P1 ()
        toggleVisibility( donebtn_spawnTreeFernP1 )
        toggleVisibility( compostButtonTreeFernP1 )
  
        clicksound ()
        resetTimer()
        createTreeFernP1 ()
  
        TreeFern_P1:addEventListener( "tap", tintPlantP1 )
        TreeFern_P1_2:addEventListener( "tap", tintPlantP1 )
        TreeFern_P1_3:addEventListener( "tap", tintPlantP1 )
        TreeFern_P1_4:addEventListener( "tap", tintPlantP1 )
        TreeFern_P1_5:addEventListener( "tap", tintPlantP1 )
        TreeFern_P1_6:addEventListener( "tap", tintPlantP1 )
        TreeFern_P1_7:addEventListener( "tap", tintPlantP1 )
        TreeFern_P1_8:addEventListener( "tap", tintPlantP1 )
        TreeFern_P1_9:addEventListener( "tap", tintPlantP1 )
  
        P1Colouring:insert( P1TreeFern )
  
        transition.to( P1Select, { time=500, y=(800) } )
  
        transition.to( P1Colouring, { time=600, y=(-600) } )
    
    end
    btn_spawnTreeFernP1:addEventListener( "tap", btn_spawn_tapTreeFern_P1 )

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

    -- Spawn Kaori
    local function btn_spawn_tapKaori_P1 ()
        toggleVisibility( donebtn_spawnKaoriP1 )
        toggleVisibility( compostButtonKaoriP1 )
            
        clicksound ()
        resetTimer()
        createKaoriP1 ()
            
        Kaori_P1:addEventListener( "tap", tintPlantP1 )
        Kaori_P1_2:addEventListener( "tap", tintPlantP1 )
        Kaori_P1_3:addEventListener( "tap", tintPlantP1 )
        Kaori_P1_4:addEventListener( "tap", tintPlantP1 )
        Kaori_P1_5:addEventListener( "tap", tintPlantP1 )
        Kaori_P1_6:addEventListener( "tap", tintPlantP1 )
        Kaori_P1_7:addEventListener( "tap", tintPlantP1 )
        Kaori_P1_8:addEventListener( "tap", tintPlantP1 )
            
        P1Colouring:insert( P1Kaori )
            
        transition.to( P1Select, { time=500, y=(800) } )
            
        transition.to( P1Colouring, { time=600, y=(-600) } )
            
    end
    btn_spawnKaoriP1:addEventListener( "tap", btn_spawn_tapKaori_P1 )
    
    -- Spawn Magnolia
    local function btn_spawn_tapMagnolia_P1 ()
        toggleVisibility( donebtn_spawnMagnoliaP1 )
        toggleVisibility( compostButtonMagnoliaP1 )
        
        clicksound ()
        resetTimer()
        createMagnoliaP1 ()
        
        Magnolia_P1:addEventListener( "tap", tintPlantP1 )
        Magnolia_P1_2:addEventListener( "tap", tintPlantP1 )
        Magnolia_P1_3:addEventListener( "tap", tintPlantP1 )
        Magnolia_P1_4:addEventListener( "tap", tintPlantP1 )
        Magnolia_P1_5:addEventListener( "tap", tintPlantP1 )
        Magnolia_P1_6:addEventListener( "tap", tintPlantP1 )
        Magnolia_P1_7:addEventListener( "tap", tintPlantP1 )
        
        P1Colouring:insert( P1Magnolia )
        
        transition.to( P1Select, { time=500, y=(800) } )
        
        transition.to( P1Colouring, { time=600, y=(-600) } )
        
    end
    btn_spawnMagnoliaP1:addEventListener( "tap", btn_spawn_tapMagnolia_P1 )

    ----------------------
    -- Player Two Spawns
    ----------------------

    -- Spawn Flax
    local function btn_spawn_tapFlax_P2 ()
      toggleVisibility( donebtn_spawnFlaxP2 )
      toggleVisibility( compostButtonFlaxP2 )

      clicksound ()
      resetTimer()
      createFlaxP2 ()

      flax_P2:addEventListener( "tap", tintPlantP2 )
      flax_P2_2:addEventListener( "tap", tintPlantP2 )
      flax_P2_3:addEventListener( "tap", tintPlantP2 )
      flax_P2_4:addEventListener( "tap", tintPlantP2 )
      flax_P2_5:addEventListener( "tap", tintPlantP2 )
      flax_P2_6:addEventListener( "tap", tintPlantP2 )
      flax_P2_7:addEventListener( "tap", tintPlantP2 )

      P2Colouring:insert( P2Flax )

      transition.to( P2Select, { time=500, y=(800) } )

      transition.to( P2Colouring, { time=600, y=(-600) } )


    end
    btn_spawnFlaxP2:addEventListener( "tap", btn_spawn_tapFlax_P2 )

    -- Spawn Fern
    local function btn_spawn_tapFern_P2 ()
        toggleVisibility( donebtn_spawnFernP2 )
        toggleVisibility( compostButtonFernP2 )
    
        clicksound ()
        resetTimer()
        createFernP2 ()
    
        fern_P2:addEventListener( "tap", tintPlantP2 )
        fern_P2_2:addEventListener( "tap", tintPlantP2 )
        fern_P2_3:addEventListener( "tap", tintPlantP2 )
        fern_P2_4:addEventListener( "tap", tintPlantP2 )
        fern_P2_5:addEventListener( "tap", tintPlantP2 )
    
        P2Colouring:insert( P2Fern )
    
        transition.to( P2Select, { time=500, y=(800) } )
    
        transition.to( P2Colouring, { time=600, y=(-600) } )
    
    end
    btn_spawnFernP2:addEventListener( "tap", btn_spawn_tapFern_P2 )

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

    -- Spawn Palm
    local function btn_spawn_tapPalm_P2 ()
      toggleVisibility( donebtn_spawnPalmP2 )
      toggleVisibility( compostButtonPalmP2 )

      clicksound ()
      resetTimer()
      createPalmP2 ()

      palm_P2:addEventListener( "tap", tintPlantP2 )
      palm_P2_2:addEventListener( "tap", tintPlantP2 )
      palm_P2_3:addEventListener( "tap", tintPlantP2 )
      palm_P2_4:addEventListener( "tap", tintPlantP2 )
      palm_P2_5:addEventListener( "tap", tintPlantP2 )
      palm_P2_6:addEventListener( "tap", tintPlantP2 )
      palm_P2_7:addEventListener( "tap", tintPlantP2 )
      palm_P2_8:addEventListener( "tap", tintPlantP2 )
      palm_P2_9:addEventListener( "tap", tintPlantP2 )
      palm_P2_10:addEventListener( "tap", tintPlantP2 )

      P2Colouring:insert( P2Palm )

      transition.to( P2Select, { time=500, y=(800) } )

      transition.to( P2Colouring, { time=600, y=(-600) } )


    end
    btn_spawnPalmP2:addEventListener( "tap", btn_spawn_tapPalm_P2 )

    -- Spawn Cycad
    local function btn_spawn_tapCycad_P2 ()
        toggleVisibility( donebtn_spawnCycadP2 )
        toggleVisibility( compostButtonCycadP2 )
  
        clicksound ()
        resetTimer()
        createCycadP2 ()
  
        Cycad_P2:addEventListener( "tap", tintPlantP2 )
        Cycad_P2_2:addEventListener( "tap", tintPlantP2 )
        Cycad_P2_3:addEventListener( "tap", tintPlantP2 )
        Cycad_P2_4:addEventListener( "tap", tintPlantP2 )
        Cycad_P2_5:addEventListener( "tap", tintPlantP2 )
  
        P2Colouring:insert( P2Cycad )
  
        transition.to( P2Select, { time=500, y=(800) } )
  
        transition.to( P2Colouring, { time=600, y=(-600) } )
    
    end
    btn_spawnCycadP2:addEventListener( "tap", btn_spawn_tapCycad_P2 )

    -- Spawn TreeFern
    local function btn_spawn_tapTreeFern_P2 ()
        toggleVisibility( donebtn_spawnTreeFernP2 )
        toggleVisibility( compostButtonTreeFernP2 )
  
        clicksound ()
        resetTimer()
        createTreeFernP2 ()
  
        TreeFern_P2:addEventListener( "tap", tintPlantP2 )
        TreeFern_P2_2:addEventListener( "tap", tintPlantP2 )
        TreeFern_P2_3:addEventListener( "tap", tintPlantP2 )
        TreeFern_P2_4:addEventListener( "tap", tintPlantP2 )
        TreeFern_P2_5:addEventListener( "tap", tintPlantP2 )
        TreeFern_P2_6:addEventListener( "tap", tintPlantP2 )
        TreeFern_P2_7:addEventListener( "tap", tintPlantP2 )
        TreeFern_P2_8:addEventListener( "tap", tintPlantP2 )
        TreeFern_P2_9:addEventListener( "tap", tintPlantP2 )
  
        P2Colouring:insert( P2TreeFern )
  
        transition.to( P2Select, { time=500, y=(800) } )
  
        transition.to( P2Colouring, { time=600, y=(-600) } )
    
    end
    btn_spawnTreeFernP2:addEventListener( "tap", btn_spawn_tapTreeFern_P2 )

    -- Spawn Pine
    local function btn_spawn_tapPine_P2 ()
        toggleVisibility( donebtn_spawnPineP2 )
        toggleVisibility( compostButtonPineP2 )

        clicksound ()
        resetTimer()
        createPineP2 ()

        pine_P2:addEventListener( "tap", tintPlantP2 )
        pine_P2_2:addEventListener( "tap", tintPlantP2 )
        pine_P2_3:addEventListener( "tap", tintPlantP2 )
        pine_P2_4:addEventListener( "tap", tintPlantP2 )
        pine_P2_5:addEventListener( "tap", tintPlantP2 )
        pine_P2_6:addEventListener( "tap", tintPlantP2 )
        pine_P2_7:addEventListener( "tap", tintPlantP2 )

        P2Colouring:insert( P2Pine )

        transition.to( P2Select, { time=500, y=(800) } )

        transition.to( P2Colouring, { time=600, y=(-600) } )

    end
    btn_spawnPineP2:addEventListener( "tap", btn_spawn_tapPine_P2 )

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

    ----------------------
    -- Player Three Spawns
    ----------------------

    -- Spawn Flax
    local function btn_spawn_tapFlax_P3 ()
      toggleVisibility( donebtn_spawnFlaxP3 )
      toggleVisibility( compostButtonFlaxP3 )

      clicksound ()
      resetTimer()
      createFlaxP3 ()

      flax_P3:addEventListener( "tap", tintPlantP3 )
      flax_P3_2:addEventListener( "tap", tintPlantP3 )
      flax_P3_3:addEventListener( "tap", tintPlantP3 )
      flax_P3_4:addEventListener( "tap", tintPlantP3 )
      flax_P3_5:addEventListener( "tap", tintPlantP3 )
      flax_P3_6:addEventListener( "tap", tintPlantP3 )
      flax_P3_7:addEventListener( "tap", tintPlantP3 )

      P3Colouring:insert( P3Flax )

      transition.to( P3Select, { time=500, y=(800) } )

      transition.to( P3Colouring, { time=600, y=(-600) } )


    end
    btn_spawnFlaxP3:addEventListener( "tap", btn_spawn_tapFlax_P3 )

    -- Spawn Fern
    local function btn_spawn_tapFern_P3 ()
        toggleVisibility( donebtn_spawnFernP3 )
        toggleVisibility( compostButtonFernP3 )
    
        clicksound ()
        resetTimer()
        createFernP3 ()
    
        fern_P3:addEventListener( "tap", tintPlantP3 )
        fern_P3_2:addEventListener( "tap", tintPlantP3 )
        fern_P3_3:addEventListener( "tap", tintPlantP3 )
        fern_P3_4:addEventListener( "tap", tintPlantP3 )
        fern_P3_5:addEventListener( "tap", tintPlantP3 )
    
        P3Colouring:insert( P3Fern )
    
        transition.to( P3Select, { time=500, y=(800) } )
    
        transition.to( P3Colouring, { time=600, y=(-600) } )
    
    end
    btn_spawnFernP3:addEventListener( "tap", btn_spawn_tapFern_P3 )

    -- Spawn Horsetail
    local function btn_spawn_tapHorsetail_P3 ()
        toggleVisibility( donebtn_spawnHorsetailP3 )
        toggleVisibility( compostButtonHorsetailP3 )
              
        clicksound ()
        resetTimer()
        createHorsetailP3 ()
              
        Horsetail_P3:addEventListener( "tap", tintPlantP3 )
        Horsetail_P3_2:addEventListener( "tap", tintPlantP3 )
        Horsetail_P3_3:addEventListener( "tap", tintPlantP3 )
        Horsetail_P3_4:addEventListener( "tap", tintPlantP3 )
        Horsetail_P3_5:addEventListener( "tap", tintPlantP3 )
              
        P3Colouring:insert( P3Horsetail )
              
        transition.to( P3Select, { time=500, y=(800) } )
              
        transition.to( P3Colouring, { time=600, y=(-600) } )
              
              
    end
    btn_spawnHorsetailP3:addEventListener( "tap", btn_spawn_tapHorsetail_P3 )

    -- Spawn Palm
    local function btn_spawn_tapPalm_P3 ()
      toggleVisibility( donebtn_spawnPalmP3 )
      toggleVisibility( compostButtonPalmP3 )

      clicksound ()
      resetTimer()
      createPalmP3 ()

      palm_P3:addEventListener( "tap", tintPlantP3 )
      palm_P3_2:addEventListener( "tap", tintPlantP3 )
      palm_P3_3:addEventListener( "tap", tintPlantP3 )
      palm_P3_4:addEventListener( "tap", tintPlantP3 )
      palm_P3_5:addEventListener( "tap", tintPlantP3 )
      palm_P3_6:addEventListener( "tap", tintPlantP3 )
      palm_P3_7:addEventListener( "tap", tintPlantP3 )
      palm_P3_8:addEventListener( "tap", tintPlantP3 )
      palm_P3_9:addEventListener( "tap", tintPlantP3 )
      palm_P3_10:addEventListener( "tap", tintPlantP3 )

      P3Colouring:insert( P3Palm )

      transition.to( P3Select, { time=500, y=(800) } )

      transition.to( P3Colouring, { time=600, y=(-600) } )


    end
    btn_spawnPalmP3:addEventListener( "tap", btn_spawn_tapPalm_P3 )

    -- Spawn Cycad
    local function btn_spawn_tapCycad_P3 ()
        toggleVisibility( donebtn_spawnCycadP3 )
        toggleVisibility( compostButtonCycadP3 )
  
        clicksound ()
        resetTimer()
        createCycadP3 ()
  
        Cycad_P3:addEventListener( "tap", tintPlantP3 )
        Cycad_P3_2:addEventListener( "tap", tintPlantP3 )
        Cycad_P3_3:addEventListener( "tap", tintPlantP3 )
        Cycad_P3_4:addEventListener( "tap", tintPlantP3 )
        Cycad_P3_5:addEventListener( "tap", tintPlantP3 )
  
        P3Colouring:insert( P3Cycad )
  
        transition.to( P3Select, { time=500, y=(800) } )
  
        transition.to( P3Colouring, { time=600, y=(-600) } )
    
    end
    btn_spawnCycadP3:addEventListener( "tap", btn_spawn_tapCycad_P3 )

    -- Spawn TreeFern
    local function btn_spawn_tapTreeFern_P3 ()
        toggleVisibility( donebtn_spawnTreeFernP3 )
        toggleVisibility( compostButtonTreeFernP3 )
  
        clicksound ()
        resetTimer()
        createTreeFernP3 ()
  
        TreeFern_P3:addEventListener( "tap", tintPlantP3 )
        TreeFern_P3_2:addEventListener( "tap", tintPlantP3 )
        TreeFern_P3_3:addEventListener( "tap", tintPlantP3 )
        TreeFern_P3_4:addEventListener( "tap", tintPlantP3 )
        TreeFern_P3_5:addEventListener( "tap", tintPlantP3 )
        TreeFern_P3_6:addEventListener( "tap", tintPlantP3 )
        TreeFern_P3_7:addEventListener( "tap", tintPlantP3 )
        TreeFern_P3_8:addEventListener( "tap", tintPlantP3 )
        TreeFern_P3_9:addEventListener( "tap", tintPlantP3 )
  
        P3Colouring:insert( P3TreeFern )
  
        transition.to( P3Select, { time=500, y=(800) } )
  
        transition.to( P3Colouring, { time=600, y=(-600) } )
    
    end
    btn_spawnTreeFernP3:addEventListener( "tap", btn_spawn_tapTreeFern_P3 )

    -- Spawn Pine
    local function btn_spawn_tapPine_P3 ()
        toggleVisibility( donebtn_spawnPineP3 )
        toggleVisibility( compostButtonPineP3 )

        clicksound ()
        resetTimer()
        createPineP3 ()

        pine_P3:addEventListener( "tap", tintPlantP3 )
        pine_P3_2:addEventListener( "tap", tintPlantP3 )
        pine_P3_3:addEventListener( "tap", tintPlantP3 )
        pine_P3_4:addEventListener( "tap", tintPlantP3 )
        pine_P3_5:addEventListener( "tap", tintPlantP3 )
        pine_P3_6:addEventListener( "tap", tintPlantP3 )
        pine_P3_7:addEventListener( "tap", tintPlantP3 )

        P3Colouring:insert( P3Pine )

        transition.to( P3Select, { time=500, y=(800) } )

        transition.to( P3Colouring, { time=600, y=(-600) } )

    end
    btn_spawnPineP3:addEventListener( "tap", btn_spawn_tapPine_P3 )

    -- Spawn Kaori
    local function btn_spawn_tapKaori_P3 ()
        toggleVisibility( donebtn_spawnKaoriP3 )
        toggleVisibility( compostButtonKaoriP3 )
            
        clicksound ()
        resetTimer()
        createKaoriP3 ()
            
        Kaori_P3:addEventListener( "tap", tintPlantP3 )
        Kaori_P3_2:addEventListener( "tap", tintPlantP3 )
        Kaori_P3_3:addEventListener( "tap", tintPlantP3 )
        Kaori_P3_4:addEventListener( "tap", tintPlantP3 )
        Kaori_P3_5:addEventListener( "tap", tintPlantP3 )
        Kaori_P3_6:addEventListener( "tap", tintPlantP3 )
        Kaori_P3_7:addEventListener( "tap", tintPlantP3 )
        Kaori_P3_8:addEventListener( "tap", tintPlantP3 )
            
        P3Colouring:insert( P3Kaori )
            
        transition.to( P3Select, { time=500, y=(800) } )
            
        transition.to( P3Colouring, { time=600, y=(-600) } )
            
    end
    btn_spawnKaoriP3:addEventListener( "tap", btn_spawn_tapKaori_P3 )
    
    -- Spawn Magnolia
    local function btn_spawn_tapMagnolia_P3 ()
        toggleVisibility( donebtn_spawnMagnoliaP3 )
        toggleVisibility( compostButtonMagnoliaP3 )
        
        clicksound ()
        resetTimer()
        createMagnoliaP3 ()
        
        Magnolia_P3:addEventListener( "tap", tintPlantP3 )
        Magnolia_P3_2:addEventListener( "tap", tintPlantP3 )
        Magnolia_P3_3:addEventListener( "tap", tintPlantP3 )
        Magnolia_P3_4:addEventListener( "tap", tintPlantP3 )
        Magnolia_P3_5:addEventListener( "tap", tintPlantP3 )
        Magnolia_P3_6:addEventListener( "tap", tintPlantP3 )
        Magnolia_P3_7:addEventListener( "tap", tintPlantP3 )
        
        P3Colouring:insert( P3Magnolia )
        
        transition.to( P3Select, { time=500, y=(800) } )
        
        transition.to( P3Colouring, { time=600, y=(-600) } )
        
    end
    btn_spawnMagnoliaP3:addEventListener( "tap", btn_spawn_tapMagnolia_P3 )

    ----------------------
    -- Player Four Spawns
    ----------------------

   -- Spawn Flax
    local function btn_spawn_tapFlax_P4 ()
      toggleVisibility( donebtn_spawnFlaxP4 )
      toggleVisibility( compostButtonFlaxP4 )

      clicksound ()
      resetTimer()
      createFlaxP4 ()

      flax_P4:addEventListener( "tap", tintPlantP4 )
      flax_P4_2:addEventListener( "tap", tintPlantP4 )
      flax_P4_3:addEventListener( "tap", tintPlantP4 )
      flax_P4_4:addEventListener( "tap", tintPlantP4 )
      flax_P4_5:addEventListener( "tap", tintPlantP4 )
      flax_P4_6:addEventListener( "tap", tintPlantP4 )
      flax_P4_7:addEventListener( "tap", tintPlantP4 )

      P4Colouring:insert( P4Flax )

      transition.to( P4Select, { time=500, y=(800) } )

      transition.to( P4Colouring, { time=600, y=(-600) } )


    end
    btn_spawnFlaxP4:addEventListener( "tap", btn_spawn_tapFlax_P4 )

    -- Spawn Fern
    local function btn_spawn_tapFern_P4 ()
        toggleVisibility( donebtn_spawnFernP4 )
        toggleVisibility( compostButtonFernP4 )
    
        clicksound ()
        resetTimer()
        createFernP4 ()
    
        fern_P4:addEventListener( "tap", tintPlantP4 )
        fern_P4_2:addEventListener( "tap", tintPlantP4 )
        fern_P4_3:addEventListener( "tap", tintPlantP4 )
        fern_P4_4:addEventListener( "tap", tintPlantP4 )
        fern_P4_5:addEventListener( "tap", tintPlantP4 )
    
        P4Colouring:insert( P4Fern )
    
        transition.to( P4Select, { time=500, y=(800) } )
    
        transition.to( P4Colouring, { time=600, y=(-600) } )
    
    end
    btn_spawnFernP4:addEventListener( "tap", btn_spawn_tapFern_P4 )

    -- Spawn Horsetail
    local function btn_spawn_tapHorsetail_P4 ()
        toggleVisibility( donebtn_spawnHorsetailP4 )
        toggleVisibility( compostButtonHorsetailP4 )
              
        clicksound ()
        resetTimer()
        createHorsetailP4 ()
              
        Horsetail_P4:addEventListener( "tap", tintPlantP4 )
        Horsetail_P4_2:addEventListener( "tap", tintPlantP4 )
        Horsetail_P4_3:addEventListener( "tap", tintPlantP4 )
        Horsetail_P4_4:addEventListener( "tap", tintPlantP4 )
        Horsetail_P4_5:addEventListener( "tap", tintPlantP4 )
              
        P4Colouring:insert( P4Horsetail )
              
        transition.to( P4Select, { time=500, y=(800) } )
              
        transition.to( P4Colouring, { time=600, y=(-600) } )
              
              
    end
    btn_spawnHorsetailP4:addEventListener( "tap", btn_spawn_tapHorsetail_P4 )

    -- Spawn Palm
    local function btn_spawn_tapPalm_P4 ()
      toggleVisibility( donebtn_spawnPalmP4 )
      toggleVisibility( compostButtonPalmP4 )

      clicksound ()
      resetTimer()
      createPalmP4 ()

      palm_P4:addEventListener( "tap", tintPlantP4 )
      palm_P4_2:addEventListener( "tap", tintPlantP4 )
      palm_P4_3:addEventListener( "tap", tintPlantP4 )
      palm_P4_4:addEventListener( "tap", tintPlantP4 )
      palm_P4_5:addEventListener( "tap", tintPlantP4 )
      palm_P4_6:addEventListener( "tap", tintPlantP4 )
      palm_P4_7:addEventListener( "tap", tintPlantP4 )
      palm_P4_8:addEventListener( "tap", tintPlantP4 )
      palm_P4_9:addEventListener( "tap", tintPlantP4 )
      palm_P4_10:addEventListener( "tap", tintPlantP4 )

      P4Colouring:insert( P4Palm )

      transition.to( P4Select, { time=500, y=(800) } )

      transition.to( P4Colouring, { time=600, y=(-600) } )


    end
    btn_spawnPalmP4:addEventListener( "tap", btn_spawn_tapPalm_P4 )

    -- Spawn Cycad
    local function btn_spawn_tapCycad_P4 ()
        toggleVisibility( donebtn_spawnCycadP4 )
        toggleVisibility( compostButtonCycadP4 )
  
        clicksound ()
        resetTimer()
        createCycadP4 ()
  
        Cycad_P4:addEventListener( "tap", tintPlantP4 )
        Cycad_P4_2:addEventListener( "tap", tintPlantP4 )
        Cycad_P4_3:addEventListener( "tap", tintPlantP4 )
        Cycad_P4_4:addEventListener( "tap", tintPlantP4 )
        Cycad_P4_5:addEventListener( "tap", tintPlantP4 )
  
        P4Colouring:insert( P4Cycad )
  
        transition.to( P4Select, { time=500, y=(800) } )
  
        transition.to( P4Colouring, { time=600, y=(-600) } )
    
    end
    btn_spawnCycadP4:addEventListener( "tap", btn_spawn_tapCycad_P4 )

    -- Spawn TreeFern
    local function btn_spawn_tapTreeFern_P4 ()
        toggleVisibility( donebtn_spawnTreeFernP4 )
        toggleVisibility( compostButtonTreeFernP4 )
  
        clicksound ()
        resetTimer()
        createTreeFernP4 ()
  
        TreeFern_P4:addEventListener( "tap", tintPlantP4 )
        TreeFern_P4_2:addEventListener( "tap", tintPlantP4 )
        TreeFern_P4_3:addEventListener( "tap", tintPlantP4 )
        TreeFern_P4_4:addEventListener( "tap", tintPlantP4 )
        TreeFern_P4_5:addEventListener( "tap", tintPlantP4 )
        TreeFern_P4_6:addEventListener( "tap", tintPlantP4 )
        TreeFern_P4_7:addEventListener( "tap", tintPlantP4 )
        TreeFern_P4_8:addEventListener( "tap", tintPlantP4 )
        TreeFern_P4_9:addEventListener( "tap", tintPlantP4 )
  
        P4Colouring:insert( P4TreeFern )
  
        transition.to( P4Select, { time=500, y=(800) } )
  
        transition.to( P4Colouring, { time=600, y=(-600) } )
    
    end
    btn_spawnTreeFernP4:addEventListener( "tap", btn_spawn_tapTreeFern_P4 )

    -- Spawn Pine
    local function btn_spawn_tapPine_P4 ()
        toggleVisibility( donebtn_spawnPineP4 )
        toggleVisibility( compostButtonPineP4 )

        clicksound ()
        resetTimer()
        createPineP4 ()

        pine_P4:addEventListener( "tap", tintPlantP4 )
        pine_P4_2:addEventListener( "tap", tintPlantP4 )
        pine_P4_3:addEventListener( "tap", tintPlantP4 )
        pine_P4_4:addEventListener( "tap", tintPlantP4 )
        pine_P4_5:addEventListener( "tap", tintPlantP4 )
        pine_P4_6:addEventListener( "tap", tintPlantP4 )
        pine_P4_7:addEventListener( "tap", tintPlantP4 )

        P4Colouring:insert( P4Pine )

        transition.to( P4Select, { time=500, y=(800) } )

        transition.to( P4Colouring, { time=600, y=(-600) } )

    end
    btn_spawnPineP4:addEventListener( "tap", btn_spawn_tapPine_P4 )

    -- Spawn Kaori
    local function btn_spawn_tapKaori_P4 ()
        toggleVisibility( donebtn_spawnKaoriP4 )
        toggleVisibility( compostButtonKaoriP4 )
            
        clicksound ()
        resetTimer()
        createKaoriP4 ()
            
        Kaori_P4:addEventListener( "tap", tintPlantP4 )
        Kaori_P4_2:addEventListener( "tap", tintPlantP4 )
        Kaori_P4_3:addEventListener( "tap", tintPlantP4 )
        Kaori_P4_4:addEventListener( "tap", tintPlantP4 )
        Kaori_P4_5:addEventListener( "tap", tintPlantP4 )
        Kaori_P4_6:addEventListener( "tap", tintPlantP4 )
        Kaori_P4_7:addEventListener( "tap", tintPlantP4 )
        Kaori_P4_8:addEventListener( "tap", tintPlantP4 )
            
        P4Colouring:insert( P4Kaori )
            
        transition.to( P4Select, { time=500, y=(800) } )
            
        transition.to( P4Colouring, { time=600, y=(-600) } )
            
    end
    btn_spawnKaoriP4:addEventListener( "tap", btn_spawn_tapKaori_P4 )
    
    -- Spawn Magnolia
    local function btn_spawn_tapMagnolia_P4 ()
        toggleVisibility( donebtn_spawnMagnoliaP4 )
        toggleVisibility( compostButtonMagnoliaP4 )
        
        clicksound ()
        resetTimer()
        createMagnoliaP4 ()
        
        Magnolia_P4:addEventListener( "tap", tintPlantP4 )
        Magnolia_P4_2:addEventListener( "tap", tintPlantP4 )
        Magnolia_P4_3:addEventListener( "tap", tintPlantP4 )
        Magnolia_P4_4:addEventListener( "tap", tintPlantP4 )
        Magnolia_P4_5:addEventListener( "tap", tintPlantP4 )
        Magnolia_P4_6:addEventListener( "tap", tintPlantP4 )
        Magnolia_P4_7:addEventListener( "tap", tintPlantP4 )
        
        P4Colouring:insert( P4Magnolia )
        
        transition.to( P4Select, { time=500, y=(800) } )
        
        transition.to( P4Colouring, { time=600, y=(-600) } )
        
    end
    btn_spawnMagnoliaP4:addEventListener( "tap", btn_spawn_tapMagnolia_P4 )

    ------------------------------------------------------------------------------
    -- sends plant to background, makes them non-interactable (WORK IN PROGRESS)
    ------------------------------------------------------------------------------

    ------------------------------
    -- Player One done functions
    ------------------------------

    -- Done Flax
    local function donebtn_spawn_tapFlaxP1 ()

        transition.to( P1Colouring, { time=500, y=(140) } )

        clicksound ()
        donesound ()
        resetTimer()
        display.remove( flax_P1_Text )

        FinishedPlantCountP1 = FinishedPlantCountP1 + 1
        FinishedPlantTextP1.text = FinishedPlantCountP1

        SmallPlantCountP1 = SmallPlantCountP1 + 1

        if SmallPlantCountP1 == 1 then

         toggleVisibility( P1MediumPlants )
        end
        
        if LargePlantCountP1 >=3 and FinishedPlantCountP1 >=6  then
            GoToEcosystemP1()
        end  

        transition.to(P1Flax, {
            x= math.random(-200, 400 ),
            y= math.random(-1105, -1100),
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
        flax_P1_7:scale(1.35, 1.35)
        flax_P1_7:removeEventListener( "tap", tintPlantP1 )

        ecosystem_P1:insert( P1Flax )
        P1Flax:toFront()

        transition.to( P1Select, { time=500, y=(-3) } )
        toggleVisibility( donebtn_spawnFlaxP1 )
        toggleVisibility( compostButtonFlaxP1 )

    end
    donebtn_spawnFlaxP1:addEventListener( "tap", donebtn_spawn_tapFlaxP1 )

    -- Done Fern
    local function donebtn_spawn_tapFernP1 ()

        transition.to( P1Colouring, { time=500, y=(140) } )
    
        clicksound ()
        donesound ()
        resetTimer()
        display.remove( fern_P1_Text )
    
        FinishedPlantCountP1 = FinishedPlantCountP1 + 1
        FinishedPlantTextP1.text = FinishedPlantCountP1
    
        SmallPlantCountP1 = SmallPlantCountP1 + 1
    
        if SmallPlantCountP1 == 1 then
            toggleVisibility( P1MediumPlants )
        end  
    
        if LargePlantCountP1 >=3 and FinishedPlantCountP1 >=6  then
            GoToEcosystemP1()
        end 
    
        transition.to(P1Fern, {
            x= math.random(-200, 600 ),
            y= math.random(-1080, -1075),
            time=1000})
        fern_P1:scale(1.35, 1.35)
        fern_P1:removeEventListener( "tap", tintPlantP1 )
        fern_P1_2:scale(1.35, 1.35)
        fern_P1_2:removeEventListener( "tap", tintPlantP1 )
        fern_P1_3:scale(1.35, 1.35)
        fern_P1_3:removeEventListener( "tap", tintPlantP1 )
        fern_P1_4:scale(1.35, 1.35)
        fern_P1_4:removeEventListener( "tap", tintPlantP1 )
        fern_P1_5:scale(1.35, 1.35)
        fern_P1_5:removeEventListener( "tap", tintPlantP1 )
    
        ecosystem_P1:insert( P1Fern )
        P1Fern:toFront()
    
        transition.to( P1Select, { time=500, y=(-3) } )
        toggleVisibility( donebtn_spawnFernP1 )
        toggleVisibility( compostButtonFernP1 )
    
    end
    donebtn_spawnFernP1:addEventListener( "tap", donebtn_spawn_tapFernP1 )

    -- Done Horsetail
    local function donebtn_spawn_tapHorsetailP1 ()

        transition.to( P1Colouring, { time=500, y=(140) } )
    
        clicksound ()
        donesound ()
        resetTimer()
        display.remove( Horsetail_P1_Text )
    
        FinishedPlantCountP1 = FinishedPlantCountP1 + 1
        FinishedPlantTextP1.text = FinishedPlantCountP1
    
        SmallPlantCountP1 = SmallPlantCountP1 + 1
    
        if SmallPlantCountP1 == 1 then
    
            toggleVisibility( P1MediumPlants )
        end
            
        if LargePlantCountP1 >=3 and FinishedPlantCountP1 >=6  then
            GoToEcosystemP1()
        end  
    
        transition.to(P1Horsetail, {
            x= math.random(-200, 400 ),
            y= math.random(-1120, -1115),
            time=1000})
        Horsetail_P1:scale(1.35, 1.35)
        Horsetail_P1:removeEventListener( "tap", tintPlantP1 )
        Horsetail_P1_2:scale(1.35, 1.35)
        Horsetail_P1_2:removeEventListener( "tap", tintPlantP1 )
        Horsetail_P1_3:scale(1.35, 1.35)
        Horsetail_P1_3:removeEventListener( "tap", tintPlantP1 )
        Horsetail_P1_4:scale(1.35, 1.35)
        Horsetail_P1_4:removeEventListener( "tap", tintPlantP1 )
        Horsetail_P1_5:scale(1.35, 1.35)
        Horsetail_P1_5:removeEventListener( "tap", tintPlantP1 )
       
        ecosystem_P1:insert( P1Horsetail )
        P1Horsetail:toFront()
    
        transition.to( P1Select, { time=500, y=(-3) } )
        toggleVisibility( donebtn_spawnHorsetailP1 )
        toggleVisibility( compostButtonHorsetailP1 )

    end
    donebtn_spawnHorsetailP1:addEventListener( "tap", donebtn_spawn_tapHorsetailP1 )

    -- Done Palm
    local function donebtn_spawn_tapPalmP1 ()

        transition.to( P1Colouring, { time=500, y=(140) } )

        clicksound ()
        donesound ()
        resetTimer()
        display.remove( palm_P1_Text )

        FinishedPlantCountP1 = FinishedPlantCountP1 + 1
        FinishedPlantTextP1.text = FinishedPlantCountP1

        MediumPlantCountP1 = MediumPlantCountP1 + 1

        if MediumPlantCountP1 == 2 then

         toggleVisibility( P1LargePlants )
        end  

        if LargePlantCountP1 >=3 and FinishedPlantCountP1 >=6  then
            GoToEcosystemP1()
        end 

        transition.to(P1Palm, {
            x= math.random(-300, 500 ),
            y= math.random(-1210, -1205),
            time=1000})
        palm_P1:scale(2.35, 2.95)
        palm_P1:removeEventListener( "tap", tintPlantP1 )
        palm_P1_2:scale(2.35, 2.95)
        palm_P1_2:removeEventListener( "tap", tintPlantP1 )
        palm_P1_3:scale(2.35, 2.95)
        palm_P1_3:removeEventListener( "tap", tintPlantP1 )
        palm_P1_4:scale(2.35, 2.95)
        palm_P1_4:removeEventListener( "tap", tintPlantP1 )
        palm_P1_5:scale(2.35, 2.95)
        palm_P1_5:removeEventListener( "tap", tintPlantP1 )
        palm_P1_6:scale(2.35, 2.95)
        palm_P1_6:removeEventListener( "tap", tintPlantP1 )
        palm_P1_7:scale(2.35, 2.95)
        palm_P1_7:removeEventListener( "tap", tintPlantP1 )
        palm_P1_8:scale(2.35, 2.95)
        palm_P1_8:removeEventListener( "tap", tintPlantP1 )
        palm_P1_9:scale(2.35, 2.95)
        palm_P1_9:removeEventListener( "tap", tintPlantP1 )
        palm_P1_10:scale(2.35, 2.95)
        palm_P1_10:removeEventListener( "tap", tintPlantP1 )

        ecosystem_P1:insert( P1Palm )

        transition.to( P1Select, { time=500, y=(-3) } )
        toggleVisibility( donebtn_spawnPalmP1 )
        toggleVisibility( compostButtonPalmP1 )

    end
    donebtn_spawnPalmP1:addEventListener( "tap", donebtn_spawn_tapPalmP1 )

    -- Done Cycad
    local function donebtn_spawn_tapCycadP1 ()

        transition.to( P1Colouring, { time=500, y=(140) } )

        clicksound ()
        donesound ()
        resetTimer()
        display.remove( Cycad_P1_Text )

        FinishedPlantCountP1 = FinishedPlantCountP1 + 1
        FinishedPlantTextP1.text = FinishedPlantCountP1

        MediumPlantCountP1 = MediumPlantCountP1 + 1

        if MediumPlantCountP1 == 2 then
         toggleVisibility( P1LargePlants )
        end  

        if LargePlantCountP1 >=3 and FinishedPlantCountP1 >=6  then
            GoToEcosystemP1()
        end 

        transition.to(P1Cycad, {
            x= math.random(-300, 500 ),
            y= math.random(-1230, -1225),
            time=1000})
        Cycad_P1:scale(2.85, 2.85)
        Cycad_P1:removeEventListener( "tap", tintPlantP1 )
        Cycad_P1_2:scale(2.85, 2.85)
        Cycad_P1_2:removeEventListener( "tap", tintPlantP1 )
        Cycad_P1_3:scale(2.85, 2.85)
        Cycad_P1_3:removeEventListener( "tap", tintPlantP1 )
        Cycad_P1_4:scale(2.85, 2.85)
        Cycad_P1_4:removeEventListener( "tap", tintPlantP1 )
        Cycad_P1_5:scale(2.85, 2.85)
        Cycad_P1_5:removeEventListener( "tap", tintPlantP1 )

        ecosystem_P1:insert( P1Cycad )

        transition.to( P1Select, { time=500, y=(-3) } )
        toggleVisibility( donebtn_spawnCycadP1 )
        toggleVisibility( compostButtonCycadP1 )

    end
    donebtn_spawnCycadP1:addEventListener( "tap", donebtn_spawn_tapCycadP1 )

    -- Done TreeFern
    local function donebtn_spawn_tapTreeFernP1 ()

        transition.to( P1Colouring, { time=500, y=(140) } )

        clicksound ()
        donesound ()
        resetTimer()
        display.remove( TreeFern_P1_Text )

        FinishedPlantCountP1 = FinishedPlantCountP1 + 1
        FinishedPlantTextP1.text = FinishedPlantCountP1

        MediumPlantCountP1 = MediumPlantCountP1 + 1

        if MediumPlantCountP1 == 2 then
         toggleVisibility( P1LargePlants )
        end  

        if LargePlantCountP1 >=3 and FinishedPlantCountP1 >=6  then
            GoToEcosystemP1()
        end 

        transition.to(P1TreeFern, {
            x= math.random(-300, 500 ),
            y= math.random(-1290, -1285),
            time=1000})
        TreeFern_P1:scale(2.55, 2.55)
        TreeFern_P1:removeEventListener( "tap", tintPlantP1 )
        TreeFern_P1_2:scale(2.55, 2.55)
        TreeFern_P1_2:removeEventListener( "tap", tintPlantP1 )
        TreeFern_P1_3:scale(2.55, 2.55)
        TreeFern_P1_3:removeEventListener( "tap", tintPlantP1 )
        TreeFern_P1_4:scale(2.55, 2.55)
        TreeFern_P1_4:removeEventListener( "tap", tintPlantP1 )
        TreeFern_P1_5:scale(2.55, 2.55)
        TreeFern_P1_5:removeEventListener( "tap", tintPlantP1 )
        TreeFern_P1_6:scale(2.55, 2.55)
        TreeFern_P1_6:removeEventListener( "tap", tintPlantP1 )
        TreeFern_P1_7:scale(2.55, 2.55)
        TreeFern_P1_7:removeEventListener( "tap", tintPlantP1 )
        TreeFern_P1_8:scale(2.55, 2.55)
        TreeFern_P1_8:removeEventListener( "tap", tintPlantP1 )
        TreeFern_P1_9:scale(2.55, 2.55)
        TreeFern_P1_9:removeEventListener( "tap", tintPlantP1 )

        ecosystem_P1:insert( P1TreeFern )

        transition.to( P1Select, { time=500, y=(-3) } )
        toggleVisibility( donebtn_spawnTreeFernP1 )
        toggleVisibility( compostButtonTreeFernP1 )

    end
    donebtn_spawnTreeFernP1:addEventListener( "tap", donebtn_spawn_tapTreeFernP1 )

    -- Done Pine
    local function donebtn_spawn_tapPineP1 ()

        transition.to( P1Colouring, { time=500, y=(140) } )

        clicksound ()
        donesound ()
        resetTimer()
        display.remove( pine_P1_Text )

        FinishedPlantCountP1 = FinishedPlantCountP1 + 1
        FinishedPlantTextP1.text = FinishedPlantCountP1

        LargePlantCountP1 = LargePlantCountP1 + 1

        if LargePlantCountP1 >=3 and FinishedPlantCountP1 >=6  then
            GoToEcosystemP1()
        end 

        transition.to(P1Pine, {
            x= math.random(-300, 500 ),
            y= math.random(-1350, -1345),
            time=1000})
        pine_P1:scale(2.40, 2.95)
        pine_P1:removeEventListener( "tap", tintPlantP1 )
        pine_P1_2:scale(2.40, 2.95)
        pine_P1_2:removeEventListener( "tap", tintPlantP1 )
        pine_P1_3:scale(2.40, 2.95)
        pine_P1_3:removeEventListener( "tap", tintPlantP1 )
        pine_P1_4:scale(2.40, 2.95)
        pine_P1_4:removeEventListener( "tap", tintPlantP1 )
        pine_P1_5:scale(2.40, 2.95)
        pine_P1_5:removeEventListener( "tap", tintPlantP1 )
        pine_P1_6:scale(2.40, 2.95)
        pine_P1_6:removeEventListener( "tap", tintPlantP1 )
        pine_P1_7:scale(2.40, 2.95)
        pine_P1_7:removeEventListener( "tap", tintPlantP1 )

        ecosystem_P1:insert( P1Pine)
        P1Pine:toBack()

        transition.to( P1Select, { time=500, y=(-3) } )
        toggleVisibility( donebtn_spawnPineP1 )
        toggleVisibility( compostButtonPineP1 )

    end
    donebtn_spawnPineP1:addEventListener( "tap", donebtn_spawn_tapPineP1 )

    -- Done Kaori
    local function donebtn_spawn_tapKaoriP1 ()

        transition.to( P1Colouring, { time=500, y=(140) } )
    
        clicksound ()
        donesound ()
        resetTimer()
        display.remove( Kaori_P1_Text )
    
        FinishedPlantCountP1 = FinishedPlantCountP1 + 1
        FinishedPlantTextP1.text = FinishedPlantCountP1
    
        LargePlantCountP1 = LargePlantCountP1 + 1
        
        if LargePlantCountP1 >=3 and FinishedPlantCountP1 >=6  then
            GoToEcosystemP1()
        end 
    
        transition.to(P1Kaori, {
            x= math.random(-300, 500 ),
            y= math.random(-1355, -1350),
            time=1000})
        Kaori_P1:scale(2.35, 4.35)
        Kaori_P1:removeEventListener( "tap", tintPlantP1 )
        Kaori_P1_2:scale(2.35, 4.35)
        Kaori_P1_2:removeEventListener( "tap", tintPlantP1 )
        Kaori_P1_3:scale(2.35, 4.35)
        Kaori_P1_3:removeEventListener( "tap", tintPlantP1 )
        Kaori_P1_4:scale(2.35, 4.35)
        Kaori_P1_4:removeEventListener( "tap", tintPlantP1 )
        Kaori_P1_5:scale(2.35, 4.35)
        Kaori_P1_5:removeEventListener( "tap", tintPlantP1 )
        Kaori_P1_6:scale(2.35, 4.35)
        Kaori_P1_6:removeEventListener( "tap", tintPlantP1 )
        Kaori_P1_7:scale(2.35, 4.35)
        Kaori_P1_7:removeEventListener( "tap", tintPlantP1 )
        Kaori_P1_8:scale(2.35, 4.35)
        Kaori_P1_8:removeEventListener( "tap", tintPlantP1 )
           
        ecosystem_P1:insert( P1Kaori )
        P1Kaori:toBack()
    
        transition.to( P1Select, { time=500, y=(-3) } )
        toggleVisibility( donebtn_spawnKaoriP1 )
        toggleVisibility( compostButtonKaoriP1 )
    
    end
    donebtn_spawnKaoriP1:addEventListener( "tap", donebtn_spawn_tapKaoriP1 )

    -- Done Magnolia
    local function donebtn_spawn_tapMagnoliaP1 ()

        transition.to( P1Colouring, { time=500, y=(140) } )

        clicksound ()
        donesound ()
        resetTimer()
        display.remove( Magnolia_P1_Text )

        FinishedPlantCountP1 = FinishedPlantCountP1 + 1
        FinishedPlantTextP1.text = FinishedPlantCountP1

        LargePlantCountP1 = LargePlantCountP1 + 1

        if LargePlantCountP1 >=3 and FinishedPlantCountP1 >=6  then
            GoToEcosystemP1()
        end 

        transition.to(P1Magnolia, {
            x= math.random(-300, 500 ),
            y= math.random(-1500, -1495),
            time=1000})
        Magnolia_P1:scale(2.5, 3.45)
        Magnolia_P1:removeEventListener( "tap", tintPlantP1 )
        Magnolia_P1_2:scale(2.5, 3.45)
        Magnolia_P1_2:removeEventListener( "tap", tintPlantP1 )
        Magnolia_P1_3:scale(2.5, 3.45)
        Magnolia_P1_3:removeEventListener( "tap", tintPlantP1 )
        Magnolia_P1_4:scale(2.5, 3.45)
        Magnolia_P1_4:removeEventListener( "tap", tintPlantP1 )
        Magnolia_P1_5:scale(2.5, 3.45)
        Magnolia_P1_5:removeEventListener( "tap", tintPlantP1 )
        Magnolia_P1_6:scale(2.5, 3.45)
        Magnolia_P1_6:removeEventListener( "tap", tintPlantP1 )
        Magnolia_P1_7:scale(2.5, 3.45)
        Magnolia_P1_7:removeEventListener( "tap", tintPlantP1 )

        ecosystem_P1:insert( P1Magnolia)
        P1Magnolia:toBack()

        transition.to( P1Select, { time=500, y=(-3) } )
        toggleVisibility( donebtn_spawnMagnoliaP1 )
        toggleVisibility( compostButtonMagnoliaP1 )

    end
    donebtn_spawnMagnoliaP1:addEventListener( "tap", donebtn_spawn_tapMagnoliaP1 )

    ------------------------------
    -- Player Two done functions
    ------------------------------

    -- Done Flax
    local function donebtn_spawn_tapFlaxP2 ()

        transition.to( P2Colouring, { time=500, y=(140) } )

        clicksound ()
        donesound ()
        resetTimer()
        display.remove( flax_P2_Text )

        FinishedPlantCountP2 = FinishedPlantCountP2 + 1
        FinishedPlantTextP2.text = FinishedPlantCountP2

        SmallPlantCountP2 = SmallPlantCountP2 + 1

        if SmallPlantCountP2 == 1 then

         toggleVisibility( P2MediumPlants )
        end
        
        if LargePlantCountP2 >=3 and FinishedPlantCountP2 >=6  then
            GoToEcosystemP2()
        end  

        transition.to(P2Flax, {
            x= math.random(-200, 400 ),
            y= math.random(-1105, -1100),
            time=1000})
        flax_P2:scale(1.35, 1.35)
        flax_P2:removeEventListener( "tap", tintPlantP2 )
        flax_P2_2:scale(1.35, 1.35)
        flax_P2_2:removeEventListener( "tap", tintPlantP2 )
        flax_P2_3:scale(1.35, 1.35)
        flax_P2_3:removeEventListener( "tap", tintPlantP2 )
        flax_P2_4:scale(1.35, 1.35)
        flax_P2_4:removeEventListener( "tap", tintPlantP2 )
        flax_P2_5:scale(1.35, 1.35)
        flax_P2_5:removeEventListener( "tap", tintPlantP2 )
        flax_P2_6:scale(1.35, 1.35)
        flax_P2_6:removeEventListener( "tap", tintPlantP2 )
        flax_P2_7:scale(1.35, 1.35)
        flax_P2_7:removeEventListener( "tap", tintPlantP2 )

        ecosystem_P2:insert( P2Flax )
        P2Flax:toFront()

        transition.to( P2Select, { time=500, y=(-3) } )
        toggleVisibility( donebtn_spawnFlaxP2 )
        toggleVisibility( compostButtonFlaxP2 )

    end
    donebtn_spawnFlaxP2:addEventListener( "tap", donebtn_spawn_tapFlaxP2 )

    -- Done Fern
    local function donebtn_spawn_tapFernP2 ()

        transition.to( P2Colouring, { time=500, y=(140) } )
    
        clicksound ()
        donesound ()
        resetTimer()
        display.remove( fern_P2_Text )
    
        FinishedPlantCountP2 = FinishedPlantCountP2 + 1
        FinishedPlantTextP2.text = FinishedPlantCountP2
    
        SmallPlantCountP2 = SmallPlantCountP2 + 1
    
        if SmallPlantCountP2 == 1 then
            toggleVisibility( P2MediumPlants )
        end  
    
        if LargePlantCountP2 >=3 and FinishedPlantCountP2 >=6  then
            GoToEcosystemP2()
        end 
    
        transition.to(P2Fern, {
            x= math.random(-200, 600 ),
            y= math.random(-1080, -1075),
            time=1000})
        fern_P2:scale(1.35, 1.35)
        fern_P2:removeEventListener( "tap", tintPlantP2 )
        fern_P2_2:scale(1.35, 1.35)
        fern_P2_2:removeEventListener( "tap", tintPlantP2 )
        fern_P2_3:scale(1.35, 1.35)
        fern_P2_3:removeEventListener( "tap", tintPlantP2 )
        fern_P2_4:scale(1.35, 1.35)
        fern_P2_4:removeEventListener( "tap", tintPlantP2 )
        fern_P2_5:scale(1.35, 1.35)
        fern_P2_5:removeEventListener( "tap", tintPlantP2 )
    
        ecosystem_P2:insert( P2Fern )
        P2Fern:toFront()
    
        transition.to( P2Select, { time=500, y=(-3) } )
        toggleVisibility( donebtn_spawnFernP2 )
        toggleVisibility( compostButtonFernP2 )
    
    end
    donebtn_spawnFernP2:addEventListener( "tap", donebtn_spawn_tapFernP2 )

    -- Done Horsetail
    local function donebtn_spawn_tapHorsetailP2 ()

        transition.to( P2Colouring, { time=500, y=(140) } )
    
        clicksound ()
        donesound ()
        resetTimer()
        display.remove( Horsetail_P2_Text )
    
        FinishedPlantCountP2 = FinishedPlantCountP2 + 1
        FinishedPlantTextP2.text = FinishedPlantCountP2
    
        SmallPlantCountP2 = SmallPlantCountP2 + 1
    
        if SmallPlantCountP2 == 1 then
    
            toggleVisibility( P2MediumPlants )
        end
            
        if LargePlantCountP2 >=3 and FinishedPlantCountP2 >=6  then
            GoToEcosystemP2()
        end  
    
        transition.to(P2Horsetail, {
            x= math.random(-200, 400 ),
            y= math.random(-1120, -1115),
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
        P2Horsetail:toFront()
    
        transition.to( P2Select, { time=500, y=(-3) } )
        toggleVisibility( donebtn_spawnHorsetailP2 )
        toggleVisibility( compostButtonHorsetailP2 )

    end
    donebtn_spawnHorsetailP2:addEventListener( "tap", donebtn_spawn_tapHorsetailP2 )

    -- Done Palm
    local function donebtn_spawn_tapPalmP2 ()

        transition.to( P2Colouring, { time=500, y=(140) } )

        clicksound ()
        donesound ()
        resetTimer()
        display.remove( palm_P2_Text )

        FinishedPlantCountP2 = FinishedPlantCountP2 + 1
        FinishedPlantTextP2.text = FinishedPlantCountP2

        MediumPlantCountP2 = MediumPlantCountP2 + 1

        if MediumPlantCountP2 == 2 then

         toggleVisibility( P2LargePlants )
        end  

        if LargePlantCountP2 >=3 and FinishedPlantCountP2 >=6  then
            GoToEcosystemP2()
        end 

        transition.to(P2Palm, {
            x= math.random(-300, 500 ),
            y= math.random(-1210, -1205),
            time=1000})
        palm_P2:scale(2.35, 2.95)
        palm_P2:removeEventListener( "tap", tintPlantP2 )
        palm_P2_2:scale(2.35, 2.95)
        palm_P2_2:removeEventListener( "tap", tintPlantP2 )
        palm_P2_3:scale(2.35, 2.95)
        palm_P2_3:removeEventListener( "tap", tintPlantP2 )
        palm_P2_4:scale(2.35, 2.95)
        palm_P2_4:removeEventListener( "tap", tintPlantP2 )
        palm_P2_5:scale(2.35, 2.95)
        palm_P2_5:removeEventListener( "tap", tintPlantP2 )
        palm_P2_6:scale(2.35, 2.95)
        palm_P2_6:removeEventListener( "tap", tintPlantP2 )
        palm_P2_7:scale(2.35, 2.95)
        palm_P2_7:removeEventListener( "tap", tintPlantP2 )
        palm_P2_8:scale(2.35, 2.95)
        palm_P2_8:removeEventListener( "tap", tintPlantP2 )
        palm_P2_9:scale(2.35, 2.95)
        palm_P2_9:removeEventListener( "tap", tintPlantP2 )
        palm_P2_10:scale(2.35, 2.95)
        palm_P2_10:removeEventListener( "tap", tintPlantP2 )

        ecosystem_P2:insert( P2Palm )

        transition.to( P2Select, { time=500, y=(-3) } )
        toggleVisibility( donebtn_spawnPalmP2 )
        toggleVisibility( compostButtonPalmP2 )

    end
    donebtn_spawnPalmP2:addEventListener( "tap", donebtn_spawn_tapPalmP2 )

    -- Done Cycad
    local function donebtn_spawn_tapCycadP2 ()

        transition.to( P2Colouring, { time=500, y=(140) } )

        clicksound ()
        donesound ()
        resetTimer()
        display.remove( Cycad_P2_Text )

        FinishedPlantCountP2 = FinishedPlantCountP2 + 1
        FinishedPlantTextP2.text = FinishedPlantCountP2

        MediumPlantCountP2 = MediumPlantCountP2 + 1

        if MediumPlantCountP2 == 2 then
         toggleVisibility( P2LargePlants )
        end  

        if LargePlantCountP2 >=3 and FinishedPlantCountP2 >=6  then
            GoToEcosystemP2()
        end 

        transition.to(P2Cycad, {
            x= math.random(-300, 500 ),
            y= math.random(-1230, -1225),
            time=1000})
        Cycad_P2:scale(2.85, 2.85)
        Cycad_P2:removeEventListener( "tap", tintPlantP2 )
        Cycad_P2_2:scale(2.85, 2.85)
        Cycad_P2_2:removeEventListener( "tap", tintPlantP2 )
        Cycad_P2_3:scale(2.85, 2.85)
        Cycad_P2_3:removeEventListener( "tap", tintPlantP2 )
        Cycad_P2_4:scale(2.85, 2.85)
        Cycad_P2_4:removeEventListener( "tap", tintPlantP2 )
        Cycad_P2_5:scale(2.85, 2.85)
        Cycad_P2_5:removeEventListener( "tap", tintPlantP2 )

        ecosystem_P2:insert( P2Cycad )

        transition.to( P2Select, { time=500, y=(-3) } )
        toggleVisibility( donebtn_spawnCycadP2 )
        toggleVisibility( compostButtonCycadP2 )

    end
    donebtn_spawnCycadP2:addEventListener( "tap", donebtn_spawn_tapCycadP2 )

    -- Done TreeFern
    local function donebtn_spawn_tapTreeFernP2 ()

        transition.to( P2Colouring, { time=500, y=(140) } )

        clicksound ()
        donesound ()
        resetTimer()
        display.remove( TreeFern_P2_Text )

        FinishedPlantCountP2 = FinishedPlantCountP2 + 1
        FinishedPlantTextP2.text = FinishedPlantCountP2

        MediumPlantCountP2 = MediumPlantCountP2 + 1

        if MediumPlantCountP2 == 2 then
         toggleVisibility( P2LargePlants )
        end  

        if LargePlantCountP2 >=3 and FinishedPlantCountP2 >=6  then
            GoToEcosystemP2()
        end 

        transition.to(P2TreeFern, {
            x= math.random(-300, 500 ),
            y= math.random(-1290, -1285),
            time=1000})
        TreeFern_P2:scale(2.55, 2.55)
        TreeFern_P2:removeEventListener( "tap", tintPlantP2 )
        TreeFern_P2_2:scale(2.55, 2.55)
        TreeFern_P2_2:removeEventListener( "tap", tintPlantP2 )
        TreeFern_P2_3:scale(2.55, 2.55)
        TreeFern_P2_3:removeEventListener( "tap", tintPlantP2 )
        TreeFern_P2_4:scale(2.55, 2.55)
        TreeFern_P2_4:removeEventListener( "tap", tintPlantP2 )
        TreeFern_P2_5:scale(2.55, 2.55)
        TreeFern_P2_5:removeEventListener( "tap", tintPlantP2 )
        TreeFern_P2_6:scale(2.55, 2.55)
        TreeFern_P2_6:removeEventListener( "tap", tintPlantP2 )
        TreeFern_P2_7:scale(2.55, 2.55)
        TreeFern_P2_7:removeEventListener( "tap", tintPlantP2 )
        TreeFern_P2_8:scale(2.55, 2.55)
        TreeFern_P2_8:removeEventListener( "tap", tintPlantP2 )
        TreeFern_P2_9:scale(2.55, 2.55)
        TreeFern_P2_9:removeEventListener( "tap", tintPlantP2 )

        ecosystem_P2:insert( P2TreeFern )

        transition.to( P2Select, { time=500, y=(-3) } )
        toggleVisibility( donebtn_spawnTreeFernP2 )
        toggleVisibility( compostButtonTreeFernP2 )

    end
    donebtn_spawnTreeFernP2:addEventListener( "tap", donebtn_spawn_tapTreeFernP2 )

    -- Done Pine
    local function donebtn_spawn_tapPineP2 ()

        transition.to( P2Colouring, { time=500, y=(140) } )

        clicksound ()
        donesound ()
        resetTimer()
        display.remove( pine_P2_Text )

        FinishedPlantCountP2 = FinishedPlantCountP2 + 1
        FinishedPlantTextP2.text = FinishedPlantCountP2

        LargePlantCountP2 = LargePlantCountP2 + 1

        if LargePlantCountP2 >=3 and FinishedPlantCountP2 >=6  then
            GoToEcosystemP2()
        end 

        transition.to(P2Pine, {
            x= math.random(-300, 500 ),
            y= math.random(-1350, -1345),
            time=1000})
        pine_P2:scale(2.40, 2.95)
        pine_P2:removeEventListener( "tap", tintPlantP2 )
        pine_P2_2:scale(2.40, 2.95)
        pine_P2_2:removeEventListener( "tap", tintPlantP2 )
        pine_P2_3:scale(2.40, 2.95)
        pine_P2_3:removeEventListener( "tap", tintPlantP2 )
        pine_P2_4:scale(2.40, 2.95)
        pine_P2_4:removeEventListener( "tap", tintPlantP2 )
        pine_P2_5:scale(2.40, 2.95)
        pine_P2_5:removeEventListener( "tap", tintPlantP2 )
        pine_P2_6:scale(2.40, 2.95)
        pine_P2_6:removeEventListener( "tap", tintPlantP2 )
        pine_P2_7:scale(2.40, 2.95)
        pine_P2_7:removeEventListener( "tap", tintPlantP2 )

        ecosystem_P2:insert( P2Pine)
        P2Pine:toBack()

        transition.to( P2Select, { time=500, y=(-3) } )
        toggleVisibility( donebtn_spawnPineP2 )
        toggleVisibility( compostButtonPineP2 )

    end
    donebtn_spawnPineP2:addEventListener( "tap", donebtn_spawn_tapPineP2 )

    -- Done Kaori
    local function donebtn_spawn_tapKaoriP2 ()

        transition.to( P2Colouring, { time=500, y=(140) } )
    
        clicksound ()
        donesound ()
        resetTimer()
        display.remove( Kaori_P2_Text )
    
        FinishedPlantCountP2 = FinishedPlantCountP2 + 1
        FinishedPlantTextP2.text = FinishedPlantCountP2
    
        LargePlantCountP2 = LargePlantCountP2 + 1
        
        if LargePlantCountP2 >=3 and FinishedPlantCountP2 >=6  then
            GoToEcosystemP2()
        end 
    
        transition.to(P2Kaori, {
            x= math.random(-300, 500 ),
            y= math.random(-1355, -1350),
            time=1000})
        Kaori_P2:scale(2.35, 4.35)
        Kaori_P2:removeEventListener( "tap", tintPlantP2 )
        Kaori_P2_2:scale(2.35, 4.35)
        Kaori_P2_2:removeEventListener( "tap", tintPlantP2 )
        Kaori_P2_3:scale(2.35, 4.35)
        Kaori_P2_3:removeEventListener( "tap", tintPlantP2 )
        Kaori_P2_4:scale(2.35, 4.35)
        Kaori_P2_4:removeEventListener( "tap", tintPlantP2 )
        Kaori_P2_5:scale(2.35, 4.35)
        Kaori_P2_5:removeEventListener( "tap", tintPlantP2 )
        Kaori_P2_6:scale(2.35, 4.35)
        Kaori_P2_6:removeEventListener( "tap", tintPlantP2 )
        Kaori_P2_7:scale(2.35, 4.35)
        Kaori_P2_7:removeEventListener( "tap", tintPlantP2 )
        Kaori_P2_8:scale(2.35, 4.35)
        Kaori_P2_8:removeEventListener( "tap", tintPlantP2 )
           
        ecosystem_P2:insert( P2Kaori )
        P2Kaori:toBack()
    
        transition.to( P2Select, { time=500, y=(-3) } )
        toggleVisibility( donebtn_spawnKaoriP2 )
        toggleVisibility( compostButtonKaoriP2 )
    
    end
    donebtn_spawnKaoriP2:addEventListener( "tap", donebtn_spawn_tapKaoriP2 )

    -- Done Magnolia
    local function donebtn_spawn_tapMagnoliaP2 ()

        transition.to( P2Colouring, { time=500, y=(140) } )

        clicksound ()
        donesound ()
        resetTimer()
        display.remove( Magnolia_P2_Text )

        FinishedPlantCountP2 = FinishedPlantCountP2 + 1
        FinishedPlantTextP2.text = FinishedPlantCountP2

        LargePlantCountP2 = LargePlantCountP2 + 1

        if LargePlantCountP2 >=3 and FinishedPlantCountP2 >=6  then
            GoToEcosystemP2()
        end 

        transition.to(P2Magnolia, {
            x= math.random(-300, 500 ),
            y= math.random(-1500, -1495),
            time=1000})
        Magnolia_P2:scale(2.5, 3.45)
        Magnolia_P2:removeEventListener( "tap", tintPlantP2 )
        Magnolia_P2_2:scale(2.5, 3.45)
        Magnolia_P2_2:removeEventListener( "tap", tintPlantP2 )
        Magnolia_P2_3:scale(2.5, 3.45)
        Magnolia_P2_3:removeEventListener( "tap", tintPlantP2 )
        Magnolia_P2_4:scale(2.5, 3.45)
        Magnolia_P2_4:removeEventListener( "tap", tintPlantP2 )
        Magnolia_P2_5:scale(2.5, 3.45)
        Magnolia_P2_5:removeEventListener( "tap", tintPlantP2 )
        Magnolia_P2_6:scale(2.5, 3.45)
        Magnolia_P2_6:removeEventListener( "tap", tintPlantP2 )
        Magnolia_P2_7:scale(2.5, 3.45)
        Magnolia_P2_7:removeEventListener( "tap", tintPlantP2 )

        ecosystem_P2:insert( P2Magnolia)
        P2Magnolia:toBack()

        transition.to( P2Select, { time=500, y=(-3) } )
        toggleVisibility( donebtn_spawnMagnoliaP2 )
        toggleVisibility( compostButtonMagnoliaP2 )

    end
    donebtn_spawnMagnoliaP2:addEventListener( "tap", donebtn_spawn_tapMagnoliaP2 )

    ------------------------------
    -- Player Three done functions
    ------------------------------

    -- Done Flax
    local function donebtn_spawn_tapFlaxP3 ()

        transition.to( P3Colouring, { time=500, y=(140) } )

        clicksound ()
        donesound ()
        resetTimer()
        display.remove( flax_P3_Text )

        FinishedPlantCountP3 = FinishedPlantCountP3 + 1
        FinishedPlantTextP3.text = FinishedPlantCountP3

        SmallPlantCountP3 = SmallPlantCountP3 + 1

        if SmallPlantCountP3 == 1 then

         toggleVisibility( P3MediumPlants )
        end
        
        if LargePlantCountP3 >=3 and FinishedPlantCountP3 >=6  then
            GoToEcosystemP3()
        end  

        transition.to(P3Flax, {
            x= math.random(-200, 400 ),
            y= math.random(-1105, -1100),
            time=1000})
        flax_P3:scale(1.35, 1.35)
        flax_P3:removeEventListener( "tap", tintPlantP3 )
        flax_P3_2:scale(1.35, 1.35)
        flax_P3_2:removeEventListener( "tap", tintPlantP3 )
        flax_P3_3:scale(1.35, 1.35)
        flax_P3_3:removeEventListener( "tap", tintPlantP3 )
        flax_P3_4:scale(1.35, 1.35)
        flax_P3_4:removeEventListener( "tap", tintPlantP3 )
        flax_P3_5:scale(1.35, 1.35)
        flax_P3_5:removeEventListener( "tap", tintPlantP3 )
        flax_P3_6:scale(1.35, 1.35)
        flax_P3_6:removeEventListener( "tap", tintPlantP3 )
        flax_P3_7:scale(1.35, 1.35)
        flax_P3_7:removeEventListener( "tap", tintPlantP3 )

        ecosystem_P3:insert( P3Flax )
        P3Flax:toFront()

        transition.to( P3Select, { time=500, y=(-3) } )
        toggleVisibility( donebtn_spawnFlaxP3 )
        toggleVisibility( compostButtonFlaxP3 )

    end
    donebtn_spawnFlaxP3:addEventListener( "tap", donebtn_spawn_tapFlaxP3 )

    -- Done Fern
    local function donebtn_spawn_tapFernP3 ()

        transition.to( P3Colouring, { time=500, y=(140) } )
    
        clicksound ()
        donesound ()
        resetTimer()
        display.remove( fern_P3_Text )
    
        FinishedPlantCountP3 = FinishedPlantCountP3 + 1
        FinishedPlantTextP3.text = FinishedPlantCountP3
    
        SmallPlantCountP3 = SmallPlantCountP3 + 1
    
        if SmallPlantCountP3 == 1 then
            toggleVisibility( P3MediumPlants )
        end  
    
        if LargePlantCountP3 >=3 and FinishedPlantCountP3 >=6  then
            GoToEcosystemP3()
        end 
    
        transition.to(P3Fern, {
            x= math.random(-200, 600 ),
            y= math.random(-1080, -1075),
            time=1000})
        fern_P3:scale(1.35, 1.35)
        fern_P3:removeEventListener( "tap", tintPlantP3 )
        fern_P3_2:scale(1.35, 1.35)
        fern_P3_2:removeEventListener( "tap", tintPlantP3 )
        fern_P3_3:scale(1.35, 1.35)
        fern_P3_3:removeEventListener( "tap", tintPlantP3 )
        fern_P3_4:scale(1.35, 1.35)
        fern_P3_4:removeEventListener( "tap", tintPlantP3 )
        fern_P3_5:scale(1.35, 1.35)
        fern_P3_5:removeEventListener( "tap", tintPlantP3 )
    
        ecosystem_P3:insert( P3Fern )
        P3Fern:toFront()
    
        transition.to( P3Select, { time=500, y=(-3) } )
        toggleVisibility( donebtn_spawnFernP3 )
        toggleVisibility( compostButtonFernP3 )
    
    end
    donebtn_spawnFernP3:addEventListener( "tap", donebtn_spawn_tapFernP3 )

    -- Done Horsetail
    local function donebtn_spawn_tapHorsetailP3 ()

        transition.to( P3Colouring, { time=500, y=(140) } )
    
        clicksound ()
        donesound ()
        resetTimer()
        display.remove( Horsetail_P3_Text )
    
        FinishedPlantCountP3 = FinishedPlantCountP3 + 1
        FinishedPlantTextP3.text = FinishedPlantCountP3
    
        SmallPlantCountP3 = SmallPlantCountP3 + 1
    
        if SmallPlantCountP3 == 1 then
    
            toggleVisibility( P3MediumPlants )
        end
            
        if LargePlantCountP3 >=3 and FinishedPlantCountP3 >=6  then
            GoToEcosystemP3()
        end  
    
        transition.to(P3Horsetail, {
            x= math.random(-200, 400 ),
            y= math.random(-1120, -1115),
            time=1000})
        Horsetail_P3:scale(1.35, 1.35)
        Horsetail_P3:removeEventListener( "tap", tintPlantP3 )
        Horsetail_P3_2:scale(1.35, 1.35)
        Horsetail_P3_2:removeEventListener( "tap", tintPlantP3 )
        Horsetail_P3_3:scale(1.35, 1.35)
        Horsetail_P3_3:removeEventListener( "tap", tintPlantP3 )
        Horsetail_P3_4:scale(1.35, 1.35)
        Horsetail_P3_4:removeEventListener( "tap", tintPlantP3 )
        Horsetail_P3_5:scale(1.35, 1.35)
        Horsetail_P3_5:removeEventListener( "tap", tintPlantP3 )
       
        ecosystem_P3:insert( P3Horsetail )
        P3Horsetail:toFront()
    
        transition.to( P3Select, { time=500, y=(-3) } )
        toggleVisibility( donebtn_spawnHorsetailP3 )
        toggleVisibility( compostButtonHorsetailP3 )

    end
    donebtn_spawnHorsetailP3:addEventListener( "tap", donebtn_spawn_tapHorsetailP3 )

    -- Done Palm
    local function donebtn_spawn_tapPalmP3 ()

        transition.to( P3Colouring, { time=500, y=(140) } )

        clicksound ()
        donesound ()
        resetTimer()
        display.remove( palm_P3_Text )

        FinishedPlantCountP3 = FinishedPlantCountP3 + 1
        FinishedPlantTextP3.text = FinishedPlantCountP3

        MediumPlantCountP3 = MediumPlantCountP3 + 1

        if MediumPlantCountP3 == 2 then

         toggleVisibility( P3LargePlants )
        end  

        if LargePlantCountP3 >=3 and FinishedPlantCountP3 >=6  then
            GoToEcosystemP3()
        end 

        transition.to(P3Palm, {
            x= math.random(-300, 500 ),
            y= math.random(-1210, -1205),
            time=1000})
        palm_P3:scale(2.35, 2.95)
        palm_P3:removeEventListener( "tap", tintPlantP3 )
        palm_P3_2:scale(2.35, 2.95)
        palm_P3_2:removeEventListener( "tap", tintPlantP3 )
        palm_P3_3:scale(2.35, 2.95)
        palm_P3_3:removeEventListener( "tap", tintPlantP3 )
        palm_P3_4:scale(2.35, 2.95)
        palm_P3_4:removeEventListener( "tap", tintPlantP3 )
        palm_P3_5:scale(2.35, 2.95)
        palm_P3_5:removeEventListener( "tap", tintPlantP3 )
        palm_P3_6:scale(2.35, 2.95)
        palm_P3_6:removeEventListener( "tap", tintPlantP3 )
        palm_P3_7:scale(2.35, 2.95)
        palm_P3_7:removeEventListener( "tap", tintPlantP3 )
        palm_P3_8:scale(2.35, 2.95)
        palm_P3_8:removeEventListener( "tap", tintPlantP3 )
        palm_P3_9:scale(2.35, 2.95)
        palm_P3_9:removeEventListener( "tap", tintPlantP3 )
        palm_P3_10:scale(2.35, 2.95)
        palm_P3_10:removeEventListener( "tap", tintPlantP3 )

        ecosystem_P3:insert( P3Palm )

        transition.to( P3Select, { time=500, y=(-3) } )
        toggleVisibility( donebtn_spawnPalmP3 )
        toggleVisibility( compostButtonPalmP3 )

    end
    donebtn_spawnPalmP3:addEventListener( "tap", donebtn_spawn_tapPalmP3 )

    -- Done Cycad
    local function donebtn_spawn_tapCycadP3 ()

        transition.to( P3Colouring, { time=500, y=(140) } )

        clicksound ()
        donesound ()
        resetTimer()
        display.remove( Cycad_P3_Text )

        FinishedPlantCountP3 = FinishedPlantCountP3 + 1
        FinishedPlantTextP3.text = FinishedPlantCountP3

        MediumPlantCountP3 = MediumPlantCountP3 + 1

        if MediumPlantCountP3 == 2 then
         toggleVisibility( P3LargePlants )
        end  

        if LargePlantCountP3 >=3 and FinishedPlantCountP3 >=6  then
            GoToEcosystemP3()
        end 

        transition.to(P3Cycad, {
            x= math.random(-300, 500 ),
            y= math.random(-1230, -1225),
            time=1000})
        Cycad_P3:scale(2.85, 2.85)
        Cycad_P3:removeEventListener( "tap", tintPlantP3 )
        Cycad_P3_2:scale(2.85, 2.85)
        Cycad_P3_2:removeEventListener( "tap", tintPlantP3 )
        Cycad_P3_3:scale(2.85, 2.85)
        Cycad_P3_3:removeEventListener( "tap", tintPlantP3 )
        Cycad_P3_4:scale(2.85, 2.85)
        Cycad_P3_4:removeEventListener( "tap", tintPlantP3 )
        Cycad_P3_5:scale(2.85, 2.85)
        Cycad_P3_5:removeEventListener( "tap", tintPlantP3 )

        ecosystem_P3:insert( P3Cycad )

        transition.to( P3Select, { time=500, y=(-3) } )
        toggleVisibility( donebtn_spawnCycadP3 )
        toggleVisibility( compostButtonCycadP3 )

    end
    donebtn_spawnCycadP3:addEventListener( "tap", donebtn_spawn_tapCycadP3 )

    -- Done TreeFern
    local function donebtn_spawn_tapTreeFernP3 ()

        transition.to( P3Colouring, { time=500, y=(140) } )

        clicksound ()
        donesound ()
        resetTimer()
        display.remove( TreeFern_P3_Text )

        FinishedPlantCountP3 = FinishedPlantCountP3 + 1
        FinishedPlantTextP3.text = FinishedPlantCountP3

        MediumPlantCountP3 = MediumPlantCountP3 + 1

        if MediumPlantCountP3 == 2 then
         toggleVisibility( P3LargePlants )
        end  

        if LargePlantCountP3 >=3 and FinishedPlantCountP3 >=6  then
            GoToEcosystemP3()
        end 

        transition.to(P3TreeFern, {
            x= math.random(-300, 500 ),
            y= math.random(-1290, -1285),
            time=1000})
        TreeFern_P3:scale(2.55, 2.55)
        TreeFern_P3:removeEventListener( "tap", tintPlantP3 )
        TreeFern_P3_2:scale(2.55, 2.55)
        TreeFern_P3_2:removeEventListener( "tap", tintPlantP3 )
        TreeFern_P3_3:scale(2.55, 2.55)
        TreeFern_P3_3:removeEventListener( "tap", tintPlantP3 )
        TreeFern_P3_4:scale(2.55, 2.55)
        TreeFern_P3_4:removeEventListener( "tap", tintPlantP3 )
        TreeFern_P3_5:scale(2.55, 2.55)
        TreeFern_P3_5:removeEventListener( "tap", tintPlantP3 )
        TreeFern_P3_6:scale(2.55, 2.55)
        TreeFern_P3_6:removeEventListener( "tap", tintPlantP3 )
        TreeFern_P3_7:scale(2.55, 2.55)
        TreeFern_P3_7:removeEventListener( "tap", tintPlantP3 )
        TreeFern_P3_8:scale(2.55, 2.55)
        TreeFern_P3_8:removeEventListener( "tap", tintPlantP3 )
        TreeFern_P3_9:scale(2.55, 2.55)
        TreeFern_P3_9:removeEventListener( "tap", tintPlantP3 )

        ecosystem_P3:insert( P3TreeFern )

        transition.to( P3Select, { time=500, y=(-3) } )
        toggleVisibility( donebtn_spawnTreeFernP3 )
        toggleVisibility( compostButtonTreeFernP3 )

    end
    donebtn_spawnTreeFernP3:addEventListener( "tap", donebtn_spawn_tapTreeFernP3 )

    -- Done Pine
    local function donebtn_spawn_tapPineP3 ()

        transition.to( P3Colouring, { time=500, y=(140) } )

        clicksound ()
        donesound ()
        resetTimer()
        display.remove( pine_P3_Text )

        FinishedPlantCountP3 = FinishedPlantCountP3 + 1
        FinishedPlantTextP3.text = FinishedPlantCountP3

        LargePlantCountP3 = LargePlantCountP3 + 1

        if LargePlantCountP3 >=3 and FinishedPlantCountP3 >=6  then
            GoToEcosystemP3()
        end 

        transition.to(P3Pine, {
            x= math.random(-300, 500 ),
            y= math.random(-1350, -1345),
            time=1000})
        pine_P3:scale(2.40, 2.95)
        pine_P3:removeEventListener( "tap", tintPlantP3 )
        pine_P3_2:scale(2.40, 2.95)
        pine_P3_2:removeEventListener( "tap", tintPlantP3 )
        pine_P3_3:scale(2.40, 2.95)
        pine_P3_3:removeEventListener( "tap", tintPlantP3 )
        pine_P3_4:scale(2.40, 2.95)
        pine_P3_4:removeEventListener( "tap", tintPlantP3 )
        pine_P3_5:scale(2.40, 2.95)
        pine_P3_5:removeEventListener( "tap", tintPlantP3 )
        pine_P3_6:scale(2.40, 2.95)
        pine_P3_6:removeEventListener( "tap", tintPlantP3 )
        pine_P3_7:scale(2.40, 2.95)
        pine_P3_7:removeEventListener( "tap", tintPlantP3 )

        ecosystem_P3:insert( P3Pine)
        P3Pine:toBack()

        transition.to( P3Select, { time=500, y=(-3) } )
        toggleVisibility( donebtn_spawnPineP3 )
        toggleVisibility( compostButtonPineP3 )

    end
    donebtn_spawnPineP3:addEventListener( "tap", donebtn_spawn_tapPineP3 )

    -- Done Kaori
    local function donebtn_spawn_tapKaoriP3 ()

        transition.to( P3Colouring, { time=500, y=(140) } )
    
        clicksound ()
        donesound ()
        resetTimer()
        display.remove( Kaori_P3_Text )
    
        FinishedPlantCountP3 = FinishedPlantCountP3 + 1
        FinishedPlantTextP3.text = FinishedPlantCountP3
    
        LargePlantCountP3 = LargePlantCountP3 + 1
        
        if LargePlantCountP3 >=3 and FinishedPlantCountP3 >=6  then
            GoToEcosystemP3()
        end 
    
        transition.to(P3Kaori, {
            x= math.random(-300, 500 ),
            y= math.random(-1355, -1350),
            time=1000})
        Kaori_P3:scale(2.35, 4.35)
        Kaori_P3:removeEventListener( "tap", tintPlantP3 )
        Kaori_P3_2:scale(2.35, 4.35)
        Kaori_P3_2:removeEventListener( "tap", tintPlantP3 )
        Kaori_P3_3:scale(2.35, 4.35)
        Kaori_P3_3:removeEventListener( "tap", tintPlantP3 )
        Kaori_P3_4:scale(2.35, 4.35)
        Kaori_P3_4:removeEventListener( "tap", tintPlantP3 )
        Kaori_P3_5:scale(2.35, 4.35)
        Kaori_P3_5:removeEventListener( "tap", tintPlantP3 )
        Kaori_P3_6:scale(2.35, 4.35)
        Kaori_P3_6:removeEventListener( "tap", tintPlantP3 )
        Kaori_P3_7:scale(2.35, 4.35)
        Kaori_P3_7:removeEventListener( "tap", tintPlantP3 )
        Kaori_P3_8:scale(2.35, 4.35)
        Kaori_P3_8:removeEventListener( "tap", tintPlantP3 )
           
        ecosystem_P3:insert( P3Kaori )
        P3Kaori:toBack()
    
        transition.to( P3Select, { time=500, y=(-3) } )
        toggleVisibility( donebtn_spawnKaoriP3 )
        toggleVisibility( compostButtonKaoriP3 )
    
    end
    donebtn_spawnKaoriP3:addEventListener( "tap", donebtn_spawn_tapKaoriP3 )

    -- Done Magnolia
    local function donebtn_spawn_tapMagnoliaP3 ()

        transition.to( P3Colouring, { time=500, y=(140) } )

        clicksound ()
        donesound ()
        resetTimer()
        display.remove( Magnolia_P3_Text )

        FinishedPlantCountP3 = FinishedPlantCountP3 + 1
        FinishedPlantTextP3.text = FinishedPlantCountP3

        LargePlantCountP3 = LargePlantCountP3 + 1

        if LargePlantCountP3 >=3 and FinishedPlantCountP3 >=6  then
            GoToEcosystemP3()
        end 

        transition.to(P3Magnolia, {
            x= math.random(-300, 500 ),
            y= math.random(-1500, -1495),
            time=1000})
        Magnolia_P3:scale(2.5, 3.45)
        Magnolia_P3:removeEventListener( "tap", tintPlantP3 )
        Magnolia_P3_2:scale(2.5, 3.45)
        Magnolia_P3_2:removeEventListener( "tap", tintPlantP3 )
        Magnolia_P3_3:scale(2.5, 3.45)
        Magnolia_P3_3:removeEventListener( "tap", tintPlantP3 )
        Magnolia_P3_4:scale(2.5, 3.45)
        Magnolia_P3_4:removeEventListener( "tap", tintPlantP3 )
        Magnolia_P3_5:scale(2.5, 3.45)
        Magnolia_P3_5:removeEventListener( "tap", tintPlantP3 )
        Magnolia_P3_6:scale(2.5, 3.45)
        Magnolia_P3_6:removeEventListener( "tap", tintPlantP3 )
        Magnolia_P3_7:scale(2.5, 3.45)
        Magnolia_P3_7:removeEventListener( "tap", tintPlantP3 )

        ecosystem_P3:insert( P3Magnolia)
        P3Magnolia:toBack()

        transition.to( P3Select, { time=500, y=(-3) } )
        toggleVisibility( donebtn_spawnMagnoliaP3 )
        toggleVisibility( compostButtonMagnoliaP3 )

    end
    donebtn_spawnMagnoliaP3:addEventListener( "tap", donebtn_spawn_tapMagnoliaP3 )
    -------------------------------
    -- Player Four done functions
    -------------------------------

    -- Done Flax
    local function donebtn_spawn_tapFlaxP4 ()

        transition.to( P4Colouring, { time=500, y=(140) } )

        clicksound ()
        donesound ()
        resetTimer()
        display.remove( flax_P4_Text )

        FinishedPlantCountP4 = FinishedPlantCountP4 + 1
        FinishedPlantTextP4.text = FinishedPlantCountP4

        SmallPlantCountP4 = SmallPlantCountP4 + 1

        if SmallPlantCountP4 == 1 then

         toggleVisibility( P4MediumPlants )
        end
        
        if LargePlantCountP4 >=3 and FinishedPlantCountP4 >=6  then
            GoToEcosystemP4()
        end  

        transition.to(P4Flax, {
            x= math.random(-200, 400 ),
            y= math.random(-1105, -1100),
            time=1000})
        flax_P4:scale(1.35, 1.35)
        flax_P4:removeEventListener( "tap", tintPlantP4 )
        flax_P4_2:scale(1.35, 1.35)
        flax_P4_2:removeEventListener( "tap", tintPlantP4 )
        flax_P4_3:scale(1.35, 1.35)
        flax_P4_3:removeEventListener( "tap", tintPlantP4 )
        flax_P4_4:scale(1.35, 1.35)
        flax_P4_4:removeEventListener( "tap", tintPlantP4 )
        flax_P4_5:scale(1.35, 1.35)
        flax_P4_5:removeEventListener( "tap", tintPlantP4 )
        flax_P4_6:scale(1.35, 1.35)
        flax_P4_6:removeEventListener( "tap", tintPlantP4 )
        flax_P4_7:scale(1.35, 1.35)
        flax_P4_7:removeEventListener( "tap", tintPlantP4 )

        ecosystem_P4:insert( P4Flax )
        P4Flax:toFront()

        transition.to( P4Select, { time=500, y=(-3) } )
        toggleVisibility( donebtn_spawnFlaxP4 )
        toggleVisibility( compostButtonFlaxP4 )

    end
    donebtn_spawnFlaxP4:addEventListener( "tap", donebtn_spawn_tapFlaxP4 )

    -- Done Fern
    local function donebtn_spawn_tapFernP4 ()

        transition.to( P4Colouring, { time=500, y=(140) } )
    
        clicksound ()
        donesound ()
        resetTimer()
        display.remove( fern_P4_Text )
    
        FinishedPlantCountP4 = FinishedPlantCountP4 + 1
        FinishedPlantTextP4.text = FinishedPlantCountP4
    
        SmallPlantCountP4 = SmallPlantCountP4 + 1
    
        if SmallPlantCountP4 == 1 then
            toggleVisibility( P4MediumPlants )
        end  
    
        if LargePlantCountP4 >=3 and FinishedPlantCountP4 >=6  then
            GoToEcosystemP4()
        end 
    
        transition.to(P4Fern, {
            x= math.random(-200, 600 ),
            y= math.random(-1080, -1075),
            time=1000})
        fern_P4:scale(1.35, 1.35)
        fern_P4:removeEventListener( "tap", tintPlantP4 )
        fern_P4_2:scale(1.35, 1.35)
        fern_P4_2:removeEventListener( "tap", tintPlantP4 )
        fern_P4_3:scale(1.35, 1.35)
        fern_P4_3:removeEventListener( "tap", tintPlantP4 )
        fern_P4_4:scale(1.35, 1.35)
        fern_P4_4:removeEventListener( "tap", tintPlantP4 )
        fern_P4_5:scale(1.35, 1.35)
        fern_P4_5:removeEventListener( "tap", tintPlantP4 )
    
        ecosystem_P4:insert( P4Fern )
        P4Fern:toFront()
    
        transition.to( P4Select, { time=500, y=(-3) } )
        toggleVisibility( donebtn_spawnFernP4 )
        toggleVisibility( compostButtonFernP4 )
    
    end
    donebtn_spawnFernP4:addEventListener( "tap", donebtn_spawn_tapFernP4 )

    -- Done Horsetail
    local function donebtn_spawn_tapHorsetailP4 ()

        transition.to( P4Colouring, { time=500, y=(140) } )
    
        clicksound ()
        donesound ()
        resetTimer()
        display.remove( Horsetail_P4_Text )
    
        FinishedPlantCountP4 = FinishedPlantCountP4 + 1
        FinishedPlantTextP4.text = FinishedPlantCountP4
    
        SmallPlantCountP4 = SmallPlantCountP4 + 1
    
        if SmallPlantCountP4 == 1 then
    
            toggleVisibility( P4MediumPlants )
        end
            
        if LargePlantCountP4 >=3 and FinishedPlantCountP4 >=6  then
            GoToEcosystemP4()
        end  
    
        transition.to(P4Horsetail, {
            x= math.random(-200, 400 ),
            y= math.random(-1120, -1115),
            time=1000})
        Horsetail_P4:scale(1.35, 1.35)
        Horsetail_P4:removeEventListener( "tap", tintPlantP4 )
        Horsetail_P4_2:scale(1.35, 1.35)
        Horsetail_P4_2:removeEventListener( "tap", tintPlantP4 )
        Horsetail_P4_3:scale(1.35, 1.35)
        Horsetail_P4_3:removeEventListener( "tap", tintPlantP4 )
        Horsetail_P4_4:scale(1.35, 1.35)
        Horsetail_P4_4:removeEventListener( "tap", tintPlantP4 )
        Horsetail_P4_5:scale(1.35, 1.35)
        Horsetail_P4_5:removeEventListener( "tap", tintPlantP4 )
       
        ecosystem_P4:insert( P4Horsetail )
        P4Horsetail:toFront()
    
        transition.to( P4Select, { time=500, y=(-3) } )
        toggleVisibility( donebtn_spawnHorsetailP4 )
        toggleVisibility( compostButtonHorsetailP4 )

    end
    donebtn_spawnHorsetailP4:addEventListener( "tap", donebtn_spawn_tapHorsetailP4 )

    -- Done Palm
    local function donebtn_spawn_tapPalmP4 ()

        transition.to( P4Colouring, { time=500, y=(140) } )

        clicksound ()
        donesound ()
        resetTimer()
        display.remove( palm_P4_Text )

        FinishedPlantCountP4 = FinishedPlantCountP4 + 1
        FinishedPlantTextP4.text = FinishedPlantCountP4

        MediumPlantCountP4 = MediumPlantCountP4 + 1

        if MediumPlantCountP4 == 2 then

         toggleVisibility( P4LargePlants )
        end  

        if LargePlantCountP4 >=3 and FinishedPlantCountP4 >=6  then
            GoToEcosystemP4()
        end 

        transition.to(P4Palm, {
            x= math.random(-300, 500 ),
            y= math.random(-1210, -1205),
            time=1000})
        palm_P4:scale(2.35, 2.95)
        palm_P4:removeEventListener( "tap", tintPlantP4 )
        palm_P4_2:scale(2.35, 2.95)
        palm_P4_2:removeEventListener( "tap", tintPlantP4 )
        palm_P4_3:scale(2.35, 2.95)
        palm_P4_3:removeEventListener( "tap", tintPlantP4 )
        palm_P4_4:scale(2.35, 2.95)
        palm_P4_4:removeEventListener( "tap", tintPlantP4 )
        palm_P4_5:scale(2.35, 2.95)
        palm_P4_5:removeEventListener( "tap", tintPlantP4 )
        palm_P4_6:scale(2.35, 2.95)
        palm_P4_6:removeEventListener( "tap", tintPlantP4 )
        palm_P4_7:scale(2.35, 2.95)
        palm_P4_7:removeEventListener( "tap", tintPlantP4 )
        palm_P4_8:scale(2.35, 2.95)
        palm_P4_8:removeEventListener( "tap", tintPlantP4 )
        palm_P4_9:scale(2.35, 2.95)
        palm_P4_9:removeEventListener( "tap", tintPlantP4 )
        palm_P4_10:scale(2.35, 2.95)
        palm_P4_10:removeEventListener( "tap", tintPlantP4 )

        ecosystem_P4:insert( P4Palm )

        transition.to( P4Select, { time=500, y=(-3) } )
        toggleVisibility( donebtn_spawnPalmP4 )
        toggleVisibility( compostButtonPalmP4 )

    end
    donebtn_spawnPalmP4:addEventListener( "tap", donebtn_spawn_tapPalmP4 )

    -- Done Cycad
    local function donebtn_spawn_tapCycadP4 ()

        transition.to( P4Colouring, { time=500, y=(140) } )

        clicksound ()
        donesound ()
        resetTimer()
        display.remove( Cycad_P4_Text )

        FinishedPlantCountP4 = FinishedPlantCountP4 + 1
        FinishedPlantTextP4.text = FinishedPlantCountP4

        MediumPlantCountP4 = MediumPlantCountP4 + 1

        if MediumPlantCountP4 == 2 then
         toggleVisibility( P4LargePlants )
        end  

        if LargePlantCountP4 >=3 and FinishedPlantCountP4 >=6  then
            GoToEcosystemP4()
        end 

        transition.to(P4Cycad, {
            x= math.random(-300, 500 ),
            y= math.random(-1230, -1225),
            time=1000})
        Cycad_P4:scale(2.85, 2.85)
        Cycad_P4:removeEventListener( "tap", tintPlantP4 )
        Cycad_P4_2:scale(2.85, 2.85)
        Cycad_P4_2:removeEventListener( "tap", tintPlantP4 )
        Cycad_P4_3:scale(2.85, 2.85)
        Cycad_P4_3:removeEventListener( "tap", tintPlantP4 )
        Cycad_P4_4:scale(2.85, 2.85)
        Cycad_P4_4:removeEventListener( "tap", tintPlantP4 )
        Cycad_P4_5:scale(2.85, 2.85)
        Cycad_P4_5:removeEventListener( "tap", tintPlantP4 )

        ecosystem_P4:insert( P4Cycad )

        transition.to( P4Select, { time=500, y=(-3) } )
        toggleVisibility( donebtn_spawnCycadP4 )
        toggleVisibility( compostButtonCycadP4 )

    end
    donebtn_spawnCycadP4:addEventListener( "tap", donebtn_spawn_tapCycadP4 )

    -- Done TreeFern
    local function donebtn_spawn_tapTreeFernP4 ()

        transition.to( P4Colouring, { time=500, y=(140) } )

        clicksound ()
        donesound ()
        resetTimer()
        display.remove( TreeFern_P4_Text )

        FinishedPlantCountP4 = FinishedPlantCountP4 + 1
        FinishedPlantTextP4.text = FinishedPlantCountP4

        MediumPlantCountP4 = MediumPlantCountP4 + 1

        if MediumPlantCountP4 == 2 then
         toggleVisibility( P4LargePlants )
        end  

        if LargePlantCountP4 >=3 and FinishedPlantCountP4 >=6  then
            GoToEcosystemP4()
        end 

        transition.to(P4TreeFern, {
            x= math.random(-300, 500 ),
            y= math.random(-1290, -1285),
            time=1000})
        TreeFern_P4:scale(2.55, 2.55)
        TreeFern_P4:removeEventListener( "tap", tintPlantP4 )
        TreeFern_P4_2:scale(2.55, 2.55)
        TreeFern_P4_2:removeEventListener( "tap", tintPlantP4 )
        TreeFern_P4_3:scale(2.55, 2.55)
        TreeFern_P4_3:removeEventListener( "tap", tintPlantP4 )
        TreeFern_P4_4:scale(2.55, 2.55)
        TreeFern_P4_4:removeEventListener( "tap", tintPlantP4 )
        TreeFern_P4_5:scale(2.55, 2.55)
        TreeFern_P4_5:removeEventListener( "tap", tintPlantP4 )
        TreeFern_P4_6:scale(2.55, 2.55)
        TreeFern_P4_6:removeEventListener( "tap", tintPlantP4 )
        TreeFern_P4_7:scale(2.55, 2.55)
        TreeFern_P4_7:removeEventListener( "tap", tintPlantP4 )
        TreeFern_P4_8:scale(2.55, 2.55)
        TreeFern_P4_8:removeEventListener( "tap", tintPlantP4 )
        TreeFern_P4_9:scale(2.55, 2.55)
        TreeFern_P4_9:removeEventListener( "tap", tintPlantP4 )

        ecosystem_P4:insert( P4TreeFern )

        transition.to( P4Select, { time=500, y=(-3) } )
        toggleVisibility( donebtn_spawnTreeFernP4 )
        toggleVisibility( compostButtonTreeFernP4 )

    end
    donebtn_spawnTreeFernP4:addEventListener( "tap", donebtn_spawn_tapTreeFernP4 )

    -- Done Pine
    local function donebtn_spawn_tapPineP4 ()

        transition.to( P4Colouring, { time=500, y=(140) } )

        clicksound ()
        donesound ()
        resetTimer()
        display.remove( pine_P4_Text )

        FinishedPlantCountP4 = FinishedPlantCountP4 + 1
        FinishedPlantTextP4.text = FinishedPlantCountP4

        LargePlantCountP4 = LargePlantCountP4 + 1

        if LargePlantCountP4 >=3 and FinishedPlantCountP4 >=6  then
            GoToEcosystemP4()
        end 

        transition.to(P4Pine, {
            x= math.random(-300, 500 ),
            y= math.random(-1350, -1345),
            time=1000})
        pine_P4:scale(2.40, 2.95)
        pine_P4:removeEventListener( "tap", tintPlantP4 )
        pine_P4_2:scale(2.40, 2.95)
        pine_P4_2:removeEventListener( "tap", tintPlantP4 )
        pine_P4_3:scale(2.40, 2.95)
        pine_P4_3:removeEventListener( "tap", tintPlantP4 )
        pine_P4_4:scale(2.40, 2.95)
        pine_P4_4:removeEventListener( "tap", tintPlantP4 )
        pine_P4_5:scale(2.40, 2.95)
        pine_P4_5:removeEventListener( "tap", tintPlantP4 )
        pine_P4_6:scale(2.40, 2.95)
        pine_P4_6:removeEventListener( "tap", tintPlantP4 )
        pine_P4_7:scale(2.40, 2.95)
        pine_P4_7:removeEventListener( "tap", tintPlantP4 )

        ecosystem_P4:insert( P4Pine)
        P4Pine:toBack()

        transition.to( P4Select, { time=500, y=(-3) } )
        toggleVisibility( donebtn_spawnPineP4 )
        toggleVisibility( compostButtonPineP4 )

    end
    donebtn_spawnPineP4:addEventListener( "tap", donebtn_spawn_tapPineP4 )

    -- Done Kaori
    local function donebtn_spawn_tapKaoriP4 ()

        transition.to( P4Colouring, { time=500, y=(140) } )
    
        clicksound ()
        donesound ()
        resetTimer()
        display.remove( Kaori_P4_Text )
    
        FinishedPlantCountP4 = FinishedPlantCountP4 + 1
        FinishedPlantTextP4.text = FinishedPlantCountP4
    
        LargePlantCountP4 = LargePlantCountP4 + 1
        
        if LargePlantCountP4 >=3 and FinishedPlantCountP4 >=6  then
            GoToEcosystemP4()
        end 
    
        transition.to(P4Kaori, {
            x= math.random(-300, 500 ),
            y= math.random(-1355, -1350),
            time=1000})
        Kaori_P4:scale(2.35, 4.35)
        Kaori_P4:removeEventListener( "tap", tintPlantP4 )
        Kaori_P4_2:scale(2.35, 4.35)
        Kaori_P4_2:removeEventListener( "tap", tintPlantP4 )
        Kaori_P4_3:scale(2.35, 4.35)
        Kaori_P4_3:removeEventListener( "tap", tintPlantP4 )
        Kaori_P4_4:scale(2.35, 4.35)
        Kaori_P4_4:removeEventListener( "tap", tintPlantP4 )
        Kaori_P4_5:scale(2.35, 4.35)
        Kaori_P4_5:removeEventListener( "tap", tintPlantP4 )
        Kaori_P4_6:scale(2.35, 4.35)
        Kaori_P4_6:removeEventListener( "tap", tintPlantP4 )
        Kaori_P4_7:scale(2.35, 4.35)
        Kaori_P4_7:removeEventListener( "tap", tintPlantP4 )
        Kaori_P4_8:scale(2.35, 4.35)
        Kaori_P4_8:removeEventListener( "tap", tintPlantP4 )
           
        ecosystem_P4:insert( P4Kaori )
        P4Kaori:toBack()
    
        transition.to( P4Select, { time=500, y=(-3) } )
        toggleVisibility( donebtn_spawnKaoriP4 )
        toggleVisibility( compostButtonKaoriP4 )
    
    end
    donebtn_spawnKaoriP4:addEventListener( "tap", donebtn_spawn_tapKaoriP4 )

    -- Done Magnolia
    local function donebtn_spawn_tapMagnoliaP4 ()

        transition.to( P4Colouring, { time=500, y=(140) } )

        clicksound ()
        donesound ()
        resetTimer()
        display.remove( Magnolia_P4_Text )

        FinishedPlantCountP4 = FinishedPlantCountP4 + 1
        FinishedPlantTextP4.text = FinishedPlantCountP4

        LargePlantCountP4 = LargePlantCountP4 + 1

        if LargePlantCountP4 >=3 and FinishedPlantCountP4 >=6  then
            GoToEcosystemP4()
        end 

        transition.to(P4Magnolia, {
            x= math.random(-300, 500 ),
            y= math.random(-1500, -1495),
            time=1000})
        Magnolia_P4:scale(2.5, 3.45)
        Magnolia_P4:removeEventListener( "tap", tintPlantP4 )
        Magnolia_P4_2:scale(2.5, 3.45)
        Magnolia_P4_2:removeEventListener( "tap", tintPlantP4 )
        Magnolia_P4_3:scale(2.5, 3.45)
        Magnolia_P4_3:removeEventListener( "tap", tintPlantP4 )
        Magnolia_P4_4:scale(2.5, 3.45)
        Magnolia_P4_4:removeEventListener( "tap", tintPlantP4 )
        Magnolia_P4_5:scale(2.5, 3.45)
        Magnolia_P4_5:removeEventListener( "tap", tintPlantP4 )
        Magnolia_P4_6:scale(2.5, 3.45)
        Magnolia_P4_6:removeEventListener( "tap", tintPlantP4 )
        Magnolia_P4_7:scale(2.5, 3.45)
        Magnolia_P4_7:removeEventListener( "tap", tintPlantP4 )

        ecosystem_P4:insert( P4Magnolia)
        P4Magnolia:toBack()

        transition.to( P4Select, { time=500, y=(-3) } )
        toggleVisibility( donebtn_spawnMagnoliaP4 )
        toggleVisibility( compostButtonMagnoliaP4 )

    end
    donebtn_spawnMagnoliaP4:addEventListener( "tap", donebtn_spawn_tapMagnoliaP4 )

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
        transition.to( P1Colouring, { time=500, y=(140) } )
        transition.to( P1Select, { time=500, y=(-3) } )
        toggleVisibility( donebtn_spawnFlaxP1 )
        toggleVisibility( compostButtonFlaxP1 )
    end
    compostButtonFlaxP1:addEventListener( "tap", CompostP1Flax )

    local function CompostP1Fern ()
        resetTimer()
        clicksound ()
        display.remove( P1Fern )
        transition.to( P1Colouring, { time=500, y=(140) } )
        transition.to( P1Select, { time=500, y=(-3) } )
        toggleVisibility( donebtn_spawnFernP1 )
        toggleVisibility( compostButtonFernP1 )
    end
    compostButtonFernP1:addEventListener( "tap", CompostP1Fern )

    local function CompostP1Horsetail ()
        resetTimer()
        clicksound ()
        display.remove( P1Horsetail )
        transition.to( P1Colouring, { time=500, y=(140) } )
        transition.to( P1Select, { time=500, y=(-3) } )
        toggleVisibility( donebtn_spawnHorsetailP1 )
        toggleVisibility( compostButtonHorsetailP1 )
    end
    compostButtonHorsetailP1:addEventListener( "tap", CompostP1Horsetail )

    local function CompostP1Palm ()
        resetTimer()
        clicksound ()
        display.remove( P1Palm )
        transition.to( P1Colouring, { time=500, y=(140) } )
        transition.to( P1Select, { time=500, y=(-3) } )
        toggleVisibility( donebtn_spawnPalmP1 )
        toggleVisibility( compostButtonPalmP1 )
    end
    compostButtonPalmP1:addEventListener( "tap", CompostP1Palm )

    local function CompostP1Cycad ()
        resetTimer()
        clicksound ()
        display.remove( P1Cycad )
        transition.to( P1Colouring, { time=500, y=(140) } )
        transition.to( P1Select, { time=500, y=(-3) } )
        toggleVisibility( donebtn_spawnCycadP1 )
        toggleVisibility( compostButtonCycadP1 )
    end
    compostButtonCycadP1:addEventListener( "tap", CompostP1Cycad )

    local function CompostP1TreeFern ()
        resetTimer()
        clicksound ()
        display.remove( P1TreeFern )
        transition.to( P1Colouring, { time=500, y=(140) } )
        transition.to( P1Select, { time=500, y=(-3) } )
        toggleVisibility( donebtn_spawnTreeFernP1 )
        toggleVisibility( compostButtonTreeFernP1 )
    end
    compostButtonTreeFernP1:addEventListener( "tap", CompostP1TreeFern )

    local function CompostP1Pine ()
        resetTimer()
        clicksound ()
        display.remove( P1Pine )
        transition.to( P1Colouring, { time=500, y=(140) } )
        transition.to( P1Select, { time=500, y=(-3) } )
        toggleVisibility( donebtn_spawnPineP1 )
        toggleVisibility( compostButtonPineP1 )
    end
    compostButtonPineP1:addEventListener( "tap", CompostP1Pine )

    local function CompostP1Kaori ()
        resetTimer()
        clicksound ()
        display.remove( P1Kaori )
        transition.to( P1Colouring, { time=500, y=(140) } )
        transition.to( P1Select, { time=500, y=(-3) } )
        toggleVisibility( donebtn_spawnKaoriP1 )
        toggleVisibility( compostButtonKaoriP1 )
    end
    compostButtonKaoriP1:addEventListener( "tap", CompostP1Kaori )

    local function CompostP1Magnolia ()
        resetTimer()
        clicksound ()
        display.remove( P1Magnolia )
        transition.to( P1Colouring, { time=500, y=(140) } )
        transition.to( P1Select, { time=500, y=(-3) } )
        toggleVisibility( donebtn_spawnMagnoliaP1 )
        toggleVisibility( compostButtonMagnoliaP1 )
    end
    compostButtonMagnoliaP1:addEventListener( "tap", CompostP1Magnolia )

    -----------------------
    -- Player Two Compost
    -----------------------
    local function CompostP2Flax ()
        resetTimer()
        clicksound ()
        display.remove( P2Flax )
        transition.to( P2Colouring, { time=500, y=(140) } )
        transition.to( P2Select, { time=500, y=(-3) } )
        toggleVisibility( donebtn_spawnFlaxP2 )
        toggleVisibility( compostButtonFlaxP2 )
    end
    compostButtonFlaxP2:addEventListener( "tap", CompostP2Flax )

    local function CompostP2Fern ()
        resetTimer()
        clicksound ()
        display.remove( P2Fern )
        transition.to( P2Colouring, { time=500, y=(140) } )
        transition.to( P2Select, { time=500, y=(-3) } )
        toggleVisibility( donebtn_spawnFernP2 )
        toggleVisibility( compostButtonFernP2 )
    end
    compostButtonFernP2:addEventListener( "tap", CompostP2Fern )
    
    local function CompostP2Horsetail ()
        resetTimer()
        clicksound ()
        display.remove( P2Horsetail )
        transition.to( P2Colouring, { time=500, y=(140) } )
        transition.to( P2Select, { time=500, y=(-3) } )
        toggleVisibility( donebtn_spawnHorsetailP2 )
        toggleVisibility( compostButtonHorsetailP2 )
    end
    compostButtonHorsetailP2:addEventListener( "tap", CompostP2Horsetail )

    local function CompostP2Palm ()
        resetTimer()
        clicksound ()
        display.remove( P2Palm )
        transition.to( P2Colouring, { time=500, y=(140) } )
        transition.to( P2Select, { time=500, y=(-3) } )
        toggleVisibility( donebtn_spawnPalmP2 )
        toggleVisibility( compostButtonPalmP2 )
    end
    compostButtonPalmP2:addEventListener( "tap", CompostP2Palm )

    local function CompostP2Cycad ()
        resetTimer()
        clicksound ()
        display.remove( P2Cycad )
        transition.to( P2Colouring, { time=500, y=(140) } )
        transition.to( P2Select, { time=500, y=(-3) } )
        toggleVisibility( donebtn_spawnCycadP2 )
        toggleVisibility( compostButtonCycadP2 )
    end
    compostButtonCycadP2:addEventListener( "tap", CompostP2Cycad )

    local function CompostP2TreeFern ()
        resetTimer()
        clicksound ()
        display.remove( P2TreeFern )
        transition.to( P2Colouring, { time=500, y=(140) } )
        transition.to( P2Select, { time=500, y=(-3) } )
        toggleVisibility( donebtn_spawnTreeFernP2 )
        toggleVisibility( compostButtonTreeFernP2 )
    end
    compostButtonTreeFernP2:addEventListener( "tap", CompostP2TreeFern )

    local function CompostP2Pine ()
        resetTimer()
        clicksound ()
        display.remove( P2Pine )
        transition.to( P2Colouring, { time=500, y=(140) } )
        transition.to( P2Select, { time=500, y=(-3) } )
        toggleVisibility( donebtn_spawnPineP2 )
        toggleVisibility( compostButtonPineP2 )
    end
    compostButtonPineP2:addEventListener( "tap", CompostP2Pine )

    local function CompostP2Kaori ()
        resetTimer()
        clicksound ()
        display.remove( P2Kaori )
        transition.to( P2Colouring, { time=500, y=(140) } )
        transition.to( P2Select, { time=500, y=(-3) } )
        toggleVisibility( donebtn_spawnKaoriP2 )
        toggleVisibility( compostButtonKaoriP2 )
    end
    compostButtonKaoriP2:addEventListener( "tap", CompostP2Kaori )

    local function CompostP2Magnolia ()
        resetTimer()
        clicksound ()
        display.remove( P2Magnolia )
        transition.to( P2Colouring, { time=500, y=(140) } )
        transition.to( P2Select, { time=500, y=(-3) } )
        toggleVisibility( donebtn_spawnMagnoliaP2 )
        toggleVisibility( compostButtonMagnoliaP2 )
    end
    compostButtonMagnoliaP2:addEventListener( "tap", CompostP2Magnolia )

    -----------------------
    -- Player Three Compost
    -----------------------
    local function CompostP3Flax ()
        resetTimer()
        clicksound ()
        display.remove( P3Flax )
        transition.to( P3Colouring, { time=500, y=(140) } )
        transition.to( P3Select, { time=500, y=(-3) } )
        toggleVisibility( donebtn_spawnFlaxP3 )
        toggleVisibility( compostButtonFlaxP3 )
    end
    compostButtonFlaxP3:addEventListener( "tap", CompostP3Flax )

    local function CompostP3Fern ()
        resetTimer()
        clicksound ()
        display.remove( P3Fern )
        transition.to( P3Colouring, { time=500, y=(140) } )
        transition.to( P3Select, { time=500, y=(-3) } )
        toggleVisibility( donebtn_spawnFernP3 )
        toggleVisibility( compostButtonFernP3 )
    end
    compostButtonFernP3:addEventListener( "tap", CompostP3Fern )
    
    local function CompostP3Horsetail ()
        resetTimer()
        clicksound ()
        display.remove( P3Horsetail )
        transition.to( P3Colouring, { time=500, y=(140) } )
        transition.to( P3Select, { time=500, y=(-3) } )
        toggleVisibility( donebtn_spawnHorsetailP3 )
        toggleVisibility( compostButtonHorsetailP3 )
    end
    compostButtonHorsetailP3:addEventListener( "tap", CompostP3Horsetail )

    local function CompostP3Palm ()
        resetTimer()
        clicksound ()
        display.remove( P3Palm )
        transition.to( P3Colouring, { time=500, y=(140) } )
        transition.to( P3Select, { time=500, y=(-3) } )
        toggleVisibility( donebtn_spawnPalmP3 )
        toggleVisibility( compostButtonPalmP3 )
    end
    compostButtonPalmP3:addEventListener( "tap", CompostP3Palm )

    local function CompostP3Cycad ()
        resetTimer()
        clicksound ()
        display.remove( P3Cycad )
        transition.to( P3Colouring, { time=500, y=(140) } )
        transition.to( P3Select, { time=500, y=(-3) } )
        toggleVisibility( donebtn_spawnCycadP3 )
        toggleVisibility( compostButtonCycadP3 )
    end
    compostButtonCycadP3:addEventListener( "tap", CompostP3Cycad )

    local function CompostP3TreeFern ()
        resetTimer()
        clicksound ()
        display.remove( P3TreeFern )
        transition.to( P3Colouring, { time=500, y=(140) } )
        transition.to( P3Select, { time=500, y=(-3) } )
        toggleVisibility( donebtn_spawnTreeFernP3 )
        toggleVisibility( compostButtonTreeFernP3 )
    end
    compostButtonTreeFernP3:addEventListener( "tap", CompostP3TreeFern )

    local function CompostP3Pine ()
        resetTimer()
        clicksound ()
        display.remove( P3Pine )
        transition.to( P3Colouring, { time=500, y=(140) } )
        transition.to( P3Select, { time=500, y=(-3) } )
        toggleVisibility( donebtn_spawnPineP3 )
        toggleVisibility( compostButtonPineP3 )
    end
    compostButtonPineP3:addEventListener( "tap", CompostP3Pine )

    local function CompostP3Kaori ()
        resetTimer()
        clicksound ()
        display.remove( P3Kaori )
        transition.to( P3Colouring, { time=500, y=(140) } )
        transition.to( P3Select, { time=500, y=(-3) } )
        toggleVisibility( donebtn_spawnKaoriP3 )
        toggleVisibility( compostButtonKaoriP3 )
    end
    compostButtonKaoriP3:addEventListener( "tap", CompostP3Kaori )

    local function CompostP3Magnolia ()
        resetTimer()
        clicksound ()
        display.remove( P3Magnolia )
        transition.to( P3Colouring, { time=500, y=(140) } )
        transition.to( P3Select, { time=500, y=(-3) } )
        toggleVisibility( donebtn_spawnMagnoliaP3 )
        toggleVisibility( compostButtonMagnoliaP3 )
    end
    compostButtonMagnoliaP3:addEventListener( "tap", CompostP3Magnolia )

    ------------------------
    -- Player Four Compost
    ------------------------
    local function CompostP4Flax ()
        resetTimer()
        clicksound ()
        display.remove( P4Flax )
        transition.to( P4Colouring, { time=500, y=(140) } )
        transition.to( P4Select, { time=500, y=(-3) } )
        toggleVisibility( donebtn_spawnFlaxP4 )
        toggleVisibility( compostButtonFlaxP4 )
    end
    compostButtonFlaxP4:addEventListener( "tap", CompostP4Flax )

    local function CompostP4Fern ()
        resetTimer()
        clicksound ()
        display.remove( P4Fern )
        transition.to( P4Colouring, { time=500, y=(140) } )
        transition.to( P4Select, { time=500, y=(-3) } )
        toggleVisibility( donebtn_spawnFernP4 )
        toggleVisibility( compostButtonFernP4 )
    end
    compostButtonFernP4:addEventListener( "tap", CompostP4Fern )
    
    local function CompostP4Horsetail ()
        resetTimer()
        clicksound ()
        display.remove( P4Horsetail )
        transition.to( P4Colouring, { time=500, y=(140) } )
        transition.to( P4Select, { time=500, y=(-3) } )
        toggleVisibility( donebtn_spawnHorsetailP4 )
        toggleVisibility( compostButtonHorsetailP4 )
    end
    compostButtonHorsetailP4:addEventListener( "tap", CompostP4Horsetail )

    local function CompostP4Palm ()
        resetTimer()
        clicksound ()
        display.remove( P4Palm )
        transition.to( P4Colouring, { time=500, y=(140) } )
        transition.to( P4Select, { time=500, y=(-3) } )
        toggleVisibility( donebtn_spawnPalmP4 )
        toggleVisibility( compostButtonPalmP4 )
    end
    compostButtonPalmP4:addEventListener( "tap", CompostP4Palm )

    local function CompostP4Cycad ()
        resetTimer()
        clicksound ()
        display.remove( P4Cycad )
        transition.to( P4Colouring, { time=500, y=(140) } )
        transition.to( P4Select, { time=500, y=(-3) } )
        toggleVisibility( donebtn_spawnCycadP4 )
        toggleVisibility( compostButtonCycadP4 )
    end
    compostButtonCycadP4:addEventListener( "tap", CompostP4Cycad )

    local function CompostP4TreeFern ()
        resetTimer()
        clicksound ()
        display.remove( P4TreeFern )
        transition.to( P4Colouring, { time=500, y=(140) } )
        transition.to( P4Select, { time=500, y=(-3) } )
        toggleVisibility( donebtn_spawnTreeFernP4 )
        toggleVisibility( compostButtonTreeFernP4 )
    end
    compostButtonTreeFernP4:addEventListener( "tap", CompostP4TreeFern )

    local function CompostP4Pine ()
        resetTimer()
        clicksound ()
        display.remove( P4Pine )
        transition.to( P4Colouring, { time=500, y=(140) } )
        transition.to( P4Select, { time=500, y=(-3) } )
        toggleVisibility( donebtn_spawnPineP4 )
        toggleVisibility( compostButtonPineP4 )
    end
    compostButtonPineP4:addEventListener( "tap", CompostP4Pine )

    local function CompostP4Kaori ()
        resetTimer()
        clicksound ()
        display.remove( P4Kaori )
        transition.to( P4Colouring, { time=500, y=(140) } )
        transition.to( P4Select, { time=500, y=(-3) } )
        toggleVisibility( donebtn_spawnKaoriP4 )
        toggleVisibility( compostButtonKaoriP4 )
    end
    compostButtonKaoriP4:addEventListener( "tap", CompostP4Kaori )

    local function CompostP4Magnolia ()
        resetTimer()
        clicksound ()
        display.remove( P4Magnolia )
        transition.to( P4Colouring, { time=500, y=(140) } )
        transition.to( P4Select, { time=500, y=(-3) } )
        toggleVisibility( donebtn_spawnMagnoliaP4 )
        toggleVisibility( compostButtonMagnoliaP4 )
    end
    compostButtonMagnoliaP4:addEventListener( "tap", CompostP4Magnolia )

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

    -----------------
    -- Player Three
    -----------------
    function chooseNormalP3 ()
        clicksound ()
        resetTimer()
        if P3normalPalette.isVisible == true then
            do return end
        else
           toggleVisibility( P3rainbowPalette )
           toggleVisibility( P3normalPalette )
        end
    end
    P3NormalSelect:addEventListener( "tap", chooseNormalP3 )

    function chooseRainbowP3 ()
        clicksound ()
        resetTimer()
        if P3rainbowPalette.isVisible == true then
            do return end
        else
           toggleVisibility( P3rainbowPalette )
           toggleVisibility( P3normalPalette )
        end
    end
    P3RainbowSelect:addEventListener( "tap", chooseRainbowP3 )

    ----------------
    -- Player Four
    ----------------
    function chooseNormalP4 ()
        clicksound ()
        resetTimer()
        if P4normalPalette.isVisible == true then
            do return end
        else
           toggleVisibility( P4rainbowPalette )
           toggleVisibility( P4normalPalette )
        end
    end
    P4NormalSelect:addEventListener( "tap", chooseNormalP4 )

    function chooseRainbowP4 ()
        clicksound ()
        resetTimer()
        if P4rainbowPalette.isVisible == true then
            do return end
        else
           toggleVisibility( P4rainbowPalette )
           toggleVisibility( P4normalPalette )
        end
    end
    P4RainbowSelect:addEventListener( "tap", chooseRainbowP4 )

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
